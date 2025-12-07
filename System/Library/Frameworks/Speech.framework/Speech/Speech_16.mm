uint64_t RequestEndMetrics.deinit()
{

  return v0;
}

uint64_t RequestEndMetrics.__deallocating_deinit()
{
  RequestEndMetrics.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 365, 7);
}

uint64_t destroy for RequestParameters()
{
}

uint64_t initializeWithCopy for RequestParameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);

  return a1;
}

uint64_t assignWithCopy for RequestParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t assignWithTake for RequestParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  return a1;
}

uint64_t getEnumTagSinglePayload for RequestParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
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

uint64_t storeEnumTagSinglePayload for RequestParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Instrumentation.CompletionState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC72B86C()
{
  result = qword_1EB56DBA8[0];
  if (!qword_1EB56DBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB56DBA8);
  }

  return result;
}

uint64_t sub_1AC72B8C0(void *a1)
{
  v1 = [a1 allItnRunIntervals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC72B92C(void *a1)
{
  v1 = [a1 pauseDurations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC72B99C(void *a1)
{
  v1 = [a1 recognizedEmojis];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return sub_1AC79F958();
}

void OUTLINED_FUNCTION_25_14()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t sub_1AC72BAD4()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  MEMORY[0x1B26EABE0](v0 + 24);
  MEMORY[0x1B26EABE0](v0 + 32);

  return v0;
}

uint64_t sub_1AC72BB0C()
{
  sub_1AC72BAD4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1AC72BB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AC6315E0(0, v1, 0);
  v2 = v28;
  result = sub_1AC6C2CA0();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v23 = v3 + 64;
  v24 = v1;
  v25 = v3;
  v26 = v3 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v11 = v6;
      v27 = v5;
      v12 = *(*(v3 + 48) + 8 * v7);
      result = sub_1AC61C264(v12);
      v14 = *(v28 + 16);
      v13 = *(v28 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1AC6315E0(v13 > 1, v14 + 1, 1);
      }

      *(v28 + 16) = v14 + 1;
      *(v28 + 8 * v14 + 32) = v12;
      if (v11)
      {
        goto LABEL_29;
      }

      v3 = v25;
      v9 = v26;
      v15 = 1 << *(v25 + 32);
      if (v7 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v26 + 8 * v10);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v25 + 36) != v27)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1AC637E98(v7, v27, 0);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_1AC637E98(v7, v27, 0);
      }

LABEL_19:
      if (++v8 == v24)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v25 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1AC72BD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1AC63159C(0, v1, 0);
    v5 = sub_1AC6C2CA0();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1AC63159C(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + v12 + 32) = v10;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1AC637E98(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC72BFC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1AC631558(0, v1, 0);
    v5 = sub_1AC6C2CA0();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1AC631558(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + v12 + 32) = v10;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1AC637E98(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC72C200(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for CommandRecognizer.Interpretation(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AC7A08E8())
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AC631704(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v9 = 0;
    v10 = v18;
    v15 = i;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B26E95B0](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(a3 + 8 * v9 + 32);
      }

      i = v12;
      v17 = v12;
      a1(&v17);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v18 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AC631704(v13 > 1, v14 + 1, 1);
        v10 = v18;
      }

      *(v10 + 16) = v14 + 1;
      OUTLINED_FUNCTION_89_0();
      sub_1AC740748();
      ++v9;
      if (v11 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *sub_1AC72C424(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v5 = sub_1AC79F558();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB0, &qword_1AC7B26B0);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v47 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v46 = v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB8, &unk_1AC7B26B8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v45 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - v15;
  v17 = sub_1AC79F568();
  v18 = sub_1AC73F7DC(&qword_1EB56C480, MEMORY[0x1E69687C8]);
  v57 = a1;
  v19 = sub_1AC7A04C8();
  result = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v59 = MEMORY[0x1E69E7CC0];
    v50 = v19;
    sub_1AC7A0A88();
    result = sub_1AC7A0498();
    v41 = *(v12 + 36);
    *&v16[v41] = 0;
    if ((v50 & 0x8000000000000000) == 0)
    {
      v55 = v18;
      v38[1] = v3;
      v21 = 0;
      v22 = 0;
      v44 = (v6 + 8);
      v40 = v8;
      v39 = v5;
      v42 = v17;
      v43 = v12;
      while (!__OFADD__(v21, 1))
      {
        v51 = v21 + 1;
        v52 = v21;
        v53 = *(v56 + 48);
        v54 = v22;
        sub_1AC7A0498();
        sub_1AC73F7DC(&qword_1EB56DDC0, MEMORY[0x1E69687B0]);
        v23 = sub_1AC79FEC8();
        v24 = *v44;
        result = (*v44)(v8, v5);
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1AC7A04E8();
        v25 = sub_1AC79FEB8();
        result = v24(v8, v5);
        if ((v25 & 1) == 0)
        {
          goto LABEL_13;
        }

        v26 = sub_1AC7A0518();
        v28 = v27;
        v29 = sub_1AC79F538();
        v30 = *(v29 - 8);
        v31 = v46;
        v32 = v53;
        (*(v30 + 16))(&v46[v53], v28, v29);
        v26(v58, 0);
        v33 = v47;
        v34 = v54;
        *v47 = v54;
        v35 = *(v56 + 48);
        (*(v30 + 32))(v33 + v35, &v31[v32], v29);
        v48(v34, v33 + v35);
        sub_1AC5C720C(v33, &qword_1EB56DDB0, &qword_1AC7B26B0);
        sub_1AC7A0A68();
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v36 = v45;
        sub_1AC73F820(v16, v45);
        sub_1AC7A04D8();
        v37 = *(v36 + *(v43 + 36));
        result = sub_1AC5C720C(v36, &qword_1EB56DDB8, &unk_1AC7B26B8);
        v22 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_14;
        }

        *&v16[v41] = v22;
        v21 = v52 + 1;
        v5 = v39;
        v8 = v40;
        if (v51 == v50)
        {
          sub_1AC5C720C(v16, &qword_1EB56DDB8, &unk_1AC7B26B8);
          return v59;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC72C984(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AC631838(0, v5, 0);
  v6 = v17;
  v8 = *(sub_1AC79F5C8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1AC631838(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC72CB10(uint64_t result, uint64_t (*a2)(char *, void))
{
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = a2(&v12, *(*(v3 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AC72CBFC(uint64_t a1, void (*a2)(char *, void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      a2(&v7, v5);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1AC72CC70(uint64_t a1, void (*a2)(char *, void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      a2(&v7, v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1AC72CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_104();
  v62 = v26;
  v59 = v27;
  v60 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v61 = v35;
  v37 = v36;
  v39 = v38;
  v57 = a25;
  v58 = a26;
  v55[1] = a23;
  v56 = a24;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v40);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v55 - v42;
  v63 = v55 - v42;
  v44 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v39;
  *(v45 + 40) = v37;
  *(v45 + 48) = v34;
  *(v45 + 56) = v32;
  v47 = v59;
  v46 = v60;
  *(v45 + 64) = v30;
  *(v45 + 72) = v47;
  *(v45 + 80) = v46;
  *(v45 + 88) = a21;
  *(v45 + 96) = a22;
  *(v45 + 104) = a23;
  v49 = v56;
  v48 = v57;
  *(v45 + 112) = v56;
  *(v45 + 120) = v48;
  *(v45 + 128) = v58;
  *(v45 + 136) = v61;
  *(v45 + 144) = v62;
  v50 = v49;

  v51 = v34;
  v52 = v32;
  v53 = v30;
  v54 = v47;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1AC659DBC();

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC72CE74(_OWORD *a1, char a2, char a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return (*(a4 + 16))(a4, v6, a2 & 1, a3 & 1);
}

uint64_t sub_1AC72CEC8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72_5();
  v5 = sub_1AC7A0288();
  OUTLINED_FUNCTION_119_5(v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v0;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = &unk_1AC7B2518;
  v7[5] = v6;
  sub_1AC73E3C8(0, 0, v2, &unk_1AC7B2528, v7);
}

uint64_t sub_1AC72CFB4(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_1AC7A09B8();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v18;
          v11 = v17 + v8;
          v13 = *(v17 + v8);
          if (*(v17 + v8) < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v13 = ((v13 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v13 = ((v13 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1AC7A0A48();
          }

          v11 = (v10 + v8);
          v12 = *(v10 + v8);
          v13 = *(v10 + v8);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_1AC72D1A0(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_1AC72D230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72D6DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72DB88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72E034(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72E4E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72E98C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72EE38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1AC79FDE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED9386C8);
  (*(v12 + 16))(v14, v15, v11);
  if (*(v1 + 40))
  {
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AC5CFE74(0xD000000000000048, 0x80000001AC7BA010, &v37);
      _os_log_impl(&dword_1AC5BC000, v29, v30, "Failed precondition: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B26EAB10](v32, -1, -1);
      MEMORY[0x1B26EAB10](v31, -1, -1);

      v33 = *(v12 + 8);
      v12 += 8;
      v33(v14, v11);
      __break(1u);
    }

    result = (*(v12 + 8))(v14, v11);
    __break(1u);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v16 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
    v36 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    v19 = swift_unknownObjectWeakLoadStrong();
    v34 = v10;
    v20 = v19;
    swift_unknownObjectWeakInit();

    (*(v4 + 16))(v7, a1, v3);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v3;
    v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v4 + 32))(v25 + v21, v7, v23);
    v26 = v35;
    *(v25 + v22) = v36;
    *(v25 + v24) = v26;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    sub_1AC659DBC();
    *(v1 + 40) = v27;
  }

  return result;
}

uint64_t sub_1AC72F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE60, &unk_1AC7B2788);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC72F41C, 0, 0);
}

uint64_t sub_1AC72F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DE68, &qword_1EB56DCA0, &qword_1AC7B2588);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE70, &qword_1EB56DE60, &unk_1AC7B2788);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC72F504()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC72F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC740458;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_344;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE70, &qword_1EB56DE60, &unk_1AC7B2788);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC7403F0;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_336;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC72F8C0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC740390;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_327;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC72FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE40, &qword_1AC7B2768);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC72FBAC, 0, 0);
}

uint64_t sub_1AC72FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DE48, &qword_1EB56DCA8, &qword_1AC7B2598);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE50, &qword_1EB56DE40, &qword_1AC7B2768);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC72FC94()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC72FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC74014C;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_309;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE50, &qword_1EB56DE40, &qword_1AC7B2768);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC740128;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_301;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC730050()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC740104;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_292;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC730204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE28, &qword_1AC7B2748);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC73033C, 0, 0);
}

uint64_t sub_1AC73033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DE30, &qword_1EB56DCB8, &qword_1AC7B25A8);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE38, &qword_1EB56DE28, &qword_1AC7B2748);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC730424()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC730520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC73FF44;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_274;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE38, &qword_1EB56DE28, &qword_1AC7B2748);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC73FF3C;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_266_0;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC7307E0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC73FF18;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_257;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC730994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE10, &qword_1AC7B2728);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC730ACC, 0, 0);
}

uint64_t sub_1AC730ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DE18, &qword_1EB56DCC0, &unk_1AC7B25B0);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DE20, &qword_1EB56DE10, &qword_1AC7B2728);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC730BB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC730CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC7408B8;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_239;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DE20, &qword_1EB56DE10, &qword_1AC7B2728);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC740864;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_231;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC730F70()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC7408BC;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_222;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC731124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDF8, &qword_1AC7B2708);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC73125C, 0, 0);
}

uint64_t sub_1AC73125C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = sub_1AC5C8B9C(&qword_1EB56DE00, &qword_1EB56DCC8, &unk_1AC7B25C0);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_58_0(&qword_1EB56DE08, &qword_1EB56DDF8, &qword_1AC7B2708);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC731358()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC731454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC7408B8;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_203;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_58_0(&qword_1EB56DE08, &qword_1EB56DDF8, &qword_1AC7B2708);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC740864;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_195;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC731714()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC7408BC;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_186;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC7318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDD8, &qword_1AC7B26E0);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC731A00, 0, 0);
}

uint64_t sub_1AC731A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DDE0, &qword_1EB56DCD8, &qword_1AC7B25D8);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DDE8, &qword_1EB56DDD8, &qword_1AC7B26E0);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC731AE8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC731BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC7408B8;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_168_0;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DDE8, &qword_1EB56DDD8, &qword_1AC7B26E0);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC740864;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_160_0;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC731EA4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC7408BC;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_151;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1AC732058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD60, &unk_1AC7B2678);
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC732190, 0, 0);
}

