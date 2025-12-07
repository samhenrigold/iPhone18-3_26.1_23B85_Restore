uint64_t static NSDateInterval.dateInterval(with:)(uint64_t a1)
{
  v23[3] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = sub_1CA323E28();
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948CB8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  sub_1CA3B1A38(v2);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {

    swift_unknownObjectRelease();
    sub_1CA633484(v12);
    return 0;
  }

  (*(v5 + 32))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v3);
  v13 = sub_1CA323E28();

  if (!v13)
  {
LABEL_10:
    swift_unknownObjectRelease();
    (*(v5 + 8))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return 0;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  [v14 doubleValue];
  v23[0] = sub_1CA948898();
  v23[1] = v23;
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  (*(v5 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v3);
  sub_1CA948888();
  v21 = sub_1CA948878();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v16 + 8))(v20, v23[0]);
  (*(v5 + 8))(v9, v3);
  return v21;
}

uint64_t sub_1CA633484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6334EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = static NSDateInterval.dateInterval(with:)(a3);
  swift_unknownObjectRelease();

  return v4;
}

id sub_1CA63353C(void *a1)
{
  v1 = a1;
  v2 = NSDateInterval.serializedRepresentation.getter();

  return v2;
}

uint64_t NSDateInterval.serializedRepresentation.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  v3 = [v0 startDate];
  v4 = sub_1CA948CB8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948C78();

  sub_1CA948C38();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  (*(v6 + 8))(v9, v4);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v2;
  sub_1CA32EA0C(v12, 0x7461447472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native, &v21);

  v14 = v21;
  [v1 duration];
  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  swift_unknownObjectRetain();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_1CA32EA0C(v16, 0x6E6F697461727564, 0xE800000000000000, v17, &v21);

  v18 = sub_1CA94C1A8();

  return v18;
}

uint64_t sub_1CA6337C0()
{
  OUTLINED_FUNCTION_0();
  v0[17] = v1;
  v0[18] = v2;
  v3 = sub_1CA94A888();
  v0[19] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[20] = v4;
  v0[21] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94A908();
  v0[22] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[23] = v6;
  v0[24] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94A9A8();
  v0[25] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[26] = v8;
  v0[27] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94A8C8();
  v0[28] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[29] = v10;
  v0[30] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94AC18();
  v0[31] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[32] = v12;
  v0[33] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AC88();
  v0[34] = v13;
  OUTLINED_FUNCTION_12(v13);
  v0[35] = v14;
  v0[36] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1CA6339E4()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v2 + 16))(v1, v0[17], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69DAE70])
  {
    v5 = v0[36];
    v6 = OUTLINED_FUNCTION_14_1();
    v7(v6);
    v0[37] = *v5;
    swift_projectBox();
    v8 = OUTLINED_FUNCTION_22();
    v9(v8);
    v10 = swift_task_alloc();
    v0[38] = v10;
    *v10 = v0;
    v10[1] = sub_1CA633EAC;
    OUTLINED_FUNCTION_5_46(v0[33]);
    OUTLINED_FUNCTION_150();

    return sub_1CA5A3F30(v11, v12);
  }

  else if (v4 == *MEMORY[0x1E69DAE20])
  {
    OUTLINED_FUNCTION_21_23();
    v15 = OUTLINED_FUNCTION_14_1();
    v16(v15);
    v0[40] = *v1;
    swift_projectBox();
    v17 = OUTLINED_FUNCTION_22();
    v18(v17);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = sub_1CA63411C;
    OUTLINED_FUNCTION_5_46(v0[30]);
    OUTLINED_FUNCTION_150();

    return sub_1CA5AD2EC(v20, v21);
  }

  else if (v4 == *MEMORY[0x1E69DAE58])
  {
    OUTLINED_FUNCTION_21_23();
    v23 = OUTLINED_FUNCTION_14_1();
    v24(v23);
    v0[43] = *v1;
    swift_projectBox();
    v25 = OUTLINED_FUNCTION_22();
    v26(v25);
    v27 = swift_task_alloc();
    v0[44] = v27;
    *v27 = v0;
    v27[1] = sub_1CA63438C;
    OUTLINED_FUNCTION_5_46(v0[27]);
    OUTLINED_FUNCTION_150();

    return sub_1CA3DA9E4(v28, v29);
  }

  else if (v4 == *MEMORY[0x1E69DAE18])
  {
    OUTLINED_FUNCTION_21_23();
    v31 = OUTLINED_FUNCTION_14_1();
    v32(v31);
    v0[49] = *v1;
    swift_projectBox();
    v33 = OUTLINED_FUNCTION_22();
    v34(v33);
    v35 = swift_task_alloc();
    v0[50] = v35;
    *v35 = v0;
    v35[1] = sub_1CA63485C;
    OUTLINED_FUNCTION_5_46(v0[21]);
    OUTLINED_FUNCTION_150();

    return sub_1CA436F48();
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    if (v37 == v41 || v37 == v39 || v37 != v40)
    {
      (*(v38 + 8))(v1);
      sub_1CA3DBA78();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_0_68();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_150();

      __asm { BRAA            X1, X16 }
    }

    v47 = OUTLINED_FUNCTION_14_1();
    v48(v47);
    v0[46] = *v1;
    swift_projectBox();
    v49 = OUTLINED_FUNCTION_22();
    v50(v49);
    v51 = swift_task_alloc();
    v0[47] = v51;
    *v51 = v0;
    v51[1] = sub_1CA6345F4;
    OUTLINED_FUNCTION_5_46(v0[24]);
    OUTLINED_FUNCTION_150();

    return sub_1CA445BDC(v52, v53);
  }
}

uint64_t sub_1CA633EAC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 312) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA633FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  (*(v10[32] + 8))(v10[33], v10[31]);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1CA634068()
{
  OUTLINED_FUNCTION_6();
  (*(v0[32] + 8))(v0[33], v0[31]);

  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA63411C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 336) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA634218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v10 = OUTLINED_FUNCTION_20_31();
  v11(v10);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1CA6342D8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[29] + 8))(v0[30], v0[28]);

  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA63438C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 360) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA634488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_12_31();
  v10 = OUTLINED_FUNCTION_20_31();
  v11(v10);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1CA634540()
{
  OUTLINED_FUNCTION_6();
  (*(v0[26] + 8))(v0[27], v0[25]);

  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA6345F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 384) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA6346F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_12_31();
  v10 = OUTLINED_FUNCTION_20_31();
  v11(v10);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1CA6347A8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[23] + 8))(v0[24], v0[22]);

  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA63485C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  OUTLINED_FUNCTION_21_1();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 408) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA634958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_12_31();
  v10 = OUTLINED_FUNCTION_20_31();
  v11(v10);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1CA634A14()
{
  OUTLINED_FUNCTION_6();
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA634AC8()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA4A0608;

  return sub_1CA6337C0();
}

_BYTE *storeEnumTagSinglePayload for ParameterStateToTypedValueError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA634C44()
{
  result = qword_1EC447918;
  if (!qword_1EC447918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447918);
  }

  return result;
}

id sub_1CA634CCC()
{
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9D7E00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("html|get", 8);
  v7 = v6;
  v8 = sub_1CA94C438("html|get", 8);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v12;
  v13 = &v125 - v139;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v136 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v138 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v135 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v135;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v20;
  v137 = v2;
  v2[10] = v19;
  v2[13] = v20;
  v2[14] = @"Description";
  *&v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438("Markdown", 8);
  v129 = v25;
  v130 = v24;
  v26 = sub_1CA94C438("Markdown", 8);
  v128 = v27;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v125 - v139;
  sub_1CA948D98();
  v29 = v136;
  v30 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v135;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v130, v129, v26, v128, 0, 0, v28, &v125 - v31);
  v33 = v134;
  *(v21 + 64) = v134;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Takes the inputted Markdown and turns it into rich text, which can then be converted to other formats.", 102);
  v129 = v36;
  v130 = v35;
  v128 = sub_1CA94C438("Takes the inputted Markdown and turns it into rich text, which can then be converted to other formats.", 102);
  v38 = v37;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v128);
  v39 = &v125 - v139;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v130, v129, v128, v38, 0, 0, v39, &v125 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v133;
  v45 = sub_1CA6B3784(v43);
  v46 = v137;
  v137[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 0x6F6769646E49;
  v46[21] = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000011;
  v46[26] = 0x80000001CA9A3B70;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v133 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = v48;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v131;
  *(v49 + 192) = &unk_1F4A09F70;
  v51 = @"IconColor";
  v52 = @"IconSymbol";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v130 = v55;
  v46[30] = v54;
  v46[33] = v55;
  v46[34] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Make Rich Text from Markdown (Action Name)", 42);
  v126 = v58;
  v127 = v57;
  v59 = sub_1CA94C438("Make Rich Text from Markdown", 28);
  v61 = v60;
  v128 = &v125;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v139;
  sub_1CA948D98();
  v63 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v135;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v127, v126, v59, v61, 0, 0, &v125 - v62, &v125 - v64);
  v67 = v137;
  v137[35] = v66;
  v68 = v134;
  v67[38] = v134;
  v67[39] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v133;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438("Rich Text from Markdown (Default Output Name)", 45);
  v127 = v72;
  v128 = v71;
  v126 = sub_1CA94C438("Rich Text from Markdown", 23);
  v74 = v73;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v75 = v136;
  v76 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v128, v127, v126, v74, 0, 0, &v125 - v62, &v125 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v131;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F4A09FA0;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v137;
  v137[40] = v79;
  v80[43] = v130;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v131 = swift_allocObject();
  *(v131 + 1) = xmmword_1CA9813B0;
  v130 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v133;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000019;
  *(v81 + 48) = 0x80000001CA99B030;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7475706E494657;
  *(v81 + 88) = 0xE700000000000000;
  *(v81 + 104) = v78;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438("Markdown Text (WFInput)", 23);
  v128 = v87;
  v129 = v86;
  v88 = sub_1CA94C438("Markdown Text", 13);
  v127 = v89;
  *&v133 = &v125;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v139;
  sub_1CA948D98();
  v91 = [v75 bundleURL];
  v126 = &v125;
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v125 - v135;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 120) = sub_1CA2F9F14(v129, v128, v88, v127, 0, 0, &v125 - v90, v92);
  v94 = v134;
  *(v81 + 144) = v134;
  *(v81 + 152) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438("Markdown Text (WFInput)", 23);
  v128 = v97;
  v129 = v96;
  v127 = sub_1CA94C438("Markdown Text", 13);
  v99 = v98;
  *&v133 = &v125;
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948D98();
  v100 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v135;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v129, v128, v127, v99, 0, 0, &v125 - v90, &v125 - v101);
  *(v81 + 184) = v94;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  v106 = v131;
  v131[4] = v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v108 = v137;
  v137[45] = v106;
  v108[48] = v107;
  v108[49] = @"ParameterSummary";
  v109 = @"ParameterSummary";
  v110 = sub_1CA94C438("Make rich text from ${WFInput} (Parameter Summary)", 50);
  v112 = v111;
  v113 = sub_1CA94C438("Make rich text from ${WFInput}", 30);
  v115 = v114;
  v134 = &v125;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v125 - v139;
  sub_1CA948D98();
  v117 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v110, v112, v113, v115, 0, 0, v116, &v125 - v101);
  v120 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v121 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v122 = v137;
  v137[50] = v120;
  v122[53] = v121;
  v122[54] = @"ResidentCompatible";
  v122[58] = MEMORY[0x1E69E6370];
  *(v122 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v123 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void *sub_1CA635CB8(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  sub_1CA94C218();
  sub_1CA636E5C(v3);

  v5 = v1[4];
  v1[4] = v3;
  v1[5] = v4;
  sub_1CA636794(v5);
  return v1;
}

uint64_t sub_1CA635D24(uint64_t a1)
{
  v1[3] = a1;

  v2 = v1[4];
  v1[4] = 0;
  v1[5] = 0;

  return sub_1CA636794(v2);
}

uint64_t sub_1CA635D60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = (v3 + 32);
  if (!*(v3 + 32))
  {
    return result;
  }

  v8 = result;
  v9 = *(v3 + 40);
  sub_1CA94C218();
  sub_1CA94C218();
  v10 = sub_1CA635F9C(a2, a3, v8);
  if (sub_1CA311E9C(v8, v9))
  {
    v11 = sub_1CA323E30();

    if (v11)
    {
      v12 = sub_1CA636CD8(v10, v11);

      if (v12)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_8:
  v13 = *(v4 + 32);
  *v5 = 0;
  v5[1] = 0;
  sub_1CA636794(v13);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = [*(result + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
    v16 = sub_1CA94C658();

    result = sub_1CA25B410(v16);
    if (result)
    {
      v17 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1CCAA22D0](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v19 actionTreeDidChangeConnectorState_];
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1CA635F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v5 = sub_1CA94C368();
  v6 = [a3 parameterStateForKey:v5 fallingBackToDefaultValue:0];

  if (!v6)
  {
    return v4;
  }

  v7 = [v6 containedVariables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  v8 = sub_1CA94C658();

  result = sub_1CA25B410(v8);
  if (!result)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CD0];
  }

  v10 = result;
  if (result >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA22D0](i, v8);
      }

      else
      {
        v12 = *(v8 + 8 * i + 32);
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 action];
        if (v15)
        {
          v16 = v15;
          sub_1CA369200(&v17, v15);
        }
      }
    }

    swift_unknownObjectRelease();

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636144()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    v4 = sub_1CA94C218();
    v2 = sub_1CA636210(v4);
    v6 = v5;

    v7 = *(v3 + 32);
    *(v3 + 32) = v2;
    *(v3 + 40) = v6;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA636794(v7);
  }

  sub_1CA636E5C(v1);
  return v2;
}

