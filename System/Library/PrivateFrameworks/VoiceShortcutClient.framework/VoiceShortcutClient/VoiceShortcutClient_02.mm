uint64_t sub_1B1E176E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B1E17708()
{
  result = qword_1EB784408;
  if (!qword_1EB784408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784408);
  }

  return result;
}

unint64_t sub_1B1E1775C()
{
  result = qword_1EB784418;
  if (!qword_1EB784418)
  {
    type metadata accessor for XPCEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784418);
  }

  return result;
}

uint64_t sub_1B1E177B0(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:

      break;
    case 7:
      v3 = swift_unknownObjectRelease();
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_1B1E177F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E17850(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
      v3 = sub_1B1F1A760();
      break;
    case 7:
      v3 = swift_unknownObjectRetain();
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_1B1E17894(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1B1E178AC()
{
  result = qword_1EB784430;
  if (!qword_1EB784430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784430);
  }

  return result;
}

uint64_t sub_1B1E17900(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1B1E17918()
{
  result = qword_1EB784438;
  if (!qword_1EB784438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784438);
  }

  return result;
}

void *sub_1B1E17984(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784440, &qword_1B1F2BFD8);
  result = sub_1B1F1B120();
  v3 = 0;
  v30 = result;
  v31 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v29 = result + 8;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v31 + 48) + 16 * v14);
      v16 = v15[1];
      v32 = *v15;
      v17 = *(*(v31 + 56) + 8 * v14);
      switch(v17 >> 62)
      {
        case 1uLL:
          sub_1B1F1A760();

          v18 = sub_1B1E10AFC();
          v19 = v16;

          v20 = 0;
          v21 = 1;
          break;
        case 2uLL:
          v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v20 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v21 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          sub_1B1F1A760();
          v19 = v16;
          sub_1B1E17850(v18, v20, v21);
          break;
        case 3uLL:
          sub_1B1F1A760();

          v18 = sub_1B1E10CB0();
          v20 = v22;
          v21 = v23;
          v19 = v16;

          break;
        default:

          sub_1B1F1A760();
          v18 = sub_1B1E107BC();
          v19 = v16;

          v20 = 0;
          v21 = 0;
          break;
      }

      result = v30;
      *(v29 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v24 = (v30[6] + 16 * v14);
      *v24 = v32;
      v24[1] = v19;
      v25 = v30[7] + 24 * v14;
      *v25 = v18;
      *(v25 + 8) = v20;
      *(v25 + 16) = v21;
      v26 = v30[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v30[2] = v28;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B1E17BEC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_1B1E2AFB8();
    *v1 = v5;
  }
}

uint64_t sub_1B1E17C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E17C90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

void *sub_1B1E17CD0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_30(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_30(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B1E17D24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B1E17D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1E17DBC()
{
  result = qword_1EB7844E0;
  if (!qword_1EB7844E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7844E0);
  }

  return result;
}

unint64_t sub_1B1E17E14()
{
  result = qword_1EB7844E8;
  if (!qword_1EB7844E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7844E8);
  }

  return result;
}

uint64_t sub_1B1E17E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = &type metadata for XPCKey;
  v17 = sub_1B1E17708();
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5 & 1;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_1B1E17F10(&v15, v13 + 40 * a1 + 32);
}

uint64_t sub_1B1E17F10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B1E17F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B1E17F10(&v12, v10 + 40 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_29(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v5 = *(v2 + 32);
  *(v2 + 32) = 6;
  return sub_1B1E177B0(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *v1 = a1;

  return sub_1B1F1A760();
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x1B273FB80);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_1B1E17900(v2);
  sub_1B1E17900(v2);

  return sub_1B1F1A760();
}

uint64_t VCVoiceShortcutClient.scheduleTrigger(_:with:)()
{
  OUTLINED_FUNCTION_1();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F0, &qword_1B1F2C488);
  v1[6] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[9] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[10] = OUTLINED_FUNCTION_9();
  v7 = sub_1B1F1A640();
  v1[11] = v7;
  OUTLINED_FUNCTION_6_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_9();
  v9 = type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_8(v9);
  v1[14] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B1E18328()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  (*(v5 + 32))(v4, v5);
  *(v0 + 136) = 1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0) + 48);
  sub_1B1E19714(v1, v2, type metadata accessor for TriggerType);
  sub_1B1E76714(v2 + v6);
  type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1B1E18494;
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);

  return sub_1B1E1978C(v8, (v0 + 136), v9);
}

uint64_t sub_1B1E18494()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 80));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E185A8()
{
  v1 = v0[16];
  sub_1B1E19510(&qword_1EB784500, &qword_1EB7844F0, &qword_1B1F2C488);
  sub_1B1F1A630();
  if (v1)
  {
    v2 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_5:
    sub_1B1E1891C(v2, type metadata accessor for TriggerType);

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  sub_1B1E18974(v0[8], v0[7]);
  OUTLINED_FUNCTION_12_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[7];
    v7 = v0[8];
    v27 = v6[1];
    v28 = *v6;
    v26 = v6[2];
    v8 = *(v6 + 6);
    v9 = sub_1B1E04B74();
    v10 = OUTLINED_FUNCTION_13(&type metadata for CodableError, v9);
    *v11 = v28;
    *(v11 + 16) = v27;
    *(v11 + 32) = v26;
    *(v11 + 48) = v8;
    v12 = sub_1B1E04BC8();
    v13 = OUTLINED_FUNCTION_13(&_s24VoiceShortcutClientErrorON, v12);
    *v14 = v10;
    OUTLINED_FUNCTION_10_1(v13, v14);
    sub_1B1E0BDB8(v7, &qword_1EB7844F0, &qword_1B1F2C488);
    (*(v5 + 8))(v3, v4);
    goto LABEL_5;
  }

  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[2];
  v23[3] = type metadata accessor for ScheduledTrigger(0);
  v23[4] = sub_1B1E189E4(&qword_1EB784508, &protocol conformance descriptor for ScheduledTrigger);
  v23[5] = sub_1B1E189E4(&qword_1EB784510, &protocol conformance descriptor for ScheduledTrigger);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_1B1E18A28(v22, boxed_opaque_existential_1);
  sub_1B1E0BDB8(v21, &qword_1EB7844F0, &qword_1B1F2C488);
  (*(v20 + 8))(v17, v19);
  OUTLINED_FUNCTION_1_6();
  sub_1B1E1891C(v18, v25);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v15();
}

uint64_t sub_1B1E18878()
{
  OUTLINED_FUNCTION_1_6();
  sub_1B1E1891C(v0, v1);

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t sub_1B1E1891C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E18974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F0, &qword_1B1F2C488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E189E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScheduledTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E18A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTrigger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VCVoiceShortcutClient.deleteScheduledTrigger(with:)()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[11] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[12] = OUTLINED_FUNCTION_9();
  v4 = sub_1B1F1A640();
  v1[13] = v4;
  OUTLINED_FUNCTION_6_0(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E18B58()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  *(v0 + 144) = 1;
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  *v1 = (*(v4 + 24))(v3, v4);
  v1[1] = v5;
  type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1B1E18C74;
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);

  return sub_1B1E1978C(v7, (v0 + 144), v8);
}

uint64_t sub_1B1E18C74()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E18D88()
{
  v1 = v0[17];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
LABEL_5:

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v2 = v0[4];
  v3 = v0[14];
  if (v2)
  {
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[5];
    v7 = v0[6];
    v18 = v0[13];
    v19 = v0[15];
    v8 = v0[7];
    v9 = v0[8];
    v10 = sub_1B1E04B74();
    v11 = OUTLINED_FUNCTION_13(&type metadata for CodableError, v10);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v2;
    v12[3] = v6;
    v12[4] = v7;
    v12[5] = v8;
    v12[6] = v9;
    v13 = sub_1B1E04BC8();
    v14 = OUTLINED_FUNCTION_13(&_s24VoiceShortcutClientErrorON, v13);
    *v15 = v11;
    OUTLINED_FUNCTION_10_1(v14, v15);
    (*(v3 + 8))(v19, v18);
    goto LABEL_5;
  }

  (*(v3 + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v16();
}

uint64_t sub_1B1E18F0C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

unint64_t sub_1B1E18F74()
{
  result = qword_1EB784518;
  if (!qword_1EB784518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784518);
  }

  return result;
}

uint64_t VCVoiceShortcutClient.fetchAllScheduledTriggers()()
{
  OUTLINED_FUNCTION_1();
  v1[18] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[19] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[20] = OUTLINED_FUNCTION_9();
  v3 = sub_1B1F1A640();
  v1[21] = v3;
  OUTLINED_FUNCTION_6_0(v3);
  v1[22] = v4;
  v1[23] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E19094()
{
  *(v0 + 73) = 1;
  type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12_1();
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E19170;
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);

  return sub_1B1E1978C(v2, (v0 + 73), v3);
}

uint64_t sub_1B1E19170()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_0_7(*(v2 + 160));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E19284()
{
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784520, &unk_1B1F2C4A0);
  sub_1B1E19510(&qword_1EB784528, &qword_1EB784520, &unk_1B1F2C4A0);
  sub_1B1F1A630();
  if (v1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_5:

    OUTLINED_FUNCTION_2_0();

    return v14();
  }

  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  v2 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v2;
  v3 = *(v0 + 80);
  if (*(v0 + 136))
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v20 = *(v0 + 88);
    v21 = *(v0 + 104);
    v6 = sub_1B1E04B74();
    v7 = OUTLINED_FUNCTION_13(&type metadata for CodableError, v6);
    *v8 = v3;
    *(v8 + 8) = v20;
    *(v8 + 24) = v21;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    v9 = sub_1B1E04BC8();
    v10 = OUTLINED_FUNCTION_13(&_s24VoiceShortcutClientErrorON, v9);
    *v11 = v7;
    OUTLINED_FUNCTION_10_1(v10, v11);
    v12 = OUTLINED_FUNCTION_12_1();
    v13(v12);
    goto LABEL_5;
  }

  v16 = sub_1B1E19564(*(v0 + 80));
  sub_1B1E0BDB8(v0 + 80, &qword_1EB784520, &unk_1B1F2C4A0);
  v17 = OUTLINED_FUNCTION_12_1();
  v18(v17);

  v19 = *(v0 + 8);

  return v19(v16);
}

