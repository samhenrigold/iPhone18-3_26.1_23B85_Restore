void sub_1BC7BBE44(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BC7FAADC(v4 + v3, 1, sub_1BC7BBF2C);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_4();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1BC7BBF2C()
{
  OUTLINED_FUNCTION_42_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_2();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F20, &unk_1BC900AF0);
      v8 = OUTLINED_FUNCTION_67(v7);
      _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_58_0();
      v8[2] = v2;
      v8[3] = 2 * v9;
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD644(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v8 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1BC7BC004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_20_17(a1, a2, a3, a4, a5, a6, a7, a8, v9, v11, v13, v15, v17, v19, v21, v22, v23, v24, v25, v26);
  if (!v8)
  {

    OUTLINED_FUNCTION_14_19();
  }
}

int *sub_1BC7BC08C(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC8FEAA0;
  *(v7 + 32) = v5;
  OUTLINED_FUNCTION_21_4();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v8 + 16) = v9 | 0x4000000000000000;
  *(v7 + 40) = v8 | 0xB000000000000000;
  *(v6 + 16) = v7;

  v10 = sub_1BC7A5AB4(v5);
  v11 = sub_1BC7BC4A4(v10);

  result = type metadata accessor for MessageStoreFetchRequest(0);
  v13 = *(v3 + result[9]);
  v14 = *(v3 + result[10]);
  if ((v13 * v14) >> 64 == (v13 * v14) >> 63)
  {
    v15 = result;
    [v11 setFetchOffset_];
    [v11 setFetchLimit_];
    v16 = *(v3 + *(v15 + 24));
    if ((v16 & 0xFF00) != 0x200)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC904010;
      v18 = MessageKey.rawValue.getter();
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      *(v17 + 32) = sub_1BC7C03E8(v18, v20, (v16 & 0x100) == 0);
      sub_1BC886798();
      v22 = sub_1BC8F7E34();

      [v11 setSortDescriptors_];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC7BC294()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7BC2C8()
{
  sub_1BC7B0EFC(*(v0 + 16));
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1BC7BC300()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_41_2(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30_2(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5110, &qword_1BC8FD3A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_24_2();
  Messages = type metadata accessor for GetMessages(v6);
  MEMORY[0x1EEE9AC00](Messages - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_25_2(v0, v0[3]);
  sub_1BC7ADF20();
  OUTLINED_FUNCTION_23_0();
  sub_1BC8F8C84();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_7();
    v10 = sub_1BC7E2760(v8, v9, &protocol conformance descriptor for MessageStoreFetchRequest);
    OUTLINED_FUNCTION_28_0(v10, v11);
    v12 = OUTLINED_FUNCTION_29_1();
    v13(v12);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_32_1();
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_23();
}

id static FTStoredMessage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1BC8F7BE4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1BC830350(v0, type metadata accessor for FaceTimeMessageStore_Transcript);
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return sub_1BC7C4DAC(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BC8F8754();
}

uint64_t OUTLINED_FUNCTION_59_8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *(v3 - 152) = v1;
  *(v3 - 176) = v4;
  *(v3 - 168) = v2;
  sub_1BC7F0E58((v3 - 176), (v3 - 208));
}

unint64_t sub_1BC7BC8BC()
{
  result = qword_1EDC1DF38;
  if (!qword_1EDC1DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_1BC8F88B4();
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1)
{

  return sub_1BC8F7FD4();
}

id sub_1BC7BCA70(uint64_t a1, SEL *a2)
{
  sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
  v3 = sub_1BC8F7E34();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

void sub_1BC7BCAF4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  if (*(v3 + 48))
  {
    swift_willThrow();

    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_40_4();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X2, X16 }
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_1BC8F83D4();
}

uint64_t sub_1BC7BCCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MessageStoreProvider.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MessageStoreProvider.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BC7BCD24()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_96();

    return v12(v3);
  }
}

void OUTLINED_FUNCTION_10_5()
{

  JUMPOUT(0x1BFB2A020);
}

id OUTLINED_FUNCTION_10_12(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1)
{

  return sub_1BC8F8734();
}

uint64_t OUTLINED_FUNCTION_10_25(uint64_t a1)
{

  return sub_1BC8F84C4();
}

uint64_t OUTLINED_FUNCTION_10_29()
{
  v3 = *(*(v1 - 208) + 48) + 40 * v0;

  return sub_1BC8037DC(v3);
}

uint64_t sub_1BC7BD09C()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_52_3();
  sub_1BC8302F8();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_91_0(v2);
  OUTLINED_FUNCTION_107();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1BC7C045C;

  return v5(&unk_1BC902AD8, v1);
}

uint64_t sub_1BC7BD1A8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E30, &qword_1BC8FC378);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t objectdestroy_119Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
}

uint64_t sub_1BC7BD2FC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1BC7BD3E8()
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
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_38_4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC7BD4F4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = MailboxType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MailboxType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

uint64_t sub_1BC7BD568()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1BC7BD5CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7BD624()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1BC7BD714()
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

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1BC7BD810()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_96();

  return v5(v2);
}

unint64_t sub_1BC7BD914()
{
  result = qword_1EDC1F9D8;
  if (!qword_1EDC1F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9D8);
  }

  return result;
}

uint64_t sub_1BC7BD968()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_27_4();
  sub_1BC7BD5CC(v5, v9);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC7BDA80()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

_BYTE *storeEnumTagSinglePayload for MessageKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
        JUMPOUT(0x1BC7BDC44);
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC7BDC6C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t getEnumTagSinglePayload for MessageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7BDD5C()
{
  OUTLINED_FUNCTION_5();
  **(*(*(v0 + 24) + 64) + 40) = *(v0 + 16);
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC7BDDD0()
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

FaceTimeMessageStore::MessageKey_optional __swiftcall MessageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8AE4();

  v5 = 0;
  v6 = 11;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
LABEL_24:
      v6 = v5;
      break;
    case 11:
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    default:
      v6 = 29;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BC7BE108(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BC7BE118()
{
  result = qword_1EDC1F8F0[0];
  if (!qword_1EDC1F8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC1F8F0);
  }

  return result;
}

uint64_t sub_1BC7BE16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v12[2] = v14;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v15);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC902AF0;
  *(v16 + 24) = v13;
  v12[10] = &unk_1BC902AF8;
  v12[11] = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0(v17);
  v18 = OUTLINED_FUNCTION_28_5();
  v19(v18);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1BC7BE27C()
{

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7BE2B0()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void MessageSortOrder.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60D0, &qword_1BC905398);
  OUTLINED_FUNCTION_0();
  v41 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60D8, &qword_1BC9053A0);
  OUTLINED_FUNCTION_0();
  v40 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60E0, &unk_1BC9053A8);
  OUTLINED_FUNCTION_0();
  v43 = v13;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7B9B24();
  v17 = v45;
  sub_1BC8F8C84();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_1BC8F8914();
  sub_1BC7B85D4(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_1BC8F8624();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v35 = &type metadata for MessageSortOrder;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_1BC7B85D0(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_1BC7B9B78();
      v30 = v6;
      OUTLINED_FUNCTION_2_21(&type metadata for MessageSortOrder.DescendingCodingKeys, &v48);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_1BC883BDC();
      v36 = v39;
      OUTLINED_FUNCTION_2_21(&type metadata for MessageSortOrder.AscendingCodingKeys, &v47);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

uint64_t sub_1BC7BE76C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC7BE794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC7BE794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646E65637361 && a2 == 0xE900000000000067;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646E6563736564 && a2 == 0xEA0000000000676ELL)
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

uint64_t sub_1BC7BE86C()
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

uint64_t sub_1BC7BE8FC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1BC7C0828;

  return v7(a2);
}

uint64_t sub_1BC7BE9F4()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);

  return sub_1BC7BEAEC();
}

uint64_t sub_1BC7BEA78()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  Messages = type metadata accessor for GetMessages(v2);
  OUTLINED_FUNCTION_25(Messages);
  *(v0 + 56) = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7BEAEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7BD710;

  return sub_1BC7BEA78();
}

uint64_t sub_1BC7BEB84()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming GetMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AD8, &qword_1BC9034A8);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10(v7 + 24);
  OUTLINED_FUNCTION_35_5();
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_28_6(v8);

  return sub_1BC7BED60();
}

unint64_t sub_1BC7BECB8()
{
  result = qword_1EDC204D8;
  if (!qword_1EDC204D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC204D8);
  }

  return result;
}

unint64_t sub_1BC7BED0C()
{
  result = qword_1EDC20560;
  if (!qword_1EDC20560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20560);
  }

  return result;
}

uint64_t sub_1BC7BED60()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  OUTLINED_FUNCTION_25(Request);
  v1[7] = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

unint64_t sub_1BC7BEE28()
{
  result = qword_1EDC20DD8;
  if (!qword_1EDC20DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DD8);
  }

  return result;
}

uint64_t sub_1BC7BEE7C()
{
  OUTLINED_FUNCTION_71();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3A8);
  v3 = OUTLINED_FUNCTION_29();
  sub_1BC7AB2C0(v3, v4);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    OUTLINED_FUNCTION_21_1();
    v22 = OUTLINED_FUNCTION_33();
    *v1 = 136446210;
    MessageStoreFetchRequest.description.getter();
    sub_1BC7ADC24(v8);
    v9 = OUTLINED_FUNCTION_45_2();
    v12 = sub_1BC7A9A4C(v9, v10, v11);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v18);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v19);
  }

  else
  {

    sub_1BC7ADC24(v8);
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_10();
  v20 = swift_task_alloc();
  *(v0 + 64) = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_8_4(v20);

  return sub_1BC7BF034();
}

uint64_t sub_1BC7BF034()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  OUTLINED_FUNCTION_26(Request);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC7BF0E0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7BE16C, 0, 0);
}

uint64_t sub_1BC7BF210@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = MessageType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MessageType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

uint64_t sub_1BC7BF284()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC7BA51C(v3, v4);
}

uint64_t sub_1BC7BF310()
{
  OUTLINED_FUNCTION_32();
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  OUTLINED_FUNCTION_25(Request);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_104(v2);

  return sub_1BC7BF3D4(v4, v5, v6);
}

uint64_t sub_1BC7BF3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC7BF4C8, 0, 0);
}

uint64_t sub_1BC7BF3F8(uint64_t a1)
{
  v8[2] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v3);
  v5 = *(v4 + 128);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  v5(&v9, sub_1BC7C0208, v8, v6, v3, v4);
  result = swift_endAccess();
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1BC7BF4C8()
{
  OUTLINED_FUNCTION_32();
  **(v0 + 16) = sub_1BC7BF3F8(*(v0 + 32));
  OUTLINED_FUNCTION_11();

  return v1();
}

