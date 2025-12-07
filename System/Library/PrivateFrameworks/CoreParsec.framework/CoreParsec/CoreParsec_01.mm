uint64_t sub_1B107EFC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(*(v4 + *(*v4 + 152)) + 16);

  os_unfair_lock_lock(v9);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v9);
}

uint64_t sub_1B107F078(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = sub_1B1122EFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B107FC8C(v2, 0x656372756F736572, 0xEE00796C696D6146, isUniquelyReferenced_nonNull_native, &qword_1EB739CB0, &qword_1B1134108);
    sub_1B107E72C();
    v4 = sub_1B1122CBC();
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B107FC8C(v4, 0x6E6F697461727564, 0xE800000000000000, v5, &qword_1EB739CB0, &qword_1B1134108);
    return v1;
  }

  return result;
}

uint64_t sub_1B107F170(uint64_t a1)
{
  v3 = *(*(v1 + *(*v1 + 152)) + 16);

  os_unfair_lock_lock(v3);
  v1[6] = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1B107F244(uint64_t a1)
{
  v2 = *v1;
  sub_1B112314C();
  MEMORY[0x1B272E140](v2);
  return sub_1B112316C();
}

const char *sub_1B107F298(char a1)
{
  result = "unknown";
  switch(a1)
  {
    case 1:
      result = "parsecSession";
      break;
    case 2:
      result = "parsecFeedbackEvent";
      break;
    case 3:
      result = "customFeedback";
      break;
    case 4:
      result = "batchedInstrumentation";
      break;
    case 5:
      result = "fileInstrumentation";
      break;
    case 6:
      result = "pegasusConfiguration";
      break;
    case 7:
      result = "bagResource";
      break;
    case 8:
      result = "bag";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B107F34C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t sub_1B107F364(unsigned __int8 a1)
{
  sub_1B112314C();
  MEMORY[0x1B272E140](a1);
  return sub_1B112316C();
}

uint64_t sub_1B107F3B4(uint64_t a1, unsigned __int8 a2)
{
  sub_1B112314C();
  MEMORY[0x1B272E140](a2);
  return sub_1B112316C();
}

unint64_t sub_1B107F3F8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B107F34C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B107F424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B107F35C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B107F450()
{
  v0 = qword_1EDAD54C0;

  return v0;
}

uint64_t sub_1B107F488()
{
  v0 = aDiskwrite[0];

  return v0;
}

uint64_t sub_1B107F51C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A120, qword_1B1134880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1133CF0;
  *(inited + 32) = 0x7365747962;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 56), "feedbackType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  sub_1B107A6C4();
  return sub_1B1122A0C();
}

void sub_1B107F624(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[56];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - v6;
  if ((v2[81] & 1) == 0)
  {
    v8 = v3[59];
    v17 = *(v5 + 16);
    v17(v7, &v2[v8], v4);
    v9 = v3[57];
    v10 = (*(v9 + 8))(v4, v9);
    v11 = *(v5 + 8);
    v11(v7, v4);
    sub_1B107F170(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B1133BA0;
    v17(v7, &v2[v8], v4);
    v13 = (*(v9 + 16))(v4, v9);
    v11(v7, v4);
    v14 = MEMORY[0x1E69E65A8];
    *(v12 + 56) = MEMORY[0x1E69E6530];
    *(v12 + 64) = v14;
    *(v12 + 32) = v13;
    sub_1B107EFC8("bytesWritten=%{signpost.description:attribute,public}llu", 56, 2, v12);

    v15 = *(*&v2[*(*v2 + 152)] + 16);

    os_unfair_lock_lock(v15);
    if ((v2[81] & 1) == 0)
    {
      sub_1B107E988();
    }

    os_unfair_lock_unlock(v15);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B107F89C()
{
  v1 = *v0;

  v2 = *(*(*(v1 + 448) - 8) + 8);
  v3 = v0 + *(*v0 + 472);

  return v2(v3);
}

uint64_t sub_1B107F92C(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 81) & 1) == 0)
  {
    sub_1B107F624(a1);
  }

  v3 = sub_1B107E860();

  (*(*(*(v2 + 448) - 8) + 8))(v3 + *(*v3 + 472));
  return v3;
}

uint64_t sub_1B107F9DC(uint64_t a1)
{
  v1 = sub_1B107F92C(a1);

  return MEMORY[0x1EEE6BDC0](v1);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1B107FA74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B107FA94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_1B107FACC(uint64_t a1)
{
  *(a1 + 8) = sub_1B107FAFC();
  result = sub_1B107FB50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B107FAFC()
{
  result = qword_1EDAD5650;
  if (!qword_1EDAD5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5650);
  }

  return result;
}

unint64_t sub_1B107FB50()
{
  result = qword_1EDAD5640;
  if (!qword_1EDAD5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5640);
  }

  return result;
}

unint64_t sub_1B107FBA8()
{
  result = qword_1EDAD5648;
  if (!qword_1EDAD5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5648);
  }

  return result;
}

uint64_t sub_1B107FBFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1B107FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((OUTLINED_FUNCTION_2_3(v17) & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1B10A429C(v8, v6);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_1B11230EC();
    __break(1u);
    return;
  }

  v15 = v18;
LABEL_5:
  v20 = *v9;
  if (v16)
  {
    *(v20[7] + 8 * v15) = v7;
    OUTLINED_FUNCTION_4_2();
  }

  else
  {
    sub_1B108012C(v15, v8, v6, v7, v20);
    OUTLINED_FUNCTION_4_2();
  }
}

void sub_1B107FD88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B112186C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B10A4314(a2);
  OUTLINED_FUNCTION_0_3();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC8, &unk_1B1134120);
  if ((OUTLINED_FUNCTION_2_3(v14) & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1B10A4314(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1B11230EC();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v2;
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    OUTLINED_FUNCTION_4_2();

    sub_1B1080174(v18, v19);
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_1B1080044(v12, v8, a1, v17);
    OUTLINED_FUNCTION_4_2();
  }
}

uint64_t sub_1B107FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3);
  OUTLINED_FUNCTION_0_3();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC0, &qword_1B1134D50);
  if ((OUTLINED_FUNCTION_2_3(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1B10A429C(v5, v3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1B11230EC();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v6;
  if (v11)
  {
    *(v15[7] + 8 * v10) = v4;
  }

  else
  {
    sub_1B108012C(v10, v5, v3, v4, v15);
  }
}

uint64_t sub_1B1080044(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B112186C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  result = sub_1B10801E4(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

unint64_t sub_1B108012C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B1080174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B10801E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1080254(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B10802DC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B10803B8()
{
  result = qword_1EB739CD0;
  if (!qword_1EB739CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739CD0);
  }

  return result;
}

id PARSafariSearchResponse.init(reply:factory:data:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

void PARSafariSearchResponse.init(reply:factory:data:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v86 = a2;
  v7 = sub_1B112207C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v93 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  sub_1B1121A7C();
  OUTLINED_FUNCTION_0();
  v83 = v15;
  v84 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v81 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v76 - v21;
  v22 = sub_1B11227EC();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CD8, &qword_1B11341E8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v76 - v24;
  v26 = sub_1B1121A9C();
  OUTLINED_FUNCTION_0();
  v82 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v94;
  v94 = a1;
  v32 = [v31 initWithReply_];
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  sub_1B1070FD4(a3, a4);
  sub_1B11227DC();
  sub_1B1081590(&unk_1EB7395C0, MEMORY[0x1E69BCC80], MEMORY[0x1E69BCC78]);
  sub_1B112280C();
  v92 = v14;
  v90 = a3;
  v78 = a4;
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  v33 = *(v82 + 32);
  v77 = v26;
  v33(v30, v25, v26);
  v34 = v32;
  v35 = v91;
  sub_1B1121A8C();
  v36 = sub_1B1121A2C();
  v38 = v37;
  v39 = v84 + 8;
  v40 = *(v84 + 8);
  v41 = v35;
  v42 = v83;
  v40(v41, v83);
  sub_1B108152C(v36, v38, v34);
  v43 = sub_1B1080E2C(v30, v94, v86);
  sub_1B107191C(v43, v34);
  v44 = sub_1B10810A4();
  v80 = v34;
  sub_1B1071898(v44, v34, &qword_1EDAD54B0, 0x1E69CA390, &selRef_setSections_);
  v45 = v89;
  v91 = v30;
  sub_1B1121A8C();
  v46 = sub_1B1121A1C();
  v84 = v39;
  v79 = v40;
  v40(v45, v42);
  v47 = v46;
  *&v95 = MEMORY[0x1E69E7CC0];
  v48 = v94;
  v89 = *(v46 + 16);
  if (v89)
  {
    OUTLINED_FUNCTION_2_4();
    v88 = v49;
    v87 = v9 + 16;
    v85 = MEMORY[0x1E69E7CC0];
    v50 = v92;
    while (v30 < *(v47 + 16))
    {
      (*(v9 + 16))(v50, v88 + *(v9 + 72) * v30, v7);
      OUTLINED_FUNCTION_0_4();
      sub_1B1081590(&qword_1EB739CE0, v51, MEMORY[0x1E69BCF48]);
      v52 = sub_1B112281C();
      v54 = v53;
      v55 = objc_allocWithZone(MEMORY[0x1E69CA608]);
      sub_1B1070FD4(v52, v54);
      v56 = sub_1B10814B8(v52, v54);
      if (!v56)
      {
        goto LABEL_28;
      }

      v57 = v56;
      v58 = [objc_allocWithZone(MEMORY[0x1E69CA3F0]) initWithProtobuf_];

      sub_1B106C204(v52, v54);
      v59 = (*(v9 + 8))(v92, v7);
      if (v58)
      {
        MEMORY[0x1B272DB50](v59);
        OUTLINED_FUNCTION_3_3();
        v48 = v94;
        if (v60)
        {
          OUTLINED_FUNCTION_5_3();
        }

        sub_1B1122BCC();
        v85 = v95;
      }

      else
      {
        v48 = v94;
      }

      ++v30;
      v50 = v92;
      v61 = v93;
      if (v89 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v85 = MEMORY[0x1E69E7CC0];
    v61 = v93;
LABEL_13:

    sub_1B1071898(v85, v80, &qword_1EB739570, 0x1E69CA3F0, &selRef_setSuggestions_);
    v62 = v81;
    sub_1B1121A8C();
    v63 = sub_1B1121A3C();
    v79(v62, v83);
    *&v95 = MEMORY[0x1E69E7CC0];
    v92 = *(v63 + 16);
    if (!v92)
    {
      v87 = MEMORY[0x1E69E7CC0];
      v74 = v90;
LABEL_25:

      v75 = v80;
      sub_1B1071898(v87, v80, &qword_1EB739570, 0x1E69CA3F0, &selRef_setCorrections_);

      swift_unknownObjectRelease();
      sub_1B106C204(v74, v78);
      (*(v82 + 8))(v91, v77);
      return;
    }

    OUTLINED_FUNCTION_2_4();
    v89 = v64;
    v88 = v9 + 16;
    v87 = MEMORY[0x1E69E7CC0];
    while (v62 < *(v63 + 16))
    {
      (*(v9 + 16))(v61, &v89[*(v9 + 72) * v62], v7);
      OUTLINED_FUNCTION_0_4();
      sub_1B1081590(&qword_1EB739CE0, v65, MEMORY[0x1E69BCF48]);
      v66 = sub_1B112281C();
      v68 = v67;
      v69 = objc_allocWithZone(MEMORY[0x1E69CA608]);
      sub_1B1070FD4(v66, v68);
      v70 = sub_1B10814B8(v66, v68);
      if (!v70)
      {
        goto LABEL_29;
      }

      v71 = v70;
      v72 = [objc_allocWithZone(MEMORY[0x1E69CA3F0]) initWithProtobuf_];

      sub_1B106C204(v66, v68);
      v61 = v93;
      v73 = (*(v9 + 8))(v93, v7);
      if (v72)
      {
        MEMORY[0x1B272DB50](v73);
        OUTLINED_FUNCTION_3_3();
        v48 = v94;
        if (v60)
        {
          OUTLINED_FUNCTION_5_3();
        }

        sub_1B1122BCC();
        v87 = v95;
        v61 = v93;
      }

      else
      {
        v48 = v94;
      }

      ++v62;
      v74 = v90;
      if (v92 == v62)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1B1080DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CD8, &qword_1B11341E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1080E2C(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v23 = a3;
  v3 = sub_1B1121DEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1121A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1121A8C();
  v11 = sub_1B1121A6C();
  (*(v8 + 8))(v10, v7);
  v24 = MEMORY[0x1E69E7CC0];
  v12 = *(v11 + 16);
  if (v12)
  {
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v20[1] = v11;
    v21 = v14;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v21(v6, v15, v3);
      if (!sub_1B1074C20(v22, v23, v6))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v17 = (*(v13 - 8))(v6, v3);
      MEMORY[0x1B272DB50](v17);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v15 += v16;
      --v12;
    }

    while (v12);
    v18 = v24;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1B10810A4()
{
  v1 = sub_1B10725D4(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC8];
    sub_1B10813E0(v1, &v4, &v5);

    v2 = v5;
  }

  return v2;
}

void sub_1B1081198(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B10A5C7C(*a1);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B10A5C88(v5);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v21;
      v17 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v18 = v5;
    v22 = sub_1B10725D4(v10);
    if (v22)
    {

      MEMORY[0x1B272DB50](v19);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
      v20 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B10813E0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B1081198(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

id sub_1B10814B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B11218AC();
    sub_1B106C1F0(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

void sub_1B108152C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();

  [a3 setServerCompletion_];
}

uint64_t sub_1B1081590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PAREngagedResult.init(_:)(void *a1)
{
  swift_getObjectType();

  return sub_1B108224C(a1);
}

id PAREngagedResult.init(_:searchString:type:engagemementTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1B1074A10(a3, a4, v12, &selRef_setSearchString_);
  sub_1B1074A10(a1, a2, v12, &selRef_setTitle_);
  v13 = sub_1B11218EC();
  [v12 setEngagementTime_];

  [v12 setType_];
  [v12 setScore_];

  v14 = sub_1B112194C();
  (*(*(v14 - 8) + 8))(a6, v14);
  return v12;
}

id PAREngagedResult.init(encoded:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  v1 = OUTLINED_FUNCTION_0_5();
  sub_1B1070FD4(v1, v2);
  v3 = OUTLINED_FUNCTION_0_5();
  v5 = sub_1B1081A1C(v3, v4);
  v10 = v5;
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_0_5();
    sub_1B106C204(v6, v7);
    return 0;
  }

  sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
  v11 = sub_1B1122E8C();
  if (!v11)
  {
    [v10 finishDecoding];
    v16 = OUTLINED_FUNCTION_0_5();
    sub_1B106C204(v16, v17);

    return 0;
  }

  v12 = v11;
  v8 = sub_1B1081C14(v12);
  v13 = v8;

  if (v8)
  {
  }

  [v10 finishDecoding];
  v14 = OUTLINED_FUNCTION_0_5();
  sub_1B106C204(v14, v15);

  return v8;
}

uint64_t PAREngagedResult.encoded()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v2 = sub_1B1122A4C();
  [v1 encodeObject:v0 forKey:v2];

  [v1 finishEncoding];
  v3 = [v1 encodedData];
  v4 = sub_1B11218CC();

  return v4;
}

id PAREngagedResult.toServerSuggestion()()
{
  v1 = _CPResultTypeToPQCType([v0 type]);
  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = 8;
LABEL_5:
    v3 = sub_1B1081BB4(v0, &selRef_title);
    v5 = v4;
    v6 = sub_1B1081BB4(v0, &selRef_searchString);
    v8 = v7;
    [v0 freshnessScore];
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x1E69CA3F0]);
    return sub_1B1081AFC(v3, v5, v6, v8, v2, v10);
  }

  return 0;
}

id sub_1B1081A1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B11218AC();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1B11217FC();

    swift_willThrow();
  }

  sub_1B106C204(a1, a2);
  return v7;
}

id sub_1B1081AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1B1122A4C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1B1122A4C();

LABEL_6:
  v12 = [v6 initWithSuggestion:v10 query:v11 score:a5 type:a6];

  return v12;
}

uint64_t sub_1B1081BB4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B1122A5C();

  return v4;
}

id sub_1B1081C14(void *a1)
{
  v2 = sub_1B112194C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - v7;
  v9 = [a1 searchString];
  if (!v9)
  {

    v35 = sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    sub_1B112283C(v35, &dword_1B1064000, v36, "Search string is missing", 24, 2, MEMORY[0x1E69E7CC0]);
LABEL_17:

    return 0;
  }

  v10 = v9;
  v11 = sub_1B1122A5C();
  v13 = v12;

  v14 = [a1 title];
  if (!v14)
  {

    v37 = sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    sub_1B112283C(v37, &dword_1B1064000, v36, "Title is missing", 16, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_17;
  }

  v15 = v14;
  v52 = v3;
  v16 = sub_1B1122A5C();
  v18 = v17;

  if (sub_1B1122ADC() >= 64)
  {

    v38 = sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    sub_1B112283C(v38, &dword_1B1064000, v36, "Search string exceeded maximum allowed size", 43, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_17;
  }

  if (sub_1B1122ADC() >= 128)
  {

    v39 = sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    sub_1B112283C(v39, &dword_1B1064000, v36, "Suggestion exceeded maximum allowed size", 40, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_17;
  }

  sub_1B112193C();
  v19 = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v16, v18, v11, v13, 1, v8);
  if ([a1 respondsToSelector_])
  {
    v20 = [a1 encodedNormalizedTopic];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1B11218CC();
      v24 = v23;

      v25 = MEMORY[0x1B272C8C0](v22, v24);
      sub_1B106C204(v22, v24);
      if (v25 >= 4096)
      {
        v41 = sub_1B1122DDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1B1133BA0;
        if (([a1 respondsToSelector_] & 1) != 0 && (v43 = objc_msgSend(a1, sel_encodedNormalizedTopic)) != 0)
        {
          v44 = v43;
          v45 = sub_1B11218CC();
          v47 = v46;

          v48 = MEMORY[0x1B272C8C0](v45, v47);
          sub_1B106C204(v45, v47);
        }

        else
        {

          v48 = 0;
        }

        v49 = MEMORY[0x1E69E65A8];
        *(v42 + 56) = MEMORY[0x1E69E6530];
        *(v42 + 64) = v49;
        *(v42 + 32) = v48;
        sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
        v50 = sub_1B1122EBC();
        sub_1B112283C(v41, &dword_1B1064000, v50, "Encoded normalized topic exceeded maximum allowed size (%d)", v51);

        return 0;
      }
    }
  }

  v26 = [a1 engagementTime];
  if (v26)
  {
    v27 = v26;
    sub_1B112192C();

    v28 = sub_1B11218EC();
    [v19 setEngagementTime_];

    (*(v52 + 8))(v6, v2);
  }

  [v19 setType_];
  [a1 freshnessScore];
  [v19 setFreshnessScore_];
  [a1 score];
  [v19 setScore_];
  if ([a1 respondsToSelector_])
  {
    v29 = [a1 encodedNormalizedTopic];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1B11218CC();
      v33 = v32;

      sub_1B1070FD4(v31, v33);
      v34 = sub_1B11218AC();
      sub_1B106C204(v31, v33);
    }

    else
    {

      v34 = 0;
      v31 = 0;
      v33 = 0xF000000000000000;
    }

    [v19 setEncodedNormalizedTopic_];

    sub_1B106C1F0(v31, v33);
  }

  else
  {
  }

  return v19;
}

id sub_1B108224C(void *a1)
{
  v2 = sub_1B112194C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = [a1 searchString];
  if (!v9)
  {
    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    v37 = OUTLINED_FUNCTION_1();
    v41 = 24;
LABEL_17:
    sub_1B112283C(v37, v38, v39, v40, v41, 2);

    return 0;
  }

  v10 = v9;
  v11 = sub_1B1122A5C();
  v13 = v12;

  v14 = [a1 title];
  if (!v14)
  {

    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    v37 = OUTLINED_FUNCTION_1();
    v41 = 16;
    goto LABEL_17;
  }

  v15 = v14;
  v56 = v3;
  v16 = sub_1B1122A5C();
  v18 = v17;

  if (sub_1B1122ADC() >= 64)
  {

    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    v37 = OUTLINED_FUNCTION_1();
    v41 = 43;
    goto LABEL_17;
  }

  if (sub_1B1122ADC() >= 128)
  {

    swift_unknownObjectRelease();
    sub_1B1122DDC();
    sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
    v36 = sub_1B1122EBC();
    v37 = OUTLINED_FUNCTION_1();
    v41 = 40;
    goto LABEL_17;
  }

  sub_1B112193C();
  v19 = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v16, v18, v11, v13, 1, v8);
  if ([a1 respondsToSelector_])
  {
    v20 = [a1 encodedNormalizedTopic];
    if (v20)
    {
      v21 = v20;
      sub_1B11218CC();

      v22 = OUTLINED_FUNCTION_3_4();
      v23 = MEMORY[0x1B272C8C0](v22);
      v24 = OUTLINED_FUNCTION_3_4();
      sub_1B106C204(v24, v25);
      if (v23 >= 4096)
      {
        v45 = sub_1B1122DDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1B1133BA0;
        if (([a1 respondsToSelector_] & 1) != 0 && (v47 = objc_msgSend(a1, sel_encodedNormalizedTopic)) != 0)
        {
          v48 = v47;
          sub_1B11218CC();

          v49 = OUTLINED_FUNCTION_3_4();
          v50 = MEMORY[0x1B272C8C0](v49);
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_3_4();
          sub_1B106C204(v51, v52);
        }

        else
        {
          swift_unknownObjectRelease();
          v50 = 0;
        }

        v53 = MEMORY[0x1E69E65A8];
        *(v46 + 56) = MEMORY[0x1E69E6530];
        *(v46 + 64) = v53;
        *(v46 + 32) = v50;
        sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
        v54 = sub_1B1122EBC();
        sub_1B112283C(v45, &dword_1B1064000, v54, "Encoded normalized topic exceeded maximum allowed size (%d)", v55);

        return 0;
      }
    }
  }

  v26 = [a1 engagementTime];
  if (v26)
  {
    v27 = v26;
    sub_1B112192C();

    v28 = sub_1B11218EC();
    [v19 setEngagementTime_];

    (*(v56 + 8))(v6, v2);
  }

  [v19 setType_];
  [a1 freshnessScore];
  [v19 setFreshnessScore_];
  [a1 score];
  [v19 setScore_];
  if ([a1 respondsToSelector_])
  {
    v29 = [a1 encodedNormalizedTopic];
    if (v29)
    {
      v30 = v29;
      sub_1B11218CC();

      swift_unknownObjectRelease();
      v31 = OUTLINED_FUNCTION_16();
      sub_1B1070FD4(v31, v32);
      OUTLINED_FUNCTION_16();
      v33 = sub_1B11218AC();
      v34 = OUTLINED_FUNCTION_16();
      sub_1B106C204(v34, v35);
    }

    else
    {
      swift_unknownObjectRelease();
      v33 = 0;
    }

    [v19 setEncodedNormalizedTopic_];

    v43 = OUTLINED_FUNCTION_16();
    sub_1B106C1F0(v43, v44);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v19;
}

uint64_t sub_1B1082878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1B1067964(a1, &qword_1EB739D18, &qword_1B1134398);
    sub_1B10A5A6C(a2, v8);
    v13 = sub_1B112186C();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B1067964(v8, &qword_1EB739D18, &qword_1B1134398);
  }

  else
  {
    sub_1B108C048(a1, v11, &unk_1EB73A450, &qword_1B11343A0);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1B107FD88(v11, a2);
    *v3 = v17;
    v15 = sub_1B112186C();
    return (*(*(v15 - 8) + 8))(a2, v15);
  }
}

uint64_t sub_1B1082A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_17_0();
}

uint64_t sub_1B1082A88()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *MEMORY[0x1E695ABC8];
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = sub_1B1082B4C;
  v7 = v0[2];
  v8 = v0[3];
  v9.n128_u32[0] = v4;

  return MEMORY[0x1EEE28270](v7, v8, v2, v3, v9);
}

uint64_t sub_1B1082B4C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return v3();
}