uint64_t sub_1B1E194A8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t sub_1B1E19510(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B1E19564(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTrigger(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B1E3B284(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B1E19714(v8, v5, type metadata accessor for ScheduledTrigger);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784530, &qword_1B1F2F190);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B1E3B284(v10 > 1, v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1B1E19774(v14, (v7 + 48 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1B1E19714(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_OWORD *sub_1B1E19774(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1B1E1978C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *(v3 + 24) = a3;
  *(v3 + 32) = ObjectType;
  *(v3 + 16) = a1;
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B1E19818, 0, 0);
}

uint64_t sub_1B1E19818()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = sub_1B1F1A640();
  *v4 = v0;
  v4[1] = sub_1B1E1991C;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000027, 0x80000001B1F385A0, sub_1B1E1A380, v2, v5);
}

uint64_t sub_1B1E1991C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E19A58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B1E19A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VCVoiceShortcutClient.Service.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B1F1B160();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t VCVoiceShortcutClient.Service.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_1B1E19B6C()
{
  result = qword_1EB784538;
  if (!qword_1EB784538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784538);
  }

  return result;
}

unint64_t sub_1B1E19BE4@<X0>(unint64_t *a1@<X8>)
{
  result = VCVoiceShortcutClient.Service.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *_s7ServiceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_So21VCVoiceShortcutClientC05VoicebC0E0dbC5ErrorO(uint64_t a1)
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

uint64_t sub_1B1E19D04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_1B1E19D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E19D88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B1E19DB0(_BYTE *a1)
{
  v2 = sub_1B1F1A5E0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B1F1A610();
  sub_1B1F1A5D0();
  result = sub_1B1F1A5C0();
  if (v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B1E19EA0(void *a1, char a2)
{
  if (!a2)
  {
    sub_1B1F1AFA0();

    v6 = 0xD000000000000025;
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784550, &qword_1B1F2C6E0);
    v4 = sub_1B1F1A8D0();
    MEMORY[0x1B273D1A0](v4);

    return v6;
  }

  if (a2 == 1)
  {
    v6 = 0;
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000020, 0x80000001B1F38540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
    sub_1B1F1B0A0();
    return v6;
  }

  return 0x206E776F6E6B6E55;
}

uint64_t sub_1B1E1A00C(uint64_t a1)
{
  v2 = sub_1B1E1A0AC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E1A048(uint64_t a1)
{
  v2 = sub_1B1E1A0AC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B1E1A0AC()
{
  result = qword_1EB784540;
  if (!qword_1EB784540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784540);
  }

  return result;
}

uint64_t sub_1B1E1A100(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  LOBYTE(v16[0]) = a2 & 1;
  if (sub_1B1E19DB0(v16))
  {
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    type metadata accessor for VoiceShortcutClientRequest(0);
    sub_1B1E1A794(&qword_1EB784560, type metadata accessor for VoiceShortcutClientRequest, &protocol conformance descriptor for VoiceShortcutClientRequest);
    sub_1B1F1A5F0();

    sub_1B1F1A600();
  }

  else
  {
    sub_1B1E04BC8();
    v14 = swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    swift_willThrow();
    sub_1B1E04BC8();
    v9 = swift_allocError();
    *v10 = v14;
    *(v10 + 8) = 0;
    v16[0] = v9;
    return sub_1B1F1AA30();
  }
}

uint64_t sub_1B1E1A38C(uint64_t a1, uint64_t a2)
{
  v20[0] = a2;
  v3 = sub_1B1F1A620();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1F1A640();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784568, &unk_1B1F2C6F8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1B1E1A724(a1, v20 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v16, v3);
    sub_1B1E1A794(&qword_1EB784570, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    v17 = swift_allocError();
    (*(v4 + 16))(v18, v6, v3);
    v20[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
    sub_1B1F1AA30();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    (*(v8 + 16))(v11, v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
    sub_1B1F1AA40();
    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_1B1E1A6A8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B1E1A38C(a1, v4);
}

uint64_t sub_1B1E1A724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784568, &unk_1B1F2C6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E1A794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B1E1A7E0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B1F1AC90();
  if (!v19)
  {
    return sub_1B1F1A9D0();
  }

  v41 = v19;
  v45 = sub_1B1F1B080();
  v32 = sub_1B1F1B090();
  sub_1B1F1B040();
  result = sub_1B1F1AC80();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B1F1ACE0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B1F1B070();
      result = sub_1B1F1ACA0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.protobuf(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_6(a1, a2);
  sub_1B1F1A9F0();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_3_6(v4, v5, v6, v7, v8, v9, v10, &v12);
}

uint64_t sub_1B1E1ACCC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  result = (*(a4 + 16))(&v8, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_1B1E1AD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.protobuf(useCase:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Array<A>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a1;
  swift_getAssociatedTypeWitness();
  v4 = sub_1B1F1A9F0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_1_7();
  v10 = sub_1B1E1A7E0(v6, v7, v4, a2, v5, v8, v9, v12);

  return v10;
}

uint64_t sub_1B1E1AE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1);
  result = (*(a3 + 16))(v11, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1B1E1AFC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(protobuf:)(*a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.protobuf(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_6(a1, a2);
  sub_1B1F1AC60();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_3_6(v5, v6, v7, v8, v9, v10, v11, &v13);
}

uint64_t sub_1B1E1B0E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  result = (*(a5 + 16))(&v9, a3, a5, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1B1E1B16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.protobuf(useCase:)(a1, *v4, *(a2 + 16), *(a2 + 24), *(a3 - 8));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Set<>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B1F1A9F0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_1_7();
  v12 = sub_1B1E1A7E0(v8, v9, v6, a2, v7, v10, v11, &v14);

  if (!v4)
  {
    v15 = v12;
    sub_1B1F1A9F0();
    swift_getWitnessTable();
    return sub_1B1F1AC70();
  }

  return result;
}

uint64_t sub_1B1E1B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1);
  result = (*(a4 + 16))(v12, a2, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_1B1E1B440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.init(protobuf:)(*a1, *(a2 + 16), *(a2 + 24), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t String.init(protobuf:)(uint64_t a1)
{
  v2 = sub_1B1F1A390();
  v3 = sub_1B1F1A3A0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_1B1E1B540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.init(protobuf:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Dictionary<>.protobuf(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_7();
  return sub_1B1F1A7B0();
}

uint64_t sub_1B1E1B628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  return (*(v2 + 16))(&v4, v1);
}

uint64_t sub_1B1E1B670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.protobuf(useCase:)(a1, *v4, *(a2 + 24), *(a3 - 8));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_7();
  v3 = sub_1B1F1A7B0();

  return v3;
}

uint64_t sub_1B1E1B758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(a3 + 16))(v8, a2, a3);
}

uint64_t sub_1B1E1B884(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B1E1B8D8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B1E1B92C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(protobuf:)(*a1, *(a2 + 24), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B1E1B964(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1B1E1B9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784598, &unk_1B1F2C8D8);
  result = sub_1B1F1A730();
  off_1EB7834E0 = result;
  return result;
}

uint64_t sub_1B1E1BA08()
{
  result = sub_1B1F1A730();
  qword_1EB783378 = result;
  return result;
}

uint64_t sub_1B1E1BA48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845C0, &unk_1B1F2C900);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED84EBA0 = result;
  return result;
}

uint64_t sub_1B1E1BA88()
{
  v0 = sub_1B1F1AD60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1F1AD50();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B1F1A6B0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B1E1D940();
  sub_1B1F1A690();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1B1E1D984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1E1D9DC();
  sub_1B1F1AF00();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1B1F1AD80();
  qword_1EB7834F8 = result;
  return result;
}

uint64_t sub_1B1E1BC90()
{
  v0 = sub_1B1F1A500();
  __swift_allocate_value_buffer(v0, qword_1EB7832D0);
  __swift_project_value_buffer(v0, qword_1EB7832D0);
  return sub_1B1F1A4F0();
}

void static XPCEventStream.activate()(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_1EB7832C0);
  }

  v4 = sub_1B1F1A500();
  __swift_project_value_buffer(v4, qword_1EB7832D0);
  v5 = sub_1B1F1A4E0();
  v6 = sub_1B1F1AD30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = (*(a2 + 24))(a1, a2);
    v11 = sub_1B1DF61DC(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B1DE3000, v5, v6, "Attempting to activate stream: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED84EB90);
  }

  v12 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_2();
  *(v15 - 16) = sub_1B1E1C39C;
  *(v15 - 8) = v16;
  os_unfair_lock_lock(v12 + 4);
  sub_1B1DE7A64(v17);
  os_unfair_lock_unlock(v12 + 4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1B1E1BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB783368 != -1)
  {
    swift_once();
  }

  v6 = *(a3 + 24);
  v7 = v6(a2, a3);
  v9 = v8;
  swift_beginAccess();
  LODWORD(v7) = sub_1B1E0CC80(v7, v9, qword_1EB783378);
  swift_endAccess();

  if (v7 == 2)
  {
    v6(a2, a3);
    v29 = v6;
    if (qword_1EB7834E8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB7834F8;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a1;
    aBlock[4] = sub_1B1E1D918;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1E6EBE0;
    aBlock[3] = &block_descriptor_2;
    v12 = _Block_copy(aBlock);

    v13 = sub_1B1F1A8E0();

    xpc_set_event_stream_handler((v13 + 32), v10, v12);

    _Block_release(v12);
    v14 = v29(a2, a3);
    v16 = v15;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v31 = qword_1EB783378;
    sub_1B1E0DA24(1, v14, v16);
    qword_1EB783378 = v31;

    swift_endAccess();
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B1F1A500();
    __swift_project_value_buffer(v17, qword_1EB7832D0);
    v18 = sub_1B1F1A4E0();
    v19 = sub_1B1F1AD30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      v22 = v29(a2, a3);
      v24 = sub_1B1DF61DC(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B1DE3000, v18, v19, "Stream: %s has been successfully activated.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1B273F720](v21, -1, -1);
      MEMORY[0x1B273F720](v20, -1, -1);
    }
  }

  else
  {
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1F1A500();
    __swift_project_value_buffer(v25, qword_1EB7832D0);
    v26 = sub_1B1F1A4E0();
    v27 = sub_1B1F1AD10();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B1DE3000, v26, v27, "Attempted to activate an already active stream.", v28, 2u);
      MEMORY[0x1B273F720](v28, -1, -1);
    }
  }
}

void static XPCEventStream.setEventListener(eventName:event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_1EB7832C0);
  }

  v6 = sub_1B1F1A500();
  __swift_project_value_buffer(v6, qword_1EB7832D0);
  v7 = sub_1B1F1A4E0();
  v8 = sub_1B1F1AD30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = (*(a5 + 24))(a4, a5);
    v13 = sub_1B1DF61DC(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B1DE3000, v7, v8, "Attempting to add event for stream: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED84EB90);
  }

  v14 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_2();
  *(v17 - 16) = sub_1B1E1D848;
  *(v17 - 8) = v18;
  os_unfair_lock_lock(v14 + 4);
  sub_1B1E07944(v19);
  os_unfair_lock_unlock(v14 + 4);
}

void sub_1B1E1C5E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *(a6 + 24);
  v20(a5, a6);
  sub_1B1F1A8E0();

  v22 = a2;
  sub_1B1F1A8E0();
  xpc_set_event();

  if (qword_1EB7832C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B1F1A500();
  __swift_project_value_buffer(v9, qword_1EB7832D0);
  sub_1B1F1A760();
  swift_unknownObjectRetain();
  v10 = sub_1B1F1A4E0();
  v11 = sub_1B1F1AD30();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v12 = 136315650;
    v13 = (v20)(a5, a6);
    v15 = sub_1B1DF61DC(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1B1DF61DC(v22, a3, &v23);
    *(v12 + 22) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A0, &qword_1B1F2C8E8);
    v16 = sub_1B1F1A8D0();
    v18 = sub_1B1DF61DC(v16, v17, &v23);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_1B1DE3000, v10, v11, "Stream: %s has added listener for %s: %s.", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v19, -1, -1);
    MEMORY[0x1B273F720](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t static XPCEventStream.notifyHandlers(of:eventName:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v42 - v15;
  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED84EB90);
  }

  v16 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v18 = MEMORY[0x1EEE9AC00](v17);
  v42[-6] = a4;
  v42[-5] = a5;
  v42[2] = a5;
  v42[-4] = v5;
  v42[-3] = a2;
  v42[-2] = a3;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_2();
  *(v19 - 16) = sub_1B1E1D86C;
  *(v19 - 8) = v20;
  os_unfair_lock_lock(v16 + 4);
  sub_1B1E1D8BC(v21, v46);
  os_unfair_lock_unlock(v16 + 4);
  v45 = v46[0];
  if (qword_1EB7832C0 != -1)
  {
    OUTLINED_FUNCTION_1_8(&qword_1EB7832C0);
  }

  v22 = sub_1B1F1A500();
  __swift_project_value_buffer(v22, qword_1EB7832D0);
  v24 = v43;
  v23 = v44;
  v25 = *(v44 + 16);
  v25(v43, a1, AssociatedTypeWitness);
  v26 = sub_1B1F1A4E0();
  v27 = sub_1B1F1AD30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v42[1] = a4;
    v29 = v28;
    v42[0] = swift_slowAlloc();
    v46[0] = v42[0];
    *v29 = 136315138;
    v25(v14, v24, AssociatedTypeWitness);
    v30 = sub_1B1F1A8D0();
    v31 = v24;
    v33 = v32;
    (*(v23 + 8))(v31, AssociatedTypeWitness);
    v34 = sub_1B1DF61DC(v30, v33, v46);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1B1DE3000, v26, v27, "Dispatching XPC event: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42[0]);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  else
  {

    (*(v23 + 8))(v24, AssociatedTypeWitness);
  }

  v35 = v45;
  v36 = *(v45 + 16);
  if (v36)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = v35 + 40;
    do
    {
      v39 = *(v38 - 8);
      v46[3] = AssociatedTypeWitness;
      v46[4] = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      v25(boxed_opaque_existential_1, a1, AssociatedTypeWitness);

      v39(v46);

      __swift_destroy_boxed_opaque_existential_1(v46);
      v38 += 16;
      --v36;
    }

    while (v36);
  }
}

void sub_1B1E1CC40(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  if (qword_1ED84EB80 != -1)
  {
    swift_once();
  }

  v10 = (*(a4 + 24))(a3, a4);
  v12 = v11;
  swift_beginAccess();
  v13 = sub_1B1E0E2B8(v10, v12, off_1EB7834E0);

  if (v13)
  {
    v14 = sub_1B1E0E2B8(a1, a2, v13);
    swift_endAccess();

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1EB7832C0 != -1)
  {
    swift_once();
  }

  v15 = sub_1B1F1A500();
  __swift_project_value_buffer(v15, qword_1EB7832D0);
  sub_1B1F1A760();
  v16 = sub_1B1F1A4E0();
  v17 = sub_1B1F1AD10();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B1DF61DC(a1, a2, v20);
    _os_log_impl(&dword_1B1DE3000, v16, v17, "Received an XPC event that we do not have an registered handler for: %s. This is a serious programming error that might lead to missed messages and stuck streams.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B273F720](v19, -1, -1);
    MEMORY[0x1B273F720](v18, -1, -1);
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *a5 = v14;
}

void static XPCEventStream.register(matching:_:)()
{
  if (qword_1ED84EB90 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED84EB90);
  }

  v0 = qword_1ED84EBA0;
  os_unfair_lock_assert_not_owner((qword_1ED84EBA0 + 16));
  v2 = MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_2();
  *(v3 - 16) = sub_1B1E1D8D8;
  *(v3 - 8) = v4;
  os_unfair_lock_lock(v0 + 4);
  sub_1B1E07944(v5);
  os_unfair_lock_unlock(v0 + 4);
}

uint64_t sub_1B1E1CF70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (qword_1EB783368 != -1)
  {
    swift_once();
  }

  v10 = *(a7 + 24);
  v11 = v10(a6, a7);
  v13 = v12;
  swift_beginAccess();
  v14 = sub_1B1E0CC80(v11, v13, qword_1EB783378);
  swift_endAccess();

  if (v14 == 2 || (v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1EB7832C0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = sub_1B1F1A500();
    __swift_project_value_buffer(v15, qword_1EB7832D0);
    sub_1B1F1A760();
    v16 = sub_1B1F1A4E0();
    v17 = sub_1B1F1AD10();

    log = v16;
    if (os_log_type_enabled(v16, v17))
    {
      v49 = v17;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B1DF61DC(a2, a3, v54);
      _os_log_impl(&dword_1B1DE3000, log, v49, "Attempting to register for new event (%s) after the stream has already been activated. This is a serious programming error that might lead to missed messages and stuck streams.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B273F720](v19, -1, -1);
      MEMORY[0x1B273F720](v18, -1, -1);
    }

LABEL_10:
    if (qword_1ED84EB80 != -1)
    {
      swift_once();
    }

    v20 = v10(a6, a7);
    v22 = v21;
    v23 = swift_allocObject();
    v23[2] = a6;
    v23[3] = a7;
    v23[4] = a4;
    v23[5] = a5;
    a6 = &off_1EB7834E0;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v24 = off_1EB7834E0;
    v55 = off_1EB7834E0;
    off_1EB7834E0 = 0x8000000000000000;
    v25 = sub_1B1DEBED8(v20, v22);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    a7 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
      goto LABEL_26;
    }

    a6 = v25;
    a5 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784578, &qword_1B1F2C8B8);
    if (sub_1B1F1B0C0())
    {
      v29 = sub_1B1DEBED8(v20, v22);
      if ((a5 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      a6 = v29;
    }

    v31 = v55;
    off_1EB7834E0 = v55;
    if ((a5 & 1) == 0)
    {
      sub_1B1E1D444(&v55);
      sub_1B1E2D060();
      sub_1B1F1A760();
    }

    v10 = v31[7];
    swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v10 + a6);
    v32 = v55;
    *(v10 + a6) = 0x8000000000000000;
    v33 = sub_1B1DEBED8(a2, a3);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    a7 = v35 + v36;
    if (!__OFADD__(v35, v36))
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v37 = v33;
  v38 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784580, &qword_1B1F2C8C0);
  v39 = sub_1B1F1B0C0();
  v40 = v55;
  if (v39)
  {
    v41 = sub_1B1DEBED8(a2, a3);
    if ((v38 & 1) != (v42 & 1))
    {
LABEL_28:
      result = sub_1B1F1B720();
      __break(1u);
      return result;
    }

    v37 = v41;
  }

  *(v10 + a6) = v40;

  v43 = *(v10 + a6);
  if ((v38 & 1) == 0)
  {
    sub_1B1E2D060();
    sub_1B1F1A760();
  }

  v44 = *(v43 + 56) + 8 * v37;
  sub_1B1E2AB7C();
  v45 = *(*v44 + 16);
  sub_1B1E2AC38(v45);
  v46 = *v44;
  *(v46 + 16) = v45 + 1;
  v47 = v46 + 16 * v45;
  *(v47 + 32) = sub_1B1DF64A8;
  *(v47 + 40) = v23;
  swift_endAccess();
}

uint64_t sub_1B1E1D444@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784588, &qword_1B1F2C8C8);
  result = sub_1B1F1A730();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E1D49C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B1E1D4E8(a1, a2);
  sub_1B1E1D600(&unk_1F28F30C8);
  return v3;
}

uint64_t sub_1B1E1D4E8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B1F1A930())
  {
    result = sub_1B1E1D6E4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1F1AF80();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B1F1B010();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1E1D600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B1E1D754(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B1E1D6E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A8, &unk_1B1F2C8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B1E1D754(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7845A8, &unk_1B1F2C8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1B1E1D890@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1B1E0BD80(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1B1E1D940()
{
  result = qword_1EB783600;
  if (!qword_1EB783600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB783600);
  }

  return result;
}

unint64_t sub_1B1E1D984()
{
  result = qword_1EB783608;
  if (!qword_1EB783608)
  {
    sub_1B1F1AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783608);
  }

  return result;
}

unint64_t sub_1B1E1D9DC()
{
  result = qword_1EB783648;
  if (!qword_1EB783648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7845B0, qword_1B1F34ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783648);
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

void sub_1B1E1DAE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) initWithOptions_];
  v1 = [objc_allocWithZone(WFAppIntentsMetadataProvider) initWithMetadataProvider:v0 cacheLifetime:30.0];

  qword_1EB7845D0 = v1;
}

id static WFAppIntentsMetadataProvider.daemon()()
{
  if (qword_1EB783B10 != -1)
  {
    OUTLINED_FUNCTION_10_2(&qword_1EB783B10);
  }

  v1 = qword_1EB7845D0;

  return v1;
}