void sub_1BC7BF544(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v102 = a3;
  v98 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v91 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v91 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v91 - v18;
  v105 = sub_1BC8F7264();
  v97 = *(v105 - 8);
  v20 = MEMORY[0x1EEE9AC00](v105);
  v95 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v91 - v22;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1D0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v25 = sub_1BC8F7734();
    __swift_project_value_buffer(v25, qword_1EDC2B268);
    sub_1BC8302F8();
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F8204();
    v28 = os_log_type_enabled(v26, v27);
    v94 = a4;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v99 = a2;
      v93 = v5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v107 = v31;
      *v30 = 136446210;
      v32 = MessageStoreFetchRequest.description.getter();
      v34 = v33;
      sub_1BC830350(v24, type metadata accessor for MessageStoreFetchRequest);
      v35 = sub_1BC7A9A4C(v32, v34, &v107);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1BC7A3000, v26, v27, "Get messages with request: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFB2AA50](v31, -1, -1);
      v36 = v30;
      v5 = v93;
      a2 = v99;
      MEMORY[0x1BFB2AA50](v36, -1, -1);
    }

    else
    {

      sub_1BC830350(v24, type metadata accessor for MessageStoreFetchRequest);
    }

    __swift_project_boxed_opaque_existential_1((v102 + 16), *(v102 + 40));
    v37 = sub_1BC7BAABC(a2);
    v38 = *(a2 + *(Request + 20));
    a4 = v98;
    if (v38 >> 60 == 10)
    {
      v101 = v37;
      type metadata accessor for FTLocalMessageProperties();
      v39 = static FTLocalMessageProperties.fetchRequest()();
      v40 = [v39 setFetchBatchSize_];
      v107 = v38;
      v41 = sub_1BC7E61F8(v40);
      [v39 setPredicate_];

      v42 = sub_1BC8F8314();
      v24 = v5;
      if (v5)
      {

        return;
      }

      a4 = v42;
      v92 = v39;
      v93 = 0;
      v99 = a2;
      v5 = sub_1BC7C0454(v42);
      v45 = 0;
      v103 = (a4 & 0xFFFFFFFFFFFFFF8);
      v104 = (a4 & 0xC000000000000001);
      Request = MEMORY[0x1E69E7CC0];
      v95 = (v97 + 32);
      while (v5 != v45)
      {
        if (v104)
        {
          v46 = MEMORY[0x1BFB29A00](v45, a4);
        }

        else
        {
          if (v45 >= *(v103 + 2))
          {
            goto LABEL_65;
          }

          v46 = *(a4 + 8 * v45 + 32);
        }

        v24 = v46;
        a2 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v47 = a4;
        v48 = [v46 recordUUID];
        if (v48)
        {
          v49 = v48;
          sub_1BC8F7244();

          v50 = 0;
        }

        else
        {
          v50 = 1;
        }

        v24 = v105;
        __swift_storeEnumTagSinglePayload(v17, v50, 1, v105);
        sub_1BC830458();
        if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
        {
          sub_1BC7C1744(v19, &unk_1EBCF5D70, &qword_1BC8FC740);
          ++v45;
          a4 = v47;
        }

        else
        {
          v24 = *v95;
          (*v95)(v96, v19, v105);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F7144();
            Request = v53;
          }

          v51 = *(Request + 16);
          if (v51 >= *(Request + 24) >> 1)
          {
            sub_1BC7F7144();
            Request = v54;
          }

          v52 = Request;
          *(Request + 16) = v51 + 1;
          (v24)(v52 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v51, v96, v105);
          ++v45;
          a4 = v47;
        }
      }

      v64 = swift_allocObject();
      v65 = v101;
      *(v64 + 16) = Request;
      v107 = v64 | 0x1000000000000000;
      v66 = sub_1BC7BC08C(&v107, v65);

      type metadata accessor for FTStoredMessage();
      v67 = v98;
      v68 = v93;
      v69 = sub_1BC8F8314();
      if (v68)
      {

        return;
      }

      v82 = sub_1BC812E14(v69, v67, a4);

      goto LABEL_63;
    }

    v107 = *(a2 + *(Request + 20));
    v43 = sub_1BC7BC08C(&v107, v37);

    type metadata accessor for FTStoredMessage();
    v44 = sub_1BC8F8314();
    v24 = v5;
    if (v5)
    {
      goto LABEL_9;
    }

    v17 = v44;
    v93 = 0;

    if (*(a2 + *(Request + 28)))
    {
      break;
    }

    v105 = MEMORY[0x1E69E7CC0];
    v107 = MEMORY[0x1E69E7CC0];
    v55 = sub_1BC7C0454(v17);
    a4 = 0;
    a2 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v5 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v55 == a4)
      {

        v82 = v105;
        goto LABEL_63;
      }

      if (v5)
      {
        v56 = MEMORY[0x1BFB29A00](a4, v17);
      }

      else
      {
        if (a4 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v56 = *(v17 + 8 * a4 + 32);
      }

      v57 = v56;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v19 = *(v102 + a2);
      objc_allocWithZone(type metadata accessor for Message(0));

      v106 = 1;
      sub_1BC86A9C0(v57, 0x100000000, v19, v58, v59, v60, v61, v62, v91, v92, v93, v94, v95, v96, v97, v98, v99, Request, v101, v102);
      ++a4;
      if (v63)
      {
        v19 = v63;
        MEMORY[0x1BFB29230]();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v105 = v107;
        a4 = v24;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v70 = sub_1BC7C0454(v17);
  v24 = 0;
  v99 = v17 & 0xFFFFFFFFFFFFFF8;
  Request = v17 & 0xC000000000000001;
  v96 = MEMORY[0x1E69E7CC0];
  v92 = (v97 + 32);
  v19 = &unk_1EBCF5D70;
  while (v70 != v24)
  {
    if (Request)
    {
      v71 = MEMORY[0x1BFB29A00](v24, v17);
    }

    else
    {
      if (v24 >= *(v99 + 16))
      {
        goto LABEL_69;
      }

      v71 = *(v17 + 8 * v24 + 32);
    }

    a4 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_67;
    }

    v72 = v71;
    v73 = [v72 recordUUID];
    if (v73)
    {
      v74 = v73;
      v75 = v104;
      sub_1BC8F7244();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v104;
    }

    v5 = v105;
    __swift_storeEnumTagSinglePayload(v75, v76, 1, v105);
    sub_1BC830458();
    a2 = v101;
    sub_1BC830458();

    if (__swift_getEnumTagSinglePayload(a2, 1, v5) == 1)
    {
      sub_1BC7C1744(a2, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v24;
    }

    else
    {
      v77 = *v92;
      (*v92)(v95, a2, v105);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v96 = v80;
      }

      v5 = *(v96 + 16);
      if (v5 >= *(v96 + 24) >> 1)
      {
        sub_1BC7F7144();
        v96 = v81;
      }

      v79 = v96;
      v78 = v97;
      *(v96 + 16) = v5 + 1;
      v77((v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v5), v95, v105);
      v24 = a4;
    }
  }

  v83 = swift_allocObject();
  v84 = v96;
  *(v83 + 16) = v96;
  type metadata accessor for FTLocalMessageProperties();
  v43 = static FTLocalMessageProperties.fetchRequest()();
  [v43 setFetchBatchSize_];
  sub_1BC7D9730(0, &qword_1EDC1DE88, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5520, &qword_1BC9001E8);
  v85 = swift_allocObject();
  v86 = MEMORY[0x1E69E6158];
  *(v85 + 16) = xmmword_1BC8FEAA0;
  *(v85 + 56) = v86;
  *(v85 + 32) = 0x555564726F636572;
  *(v85 + 40) = 0xEA00000000004449;
  *(v85 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
  *(v85 + 64) = v84;

  v87 = sub_1BC7C034C(0x4025204E49204B25, 0xE800000000000000, v85);
  [v43 setPredicate_];

  v88 = v98;
  v89 = v93;
  v90 = sub_1BC8F8314();
  if (v89)
  {

LABEL_9:

    return;
  }

  v82 = sub_1BC812E14(v17, v88, v90);

LABEL_63:
  *v94 = v82;
}

uint64_t sub_1BC7C01D4()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7C0224()
{
  v1 = OUTLINED_FUNCTION_114();
  v2(v1);
  OUTLINED_FUNCTION_42();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1)
{

  return sub_1BC8F7B74();
}

void *OUTLINED_FUNCTION_53_3()
{
  v2 = *(v0 + 48);

  return __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BC8F8364();
}

id sub_1BC7C034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC8F7BE4();

  if (a3)
  {
    v5 = sub_1BC8F7E34();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

id sub_1BC7C03E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1BC8F7BE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t sub_1BC7C045C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_96();

    return v12(v3);
  }
}

uint64_t sub_1BC7C0598()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1BC7C06B8()
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
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_38_4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC7C07C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_4();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 80);

  return v1(v2);
}

unint64_t sub_1BC7C082C()
{
  result = qword_1EDC20698;
  if (!qword_1EDC20698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    sub_1BC7E2760(&qword_1EDC20DF0, type metadata accessor for Message, &protocol conformance descriptor for Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20698);
  }

  return result;
}

unint64_t sub_1BC7C08E4()
{
  result = qword_1EDC206A0;
  if (!qword_1EDC206A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    sub_1BC7E2760(&unk_1EDC20DF8, type metadata accessor for Message, &protocol conformance descriptor for Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206A0);
  }

  return result;
}

uint64_t sub_1BC7C099C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_24_6();
  sub_1BC7BD5CC(v5, v9);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC7C0AB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC7C0BBC()
{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  sub_1BC8F71D4();
  sub_1BC8F7164();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_69();
  v4(v5);
  sub_1BC7AB2C0(v3, v2);
  swift_bridgeObjectRetain_n();
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[8];
  if (v8)
  {
    OUTLINED_FUNCTION_8_2();
    v13 = swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_15_11();
    *v13 = 136446722;
    sub_1BC8F7264();
    v28 = v4;
    sub_1BC7C0EA4();
    v14 = sub_1BC8F8A54();
    v27 = v10;
    v16 = v15;
    sub_1BC7ADC24(v12);
    v17 = sub_1BC7A9A4C(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E63B0];
    *(v18 + 16) = xmmword_1BC8FC230;
    v20 = OUTLINED_FUNCTION_34_7(v18, v19);
    v22 = sub_1BC7A9A4C(v20, v21, &v29);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2050;
    v23 = sub_1BC7C0454(v9);

    *(v13 + 24) = v23;

    _os_log_impl(&dword_1BC7A3000, v6, v7, "Fetch request with id %{public}s took %{public}ss and returned %{public}ld result(s)", v13, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    (v28)(v27, v11);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_1BC7ADC24(v12);
    (v4)(v10, v11);
  }

  OUTLINED_FUNCTION_96();
  v25 = v0[16];

  return v24(v25);
}

unint64_t sub_1BC7C0EA4()
{
  result = qword_1EDC20FA0;
  if (!qword_1EDC20FA0)
  {
    sub_1BC8F7264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20FA0);
  }

  return result;
}

id FTStoredMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FTStoredMessage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1)
{

  return sub_1BC8F8064();
}

void sub_1BC7C0FF4()
{
  OUTLINED_FUNCTION_29_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v35 - v4;
  if ((MessageType.init(rawValue:)([v0 messageType]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v13 = sub_1BC8F7734();
    __swift_project_value_buffer(v13, qword_1EDC2B3A8);
    v14 = v0;
    v10 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v10, v15))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v16, 5.7779e-34);
    v17 = "Couldn't get messageType from storedMessage: %@";
    goto LABEL_20;
  }

  if ((MailboxType.init(rawValue:)([v0 mailboxType]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v18 = sub_1BC8F7734();
    __swift_project_value_buffer(v18, qword_1EDC2B3A8);
    v19 = v0;
    v10 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v10, v15))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v16, 5.7779e-34);
    v17 = "Couldn't get mailboxType from storedMessage: %@";
LABEL_20:
    _os_log_impl(&dword_1BC7A3000, v10, v15, v17, v1, 0xCu);
    sub_1BC7C1744(v16, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    goto LABEL_21;
  }

  if ((TranscriptionStatus.init(rawValue:)([v0 transcriptionStatus]) & 0x10000) != 0)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B3A8);
    v21 = v0;
    v10 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v10, v15))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_1();
    v16 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_66_0(v16, 5.7779e-34);
    v17 = "Couldn't get transcription status from storedMessage: %@";
    goto LABEL_20;
  }

  v6 = [v0 dateDeleted];
  if (v6)
  {
    v7 = v6;
    sub_1BC8F71B4();

    v8 = sub_1BC8F71E4();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    sub_1BC7C1744(v5, &unk_1EBCF5D80, &qword_1BC8FEA60);
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B3A8);
    v10 = sub_1BC8F7714();
    v11 = sub_1BC8F81E4();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "StoredMessage can't be converted to Message because it's been deleted!", v12, 2u);
LABEL_21:
    OUTLINED_FUNCTION_6();
LABEL_22:

    goto LABEL_23;
  }

  v22 = sub_1BC8F71E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v22);
  sub_1BC7C1744(v5, &unk_1EBCF5D80, &qword_1BC8FEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC903E20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  v1 = 0;
  *(inited + 80) = swift_getKeyPath();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1BFB29A00](v1, inited);
    }

    else
    {
      if (v1 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v24 = *(inited + 8 * v1 + 32);
    }

    v36 = v0;
    type metadata accessor for FTStoredMessage();
    v25 = v0;
    swift_getAtAnyKeyPath();

    v26 = v35[3];
    sub_1BC7C1744(v35, &unk_1EBCF5E50, &qword_1BC8FE850);
    if (!v26)
    {
      break;
    }

    ++v1;

    if (v1 == 7)
    {
      swift_setDeallocating();
      sub_1BC7C1984();
      goto LABEL_23;
    }
  }

  swift_setDeallocating();
  sub_1BC7C1984();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v27 = sub_1BC8F7734();
  __swift_project_value_buffer(v27, qword_1EDC2B3A8);

  v28 = sub_1BC8F7714();
  v29 = sub_1BC8F81E4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_21_1();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136446210;
    v36 = v24;
    sub_1BC8F8494();

    v32 = sub_1BC8F7C94();
    v34 = sub_1BC7A9A4C(v32, v33, v35);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1BC7A3000, v28, v29, "StoredMessage can't be converted to Message because %{public}s is nil", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

LABEL_23:
  OUTLINED_FUNCTION_24();
}

uint64_t TranscriptionStatus.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  v2 = 0;
  switch(a1)
  {
    case 0u:
      v1 = 0;
      v2 = 0;
      break;
    case 1u:
      return v1 | (v2 << 16);
    case 2u:
      v2 = 0;
      v1 = 2;
      break;
    case 3u:
      v2 = 0;
      v1 = 3;
      break;
    case 4u:
      v2 = 0;
      v1 = 4;
      break;
    default:
      v1 = 0;
      v2 = 1;
      break;
  }

  return v1 | (v2 << 16);
}

uint64_t sub_1BC7C1744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7C17D0@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_1BC7C1864(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_34(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC8F7C24();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

uint64_t sub_1BC7C1984()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1)
{

  return sub_1BC8F8064();
}

uint64_t sub_1BC7C19F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1BC8F7C24();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC7C1A54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a4;
  v5 = sub_1BC8F6ED4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_4();
  sub_1BC7C1C54(v17);
  v22[4] = sub_1BC8F7204();
  v22[5] = v19;
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F70], v5);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  (*(v7 + 8))(v10, v5);

  v20 = *(v13 + 8);
  v20(v17, v11);
  sub_1BC8F6F84();
  return (v20)(v4, v11);
}

void sub_1BC7C1C54(uint64_t a1@<X8>)
{
  v3 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_156();
  v10 = sub_1BC8F7204();
  v12 = sub_1BC7C1DF4(2, v10, v11);
  MEMORY[0x1BFB290C0](v12);

  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  sub_1BC8F6F74();
  v13 = *(v5 + 8);
  v13(v9, v3);
  sub_1BC8F6F74();

  v13(v1, v3);
  sub_1BC7C20D0(a1);
}

void OUTLINED_FUNCTION_136(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BC7C1DF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BC8F7CF4();
    v3 = sub_1BC8F7D94();

    return v3;
  }

  return result;
}

uint64_t _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_156();
  sub_1BC7C1FDC();
  sub_1BC8F6F64();
  v6 = *(v3 + 8);
  v6(v0, v1);
  sub_1BC8F6F64();
  v7 = OUTLINED_FUNCTION_62_0();
  return (v6)(v7);
}