uint64_t sub_1B1082C2C()
{
  OUTLINED_FUNCTION_9_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D00, &qword_1B1134330);
  OUTLINED_FUNCTION_17(v7);
  v1[8] = OUTLINED_FUNCTION_42();
  v8 = type metadata accessor for PARImageLoader.ImageLocation(0);
  v1[9] = v8;
  OUTLINED_FUNCTION_17(v8);
  v1[10] = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1082CE4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v3;
  sub_1B108304C(v4, v3, v1);
  OUTLINED_FUNCTION_35(v1, 1, v2);
  if (v6)
  {
    sub_1B1067964(v0[8], &qword_1EB739D00, &qword_1B1134330);
    v7 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v7);
    OUTLINED_FUNCTION_4_3(v8, 3);

    OUTLINED_FUNCTION_13_0();

    return v9();
  }

  else
  {
    sub_1B1088908(v0[8], v0[10]);
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_1B1082E4C;

    return sub_1B108359C();
  }
}

uint64_t sub_1B1082E4C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;
  v7[12] = v0;

  if (!v0)
  {
    v7[13] = v3;
    v7[14] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1082F60()
{
  OUTLINED_FUNCTION_9_0();
  sub_1B108896C(v0[10]);

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_1B1082FDC()
{
  OUTLINED_FUNCTION_9_0();
  sub_1B108896C(*(v0 + 80));

  OUTLINED_FUNCTION_13_0();

  return v1();
}

uint64_t sub_1B108304C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v82 = type metadata accessor for PARImageLoader.ImageLocation(0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D00, &qword_1B1134330);
  v9 = OUTLINED_FUNCTION_17(v8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v12 = OUTLINED_FUNCTION_17(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v78 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v78 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v78 - v26;
  v28 = sub_1B112186C();
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v80 = a2;
    v78 = a1;
    v37 = [v36 darkUrlValue];
    v79 = v19;
    if (v37)
    {
      v38 = v37;
      sub_1B112183C();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = OUTLINED_FUNCTION_27();
    sub_1B1067964(v40, v41, &qword_1B1133BF0);
    __swift_storeEnumTagSinglePayload(v22, v39, 1, v28);
    OUTLINED_FUNCTION_37_0();
    sub_1B108C048(v42, v43, v44, &qword_1B1133BF0);
    v45 = [v36 urlValue];
    if (v45)
    {
      v46 = v45;
      v47 = v79;
      sub_1B112183C();

      sub_1B1067964(v25, &qword_1EB73A130, &qword_1B1133BF0);
      v48 = 0;
    }

    else
    {
      sub_1B1067964(v25, &qword_1EB73A130, &qword_1B1133BF0);

      v48 = 1;
      v47 = v79;
    }

    a2 = v80;
    __swift_storeEnumTagSinglePayload(v47, v48, 1, v28);
    sub_1B108C048(v47, v25, &qword_1EB73A130, &qword_1B1133BF0);
  }

  v49 = sub_1B108B848(a1, &selRef_identifier);
  v51 = v50;
  sub_1B108BF6C(v25, v84, &qword_1EB73A130, &qword_1B1133BF0);
  sub_1B108BF6C(v27, v85, &qword_1EB73A130, &qword_1B1133BF0);
  if (a2)
  {
    v52 = [a2 hasDarkAppearance];

    a1 = a2;
  }

  else
  {
    v52 = 0;
  }

  sub_1B1067964(v25, &qword_1EB73A130, &qword_1B1133BF0);
  v53 = OUTLINED_FUNCTION_27();
  sub_1B1067964(v53, v54, &qword_1B1133BF0);
  if (!v51 && (OUTLINED_FUNCTION_35(v85, 1, v28), v55) && (OUTLINED_FUNCTION_35(v84, 1, v28), v55))
  {
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v56, v57, v58);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v59, v60, v61);
    v63 = v81;
    v62 = v82;
    OUTLINED_FUNCTION_20();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
  }

  else
  {
    *v7 = v49;
    v7[1] = v51;
    v62 = v82;
    sub_1B108BF6C(v84, v7 + *(v82 + 20), &qword_1EB73A130, &qword_1B1133BF0);
    sub_1B108BF6C(v85, v7 + *(v62 + 24), &qword_1EB73A130, &qword_1B1133BF0);
    *(v7 + *(v62 + 28)) = v52;
    v67 = v7;
    v63 = v81;
    sub_1B1088908(v67, v81);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v62);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v68, v69, v70);
    OUTLINED_FUNCTION_37_0();
    sub_1B1067964(v71, v72, v73);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v62);
  v75 = v83;
  if (EnumTagSinglePayload)
  {
    sub_1B1067964(v63, &qword_1EB739D00, &qword_1B1134330);
    v76 = 1;
  }

  else
  {
    sub_1B1088908(v63, v83);
    v76 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v75, v76, 1, v62);
}

uint64_t sub_1B108359C()
{
  OUTLINED_FUNCTION_9_0();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[9] = v4;
  v1[8] = v5;
  v6 = sub_1B11228DC();
  v1[13] = v6;
  OUTLINED_FUNCTION_7(v6);
  v1[14] = v7;
  v1[15] = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_42();
  v9 = sub_1B11228AC();
  v1[17] = v9;
  OUTLINED_FUNCTION_7(v9);
  v1[18] = v10;
  v1[19] = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_42();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  OUTLINED_FUNCTION_17(v12);
  v1[21] = OUTLINED_FUNCTION_42();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  OUTLINED_FUNCTION_17(v13);
  v1[22] = OUTLINED_FUNCTION_42();
  v14 = sub_1B112186C();
  v1[23] = v14;
  OUTLINED_FUNCTION_7(v14);
  v1[24] = v15;
  v1[25] = *(v16 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1B108376C()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_1B1084564(v2);
  OUTLINED_FUNCTION_35(v2, 1, v1);
  if (v3)
  {
    v4 = v0[8];
    sub_1B1067964(v0[22], &qword_1EB73A130, &qword_1B1133BF0);
    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_13;
    }

    v26 = 0;
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[24];
    v9 = v0[23];
    v73 = v0[21];
    v76 = v0[20];
    v10 = v0[18];
    v66 = v0[25];
    v67 = v0[19];
    v11 = v0[17];
    v62 = v7;
    v63 = v11;
    v80 = v0[16];
    v12 = v0[14];
    v78 = v0[13];
    v60 = v9;
    v65 = v0[11];
    v61 = v0[10];
    v13 = v0[9];
    v75 = v0[8];
    v68 = v6;
    v70 = *(v8 + 32);
    v70(v6, v0[22], v9);
    sub_1B1122C5C();
    OUTLINED_FUNCTION_20();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_45();
    v64 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v7, v6, v9);
    (*(v10 + 16))(v76, v61, v11);
    (*(v12 + 16))(v80, v65, v78);
    v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v19 = (v66 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (*(v10 + 80) + v19 + 8) & ~*(v10 + 80);
    v21 = (v67 + *(v12 + 80) + v20) & ~*(v12 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v64;
    v70(&v22[v18], v62, v60);
    *&v22[v19] = v13;
    (*(v10 + 32))(&v22[v20], v76, v63);
    (*(v12 + 32))(&v22[v21], v80, v78);
    v23 = OUTLINED_FUNCTION_8_0();
    v26 = sub_1B1085A3C(v23, v24, v73, v25, v22);
    (*(v8 + 8))(v68, v60);
    v5 = *(v75 + 8);
    if (!v5)
    {
      if (v26)
      {
        v47 = 0;
        v42 = v26;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  v0[28] = v26;
  v27 = v0[20];
  v79 = v0[21];
  v81 = v26;
  v28 = v0[18];
  v29 = v0[16];
  v30 = v0[17];
  v69 = v27;
  v31 = v0[14];
  v74 = v0[19];
  v32 = v0[10];
  v71 = v0[11];
  v72 = v0[13];
  v33 = v0[9];
  v77 = *v0[8];
  sub_1B1122C5C();
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_45();
  v38 = swift_allocObject();
  swift_weakInit();
  (*(v28 + 16))(v27, v32, v30);
  (*(v31 + 16))(v29, v71, v72);
  v39 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v40 = (v74 + *(v31 + 80) + v39) & ~*(v31 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v38;
  *(v41 + 5) = v77;
  *(v41 + 6) = v5;
  *(v41 + 7) = v33;
  (*(v28 + 32))(&v41[v39], v69, v30);
  (*(v31 + 32))(&v41[v40], v29, v72);
  v42 = v81;

  v43 = OUTLINED_FUNCTION_8_0();
  v46 = sub_1B1085A3C(v43, v44, v79, v45, v41);
  v47 = v46;
  v0[29] = v46;
  if (v81)
  {
    if (v46)
    {

      v48 = swift_task_alloc();
      v0[30] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      OUTLINED_FUNCTION_46();
      v0[31] = v49;
      *v48 = v50;
      v48[1] = sub_1B1083DB8;
      v51 = MEMORY[0x1E6969080];
      v52 = v0 + 4;
      v53 = v81;
LABEL_18:

      return MEMORY[0x1EEE6DA10](v52, v53, v51);
    }

    v26 = v81;
LABEL_17:
    v0[36] = v47;
    v0[37] = v26;
    v0[35] = v42;

    v58 = swift_task_alloc();
    v0[38] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    OUTLINED_FUNCTION_46();
    *v58 = v59;
    v58[1] = sub_1B10841B0;
    v51 = MEMORY[0x1E6969080];
    v52 = v0 + 2;
    v53 = v26;
    goto LABEL_18;
  }

  if (v46)
  {
    v42 = 0;
    v26 = v46;
    goto LABEL_17;
  }

LABEL_13:
  v54 = sub_1B10887F0();
  OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v54);
  OUTLINED_FUNCTION_4_3(v55, 3);
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();

  return v56();
}

uint64_t sub_1B1083DB8()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1083EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1B1083F58()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[32];
  OUTLINED_FUNCTION_18_0();

  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[33] = v2;
  *v2 = v3;
  v2[1] = sub_1B1084010;
  v4 = v0[29];
  v5 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DA10](v0 + 6, v4, v5);
}

uint64_t sub_1B1084010()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1084118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1B10841B0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B10842AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_43();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1B1084350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();

  v24 = *(v14 + 160);
  v25 = *(v14 + 128);
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, a11, a12, a13, a14);
}

uint64_t sub_1B1084424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();

  v24 = *(v14 + 160);
  v25 = *(v14 + 128);
  OUTLINED_FUNCTION_18_0();
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, a11, a12, a13, a14);
}

uint64_t sub_1B10844F0()
{

  return v0;
}

uint64_t sub_1B1084530()
{
  sub_1B10844F0();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B1084564@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PARImageLoader.ImageLocation(0);
  v11 = v10;
  if (*(v1 + v10[7]) != 1)
  {
    sub_1B108BF6C(v1 + v10[5], v7, &qword_1EB73A130, &qword_1B1133BF0);
    v16 = sub_1B112186C();
    OUTLINED_FUNCTION_35(v7, 1, v16);
    if (!v13)
    {
      (*(*(v16 - 8) + 32))(a1, v7, v16);
      v17 = OUTLINED_FUNCTION_21();
      v20 = v16;
      return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    }

    sub_1B108BF6C(v1 + v11[6], a1, &qword_1EB73A130, &qword_1B1133BF0);
    result = OUTLINED_FUNCTION_35(v7, 1, v16);
    if (v13)
    {
      return result;
    }

    v15 = v7;
    return sub_1B1067964(v15, &qword_1EB73A130, &qword_1B1133BF0);
  }

  sub_1B108BF6C(v1 + v10[6], v9, &qword_1EB73A130, &qword_1B1133BF0);
  v12 = sub_1B112186C();
  OUTLINED_FUNCTION_35(v9, 1, v12);
  if (v13)
  {
    sub_1B108BF6C(v1 + v11[5], a1, &qword_1EB73A130, &qword_1B1133BF0);
    result = OUTLINED_FUNCTION_35(v9, 1, v12);
    if (v13)
    {
      return result;
    }

    v15 = v9;
    return sub_1B1067964(v15, &qword_1EB73A130, &qword_1B1133BF0);
  }

  (*(*(v12 - 8) + 32))(a1, v9, v12);
  v17 = OUTLINED_FUNCTION_21();
  v20 = v12;
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_1B10847BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 64) = a2;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B10847E8, 0, 0);
}

uint64_t sub_1B10847E8()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40();
  Strong = swift_weakLoadStrong();
  *(v0 + 11) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 12) = v2;
    *v2 = v0;
    v2[1] = sub_1B10848F0;
    v3 = *(v0 + 9);
    v4 = *(v0 + 10);
    v5 = v0[8];
    v6 = *(v0 + 7);

    return sub_1B1084ACC(v6, v3, v4, v5);
  }

  else
  {
    v8 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v8);
    OUTLINED_FUNCTION_4_3(v9, 4);
    OUTLINED_FUNCTION_13_0();

    return v10();
  }
}

uint64_t sub_1B10848F0()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1084A04()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[5];

  *v3 = v2;
  v3[1] = v1;
  OUTLINED_FUNCTION_6_2();

  return v4();
}

uint64_t sub_1B1084A70()
{
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_13_0();

  return v0();
}

uint64_t sub_1B1084ACC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 64) = a2;
  *(v5 + 56) = a4;
  *(v5 + 48) = a1;
  v6 = sub_1B11228EC();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_1B112277C();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v8 = sub_1B11228AC();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v9 = sub_1B112186C();
  *(v5 + 192) = v9;
  *(v5 + 200) = *(v9 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v10 = sub_1B112173C();
  *(v5 + 240) = v10;
  *(v5 + 248) = *(v10 - 8);
  *(v5 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1084D5C, 0, 0);
}