char *sub_1B1E1DBC8(void *a1, double a2)
{
  v3 = v2;
  sub_1B1F1A650();
  OUTLINED_FUNCTION_0();
  v80 = v7;
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_5();
  v79 = v8;
  OUTLINED_FUNCTION_28_0();
  v76 = sub_1B1F1ADD0();
  v72 = *(v76 - 1);
  v73 = v72;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_4_5();
  v75 = v9;
  OUTLINED_FUNCTION_28_0();
  v71 = sub_1B1F1AD60();
  OUTLINED_FUNCTION_0();
  v70 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_5();
  v69 = v12;
  OUTLINED_FUNCTION_28_0();
  v68 = sub_1B1F1AD50();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_4_5();
  v67 = v13;
  OUTLINED_FUNCTION_28_0();
  sub_1B1F1A6B0();
  OUTLINED_FUNCTION_0();
  v77 = v15;
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction] = 0;
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver] = 0;
  type metadata accessor for ActionMetadataCache(0);
  OUTLINED_FUNCTION_24_3();
  v18 = swift_allocObject();
  *(v18 + 56) = a1;
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 24) = MEMORY[0x1E69E7CC0];
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  *(v18 + 48) = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784780, &qword_1B1F2CCA0);
  v22 = OUTLINED_FUNCTION_23_1(v21);
  *(v22 + 24) = 0;
  *(v22 + 16) = v18;
  v23 = OUTLINED_FUNCTION_32_0(v22, OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);
  type metadata accessor for QueryMetadataCache(v23);
  swift_allocObject();
  v24 = a1;
  sub_1B1DFA6D8(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784788, &qword_1B1F2CCA8);
  v26 = OUTLINED_FUNCTION_23_1(v25);
  v27 = OUTLINED_FUNCTION_33_0(v26);
  v28 = OUTLINED_FUNCTION_32_0(v27, OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);
  type metadata accessor for EntityMetadataCache(v28);
  OUTLINED_FUNCTION_24_3();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_20_1(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784790, &qword_1B1F2CCB0);
  v31 = OUTLINED_FUNCTION_23_1(v30);
  v32 = OUTLINED_FUNCTION_33_0(v31);
  v33 = OUTLINED_FUNCTION_32_0(v32, OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);
  type metadata accessor for EnumerationMetadataCache(v33);
  OUTLINED_FUNCTION_24_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_20_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784798, &qword_1B1F2CCB8);
  v36 = OUTLINED_FUNCTION_23_1(v35);
  v37 = OUTLINED_FUNCTION_33_0(v36);
  v38 = OUTLINED_FUNCTION_32_0(v37, OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);
  type metadata accessor for ExamplePhraseMetadataCache(v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = v20;
  *(v39 + 32) = v20;
  *(v39 + 40) = v19;
  *(v39 + 48) = v24;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847A0, &unk_1B1F2CCC0);
  v41 = OUTLINED_FUNCTION_23_1(v40);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache] = OUTLINED_FUNCTION_33_0(v41);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_metadataProvider] = v24;
  sub_1B1DEA98C(0, &qword_1EB783600, 0x1E69E9610);
  v74 = v24;
  v66 = v17;
  sub_1B1F1A680();
  aBlock = v20;
  sub_1B1E2CE90(&qword_1EB783608, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1DFA1D4(&qword_1EB783648, &unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1F1AF00();
  (*(v70 + 104))(v69, *MEMORY[0x1E69E8090], v71);
  v42 = sub_1B1F1AD80();
  v43 = [objc_allocWithZone(WFDebouncer) initWithDelay:v42 queue:a2];
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer] = v43;
  sub_1B1DEA98C(0, &qword_1EB7835E8, 0x1E69E9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847A8, &qword_1B1F2CCD0);
  v44 = v73;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1B1F2C910;
  sub_1B1F1ADC0();
  sub_1B1F1ADA0();
  sub_1B1F1ADB0();
  aBlock = v45;
  sub_1B1E2CE90(&unk_1EB7835F0, MEMORY[0x1E69E80E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847B0, &qword_1B1F2CCD8);
  sub_1B1DFA1D4(&unk_1EB783638, &qword_1EB7847B0, &qword_1B1F2CCD8);
  v46 = v75;
  v47 = v76;
  sub_1B1F1AF00();
  v48 = v46;
  v49 = sub_1B1F1ADE0();
  (*(v44 + 8))(v48, v47);
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue] = v42;
  *&v3[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchSource] = v49;
  v88.receiver = v3;
  v88.super_class = WFAppIntentsMetadataProvider;
  v76 = v42;
  swift_unknownObjectRetain();
  v50 = objc_msgSendSuper2(&v88, sel_init);
  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 defaultCenter];
  v54 = *MEMORY[0x1E69ACC50];
  OUTLINED_FUNCTION_3_2();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = sub_1B1E2CED4;
  v87 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1B1E1E7D4;
  v85 = &block_descriptor_251;
  v56 = _Block_copy(&aBlock);
  v57 = v52;

  v58 = [v53 addObserverForName:v54 object:0 queue:0 usingBlock:v56];
  _Block_release(v56);

  *&v57[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver] = v58;
  swift_unknownObjectRelease();
  swift_getObjectType();
  OUTLINED_FUNCTION_3_2();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = sub_1B1E2CEDC;
  v87 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1B1DFB864;
  v85 = &block_descriptor_255;
  v60 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v61 = v66;
  sub_1B1F1A680();
  v62 = v79;
  sub_1B1DFA218();
  sub_1B1F1ADF0();
  _Block_release(v60);
  swift_unknownObjectRelease();
  (*(v80 + 8))(v62, v81);
  (*(v77 + 8))(v61, v78);

  v63 = *&v57[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer];
  [v63 addTarget:v57 action:sel_cacheDebouncerFire];

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B1F1AE10();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v57;
}

void sub_1B1E1E580(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v16[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v16[-2] = sub_1B1E07904;
  v16[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1E07944(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD10();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging cache due to LNMetadataChanged notification", v13, 2u);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong purge];
  }
}

uint64_t sub_1B1E1E7D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1F1A080();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B1F1A060();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B1E1E8C8(uint64_t a1)
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v3 = swift_once();
  }

  v6 = qword_1ED84F038;
  v7 = MEMORY[0x1EEE9AC00](v3);
  v15[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v7);
  v15[-2] = sub_1B1E07904;
  v15[-1] = v8;

  os_unfair_lock_lock(v6 + 4);
  sub_1B1E07944(v9);
  os_unfair_lock_unlock(v6 + 4);

  v10 = sub_1B1F1A4E0();
  v11 = sub_1B1F1AD10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1DE3000, v10, v11, "Purging cache due to Memory Pressure notification", v12, 2u);
    MEMORY[0x1B273F720](v12, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong purge];
  }
}

id sub_1B1E1EB54()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeNotificationObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1B1F1AE00();
  swift_unknownObjectRelease();
  v6.receiver = v1;
  v6.super_class = WFAppIntentsMetadataProvider;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1B1E1ED34()
{
  v1 = sub_1B1F1A650();
  v15 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1F1A6B0();
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1B1E2CE88;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1DFB864;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  sub_1B1F1A680();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B1E2CE90(&qword_1EB783678, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784778, &qword_1B1F2CC98);
  sub_1B1DFA1D4(&qword_1EB783670, &qword_1EB784778, &qword_1B1F2CC98);
  sub_1B1F1AF00();
  MEMORY[0x1B273D600](0, v6, v3, v9);
  _Block_release(v9);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

id sub_1B1E1F010(uint64_t a1)
{
  *(a1 + OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction) = os_transaction_create();
  swift_unknownObjectRelease();
  v2 = *(a1 + OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDebouncer);

  return [v2 poke];
}

uint64_t sub_1B1E1F078(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B1E1F104()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B1F1A6C0();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cachePurgeDispatchQueue];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_1B1F1A6D0();
  v12 = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v6 = "AppIntentsMetadata";
    if (qword_1ED84F030 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v12 = swift_once();
LABEL_3:
  v13 = qword_1ED84F038;
  v14 = MEMORY[0x1EEE9AC00](v12);
  *&v21[-16] = v6;
  MEMORY[0x1EEE9AC00](v14);
  *&v21[-16] = sub_1B1E07904;
  *&v21[-8] = v15;

  os_unfair_lock_lock(v13 + 4);
  sub_1B1E07944(v16);
  os_unfair_lock_unlock(v13 + 4);

  v17 = sub_1B1F1A4E0();
  v18 = sub_1B1F1AD10();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B1DE3000, v17, v18, "Purging cache due to cache expiry", v19, 2u);
    MEMORY[0x1B273F720](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [v1 purge];
  *&v1[OBJC_IVAR___WFAppIntentsMetadataProvider_cacheActivityTransaction] = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1E1F470()
{
  v1 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);

  os_unfair_lock_lock(v1 + 6);
  sub_1B1E26D38(sub_1B1E25824, &qword_1EB784700, &qword_1B1F2CC38);
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);

  os_unfair_lock_lock(v2 + 6);
  sub_1B1E2A0AC();
  os_unfair_lock_unlock(v2 + 6);

  v3 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);

  os_unfair_lock_lock(v3 + 6);
  sub_1B1E26D38(sub_1B1E25E84, &qword_1EB7846F8, &qword_1B1F2CC30);
  os_unfair_lock_unlock(v3 + 6);

  v4 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);

  os_unfair_lock_lock(v4 + 6);
  sub_1B1E26D38(sub_1B1E261B4, &qword_1EB7846F0, &qword_1B1F2CC28);
  os_unfair_lock_unlock(v4 + 6);

  v5 = *(v0 + OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache);

  os_unfair_lock_lock(v5 + 6);
  sub_1B1E264E4();
  os_unfair_lock_unlock(v5 + 6);
}

void *sub_1B1E1F65C()
{
  OUTLINED_FUNCTION_12_2();
  os_unfair_lock_lock(v1 + 6);
  OUTLINED_FUNCTION_2_7();
  sub_1B1E2CE04();
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

uint64_t sub_1B1E1F724(void *a1, uint64_t (*a2)(void))
{
  v4 = *&v2[*a1];

  os_unfair_lock_lock(v4 + 6);
  v5 = sub_1B1E26E94(a2);
  os_unfair_lock_unlock(v4 + 6);

  [v2 cacheDebouncerPoke];
  return v5;
}

void *sub_1B1E1F7FC()
{
  OUTLINED_FUNCTION_6_5();
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1E2CD8C(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

void *sub_1B1E1F884()
{
  OUTLINED_FUNCTION_12_2();
  os_unfair_lock_lock(v1 + 6);
  OUTLINED_FUNCTION_2_7();
  sub_1B1E2CD08();
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

id sub_1B1E1F94C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  sub_1B1E1F724(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = sub_1B1F1A6F0();

  return v11;
}

void *sub_1B1E1F9EC()
{
  OUTLINED_FUNCTION_12_2();
  os_unfair_lock_lock(v1 + 6);
  OUTLINED_FUNCTION_2_7();
  sub_1B1E2D048();
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

id sub_1B1E1FA84(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B1F1A500();
  OUTLINED_FUNCTION_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - v14;
  if (a3)
  {
    v16 = *&v4[OBJC_IVAR___WFAppIntentsMetadataProvider_examplePhrasesCache];
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_2_2();
    *(v17 - 16) = a1;
    *(v17 - 8) = a2;

    os_unfair_lock_lock(v16 + 6);
    sub_1B1E2CC84();
    os_unfair_lock_unlock(v16 + 6);
    v18 = v54[0];

    [v4 cacheDebouncerPoke];
  }

  else
  {
    v52 = v13;
    v53 = v12;
    if (qword_1ED84F030 != -1)
    {
      v11 = swift_once();
    }

    v19 = qword_1ED84F038;
    v20 = MEMORY[0x1EEE9AC00](v11);
    v51 = "AppIntentsMetadata";
    *(&v51 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_2_2();
    *(v21 - 16) = sub_1B1E07904;
    *(v21 - 8) = v22;

    os_unfair_lock_lock(v19 + 4);
    sub_1B1E07944(v23);
    os_unfair_lock_unlock(v19 + 4);

    sub_1B1F1A760();
    v24 = sub_1B1F1A4E0();
    v25 = sub_1B1F1AD30();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1B1DF61DC(a1, a2, v54);
      _os_log_impl(&dword_1B1DE3000, v24, v25, "Forcing loading of example phrases for bundle identifier '%s'.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();
    }

    v28 = *(v53 + 8);
    v28(v15, v8);
    v29 = [v4 metadataProvider];
    v30 = sub_1B1F1A860();
    v54[0] = 0;
    v31 = [v29 examplePhrasesForBundleIdentifier:v30 error:v54];

    v32 = v54[0];
    if (v31)
    {
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      OUTLINED_FUNCTION_31_0();
      v18 = sub_1B1F1A9B0();
      v33 = v32;
    }

    else
    {
      v34 = v54[0];
      v35 = sub_1B1F1A1C0();

      v36 = swift_willThrow();
      v37 = qword_1ED84F038;
      v38 = MEMORY[0x1EEE9AC00](v36);
      *(&v51 - 2) = v51;
      MEMORY[0x1EEE9AC00](v38);
      OUTLINED_FUNCTION_2_2();
      *(v39 - 16) = sub_1B1E07904;
      *(v39 - 8) = v40;

      os_unfair_lock_lock(v37 + 4);
      v41 = v52;
      sub_1B1E07944(v42);
      os_unfair_lock_unlock(v37 + 4);

      v43 = v35;
      v44 = sub_1B1F1A4E0();
      v45 = sub_1B1F1AD10();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v35;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_1B1DE3000, v44, v45, "Failed to fetch example phrases due to error: %@", v46, 0xCu);
        sub_1B1E08DD4(v47);
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_5();
      }

      v28(v41, v8);
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v18;
}

void __swiftcall WFAppIntentsMetadataProvider.init()(WFAppIntentsMetadataProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t LNQueryMetadata.uniqueIdentifier.getter()
{
  v1 = sub_1B1E2C7B8(v0);
  if (v2)
  {
    return v1;
  }

  v4 = [v0 identifier];
  v3 = sub_1B1F1A890();

  return v3;
}

uint64_t sub_1B1E201AC()
{
  v1 = [v0 identifier];
  v2 = sub_1B1F1A890();

  return v2;
}

uint64_t sub_1B1E20204()
{
  sub_1B1F1A7C0();
  swift_getTupleTypeMetadata2();
  sub_1B1F1A9D0();
  return sub_1B1F1A730();
}

uint64_t sub_1B1E202DC()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v70 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v70 - v10;
  v12 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v13 = qword_1ED84F038;
      v14 = MEMORY[0x1EEE9AC00](v9);
      v70[-2] = v12;
      MEMORY[0x1EEE9AC00](v14);
      v70[-2] = sub_1B1E07904;
      v70[-1] = v15;

      os_unfair_lock_lock(v13 + 4);
      sub_1B1E07944(v16);
      os_unfair_lock_unlock(v13 + 4);

      v17 = sub_1B1F1A4E0();
      v18 = sub_1B1F1AD10();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v73[0] = v20;
        *v19 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v21 = sub_1B1F1B880();
        v23 = sub_1B1DF61DC(v21, v22, v73);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1B1DE3000, v17, v18, "Not loading %s - cache already fully loaded", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1B273F720](v20, -1, -1);
        MEMORY[0x1B273F720](v19, -1, -1);
      }

      return (*(v2 + 8))(v11, v1);
    }

LABEL_28:
    v9 = swift_once();
    goto LABEL_3;
  }

  v72 = v0;
  if (qword_1ED84F030 != -1)
  {
    v9 = swift_once();
  }

  v11 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v9);
  v70[0] = "AppIntentsMetadata";
  v70[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v26;

  os_unfair_lock_lock(v11 + 4);
  sub_1B1E07944(v27);
  v71 = 0;
  os_unfair_lock_unlock(v11 + 4);

  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD30();
  v30 = os_log_type_enabled(v28, v29);
  v70[1] = v2;
  if (v30)
  {
    v11 = swift_slowAlloc();
    v31 = v1;
    v32 = swift_slowAlloc();
    v73[0] = v32;
    *v11 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v73);

    *(v11 + 4) = v35;
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Loading all %s metadata", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v36 = v32;
    v1 = v31;
    MEMORY[0x1B273F720](v36, -1, -1);
    MEMORY[0x1B273F720](v11, -1, -1);

    v37 = *(v2 + 8);
    v38 = v37(v8, v31);
  }

  else
  {

    v37 = *(v2 + 8);
    v38 = v37(v8, v1);
  }

  v12 = v71;
  v39 = (*(*v72 + 224))(v38);
  if (!v12)
  {
    v2 = 0;
    v71 = v39;
    v1 = v39 + 64;
    v59 = 1 << *(v39 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v39 + 64);
    v62 = (v59 + 63) >> 6;
    while (v61)
    {
      v63 = v2;
LABEL_22:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = v64 | (v63 << 6);
      v66 = *(v71 + 48) + 16 * v65;
      v11 = *v66;
      v67 = *(v66 + 8);
      v68 = *(*(v71 + 56) + 8 * v65);
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784760, &qword_1B1F2CC88);
      v73[4] = sub_1B1DFA1D4(&qword_1EB784768, &qword_1EB784760, &qword_1B1F2CC88);
      v73[0] = v68;
      v12 = (*v72 + 256);
      v69 = *v12;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v69(v73, v11, v67);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    while (1)
    {
      v63 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v63 >= v62)
      {

        v72[16] = 1;
        return result;
      }

      v61 = *(v1 + 8 * v63);
      ++v2;
      if (v61)
      {
        v2 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v40 = v12;
  v41 = qword_1ED84F038;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v70[-2] = v70[0];
  MEMORY[0x1EEE9AC00](v42);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v43;

  os_unfair_lock_lock(v41 + 4);
  sub_1B1E07944(v44);
  os_unfair_lock_unlock(v41 + 4);

  v45 = v12;
  v46 = sub_1B1F1A4E0();
  v47 = sub_1B1F1AD10();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73[0] = v50;
    *v48 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v51 = sub_1B1F1B880();
    v53 = sub_1B1DF61DC(v51, v52, v73);
    v72 = v1;
    v54 = v53;

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    v55 = v40;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v56;
    *v49 = v56;
    _os_log_impl(&dword_1B1DE3000, v46, v47, "Failed to load all %s from metadata provider due to: %@", v48, 0x16u);
    sub_1B1E08DD4(v49);
    MEMORY[0x1B273F720](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    MEMORY[0x1B273F720](v48, -1, -1);

    v57 = v5;
    v58 = v72;
  }

  else
  {

    v57 = v5;
    v58 = v1;
  }

  return v37(v57, v58);
}

uint64_t sub_1B1E20B6C()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v70 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v70 - v10;
  v12 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v13 = qword_1ED84F038;
      v14 = MEMORY[0x1EEE9AC00](v9);
      v70[-2] = v12;
      MEMORY[0x1EEE9AC00](v14);
      v70[-2] = sub_1B1E07904;
      v70[-1] = v15;

      os_unfair_lock_lock(v13 + 4);
      sub_1B1E07944(v16);
      os_unfair_lock_unlock(v13 + 4);

      v17 = sub_1B1F1A4E0();
      v18 = sub_1B1F1AD10();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v73[0] = v20;
        *v19 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v21 = sub_1B1F1B880();
        v23 = sub_1B1DF61DC(v21, v22, v73);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1B1DE3000, v17, v18, "Not loading %s - cache already fully loaded", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1B273F720](v20, -1, -1);
        MEMORY[0x1B273F720](v19, -1, -1);
      }

      return (*(v2 + 8))(v11, v1);
    }