uint64_t sub_1AC732190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_9_18();
  v15(v14);
  v16 = OUTLINED_FUNCTION_13(&qword_1EB56DD68, &qword_1EB56DCF0, &qword_1AC7B25F8);
  OUTLINED_FUNCTION_41_11(v16);
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_7_21(&qword_1EB56DD70, &qword_1EB56DD60, &unk_1AC7B2678);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_18_14(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_20(v18);
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6D8D0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_1AC732278()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC732374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v21 = v17[47];
  if (v21)
  {
    if (OUTLINED_FUNCTION_111_5())
    {
      if (OUTLINED_FUNCTION_59_8())
      {
        OUTLINED_FUNCTION_20_16();
        OUTLINED_FUNCTION_235();
        v22 = swift_allocObject();
        OUTLINED_FUNCTION_60_6(v22);
        OUTLINED_FUNCTION_235();
        swift_allocObject();
        OUTLINED_FUNCTION_54_5();
        Strong = swift_unknownObjectWeakLoadStrong();
        OUTLINED_FUNCTION_47_8(Strong);

        OUTLINED_FUNCTION_573();
        v24 = swift_allocObject();
        v25 = OUTLINED_FUNCTION_81_4(v24);
        v17[18] = sub_1AC73F710;
        v17[19] = v25;
        v17[14] = MEMORY[0x1E69E9820];
        OUTLINED_FUNCTION_5_20(COERCE_DOUBLE(1107296256));
        v17[16] = v26;
        v17[17] = &block_descriptor_131;
        _Block_copy(v16);
        OUTLINED_FUNCTION_110_3();
        OUTLINED_FUNCTION_113_5();
        v27 = OUTLINED_FUNCTION_49_8();
        [v27 v28];

        swift_unknownObjectRelease();
        _Block_release(v16);

        OUTLINED_FUNCTION_7_21(&qword_1EB56DD70, &qword_1EB56DD60, &unk_1AC7B2678);
        v29 = swift_task_alloc();
        v30 = OUTLINED_FUNCTION_18_14(v29);
        *v30 = v31;
        OUTLINED_FUNCTION_0_20(v30);
        OUTLINED_FUNCTION_636();

        return MEMORY[0x1EEE6D8D0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }

      swift_unknownObjectRelease();
    }
  }

  v40 = OUTLINED_FUNCTION_17_12();
  v41(v40);
  OUTLINED_FUNCTION_42_12();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_27_12();
    v42 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_61_6(v42);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_26_16();
    v43 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(v43);

    OUTLINED_FUNCTION_99();
    v44 = swift_allocObject();
    *(v44 + 16) = v16;
    *(v44 + 24) = v18;
    v17[12] = sub_1AC73F6F4;
    v17[13] = v44;
    v17[8] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_3_15(COERCE_DOUBLE(1107296256));
    v17[10] = v45;
    v17[11] = &block_descriptor_123;
    _Block_copy(v14);
    v46 = OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_108_3(v46, sel_addOperationWithBlock_);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_636();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_1AC732634()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_79_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  if (OUTLINED_FUNCTION_109_4())
  {
    OUTLINED_FUNCTION_107_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_62_7(0, MEMORY[0x1E69E7288]);
    OUTLINED_FUNCTION_77_5(v5, v6);
  }

  v7 = OUTLINED_FUNCTION_16_16();
  v8(v7);
  OUTLINED_FUNCTION_37_13();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_25_15();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_48_9(Strong);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_235();
    swift_allocObject();
    OUTLINED_FUNCTION_28_14();
    v10 = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_47_8(v10);

    OUTLINED_FUNCTION_573();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_80_6(v11);
    v2[6] = sub_1AC73F6D0;
    v2[7] = v12;
    v2[2] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_2_22(COERCE_DOUBLE(1107296256));
    v2[4] = v13;
    v2[5] = &block_descriptor_15;
    _Block_copy(v4);
    OUTLINED_FUNCTION_63_6();

    v14 = OUTLINED_FUNCTION_49_8();
    [v14 v15];

    _Block_release(v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

void sub_1AC7327E8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  OUTLINED_FUNCTION_64_7(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_12(a2 + 16, &v11);
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v8 *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AC732880(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_64_7(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_12(a2 + 16, &v10);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v7 *a3];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AC732914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AC73298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_64_7(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_12(a2 + 16, &v9);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if ([v6 respondsToSelector_])
      {
        [v6 speechAnalyzerDidProduceAllTranscriberResults_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AC732A34(uint64_t a1, char *a2, uint64_t a3, SEL *a4)
{
  OUTLINED_FUNCTION_64_7(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_12((a2 + 16), &v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_154_1();
      v8 = sub_1AC79F738();
      [v7 *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AC732AD8()
{
  v1 = *v0;
  if (*v0)
  {

    sub_1AC60E1D0();
    v3 = v2;
    v4 = *(v2 + 16);
    if (v4 >= *(v2 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v28;
    }

    v5 = sub_1AC73F7DC(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber);
    *(v3 + 16) = v4 + 1;
    v6 = v3 + 16 * v4;
    *(v6 + 32) = v1;
    *(v6 + 40) = v5;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[1];
  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E1D0();
      v3 = v29;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v30;
    }

    v9 = sub_1AC73F7DC(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
    *(v3 + 16) = v8 + 1;
    v10 = v3 + 16 * v8;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
  }

  v11 = v0[2];
  if (v11)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E1D0();
      v3 = v31;
    }

    v12 = *(v3 + 16);
    if (v12 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v32;
    }

    v13 = sub_1AC73F7DC(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber);
    *(v3 + 16) = v12 + 1;
    v14 = v3 + 16 * v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
  }

  v15 = v0[3];
  if (v15)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E1D0();
      v3 = v33;
    }

    v16 = *(v3 + 16);
    if (v16 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v34;
    }

    v17 = sub_1AC73F7DC(&qword_1EB56B038, type metadata accessor for EndpointDetector);
    *(v3 + 16) = v16 + 1;
    v18 = v3 + 16 * v16;
    *(v18 + 32) = v15;
    *(v18 + 40) = v17;
  }

  v19 = v0[4];
  if (v19)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E1D0();
      v3 = v35;
    }

    v20 = *(v3 + 16);
    if (v20 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v36;
    }

    v21 = sub_1AC73F7DC(&qword_1EB56CAA8, type metadata accessor for LanguageDetector);
    *(v3 + 16) = v20 + 1;
    v22 = v3 + 16 * v20;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
  }

  v23 = v0[5];
  if (v23)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E1D0();
      v3 = v37;
    }

    v24 = *(v3 + 16);
    if (v24 >= *(v3 + 24) >> 1)
    {
      sub_1AC60E1D0();
      v3 = v38;
    }

    v25 = sub_1AC73F7DC(&qword_1EB56CB28, type metadata accessor for SpeechDetector);
    *(v3 + 16) = v24 + 1;
    v26 = v3 + 16 * v24;
    *(v26 + 32) = v23;
    *(v26 + 40) = v25;
  }

  return v3;
}

void *sub_1AC732F40()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
  v2 = v1;
  return v1;
}

uint64_t sub_1AC732FCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat);
  *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat) = a1;
  return MEMORY[0x1EEE66BB8](a1, v2);
}

id sub_1AC732FE0(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat;
  *&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_audioFormat] = 0;
  memcpy(&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules], __src, 0x50uLL);
  *&v6[v12] = a2;
  v13 = &v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier];
  *v13 = a3;
  v13[1] = a4;
  v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_formatForNewLines] = a5;
  *&v6[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue] = a6;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for ObjCSpeechAnalyzerConfiguration();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_1AC7331CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104();
  v92 = v29;
  v97 = v30;
  v100 = v31;
  v99 = v32;
  v87 = v33;
  v86 = v34;
  v84 = v35;
  v37 = v36;
  v90 = v38;
  v91 = a24;
  v98 = a23;
  v96 = a25;
  v95 = a26;
  v94 = a21;
  v89 = a27;
  v81 = a28;
  v93 = a29;
  swift_getObjectType();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  OUTLINED_FUNCTION_167(v39);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_89_1();
  v88 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  OUTLINED_FUNCTION_167(v42);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_89_1();
  v85 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7A0, &unk_1AC7B2560);
  OUTLINED_FUNCTION_40();
  v47 = v46;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v78 - v49;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40();
  v82 = v51;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_89_1();
  v79 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_40();
  v78 = v55;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v78 - v57;
  sub_1AC5D9374(a28, v93);
  sub_1AC7337B8(v37, v84, v98, v96, v95, v99, v100, v102, v97, v94);
  v59 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzerConfiguration());
  sub_1AC73ED4C(v102, v101);
  v80 = v86;
  v60 = a22;
  OUTLINED_FUNCTION_103_4();
  v65 = sub_1AC732FE0(v61, v62, v63, v64, v87, v60);
  (*(v47 + 104))(v50, *MEMORY[0x1E69E8650], v45);
  v66 = v79;
  sub_1AC7A0298();
  (*(v47 + 8))(v50, v45);
  v67 = v78;
  v68 = v85;
  v69 = v54;
  (*(v78 + 16))(v85, v58, v54);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v54);
  v70 = v82;
  v71 = v88;
  v72 = v83;
  (*(v82 + 16))(v88, v66, v83);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
  v73 = objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzer(0));
  v74 = v68;
  v75 = v71;
  v76 = v81;
  v77 = v93;
  sub_1AC7340EC(v90, v65, v74, v75, v91, v89, v81, v93);
  sub_1AC5C3958(v76, v77);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1AC73ED84(v102);
  (*(v70 + 8))(v66, v72);
  (*(v67 + 8))(v58, v69);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC7337B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v80 = a1;
  v79 = type metadata accessor for ClientInfo(0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1AC79FB18();
  v86 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v19 = off_1ED937D60;
    v20 = a3;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_1AC79FDE8();
    __swift_project_value_buffer(v21, qword_1ED9386C8);
    if ([v20 transcriptionOptions])
    {
LABEL_40:
      v60 = sub_1AC79FDC8();
      v61 = sub_1AC7A05F8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v87 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1AC5CFE74(0xD00000000000004ALL, 0x80000001AC7BA0B0, &v87);
        _os_log_impl(&dword_1AC5BC000, v60, v61, "Failed precondition: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1B26EAB10](v63, -1, -1);
        MEMORY[0x1B26EAB10](v62, -1, -1);
      }

      __break(1u);
      goto LABEL_43;
    }

    if (([v20 transcriptionOptions] & 2) != 0)
    {
LABEL_43:
      v64 = sub_1AC79FDC8();
      v65 = sub_1AC7A05F8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v87 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_1AC5CFE74(0xD00000000000004ELL, 0x80000001AC7BA060, &v87);
        _os_log_impl(&dword_1AC5BC000, v64, v65, "Failed precondition: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x1B26EAB10](v67, -1, -1);
        MEMORY[0x1B26EAB10](v66, -1, -1);
      }

      __break(1u);
      goto LABEL_46;
    }

    if (a6)
    {
      v76 = a2;
      v22 = v20;
      if ([v22 taskHint] - 1009 > 1)
      {
        sub_1AC737DB0(v22);
        v24 = v26;
        sub_1AC73694C(v22);
        v84 = v27;
        v23 = 0;
        if (a7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v23 = sub_1AC738288(v22);
        v84 = 0;
        v24 = 0;
        if (a7)
        {
LABEL_9:
          sub_1AC6F4A30([v22 taskHint], v90);
          v87 = 0uLL;
          v88 = 0;
          v89 = 256;
          type metadata accessor for EndpointDetector(0);
          swift_allocObject();
          v83 = EndpointDetector.init(taskHint:detectionOptions:)(v90, &v87);

LABEL_13:
          v25 = v24;
          a2 = v76;
          goto LABEL_14;
        }
      }

      v83 = 0;
      goto LABEL_13;
    }
  }

  v83 = 0;
  v84 = 0;
  v23 = 0;
  v25 = 0;
LABEL_14:
  v28 = 0;
  v82 = a9;
  if (a9 && a4)
  {
    v75 = a7;
    v29 = v23;
    v20 = a4;
    v30 = sub_1AC73EF64(v20);
    v74 = a5;
    if (v30)
    {
      v31 = v30;
      v73 = a8;
      v32 = *(v30 + 16);
      if (v32)
      {
        v69 = v20;
        v70 = v25;
        v71 = v29;
        v76 = a2;
        v72 = a6;
        *&v87 = MEMORY[0x1E69E7CC0];
        sub_1AC63110C(0, v32, 0);
        v33 = v87;
        v34 = v86 + 16;
        v86 = *(v86 + 16);
        v35 = (*(v34 + 64) + 32) & ~*(v34 + 64);
        v68 = v31;
        v85 = v35;
        v36 = v31 + v35;
        v37 = *(v34 + 56);
        v38 = (v34 + 16);
        v40 = v77;
        v39 = v78;
        do
        {
          (v86)(v40, v36, v39);
          *&v87 = v33;
          v42 = *(v33 + 16);
          v41 = *(v33 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1AC63110C(v41 > 1, v42 + 1, 1);
            v39 = v78;
            v33 = v87;
          }

          *(v33 + 16) = v42 + 1;
          (*v38)(v33 + v85 + v42 * v37, v40, v39);
          v36 += v37;
          --v32;
        }

        while (v32);

        v29 = v71;
        a6 = v72;
        a2 = v76;
        v25 = v70;
        v20 = v69;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      a8 = v73;
    }

    else
    {
      v33 = 0;
    }

    v43 = [v20 alternativeCount];
    v44 = [v20 resultReportingFrequency];
    if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v44;
      v46 = v44;
      v47 = [v20 useVAD];
      if (v45 >= 3)
      {
        v48 = 1;
      }

      else
      {
        v48 = v46;
      }

      if (v47)
      {
        v49 = 256;
      }

      else
      {
        v49 = 0;
      }

      *&v87 = v33;
      *(&v87 + 1) = v43;
      LOWORD(v88) = v49 | v48;
      v50 = *(v79 + 32);
      v51 = type metadata accessor for ClientInfo.LoggingInfo(0);
      v52 = v81;
      __swift_storeEnumTagSinglePayload(&v81[v50], 1, 1, v51);
      *v52 = v80;
      *(v52 + 8) = a2;
      *(v52 + 16) = 0;
      *(v52 + 24) = 0xE000000000000000;
      *(v52 + 32) = xmmword_1AC7AC470;
      *(v52 + 48) = xmmword_1AC7AC470;
      type metadata accessor for LanguageDetector(0);
      swift_allocObject();

      v28 = LanguageDetector.init(options:clientInfo:)(&v87, v52);

      v23 = v29;
      a5 = v74;
      a7 = v75;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_34:
  v53 = 0;
  if (!a10 || !a5)
  {
    goto LABEL_38;
  }

  v54 = a5;
  v55 = [v54 sensitivityLevel];
  if (v55 < 3)
  {
    LOBYTE(v87) = v55;
    v56 = [v54 reportResults];
    type metadata accessor for SpeechDetector(0);
    swift_allocObject();
    v53 = SpeechDetector.init(detectionOptions:reportResults:)(&v87, v56);

LABEL_38:
    v57 = v83;
    v58 = v84;
    *a8 = v25;
    a8[1] = v58;
    a8[2] = v23;
    a8[3] = v57;
    a8[4] = v28;
    a8[5] = v53;
    a8[6] = a6;
    a8[7] = a7;
    a8[8] = v82;
    a8[9] = a10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    return swift_unknownObjectRetain();
  }

LABEL_46:
  result = sub_1AC7A0B78();
  __break(1u);
  return result;
}

id sub_1AC7340EC(void *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  v13 = OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_inputStreamBuilder;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  __swift_storeEnumTagSinglePayload(&v8[v13], 1, 1, v14);
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_normalizedTranscriber] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_contextualizedTranscriber] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_endpointDetector] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_languageDetector] = 0;
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechDetector] = 0;
  v15 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue];
  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_queue] = v15;
  swift_beginAccess();
  sub_1AC5D9374(a7, a8);
  v16 = v15;
  sub_1AC74047C();
  swift_endAccess();
  v17 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 64];
  v18 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 72];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_167_0();
  sub_1AC73433C(v19, v20, v21, v22, v17, v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = sub_1AC735990(a5, a6, a3, a2, a7, a8);

  *&v8[OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer] = v23;
  v30.receiver = v8;
  v30.super_class = type metadata accessor for ObjCSpeechAnalyzer(0);
  v24 = objc_msgSendSuper2(&v30, sel_init);
  sub_1AC5C3958(a7, a8);

  sub_1AC5C720C(a4, &qword_1EB56C780, &qword_1AC7AA798);
  sub_1AC5C720C(a3, &qword_1EB56C788, &qword_1AC7AA7A0);
  return v24;
}