void sub_1BC7C1FDC()
{
  v0 = sub_1BC8F7BE4();
  v1 = CFCopyHomeDirectoryURLForUser();

  if (v1)
  {
    sub_1BC8F6FB4();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BC7C20D0(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1BC8F6F44();
  v33[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v33];

  v12 = v33[0];
  if (v11)
  {

    v13 = v12;
  }

  else
  {
    v14 = v33[0];
    v15 = sub_1BC8F6EA4();

    swift_willThrow();
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
    }

    v16 = sub_1BC8F7734();
    __swift_project_value_buffer(v16, qword_1EDC2B3A8);
    (*(v4 + 16))(v8, a1, v2);
    v17 = v15;
    v18 = sub_1BC8F7714();
    v19 = sub_1BC8F81E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v20 = 136446466;
      sub_1BC7C47AC(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v22 = sub_1BC8F8A54();
      v24 = v23;
      v25 = OUTLINED_FUNCTION_62_0();
      v26(v25);
      v27 = sub_1BC7A9A4C(v22, v24, v33);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2114;
      v28 = v15;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v29;
      *v21 = v29;
      _os_log_impl(&dword_1BC7A3000, v18, v19, "MessageStore: Failed to create directories to URL: %{public}s: %{public}@", v20, 0x16u);
      sub_1BC7E6180(v21, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v30 = OUTLINED_FUNCTION_62_0();
      v31(v30);
    }
  }
}

void sub_1BC7C2474()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v112 = *MEMORY[0x1E69E9840];
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v105 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v100 - v15;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v106 = v17;
  v107 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  v23 = [v6 recordUUID];
  if (v23)
  {
    v24 = v23;
    sub_1BC8F7244();

    if (sub_1BC7C2EFC())
    {
      (*(v107 + 8))(v22, v106);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_40_2();
    v38 = sub_1BC8F7BE4();
    v39 = [v6 valueForKey_];

    if (v39)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
    }

    v111[0] = v109;
    v111[1] = v110;
    v40 = MEMORY[0x1E69E7CA0];
    if (*(&v110 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5570, &qword_1BC900630);
      if (swift_dynamicCast())
      {
        v104 = v108;
        v41 = [v108 fileURL];
        if (v41)
        {
          v42 = v41;
          v43 = v22;
          sub_1BC8F6FB4();

          v44 = [objc_opt_self() defaultManager];
          v45 = sub_1BC8F6F44();
          v46 = sub_1BC8F6F44();
          *&v111[0] = 0;
          v47 = [v44 copyItemAtURL:v45 toURL:v46 error:v111];

          if (v47)
          {
            v48 = *&v111[0];
            swift_unknownObjectRelease();
            v49 = OUTLINED_FUNCTION_27_0();
            v50(v49);
            (*(v107 + 8))(v43, v106);
          }

          else
          {
            v77 = *&v111[0];
            OUTLINED_FUNCTION_16_3();
            v78 = sub_1BC8F6EA4();

            swift_willThrow();
            if (qword_1EDC20728 != -1)
            {
              OUTLINED_FUNCTION_1();
              swift_once();
            }

            v79 = sub_1BC8F7734();
            OUTLINED_FUNCTION_37_0(v79, qword_1EDC2B3A8);
            v80 = *(v105 + 2);
            v80(v2, v16, v7);
            v80(v12, v4, v7);
            v81 = v78;
            v82 = sub_1BC8F7714();
            v83 = sub_1BC8F81E4();

            if (os_log_type_enabled(v82, v83))
            {
              OUTLINED_FUNCTION_8_2();
              v84 = swift_slowAlloc();
              v101 = v78;
              v85 = v84;
              v102 = OUTLINED_FUNCTION_32_3();
              OUTLINED_FUNCTION_18();
              v103 = swift_slowAlloc();
              *&v111[0] = v103;
              *v85 = 136446722;
              sub_1BC8F6F24();
              v100 = v82;
              OUTLINED_FUNCTION_24_4();
              v86 = v2;
              v87 = *(v105 + 1);
              v87(v86, v7);
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_16_3();

              *(v85 + 4) = v82;
              *(v85 + 12) = 2082;
              sub_1BC8F6F24();
              OUTLINED_FUNCTION_24_4();
              v88 = OUTLINED_FUNCTION_47_2();
              (v87)(v88);
              v89 = v87;
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_16_3();

              *(v85 + 14) = v82;
              *(v85 + 22) = 2114;
              v90 = v101;
              v91 = v101;
              v92 = _swift_stdlib_bridgeErrorToNSError();
              *(v85 + 24) = v92;
              v93 = v102;
              *v102 = v92;
              v94 = v100;
              _os_log_impl(&dword_1BC7A3000, v100, v83, "Error copying future from: %{public}s\nto: %{public}s: %{public}@", v85, 0x20u);
              sub_1BC7F1790(v93, &unk_1EBCF5DB0, &unk_1BC900410);
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              OUTLINED_FUNCTION_6_0();
              MEMORY[0x1BFB2AA50]();
              swift_unknownObjectRelease();

              v95 = OUTLINED_FUNCTION_27_0();
              v89(v95);
            }

            else
            {
              swift_unknownObjectRelease();

              v97 = *(v105 + 1);
              v98 = OUTLINED_FUNCTION_47_2();
              v97(v98);
              (v97)(v2, v7);
              v99 = OUTLINED_FUNCTION_27_0();
              v97(v99);
            }

            (*(v107 + 8))(v43, v106);
          }
        }

        else
        {
          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v66 = sub_1BC8F7734();
          OUTLINED_FUNCTION_37_0(v66, qword_1EDC2B3A8);
          v67 = v106;
          v68 = v107;
          (*(v107 + 16))(v1, v22, v106);
          v69 = v22;
          v70 = sub_1BC8F7714();
          v71 = sub_1BC8F81E4();
          if (os_log_type_enabled(v70, v71))
          {
            OUTLINED_FUNCTION_9();
            v72 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v73 = swift_slowAlloc();
            *&v111[0] = v73;
            *v72 = 136446210;
            OUTLINED_FUNCTION_3_9();
            sub_1BC7C46D8(v74, v75, MEMORY[0x1E69695E0]);
            v105 = v69;
            sub_1BC8F8A54();
            OUTLINED_FUNCTION_24_4();
            v76 = *(v68 + 8);
            v76(v1, v67);
            OUTLINED_FUNCTION_21_5();
            OUTLINED_FUNCTION_16_3();

            *(v72 + 4) = v40;
            _os_log_impl(&dword_1BC7A3000, v70, v71, "MessageStore: Unable to get file URL for message with recordUUID %{public}s from NSFileBackedFuture! Check for a CoreData issue.", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v73);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            swift_unknownObjectRelease();

            v76(v105, v67);
          }

          else
          {
            swift_unknownObjectRelease();

            v96 = *(v68 + 8);
            v96(v1, v67);
            v96(v69, v67);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_1BC7F1790(v111, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    v51 = v106;
    v52 = v107;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v53 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v53, qword_1EDC2B3A8);
    v54 = OUTLINED_FUNCTION_50_0();
    v55(v54);
    v56 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_30_3();
    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_11_2();
      v58 = swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      *&v111[0] = swift_slowAlloc();
      *v58 = 136446466;
      v59 = OUTLINED_FUNCTION_40_2();
      *(v58 + 4) = sub_1BC7A9A4C(v59, 0xEB00000000656C69, v60);
      *(v58 + 12) = 2082;
      OUTLINED_FUNCTION_3_9();
      sub_1BC7C46D8(v61, v62, MEMORY[0x1E69695E0]);
      sub_1BC8F8A54();
      OUTLINED_FUNCTION_24_4();
      v105 = v22;
      v63 = *(v52 + 8);
      v63(v0, v51);
      OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_16_3();

      *(v58 + 14) = v40;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v64 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v64);

      v63(v105, v51);
    }

    else
    {

      v65 = *(v52 + 8);
      v65(v0, v51);
      v65(v22, v51);
    }
  }

  else
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v25 = sub_1BC8F7734();
    __swift_project_value_buffer(v25, qword_1EDC2B3A8);
    v26 = v6;
    v27 = sub_1BC8F7714();
    v28 = sub_1BC8F81E4();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_9();
      v29 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_32_3();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v32, v33, v34, v35, v36, v37);
      sub_1BC7F1790(v30, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7C2EFC()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1BC8F6FD4();
  v1 = sub_1BC8F7BE4();
  v2 = [v0 fileExistsAtPath_];

  if (!v2)
  {

    goto LABEL_5;
  }

  v7 = 1;
  v3 = sub_1BC8F7BE4();

  v4 = [v0 fileExistsAtPath:v3 isDirectory:&v7];

  if (!v4)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v5 = v7 ^ 1;
  return v5 & 1;
}

id SandboxExtendedURL.init(with:)()
{
  OUTLINED_FUNCTION_8_15(&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SandboxExtendedURL();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1BC7C30A0(void *a1)
{
  v1 = [a1 transcriptData];
  if (v1)
  {
    v2 = v1;
    sub_1BC8F70D4();
  }

  return OUTLINED_FUNCTION_29();
}

void OUTLINED_FUNCTION_177(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
}

unint64_t OUTLINED_FUNCTION_178()
{

  return sub_1BC83C8E8();
}

void OUTLINED_FUNCTION_145()
{
  v2 = *(v0 - 432);
}

void sub_1BC7C31C8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7454();
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for FaceTimeMessageStore_Summary(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_82();
  sub_1BC7C3588(v10, v11, v0, v12);
  OUTLINED_FUNCTION_82();
  v13 = sub_1BC8F7BE4();
  v14 = [v0 primitiveValueForKey_];

  if (v14)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v23[0] = v26;
  v23[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_1BC7C1744(v23, &unk_1EBCF5E50, &qword_1BC8FE850);
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

  v15 = OUTLINED_FUNCTION_82();
  sub_1BC7C3588(v15, v16, v0, v17);
  v26 = v25;
  v24 = 0;
  OUTLINED_FUNCTION_15_10();
  sub_1BC7EC5DC(v25, *(&v25 + 1));
  sub_1BC8F7444();
  sub_1BC8556EC(&qword_1EBCF5B58, type metadata accessor for FaceTimeMessageStore_Summary, &unk_1BC909F40);
  sub_1BC8F7554();
  sub_1BC7D4C94(v25, *(&v25 + 1));
  v18 = OUTLINED_FUNCTION_79();
  sub_1BC85564C(v18, v19);
  v20 = *v8;
  v22 = *(v8 + 1);
  v21 = *(v8 + 2);

  sub_1BC83ED08(v8);
  *v2 = v20;
  v2[1] = v22;
  v2[2] = v21;
LABEL_9:
  OUTLINED_FUNCTION_24();
}

void sub_1BC7C3588(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BC8F7BE4();

  [a3 *a4];
}

uint64_t type metadata accessor for FaceTimeMessageStore_Summary(uint64_t a1)
{
  result = qword_1EDC1F638;
  if (!qword_1EDC1F638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_109_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_109_1()
{
  v5 = *(v2 + v3);
  *(v5 + 16) = v1 + 1;
  v6 = v5 + 16 * v1;
  *(v6 + 32) = v4;
  *(v6 + 40) = v0;
  *(v2 + v3) = v5;
}

uint64_t sub_1BC7C3684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v4;
}

uint64_t sub_1BC7C36DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v112 = v4;
  OUTLINED_FUNCTION_19_6();
  sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v115 = v5;
  v116 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v113 = v7;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47();
  v114 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v117 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_47();
  v118 = v14;
  OUTLINED_FUNCTION_19_6();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v120 = v16;
  v121 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_4();
  v119 = v17;
  OUTLINED_FUNCTION_19_6();
  v18 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  v122 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_4();
  v123 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E60, &qword_1BC9043B8);
  OUTLINED_FUNCTION_0();
  v125 = v29;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7C4684();
  OUTLINED_FUNCTION_217();
  sub_1BC8F8CA4();
  v33 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  v34 = v128;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v159 = v20;
  v35 = v34 + v33;
  v36 = *(v20 + 16);
  v36(v27, v35, v18);
  v158 = 0;
  OUTLINED_FUNCTION_23_7();
  v39 = sub_1BC7C4720(v37, v38, MEMORY[0x1E69695B0]);
  v126 = v28;
  v127 = v32;
  OUTLINED_FUNCTION_66_1();
  v40 = v124;
  sub_1BC8F89F4();
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_187();
    v42(v41);
LABEL_3:
    v43 = OUTLINED_FUNCTION_43_7();
    return v50(v43, v49);
  }

  v44 = *(v159 + 8);
  v45 = OUTLINED_FUNCTION_187();
  v159 = v46;
  v44(v45);
  v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  v48 = v128;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v36(v123, v48 + v47, v18);
  v157 = 1;
  OUTLINED_FUNCTION_66_1();
  sub_1BC8F89F4();
  (v44)(v123, v18);
  v124 = 0;
  v52 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  v53 = v128;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v54 = v53 + v52;
  v55 = v122;
  v36(v122, v54, v18);
  v156 = 2;
  OUTLINED_FUNCTION_66_1();
  v56 = v124;
  sub_1BC8F89F4();
  v57 = v125;
  if (v56)
  {
    (v44)(v55, v18);
    return (*(v57 + 8))(v127, v126);
  }

  else
  {
    v123 = v39;
    (v44)(v55, v18);
    v58 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v60 = v119;
    v59 = v120;
    v61 = v39 + v58;
    v62 = v121;
    (*(v120 + 16))(v119, v61, v121);
    v155 = 3;
    OUTLINED_FUNCTION_1_20();
    sub_1BC7C4720(v63, v64, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_192();
    sub_1BC8F89F4();
    v159 = v18;
    (*(v59 + 8))(v60, v62);
    v65 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
    v66 = v128;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v67 = v118;
    sub_1BC7C4DAC(v66 + v65, v118, &qword_1EBCF5A20, &qword_1BC901BF0);
    v154[0] = 4;
    OUTLINED_FUNCTION_192();
    sub_1BC8F8974();
    sub_1BC7C1744(v67, &qword_1EBCF5A20, &qword_1BC901BF0);
    v68 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
    v69 = v128;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v153[0] = *(v69 + v68);
    v152 = 5;
    sub_1BC7BED0C();
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89F4();
    v70 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
    v71 = v128;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v72 = v117;
    sub_1BC7C4DAC(v71 + v70, v117, &qword_1EBCF5A20, &qword_1BC901BF0);
    v152 = 6;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F8974();
    sub_1BC7C1744(v72, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v73 = MEMORY[0];
    v151 = 7;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F89A4();
    if (v73)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v74 = MEMORY[0];
    v75 = MEMORY[8];
    v150 = 8;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F89A4();
    if (v74)
    {
      goto LABEL_8;
    }

    v124 = 0;
    v78 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v80 = v115;
    v79 = v116;
    v81 = *(v116 + 16);
    v82 = v75 + v78;
    v83 = v114;
    v81(v114, v82, v115);
    v149 = 9;
    OUTLINED_FUNCTION_75_1();
    sub_1BC7C4720(v84, v85, MEMORY[0x1E6969538]);
    v86 = v124;
    sub_1BC8F89F4();
    if (v86)
    {
      (*(v79 + 8))(v83, v80);
      goto LABEL_3;
    }

    v87 = *(v79 + 8);
    v116 = v79 + 8;
    v124 = v87;
    v87(v83, v80);
    v88 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
    OUTLINED_FUNCTION_163();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v81(v113, v83 + v88, v80);
    v148[0] = 10;
    sub_1BC8F89F4();
    v124(v113, v115);
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v147[0] = 11;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89B4();
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v146[0] = 12;
    sub_1BC8F89C4();
    v89 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v145[0] = *v89;
    v144 = 13;
    sub_1BC7B5C78();
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89F4();
    v90 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v144 = 14;
    OUTLINED_FUNCTION_110_0();
    sub_1BC8F89B4();
    OUTLINED_FUNCTION_133_0();
    OUTLINED_FUNCTION_19_14();
    swift_beginAccess();
    v91 = *v90;
    v92 = v90[1];
    v143 = 15;

    OUTLINED_FUNCTION_50_6();
    sub_1BC8F8944();
    if (v91 || (, v93 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus, OUTLINED_FUNCTION_163(), OUTLINED_FUNCTION_13(), swift_beginAccess(), v142[0] = *(v92 + v93), v141 = 16, sub_1BC7C4F00(), sub_1BC8F89F4(), v94 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT, OUTLINED_FUNCTION_111_0(), OUTLINED_FUNCTION_13(), swift_beginAccess(), v141 = 17, OUTLINED_FUNCTION_110_0(), sub_1BC8F89B4(), OUTLINED_FUNCTION_133_0(), OUTLINED_FUNCTION_19_14(), swift_beginAccess(), v95 = *v94, v96 = v94[1], v140 = 18, , OUTLINED_FUNCTION_50_6(), sub_1BC8F8944(), v95))
    {
LABEL_8:
      v76 = OUTLINED_FUNCTION_43_7();
      v77(v76);
    }

    else
    {

      v97 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v139 = *(v96 + v97);
      v138 = 19;
      sub_1BC7C4FF8();
      v98 = v127;
      sub_1BC8F89F4();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_19_14();
      swift_beginAccess();
      v99 = v98[4];
      v138 = 20;
      LOBYTE(v136) = v99;
      OUTLINED_FUNCTION_110_0();
      sub_1BC8F8984();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_19_14();
      swift_beginAccess();
      v100 = *(v98 + 2);
      v136 = *v98;
      v137 = v100;
      LOBYTE(v133) = 21;
      sub_1BC7C518C();

      sub_1BC8F8974();

      v101 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      sub_1BC7C4DAC(v101, v112, &unk_1EBCF5D70, &qword_1BC8FC740);
      LOBYTE(v133) = 22;
      sub_1BC8F8974();
      sub_1BC7C1744(v112, &unk_1EBCF5D70, &qword_1BC8FC740);
      v133 = OUTLINED_FUNCTION_203(v128 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript);
      v134 = v102;
      v135 = v103;
      LOBYTE(v132) = 23;
      sub_1BC7C52A8(v133, v102, v103);
      sub_1BC7C5254();
      OUTLINED_FUNCTION_110_0();
      sub_1BC8F8974();
      sub_1BC7C532C(v133, v134, v135);
      v104 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v132 = *v104;
      LOBYTE(v131) = 24;
      type metadata accessor for SandboxExtendedURL();
      OUTLINED_FUNCTION_74_2();
      sub_1BC7C4720(v105, v106, &protocol conformance descriptor for SandboxExtendedURL);
      OUTLINED_FUNCTION_193();
      sub_1BC8F89F4();
      v107 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
      v108 = v128;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v131 = *(v108 + v107);
      LOBYTE(v130) = 25;
      OUTLINED_FUNCTION_193();
      sub_1BC8F8974();
      v109 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v130 = *v109;
      v129 = 26;
      v110 = v126;
      v111 = v127;
      sub_1BC8F8974();
      return (*(v125 + 8))(v111, v110);
    }
  }
}

unint64_t sub_1BC7C4684()
{
  result = qword_1EDC20E28;
  if (!qword_1EDC20E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E28);
  }

  return result;
}

uint64_t sub_1BC7C46D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC7C4720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC7C4768(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BC8F7014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7C47AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_135(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 72);
}

_BYTE *storeEnumTagSinglePayload for Message.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
        JUMPOUT(0x1BC7C48ECLL);
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7C49A4(char a1)
{
  result = 0x555564726F636572;
  switch(a1)
  {
    case 1:
      return 0x444955556C6C6163;
    case 2:
      return 0x61737265766E6F63;
    case 3:
      return 0x466567617373656DLL;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x546567617373656DLL;
    case 6:
      return 0x7263736E6172745FLL;
    case 7:
      return 1836020326;
    case 8:
      v4 = 0x6469766F7270;
      goto LABEL_26;
    case 9:
      return 0x6165724365746164;
    case 10:
      return 0x69646F4D65746164;
    case 11:
      return 0x646165527369;
    case 12:
      return 0x6E6F697461727564;
    case 13:
      return 0x54786F626C69616DLL;
    case 14:
      return 0x7469736E65537369;
    case 15:
      return 0x6E65697069636572;
    case 16:
      return 0xD000000000000013;
    case 17:
      return 0x5454527369;
    case 18:
      return 0x44496D6973;
    case 19:
      v3 = 0x74696C617571;
      goto LABEL_28;
    case 20:
      return 0x69616D6563696F76;
    case 21:
      v3 = 0x72616D6D7573;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 22:
      v4 = 0x646E696D6572;
LABEL_26:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 23:
      result = 0x6E61725477656E5FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_196_0()
{
}

uint64_t OUTLINED_FUNCTION_191_0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = 1;
}

uint64_t sub_1BC7C4DAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_29();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_149_0()
{
}

void OUTLINED_FUNCTION_75_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_1BC7C4F00()
{
  result = qword_1EDC208D0;
  if (!qword_1EDC208D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208D0);
  }

  return result;
}

unint64_t sub_1BC7C4FA4()
{
  result = qword_1EDC208C8;
  if (!qword_1EDC208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208C8);
  }

  return result;
}

unint64_t sub_1BC7C4FF8()
{
  result = qword_1EDC20520;
  if (!qword_1EDC20520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20520);
  }

  return result;
}

unint64_t sub_1BC7C509C()
{
  result = qword_1EDC20DC8;
  if (!qword_1EDC20DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DC8);
  }

  return result;
}

uint64_t sub_1BC7C50F0@<X0>(uint64_t *a1@<X8>)
{
  result = MessageQuality.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MessageQuality.description.getter()
{
  result = 7827308;
  switch(*v0)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 7823730;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7C518C()
{
  result = qword_1EDC1FF98;
  if (!qword_1EDC1FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF98);
  }

  return result;
}

uint64_t sub_1BC7C51E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t OUTLINED_FUNCTION_193_0(uint64_t a1)
{

  return sub_1BC8F8734();
}

unint64_t sub_1BC7C5254()
{
  result = qword_1EDC1F270;
  if (!qword_1EDC1F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F270);
  }

  return result;
}

uint64_t sub_1BC7C52A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BC7C52EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BC7C532C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
}

id OUTLINED_FUNCTION_74_1(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2)
{

  return sub_1BC8EEA08(a1, a2, v2, v3);
}

void sub_1BC7C5414()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A40, &qword_1BC902DD0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC7C56A4();
  sub_1BC8F8CA4();
  v21 = v2;
  v11 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url);
  v12 = [v11 absoluteString];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BC8F7C24();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v22 = v14;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A48, &qword_1BC902DD8);
  sub_1BC7C56F8();
  OUTLINED_FUNCTION_7_8();

  if (!v1)
  {
    if (qword_1EDC1EF08 != -1)
    {
      OUTLINED_FUNCTION_3_16();
      swift_once();
    }

    [qword_1EDC1EF10 UTF8String];
    [v11 fileSystemRepresentation];
    v17 = sandbox_extension_issue_file();
    if (v17)
    {
      v18 = v17;
      v22 = sub_1BC8F7BD4();
      v23 = v19;
      OUTLINED_FUNCTION_7_8();

      free(v18);
    }

    if (*(v21 + OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8) != 1)
    {
      LOBYTE(v22) = 2;
      sub_1BC8F8A04();
    }
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7C56A4()
{
  result = qword_1EDC208F0;
  if (!qword_1EDC208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208F0);
  }

  return result;
}