uint64_t sub_1B1084D5C()
{
  v47 = v0;
  sub_1B1122CAC();
  sub_1B1086C6C();
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[6];
  v0[33] = os_transaction_create();
  v5 = *(v3 + 16);
  v0[34] = v5;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  sub_1B112172C();
  sub_1B112170C();
  if (qword_1EDAD5500 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1EDAD5500);
  }

  v6 = sub_1B112296C();
  __swift_project_value_buffer(v6, qword_1EDAD5508);
  v7 = OUTLINED_FUNCTION_39();
  (v5)(v7);
  v8 = sub_1B112293C();
  v9 = sub_1B1122DFC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  if (v10)
  {
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v44 = OUTLINED_FUNCTION_55();
    v46[0] = v44;
    *v13 = 136315394;
    OUTLINED_FUNCTION_16_1();
    sub_1B108B7A8(v14, v15, MEMORY[0x1E6968FE0]);
    log = v8;
    v16 = v5;
    v17 = sub_1B112308C();
    v19 = v18;
    v42 = v9;
    v20 = *(v11 + 8);
    v21 = OUTLINED_FUNCTION_38();
    v20(v21);
    v22 = v17;
    v5 = v16;
    v23 = sub_1B10784E0(v22, v19, v46);

    *(v13 + 4) = v23;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v12;
    _os_log_impl(&dword_1B1064000, log, v42, "fetching image %s with timeout %f", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {

    v20 = *(v11 + 8);
    v24 = OUTLINED_FUNCTION_38();
    v20(v24);
  }

  v0[36] = v20;
  v5(v0[27], v0[6], v0[24]);
  v25 = sub_1B11228CC();
  v26 = sub_1B1122E5C();
  if (sub_1B1122EAC())
  {
    v45 = v26;
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_55();
    v46[0] = v28;
    *v27 = 136446210;
    v29 = sub_1B112181C();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_38();
    v20(v32);
    v33 = sub_1B10784E0(v29, v31, v46);

    *(v27 + 4) = v33;
    v34 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v25, v45, v34, "image_fetch", "url=%{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_38();
    v20(v35);
  }

  (*(v0[20] + 16))(v0[23], v0[8], v0[19]);
  sub_1B112291C();
  swift_allocObject();
  v0[37] = sub_1B112290C();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  v0[38] = v36;
  *v36 = v37;
  v36[1] = sub_1B1085284;
  v38 = v0[32];
  v39 = v0[17];
  v40 = v0[6];

  return sub_1B1087044(v39, v38, v40);
}

uint64_t sub_1B1085284()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1085380()
{
  v42 = v0;
  v1 = v0[34];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[6];
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  v1(v2, v4, v3);
  v5 = sub_1B11228CC();
  sub_1B11228FC();
  v6 = sub_1B1122E4C();
  if (sub_1B1122EAC())
  {
    v39 = v6;

    sub_1B112292C();

    v7 = OUTLINED_FUNCTION_36();
    if (v8(v7) == *MEMORY[0x1E69E93E8])
    {
      v9 = 0;
      v10 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[14], v0[11]);
      format = "url=%{public}s";
      v10 = 2;
      v9 = 1;
    }

    v15 = v0[26];
    v16 = v0[24];
    v35 = v0[36];
    v36 = v0[22];
    v17 = v0[20];
    v38 = v0[19];
    v18 = swift_slowAlloc();
    v19 = OUTLINED_FUNCTION_55();
    v41 = v19;
    *v18 = v10;
    *(v18 + 1) = v9;
    *(v18 + 2) = 2082;
    v20 = sub_1B112181C();
    v22 = v21;
    v35(v15, v16);
    v23 = sub_1B10784E0(v20, v22, &v41);

    *(v18 + 4) = v23;
    v24 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v5, v39, v24, "image_fetch", format, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();

    (*(v17 + 8))(v36, v38);
  }

  else
  {
    v11 = v0[36];

    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    v14 = OUTLINED_FUNCTION_39();
    v11(v14);
  }

  v25 = v0[32];
  v26 = v0[30];
  v27 = v0[31];
  v28 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = sub_1B112275C();
  v40 = v32;

  (*(v29 + 8))(v28, v30);
  (*(v27 + 8))(v25, v26);
  swift_unknownObjectRelease();

  v33 = v0[1];

  return v33(v31, v40);
}

uint64_t sub_1B1085730()
{
  v26 = v0;
  v1 = v0[39];
  v2 = v1;
  v3 = sub_1B11228CC();
  sub_1B11228FC();
  v4 = sub_1B1122E4C();

  if (sub_1B1122EAC())
  {

    sub_1B112292C();

    v5 = OUTLINED_FUNCTION_36();
    if (v6(v5) == *MEMORY[0x1E69E93E8])
    {
      v7 = 0;
      v8 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      format = "error=%{public}s";
      v8 = 2;
      v7 = 1;
    }

    v12 = v0[20];
    v11 = v0[21];
    v24 = v0[19];
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_55();
    v25 = v14;
    *v13 = v8;
    *(v13 + 1) = v7;
    *(v13 + 2) = 2082;
    swift_getErrorValue();
    v15 = sub_1B11230FC();
    v17 = sub_1B10784E0(v15, v16, &v25);

    *(v13 + 4) = v17;
    v18 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v3, v4, v18, "image_fetch", format, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();

    (*(v12 + 8))(v11, v24);
  }

  else
  {

    v9 = OUTLINED_FUNCTION_39();
    v10(v9);
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v19 = OUTLINED_FUNCTION_36();
  v20(v19);

  OUTLINED_FUNCTION_13_0();

  return v21();
}

uint64_t sub_1B1085A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B108BF6C(a3, v21 - v9, &qword_1EB73A100, &unk_1B1134340);
  v11 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v10, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B1122C0C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B1122A9C() + 32;

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

      sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);

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

  sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B1085CC4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 72) = a2;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a1;
  *(v9 + 48) = a5;
  v10 = sub_1B112186C();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1085D90, 0, 0);
}

uint64_t sub_1B1085D90()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = *(Strong + 40);

    swift_task_alloc();
    OUTLINED_FUNCTION_23();
    v0[17] = v2;
    *v2 = v3;
    v2[1] = sub_1B1085EA8;
    v4 = v0[14];
    v5 = v0[7];
    v6 = v0[8];

    return sub_1B10862A4(v4, v5, v6);
  }

  else
  {
    v8 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v8);
    OUTLINED_FUNCTION_4_3(v9, 4);

    OUTLINED_FUNCTION_13_0();

    return v10();
  }
}

uint64_t sub_1B1085EA8()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v6 = v5;
  *(v3 + 18) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = swift_task_alloc();
    *(v3 + 19) = v10;
    *v10 = v5;
    v10[1] = sub_1B108600C;
    v11 = *(v3 + 10);
    v12 = *(v3 + 11);
    v13 = v3[9];
    v14 = *(v3 + 14);

    return sub_1B1084ACC(v14, v11, v12, v13);
  }
}

uint64_t sub_1B108600C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_5();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;
  v7[20] = v0;

  if (!v0)
  {
    v7[21] = v3;
    v7[22] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1086120()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_19_0();
  v5(v4);
  *v3 = v1;
  v3[1] = v2;

  OUTLINED_FUNCTION_6_2();

  return v6();
}

uint64_t sub_1B10861B4()
{
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_13_0();

  return v0();
}

uint64_t sub_1B1086220()
{
  OUTLINED_FUNCTION_15_0();

  v0 = OUTLINED_FUNCTION_19_0();
  v1(v0);

  OUTLINED_FUNCTION_13_0();

  return v2();
}

uint64_t sub_1B10862A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1086344, 0, 0);
}

uint64_t sub_1B1086344()
{
  OUTLINED_FUNCTION_9_0();
  v1 = OUTLINED_FUNCTION_53();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B10863D8;

  return v3();
}

uint64_t sub_1B10863D8()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_5();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B108650C()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1B10A790C(v0[3], v0[4], v0[8]);
  v3 = v2;

  if (v3)
  {
    v4 = v0[6];
    OUTLINED_FUNCTION_27();
    sub_1B112185C();
    v5 = sub_1B112186C();
    OUTLINED_FUNCTION_35(v4, 1, v5);
    if (!v6)
    {
      v13 = v0[6];
      v14 = v0[2];

      (*(*(v5 - 8) + 32))(v14, v13, v5);

      OUTLINED_FUNCTION_6_2();
      goto LABEL_7;
    }

    sub_1B1067964(v0[6], &qword_1EB73A130, &qword_1B1133BF0);
    v7 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v7);
    *v8 = v1;
    *(v8 + 8) = v3;
    *(v8 + 16) = 0;
    *(v8 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    v9 = v0[3];
    v10 = v0[4];
    v11 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v11);
    *v12 = v9;
    *(v12 + 8) = v10;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_13_0();
LABEL_7:

  return v15();
}

void sub_1B10866A8(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v49 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v55 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v18 = swift_dynamicCast();
  v54 = v8;
  if (v18)
  {
    v19 = v57;
    v20 = v58;
    v21 = v59;
    if (v60 == 4)
    {
      a1 = v57;
      goto LABEL_6;
    }

    sub_1B108BFB8(v57, v58, v59, v60);
  }

  v19 = a1;
  v20 = 0;
  v21 = 0;
LABEL_6:
  v22 = (*(v2 + 16))(v19);
  if (!v22)
  {
LABEL_11:

    goto LABEL_29;
  }

  v23 = v22;
  if ((sub_1B1088560(a1) & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v53 = v23;
  v24 = 0x296C696E28;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1B1122F9C();

  v57 = 0xD000000000000012;
  v58 = 0x80000001B1135C20;
  v25 = a2[1];
  v51 = v20;
  v52 = v21;
  if (v25)
  {
    v24 = *a2;
    v26 = v25;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1B272DAD0](v24, v26);

  v27 = type metadata accessor for PARImageLoader.ImageLocation(0);
  v50 = *(v27 + 20);
  sub_1B108BF6C(a2 + v50, v16, &qword_1EB73A130, &qword_1B1133BF0);
  v28 = sub_1B112186C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v28);
  sub_1B1067964(v16, &qword_1EB73A130, &qword_1B1133BF0);
  if (EnumTagSinglePayload != 1 || (sub_1B108BF6C(a2 + *(v27 + 24), v14, &qword_1EB73A130, &qword_1B1133BF0), v30 = __swift_getEnumTagSinglePayload(v14, 1, v28), sub_1B1067964(v14, &qword_1EB73A130, &qword_1B1133BF0), v30 != 1))
  {
    v55 = 32;
    v56 = 0xE100000000000000;
    sub_1B108BF6C(a2 + v50, v11, &qword_1EB73A130, &qword_1B1133BF0);
    v31 = v28;
    if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
    {
      sub_1B1067964(v11, &qword_1EB73A130, &qword_1B1133BF0);
      v32 = 0xE500000000000000;
      v33 = 0x296C696E28;
      v34 = 0x296C696E28;
      v35 = v54;
    }

    else
    {
      v34 = sub_1B112181C();
      v32 = v36;
      (*(*(v28 - 8) + 8))(v11, v28);
      v35 = v54;
      v33 = 0x296C696E28;
    }

    MEMORY[0x1B272DAD0](v34, v32);

    MEMORY[0x1B272DAD0](8236, 0xE200000000000000);
    sub_1B108BF6C(a2 + *(v27 + 24), v35, &qword_1EB73A130, &qword_1B1133BF0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v31) == 1)
    {
      sub_1B1067964(v35, &qword_1EB73A130, &qword_1B1133BF0);
      v37 = 0xE500000000000000;
    }

    else
    {
      v33 = sub_1B112181C();
      v38 = v31;
      v37 = v39;
      (*(*(v38 - 8) + 8))(v35, v38);
    }

    MEMORY[0x1B272DAD0](v33, v37);

    MEMORY[0x1B272DAD0](v55, v56);
  }

  v40 = objc_allocWithZone(_CPErrorFeedback);
  v41 = a1;
  v42 = sub_1B108B744(a1);
  v43 = [v42 error];
  if (v43)
  {
    v44 = v43;
    sub_1B1074A10(v57, v58, v43, &selRef_setReason_);
  }

  else
  {
  }

  if (v52)
  {
    v45 = sub_1B1122A4C();
  }

  else
  {
    v45 = 0;
  }

  [v42 setRelatedStartNetworkSearchFeedbackId_];

  v46 = [objc_opt_self() sharedSession];
  v47 = [v46 configuration];

  v48 = v42;
  sub_1B1099EEC();
  swift_unknownObjectRelease();

LABEL_29:
}

uint64_t sub_1B1086C6C()
{
  v0 = sub_1B112184C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = v0 == 1886680168 && v1 == 0xE400000000000000;
    if (v4 || (sub_1B11230AC() & 1) != 0)
    {
    }

    v5 = v2 == 0x7370747468 && v3 == 0xE500000000000000;
    if (v5 || (sub_1B11230AC() & 1) != 0)
    {
    }

    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v19 = sub_1B112296C();
    __swift_project_value_buffer(v19, qword_1EDAD5508);

    v20 = sub_1B112293C();
    v21 = sub_1B1122DDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1B10784E0(v2, v3, &v27);
      _os_log_impl(&dword_1B1064000, v20, v21, "Unsupported URL scheme: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B272EDD0](v23, -1, -1);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    if (v2 == 1701603686 && v3 == 0xE400000000000000)
    {

      v26 = 5;
    }

    else
    {
      v25 = sub_1B11230AC();

      if (v25)
      {
        v26 = 5;
      }

      else
      {
        v26 = 0;
      }
    }

    sub_1B10887F0();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = v26;
    v18 = 5;
  }

  else
  {
    v7 = sub_1B112181C();
    v9 = v8;
    v10 = qword_1EDAD5500;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1B112296C();
    __swift_project_value_buffer(v11, qword_1EDAD5508);

    v12 = sub_1B112293C();
    v13 = sub_1B1122DDC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = sub_1B10784E0(v7, v9, &v27);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1B1064000, v12, v13, "invalid SFImage url %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B272EDD0](v15, -1, -1);
      MEMORY[0x1B272EDD0](v14, -1, -1);
    }

    else
    {
    }

    sub_1B10887F0();
    swift_allocError();
    *v17 = v7;
    *(v17 + 8) = v9;
    *(v17 + 16) = 0;
    v18 = 2;
  }

  *(v17 + 24) = v18;
  return swift_willThrow();
}

uint64_t sub_1B1087044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1B112186C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1B112277C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1087164, 0, 0);
}

uint64_t sub_1B1087164()
{
  OUTLINED_FUNCTION_15_0();
  v0[16] = *(v0[9] + 24);
  v0[17] = sub_1B10878A8();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_23();
  v0[18] = v1;
  *v1 = v2;
  v1[1] = sub_1B1087270;
  v3 = v0[15];
  v5 = v0[7];
  v4 = v0[8];

  return v7(v3, v4, v5);
}

uint64_t sub_1B1087270()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B108736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_48();
  (*(*(v14 + 112) + 32))(*(v14 + 48), *(v14 + 120), *(v14 + 104));
  v15 = sub_1B112276C();
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_6:
    v29 = *(v14 + 136);
    v30 = sub_1B10887F0();
    OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v30);
    OUTLINED_FUNCTION_4_3(v31, 2);

    v32 = OUTLINED_FUNCTION_27();
    v33(v32);
    goto LABEL_11;
  }

  v18 = v17;
  a10 = [v17 statusCode];
  v19 = sub_1B112275C();
  v21 = v20;
  v22 = MEMORY[0x1B272C8C0]();
  sub_1B106C204(v19, v21);
  v23 = sub_1B112274C();
  v24 = sub_1B1122A4C();
  v25 = [v18 valueForHTTPHeaderField_];

  if (v25)
  {
    v26 = sub_1B1122A5C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v34 = *(v14 + 152);
  sub_1B1087A60(a10, v22, v23, v26, v28, *(v14 + 136));
  if (!v34)
  {
    v36 = *(v14 + 64);

    sub_1B1087D28(v18, v36);
    v37 = *(v14 + 136);

    OUTLINED_FUNCTION_6_2();
    goto LABEL_12;
  }

  v35 = *(v14 + 136);
  (*(*(v14 + 112) + 8))(*(v14 + 48), *(v14 + 104));

LABEL_11:

  OUTLINED_FUNCTION_13_0();
LABEL_12:
  OUTLINED_FUNCTION_32();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1B10875EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_48();
  a20 = v22;
  if (qword_1EDAD5500 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1EDAD5500);
  }

  v25 = v22[19];
  v26 = sub_1B112296C();
  __swift_project_value_buffer(v26, qword_1EDAD5508);
  v27 = OUTLINED_FUNCTION_39();
  v28(v27);
  v29 = v25;
  v30 = sub_1B112293C();
  v31 = sub_1B1122DDC();

  if (os_log_type_enabled(v30, v31))
  {
    a9 = v22[19];
    v33 = v22[11];
    v32 = v22[12];
    v34 = v22[10];
    v35 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v35 = 136315394;
    OUTLINED_FUNCTION_16_1();
    sub_1B108B7A8(v36, v37, MEMORY[0x1E6968FE0]);
    v38 = sub_1B112308C();
    v40 = v39;
    (*(v33 + 8))(v32, v34);
    v41 = sub_1B10784E0(v38, v40, &a10);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    swift_getErrorValue();
    v42 = sub_1B11230FC();
    v44 = sub_1B10784E0(v42, v43, &a10);

    *(v35 + 14) = v44;
    _os_log_impl(&dword_1B1064000, v30, v31, "error fetching image %s: %s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {

    v45 = OUTLINED_FUNCTION_39();
    v46(v45);
  }

  v47 = v22[19];
  v48 = v22[17];
  v49 = sub_1B108B848(v48, &selRef_uuid);
  v51 = v50;
  v52 = sub_1B10887F0();
  OUTLINED_FUNCTION_31(&type metadata for PARImageLoader.Error, v52);
  *v53 = v47;
  *(v53 + 8) = v49;
  *(v53 + 16) = v51;
  *(v53 + 24) = 4;
  swift_willThrow();

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_32();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}

id sub_1B10878A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1())
  {
    v3 = [objc_opt_self() startSearchFeedbackWithUUID];
    v4 = sub_1B112181C();
    sub_1B1074A10(v4, v5, v3, &selRef_setUrl_);
    [v3 setTriggerEvent_];
    [v3 setEndpoint_];
    if (sub_1B112171C())
    {
      v6 = sub_1B11229DC();
    }

    else
    {
      v6 = 0;
    }

    [v3 setHeaders_];

    v8 = [objc_opt_self() sharedSession];
    v9 = [v8 configuration];

    v2 = v3;
    sub_1B1099EEC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 4;
    *(v7 + 24) = 5;
    swift_willThrow();
  }

  return v2;
}