uint64_t sub_1AC73433C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a6;
  v131 = a5;
  v133 = a1;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v75 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v75 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v75 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v75 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  v109 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v75 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v75 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v75 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D0D8, &qword_1AC7AD658);
  v87 = *(v88 - 8);
  v16 = MEMORY[0x1EEE9AC00](v88);
  v82 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v75 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v75 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D0E8, &qword_1AC7AD660);
  v81 = *(v108 - 8);
  v20 = MEMORY[0x1EEE9AC00](v108);
  v80 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v75 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD0, &qword_1AC7B25D0);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v75 - v23;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v75 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C3F8, &qword_1AC7B25E0);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v75 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCE0, &qword_1AC7B25E8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v75 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCE8, &qword_1AC7B25F0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v28 = &v75 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C408, &qword_1AC7A8F50);
  v92 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v75 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF8, &qword_1AC7B3F10);
  result = MEMORY[0x1EEE9AC00](v32);
  v36 = &v75 - v35;
  v37 = &unk_1EB56D000;
  if (!a3)
  {
    goto LABEL_17;
  }

  v76 = v34;
  v115 = a4;
  v38 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_queue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD20, &qword_1AC7B2620);
  swift_initStackObject();
  swift_unknownObjectRetain_n();
  v39 = v38;
  v40 = v133;
  v116 = a3;
  v78 = v39;
  v77 = v40;
  v117 = sub_1AC72D1A0(a3, v39, v40);
  v130 = a2;
  v41 = &a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules];
  if (*&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules])
  {
    v42 = *(v41 + 1);
    if (v42)
    {
      v79 = &a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules];
      v43 = sub_1AC637EF8();

      if (v43)
      {
        NormalizingTranscriber.multisegmentResults.getter();
        DictationTranscriber.multisegmentResults.getter();
        sub_1AC5C8B9C(&qword_1EB56DD50, &qword_1EB56DCF8, &qword_1AC7B3F10);
        sub_1AC5C8B9C(&qword_1EB56C400, &qword_1EB56C408, &qword_1AC7A8F50);
        sub_1AC79FCE8();
        sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
        sub_1AC5C8B9C(&qword_1EB56DD58, &qword_1EB56DCE8, &qword_1AC7B25F0);
        sub_1AC7A0B08();
        sub_1AC72D230(v28);

        (*(v93 + 8))(v28, v95);
        (*(v92 + 8))(v31, v29);
        (*(v76 + 8))(v36, v32);
      }

      else
      {
        v51 = v96;
        NormalizingTranscriber.results.getter();
        v52 = v99;
        DictationTranscriber.results.getter();
        v108 = v42;
        sub_1AC5C8B9C(&qword_1EB56DD40, &qword_1EB56DCE0, &qword_1AC7B25E8);
        sub_1AC5C8B9C(&qword_1EB56C3F0, &qword_1EB56C3F8, &qword_1AC7B25E0);
        v53 = v98;
        v54 = v101;
        sub_1AC79FCE8();
        sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
        sub_1AC5C8B9C(&qword_1EB56DD48, &qword_1EB56DCD0, &qword_1AC7B25D0);
        v55 = v102;
        sub_1AC7A0B08();
        sub_1AC72D6DC(v55);

        (*(v104 + 8))(v55, v106);
        (*(v100 + 8))(v52, v54);
        (*(v97 + 8))(v51, v53);
      }

      a2 = v130;
      v44 = v115;
      v37 = &unk_1EB56D000;
      goto LABEL_12;
    }
  }

  a2 = v130;
  v44 = v115;
  v37 = &unk_1EB56D000;
  if (*(v41 + 2))
  {
    v79 = v41;
    v45 = sub_1AC637EF8();

    if (v45)
    {
      v46 = v107;
      SpeechTranscriber.multisegmentResults.getter();
      v47 = v81;
      (*(v81 + 16))(v80, v46, v108);
      *(swift_allocObject() + 16) = a2;
      sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
      sub_1AC5C8B9C(&qword_1EB56D0E0, &qword_1EB56D0E8, &qword_1AC7AD660);
      v48 = v130;
      v49 = v83;
      v50 = v108;
      a2 = v130;
      sub_1AC7A0CB8();
      sub_1AC72DB88(v49);

      (*(v84 + 8))(v49, v86);
      (*(v47 + 8))(v107, v50);
    }

    else
    {
      v56 = v85;
      SpeechTranscriber.results.getter();
      v57 = v87;
      v58 = v88;
      (*(v87 + 16))(v82, v56, v88);
      sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
      sub_1AC5C8B9C(&qword_1EB56D0D0, &qword_1EB56D0D8, &qword_1AC7AD658);
      v59 = v89;
      sub_1AC7A0B08();
      sub_1AC72E034(v59);

      (*(v90 + 8))(v59, v91);
      (*(v57 + 8))(v56, v58);
    }

LABEL_12:
    v41 = v79;
  }

  v60 = *(v41 + 3);
  if (v60 && v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD28, &qword_1AC7B2628);
    swift_initStackObject();
    swift_unknownObjectRetain_n();
    v61 = v78;
    v62 = v77;

    sub_1AC72D1A0(v44, v61, v62);
    (*(v109 + 16))(v110, v60 + OBJC_IVAR____TtC6Speech16EndpointDetector__results, v112);
    sub_1AC5CF764(0, &qword_1EB56DD30, off_1E797ACB8);
    sub_1AC5C8B9C(&qword_1EB56AC28, &qword_1EB56DCB0, &qword_1AC7B25A0);
    v63 = v111;
    a2 = v130;
    sub_1AC7A0B08();
    sub_1AC72E4E0(v63);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    result = (*(v113 + 8))(v63, v114);
  }

  else
  {

    result = swift_unknownObjectRelease();
  }

LABEL_17:
  v64 = v131;
  if (v131)
  {
    v65 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 32];
    if (v65)
    {
      v66 = *&a2[v37[394]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD10, &qword_1AC7B2610);
      swift_initStackObject();
      swift_unknownObjectRetain_n();
      v67 = a2;
      v68 = v133;

      sub_1AC72D1A0(v64, v66, v68);
      (*(v118 + 16))(v119, v65 + OBJC_IVAR____TtC6Speech16LanguageDetector__results, v123);
      sub_1AC5CF764(0, &qword_1EB56DD18, off_1E797ACD0);
      sub_1AC5C8B9C(&qword_1EB56CAD0, &qword_1EB56CA70, &qword_1AC7B2590);
      v69 = v120;
      a2 = v67;
      sub_1AC7A0B08();
      sub_1AC72E98C(v69);
      swift_unknownObjectRelease();

      result = (*(v121 + 8))(v69, v122);
    }
  }

  v70 = v132;
  if (v132)
  {
    v71 = *&a2[OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules + 40];
    if (v71)
    {
      v72 = *&a2[v37[394]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD00, &qword_1AC7B2600);
      swift_initStackObject();
      swift_unknownObjectRetain_n();
      v73 = v133;

      sub_1AC72D1A0(v70, v72, v73);
      (*(v124 + 16))(v125, v71 + OBJC_IVAR____TtC6Speech14SpeechDetector__results, v129);
      sub_1AC5CF764(0, &qword_1EB56DD08, off_1E797AD18);
      sub_1AC5C8B9C(&qword_1EB56CB38, &qword_1EB56CAE8, &qword_1AC7B2580);
      v74 = v126;
      sub_1AC7A0B08();
      sub_1AC72EE38(v74);
      swift_unknownObjectRelease();

      return (*(v127 + 8))(v74, v128);
    }
  }

  return result;
}

uint64_t sub_1AC735990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v80 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C788, &qword_1AC7AA7A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - v13;
  v15 = type metadata accessor for ClientInfo(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v81 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v78 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v71 - v29;
  v75 = v14;
  v73 = v20;
  if (a1)
  {
    __dst[0] = a1;
    sub_1AC738E20(__dst, &v71 - v29);
    v31 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    v32 = [a1 loggingInfo];
    if (v32)
    {
      v33 = v32;
      v34 = [v33 asrID];
      sub_1AC79F938();

      v35 = [v33 requestID];
      v36 = type metadata accessor for ClientInfo.LoggingInfo(0);
      v76 = v30;
      v77 = a5;
      v37 = v36;
      sub_1AC79F938();

      v38 = [v33 dictationUIInteractionID];
      v39 = a4;
      v40 = sub_1AC79FF68();
      v42 = v41;

      v43 = &v25[*(v37 + 24)];
      *v43 = v40;
      v43[1] = v42;
      a4 = v39;
      v44 = v25;
      v45 = 0;
      v46 = v37;
      a5 = v77;
      v30 = v76;
      goto LABEL_6;
    }
  }

  else
  {
    v47 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v47);
    v32 = 0;
  }

  v46 = type metadata accessor for ClientInfo.LoggingInfo(v32);
  v44 = v25;
  v45 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  v49 = *(a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier);
  v48 = *(a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_clientIdentifier + 8);
  sub_1AC5C6E6C();
  *v22 = v49;
  *(v22 + 1) = v48;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0xE000000000000000;
  *(v22 + 2) = xmmword_1AC7AC470;
  *(v22 + 3) = xmmword_1AC7AC470;
  type metadata accessor for AnalysisContext();
  swift_allocObject();

  v82 = AnalysisContext.init()();
  v50 = v81;
  if (a2)
  {
    v51 = sub_1AC61C24C();
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v53 = v51;
      v84 = MEMORY[0x1E69E7CC0];
      result = sub_1AC631538(0, v51 & ~(v51 >> 63), 0);
      if (v53 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      v71 = a4;
      v76 = v30;
      v72 = v25;
      v77 = a5;
      v55 = 0;
      v52 = v84;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1B26E95B0](v55, a2);
        }

        else
        {
          v56 = *(a2 + 8 * v55 + 32);
        }

        v57 = v56;
        memcpy(__dst, &v56[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity], 0x48uLL);
        sub_1AC73E6A4(__dst, v83);

        v84 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1AC631538((v58 > 1), v59 + 1, 1);
          v52 = v84;
        }

        ++v55;
        *(v52 + 16) = v59 + 1;
        memcpy((v52 + 72 * v59 + 32), __dst, 0x48uLL);
      }

      while (v53 != v55);
      a5 = v77;
      v25 = v72;
      v30 = v76;
      a4 = v71;
      v50 = v81;
    }

    AnalysisContext.contextualNamedEntities.setter(v52);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  if (__swift_getEnumTagSinglePayload(v80, 1, v60) == 1)
  {
    v61 = v73;
    sub_1AC7404D4();
    memcpy(__dst, (a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules), sizeof(__dst));
    v62 = sub_1AC732AD8();
    v63 = v78;
    sub_1AC5C6E6C();
    type metadata accessor for SpeechAnalyzer(0);
    swift_allocObject();
    v64 = SpeechAnalyzer.init(client:modules:options:)(v61, v62, v63);
    v65 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v65);
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v66[4] = v64;
    v66[5] = a5;
    v67 = v79;
    v66[6] = v79;

    sub_1AC5D9374(a5, v67);
    sub_1AC659DBC();

    sub_1AC5C3958(a5, v67);
LABEL_22:
    sub_1AC74052C(v22, type metadata accessor for ClientInfo);
    sub_1AC5C720C(v25, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC5C720C(v30, &qword_1EB56C7D0, &qword_1AC7ACB40);
    return v64;
  }

  sub_1AC7404D4();
  v68 = v74;
  sub_1AC5C6E6C();
  result = __swift_getEnumTagSinglePayload(v68, 1, v60);
  if (result != 1)
  {
    memcpy(__dst, (a4 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_modules), sizeof(__dst));
    v69 = sub_1AC732AD8();
    v70 = v78;
    sub_1AC5C6E6C();
    type metadata accessor for SpeechAnalyzer(0);
    swift_allocObject();
    v64 = sub_1AC6C3224(v50, v68, v69, v70, v82, a5, v79);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1AC736200()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40();
  v7 = v6;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72_5();
  v9 = OUTLINED_FUNCTION_123_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_167(v11);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DC90, &qword_1AC7B24F0);
  OUTLINED_FUNCTION_167(v15);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_inputStreamBuilder, &v30);
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v5))
  {
    sub_1AC5C720C(v14, &qword_1EB56C780, &qword_1AC7AA798);
    v17 = 1;
  }

  else
  {
    (*(v7 + 16))(v1, v14, v5);
    sub_1AC5C720C(v14, &qword_1EB56C780, &qword_1AC7AA798);
    v29 = 1;
    v28 = 1;
    v22[0] = v4;
    memset(&v22[1], 0, 24);
    v23 = 1;
    v24 = 0;
    v25 = 1;
    v26 = 0;
    v27 = 1;
    v18 = v4;
    sub_1AC7A02A8();
    v19 = OUTLINED_FUNCTION_172();
    v20(v19);
    v17 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DC98, &qword_1AC7B24F8);
  __swift_storeEnumTagSinglePayload(v2, v17, 1, v21);
  sub_1AC5C720C(v2, &qword_1EB56DC90, &qword_1AC7B24F0);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC73645C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C798, &qword_1AC7B2480);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C780, &qword_1AC7AA798);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_inputStreamBuilder, v12);
  OUTLINED_FUNCTION_103_4();
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    return sub_1AC5C720C(v2, &qword_1EB56C780, &qword_1AC7AA798);
  }

  (*(v5 + 16))(v1, v2, v3);
  sub_1AC5C720C(v2, &qword_1EB56C780, &qword_1AC7AA798);
  sub_1AC7A02B8();
  v10 = OUTLINED_FUNCTION_172();
  return v11(v10);
}