LABEL_28:
    v9 = swift_once();
    goto LABEL_3;
  }

  v72 = v0;
  if (qword_1ED84F030 != -1)
  {
    v9 = swift_once();
  }

  v11 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v9);
  v70[0] = "AppIntentsMetadata";
  v70[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v26;

  os_unfair_lock_lock(v11 + 4);
  sub_1B1E07944(v27);
  v71 = 0;
  os_unfair_lock_unlock(v11 + 4);

  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD30();
  v30 = os_log_type_enabled(v28, v29);
  v70[1] = v2;
  if (v30)
  {
    v11 = swift_slowAlloc();
    v31 = v1;
    v32 = swift_slowAlloc();
    v73[0] = v32;
    *v11 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v73);

    *(v11 + 4) = v35;
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Loading all %s metadata", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v36 = v32;
    v1 = v31;
    MEMORY[0x1B273F720](v36, -1, -1);
    MEMORY[0x1B273F720](v11, -1, -1);

    v37 = *(v2 + 8);
    v38 = v37(v8, v31);
  }

  else
  {

    v37 = *(v2 + 8);
    v38 = v37(v8, v1);
  }

  v12 = v71;
  v39 = (*(*v72 + 224))(v38);
  if (!v12)
  {
    v2 = 0;
    v71 = v39;
    v1 = v39 + 64;
    v59 = 1 << *(v39 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v39 + 64);
    v62 = (v59 + 63) >> 6;
    while (v61)
    {
      v63 = v2;
LABEL_22:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = v64 | (v63 << 6);
      v66 = *(v71 + 48) + 16 * v65;
      v11 = *v66;
      v67 = *(v66 + 8);
      v68 = *(*(v71 + 56) + 8 * v65);
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784740, &qword_1B1F2CC70);
      v73[4] = sub_1B1DFA1D4(&qword_1EB784748, &qword_1EB784740, &qword_1B1F2CC70);
      v73[0] = v68;
      v12 = (*v72 + 256);
      v69 = *v12;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v69(v73, v11, v67);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    while (1)
    {
      v63 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v63 >= v62)
      {

        v72[16] = 1;
        return result;
      }

      v61 = *(v1 + 8 * v63);
      ++v2;
      if (v61)
      {
        v2 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v40 = v12;
  v41 = qword_1ED84F038;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v70[-2] = v70[0];
  MEMORY[0x1EEE9AC00](v42);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v43;

  os_unfair_lock_lock(v41 + 4);
  sub_1B1E07944(v44);
  os_unfair_lock_unlock(v41 + 4);

  v45 = v12;
  v46 = sub_1B1F1A4E0();
  v47 = sub_1B1F1AD10();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73[0] = v50;
    *v48 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v51 = sub_1B1F1B880();
    v53 = sub_1B1DF61DC(v51, v52, v73);
    v72 = v1;
    v54 = v53;

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    v55 = v40;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v56;
    *v49 = v56;
    _os_log_impl(&dword_1B1DE3000, v46, v47, "Failed to load all %s from metadata provider due to: %@", v48, 0x16u);
    sub_1B1E08DD4(v49);
    MEMORY[0x1B273F720](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    MEMORY[0x1B273F720](v48, -1, -1);

    v57 = v5;
    v58 = v72;
  }

  else
  {

    v57 = v5;
    v58 = v1;
  }

  return v37(v57, v58);
}

uint64_t sub_1B1E213FC()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v70 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v70 - v10;
  v12 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v13 = qword_1ED84F038;
      v14 = MEMORY[0x1EEE9AC00](v9);
      v70[-2] = v12;
      MEMORY[0x1EEE9AC00](v14);
      v70[-2] = sub_1B1E07904;
      v70[-1] = v15;

      os_unfair_lock_lock(v13 + 4);
      sub_1B1E07944(v16);
      os_unfair_lock_unlock(v13 + 4);

      v17 = sub_1B1F1A4E0();
      v18 = sub_1B1F1AD10();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v73[0] = v20;
        *v19 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
        v21 = sub_1B1F1B880();
        v23 = sub_1B1DF61DC(v21, v22, v73);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1B1DE3000, v17, v18, "Not loading %s - cache already fully loaded", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1B273F720](v20, -1, -1);
        MEMORY[0x1B273F720](v19, -1, -1);
      }

      return (*(v2 + 8))(v11, v1);
    }

LABEL_28:
    v9 = swift_once();
    goto LABEL_3;
  }

  v72 = v0;
  if (qword_1ED84F030 != -1)
  {
    v9 = swift_once();
  }

  v11 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v9);
  v70[0] = "AppIntentsMetadata";
  v70[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v26;

  os_unfair_lock_lock(v11 + 4);
  sub_1B1E07944(v27);
  v71 = 0;
  os_unfair_lock_unlock(v11 + 4);

  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD30();
  v30 = os_log_type_enabled(v28, v29);
  v70[1] = v2;
  if (v30)
  {
    v11 = swift_slowAlloc();
    v31 = v1;
    v32 = swift_slowAlloc();
    v73[0] = v32;
    *v11 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v73);

    *(v11 + 4) = v35;
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Loading all %s metadata", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v36 = v32;
    v1 = v31;
    MEMORY[0x1B273F720](v36, -1, -1);
    MEMORY[0x1B273F720](v11, -1, -1);

    v37 = *(v2 + 8);
    v38 = v37(v8, v31);
  }

  else
  {

    v37 = *(v2 + 8);
    v38 = v37(v8, v1);
  }

  v12 = v71;
  v39 = (*(*v72 + 224))(v38);
  if (!v12)
  {
    v2 = 0;
    v71 = v39;
    v1 = v39 + 64;
    v59 = 1 << *(v39 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v39 + 64);
    v62 = (v59 + 63) >> 6;
    while (v61)
    {
      v63 = v2;
LABEL_22:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = v64 | (v63 << 6);
      v66 = *(v71 + 48) + 16 * v65;
      v11 = *v66;
      v67 = *(v66 + 8);
      v68 = *(*(v71 + 56) + 8 * v65);
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784728, &qword_1B1F2CC60);
      v73[4] = sub_1B1DFA1D4(&qword_1EB784730, &qword_1EB784728, &qword_1B1F2CC60);
      v73[0] = v68;
      v12 = (*v72 + 256);
      v69 = *v12;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v69(v73, v11, v67);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    while (1)
    {
      v63 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v63 >= v62)
      {

        v72[16] = 1;
        return result;
      }

      v61 = *(v1 + 8 * v63);
      ++v2;
      if (v61)
      {
        v2 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v40 = v12;
  v41 = qword_1ED84F038;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v70[-2] = v70[0];
  MEMORY[0x1EEE9AC00](v42);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v43;

  os_unfair_lock_lock(v41 + 4);
  sub_1B1E07944(v44);
  os_unfair_lock_unlock(v41 + 4);

  v45 = v12;
  v46 = sub_1B1F1A4E0();
  v47 = sub_1B1F1AD10();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73[0] = v50;
    *v48 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v51 = sub_1B1F1B880();
    v53 = sub_1B1DF61DC(v51, v52, v73);
    v72 = v1;
    v54 = v53;

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    v55 = v40;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v56;
    *v49 = v56;
    _os_log_impl(&dword_1B1DE3000, v46, v47, "Failed to load all %s from metadata provider due to: %@", v48, 0x16u);
    sub_1B1E08DD4(v49);
    MEMORY[0x1B273F720](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    MEMORY[0x1B273F720](v48, -1, -1);

    v57 = v5;
    v58 = v72;
  }

  else
  {

    v57 = v5;
    v58 = v1;
  }

  return v37(v57, v58);
}

uint64_t sub_1B1E21C8C()
{
  v1 = sub_1B1F1A500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v70 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v70 - v10;
  v12 = "AppIntentsMetadata";
  if (v0[16] == 1)
  {
    if (qword_1ED84F030 == -1)
    {
LABEL_3:
      v13 = qword_1ED84F038;
      v14 = MEMORY[0x1EEE9AC00](v9);
      v70[-2] = v12;
      MEMORY[0x1EEE9AC00](v14);
      v70[-2] = sub_1B1E07904;
      v70[-1] = v15;

      os_unfair_lock_lock(v13 + 4);
      sub_1B1E07944(v16);
      os_unfair_lock_unlock(v13 + 4);

      v17 = sub_1B1F1A4E0();
      v18 = sub_1B1F1AD10();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v73[0] = v20;
        *v19 = 136315138;
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        v21 = sub_1B1F1B880();
        v23 = sub_1B1DF61DC(v21, v22, v73);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1B1DE3000, v17, v18, "Not loading %s - cache already fully loaded", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1B273F720](v20, -1, -1);
        MEMORY[0x1B273F720](v19, -1, -1);
      }

      return (*(v2 + 8))(v11, v1);
    }

LABEL_28:
    v9 = swift_once();
    goto LABEL_3;
  }

  v72 = v0;
  if (qword_1ED84F030 != -1)
  {
    v9 = swift_once();
  }

  v11 = qword_1ED84F038;
  v25 = MEMORY[0x1EEE9AC00](v9);
  v70[0] = "AppIntentsMetadata";
  v70[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v25);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v26;

  os_unfair_lock_lock(v11 + 4);
  sub_1B1E07944(v27);
  v71 = 0;
  os_unfair_lock_unlock(v11 + 4);

  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD30();
  v30 = os_log_type_enabled(v28, v29);
  v70[1] = v2;
  if (v30)
  {
    v11 = swift_slowAlloc();
    v31 = v1;
    v32 = swift_slowAlloc();
    v73[0] = v32;
    *v11 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v33 = sub_1B1F1B880();
    v35 = sub_1B1DF61DC(v33, v34, v73);

    *(v11 + 4) = v35;
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Loading all %s metadata", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v36 = v32;
    v1 = v31;
    MEMORY[0x1B273F720](v36, -1, -1);
    MEMORY[0x1B273F720](v11, -1, -1);

    v37 = *(v2 + 8);
    v38 = v37(v8, v31);
  }

  else
  {

    v37 = *(v2 + 8);
    v38 = v37(v8, v1);
  }

  v12 = v71;
  v39 = (*(*v72 + 224))(v38);
  if (!v12)
  {
    v2 = 0;
    v71 = v39;
    v1 = v39 + 64;
    v59 = 1 << *(v39 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v39 + 64);
    v62 = (v59 + 63) >> 6;
    while (v61)
    {
      v63 = v2;
LABEL_22:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = v64 | (v63 << 6);
      v66 = *(v71 + 48) + 16 * v65;
      v11 = *v66;
      v67 = *(v66 + 8);
      v68 = *(*(v71 + 56) + 8 * v65);
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784718, &qword_1B1F2CC58);
      v73[4] = sub_1B1DFA1D4(&qword_1EB784720, &qword_1EB784718, &qword_1B1F2CC58);
      v73[0] = v68;
      v12 = (*v72 + 256);
      v69 = *v12;
      sub_1B1F1A760();
      sub_1B1F1A760();
      v69(v73, v11, v67);

      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    while (1)
    {
      v63 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v63 >= v62)
      {

        v72[16] = 1;
        return result;
      }

      v61 = *(v1 + 8 * v63);
      ++v2;
      if (v61)
      {
        v2 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v40 = v12;
  v41 = qword_1ED84F038;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v70[-2] = v70[0];
  MEMORY[0x1EEE9AC00](v42);
  v70[-2] = sub_1B1E07904;
  v70[-1] = v43;

  os_unfair_lock_lock(v41 + 4);
  sub_1B1E07944(v44);
  os_unfair_lock_unlock(v41 + 4);

  v45 = v12;
  v46 = sub_1B1F1A4E0();
  v47 = sub_1B1F1AD10();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73[0] = v50;
    *v48 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v51 = sub_1B1F1B880();
    v53 = sub_1B1DF61DC(v51, v52, v73);
    v72 = v1;
    v54 = v53;

    *(v48 + 4) = v54;
    *(v48 + 12) = 2112;
    v55 = v40;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v56;
    *v49 = v56;
    _os_log_impl(&dword_1B1DE3000, v46, v47, "Failed to load all %s from metadata provider due to: %@", v48, 0x16u);
    sub_1B1E08DD4(v49);
    MEMORY[0x1B273F720](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1B273F720](v50, -1, -1);
    MEMORY[0x1B273F720](v48, -1, -1);

    v57 = v5;
    v58 = v72;
  }

  else
  {

    v57 = v5;
    v58 = v1;
  }

  return v37(v57, v58);
}