unint64_t sub_1BC7C56F8()
{
  result = qword_1EDC1FF80;
  if (!qword_1EDC1FF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5A48, &qword_1BC902DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SandboxExtendedURL.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BC7C5840);
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

uint64_t getEnumTagSinglePayload for MessageStoreBadgeCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BC7C58F8(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x656C646E6168;
}

id SandboxExtendedURL.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8] & 1) == 0)
  {
    sandbox_extension_release();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SandboxExtendedURL();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BC7C5C44@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = Message.__allocating_init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *Message.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v7);
  v137 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v136 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v15);
  v16 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v124 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v19);
  v20 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v140 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v25);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E70, &unk_1BC9043C0);
  OUTLINED_FUNCTION_0();
  v123 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v120 - v28;
  v30 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v16);
  v33 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  v125 = v16;
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v16);
  v36 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  *v36 = 0;
  v36[1] = 0;
  v134 = v36;
  v37 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  *v37 = 0;
  v37[1] = 0;
  v132 = v37;
  v38 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
  *v38 = 0;
  *(v38 + 4) = 1;
  OUTLINED_FUNCTION_177((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary));
  v130 = v39;
  v40 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID);
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v20);
  OUTLINED_FUNCTION_177((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript));
  v129 = v43;
  v133 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile) = 0;
  v135 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  v141 = v1;
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile) = 0;
  v44 = v4[3];
  v128 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v44);
  sub_1BC7C4684();
  v127 = v29;
  v45 = v138;
  sub_1BC8F8C84();
  v142 = v20;
  if (v45)
  {
    v138 = v45;
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_116();
    v49 = OUTLINED_FUNCTION_195();
    __swift_destroy_boxed_opaque_existential_1(v49);
    v50 = OUTLINED_FUNCTION_42_10(&v155);
    sub_1BC7C1744(v50, v51, &qword_1BC901BF0);
    v52 = OUTLINED_FUNCTION_42_10(&v154);
    sub_1BC7C1744(v52, v53, &qword_1BC901BF0);
    if (v127)
    {
      OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
    }

    if (v126)
    {
      OUTLINED_FUNCTION_132(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);

      if (!v20)
      {
LABEL_8:
        if (!v29)
        {
LABEL_10:
          OUTLINED_FUNCTION_58_4();

          OUTLINED_FUNCTION_134_0(&v152);

          v56 = OUTLINED_FUNCTION_88_1(v151);
          sub_1BC7C1744(v56, v57, v58);
          v59 = OUTLINED_FUNCTION_203(v129);
          sub_1BC7C532C(v59, v60, v61);
          OUTLINED_FUNCTION_135_0();

          OUTLINED_FUNCTION_135_0();
          type metadata accessor for Message(0);
          OUTLINED_FUNCTION_99_0();
          swift_deallocPartialClassInstance();
          return v0;
        }

LABEL_9:
        v54 = OUTLINED_FUNCTION_149(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified);
        v55(v54);
        goto LABEL_10;
      }
    }

    else if (!v20)
    {
      goto LABEL_8;
    }

    v65 = OUTLINED_FUNCTION_149(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated);
    v66(v65);
    if (!v29)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v138 = v2;
  v120[0] = v38;
  LOBYTE(v150) = 0;
  OUTLINED_FUNCTION_23_7();
  v48 = sub_1BC7C4720(v46, v47, MEMORY[0x1E69695D0]);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v67 = *(v140 + 32);
  v68 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID);
  v67(v68, v2, v20);
  OUTLINED_FUNCTION_160(1);
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v69 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID);
  v67(v69, v0, v20);
  OUTLINED_FUNCTION_160(2);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_217();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  v122 = v48;
  v70 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID);
  v67(v70, 0, v20);
  LOBYTE(v150) = 3;
  OUTLINED_FUNCTION_1_20();
  sub_1BC7C4720(v71, v72, MEMORY[0x1E6968FD0]);
  OUTLINED_FUNCTION_204();
  v73 = v125;
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F88F4();
  (*(v124 + 32))(v141 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile, v20, v73);
  OUTLINED_FUNCTION_160(4);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F8864();
  v74 = v139;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v20, &v0[v74], &qword_1EBCF5A20, &qword_1BC901BF0);
  swift_endAccess();
  LOBYTE(v149) = 5;
  sub_1BC7C70CC();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_57_2();
  sub_1BC8F88F4();
  *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType] = v150;
  OUTLINED_FUNCTION_160(6);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_32_8();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_122_0(&v154);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v20, &v0[v74], &qword_1EBCF5A20, &qword_1BC901BF0);
  swift_endAccess();
  OUTLINED_FUNCTION_130_0(7);
  v75 = sub_1BC8F88A4();
  OUTLINED_FUNCTION_109_0(v75, v76, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_130_0(8);
  sub_1BC8F88A4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_109_0(v77, v78, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  LOBYTE(v150) = 9;
  OUTLINED_FUNCTION_75_1();
  v81 = sub_1BC7C4720(v79, v80, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  v82 = v136 + 32;
  v83 = *(v136 + 32);
  v84 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated);
  v85 = v137;
  v83(v84, v120[3], v137);
  OUTLINED_FUNCTION_160(10);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  v86 = OUTLINED_FUNCTION_64_2(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified);
  v83(v86, v120[2], v137);
  OUTLINED_FUNCTION_130_0(11);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v87, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead);
  OUTLINED_FUNCTION_130_0(12);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88C4();
  OUTLINED_FUNCTION_55_2();
  *(v141 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration) = v88;
  LOBYTE(v149) = 13;
  sub_1BC7C7198();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v91 + v90) = v89;
  OUTLINED_FUNCTION_130_0(14);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v92, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive);
  OUTLINED_FUNCTION_130_0(15);
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8834();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20_9(&v153);
  swift_beginAccess();
  *v82 = v85;
  *(v82 + 8) = v81;

  v148 = 16;
  sub_1BC7C7244();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v95 + v94) = v93;
  LOBYTE(v149) = 17;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F88B4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_92_1(v96, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT);
  LOBYTE(v149) = 18;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8834();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20_9(&v152);
  swift_beginAccess();
  *v82 = v85;
  *(v82 + 8) = v81;

  LOBYTE(v146) = 19;
  sub_1BC7C732C();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v99 + v98) = v97;
  v148 = 20;
  OUTLINED_FUNCTION_7_13();
  sub_1BC8F8874();
  OUTLINED_FUNCTION_55_2();
  v101 = v100;
  OUTLINED_FUNCTION_20_9(&v144);
  swift_beginAccess();
  *v82 = v101;
  *(v82 + 4) = BYTE4(v101) & 1;
  v145 = 21;
  sub_1BC7C75C4();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v121 = v146;
  v102 = v147;
  OUTLINED_FUNCTION_20_9(&v150);
  swift_beginAccess();
  *v82 = v121;
  *(v82 + 16) = v102;

  LOBYTE(v146) = 22;
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v103 = v131;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(v120[1], &v0[v103], &unk_1EBCF5D70, &qword_1BC8FC740);
  swift_endAccess();
  LOBYTE(v144) = 23;
  sub_1BC7C76BC();
  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  v104 = OUTLINED_FUNCTION_150();
  *v105 = v146;
  *(v105 + 16) = v106;
  sub_1BC7C532C(v104, v107, v108);
  type metadata accessor for SandboxExtendedURL();
  LOBYTE(v144) = 24;
  OUTLINED_FUNCTION_74_2();
  sub_1BC7C4720(v109, v110, &protocol conformance descriptor for SandboxExtendedURL);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_117_0();
  *(v113 + v112) = v111;
  LOBYTE(v146) = 25;
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_207();

  LOBYTE(v144) = 26;
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_9_12();
  sub_1BC8F8864();
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_207();

  v116 = type metadata accessor for Message(0);
  v143.receiver = v0;
  v143.super_class = v116;
  v0 = objc_msgSendSuper2(&v143, sel_init);
  v117 = OUTLINED_FUNCTION_2_19();
  v118(v117);
  v119 = OUTLINED_FUNCTION_195();
  __swift_destroy_boxed_opaque_existential_1(v119);
  return v0;
}