void sub_1B1087A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((*(v6 + 16))())
  {
    v13 = objc_allocWithZone(_CPEndNetworkSearchFeedback);

    v14 = a6;
    v15 = sub_1B108B5D8(a6, a2, a1, 0, 0, 0, 0, 0, 0.0, 0, a3);
    if (a5)
    {
      sub_1B108B7F0(a4, a5, v15);
    }

    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v16 = sub_1B112296C();
    __swift_project_value_buffer(v16, qword_1EDAD5508);

    v17 = sub_1B112293C();
    v18 = sub_1B1122DCC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D10, &qword_1B1134390);
      v21 = sub_1B1122A7C();
      v23 = sub_1B10784E0(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B1064000, v17, v18, "x-edge value for image load request - %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1B272EDD0](v20, -1, -1);
      MEMORY[0x1B272EDD0](v19, -1, -1);
    }

    v24 = [objc_opt_self() sharedSession];
    v25 = [v24 configuration];

    v26 = v15;
    sub_1B1099EEC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    swift_allocError();
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *v27 = 4;
    *(v27 + 24) = 5;
    swift_willThrow();
  }
}

id sub_1B1087D28(void *a1, uint64_t a2)
{
  v4 = sub_1B112186C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &selRef_setSearchIndex_;
  result = [a1 statusCode];
  if (result != 200)
  {
    if (qword_1EDAD5500 != -1)
    {
      swift_once();
    }

    v10 = sub_1B112296C();
    __swift_project_value_buffer(v10, qword_1EDAD5508);
    (*(v5 + 16))(v7, a2, v4);
    v11 = a1;
    v12 = sub_1B112293C();
    v13 = sub_1B1122DDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 134218242;
      *(v14 + 4) = [v11 statusCode];

      *(v14 + 12) = 2080;
      sub_1B108B7A8(&qword_1EDAD55A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v15 = sub_1B112308C();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_1B10784E0(v15, v17, &v24);
      v8 = &selRef_setSearchIndex_;

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1B1064000, v12, v13, "bad status code %ld for %s", v14, 0x16u);
      v19 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B272EDD0](v19, -1, -1);
      MEMORY[0x1B272EDD0](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v20 = [v11 v8[278]];
    sub_1B10887F0();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = v20;
    *(v21 + 24) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B1088034(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_17_0();
}

uint64_t sub_1B1088048()
{
  OUTLINED_FUNCTION_9_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
  *v1 = v0;
  v1[1] = sub_1B1088124;
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B1088124()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return v10();
  }
}

uint64_t sub_1B1088260(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (sub_1B1122C9C())
    {
      sub_1B1122C3C();
      sub_1B108B7A8(&qword_1EB739CF8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v7 = swift_allocError();
      sub_1B11229CC();
      v13 = v7;
      sub_1B1122C1C();
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v12 = swift_allocObject();
      (*(v4 + 32))(v12 + v11, v6, v3);
      sub_1B109F4D8();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1B10887F0();
    v8 = swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 4;
    *(v9 + 24) = 5;
    v13 = v8;
    return sub_1B1122C1C();
  }
}

uint64_t sub_1B1088494(uint64_t a1)
{
  if (!a1)
  {
    sub_1B1122A0C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  return sub_1B1122C2C();
}

uint64_t sub_1B1088560(void *a1)
{
  v2 = sub_1B1122C3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  if (swift_dynamicCast())
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v14 = a1;
  v8 = a1;
  if (swift_dynamicCast())
  {
    v9 = v13 == 5 && (v11 & 0xFFFFFFFFFFFFFFFELL) == 4;
    if (v9 && v12 == 0)
    {
      return 0;
    }

    sub_1B108BFB8(v11, v12, *(&v12 + 1), v13);
  }

  return 1;
}

uint64_t sub_1B10886CC()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B1088704()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5508);
  __swift_project_value_buffer(v0, qword_1EDAD5508);
  return sub_1B112294C();
}

uint64_t sub_1B1088788(void *a1)
{
  [a1 set:nw_activity_create() nw:? activity:?];

  return swift_unknownObjectRelease();
}

unint64_t sub_1B10887F0()
{
  result = qword_1EDAD5548;
  if (!qword_1EDAD5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5548);
  }

  return result;
}

uint64_t sub_1B1088844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  OUTLINED_FUNCTION_17(v2);

  return sub_1B1088494(a1);
}

uint64_t type metadata accessor for PARImageLoader.ImageLocation(uint64_t a1)
{
  result = qword_1EDAD54E8;
  if (!qword_1EDAD54E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1088908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PARImageLoader.ImageLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B108896C(uint64_t a1)
{
  v2 = type metadata accessor for PARImageLoader.ImageLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10889C8()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  v3 = sub_1B11228DC();
  OUTLINED_FUNCTION_17(v3);
  OUTLINED_FUNCTION_49();
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1088B1C;
  OUTLINED_FUNCTION_1_4();

  return sub_1B1085CC4(v8, v6, v9, v10, v11, v4, v5, v12, v13);
}

uint64_t sub_1B1088B1C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return v3();
}

uint64_t sub_1B1088BFC()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B112186C();
  OUTLINED_FUNCTION_7(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v6);
  v7 = sub_1B11228DC();
  OUTLINED_FUNCTION_17(v7);
  OUTLINED_FUNCTION_49();
  v8 = *(v0 + v5);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return sub_1B10847BC(v10, v8, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1B1088DA4()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1088E40, v0, 0);
}

uint64_t sub_1B1088E40()
{
  OUTLINED_FUNCTION_50();
  sub_1B1122CAC();
  v3 = v0[6];
  v4 = swift_beginAccess();
  v8 = *(v3 + 112);
  v7 = *(v3 + 120);
  switch(*(v3 + 128))
  {
    case 1:
      v11 = v7 + 1;
      if (v7 == -1)
      {
        __break(1u);
      }

      else
      {
        v28 = v0[6];
        if (v28[17] < v11)
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D38, &qword_1B11343F8);
          v30 = sub_1B107A60C(&qword_1EB739D40, &qword_1EB739D38, &qword_1B11343F8, &unk_1B1134F88);
          OUTLINED_FUNCTION_31(v29, v30);
          *v31 = v8;
          swift_willThrow();
          v32 = v8;

          OUTLINED_FUNCTION_13_0();
          OUTLINED_FUNCTION_33();

          __asm { BRAA            X1, X16 }
        }

        v33 = v0[7];
        v35 = v28[18];
        v34 = v28[19];
        sub_1B1122C5C();
        OUTLINED_FUNCTION_20();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v40[4] = v35;
        v40[5] = v34;
        v41 = OUTLINED_FUNCTION_19_0();
        sub_1B108BD6C(v41, v42, 1);

        v43 = OUTLINED_FUNCTION_8_0();
        v46 = sub_1B10898C8(v43, v44, v33, v45, v40);
        v47 = OUTLINED_FUNCTION_19_0();
        sub_1B108BE4C(v47, v48, 1);
        sub_1B1067964(v33, &qword_1EB73A100, &unk_1B1134340);
        *(v3 + 112) = v46;
        *(v3 + 120) = 0;
        LOBYTE(v33) = *(v3 + 128);
        *(v3 + 128) = 0;
        swift_retain_n();
        v49 = OUTLINED_FUNCTION_19_0();
        sub_1B108BE4C(v49, v50, v33);
        v8 = v46;
LABEL_15:
        v0[8] = v11;
        v0[9] = v8;
        v51 = swift_task_alloc();
        v0[10] = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
        OUTLINED_FUNCTION_46();
        *v51 = v52;
        v51[1] = sub_1B1089220;
        OUTLINED_FUNCTION_33();
      }

      return MEMORY[0x1EEE6DA10](v4, v5, v6);
    case 2:

      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X2, X16 }

      return result;
    case 3:
      v14 = v0[6];
      v15 = v0[7];
      v17 = *(v14 + 144);
      v16 = *(v14 + 152);
      sub_1B1122C5C();
      v11 = 1;
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v17;
      v22[5] = v16;

      v23 = OUTLINED_FUNCTION_8_0();
      v8 = sub_1B10898C8(v23, v24, v15, v25, v22);
      sub_1B1067964(v15, &qword_1EB73A100, &unk_1B1134340);
      v26 = *(v3 + 112);
      v27 = *(v3 + 120);
      *(v3 + 112) = v8;
      *(v3 + 120) = 0;
      LOBYTE(v17) = *(v3 + 128);
      *(v3 + 128) = 0;
      swift_retain_n();
      sub_1B108BE4C(v26, v27, v17);
      goto LABEL_15;
    default:
      v9 = OUTLINED_FUNCTION_19_0();
      sub_1B108BD6C(v9, v10, 0);

      v11 = 1;
      goto LABEL_15;
  }
}

uint64_t sub_1B1089220()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1B10893D0;
  }

  else
  {
    v6 = sub_1B1089340;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B1089340()
{
  OUTLINED_FUNCTION_15_0();

  sub_1B1089D54(*(v0 + 40));

  v1 = OUTLINED_FUNCTION_51();

  return v2(v1);
}

uint64_t sub_1B10893D0()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[11];
  v2 = v0[8];

  v3 = sub_1B1089DE8(v1, v2);
  v4 = v0[11];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1B1089480(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1B1089570;

  return v6(v3 + 16);
}

uint64_t sub_1B1089570()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B108966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B108BF6C(a3, v21 - v9, &qword_1EB73A100, &unk_1B1134340);
  v11 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v10, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B1122C0C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B1122A9C() + 32;
      sub_1B112277C();

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

  sub_1B112277C();
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B10898C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1B108BF6C(a3, v21 - v9, &qword_1EB73A100, &unk_1B1134340);
  v11 = sub_1B1122C5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1067964(v10, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1B1122C0C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1B1122A9C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B1089B28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1B1089C18;

  return v6(v3 + 16);
}

uint64_t sub_1B1089C18()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1089D54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 128);
  if (v4 != 2)
  {
    v5 = *(v1 + 120);
    *(v1 + 112) = a1;
    *(v1 + 120) = 0;
    *(v1 + 128) = 2;

    sub_1B108BE4C(v3, v5, v4);
  }
}

void *sub_1B1089DE8(void *a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  switch(v7)
  {
    case 1:
      if (v6 > a2)
      {
        a2 = *(v2 + 120);
      }

      v7 = 1;
      goto LABEL_5;
    case 2:

      break;
    default:
LABEL_5:
      *(v2 + 112) = a1;
      *(v2 + 120) = a2;
      *(v2 + 128) = 1;
      v8 = a1;
      sub_1B108BE4C(v5, v6, v7);
      swift_willThrow();
      v9 = a1;
      break;
  }

  return v5;
}

uint64_t sub_1B1089EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B112277C();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1B112186C();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1B112173C();
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v4[23] = *(v8 + 64);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B108A108, v3, 0);
}

uint64_t sub_1B108A108()
{
  sub_1B1122CAC();
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[14];
  v5 = v0[12];
  swift_beginAccess();
  v6 = *(v4 + 112);

  sub_1B10A7848(v5, v6, v2);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (EnumTagSinglePayload == 1)
  {
    v8 = v0[27];
    v9 = v0[28];
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35(v8, 1, v9);
    if (!v10)
    {
      sub_1B1067964(v0[27], &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v0[27], v0[30], &unk_1EB73A450, &qword_1B11343A0);
  }

  sub_1B108BF6C(v0[30], v0[29], &unk_1EB73A450, &qword_1B11343A0);
  OUTLINED_FUNCTION_19_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v43 = v0[29];
      v44 = v43[1];
      if (v44 == -1)
      {
        __break(1u);
        return MEMORY[0x1EEE6DA10](EnumCaseMultiPayload, v12, v13);
      }

      v45 = *v43;
      v46 = v0[14];
      if (v46[15] < v44 + 1)
      {
        v47 = v0[30];
        v49 = v0[18];
        v48 = v0[19];
        v50 = v0[12];
        v51 = OUTLINED_FUNCTION_38();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
        v54 = sub_1B107A60C(&qword_1EB739D28, &qword_1EB739D20, &qword_1B11343B8, &unk_1B1134FC8);
        OUTLINED_FUNCTION_31(v53, v54);
        v56 = v55;
        v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D30, &qword_1B11343C0) + 48);
        (*(v48 + 16))(v56, v50, v49);
        *(v56 + v57) = v45;
        swift_willThrow();
        sub_1B1067964(v47, &unk_1EB73A450, &qword_1B11343A0);

        OUTLINED_FUNCTION_13_0();
        goto LABEL_2;
      }

      v84 = v0[26];
      v86 = v0[28];
      v88 = v45;
      v90 = v44 + 1;
      v58 = v0[24];
      v59 = v0[25];
      v60 = v0[22];
      v61 = v0[21];
      v62 = v0[19];
      v80 = v0[20];
      v82 = v0[18];
      v63 = v0[13];
      v79 = v0[12];
      v64 = v46[19];
      v77 = v46[18];
      sub_1B1122C5C();
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
      (*(v60 + 16))(v58, v63, v61);
      v69 = (*(v60 + 80) + 48) & ~*(v60 + 80);
      v70 = swift_allocObject();
      *(v70 + 2) = 0;
      *(v70 + 3) = 0;
      *(v70 + 4) = v77;
      *(v70 + 5) = v64;
      (*(v60 + 32))(&v70[v69], v58, v61);

      v71 = OUTLINED_FUNCTION_8_0();
      v14 = sub_1B108966C(v71, v72, v59, v73, v70);
      sub_1B1067964(v59, &qword_1EB73A100, &unk_1B1134340);
      (*(v62 + 16))(v80, v79, v82);
      OUTLINED_FUNCTION_52_0();
      v74 = OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v86);
      swift_beginAccess();
      swift_retain_n();
      sub_1B1082878(v84, v80);
      swift_endAccess();

      v40 = v90;
      goto LABEL_14;
    case 2:
      v15 = v0[29];
      v16 = v0[15];
      v17 = v0[16];
      v18 = v0[11];
      sub_1B1067964(v0[30], &unk_1EB73A450, &qword_1B11343A0);
      (*(v17 + 32))(v18, v15, v16);
      OUTLINED_FUNCTION_41();

      OUTLINED_FUNCTION_6_2();
LABEL_2:

      return v19();
    case 3:
      v20 = v0[25];
      v87 = v0[26];
      v89 = v0[28];
      v21 = v0[24];
      v23 = v0[21];
      v22 = v0[22];
      v24 = v0[19];
      v83 = v0[20];
      v85 = v0[18];
      v26 = v0[13];
      v25 = v0[14];
      v81 = v0[12];
      v27 = *(v25 + 152);
      v78 = *(v25 + 144);
      sub_1B1122C5C();
      OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      (*(v22 + 16))(v21, v26, v23);
      v32 = (*(v22 + 80) + 48) & ~*(v22 + 80);
      v33 = swift_allocObject();
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = v78;
      *(v33 + 5) = v27;
      (*(v22 + 32))(&v33[v32], v21, v23);

      v34 = OUTLINED_FUNCTION_8_0();
      v14 = sub_1B108966C(v34, v35, v20, v36, v33);
      sub_1B1067964(v20, &qword_1EB73A100, &unk_1B1134340);
      (*(v24 + 16))(v83, v81, v85);
      OUTLINED_FUNCTION_52_0();
      v37 = OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v89);
      swift_beginAccess();
      swift_retain_n();
      sub_1B1082878(v87, v83);
      swift_endAccess();
      goto LABEL_13;
    default:
      v14 = *v0[29];

LABEL_13:
      v40 = 1;
LABEL_14:
      v0[31] = v40;
      v0[32] = v14;
      v41 = swift_task_alloc();
      v0[33] = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      OUTLINED_FUNCTION_46();
      *v41 = v42;
      v41[1] = sub_1B108A7EC;
      EnumCaseMultiPayload = v0[17];
      v13 = v0[15];
      v12 = v14;

      return MEMORY[0x1EEE6DA10](EnumCaseMultiPayload, v12, v13);
  }
}

uint64_t sub_1B108A7EC()
{
  OUTLINED_FUNCTION_15_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1B108AA10;
  }

  else
  {
    v6 = sub_1B108A90C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B108A90C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[30];
  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];

  sub_1B108AD40(v2, v3, v4);

  v5 = OUTLINED_FUNCTION_36();
  v6(v5);
  sub_1B1067964(v1, &unk_1EB73A450, &qword_1B11343A0);
  OUTLINED_FUNCTION_41();

  OUTLINED_FUNCTION_6_2();

  return v7();
}

void sub_1B108AA10()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[11];
  v3 = v0[12];

  sub_1B108B174(v1, v3, v2, v4);
  v5 = v0[34];
  sub_1B1067964(v0[30], &unk_1EB73A450, &qword_1B11343A0);

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B108AB30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B108C2DC;

  return v11(a1, a6);
}

uint64_t sub_1B108AC38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B1088B1C;

  return v11(a1, a6);
}

uint64_t sub_1B108AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v32 = a3;
  v29 = sub_1B112186C();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  swift_beginAccess();
  v20 = *(v4 + 112);

  sub_1B10A7848(a2, v20, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_1B1067964(v13, &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v13, v19, &unk_1EB73A450, &qword_1B11343A0);
  }

  sub_1B108BF6C(v19, v17, &unk_1EB73A450, &qword_1B11343A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B1067964(v19, &unk_1EB73A450, &qword_1B11343A0);
      v22 = sub_1B112277C();
      return (*(*(v22 - 8) + 32))(v32, v17, v22);
    }
  }

  else
  {
    sub_1B1067964(v17, &unk_1EB73A450, &qword_1B11343A0);
  }

  v24 = v30;
  (*(v6 + 16))(v30, a2, v29);
  v25 = *(v4 + 128);
  v26 = v31;
  if (!v25 || (v25(v31) & 1) != 0)
  {
    v27 = sub_1B112277C();
    (*(*(v27 - 8) + 16))(v11, v26, v27);
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  swift_beginAccess();
  sub_1B1082878(v11, v24);
  swift_endAccess();
  sub_1B1067964(v19, &unk_1EB73A450, &qword_1B11343A0);
  v28 = sub_1B112277C();
  return (*(*(v28 - 8) + 16))(v32, v26, v28);
}

id sub_1B108B174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v37 = a3;
  v35 = a1;
  v34 = sub_1B112186C();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D18, &qword_1B1134398);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  swift_beginAccess();
  v20 = *(v4 + 112);

  v36 = a2;
  sub_1B10A7848(a2, v20, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_1B1067964(v13, &qword_1EB739D18, &qword_1B1134398);
    }
  }

  else
  {
    sub_1B108C048(v13, v19, &unk_1EB73A450, &qword_1B11343A0);
  }

  sub_1B108BF6C(v19, v17, &unk_1EB73A450, &qword_1B11343A0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *v17;
      v28 = v17[1];

      if (v28 <= v37)
      {
        v28 = v37;
      }

      v29 = v38;
      (*(v6 + 16))(v38, v36, v34);
      v22 = v35;
      *v11 = v35;
      v11[1] = v28;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
      swift_beginAccess();
      v30 = v22;
      v25 = v11;
      v26 = v29;
      goto LABEL_11;
    case 2u:
      sub_1B1067964(v19, &unk_1EB73A450, &qword_1B11343A0);
      v32 = sub_1B112277C();
      return (*(*(v32 - 8) + 32))(v33, v17, v32);
    case 3u:
      goto LABEL_7;
    default:
      sub_1B1067964(v17, &unk_1EB73A450, &qword_1B11343A0);
LABEL_7:
      v21 = v38;
      (*(v6 + 16))(v38, v36, v34);
      v22 = v35;
      v23 = v37;
      *v11 = v35;
      v11[1] = v23;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
      swift_beginAccess();
      v24 = v22;
      v25 = v11;
      v26 = v21;
LABEL_11:
      sub_1B1082878(v25, v26);
      swift_endAccess();
      swift_willThrow();
      sub_1B1067964(v19, &unk_1EB73A450, &qword_1B11343A0);
      return v22;
  }
}