uint64_t sub_1B1E2251C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v71 = a1;
  if (v15)
  {
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v16 = qword_1ED84F038;
    v17 = MEMORY[0x1EEE9AC00](v15);
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v17);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_1B1E07944(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_1B1F1A760();
    v20 = sub_1B1F1A4E0();
    v21 = sub_1B1F1AD10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73[0] = v23;
      *v22 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v24 = sub_1B1F1B880();
      v26 = sub_1B1DF61DC(v24, v25, v73);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v20, v21, "Not loading %s for bundle identifier %s - cache already present", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v23, -1, -1);
      MEMORY[0x1B273F720](v22, -1, -1);
    }

    return (*(v72 + 8))(v14, v6);
  }

  else
  {
    v68 = v9;
    v70 = v6;
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v28 = qword_1ED84F038;
    v29 = MEMORY[0x1EEE9AC00](v15);
    v67 = "AppIntentsMetadata";
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v29);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_1B1E07944(v31);
    v69 = 0;
    os_unfair_lock_unlock(v28 + 4);

    sub_1B1F1A760();
    v32 = sub_1B1F1A4E0();
    v33 = sub_1B1F1AD30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v36 = sub_1B1F1B880();
      v38 = sub_1B1DF61DC(v36, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = v71;
      *(v34 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v32, v33, "Loading %s for bundle identifier %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v35, -1, -1);
      MEMORY[0x1B273F720](v34, -1, -1);

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
    }

    else
    {

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
      v39 = v71;
    }

    v42 = v69;
    v43 = (*(*v3 + 232))(v39, a2);
    if (v42)
    {
      v44 = v42;
      v45 = qword_1ED84F038;
      v46 = MEMORY[0x1EEE9AC00](v43);
      *(&v67 - 2) = v67;
      MEMORY[0x1EEE9AC00](v46);
      *(&v67 - 2) = sub_1B1E07904;
      *(&v67 - 1) = v47;

      os_unfair_lock_lock(v45 + 4);
      v48 = v68;
      sub_1B1E07944(v49);
      os_unfair_lock_unlock(v45 + 4);

      v50 = v48;
      sub_1B1F1A760();
      v51 = v42;
      v52 = sub_1B1F1A4E0();
      v53 = sub_1B1F1AD10();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69 = v40;
        v56 = v55;
        v57 = swift_slowAlloc();
        v73[0] = v57;
        *v54 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v58 = sub_1B1F1B880();
        v60 = sub_1B1DF61DC(v58, v59, v73);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B1DF61DC(v71, a2, v73);
        *(v54 + 22) = 2112;
        v61 = v44;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v62;
        *v56 = v62;
        _os_log_impl(&dword_1B1DE3000, v52, v53, "Failed to load %s for %s from metadata provider due to: %@", v54, 0x20u);
        sub_1B1E08DD4(v56);
        MEMORY[0x1B273F720](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v57, -1, -1);
        MEMORY[0x1B273F720](v54, -1, -1);

        return (v69)(v50, v70);
      }

      else
      {

        return (v40)(v50, v41);
      }
    }

    else
    {
      v63 = v43;
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784770, &qword_1B1F2CC90);
      v73[4] = sub_1B1DFA1D4(&qword_1EB783658, &qword_1EB784770, &qword_1B1F2CC90);
      v73[0] = v63;
      (*(*v3 + 256))(v73, v39, a2);
      __swift_destroy_boxed_opaque_existential_1(v73);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v64 = *(v3[4] + 16);
      sub_1B1E2AC50(v64, sub_1B1E2ACBC);
      v65 = v3[4];
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v39;
      *(v66 + 40) = a2;
      v3[4] = v65;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E22E78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v71 = a1;
  if (v15)
  {
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v16 = qword_1ED84F038;
    v17 = MEMORY[0x1EEE9AC00](v15);
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v17);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_1B1E07944(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_1B1F1A760();
    v20 = sub_1B1F1A4E0();
    v21 = sub_1B1F1AD10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73[0] = v23;
      *v22 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v24 = sub_1B1F1B880();
      v26 = sub_1B1DF61DC(v24, v25, v73);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v20, v21, "Not loading %s for bundle identifier %s - cache already present", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v23, -1, -1);
      MEMORY[0x1B273F720](v22, -1, -1);
    }

    return (*(v72 + 8))(v14, v6);
  }

  else
  {
    v68 = v9;
    v70 = v6;
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v28 = qword_1ED84F038;
    v29 = MEMORY[0x1EEE9AC00](v15);
    v67 = "AppIntentsMetadata";
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v29);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_1B1E07944(v31);
    v69 = 0;
    os_unfair_lock_unlock(v28 + 4);

    sub_1B1F1A760();
    v32 = sub_1B1F1A4E0();
    v33 = sub_1B1F1AD30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v36 = sub_1B1F1B880();
      v38 = sub_1B1DF61DC(v36, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = v71;
      *(v34 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v32, v33, "Loading %s for bundle identifier %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v35, -1, -1);
      MEMORY[0x1B273F720](v34, -1, -1);

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
    }

    else
    {

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
      v39 = v71;
    }

    v42 = v69;
    v43 = (*(*v3 + 232))(v39, a2);
    if (v42)
    {
      v44 = v42;
      v45 = qword_1ED84F038;
      v46 = MEMORY[0x1EEE9AC00](v43);
      *(&v67 - 2) = v67;
      MEMORY[0x1EEE9AC00](v46);
      *(&v67 - 2) = sub_1B1E07904;
      *(&v67 - 1) = v47;

      os_unfair_lock_lock(v45 + 4);
      v48 = v68;
      sub_1B1E07944(v49);
      os_unfair_lock_unlock(v45 + 4);

      v50 = v48;
      sub_1B1F1A760();
      v51 = v42;
      v52 = sub_1B1F1A4E0();
      v53 = sub_1B1F1AD10();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69 = v40;
        v56 = v55;
        v57 = swift_slowAlloc();
        v73[0] = v57;
        *v54 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v58 = sub_1B1F1B880();
        v60 = sub_1B1DF61DC(v58, v59, v73);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B1DF61DC(v71, a2, v73);
        *(v54 + 22) = 2112;
        v61 = v44;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v62;
        *v56 = v62;
        _os_log_impl(&dword_1B1DE3000, v52, v53, "Failed to load %s for %s from metadata provider due to: %@", v54, 0x20u);
        sub_1B1E08DD4(v56);
        MEMORY[0x1B273F720](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v57, -1, -1);
        MEMORY[0x1B273F720](v54, -1, -1);

        return (v69)(v50, v70);
      }

      else
      {

        return (v40)(v50, v41);
      }
    }

    else
    {
      v63 = v43;
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784750, &qword_1B1F2CC78);
      v73[4] = sub_1B1DFA1D4(&qword_1EB783650, &qword_1EB784750, &qword_1B1F2CC78);
      v73[0] = v63;
      (*(*v3 + 256))(v73, v39, a2);
      __swift_destroy_boxed_opaque_existential_1(v73);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v64 = *(v3[4] + 16);
      sub_1B1E2AC50(v64, sub_1B1E2ACBC);
      v65 = v3[4];
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v39;
      *(v66 + 40) = a2;
      v3[4] = v65;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E237D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v71 = a1;
  if (v15)
  {
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v16 = qword_1ED84F038;
    v17 = MEMORY[0x1EEE9AC00](v15);
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v17);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_1B1E07944(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_1B1F1A760();
    v20 = sub_1B1F1A4E0();
    v21 = sub_1B1F1AD10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73[0] = v23;
      *v22 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
      v24 = sub_1B1F1B880();
      v26 = sub_1B1DF61DC(v24, v25, v73);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v20, v21, "Not loading %s for bundle identifier %s - cache already present", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v23, -1, -1);
      MEMORY[0x1B273F720](v22, -1, -1);
    }

    return (*(v72 + 8))(v14, v6);
  }

  else
  {
    v68 = v9;
    v70 = v6;
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v28 = qword_1ED84F038;
    v29 = MEMORY[0x1EEE9AC00](v15);
    v67 = "AppIntentsMetadata";
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v29);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_1B1E07944(v31);
    v69 = 0;
    os_unfair_lock_unlock(v28 + 4);

    sub_1B1F1A760();
    v32 = sub_1B1F1A4E0();
    v33 = sub_1B1F1AD30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
      v36 = sub_1B1F1B880();
      v38 = sub_1B1DF61DC(v36, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = v71;
      *(v34 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v32, v33, "Loading %s for bundle identifier %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v35, -1, -1);
      MEMORY[0x1B273F720](v34, -1, -1);

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
    }

    else
    {

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
      v39 = v71;
    }

    v42 = v69;
    v43 = (*(*v3 + 232))(v39, a2);
    if (v42)
    {
      v44 = v42;
      v45 = qword_1ED84F038;
      v46 = MEMORY[0x1EEE9AC00](v43);
      *(&v67 - 2) = v67;
      MEMORY[0x1EEE9AC00](v46);
      *(&v67 - 2) = sub_1B1E07904;
      *(&v67 - 1) = v47;

      os_unfair_lock_lock(v45 + 4);
      v48 = v68;
      sub_1B1E07944(v49);
      os_unfair_lock_unlock(v45 + 4);

      v50 = v48;
      sub_1B1F1A760();
      v51 = v42;
      v52 = sub_1B1F1A4E0();
      v53 = sub_1B1F1AD10();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69 = v40;
        v56 = v55;
        v57 = swift_slowAlloc();
        v73[0] = v57;
        *v54 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
        v58 = sub_1B1F1B880();
        v60 = sub_1B1DF61DC(v58, v59, v73);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B1DF61DC(v71, a2, v73);
        *(v54 + 22) = 2112;
        v61 = v44;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v62;
        *v56 = v62;
        _os_log_impl(&dword_1B1DE3000, v52, v53, "Failed to load %s for %s from metadata provider due to: %@", v54, 0x20u);
        sub_1B1E08DD4(v56);
        MEMORY[0x1B273F720](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v57, -1, -1);
        MEMORY[0x1B273F720](v54, -1, -1);

        return (v69)(v50, v70);
      }

      else
      {

        return (v40)(v50, v41);
      }
    }

    else
    {
      v63 = v43;
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784738, &qword_1B1F2CC68);
      v73[4] = sub_1B1DFA1D4(&qword_1EB783668, &qword_1EB784738, &qword_1B1F2CC68);
      v73[0] = v63;
      (*(*v3 + 256))(v73, v39, a2);
      __swift_destroy_boxed_opaque_existential_1(v73);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v64 = *(v3[4] + 16);
      sub_1B1E2AC50(v64, sub_1B1E2ACBC);
      v65 = v3[4];
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v39;
      *(v66 + 40) = a2;
      v3[4] = v65;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E24130(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = sub_1B1DEB798(a1, a2, sub_1B1DEBA30, sub_1B1E2D064);
  v71 = a1;
  if (v15)
  {
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v16 = qword_1ED84F038;
    v17 = MEMORY[0x1EEE9AC00](v15);
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v17);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_1B1E07944(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_1B1F1A760();
    v20 = sub_1B1F1A4E0();
    v21 = sub_1B1F1AD10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73[0] = v23;
      *v22 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      v24 = sub_1B1F1B880();
      v26 = sub_1B1DF61DC(v24, v25, v73);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v20, v21, "Not loading %s for bundle identifier %s - cache already present", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v23, -1, -1);
      MEMORY[0x1B273F720](v22, -1, -1);
    }

    return (*(v72 + 8))(v14, v6);
  }

  else
  {
    v68 = v9;
    v70 = v6;
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v28 = qword_1ED84F038;
    v29 = MEMORY[0x1EEE9AC00](v15);
    v67 = "AppIntentsMetadata";
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v29);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_1B1E07944(v31);
    v69 = 0;
    os_unfair_lock_unlock(v28 + 4);

    sub_1B1F1A760();
    v32 = sub_1B1F1A4E0();
    v33 = sub_1B1F1AD30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      v36 = sub_1B1F1B880();
      v38 = sub_1B1DF61DC(v36, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = v71;
      *(v34 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v32, v33, "Loading %s for bundle identifier %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v35, -1, -1);
      MEMORY[0x1B273F720](v34, -1, -1);

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
    }

    else
    {

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
      v39 = v71;
    }

    v42 = v69;
    v43 = (*(*v3 + 232))(v39, a2);
    if (v42)
    {
      v44 = v42;
      v45 = qword_1ED84F038;
      v46 = MEMORY[0x1EEE9AC00](v43);
      *(&v67 - 2) = v67;
      MEMORY[0x1EEE9AC00](v46);
      *(&v67 - 2) = sub_1B1E07904;
      *(&v67 - 1) = v47;

      os_unfair_lock_lock(v45 + 4);
      v48 = v68;
      sub_1B1E07944(v49);
      os_unfair_lock_unlock(v45 + 4);

      v50 = v48;
      sub_1B1F1A760();
      v51 = v42;
      v52 = sub_1B1F1A4E0();
      v53 = sub_1B1F1AD10();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69 = v40;
        v56 = v55;
        v57 = swift_slowAlloc();
        v73[0] = v57;
        *v54 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        v58 = sub_1B1F1B880();
        v60 = sub_1B1DF61DC(v58, v59, v73);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B1DF61DC(v71, a2, v73);
        *(v54 + 22) = 2112;
        v61 = v44;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v62;
        *v56 = v62;
        _os_log_impl(&dword_1B1DE3000, v52, v53, "Failed to load %s for %s from metadata provider due to: %@", v54, 0x20u);
        sub_1B1E08DD4(v56);
        MEMORY[0x1B273F720](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v57, -1, -1);
        MEMORY[0x1B273F720](v54, -1, -1);

        return (v69)(v50, v70);
      }

      else
      {

        return (v40)(v50, v41);
      }
    }

    else
    {
      v63 = v43;
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
      v73[4] = sub_1B1DFA1D4(&qword_1EB783660, &qword_1EB7846D8, &unk_1B1F2CC00);
      v73[0] = v63;
      (*(*v3 + 256))(v73, v39, a2);
      __swift_destroy_boxed_opaque_existential_1(v73);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v64 = *(v3[4] + 16);
      sub_1B1E2AC50(v64, sub_1B1E2ACBC);
      v65 = v3[4];
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v39;
      *(v66 + 40) = a2;
      v3[4] = v65;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E24A8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1F1A500();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - v13;
  v15 = sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064);
  v71 = a1;
  if (v15)
  {
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v16 = qword_1ED84F038;
    v17 = MEMORY[0x1EEE9AC00](v15);
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v17);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v18;

    os_unfair_lock_lock(v16 + 4);
    sub_1B1E07944(v19);
    os_unfair_lock_unlock(v16 + 4);

    sub_1B1F1A760();
    v20 = sub_1B1F1A4E0();
    v21 = sub_1B1F1AD10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73[0] = v23;
      *v22 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      v24 = sub_1B1F1B880();
      v26 = sub_1B1DF61DC(v24, v25, v73);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v20, v21, "Not loading %s for bundle identifier %s - cache already present", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v23, -1, -1);
      MEMORY[0x1B273F720](v22, -1, -1);
    }

    return (*(v72 + 8))(v14, v6);
  }

  else
  {
    v68 = v9;
    v70 = v6;
    if (qword_1ED84F030 != -1)
    {
      v15 = swift_once();
    }

    v28 = qword_1ED84F038;
    v29 = MEMORY[0x1EEE9AC00](v15);
    v67 = "AppIntentsMetadata";
    *(&v67 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v29);
    *(&v67 - 2) = sub_1B1E07904;
    *(&v67 - 1) = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_1B1E07944(v31);
    v69 = 0;
    os_unfair_lock_unlock(v28 + 4);

    sub_1B1F1A760();
    v32 = sub_1B1F1A4E0();
    v33 = sub_1B1F1AD30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73[0] = v35;
      *v34 = 136315394;
      sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
      v36 = sub_1B1F1B880();
      v38 = sub_1B1DF61DC(v36, v37, v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = v71;
      *(v34 + 14) = sub_1B1DF61DC(v71, a2, v73);
      _os_log_impl(&dword_1B1DE3000, v32, v33, "Loading %s for bundle identifier %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v35, -1, -1);
      MEMORY[0x1B273F720](v34, -1, -1);

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
    }

    else
    {

      v40 = *(v72 + 8);
      v41 = v70;
      v40(v12, v70);
      v39 = v71;
    }

    v42 = v69;
    v43 = (*(*v3 + 232))(v39, a2);
    if (v42)
    {
      v44 = v42;
      v45 = qword_1ED84F038;
      v46 = MEMORY[0x1EEE9AC00](v43);
      *(&v67 - 2) = v67;
      MEMORY[0x1EEE9AC00](v46);
      *(&v67 - 2) = sub_1B1E07904;
      *(&v67 - 1) = v47;

      os_unfair_lock_lock(v45 + 4);
      v48 = v68;
      sub_1B1E07944(v49);
      os_unfair_lock_unlock(v45 + 4);

      v50 = v48;
      sub_1B1F1A760();
      v51 = v42;
      v52 = sub_1B1F1A4E0();
      v53 = sub_1B1F1AD10();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69 = v40;
        v56 = v55;
        v57 = swift_slowAlloc();
        v73[0] = v57;
        *v54 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
        v58 = sub_1B1F1B880();
        v60 = sub_1B1DF61DC(v58, v59, v73);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B1DF61DC(v71, a2, v73);
        *(v54 + 22) = 2112;
        v61 = v44;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 24) = v62;
        *v56 = v62;
        _os_log_impl(&dword_1B1DE3000, v52, v53, "Failed to load %s for %s from metadata provider due to: %@", v54, 0x20u);
        sub_1B1E08DD4(v56);
        MEMORY[0x1B273F720](v56, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v57, -1, -1);
        MEMORY[0x1B273F720](v54, -1, -1);

        return (v69)(v50, v70);
      }

      else
      {

        return (v40)(v50, v41);
      }
    }

    else
    {
      v63 = v43;
      v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784710, &qword_1B1F2CC50);
      v73[4] = sub_1B1DFA1D4(&unk_1EB783260, &qword_1EB784710, &qword_1B1F2CC50);
      v73[0] = v63;
      (*(*v3 + 256))(v73, v39, a2);
      __swift_destroy_boxed_opaque_existential_1(v73);
      swift_beginAccess();
      sub_1B1F1A760();
      sub_1B1E2AB94(sub_1B1E2ACBC);
      v64 = *(v3[4] + 16);
      sub_1B1E2AC50(v64, sub_1B1E2ACBC);
      v65 = v3[4];
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v39;
      *(v66 + 40) = a2;
      v3[4] = v65;
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B1E253E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
  v9 = sub_1B1F1AA00();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 40);
  sub_1B1E0DB7C(v9, a2, a3);
  *(v3 + 40) = v14;
  swift_endAccess();
  swift_beginAccess();
  sub_1B1F1A760();
  sub_1B1E2AB94(sub_1B1E2ACBC);
  v10 = *(*(v3 + 24) + 16);
  sub_1B1E2AC50(v10, sub_1B1E2ACBC);
  v11 = *(v3 + 24);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 16 * v10;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v3 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_1B1E255AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_1B1F1A760();
  v9 = sub_1B1F1AA00();
  v16 = a3;
  v17 = v9;
  v15 = a2;
  swift_beginAccess();
  sub_1B1F1A9F0();
  sub_1B1F1A7C0();
  sub_1B1F1A7E0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B1F1A760();
  sub_1B1E2AB94(sub_1B1E2ACBC);
  v10 = *(*(v3 + 24) + 16);
  sub_1B1E2AC50(v10, sub_1B1E2ACBC);
  v11 = *(v3 + 24);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 16 * v10;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v3 + 24) = v11;
  return swift_endAccess();
}