uint64_t sub_1CA636210(uint64_t a1)
{
  v53 = MEMORY[0x1E69E7CD0];
  v54 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447920, &qword_1CA9903D0);
  v2 = sub_1CA94C1E8();
  v3 = 0;
  v4 = 0;
  v40 = a1 & 0xC000000000000001;
  v41 = sub_1CA25B410(a1);
  v37 = a1;
  v38 = a1 + 32;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_isInputParameter;
  while (1)
  {
    if (v4 == v41)
    {
      v35 = v54;

      sub_1CA293254(v3, 0);
      return v35;
    }

    if (v40)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v37);
    }

    else
    {
      if (v4 >= *(v39 + 16))
      {
        goto LABEL_43;
      }

      v6 = *(v38 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v43 = v4 + 1;
    v52 = MEMORY[0x1E69E7CD0];
    v8 = [v6 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v9 = sub_1CA94C658();

    if (v9 >> 62)
    {
      v10 = sub_1CA94D328();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v3;
    v42 = v4;
    if (v10)
    {
      v11 = 0;
      v46 = v10;
      v47 = v9 & 0xC000000000000001;
      v44 = v9 & 0xFFFFFFFFFFFFFF8;
      v45 = v9;
      while (1)
      {
        if (v47)
        {
          v12 = MEMORY[0x1CCAA22D0](v11, v9);
        }

        else
        {
          if (v11 >= *(v44 + 16))
          {
            goto LABEL_41;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v50 = v11 + 1;
        v13 = v12;
        v14 = [v12 v5[126]];
        v15 = sub_1CA94C3A8();
        v17 = v16;

        v18 = sub_1CA635F9C(v15, v17, v7);

        if (*(v18 + 16))
        {
          v19 = sub_1CA94C218();
          sub_1CA342AF0(v19);
          v48 = v13;
          v20 = [v13 v5[126]];
          sub_1CA94C3A8();

          sub_1CA293254(v49, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v51 = v2;
          v21 = v7;
          v22 = sub_1CA320E94(v7);
          if (__OFADD__(*(v2 + 16), (v23 & 1) == 0))
          {
            goto LABEL_40;
          }

          v24 = v22;
          v25 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447928, &qword_1CA9903D8);
          v26 = sub_1CA94D588();
          v2 = v51;
          if (v26)
          {
            v27 = sub_1CA320E94(v21);
            if ((v25 & 1) != (v28 & 1))
            {
              goto LABEL_44;
            }

            v24 = v27;
          }

          if ((v25 & 1) == 0)
          {
            sub_1CA6366C8(&v51);
            sub_1CA3233C4(v24, v21, v51, v2);
          }

          v29 = *(v2 + 56);
          swift_isUniquelyReferenced_nonNull_native();
          v51 = *(v29 + 8 * v24);
          sub_1CA322E28();
          *(v29 + 8 * v24) = v51;

          v49 = sub_1CA6366C8;
          v5 = &selRef_isInputParameter;
          v7 = v21;
          v9 = v45;
        }

        else
        {
        }

        ++v11;
        if (v50 == v46)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      break;
    }

LABEL_26:
    v3 = v49;

    if (v42)
    {
      v30 = v52;
      v31 = v53;
LABEL_29:
      if (!*(v30 + 16))
      {
        goto LABEL_33;
      }

      if (!*(v31 + 16))
      {
        goto LABEL_33;
      }

      sub_1CA2E4808();
      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v32 = [v7 containsVariableOfType_];
    v30 = v52;
    v31 = v53;
    if ((v32 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    sub_1CA369200(&v51, v7);
LABEL_33:
    v34 = sub_1CA6154B0(v30, v31);

    v53 = v34;
    if ([v7 isEligibleForOutputVariable])
    {
      sub_1CA369200(&v51, v7);
    }

    v4 = v43;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6366C8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447930, &unk_1CA9903E0);
  result = sub_1CA94C1E8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA636720()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  sub_1CA636794(*(v0 + 32));
  return v0;
}

uint64_t sub_1CA636750()
{
  sub_1CA636720();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1CA636794(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA6367D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94ADC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v32 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v5 + 32;
  v41 = a2 + 56;
  v42 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v32 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v40 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v40 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v43, v13, v4);
      sub_1CA636E18(&qword_1EC441D00, MEMORY[0x1E69DB0C8]);
      v26 = sub_1CA94C288();
      v27 = a2;
      v28 = ~(-1 << *(a2 + 32));
      do
      {
        v29 = v26 & v28;
        if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
        {
          (*v20)(v43, v4);
          return 0;
        }

        v25(v8, *(v27 + 48) + v29 * v40, v4);
        sub_1CA636E18(&qword_1EC443AB0, MEMORY[0x1E69DB0D0]);
        v30 = sub_1CA94C358();
        v31 = *v20;
        (*v20)(v8, v4);
        v26 = v29 + 1;
      }

      while ((v30 & 1) == 0);
      result = (v31)(v43, v4);
      a2 = v27;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v38 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636B30(uint64_t result, uint64_t a2)
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
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v15 = sub_1CA94D968();
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

        v20 = sub_1CA94D7F8();
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

uint64_t sub_1CA636CD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    result = sub_1CA94D908();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636E18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA636E5C(uint64_t result)
{
  if (result)
  {
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

id sub_1CA636ED0()
{
  v70 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9D8030;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("podcast|show|library", 20);
  v6 = v5;
  v7 = sub_1CA94C438("podcast|show|library", 20);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v11;
  v12 = &v67 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v72 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v67 - v73;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v71 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v69 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets a list of all shows in your Podcast library.", 49);
  v67 = v27;
  v28 = sub_1CA94C438("Gets a list of all shows in your Podcast library.", 49);
  v30 = v29;
  v68 = &v67;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v75;
  sub_1CA948D98();
  v32 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v67 - v73;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v67, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v71;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v69;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438("Get Podcasts from Library (Action Name)", 39);
  v43 = v42;
  v44 = sub_1CA94C438("Get Podcasts from Library", 25);
  v46 = v45;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v67 - v75;
  sub_1CA948D98();
  v48 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v67 - v73;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v71;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 1;
  *(v51 + 72) = MEMORY[0x1E69E6370];
  *(v51 + 80) = 0x614E74757074754FLL;
  *(v51 + 88) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438("Podcasts (Default Output Name)", 30);
  v68 = v54;
  v55 = sub_1CA94C438("Podcasts", 8);
  v57 = v56;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v67 - v75;
  sub_1CA948D98();
  v59 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v67 - v73;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 96) = sub_1CA2F9F14(v53, v68, v55, v57, 0, 0, v58, v60);
  *(v51 + 120) = v71;
  *(v51 + 128) = 0x7365707954;
  *(v51 + 136) = 0xE500000000000000;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 168) = v62;
  *(v51 + 144) = &unk_1F4A0A010;
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v63;
  *(inited + 304) = v64;
  *(inited + 312) = @"RequiredResources";
  *(inited + 344) = v62;
  *(inited + 320) = &unk_1F4A0A040;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v65 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA637798()
{
  v29 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Get Details of iTunes Artist (Action Name)", 42);
  v28 = v8;
  v9 = sub_1CA94C438("Get Details of iTunes Artist", 28);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v7, v28, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v20;
  *(inited + 144) = v21;
  *(inited + 152) = @"Output";
  v22 = @"Output";
  v23 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v24 = @"ResidentCompatible";
  v25 = sub_1CA94C368();
  *(inited + 264) = v23;
  *(inited + 232) = v25;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA9D8160;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id ActionWillTakeSessionKitAssertionTestingEvent.__allocating_init(action:sessionConfiguration:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WFActionWillTakeSessionKitAssertionTestingEvent_sessionConfiguration] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAction_, a1);

  return v6;
}

id ActionWillTakeSessionKitAssertionTestingEvent.init(action:sessionConfiguration:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFActionWillTakeSessionKitAssertionTestingEvent_sessionConfiguration] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAction_, a1);

  return v6;
}

id ActionWillTakeSessionKitAssertionTestingEvent.__allocating_init(action:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAction_];

  return v3;
}

id ActionWillTakeSessionKitAssertionTestingEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA637DCC()
{
  v0 = sub_1CA949D18();
  v343 = *(v0 - 8);
  v344 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v342 = &v330 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x4450656B614D4657;
  *(inited + 48) = 0xEF6E6F6974634146;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("make|generate|pdf|print", 23);
  v8 = v7;
  v9 = sub_1CA94C438("make|generate|pdf|print", 23);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v369 = v13;
  v366 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v330 - v366;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v367 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v368 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v365 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v330 - v365;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v364 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v363 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v357 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Makes a PDF out of the input. The resulting PDF can optionally include a quarter-inch margin for better printing.", 113);
  v27 = v26;
  v28 = sub_1CA94C438("Makes a PDF out of the input. The resulting PDF can optionally include a quarter-inch margin for better printing.", 113);
  v30 = v29;
  v362 = &v330;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v330 - v366;
  sub_1CA948D98();
  v32 = [v367 bundleURL];
  v358 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v330 - v365;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v25, v27, v28, v30, 0, 0, v31, v34);
  *(v22 + 64) = v364;
  *(v22 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v363;
  v39 = sub_1CA6B3784(v37);
  v40 = v358;
  *(v358 + 15) = v39;
  *(v40 + 18) = v38;
  *(v40 + 19) = @"IconColor";
  *(v40 + 20) = 1953392980;
  *(v40 + 21) = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  *(v40 + 23) = MEMORY[0x1E69E6158];
  *(v40 + 24) = @"IconSymbol";
  strcpy(v40 + 200, "doc.text.fill");
  *(v40 + 107) = -4864;
  *(v40 + 28) = v41;
  *(v40 + 29) = @"IconSymbolColor";
  *(v40 + 30) = 1702194242;
  *(v40 + 31) = 0xE400000000000000;
  *(v40 + 33) = v41;
  *(v40 + 34) = @"Input";
  v42 = v41;
  v43 = v40;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v361 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v356;
  *(v44 + 192) = &unk_1F4A0A110;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"IconSymbolColor";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v363 = v51;
  *(v43 + 35) = v50;
  *(v43 + 38) = v51;
  *(v43 + 39) = @"Name";
  v52 = @"Name";
  v53 = sub_1CA94C438("Make PDF (Action Name)", 22);
  v55 = v54;
  v56 = sub_1CA94C438("Make PDF", 8);
  v58 = v57;
  v360 = &v330;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v330 - v366;
  sub_1CA948D98();
  v60 = v367;
  v61 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v330 - v365;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v62);
  v65 = v358;
  *(v358 + 40) = v64;
  v66 = v364;
  *(v65 + 43) = v364;
  *(v65 + 44) = @"Output";
  v67 = swift_allocObject();
  *(v67 + 16) = v361;
  *(v67 + 32) = 0x75736F6C63736944;
  *(v67 + 40) = 0xEF6C6576654C6572;
  *(v67 + 48) = 0x63696C627550;
  *(v67 + 56) = 0xE600000000000000;
  *(v67 + 72) = MEMORY[0x1E69E6158];
  *(v67 + 80) = 0x656C7069746C754DLL;
  *(v67 + 88) = 0xE800000000000000;
  *(v67 + 96) = 0;
  *(v67 + 120) = MEMORY[0x1E69E6370];
  *(v67 + 128) = 0x614E74757074754FLL;
  *(v67 + 136) = 0xEA0000000000656DLL;
  v68 = @"Output";
  v69 = sub_1CA94C438("PDF (Default Output Name)", 25);
  v360 = v70;
  v71 = sub_1CA94C438("PDF", 3);
  v73 = v72;
  v362 = &v330;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v330 - v366;
  sub_1CA948D98();
  v75 = [v60 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v330 - v365;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 144) = sub_1CA2F9F14(v69, v360, v71, v73, 0, 0, v74, v76);
  *(v67 + 168) = v66;
  *(v67 + 176) = 0x7365707954;
  *(v67 + 216) = v356;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_1F4A0A140;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v358;
  *(v358 + 45) = v79;
  *(v80 + 48) = v363;
  *(v80 + 49) = @"Parameters";
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v363 = swift_allocObject();
  *(v363 + 16) = xmmword_1CA98B2D0;
  v362 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v361;
  v337 = 0xD000000000000011;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000011;
  *(v81 + 48) = 0x80000001CA99E620;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"DefaultValue";
  *(v81 + 80) = 0;
  *(v81 + 104) = MEMORY[0x1E69E6370];
  *(v81 + 112) = @"Key";
  v352 = 0xD000000000000012;
  *(v81 + 120) = 0xD000000000000012;
  *(v81 + 128) = 0x80000001CA9D8320;
  *(v81 + 144) = v78;
  *(v81 + 152) = @"Label";
  v82 = @"Class";
  v83 = @"DefaultValue";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v82;
  v87 = v83;
  v88 = v84;
  v89 = v85;
  v349 = v86;
  v354 = v87;
  v350 = v88;
  v351 = v89;
  v90 = @"Parameters";
  v91 = sub_1CA94C438("Include Margin (WFPDFIncludeMargin)", 35);
  v93 = v92;
  v94 = sub_1CA94C438("Include Margin", 14);
  v96 = v95;
  *&v361 = &v330;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v330 - v366;
  sub_1CA948D98();
  v98 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v330 - v365;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v81 + 184) = v364;
  *(v81 + 160) = v101;
  _s3__C3KeyVMa_0(0);
  *&v361 = v102;
  v360 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  *(v363 + 32) = v104;
  v105 = swift_allocObject();
  v338 = xmmword_1CA981370;
  *(v105 + 16) = xmmword_1CA981370;
  v340 = 0x80000001CA99C4A0;
  v106 = v349;
  *(v105 + 32) = v349;
  *(v105 + 40) = 0xD000000000000016;
  *(v105 + 48) = 0x80000001CA99C4A0;
  v107 = MEMORY[0x1E69E6158];
  v108 = v354;
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v108;
  *(v105 + 80) = 0x65676150206C6C41;
  *(v105 + 88) = 0xE900000000000073;
  *(v105 + 104) = v107;
  *(v105 + 112) = @"Items";
  *&v353 = swift_allocObject();
  *(v353 + 16) = xmmword_1CA981470;
  v109 = @"Items";
  v349 = v106;
  v341 = v109;
  v110 = sub_1CA94C438("All Pages (WFPDFIncludedPages)", 30);
  v346 = v111;
  v347 = v110;
  v112 = sub_1CA94C438("All Pages", 9);
  v339 = v113;
  v348 = &v330;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v366;
  sub_1CA948D98();
  v115 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v365;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v347, v346, v112, v339, 0, 0, &v330 - v114, &v330 - v116);
  v119 = v353;
  *(v353 + 32) = v118;
  v120 = sub_1CA94C438("Single Page (WFPDFIncludedPages)", 32);
  v346 = v121;
  v347 = v120;
  v122 = sub_1CA94C438("Single Page", 11);
  v339 = v123;
  v348 = &v330;
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v330 - v114;
  sub_1CA948D98();
  v125 = v367;
  v126 = [v367 bundleURL];
  v336 = &v330;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 40) = sub_1CA2F9F14(v347, v346, v122, v339, 0, 0, v124, &v330 - v116);
  v128 = sub_1CA94C438("Page Range (WFPDFIncludedPages)", 31);
  v346 = v129;
  v347 = v128;
  v130 = sub_1CA94C438("Page Range", 10);
  v339 = v131;
  v348 = &v330;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v366;
  sub_1CA948D98();
  v133 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = v365;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v347, v346, v130, v339, 0, 0, &v330 - v132, &v330 - v134);
  v137 = v353;
  *(v353 + 48) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v339 = v138;
  *(v105 + 120) = v137;
  v139 = v350;
  v140 = v351;
  *(v105 + 144) = v138;
  *(v105 + 152) = v139;
  *(v105 + 160) = v352;
  *(v105 + 168) = 0x80000001CA99A7C0;
  *(v105 + 184) = MEMORY[0x1E69E6158];
  *(v105 + 192) = v140;
  v350 = v139;
  v351 = v140;
  v141 = sub_1CA94C438("Include (WFPDFIncludedPages)", 28);
  v352 = v142;
  v143 = sub_1CA94C438("Include", 7);
  v145 = v144;
  *&v353 = &v330;
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948D98();
  v146 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v141, v352, v143, v145, 0, 0, &v330 - v132, &v330 - v134);
  *(v105 + 224) = v364;
  *(v105 + 200) = v148;
  v149 = sub_1CA94C1E8();
  v150 = sub_1CA2F864C(v149);
  *(v363 + 40) = v150;
  v151 = swift_allocObject();
  v353 = xmmword_1CA981400;
  *(v151 + 16) = xmmword_1CA981400;
  *(v151 + 32) = @"AllowsDecimalNumbers";
  *(v151 + 40) = 1;
  v152 = v349;
  v153 = v350;
  *(v151 + 64) = MEMORY[0x1E69E6370];
  *(v151 + 72) = v152;
  v352 = 0x80000001CA99C180;
  *(v151 + 80) = 0xD000000000000016;
  *(v151 + 88) = 0x80000001CA99C180;
  v154 = MEMORY[0x1E69E6158];
  *(v151 + 104) = MEMORY[0x1E69E6158];
  *(v151 + 112) = v153;
  *(v151 + 120) = 0x6E69534644504657;
  *(v151 + 128) = 0xEF65676150656C67;
  v155 = v351;
  *(v151 + 144) = v154;
  *(v151 + 152) = v155;
  v156 = @"AllowsDecimalNumbers";
  v336 = v152;
  v335 = v153;
  v346 = v155;
  v351 = v156;
  v157 = sub_1CA94C438("Page # (WFPDFSinglePage)", 24);
  v348 = v158;
  v349 = v157;
  v159 = sub_1CA94C438("Page #", 6);
  v161 = v160;
  v350 = &v330;
  MEMORY[0x1EEE9AC00](v159);
  v162 = v366;
  sub_1CA948D98();
  v163 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v330 - v365;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v151 + 160) = sub_1CA2F9F14(v349, v348, v159, v161, 0, 0, &v330 - v162, v164);
  v166 = v364;
  *(v151 + 184) = v364;
  *(v151 + 192) = @"Placeholder";
  v334 = @"Placeholder";
  v167 = sub_1CA94C438("1 (WFPDFSinglePage)", 19);
  v348 = v168;
  v349 = v167;
  v169 = sub_1CA94C438("1", 1);
  v171 = v170;
  v350 = &v330;
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948D98();
  v172 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v330 - v365;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v151 + 200) = sub_1CA2F9F14(v349, v348, v169, v171, 0, 0, &v330 - v162, v173);
  *(v151 + 224) = v166;
  *(v151 + 232) = @"RequiredResources";
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v175 = swift_allocObject();
  *(v175 + 16) = v357;
  v349 = @"RequiredResources";
  v176 = MEMORY[0x1E69E6158];
  *(v175 + 32) = sub_1CA94C1E8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v348 = v177;
  *(v151 + 240) = v175;
  *(v151 + 264) = v177;
  *(v151 + 272) = @"TextAlignment";
  *(v151 + 304) = v176;
  *(v151 + 280) = 0x7468676952;
  *(v151 + 288) = 0xE500000000000000;
  v347 = @"TextAlignment";
  v178 = sub_1CA94C1E8();
  v179 = sub_1CA2F864C(v178);
  *(v363 + 48) = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = v353;
  *(v180 + 32) = v351;
  *(v180 + 40) = 1;
  v182 = v335;
  v181 = v336;
  *(v180 + 64) = MEMORY[0x1E69E6370];
  *(v180 + 72) = v181;
  v183 = v352;
  *(v180 + 80) = 0xD000000000000016;
  *(v180 + 88) = v183;
  *(v180 + 104) = v176;
  *(v180 + 112) = v182;
  *(v180 + 120) = 0xD000000000000013;
  *(v180 + 128) = 0x80000001CA9D8480;
  v184 = v346;
  *(v180 + 144) = v176;
  *(v180 + 152) = v184;
  v333 = v181;
  v335 = v182;
  v336 = v184;
  v185 = sub_1CA94C438("Start Page # (WFPDFPageRangeStart)", 34);
  v331 = v186;
  v332 = v185;
  v187 = sub_1CA94C438("Start Page #", 12);
  v330 = v188;
  v346 = &v330;
  MEMORY[0x1EEE9AC00](v187);
  v189 = &v330 - v366;
  sub_1CA948D98();
  v190 = v367;
  v191 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v330 - v365;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 160) = sub_1CA2F9F14(v332, v331, v187, v330, 0, 0, v189, v192);
  v194 = v364;
  v195 = v334;
  *(v180 + 184) = v364;
  *(v180 + 192) = v195;
  v346 = v195;
  v196 = sub_1CA94C438("1 (WFPDFPageRangeStart)", 23);
  v331 = v197;
  v332 = v196;
  v330 = sub_1CA94C438("1", 1);
  v199 = v198;
  v334 = &v330;
  MEMORY[0x1EEE9AC00](v330);
  v200 = &v330 - v366;
  sub_1CA948D98();
  v201 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v365;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 200) = sub_1CA2F9F14(v332, v331, v330, v199, 0, 0, v200, &v330 - v202);
  v204 = v349;
  *(v180 + 224) = v194;
  *(v180 + 232) = v204;
  v205 = swift_allocObject();
  *(v205 + 16) = v357;
  v206 = MEMORY[0x1E69E6158];
  *(v205 + 32) = sub_1CA94C1E8();
  *(v180 + 240) = v205;
  v207 = v347;
  *(v180 + 264) = v348;
  *(v180 + 272) = v207;
  *(v180 + 304) = v206;
  *(v180 + 280) = 0x7468676952;
  *(v180 + 288) = 0xE500000000000000;
  v208 = sub_1CA94C1E8();
  v209 = sub_1CA2F864C(v208);
  *(v363 + 56) = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = v353;
  *(v210 + 32) = v351;
  *(v210 + 40) = 1;
  v211 = v333;
  *(v210 + 64) = MEMORY[0x1E69E6370];
  *(v210 + 72) = v211;
  *(v210 + 80) = 0xD000000000000016;
  *(v210 + 88) = v352;
  v212 = v335;
  *(v210 + 104) = v206;
  *(v210 + 112) = v212;
  *(v210 + 120) = v337;
  *(v210 + 128) = 0x80000001CA9D84F0;
  *(v210 + 144) = v206;
  v213 = v336;
  *(v210 + 152) = v336;
  v351 = v211;
  v352 = v212;
  *&v353 = v213;
  v214 = sub_1CA94C438("End Page # (WFPDFPageRangeEnd)", 30);
  v335 = v215;
  v336 = v214;
  v216 = sub_1CA94C438("End Page #", 10);
  v334 = v217;
  v337 = &v330;
  MEMORY[0x1EEE9AC00](v216);
  v218 = v366;
  sub_1CA948D98();
  v219 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 160) = sub_1CA2F9F14(v336, v335, v216, v334, 0, 0, &v330 - v218, &v330 - v202);
  v221 = v364;
  v222 = v346;
  *(v210 + 184) = v364;
  *(v210 + 192) = v222;
  v223 = sub_1CA94C438("3 (WFPDFPageRangeEnd)", 21);
  v335 = v224;
  v336 = v223;
  v225 = sub_1CA94C438("3", 1);
  v334 = v226;
  v337 = &v330;
  MEMORY[0x1EEE9AC00](v225);
  sub_1CA948D98();
  v227 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 200) = sub_1CA2F9F14(v336, v335, v225, v334, 0, 0, &v330 - v218, &v330 - v202);
  v229 = v349;
  *(v210 + 224) = v221;
  *(v210 + 232) = v229;
  v230 = swift_allocObject();
  *(v230 + 16) = v357;
  v231 = MEMORY[0x1E69E6158];
  *(v230 + 32) = sub_1CA94C1E8();
  *(v210 + 240) = v230;
  v232 = v347;
  *(v210 + 264) = v348;
  *(v210 + 272) = v232;
  *(v210 + 304) = v231;
  *(v210 + 280) = 0x7468676952;
  *(v210 + 288) = 0xE500000000000000;
  v233 = sub_1CA94C1E8();
  v234 = sub_1CA2F864C(v233);
  *(v363 + 64) = v234;
  v235 = swift_allocObject();
  *(v235 + 16) = v338;
  *(v235 + 32) = v351;
  *(v235 + 40) = 0xD000000000000019;
  *(v235 + 48) = 0x80000001CA99B030;
  v236 = v352;
  *(v235 + 64) = v231;
  *(v235 + 72) = v236;
  *(v235 + 80) = 0x7475706E494657;
  *(v235 + 88) = 0xE700000000000000;
  v237 = v353;
  *(v235 + 104) = v231;
  *(v235 + 112) = v237;
  v238 = sub_1CA94C438("Input (WFInput)", 15);
  v348 = v239;
  v349 = v238;
  v240 = sub_1CA94C438("Input", 5);
  v347 = v241;
  v350 = &v330;
  MEMORY[0x1EEE9AC00](v240);
  v242 = v366;
  sub_1CA948D98();
  v243 = v367;
  v244 = [v367 bundleURL];
  *&v338 = &v330;
  MEMORY[0x1EEE9AC00](v244);
  v245 = v365;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v235 + 120) = sub_1CA2F9F14(v349, v348, v240, v347, 0, 0, &v330 - v242, &v330 - v245);
  v247 = v364;
  v248 = v346;
  *(v235 + 144) = v364;
  *(v235 + 152) = v248;
  v249 = sub_1CA94C438("Input (WFInput)", 15);
  v348 = v250;
  v349 = v249;
  v251 = sub_1CA94C438("Input", 5);
  v347 = v252;
  v350 = &v330;
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948D98();
  v253 = [v243 bundleURL];
  MEMORY[0x1EEE9AC00](v253);
  sub_1CA948B68();

  v254 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v235 + 160) = sub_1CA2F9F14(v349, v348, v251, v347, 0, 0, &v330 - v242, &v330 - v245);
  *(v235 + 184) = v247;
  *(v235 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v255 = swift_allocObject();
  *(v255 + 16) = v357;
  v256 = @"PreferredTypes";
  v257 = v342;
  sub_1CA949C98();
  v258 = sub_1CA949C68();
  v260 = v259;
  (*(v343 + 8))(v257, v344);
  *(v255 + 32) = v258;
  *(v255 + 40) = v260;
  *(v235 + 224) = v356;
  *(v235 + 200) = v255;
  v261 = sub_1CA94C1E8();
  v262 = sub_1CA2F864C(v261);
  *(v363 + 72) = v262;
  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_1CA981380;
  *(v263 + 32) = v351;
  *(v263 + 40) = 0xD000000000000016;
  *(v263 + 48) = v340;
  v264 = MEMORY[0x1E69E6158];
  v265 = v354;
  *(v263 + 64) = MEMORY[0x1E69E6158];
  *(v263 + 72) = v265;
  *(v263 + 80) = 0x646E65707041;
  *(v263 + 88) = 0xE600000000000000;
  *(v263 + 104) = v264;
  *(v263 + 112) = @"Description";
  v266 = @"Description";
  v267 = sub_1CA94C438("Merge documents by appending or shuffling pages. Shuffling will add one page from each of the passed documents to the new document, then proceed to take the next page from each passed document, until all pages in the passed documents have been added to the new document. (WFPDFDocumentMergeBehavior)", 299);
  v356 = v268;
  *&v357 = v267;
  v269 = sub_1CA94C438("Merge documents by appending or shuffling pages. Shuffling will add one page from each of the passed documents to the new document, then proceed to take the next page from each passed document, until all pages in the passed documents have been added to the new document.", 270);
  v271 = v270;
  v359 = &v330;
  MEMORY[0x1EEE9AC00](v269);
  v272 = v366;
  sub_1CA948D98();
  v273 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v273);
  v274 = &v330 - v365;
  sub_1CA948B68();

  v275 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v263 + 120) = sub_1CA2F9F14(v357, v356, v269, v271, 0, 0, &v330 - v272, v274);
  v276 = v341;
  *(v263 + 144) = v364;
  *(v263 + 152) = v276;
  v359 = swift_allocObject();
  *(v359 + 1) = xmmword_1CA981360;
  v277 = sub_1CA94C438("Append (WFPDFDocumentMergeBehavior)", 35);
  v355 = v278;
  v356 = v277;
  v279 = sub_1CA94C438("Append", 6);
  v354 = v280;
  *&v357 = &v330;
  MEMORY[0x1EEE9AC00](v279);
  v281 = &v330 - v272;
  sub_1CA948D98();
  v282 = v367;
  v283 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v283);
  v284 = v365;
  sub_1CA948B68();

  v285 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v286 = sub_1CA2F9F14(v356, v355, v279, v354, 0, 0, v281, &v330 - v284);
  v359[4] = v286;
  v287 = sub_1CA94C438("Shuffle (WFPDFDocumentMergeBehavior)", 36);
  v355 = v288;
  v356 = v287;
  v289 = sub_1CA94C438("Shuffle", 7);
  v354 = v290;
  *&v357 = &v330;
  MEMORY[0x1EEE9AC00](v289);
  v291 = &v330 - v366;
  sub_1CA948D98();
  v292 = [v282 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  v293 = v284;
  sub_1CA948B68();

  v294 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v295 = sub_1CA2F9F14(v356, v355, v289, v354, 0, 0, v291, &v330 - v284);
  v296 = v359;
  v359[5] = v295;
  *(v263 + 160) = v296;
  v297 = v352;
  *(v263 + 184) = v339;
  *(v263 + 192) = v297;
  *(v263 + 200) = 0xD00000000000001ALL;
  *(v263 + 208) = 0x80000001CA9D8810;
  v298 = v353;
  *(v263 + 224) = MEMORY[0x1E69E6158];
  *(v263 + 232) = v298;
  v299 = sub_1CA94C438("Merge Behavior (WFPDFDocumentMergeBehavior)", 43);
  *&v357 = v300;
  v301 = sub_1CA94C438("Merge Behavior", 14);
  v303 = v302;
  v359 = &v330;
  MEMORY[0x1EEE9AC00](v301);
  v304 = &v330 - v366;
  sub_1CA948D98();
  v305 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v305);
  sub_1CA948B68();

  v306 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v307 = sub_1CA2F9F14(v299, v357, v301, v303, 0, 0, v304, &v330 - v293);
  *(v263 + 264) = v364;
  *(v263 + 240) = v307;
  v308 = sub_1CA94C1E8();
  v309 = sub_1CA2F864C(v308);
  v310 = v363;
  *(v363 + 80) = v309;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v312 = v358;
  *(v358 + 50) = v310;
  *(v312 + 53) = v311;
  *(v312 + 54) = @"ParameterSummary";
  v313 = @"ParameterSummary";
  v314 = sub_1CA94C438("Make PDF from ${WFInput} (Parameter Summary)", 44);
  v316 = v315;
  v317 = sub_1CA94C438("Make PDF from ${WFInput}", 24);
  v319 = v318;
  MEMORY[0x1EEE9AC00](v317);
  v320 = &v330 - v366;
  sub_1CA948D98();
  v321 = [v367 bundleURL];
  MEMORY[0x1EEE9AC00](v321);
  v322 = &v330 - v365;
  sub_1CA948B68();

  v323 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v324 = sub_1CA2F9F14(v314, v316, v317, v319, 0, 0, v320, v322);
  v325 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v326 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v327 = v358;
  *(v358 + 55) = v325;
  *(v327 + 58) = v326;
  *(v327 + 59) = @"ResidentCompatible";
  *(v327 + 63) = MEMORY[0x1E69E6370];
  v327[480] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v328 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63A4A0()
{
  v268 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D88D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|clip|record", 18);
  v6 = v5;
  v7 = sub_1CA94C438("camera|clip|record", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v290 = v11;
  v291 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v260 - v291;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v289 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v287 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v288 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v260 - v288;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v286 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v267 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v284 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("Video from the camera.", 22);
  v281 = v27;
  v282 = v26;
  v28 = sub_1CA94C438("Video from the camera.", 22);
  v30 = v29;
  v283 = v260;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v260 - v291;
  sub_1CA948D98();
  v32 = v289;
  v33 = [v289 bundleURL];
  v285 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v288;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v282, v281, v28, v30, 0, 0, v31, v260 - v35);
  v37 = v286;
  *(v23 + 64) = v286;
  *(v23 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438("Uses the camera to take a video clip.", 37);
  v281 = v40;
  v282 = v39;
  v41 = sub_1CA94C438("Uses the camera to take a video clip.", 37);
  v43 = v42;
  v283 = v260;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v260 - v291;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v282, v281, v41, v43, 0, 0, v44, v260 - v35);
  *(v23 + 104) = v37;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v48 = sub_1CA94C1E8();
  v49 = v284;
  v50 = sub_1CA6B3784(v48);
  v51 = v285;
  v285[20] = v50;
  v51[23] = v49;
  v51[24] = @"DisabledOnPlatforms";
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v281 = v53;
  v52[25] = &unk_1F4A0A330;
  v52[28] = v53;
  v52[29] = @"InputPassthrough";
  v54 = MEMORY[0x1E69E6370];
  *(v52 + 240) = 0;
  v52[33] = v54;
  v52[34] = @"Name";
  v55 = @"DisabledOnPlatforms";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v283 = sub_1CA94C438("Take Video (Action Name)", 24);
  v59 = v58;
  v60 = sub_1CA94C438("Take Video", 10);
  v62 = v61;
  v284 = v260;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v291;
  sub_1CA948D98();
  v64 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v260 - v288;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v283, v59, v60, v62, 0, 0, v260 - v63, v65);
  v68 = v285;
  v285[35] = v67;
  v69 = v286;
  v68[38] = v286;
  v68[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_1CA9813C0;
  *(v70 + 32) = 0x656C7069746C754DLL;
  *(v70 + 40) = 0xE800000000000000;
  *(v70 + 48) = 0;
  *(v70 + 72) = MEMORY[0x1E69E6370];
  *(v70 + 80) = 0x614E74757074754FLL;
  *(v70 + 88) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Video (Default Output Name)", 27);
  v282 = v73;
  v283 = v72;
  v74 = sub_1CA94C438("Video", 5);
  v76 = v75;
  v284 = v260;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v260 - v63;
  sub_1CA948D98();
  v78 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = v260 - v288;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 96) = sub_1CA2F9F14(v283, v282, v74, v76, 0, 0, v77, v79);
  *(v70 + 120) = v69;
  *(v70 + 128) = 0x7365707954;
  *(v70 + 168) = v281;
  *(v70 + 136) = 0xE500000000000000;
  *(v70 + 144) = &unk_1F4A0A360;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v84 = v285;
  v285[40] = v82;
  v84[43] = v83;
  v84[44] = @"Parameters";
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v284 = swift_allocObject();
  v280 = xmmword_1CA981470;
  *(v284 + 1) = xmmword_1CA981470;
  v283 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981380;
  v278 = 0x80000001CA99C4A0;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000016;
  *(v85 + 48) = 0x80000001CA99C4A0;
  *(v85 + 64) = v81;
  *(v85 + 72) = @"DefaultValue";
  *(v85 + 80) = 1801675074;
  *(v85 + 88) = 0xE400000000000000;
  *(v85 + 104) = v81;
  *(v85 + 112) = @"Items";
  v273 = swift_allocObject();
  v266 = xmmword_1CA981360;
  *&v273->data = xmmword_1CA981360;
  v86 = @"Class";
  v87 = @"DefaultValue";
  v88 = @"Items";
  v89 = v86;
  v90 = v87;
  v91 = v88;
  v276 = v89;
  v275 = v90;
  v277 = v91;
  v92 = @"Parameters";
  v93 = sub_1CA94C438("Front (WFCameraCaptureDevice)", 29);
  v271 = v94;
  v272 = v93;
  v95 = sub_1CA94C438("Front", 5);
  v270 = v96;
  v274 = v260;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v260 - v291;
  sub_1CA948D98();
  v98 = v289;
  v99 = [v289 bundleURL];
  v269 = v260;
  MEMORY[0x1EEE9AC00](v99);
  v100 = v288;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v272, v271, v95, v270, 0, 0, v97, v260 - v100);
  v103 = v273;
  v273[1].isa = v102;
  v104 = sub_1CA94C438("Back (WFCameraCaptureDevice)", 28);
  v271 = v105;
  v272 = v104;
  v270 = sub_1CA94C438("Back", 4);
  v107 = v106;
  v274 = v260;
  MEMORY[0x1EEE9AC00](v270);
  v108 = v260 - v291;
  sub_1CA948D98();
  v109 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103[1].info = sub_1CA2F9F14(v272, v271, v270, v107, 0, 0, v108, v260 - v100);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v274 = v111;
  *(v85 + 120) = v103;
  *(v85 + 144) = v111;
  *(v85 + 152) = @"Key";
  *(v85 + 160) = 0xD000000000000015;
  *(v85 + 168) = 0x80000001CA9D89C0;
  *(v85 + 184) = MEMORY[0x1E69E6158];
  *(v85 + 192) = @"Label";
  v112 = @"Key";
  v113 = @"Label";
  v114 = v112;
  v115 = v113;
  v272 = v114;
  v273 = v115;
  v116 = sub_1CA94C438("Camera (WFCameraCaptureDevice)", 30);
  v118 = v117;
  v119 = sub_1CA94C438("Camera", 6);
  v121 = v120;
  v271 = v260;
  MEMORY[0x1EEE9AC00](v119);
  v122 = v260 - v291;
  sub_1CA948D98();
  v123 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v260 - v288;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 200) = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v85 + 224) = v286;
  *(v85 + 232) = @"RequiredResources";
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1CA9813B0;
  v292 = 2;
  v293 = 1;
  v127 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v128 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v292);
  *(v126 + 32) = v129;
  *(v85 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v85 + 240) = v126;
  _s3__C3KeyVMa_0(0);
  v271 = v130;
  v270 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  v284[4] = v132;
  v133 = swift_allocObject();
  v265 = xmmword_1CA981370;
  *(v133 + 16) = xmmword_1CA981370;
  *(v133 + 32) = v276;
  *(v133 + 40) = 0xD000000000000016;
  *(v133 + 48) = v278;
  v134 = MEMORY[0x1E69E6158];
  v135 = v275;
  *(v133 + 64) = MEMORY[0x1E69E6158];
  *(v133 + 72) = v135;
  *(v133 + 80) = 1751607624;
  *(v133 + 88) = 0xE400000000000000;
  v136 = v277;
  *(v133 + 104) = v134;
  *(v133 + 112) = v136;
  v269 = swift_allocObject();
  *(v269 + 1) = v280;
  v137 = sub_1CA94C438("Low (WFCameraCaptureQuality)", 28);
  v262 = v138;
  v263 = v137;
  v139 = sub_1CA94C438("Low", 3);
  v261 = v140;
  v264 = v260;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v260 - v291;
  sub_1CA948D98();
  v142 = v289;
  v143 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = v260 - v288;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v263, v262, v139, v261, 0, 0, v141, v144);
  v147 = v269;
  v269[4] = v146;
  v148 = sub_1CA94C438("Medium (WFCameraCaptureQuality)", 31);
  v262 = v149;
  v263 = v148;
  v150 = sub_1CA94C438("Medium", 6);
  v261 = v151;
  v264 = v260;
  MEMORY[0x1EEE9AC00](v150);
  v152 = v291;
  sub_1CA948D98();
  v153 = [v142 bundleURL];
  v260[1] = v260;
  MEMORY[0x1EEE9AC00](v153);
  v154 = v288;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147[5] = sub_1CA2F9F14(v263, v262, v150, v261, 0, 0, v260 - v152, v260 - v154);
  v156 = sub_1CA94C438("High (WFCameraCaptureQuality)", 29);
  v262 = v157;
  v263 = v156;
  v158 = sub_1CA94C438("High", 4);
  v261 = v159;
  v264 = v260;
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948D98();
  v160 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v263, v262, v158, v261, 0, 0, v260 - v152, v260 - v154);
  v163 = v269;
  v269[6] = v162;
  *(v133 + 120) = v163;
  v164 = v272;
  *(v133 + 144) = v274;
  *(v133 + 152) = v164;
  *(v133 + 160) = 0xD000000000000016;
  *(v133 + 168) = 0x80000001CA9D8A80;
  v165 = v273;
  *(v133 + 184) = MEMORY[0x1E69E6158];
  *(v133 + 192) = v165;
  v264 = sub_1CA94C438("Quality (WFCameraCaptureQuality)", 32);
  v167 = v166;
  v168 = sub_1CA94C438("Quality", 7);
  v170 = v169;
  v269 = v260;
  MEMORY[0x1EEE9AC00](v168);
  v171 = v260 - v291;
  sub_1CA948D98();
  v172 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = v260 - v288;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v264, v167, v168, v170, 0, 0, v171, v173);
  *(v133 + 224) = v286;
  *(v133 + 200) = v175;
  v176 = sub_1CA94C1E8();
  v177 = sub_1CA2F864C(v176);
  v284[5] = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = v265;
  *(v178 + 32) = v276;
  *(v178 + 40) = 0xD000000000000016;
  *(v178 + 48) = v278;
  v179 = MEMORY[0x1E69E6158];
  v180 = v275;
  *(v178 + 64) = MEMORY[0x1E69E6158];
  *(v178 + 72) = v180;
  *(v178 + 80) = 0x74616964656D6D49;
  *(v178 + 88) = 0xEB00000000796C65;
  v181 = v277;
  *(v178 + 104) = v179;
  *(v178 + 112) = v181;
  v279 = swift_allocObject();
  *(v279 + 1) = v266;
  v182 = sub_1CA94C438("On Tap (WFRecordingStart)", 25);
  v276 = v183;
  v277 = v182;
  v184 = sub_1CA94C438("On Tap", 6);
  v275 = v185;
  v278 = v260;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v291;
  sub_1CA948D98();
  v187 = v289;
  v188 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v260 - v288;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v277, v276, v184, v275, 0, 0, v260 - v186, v189);
  v279[4] = v191;
  v192 = sub_1CA94C438("Immediately (WFRecordingStart)", 30);
  v276 = v193;
  v277 = v192;
  v194 = sub_1CA94C438("Immediately", 11);
  v275 = v195;
  v278 = v260;
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948D98();
  v196 = [v187 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = v288;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v277, v276, v194, v275, 0, 0, v260 - v186, v260 - v197);
  v200 = v279;
  v279[5] = v199;
  *(v178 + 120) = v200;
  v201 = v272;
  *(v178 + 144) = v274;
  *(v178 + 152) = v201;
  *(v178 + 160) = 0xD000000000000010;
  *(v178 + 168) = 0x80000001CA9D5AD0;
  v202 = v273;
  *(v178 + 184) = MEMORY[0x1E69E6158];
  *(v178 + 192) = v202;
  v203 = sub_1CA94C438("Start Recording (WFRecordingStart)", 34);
  v277 = v204;
  v278 = v203;
  v205 = sub_1CA94C438("Start Recording", 15);
  v207 = v206;
  v279 = v260;
  MEMORY[0x1EEE9AC00](v205);
  v208 = v260 - v291;
  sub_1CA948D98();
  v209 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v278, v277, v205, v207, 0, 0, v208, v260 - v197);
  *(v178 + 224) = v286;
  *(v178 + 200) = v211;
  v212 = sub_1CA94C1E8();
  v213 = sub_1CA2F864C(v212);
  v214 = v284;
  v284[6] = v213;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v216 = v285;
  v285[45] = v214;
  v216[48] = v215;
  v216[49] = @"ParameterSummary";
  v284 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v286 = swift_allocObject();
  *(v286 + 16) = v280;
  v217 = @"ParameterSummary";
  v282 = sub_1CA94C438("Take video", 10);
  *&v280 = v218;
  v219 = sub_1CA94C438("Take video", 10);
  v279 = v220;
  v283 = v260;
  MEMORY[0x1EEE9AC00](v219);
  v221 = v291;
  sub_1CA948D98();
  v222 = v289;
  v223 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = v288;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v226 = sub_1CA2F9F14(v282, v280, v219, v279, 0, 0, v260 - v221, v260 - v224);
  v227 = objc_allocWithZone(WFActionParameterSummaryValue);
  v228 = sub_1CA65DD78(0, 0xE000000000000000, v226);
  v229 = v286;
  *(v286 + 32) = v228;
  v283 = "aCaptureQuality)";
  v230 = sub_1CA94C438("Take video with ${WFCameraCaptureDevice} camera (Front)", 55);
  v279 = v231;
  *&v280 = v230;
  v232 = sub_1CA94C438("Take video with ${WFCameraCaptureDevice} camera", 47);
  v278 = v233;
  v282 = v260;
  MEMORY[0x1EEE9AC00](v232);
  sub_1CA948D98();
  v234 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v280, v279, v232, v278, 0, 0, v260 - v221, v260 - v224);
  v237 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v229 + 40) = sub_1CA65DD78(0xD00000000000001CLL, v283 | 0x8000000000000000, v236);
  v283 = "${WFCameraCaptureDevice} camera";
  v238 = sub_1CA94C438("Take video with ${WFCameraCaptureDevice} camera (Back)", 54);
  v240 = v239;
  v241 = sub_1CA94C438("Take video with ${WFCameraCaptureDevice} camera", 47);
  v243 = v242;
  MEMORY[0x1EEE9AC00](v241);
  v244 = v260 - v291;
  sub_1CA948D98();
  v245 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  v246 = v260 - v288;
  sub_1CA948B68();

  v247 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v248 = sub_1CA2F9F14(v238, v240, v241, v243, 0, 0, v244, v246);
  v249 = objc_allocWithZone(WFActionParameterSummaryValue);
  v250 = sub_1CA65DD78(0xD00000000000001BLL, v283 | 0x8000000000000000, v248);
  v251 = v286;
  *(v286 + 48) = v250;
  v252 = v284;
  v253 = sub_1CA65AF90(v251);
  v254 = v285;
  v285[50] = v253;
  v254[53] = v252;
  v254[54] = @"RequiredResources";
  v254[55] = &unk_1F4A0A390;
  v255 = v281;
  v254[58] = v281;
  v254[59] = @"UserInterfaceClasses";
  v256 = @"RequiredResources";
  v257 = @"UserInterfaceClasses";
  v254[60] = sub_1CA94C1E8();
  v254[63] = v267;
  v254[64] = @"UserInterfaces";
  v254[68] = v255;
  v254[65] = &unk_1F4A0A430;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v258 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63C1F8()
{
  v107 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9D8BD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("json|plist", 10);
  v6 = v5;
  v7 = sub_1CA94C438("json|plist", 10);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = v11;
  v12 = &v101 - v112;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v109 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v101 - v110;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v114 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v106 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438("When coerced to text, the dictionary is represented as JSON.", 60);
  v103 = v24;
  v104 = v23;
  v25 = sub_1CA94C438("When coerced to text, the dictionary is represented as JSON.", 60);
  v102 = v26;
  *&v105 = &v101;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v112;
  sub_1CA948D98();
  v28 = v111;
  v29 = [v111 bundleURL];
  v108 = inited;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v110;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v104, v103, v25, v102, 0, 0, v27, &v101 - v30);
  *(v20 + 64) = v114;
  *(v20 + 72) = @"DescriptionSummary";
  v32 = @"DescriptionSummary";
  v33 = sub_1CA94C438("Passes the specified list of key-value pairs to the next action as a dictionary.", 80);
  v103 = v34;
  v104 = v33;
  v35 = sub_1CA94C438("Passes the specified list of key-value pairs to the next action as a dictionary.", 80);
  v37 = v36;
  *&v105 = &v101;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v101 - v112;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v104, v103, v35, v37, 0, 0, v38, &v101 - v30);
  *(v20 + 104) = v114;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v106;
  v44 = sub_1CA6B3784(v42);
  v45 = v108;
  v108[15] = v44;
  v45[18] = v43;
  v45[19] = @"IconColor";
  v45[20] = 0x65676E61724FLL;
  v45[21] = 0xE600000000000000;
  v46 = MEMORY[0x1E69E6158];
  v45[23] = MEMORY[0x1E69E6158];
  v45[24] = @"IconSymbol";
  v45[25] = 0xD000000000000010;
  v45[26] = 0x80000001CA9CA420;
  v45[28] = v46;
  v45[29] = @"Name";
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Name";
  v50 = sub_1CA94C438("Dictionary (Action Name)", 24);
  v52 = v51;
  v53 = sub_1CA94C438("Dictionary", 10);
  v55 = v54;
  v106 = &v101;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v101 - v112;
  sub_1CA948D98();
  v57 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v101 - v110;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  v61 = v108;
  v108[30] = v60;
  v61[33] = v114;
  v61[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v105 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 96) = 0;
  *(v62 + 120) = v63;
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Dictionary (Default Output Name)", 32);
  v104 = v66;
  v67 = sub_1CA94C438("Dictionary", 10);
  v69 = v68;
  v106 = &v101;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v112;
  sub_1CA948D98();
  v71 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v101 - v110;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v65, v104, v67, v69, 0, 0, &v101 - v70, v72);
  *(v62 + 168) = v114;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 192) = &unk_1F4A0A460;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v77 = v108;
  v108[35] = v75;
  v77[38] = v76;
  v77[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v106 = swift_allocObject();
  *(v106 + 1) = xmmword_1CA9813B0;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_initStackObject();
  *(v78 + 16) = v105;
  *(v78 + 32) = @"AllowedValueTypes";
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v78 + 40) = &unk_1F4A0A490;
  *(v78 + 64) = v79;
  *(v78 + 72) = @"Class";
  *(v78 + 80) = 0xD000000000000015;
  *(v78 + 88) = 0x80000001CA9CE7F0;
  *(v78 + 104) = v74;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x736D6574494657;
  *(v78 + 128) = 0xE700000000000000;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v80 = @"Parameters";
  v81 = @"AllowedValueTypes";
  v82 = @"Class";
  v83 = @"Key";
  v84 = @"Label";
  v85 = sub_1CA94C438("Items (WFItems)", 15);
  v103 = v86;
  v87 = sub_1CA94C438("Items", 5);
  v89 = v88;
  *&v105 = &v101;
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948D98();
  v90 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v101 - v110;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v85, v103, v87, v89, 0, 0, &v101 - v70, v91);
  *(v78 + 184) = v114;
  *(v78 + 160) = v93;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v94 = sub_1CA94C1E8();
  v95 = sub_1CA2F864C(v94);
  v96 = v106;
  v106[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v98 = v108;
  v108[40] = v96;
  v98[43] = v97;
  v98[44] = @"ResidentCompatible";
  v98[48] = MEMORY[0x1E69E6370];
  *(v98 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v99 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63CEE0()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9D8CC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|track", 10);
  v6 = v5;
  v7 = sub_1CA94C438("song|track", 10);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v11;
  v12 = &v100 - v111;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v110 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v108 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v109;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v107 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets every song in the specified playlist.", 42);
  v103 = v27;
  v28 = sub_1CA94C438("Gets every song in the specified playlist.", 42);
  v30 = v29;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v111;
  sub_1CA948D98();
  v32 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v100 - v109;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v103, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v107;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v105;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438("Get Playlist (Action Name)", 26);
  v43 = v42;
  v44 = sub_1CA94C438("Get Playlist", 12);
  v46 = v45;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v100 - v111;
  sub_1CA948D98();
  v48 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v100 - v109;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v107;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981350;
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
  v53 = sub_1CA94C438("Playlist (Default Output Name)", 30);
  v104 = v54;
  v55 = sub_1CA94C438("Playlist", 8);
  v57 = v56;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v100 - v111;
  sub_1CA948D98();
  v59 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v100 - v109;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v53, v104, v55, v57, 0, 0, v58, v60);
  *(v51 + 168) = v107;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v105;
  *(v51 + 192) = &unk_1F4A0A518;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v63;
  *(inited + 304) = v64;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v104 = swift_allocObject();
  *(v104 + 1) = xmmword_1CA9813B0;
  v103 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1CA9813C0;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000019;
  *(v65 + 48) = 0x80000001CA9C6480;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  strcpy((v65 + 80), "WFPlaylistName");
  *(v65 + 95) = -18;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438("Playlist (WFPlaylistName)", 25);
  v101 = v71;
  v72 = sub_1CA94C438("Playlist", 8);
  v74 = v73;
  v102 = &v100;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v100 - v111;
  sub_1CA948D98();
  v76 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v100 - v109;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v70, v101, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v107;
  *(v65 + 120) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v80 = sub_1CA94C1E8();
  v81 = sub_1CA2F864C(v80);
  v82 = v104;
  v104[4] = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v82;
  *(inited + 344) = v83;
  *(inited + 352) = @"ParameterSummary";
  v84 = @"ParameterSummary";
  v85 = sub_1CA94C438("Get songs in ${WFPlaylistName} (Parameter Summary)", 50);
  v87 = v86;
  v88 = sub_1CA94C438("Get songs in ${WFPlaylistName}", 30);
  v90 = v89;
  v107 = &v100;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v100 - v111;
  sub_1CA948D98();
  v92 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v100 - v109;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  v96 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v97 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v96;
  *(inited + 384) = v97;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v105;
  *(inited + 400) = &unk_1F4A0A548;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v98 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA63DBF8(SEL *a1, uint64_t (*a2)(void))
{
  v4 = [v2 *a1];
  v5 = a2();

  return v5;
}

uint64_t sub_1CA63DC58(void *a1)
{
  v1 = [a1 count];
  v20 = MEMORY[0x1E69E7CC0];
  sub_1CA2B8DF8(0, v1 & ~(v1 >> 63), 0);
  v2 = v20;
  v3 = sub_1CA948AF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA94CBC8();
  if (v1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v14[0] = v4;
  v14[1] = v14;
  if (v1)
  {
    sub_1CA60EEC4();
    do
    {
      result = sub_1CA94D148();
      if (!v18)
      {
        goto LABEL_15;
      }

      sub_1CA25B374(&v17, &v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_0(&v17);
      v8 = v19;
      v20 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1CA2B8DF8(v9 > 1, v10 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v10 + 1;
      *(v2 + 8 * v10 + 32) = v8;
    }

    while (--v1);
  }

  sub_1CA60EEC4();
  while (1)
  {
    sub_1CA94D148();
    if (!v16)
    {
      break;
    }

    sub_1CA2C0A20(&v15, &v17);
    sub_1CA25B374(&v17, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0(&v17);
    v11 = v19;
    v20 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1CA2B8DF8(v12 > 1, v13 + 1, 1);
      v2 = v20;
    }

    *(v2 + 16) = v13 + 1;
    *(v2 + 8 * v13 + 32) = v11;
  }

  (*(v14[0] + 8))(v6, v3);
  sub_1CA2C0A74(&v15);
  return v2;
}

uint64_t sub_1CA63DF38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v44 = a5;
  v43 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v42[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1CA981350;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 32) = @"Key";
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  *(v9 + 72) = @"Label";
  sub_1CA94C218();
  v13 = @"Key";
  sub_1CA94C218();
  v14 = @"Label";
  v15 = sub_1CA94C438("Number in bounded range (Parameter Label)", 41);
  v17 = v16;
  v18 = sub_1CA94C438("Number", 6);
  v20 = v19;
  v21 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v24 = [qword_1EDB9F690 bundleURL];
  v25 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v28 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v29 = sub_1CA2F9F14(v15, v17, v18, v20, 0, 0, v23, v27);
  v30 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v9 + 80) = v29;
  *(v9 + 104) = v30;
  *(v9 + 112) = @"MinimumValue";
  v31 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v32 = v43;
  *(v9 + 120) = v43;
  *(v9 + 144) = v31;
  *(v9 + 152) = @"MaximumValue";
  *(v9 + 184) = v31;
  v33 = v44;
  *(v9 + 160) = v44;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v34 = @"MinimumValue";
  v35 = v32;
  v36 = @"MaximumValue";
  v37 = v33;
  v38 = sub_1CA94C1E8();
  v39 = sub_1CA2F864C(v38);
  v40 = [objc_allocWithZone(WFSliderParameter) initWithDefinition_];

  *(inited + 48) = v40;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA63E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA63E300, 0, 0);
}

uint64_t sub_1CA63E300()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v1);
    swift_unknownObjectRetain();
    v3 = objc_opt_self();
    if (OUTLINED_FUNCTION_37(v3))
    {
      OUTLINED_FUNCTION_7_39();
      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_1CA63E478;
      v5 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v6(v5);
    }

    else
    {
      v9 = sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(0);
  }
}