id sub_1B108B5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  if (a5)
  {
    v17 = sub_1B1122A4C();
  }

  else
  {
    v17 = 0;
  }

  if (a7)
  {
    v18 = sub_1B1122A4C();
  }

  else
  {
    v18 = 0;
  }

  if (!a10)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = sub_1B1122A4C();

  if (!a11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = sub_1B11229DC();

LABEL_12:
  v21 = [v11 initWithStartSearch:a1 responseSize:a2 statusCode:a3 parsecStatus:v17 parsecDuration:v18 fbq:v19 partialClientIp:a9 networkTimingData:v20];
  swift_unknownObjectRelease();

  return v21;
}

id sub_1B108B744(void *a1)
{
  if (a1)
  {
    v3 = sub_1B11217EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 initWithError_];

  return v4;
}

uint64_t sub_1B108B7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B108B7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();
  [a3 setEdge_];
}

uint64_t sub_1B108B848(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1B1122A5C();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1B108B8A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B108C2E4;

  return sub_1B1089480(a2, a3, a4);
}

uint64_t sub_1B108B95C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1B108BA14;

  return sub_1B1089B28(a2, a3, a4);
}

uint64_t sub_1B108BA14()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_5();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_6();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1B108BB0C(uint64_t a1)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v2 = sub_1B112173C();
  OUTLINED_FUNCTION_17(v2);
  OUTLINED_FUNCTION_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_43();

  return sub_1B108AC38(v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_1B112173C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B108BC9C(uint64_t a1)
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_29();
  v2 = sub_1B112173C();
  OUTLINED_FUNCTION_17(v2);
  OUTLINED_FUNCTION_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_43();

  return sub_1B108AB30(v5, v6, v7, v8, v9, v10);
}

id sub_1B108BD6C(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 1:
      return result;
    case 0:
  }

  return result;
}

uint64_t sub_1B108BD94()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return v3();
}

void sub_1B108BE4C(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B108BEB4()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1B108C2DC;
  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_1B108BF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v4;
}

void sub_1B108BFB8(void *a1, id a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1B108C048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v4;
}

void sub_1B108C0BC(uint64_t a1)
{
  sub_1B108C150();
  if (v1 <= 0x3F)
  {
    sub_1B108C1A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B108C150()
{
  if (!qword_1EB739630[0])
  {
    v0 = sub_1B1122EDC();
    if (!v1)
    {
      atomic_store(v0, qword_1EB739630);
    }
  }
}

void sub_1B108C1A0(uint64_t a1)
{
  if (!qword_1EDAD54B8)
  {
    sub_1B112186C();
    v1 = sub_1B1122EDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAD54B8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10CoreParsec14PARImageLoaderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B108C228(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
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

uint64_t sub_1B108C268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1B108C2B0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_18_0()
{
  v3 = *(v1 + 64);

  sub_1B10866A8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_1B108C424(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B108CC64(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

id PARLookupSearchResponse.init(reply:factory:data:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

id PARLookupSearchResponse.init(reply:factory:data:)(void *a1, void *a2)
{
  v21[0] = a2;
  v4 = sub_1B11227EC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D48, &qword_1B1134538);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1B1121A0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 initWithReply_];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v13 = OUTLINED_FUNCTION_0_7();
  sub_1B1070FD4(v13, v14);
  sub_1B11227DC();
  sub_1B108C838();
  OUTLINED_FUNCTION_0_7();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v9 + 32))(v11, v7, v8);
  v15 = v12;
  v16 = sub_1B108C8F8(v11, a1, v21[0]);
  sub_1B107191C(v16, v15);
  v17 = sub_1B108CB70();
  sub_1B10725F0(v17, v15);

  swift_unknownObjectRelease();
  v18 = OUTLINED_FUNCTION_0_7();
  sub_1B106C204(v18, v19);
  (*(v9 + 8))(v11, v8);
  return v15;
}

unint64_t sub_1B108C838()
{
  result = qword_1EB739D50;
  if (!qword_1EB739D50)
  {
    sub_1B1121A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739D50);
  }

  return result;
}

uint64_t sub_1B108C890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D48, &qword_1B1134538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B108C8F8(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v23 = a3;
  v3 = sub_1B1121DEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B11219EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B11219FC();
  v11 = sub_1B11219DC();
  (*(v8 + 8))(v10, v7);
  v24 = MEMORY[0x1E69E7CC0];
  v12 = *(v11 + 16);
  if (v12)
  {
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v20[1] = v11;
    v21 = v14;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v21(v6, v15, v3);
      if (!sub_1B1074C20(v22, v23, v6))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v17 = (*(v13 - 8))(v6, v3);
      MEMORY[0x1B272DB50](v17);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v15 += v16;
      --v12;
    }

    while (v12);
    v18 = v24;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1B108CB70()
{
  v1 = sub_1B10725D4(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC8];
    sub_1B108C424(v1, &v4, &v5);

    v2 = v5;
  }

  return v2;
}

void sub_1B108CC64(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B10A5C7C(*a1);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B10A5C88(v5);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v22;
      v17 = [v5 moreResultsButton];
      [v15 setButton_];

      v18 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v19 = v5;
    v23 = sub_1B10725D4(v10);
    if (v23)
    {

      MEMORY[0x1B272DB50](v20);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B108CED0();
      v21 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1B108CED0()
{
  result = qword_1EDAD5528;
  if (!qword_1EDAD5528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD5528);
  }

  return result;
}

uint64_t static ProtobufHelper.processProtobuf(_:result:data:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();

  return sub_1B108D438(a1, a2, a3, a4);
}

id sub_1B108D044(id result)
{
  if (result)
  {
    v1 = result;
    if ([result replyType] == 2)
    {
      return 0;
    }

    result = [v1 task];
    if (result)
    {
      v2 = result;
      v3 = [result request];

      if (!v3)
      {
        return 0;
      }

      ObjectType = swift_getObjectType();

      return (ObjectType != sub_1B1066864(0, &qword_1EDAD5530, off_1E7AC50F0));
    }
  }

  return result;
}

id ProtobufHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProtobufHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtobufHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProtobufHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtobufHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B108D1B4()
{
  v1 = [v0 task];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 request];

  v4 = [v3 queryId];
  return v4;
}

void sub_1B108D2A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  sub_1B1070FD4(a3, a4);
  v8 = sub_1B10814B8(a3, a4);
  if (v8)
  {
    v15 = v8;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
    if (v9)
    {
      v10 = v9;
      sub_1B1077FE8(a1, &v16);
      if (!v17)
      {
        sub_1B108D510(&v16);
        goto LABEL_10;
      }

      sub_1B1068D4C(&v16, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v12 + 16))(v11, v12))
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
        v13 = v10;
        [a2 setCard_];

        return;
      }

      v14 = v10;
      [a2 setInlineCard_];

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B108D438(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    a1 = sub_1B1066864(0, &unk_1EB739610, off_1E7AC5148);
    v8 = &off_1F2778A20;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[0] = v9;
  v12[3] = a1;
  v12[4] = v8;
  v10 = v7;
  sub_1B108D2A4(v12, a2, a3, a4);
  return sub_1B108D510(v12);
}

uint64_t sub_1B108D510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399C0, &qword_1B1133BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B108D578(void *a1, uint64_t a2)
{
  if (a1)
  {
    v9 = a1;
    [v9 setQueryId_];
    v3 = sub_1B109856C(v9);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1B1099EF8(v3);
      for (i = 0; ; ++i)
      {
        if (v5 == i)
        {

          goto LABEL_12;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B272DFA0](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = v7;
        sub_1B108D698(&v10, a2);
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}

void sub_1B108D698(id *a1, uint64_t a2)
{
  v3 = [*a1 embeddedCards];
  sub_1B108DD0C();
  v4 = sub_1B1122B8C();

  v19 = sub_1B1099EF8(v4);
  if (v19)
  {
    v5 = 0;
    v17 = v4;
    v18 = v4 & 0xC000000000000001;
    v15 = v4 + 32;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v6 = MEMORY[0x1B272DFA0](v5, v4);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v6 = *(v15 + 8 * v5);
      }

      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v8 = v6;
      [v8 setQueryId_];
      v9 = sub_1B109856C(v8);
      if (v9)
      {
        v10 = v9;
        v20 = v5;
        v11 = sub_1B1099EF8(v9);
        for (i = 0; ; ++i)
        {
          if (v11 == i)
          {

            v4 = v17;
            v5 = v20;
            goto LABEL_18;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1B272DFA0](i, v10);
          }

          else
          {
            if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v21 = v13;
          sub_1B108D698(&v21, a2);
        }

        __break(1u);
LABEL_21:
        __break(1u);
        break;
      }

LABEL_18:

      if (v5 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

id parsecExtractCalendarIdentifier(void *a1)
{
  v2 = a1;
  v3 = sub_1B108D8B8(a1);

  return v3;
}

uint64_t sub_1B108D8B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D58, &qword_1B1134580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D60, &qword_1B1134588);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D68, &qword_1B1134590);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  if (a1)
  {
    v32 = v10;
    v33 = v7;
    v20 = a1;
    v21 = sub_1B1122A4C();
    v22 = [v20 hasPrefix_];

    if ((v22 & 1) != 0 || (v23 = sub_1B1122A4C(), v24 = [v20 hasPrefix_], v23, v24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D70, &qword_1B1134598);
      sub_1B11226BC();
      sub_1B11226FC();
      v25 = *(v13 + 8);
      v25(v17, v11);
      v26 = v20;
      sub_1B1122A6C();
      sub_1B11226DC();

      if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
      {
        v31 = v25;
        v30 = v32;
        v29 = v33;
        (*(v33 + 32))(v32, v4, v5);
        sub_1B112270C();

        MEMORY[0x1B272DA90](v34, v35, v36, v37);

        v27 = sub_1B1122A4C();

        (*(v29 + 8))(v30, v5);
        v31(v19, v11);
        return v27;
      }

      v25(v19, v11);

      sub_1B108DCA4(v4);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1B108DCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D58, &qword_1B1134580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B108DD0C()
{
  result = qword_1EB739620;
  if (!qword_1EB739620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB739620);
  }

  return result;
}

BOOL sub_1B108DD50(uint64_t a1, unint64_t a2)
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

id *sub_1B108DDA4(uint64_t a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v32 = sub_1B112194C();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
  v35 = qword_1EDAD54C0;
  v36 = off_1EDAD54C8;
  v39 = 45;
  v40 = 0xE100000000000000;
  v37 = 95;
  v38 = 0xE100000000000000;
  sub_1B1067A94();
  sub_1B1122F1C();

  *(v2 + 88) = sub_1B1122ECC();
  v13 = *(*v2 + 136);
  v14 = sub_1B11228AC();
  __swift_storeEnumTagSinglePayload(v3 + v13, 1, 1, v14);
  v15 = *(*v3 + 19);
  type metadata accessor for Locker();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v3 + v15) = v16;
  sub_1B112193C();
  v18 = v12;
  v19 = v33;
  (*(v10 + 32))(v3 + *(*v3 + 18), v18, v32);
  swift_weakAssign();
  *(v3 + 80) = v19;
  v20 = v3[11];

  sub_1B112286C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v21 = *(*v3 + 17);
  swift_beginAccess();
  sub_1B1099D50(v9, v3 + v21);
  swift_endAccess();
  v35 = v3;

  v22 = sub_1B1122A7C();
  v24 = v23;
  v25 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v25);
  sub_1B10A3E90(a1, v22, v24, v3, &off_1F27784B0);

  os_unfair_lock_unlock(v25);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(v3, &off_1F27784B0, ObjectType, v26);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v28 = v34;
  sub_1B1099E30(v3 + v21, v34, &unk_1EB739BB8, &qword_1B1133E38);
  result = __swift_getEnumTagSinglePayload(v28, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v3[11];
    sub_1B1122E5C();
    sub_1B107F298(v19);
    sub_1B112285C();

    (*(*(v14 - 8) + 8))(v28, v14);
    return v3;
  }

  return result;
}

id *sub_1B108E274(uint64_t a1, int a2, uint64_t a3, int a4)
{
  *(v4 + qword_1EDAD5970) = 0;
  v5 = v4 + *(*v4 + 472);
  *v5 = a3;
  *(v5 + 8) = a4;
  return sub_1B108DDA4(a1, a2);
}

uint64_t sub_1B108E2A4(uint64_t result)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

void sub_1B108E2D0(void *a1)
{
  v2 = *(v1 + qword_1EDAD5970);
  *(v1 + qword_1EDAD5970) = a1;
  v3 = a1;
}

Swift::Void __swiftcall PARRequest.beginNWActivity()()
{
  [v0 nwActivityLabel];
  nw_activity_create();
  nw_activity_activate();
  v1 = OUTLINED_FUNCTION_36_0();
  [v1 v2];

  swift_unknownObjectRelease();
}

uint64_t sub_1B108E454()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v0);
  return Strong;
}

uint64_t sub_1B108E4C8(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B108E454();
  return OUTLINED_FUNCTION_51_0();
}

uint64_t sub_1B108E50C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1B1068FC8(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_1B1068FC8(v2);

  return swift_unknownObjectRelease();
}

void sub_1B108E5C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal_lock);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration);
  *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration) = a1;
  v5 = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1B108E668(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1B1068078();
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B108E6AC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1B108E5C0(v3);
  }

  else
  {
    sub_1B108E5C0(v2);
  }
}

void sub_1B108E770(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B106ECF0(v1);
}

uint64_t sub_1B108E7A0(void **a1)
{
  a1[1] = v1;
  *a1 = sub_1B106903C();
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B108E7E4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1B106ECF0(v2);
  }

  else
  {
    sub_1B106ECF0(*a1);
  }
}

id PARSessionSwiftInternal.__deallocating_deinit()
{
  CoreParsec_notify_cancel(*&v0[OBJC_IVAR___PARSessionSwiftInternal_skappToken]);
  OUTLINED_FUNCTION_2_0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PARSessionSwiftInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *PARSessionSwiftInternal.__allocating_init(session:configuration:connection:delegate:)()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_47_0();
  v3 = objc_allocWithZone(v1);
  v4 = OUTLINED_FUNCTION_23_0();
  return PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(v4, v5, v2, v0);
}

void sub_1B108EBC4()
{
  OUTLINED_FUNCTION_57();
  v2 = v0;
  OUTLINED_FUNCTION_47_0();
  v3 = sub_1B1068078();
  v4 = [v3 userAgent];

  v5 = sub_1B1122A5C();
  v7 = v6;

  v61 = v5;
  v62 = v7;
  OUTLINED_FUNCTION_53_0();
  v59 = v8;
  v60 = v9;
  sub_1B1067A94();
  LOBYTE(v5) = sub_1B1122F2C();

  if (v5)
  {
    v10 = sub_1B106903C();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 safariAssistantForceEnabledState];
      if (v12 == 2 || v12 == 1 || ![v11 isEnabled])
      {
        goto LABEL_38;
      }

      if (qword_1EB7395F8 != -1)
      {
        swift_once();
      }

      if (byte_1EB73D4C8 != 1)
      {
        if (qword_1EDAD5D18 != -1)
        {
LABEL_65:
          OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
        }

        v28 = sub_1B112296C();
        OUTLINED_FUNCTION_27_0(v28, qword_1EDAD5D20);
        v29 = sub_1B112293C();
        v30 = sub_1B1122DDC();
        if (!OUTLINED_FUNCTION_60(v30))
        {
          goto LABEL_37;
        }

        v31 = OUTLINED_FUNCTION_37();
        *v31 = 0;
        _os_log_impl(&dword_1B1064000, v29, v30, "[SBA Disabled] os eligibility", v31, 2u);
        goto LABEL_35;
      }

      v13 = OBJC_IVAR___PARSessionSwiftInternal__deviceContext;
      v14 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal__deviceContext);
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      if (v15)
      {
        swift_bridgeObjectRetain_n();
        v17 = sub_1B1098588(v11, &selRef_safariAssistantUnsupportedCountries);
        if (v17)
        {
          v18 = v17;
          v61 = v16;
          v62 = v15;
          MEMORY[0x1EEE9AC00](v17);
          v57[2] = &v61;
          v19 = sub_1B10984BC(sub_1B1099E90, v57, v18);

          if (!v19)
          {

            v20 = *(v2 + v13);
            v21 = *(v20 + 24);
            v58 = *(v20 + 16);
            if (v21)
            {
              swift_bridgeObjectRetain_n();
              v22 = sub_1B1098588(v11, &selRef_safariAssistantSupportedSystemLocales);
              if (v22)
              {
                v23 = v22;
                v24 = 0;
                v25 = *(v22 + 16);
                for (i = v22 + 40; ; i += 16)
                {
                  if (v25 == v24)
                  {

                    goto LABEL_41;
                  }

                  if (v24 >= *(v23 + 16))
                  {
                    __break(1u);
                    goto LABEL_65;
                  }

                  v27 = sub_1B1122B2C();

                  if (v27)
                  {
                    break;
                  }

                  ++v24;
                }

                swift_bridgeObjectRelease_n();
                if (!v1)
                {
                  goto LABEL_38;
                }

                v45 = sub_1B1098588(v11, &selRef_safariAssistantSupportedPageLanguages);
                if (!v45)
                {
LABEL_59:
                  if (qword_1EDAD5D18 != -1)
                  {
                    OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
                  }

                  v50 = sub_1B112296C();
                  OUTLINED_FUNCTION_27_0(v50, qword_1EDAD5D20);

                  v29 = sub_1B112293C();
                  v51 = sub_1B1122DDC();

                  if (os_log_type_enabled(v29, v51))
                  {
                    v52 = OUTLINED_FUNCTION_40_0();
                    v53 = OUTLINED_FUNCTION_55();
                    v61 = v53;
                    *v52 = 136642819;
                    v54 = OUTLINED_FUNCTION_23_0();
                    *(v52 + 4) = sub_1B10784E0(v54, v55, v56);
                    _os_log_impl(&dword_1B1064000, v29, v51, "[SBA Disabled] page language %{sensitive}s", v52, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v53);
                    OUTLINED_FUNCTION_2_0();
                    goto LABEL_35;
                  }

                  goto LABEL_37;
                }

                v46 = v45;
                v47 = 0;
                v48 = *(v45 + 16);
                for (j = (v45 + 40); ; j += 2)
                {
                  if (v48 == v47)
                  {

                    goto LABEL_59;
                  }

                  if (v47 >= *(v46 + 16))
                  {
                    break;
                  }

                  v21 = *j;

                  if (sub_1B1122B2C())
                  {

                    goto LABEL_39;
                  }

                  ++v47;
                }

                __break(1u);
LABEL_67:
                OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
LABEL_43:
                v39 = sub_1B112296C();
                OUTLINED_FUNCTION_27_0(v39, qword_1EDAD5D20);

                v29 = sub_1B112293C();
                v40 = sub_1B1122DDC();

                if (os_log_type_enabled(v29, v40))
                {
                  v41 = OUTLINED_FUNCTION_40_0();
                  v42 = OUTLINED_FUNCTION_55();
                  v61 = v42;
                  *v41 = 136642819;
                  if (v21)
                  {
                    v43 = v58;
                  }

                  else
                  {
                    v43 = 7104878;
                  }

                  if (!v21)
                  {
                    v21 = 0xE300000000000000;
                  }

                  v44 = sub_1B10784E0(v43, v21, &v61);

                  *(v41 + 4) = v44;
                  _os_log_impl(&dword_1B1064000, v29, v40, "[SBA Disabled] system locale %{sensitive}s", v41, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v42);
                  OUTLINED_FUNCTION_2_0();
LABEL_35:
                  OUTLINED_FUNCTION_2_0();
LABEL_37:

LABEL_38:
                  goto LABEL_39;
                }

                goto LABEL_36;
              }

LABEL_41:
            }

            if (qword_1EDAD5D18 == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_67;
          }
        }

        else
        {
        }
      }

      if (qword_1EDAD5D18 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
      }

      v32 = sub_1B112296C();
      OUTLINED_FUNCTION_27_0(v32, qword_1EDAD5D20);

      v29 = sub_1B112293C();
      v33 = sub_1B1122DDC();

      if (os_log_type_enabled(v29, v33))
      {
        v34 = OUTLINED_FUNCTION_40_0();
        v35 = OUTLINED_FUNCTION_55();
        v61 = v35;
        *v34 = 136642819;
        if (v15)
        {
          v36 = v16;
        }

        else
        {
          v36 = 7104878;
        }

        if (v15)
        {
          v37 = v15;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        v38 = sub_1B10784E0(v36, v37, &v61);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_1B1064000, v29, v33, "[SBA Disabled] country code %{sensitive}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_2_0();
        goto LABEL_35;
      }

LABEL_36:

      goto LABEL_37;
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_4_2();
}

void sub_1B108F270(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(_CPCBAEngagementFeedback) init];
  if (v3)
  {
    v4 = v3;
    [v3 setQueryId_];
    v5 = sub_1B112181C();
    sub_1B1074A10(v5, v6, v4, &selRef_setUrl_);
    v7 = sub_1B1068078();
    v8 = v4;
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_36_0();
    sub_1B10989C0();
  }
}

