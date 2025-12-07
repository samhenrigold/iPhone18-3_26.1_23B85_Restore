uint64_t sub_243D0BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243D0B2BC(a2, a3);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_243D0BAA8()
{
  v1 = sub_243D0B6C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243D0BB50(_DWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243CE011C;

  return sub_243D0B9FC(a1);
}

void sub_243D0BBE4()
{
  qword_27EDAA7A0 = &type metadata for ClientDataSerializer;
  unk_27EDAA7A8 = &off_2856F1C30;
  qword_27EDAA788 = 0;
  dword_27EDAA790 = 0;
}

uint64_t sub_243D0BC0C()
{
  v0 = sub_243D0EBDC();
  result = sub_243D0EBCC();
  qword_27EDAA7C8 = v0;
  unk_27EDAA7D0 = &off_2856F1AF8;
  qword_27EDAA7B0 = result;
  return result;
}

uint64_t sub_243D0BC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243D0BC74);
}

uint64_t sub_243D0BC74()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_243CE1434(v1, v2);
  MEMORY[0x245D4E5A0](v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_243D0BCFC()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_7(v2);
  *v3 = v4;
  v3[1] = sub_243D0C83C;

  return MEMORY[0x2821DA5C8](v1);
}

uint64_t sub_243D0BD8C()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = sub_243D0E97C();
  *(v1 + 24) = v4;
  *(v1 + 32) = *(v4 - 8);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 64) = *v3;
  *(v1 + 72) = *(v3 + 8);

  return MEMORY[0x2822009F8](sub_243D0BE5C);
}

uint64_t sub_243D0BE5C()
{
  OUTLINED_FUNCTION_13();
  sub_243D0E93C();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_243D0BF04;
  v2 = *(v0 + 40);

  return MEMORY[0x2821DA5D0](v2);
}

uint64_t sub_243D0BF04(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  (*(v4[4] + 8))(v4[5], v4[3]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_243D0C0B4);
  }

  else
  {

    v6 = v5[1];

    return v6(a1 & 1);
  }
}

uint64_t sub_243D0C0B4()
{
  OUTLINED_FUNCTION_13();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_243D0C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243D0C1C8;

  return sub_243D0BC50(a1, a2, a3);
}

uint64_t sub_243D0C1C8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_243D0C2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243D0C344;

  return sub_243D0BCFC();
}

uint64_t sub_243D0C344(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15();
  v6 = *v3;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_243D0C448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243D0C840;

  return sub_243D0BD8C();
}

_BYTE *storeEnumTagSinglePayload for ClientDataSerializerType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x243D0C5BCLL);
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

unint64_t sub_243D0C5F8()
{
  result = qword_27EDAA520;
  if (!qword_27EDAA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA520);
  }

  return result;
}

uint64_t sub_243D0C64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA528, &unk_243D129A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243D0C6B4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAA118, &unk_243D11090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243D0C738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA528, &unk_243D129A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_243D0C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_243D0E64C();
  v7 = result;
  if (result)
  {
    result = sub_243D0E66C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_243D0E65C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_243D0B668(v7, v13, a3);
}

uint64_t sub_243D0C850()
{
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    return sub_243D0F15C();
  }

  return result;
}

uint64_t sub_243D0C88C()
{
  v0 = sub_243D0F10C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_243D0F11C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243D0EC7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243D0ECBC();
  MEMORY[0x28223BE20](v9 - 8);
  v11[0] = sub_243D0D424(0, &qword_27EDAA560, 0x277D85C78);
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  sub_243CE4BE0(v8);
  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v11[1] = MEMORY[0x277D84F90];
  sub_243D0D464(&qword_27EDA9D88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA570, &unk_243D12A00);
  sub_243D0D4AC(&qword_27EDA9D90, &qword_27EDAA570, &unk_243D12A00);
  sub_243D0F19C();
  result = sub_243D0F12C();
  qword_27EDAA530 = result;
  return result;
}

void *sub_243D0CBA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v31 = sub_243D0EC5C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_243D0ECBC();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_243D0D424(0, &qword_27EDAA540, 0x277D85CA0);
  v17 = qword_27EDA99F8;

  if (v17 != -1)
  {
    swift_once();
  }

  v32 = qword_27EDAA530;
  v2[3] = sub_243D0F13C();
  swift_getObjectType();
  OUTLINED_FUNCTION_1_11();
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = v6;
  v37 = sub_243D0D380;
  v38 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v29 = v6;
  v35 = sub_243D0D13C;
  v36 = &block_descriptor_2;
  v19 = _Block_copy(&aBlock);
  v28 = a1;
  v20 = v19;

  sub_243D0EC8C();
  sub_243D0D180();
  sub_243D0F14C();
  _Block_release(v20);
  (*(v8 + 8))(v11, v31);
  (*(v13 + 8))(v16, v30);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_243D0F16C();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_11();
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  v21[2] = v3;
  v21[3] = v23;
  v21[4] = a2;
  v21[5] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_243D0D3E0;
  *(v24 + 24) = v21;
  v37 = sub_243D0D3FC;
  v38 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_243D0D2D0;
  v36 = &block_descriptor_10;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v32, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_243D0CFB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;
    if (qword_27EDA9978 != -1)
    {
      swift_once();
    }

    v6 = sub_243D0EC0C();
    __swift_project_value_buffer(v6, qword_27EDAA620);

    v7 = sub_243D0EBEC();
    v8 = sub_243D0F0FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_243CE0A08(a2, a3, &v11);
      _os_log_impl(&dword_243CDB000, v7, v8, "Dropping transaction for SIGTERM: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x245D4F8C0](v10, -1, -1);
      MEMORY[0x245D4F8C0](v9, -1, -1);
    }

    byte_27EDAA538 = 1;
    *(v5 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243D0D13C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_243D0D180()
{
  sub_243D0EC5C();
  sub_243D0D464(&qword_27EDAA548, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAA550, &qword_243D129F8);
  sub_243D0D4AC(&qword_27EDAA558, &qword_27EDAA550, &qword_243D129F8);
  return sub_243D0F19C();
}

uint64_t sub_243D0D258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_27EDAA538)
  {
    v4 = 0;
  }

  else
  {
    sub_243D0EDDC();
    v4 = os_transaction_create();
  }

  *(a1 + 16) = v4;

  return swift_unknownObjectRelease();
}