uint64_t sub_1CA63E478()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA63E57C()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_37(v1);
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v4(v3);
  }

  v6 = sub_1CA2A741C();
  OUTLINED_FUNCTION_127(&unk_1F4A11410, v6);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_9_36(ObjectType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA63E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA63E6CC()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[5], v0[6]), (v2 & 1) != 0))
  {
    v0[7] = *(*(v0[2] + 56) + 8 * v1);
    swift_unknownObjectRetain();
    v3 = objc_opt_self();
    if (OUTLINED_FUNCTION_37(v3))
    {
      OUTLINED_FUNCTION_7_39();
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_1CA63E844;
      v5 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v6(v5);
    }

    else
    {
      v9 = sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(1);
  }
}

uint64_t sub_1CA63E844()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA63E948()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_37(v1);
    v0[11] = v2;
    if (v2)
    {
      swift_unknownObjectRelease_n();
      v3 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v4 = swift_task_alloc();
      v0[12] = v4;
      *v4 = v0;
      v4[1] = sub_1CA63EAEC;

      return MEMORY[0x1EEDF81A0](v3);
    }

    else
    {
      v6 = sub_1CA2A741C();
      OUTLINED_FUNCTION_127(&unk_1F4A11410, v6);
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_9_36(ObjectType);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v8();
    }
  }

  else
  {
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v5(1);
  }
}