void *sub_1B1E25794(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1B1E2B424(*(a1 + 16), 0);
  v4 = sub_1B1E2CB1C(&v6, v3 + 4, v2, a1);
  sub_1B1E2CC74(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B1E25824()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v21[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v21[-2] = sub_1B1E07904;
  v21[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1E07944(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v15 = sub_1B1F1B880();
    v17 = sub_1B1DF61DC(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging metadata cache for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B273F720](v14, -1, -1);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v1 + 32) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784770, &qword_1B1F2CC90);
  v19 = sub_1B1F1A730();
  swift_beginAccess();
  *(v1 + 40) = v19;
}

uint64_t sub_1B1E25B54()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v21[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v21[-2] = sub_1B1DE7A98;
  v21[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1DE7A64(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v15 = sub_1B1F1B880();
    v17 = sub_1B1DF61DC(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging metadata cache for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B273F720](v14, -1, -1);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v1 + 32) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
  v19 = sub_1B1F1A730();
  swift_beginAccess();
  *(v1 + 40) = v19;
}

uint64_t sub_1B1E25E84()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v21[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v21[-2] = sub_1B1E07904;
  v21[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1E07944(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v15 = sub_1B1F1B880();
    v17 = sub_1B1DF61DC(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging metadata cache for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B273F720](v14, -1, -1);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v1 + 32) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784750, &qword_1B1F2CC78);
  v19 = sub_1B1F1A730();
  swift_beginAccess();
  *(v1 + 40) = v19;
}

uint64_t sub_1B1E261B4()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v21[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v21[-2] = sub_1B1E07904;
  v21[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1E07944(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB783628, 0x1E69AC838);
    v15 = sub_1B1F1B880();
    v17 = sub_1B1DF61DC(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging metadata cache for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B273F720](v14, -1, -1);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v1 + 32) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784738, &qword_1B1F2CC68);
  v19 = sub_1B1F1A730();
  swift_beginAccess();
  *(v1 + 40) = v19;
}

uint64_t sub_1B1E264E4()
{
  v1 = v0;
  v2 = sub_1B1F1A500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1ED84F038;
  v8 = MEMORY[0x1EEE9AC00](v4);
  v21[-2] = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v8);
  v21[-2] = sub_1B1E07904;
  v21[-1] = v9;

  os_unfair_lock_lock(v7 + 4);
  sub_1B1E07944(v10);
  os_unfair_lock_unlock(v7 + 4);

  v11 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
    v15 = sub_1B1F1B880();
    v17 = sub_1B1DF61DC(v15, v16, v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B1DE3000, v11, v12, "Purging metadata cache for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B273F720](v14, -1, -1);
    MEMORY[0x1B273F720](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = 0;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v1 + 32) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784710, &qword_1B1F2CC50);
  v19 = sub_1B1F1A730();
  swift_beginAccess();
  *(v1 + 40) = v19;
}

uint64_t sub_1B1E26814()
{

  return v0;
}

uint64_t sub_1B1E26844()
{
  v0 = sub_1B1E26814();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1E26874(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B1E253E8(a1, a2, a3);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1B1F1A950();
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v15, AssociatedTypeWitness);
    sub_1B1F1AEC0();
    v10 = v14;
    if (!v14)
    {
      break;
    }

    v13 = v14;
    (*(*v3 + 360))(&v13, a2, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1B1E26A3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 288);
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - v9;
  v11 = sub_1B1F1AEB0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v22 = a2;
  sub_1B1E255AC(a1, a2, a3);
  v14 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v14);
  (*(v16 + 16))(&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_1B1F1A950();
  v17 = (v21 + 32);
  for (i = (v21 + 8); ; (*i)(v10, v8))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v23, AssociatedTypeWitness);
    sub_1B1F1AEC0();
    if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
    {
      break;
    }

    (*v17)(v10, v13, v8);
    (*(*v4 + 360))(v10, v22, a3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1B1E26D38(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1B1F1A730();
  swift_beginAccess();
  *(v3 + 48) = v6;
}

uint64_t sub_1B1E26DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t (*a6)(void *), uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t))
{
  v13 = sub_1B1DEB798(a3, a4, a5, a6);
  if (v13)
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_3(v13);
  v14 = *(v8 + 48);
  sub_1B1F1A760();
  v15 = a7(a3, a4, v14);

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_19_1();
    v17 = a8(v16);

    if (v17)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B1E26E94(uint64_t (*a1)(void))
{
  if ((*(v1 + 16) & 1) == 0)
  {
    a1 = a1();
  }

  OUTLINED_FUNCTION_15_3(a1);
  return sub_1B1F1A760();
}

void *sub_1B1E26ECC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1B1DEB798(a1, a2, sub_1B1E2D064, sub_1B1E2D064))
  {
    sub_1B1E237D4(a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

void *sub_1B1E26FB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1B1DEB798(a1, a2, sub_1B1DEBA30, sub_1B1E2D064))
  {
    sub_1B1E24130(a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

uint64_t sub_1B1E2709C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 identifier];
  v23 = sub_1B1F1A890();
  v10 = v9;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  v12 = sub_1B1DEBED8(a2, a3);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784708, &unk_1B1F2CC40);
  if (sub_1B1F1B0C0())
  {
    v16 = sub_1B1DEBED8(a2, a3);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v4 + 48) = v11;
  if ((v15 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v18 = sub_1B1F1A730();
    sub_1B1E2B6B4(v14, a2, a3, v18, v11);
    sub_1B1F1A760();
  }

  v19 = *(v11 + 56);
  v20 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v19 + 8 * v14);
  sub_1B1E0DB2C(v20, v23, v10, isUniquelyReferenced_nonNull_native);
  *(v19 + 8 * v14) = v24;

  return swift_endAccess();
}

uint64_t sub_1B1E27280(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = LNQueryMetadata.uniqueIdentifier.getter();
  v8 = v7;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  v9 = sub_1B1DEBED8(a2, a3);
  if (__OFADD__(*(v21 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  if (sub_1B1F1B0C0())
  {
    v13 = sub_1B1DEBED8(a2, a3);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v3 + 48) = v21;
  if ((v12 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v15 = sub_1B1F1A730();
    sub_1B1E2B6B4(v11, a2, a3, v15, v21);
    sub_1B1F1A760();
  }

  v16 = *(v21 + 56);
  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v16 + 8 * v11);
  sub_1B1E0DB54(v17, v20, v8, isUniquelyReferenced_nonNull_native);
  *(v16 + 8 * v11) = v22;

  return swift_endAccess();
}

uint64_t sub_1B1E2744C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 identifier];
  v23 = sub_1B1F1A890();
  v10 = v9;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  v12 = sub_1B1DEBED8(a2, a3);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784758, &qword_1B1F2CC80);
  if (sub_1B1F1B0C0())
  {
    v16 = sub_1B1DEBED8(a2, a3);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v4 + 48) = v11;
  if ((v15 & 1) == 0)
  {
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v18 = sub_1B1F1A730();
    sub_1B1E2B6B4(v14, a2, a3, v18, v11);
    sub_1B1F1A760();
  }

  v19 = *(v11 + 56);
  v20 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v19 + 8 * v14);
  sub_1B1E0DC70(v20, v23, v10, isUniquelyReferenced_nonNull_native);
  *(v19 + 8 * v14) = v24;

  return swift_endAccess();
}

uint64_t sub_1B1E27630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(*v4 + 288);
  v10 = sub_1B1F1AEB0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = *(v8 + 296);
  *(v13 + 24) = v14;
  v15 = (*(v14 + 8))(v9, v14);
  v17 = v16;
  (*(*(v9 - 8) + 16))(v12, a1, v9);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);
  v32 = v15;
  v33 = v17;
  swift_beginAccess();
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v14;
  v18[4] = sub_1B1E2CC7C;
  v18[5] = v13;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = v4[6];
  v28 = a3;
  v29 = v19;
  v4[6] = 0x8000000000000000;
  v27 = a2;
  sub_1B1DEBED8(a2, a3);
  if (__OFADD__(*(v19 + 16), (v20 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v21 = v20;
  v26[1] = v12;
  sub_1B1F1A7C0();
  sub_1B1F1B0F0();
  v22 = sub_1B1F1B0C0();
  v23 = v29;
  if (v22)
  {
    sub_1B1DEBED8(v27, v28);
    if ((v21 & 1) != (v24 & 1))
    {
      goto LABEL_8;
    }
  }

  v4[6] = v23;
  if ((v21 & 1) == 0)
  {
    v31 = (v18[4])();
    v29 = v27;
    v30 = v28;
    sub_1B1F1A760();
    sub_1B1F1B0E0();
  }

  sub_1B1F1A7E0();
  swift_endAccess();
}

uint64_t sub_1B1E27928(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_1B1F1A9D0();

  return sub_1B1F1A730();
}

uint64_t sub_1B1E2799C()
{
  v0 = sub_1B1E26814();

  return v0;
}

void *sub_1B1E279CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_1B1E26DC4(a3, a4, a1, a2, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC) & 1) == 0)
  {
    sub_1B1E27C64(a3, a4, a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

void *sub_1B1E27AF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_1B1E26DC4(a3, a4, a1, a2, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC) & 1) == 0)
  {
    sub_1B1E287FC(a3, a4, a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 48);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

void sub_1B1E27C64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v103 = a4;
  v10 = sub_1B1F1A500();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v94 - v20;
  v101 = a1;
  v102 = a3;
  v22 = sub_1B1E26DC4(a1, a2, a3, a4, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC);
  if ((v22 & 1) == 0)
  {
    v100 = v11;
    v95 = v16;
    if (qword_1ED84F030 != -1)
    {
      v22 = swift_once();
    }

    v36 = qword_1ED84F038;
    v37 = MEMORY[0x1EEE9AC00](v22);
    v96 = "AppIntentsMetadata";
    *(&v94 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v37);
    *(&v94 - 2) = sub_1B1E07904;
    *(&v94 - 1) = v38;

    os_unfair_lock_lock(v36 + 4);
    sub_1B1E07944(v39);
    v97 = 0;
    os_unfair_lock_unlock(v36 + 4);

    sub_1B1F1A760();
    v40 = v103;
    sub_1B1F1A760();
    v41 = sub_1B1F1A4E0();
    v42 = sub_1B1F1AD30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99 = v10;
      v45 = v44;
      v104[0] = v44;
      *v43 = 136315650;
      sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
      v46 = sub_1B1F1B880();
      v48 = sub_1B1DF61DC(v46, v47, v104);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = v101;
      *(v43 + 14) = sub_1B1DF61DC(v101, a2, v104);
      *(v43 + 22) = 2080;
      v50 = a2;
      v51 = v102;
      v40 = v103;
      *(v43 + 24) = sub_1B1DF61DC(v102, v103, v104);
      _os_log_impl(&dword_1B1DE3000, v41, v42, "Loading %s %s from %s", v43, 0x20u);
      swift_arrayDestroy();
      v52 = v45;
      v10 = v99;
      MEMORY[0x1B273F720](v52, -1, -1);
      v53 = v43;
      v54 = v51;
      a2 = v50;
      MEMORY[0x1B273F720](v53, -1, -1);

      v55 = *(v100 + 8);
      v55(v19, v10);
    }

    else
    {

      v55 = *(v100 + 8);
      v55(v19, v10);
      v49 = v101;
      v54 = v102;
    }

    v56 = v97;
    v57 = (*(*v5 + 384))(v104, v49, a2, v54, v40);
    v58 = v56;
    if (v56)
    {
      v97 = v55;
      v59 = qword_1ED84F038;
      v60 = MEMORY[0x1EEE9AC00](v57);
      *(&v94 - 2) = v96;
      MEMORY[0x1EEE9AC00](v60);
      *(&v94 - 2) = sub_1B1E07904;
      *(&v94 - 1) = v61;

      os_unfair_lock_lock(v59 + 4);
      v62 = v95;
      sub_1B1E07944(v63);
      os_unfair_lock_unlock(v59 + 4);
      v64 = v62;
      v65 = v103;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v66 = v56;
      v67 = sub_1B1F1A4E0();
      v68 = sub_1B1F1AD10();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v99 = v10;
        v71 = v70;
        v104[0] = v70;
        *v69 = 136315906;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v72 = sub_1B1F1B880();
        v74 = sub_1B1DF61DC(v72, v73, v104);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_1B1DF61DC(v101, a2, v104);
        *(v69 + 22) = 2080;
        *(v69 + 24) = sub_1B1DF61DC(v102, v65, v104);
        *(v69 + 32) = 2112;
        v75 = v58;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 34) = v76;
        v77 = v98;
        *v98 = v76;
        _os_log_impl(&dword_1B1DE3000, v67, v68, "Failed to load %s for %s in %s from metadata provider due to: %@", v69, 0x2Au);
        sub_1B1E08DD4(v77);
        MEMORY[0x1B273F720](v77, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v71, -1, -1);
        MEMORY[0x1B273F720](v69, -1, -1);

        v78 = v99;
        v79 = v64;
LABEL_22:
        v97(v79, v78);
        return;
      }

      v79 = v62;
    }

    else
    {
      v80 = v104[0];
      if (v104[0])
      {
        sub_1B1E2709C(v104[0], v54, v40);

        return;
      }

      v97 = v55;
      v81 = qword_1ED84F038;
      v82 = MEMORY[0x1EEE9AC00](v57);
      *(&v94 - 2) = v96;
      MEMORY[0x1EEE9AC00](v82);
      *(&v94 - 2) = sub_1B1E07904;
      *(&v94 - 1) = v83;

      os_unfair_lock_lock(v81 + 4);
      v84 = v98;
      sub_1B1E07944(v85);
      os_unfair_lock_unlock(v81 + 4);
      v86 = v103;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v87 = sub_1B1F1A4E0();
      v88 = sub_1B1F1AD10();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v104[0] = v90;
        *v89 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
        v91 = sub_1B1F1B880();
        v93 = sub_1B1DF61DC(v91, v92, v104);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_1B1DF61DC(v101, a2, v104);
        *(v89 + 22) = 2080;
        *(v89 + 24) = sub_1B1DF61DC(v102, v86, v104);
        _os_log_impl(&dword_1B1DE3000, v87, v88, "No %s found matching identifier %s from %s", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v90, -1, -1);
        MEMORY[0x1B273F720](v89, -1, -1);
      }

      v79 = v84;
    }

    v78 = v10;
    goto LABEL_22;
  }

  if (qword_1ED84F030 != -1)
  {
    v22 = swift_once();
  }

  v23 = qword_1ED84F038;
  v24 = MEMORY[0x1EEE9AC00](v22);
  *(&v94 - 2) = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v24);
  *(&v94 - 2) = sub_1B1E07904;
  *(&v94 - 1) = v25;

  os_unfair_lock_lock(v23 + 4);
  sub_1B1E07944(v26);
  os_unfair_lock_unlock(v23 + 4);

  sub_1B1F1A760();
  v27 = v103;
  sub_1B1F1A760();
  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD10();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v104[0] = v31;
    *v30 = 136315650;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v32 = sub_1B1F1B880();
    v34 = sub_1B1DF61DC(v32, v33, v104);
    v99 = v10;
    v35 = v34;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1B1DF61DC(v101, a2, v104);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_1B1DF61DC(v102, v27, v104);
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Not loading %s for identifier %s from %s - cache already present", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v31, -1, -1);
    MEMORY[0x1B273F720](v30, -1, -1);

    (*(v11 + 8))(v21, v99);
  }

  else
  {

    (*(v11 + 8))(v21, v10);
  }
}