BOOL sub_1B108F448(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v6 = *(v3 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist);
  if (v6 && *(v3 + OBJC_IVAR___PARSessionSwiftInternal__sampled) == 1)
  {

    v7 = sub_1B108F4E4(a1, a2, v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v7;
}

BOOL sub_1B108F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B112314C();
  sub_1B1122ACC();
  v6 = sub_1B112316C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1B11230AC();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_1B108F5D0(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  v5 = *(a1 + OBJC_IVAR___PARSessionSwiftInternal_client);
  *(v4 + 16) = a2;
  v6 = *(v5 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B1099FB0;
  *(v7 + 24) = v4;
  v19 = sub_1B1099FAC;
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1B108FBF8;
  v18 = &block_descriptor_181;
  v8 = _Block_copy(&aBlock);
  _Block_copy(a2);
  v9 = v6;

  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v19 = sub_1B1099FB0;
    v20 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B108FC60;
    v18 = &block_descriptor_184;
    v11 = _Block_copy(&aBlock);

    [v14 clearSafariFeedback_];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1098E34();
    v12 = swift_allocError();
    v13 = sub_1B11217EC();
    (a2)[2](a2, v13);
  }

  _Block_release(a2);
}

void sub_1B108F870(uint64_t (*a1)(void *a1), uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  OUTLINED_FUNCTION_50_0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v19 = sub_1B1098E2C;
  v20 = v6;
  OUTLINED_FUNCTION_9_1();
  v16 = 1107296256;
  OUTLINED_FUNCTION_3();
  v17 = v7;
  v18 = &block_descriptor_3;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_58())
  {
    v19 = a1;
    v20 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B108FC60;
    v18 = &block_descriptor_6;
    v11 = _Block_copy(&aBlock);

    v12 = OUTLINED_FUNCTION_36_0();
    [v12 v13];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1098E34();
    OUTLINED_FUNCTION_22_0();
    v14 = swift_allocError();
    (a1)();
  }
}

uint64_t sub_1B108FA68(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v4 = sub_1B112296C();
  __swift_project_value_buffer(v4, qword_1EDAD5D20);
  v5 = a1;
  v6 = sub_1B112293C();
  v7 = sub_1B1122DDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B11230FC();
    v12 = sub_1B10784E0(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1064000, v6, v7, "clear safari history failed: no remote proxy %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B272EDD0](v9, -1, -1);
    MEMORY[0x1B272EDD0](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1B108FBF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B108FC60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id PARSessionSwiftInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SafariHistoryClearError.hashValue.getter()
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

uint64_t sub_1B108FE48(uint64_t a1)
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

uint64_t sub_1B108FE88(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v63 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v63 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v63 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v63 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    if (a2)
    {
      v27 = a1;
      if ([a2 hasDarkAppearance])
      {
        v28 = [v26 darkUrlValue];
        if (v28)
        {
          v29 = v28;
          sub_1B112183C();

          v30 = sub_1B112186C();
          v31 = 1;
          __swift_storeEnumTagSinglePayload(v22, 0, 1, v30);
          sub_1B1067964(v22, &qword_1EB73A130, &qword_1B1133BF0);
          v32 = [v26 darkUrlValue];
          if (v32)
          {
            v33 = v32;
            sub_1B112183C();

            v31 = 0;
          }

          __swift_storeEnumTagSinglePayload(v19, v31, 1, v30);
LABEL_15:
          sub_1B1099DC0(v19, v24);
          v41 = a1;
          sub_1B10986E4(v26, &selRef_identifier);
          v43 = v42;
          v44 = sub_1B112186C();
          if (__swift_getEnumTagSinglePayload(v24, 1, v44) == 1 && v43 == 0)
          {
            if (qword_1EDAD5D18 != -1)
            {
              swift_once();
            }

            v46 = sub_1B112296C();
            __swift_project_value_buffer(v46, qword_1EDAD5D20);
            v47 = sub_1B112293C();
            v48 = sub_1B1122DDC();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              _os_log_impl(&dword_1B1064000, v47, v48, "could not load image, no image identifier nor url", v49, 2u);
              MEMORY[0x1B272EDD0](v49, -1, -1);
            }

            goto LABEL_38;
          }

          sub_1B1099E30(v24, v13, &qword_1EB73A130, &qword_1B1133BF0);
          if (__swift_getEnumTagSinglePayload(v13, 1, v44) == 1)
          {
            sub_1B1067964(v13, &qword_1EB73A130, &qword_1B1133BF0);
          }

          else
          {
            sub_1B112184C();
            v51 = v50;
            (*(*(v44 - 8) + 8))(v13, v44);
            if (v51)
            {
              v52 = sub_1B1122B2C();

              if (v52)
              {

                goto LABEL_35;
              }
            }
          }

          if (qword_1EDAD5D18 != -1)
          {
            swift_once();
          }

          v53 = sub_1B112296C();
          __swift_project_value_buffer(v53, qword_1EDAD5D20);
          sub_1B1099E30(v24, v10, &qword_1EB73A130, &qword_1B1133BF0);
          v54 = sub_1B112293C();
          v55 = sub_1B1122DBC();
          if (os_log_type_enabled(v54, v55))
          {
            v65 = v41;
            v56 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v66 = v64;
            *v56 = 136315138;
            sub_1B1099E30(v10, v7, &qword_1EB73A130, &qword_1B1133BF0);
            if (__swift_getEnumTagSinglePayload(v7, 1, v44) == 1)
            {
              sub_1B1067964(v7, &qword_1EB73A130, &qword_1B1133BF0);
              v57 = 0xE500000000000000;
              v58 = 0x296C696E28;
            }

            else
            {
              v58 = sub_1B112181C();
              v57 = v59;
              (*(*(v44 - 8) + 8))(v7, v44);
            }

            sub_1B1067964(v10, &qword_1EB73A130, &qword_1B1133BF0);
            v60 = sub_1B10784E0(v58, v57, &v66);

            *(v56 + 4) = v60;
            _os_log_impl(&dword_1B1064000, v54, v55, "could not load image, image url has invalid scheme: %s", v56, 0xCu);
            v61 = v64;
            __swift_destroy_boxed_opaque_existential_1(v64);
            MEMORY[0x1B272EDD0](v61, -1, -1);
            MEMORY[0x1B272EDD0](v56, -1, -1);

            if (!v43)
            {
              goto LABEL_38;
            }
          }

          else
          {

            sub_1B1067964(v10, &qword_1EB73A130, &qword_1B1133BF0);
            if (!v43)
            {
LABEL_38:
              v34 = 0;
              goto LABEL_39;
            }
          }

LABEL_35:

          v34 = 1;
LABEL_39:
          sub_1B1067964(v24, &qword_1EB73A130, &qword_1B1133BF0);
          return v34;
        }

        v36 = sub_1B112186C();
        __swift_storeEnumTagSinglePayload(v22, 1, 1, v36);
        sub_1B1067964(v22, &qword_1EB73A130, &qword_1B1133BF0);
      }
    }

    else
    {
      v35 = a1;
    }

    v37 = [v26 urlValue];
    if (v37)
    {
      v38 = v37;
      sub_1B112183C();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_1B112186C();
    __swift_storeEnumTagSinglePayload(v16, v39, 1, v40);
    v19 = v16;
    goto LABEL_15;
  }

  return 1;
}

BOOL PARSessionSwiftInternal.canLoad(_:context:)(void *a1, void *a2)
{
  if ([a1 source] > 1)
  {
    return 0;
  }

  sub_1B106B080(a1, &selRef_imageData);
  OUTLINED_FUNCTION_34_0();
  if (!(!v8 & v7))
  {
    sub_1B106C1F0(v5, v6);
    return 1;
  }

  return (sub_1B108FE88(a1, a2) & 1) != 0 && *(*(v2 + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader) != 0;
}

uint64_t PARSessionSwiftInternal.ImageLoadError.hashValue.getter()
{
  v1 = *v0;
  sub_1B112314C();
  MEMORY[0x1B272E140](v1);
  return sub_1B112316C();
}

uint64_t PARSessionSwiftInternal.load(_:context:)()
{
  OUTLINED_FUNCTION_9_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1B11228DC();
  v1[5] = v4;
  OUTLINED_FUNCTION_7(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v6 = sub_1B11228AC();
  v1[8] = v6;
  OUTLINED_FUNCTION_7(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1090828, 0, 0);
}

uint64_t sub_1B1090828()
{
  if ([*(v0 + 16) source] >= 2)
  {
    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    *v11 = 0;
    goto LABEL_22;
  }

  sub_1B106B080(*(v0 + 16), &selRef_imageData);
  OUTLINED_FUNCTION_34_0();
  if (!(!v4 & v3))
  {
    v5 = *(v0 + 24);
    sub_1B106C1F0(v1, v2);
    if (!v5 || ![*(v0 + 24) ignoreImageDataCache])
    {
      v12 = *(v0 + 16);

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_56();

      __asm { BRAA            X2, X16 }
    }
  }

  if ((sub_1B108FE88(*(v0 + 16), *(v0 + 24)) & 1) == 0)
  {
    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    v16 = 1;
LABEL_21:
    *v15 = v16;
LABEL_22:
    swift_willThrow();

    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_56();

    __asm { BRAA            X1, X16 }
  }

  v6 = *(*(*(v0 + 32) + OBJC_IVAR___PARSessionSwiftInternal_client) + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader);
  *(v0 + 96) = v6;
  if (!v6)
  {
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    }

    v17 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v17, qword_1EDAD5D20);
    v18 = sub_1B112293C();
    v19 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_60(v19))
    {
      v20 = OUTLINED_FUNCTION_37();
      *v20 = 0;
      _os_log_impl(&dword_1B1064000, v18, v19, "could not load image, image loader is nil", v20, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    sub_1B1098E88();
    OUTLINED_FUNCTION_22_0();
    swift_allocError();
    v16 = 2;
    goto LABEL_21;
  }

  v7 = qword_1EDAD5DF0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v8 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B11228BC();
  v9 = sub_1B106903C();
  if (v9)
  {
    v10 = v9;
    [v9 timeoutIntervalForRequest];
  }

  v23 = *(v0 + 16);
  v24 = sub_1B11228CC();
  v25 = sub_1B1122E5C();

  if (sub_1B1122EAC())
  {
    v26 = *(v0 + 16);
    v27 = OUTLINED_FUNCTION_40_0();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    *(v27 + 4) = v26;
    *v28 = v26;
    v29 = v26;
    v30 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v24, v25, v30, "image_load", "image=%{public}@", v27, 0xCu);
    sub_1B1067964(v28, &qword_1EB739E58, qword_1B11345F0);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v31 = OUTLINED_FUNCTION_32_0();
  v32(v31);
  sub_1B112291C();
  swift_allocObject();
  *(v0 + 104) = sub_1B112290C();
  v33 = swift_task_alloc();
  *(v0 + 112) = v33;
  *v33 = v0;
  v33[1] = sub_1B1090C9C;
  OUTLINED_FUNCTION_56();

  return sub_1B1082C2C();
}

uint64_t sub_1B1090C9C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v3[15] = v1;
  v3[16] = v2;
  v3[17] = v0;

  if (v0)
  {
    v4 = sub_1B1090EF8;
  }

  else
  {
    v4 = sub_1B1090DAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B1090DAC()
{
  if (sub_1B108DD50(v0[15], v0[16]))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1B11218AC();
  }

  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[9];
  v14 = v0[8];
  v15 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[2];
  [v8 setImageData_];

  v9 = v8;
  sub_1B106C204(v3, v2);
  sub_1B1090FE8(v6, v4, v9);

  (*(v7 + 8))(v6, v13);
  (*(v5 + 8))(v15, v14);

  v10 = OUTLINED_FUNCTION_46_0();

  return v11(v10);
}

uint64_t sub_1B1090EF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  sub_1B1090FE8(v4, *(v0 + 104), *(v0 + 16));

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_13_0();

  return v7();
}

uint64_t sub_1B1090FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B11228EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B11228AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a3;
  v13 = sub_1B11228CC();
  sub_1B11228FC();
  v23 = sub_1B1122E4C();

  if (sub_1B1122EAC())
  {

    sub_1B112292C();

    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
    {
      v14 = 0;
      v15 = 0;
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v16 = "image=%{public}@";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2114;
    *(v17 + 4) = v12;
    *v18 = v12;
    v19 = v12;
    v20 = sub_1B112288C();
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v13, v23, v20, "image_load", v16, v17, 0xCu);
    sub_1B1067964(v18, &qword_1EB739E58, qword_1B11345F0);
    MEMORY[0x1B272EDD0](v18, -1, -1);
    MEMORY[0x1B272EDD0](v17, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B1091340(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1B1091414;

  return PARSessionSwiftInternal.load(_:context:)();
}

uint64_t sub_1B1091414(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  OUTLINED_FUNCTION_0_6();
  *v10 = v9;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_1B11217EC();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_1B10915E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1B1122C5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1B1134838;
  v9[5] = v8;
  sub_1B1097920(0, 0, v6, &unk_1B1134848, v9);
}

void sub_1B1091798(char *a1, id *a2, const void *a3)
{
  v135 = a2;
  v5 = sub_1B11228AC();
  v138 = *(v5 - 8);
  v6 = *(v138 + 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v137 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v141 = &v123 - v8;
  v9 = sub_1B112279C();
  v133 = *(v9 - 8);
  v134 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B112186C();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  v17 = sub_1B1071938(a1, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
  if (v17)
  {
    v18 = v17;
    v140 = a1;
    v19 = sub_1B1097DD8(v17);
    if (v19)
    {
      v20 = v19;
      v136 = a3;
      a3 = (v18 & 0xC000000000000001);
      v139 = v16;
      if ((v18 & 0xC000000000000001) != 0)
      {
LABEL_77:
        v21 = MEMORY[0x1B272DFA0](0, v18);
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_79:
          v27 = MEMORY[0x1B272DFA0](0, v20);
LABEL_25:
          v28 = v27;

          objc_opt_self();
          v29 = swift_dynamicCastObjCClassUnconditional();
          v30 = sub_1B106B080(v29, &selRef_mapsData);
          v32 = v31;
          v33 = 0;
          if (v31 >> 60 != 15)
          {
            v33 = sub_1B11218AC();
          }

          v141 = v30;
          v34 = GEOCompletionItemFromSerializedAutocompleteEntry();

          if (!v34)
          {
LABEL_84:
            _Block_release(a3);
            _Block_release(a3);
            __break(1u);
            return;
          }

          v35 = objc_opt_self();
          v36 = [v35 sharedService];
          v37 = [v36 defaultTraits];

          if (v37)
          {
            [v37 setWantsBrandIcon_];
          }

          v38 = [v35 sharedService];
          if (v38)
          {
            v39 = v38;
            v40 = sub_1B1098660(0, 0xE000000000000000, v34, 1, v37, v38);

            if (v40)
            {
              v41 = swift_allocObject();
              v42 = v139;
              v43 = v140;
              v41[2] = sub_1B1099EFC;
              v41[3] = v42;
              v41[4] = v43;
              v41[5] = v29;
              v41[6] = v6;
              v148 = sub_1B1099FA8;
              v149 = v41;
              aBlock = MEMORY[0x1E69E9820];
              v145 = 1107296256;
              v146 = sub_1B1093F20;
              v147 = &block_descriptor_145;
              v44 = _Block_copy(&aBlock);
              v45 = v43;

              swift_unknownObjectRetain();
              v46 = v28;
              v47 = v6;
              v48 = v136;
              v49 = v47;

              [v40 submitWithHandler:v44 networkActivity:0];
              sub_1B106C1F0(v141, v32);

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();

              _Block_release(v44);

LABEL_73:
              _Block_release(v48);
              v121 = v48;
              goto LABEL_74;
            }
          }

          sub_1B106C1F0(v141, v32);

          swift_unknownObjectRelease();
          goto LABEL_69;
        }

        v21 = *(v18 + 32);
      }

      v22 = v21;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        [v140 copy];
        sub_1B1122F4C();
        swift_unknownObjectRelease();
        sub_1B1066864(0, &qword_1EB739620, 0x1E69C9F00);
        swift_dynamicCast();
        v23 = 0;
        v138 = v143;
        v15 = MEMORY[0x1E69E7CC0];
        v143 = MEMORY[0x1E69E7CC0];
        v141 = v18 & 0xFFFFFFFFFFFFFF8;
        v12 = &qword_1EB739628;
        v6 = 0x1E69C9F08;
        while (v20 != v23)
        {
          if (a3)
          {
            v24 = MEMORY[0x1B272DFA0](v23, v18);
          }

          else
          {
            if (v23 >= *(v141 + 16))
            {
              goto LABEL_76;
            }

            v24 = *(v18 + 8 * v23 + 32);
          }

          v13 = v24;
          v5 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v11 = [v24 copy];
          sub_1B1122F4C();
          swift_unknownObjectRelease();

          sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
          if ((swift_dynamicCast() & 1) != 0 && (v13 = v142) != 0)
          {
            MEMORY[0x1B272DB50]();
            if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1122BAC();
            }

            sub_1B1122BCC();
            v15 = v143;
            ++v23;
          }

          else
          {
            ++v23;
          }
        }

        v6 = v138;
        sub_1B10985DC(v15, v138);
        v25 = sub_1B1071938(v6, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
        if (v25)
        {
          v20 = v25;
          v26 = sub_1B1097DD8(v25);
          a3 = v136;
          if (v26)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              goto LABEL_79;
            }

            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v27 = *(v20 + 32);
              goto LABEL_25;
            }

            __break(1u);
LABEL_81:
            swift_once();
LABEL_55:
            v82 = qword_1EDAD64F0;
            v83 = v141;
            sub_1B112287C();
            sub_1B1122E5C();
            v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
            v84 = swift_allocObject();
            *(v84 + 16) = xmmword_1B1133CF0;
            v85 = [v18 triggerEvent];
            v86 = MEMORY[0x1E69E6870];
            *(v84 + 56) = MEMORY[0x1E69E6810];
            *(v84 + 64) = v86;
            *(v84 + 32) = v85;
            v87 = [v18 v15[306]];
            v88 = MEMORY[0x1E69E7738];
            *(v84 + 96) = MEMORY[0x1E69E76D8];
            *(v84 + 104) = v88;
            *(v84 + 72) = v87;
            v127 = v82;
            sub_1B112284C();

            v134 = sub_1B10700E0();
            v131 = *&v13[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
            v135 = v18;
            v89 = v137;
            v90 = v138;
            v125 = *(v138 + 2);
            v125(v137, v83, v5);
            v91 = v90[80];
            v92 = (v91 + 16) & ~v91;
            v123 = v6 + 7;
            v93 = &v6[v92 + 7] & 0xFFFFFFFFFFFFFFF8;
            v94 = swift_allocObject();
            v124 = *(v90 + 4);
            v124(v94 + v92, v89, v5);
            v95 = (v94 + v93);
            *v95 = sub_1B1099EF0;
            v95[1] = v20;
            *(v94 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) = v133;
            v148 = sub_1B1099FA0;
            v149 = v94;
            aBlock = MEMORY[0x1E69E9820];
            v145 = 1107296256;
            v146 = sub_1B108FBF8;
            v147 = &block_descriptor_131;
            v96 = _Block_copy(&aBlock);

            v97 = [v131 remoteObjectProxyWithErrorHandler_];
            _Block_release(v96);
            sub_1B1122F4C();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
            if (swift_dynamicCast())
            {
              v98 = v20;
              v133 = v143;
              v99 = v137;
              v100 = v132;
              v125(v137, v141, v132);
              v101 = (v91 + 24) & ~v91;
              v102 = &v123[v101] & 0xFFFFFFFFFFFFFFF8;
              v103 = swift_allocObject();
              *(v103 + 16) = v134;
              v124(v103 + v101, v99, v100);
              v104 = (v103 + v102);
              *v104 = sub_1B1099EF0;
              v104[1] = v98;
              v148 = sub_1B1099EF4;
              v149 = v103;
              aBlock = MEMORY[0x1E69E9820];
              v145 = 1107296256;
              v146 = sub_1B1070468;
              v147 = &block_descriptor_138;
              v105 = _Block_copy(&aBlock);

              swift_unknownObjectRetain();

              v106 = v130;
              v107 = v135;
              [v133 request:v130 request:v135 reply:v105];
              _Block_release(v105);
              swift_unknownObjectRelease();
              v48 = v136;
              v108 = v141;
              v109 = v128;
            }

            else
            {
              v107 = v135;
              sub_1B1122E4C();
              v110 = swift_allocObject();
              *(v110 + 16) = xmmword_1B1133BA0;
              *(v110 + 56) = MEMORY[0x1E69E6158];
              *(v110 + 64) = sub_1B106EAF4();
              strcpy((v110 + 32), "casting_failed");
              *(v110 + 47) = -18;
              sub_1B112284C();

              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v112 = Strong;
                v48 = v136;
                _Block_copy(v136);

                v109 = v128;
                (*(v48 + 2))(v48, v128, 0);
                _Block_release(v48);
              }

              else
              {
                v48 = v136;
                v109 = v128;
                (*(v136 + 2))(v136, v128, 0);
              }

              v108 = v141;
              v106 = v130;
            }

            swift_unknownObjectRelease();
            (*(v138 + 1))(v108, v132);

            _Block_release(v48);

            goto LABEL_73;
          }
        }

        else
        {
          v122 = v136;
          _Block_release(v136);
          _Block_release(v122);
          __break(1u);
        }

        _Block_release(a3);
        _Block_release(a3);

        __break(1u);
        goto LABEL_84;
      }

      a3 = v136;
      v16 = v139;
    }

    else
    {
    }

    a1 = v140;
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (!v50)
  {
    v132 = v5;
    v51 = [a1 drilldownMetadata];
    if (v51)
    {

      v52 = [objc_allocWithZone(MEMORY[0x1E69CA450]) init];
      [v52 setCard_];
      v140 = a1;
      v53 = [a1 drilldownMetadata];
      if (v53 && (v54 = v53, v55 = [v53 cardSearchMetadata], v54, v55) && (sub_1B10986E4(v55, &selRef_searchQuery), v56))
      {
        v57 = v52;
        v58 = v16;
      }

      else
      {
        v57 = v52;
        v58 = v16;
      }

      v59 = objc_opt_self();
      v60 = [v140 queryId];
      v61 = sub_1B1122A4C();

      v62 = v57;
      v63 = [v59 searchRequestWithCommand:v57 triggerEvent:14 queryId:v60 queryString:v61];

      if (!v63)
      {
        if (qword_1EDAD5D18 != -1)
        {
          swift_once();
        }

        v113 = sub_1B112296C();
        __swift_project_value_buffer(v113, qword_1EDAD5D20);
        v114 = sub_1B112293C();
        v115 = sub_1B1122DDC();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_1B1064000, v114, v115, "could not create search request for card", v116, 2u);
          MEMORY[0x1B272EDD0](v116, -1, -1);
        }

        goto LABEL_38;
      }

      v64 = v58;
      a1 = v140;
LABEL_52:
      v139 = v64;
      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        v71 = v70;
        v72 = a1;
        [v71 scale];
        [v63 setScale_];
      }

      v73 = v135;
      v74 = sub_1B1068078();
      v75 = [v74 userAgent];

      sub_1B1122A5C();
      sub_1B11227AC();
      v76 = sub_1B112278C();
      (*(v133 + 1))(v11, v134);
      v13 = *(v73 + OBJC_IVAR___PARSessionSwiftInternal_client);
      v130 = sub_1B1068078();
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = swift_allocObject();
      *(v78 + 16) = a3;
      v79 = a1;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1B1099EFC;
      *(v20 + 24) = v78;
      *(v20 + 32) = v79;
      *(v20 + 40) = v77;
      *(v20 + 48) = v63;
      *(v20 + 56) = v76;
      _Block_copy(a3);
      v80 = v79;

      v81 = v63;
      v136 = a3;
      _Block_copy(a3);
      v128 = v80;
      v140 = v77;

      v18 = v81;

      v129 = v78;

      v15 = &selRef_entityData;
      v133 = [v18 queryId];
      v5 = v132;
      if (qword_1EDAD5DF0 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_81;
    }

    v65 = [a1 urlValue];
    if (v65)
    {
      v66 = v65;
      sub_1B112183C();

      v67 = objc_opt_self();
      v68 = sub_1B112182C();
      v139 = v16;
      v69 = v68;
      v63 = [v67 cardRequestWithURL:v68 queryId:{objc_msgSend(a1, sel_queryId)}];

      v64 = v139;
      (*(v13 + 1))(v15, v12);
      if (v63)
      {
        goto LABEL_52;
      }
    }

    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v117 = sub_1B112296C();
    __swift_project_value_buffer(v117, qword_1EDAD5D20);
    v118 = sub_1B112293C();
    v119 = sub_1B1122DDC();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_1B1064000, v118, v119, "could not create card request", v120, 2u);
      MEMORY[0x1B272EDD0](v120, -1, -1);
    }

LABEL_69:
    _Block_release(a3);
    v121 = a3;
LABEL_74:
    _Block_release(v121);
    return;
  }

  (*(a3 + 2))(a3, v50, 0);