void OUTLINED_FUNCTION_51()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  return sub_1BC8F8734();
}

_OWORD *OUTLINED_FUNCTION_51_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1BC7F0E58((a1 + 32 * v1), (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_51_6()
{
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{

  return sub_1BC862F74(a1, v1, v2);
}

unint64_t sub_1BC7C6FB4()
{
  result = qword_1EDC20E18;
  if (!qword_1EDC20E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E18);
  }

  return result;
}

unint64_t sub_1BC7C700C()
{
  result = qword_1EDC20E20;
  if (!qword_1EDC20E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20E20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  *(*(v0 + 80) + *(v0 + 136)) = 0;
}

unint64_t sub_1BC7C70CC()
{
  result = qword_1EDC20DD0;
  if (!qword_1EDC20DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20DD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_188(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

void OUTLINED_FUNCTION_174()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
  *(v0 + 14) = v2;
}

unint64_t sub_1BC7C7198()
{
  result = qword_1EDC20A30;
  if (!qword_1EDC20A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20A30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_110_1()
{
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_114_1()
{

  return SandboxExtendedURL.init(with:)();
}

unint64_t sub_1BC7C7244()
{
  result = qword_1EDC208C0;
  if (!qword_1EDC208C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208C0);
  }

  return result;
}

uint64_t sub_1BC7C72F8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = TranscriptionStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_1BC7C732C()
{
  result = qword_1EDC20518;
  if (!qword_1EDC20518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20518);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageQuality(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BC7C744CLL);
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

uint64_t getEnumTagSinglePayload for MessageQuality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

FaceTimeMessageStore::MessageQuality_optional __swiftcall MessageQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BC8F8804();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BC7C75C4()
{
  result = qword_1EDC206E0;
  if (!qword_1EDC206E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206E0);
  }

  return result;
}

uint64_t sub_1BC7C7618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v1;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;

  return swift_retain_n();
}

unint64_t sub_1BC7C76BC()
{
  result = qword_1EDC20408;
  if (!qword_1EDC20408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20408);
  }

  return result;
}

uint64_t sub_1BC7C7710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_138()
{
}

uint64_t sub_1BC7C7780@<X0>(uint64_t *a1@<X8>)
{
  result = SandboxExtendedURL.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void SandboxExtendedURL.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v65 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v61 - v29;
  v31 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v63 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_13();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5A28, &qword_1BC902DC8);
  OUTLINED_FUNCTION_0();
  v64 = v35;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v23[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle];
  *v37 = 0;
  v37[8] = 1;
  v66 = v23;
  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken;
  *&v23[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  v38 = v27[3];
  v68 = v27;
  v39 = v27;
  v41 = v61 - v40;
  __swift_project_boxed_opaque_existential_1(v39, v38);
  sub_1BC7C56A4();
  v42 = v65;
  sub_1BC8F8C84();
  if (v42)
  {
    v45 = v66;
LABEL_4:
    v46 = v67;
    __swift_destroy_boxed_opaque_existential_1(v68);

    type metadata accessor for SandboxExtendedURL();
    OUTLINED_FUNCTION_14_9();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v62 = v37;
  v65 = v25;
  v43 = v64;
  sub_1BC8F88A4();
  v44 = v34;
  sub_1BC8F6FE4();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  v45 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7F1790(v30, &qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC83201C();
    swift_allocError();
    swift_willThrow();
    (*(v43 + 8))(v41, v34);
    goto LABEL_4;
  }

  (*(v63 + 32))(v65, v30, v31);
  v61[1] = v31;
  v48 = sub_1BC8F6F44();
  v61[2] = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url;
  *&v45[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v48;
  sub_1BC8F8834();
  v49 = v67;
  v50 = v41;
  if (v51)
  {
    v52 = sub_1BC8F7BE4();
  }

  else
  {
    v52 = 0;
  }

  v53 = v62;
  v54 = *&v45[v49];
  *&v45[v49] = v52;

  v55 = sub_1BC8F8884();
  v57 = v56;
  v58 = OUTLINED_FUNCTION_12_10();
  v59(v58);
  (*(v64 + 8))(v50, v44);
  *v53 = v55;
  v53[8] = v57 & 1;
  v60 = type metadata accessor for SandboxExtendedURL();
  v69.receiver = v45;
  v69.super_class = v60;
  objc_msgSendSuper2(&v69, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_5:
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7C7C68()
{
  result = qword_1EDC208E0;
  if (!qword_1EDC208E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208E0);
  }

  return result;
}

unint64_t sub_1BC7C7CC0()
{
  result = qword_1EDC208E8;
  if (!qword_1EDC208E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC208E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_204_0()
{

  return sub_1BC8F7FC4();
}

uint64_t sub_1BC7C7D54(void *a1)
{
  OUTLINED_FUNCTION_13();
  swift_beginAccess();

  return OUTLINED_FUNCTION_31_3();
}

uint64_t OUTLINED_FUNCTION_206_0()
{
}

id sub_1BC7C7E54()
{
  v1 = v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = objc_opt_self();

    OUTLINED_FUNCTION_31_3();
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_10_2();

    v2 = [v4 normalizedHandleWithDestinationID_];
  }

  return v2;
}

uint64_t sub_1BC7C7F30@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  a2(0);
  OUTLINED_FUNCTION_4_1();
  return (*(v7 + 16))(a3, v3 + v6);
}

uint64_t sub_1BC7C8024(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  v3 = *(*(v1 - 240) + 48) + 40 * v0;

  return sub_1BC8037DC(v3);
}

uint64_t sub_1BC7C818C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t sub_1BC7C8278(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

uint64_t sub_1BC7C82AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  return sub_1BC7C4DAC(v4 + v8, a4, a2, a3);
}

id sub_1BC7C83A8()
{
  v1 = objc_opt_self();
  v2 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v3 = *v2;

  OUTLINED_FUNCTION_41_1();
  sub_1BC8F7BE4();
  v4 = [v1 normalizedHandleWithDestinationID_];

  return v4;
}

uint64_t sub_1BC7C84C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

double sub_1BC7C8554(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_30_9(a1);
  return *(v1 + v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.getTranscriptString()()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_5();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v121 - v14);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_156();
  sub_1BC865C3C();
  if (v130[0])
  {
    v16 = v130[2];
    v1 = v130;
    Transcript.text.getter();
    OUTLINED_FUNCTION_119_0();
    v17 = OUTLINED_FUNCTION_187();
    sub_1BC7C532C(v17, v18, v16);
  }

  else
  {
    v123 = v15;
    v124 = v3;
    v125 = v9;
    v127 = v2;
    v19 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    sub_1BC7C4DAC(&v19[v1], v4, &qword_1EBCF5A20, &qword_1BC901BF0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
    {
      sub_1BC7C1744(v4, &qword_1EBCF5A20, &qword_1BC901BF0);
      if (qword_1EDC20740 != -1)
      {
        OUTLINED_FUNCTION_10_18();
        swift_once();
      }

      v20 = sub_1BC8F7734();
      v1 = __swift_project_value_buffer(v20, qword_1EDC2B3D8);
      v21 = sub_1BC8F7714();
      sub_1BC8F81E4();
      v22 = OUTLINED_FUNCTION_63_3();
      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_45();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_202(v24);
        _os_log_impl(&dword_1BC7A3000, v21, v1, "Message has no transcript", v19, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v25 = sub_1BC7C90F0();
      OUTLINED_FUNCTION_225(&type metadata for GetTranscriptError, v25);
      *v26 = 0;
      swift_willThrow();
    }

    else
    {
      v9 = v125;
      v27 = *(v125 + 32);
      v28 = v127;
      v126 = v7;
      v27(v127, v4, v7);
      v29 = v131;
      v30 = sub_1BC8F7054();
      p_cache = (_TtC20FaceTimeMessageStore19FirstUnlockObserver + 16);
      if (v29)
      {
        v33 = v0;
        v34 = v29;
      }

      else
      {
        v35 = v30;
        v36 = v31;
        v37 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        LODWORD(v37) = *(v1 + v37);
        v1 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
        v33 = v0;
        if (v37 == 1)
        {
          sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
          OUTLINED_FUNCTION_220();
          v38 = sub_1BC8F8214();
          v67 = v38;
          v131 = v36;
          v68 = v126;
          v28 = v127;
          if (v38)
          {
            v69 = [v38 transcriptionString];
            sub_1BC8F7C24();
            OUTLINED_FUNCTION_119_0();

            sub_1BC7D4C94(v35, v131);
            v70 = OUTLINED_FUNCTION_62_0();
            v71(v70);
            goto LABEL_21;
          }

          v124 = v33;
          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v75 = sub_1BC8F7734();
          __swift_project_value_buffer(v75, qword_1EDC2B3A8);
          v76 = v125;
          v77 = v123;
          v78 = OUTLINED_FUNCTION_79();
          v79(v78);
          v80 = sub_1BC8F7714();
          v81 = sub_1BC8F81E4();
          if (os_log_type_enabled(v80, v81))
          {
            OUTLINED_FUNCTION_9();
            v82 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v122 = swift_slowAlloc();
            v129[0] = v122;
            *v82 = 136446210;
            OUTLINED_FUNCTION_1_20();
            sub_1BC7C4720(v83, v84, MEMORY[0x1E6968FE0]);
            v121[3] = v81;
            sub_1BC8F8A54();
            OUTLINED_FUNCTION_38_3();
            OUTLINED_FUNCTION_170();
            v85 = OUTLINED_FUNCTION_143();
            v86(v85);
            v87 = OUTLINED_FUNCTION_19_5();
            sub_1BC7A9A4C(v87, v88, v89);
            OUTLINED_FUNCTION_28_2();

            *(v82 + 4) = v77;
            OUTLINED_FUNCTION_205();
            _os_log_impl(v90, v91, v92, v93, v94, v95);
            v68 = v122;
            __swift_destroy_boxed_opaque_existential_1(v122);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          else
          {

            OUTLINED_FUNCTION_170();
            v110 = OUTLINED_FUNCTION_143();
            v111(v110);
          }

          v9 = v76;
          v1 = v131;
          v112 = sub_1BC7C90F0();
          v113 = OUTLINED_FUNCTION_225(&type metadata for GetTranscriptError, v112);
          OUTLINED_FUNCTION_224(v113, v114);
          v115 = v35;
          v34 = v68;
          sub_1BC7D4C94(v115, v1);
          v33 = v124;
        }

        else
        {
          sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
          OUTLINED_FUNCTION_220();
          v39 = sub_1BC8F8224();
          v131 = v36;
          v72 = v126;
          v28 = v127;
          if (v39)
          {
            sub_1BC7DA1B0(v39, v129);
            v128[0] = v129[0];
            v128[1] = v129[1];
            v128[2] = v129[2];
            v1 = v128;
            Transcript.text.getter();
            OUTLINED_FUNCTION_119_0();
            sub_1BC7D4C94(v35, v131);
            v73 = OUTLINED_FUNCTION_62_0();
            v74(v73);

            goto LABEL_21;
          }

          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v96 = sub_1BC8F7734();
          __swift_project_value_buffer(v96, qword_1EDC2B3A8);
          OUTLINED_FUNCTION_141();
          v97 = v124;
          v98 = OUTLINED_FUNCTION_187();
          v99(v98);
          v100 = sub_1BC8F7714();
          v101 = sub_1BC8F81E4();
          if (os_log_type_enabled(v100, v101))
          {
            OUTLINED_FUNCTION_9();
            v102 = swift_slowAlloc();
            v122 = v102;
            OUTLINED_FUNCTION_8_2();
            v123 = swift_slowAlloc();
            v129[0] = v123;
            *v102 = 136446210;
            OUTLINED_FUNCTION_1_20();
            sub_1BC7C4720(v103, v104, MEMORY[0x1E6968FE0]);
            v105 = v97;
            sub_1BC8F8A54();
            v106 = OUTLINED_FUNCTION_100();
            v108 = v107;
            (*(v125 + 8))(v106, v72);
            sub_1BC7A9A4C(v105, v108, v129);
            OUTLINED_FUNCTION_100();
            v9 = v125;

            v72 = v122;
            *(v122 + 4) = v105;
            _os_log_impl(&dword_1BC7A3000, v100, v101, "Failed to unarchive captions at URL %{public}s", v72, 0xCu);
            v1 = v123;
            __swift_destroy_boxed_opaque_existential_1(v123);
            v109 = OUTLINED_FUNCTION_27_7();
            MEMORY[0x1BFB2AA50](v109);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
          }

          else
          {

            v9[1](v97, v72);
          }

          v116 = sub_1BC7C90F0();
          v117 = OUTLINED_FUNCTION_225(&type metadata for GetTranscriptError, v116);
          OUTLINED_FUNCTION_224(v117, v118);
          v119 = v35;
          v34 = v72;
          sub_1BC7D4C94(v119, v131);
        }

        p_cache = _TtC20FaceTimeMessageStore19FirstUnlockObserver.cache;
      }

      v40 = v126;
      if (p_cache[229] != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v41 = sub_1BC8F7734();
      __swift_project_value_buffer(v41, qword_1EDC2B3A8);
      OUTLINED_FUNCTION_141();
      (*(v42 + 16))(v33, v28, v40);
      v43 = v34;
      v44 = sub_1BC8F7714();
      v45 = sub_1BC8F81E4();

      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_11_2();
        v46 = v34;
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_10();
        v125 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v131 = swift_slowAlloc();
        v129[0] = v131;
        *v47 = 136446466;
        OUTLINED_FUNCTION_1_20();
        sub_1BC7C4720(v48, v49, MEMORY[0x1E6968FE0]);
        v50 = sub_1BC8F8A54();
        v51 = v33;
        v53 = v52;
        v55 = v9[1];
        ++v9;
        v54 = v55;
        v55(v51, v126);
        v56 = sub_1BC7A9A4C(v50, v53, v129);

        *(v47 + 4) = v56;
        *(v47 + 12) = 2114;
        v57 = v46;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 14) = v58;
        v59 = v125;
        *v125 = v58;
        _os_log_impl(&dword_1BC7A3000, v44, v45, "Could not find captions for voicemail at %{public}s with error %{public}@", v47, 0x16u);
        sub_1BC7C1744(v59, &unk_1EBCF5DB0, &unk_1BC900410);
        v60 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v60);
        v1 = v131;
        __swift_destroy_boxed_opaque_existential_1(v131);
        v61 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v61);
        v34 = v46;
        v40 = v126;
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      else
      {

        v62 = v9[1];
        ++v9;
        v54 = v62;
        v62(v33, v40);
      }

      v63 = sub_1BC7C90F0();
      OUTLINED_FUNCTION_225(&type metadata for GetTranscriptError, v63);
      *v64 = 1;
      swift_willThrow();

      v54(v127, v40);
    }
  }

LABEL_21:
  v65 = v1;
  v66 = v9;
  result._object = v66;
  result._countAndFlagsBits = v65;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xEB00000000657079;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v2 = *(v0 + 40);

  return sub_1BC7ADC24(v2);
}

void OUTLINED_FUNCTION_60_6()
{

  sub_1BC83DCE4();
}

unint64_t sub_1BC7C90F0()
{
  result = qword_1EDC20110;
  if (!qword_1EDC20110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20110);
  }

  return result;
}

void MessageStoreService.init()()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BC8F78C4();
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v10 = sub_1BC8F7734();
  v11 = OUTLINED_FUNCTION_42_3(v10, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v12 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_1();
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A90, &unk_1BC9032A0);
  swift_allocObject();
  v45 = v5;
  v46 = v3;
  v1[2] = sub_1BC8F77E4();
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v20 = type metadata accessor for MediaAssetManager();
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v44 = [objc_allocWithZone(v20) init];
  sub_1BC7C98A4(v55);
  v21 = [objc_allocWithZone(MEMORY[0x1E6993580]) init];
  v22 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v23 = v21;
  v43 = [v22 init];
  if (qword_1EDC1E220 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDC2B2F8;
  v41 = sub_1BC83779C();
  v24 = [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
  v25 = type metadata accessor for ProtectedAppsProvider();
  v26 = [objc_allocWithZone(v25) init];
  v54[3] = &type metadata for UserSafety;
  v54[4] = &off_1F3B3D688;
  v53[3] = &type metadata for PhysicalWatchConfiguration;
  v53[4] = &off_1F3B3BA28;
  v52[3] = &type metadata for TCCAccessHelper;
  v52[4] = &off_1F3B39A08;
  v51[3] = v25;
  v51[4] = &off_1F3B3E9A0;
  v51[0] = v26;
  v27 = type metadata accessor for MessageStoreProviderDataSource();
  v28 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for UserSafety);
  __swift_mutable_project_boxed_opaque_existential_1(v53, &type metadata for PhysicalWatchConfiguration);
  __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for TCCAccessHelper);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v25);
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30);
  v34 = sub_1BC838F9C(&v47, v44, v55, v23, v43, 0, v42, 0, v58, v56, 0, v41, v24, *v32, v28);

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v1[6] = v27;
  v1[7] = &off_1F3B3B9B8;
  v1[3] = v34;
  swift_beginAccess();
  v35 = v1[6];
  v36 = v1[7];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 3), v35);
  v37 = *(v36 + 16);

  v37(v38, v35, v36);
  swift_endAccess();
  sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  (*(v45 + 104))(v9, *MEMORY[0x1E69E7F98], v46);
  v39 = sub_1BC8F82B4();
  (*(v45 + 8))(v9, v46);
  v49 = sub_1BC83415C;
  v50 = 0;
  *&v47 = MEMORY[0x1E69E9820];
  *(&v47 + 1) = 1107296256;
  *&v48 = sub_1BC8342F0;
  *(&v48 + 1) = &block_descriptor_2;
  v40 = _Block_copy(&v47);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v39, v40);
  _Block_release(v40);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7C97A4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6268, &qword_1BC906840);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

id sub_1BC7C97F8()
{
  v0 = type metadata accessor for MediaAssetManager();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  *v2 = sub_1BC80C2C0;
  v2[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1BC7C98A4@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A40]) init];
  v4 = [v2 tu:v3 contactStoreConfigurationForCall:?];

  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  result = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  a1[3] = result;
  a1[4] = &off_1F3B3DF68;
  *a1 = v5;
  return result;
}