void sub_1B1E287FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v103 = a4;
  v10 = sub_1B1F1A500();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v94 - v20;
  v101 = a1;
  v102 = a3;
  v22 = sub_1B1E26DC4(a1, a2, a3, a4, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC);
  if ((v22 & 1) == 0)
  {
    v100 = v11;
    v95 = v16;
    if (qword_1ED84F030 != -1)
    {
      v22 = swift_once();
    }

    v36 = qword_1ED84F038;
    v37 = MEMORY[0x1EEE9AC00](v22);
    v96 = "AppIntentsMetadata";
    *(&v94 - 2) = "AppIntentsMetadata";
    MEMORY[0x1EEE9AC00](v37);
    *(&v94 - 2) = sub_1B1E07904;
    *(&v94 - 1) = v38;

    os_unfair_lock_lock(v36 + 4);
    sub_1B1E07944(v39);
    v97 = 0;
    os_unfair_lock_unlock(v36 + 4);

    sub_1B1F1A760();
    v40 = v103;
    sub_1B1F1A760();
    v41 = sub_1B1F1A4E0();
    v42 = sub_1B1F1AD30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99 = v10;
      v45 = v44;
      v104[0] = v44;
      *v43 = 136315650;
      sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
      v46 = sub_1B1F1B880();
      v48 = sub_1B1DF61DC(v46, v47, v104);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = v101;
      *(v43 + 14) = sub_1B1DF61DC(v101, a2, v104);
      *(v43 + 22) = 2080;
      v50 = a2;
      v51 = v102;
      v40 = v103;
      *(v43 + 24) = sub_1B1DF61DC(v102, v103, v104);
      _os_log_impl(&dword_1B1DE3000, v41, v42, "Loading %s %s from %s", v43, 0x20u);
      swift_arrayDestroy();
      v52 = v45;
      v10 = v99;
      MEMORY[0x1B273F720](v52, -1, -1);
      v53 = v43;
      v54 = v51;
      a2 = v50;
      MEMORY[0x1B273F720](v53, -1, -1);

      v55 = *(v100 + 8);
      v55(v19, v10);
    }

    else
    {

      v55 = *(v100 + 8);
      v55(v19, v10);
      v49 = v101;
      v54 = v102;
    }

    v56 = v97;
    v57 = (*(*v5 + 384))(v104, v49, a2, v54, v40);
    v58 = v56;
    if (v56)
    {
      v97 = v55;
      v59 = qword_1ED84F038;
      v60 = MEMORY[0x1EEE9AC00](v57);
      *(&v94 - 2) = v96;
      MEMORY[0x1EEE9AC00](v60);
      *(&v94 - 2) = sub_1B1E07904;
      *(&v94 - 1) = v61;

      os_unfair_lock_lock(v59 + 4);
      v62 = v95;
      sub_1B1E07944(v63);
      os_unfair_lock_unlock(v59 + 4);
      v64 = v62;
      v65 = v103;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v66 = v56;
      v67 = sub_1B1F1A4E0();
      v68 = sub_1B1F1AD10();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v99 = v10;
        v71 = v70;
        v104[0] = v70;
        *v69 = 136315906;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v72 = sub_1B1F1B880();
        v74 = sub_1B1DF61DC(v72, v73, v104);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_1B1DF61DC(v101, a2, v104);
        *(v69 + 22) = 2080;
        *(v69 + 24) = sub_1B1DF61DC(v102, v65, v104);
        *(v69 + 32) = 2112;
        v75 = v58;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 34) = v76;
        v77 = v98;
        *v98 = v76;
        _os_log_impl(&dword_1B1DE3000, v67, v68, "Failed to load %s for %s in %s from metadata provider due to: %@", v69, 0x2Au);
        sub_1B1E08DD4(v77);
        MEMORY[0x1B273F720](v77, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v71, -1, -1);
        MEMORY[0x1B273F720](v69, -1, -1);

        v78 = v99;
        v79 = v64;
LABEL_22:
        v97(v79, v78);
        return;
      }

      v79 = v62;
    }

    else
    {
      v80 = v104[0];
      if (v104[0])
      {
        sub_1B1E2744C(v104[0], v54, v40);

        return;
      }

      v97 = v55;
      v81 = qword_1ED84F038;
      v82 = MEMORY[0x1EEE9AC00](v57);
      *(&v94 - 2) = v96;
      MEMORY[0x1EEE9AC00](v82);
      *(&v94 - 2) = sub_1B1E07904;
      *(&v94 - 1) = v83;

      os_unfair_lock_lock(v81 + 4);
      v84 = v98;
      sub_1B1E07944(v85);
      os_unfair_lock_unlock(v81 + 4);
      v86 = v103;

      sub_1B1F1A760();
      sub_1B1F1A760();
      v87 = sub_1B1F1A4E0();
      v88 = sub_1B1F1AD10();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v104[0] = v90;
        *v89 = 136315650;
        sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
        v91 = sub_1B1F1B880();
        v93 = sub_1B1DF61DC(v91, v92, v104);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        *(v89 + 14) = sub_1B1DF61DC(v101, a2, v104);
        *(v89 + 22) = 2080;
        *(v89 + 24) = sub_1B1DF61DC(v102, v86, v104);
        _os_log_impl(&dword_1B1DE3000, v87, v88, "No %s found matching identifier %s from %s", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v90, -1, -1);
        MEMORY[0x1B273F720](v89, -1, -1);
      }

      v79 = v84;
    }

    v78 = v10;
    goto LABEL_22;
  }

  if (qword_1ED84F030 != -1)
  {
    v22 = swift_once();
  }

  v23 = qword_1ED84F038;
  v24 = MEMORY[0x1EEE9AC00](v22);
  *(&v94 - 2) = "AppIntentsMetadata";
  MEMORY[0x1EEE9AC00](v24);
  *(&v94 - 2) = sub_1B1E07904;
  *(&v94 - 1) = v25;

  os_unfair_lock_lock(v23 + 4);
  sub_1B1E07944(v26);
  os_unfair_lock_unlock(v23 + 4);

  sub_1B1F1A760();
  v27 = v103;
  sub_1B1F1A760();
  v28 = sub_1B1F1A4E0();
  v29 = sub_1B1F1AD10();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v104[0] = v31;
    *v30 = 136315650;
    sub_1B1DEA98C(0, &qword_1EB783610, 0x1E69AC7F8);
    v32 = sub_1B1F1B880();
    v34 = sub_1B1DF61DC(v32, v33, v104);
    v99 = v10;
    v35 = v34;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1B1DF61DC(v101, a2, v104);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_1B1DF61DC(v102, v27, v104);
    _os_log_impl(&dword_1B1DE3000, v28, v29, "Not loading %s for identifier %s from %s - cache already present", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v31, -1, -1);
    MEMORY[0x1B273F720](v30, -1, -1);

    (*(v11 + 8))(v21, v99);
  }

  else
  {

    (*(v11 + 8))(v21, v10);
  }
}

uint64_t sub_1B1E2945C@<X0>(uint64_t *a1@<X8>)
{
  sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
  result = sub_1B1F1A730();
  *a1 = result;
  return result;
}