LABEL_38:
  _Block_release(a3);

  _Block_release(a3);
}

void PARSessionSwiftInternal.load(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_47_0();
  sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v146 = v7;
  v147 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v144 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v149 = (&v131 - v11);
  v12 = sub_1B112279C();
  OUTLINED_FUNCTION_0();
  v141 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = (v16 - v15);
  v18 = sub_1B112186C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = (v23 - v22);
  v25 = sub_1B1071938(v4, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
  if (v25)
  {
    v26 = v25;
    v148 = v4;
    v27 = sub_1B1097DD8(v25);
    if (v27)
    {
      v28 = v27;
      v145 = v3;
      v29 = v26 & 0xC000000000000001;
      v143 = a3;
      if ((v26 & 0xC000000000000001) != 0)
      {
LABEL_74:
        v30 = MEMORY[0x1B272DFA0](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_76:
          v38 = MEMORY[0x1B272DFA0](0, v28);
LABEL_25:
          v39 = v38;

          objc_opt_self();
          OUTLINED_FUNCTION_22_0();
          v40 = swift_dynamicCastObjCClassUnconditional();
          v41 = sub_1B106B080(v40, &selRef_mapsData);
          v43 = v42;
          v44 = 0;
          OUTLINED_FUNCTION_34_0();
          if (!(!v46 & v45))
          {
            v44 = sub_1B11218AC();
          }

          v47 = GEOCompletionItemFromSerializedAutocompleteEntry();

          if (!v47)
          {
LABEL_81:
            __break(1u);
            return;
          }

          v48 = objc_opt_self();
          v49 = [v48 sharedService];
          v50 = [v49 defaultTraits];

          if (v50)
          {
            [v50 setWantsBrandIcon:1];
          }

          v51 = [v48 sharedService];
          if (v51)
          {
            v52 = v51;
            v53 = sub_1B1098660(0, 0xE000000000000000, v47, 1, v50, v51);

            if (v53)
            {
              v54 = swift_allocObject();
              v55 = v143;
              v54[2] = v29;
              v54[3] = v55;
              v56 = v148;
              v54[4] = v148;
              v54[5] = v40;
              v149 = v41;
              v57 = v147;
              v54[6] = v147;
              v156 = sub_1B1098EE4;
              v157 = v54;
              OUTLINED_FUNCTION_2_5();
              v153 = 1107296256;
              v154 = sub_1B1093F20;
              v155 = &block_descriptor_32;
              v58 = _Block_copy(&aBlock);
              swift_unknownObjectRetain();

              v59 = v56;
              v60 = v39;
              v61 = v57;

              [v53 submitWithHandler:v58 networkActivity:0];
              sub_1B106C1F0(v149, v43);

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();

              _Block_release(v58);
LABEL_62:
              OUTLINED_FUNCTION_30();
              return;
            }
          }

          sub_1B106C1F0(v41, v43);

          swift_unknownObjectRelease();
LABEL_47:

          goto LABEL_62;
        }

        v30 = *(v26 + 32);
      }

      v31 = v30;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        [v148 copy];
        sub_1B1122F4C();
        swift_unknownObjectRelease();
        sub_1B1066864(0, &qword_1EB739620, 0x1E69C9F00);
        swift_dynamicCast();
        v9 = 0;
        v147 = v151;
        v24 = MEMORY[0x1E69E7CC0];
        v151 = MEMORY[0x1E69E7CC0];
        v149 = (v26 & 0xFFFFFFFFFFFFFF8);
        v18 = &qword_1EB739628;
        v20 = 0x1E69C9F08uLL;
        while (v28 != v9)
        {
          if (v29)
          {
            v32 = MEMORY[0x1B272DFA0](v9, v26);
          }

          else
          {
            if (v9 >= v149[2].isa)
            {
              goto LABEL_73;
            }

            v32 = *(v26 + 8 * v9 + 32);
          }

          v33 = v32;
          v17 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v12 = [v32 copy];
          sub_1B1122F4C();
          swift_unknownObjectRelease();

          sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
          if ((OUTLINED_FUNCTION_58() & 1) != 0 && v150)
          {
            MEMORY[0x1B272DB50]();
            if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1122BAC();
            }

            sub_1B1122BCC();
            v24 = v151;
            v9 = (v9 + 1);
          }

          else
          {
            v9 = (v9 + 1);
          }
        }

        v34 = v24;
        v35 = v147;
        sub_1B10985DC(v34, v147);
        v36 = sub_1B1071938(v35, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
        if (v36)
        {
          v28 = v36;
          v37 = sub_1B1097DD8(v36);
          v29 = v145;
          if (v37)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              goto LABEL_76;
            }

            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v38 = *(v28 + 32);
              goto LABEL_25;
            }

            __break(1u);
LABEL_78:
            OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
LABEL_56:
            v94 = qword_1EDAD64F0;
            v95 = v149;
            sub_1B112287C();
            sub_1B1122E5C();
            v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
            v96 = swift_allocObject();
            *(v96 + 16) = xmmword_1B1133CF0;
            v97 = [v18 triggerEvent];
            v98 = MEMORY[0x1E69E6870];
            *(v96 + 56) = MEMORY[0x1E69E6810];
            *(v96 + 64) = v98;
            *(v96 + 32) = v97;
            v99 = [v18 *(v28 + 2448)];
            v100 = MEMORY[0x1E69E7738];
            *(v96 + 96) = MEMORY[0x1E69E76D8];
            *(v96 + 104) = v100;
            *(v96 + 72) = v99;
            v135 = v94;
            sub_1B112284C();

            v139 = sub_1B10700E0();
            v136 = *(v20 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
            v101 = v144;
            v102 = v147;
            v133 = *(v9 + 2);
            v133(v144, v95, v147);
            v103 = *(v9 + 80);
            v140 = v18;
            v104 = (v103 + 16) & ~v103;
            v132 = v138 + 7;
            v105 = (v138 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
            v106 = swift_allocObject();
            v138 = *(v9 + 4);
            (v138)(v106 + v104, v101, v102);
            OUTLINED_FUNCTION_10_1((v106 + v105));
            *(v106 + ((v105 + 23) & 0xFFFFFFFFFFFFFFF8)) = v137;
            v156 = sub_1B1098EE0;
            v157 = v106;
            OUTLINED_FUNCTION_2_5();
            v153 = 1107296256;
            OUTLINED_FUNCTION_3();
            v154 = v107;
            v155 = &block_descriptor_20;
            v108 = _Block_copy(&aBlock);

            v109 = [v136 remoteObjectProxyWithErrorHandler_];
            _Block_release(v108);
            sub_1B1122F4C();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
            if (OUTLINED_FUNCTION_58())
            {
              v110 = v151;
              v111 = v144;
              v112 = v147;
              v133(v144, v149, v147);
              v113 = (v103 + 24) & ~v103;
              v114 = &v132[v113] & 0xFFFFFFFFFFFFFFF8;
              v115 = swift_allocObject();
              *(v115 + 16) = v139;
              (v138)(v115 + v113, v111, v112);
              OUTLINED_FUNCTION_10_1((v115 + v114));
              v156 = sub_1B1070654;
              v157 = v115;
              OUTLINED_FUNCTION_2_5();
              v153 = 1107296256;
              v154 = sub_1B1070468;
              v155 = &block_descriptor_26;
              v116 = _Block_copy(&aBlock);

              swift_unknownObjectRetain();

              v118 = v140;
              v117 = v141;
              [v110 request:v141 request:v140 reply:v116];
              _Block_release(v116);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v146[1](v149, v112);
            }

            else
            {
              v119 = v140;
              v120 = v147;
              sub_1B1122E4C();
              v121 = swift_allocObject();
              *(v121 + 16) = xmmword_1B1133BA0;
              *(v121 + 56) = MEMORY[0x1E69E6158];
              *(v121 + 64) = sub_1B106EAF4();
              strcpy((v121 + 32), "casting_failed");
              *(v121 + 47) = -18;
              v122 = v149;
              sub_1B112284C();

              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
              }

              v124 = v142;
              v145(v142, 0);
              swift_unknownObjectRelease();
              v146[1](v122, v120);
            }

            goto LABEL_62;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_81;
      }

      a3 = v143;
      v3 = v145;
    }

    else
    {
    }

    v4 = v148;
  }

  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  if (!v62)
  {
    v145 = v3;
    v66 = [v4 drilldownMetadata];
    v143 = a3;
    if (v66)
    {

      v67 = [objc_allocWithZone(MEMORY[0x1E69CA450]) init];
      [v67 setCard_];
      v68 = v4;
      v69 = [v4 drilldownMetadata];
      if (!v69 || (v70 = v69, v71 = [v69 cardSearchMetadata], v70, !v71) || (sub_1B10986E4(v71, &selRef_searchQuery), !v72))
      {
      }

      v73 = objc_opt_self();
      v74 = [v68 queryId];
      OUTLINED_FUNCTION_32_0();
      v75 = sub_1B1122A4C();

      v76 = [v73 searchRequestWithCommand:v67 triggerEvent:14 queryId:v74 queryString:v75];

      if (!v76)
      {
        if (qword_1EDAD5D18 != -1)
        {
          OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
        }

        v125 = sub_1B112296C();
        OUTLINED_FUNCTION_27_0(v125, qword_1EDAD5D20);
        v149 = sub_1B112293C();
        v126 = sub_1B1122DDC();
        if (os_log_type_enabled(v149, v126))
        {
          v127 = OUTLINED_FUNCTION_37();
          *v127 = 0;
          _os_log_impl(&dword_1B1064000, v149, v126, "could not create search request for card", v127, 2u);
          OUTLINED_FUNCTION_2_0();
        }

        goto LABEL_38;
      }

      v77 = v68;
LABEL_53:
      objc_opt_self();
      v82 = swift_dynamicCastObjCClass();
      if (v82)
      {
        v83 = v82;
        v84 = v77;
        [v83 scale];
        [v76 setScale_];
      }

      v138 = v9;
      v85 = v142;
      v86 = sub_1B1068078();
      v87 = [v86 userAgent];

      sub_1B1122A5C();
      sub_1B11227AC();
      v88 = sub_1B112278C();
      (*(v141 + 1))(v17, v12);
      v20 = *&v85[OBJC_IVAR___PARSessionSwiftInternal_client];
      v141 = sub_1B1068078();
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_54_0();
      v90 = v77;
      v91 = swift_allocObject();
      v91[2] = v145;
      v91[3] = v143;
      v91[4] = v90;
      v91[5] = v89;
      v91[6] = v76;
      v91[7] = v88;
      swift_retain_n();
      v92 = v90;
      v148 = v89;
      swift_retain_n();
      v93 = v76;
      v142 = v92;
      v18 = v93;
      v28 = &selRef_entityData;
      v137 = [v18 queryId];
      v9 = v146;
      if (qword_1EDAD5DF0 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_78;
    }

    v78 = [v4 urlValue];
    if (v78)
    {
      v79 = v78;
      v77 = v4;
      sub_1B112183C();

      v80 = objc_opt_self();
      v81 = sub_1B112182C();
      v76 = [v80 cardRequestWithURL:v81 queryId:{objc_msgSend(v4, sel_queryId)}];

      (*(v20 + 8))(v24, v18);
      if (v76)
      {
        goto LABEL_53;
      }
    }

    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    }

    v128 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v128, qword_1EDAD5D20);
    v50 = sub_1B112293C();
    v129 = sub_1B1122DDC();
    if (os_log_type_enabled(v50, v129))
    {
      v130 = OUTLINED_FUNCTION_37();
      *v130 = 0;
      _os_log_impl(&dword_1B1064000, v50, v129, "could not create card request", v130, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    goto LABEL_47;
  }

  v63 = v62;
  v149 = v4;
  v3(v63, 0);
LABEL_38:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B1093C88(unint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a1 && (result = sub_1B1097DD8(a1)) != 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B272DFA0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
    }

    v14 = [swift_unknownObjectRetain() encodedData];
    if (v14)
    {
      v15 = sub_1B11218CC();
      v17 = v16;

      v14 = sub_1B11218AC();
      sub_1B106C204(v15, v17);
    }

    [a6 setMapsData_];

    a3(a7, 0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v18 = sub_1B112296C();
    __swift_project_value_buffer(v18, qword_1EDAD5D20);
    v19 = a2;
    v20 = sub_1B112293C();
    v21 = sub_1B1122DDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v24 = sub_1B11230FC();
        v26 = v25;
      }

      else
      {
        v26 = 0xE800000000000000;
        v24 = 0x726F727265206F6ELL;
      }

      v27 = sub_1B10784E0(v24, v26, &v28);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B1064000, v20, v21, "loadCard failed: did not get back a GEOMapItem %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1B272EDD0](v23, -1, -1);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    return a3(a5, a2);
  }
}