uint64_t sub_1CA63EAEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA63EBFC()
{
  if (*(v0 + 104))
  {
    swift_unknownObjectRetain();
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_37(v1);
    if (v2)
    {
      v3 = [v2 compare_];
      swift_unknownObjectRelease_n();
      goto LABEL_7;
    }

    swift_unknownObjectRelease_n();
  }

  v3 = -1;
LABEL_7:
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v4(v3);
}

uint64_t sub_1CA63ECD0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  *(v0 + 16) = v5;
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1CA63ED98;

  return sub_1CA63E2DC(v7, v8, v4, v2);
}

uint64_t sub_1CA63ED98(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = a1;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA63EED4()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = *v5;
  v6 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  *(v0 + 64) = v6;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1CA63EF98;

  return MEMORY[0x1EEDF81A0](v6);
}

uint64_t sub_1CA63EF98()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA63F0C8()
{
  OUTLINED_FUNCTION_0();
  if (v0[10])
  {
    swift_unknownObjectRetain();
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_37(v1);
    v0[11] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_1CA63F1CC;
      v5 = v0[6];
      v4 = v0[7];
      v6 = v0[2];
      v7 = v0[3];

      return sub_1CA63E2DC(v5, v4, v6, v7);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_4();

  return v9(0);
}

uint64_t sub_1CA63F1CC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA63F2D8()
{
  v1 = *(v0 + 104);
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

uint64_t sub_1CA63F37C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C756C;

  return sub_1CA63ECD0();
}

uint64_t sub_1CA63F440()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2A715C;

  return sub_1CA63EED4();
}

uint64_t sub_1CA63F504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA2A731C;

  return sub_1CA63E698(a1, a2, a3, v9, v8);
}