uint64_t sub_1AC7365F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC736608()
{
  OUTLINED_FUNCTION_57();
  v14 = v0;
  v1 = v0[12];
  sub_1AC6F4A30([v1 taskHint], &v10);
  sub_1AC73694C(v1);
  v3 = v2;
  v0[14] = v2;
  v11 = 0uLL;
  v12 = 0;
  v13 = 256;
  type metadata accessor for EndpointDetector(0);
  swift_allocObject();
  v4 = EndpointDetector.init(taskHint:detectionOptions:)(&v10, &v11);
  v0[15] = v4;
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD80, &unk_1AC7A81A0);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1AC7A8780;
  v6 = sub_1AC73F7DC(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  *(inited + 32) = v3;
  *(inited + 40) = v6;
  v7 = sub_1AC73F7DC(&qword_1EB56B038, type metadata accessor for EndpointDetector);
  *(inited + 48) = v4;
  *(inited + 56) = v7;

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1AC7367DC;

  return sub_1AC70E5A4();
}

uint64_t sub_1AC7367DC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *(v6 + 144) = v5;

  swift_setDeallocating();
  sub_1AC724180();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC7368E8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 144);

  return v1(v2);
}

void sub_1AC73694C(void *a1)
{
  v2 = type metadata accessor for DictationTranscriber.Preset(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1AC79FB18();
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for DictationTranscriber(0);
  v4 = [a1 locale];
  sub_1AC79FA18();

  sub_1AC738350();
  DictationTranscriber.__allocating_init(locale:preset:)();
}

uint64_t sub_1AC736AE8(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1AC79FF68();
  v8 = v7;
  v4[4] = v7;
  swift_getObjCClassMetadata();
  v9 = a2;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1AC736BD8;

  return sub_1AC7365F0(v6, v8, v9);
}

uint64_t sub_1AC736BD8()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC736D2C(uint64_t a1, const void *a2)
{
  *(v2 + 1072) = a1;
  memcpy((v2 + 16), a2, 0x209uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC736D9C, 0, 0);
}

uint64_t sub_1AC736D9C()
{
  OUTLINED_FUNCTION_45();
  v6 = v0;
  v1 = v0[134];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F734((v0 + 35));
  memcpy(__dst, v0 + 2, 0x101uLL);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F788((v0 + 2));
  memcpy(v5, v0 + 35, 0x101uLL);
  *v1 = sub_1AC736E94(__dst, v5);
  OUTLINED_FUNCTION_44();

  return v2();
}

id sub_1AC736E94(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v13, a2, sizeof(v13));
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC637CF4(__dst, &v12);
  sub_1AC73BD0C();
  v5 = v4;
  sub_1AC73BD0C();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_31_12();
  v10 = [v8 v9];

  sub_1AC73F788(__dst);
  return v10;
}

uint64_t sub_1AC736FF8(uint64_t a1, const void *a2)
{
  *(v2 + 336) = a1;
  memcpy((v2 + 16), a2, 0xA0uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC737068, 0, 0);
}

uint64_t sub_1AC737068()
{
  v6 = v0;
  v1 = v0[42];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73F9BC((v0 + 12));
  memcpy(v4, v0 + 2, sizeof(v4));
  OUTLINED_FUNCTION_167_0();
  sub_1AC5C6E6C();
  sub_1AC73FA10((v0 + 2));
  memcpy(__dst, v0 + 12, sizeof(__dst));
  *v1 = sub_1AC73715C(v4, __dst);
  OUTLINED_FUNCTION_44();

  return v2();
}

id sub_1AC73715C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, a2, sizeof(v13));
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC73FA64(__dst, &v12);
  sub_1AC73C784();
  v5 = v4;
  sub_1AC73C784();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_31_12();
  v10 = [v8 v9];

  sub_1AC73FA10(__dst);
  return v10;
}

uint64_t sub_1AC737240(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[70] = a3;
  v3[69] = a2;
  v3[68] = a1;
  memcpy(v3 + 2, a2, 0x101uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC7372B8, 0, 0);
}

uint64_t sub_1AC7372B8()
{
  v8 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  memcpy(v7, v2, 0x101uLL);
  v4 = *(v1 + OBJC_IVAR____TtC6Speech31ObjCSpeechAnalyzerConfiguration_formatForNewLines);
  sub_1AC637DAC((v0 + 2), (v0 + 35));
  *v3 = sub_1AC737380(v7, v4);
  OUTLINED_FUNCTION_44();

  return v5();
}

id sub_1AC737380(void *__src, uint64_t a2)
{
  v2 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC637DAC(__dst, v8);
  sub_1AC73BD0C();
  v4 = v3;
  if (v2 & 1) != 0 && (sub_1AC73CE34())
  {

    sub_1AC73FBAC(__dst);
    return 0;
  }

  else
  {
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8[0] = *__dst;
    v8[1] = *&__dst[16];
    v8[2] = *&__dst[32];
    v5 = [v6 initWithRange:v8 contextualizedTranscriberMultisegmentResult:v4];

    sub_1AC73FBAC(__dst);
  }

  return v5;
}

uint64_t sub_1AC737498(uint64_t a1, const void *a2)
{
  v2[22] = a1;
  v2[23] = a2;
  memcpy(v2 + 2, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC737508, 0, 0);
}

uint64_t sub_1AC737508()
{
  v6 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  sub_1AC5CF764(0, &qword_1EB56DD38, off_1E797AD80);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC73FD7C(v0 + 16, v0 + 96);
  *v2 = sub_1AC7375B0(__dst);
  OUTLINED_FUNCTION_44();

  return v3();
}

id sub_1AC7375B0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AC73FD7C(__dst, &v8);
  sub_1AC73C784();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_31_12();
  v6 = [v4 v5];

  sub_1AC73FDD8(__dst);
  return v6;
}

uint64_t sub_1AC737650(uint64_t a1, const void *a2)
{
  v2[30] = a1;
  v2[31] = a2;
  memcpy(v2 + 2, a2, 0x70uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC7376C0, 0, 0);
}

uint64_t sub_1AC7376C0()
{
  v6 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  sub_1AC5CF764(0, &qword_1EB56DD30, off_1E797ACB8);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC73FF68(v0 + 16, v0 + 128);
  *v2 = sub_1AC737768(__dst);
  OUTLINED_FUNCTION_44();

  return v3();
}

id sub_1AC737768(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = __dst[11];
  v2 = *(__dst[11] + 16);
  if (v2)
  {
    v16[14] = MEMORY[0x1E69E7CC0];
    sub_1AC73FF68(__dst, v16);
    sub_1AC7A0A88();
    v3 = v1 + 4;
    do
    {
      v4 = *v3++;
      v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1AC7A0A68();
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      --v2;
    }

    while (v2);
    sub_1AC73FFC4(__dst);
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = __dst[0];
  v7 = __dst[2];
  v8 = __dst[3];
  v9 = __dst[5];
  v10 = __dst[9];
  v11 = *&__dst[10];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v12 = __dst[4];
  v13 = __dst[1];
  sub_1AC7A0148();
  OUTLINED_FUNCTION_154_1();

  v16[0] = v6;
  v16[1] = v13;
  v16[2] = v7;
  v16[3] = v8;
  v16[4] = v12;
  v16[5] = v9;
  v14 = [v5 initWithRange:v16 wordCount:v10 eosLikelihood:v1 pauseCounts:v11 silencePosterior:*&__dst[12]];

  sub_1AC73FFC4(__dst);
  return v14;
}

uint64_t sub_1AC737914(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1AC79FB18();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC737A3C, 0, 0);
}

uint64_t sub_1AC737A3C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  v6 = *(v4 + 1);
  v5 = *(v4 + 2);
  *(v0 + 88) = *v4;
  *(v0 + 104) = v6;
  *(v0 + 120) = v5;
  v7 = type metadata accessor for LanguageDetector.Result(0);
  (*(v2 + 16))(v1, &v4[*(v7 + 24)], v3);
  v8 = *&v4[*(v7 + 28)];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = *(v0 + 40);
    v32 = *(v0 + 32);
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AC7A0A88();
    OUTLINED_FUNCTION_89_0();
    v13 = v8 + v12;
    v31 = *(v11 + 72);
    do
    {
      v14 = *(v0 + 48);
      sub_1AC7404D4();
      sub_1AC79F978();
      v15 = objc_allocWithZone(MEMORY[0x1E695DF58]);
      v16 = sub_1AC79FF58();

      v17 = [v15 initWithLocaleIdentifier_];

      sub_1AC79FA18();
      v18 = *(v14 + *(v32 + 20));
      v19 = objc_allocWithZone(SFLocaleAlternative);
      v20 = sub_1AC79F9F8();
      [v19 initWithLocale:v20 confidence:v18];

      v21 = OUTLINED_FUNCTION_123_1();
      v22(v21);
      sub_1AC74052C(v14, type metadata accessor for LanguageDetector.LocaleAlternative);
      sub_1AC7A0A68();
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      v13 += v31;
      --v9;
    }

    while (v9);
    v10 = v33;
  }

  v23 = *(v0 + 80);
  v24 = *(v0 + 16);
  v25 = sub_1AC79F988();
  v27 = v26;
  v28 = objc_allocWithZone(SFLanguageDetectorResult);
  *v24 = sub_1AC73E01C((v0 + 88), v23, v10, v25, v27);

  OUTLINED_FUNCTION_44();

  return v29();
}

uint64_t sub_1AC737D08(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = a2[2];
  return MEMORY[0x1EEE6DFA0](sub_1AC737D3C, 0, 0);
}

uint64_t sub_1AC737D3C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  *v1 = [objc_allocWithZone(SFSpeechDetectorResult) initWithRange_];
  OUTLINED_FUNCTION_44();

  return v2();
}