id sub_1BC7C9968()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  result = sub_1BC84966C(0xD00000000000002ALL, 0x80000001BC90CBD0, v1);
  if (result)
  {
    v3 = result;
    v4 = sub_1BC7D9730(0, &qword_1EDC1DEA0, 0x1E69A48A8);
    v15[3] = v4;
    v15[4] = &off_1F3B38F60;
    v15[0] = v3;
    result = [objc_opt_self() sharedInstanceForBagType_];
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for VideoMessagingFileTransferer();
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v4);
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_12();
      v10 = v9 - v8;
      (*(v11 + 16))(v9 - v8);
      v14 = v5;
      v12 = v5;
      v13 = sub_1BC7C9B1C(v10, &v14, v6, v4, &type metadata for FaceTimeMessagesServerBag, &off_1F3B38F60, &off_1F3B3D658);

      result = __swift_destroy_boxed_opaque_existential_1(v15);
      qword_1EDC2B2F8 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1BC7C9B1C(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29[-1] - v17;
  (*(v13 + 32))(&v29[-1] - v17);
  v30 = a5;
  v31 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v20 = objc_allocWithZone(a3);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v29[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  (*(v13 + 16))(v16, v18, a4);
  v26 = sub_1BC7C9D68(v16, v25, v20, a4, a6);
  (*(v13 + 8))(v18, a4);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v26;
}

char *sub_1BC7C9D68(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1BC8F8274();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC8F8254();
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BC8F78E4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1BC8F7264();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = a4;
  v57[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v56[3] = &type metadata for FaceTimeMessagesServerBag;
  v56[4] = &off_1F3B3D658;
  v56[0] = a2;
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_incomingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_outgoingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v45 = OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue;
  sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1BC8F85A4();
  MEMORY[0x1BFB29120](0xD00000000000003DLL, 0x80000001BC90CC00);
  sub_1BC8F7254();
  v20 = sub_1BC8F7204();
  v22 = v21;
  (*(v16 + 8))(v18, v15);
  MEMORY[0x1BFB29120](v20, v22);

  sub_1BC8F78D4();
  v52[0] = MEMORY[0x1E69E7CC0];
  sub_1BC849F3C(&qword_1EDC20670, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
  sub_1BC849F84();
  sub_1BC8F84C4();
  (*(v48 + 104))(v47, *MEMORY[0x1E69E8090], v49);
  *&a3[v45] = sub_1BC8F82A4();
  sub_1BC7A792C(v57, &a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service]);
  sub_1BC7A792C(v56, &a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_serverBag]);
  type metadata accessor for VideoFileTransfer(0);
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionMap] = sub_1BC8F7AD4();
  v23 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_transactionLock] = v23;
  type metadata accessor for DownloadManager();
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1BC849F3C(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *(v24 + 112) = sub_1BC8F7AD4();
  *&a3[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_downloadManager] = v24;
  v55.receiver = a3;
  v55.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v55, sel_init);
  v26 = qword_1EDC1E1F8;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_1BC8F7734();
  __swift_project_value_buffer(v28, qword_1EDC2B2B0);
  v29 = sub_1BC8F7714();
  v30 = sub_1BC8F8204();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51 = v32;
    *v31 = 136446210;
    sub_1BC7A792C(&v27[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service], v52);
    v33 = sub_1BC863B08(v52);
    v35 = v34;
    sub_1BC7C1744(v52, &qword_1EBCF5EE0, &qword_1BC903B50);
    v36 = sub_1BC7A9A4C(v33, v35, &v51);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1BC7A3000, v29, v30, "Registering IDSService delegate for %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1BFB2AA50](v32, -1, -1);
    MEMORY[0x1BFB2AA50](v31, -1, -1);
  }

  sub_1BC7A792C(&v27[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_service], v52);
  v37 = v53;
  v38 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v39 = *&v27[OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_queue];
  v40 = *(v38 + 16);
  v41 = v27;
  v42 = v39;
  v40(v41, v42, v37, v38);

  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v41;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1BC7CA538@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BC7D02BC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1BC7CA6CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1BC7CA704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7CA790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CA7C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CA8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BC7CA974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_4();
  result = sub_1BC8F7264();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_21_3();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_1BC7CAA08()
{
  OUTLINED_FUNCTION_13_4();
  v2 = sub_1BC8F7264();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BC7CAA48()
{
  OUTLINED_FUNCTION_13_4();
  sub_1BC8F7264();
  v0 = OUTLINED_FUNCTION_21_3();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1BC7CAAC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC7E0578(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC7CAB1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC7E645C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC7CABC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL sub_1BC7CAC9C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1BC7CAD50(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_1_7(a1);
}

uint64_t sub_1BC7CAE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OutgoingVideoMessage(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BC7CAEF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OutgoingVideoMessage(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BC7CB140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7014();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1BC7CB1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC8F7014();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CB398()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CB3D0()
{
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1BC7CB47C()
{
  v1 = sub_1BC8F7014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1BC7CB55C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC7CB5A4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CB690()
{
  sub_1BC7B0EFC(*(v0 + 16));
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC7CB6D8()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC7CB714()
{

  sub_1BC7B0EFC(*(v0 + 24));
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC7CB768()
{

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CB79C()
{
  v1 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BC7CB854()
{

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1BC7CB90C(uint64_t a1, uint64_t a2)
{
  sub_1BC8F8804();
  OUTLINED_FUNCTION_10_2();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BC7CB980()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CB9B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CBA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5BA8, &qword_1BC903840);
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7CBB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_7();
  v6 = sub_1BC8F7994();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1BC8F7014();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1BC7CBBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37_7();
  v8 = sub_1BC8F7994();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1BC8F7014();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CBC74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CBCAC()
{
  v1 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 40) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v4 | 7);
}

uint64_t sub_1BC7CBDA4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7994();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

uint64_t sub_1BC7CBF3C()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CBF7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D48, &unk_1BC903DE0);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for MessageStoreFetchRequest(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (((*(*v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v13 = sub_1BC8F7264();
  (*(*(v13 - 8) + 8))(v0 + v10, v13);
  sub_1BC7B0EFC(*(v0 + v10 + v8[7]));

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v11 | 7);
}

uint64_t sub_1BC7CC128()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CC160()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CC1EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BC7CC498()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC7C818C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BC7CC4E8()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC7C7DA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BC7CC53C()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC7C7E0C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BC7CC638()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC7C8278(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BC7CC6DC()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC7C8024(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BC7CC72C()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC864F3C(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BC7CC780()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC864FFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BC7CC7D4()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865060(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BC7CC824()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865120(v1);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BC7CC878()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865214();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_1BC7CC944()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865904(v1);
  *v0 = result;
  return result;
}

void *sub_1BC7CC970()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865A10(v1);
  *v0 = result;
  return result;
}

void *sub_1BC7CC99C()
{
  OUTLINED_FUNCTION_68_0();
  result = sub_1BC865B10(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BC7CCA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CCAB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BC7CCB08()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BC7CCC4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_54_6();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_54_6();
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v15 = a3[12];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
      v15 = a3[15];
    }

    v9 = a1 + v15;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1BC7CCD80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_54_6();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5] + 8) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_54_6();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
      v14 = a4[15];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BC7CCEF4()
{
  MEMORY[0x1BFB2AB40](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CCF2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1BC7CCF94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC8F8804();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BC7CCFE0(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0x4C5255656C6966;
  }

  return 0x656C646E6168;
}

uint64_t sub_1BC7CD030()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6140, &qword_1BC905978);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CD13C()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC7CD18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD1C4()
{
  type metadata accessor for OutgoingVideoMessage(0);
  OUTLINED_FUNCTION_58_6();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 8))(v7);

  v9 = *(v0 + 40);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  (*(v10 + 8))(v7 + v9);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v3 | 7);
}

uint64_t sub_1BC7CD310()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD478()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CD4B8()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CD4EC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CD520()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

__n128 sub_1BC7CD5FC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1BC7CD670(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1BC7CD704(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC7CD790()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC7CD878()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64) + v5;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1BC7CD934()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC7CD974()
{

  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CDA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_131();
  if (*(*(sub_1BC8F7434() - 8) + 84) == v3)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
    v5 = *(a3 + 24);
  }

  v6 = OUTLINED_FUNCTION_10_23(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t sub_1BC7CDAC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BC8F7434();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_1BC7CDB78()
{
  OUTLINED_FUNCTION_131();
  v3 = *(v2 + 24);
  v4 = sub_1BC8F7434();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1BC7CDBC8()
{
  OUTLINED_FUNCTION_131();
  v3 = *(v2 + 24);
  v4 = sub_1BC8F7434();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1BC7CDC1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_18(*(a1 + 16));
  }

  sub_1BC8F7434();
  v5 = OUTLINED_FUNCTION_10_23(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BC7CDC94()
{
  OUTLINED_FUNCTION_131();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BC8F7434();
    v5 = OUTLINED_FUNCTION_10_23(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1BC7CDD0C(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_18(*a1);
  }

  sub_1BC8F7434();
  v5 = OUTLINED_FUNCTION_10_23(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BC7CDD84()
{
  OUTLINED_FUNCTION_131();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BC8F7434();
    v5 = OUTLINED_FUNCTION_10_23(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1BC7CDE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1BC8F7014();
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1BC7CDF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC8F7264();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1BC8F7014();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1BC7CE054()
{
  sub_1BC8F6D24();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1BC7CE0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BC8F7434();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1BC7CE16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BC8F7434();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BC7CE214()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5848, &qword_1BC9020D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE244()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CE2B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CE304()
{

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BC7CE338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BC7CE38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BC7CE3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC7CE438()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A00, &qword_1BC90A628);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE468()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A08, &qword_1BC90A688);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE498()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6A18, &qword_1BC90A728);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BC7CE508()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC7CE550()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BC7CE590()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC7CE5E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC7CE688()
{
  v1 = sub_1BC8F7264();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1BC7CE800(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) duration];
  *v1 = v3;
  return result;
}

id sub_1BC7CE8C4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRead];
  *v1 = result;
  return result;
}

id sub_1BC7CE908(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRTT];
  *v1 = result;
  return result;
}

id sub_1BC7CE94C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isSensitive];
  *v1 = result;
  return result;
}

id sub_1BC7CE990(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) mailboxType];
  *v1 = result;
  return result;
}

id sub_1BC7CEA4C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) messageType];
  *v1 = result;
  return result;
}

id sub_1BC7CED04(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) transcriptionStatus];
  *v1 = result;
  return result;
}

id sub_1BC7CED88(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) voicemailID];
  *v1 = result;
  return result;
}

id sub_1BC7CEDD4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 voicemailID];
  *a2 = result;
  return result;
}

id sub_1BC7CEF80(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) duration];
  *v1 = v3;
  return result;
}