id sub_1CA63F604()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9D8E30;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v2 = swift_initStackObject();
  v121 = xmmword_1CA981350;
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000001CA99DA80;
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 48) = 1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000010;
  v117 = 0xD000000000000010;
  *(v2 + 88) = 0x80000001CA993290;
  *(v2 + 96) = 0xD000000000000017;
  *(v2 + 104) = 0x80000001CA9D8E50;
  *(v2 + 120) = v1;
  *(v2 + 128) = 1701667150;
  *(v2 + 136) = 0xE400000000000000;
  *(v2 + 144) = 0x757153646E696C42;
  *(v2 + 152) = 0xEB00000000657261;
  *(v2 + 168) = v1;
  strcpy((v2 + 176), "TeamIdentifier");
  *(v2 + 216) = v1;
  *(v2 + 191) = -18;
  *(v2 + 192) = 0x3337515639364553;
  *(v2 + 200) = 0xEA00000000005253;
  v4 = @"ActionClass";
  v5 = @"AppDefinition";
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 80) = v6;
  v123 = v7;
  *(inited + 104) = v7;
  *(inited + 112) = @"Description";
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v8 = swift_initStackObject();
  v116 = xmmword_1CA981310;
  *(v8 + 16) = xmmword_1CA981310;
  *(v8 + 32) = @"DescriptionSummary";
  v9 = @"Description";
  v10 = @"DescriptionSummary";
  v11 = sub_1CA94C438("Opens BlindSquare showing information about the place passed as input, so you can save it as a favorite, start tracking it, or start simulation mode.", 149);
  v124 = v12;
  v13 = sub_1CA94C438("Opens BlindSquare showing information about the place passed as input, so you can save it as a favorite, start tracking it, or start simulation mode.", 149);
  v15 = v14;
  v16 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v129 = v17;
  v18 = &v110 - v128;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v127 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v125 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v126 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v110 - v126;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v11, v124, v13, v15, 0, 0, v18, v22);
  v124 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 64) = v124;
  *(v8 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v25 = sub_1CA94C1E8();
  v26 = v120;
  *(inited + 120) = sub_1CA6B3784(v25);
  *(inited + 144) = v26;
  *(inited + 152) = @"Input";
  v27 = swift_initStackObject();
  *(v27 + 16) = v121;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  *(v27 + 48) = 0;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 72) = MEMORY[0x1E69E6370];
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x7475706E494657;
  *(v27 + 104) = 0xE700000000000000;
  *(v27 + 120) = MEMORY[0x1E69E6158];
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  *(v27 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 192) = &unk_1F4A0A578;
  v30 = @"Input";
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v123;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 1;
  *(inited + 224) = v29;
  *(inited + 232) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438("Open in BlindSquare (Action Name)", 33);
  v35 = v34;
  v36 = sub_1CA94C438("Open in BlindSquare", 19);
  v38 = v37;
  v120 = &v110;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v110 - v128;
  sub_1CA948D98();
  v40 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v110 - v126;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 264) = v124;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v120 = swift_allocObject();
  *(v120 + 1) = xmmword_1CA981360;
  v119 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_allocObject();
  *(v43 + 16) = v121;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000011;
  *(v43 + 48) = 0x80000001CA99E620;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"DefaultValue";
  *(v43 + 80) = 0;
  *(v43 + 104) = MEMORY[0x1E69E6370];
  *(v43 + 112) = @"Key";
  *(v43 + 120) = 0xD000000000000017;
  *(v43 + 128) = 0x80000001CA9D8F60;
  *(v43 + 144) = v44;
  *(v43 + 152) = @"Label";
  v45 = @"Class";
  v46 = @"Key";
  v47 = @"Label";
  v114 = v45;
  v113 = v46;
  v112 = v47;
  v48 = @"Parameters";
  v49 = @"DefaultValue";
  v50 = sub_1CA94C438("Start Simulation (WFBlindSquareSimulation)", 42);
  v111 = v51;
  v52 = sub_1CA94C438("Start Simulation", 16);
  v54 = v53;
  *&v121 = &v110;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v110 - v128;
  sub_1CA948D98();
  v56 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v110 - v126;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v50, v111, v52, v54, 0, 0, v55, v57);
  *(v43 + 184) = v124;
  *(v43 + 160) = v59;
  _s3__C3KeyVMa_0(0);
  v111 = v60;
  v110 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v61 = sub_1CA94C1E8();
  v62 = sub_1CA2F864C(v61);
  v120[4] = v62;
  v63 = swift_allocObject();
  v121 = xmmword_1CA9813C0;
  *(v63 + 16) = xmmword_1CA9813C0;
  *(v63 + 32) = v114;
  *(v63 + 40) = 0xD000000000000013;
  *(v63 + 48) = 0x80000001CA99B730;
  v64 = MEMORY[0x1E69E6158];
  v65 = v113;
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = v65;
  *(v63 + 80) = 0x7475706E494657;
  *(v63 + 88) = 0xE700000000000000;
  v66 = v112;
  *(v63 + 104) = v64;
  *(v63 + 112) = v66;
  v67 = sub_1CA94C438("Location (WFInput)", 18);
  v114 = v68;
  v69 = sub_1CA94C438("Location", 8);
  v71 = v70;
  v115 = &v110;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v110 - v128;
  sub_1CA948D98();
  v73 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v110 - v126;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v67, v114, v69, v71, 0, 0, v72, v74);
  *(v63 + 144) = v124;
  *(v63 + 120) = v76;
  v77 = sub_1CA94C1E8();
  v78 = sub_1CA2F864C(v77);
  v79 = v120;
  v120[5] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v79;
  *(inited + 304) = v80;
  *(inited + 312) = @"ParameterSummary";
  v81 = @"ParameterSummary";
  v82 = sub_1CA94C438("Open ${WFInput} (Parameter Summary)", 35);
  v84 = v83;
  v85 = sub_1CA94C438("Open ${WFInput}", 15);
  v87 = v86;
  v124 = &v110;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v110 - v128;
  sub_1CA948D98();
  v89 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v110 - v126;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  v93 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v94 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v93;
  *(inited + 344) = v94;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v95 = swift_allocObject();
  *(v95 + 16) = v121;
  v96 = MEMORY[0x1E69E6158];
  *(v95 + 56) = MEMORY[0x1E69E6158];
  *(v95 + 32) = 0xD000000000000011;
  *(v95 + 40) = 0x80000001CA993BE0;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA97EDF0;
  *(v97 + 32) = 0xD000000000000011;
  *(v97 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v98 = swift_allocObject();
  *(v98 + 16) = v116;
  v99 = swift_allocObject();
  *(v99 + 16) = v121;
  strcpy((v99 + 32), "WFParameterKey");
  *(v99 + 47) = -18;
  *(v99 + 48) = 0x7475706E494657;
  *(v99 + 56) = 0xE700000000000000;
  v100 = v117;
  *(v99 + 72) = v96;
  *(v99 + 80) = v100;
  *(v99 + 88) = 0x80000001CA993570;
  v101 = @"RequiredResources";
  v102 = sub_1CA94C1E8();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v99 + 96) = v102;
  *(v99 + 120) = v103;
  *(v99 + 128) = 0x72756F7365524657;
  *(v99 + 168) = v96;
  *(v99 + 136) = 0xEF7373616C436563;
  *(v99 + 144) = 0xD00000000000001BLL;
  *(v99 + 152) = 0x80000001CA993590;
  *(v98 + 32) = sub_1CA94C1E8();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v97 + 48) = v98;
  *(v97 + 72) = v104;
  *(v97 + 80) = 0x72756F7365524657;
  *(v97 + 120) = v96;
  *(v97 + 88) = 0xEF7373616C436563;
  *(v97 + 96) = 0xD000000000000018;
  *(v97 + 104) = 0x80000001CA994040;
  v105 = sub_1CA94C1E8();
  *(v95 + 88) = v123;
  *(v95 + 64) = v105;
  v130 = 2;
  v131 = 1;
  v106 = type metadata accessor for WFDeviceIdiomResource();
  v107 = objc_allocWithZone(v106);
  WFDeviceIdiomResource.init(requirement:)(&v130);
  *(v95 + 120) = v106;
  *(v95 + 96) = v108;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v95;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640644()
{
  v36 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
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
  v35 = v5;
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
  v12 = sub_1CA94C438("Get Details of Music (Action Name)", 34);
  v34 = v13;
  v14 = sub_1CA94C438("Get Details of Music", 20);
  v16 = v15;
  v17 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v33 = 0x80000001CA997EB0;
  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v12, v34, v14, v16, 0, 0, v19, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v25;
  *(inited + 224) = v26;
  *(inited + 232) = @"Output";
  v27 = @"Output";
  v28 = sub_1CA94C1E8();
  *(inited + 264) = v35;
  *(inited + 240) = v28;
  v29 = sub_1CA94C368();
  *(inited + 304) = v1;
  *(inited + 272) = v29;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = v33;
  v30 = sub_1CA94C368();
  *(inited + 344) = v1;
  *(inited + 312) = v30;
  *(inited + 320) = 0x747369747241;
  *(inited + 328) = 0xE600000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640AC4()
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
  v6 = sub_1CA94C438("Get Details of Ride Status (Action Name)", 40);
  v8 = v7;
  v9 = sub_1CA94C438("Get Details of Ride Status", 26);
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
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9D90C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640E20()
{
  v263 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9D90F0;
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
  v279 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v280 = v11;
  v12 = v253 - v279;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v276 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v278 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v277 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v253 - v277;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v275 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v272 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v273 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438("If no file exists yet at the specified path, a new file will be created. Make sure to include a file extension (usually .txt) at the end of your path.", 150);
  v269 = v24;
  v270 = v23;
  v25 = sub_1CA94C438("If no file exists yet at the specified path, a new file will be created. Make sure to include a file extension (usually .txt) at the end of your path.", 150);
  v27 = v26;
  v271 = v253;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v253 - v279;
  sub_1CA948D98();
  v29 = v276;
  v30 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v274 = inited;
  v31 = v277;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v270, v269, v25, v27, 0, 0, v28, v253 - v31);
  *(v20 + 64) = v275;
  *(v20 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("The file that was appended to", 29);
  v269 = v35;
  v270 = v34;
  *&v268 = sub_1CA94C438("The file that was appended to", 29);
  v37 = v36;
  v271 = v253;
  MEMORY[0x1EEE9AC00](v268);
  v38 = v279;
  sub_1CA948D98();
  v39 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v270, v269, v268, v37, 0, 0, v253 - v38, v253 - v31);
  v41 = v275;
  *(v20 + 104) = v275;
  *(v20 + 112) = @"DescriptionSummary";
  v42 = @"DescriptionSummary";
  v43 = sub_1CA94C438("Adds the text passed as input to the end of the specified text file.", 68);
  v269 = v44;
  v270 = v43;
  v45 = sub_1CA94C438("Adds the text passed as input to the end of the specified text file.", 68);
  v47 = v46;
  v271 = v253;
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948D98();
  v48 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v253 - v277;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v270, v269, v45, v47, 0, 0, v253 - v38, v49);
  *(v20 + 144) = v41;
  *(v20 + 120) = v51;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v52 = sub_1CA94C1E8();
  v53 = v272;
  v54 = sub_1CA6B3784(v52);
  v55 = v274;
  v274[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconColor";
  v55[20] = 1953392980;
  v55[21] = 0xE400000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"IconSymbol";
  v55[25] = 0x7070612E74786574;
  v55[26] = 0xEB00000000646E65;
  v55[28] = v56;
  v55[29] = @"IconSymbolColor";
  v55[30] = 1702194242;
  v55[31] = 0xE400000000000000;
  v55[33] = v56;
  v55[34] = @"Input";
  v57 = v56;
  v58 = v55;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v268 = xmmword_1CA981350;
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
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v267;
  *(v59 + 192) = &unk_1F4A0A6E8;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"IconSymbolColor";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v272 = v66;
  v58[35] = v65;
  v58[38] = v66;
  v58[39] = @"Name";
  v67 = @"Name";
  v269 = sub_1CA94C438("Append to Text File (Action Name)", 33);
  v69 = v68;
  v70 = sub_1CA94C438("Append to Text File", 19);
  v72 = v71;
  v270 = v253;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v253 - v279;
  sub_1CA948D98();
  v74 = v276;
  v75 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v253 - v277;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v269, v69, v70, v72, 0, 0, v73, v76);
  v79 = v274;
  v80 = v275;
  v274[40] = v78;
  v79[43] = v80;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v273;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438("Appended File (Default Output Name)", 35);
  v270 = v84;
  v271 = v83;
  v85 = sub_1CA94C438("Appended File", 13);
  v87 = v86;
  *&v273 = v253;
  MEMORY[0x1EEE9AC00](v85);
  v88 = v253 - v279;
  sub_1CA948D98();
  v89 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v253 - v277;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v271, v270, v85, v87, 0, 0, v88, v90);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  v92 = v267;
  *(v81 + 168) = v267;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A0A718;
  v93 = MEMORY[0x1E69E6158];
  v94 = sub_1CA94C1E8();
  v95 = v274;
  v274[45] = v94;
  v95[48] = v272;
  v95[49] = @"ParameterCollapsingBehavior";
  v95[50] = 0x726576654ELL;
  v95[51] = 0xE500000000000000;
  v95[53] = v93;
  v95[54] = @"Parameters";
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_1CA981560;
  *&v273 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981380;
  v265 = 0xD000000000000015;
  *(v96 + 32) = @"Class";
  *(v96 + 40) = 0xD000000000000015;
  *(v96 + 48) = 0x80000001CA99B1E0;
  *(v96 + 64) = v93;
  *(v96 + 72) = @"DefaultsToShortcutsFolder";
  *(v96 + 80) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v96 + 104) = MEMORY[0x1E69E6370];
  *(v96 + 112) = @"Optional";
  *(v96 + 120) = 0;
  *(v96 + 144) = v97;
  *(v96 + 152) = @"FilePickerSupportedTypes";
  *(v96 + 160) = &unk_1F4A0A748;
  *(v96 + 184) = v92;
  *(v96 + 192) = @"Key";
  *(v96 + 200) = 0x656C69464657;
  *(v96 + 208) = 0xE600000000000000;
  *(v96 + 224) = v93;
  *(v96 + 232) = @"Label";
  v98 = @"Class";
  v99 = @"Key";
  v100 = @"Label";
  v101 = v98;
  v102 = v99;
  v103 = v100;
  v259 = v101;
  v260 = v102;
  v264 = v103;
  v104 = @"ParameterCollapsingBehavior";
  v105 = @"Parameters";
  v106 = @"DefaultsToShortcutsFolder";
  v107 = @"Optional";
  v108 = @"FilePickerSupportedTypes";
  v109 = sub_1CA94C438("Folder (WFFile)", 15);
  v111 = v110;
  v112 = sub_1CA94C438("Folder", 6);
  v114 = v113;
  v270 = v253;
  MEMORY[0x1EEE9AC00](v112);
  v115 = v253 - v279;
  sub_1CA948D98();
  v116 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v253 - v277;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  *(v96 + 264) = v275;
  *(v96 + 240) = v119;
  _s3__C3KeyVMa_0(0);
  v270 = v120;
  v269 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  *(v272 + 32) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1CA9813E0;
  *(v123 + 32) = @"AutocapitalizationType";
  *(v123 + 40) = 1701736270;
  *(v123 + 48) = 0xE400000000000000;
  v124 = MEMORY[0x1E69E6158];
  v125 = v259;
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  v261 = 0xD000000000000014;
  v262 = 0x80000001CA99B500;
  *(v123 + 80) = 0xD000000000000014;
  *(v123 + 88) = 0x80000001CA99B500;
  *(v123 + 104) = v124;
  *(v123 + 112) = @"Description";
  v259 = v125;
  v126 = @"AutocapitalizationType";
  v127 = @"Description";
  v128 = sub_1CA94C438("The name or path of the file to retrieve. For example, if you are appending a file called “notes.txt” in a folder called “Public”, use “/Public/notes.txt”. (WFFilePath)", 180);
  v130 = v129;
  v131 = sub_1CA94C438("The name or path of the file to retrieve. For example, if you are appending a file called “notes.txt” in a folder called “Public”, use “/Public/notes.txt”.", 167);
  v133 = v132;
  v258 = v253;
  MEMORY[0x1EEE9AC00](v131);
  v134 = v253 - v279;
  sub_1CA948D98();
  v135 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = v253 - v277;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 120) = sub_1CA2F9F14(v128, v130, v131, v133, 0, 0, v134, v136);
  *(v123 + 144) = v275;
  *(v123 + 152) = @"DisableAutocorrection";
  *(v123 + 160) = 1;
  v138 = v260;
  *(v123 + 184) = MEMORY[0x1E69E6370];
  *(v123 + 192) = v138;
  *(v123 + 200) = 0x6150656C69464657;
  *(v123 + 208) = 0xEA00000000006874;
  v139 = MEMORY[0x1E69E6158];
  *(v123 + 224) = MEMORY[0x1E69E6158];
  *(v123 + 232) = @"KeyboardType";
  *(v123 + 240) = 0x6372616553626557;
  *(v123 + 248) = 0xE900000000000068;
  v140 = v264;
  *(v123 + 264) = v139;
  *(v123 + 272) = v140;
  v260 = v138;
  v264 = v140;
  v141 = @"DisableAutocorrection";
  v142 = @"KeyboardType";
  v143 = sub_1CA94C438("File Path (WFFilePath)", 22);
  v256 = v144;
  v257 = v143;
  v145 = sub_1CA94C438("File Path", 9);
  v147 = v146;
  v258 = v253;
  MEMORY[0x1EEE9AC00](v145);
  v148 = v279;
  sub_1CA948D98();
  v149 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  v150 = v253 - v277;
  sub_1CA948B68();

  v151 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 280) = sub_1CA2F9F14(v257, v256, v145, v147, 0, 0, v253 - v148, v150);
  v152 = v275;
  *(v123 + 304) = v275;
  *(v123 + 312) = @"Placeholder";
  v153 = @"Placeholder";
  v154 = sub_1CA94C438("example.txt (WFFilePath)", 24);
  v256 = v155;
  v257 = v154;
  v156 = sub_1CA94C438("example.txt", 11);
  v255 = v157;
  v258 = v253;
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948D98();
  v158 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = v277;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 320) = sub_1CA2F9F14(v257, v256, v156, v255, 0, 0, v253 - v148, v253 - v159);
  *(v123 + 344) = v152;
  *(v123 + 352) = @"TextAlignment";
  v161 = MEMORY[0x1E69E6158];
  *(v123 + 384) = MEMORY[0x1E69E6158];
  *(v123 + 360) = 1952867660;
  *(v123 + 368) = 0xE400000000000000;
  v162 = @"TextAlignment";
  v163 = sub_1CA94C1E8();
  v164 = sub_1CA2F864C(v163);
  *(v272 + 40) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1CA981370;
  v166 = v259;
  *(v165 + 32) = v259;
  *(v165 + 40) = 0xD000000000000016;
  *(v165 + 48) = 0x80000001CA99C4A0;
  *(v165 + 64) = v161;
  *(v165 + 72) = @"DefaultValue";
  *(v165 + 80) = 0x646E65707041;
  *(v165 + 88) = 0xE600000000000000;
  *(v165 + 104) = v161;
  *(v165 + 112) = @"Items";
  v258 = swift_allocObject();
  *(v258 + 1) = xmmword_1CA981360;
  v167 = @"DefaultValue";
  v266 = v166;
  v259 = v167;
  v168 = @"Items";
  v169 = sub_1CA94C438("Append (WFAppendFileWriteMode)", 30);
  v255 = v170;
  v256 = v169;
  v171 = sub_1CA94C438("Append", 6);
  v254 = v172;
  v257 = v253;
  MEMORY[0x1EEE9AC00](v171);
  v173 = v279;
  sub_1CA948D98();
  v174 = v276;
  v175 = [v276 bundleURL];
  v253[1] = v253;
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v256, v255, v171, v254, 0, 0, v253 - v173, v253 - v159);
  v178 = v258;
  v258[4] = v177;
  v179 = sub_1CA94C438("Prepend (WFAppendFileWriteMode)", 31);
  v255 = v180;
  v256 = v179;
  v254 = sub_1CA94C438("Prepend", 7);
  v182 = v181;
  v257 = v253;
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948D98();
  v183 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v178 + 40) = sub_1CA2F9F14(v256, v255, v254, v182, 0, 0, v253 - v173, v253 - v159);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v165 + 120) = v178;
  v186 = v260;
  *(v165 + 144) = v185;
  *(v165 + 152) = v186;
  v187 = v264;
  *(v165 + 160) = v265;
  *(v165 + 168) = 0x80000001CA9C3D00;
  *(v165 + 184) = MEMORY[0x1E69E6158];
  *(v165 + 192) = v187;
  v265 = v186;
  v264 = v187;
  v188 = sub_1CA94C438("Mode (WFAppendFileWriteMode)", 28);
  v258 = v189;
  v190 = sub_1CA94C438("Mode", 4);
  v192 = v191;
  v260 = v253;
  MEMORY[0x1EEE9AC00](v190);
  v193 = v253 - v279;
  sub_1CA948D98();
  v194 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v253 - v277;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v188, v258, v190, v192, 0, 0, v193, v195);
  *(v165 + 224) = v275;
  *(v165 + 200) = v197;
  v198 = sub_1CA94C1E8();
  v199 = sub_1CA2F864C(v198);
  *(v272 + 48) = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = v268;
  *(v200 + 32) = v266;
  *(v200 + 40) = 0xD000000000000011;
  *(v200 + 48) = 0x80000001CA99E620;
  v201 = MEMORY[0x1E69E6158];
  v202 = v259;
  *(v200 + 64) = MEMORY[0x1E69E6158];
  *(v200 + 72) = v202;
  *(v200 + 80) = 1;
  v203 = v265;
  *(v200 + 104) = MEMORY[0x1E69E6370];
  *(v200 + 112) = v203;
  *(v200 + 120) = 0xD000000000000011;
  *(v200 + 128) = 0x80000001CA9C3D40;
  v204 = v264;
  *(v200 + 144) = v201;
  *(v200 + 152) = v204;
  v205 = sub_1CA94C438("Make New Line (WFAppendOnNewLine)", 33);
  v258 = v206;
  v259 = v205;
  v207 = sub_1CA94C438("Make New Line", 13);
  v257 = v208;
  v260 = v253;
  MEMORY[0x1EEE9AC00](v207);
  v209 = v253 - v279;
  sub_1CA948D98();
  v210 = v276;
  v211 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = v277;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v259, v258, v207, v257, 0, 0, v209, v253 - v212);
  *(v200 + 184) = v275;
  *(v200 + 160) = v214;
  v215 = sub_1CA94C1E8();
  v216 = sub_1CA2F864C(v215);
  *(v272 + 56) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v268;
  v219 = v261;
  v218 = v262;
  *(v217 + 32) = v266;
  *(v217 + 40) = v219;
  *(v217 + 48) = v218;
  v220 = MEMORY[0x1E69E6158];
  v221 = v265;
  *(v217 + 64) = MEMORY[0x1E69E6158];
  *(v217 + 72) = v221;
  *(v217 + 80) = 0x7475706E494657;
  *(v217 + 88) = 0xE700000000000000;
  v222 = v264;
  *(v217 + 104) = v220;
  *(v217 + 112) = v222;
  *&v268 = sub_1CA94C438("Text (WFInput)", 14);
  v266 = v223;
  v224 = sub_1CA94C438("Text", 4);
  v226 = v225;
  v271 = v253;
  MEMORY[0x1EEE9AC00](v224);
  v227 = v253 - v279;
  sub_1CA948D98();
  v228 = [v210 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v217 + 120) = sub_1CA2F9F14(v268, v266, v224, v226, 0, 0, v227, v253 - v212);
  *(v217 + 144) = v275;
  *(v217 + 152) = @"Multiline";
  *(v217 + 184) = MEMORY[0x1E69E6370];
  *(v217 + 160) = 1;
  v230 = @"Multiline";
  v231 = sub_1CA94C1E8();
  v232 = sub_1CA2F864C(v231);
  v233 = v272;
  *(v272 + 64) = v232;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v235 = v274;
  v274[55] = v233;
  v235[58] = v234;
  v235[59] = @"ParameterSummary";
  v236 = @"ParameterSummary";
  v237 = sub_1CA94C438("${WFAppendFileWriteMode} ${WFInput} to ${WFFile} (Parameter Summary)", 68);
  v239 = v238;
  v240 = sub_1CA94C438("${WFAppendFileWriteMode} ${WFInput} to ${WFFile}", 48);
  v242 = v241;
  MEMORY[0x1EEE9AC00](v240);
  v243 = v253 - v279;
  sub_1CA948D98();
  v244 = [v276 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = v253 - v277;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v247 = sub_1CA2F9F14(v237, v239, v240, v242, 0, 0, v243, v245);
  v248 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v249 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v250 = v274;
  v274[60] = v248;
  v250[63] = v249;
  v250[64] = @"RemoteExecuteOnPlatforms";
  v250[68] = v267;
  v250[65] = &unk_1F4A0A778;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v251 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA642B34()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("link|web|site|detect|scan", 25);
  v6 = v5;
  v7 = sub_1CA94C438("link|web|site|detect|scan", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v11;
  v12 = v110 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v123 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v110 - v119;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v118;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000010;
  *(inited + 128) = 0x80000001CA9934F0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Returns any links found in the output from the previous action.", 63);
  v114 = v23;
  v24 = sub_1CA94C438("Returns any links found in the output from the previous action.", 63);
  v26 = v25;
  v115 = v110;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v110 - v121;
  sub_1CA948D98();
  v28 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = v110 - v119;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v114, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v118;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v117;
  *(inited + 160) = sub_1CA6B3784(v32);
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 1802398060;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v34;
  *(inited + 312) = @"Input";
  v35 = v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v117 = xmmword_1CA981350;
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
  *(v36 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v115;
  *(v36 + 192) = &unk_1F4A0A7A8;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v43;
  *(inited + 320) = v42;
  *(inited + 344) = v43;
  *(inited + 352) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438("Get URLs from Input (Action Name)", 33);
  v111 = v46;
  v47 = sub_1CA94C438("Get URLs from Input", 19);
  v49 = v48;
  v112 = v110;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v110 - v121;
  sub_1CA948D98();
  v51 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v110 - v119;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v111, v47, v49, 0, 0, v50, v52);
  v54 = v118;
  *(inited + 384) = v118;
  *(inited + 392) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v117;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("URLs (Default Output Name)", 26);
  v111 = v58;
  v112 = v57;
  v59 = sub_1CA94C438("URLs", 4);
  v61 = v60;
  v113 = v110;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v110 - v121;
  sub_1CA948D98();
  v63 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v110 - v119;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v112, v111, v59, v61, 0, 0, v62, v64);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v115;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0A7D8;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v114;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v117;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000014;
  *(v67 + 48) = 0x80000001CA99B500;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E494657;
  *(v67 + 88) = 0xE700000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v73;
  v113 = v72;
  v74 = sub_1CA94C438("Input", 5);
  v111 = v75;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v121;
  sub_1CA948D98();
  v77 = v120;
  v78 = [v120 bundleURL];
  v110[1] = v110;
  MEMORY[0x1EEE9AC00](v78);
  v79 = v119;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v113, v112, v74, v111, 0, 0, v110 - v76, v110 - v79);
  v81 = v118;
  *(v67 + 144) = v118;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v84;
  v113 = v83;
  v111 = sub_1CA94C438("Input", 5);
  v86 = v85;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v111);
  v87 = v110 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v113, v112, v111, v86, 0, 0, v87, v110 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  v93 = v115;
  v115[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v93;
  *(inited + 464) = v94;
  *(inited + 472) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("Get URLs from ${WFInput} (Parameter Summary)", 44);
  v98 = v97;
  v99 = sub_1CA94C438("Get URLs from ${WFInput}", 24);
  v101 = v100;
  v118 = v110;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v110 - v121;
  sub_1CA948D98();
  v103 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v110 - v79);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v106;
  *(inited + 504) = v107;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA643A8C()
{
  v263 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9D9380;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v269 = inited;
  v274 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v275 = sub_1CA94C438("Creates a new card on the specified list and board in your Trello account.", 74);
  v10 = v9;
  v11 = sub_1CA94C438("Creates a new card on the specified list and board in your Trello account.", 74);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v280 = v15;
  v278 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v255 - v278;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v277 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v276 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v279 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v255 - v279;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v275, v10, v11, v13, 0, 0, v16, v21);
  v275 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v275;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v24 = sub_1CA94C1E8();
  v25 = v274;
  v26 = sub_1CA6B3784(v24);
  v27 = v269;
  v269[15] = v26;
  v27[18] = v25;
  v27[19] = @"Name";
  v28 = @"Name";
  v29 = sub_1CA94C438("Add Trello Card (Action Name)", 29);
  v31 = v30;
  v32 = sub_1CA94C438("Add Trello Card", 15);
  v34 = v33;
  v274 = &v255;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v255 - v278;
  sub_1CA948D98();
  v36 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v255 - v279;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v29, v31, v32, v34, 0, 0, v35, v37);
  v40 = v275;
  v27[20] = v39;
  v27[23] = v40;
  v27[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v268 = xmmword_1CA9813C0;
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 0;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x614E74757074754FLL;
  *(v41 + 88) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v44 = sub_1CA94C438("Trello Card (Default Output Name)", 33);
  v272 = v45;
  v273 = v44;
  v46 = sub_1CA94C438("Trello Card", 11);
  v48 = v47;
  v274 = &v255;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v255 - v278;
  sub_1CA948D98();
  v50 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v255 - v279;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 96) = sub_1CA2F9F14(v273, v272, v46, v48, 0, 0, v49, v51);
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x7365707954;
  *(v41 + 136) = 0xE500000000000000;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v262;
  *(v41 + 144) = &unk_1F4A0A888;
  v53 = MEMORY[0x1E69E6158];
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[25] = v54;
  v27[28] = v55;
  v27[29] = @"Parameters";
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v274 = swift_allocObject();
  *(v274 + 1) = xmmword_1CA98B2D0;
  v273 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  v265 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  v261 = 0x80000001CA99B500;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v53;
  *(v56 + 72) = @"Key";
  strcpy((v56 + 80), "WFTrelloName");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 104) = v53;
  *(v56 + 112) = @"Label";
  v57 = @"Class";
  v58 = @"Key";
  v59 = @"Label";
  v60 = v57;
  v61 = v58;
  v62 = v59;
  v260 = v60;
  v259 = v61;
  v264 = v62;
  v63 = @"Parameters";
  v64 = sub_1CA94C438("Item (WFTrelloName)", 19);
  v66 = v65;
  v67 = sub_1CA94C438("Item", 4);
  v69 = v68;
  v271 = &v255;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v255 - v278;
  sub_1CA948D98();
  v71 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v255 - v279;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v64, v66, v67, v69, 0, 0, v70, v72);
  *(v56 + 144) = v275;
  *(v56 + 152) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v56 + 184) = MEMORY[0x1E69E6158];
  *(v56 + 160) = 0x7468676952;
  *(v56 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v271 = v75;
  v270 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  *&v267 = @"TextAlignment";
  v76 = sub_1CA94C1E8();
  v77 = sub_1CA2F864C(v76);
  v274[4] = v77;
  v78 = swift_initStackObject();
  *(v78 + 16) = v268;
  v80 = v259;
  v79 = v260;
  *(v78 + 32) = v260;
  *(v78 + 40) = 0xD00000000000001CLL;
  *(v78 + 48) = 0x80000001CA9A0130;
  *(v78 + 64) = v74;
  *(v78 + 72) = v80;
  strcpy((v78 + 80), "WFTrelloBoard");
  *(v78 + 94) = -4864;
  v81 = v264;
  *(v78 + 104) = v74;
  *(v78 + 112) = v81;
  v258 = v79;
  v260 = v80;
  *&v268 = v81;
  v82 = sub_1CA94C438("Board (WFTrelloBoard)", 21);
  v84 = v83;
  v85 = sub_1CA94C438("Board", 5);
  v87 = v86;
  v264 = &v255;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v255 - v278;
  sub_1CA948D98();
  v89 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v255 - v279;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  *(v78 + 144) = v275;
  *(v78 + 120) = v92;
  v93 = sub_1CA94C1E8();
  v94 = sub_1CA2F864C(v93);
  v274[5] = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = v265;
  *(v95 + 32) = sub_1CA94C368();
  strcpy((v95 + 40), "WFTrelloBoard");
  *(v95 + 54) = -4864;
  v96 = MEMORY[0x1E69E6158];
  v97 = v258;
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = v97;
  *(v95 + 80) = 0xD00000000000001BLL;
  *(v95 + 88) = 0x80000001CA9D1E80;
  v98 = v260;
  *(v95 + 104) = v96;
  *(v95 + 112) = v98;
  strcpy((v95 + 120), "WFTrelloList");
  *(v95 + 133) = 0;
  *(v95 + 134) = -5120;
  v99 = v268;
  *(v95 + 144) = v96;
  *(v95 + 152) = v99;
  *&v265 = v97;
  v264 = v98;
  *&v268 = v99;
  v100 = sub_1CA94C438("List (WFTrelloList)", 19);
  v102 = v101;
  v103 = sub_1CA94C438("List", 4);
  v105 = v104;
  v260 = &v255;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v255 - v278;
  sub_1CA948D98();
  v107 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v255 - v279;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  *(v95 + 184) = v275;
  *(v95 + 160) = v110;
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v274[6] = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1CA981380;
  v115 = v264;
  v114 = v265;
  *(v113 + 32) = v265;
  *(v113 + 40) = 0xD000000000000014;
  *(v113 + 48) = 0x80000001CA9AB710;
  v116 = MEMORY[0x1E69E6158];
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = v115;
  *(v113 + 80) = 0x6F6C6C6572544657;
  *(v113 + 88) = 0xEF65746144657544;
  v117 = v268;
  *(v113 + 104) = v116;
  *(v113 + 112) = v117;
  v259 = v114;
  v264 = v115;
  v260 = v117;
  *&v265 = sub_1CA94C438("Due (WFTrelloDueDate)", 21);
  v258 = v118;
  v119 = sub_1CA94C438("Due", 3);
  v121 = v120;
  *&v268 = &v255;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v255 - v278;
  sub_1CA948D98();
  v123 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v279;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 120) = sub_1CA2F9F14(v265, v258, v119, v121, 0, 0, v122, &v255 - v124);
  v126 = v275;
  *(v113 + 144) = v275;
  *(v113 + 152) = @"Placeholder";
  *&v268 = @"Placeholder";
  v127 = sub_1CA94C438("Tomorrow at 1pm (WFTrelloDueDate)", 33);
  v257 = v128;
  v258 = v127;
  v129 = sub_1CA94C438("Tomorrow at 1pm", 15);
  v256 = v130;
  *&v265 = &v255;
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v255 - v278;
  sub_1CA948D98();
  v132 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 160) = sub_1CA2F9F14(v258, v257, v129, v256, 0, 0, v131, &v255 - v124);
  *(v113 + 184) = v126;
  *(v113 + 192) = @"ResultType";
  *(v113 + 200) = 0x676E69727453;
  *(v113 + 208) = 0xE600000000000000;
  v134 = MEMORY[0x1E69E6158];
  v135 = v267;
  *(v113 + 224) = MEMORY[0x1E69E6158];
  *(v113 + 232) = v135;
  *(v113 + 264) = v134;
  v136 = v134;
  *(v113 + 240) = 0x7468676952;
  *(v113 + 248) = 0xE500000000000000;
  v137 = @"ResultType";
  v138 = sub_1CA94C1E8();
  v139 = sub_1CA2F864C(v138);
  v274[7] = v139;
  v140 = swift_allocObject();
  v267 = xmmword_1CA981370;
  *(v140 + 16) = xmmword_1CA981370;
  v141 = v259;
  *(v140 + 32) = v259;
  *(v140 + 40) = 0xD000000000000016;
  *(v140 + 48) = 0x80000001CA99C4A0;
  *(v140 + 64) = v136;
  *(v140 + 72) = @"DefaultValue";
  *(v140 + 80) = 7368532;
  *(v140 + 88) = 0xE300000000000000;
  *(v140 + 104) = v136;
  *(v140 + 112) = @"Items";
  *&v265 = swift_allocObject();
  *(v265 + 16) = xmmword_1CA981360;
  v266 = v141;
  v142 = @"DefaultValue";
  v143 = @"Items";
  v144 = sub_1CA94C438("Top (WFTrelloCardPosition)", 26);
  v257 = v145;
  v258 = v144;
  v146 = sub_1CA94C438("Top", 3);
  v256 = v147;
  v259 = &v255;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v278;
  sub_1CA948D98();
  v149 = v277;
  v150 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v255 - v279;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v258, v257, v146, v256, 0, 0, &v255 - v148, v151);
  *(v265 + 32) = v153;
  v154 = sub_1CA94C438("Bottom (WFTrelloCardPosition)", 29);
  v257 = v155;
  v258 = v154;
  v156 = sub_1CA94C438("Bottom", 6);
  v256 = v157;
  v259 = &v255;
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v255 - v148;
  sub_1CA948D98();
  v159 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = v279;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v258, v257, v156, v256, 0, 0, v158, &v255 - v160);
  v163 = v265;
  *(v265 + 40) = v162;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v140 + 120) = v163;
  v165 = v264;
  *(v140 + 144) = v164;
  *(v140 + 152) = v165;
  *(v140 + 160) = 0xD000000000000014;
  *(v140 + 168) = 0x80000001CA9D9510;
  v166 = v260;
  *(v140 + 184) = MEMORY[0x1E69E6158];
  *(v140 + 192) = v166;
  v264 = v165;
  *&v265 = v166;
  v167 = sub_1CA94C438("Position (WFTrelloCardPosition)", 31);
  v259 = v168;
  v169 = sub_1CA94C438("Position", 8);
  v171 = v170;
  v260 = &v255;
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v255 - v278;
  sub_1CA948D98();
  v173 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v167, v259, v169, v171, 0, 0, v172, &v255 - v160);
  *(v140 + 224) = v275;
  *(v140 + 200) = v175;
  v176 = sub_1CA94C1E8();
  v177 = sub_1CA2F864C(v176);
  v274[8] = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = v267;
  *(v178 + 32) = v266;
  *(v178 + 40) = 0xD000000000000019;
  *(v178 + 48) = 0x80000001CA99B030;
  *(v178 + 64) = MEMORY[0x1E69E6158];
  *(v178 + 72) = @"Description";
  v179 = @"Description";
  v180 = sub_1CA94C438("A list of items to be attached to the new card as files. (WFTrelloAttachments)", 78);
  v258 = v181;
  v259 = v180;
  v182 = sub_1CA94C438("A list of items to be attached to the new card as files.", 56);
  v257 = v183;
  v260 = &v255;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v278;
  sub_1CA948D98();
  v185 = v277;
  v186 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v255 - v279;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v178 + 80) = sub_1CA2F9F14(v259, v258, v182, v257, 0, 0, &v255 - v184, v187);
  v189 = v264;
  *(v178 + 104) = v275;
  *(v178 + 112) = v189;
  v260 = 0xD000000000000013;
  *(v178 + 120) = 0xD000000000000013;
  *(v178 + 128) = 0x80000001CA9D95F0;
  v190 = v265;
  *(v178 + 144) = MEMORY[0x1E69E6158];
  *(v178 + 152) = v190;
  v191 = sub_1CA94C438("Attachments (WFTrelloAttachments)", 33);
  v257 = v192;
  v258 = v191;
  v256 = sub_1CA94C438("Attachments", 11);
  v194 = v193;
  v259 = &v255;
  MEMORY[0x1EEE9AC00](v256);
  sub_1CA948D98();
  v195 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  v196 = v279;
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v178 + 160) = sub_1CA2F9F14(v258, v257, v256, v194, 0, 0, &v255 - v184, &v255 - v196);
  v198 = v275;
  v199 = v268;
  *(v178 + 184) = v275;
  *(v178 + 192) = v199;
  v200 = sub_1CA94C438("Choose Variable (WFTrelloAttachments)", 37);
  v257 = v201;
  v258 = v200;
  v202 = sub_1CA94C438("Choose Variable", 15);
  v256 = v203;
  v259 = &v255;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v278;
  sub_1CA948D98();
  v205 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v258, v257, v202, v256, 0, 0, &v255 - v204, &v255 - v196);
  *(v178 + 224) = v198;
  *(v178 + 200) = v207;
  v208 = sub_1CA94C1E8();
  v209 = sub_1CA2F864C(v208);
  v274[9] = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = v267;
  *(v210 + 32) = v266;
  *(v210 + 40) = 0xD000000000000014;
  v211 = v260;
  *(v210 + 48) = v261;
  v212 = MEMORY[0x1E69E6158];
  v213 = v264;
  *(v210 + 64) = MEMORY[0x1E69E6158];
  *(v210 + 72) = v213;
  *(v210 + 80) = v211;
  *(v210 + 88) = 0x80000001CA9CCF00;
  v214 = v265;
  *(v210 + 104) = v212;
  *(v210 + 112) = v214;
  v215 = sub_1CA94C438("Description (WFTrelloDescription)", 33);
  v266 = v216;
  *&v267 = v215;
  v217 = sub_1CA94C438("Description", 11);
  *&v265 = v218;
  v272 = &v255;
  MEMORY[0x1EEE9AC00](v217);
  sub_1CA948D98();
  v219 = v277;
  v220 = [v277 bundleURL];
  v264 = &v255;
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v255 - v279;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 120) = sub_1CA2F9F14(v267, v266, v217, v265, 0, 0, &v255 - v204, v221);
  *(v210 + 144) = v275;
  *(v210 + 152) = @"Multiline";
  *(v210 + 160) = 1;
  v223 = v268;
  *(v210 + 184) = MEMORY[0x1E69E6370];
  *(v210 + 192) = v223;
  v224 = @"Multiline";
  *&v268 = sub_1CA94C438("Description (WFTrelloDescription)", 33);
  *&v267 = v225;
  v226 = sub_1CA94C438("Description", 11);
  v228 = v227;
  v272 = &v255;
  MEMORY[0x1EEE9AC00](v226);
  sub_1CA948D98();
  v229 = [v219 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v255 - v279;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v232 = sub_1CA2F9F14(v268, v267, v226, v228, 0, 0, &v255 - v204, v230);
  *(v210 + 224) = v275;
  *(v210 + 200) = v232;
  v233 = sub_1CA94C1E8();
  v234 = sub_1CA2F864C(v233);
  v235 = v274;
  v274[10] = v234;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v237 = v269;
  v269[30] = v235;
  v237[33] = v236;
  v237[34] = @"ParameterSummary";
  v238 = @"ParameterSummary";
  v239 = sub_1CA94C438("Add ${WFTrelloName} to the ${WFTrelloCardPosition} of ${WFTrelloList} in ${WFTrelloBoard} (Parameter Summary)", 109);
  v241 = v240;
  v242 = sub_1CA94C438("Add ${WFTrelloName} to the ${WFTrelloCardPosition} of ${WFTrelloList} in ${WFTrelloBoard}", 89);
  v244 = v243;
  MEMORY[0x1EEE9AC00](v242);
  v245 = &v255 - v278;
  sub_1CA948D98();
  v246 = [v277 bundleURL];
  MEMORY[0x1EEE9AC00](v246);
  v247 = &v255 - v279;
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v249 = sub_1CA2F9F14(v239, v241, v242, v244, 0, 0, v245, v247);
  v250 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v251 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v252 = v269;
  v269[35] = v250;
  v252[38] = v251;
  v252[39] = @"RequiredResources";
  v252[43] = v262;
  v252[40] = &unk_1F4A0A8B8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v253 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA64580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    v5 = sub_1CA948A48();
    v6 = a2;
    v7 = 1;
    return __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
  }

  if (sub_1CA323E28())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = sub_1CA94C3F8();
      v22 = v4;
      v23 = v3;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v22 = 0;
  v23 = 0;