void sub_1AC737DB0(void *a1)
{
  v2 = sub_1AC79FB18();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v9 = (v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45[3] = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v45 - v12);
  v14 = type metadata accessor for DictationTranscriber.Preset(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a1;
  sub_1AC738350();
  sub_1AC72BB58(*v16);
  v45[1] = 0;
  sub_1AC6092E8();
  v45[2] = v17;
  sub_1AC7404D4();
  v18 = v9[7];
  v19 = sub_1AC79F7F8();
  __swift_storeEnumTagSinglePayload(v13 + v18, 1, 1, v19);
  v20 = v9[8];
  v21 = v9[9];
  v22 = v9[10];
  v24 = v9[12];
  v23 = v9[13];
  v48 = v9[11];
  v49 = v24;
  v50 = v23;
  *(v13 + v9[14]) = *(v7 + v5[14]);
  v25 = (v13 + v20);
  v26 = v7[1];
  *v13 = *v7;
  v13[1] = v26;

  sub_1AC74047C();
  v27 = (v7 + v5[8]);
  v28 = v27[1];
  *v25 = *v27;
  v25[1] = v28;
  *(v13 + v21) = *(v7 + v5[9]);
  *(v13 + v22) = *(v7 + v5[10]);
  *(v13 + v48) = *(v7 + v5[11]);
  *(v13 + v49) = *(v7 + v5[12]);
  LOBYTE(v22) = *(v7 + v5[13]);

  sub_1AC74052C(v7, type metadata accessor for DictationTranscriber.ModelOptions);
  *(v13 + v50) = v22;
  v29 = v16[1];
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 56);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  while (v32)
  {
LABEL_9:
    v37 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    if (*(*(v29 + 48) + (v37 | (v34 << 6))) == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60E4D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v41;
      }

      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_1AC60E4D0(v38 > 1, v39 + 1, 1, v35);
        v35 = v42;
      }

      *(v35 + 16) = v40;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {

      sub_1AC609398();
      sub_1AC72BD80(v16[2]);
      sub_1AC609484(v43);
      sub_1AC72BFC0(v16[3]);
      sub_1AC6094B4();
      v44 = [v46 locale];
      sub_1AC79FA18();

      sub_1AC7404D4();
      type metadata accessor for NormalizingTranscriber(0);
      swift_allocObject();
      NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
      sub_1AC74052C(v13, type metadata accessor for NormalizingTranscriber.ModelOptions);
      sub_1AC74052C(v16, type metadata accessor for DictationTranscriber.Preset);
      return;
    }

    v32 = *(v29 + 56 + 8 * v36);
    ++v34;
    if (v32)
    {
      v34 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1AC738288(void *a1)
{
  v2 = sub_1AC79FB18();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeechTranscriber(0);
  v5 = [a1 locale];
  sub_1AC79FA18();

  sub_1AC738C68(v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  return SpeechTranscriber.__allocating_init(locale:preset:)(v4, v7);
}

void sub_1AC738350()
{
  OUTLINED_FUNCTION_104();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v6);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_95_4();
  v9 = type metadata accessor for DictationTranscriber.Preset(v8);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v11 = [v0 taskHint];
  if (v11 < 2)
  {
    goto LABEL_9;
  }

  if (v11 == 2)
  {
    if (qword_1EB56B4D0 != -1)
    {
      goto LABEL_119;
    }

    goto LABEL_13;
  }

  if (v11 != 3)
  {
    if (v11 == 1002)
    {
      if (qword_1EB56B4F0 != -1)
      {
        swift_once();
      }

      i = qword_1EB56C168;
      goto LABEL_20;
    }

    if (v11 == 1004)
    {
      if (qword_1EB56B500 != -1)
      {
        swift_once();
      }

      i = qword_1EB56C198;
      goto LABEL_20;
    }

LABEL_9:
    if (qword_1EB56B4C0 != -1)
    {
      swift_once();
    }

    i = qword_1EB56C0D8;
    goto LABEL_20;
  }

  if (qword_1EB56B4A0 != -1)
  {
    swift_once();
  }

  for (i = qword_1EB56C078; ; i = qword_1EB56C108)
  {
LABEL_20:
    __swift_project_value_buffer(v9, i);
    sub_1AC7404D4();
    sub_1AC740748();
    sub_1AC72CBFC(&unk_1F212F788, sub_1AC6102CC);
    sub_1AC72CC70(&unk_1F212F7B0, sub_1AC610968);
    v13 = [v3 modelOptions];
    if (!v13)
    {
      goto LABEL_102;
    }

    v14 = v13;
    v15 = [v13 modelOverrideURL];
    if (v15)
    {
      v16 = v15;
      sub_1AC79F7A8();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = sub_1AC79F7F8();
    __swift_storeEnumTagSinglePayload(v1, v17, 1, v18);
    v19 = v5 + *(v9 + 8);
    v20 = type metadata accessor for DictationTranscriber.ModelOptions(0);
    sub_1AC633390(v1, v19 + v20[5]);
    v1 = sub_1AC73EF00(v14);
    v9 = v21;
    v22 = (v19 + v20[6]);

    *v22 = v1;
    v22[1] = v9;
    *(v19 + v20[8]) = [v14 enableParallelLoading];
    *(v19 + v20[11]) = [v14 enableFullPayloadCorrection];
    v23 = [v14 languageModelCustomizationConfig];
    if (!v23)
    {
      break;
    }

    v1 = v23;
    v109 = v14;
    v111 = v3;
    v24 = *v5;
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](3);
    sub_1AC7A0768();
    sub_1AC7A0EC8();
    OUTLINED_FUNCTION_69_6();
    if (v25)
    {
      v9 = &qword_1ED937298;
      v3 = 0x1E69E58C0;
      do
      {
        v26 = v24[6];
        v27 = *(v26 + 8 * v2);
        if (v27 >= 3)
        {
          sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
          sub_1AC61C264(v27);
          v28 = sub_1AC7A0758();
          sub_1AC623E3C(v27);
          if (v28)
          {

            goto LABEL_46;
          }
        }

        else
        {
          sub_1AC623E3C(*(v26 + 8 * v2));
        }

        OUTLINED_FUNCTION_86_4();
      }

      while ((v29 & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v5;
    v31 = (*v5)[2];
    if ((*v5)[3] <= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = OUTLINED_FUNCTION_85_7(v31);
        sub_1AC6121E0(v32);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_85_7(v31);
        sub_1AC615B30(v33);
      }

      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](3);
      sub_1AC7A0768();
      sub_1AC7A0EC8();
      OUTLINED_FUNCTION_69_6();
      if (v34)
      {
        v9 = &qword_1ED937298;
        v3 = 0x1E69E58C0;
        do
        {
          v35 = v113[6];
          v36 = *(v35 + 8 * v2);
          if (v36 >= 3)
          {
            sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
            sub_1AC61C264(v36);
            v37 = sub_1AC7A0758();
            sub_1AC623E3C(v36);
            if (v37)
            {
              goto LABEL_122;
            }
          }

          else
          {
            sub_1AC623E3C(*(v35 + 8 * v2));
          }

          OUTLINED_FUNCTION_86_4();
        }

        while ((v38 & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC61452C();
    }

    *(v113 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v2;
    *(v113[6] + 8 * v2) = v1;
    v39 = v113[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      v113[2] = v41;
      *v5 = v113;
LABEL_46:
      v14 = v109;
      v3 = v111;
      break;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
LABEL_13:
    ;
  }

  if (![v14 farField])
  {
    goto LABEL_77;
  }

  v42 = *v5;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](1);
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14();
  if ((v44 & 1) == 0)
  {
LABEL_58:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_117_5();
    if (!v47 & v51)
    {
      if ((v49 & 1) == 0)
      {
        sub_1AC61452C();
        v9 = v113;
      }
    }

    else
    {
      if (v49)
      {
        v52 = OUTLINED_FUNCTION_85_7(v50);
        sub_1AC6121E0(v52);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_85_7(v50);
        sub_1AC615B30(v53);
      }

      v9 = v113;
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](1);
      sub_1AC7A0EC8();
      OUTLINED_FUNCTION_15_14();
      if (v55)
      {
        v56 = ~v54;
        do
        {
          v57 = *(v113[6] + 8 * v1);
          if (v57)
          {
            v58 = v57 == 2;
          }

          else
          {
            v58 = 1;
          }

          if (v58)
          {
            sub_1AC623E3C(v57);
          }

          else if (v57 == 1)
          {
            goto LABEL_121;
          }

          v1 = (v1 + 1) & v56;
          OUTLINED_FUNCTION_45_11();
        }

        while ((v59 & 1) != 0);
      }
    }

    OUTLINED_FUNCTION_118_5();
    *(v61 + 56) |= v60 << v1;
    *(v9[6] + 8 * v1) = v60;
    v62 = v9[2];
    v40 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (!v40)
    {
      v9[2] = v63;
      *v5 = v9;
      goto LABEL_77;
    }

    goto LABEL_117;
  }

  v45 = ~v43;
  while (1)
  {
    v46 = *(v42[6] + 8 * v1);
    v47 = !v46 || v46 == 2;
    if (!v47)
    {
      break;
    }

    sub_1AC623E3C(v46);
LABEL_57:
    v1 = (v1 + 1) & v45;
    OUTLINED_FUNCTION_45_11();
    if ((v48 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if (v46 != 1)
  {
    goto LABEL_57;
  }

  sub_1AC623E3C(1);
LABEL_77:
  if (![v14 atypicalSpeech])
  {
    goto LABEL_101;
  }

  v64 = *v5;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](2);
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14();
  if (v66)
  {
    v67 = ~v65;
    do
    {
      v68 = *(v64[6] + 8 * v1);
      if (v68 >= 2)
      {
        if (v68 == 2)
        {
          sub_1AC623E3C(2);
LABEL_101:

LABEL_102:
          v83 = [v3 reportingOptions];
          if (v83)
          {
            v84 = v83;
            if (([v83 multisegmentResults] & 1) == 0)
            {
              sub_1AC619A58(6);
            }
          }

          if ((OUTLINED_FUNCTION_120_4() & 4) != 0)
          {
            sub_1AC61094C(v114, 0, v85, v86, v87, v88, v89, v90, v110, v112);
          }

          if ((OUTLINED_FUNCTION_120_4() & 8) != 0)
          {
            sub_1AC61094C(v114, 1, v91, v92, v93, v94, v95, v96, v110, v112);
          }

          if ((OUTLINED_FUNCTION_120_4() & 0x10) != 0)
          {
            sub_1AC61094C(v114, 2, v97, v98, v99, v100, v101, v102, v110, v112);
          }

          if ((OUTLINED_FUNCTION_120_4() & 0x20) != 0)
          {
            sub_1AC619A58(2);
          }

          else
          {
            sub_1AC6102CC(v114, 2, v103, v104, v105, v106, v107, v108, v110, v112);
          }

          OUTLINED_FUNCTION_105();
          return;
        }
      }

      else
      {
        sub_1AC623E3C(v68);
      }

      v1 = (v1 + 1) & v67;
      OUTLINED_FUNCTION_45_11();
    }

    while ((v69 & 1) != 0);
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_117_5();
  if (!v47 & v51)
  {
    if ((v70 & 1) == 0)
    {
      sub_1AC61452C();
      v9 = v113;
    }

LABEL_97:
    OUTLINED_FUNCTION_118_5();
    *(v80 + 56) |= v79 << v1;
    *(v9[6] + 8 * v1) = 2;
    v81 = v9[2];
    v40 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (!v40)
    {
      v9[2] = v82;

      *v5 = v9;
      goto LABEL_102;
    }

    goto LABEL_118;
  }

  if (v70)
  {
    v72 = OUTLINED_FUNCTION_85_7(v71);
    sub_1AC6121E0(v72);
  }

  else
  {
    v73 = OUTLINED_FUNCTION_85_7(v71);
    sub_1AC615B30(v73);
  }

  v9 = v113;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](2);
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_15_14();
  if ((v75 & 1) == 0)
  {
    goto LABEL_97;
  }

  v76 = ~v74;
  while (2)
  {
    v77 = *(v113[6] + 8 * v1);
    if (v77 < 2)
    {
      sub_1AC623E3C(v77);
      goto LABEL_96;
    }

    if (v77 != 2)
    {
LABEL_96:
      v1 = (v1 + 1) & v76;
      OUTLINED_FUNCTION_45_11();
      if ((v78 & 1) == 0)
      {
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v57 = 2;
LABEL_121:
  sub_1AC623E3C(v57);
LABEL_122:
  sub_1AC7A0DB8();
  __break(1u);
}

double sub_1AC738C68@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if ([v1 taskHint] == 1010)
  {
    if (qword_1EB56B5B0 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EB56CF78;
  }

  else
  {
    if (qword_1EB56B5C8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EB56CFD8;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  sub_1AC72CBFC(&unk_1F212F6B0, sub_1AC610930);
  sub_1AC72CC70(&unk_1F212F6D8, sub_1AC610914);
  v9 = [v2 reportingOptions];
  if (v9)
  {
    v10 = v9;
    if (([v9 multisegmentResults] & 1) == 0)
    {
      sub_1AC619A40(3);
    }
  }

  if (([v2 transcriptionOptions] & 0x10) != 0)
  {
    sub_1AC61085C();
  }

  result = *&v12;
  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1AC738E20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = sub_1AC7A0288();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [*a1 powerContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 ane];
    v26 = sub_1AC79FF68();
    v27 = v11;

    v12 = [v9 cpu];
    v13 = sub_1AC79FF68();
    v25 = v14;

    v15 = [v9 gpu];
    v16 = sub_1AC79FF68();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v25 = 0;
    v26 = 0;
    v13 = 0;
    v27 = 0;
    v18 = 0;
  }

  v19 = [v7 modelRetention];
  if (v19 >= 5)
  {
    result = sub_1AC7A0B78();
    __break(1u);
  }

  else
  {
    v20 = v19;
    if ([v7 highPriority])
    {
      sub_1AC7A0258();
    }

    else
    {
      sub_1AC7A0268();
    }

    (*(v4 + 32))(a2, v6, v28);
    result = type metadata accessor for SpeechAnalyzer.Options(0);
    *(a2 + *(result + 20)) = 0x402030100uLL >> (8 * v20);
    v22 = (a2 + *(result + 24));
    v23 = v27;
    *v22 = v26;
    v22[1] = v23;
    v24 = v25;
    v22[2] = v13;
    v22[3] = v24;
    v22[4] = v16;
    v22[5] = v18;
  }

  return result;
}

uint64_t sub_1AC739094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1AC5D9374(a5, a6);

  return MEMORY[0x1EEE6DFA0](sub_1AC73910C, a4, 0);
}

uint64_t sub_1AC73910C()
{
  OUTLINED_FUNCTION_85();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC739168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v15;
  *(v8 + 312) = v14;
  *(v8 + 264) = v13;
  *(v8 + 248) = v12;
  *(v8 + 232) = v11;
  *(v8 + 216) = v10;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC7391C0, 0, 0);
}

uint64_t sub_1AC7391C0()
{
  OUTLINED_FUNCTION_72();
  sub_1AC7337B8(*(v0 + 176), *(v0 + 184), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), (v0 + 16), *(v0 + 240), *(v0 + 248));
  type metadata accessor for SpeechAnalyzer(0);
  *(v0 + 288) = sub_1AC732AD8();
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_1AC73929C;
  OUTLINED_FUNCTION_154_1();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC73929C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *(v6 + 304) = v5;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC7393A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = *(v12 + 304);
  v14 = *(v12 + 312);
  v15 = *(v12 + 264);
  v16 = *(v12 + 184);
  v17 = *(v12 + 192);
  v18 = *(v12 + 176);
  objc_allocWithZone(type metadata accessor for ObjCSpeechAnalyzerConfiguration());
  sub_1AC73ED4C((v12 + 16), (v12 + 96));
  v19 = v13;

  v20 = sub_1AC732FE0((v12 + 16), v13, v18, v16, v14, v17);
  v15();

  sub_1AC73ED84((v12 + 16));
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1AC739490()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC7394B8, v1);
}

uint64_t sub_1AC7394B8()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  *(v0 + 48) = *(v1 + 16);
  *(v0 + 56) = *(v1 + 24);
  *(v0 + 64) = *(v1 + 32);
  *(v0 + 72) = *(v1 + 40);
  *(v0 + 128) = *(v1 + 48);
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC739510()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 128))
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 40);
    *(v0 + 80) = *(v0 + 32);
    *(v0 + 88) = v6;
    *(v0 + 96) = *(v0 + 48);
    *(v0 + 112) = v5;
    *(v0 + 120) = v4;
    v1 = sub_1AC7A0558();
  }

  v7 = *(v0 + 8);

  return v7(v1, v3, v2);
}

uint64_t sub_1AC7395AC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1AC5D9374(v3, v2);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC739610()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_speechAnalyzer);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC739638, v1);
}