id sub_1BC7CF044(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRead];
  *v1 = result;
  return result;
}

id sub_1BC7CF088(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isRTT];
  *v1 = result;
  return result;
}

id sub_1BC7CF0CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) isSensitive];
  *v1 = result;
  return result;
}

id sub_1BC7CF110(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) mailboxType];
  *v1 = result;
  return result;
}

id sub_1BC7CF1D4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) messageType];
  *v1 = result;
  return result;
}

id sub_1BC7CF4C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_3_34(a1) transcriptionStatus];
  *v1 = result;
  return result;
}

BOOL sub_1BC7CF5BC(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1BC7CF5EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BC7CF6B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC7CF6D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1BC7CF720(uint64_t a2@<X8>)
{
  sub_1BC7CF754();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1BC7CF75C()
{
  OUTLINED_FUNCTION_1_2();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1BC7CF788()
{
  v1 = OUTLINED_FUNCTION_1_2();
  result = sub_1BC7CF654(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BC7CF7BC()
{
  v1 = OUTLINED_FUNCTION_1_2();
  result = sub_1BC8C2190(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BC7CF7E4(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AE0, type metadata accessor for URLResourceKey, &unk_1BC8FB080);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AE8, type metadata accessor for URLResourceKey, &unk_1BC8FB020);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CF8A0(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AF0, type metadata accessor for AVFileType, &unk_1BC8FAF1C);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AF8, type metadata accessor for AVFileType, &unk_1BC8FAEBC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CF95C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7CF654(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC7CF988(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AB0, type metadata accessor for FileAttributeKey, &unk_1BC8FB458);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AB8, type metadata accessor for FileAttributeKey, &unk_1BC8FB3AC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFA44(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AC0, type metadata accessor for CIContextOption, &unk_1BC8FB49C);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AC8, type metadata accessor for CIContextOption, &unk_1BC8FB298);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFB00@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BC8F7BE4();

  *a2 = v3;
  return result;
}

uint64_t sub_1BC7CFB48(uint64_t a1)
{
  v2 = sub_1BC7CFDD4(&qword_1EBCF4AD0, type metadata accessor for CIImageRepresentationOption, &unk_1BC8FB4E0);
  v3 = sub_1BC7CFDD4(&qword_1EBCF4AD8, type metadata accessor for CIImageRepresentationOption, &unk_1BC8FB184);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC7CFC04(uint64_t a1, uint64_t a2)
{
  sub_1BC8F7C24();
  sub_1BC8F7CD4();
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageStoreBadgeCounts(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessageStoreBadgeCounts(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BC7CFDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC7D01C4(uint64_t a1, id *a2)
{
  v3 = sub_1BC8F7C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BC7D0244(uint64_t a1, id *a2)
{
  result = sub_1BC8F7C04();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC7D02BC(uint64_t a1)
{
  sub_1BC8F7C24();
  v1 = sub_1BC8F7BE4();

  return v1;
}

uint64_t sub_1BC7D02F4(uint64_t a1)
{
  v1 = sub_1BC8F7C24();
  v2 = MEMORY[0x1BFB29190](v1);

  return v2;
}

unint64_t BadgeCountCategory.description.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1BC7D0410(uint64_t a1, id a2)
{
  v2 = &unk_1F3B364E0;
  if (a1 == 4 && ![a2 voicemailInboxOnIPadEnabled])
  {
    return &unk_1F3B36508;
  }

  return v2;
}

uint64_t sub_1BC7D04BC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_24_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC7D04E8(uint64_t a1)
{
  v2 = sub_1BC7D138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0524(uint64_t a1)
{
  v2 = sub_1BC7D138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001BC90B580 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001BC90B5A0 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001BC90B5C0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BC90B5E0 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BC8F8AA4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BC7D0794(unsigned __int8 a1)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D07DC(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC7D089C(uint64_t a1)
{
  v2 = *v1;
  sub_1BC8F8C04();
  sub_1BC7CF55C(v4, v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D08E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D0560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D0930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D078C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D0958(uint64_t a1)
{
  v2 = sub_1BC7D1290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0994(uint64_t a1)
{
  v2 = sub_1BC7D1290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D09D0(uint64_t a1)
{
  v2 = sub_1BC7D1338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0A0C(uint64_t a1)
{
  v2 = sub_1BC7D1338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0A48(uint64_t a1)
{
  v2 = sub_1BC7D12E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0A84(uint64_t a1)
{
  v2 = sub_1BC7D12E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0AC0(uint64_t a1)
{
  v2 = sub_1BC7D13E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0AFC(uint64_t a1)
{
  v2 = sub_1BC7D13E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0B38(uint64_t a1)
{
  v2 = sub_1BC7D14DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0B74(uint64_t a1)
{
  v2 = sub_1BC7D14DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0BB0(uint64_t a1)
{
  v2 = sub_1BC7D1488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0BEC(uint64_t a1)
{
  v2 = sub_1BC7D1488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0C28(uint64_t a1)
{
  v2 = sub_1BC7D1434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0C64(uint64_t a1)
{
  v2 = sub_1BC7D1434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BadgeCountCategory.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C30, &qword_1BC8FB540);
  OUTLINED_FUNCTION_0();
  v80 = v5;
  v81 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v79 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C38, &qword_1BC8FB548);
  OUTLINED_FUNCTION_0();
  v77 = v9;
  v78 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v76 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C40, &qword_1BC8FB550);
  OUTLINED_FUNCTION_0();
  v74 = v13;
  v75 = v12;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v73 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C48, &qword_1BC8FB558);
  OUTLINED_FUNCTION_0();
  v71 = v17;
  v72 = v16;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v70 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C50, &qword_1BC8FB560);
  OUTLINED_FUNCTION_0();
  v68 = v21;
  v69 = v20;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v67 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C58, &qword_1BC8FB568);
  OUTLINED_FUNCTION_0();
  v65 = v25;
  v66 = v24;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C60, &qword_1BC8FB570);
  OUTLINED_FUNCTION_0();
  v64 = v30;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v63 - v32;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C68, &qword_1BC8FB578);
  OUTLINED_FUNCTION_0();
  v35 = v34;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v63 - v37;
  v39 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7D1290();
  sub_1BC8F8CA4();
  v40 = (v35 + 8);
  switch(v39)
  {
    case 1:
      v84 = 1;
      v54 = sub_1BC7D1488();
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.MissedFaceTimeGroupCallsCodingKeys, &v84, v55, v56, v54);
      v47 = v65;
      v46 = v66;
      goto LABEL_9;
    case 2:
      v85 = 2;
      v48 = sub_1BC7D1434();
      v28 = v67;
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.MissedTelephonyCallsCodingKeys, &v85, v49, v50, v48);
      v47 = v68;
      v46 = v69;
      goto LABEL_9;
    case 3:
      v86 = 3;
      v51 = sub_1BC7D13E0();
      v28 = v70;
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.LegacyVoicemailsCodingKeys, &v86, v52, v53, v51);
      v47 = v71;
      v46 = v72;
      goto LABEL_9;
    case 4:
      v87 = 4;
      v43 = sub_1BC7D138C();
      v28 = v73;
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.CarrierVoicemailsCodingKeys, &v87, v44, v45, v43);
      v47 = v74;
      v46 = v75;
      goto LABEL_9;
    case 5:
      v88 = 5;
      v57 = sub_1BC7D1338();
      v28 = v76;
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.FaceTimeAudioMessagesCodingKeys, &v88, v58, v59, v57);
      v47 = v77;
      v46 = v78;
      goto LABEL_9;
    case 6:
      v89 = 6;
      v60 = sub_1BC7D12E4();
      v28 = v79;
      OUTLINED_FUNCTION_2_0(&type metadata for BadgeCountCategory.FaceTimeVideoMessagesCodingKeys, &v89, v61, v62, v60);
      v47 = v80;
      v46 = v81;
LABEL_9:
      (*(v47 + 8))(v28, v46);
      result = (*v40)(v38, v29);
      break;
    default:
      v83 = 0;
      sub_1BC7D14DC();
      v41 = v82;
      sub_1BC8F8934();
      (*(v64 + 8))(v33, v29);
      result = (*v40)(v38, v41);
      break;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BC7D1290()
{
  result = qword_1EBCF4C70;
  if (!qword_1EBCF4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C70);
  }

  return result;
}

unint64_t sub_1BC7D12E4()
{
  result = qword_1EBCF4C78;
  if (!qword_1EBCF4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C78);
  }

  return result;
}

unint64_t sub_1BC7D1338()
{
  result = qword_1EBCF4C80;
  if (!qword_1EBCF4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C80);
  }

  return result;
}

unint64_t sub_1BC7D138C()
{
  result = qword_1EBCF4C88;
  if (!qword_1EBCF4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C88);
  }

  return result;
}

unint64_t sub_1BC7D13E0()
{
  result = qword_1EBCF4C90;
  if (!qword_1EBCF4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C90);
  }

  return result;
}

unint64_t sub_1BC7D1434()
{
  result = qword_1EBCF4C98;
  if (!qword_1EBCF4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C98);
  }

  return result;
}

unint64_t sub_1BC7D1488()
{
  result = qword_1EBCF4CA0;
  if (!qword_1EBCF4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CA0);
  }

  return result;
}

unint64_t sub_1BC7D14DC()
{
  result = qword_1EBCF4CA8;
  if (!qword_1EBCF4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CA8);
  }

  return result;
}

uint64_t BadgeCountCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

void BadgeCountCategory.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CB0, &qword_1BC8FB580);
  OUTLINED_FUNCTION_0();
  v81 = v3;
  v82 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v88 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CB8, &qword_1BC8FB588);
  OUTLINED_FUNCTION_0();
  v79 = v7;
  v80 = v8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v87 = v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CC0, &qword_1BC8FB590);
  OUTLINED_FUNCTION_0();
  v78 = v11;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v84 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CC8, &qword_1BC8FB598);
  OUTLINED_FUNCTION_0();
  v76 = v15;
  v77 = v14;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v83 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CD0, &qword_1BC8FB5A0);
  OUTLINED_FUNCTION_0();
  v74 = v19;
  v75 = v18;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v86 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CD8, &qword_1BC8FB5A8);
  OUTLINED_FUNCTION_0();
  v71 = v23;
  v72 = v22;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CE0, &qword_1BC8FB5B0);
  OUTLINED_FUNCTION_0();
  v70 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v65 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CE8, &qword_1BC8FB5B8);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v65 - v36;
  v38 = a1[3];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1BC7D1290();
  v39 = v90;
  sub_1BC8F8C84();
  if (v39)
  {
    goto LABEL_8;
  }

  v68 = v31;
  v67 = v27;
  v69 = v26;
  v41 = v86;
  v40 = v87;
  v42 = v88;
  v90 = v32;
  v43 = sub_1BC8F8914();
  sub_1BC7B7A64(v43, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  v65[1] = 0;
  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    return;
  }

  v66 = *(v45 + v46);
  sub_1BC7D2698(v46 + 1, v47 >> 1, v44, v45, v46, v47);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_7:
    v56 = v37;
    v57 = sub_1BC8F8624();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v59 = &type metadata for BadgeCountCategory;
    v60 = v90;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v56, v60);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v89);
    return;
  }

  v52 = v34;
  v53 = v85;
  v54 = v90;
  switch(v66)
  {
    case 1:
      v92 = 1;
      sub_1BC7D1488();
      v42 = v69;
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.MissedFaceTimeGroupCallsCodingKeys, &v92);
      swift_unknownObjectRelease();
      v63 = v71;
      v62 = v72;
      goto LABEL_15;
    case 2:
      v93 = 2;
      sub_1BC7D1434();
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.MissedTelephonyCallsCodingKeys, &v93);
      swift_unknownObjectRelease();
      (*(v74 + 8))(v41, v75);
      break;
    case 3:
      v94 = 3;
      sub_1BC7D13E0();
      v42 = v83;
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.LegacyVoicemailsCodingKeys, &v94);
      swift_unknownObjectRelease();
      v63 = v76;
      v62 = v77;
      goto LABEL_15;
    case 4:
      v95 = 4;
      sub_1BC7D138C();
      v61 = v84;
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.CarrierVoicemailsCodingKeys, &v95);
      swift_unknownObjectRelease();
      (*(v78 + 8))(v61, v73);
      break;
    case 5:
      v96 = 5;
      sub_1BC7D1338();
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.FaceTimeAudioMessagesCodingKeys, &v96);
      swift_unknownObjectRelease();
      (*(v80 + 8))(v40, v79);
      break;
    case 6:
      v97 = 6;
      sub_1BC7D12E4();
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.FaceTimeVideoMessagesCodingKeys, &v97);
      swift_unknownObjectRelease();
      v62 = v81;
      v63 = v82;