LABEL_8:
  if (sub_1CA323E28())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = sub_1CA94C3F8();
      v20 = v9;
      v21 = v8;
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  v20 = 0;
  v21 = 0;
LABEL_13:
  if (!sub_1CA323E28())
  {
LABEL_17:
    v18 = 0;
    v19 = 0;
    goto LABEL_18;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v10 = sub_1CA94C3F8();
  v18 = v11;
  v19 = v10;
LABEL_18:
  if (sub_1CA323E28())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (sub_1CA323E28())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = sub_1CA323E28();

  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - v14;
  v16 = sub_1CA948A48();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_1CA948A08();
  v6 = a2;
  v7 = 0;
  v5 = v16;
  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

id sub_1CA645BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  swift_getObjCClassMetadata();
  v6 = swift_unknownObjectRetain();
  sub_1CA64580C(v6, v5);
  swift_unknownObjectRelease();
  v7 = sub_1CA948A48();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_1CA948A18();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

uint64_t static NSPersonNameComponents.personNameComponents(with:)(uint64_t a1)
{
  v2 = sub_1CA948A48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  sub_1CA64580C(a1, v19 - v8);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_1CA64603C(v9);
    return 0;
  }

  else
  {
    v11 = *(v3 + 32);
    v11(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v2);
    v22 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
    if (swift_dynamicCast())
    {
      v12 = sub_1CA323E28();

      if (v12)
      {
        v21 = v19;
        v14 = MEMORY[0x1EEE9AC00](v13);
        v20 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19[1] = v19;
        MEMORY[0x1EEE9AC00](v14);
        v15 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_1CA64580C(v12, v19 - v15);
        if (__swift_getEnumTagSinglePayload(v19 - v15, 1, v2) == 1)
        {
          swift_unknownObjectRelease();
          sub_1CA64603C(v19 - v15);
        }

        else
        {
          v16 = (v11)(v20, v19 - v15, v2);
          MEMORY[0x1EEE9AC00](v16);
          v17 = v20;
          (*(v3 + 16))(v19 - v15, v20, v2);
          __swift_storeEnumTagSinglePayload(v19 - v15, 0, 1, v2);
          sub_1CA948A28();
          swift_unknownObjectRelease();
          (*(v3 + 8))(v17, v2);
        }
      }
    }

    v10 = sub_1CA948A18();
    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t sub_1CA64603C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6460A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjCClassMetadata();
  v3 = swift_unknownObjectRetain();
  v4 = static NSPersonNameComponents.personNameComponents(with:)(v3);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1CA6460F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  sub_1CA36D2C4(a1, &selRef_namePrefix);
  if (v3)
  {
    v4 = sub_1CA94C368();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v4, 0x66657250656D616ELL, 0xEA00000000007869, isUniquelyReferenced_nonNull_native, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_givenName);
  if (v6)
  {
    v7 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v7, 0x6D614E6E65766967, 0xE900000000000065, v8, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_middleName);
  if (v9)
  {
    v10 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v10, 0x614E656C6464696DLL, 0xEA0000000000656DLL, v11, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_familyName);
  if (v12)
  {
    v13 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v13, 0x614E796C696D6166, 0xEA0000000000656DLL, v14, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_nameSuffix);
  if (v15)
  {
    v16 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v16, 0x66667553656D616ELL, 0xEA00000000007869, v17, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_nickname);
  if (v18)
  {
    v19 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v19, 0x656D616E6B63696ELL, 0xE800000000000000, v20, &v22);

    return v22;
  }

  return v2;
}

id sub_1CA6463E8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_1CA6460F8(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v5 = sub_1CA94C1A8();

  return v5;
}

id sub_1CA646474(void *a1)
{
  v1 = a1;
  v2 = NSPersonNameComponents.serializedRepresentation.getter();

  return v2;
}