void *sub_243D0D2F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_243D0D328()
{
  sub_243D0D2F8();
  OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_243D0D424(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243D0D464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243D0D4AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243D0D52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NetworkProto.Header(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_243D0D600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NetworkProto.Header(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata accessor for NetworkMessage(uint64_t a1)
{
  result = qword_27EDAA578;
  if (!qword_27EDAA578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D0D704(uint64_t a1)
{
  result = type metadata accessor for NetworkProto.Header(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D0D78C()
{
  v2 = sub_243D0E9FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderPreamble(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = xmmword_243D100E0;
  sub_243D0E9EC();
  type metadata accessor for NetworkProto.Header(0);
  sub_243D0DA84();
  sub_243D0EADC();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);
    return sub_243CE148C(v24, *(&v24 + 1));
  }

  v25 = v0;
  (*(v3 + 8))(v5, v2);
  v9 = v22;
  v10 = v23;
  v11 = MEMORY[0x245D4E4B0](v22, v23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(v5) = v11;
  if (HIDWORD(v11))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (qword_27EDA99A0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_243D0E7BC();
  v13 = __swift_project_value_buffer(v12, qword_27EDAA6B0);
  (*(*(v12 - 8) + 16))(v8, v13, v12);
  v14 = sub_243CE148C(v9, v10);
  *&v8[*(v6 + 20)] = v5;
  v15 = sub_243CFF29C(v14);
  v17 = v16;
  sub_243D0DADC(v8);
  sub_243D0E71C();
  sub_243CE148C(v15, v17);
  v19 = sub_243D0EABC();
  v21 = v20;
  sub_243D0E71C();
  sub_243CE148C(v19, v21);
  type metadata accessor for NetworkMessage(0);
  sub_243D0E71C();
  return v24;
}

unint64_t sub_243D0DA84()
{
  result = qword_27EDAA100;
  if (!qword_27EDAA100)
  {
    type metadata accessor for NetworkProto.Header(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAA100);
  }

  return result;
}

uint64_t sub_243D0DADC(uint64_t a1)
{
  v2 = type metadata accessor for HeaderPreamble(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243D0DB38(uint64_t a1)
{
  result = sub_243D0F02C();
  if (v2 <= 0x3F)
  {
    result = sub_243D0EFDC();
    if (v3 <= 0x3F)
    {
      result = sub_243D0F01C();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

char *sub_243D0DC4C()
{
  sub_243D0DDC0();
  OUTLINED_FUNCTION_2_13();
  v2 = *(v1 + 88);
  sub_243D0F02C();
  OUTLINED_FUNCTION_16_1();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_2_13();
  v5 = *(v4 + 96);
  sub_243D0EFDC();
  OUTLINED_FUNCTION_16_1();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_2_13();
  v8 = *(v7 + 104);
  sub_243D0F01C();
  OUTLINED_FUNCTION_16_1();
  (*(v9 + 8))(v0 + v8);
  return v0;
}

uint64_t sub_243D0DD50()
{
  sub_243D0DC4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_243D0DE80(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x2822009F8](sub_243D0DEC8);
}

uint64_t sub_243D0DEC8()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_243D0F01C();
  *v1 = v0;
  v1[1] = sub_243D0DFA8;
  v3 = *(v0 + 40);

  return MEMORY[0x2822003F0](v3, v2);
}

uint64_t sub_243D0DFA8()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  swift_endAccess();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_243D0E098()
{
  OUTLINED_FUNCTION_13();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[9] = *v0;
  if (v4)
  {
    swift_getObjectType();
    sub_243D0EEDC();
  }

  return MEMORY[0x2822009F8](sub_243D0E150);
}

uint64_t sub_243D0E150(uint64_t a1)
{
  OUTLINED_FUNCTION_2_13();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v1[10] = v2;
  v3 = sub_243D0F01C();
  *v2 = v1;
  v2[1] = sub_243D0E230;
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[5];

  return MEMORY[0x2822003E8](v6, v4, v5, v3);
}

uint64_t sub_243D0E230()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  swift_endAccess();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_243D0E32C()
{
  sub_243D0DE18();
}

uint64_t sub_243D0E364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243D0E400;

  return sub_243D0DE80(a1);
}

uint64_t sub_243D0E400()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_243D0E4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243D0E5BC;

  return sub_243D0E098();
}