id sub_1B1E294B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B1E296B0(a1, a2, a3, a4, &selRef_actionForBundleIdentifier_andActionIdentifier_error_);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void *sub_1B1E295B4(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = *(v5 + 56);
  v10 = sub_1B1F1A860();
  v16[0] = 0;
  v11 = [v9 *a3];

  v12 = v16[0];
  if (v11)
  {
    sub_1B1DEA98C(0, a4, a5);
    OUTLINED_FUNCTION_31_0();
    a5 = sub_1B1F1A9B0();
    v13 = v12;
  }

  else
  {
    v14 = v16[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return a5;
}

id sub_1B1E296B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(v5 + 56);
  v8 = sub_1B1F1A860();
  v9 = sub_1B1F1A860();
  v14[0] = 0;
  v10 = [v7 *a5];

  v11 = v14[0];
  if (!v10)
  {
    v12 = v11;
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v10;
}

uint64_t sub_1B1E297A0()
{
  v0 = sub_1B1E26814();

  return v0;
}

id sub_1B1E297D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_1B1E296B0(a1, a2, a3, a4, &selRef_entityForBundleIdentifier_withEntityIdentifier_error_);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_1B1E29870(SEL *a1, uint64_t *a2, uint64_t *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 56);
  v13[0] = 0;
  v7 = [v6 *a1];
  v8 = v13[0];
  if (v7)
  {
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v10 = sub_1B1F1A710();
    v11 = v8;
  }

  else
  {
    v10 = v13[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v10;
}

void *sub_1B1E299CC()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v30[0] = 0;
  v2 = [v1 queriesWithError_];
  v3 = v30[0];
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
    v5 = sub_1B1F1A710();
    v6 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E0, &qword_1B1F2CC18);
    v7 = sub_1B1F1B120();
    v3 = v7;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v5 + 64;
    v12 = v10 & *(v5 + 64);
    v13 = (v9 + 63) >> 6;
    v27 = v7 + 64;
    v28 = v5;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_6:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v11 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        while (2)
        {
          v17 = v14 | (v8 << 6);
          v18 = (*(v28 + 48) + 16 * v17);
          v19 = *v18;
          v20 = v18[1];
          v30[0] = *(*(v28 + 56) + 8 * v17);
          sub_1B1F1A760();
          sub_1B1E29C14(v30, &v29);
          *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          v21 = (v3[6] + 16 * v17);
          *v21 = v19;
          v21[1] = v20;
          *(v3[7] + 8 * v17) = v29;
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (!v23)
          {
            v3[2] = v24;
            if (!v12)
            {
              goto LABEL_6;
            }

LABEL_5:
            v14 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            continue;
          }

          break;
        }

LABEL_18:
        __break(1u);
      }
    }
  }

  else
  {
    v25 = v30[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1B1E29C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v2;
  sub_1B1F1A760();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v29 = v7;
  v30 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v11 = *(*(v31 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = LNQueryMetadata.uniqueIdentifier.getter();
      v14 = v13;
      v32 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1B1DEBED8(v12, v14);
      if (__OFADD__(v9[2], (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841B8, &qword_1B1F2B150);
      if (sub_1B1F1B0C0())
      {
        v19 = sub_1B1DEBED8(v12, v14);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      if (v18)
      {

        v21 = v9[7];
        v22 = *(v21 + 8 * v17);
        *(v21 + 8 * v17) = v32;
      }

      else
      {
        v9[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v9[6] + 16 * v17);
        *v23 = v12;
        v23[1] = v14;
        *(v9[7] + 8 * v17) = v32;

        v24 = v9[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v9[2] = v26;
      }

      v6 &= v6 - 1;
      v7 = v29;
      v3 = v30;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        *a2 = v9;
        return result;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t sub_1B1E29E48(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 56);
  v5 = sub_1B1F1A860();
  v11[0] = 0;
  v6 = [v4 queriesForBundleIdentifier:v5 ofType:0 error:v11];

  v7 = v11[0];
  if (v6)
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v3 = sub_1B1F1A9B0();
    v8 = v7;
  }

  else
  {
    v9 = v11[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1B1E29F44(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B1E26874(a1, a2, a3);
  swift_beginAccess();
  v6 = *(v3 + 64);
  sub_1B1F1A760();
  v21 = a3;
  v7 = sub_1B1E0E2B8(a2, a3, v6);

  if (v7)
  {
    v9 = 0;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 64);
    for (i = (v10 + 63) >> 6; v12; result = )
    {
      v14 = v9;
LABEL_10:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (*(v7 + 48) + 16 * (v15 | (v14 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1B1F1A760();
      v19 = sub_1B1F1A760();
      v20 = sub_1B1E25794(v19);
      sub_1B1E2A4E0(v20, v17, v18, a2, v21);
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= i)
      {
      }

      v12 = *(v7 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E2A0AC()
{
  sub_1B1E26D38(sub_1B1E25B54, &qword_1EB7846C0, &qword_1B1F2CBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
  v1 = sub_1B1F1A730();
  swift_beginAccess();
  *(v0 + 72) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D0, &qword_1B1F2CBF8);
  v2 = sub_1B1F1A730();
  swift_beginAccess();
  *(v0 + 64) = v2;
}

uint64_t sub_1B1E2A1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B1E27280(a1, a2, a3);
  v8 = [a1 entityType];
  v37 = sub_1B1F1A890();
  v10 = v9;

  v11 = [a1 identifier];
  v35 = sub_1B1F1A890();
  v36 = v12;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 64);
  *(v4 + 64) = 0x8000000000000000;
  v14 = sub_1B1DEBED8(a2, a3);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846B8, &qword_1B1F2CBE0);
  if (sub_1B1F1B0C0())
  {
    v18 = sub_1B1DEBED8(a2, a3);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_17;
    }

    v16 = v18;
  }

  *(v4 + 64) = v13;
  if ((v17 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
    v20 = sub_1B1F1A730();
    sub_1B1E2B6B4(v16, a2, a3, v20, v13);
    sub_1B1F1A760();
  }

  v21 = *(v13 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v21 + 8 * v16);
  *(v21 + 8 * v16) = 0x8000000000000000;
  v23 = sub_1B1DEBED8(v37, v10);
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v23;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  if (sub_1B1F1B0C0())
  {
    v27 = sub_1B1DEBED8(v37, v10);
    if ((v26 & 1) == (v28 & 1))
    {
      v25 = v27;
      goto LABEL_11;
    }

LABEL_17:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v21 + 8 * v16) = v22;

  v29 = *(v21 + 8 * v16);
  if (v26)
  {
  }

  else
  {
    sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
    v30 = sub_1B1F1A730();
    sub_1B1E2B6B4(v25, v37, v10, v30, v29);
  }

  v31 = *(v29 + 56);
  v32 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v31 + 8 * v25);
  sub_1B1E0DB54(v32, v35, v36, isUniquelyReferenced_nonNull_native);
  *(v31 + 8 * v25) = v38;

  return swift_endAccess();
}

void sub_1B1E2A4E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1;
  v10 = sub_1B1E2AC98(a1);
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
      v14 = sub_1B1F1A760();
      v38[0] = sub_1B1E2C8C8(v14);
      sub_1B1E2B83C(v38);
      v9 = v38[0];
      if (!sub_1B1E2AC98(v38[0]))
      {

        v16 = 0;
        goto LABEL_23;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        goto LABEL_37;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v9 + 32);
        goto LABEL_14;
      }

      __break(1u);

      __break(1u);
      goto LABEL_39;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B273D840](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v12 defaultQueryForEntity])
    {
      break;
    }
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v6 + 72);
  v9 = v37;
  *(v6 + 72) = 0x8000000000000000;
  v17 = sub_1B1DEBED8(a4, a5);
  if (__OFADD__(*(v9 + 16), (v18 & 1) == 0))
  {
    while (1)
    {
      __break(1u);
LABEL_37:
      v15 = MEMORY[0x1B273D840](0, v9);
LABEL_14:
      v16 = v15;

LABEL_23:
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v6 + 72);
      v9 = v37;
      *(v6 + 72) = 0x8000000000000000;
      v26 = sub_1B1DEBED8(a4, a5);
      if (!__OFADD__(*(v9 + 16), (v27 & 1) == 0))
      {
        break;
      }

LABEL_35:
      __break(1u);
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
    v30 = v37;
    if (sub_1B1F1B0C0())
    {
      v31 = sub_1B1DEBED8(a4, a5);
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_39;
      }

      v28 = v31;
    }

    *(v6 + 72) = v37;
    if ((v29 & 1) == 0)
    {
      sub_1B1DFD9C8(&v37);
      sub_1B1E2B6B4(v28, a4, a5, v37, v30);
      sub_1B1F1A760();
    }

    v33 = (*(v30 + 56) + 8 * v28);
    if (v16)
    {
      v16 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v33;
      sub_1B1E0DB54(v16, a2, a3, isUniquelyReferenced_nonNull_native);
      *v33 = v37;
    }

    else
    {
    }

    goto LABEL_32;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C8, &qword_1B1F2CBF0);
  v21 = v37;
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = sub_1B1DEBED8(a4, a5);
  if ((v20 & 1) == (v23 & 1))
  {
    v19 = v22;
LABEL_19:
    *(v6 + 72) = v37;
    if ((v20 & 1) == 0)
    {
      sub_1B1DFD9C8(&v37);
      sub_1B1E2B6B4(v19, a4, a5, v37, v21);
      sub_1B1F1A760();
    }

    v24 = *(v21 + 56);
    v16 = v13;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v24 + 8 * v19);
    sub_1B1E0DB54(v16, a2, a3, v25);
    *(v24 + 8 * v19) = v37;
LABEL_32:
    swift_endAccess();

    return;
  }

LABEL_39:
  sub_1B1F1B720();
  __break(1u);
}

uint64_t sub_1B1E2A8C8()
{
}

uint64_t sub_1B1E2A900()
{
  v0 = sub_1B1E26814();

  return v0;
}

uint64_t sub_1B1E2A948()
{
  v0 = sub_1B1E2A900();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B1E2A980(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 48);
  v5 = sub_1B1F1A860();
  v11[0] = 0;
  v6 = [v4 examplePhrasesForBundleIdentifier:v5 error:v11];

  v7 = v11[0];
  if (v6)
  {
    sub_1B1DEA98C(0, &qword_1EB7835D8, 0x1E69AC840);
    v3 = sub_1B1F1A9B0();
    v8 = v7;
  }

  else
  {
    v9 = v11[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1B1E2AA80()
{
  v0 = sub_1B1E26814();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B1E2AAC8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
      result = sub_1B1F1A9E0();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B1E2AB94(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B1E2AC50(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1B1E2AC98(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B1F1B110();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_1B1E2ACBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B1E2ADC4()
{
  OUTLINED_FUNCTION_30_0();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  OUTLINED_FUNCTION_17_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1B1E2AEB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847B8, &unk_1B1F2CCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B1E2AFB8()
{
  OUTLINED_FUNCTION_30_0();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  OUTLINED_FUNCTION_17_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_26_0(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[40 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_25_0();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784448, &qword_1B1F2BFE0);
    OUTLINED_FUNCTION_25_0();
    swift_arrayInitWithCopy();
  }
}

void *sub_1B1E2B0BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847C8, &qword_1B1F2CCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847D0, &unk_1B1F2CD00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B1E2B1EC()
{
  OUTLINED_FUNCTION_30_0();
  if (v3)
  {
    OUTLINED_FUNCTION_9_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E8, &qword_1B1F2CC20);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_27_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1B1E2B2C8()
{
  OUTLINED_FUNCTION_30_0();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_4();
    }
  }

  OUTLINED_FUNCTION_17_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7847C0, &qword_1B1F2CCF0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_26_0(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1B1E2B3B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_27_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1B1E2B424(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F10, &unk_1B1F2A660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *sub_1B1E2B4A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B4C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B4E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

char *sub_1B1E2B510(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_10(a3, result);
  }

  return result;
}

unint64_t sub_1B1E2B53C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E2B560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = v6;
  v12 = sub_1B1DEBED8(a1, a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1B1F1B0C0();

  v15 = *(*(v17 + 56) + 8 * v14);
  sub_1B1DEA98C(0, a5, a6);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B0D0();
  *v11 = v17;
  return v15;
}

_OWORD *sub_1B1E2B670(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  result = sub_1B1E077D8(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1B1E2B6B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_2(v6, v11);
  }
}

void sub_1B1E2B6E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_9(a1, a2, a3, a4, a5);
  *(v8 + v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_2(v6, v11);
  }
}

uint64_t sub_1B1E2B70C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_7_4(a1, a8 + 8 * (a1 >> 6));
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

uint64_t sub_1B1E2B75C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_7_4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void (*sub_1B1E2B7A8(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1B1E2B530(a3);
  sub_1B1E2B53C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B273D840](a2, a3);
  }

  *a1 = v7;
  return sub_1B1E2B834;
}

uint64_t sub_1B1E2B83C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B1E2CAF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B1E2B8B8(v6);
  return sub_1B1F1B030();
}

void sub_1B1E2B8B8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1B1F1B2F0();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1B1E2AAC8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1B1E2BB10(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1B1E2B998(0, v3, 1, a1);
  }
}

uint64_t sub_1B1E2B998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 identifier];
        v11 = sub_1B1F1A890();
        v13 = v12;

        v14 = [v9 identifier];
        v15 = sub_1B1F1A890();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_1B1F1B510();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1E2BB10(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v126 = v6;
      v106 = *(v6 + 2);
      v6 += 16;
      for (i = v106; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v107 = &v126[16 * i];
        v108 = *v107;
        v109 = &v6[16 * i];
        v110 = *(v109 + 1);
        sub_1B1E2C2DC((*a3 + 8 * *v107), (*a3 + 8 * *v109), (*a3 + 8 * v110), v7);
        if (v122)
        {
          break;
        }

        if (v110 < v108)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v107 = v108;
        *(v107 + 1) = v110;
        v111 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v122 = 0;
        i = *v6 - 1;
        memmove(v109, v109 + 16, 16 * v111);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1B1E2C634(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v117 = v4;
      v123 = v6;
      v9 = *a3;
      v114 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 identifier];
      v14 = sub_1B1F1A890();
      v16 = v15;

      v17 = [v12 identifier];
      v18 = sub_1B1F1A890();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_1B1F1B510();
      }

      v21 = (v9 + 8 * v114 + 16);
      v22 = 8 * v114 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v117)
        {
          break;
        }

        v127 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v130 = v25;
        v27 = [v25 identifier];
        v28 = sub_1B1F1A890();
        v30 = v29;

        v31 = [v26 identifier];
        v32 = sub_1B1F1A890();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : sub_1B1F1B510();

        ++v21;
        v22 = (v6 + 8);
        v8 = v127;
      }

      while (((v119 ^ v7) & 1) == 0);
      if (v119)
      {
        v36 = v114;
        if (v8 < v114)
        {
          goto LABEL_138;
        }

        if (v114 >= v8)
        {
          v6 = v123;
          v7 = v114;
          goto LABEL_29;
        }

        v37 = 8 * v114;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          v36 = (v36 + 1);
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v123;
      v7 = v114;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1E2B1EC();
      v6 = v103;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v125 = v62;
    v64 = v63 + 1;
    if (v63 >= *(v62 + 3) >> 1)
    {
      sub_1B1E2B1EC();
      v125 = v104;
    }

    *(v125 + 2) = v64;
    v65 = v125 + 32;
    v66 = &v125[16 * v63 + 32];
    *v66 = v7;
    v66[1] = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v129 = v8;
    if (v63)
    {
      v6 = v125;
      while (1)
      {
        v68 = v64 - 1;
        v69 = &v65[16 * v64 - 16];
        v70 = &v6[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v6 + 4);
          v72 = *(v6 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_72:
          if (v74)
          {
            goto LABEL_123;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_126;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_131;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_87:
        if (v89)
        {
          goto LABEL_128;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_130;
        }

        if (v96 < v88)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v68 - 1 >= v64)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v65[16 * v68 - 16];
        v7 = *v6;
        v100 = &v65[16 * v68];
        v101 = *(v100 + 1);
        sub_1B1E2C2DC((*a3 + 8 * *v6), (*a3 + 8 * *v100), (*a3 + 8 * v101), v67);
        if (v122)
        {
          goto LABEL_116;
        }

        if (v101 < v7)
        {
          goto LABEL_118;
        }

        v102 = *(v125 + 2);
        if (v68 > v102)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v101;
        if (v68 >= v102)
        {
          goto LABEL_120;
        }

        v122 = 0;
        v64 = v102 - 1;
        memmove(&v65[16 * v68], v100 + 16, 16 * (v102 - 1 - v68));
        v6 = v125;
        *(v125 + 2) = v102 - 1;
        if (v102 <= 2)
        {
          goto LABEL_103;
        }
      }

      v75 = &v65[16 * v64];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_121;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_122;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_124;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_127;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v125;
LABEL_103:
    v4 = a3[1];
    v5 = v129;
    if (v129 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v124 = v6;
  v131 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v115 = v7;
  v116 = v42;
  v44 = v7 - v8;
LABEL_38:
  v128 = v8;
  v45 = *(v131 + 8 * v8);
  v118 = v44;
  v120 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 identifier];
    v51 = sub_1B1F1A890();
    v53 = v52;

    v54 = [v49 identifier];
    v55 = sub_1B1F1A890();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v128 + 1;
      v43 = v120 + 8;
      v44 = v118 - 1;
      if (v128 + 1 == v116)
      {
        v8 = v116;
        v6 = v124;
        v7 = v115;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = sub_1B1F1B510();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v131)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1B1E2C2DC(void **__src, id *__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    v53 = v11;
    v55 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v57 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 identifier];
      v17 = sub_1B1F1A890();
      v19 = v18;

      v20 = [v15 identifier];
      v21 = sub_1B1F1A890();
      v23 = v22;

      if (v17 == v21 && v19 == v23)
      {

        v26 = v57;
      }

      else
      {
        v25 = sub_1B1F1B510();

        v26 = v57;
        if (v25)
        {
          v27 = v6;
          v28 = v57 == v6++;
          goto LABEL_20;
        }
      }

      v27 = v4;
      v28 = v26 == v4++;
LABEL_20:
      v11 = v53;
      v5 = v55;
      if (!v28)
      {
        *v26 = *v27;
      }

      v7 = v26 + 1;
    }
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
  v51 = v4;
  v58 = v7;
LABEL_29:
  v30 = v6 - 1;
  v31 = v5 - 1;
  for (i = v6; v11 > v4 && v6 > v7; v6 = i)
  {
    v54 = v11;
    v56 = v31;
    v33 = v11 - 1;
    v34 = v30;
    v35 = *v30;
    v36 = *(v11 - 1);
    v37 = v35;
    v38 = [v36 identifier];
    v39 = sub_1B1F1A890();
    v41 = v40;

    v42 = [v37 identifier];
    v43 = sub_1B1F1A890();
    v45 = v44;

    if (v39 == v43 && v41 == v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = sub_1B1F1B510();
    }

    v7 = v58;
    v11 = v54;
    v30 = v34;
    if (v47)
    {
      v5 = v56;
      v4 = v51;
      v6 = v30;
      if (v56 + 1 != i)
      {
        *v56 = *v30;
        v6 = v30;
      }

      goto LABEL_29;
    }

    v4 = v51;
    if (v54 != v56 + 1)
    {
      *v56 = *v33;
    }

    v31 = v56 - 1;
    v11 = v33;
  }

LABEL_48:
  v48 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v48])
  {
    memmove(v6, v4, 8 * v48);
  }

  return 1;
}

char *sub_1B1E2C648(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E8, &qword_1B1F2CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1B1E2C748(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1F1A890();

  return v3;
}

uint64_t sub_1B1E2C7B8(void *a1)
{
  v1 = [a1 fullyQualifiedIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1F1A890();

  return v3;
}

void *sub_1B1E2C8C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1B1F1B110();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1B1E2B424(v4, 0);
      sub_1B1E2C95C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1B1E2C95C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1F1B110();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1DEBAA4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1DFA1D4(&qword_1EB783660, &qword_1EB7846D8, &unk_1B1F2CC00);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
          v9 = sub_1B1E2B7A8(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B1E2CB1C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E2CC84()
{
  OUTLINED_FUNCTION_3_7();
  v2 = sub_1B1DECA18(v1, v0, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E24A8C, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v2);
}

uint64_t sub_1B1E2CD08()
{
  OUTLINED_FUNCTION_3_7();
  v2 = sub_1B1DECA18(v1, v0, sub_1B1DEBA30, sub_1B1E2D064, sub_1B1E24130, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v2);
}

uint64_t sub_1B1E2CE04()
{
  OUTLINED_FUNCTION_3_7();
  v2 = sub_1B1DECA18(v1, v0, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E2251C, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v2);
}

uint64_t sub_1B1E2CE90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_31_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B1E2CEE4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_1B1F1A760();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_1B1F1A760();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = v1;
  return result;
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1B1F1A8F0();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_1B1F1A8F0();
    }

LABEL_9:
    __break(1u);
    return sub_1B1F1A8F0();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1EB783B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7847D8;

  return v1;
}

id sub_1B1E2D288()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB7847D8 = result;
  return result;
}

uint64_t sub_1B1E2D314(unsigned __int8 a1)
{
  v3 = sub_1B1F1A1D0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_12_3();
  v7 = sub_1B1F1A370();
  v8 = OUTLINED_FUNCTION_8(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v9 = sub_1B1F1A850();
  v10 = OUTLINED_FUNCTION_8(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v11 = (v5 + 104);
  if (a1 > 1u)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1B1F1A840();
  sub_1B1F1A360();
  (*v11)(v1, *MEMORY[0x1E6968DF0], v3);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  return sub_1B1F1A1F0();
}

uint64_t sub_1B1E2D4E0(unsigned __int8 a1)
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](a1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E2D538()
{
  v1 = sub_1B1F1A1D0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v7 = v6 - v5;
  v8 = sub_1B1F1A370();
  v9 = OUTLINED_FUNCTION_8(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v10 = sub_1B1F1A850();
  v11 = OUTLINED_FUNCTION_8(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v3 + 104))(v7, *MEMORY[0x1E6968DF0], v1);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  return OUTLINED_FUNCTION_5_7(v12, v13, v14, v0, v7);
}

void sub_1B1E2D6A8()
{
  OUTLINED_FUNCTION_17_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v4);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_3();
  v6 = sub_1B1F1A1D0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v10 = sub_1B1F1A370();
  v11 = OUTLINED_FUNCTION_8(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v12 = sub_1B1F1A850();
  v13 = OUTLINED_FUNCTION_8(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v14 = sub_1B1F1A1E0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v8 + 104))(v0, *MEMORY[0x1E6968DF0], v6);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7(v16, v17, v18, v1, v0);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  sub_1B1F19EA0();
  v22 = sub_1B1F19E90();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v22);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2D8C0()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784848, &qword_1B1F2D180);
  v2 = sub_1B1E2FBF4();
  v3 = sub_1B1E2FC9C(&qword_1EB784850, &qword_1EB784848, &qword_1B1F2D180, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1B1E2D9DC, 0, v1, v2, v3);
}

uint64_t sub_1B1E2D9B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E2D98C();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E2D9DC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784858, &qword_1B1F2D188);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784860, &qword_1B1F2D190);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v19 - v10;
  v30 = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v21 = sub_1B1E2FBF4();
  sub_1B1E2EDA4();
  sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198, MEMORY[0x1E695A498]);
  v22 = v11;
  sub_1B1F19FB0();
  sub_1B1E2FC9C(&qword_1EB784878, &qword_1EB784860, &qword_1B1F2D190, MEMORY[0x1E695A670]);
  v12 = v6;
  sub_1B1F19FA0();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  sub_1B1F19FD0();
  sub_1B1E2FC9C(&qword_1EB784880, &qword_1EB784858, &qword_1B1F2D188, MEMORY[0x1E695A710]);
  v14 = v25;
  v15 = v26;
  sub_1B1F19FA0();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1B1F19F90();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1B1E2DDC0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784888, &qword_1B1F2D1A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784890, &qword_1B1F2D1A8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  sub_1B1E2FBF4();
  sub_1B1F19F10();
  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784898, &qword_1B1F2D1B0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  sub_1B1F19F20();
  sub_1B1F19EE0();
  v10 = sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198, MEMORY[0x1E695A498]);
  MEMORY[0x1B273C7E0](v7, &unk_1F28F5670, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x1B273C7D0](v9, &unk_1F28F5670, v3, v10);
  return (v11)(v9, v3);
}