uint64_t sub_1B1093F20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A128, &unk_1B1134898);
    v4 = sub_1B1122B8C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1B1093FC0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a2)
    {
      v16 = objc_allocWithZone(PARTask);
      v17 = a2;
      v18 = [v16 init];
      sub_1B10940B0(v18, v15, a8, v17, a9, a6);
    }
  }

  return a4(a6, a3);
}

void sub_1B10940B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [a1 setSession_];

  [a4 scale];
  [a3 setScale_];
  [a1 setRequest_];
  [a4 setTask_];
  if (sub_1B1070B54())
  {
    v12 = [objc_opt_self() responseFromReply_];
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v13 = a3;
      sub_1B107B50C(a5);
      v12 = [swift_getObjCClassFromMetadata() responseFromReply_];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [a3 responseClass];
      swift_getObjCClassMetadata();
      v12 = [swift_getObjCClassFromMetadata() responseFromReply_];
      if (!v12)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = sub_1B1098750(v12);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  if (sub_1B1097DD8(v14))
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B272DFA0](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;

    v18 = [v17 card];

    if (!v18 || !sub_1B10A9060(v18))
    {
      goto LABEL_16;
    }

    sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
    v19 = sub_1B1122B7C();
  }

  else
  {
    v19 = 0;
  }

LABEL_19:
  [a6 setCardSections_];

  if (!v12)
  {
    [a6 setFbr_];
LABEL_39:
    v28 = 0;
    goto LABEL_40;
  }

  v20 = v12;
  v21 = sub_1B1098750(v20);
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v21;
  if (!sub_1B1097DD8(v21))
  {
    v26 = 0;
    goto LABEL_30;
  }

  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 32);
      goto LABEL_25;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = MEMORY[0x1B272DFA0](0, v22);
LABEL_25:
  v24 = v23;

  sub_1B10986E4(v24, &selRef_fbr);
  if (!v25)
  {
LABEL_28:
    v26 = 0;
    goto LABEL_31;
  }

  v26 = sub_1B1122A4C();
LABEL_30:

LABEL_31:
  [a6 setFbr_];

  v12 = v20;
  v27 = sub_1B1098750(v12);
  v28 = v27;
  if (!v27)
  {
LABEL_40:
    [a6 setBackgroundColor_];

    return;
  }

  if (!sub_1B1097DD8(v27))
  {

    goto LABEL_39;
  }

  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 32);
      goto LABEL_36;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = MEMORY[0x1B272DFA0](0, v28);
LABEL_36:
  v30 = v29;

  v31 = [v30 card];

  if (v31)
  {
    v28 = [v31 backgroundColor];

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

Swift::Bool __swiftcall PARSessionSwiftInternal.canLoad(_:)(SFMoreResults a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_16_0();
  return swift_dynamicCastObjCClass() != 0;
}

void sub_1B1094520(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_1B112186C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    _Block_copy(a3);
    v12 = a1;
    v13 = [v10 moreResultsURL];
    sub_1B112183C();

    v14 = sub_1B112182C();
    (*(v6 + 8))(v8, v5);
    v15 = [v11 moreResultsRequestWithURL_];

    if (v15)
    {
      v16 = v15;
      [v10 scale];
      [v16 setScale_];
      [v16 setQueryId_];

      v17 = sub_1B1068078();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _Block_copy(a3);
      v18 = v16;

      sub_1B109CD98();
    }

    else
    {
    }

    _Block_release(a3);
    _Block_release(a3);
  }

  else
  {
    a3[2](a3, 0, 0);

    _Block_release(a3);
  }
}

void PARSessionSwiftInternal.load(_:completionHandler:)()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B112186C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    v14 = v3;
    v15 = [v12 moreResultsURL];
    sub_1B112183C();

    v16 = sub_1B112182C();
    (*(v6 + 8))(v10, v4);
    v17 = [v13 moreResultsRequestWithURL_];

    if (v17)
    {
      v18 = v17;
      [v12 scale];
      [v18 setScale_];
      [v18 setQueryId_];

      v19 = sub_1B1068078();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = v18;

      sub_1B109D408();
    }

    else
    {
    }
  }

  else
  {
    v1(0, 0);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B1094A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  OUTLINED_FUNCTION_48_0();
  v11 = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v7(Strong, v8);
  }

  v13 = Strong;
  if (!v11)
  {

    Strong = 0;
    return v7(Strong, v8);
  }

  v14 = objc_allocWithZone(PARTask);
  v15 = v11;
  v16 = [v14 init];
  v17 = swift_unknownObjectWeakLoadStrong();
  [v16 setSession_];

  [v15 scale];
  [a7 setScale_];
  [v16 setRequest_];
  [v15 setTask_];
  v18 = [objc_opt_self() responseFromReply_];
  if (!v18)
  {
LABEL_9:

    v22 = 0;
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 results];
  if (!v20)
  {

    goto LABEL_9;
  }

  v21 = v20;
  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  v22 = sub_1B1122B8C();

LABEL_10:
  v7(v22, v8);
}

void sub_1B1094C0C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  OUTLINED_FUNCTION_25_0();
  a5(v9);
  _Block_release(v8);
}

void sub_1B1094C94(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
    v3 = sub_1B1122B7C();
  }

  if (a2)
  {
    sub_1B11217EC();
  }

  v4 = OUTLINED_FUNCTION_33_0();
  v5(v4);
}

void PARSessionSwiftInternal.send(_:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_1B106B080(a1, &selRef_data);
  OUTLINED_FUNCTION_34_0();
  if (!v9 & v8)
  {
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    }

    v10 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v10, qword_1EDAD5D20);
    v11 = sub_1B112293C();
    v12 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_60(v12))
    {
      v13 = OUTLINED_FUNCTION_37();
      *v13 = 0;
      _os_log_impl(&dword_1B1064000, v11, v12, "SFCustomFeedback contained no payload", v13, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    if (a2)
    {
      a2();
    }

    return;
  }

  if (MEMORY[0x1B272C8C0]() < 1)
  {
    if (qword_1EDAD5D18 == -1)
    {
LABEL_15:
      v30 = sub_1B112296C();
      OUTLINED_FUNCTION_27_0(v30, qword_1EDAD5D20);
      v31 = sub_1B112293C();
      v32 = sub_1B1122DDC();
      if (OUTLINED_FUNCTION_60(v32))
      {
        v33 = OUTLINED_FUNCTION_37();
        *v33 = 0;
        _os_log_impl(&dword_1B1064000, v31, v32, "SFCustomFeedback contained no data", v33, 2u);
        OUTLINED_FUNCTION_2_0();
      }

      if (a2)
      {
        a2();
      }

      v34 = OUTLINED_FUNCTION_23_0();

      sub_1B106C1F0(v34, v35);
      return;
    }

LABEL_28:
    OUTLINED_FUNCTION_0_8(&qword_1EDAD5D18);
    goto LABEL_15;
  }

  v14 = os_transaction_create();
  v15 = [a1 feedbackType];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v38 = v15;
  v16 = *(*&v3[OBJC_IVAR___PARSessionSwiftInternal_client] + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  OUTLINED_FUNCTION_50_0();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  OUTLINED_FUNCTION_8_1();
  v41 = 1107296256;
  OUTLINED_FUNCTION_3();
  v42 = v18;
  v43 = &block_descriptor_39;
  v19 = _Block_copy(&aBlock);
  v20 = v16;
  sub_1B1098EF0(a2, a3);

  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v19);

  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_58())
  {
    v22 = [a1 feedbackType];
    if (v22 >> 31)
    {
      __break(1u);
      return;
    }

    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739ED0, qword_1B1134608);
    swift_allocObject();

    v25 = sub_1B108E274(v24, 3, 0, v23);
    OUTLINED_FUNCTION_54_0();
    v26 = swift_allocObject();
    v26[2] = v14;
    v26[3] = a2;
    v26[4] = a3;
    v26[5] = v25;
    v26[6] = a1;
    v26[7] = v4;
    OUTLINED_FUNCTION_8_1();
    v41 = 1107296256;
    v42 = sub_1B1095CB4;
    v43 = &block_descriptor_45;
    v27 = _Block_copy(&aBlock);
    sub_1B1098EF0(a2, a3);
    swift_unknownObjectRetain();

    v28 = a1;
    v29 = v4;

    [v39 fileHandleForWritingFeedbackType:v38 reply:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      a2();
    }

    swift_unknownObjectRelease();
  }

  v36 = OUTLINED_FUNCTION_23_0();
  sub_1B106C1F0(v36, v37);
}

void sub_1B10951A4(void *a1, void (*a2)(void))
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v4 = sub_1B112296C();
  __swift_project_value_buffer(v4, qword_1EDAD5D20);
  v5 = a1;
  v6 = sub_1B112293C();
  v7 = sub_1B1122DDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B11230FC();
    v12 = sub_1B10784E0(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1064000, v6, v7, "sendCustomFeedback failed: no remote proxy %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B272EDD0](v9, -1, -1);
    MEMORY[0x1B272EDD0](v8, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_1B109532C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1B1099CA0();
    v18 = swift_allocError();
    *v19 = 5;
    sub_1B108E2D0(v18);

    if (!a4)
    {
      return;
    }

    goto LABEL_14;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  v33 = sub_1B1099CF4;
  v34 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1B10958D0;
  v32 = &block_descriptor_196;
  v12 = _Block_copy(&aBlock);
  v13 = @"com.apple.parsecd.session";
  v14 = a7;
  v15 = a1;

  AnalyticsSendEventLazy();
  _Block_release(v12);

  v16 = sub_1B106B080(v14, &selRef_data);
  if (v17 >> 60 == 15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  aBlock = v16;
  v30 = v17;
  sub_1B1099CFC();
  sub_1B1122D9C();
  sub_1B106C204(aBlock, v30);
  v20 = sub_1B106B080(v14, &selRef_data);
  if (v21 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v22 = v20;
  v23 = v21;
  v24 = MEMORY[0x1B272C8C0]();
  sub_1B106C1F0(v22, v23);
  sub_1B108E2A4(v24);
  aBlock = 0;
  if ([v15 closeAndReturnError_])
  {
    v25 = aBlock;
  }

  else
  {
    v26 = aBlock;
    v27 = sub_1B11217FC();

    swift_willThrow();
  }

  if ([v14 feedbackType] == 10 || objc_msgSend(v14, sel_feedbackType) == 19)
  {
    v28 = sub_1B1122A5C();
    sub_1B109596C(a3, v28);
  }

  if (a4)
  {
LABEL_14:
    a4();
  }
}

uint64_t sub_1B1095820(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A120, qword_1B1134880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1133BA0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  [a1 feedbackType];
  *(inited + 48) = sub_1B1122EFC();
  sub_1B1066864(0, &qword_1EDAD5D40, 0x1E69E58C0);
  return sub_1B1122A0C();
}

id sub_1B10958D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1B1066864(0, &qword_1EDAD5D40, 0x1E69E58C0);
    v4 = sub_1B11229DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B109596C(uint64_t a1, uint64_t a2)
{
  sub_1B1066864(0, qword_1EDAD6030, 0x1E696B0B8);
  v3 = sub_1B10668A4();
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v19 = sub_1B1095E10;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1B108FBF8;
  v18 = &block_descriptor_199;
  v5 = _Block_copy(&aBlock);
  v6 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A110, &qword_1B1134878);
  if (swift_dynamicCast())
  {
    v7 = sub_1B1122A4C();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v19 = nullsub_1;
    v20 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1B10689E0;
    v18 = &block_descriptor_205;
    v9 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v14 flushCustomFeedbackType:v7 completion:v9];
    _Block_release(v9);

    swift_unknownObjectRelease();
    v3 = v7;
  }

  else
  {
    if (qword_1EDAD5D18 != -1)
    {
      swift_once();
    }

    v10 = sub_1B112296C();
    __swift_project_value_buffer(v10, qword_1EDAD5D20);
    v11 = sub_1B112293C();
    v12 = sub_1B1122DDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B1064000, v11, v12, "scheduling eager flush failed: couldn't get FBFDaemonXPC", v13, 2u);
      MEMORY[0x1B272EDD0](v13, -1, -1);
    }
  }
}

void sub_1B1095CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1B1095E10()
{
  if (qword_1EDAD5D18 != -1)
  {
    swift_once();
  }

  v0 = sub_1B112296C();
  __swift_project_value_buffer(v0, qword_1EDAD5D20);
  oslog = sub_1B112293C();
  v1 = sub_1B1122DDC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B1064000, oslog, v1, "scheduling eager flush failed: couldn't get remote proxy", v2, 2u);
    MEMORY[0x1B272EDD0](v2, -1, -1);
  }
}

uint64_t sub_1B1095EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  __swift_allocate_value_buffer(v0, qword_1EDAD64D8);
  __swift_project_value_buffer(v0, qword_1EDAD64D8);
  return sub_1B11226BC();
}

uint64_t sub_1B1095F74(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1B112187C();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1B272C870]();
    }

    else
    {
      v6 = MEMORY[0x1B272C880]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

unint64_t sub_1B10960B4(void *a1)
{
  result = [a1 queryId];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_36_0();

    return [v2 v3];
  }

  return result;
}

void PARSessionSwiftInternal.didSkipSearch(_:input:queryId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(_CPSkipSearchFeedback);

  v7 = sub_1B10976DC(a1, a2, a3);
  v8 = sub_1B1068078();
  v9 = v7;
  OUTLINED_FUNCTION_25_0();
  sub_1B10989C0();
}

Swift::Void __swiftcall PARSessionSwiftInternal.addCompletion(_:forInput:)(Swift::String _, Swift::String forInput)
{
  v3 = v2;
  object = forInput._object;
  countAndFlagsBits = forInput._countAndFlagsBits;
  OUTLINED_FUNCTION_47_0();
  v6 = sub_1B112194C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739EE0, &unk_1B1134620);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B11345C0;
  sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);

  sub_1B112193C();
  v11 = OUTLINED_FUNCTION_23_0();
  *(v10 + 32) = PAREngagedResult.init(_:searchString:type:engagemementTime:)(v11, v12, countAndFlagsBits, object, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v13 = sub_1B1122B7C();

  [v3 addEngagedResults_];
}

Swift::Void __swiftcall PARSessionSwiftInternal.addEngagedResults(_:)(Swift::OpaquePointer a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  OUTLINED_FUNCTION_16_0();
  v2 = sub_1B1122B7C();
  [v1 addEngagedResults:v2 completion:0];
}

void sub_1B1096A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, void *))
{
  v11 = *(a4 + OBJC_IVAR___PARSessionSwiftInternal_client);
  _Block_copy(aBlock);
  v12 = sub_1B1068078();
  a6(a1, a2, a3, v12, v11, aBlock);

  _Block_release(aBlock);
}

void sub_1B1096B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, uint64_t))
{
  v12 = sub_1B1068078();
  a6(a1, a2, a3, v12, a4, a5);
}

uint64_t sub_1B1096BEC(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_1B1122A5C();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  sub_1B1096A7C(v10, v12, a4, v13, v9, a6);
  _Block_release(v9);
}

void sub_1B1096F70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B11217EC();
  }

  v2 = OUTLINED_FUNCTION_33_0();
  v3(v2);
}

uint64_t sub_1B1097090(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t PARSession.load(_:context:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B109715C, 0, 0);
}

uint64_t sub_1B109715C()
{
  v1 = [*(v0 + 168) imageLoader];
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = *(v0 + 160);
    if ([v1 canLoadImage:*(v0 + 152) context:v2])
    {
      type metadata accessor for PARSessionSwiftInternal();
      OUTLINED_FUNCTION_16_0();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + 152);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_1B1097350;
        v6 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F58, &qword_1B1134640);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1B1097534;
        *(v0 + 104) = &block_descriptor_48;
        *(v0 + 112) = v6;
        swift_unknownObjectRetain();
        [v4 loadImage:v5 context:v2 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1B1098E88();
  OUTLINED_FUNCTION_22_0();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_13_0();

  return v8();
}

uint64_t sub_1B1097350()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = sub_1B10974C0;
  }

  else
  {
    v3 = sub_1B1097458;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1097458()
{
  OUTLINED_FUNCTION_9_0();
  swift_unknownObjectRelease_n();
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B10974C0(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_13_0();

  return v1();
}

uint64_t *sub_1B1097534(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1B10975C4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1B1097630(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B10975C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1B1097650(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1B11218AC();
    sub_1B106C1F0(a2, a3);
  }

  v8 = [v3 initWithType:a1 data:v5];

  return v8;
}

id sub_1B10976DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1B1122A4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTriggerEvent:a1 input:v5];

  return v6;
}

uint64_t sub_1B1097750(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B108C2DC;

  return v6();
}

uint64_t sub_1B1097838(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B1088B1C;

  return v7();
}