uint64_t sub_1AC739638()
{
  OUTLINED_FUNCTION_85();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC73969C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C3958(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC739708()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return DictationTranscriber.cancelPendingResultsAndPause()();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC7397D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC7398F8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC739968()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return DictationTranscriber.resume()();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC739A38()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC739B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC739B70()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_172();
  if ((sub_1AC7A0708() & 1) == 0)
  {
    v1 = 0;
  }

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1AC606140;
  v3 = OUTLINED_FUNCTION_172();

  return SpeechAnalyzer.finalize(through:)(v3, v4, v1, v5);
}

uint64_t sub_1AC739C64()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1AC739D10()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F764();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CD0];

    return v6(v7);
  }
}

uint64_t sub_1AC739DE4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC739EE8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = [v2 tasks];

    v4 = sub_1AC7A0448();
    sub_1AC739FBC(v4);
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_82();

  return v7(v6);
}

void sub_1AC739FBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE90, &qword_1AC7A82A0);
    v2 = sub_1AC7A0988();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1AC5DC8D8(*(a1 + 48) + 40 * (v9 | (v8 << 6)), &v12);
    swift_dynamicCast();
    sub_1AC73E7A8(v10, v11);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1AC73A154()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F764();
  }

  else
  {
    v6 = *(v1 + 8);

    return v6(0, 0xE000000000000000);
  }
}

uint64_t sub_1AC73A22C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC73A330()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = [v2 language];

    v1 = sub_1AC79FF68();
    v5 = v4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t sub_1AC73A3FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F808();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC8];

    return v6(v7);
  }
}

uint64_t sub_1AC73A4D0()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC73A5E0()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();

  return v0();
}

uint64_t sub_1AC73A664()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_87_5(*(v1 + 16));
  if (v0)
  {

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_55(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC62F998();
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC8];

    return v6(v7);
  }
}

uint64_t sub_1AC73A738()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1AC73A848()
{
  OUTLINED_FUNCTION_129_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v5);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72_5();
  v7 = sub_1AC61C24C();
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_11:
    v16 = sub_1AC7A0288();
    OUTLINED_FUNCTION_119_5(v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v2;
    v17[5] = v8;
    v18 = v2;
    sub_1AC659B08();

    OUTLINED_FUNCTION_130();
    return;
  }

  v9 = v7;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AC631600(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v19 = v1;
    v20 = v0;
    v10 = 0;
    v8 = v24;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B26E95B0](v10, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v10 + 32);
      }

      v12 = v11;
      [v11 CMTimeValue];

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AC631600(v13 > 1, v14 + 1, 1);
      }

      *(v24 + 16) = v14 + 1;
      v15 = (v24 + 24 * v14);
      v15[4] = v21;
      ++v10;
      v15[5] = v22;
      v15[6] = v23;
    }

    while (v9 != v10);
    v2 = v20;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1AC73AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC73AA2C, 0, 0);
}

uint64_t sub_1AC73AA2C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC6Speech18ObjCSpeechAnalyzer_contextualizedTranscriber);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1AC73AB1C;
    v3 = *(v0 + 32);

    return DictationTranscriber.requestResultAtEndpoints(_:)(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC73AB1C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC73AC58()
{
  **(v0 + 16) = *(v0 + 56) != 0;
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t sub_1AC73AD00(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC73AD14()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_235();
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_55(v3);
    *v4 = v5;
    v4[1] = sub_1AC61DAF0;

    return SpeechAnalyzer.prepareToAnalyze(withProgressReadyHandler:)();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_85_0(v7);
    OUTLINED_FUNCTION_138();

    return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v8, v9, v10);
  }
}