uint64_t NSPersonNameComponents.serializedRepresentation.getter()
{
  swift_getObjectType();
  v1 = sub_1CA6460F8(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = [v0 phoneticRepresentation];
  if (MEMORY[0x1EEE9AC00](v5))
  {
    sub_1CA948A38();

    v6 = sub_1CA948A48();
    v7 = 0;
  }

  else
  {
    v6 = sub_1CA948A48();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(&v14 - v4, v7, 1, v6);
  sub_1CA646728(&v14 - v4, &v14 - v4);
  sub_1CA948A48();
  if (__swift_getEnumTagSinglePayload(&v14 - v4, 1, v6) == 1)
  {
    sub_1CA64603C(&v14 - v4);
  }

  else
  {
    v8 = sub_1CA948A18();
    (*(*(v6 - 8) + 8))(&v14 - v4, v6);
    sub_1CA6460F8(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();

    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1;
    sub_1CA32EA0C(v10, 0xD000000000000016, 0x80000001CA9D9740, isUniquelyReferenced_nonNull_native, &v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v12 = sub_1CA94C1A8();

  return v12;
}

uint64_t sub_1CA646728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Library.performShortcutQuery(query:)(void *a1)
{
  v2 = v1;
  v122 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112 - v8;
  if ([a1 resultsLimit] >= 1)
  {
    [a1 resultsLimit];
  }

  switch([a1 location])
  {
    case 0uLL:
      OUTLINED_FUNCTION_8_32();
      v10 = OBJC_IVAR___WFLibrary_capsule;
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      (*(v6 + 16))(v9, &v2[v10], v4);
      sub_1CA2D85D8();
      v12 = v11;
      v13 = OUTLINED_FUNCTION_3_54();
      v14(v13);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v16 = OUTLINED_FUNCTION_10_32(v15);
      *(v16 + 16) = xmmword_1CA981310;
      *(v16 + 32) = sub_1CA94C3A8();
      *(v16 + 40) = v17;
      v18 = [v2 folders];
      sub_1CA27E37C();
      v19 = sub_1CA94C658();

      v20 = sub_1CA25B410(v19);
      v113 = v12;
      if (!v20)
      {

        v27 = MEMORY[0x1E69E7CC0];
LABEL_39:
        v117[0] = v16;
        sub_1CA2B7FF4(v27);
        v93 = v117[0];
        v55 = v113;
        goto LABEL_59;
      }

      v25 = v20;
      v112 = v16;
      v117[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v20 & ~(v20 >> 63), 0, v21, v22, v23, v24);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v27 = v117[0];
        v115 = v19 & 0xC000000000000001;
        v28 = v19;
        do
        {
          if (v115)
          {
            v29 = MEMORY[0x1CCAA22D0](v26, v19);
          }

          else
          {
            v29 = *(v19 + 8 * v26 + 32);
          }

          v30 = v29;
          v31 = [v30 identifier];
          v32 = sub_1CA94C3A8();
          v34 = v33;

          v117[0] = v27;
          v40 = v27[2];
          v39 = v27[3];
          if (v40 >= v39 >> 1)
          {
            sub_1CA271524(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
            v27 = v117[0];
          }

          ++v26;
          v27[2] = v40 + 1;
          v41 = &v27[2 * v40];
          v41[4] = v32;
          v41[5] = v34;
          v19 = v28;
        }

        while (v25 != v26);

        v16 = v112;
        goto LABEL_39;
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      swift_unknownObjectRelease_n();
LABEL_26:
      v86 = OUTLINED_FUNCTION_4_52();
      sub_1CA42B0C8(v86, v87, v88, v4);
      v55 = v89;
LABEL_33:
      swift_unknownObjectRelease();
LABEL_34:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v93 = OUTLINED_FUNCTION_10_32(v92);
      v93[1] = xmmword_1CA981310;
      *(v93 + 4) = sub_1CA94C3A8();
      *(v93 + 5) = v94;
      goto LABEL_59;
    case 1uLL:
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      v79 = OUTLINED_FUNCTION_5_47();
      v80(v79);
      sub_1CA94C3A8();
      sub_1CA2D776C();
      v82 = v81;

      v83 = OUTLINED_FUNCTION_3_54();
      v84(v83);
      v116 = v82;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      OUTLINED_FUNCTION_7_40();
      sub_1CA94CA08();

      v85 = v120;
      v4 = v121;
      if ((v121 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v90 = swift_dynamicCastClass();
      if (!v90)
      {
        swift_unknownObjectRelease();
        v90 = MEMORY[0x1E69E7CC0];
      }

      v91 = *(v90 + 16);

      if (__OFSUB__(v4 >> 1, v85))
      {
        goto LABEL_61;
      }

      if (v91 != (v4 >> 1) - v85)
      {
        goto LABEL_62;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      if (v55)
      {
        goto LABEL_34;
      }

      v55 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    case 2uLL:
      v42 = [a1 workflowType];
      if (!v42)
      {
        v95 = 0x80000001CA9D97F0;
        v96 = sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127(&type metadata for LibraryError, v96);
        v98 = 0xD000000000000039;
        goto LABEL_37;
      }

      v43 = v42;
      v44 = WFWorkflowCollectionIdentifierForWorkflowType(v42);
      if (!v44)
      {
        v118 = 0;
        v119 = 0xE000000000000000;
        sub_1CA94D408();
        MEMORY[0x1CCAA1300](0xD000000000000030, 0x80000001CA9D9830);
        v117[0] = v43;
        type metadata accessor for WFWorkflowTypeName(0);
        sub_1CA94D578();
        v100 = v118;
        v101 = v119;
        v102 = sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127(&type metadata for LibraryError, v102);
        *v103 = v100;
        *(v103 + 8) = v101;
        *(v103 + 16) = 0;
        swift_willThrow();

        return;
      }

      v45 = v44;
      OUTLINED_FUNCTION_8_32();
      v48 = v46 != v47;
      LODWORD(v115) = v48;
      v49 = sub_1CA94C3A8();
      v51 = v50;

      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      v52 = OUTLINED_FUNCTION_5_47();
      v53(v52);
      v112 = v51;
      v113 = v49;
      sub_1CA2D7330();
      v55 = v54;
      v56 = OUTLINED_FUNCTION_3_54();
      v57(v56);
      v116 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      OUTLINED_FUNCTION_7_40();
      sub_1CA94CA08();

      v58 = v120;
      v59 = v121;
      if ((v121 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v105 = swift_dynamicCastClass();
      if (!v105)
      {
        swift_unknownObjectRelease();
        v105 = MEMORY[0x1E69E7CC0];
      }

      v106 = *(v105 + 16);

      if (__OFSUB__(v59 >> 1, v58))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v106 != (v59 >> 1) - v58)
      {
        goto LABEL_65;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      v65 = v112;
      v64 = v113;
      if (!v55)
      {
        v55 = MEMORY[0x1E69E7CC0];
        goto LABEL_49;
      }

      goto LABEL_50;
    case 3uLL:
      v66 = sub_1CA27F608(a1);
      if (!v67)
      {
        v95 = 0x80000001CA9D97B0;
        v99 = sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127(&type metadata for LibraryError, v99);
        v98 = 0xD000000000000034;
LABEL_37:
        *v97 = v98;
        *(v97 + 8) = v95;
        *(v97 + 16) = 0;
        goto LABEL_42;
      }

      v59 = v66;
      v43 = v67;
      v68 = sub_1CA94C368();
      v117[0] = 0;
      v69 = [v2 shortcutsInFolderWithIdentifier:v68 error:v117];

      v70 = v117[0];
      if (!v69)
      {
        v104 = v117[0];

        sub_1CA948AD8();

LABEL_42:
        swift_willThrow();
        return;
      }

      OUTLINED_FUNCTION_8_32();
      v71 = sub_1CA94C658();
      v72 = v70;

      v117[0] = v71;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      sub_1CA94CA08();

      v73 = v120;
      v74 = v121;
      if ((v121 & 1) == 0)
      {
LABEL_24:
        v75 = OUTLINED_FUNCTION_4_52();
        sub_1CA42B0C8(v75, v76, v77, v74);
        v55 = v78;
LABEL_57:
        swift_unknownObjectRelease();
        goto LABEL_58;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v108 = swift_dynamicCastClass();
      if (!v108)
      {
        swift_unknownObjectRelease();
        v108 = MEMORY[0x1E69E7CC0];
      }

      v109 = *(v108 + 16);

      if (__OFSUB__(v74 >> 1, v73))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        swift_unknownObjectRelease_n();
LABEL_20:
        v60 = OUTLINED_FUNCTION_4_52();
        sub_1CA42B0C8(v60, v61, v62, v59);
        v55 = v63;
        v65 = v112;
        v64 = v113;
LABEL_49:
        swift_unknownObjectRelease();
LABEL_50:
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
        v93 = OUTLINED_FUNCTION_10_32(v107);
        v93[1] = xmmword_1CA981310;
        *(v93 + 4) = v64;
        *(v93 + 5) = v65;

        goto LABEL_59;
      }

      if (v109 != (v74 >> 1) - v73)
      {
        swift_unknownObjectRelease_n();
        goto LABEL_24;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      if (!v55)
      {
        v55 = MEMORY[0x1E69E7CC0];
        goto LABEL_57;
      }

LABEL_58:
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v93 = OUTLINED_FUNCTION_10_32(v110);
      v93[1] = xmmword_1CA981310;
      *(v93 + 4) = v59;
      *(v93 + 5) = v43;
LABEL_59:
      v111 = v114;
      *v114 = v55;
      v111[1] = v93;
      return;
    default:
      sub_1CA94D5F8();
      __break(1u);
      return;
  }
}

uint64_t Library.shortcutIdentifiers.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v1);
  sub_1CA2D85D8();
  v9 = v8;
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1CA647354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  return swift_endAccess();
}

uint64_t sub_1CA6473E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_1CA2CCAF8();
  return sub_1CA647920(v2);
}

uint64_t sub_1CA6474D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.remove(shortcutWithIdentifier:)(Swift::String shortcutWithIdentifier)
{
  countAndFlagsBits = shortcutWithIdentifier._countAndFlagsBits;
  object = shortcutWithIdentifier._object;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v18 = *(v4 + 16);
  v23 = v1;
  v18(v7, v1 + v17, v2);
  sub_1CA2C99D8();
  (*(v4 + 8))(v7, v2);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1CA647920(v10);
    v19 = sub_1CA2D9AF4();
    OUTLINED_FUNCTION_127(&type metadata for LibraryError, v19);
    *v20 = xmmword_1CA982010;
    *(v20 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v21 = (*(v13 + 32))(v16, v10, v11);
    MEMORY[0x1EEE9AC00](v21);
    *(&v22 - 2) = v16;
    swift_beginAccess();
    sub_1CA94BFF8();
    swift_endAccess();
    (*(v13 + 8))(v16, v11);
  }
}

uint64_t sub_1CA647920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA6479AC()
{
  v1 = **(v0 + 56);
  v2 = [v1 valueType];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [v1 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    if (OUTLINED_FUNCTION_8_33())
    {
      v3 = *(v0 + 48);
      v4 = [v3 identifier];
      v5 = [v4 typeIdentifier];

LABEL_14:
      v13 = sub_1CA94C3A8();
      v15 = v14;

      v16 = *(v0 + 8);

      return v16(v13, v15);
    }

    goto LABEL_7;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {

      sub_1CA2FFC58();
      v17 = swift_allocError();
      OUTLINED_FUNCTION_17_19(v17, v18);
      goto LABEL_8;
    }

    v12 = v11;
    v3 = v2;
    v6 = [v12 enumerationIdentifier];
LABEL_13:
    v5 = v6;
    goto LABEL_14;
  }

  [v1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  if (OUTLINED_FUNCTION_8_33())
  {
    v3 = *(v0 + 48);
    v6 = [v3 typeIdentifier];
    goto LABEL_13;
  }

LABEL_7:
  sub_1CA2FFC58();
  v7 = swift_allocError();
  OUTLINED_FUNCTION_17_19(v7, v8);

LABEL_8:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t TypedValueConversionContext.type(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA647C88()
{
  v1 = v0[4];
  v2 = (v1 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v10 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1CA647DC8;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v3, v4);
}

uint64_t sub_1CA647DC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TypedValueConversionContext.init(sourceDevice:typeDefinitionProvider:localizationContext:enumerationCases:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1CA94B168();
  OUTLINED_FUNCTION_52();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for TypedValueConversionContext(0);
  result = sub_1CA2F1554(a2, a5 + v11[5]);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t LinkValueTransformContext.init(linkValue:sourceContainer:displayRepresentationConfiguration:localizationContext:enumerationCases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for LinkValueTransformContext(0);
  v12 = v11[5];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_52();
  (*(v13 + 32))(&a6[v12], a2);
  v14 = v11[6];
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  result = (*(v15 + 32))(&a6[v14], a3);
  *&a6[v11[7]] = a4;
  *&a6[v11[8]] = a5;
  return result;
}

uint64_t TypedValueConversionContext.sourceDevice.getter()
{
  OUTLINED_FUNCTION_11_0();
  sub_1CA94B168();
  OUTLINED_FUNCTION_52();
  v1 = OUTLINED_FUNCTION_6_45();

  return v2(v1, v0);
}

uint64_t TypedValueConversionContext.typeDefinitionProvider.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for TypedValueConversionContext(v2);
  return sub_1CA2C9578(v1 + *(v3 + 20), v0);
}

id TypedValueConversionContext.localizationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValueConversionContext(0) + 24));

  return v1;
}

uint64_t TypedValueConversionContext.enumerationCases.getter()
{
  type metadata accessor for TypedValueConversionContext(0);

  return sub_1CA94C218();
}

uint64_t LinkValueTransformContext.sourceContainer.getter()
{
  v0 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for LinkValueTransformContext(v0);
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_52();
  v1 = OUTLINED_FUNCTION_6_45();

  return v2(v1);
}

uint64_t LinkValueTransformContext.displayRepresentationConfiguration.getter()
{
  v0 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for LinkValueTransformContext(v0);
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  v1 = OUTLINED_FUNCTION_6_45();

  return v2(v1);
}

id LinkValueTransformContext.localizationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkValueTransformContext(0) + 28));

  return v1;
}

uint64_t LinkValueTransformContext.enumerationCases.getter()
{
  type metadata accessor for LinkValueTransformContext(0);

  return sub_1CA94C218();
}

uint64_t ParameterStateValueTransformContext.typeInstance.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = v1 + *(type metadata accessor for ParameterStateValueTransformContext(v2) + 20);

  return sub_1CA5A7354(v3, v0);
}

uint64_t ParameterStateValueTransformContext.containerProvider.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ParameterStateValueTransformContext(v2);
  return sub_1CA2C9578(v1 + *(v3 + 24), v0);
}

void sub_1CA64836C(uint64_t a1)
{
  sub_1CA94B168();
  if (v1 <= 0x3F)
  {
    sub_1CA2F0E70(319, &qword_1EC4424D8, &protocol descriptor for TypeDefinitionProvider);
    if (v2 <= 0x3F)
    {
      sub_1CA25B3D0(319, &qword_1EC441840, 0x1E69E0BE0);
      if (v3 <= 0x3F)
      {
        sub_1CA381418(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA648468(uint64_t a1)
{
  sub_1CA25B3D0(319, &unk_1EDB9F6B0, 0x1E69ACA90);
  if (v1 <= 0x3F)
  {
    sub_1CA94B1C8();
    if (v2 <= 0x3F)
    {
      sub_1CA94B728();
      if (v3 <= 0x3F)
      {
        sub_1CA25B3D0(319, &qword_1EC441840, 0x1E69E0BE0);
        if (v4 <= 0x3F)
        {
          sub_1CA381418(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CA64857C(uint64_t a1)
{
  sub_1CA25B3D0(319, &qword_1EC441AA0, off_1E836EDB8);
  if (v1 <= 0x3F)
  {
    sub_1CA648638(319);
    if (v2 <= 0x3F)
    {
      sub_1CA2F0E70(319, &qword_1EC442210, &protocol descriptor for ContainerDefinitionProvider);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA648638(uint64_t a1)
{
  if (!qword_1EC441D08)
  {
    sub_1CA94AD08();
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441D08);
    }
  }
}

uint64_t sub_1CA648694()
{
  v0 = sub_1CA949578();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CA949528();
  __swift_allocate_value_buffer(v4, qword_1EC441760);
  __swift_project_value_buffer(v4, qword_1EC441760);
  (*(v1 + 104))(v3, *MEMORY[0x1E69A12B8], v0);
  return sub_1CA949518();
}

id sub_1CA6487A0()
{
  result = [objc_allocWithZone(WFAppleIntelligenceAvailabilityProvider) init];
  qword_1EC441748 = result;
  return result;
}

WFAppleIntelligenceAvailabilityProvider __swiftcall WFAppleIntelligenceAvailabilityProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static WFAppleIntelligenceAvailabilityProvider.shared()()
{
  if (qword_1EC441740 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC441748;

  return v1;
}

uint64_t sub_1CA648868()
{
  v0 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  sub_1CA949D48();
  v7 = MEMORY[0x1CCA9EB90]();
  v8 = sub_1CA949D28();

  sub_1CA949C58();
  v9 = sub_1CA949F68();
  v10 = sub_1CA94CC38();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_1CA256000, v9, v10, "Current Apple Intelligence opt in state: %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_26();
  }

  (*(v2 + 8))(v6, v0);
  return v8 & 1;
}

uint64_t sub_1CA648A00()
{
  v0 = sub_1CA9494F8();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v45 = v5 - v4;
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v43 = v7;
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = sub_1CA9495A8();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  if (qword_1EC441758 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_1EC441758);
  }

  v20 = sub_1CA949528();
  __swift_project_value_buffer(v20, qword_1EC441760);
  sub_1CA949598();
  sub_1CA949C58();
  (*(v13 + 16))(v17, v19, v11);
  v42 = v10;
  v21 = sub_1CA949F68();
  v22 = sub_1CA94CC38();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v2;
    v24 = v23;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v24 = 136315138;
    sub_1CA26B4F4();
    v25 = sub_1CA94D798();
    v41 = v0;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_3_55();
    v29(v28);
    v30 = sub_1CA26B54C(v25, v27, &v46);
    v0 = v41;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1CA256000, v21, v22, "Current Apple Intelligence availability: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_26();
    v2 = v40;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v31 = OUTLINED_FUNCTION_3_55();
    v32(v31);
  }

  (*(v43 + 8))(v42, v44);
  v33 = v45;
  sub_1CA949538();
  (v17)(v19, v11);
  v34 = (*(v2 + 88))(v33, v0);
  v36 = v34 != *MEMORY[0x1E69A0EF8] && v34 != *MEMORY[0x1E69A0F00] && v34 == *MEMORY[0x1E69A11A0];
  v37 = v36;
  if (!v36)
  {
    (*(v2 + 8))(v33, v0);
  }

  return v37;
}

unint64_t type metadata accessor for WFAppleIntelligenceAvailabilityProvider()
{
  result = qword_1EC447958;
  if (!qword_1EC447958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447958);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1CA648F28()
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
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x80000001CA9D98F0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000016;
  *(inited + 168) = 0x80000001CA9D9910;
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

void sub_1CA64911C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1CA563CD8(a1);
  if (v3)
  {
    v4 = v3;
    v5 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
    v7 = *v5;
    v6 = *(v5 + 1);
    v8 = v5[16];
    sub_1CA94C218();
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
}

id sub_1CA6491AC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a2;
  if (a2)
  {
    v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446030, &unk_1CA989F80));
    v9 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
    *v9 = a1;
    *(v9 + 1) = v5;
    v9[16] = a3 & 1;
    sub_1CA94C218();
    v13.receiver = v8;
    v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447970, &qword_1CA990700);
    v5 = objc_msgSendSuper2(&v13, sel_init);
  }

  v10 = sub_1CA94C368();
  v11 = [v4 setParameterState:v5 forKey:v10];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1CA6492C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = sub_1CA94C3A8();
  sub_1CA6491AC(v1, v2, v3, v4);
}

uint64_t WFContentItemFilterAction.tableTemplateRowCount.getter()
{
  v0 = sub_1CA94C3A8();
  sub_1CA64911C(v0, v3);

  if (v4)
  {
    v1 = *(v4 + 16);
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t WFContentItemFilterAction.tableTemplateCompoundType.getter()
{
  v0 = sub_1CA94C3A8();
  sub_1CA64911C(v0, v3);

  if (v3[1])
  {
    v1 = v3[0];
  }

  else
  {
    v1 = 1;
  }

  return v1;
}

uint64_t WFContentItemFilterAction.tableTemplateCompoundType.setter(uint64_t a1)
{
  v2 = sub_1CA94C3A8();
  sub_1CA64911C(v2, &v7);

  if (v8)
  {
    v4 = a1;
    v5 = v8;
    v6 = v9;
    return sub_1CA6492C0(&v4);
  }

  else
  {
    v4 = v7;
    v5 = 0;
    v6 = v9;
    sub_1CA6492C0(&v4);
  }
}

WFContentItemFilterActionRow_optional __swiftcall WFContentItemFilterAction.row(forContentPropertyName:)(Swift::String forContentPropertyName)
{
  object = forContentPropertyName._object;
  countAndFlagsBits = forContentPropertyName._countAndFlagsBits;
  v3 = sub_1CA94C3A8();
  sub_1CA64911C(v3, &v28);

  v6 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v7 = 0;
    v8 = *(*(&v28 + 1) + 16);
    for (i = 32; ; i += 56)
    {
      if (v8 == v7)
      {

        goto LABEL_12;
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v11 = *(v6 + i + 16);
      v10 = *(v6 + i + 32);
      v12 = *(v6 + i);
      v31 = *(v6 + i + 48);
      v29 = v11;
      v30 = v10;
      v28 = v12;
      v13 = *(&v12 + 1);
      sub_1CA2DBD00(&v28, v27);
      v14 = [v13 name];
      v15 = sub_1CA94C3A8();
      v17 = v16;

      if (v15 == countAndFlagsBits && v17 == object)
      {

LABEL_14:

        v20 = type metadata accessor for Swift_WFContentItemFilterActionRow();
        v21 = objc_allocWithZone(v20);
        v22 = &v21[OBJC_IVAR____TtC11WorkflowKitP33_E09A67776F6F7C3CDD26E2BB23B6F9D634Swift_WFContentItemFilterActionRow_row];
        v24 = v29;
        v23 = v30;
        v25 = v28;
        *(v22 + 6) = v31;
        *(v22 + 1) = v24;
        *(v22 + 2) = v23;
        *v22 = v25;
        v26.receiver = v21;
        v26.super_class = v20;
        v4 = objc_msgSendSuper2(&v26, sel_init);
        goto LABEL_17;
      }

      v19 = sub_1CA94D7F8();

      if (v19)
      {
        goto LABEL_14;
      }

      v4 = sub_1CA50FF28(&v28);
      ++v7;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v4 = 0;
  }

LABEL_17:
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

id WFContentItemFilterAction.contentPredicate.getter()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CA94C3A8();
  v6 = sub_1CA33A88C(v4, v5);

  if (v6)
  {
    v7 = TableTemplateValue<>.contentPredicate.getter();

    return v7;
  }

  else
  {
    sub_1CA949C58();
    v9 = sub_1CA949F68();
    v10 = sub_1CA94CC18();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1CA256000, v9, v10, "Unable to find processed table template value for content item filter", v11, 2u);
      MEMORY[0x1CCAA4BF0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return [objc_allocWithZone(MEMORY[0x1E6996D80]) init];
  }
}

uint64_t sub_1CA6499D4()
{
  if (!*(*(v0 + OBJC_IVAR____TtC11WorkflowKitP33_E09A67776F6F7C3CDD26E2BB23B6F9D634Swift_WFContentItemFilterActionRow_row + 24) + 16))
  {
    return 0;
  }

  sub_1CA271BF8(0x746172656D756E45, 0xEB000000006E6F69);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    swift_unknownObjectRetain();
  }

  return v2;
}

id sub_1CA649BA4()
{
  v184 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D9AD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("sound|speaker|loud|ringtone|alert", 33);
  v6 = v5;
  v7 = sub_1CA94C438("sound|speaker|loud|ringtone|alert", 33);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v194 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v195 = v11;
  v12 = v174 - v194;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v193 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v191 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v192 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v174 - v192;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v190 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v188 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sets the volume of the device.", 30);
  v25 = v24;
  v26 = sub_1CA94C438("Sets the volume of the device.", 30);
  v28 = v27;
  *&v187 = v174;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v174 - v194;
  sub_1CA948D98();
  v30 = [v193 bundleURL];
  v189 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v174 - v192;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v190;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v188;
  v37 = sub_1CA6B3784(v35);
  v38 = v189;
  v189[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000013;
  v38[26] = 0x80000001CA9D9B40;
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v40 = MEMORY[0x1E69E6370];
  *(v38 + 240) = 1;
  v38[33] = v40;
  v38[34] = @"Name";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438("Set Volume (Action Name)", 24);
  v47 = v46;
  v48 = sub_1CA94C438("Set Volume", 10);
  v50 = v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v174 - v194;
  sub_1CA948D98();
  v52 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v174 - v192;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  v56 = v189;
  v189[35] = v55;
  v56[38] = v190;
  v56[39] = @"Parameters";
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v186 = swift_allocObject();
  v187 = xmmword_1CA981360;
  *(v186 + 16) = xmmword_1CA981360;
  v185 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1CA981300;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000016;
  *(v57 + 48) = 0x80000001CA99C4A0;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"DefaultValue";
  *(v57 + 80) = 0x616964654DLL;
  *(v57 + 88) = 0xE500000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Description";
  v59 = @"Class";
  v60 = @"DefaultValue";
  v61 = @"Description";
  v181 = v59;
  v180 = v60;
  v182 = v61;
  v62 = @"Parameters";
  v63 = sub_1CA94C438("The volume setting to change, either Media or Ringtone. (WFVolumeSetting)", 73);
  v178 = v64;
  v65 = sub_1CA94C438("The volume setting to change, either Media or Ringtone.", 55);
  v67 = v66;
  v179 = v174;
  MEMORY[0x1EEE9AC00](v65);
  v68 = v194;
  sub_1CA948D98();
  v69 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v174 - v192;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v63, v178, v65, v67, 0, 0, v174 - v68, v70);
  *(v57 + 144) = v190;
  *(v57 + 152) = @"ItemIconNames";
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v57 + 160) = &unk_1F4A0A978;
  *(v57 + 184) = v72;
  *(v57 + 192) = @"Items";
  v179 = swift_allocObject();
  *&v179->data = v187;
  v73 = @"ItemIconNames";
  v74 = @"Items";
  v75 = sub_1CA94C438("Media (WFVolumeSetting)", 23);
  v176 = v76;
  v177 = v75;
  v77 = sub_1CA94C438("Media", 5);
  v175 = v78;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v174 - v68;
  sub_1CA948D98();
  v80 = v193;
  v81 = [v193 bundleURL];
  v174[1] = v174;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v192;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v177, v176, v77, v175, 0, 0, v79, v174 - v82);
  v85 = v179;
  v179[1].isa = v84;
  v86 = sub_1CA94C438("Ringtone (WFVolumeSetting)", 26);
  v176 = v87;
  v177 = v86;
  v175 = sub_1CA94C438("Ringtone", 8);
  v89 = v88;
  v178 = v174;
  MEMORY[0x1EEE9AC00](v175);
  v90 = v174 - v194;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v177, v176, v175, v89, 0, 0, v90, v174 - v82);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v57 + 200) = v85;
  *(v57 + 224) = v93;
  *(v57 + 232) = @"Key";
  *(v57 + 240) = 0x656D756C6F564657;
  *(v57 + 248) = 0xEF676E6974746553;
  *(v57 + 264) = MEMORY[0x1E69E6158];
  *(v57 + 272) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v178 = v94;
  v179 = v95;
  v96 = sub_1CA94C438("Volume Setting (WFVolumeSetting)", 32);
  v98 = v97;
  v99 = sub_1CA94C438("Volume Setting", 14);
  v101 = v100;
  v177 = v174;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v174 - v194;
  sub_1CA948D98();
  v103 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v174 - v192;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 280) = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  *(v57 + 304) = v190;
  *(v57 + 312) = @"RequiredResources";
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA9813B0;
  v196 = 2;
  v197 = 1;
  v107 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v108 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v196);
  *(v106 + 32) = v109;
  *(v57 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v57 + 320) = v106;
  _s3__C3KeyVMa_0(0);
  v177 = v110;
  v176 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  *(v186 + 32) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1CA981400;
  *(v113 + 32) = v181;
  *(v113 + 40) = 0xD000000000000011;
  *(v113 + 48) = 0x80000001CA9A0B80;
  v114 = v180;
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = v114;
  v115 = MEMORY[0x1E69E63B0];
  *(v113 + 80) = 0x3FE0000000000000;
  v116 = v182;
  *(v113 + 104) = v115;
  *(v113 + 112) = v116;
  v117 = sub_1CA94C438("If you set the volume using a variable, use a number between 0 and 1 (for example, pass 0.5 for half volume). (WFVolume)", 120);
  v181 = v118;
  v182 = v117;
  v119 = sub_1CA94C438("If you set the volume using a variable, use a number between 0 and 1 (for example, pass 0.5 for half volume).", 109);
  v180 = v120;
  v183 = v174;
  MEMORY[0x1EEE9AC00](v119);
  v121 = v194;
  sub_1CA948D98();
  v122 = v193;
  v123 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v174 - v192;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 120) = sub_1CA2F9F14(v182, v181, v119, v180, 0, 0, v174 - v121, v124);
  v126 = v178;
  *(v113 + 144) = v190;
  *(v113 + 152) = v126;
  *(v113 + 160) = 0x656D756C6F564657;
  *(v113 + 168) = 0xE800000000000000;
  v127 = v179;
  *(v113 + 184) = MEMORY[0x1E69E6158];
  *(v113 + 192) = v127;
  v128 = sub_1CA94C438("Volume (WFVolume)", 17);
  v181 = v129;
  v182 = v128;
  v130 = sub_1CA94C438("Volume", 6);
  v180 = v131;
  v183 = v174;
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948D98();
  v132 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = v174 - v192;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 200) = sub_1CA2F9F14(v182, v181, v130, v180, 0, 0, v174 - v121, v133);
  *(v113 + 224) = v190;
  *(v113 + 232) = @"MaximumIconName";
  *(v113 + 240) = 0xD000000000000010;
  *(v113 + 248) = 0x80000001CA9D9DB0;
  v135 = MEMORY[0x1E69E6158];
  *(v113 + 264) = MEMORY[0x1E69E6158];
  *(v113 + 272) = @"MinimumIconName";
  *(v113 + 304) = v135;
  *(v113 + 280) = 0x6C53656D756C6F56;
  *(v113 + 288) = 0xEF776F4C72656469;
  v136 = @"MaximumIconName";
  v137 = @"MinimumIconName";
  v138 = sub_1CA94C1E8();
  v139 = sub_1CA2F864C(v138);
  v140 = v186;
  *(v186 + 40) = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v142 = v189;
  v189[40] = v140;
  v142[43] = v141;
  v142[44] = @"ParameterSummary";
  v186 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v190 = swift_allocObject();
  *(v190 + 16) = v187;
  v143 = @"ParameterSummary";
  v144 = sub_1CA94C438("Set volume to ${WFVolume}", 25);
  v146 = v145;
  v147 = sub_1CA94C438("Set volume to ${WFVolume}", 25);
  v149 = v148;
  v188 = v174;
  MEMORY[0x1EEE9AC00](v147);
  v150 = v174 - v194;
  sub_1CA948D98();
  v151 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = v192;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v144, v146, v147, v149, 0, 0, v150, v174 - v152);
  v155 = objc_allocWithZone(WFActionParameterSummaryValue);
  v156 = sub_1CA65DD78(0x656D756C6F564657, 0xE800000000000000, v154);
  *(v190 + 32) = v156;
  v188 = "Set volume to ${WFVolume}";
  v157 = sub_1CA94C438("Set ${WFVolumeSetting} volume to ${WFVolume}", 44);
  v159 = v158;
  v160 = sub_1CA94C438("Set ${WFVolumeSetting} volume to ${WFVolume}", 44);
  v162 = v161;
  *&v187 = v174;
  MEMORY[0x1EEE9AC00](v160);
  v163 = v174 - v194;
  sub_1CA948D98();
  v164 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v157, v159, v160, v162, 0, 0, v163, v174 - v152);
  v167 = objc_allocWithZone(WFActionParameterSummaryValue);
  v168 = sub_1CA65DD78(0xD000000000000018, v188 | 0x8000000000000000, v166);
  v169 = v190;
  *(v190 + 40) = v168;
  v170 = v186;
  v171 = sub_1CA65AF90(v169);
  v172 = v189;
  v189[48] = v170;
  v172[45] = v171;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64AF9C()
{
  v39 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("display|brightness", 18);
  v6 = v5;
  v7 = sub_1CA94C438("display|brightness", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0A9F8;
  *(inited + 184) = v24;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v21;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x656E6F7465757274;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v21;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v25 = @"DisabledOnPlatforms";
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 344) = v21;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000053;
  *(inited + 328) = 0x80000001CA9D9E70;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v38 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v38;
  *(v31 + 64) = v21;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v32 = @"Key";
  v33 = sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C(v33);
  v34 = sub_1CA94C1E8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v34;
  *(inited + 384) = v35;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 400) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v36 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64B5A8()
{
  v230 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("app|song|music|movie|ebook|audiobook|tv|album|store|search|get", 62);
  v6 = v5;
  v7 = sub_1CA94C438("app|song|music|movie|ebook|audiobook|tv|album|store|search|get", 62);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v245 = v11;
  v243 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v226 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v241 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v244 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v246 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v226 - v246;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v242 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v239 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Searches the App Store, returning the apps that match the specified search terms. You can get more details about the results using the Get Details of App Store App action.", 171);
  v28 = v27;
  v29 = sub_1CA94C438("Searches the App Store, returning the apps that match the specified search terms. You can get more details about the results using the Get Details of App Store App action.", 171);
  v31 = v30;
  v238 = &v226;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v226 - v243;
  sub_1CA948D98();
  v33 = [v241 bundleURL];
  v240 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v226 - v246;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v242;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v239;
  v40 = sub_1CA6B3784(v38);
  v41 = v240;
  v240[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438("Find App Store Apps (Action Name)", 33);
  v47 = v46;
  v48 = sub_1CA94C438("Find App Store Apps", 19);
  v50 = v49;
  v239 = &v226;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v226 - v243;
  sub_1CA948D98();
  v52 = v241;
  v53 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v226 - v246;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v240;
  v240[30] = v56;
  v58 = v242;
  v57[33] = v242;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("App Store Apps (Default Output Name)", 36);
  v238 = v62;
  v63 = sub_1CA94C438("App Store Apps", 14);
  v65 = v64;
  v239 = &v226;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v226 - v243;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v226 - v246;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v238, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v229;
  *(v59 + 192) = &unk_1F4A0AA68;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v240;
  v240[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_1CA981560;
  v235 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981380;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v232 = v78;
  v231 = v79;
  v233 = v80;
  v81 = @"Parameters";
  v238 = sub_1CA94C438("Search (WFSearchTerm)", 21);
  *&v234 = v82;
  v83 = sub_1CA94C438("Search", 6);
  v228 = v84;
  v239 = &v226;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v243;
  sub_1CA948D98();
  v86 = v241;
  v87 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v226 - v246;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v238, v234, v83, v228, 0, 0, &v226 - v85, v88);
  v90 = v242;
  *(v74 + 144) = v242;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v238 = sub_1CA94C438("Apps (WFSearchTerm)", 19);
  *&v234 = v92;
  v93 = sub_1CA94C438("Apps", 4);
  v228 = v94;
  v239 = &v226;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v226 - v85;
  sub_1CA948D98();
  v96 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v246;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v238, v234, v93, v228, 0, 0, v95, &v226 - v97);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"Prompt";
  v99 = @"Prompt";
  v238 = sub_1CA94C438("What do you want to search for? (WFSearchTerm)", 46);
  *&v234 = v100;
  v101 = sub_1CA94C438("What do you want to search for?", 31);
  v103 = v102;
  v239 = &v226;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v226 - v243;
  sub_1CA948D98();
  v105 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 200) = sub_1CA2F9F14(v238, v234, v101, v103, 0, 0, v104, &v226 - v97);
  *(v74 + 224) = v242;
  *(v74 + 232) = @"TextAlignment";
  v107 = MEMORY[0x1E69E6158];
  *(v74 + 264) = MEMORY[0x1E69E6158];
  *(v74 + 240) = 0x7468676952;
  *(v74 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v239 = v108;
  v238 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v109 = @"TextAlignment";
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  *(v236 + 32) = v111;
  v112 = swift_initStackObject();
  v234 = xmmword_1CA9813C0;
  *(v112 + 16) = xmmword_1CA9813C0;
  v227 = 0xD00000000000001DLL;
  v228 = 0x80000001CA99FB10;
  v114 = v231;
  v113 = v232;
  *(v112 + 32) = v232;
  *(v112 + 40) = 0xD00000000000001DLL;
  *(v112 + 48) = 0x80000001CA99FB10;
  *(v112 + 64) = v107;
  *(v112 + 72) = v114;
  *(v112 + 80) = 0x6269727474414657;
  *(v112 + 88) = 0xEB00000000657475;
  v115 = v233;
  *(v112 + 104) = v107;
  *(v112 + 112) = v115;
  v232 = v113;
  v226 = v114;
  v233 = v115;
  v116 = sub_1CA94C438("Search By (WFAttribute)", 23);
  v118 = v117;
  v119 = sub_1CA94C438("Search By", 9);
  v121 = v120;
  v231 = &v226;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v226 - v243;
  sub_1CA948D98();
  v123 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v226 - v246;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v112 + 144) = v242;
  *(v112 + 120) = v126;
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  *(v236 + 40) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = v234;
  v130 = v232;
  v132 = v227;
  v131 = v228;
  *(v129 + 32) = v232;
  *(v129 + 40) = v132;
  *(v129 + 48) = v131;
  v133 = MEMORY[0x1E69E6158];
  v134 = v226;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v134;
  *(v129 + 80) = 0x797469746E454657;
  *(v129 + 88) = 0xE800000000000000;
  v135 = v233;
  *(v129 + 104) = v133;
  *(v129 + 112) = v135;
  v231 = v130;
  v232 = v134;
  v136 = sub_1CA94C438("Results (WFEntity)", 18);
  v227 = v137;
  v138 = sub_1CA94C438("Results", 7);
  v140 = v139;
  v228 = &v226;
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v226 - v243;
  sub_1CA948D98();
  v142 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v226 - v246;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v136, v227, v138, v140, 0, 0, v141, v143);
  *(v129 + 144) = v242;
  *(v129 + 120) = v145;
  v146 = sub_1CA94C1E8();
  v147 = sub_1CA2F864C(v146);
  v148 = v236;
  *(v236 + 48) = v147;
  v149 = swift_allocObject();
  *(v149 + 16) = v234;
  *(v149 + 32) = v231;
  *(v149 + 40) = 0xD000000000000023;
  *(v149 + 48) = 0x80000001CA9CE0E0;
  v150 = MEMORY[0x1E69E6158];
  v151 = v232;
  *(v149 + 64) = MEMORY[0x1E69E6158];
  *(v149 + 72) = v151;
  *(v149 + 80) = 0x72746E756F434657;
  *(v149 + 88) = 0xE900000000000079;
  v152 = v233;
  *(v149 + 104) = v150;
  *(v149 + 112) = v152;
  v153 = sub_1CA94C438("Region (WFCountry)", 18);
  v233 = v154;
  v155 = sub_1CA94C438("Region", 6);
  v157 = v156;
  *&v234 = &v226;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v226 - v243;
  sub_1CA948D98();
  v159 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v226 - v246;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v153, v233, v155, v157, 0, 0, v158, v160);
  *(v149 + 144) = v242;
  *(v149 + 120) = v162;
  v163 = sub_1CA94C1E8();
  *(v148 + 56) = sub_1CA2F864C(v163);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1CA981300;
  *(v164 + 32) = v231;
  *(v164 + 40) = 0xD000000000000012;
  *(v164 + 48) = 0x80000001CA99B980;
  v165 = MEMORY[0x1E69E6158];
  *(v164 + 64) = MEMORY[0x1E69E6158];
  *(v164 + 72) = @"DefaultValue";
  v166 = MEMORY[0x1E69E6530];
  *(v164 + 80) = 25;
  v167 = v232;
  *(v164 + 104) = v166;
  *(v164 + 112) = v167;
  *(v164 + 120) = 0x694C6D6574494657;
  *(v164 + 128) = 0xEB0000000074696DLL;
  *(v164 + 144) = v165;
  *(v164 + 152) = @"MaximumValue";
  *(v164 + 160) = 100;
  *(v164 + 184) = v166;
  *(v164 + 192) = @"MinimumValue";
  *(v164 + 200) = 1;
  *(v164 + 224) = v166;
  *(v164 + 232) = @"StepperPrefix";
  v168 = @"DefaultValue";
  v169 = @"MaximumValue";
  v170 = @"MinimumValue";
  v171 = @"StepperPrefix";
  v172 = sub_1CA94C438("Get (WFItemLimit)", 17);
  v233 = v173;
  *&v234 = v172;
  v174 = sub_1CA94C438("Get", 3);
  v232 = v175;
  v237 = &v226;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v226 - v243;
  sub_1CA948D98();
  v177 = v241;
  v178 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v226 - v246;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v164 + 240) = sub_1CA2F9F14(v234, v233, v174, v232, 0, 0, v176, v179);
  *(v164 + 264) = v242;
  *(v164 + 272) = @"StepperDescription";
  v181 = @"StepperDescription";
  v182 = sub_1CA94C438("Number of Items (WFItemLimit)", 29);
  v233 = v183;
  *&v234 = v182;
  v184 = sub_1CA94C438("Number of Items", 15);
  v232 = v185;
  v237 = &v226;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v243;
  sub_1CA948D98();
  v187 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v226 - v246;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v164 + 280) = sub_1CA2F9F14(v234, v233, v184, v232, 0, 0, &v226 - v186, v188);
  *(v164 + 304) = v242;
  *(v164 + 312) = @"StepperNoun";
  v190 = @"StepperNoun";
  v191 = sub_1CA94C438("%d Items", v226);
  v237 = v191;
  v193 = v192;
  *&v234 = v192;
  v251 = 0;
  v252 = 0xE000000000000000;
  sub_1CA94D408();

  v251 = v191;
  v252 = v193;
  v249 = 10;
  v250 = 0xE100000000000000;
  v247 = 32;
  v248 = 0xE100000000000000;
  sub_1CA27BAF0();
  v251 = sub_1CA94D1B8();
  v252 = v194;
  v195 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v196 = v251;
  v197 = v252;
  MEMORY[0x1EEE9AC00](v195);
  v198 = v186;
  sub_1CA948D98();
  v199 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  v200 = &v226 - v246;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v202 = sub_1CA2F9F14(v196, v197, v237, v234, 0, 0, &v226 - v186, v200);
  *(v164 + 344) = v242;
  *(v164 + 320) = v202;
  v203 = sub_1CA94C1E8();
  v204 = sub_1CA2F864C(v203);
  v205 = v236;
  *(v236 + 64) = v204;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v207 = v240;
  v240[40] = v205;
  v207[43] = v206;
  v207[44] = @"ParameterSummary";
  v208 = @"ParameterSummary";
  v209 = sub_1CA94C438("Find ${WFSearchTerm} on the App Store (Parameter Summary)", 57);
  v211 = v210;
  v212 = sub_1CA94C438("Find ${WFSearchTerm} on the App Store", 37);
  v214 = v213;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v226 - v198;
  sub_1CA948D98();
  v216 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v226 - v246;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v219 = sub_1CA2F9F14(v209, v211, v212, v214, 0, 0, v215, v217);
  v220 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v221 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v222 = v240;
  v240[45] = v220;
  v222[48] = v221;
  v222[49] = @"RequiredResources";
  v222[50] = &unk_1F4A0AA98;
  v222[53] = v229;
  v222[54] = @"ResidentCompatible";
  v222[58] = MEMORY[0x1E69E6370];
  *(v222 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v223 = @"RequiredResources";
  v224 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64CF68()
{
  v62 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DA150;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("statement|conditional|then", 26);
  v6 = v5;
  v7 = sub_1CA94C438("statement|conditional|then", 26);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v11;
  v12 = v60 - v67;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v66 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v64 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v60 - v65;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v63 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v61 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Tests if a condition is true, and if so, runs the actions inside. Otherwise, the actions under “Otherwise” are run.", 119);
  v60[0] = v24;
  v25 = sub_1CA94C438("Tests if a condition is true, and if so, runs the actions inside. Otherwise, the actions under “Otherwise” are run.", 119);
  v27 = v26;
  v60[1] = v60;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v60 - v67;
  sub_1CA948D98();
  v29 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v60 - v65;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v60[0], v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v63;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v61;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9DA210;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA9813C0;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  v38 = v37;
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  strcpy((v36 + 96), "WFConditions");
  *(v36 + 109) = 0;
  *(v36 + 110) = -5120;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x7365707954;
  *(v36 + 136) = 0xE500000000000000;
  *(v36 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 144) = &unk_1F4A0AAC8;
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
  v46 = sub_1CA94C438("If (Action Name)", 16);
  v48 = v47;
  v49 = sub_1CA94C438("If", 2);
  v51 = v50;
  v61 = v60;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v60 - v67;
  sub_1CA948D98();
  v53 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v60 - v65;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v63;
  *(inited + 352) = @"ResidentCompatible";
  *(inited + 360) = 1;
  v56 = MEMORY[0x1E69E6370];
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"SnappingPassthrough";
  *(inited + 424) = v56;
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v57 = @"ResidentCompatible";
  v58 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA64D740(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
    sub_1CA65040C();
    result = sub_1CA94C948();
    v1 = v45[4];
    v3 = v45[5];
    v4 = v45[6];
    v5 = v45[7];
    v6 = v45[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_1CA94C218();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC0];
  v38 = v3;
  v39 = v1;
  while (v1 < 0)
  {
    v17 = sub_1CA94D358();
    if (!v17 || (v45[11] = v17, sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0), swift_dynamicCast(), v16 = v45[0], v14 = v5, v15 = v6, !v45[0]))
    {
LABEL_50:
      sub_1CA28A224(v1);
      return v11;
    }

LABEL_17:
    v18 = sub_1CA6501C4(v16);

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    if (v19 >> 62)
    {
      v20 = sub_1CA94D328();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v11 >> 62;
    v44 = v15;
    if (v11 >> 62)
    {
      result = sub_1CA94D328();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = result + v20;
    if (__OFADD__(result, v20))
    {
      goto LABEL_52;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v20;
    if (!result)
    {
      if (v21)
      {
LABEL_30:
        sub_1CA94D328();
      }

LABEL_31:
      result = sub_1CA94D488();
      v11 = result;
      v23 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_32;
    }

    if (v21)
    {
      goto LABEL_30;
    }

    v23 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_31;
    }

LABEL_32:
    v24 = *(v23 + 16);
    v25 = (*(v23 + 24) >> 1) - v24;
    v26 = v23 + 8 * v24;
    v42 = v23;
    if (v19 >> 62)
    {
      v28 = sub_1CA94D328();
      if (v28)
      {
        v29 = v28;
        result = sub_1CA94D328();
        if (v25 < result)
        {
          goto LABEL_56;
        }

        if (v29 < 1)
        {
          goto LABEL_57;
        }

        v40 = result;
        v41 = v11;
        v30 = v26 + 32;
        sub_1CA650474();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A30, &qword_1CA990768);
          v32 = sub_1CA276BDC(v45, i, v19);
          v34 = *v33;
          v32(v45, 0);
          *(v30 + 8 * i) = v34;
        }

        v3 = v38;
        v1 = v39;
        v11 = v41;
        v27 = v40;
        goto LABEL_42;
      }

LABEL_46:

      v5 = v14;
      v6 = v44;
      v10 = (v4 + 64) >> 6;
      if (v43 > 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_46;
      }

      if (v25 < v27)
      {
        goto LABEL_55;
      }

      sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
      swift_arrayInitWithCopy();
LABEL_42:

      v10 = (v4 + 64) >> 6;
      if (v27 < v43)
      {
        goto LABEL_53;
      }

      v5 = v14;
      v6 = v44;
      if (v27 >= 1)
      {
        v35 = *(v42 + 16);
        v36 = __OFADD__(v35, v27);
        v37 = v35 + v27;
        if (v36)
        {
          goto LABEL_54;
        }

        *(v42 + 16) = v37;
        v5 = v14;
        v6 = v44;
      }
    }
  }

  v12 = v5;
  v13 = v6;
  v14 = v5;
  if (v6)
  {
LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_50;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_50;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

id sub_1CA64DC20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFAppIntentsControlMetadata_type] = a1;
  *&v2[OBJC_IVAR___WFAppIntentsControlMetadata_identity] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1CA64DC88(void *a1)
{
  v2 = v1;
  v4 = [a1 controlType];
  v5 = sub_1CA64DCF8();
  v6 = objc_allocWithZone(v2);
  v7 = sub_1CA64DC20(v4, v5);

  return v7;
}

id sub_1CA64DCF8()
{
  v1 = [v0 extensionIdentity];
  v2 = [v0 kind];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v6 = [v0 defaultIntentReference];
  v7 = objc_allocWithZone(MEMORY[0x1E6994268]);
  return sub_1CA64F92C(v1, v3, v5, v6);
}

id ControlMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ControlMetadata.presentIfPossible(in:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA64DE8C, 0, 0);
}

uint64_t sub_1CA64DE8C()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1CA64DF74;

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1CA64DF74()
{
  OUTLINED_FUNCTION_0();
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v2 = v5;
  *(v5 + 48) = v0;

  if (v0)
  {
    v3 = sub_1CA611910;
  }

  else
  {

    v3 = sub_1CA2E0FB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1CA64E084(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if ([a2 respondsToSelector_])
  {
    v10 = *(a3 + OBJC_IVAR___WFAppIntentsControlMetadata_type);
    v11 = *(a3 + OBJC_IVAR___WFAppIntentsControlMetadata_identity);
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_1CA6504D8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA51B738;
    aBlock[3] = &block_descriptor_35;
    v14 = _Block_copy(aBlock);
    [a2 showChronoControlOfType:v10 identity:v11 completionHandler:v14];
    _Block_release(v14);
  }

  else
  {
    sub_1CA94C7E8();
  }
}

uint64_t sub_1CA64E290(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
    return sub_1CA94C7D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA64E390(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA64E454;

  return ControlMetadata.presentIfPossible(in:)(a1);
}

uint64_t sub_1CA64E454()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = *(v3 + 24);
  v7 = *v1;
  *v5 = *v1;

  swift_unknownObjectRelease();

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_1CA948AC8();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id sub_1CA64E5EC()
{
  v2 = v1;
  sub_1CA948AF8();
  OUTLINED_FUNCTION_1_0();
  v29 = v4;
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = [v0 effectiveBundleIdentifiers];
  sub_1CA94CBC8();

  v9 = &unk_1EDB9FB40;
  v10 = 0x1E69AC7B8;
  v11 = MEMORY[0x1E69E7CA0];
  v31 = v7;
  for (i = &selRef_temporaryDirectoryURL; ; i = &selRef_temporaryDirectoryURL)
  {
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v34)
        {
          v16 = 0;
          goto LABEL_17;
        }

        sub_1CA2C0A20(&v33, &v32);
        sub_1CA25B3D0(0, v9, v10);
      }

      while ((swift_dynamicCast() & 1) == 0);
      v13 = v35;
      if ([v35 i[111]] == 1)
      {
        break;
      }
    }

    v14 = [v13 bundleIdentifier];
    v15 = sub_1CA94C3A8();

    v16 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v17 = sub_1CA64F860(v15);
    if (v2)
    {
      (*(v29 + 8))(v7, v30);

      return v16;
    }

    v16 = v17;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = [v17 extensionPointRecord];
    v22 = [v21 identifier];

    v23 = sub_1CA94C3A8();
    v25 = v24;

    if (v23 == 0xD00000000000001DLL && 0x80000001CA9DA400 == v25)
    {
      break;
    }

    v27 = sub_1CA94D7F8();

    if (v27)
    {
      goto LABEL_16;
    }

    v9 = v20;
    v10 = v19;
    v11 = v18;
    v2 = 0;
    v7 = v31;
  }

LABEL_16:
  v7 = v31;
LABEL_17:
  (*(v29 + 8))(v7, v30);
  return v16;
}

id sub_1CA64E8C8(void *a1)
{
  v1 = a1;
  LNActionMetadata.associatedControl.getter();
  v3 = v2;

  return v3;
}

void LNActionMetadata.associatedControl.getter()
{
  v1 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  v10 = sub_1CA64E5EC();
  if (v10)
  {
    v56 = v10;
    v21 = sub_1CA64EE34();
    sub_1CA949C58();
    v22 = v0;
    sub_1CA94C218();
    v23 = sub_1CA949F68();
    v24 = sub_1CA94CC38();

    v25 = os_log_type_enabled(v23, v24);
    v57 = v22;
    v58 = v21;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = [v22 identifier];
      v28 = v1;
      v29 = v27;
      v30 = sub_1CA94C3A8();
      v32 = v31;

      v33 = sub_1CA26B54C(v30, v32, v59);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2080;
      v34 = sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
      v35 = MEMORY[0x1CCAA14D0](v58, v34);
      v37 = sub_1CA26B54C(v35, v36, v59);

      *(v26 + 14) = v37;
      _os_log_impl(&dword_1CA256000, v23, v24, "found control descriptors for %s: %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      v21 = v58;
      OUTLINED_FUNCTION_26();

      v38 = v28;
      v22 = v57;
      (*(v3 + 8))(v9, v38);
    }

    else
    {

      (*(v3 + 8))(v9, v1);
    }

    v39 = sub_1CA25B410(v21);
    v40 = 0;
    v41 = v21 & 0xC000000000000001;
    v42 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v39 == v40)
      {

        return;
      }

      if (v41)
      {
        v43 = MEMORY[0x1CCAA22D0](v40, v21);
      }

      else
      {
        if (v40 >= *(v42 + 16))
        {
          goto LABEL_29;
        }

        v43 = *(v21 + 8 * v40 + 32);
      }

      v44 = v43;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v45 = sub_1CA650154([v43 actionMetadata]);
      v47 = v46;
      v48 = [v22 identifier];
      v49 = sub_1CA94C3A8();
      v51 = v50;

      if (v47)
      {
        if (v45 == v49 && v47 == v51)
        {

LABEL_27:

          type metadata accessor for ControlMetadata();
          v54 = v44;
          sub_1CA64DC88(v54);

          return;
        }

        v53 = sub_1CA94D7F8();

        if (v53)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      ++v40;
      v22 = v57;
      v21 = v58;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    sub_1CA949C58();
    v11 = v0;
    v12 = sub_1CA949F68();
    v13 = sub_1CA94CC38();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v59[0] = v15;
      *v14 = 136315138;
      v16 = [v11 identifier];
      v17 = sub_1CA94C3A8();
      v19 = v18;

      v20 = sub_1CA26B54C(v17, v19, v59);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1CA256000, v12, v13, "%s does not have an implementing widget extension, unable to lookup control", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    (*(v3 + 8))(v7, v1);
  }
}

uint64_t sub_1CA64EE34()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = [objc_opt_self() all];
  sub_1CA94CF28();
  v10 = v9;
  v11 = sub_1CA64F804(0, v9);
  v12 = [objc_allocWithZone(MEMORY[0x1E69943C8]) initWithOptions_];
  v13 = sub_1CA6500F0(v1);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v54 = v11;
    v55 = v10;
    v17 = [v1 entitlements];
    v18 = sub_1CA94C368();
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v19 = [v17 objectForKey:v18 ofClass:swift_getObjCClassFromMetadata()];

    if (v19)
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v53 = v12;
    v60[0] = v58;
    v60[1] = v59;
    if (*(&v59 + 1))
    {
      v21 = swift_dynamicCast();
      if (v21)
      {
        v22 = v56;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v23 = v57;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      sub_1CA2C0A74(v60);
      v22 = 0;
      v23 = 0;
    }

    v24 = [v1 containingBundleRecord];
    v51 = v4;
    v52 = v2;
    if (v24)
    {
      v25 = sub_1CA588A6C(v24);
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v22 = v27;
        v23 = v28;
      }
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A08, &qword_1CA990750);
    MEMORY[0x1EEE9AC00](v29 - 8);
    sub_1CA94C218();
    v50 = v15;
    sub_1CA949448();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A10, &qword_1CA990758);
    MEMORY[0x1EEE9AC00](v30 - 8);
    v32 = &v49 - v31;
    v49 = v22;
    if (v23)
    {
      sub_1CA94C218();
      sub_1CA949448();
      v33 = 0;
      v34 = v23;
    }

    else
    {
      v34 = 0xE400000000000000;
      v33 = 1;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A18, &qword_1CA990760);
    __swift_storeEnumTagSinglePayload(v32, v33, 1, v35);
    sub_1CA94CE68();
    v36 = sub_1CA94CE58();
    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v37 = sub_1CA949F68();
    v38 = sub_1CA94CC38();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *&v60[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = sub_1CA26B54C(v50, v16, v60);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2080;
      if (v23)
      {
        v41 = v49;
      }

      else
      {
        v41 = 1701736302;
      }

      v42 = sub_1CA26B54C(v41, v34, v60);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_1CA256000, v37, v38, "Looking up control matching identity: (extension: %s, container: %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    (*(v51 + 8))(v8, v52);
    v43 = v53;
    v44 = [v53 extensions];
    sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
    sub_1CA65040C();
    v45 = sub_1CA94C8F8();

    v46 = v36;
    v47 = sub_1CA64FA48(v45, v46);
    v20 = sub_1CA64D740(v47);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v20;
}