LABEL_15:
      (*(v63 + 8))(v42, v62);
      break;
    default:
      v91 = 0;
      sub_1BC7D14DC();
      v55 = v68;
      OUTLINED_FUNCTION_1_3(&type metadata for BadgeCountCategory.MissedFaceTimeCallsCodingKeys, &v91);
      swift_unknownObjectRelease();
      (*(v70 + 8))(v55, v67);
      break;
  }

  (*(v52 + 8))(v37, v54);
  v64 = v89;
  *v53 = v66;
  __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1BC7D1DD4(uint64_t a1)
{
  v2 = *v1;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D1E60()
{
  result = qword_1EBCF4CF0;
  if (!qword_1EBCF4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CF0);
  }

  return result;
}

unint64_t sub_1BC7D1EB8()
{
  result = qword_1EBCF4CF8;
  if (!qword_1EBCF4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4D00, &qword_1BC8FB680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1BC7D1F74(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC7D20C4()
{
  result = qword_1EBCF4D08;
  if (!qword_1EBCF4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D08);
  }

  return result;
}

unint64_t sub_1BC7D211C()
{
  result = qword_1EBCF4D10;
  if (!qword_1EBCF4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D10);
  }

  return result;
}

unint64_t sub_1BC7D2174()
{
  result = qword_1EBCF4D18;
  if (!qword_1EBCF4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D18);
  }

  return result;
}

unint64_t sub_1BC7D21CC()
{
  result = qword_1EBCF4D20;
  if (!qword_1EBCF4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D20);
  }

  return result;
}

unint64_t sub_1BC7D2224()
{
  result = qword_1EBCF4D28;
  if (!qword_1EBCF4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D28);
  }

  return result;
}

unint64_t sub_1BC7D227C()
{
  result = qword_1EBCF4D30;
  if (!qword_1EBCF4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D30);
  }

  return result;
}

unint64_t sub_1BC7D22D4()
{
  result = qword_1EBCF4D38;
  if (!qword_1EBCF4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D38);
  }

  return result;
}

unint64_t sub_1BC7D232C()
{
  result = qword_1EBCF4D40;
  if (!qword_1EBCF4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D40);
  }

  return result;
}

unint64_t sub_1BC7D2384()
{
  result = qword_1EBCF4D48;
  if (!qword_1EBCF4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D48);
  }

  return result;
}

unint64_t sub_1BC7D23DC()
{
  result = qword_1EBCF4D50;
  if (!qword_1EBCF4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D50);
  }

  return result;
}

unint64_t sub_1BC7D2434()
{
  result = qword_1EBCF4D58;
  if (!qword_1EBCF4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D58);
  }

  return result;
}

unint64_t sub_1BC7D248C()
{
  result = qword_1EBCF4D60;
  if (!qword_1EBCF4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D60);
  }

  return result;
}

unint64_t sub_1BC7D24E4()
{
  result = qword_1EBCF4D68;
  if (!qword_1EBCF4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D68);
  }

  return result;
}

unint64_t sub_1BC7D253C()
{
  result = qword_1EBCF4D70;
  if (!qword_1EBCF4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D70);
  }

  return result;
}

unint64_t sub_1BC7D2594()
{
  result = qword_1EBCF4D78;
  if (!qword_1EBCF4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D78);
  }

  return result;
}

unint64_t sub_1BC7D25EC()
{
  result = qword_1EBCF4D80;
  if (!qword_1EBCF4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D80);
  }

  return result;
}

unint64_t sub_1BC7D2644()
{
  result = qword_1EBCF4D88;
  if (!qword_1EBCF4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D88);
  }

  return result;
}

uint64_t sub_1BC7D2698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1BC7D2724()
{
  result = 0.0;
  *(&xmmword_1EBD06790 + 9) = 0u;
  xmmword_1EBD06780 = 0u;
  xmmword_1EBD06790 = 0u;
  xmmword_1EBD06770 = 0u;
  return result;
}

double sub_1BC7D28B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = *(v2 + 56);
  v35 = 0u;
  memset(v36, 0, 24);
  v34 = 0u;
  v36[24] = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = (a1 + 32);
    do
    {
      v21 = *v20++;
      v22 = v13;
      v13 = v6;
      switch(v21)
      {
        case 1:
          v13 = v22;
          v15 = v5;
          break;
        case 2:
          break;
        case 3:
          v13 = v22;
          v16 = v7;
          break;
        case 4:
          v13 = v22;
          v17 = v8;
          break;
        case 5:
          v13 = v22;
          v18 = v9;
          break;
        case 6:
          v13 = v22;
          v19 = v10;
          break;
        default:
          v13 = v22;
          v14 = v4;
          break;
      }

      --v12;
    }

    while (v12);
    *&v36[8] = v18;
    *&v36[16] = v19;
    *(&v35 + 1) = v16;
    *v36 = v17;
    *&v34 = v14;
    *(&v34 + 1) = v15;
    *&v35 = v13;
  }

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v23 = sub_1BC8F7734();
  __swift_project_value_buffer(v23, qword_1EDC2B3A8);
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = sub_1BC8F7C94();
    v30 = sub_1BC7A9A4C(v28, v29, &v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1BC7A3000, v24, v25, "Filtered badge counts: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_beginAccess();
  v31 = v35;
  *a2 = v34;
  a2[1] = v31;
  a2[2] = *v36;
  result = *&v36[9];
  *(a2 + 41) = *&v36[9];
  return result;
}

uint64_t sub_1BC7D2B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  result = *(a2 + 16);
  if (result)
  {
    v12 = (a2 + 40);
    do
    {
      v13 = *(v12 - 8);
      v15 = *v12;
      v12 += 2;
      v14 = v15;
      switch(v13)
      {
        case 1:
          v4 = v14;
          goto LABEL_10;
        case 2:
          v6 = v14;
          goto LABEL_10;
        case 3:
          v5 = v14;
          goto LABEL_10;
        case 4:
          v8 = v14;
          goto LABEL_10;
        case 5:
          v7 = v14;
          goto LABEL_10;
        case 6:
          v9 = v14;
LABEL_10:
          v14 = v3;
          break;
        default:
          break;
      }

      v3 = v14;
      --result;
    }

    while (result);
  }

  else
  {
    v14 = v3;
  }

  *a3 = v14;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 32) = v8;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  return result;
}

double sub_1BC7D2BB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7BE4();
  v5 = [a1 dataForKey_];

  if (!v5)
  {
    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
    }

    v22 = sub_1BC8F7734();
    __swift_project_value_buffer(v22, qword_1EDC2B368);
    v21 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v21, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v24, v25, "No stored badge count data found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_12;
  }

  v6 = sub_1BC8F70D4();
  v8 = v7;

  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7D4CEC();
  OUTLINED_FUNCTION_21_0(&type metadata for BadgeCounts);
  if (v4)
  {

    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B368);
    v10 = v4;
    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F81E4();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v36[0] = v31;
      *v30 = 136446210;
      swift_getErrorValue();
      v14 = v34;
      v13 = v35;
      v33 = v8;
      v15 = sub_1BC8F83F4();
      v28 = &v28;
      OUTLINED_FUNCTION_0();
      v29 = v12;
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v16);
      v32 = v6;
      OUTLINED_FUNCTION_7();
      (*(v17 + 16))(v6, v14, v13);
      OUTLINED_FUNCTION_16_0();
      v18 = OUTLINED_FUNCTION_13_3();
      v19(v18, v15);
      v20 = sub_1BC7A9A4C(v13, v14, v36);

      *(v30 + 4) = v20;
      OUTLINED_FUNCTION_20(&dword_1BC7A3000, "Failed to read badge counts %{public}s", v29);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = sub_1BC8F7BE4();
    [a1 removeObjectForKey_];
    OUTLINED_FUNCTION_24_1();

LABEL_12:
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = 2;
    return result;
  }

  OUTLINED_FUNCTION_24_1();

  v27 = v36[1];
  *a2 = v36[0];
  *(a2 + 16) = v27;
  *(a2 + 32) = v37[0];
  result = *(v37 + 9);
  *(a2 + 41) = *(v37 + 9);
  return result;
}

uint64_t static BadgeCounts.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1] && a1[3].i64[0] == a2[3].i64[0])
  {
    v2 = a2[3].i8[8] ^ a1[3].i8[8] ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1BC7D2FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001BC90B580 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001BC90B5A0 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001BC90B5C0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BC90B5E0 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x756769626D417369 && a2 == 0xEB0000000073756FLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BC8F8AA4();

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

unint64_t sub_1BC7D326C(char a1)
{
  result = 0x756769626D417369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      return result;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1BC7D33A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D2FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D33C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D3264();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D33F0(uint64_t a1)
{
  v2 = sub_1BC7D366C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D342C(uint64_t a1)
{
  v2 = sub_1BC7D366C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BadgeCounts.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4D90, &qword_1BC8FBDC0);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_1();
  v30 = v26[3];
  v31 = v26;
  v33 = v32;
  __swift_project_boxed_opaque_existential_1(v31, v30);
  v34 = sub_1BC7D366C();
  OUTLINED_FUNCTION_18_0(&type metadata for BadgeCounts.CodingKeys, v35, v34);
  sub_1BC8F89D4();
  if (!v23)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89B4();
  }

  (*(v28 + 8))(v24, v33);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7D366C()
{
  result = qword_1EDC203F8;
  if (!qword_1EDC203F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203F8);
  }

  return result;
}

uint64_t BadgeCounts.hash(into:)()
{
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1BFB2A020]();
  MEMORY[0x1BFB2A020](v6);
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v4);
  MEMORY[0x1BFB2A020](v5);
  return sub_1BC8F8C24();
}

uint64_t BadgeCounts.hashValue.getter()
{
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_14_0();
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v6);
  MEMORY[0x1BFB2A020](v7);
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v4);
  MEMORY[0x1BFB2A020](v5);
  sub_1BC8F8C24();
  return sub_1BC8F8C64();
}

void BadgeCounts.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4D98, &qword_1BC8FBDC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC7D366C();
  sub_1BC8F8C84();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_1();
    v6 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_2_1();
    v7 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_2_1();
    v15 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v14 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v13 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v12 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v11 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v8 = sub_1BC8F88B4();
    v9 = OUTLINED_FUNCTION_4_5();
    v10(v9);
    *v4 = v6;
    *(v4 + 8) = v7;
    *(v4 + 16) = v15;
    *(v4 + 24) = v14;
    *(v4 + 32) = v13;
    *(v4 + 40) = v12;
    *(v4 + 48) = v11;
    *(v4 + 56) = v8 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7D3A4C(uint64_t a1)
{
  sub_1BC8F8C04();
  BadgeCounts.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D3ABC()
{
  result = sub_1BC8F7BE4();
  qword_1EDC2B338 = result;
  return result;
}

void sub_1BC7D3AF4()
{
  qword_1EBD067B0 = 0;
  qword_1EBD067B8 = 0;
  qword_1EBD067C0 = 0;
}

double sub_1BC7D3B88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7BE4();
  v5 = [a1 dataForKey_];

  if (!v5)
  {
    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
    }

    v22 = sub_1BC8F7734();
    __swift_project_value_buffer(v22, qword_1EDC2B368);
    v21 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v21, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v24, v25, "No stored badge count data found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_12;
  }

  v6 = sub_1BC8F70D4();
  v8 = v7;

  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7D4C40();
  OUTLINED_FUNCTION_21_0(&type metadata for MessageStoreBadgeCounts);
  if (v4)
  {

    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDC1FFD0);
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B368);
    v10 = v4;
    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F81E4();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v36 = v31;
      *v30 = 136446210;
      swift_getErrorValue();
      v14 = v34;
      v13 = v35;
      v33 = v8;
      v15 = sub_1BC8F83F4();
      v28[1] = v28;
      OUTLINED_FUNCTION_0();
      v29 = v12;
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v16);
      v32 = v6;
      OUTLINED_FUNCTION_7();
      (*(v17 + 16))(v6, v14, v13);
      OUTLINED_FUNCTION_16_0();
      v18 = OUTLINED_FUNCTION_13_3();
      v19(v18, v15);
      v20 = sub_1BC7A9A4C(v13, v14, &v36);

      *(v30 + 4) = v20;
      OUTLINED_FUNCTION_20(&dword_1BC7A3000, "Failed to read badge counts %{public}s", v29);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v21 = sub_1BC8F7BE4();
    [a1 removeObjectForKey_];
    OUTLINED_FUNCTION_24_1();

LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    return result;
  }

  OUTLINED_FUNCTION_24_1();

  v27 = v37;
  result = *&v36;
  *a2 = v36;
  *(a2 + 16) = v27;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1BC7D3F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

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

unint64_t sub_1BC7D4094(char a1)
{
  result = 0xD000000000000015;
  if (!a1)
  {
    return 0xD000000000000011;
  }

  return result;
}