uint64_t sub_1AC73AE68()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79F7F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC73AF18()
{
  OUTLINED_FUNCTION_72();
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v1 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v2 = OUTLINED_FUNCTION_93();
  v0[7] = sub_1AC6CBAE8(v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_85_0(v3);

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t sub_1AC73B044()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC73B208(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v8 = sub_1AC79F7F8();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1AC79F7A8();
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_1AC73B344;

  return sub_1AC73AE68();
}

uint64_t sub_1AC73B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12;
  v15 = *v13;
  v16 = *v13;
  OUTLINED_FUNCTION_18();
  *v17 = v16;
  v18 = v15[6];
  v19 = v15[5];
  v20 = v15[4];
  v21 = v15[3];
  v22 = v15[2];
  *v17 = *v13;

  (*(v19 + 8))(v18, v20);

  if (v14)
  {
    v23 = sub_1AC79F738();

    v24 = OUTLINED_FUNCTION_71_6();
    v25(v24, v23);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_71_6();
    v27(v26, 0);
  }

  _Block_release(v16[7]);

  OUTLINED_FUNCTION_77_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1AC73B518(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void *sub_1AC73B52C()
{
  v1 = v0[20];
  type metadata accessor for AnalysisContext();
  swift_allocObject();
  v2 = AnalysisContext.init()();
  v0[22] = v2;
  if (v1)
  {
    v3 = v0[20];
    v4 = sub_1AC61C24C();
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = v4;
      v16 = MEMORY[0x1E69E7CC0];
      result = sub_1AC631538(0, v4 & ~(v4 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v2;
      v8 = 0;
      v5 = v16;
      v9 = v0[20] & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v10 = MEMORY[0x1B26E95B0](v8, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v8 + 32);
        }

        v11 = v10;
        memcpy(v0 + 2, &v10[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity], 0x48uLL);
        sub_1AC73E6A4((v0 + 2), (v0 + 11));

        v13 = *(v16 + 16);
        v12 = *(v16 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1AC631538((v12 > 1), v13 + 1, 1);
        }

        ++v8;
        *(v16 + 16) = v13 + 1;
        memcpy((v16 + 72 * v13 + 32), v0 + 2, 0x48uLL);
      }

      while (v6 != v8);
      v2 = v15;
    }

    AnalysisContext.contextualNamedEntities.setter(v5);
  }

  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_85_0(v14);

  return SpeechAnalyzer.setContext(_:)(v2);
}

uint64_t sub_1AC73B728()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC73B824()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC73B880()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC73B994(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    type metadata accessor for SFContextualNamedEntity();
    a1 = sub_1AC7A0158();
  }

  v3[4] = a1;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1AC73BA70;

  return sub_1AC73B518(a1);
}

uint64_t sub_1AC73BA70()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v7 = sub_1AC79F738();

    v8 = OUTLINED_FUNCTION_71_6();
    v9(v8, v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_71_6();
    v11(v10, 0);
  }

  _Block_release(*(v4 + 24));
  OUTLINED_FUNCTION_523();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

id sub_1AC73BC18(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AC73BD0C()
{
  OUTLINED_FUNCTION_129_0();
  v113 = v0;
  v114 = v1;
  v107 = v2;
  v98 = v3;
  v117 = v4;
  v119 = v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD80, &qword_1AC7B2690);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v110 = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD88, &qword_1AC7B2698);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_89_1();
  v106 = v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD90, &qword_1AC7B26A0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_4();
  v104 = v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v91 - v16;
  sub_1AC79F568();
  OUTLINED_FUNCTION_40();
  v94 = v18;
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v93 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD98, &qword_1AC7B26A8);
  OUTLINED_FUNCTION_167(v21);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_89_1();
  v96 = v23;
  v118 = sub_1AC79F4F8();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_95_4();
  v25 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_4();
  v102 = v29;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  v34 = OUTLINED_FUNCTION_167(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_4();
  v97 = v35;
  OUTLINED_FUNCTION_34();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v91 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v91 - v40;
  v115 = *(v119 + 9);
  sub_1AC625BA4(v115, &v91 - v40);
  v99 = v41;
  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(v39, 1, v25) == 1)
  {
    v100 = 0;
    v101 = 0xE000000000000000;
  }

  else
  {
    (*(v27 + 32))(v32, v39, v25);
    sub_1AC79F4E8();
    OUTLINED_FUNCTION_22_13();
    sub_1AC73F7DC(v42, v43);
    v100 = sub_1AC7A00D8();
    v101 = v44;
    (*(v27 + 8))(v32, v25);
  }

  v45 = v27;
  v46 = v102;
  if (v117)
  {
    v120 = v100;
    v121 = v101;
    sub_1AC70496C();
    OUTLINED_FUNCTION_21_13();
    sub_1AC7A04A8();
    v118 = 0;

    v100 = MEMORY[0x1B26E8BE0](*&v122[0], *(&v122[0] + 1), *&v122[1], *(&v122[1] + 1));
    v101 = v47;
  }

  else
  {
    v118 = 0;
  }

  v48 = *(v119 + 11);
  v49 = *(v48 + 16);
  v116 = v27;
  if (v49)
  {
    v92 = v25;
    *&v122[0] = MEMORY[0x1E69E7CC0];
    sub_1AC7A0A88();
    v109 = *(v48 + 16);
    v50 = type metadata accessor for TranscriptionSegment(0);
    v51 = 0;
    OUTLINED_FUNCTION_167(v50);
    v108 = v52;
    OUTLINED_FUNCTION_89_0();
    v53 = v110;
    while (v109 != v51)
    {
      if (v51 >= *(v48 + 16))
      {
        goto LABEL_29;
      }

      sub_1AC7404D4();
      *v53 = v51;
      sub_1AC740748();
      sub_1AC73D6CC();
      sub_1AC5C720C(v53, &qword_1EB56DD80, &qword_1AC7B2690);
      sub_1AC7A0A68();
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      if (v49 == ++v51)
      {
        v25 = v92;
        v45 = v116;
        v46 = v102;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_13:
    sub_1AC5CF764(0, &qword_1EB56DDA0, off_1E797ACA8);
    OUTLINED_FUNCTION_93();
    v109 = sub_1AC7A0148();

    v54 = v115;
    v55 = *(v115 + 16);
    if (!v55)
    {
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
      v73 = sub_1AC7A0148();

      v74 = v119[104];
      sub_1AC79FBC8();
      OUTLINED_FUNCTION_93();
      v75 = sub_1AC7A0148();
      v76 = sub_1AC79FF58();

      v77 = v97;
      sub_1AC5C6E6C();
      v78 = 0.0;
      if (__swift_getEnumTagSinglePayload(v77, 1, v25) != 1)
      {
        v118 = v74;
        (*(v45 + 32))(v46, v77, v25);
        v79 = v93;
        sub_1AC79F588();
        v80 = v96;
        sub_1AC625F4C();
        (*(v94 + 8))(v79, v95);
        sub_1AC79F538();
        v81 = OUTLINED_FUNCTION_154_1();
        if (__swift_getEnumTagSinglePayload(v81, 1, v80) == 1)
        {
          sub_1AC5C720C(v80, &qword_1EB56DD98, &qword_1AC7B26A8);
          v82 = OUTLINED_FUNCTION_123_1();
          v83(v82);
        }

        else
        {
          sub_1AC64F5F4();
          sub_1AC79F548();
          v78 = *v122;
          v84 = BYTE8(v122[0]);
          (*(*(v80 - 8) + 8))(v80, v80);
          v85 = OUTLINED_FUNCTION_123_1();
          v86(v85);
          if (v84)
          {
            v78 = 0.0;
          }
        }

        v74 = v118;
      }

      v87 = objc_allocWithZone(STTranscriberMultisegmentResult);
      v88 = v119;
      v89 = *(v119 + 124);
      v122[0] = *(v119 + 108);
      v122[1] = v89;
      v122[2] = *(v119 + 140);
      v90 = v109;
      [v87 initWithSegments:v109 transcriptions:v73 earResultType:v74 nBestChoices:v75 recognitionAudioRange:v122 bestFormattedString:v76 bestFormattedStringSegmentConfidence:v78];

      sub_1AC5C720C(v99, &qword_1EB56C740, &qword_1AC7AA660);
      v98(v88);
      OUTLINED_FUNCTION_130();
      return;
    }

    v120 = MEMORY[0x1E69E7CC0];
    sub_1AC631838(0, v55, 0);
    v56 = 0;
    v57 = v120;
    OUTLINED_FUNCTION_89_0();
    v112 = v54 + v58;
    v113 = v55;
    v110 = (v45 + 32);
    v111 = (v45 + 16);
    v114 = *(v54 + 16);
    v117 &= 1u;
    v59 = v106;
    while (v114 != v56)
    {
      if (v56 >= *(v54 + 16))
      {
        goto LABEL_31;
      }

      v60 = v105;
      v61 = *(v105 + 48);
      v62 = v116;
      v63 = v103;
      (*(v116 + 16))(&v103[v61], v112 + *(v116 + 72) * v56, v25);
      v64 = v104;
      *v104 = v56;
      v65 = v64 + *(v60 + 48);
      v66 = *(v62 + 32);
      v67 = v25;
      v66(v65, &v63[v61], v25);
      memcpy(v122, v119, 0x101uLL);
      v68 = sub_1AC79F588();
      MEMORY[0x1EEE9AC00](v68);
      *(&v91 - 4) = v56;
      *(&v91 - 24) = v117;
      *(&v91 - 2) = v65;
      *(&v91 - 1) = v122;
      v69 = v118;
      v70 = sub_1AC72C424(v59, v107, (&v91 - 6));
      v118 = v69;
      sub_1AC5C720C(v59, &qword_1EB56DD88, &qword_1AC7B2698);
      sub_1AC5C720C(v64, &qword_1EB56DD90, &qword_1AC7B26A0);
      v120 = v57;
      v72 = *(v57 + 16);
      v71 = *(v57 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_1AC631838(v71 > 1, v72 + 1, 1);
        v57 = v120;
      }

      *(v57 + 16) = v72 + 1;
      *(v57 + 8 * v72 + 32) = v70;
      ++v56;
      v25 = v67;
      v54 = v115;
      if (v113 == v56)
      {
        v45 = v116;
        v46 = v102;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1AC73C784()
{
  OUTLINED_FUNCTION_129_0();
  v79 = v0;
  v2 = v1;
  sub_1AC79F568();
  OUTLINED_FUNCTION_40();
  v81 = v4;
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v80 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DD98, &qword_1AC7B26A8);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_89_1();
  v83 = v9;
  v78 = sub_1AC79F4F8();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v87 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  v14 = OUTLINED_FUNCTION_167(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_4();
  v84 = v15;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_4();
  v86 = v23;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v67 - v25;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v67 - v27;
  v29 = *(v2 + 6);
  v30 = *(v2 + 14);
  v31 = *(v2 + 15);
  v32 = *(v2 + 8);
  v33 = v2[1];
  v92 = *v2;
  v93 = v33;
  v94 = v2[2];
  sub_1AC7A0558();
  v75 = v30;
  v74 = v31;
  v34 = v19;
  v76 = v29;
  v73 = v32;
  v72 = sub_1AC7A06B8();
  v77 = v2;
  v35 = *(v2 + 9);
  sub_1AC625BA4(v35, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v68 = *(v21 + 32);
  v68(v28, v18, v19);
  sub_1AC79F4E8();
  v37 = v21 + 8;
  v36 = *(v21 + 8);
  v36(v28, v34);
  OUTLINED_FUNCTION_22_13();
  v85 = sub_1AC73F7DC(v38, v39);
  sub_1AC7A00D8();
  v70 = sub_1AC79FF58();

  v40 = v84;
  v69 = v35;
  sub_1AC625BA4(v35, v84);
  if (__swift_getEnumTagSinglePayload(v40, 1, v34) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v41 = v21;
  v42 = v71;
  v43 = OUTLINED_FUNCTION_39();
  (v68)(v43);
  v44 = v80;
  sub_1AC79F588();
  v36(v42, v34);
  v45 = v83;
  sub_1AC625F4C();
  (*(v81 + 1))(v44, v82);
  v46 = sub_1AC79F538();
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    sub_1AC5C720C(v45, &qword_1EB56DD98, &qword_1AC7B26A8);
    v47 = 0.0;
  }

  else
  {
    sub_1AC64F5F4();
    sub_1AC79F548();
    v47 = v88;
    v48 = v89;
    (*(*(v46 - 8) + 8))(v45, v46);
    if (v48)
    {
      v47 = 0.0;
    }
  }

  v49 = v69;
  v50 = *(v69 + 16);
  if (v50)
  {
    v81 = v36;
    v82 = v37;
    v84 = v34;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v50, 0);
    v80 = *(v41 + 16);
    v51 = v88;
    OUTLINED_FUNCTION_89_0();
    v53 = v49 + v52;
    v83 = v54;
    v55 = *(v54 + 56);
    do
    {
      v56 = v86;
      v57 = v84;
      v80(v86, v53, v84);
      sub_1AC79F4E8();
      v58 = sub_1AC7A00D8();
      v60 = v59;
      v81(v56, v57);
      v88 = v51;
      v62 = *(*&v51 + 16);
      v61 = *(*&v51 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1AC6310CC(v61 > 1, v62 + 1, 1);
        v51 = v88;
      }

      *(*&v51 + 16) = v62 + 1;
      v63 = *&v51 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v53 += v55;
      --v50;
    }

    while (v50);
  }

  v79(v77);
  v64 = objc_allocWithZone(STTranscriberSingleSegmentResult);
  v65 = sub_1AC7A0148();

  v88 = v76;
  v89 = v75;
  v90 = v74;
  v91 = v73;
  v66 = v70;
  [v64 initWithIsFinal:v72 & 1 resultsFinalizationTime:&v88 text:v70 bestTextSegmentConfidence:v65 alternatives:v47];

  OUTLINED_FUNCTION_130();
}

id sub_1AC73CE34()
{
  v1 = [v0 segments];
  sub_1AC5CF764(0, &qword_1EB56DDA0, off_1E797ACA8);
  v2 = sub_1AC7A0158();

  v3 = sub_1AC61C24C();
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 + 32;
  v22 = v2;
  v23 = v3;
  v18 = v2 + 32;
  v19 = v2 & 0xC000000000000001;
LABEL_2:
  if (v4 == v3)
  {

    return (v4 == v3);
  }

  else
  {
    sub_1AC61C25C();
    if (v5)
    {
      result = MEMORY[0x1B26E95B0](v4, v2);
    }

    else
    {
      result = *(v6 + 8 * v4);
    }

    if (!__OFADD__(v4, 1))
    {
      v20 = v4;
      v21 = v4 + 1;
      v24 = result;
      v8 = [result text];
      sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
      v9 = sub_1AC7A0158();

      result = sub_1AC61C24C();
      v10 = result;
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          v4 = v21;
          v2 = v22;
          v3 = v23;
          v6 = v18;
          v5 = v19;
          goto LABEL_2;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1B26E95B0](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          result = *(v9 + 8 * i + 32);
        }

        v12 = result;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v13 = [result text];
        v14 = sub_1AC79FF68();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {

          v3 = v23;
          v4 = v20;
          return (v4 == v3);
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1AC73D08C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_123_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v16 - v14;
  memcpy(v20, v3, 0x101uLL);
  sub_1AC79F588();
  v16[2] = v7;
  v17 = v5;
  v18 = v9;
  v19 = v20;
  sub_1AC72C424(v15, v1, v16);
  sub_1AC5C720C(v15, &qword_1EB56DD88, &qword_1AC7B2698);
  OUTLINED_FUNCTION_105();
}

void sub_1AC73D178()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_95_4();
  v15 = sub_1AC79F538();
  OUTLINED_FUNCTION_40();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
  (*(v17 + 16))(v21, v8, v15);
  (*(v13 + 16))(v0, v23, v11);
  v22 = v2[1];
  v25[0] = *v2;
  v25[1] = v22;
  v25[2] = v2[2];
  sub_1AC73D310(v21, v0, v25, ((v6 | v10) == 0) & v24);
  OUTLINED_FUNCTION_105();
}

id sub_1AC73D310(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_1AC79F4F8();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v29 = sub_1AC79F668();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C678, &qword_1AC7A9C00);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35_9();
  sub_1AC64F69C();
  v14 = a1;
  sub_1AC79F548();
  if (v34)
  {
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    sub_1AC7A0728();
    v18 = v17;
    sub_1AC7A0728();
    v16 = v18 - v19;
    sub_1AC7A0728();
    v15 = v20;
  }

  sub_1AC79F528();
  sub_1AC5C8B9C(&qword_1EB56DDD0, &qword_1EB56C678, &qword_1AC7A9C00);
  sub_1AC79F5F8();
  sub_1AC5C720C(v4, &qword_1EB56C678, &qword_1AC7A9C00);
  sub_1AC79F658();
  (*(v8 + 8))(v12, v29);
  OUTLINED_FUNCTION_22_13();
  sub_1AC73F7DC(v21, v22);
  sub_1AC7A00D8();
  if (a4)
  {
    sub_1AC70496C();
    OUTLINED_FUNCTION_21_13();
    sub_1AC7A04A8();

    MEMORY[0x1B26E8BE0]();
  }

  v23 = sub_1AC79FF58();

  sub_1AC64F5F4();
  sub_1AC79F548();
  if (v33)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v32;
  }

  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v23 confidence:v24 startTime:v16 duration:v15];

  sub_1AC79F5C8();
  OUTLINED_FUNCTION_80();
  (*(v26 + 8))(a2);
  sub_1AC79F538();
  OUTLINED_FUNCTION_80();
  (*(v27 + 8))(v14);
  return v25;
}

void sub_1AC73D6CC()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v2, 0x101uLL);
  memcpy(v24, v3, sizeof(v24));
  sub_1AC73D08C();
  v10 = type metadata accessor for TranscriptionSegment(0);
  v11 = *(v9 + *(v10 + 20));
  v20[16] = v5;
  v21 = __dst;
  v22 = v7;
  sub_1AC72C984(v1, v20, v11);
  v12 = *(v9 + *(v10 + 24));
  v13 = *(v12 + 16);
  v14 = (v12 + 120);
  for (i = 1.0; v13; --v13)
  {
    v16 = *v14;
    v14 += 20;
    i = i * v16 * 0.001;
  }

  v17 = objc_allocWithZone(SFAnalyzerTranscriptionSegment);
  v18 = OUTLINED_FUNCTION_39();
  sub_1AC73E138(v18, v19, i);
  OUTLINED_FUNCTION_130();
}

uint64_t String.strippedOfLeadingWhitespaceAndPunctuation.getter()
{
  sub_1AC70496C();
  OUTLINED_FUNCTION_21_13();
  sub_1AC7A04A8();
  v0 = MEMORY[0x1B26E8BE0]();

  return v0;
}

uint64_t sub_1AC73D8A8(uint64_t *a1)
{
  v2 = sub_1AC79F498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = *a1;
  v6 = a1[1];
  if (sub_1AC79FE78())
  {
    v7 = 1;
  }

  else
  {
    if (qword_1EB56B608 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_1EB56DC30);
    (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v7 = sub_1AC72CFB4(v5, v6, sub_1AC7407A0);
  }

  return v7 & 1;
}

uint64_t type metadata accessor for ObjCSpeechAnalyzer(uint64_t a1)
{
  result = qword_1EB56DC78;
  if (!qword_1EB56DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC73DAD4(uint64_t a1)
{
  sub_1AC73DB94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AC73DB94(uint64_t a1)
{
  if (!qword_1EB56DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56C798, &qword_1AC7B2480);
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB56DC88);
    }
  }
}

uint64_t destroy for FixedFunctionPipeline(void *a1)
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t *initializeWithCopy for FixedFunctionPipeline(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for FixedFunctionPipeline(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[7] = a2[7];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[8] = a2[8];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[9] = a2[9];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

_OWORD *assignWithTake for FixedFunctionPipeline(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  swift_unknownObjectRelease();
  a1[3] = a2[3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a1[4] = a2[4];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for FixedFunctionPipeline(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FixedFunctionPipeline(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AC73DFB8()
{
  v0 = sub_1AC79F498();
  __swift_allocate_value_buffer(v0, qword_1EB56DC30);
  __swift_project_value_buffer(v0, qword_1EB56DC30);
  sub_1AC79F468();
  return sub_1AC79F478();
}

id sub_1AC73E01C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v15[2] = a1[2];
  v9 = sub_1AC79F9F8();
  sub_1AC5CF764(0, &qword_1EB56DE58, off_1E797ACE0);
  v10 = sub_1AC7A0148();

  v11 = sub_1AC79FF58();

  v12 = [v6 initWithRange:v15 dominantLocale:v9 alternatives:v10 detectedLanguageCode:v11];

  v13 = sub_1AC79FB18();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

id sub_1AC73E138(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AC5CF764(0, &qword_1EB56DDC8, off_1E797AD78);
  v5 = sub_1AC7A0148();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
  v6 = sub_1AC7A0148();

  v7 = [v3 initWithText:v5 alternatives:v6 confidence:a3];

  return v7;
}

uint64_t sub_1AC73E1F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5C4D48;

  return v6();
}

uint64_t sub_1AC73E2E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1AC5C4D48;

  return v7();
}

uint64_t sub_1AC73E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1AC5C6E6C();
  v12 = sub_1AC7A0288();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1AC5C720C(v11, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1AC7A01B8();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1AC7A0018() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1AC5C720C(a3, &qword_1EB56BE70, &qword_1AC7A8270);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AC5C720C(a3, &qword_1EB56BE70, &qword_1AC7A8270);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1AC73E700()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();

  return sub_1AC73AA08(v5, v6, v7, v8, v1);
}

unint64_t sub_1AC73E7A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AC7A0E78();
  sub_1AC7A0048();
  result = sub_1AC7A0EC8();
  v7 = v5 + 56;
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = result & v8;
    v10 = (result & v8) >> 6;
    v11 = *(v7 + 8 * v10);
    v12 = 1 << (result & v8);
    if ((v12 & v11) == 0)
    {
      break;
    }

    v13 = (*(v5 + 48) + 16 * v9);
    v14 = *v13 == a1 && v13[1] == a2;
    if (v14 || (sub_1AC7A0D38() & 1) != 0)
    {
      *v13 = a1;
      v13[1] = a2;
    }

    result = v9 + 1;
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v12 | v11;
    v15 = (*(v5 + 48) + 16 * v9);
    *v15 = a1;
    v15[1] = a2;
    v16 = *(v5 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v5 + 16) = v18;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC73E8E8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;

  return sub_1AC73B994(v1, v2, v3);
}

uint64_t sub_1AC73E994()
{
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_12(v1);

  return v4(v3);
}

uint64_t objectdestroy_60Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC73EA68()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC73EB14()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t sub_1AC73EBB8()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t sub_1AC73EC5C()
{
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_12(v1);

  return v4(v3);
}

uint64_t sub_1AC73ECF8(_OWORD *a1, char a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = a1[2];
  v7[1] = a1[1];
  v7[2] = v5;
  v7[0] = *a1;
  return (*(v4 + 16))(v4, v7, a2 & 1, a3 & 1);
}

uint64_t sub_1AC73EDB4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_523();

  return sub_1AC739094(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC73EE5C()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;

  return sub_1AC737240(v4, v2, v5);
}

uint64_t sub_1AC73EF00(void *a1)
{
  v1 = [a1 taskForMemoryLock];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC73EF64(void *a1)
{
  v1 = [a1 languageConstraints];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC79FB18();
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC73EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC72F2E4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC72FA74(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C5380;

  return sub_1AC730204(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC730994(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC731124(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC7318C8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AC5C4D48;

  return sub_1AC732058(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1AC73F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCF0, &qword_1AC7B25F8);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1AC73F7DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC73F820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DDB8, &unk_1AC7B26B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC73F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCD8, &qword_1AC7B25D8);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1AC73FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC8, &unk_1AC7B25C0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1AC73FC00@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, _BYTE *, uint64_t)@<X5>, void *a6@<X8>)
{
  memcpy(__dst, __src, 0x101uLL);
  result = a5(a2, a3, __dst, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1AC73FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCC0, &unk_1AC7B25B0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1AC73FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB8, &qword_1AC7B25A8);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1AC740018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA8, &qword_1AC7B2598);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t objectdestroy_106Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = (((((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1AC740260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_76_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCA0, &qword_1AC7B2588);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_4_17();
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_124(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_6_14(v14);
  OUTLINED_FUNCTION_77_2();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t objectdestroy_113Tm()
{

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_119Tm()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_127Tm_1()
{

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC74047C()
{
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_39();
  v4(v3);
  return v0;
}

uint64_t sub_1AC7404D4()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC74052C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1AC740584()
{
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_12(v1);

  return v4(v3);
}

uint64_t sub_1AC740620(uint64_t a1)
{
  v12 = v1[3];
  v13 = v1[2];
  v3 = v1[5];
  v11 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_0(v7);
  *v8 = v9;
  v8[1] = sub_1AC5C4D48;

  return sub_1AC739168(a1, v13, v12, v11, v3, v4, v5, v6);
}

uint64_t sub_1AC740748()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC7407A0(uint64_t a1)
{
  v1 = sub_1AC79F498();
  OUTLINED_FUNCTION_167(v1);
  return sub_1AC79F488() & 1;
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_62_7(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_63_6()
{

  return v0;
}

id OUTLINED_FUNCTION_108_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return sub_1AC7A0D08();
}

uint64_t OUTLINED_FUNCTION_112_5()
{
}

uint64_t OUTLINED_FUNCTION_113_5()
{
}

id OUTLINED_FUNCTION_120_4()
{

  return [v1 (v0 + 2026)];
}

void sub_1AC740B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = *(a1 + 16);
    sub_1AC631258(0, v1, 0);
    v5 = sub_1AC6C2CA0();
    v6 = v24;
    v7 = 0;
    v8 = a1 + 56;
    v9 = 1;
    v10 = -2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v9 << *(a1 + 32))
      {
        v11 = v5 >> 6;
        v12 = v9 << v5;
        if ((*(v8 + 8 * (v5 >> 6)) & (v9 << v5)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_29;
        }

        v13 = *(*(a1 + 48) + v5);
        if (v13 == 2)
        {
          LOBYTE(v13) = 0;
        }

        else if (v13 == 3)
        {
          LOBYTE(v13) = 1;
        }

        v15 = *(v25 + 16);
        v14 = *(v25 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1AC631258(v14 > 1, v15 + 1, 1);
          OUTLINED_FUNCTION_94_4();
        }

        *(v25 + 16) = v15 + 1;
        *(v25 + v15 + 32) = v13;
        if (v4)
        {
          goto LABEL_33;
        }

        v16 = v9 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_30;
        }

        v17 = *(v8 + 8 * v11);
        if ((v17 & v12) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_32;
        }

        v18 = v17 & (v10 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v11 << 6;
          v20 = v11 + 1;
          v21 = (a1 + 64 + 8 * v11);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1AC637E98(v5, v3, 0);
              OUTLINED_FUNCTION_94_4();
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_23;
            }
          }

          sub_1AC637E98(v5, v3, 0);
          OUTLINED_FUNCTION_94_4();
        }

LABEL_23:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t sub_1AC740D54()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_1AC79FB18();
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_85_0(v7);

  return sub_1AC748000();
}

uint64_t sub_1AC740EB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC740F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[9];
  Locale.languageRegionLocale.getter(a1, a2, a3, a4, a5, a6, a7, a8, v36, v37, v38, v39, v40, v41, v42, v43, v44, v8, v45, v46);
  v10 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v10, v11, v9);
  if (v17)
  {
    sub_1AC5C720C(v8[8], &qword_1EB56BFD8, &qword_1AC7A83F0);
  }

  else
  {
    v12 = v8[16];
    v13 = v8[14];
    v14 = v8[9];
    v15 = v8[7];
    v16 = *(v8[10] + 32);
    (v16)(v13, v8[8], v14);
    *(swift_task_alloc() + 16) = v13;
    sub_1AC65956C(sub_1AC7535EC, v12, v15);

    OUTLINED_FUNCTION_96(v15, 1, v14);
    if (!v17)
    {
      v26 = v8[13];
      v27 = v8[14];
      v28 = v8[9];
      v29 = v8[10];
      v30 = v8[7];

      (v16)(v26, v30, v28);
      v31 = OUTLINED_FUNCTION_98_3();
      v16(v31);
      OUTLINED_FUNCTION_150_1();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
      (*(v29 + 8))(v27, v28);
      OUTLINED_FUNCTION_78_4();

      OUTLINED_FUNCTION_44();

      return v35();
    }

    sub_1AC5C720C(v8[7], &qword_1EB56BFD8, &qword_1AC7A83F0);
    v18 = OUTLINED_FUNCTION_89();
    v19(v18);
  }

  v20 = v8[16];
  v21 = v8[3];
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  sub_1AC714B6C(sub_1AC7535CC, v22, v20);
  OUTLINED_FUNCTION_86();

  sub_1AC608DF4();
  v8[17] = v23;
  type metadata accessor for AssetInventory();

  v24 = swift_task_alloc();
  v8[18] = v24;
  *v24 = v8;
  OUTLINED_FUNCTION_85_0(v24);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC741284()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC74136C()
{
  v2 = v0[9];
  v3 = v0[6];
  sub_1AC6839F4(v0[19], v0[17]);
  OUTLINED_FUNCTION_107_4();

  sub_1AC625B14(v1, v3);

  v4 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v4, v5, v2);
  if (!v6)
  {
    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[6];

    v14 = *(v12 + 32);
    (v14)(v10, v13, v11);
    OUTLINED_FUNCTION_166_2();
    v14();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_78_4();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    __asm { BRAA            X1, X16 }
  }

  sub_1AC5C720C(v0[6], &qword_1EB56BFD8, &qword_1AC7A83F0);

  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_85_0(v7);
  OUTLINED_FUNCTION_291();

  return sub_1AC74809C();
}

uint64_t sub_1AC741534()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1AC74161C()
{
  v2 = v0[9];
  v3 = v0[5];
  sub_1AC6839F4(v0[21], v0[17]);
  OUTLINED_FUNCTION_107_4();

  sub_1AC625B14(v1, v3);

  v4 = OUTLINED_FUNCTION_278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v2);
  v7 = v0[17];
  if (EnumTagSinglePayload == 1)
  {
    v8 = v0[2];
    sub_1AC5C720C(v0[5], &qword_1EB56BFD8, &qword_1AC7A83F0);
    sub_1AC625B14(v7, v8);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = v0[5];

    v13 = *(v10 + 32);
    v13(v9, v12, v11);
    v14 = OUTLINED_FUNCTION_98_3();
    (v13)(v14);
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  }

  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AC741794()
{
  OUTLINED_FUNCTION_85();
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v2);
  v1[8] = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v3);
  v1[9] = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FB18();
  v1[10] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_126();
  v6 = type metadata accessor for Assets(0);
  v1[13] = v6;
  OUTLINED_FUNCTION_167(v6);
  v1[14] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC7418E4()
{
  v67 = v0;
  v66[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC5CB1A4();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);

    v3 = v2;
    v4 = [v3 samplingRates];
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC6A8FB8();
    v5 = sub_1AC7A0448();

    sub_1AC68CFAC(v5);
    OUTLINED_FUNCTION_152_2();
    v6 = sub_1AC608F68(v4);

    if (off_1ED937D60 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v7 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v7, qword_1ED9386C8);

      v8 = sub_1AC79FDC8();
      v9 = sub_1AC7A05D8();

      v62 = v3;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_448();
        v66[0] = OUTLINED_FUNCTION_494();
        *v10 = 136315394;
        *(v10 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v60, v3, v63, *(&v63 + 1), v64, *(&v64 + 1), v65);
        *(v10 + 12) = 2080;
        v11 = sub_1AC7A0458();
        v13 = sub_1AC5CFE74(v11, v12, v66);

        *(v10 + 14) = v13;
        _os_log_impl(&dword_1AC5BC000, v8, v9, "Transcriber.%s found %s", v10, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_77_1();
      }

      v66[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_19_5();
      v16 = v15 & v14;
      v18 = (63 - v17) >> 6;

      v29 = 0;
      v64 = xmmword_1AC7AB570;
      v63 = xmmword_1AC7AB580;
      v3 = &selRef_initWithText_confidence_startTime_duration_;
      while (v16)
      {
LABEL_11:
        v31 = *(*(v6 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v16)))));
        v16 &= v16 - 1;
        OUTLINED_FUNCTION_24_0(v31, v19, v20, v21, v22, v23, v24, v25, v26, v27, v60, v62, v28, v63);
        v19 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
        if (v19)
        {
          MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_31_6();
          if (v33)
          {
            OUTLINED_FUNCTION_23_6(v32);
            v60 = v34;
            sub_1AC7A0178();
          }

          v19 = sub_1AC7A0198();
        }
      }

      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v18)
        {

          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X2, X16 }
        }

        v16 = *(v6 + 56 + 8 * v30);
        ++v29;
        if (v16)
        {
          v29 = v30;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v37 = sub_1AC79FDE8();
  v0[15] = __swift_project_value_buffer(v37, qword_1ED9386C8);
  v38 = sub_1AC79FDC8();
  v39 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_366(v39))
  {
    v40 = OUTLINED_FUNCTION_150();
    v41 = OUTLINED_FUNCTION_48();
    v66[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v60, v61, v63, *(&v63 + 1), v64, *(&v64 + 1), v65);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_70();
  }

  v42 = v0[7];
  v43 = *(v42 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);
  if (!v43[2])
  {
    __break(1u);
  }

  v44 = v0[8];
  v46 = v43[4];
  v45 = v43[5];
  (*(v0[11] + 16))(v0[12], v42 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v0[10]);
  sub_1AC5C6E6C();
  v47 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v47);
  v49 = v0[8];
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v49, &qword_1EB56C318, &unk_1AC7A8790);
    sub_1AC79F7F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  }

  else
  {
    sub_1AC5C6E6C();

    OUTLINED_FUNCTION_13_13();
    sub_1AC753538(v49, v54);
  }

  if (v46 != sub_1AC79FF68() || v45 != v55)
  {
    OUTLINED_FUNCTION_74_0();
    sub_1AC7A0D38();
  }

  sub_1AC61D0F4();
  v57 = swift_task_alloc();
  v0[16] = v57;
  *v57 = v0;
  v57[1] = sub_1AC741F58;
  OUTLINED_FUNCTION_403();

  return sub_1AC61FFCC();
}

uint64_t sub_1AC741F58()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 144) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1AC742090()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC608F68(*(v0 + 144));
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v2, v3);
  if (off_1ED937D60 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v4 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v4, qword_1ED9386C8);

    v5 = sub_1AC79FDC8();
    v6 = sub_1AC7A05D8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_448();
      v42[0] = OUTLINED_FUNCTION_494();
      *v7 = 136315394;
      *(v7 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
      *(v7 + 12) = 2080;
      v8 = sub_1AC7A0458();
      v10 = sub_1AC5CFE74(v8, v9, v42);

      *(v7 + 14) = v10;
      OUTLINED_FUNCTION_150_2(&dword_1AC5BC000, v11, v12, "Transcriber.%s found %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_70();
    }

    v42[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_19_5();
    v15 = v14 & v13;
    v17 = (63 - v16) >> 6;

    v18 = 0;
    v40 = xmmword_1AC7AB570;
    v39 = xmmword_1AC7AB580;
    while (v15)
    {
LABEL_10:
      v20 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v15)));
      v15 &= v21;
      OUTLINED_FUNCTION_24_0(v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v37, v38, v31, v39);
      if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
      {
        MEMORY[0x1B26E8CF0]();
        OUTLINED_FUNCTION_31_6();
        if (v33)
        {
          OUTLINED_FUNCTION_23_6(v32);
          v38 = v34;
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_403();

        __asm { BRAA            X2, X16 }
      }

      v15 = *(v1 + 56 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }
}

uint64_t sub_1AC74237C()
{
  v37 = v0;
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 136);
  v2 = v1;
  v3 = sub_1AC79FDC8();
  v4 = sub_1AC7A05F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_150();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_1AC5C720C(v8, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v12, v13);
  if (off_1ED937D60 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v14 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v14, qword_1ED9386C8);
  v15 = MEMORY[0x1E69E7CD0];

  v16 = sub_1AC79FDC8();
  v17 = sub_1AC7A05D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_448();
    v36[0] = OUTLINED_FUNCTION_494();
    *v18 = 136315394;
    OUTLINED_FUNCTION_65();
    *(v18 + 4) = sub_1AC5CFE74(0xD00000000000001FLL, v19, v36);
    *(v18 + 12) = 2080;
    v20 = sub_1AC7A0458();
    v22 = sub_1AC5CFE74(v20, v21, v36);

    *(v18 + 14) = v22;
    OUTLINED_FUNCTION_150_2(&dword_1AC5BC000, v23, v24, "Transcriber.%s found %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_70();
  }

  v25 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v26 = -1;
  v27 = -1 << *(v15 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v15 + 56);
  v29 = (63 - v27) >> 6;

  v30 = 0;
  while (v28)
  {
LABEL_14:
    *&v32 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v28)));
    v28 &= v33;
    *(v0 + 16) = v32;
    *(v0 + 24) = xmmword_1AC7AB570;
    *(v0 + 40) = xmmword_1AC7AB580;
    if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
    {
      MEMORY[0x1B26E8CF0]();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v25 = v36[0];
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v15 + 8 * v31 + 56);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_82();

  return v34(v25);
}

uint64_t sub_1AC742780(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742794()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1AC742864;
    v3 = v0[2];

    return sub_1AC69C034(v3);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC742864()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC742980()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC7429F0()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_85_0(v2);

    return sub_1AC6946BC();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v4();
  }
}

uint64_t sub_1AC742AB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC742BE4()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_85_0(v2);

    return sub_1AC694784();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v4();
  }
}

uint64_t sub_1AC742CA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC742DC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742DDC()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_45_1(v2);

    return sub_1AC694B50(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC742EA0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC742FBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742FD4()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_45_1(v2);

    return sub_1AC694D5C(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC743098()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v10();
  }
}