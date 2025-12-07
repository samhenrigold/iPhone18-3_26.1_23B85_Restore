_BYTE *storeEnumTagSinglePayload for ContextualNamedEntity.SourceFramework(_BYTE *result, unsigned int a2, unsigned int a3)
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

void destroy for VoiceCommandContext(uint64_t a1)
{

  v2 = *(a1 + 80);
}

void *initializeWithCopy for VoiceCommandContext(void *a1, void *a2)
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
  v6 = a2[6];
  v7 = a2[7];
  a1[6] = v6;
  a1[7] = v7;
  v8 = a2[8];
  v9 = a2[9];
  a1[8] = v8;
  a1[9] = v9;
  v10 = a2[10];
  a1[10] = v10;

  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  return a1;
}

void *assignWithCopy for VoiceCommandContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  v4 = a1[6];
  v5 = a2[6];
  a1[6] = v5;
  v6 = v5;

  v7 = a1[7];
  v8 = a2[7];
  a1[7] = v8;
  v9 = v8;

  v10 = a1[8];
  v11 = a2[8];
  a1[8] = v11;
  v12 = v11;

  v13 = a1[9];
  v14 = a2[9];
  a1[9] = v14;
  v15 = v14;

  v16 = a1[10];
  v17 = a2[10];
  a1[10] = v17;
  v18 = v17;

  return a1;
}

uint64_t assignWithTake for VoiceCommandContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  v8 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for VoiceCommandContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for VoiceCommandContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_OWORD *sub_1AC6E3000(unint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v16 = &type metadata for VoiceCommandContext;
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), a4, 0x58uLL);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1AC5C3968(&v15, (a5[7] + 32 * a1));
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

_OWORD *sub_1AC6E30C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1AC5C3968(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1AC6E319C()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_78_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_0(v1);

  return v4(v3);
}

uint64_t sub_1AC6E3240()
{
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_9(v1);

  return v4(v3);
}

uint64_t sub_1AC6E32DC()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_78_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_0(v1);

  return v4(v3);
}

uint64_t sub_1AC6E3380()
{
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_9(v1);

  return v4(v3);
}

uint64_t sub_1AC6E341C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  v3 = OUTLINED_FUNCTION_39();

  return v4(v3);
}

uint64_t sub_1AC6E34BC(uint64_t a1)
{
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t *OUTLINED_FUNCTION_46_8()
{

  return sub_1AC6DD654((v0 + 72), v0);
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures(0);
}

void *OUTLINED_FUNCTION_52_5(void *a1)
{

  return memcpy(a1, v1, 0x58uLL);
}

void OUTLINED_FUNCTION_58_4(uint64_t a1@<X8>)
{
  v1[6] = 1;
  v1[7] = a1;
  v1[8] = v2;
}

uint64_t sub_1AC6E3718(uint64_t a1)
{
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = sub_1AC79FDC8();
  v4 = sub_1AC7A05E8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1AC5CFE74(0xD00000000000003CLL, 0x80000001AC7B7D80, &v8);
    _os_log_impl(&dword_1AC5BC000, v3, v4, "EARSpeechRecognitionResultStream.%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B26EAB10](v6, -1, -1);
    MEMORY[0x1B26EAB10](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A37F8(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A55BC(a1, a2, a3, a4, a5, a6, a7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E3978(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AC6A5880(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E39F4(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AC6E3A64(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE44(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognitionResultStream();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6E3AEC()
{
  sub_1AC6E80A4(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_1AC6E64F0(v0 + 144);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC6E3B44()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1AC6E3AEC();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC6E3BC0()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionResultStream();
  OUTLINED_FUNCTION_4_11();
  sub_1AC6E5160(v0, v1, v2, &unk_1AC7AE994);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6E3C3C()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognitionResultStream();
    OUTLINED_FUNCTION_4_11();
    sub_1AC6E5160(v1, v2, v3, &unk_1AC7AE9E4);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6E3D04(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v1, type metadata accessor for EARSpeechRecognitionResultStream, &unk_1AC7AE9E4);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6E3D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6E3DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognitionResultStream();
  v6 = sub_1AC6E5160(&qword_1EB56C9D0, v5, type metadata accessor for EARSpeechRecognitionResultStream, &unk_1AC7AE9E4);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6E3E5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v4, type metadata accessor for EARSpeechRecognitionResultStream, &unk_1AC7AE9E4);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AC6E3EF8(uint64_t a1)
{
  type metadata accessor for EARSpeechRecognitionResultStream();
  sub_1AC6E5160(&qword_1EB56C9D0, v1, type metadata accessor for EARSpeechRecognitionResultStream, &unk_1AC7AE9E4);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

id sub_1AC6E3F8C()
{
  result = xpcInterface_EARSpeechRecognitionResultStream();
  qword_1EB56E600 = result;
  return result;
}

id sub_1AC6E3FB4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC6Speech32EARSpeechRecognitionResultStream8XPCProxy_enqueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D318, &unk_1AC7AEA48);
  swift_allocObject();
  *&v2[v6] = sub_1AC6E51A8();

  sub_1AC6E407C(a1, a2);

  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  sub_1AC6E5440(a2);
  return v7;
}

uint64_t sub_1AC6E407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1AC61BB80(a2, &v16 - v10);
  v11 = *(*v2 + 96);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v2 + v11, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  sub_1AC659DBC();
}

uint64_t sub_1AC6E4278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  sub_1AC61BB80(a2, &v19 - v13);
  v14 = *(*v2 + 96);
  OUTLINED_FUNCTION_235();
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v11, v2 + v14, v4);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v6 + 32))(v17 + v16, v11, v4);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_1AC659DBC();
}

uint64_t sub_1AC6E4460(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC6E64CC;
  *(inited + 40) = v3;
  v4 = a1;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(inited + 32) = a3;
  *(inited + 40) = v6;

  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E46D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AC5CF764(0, &unk_1EB56D378, off_1E797AC90);
  v8 = sub_1AC79FE28();
  v9 = a1;
  sub_1AC6E460C(v8, a4, a5);
}

uint64_t sub_1AC6E4908(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(inited + 32) = a3;
  *(inited + 40) = v6;
  v7 = a1;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E4A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a5;
  *(v15 + 40) = a3;
  *(v15 + 48) = a6;
  *(v15 + 56) = a4;
  *(v15 + 64) = a7;
  *(inited + 32) = sub_1AC6E63B4;
  *(inited + 40) = v15;

  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC6E4B2C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a7 >> 62)
  {
    v15 = sub_1AC7A08E8();
  }

  else
  {
    v15 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AC631164(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v23 = a5;
    v24 = a8;
    v17 = 0;
    v16 = v25;
    do
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B26E95B0](v17, a7);
      }

      else
      {
        v18 = *(a7 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 integerValue];

      v22 = *(v25 + 16);
      v21 = *(v25 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AC631164(v21 > 1, v22 + 1, 1);
      }

      ++v17;
      *(v25 + 16) = v22 + 1;
      *(v25 + 8 * v22 + 32) = v20;
    }

    while (v15 != v17);
    a8 = v24;
    a5 = v23;
  }

  sub_1AC6E38BC(a5, a6, v16, a8, a1, a2, a3);
}

uint64_t sub_1AC6E4D94(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC6E638C;
  *(inited + 40) = v3;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6E4E94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D370, &qword_1AC7AEAC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(inited + 32) = sub_1AC6E6368;
  *(inited + 40) = v3;
  sub_1AC72657C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

id _s6Speech24AssetInstallationRequestCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC6E5160(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC6E51A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D330, &qword_1AC7AEA78);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - v3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D338, &qword_1AC7AEA80);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D340, &qword_1AC7AEA88);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v2 + 8))(v4, v1);
  (*(v9 + 32))(v0 + *(*v0 + 96), v11, v8);
  (*(v5 + 32))(v0 + *(*v0 + 104), v7, v14);
  return v0;
}

uint64_t sub_1AC6E5440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC6E54A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D358, &qword_1AC7AEAB0);
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D360, &qword_1AC7AEAB8);
  OUTLINED_FUNCTION_40();
  v8 = v7;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  OUTLINED_FUNCTION_40();
  v14 = v13;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D368, &qword_1AC7AEAC0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v3 + 8))(v6, v1);
  (*(v14 + 32))(v0 + *(*v0 + 96), v17, v12);
  (*(v8 + 32))(v0 + *(*v0 + 104), v11, v20);
  return v0;
}

uint64_t sub_1AC6E5710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D328, &qword_1AC7AEA70);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E57DC, 0, 0);
}

uint64_t sub_1AC6E57DC()
{
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1AC6E5890()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6E597C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_6();
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v3 = Strong;
      if (sub_1AC79FC58())
      {

        return MEMORY[0x1EEE6DFA0](sub_1AC6E5ADC, v3, 0);
      }
    }

    sub_1AC5C3958(v0[13], v0[14]);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_3_12(v7);
    *v8 = v9;
    v8[1] = sub_1AC6E5890;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6D9C8](v10);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_12_10();
    v5(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AC6E5ADC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6E5B40()
{
  OUTLINED_FUNCTION_85();

  sub_1AC5C3958(*(v0 + 104), *(v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_12(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0(v2);

  return MEMORY[0x1EEE6D9C8](v4);
}

uint64_t sub_1AC6E5BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D320, &qword_1AC7AEA58);
  OUTLINED_FUNCTION_10_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_12(v1);

  return sub_1AC6E5710(v2, v3, v4, v5, v6);
}

uint64_t sub_1AC6E5CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D350, &qword_1AC7AEAA8);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E5DA4, 0, 0);
}

uint64_t sub_1AC6E5DA4()
{
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0(v1);

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1AC6E5E58()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6E5F44()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_6();
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {
      v3 = Strong;
      if (sub_1AC79FC58())
      {

        return MEMORY[0x1EEE6DFA0](sub_1AC6E60A4, v3, 0);
      }
    }

    sub_1AC5C3958(v0[13], v0[14]);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_3_12(v7);
    *v8 = v9;
    v8[1] = sub_1AC6E5E58;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6D9C8](v10);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_12_10();
    v5(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AC6E60A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6E6108()
{
  OUTLINED_FUNCTION_85();

  sub_1AC5C3958(*(v0 + 104), *(v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_12(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0(v2);

  return MEMORY[0x1EEE6D9C8](v4);
}

uint64_t objectdestroy_9Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1AC6E6264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D348, &qword_1AC7AEA90);
  OUTLINED_FUNCTION_10_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_12(v1);

  return sub_1AC6E5CD8(v2, v3, v4, v5, v6);
}

__n128 sub_1AC6E65A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = a2;
  __swift_allocate_boxed_opaque_existential_0Tm(&v21);
  sub_1AC79FCB8();
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v8, a2);
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v19 = DynamicType;
  v16 = v21;
  v17 = v22;
  sub_1AC5C3968(&v19, v18);
  sub_1AC5C3978();
  v10 = *(*v3 + 16);
  sub_1AC5C1578(v10);
  v11 = *v3;
  *(v11 + 16) = v10 + 1;
  v12 = v11 + (v10 << 6);
  result = v16;
  v14 = v17;
  v15 = v18[1];
  *(v12 + 64) = v18[0];
  *(v12 + 80) = v15;
  *(v12 + 32) = result;
  *(v12 + 48) = v14;
  *v3 = v11;
  return result;
}

uint64_t sub_1AC6E6764()
{
  OUTLINED_FUNCTION_85();
  v1[11] = v13;
  v1[12] = v0;
  v1[9] = v11;
  v1[10] = v12;
  v1[7] = v2;
  v1[8] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[2] = v8;
  v1[13] = swift_conformsToProtocol();

  return MEMORY[0x1EEE6DFA0](sub_1AC6E67F8, 0, 0);
}

uint64_t sub_1AC6E67F8()
{
  v1 = sub_1AC6E8900(*(v0 + 24), *(v0 + 56), *(v0 + 80));
  *(v0 + 112) = v1;
  v2 = v1;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = *(v0 + 72);
  v10 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v9;
  *(v8 + 48) = v5;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;
  *(v8 + 72) = v4;
  *(v8 + 80) = v10;
  *(v8 + 96) = v6;
  *(v8 + 104) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 128) = v11;
  *v11 = v12;
  v11[1] = sub_1AC6E698C;
  v13 = *(v0 + 72);
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000034, 0x80000001AC7B5550, sub_1AC6EEBDC, v8, v13);
}

uint64_t sub_1AC6E698C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    v7 = sub_1AC6E6AEC;
  }

  else
  {

    v7 = sub_1AC6E6A94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6E6A94()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC6E6AEC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6E6B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a3;
  v8[10] = a5;
  v8[7] = a1;
  v8[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E6B6C()
{
  v28 = v0;
  v3 = sub_1AC6E8900(*(v0 + 56), *(v0 + 80), *(v0 + 88));
  v4 = [v3 remoteObjectProxy];
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v5 = *(v0 + 48);
  sub_1AC79FC68();
  v6 = sub_1AC7A0838();
  v8 = v7;

  if (v8)
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    v11 = *(*(v9 + 128) + 16);

    os_unfair_lock_lock(v11);
    sub_1AC5D1B84(&v24, v10);
    os_unfair_lock_unlock(v11);
    v23 = v3;
    v12 = *(v0 + 96);

    __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
    v1 = v5;
    v13 = sub_1AC6B4A94();

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v14 = sub_1AC79FDE8();
    __swift_project_value_buffer(v14, qword_1ED9386C8);
    if (v13)
    {

      OUTLINED_FUNCTION_29();

      return v15();
    }
  }

  else
  {
    __break(1u);
  }

  v22 = v1;

  v16 = sub_1AC79FDC8();
  v17 = sub_1AC7A05F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    v26 = 0;
    *v18 = 136315138;
    v27 = 0xE000000000000000;
    sub_1AC7A09C8();

    v26 = 0xD00000000000002ALL;
    v27 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v6, v8);

    v20 = sub_1AC5CFE74(v26, v27, &v25);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1AC5BC000, v16, v17, "Failed precondition: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B26EAB10](v19, -1, -1);
    v21 = OUTLINED_FUNCTION_28_10();
    MEMORY[0x1B26EAB10](v21);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6E6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E6F40()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1AC6F1674();
}

uint64_t sub_1AC6E6FC8()
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
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6E70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E70F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1AC6F20CC();
}

uint64_t sub_1AC6E7178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E7190()
{
  OUTLINED_FUNCTION_85();
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_1AC6E7224;
  v3 = OUTLINED_FUNCTION_20_10();

  return sub_1AC6998E0(v3, v4, v5, v6);
}

uint64_t sub_1AC6E7224()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1AC6EF1A0;
  }

  else
  {
    v7 = sub_1AC6EF194;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6E7324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E733C()
{
  OUTLINED_FUNCTION_85();
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_1AC6E73D0;
  v3 = OUTLINED_FUNCTION_20_10();

  return sub_1AC768D74(v3, v4, v5, v6);
}

uint64_t sub_1AC6E73D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1AC6E7534;
  }

  else
  {
    v7 = sub_1AC6E74D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6E74D0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  sub_1AC6EDCF0(v1);
  v2 = OUTLINED_FUNCTION_30_7();

  return v3(v2);
}

uint64_t sub_1AC6E7534()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  sub_1AC6EDCF0(v1);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6E75AC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6E7638;

  return sub_1AC71C0CC();
}

uint64_t sub_1AC6E7638()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *v1;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_30_7();

  return v5(v4);
}

uint64_t sub_1AC6E772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E7744()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0[2] + 16);
  v4 = (v0[3] + *v0[3]);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC6E7838;

  return v4(v1);
}

uint64_t sub_1AC6E7838()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1AC6829D8;
  }

  else
  {
    v7 = sub_1AC6E7938;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6E7968()
{
  OUTLINED_FUNCTION_85();
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1AC6E79F8;
  OUTLINED_FUNCTION_20_10();

  return sub_1AC76A520();
}

uint64_t sub_1AC6E79F8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1AC6832A0;
  }

  else
  {
    v7 = sub_1AC6E7AF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6E7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E7B2C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6E7BC4;

  return sub_1AC754264();
}

uint64_t sub_1AC6E7BC4()
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
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6E7CD0()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1AC6E7D3C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6E7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6E7DBC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_21_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_13(v1);

  return sub_1AC756978();
}

uint64_t sub_1AC6E7E44()
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
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6E7F50()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1AC6E7FC0()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6E8028(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1AC7A6D00;
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  return sub_1AC79FF98();
}

BOOL sub_1AC6E80A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(v4 + 128) + 16);

  v9 = OUTLINED_FUNCTION_19_8();
  sub_1AC5D0DD0(v9, v10, v11);
  os_unfair_lock_lock(v8);
  sub_1AC6E9A84(v4, a1, a2, a3);
  os_unfair_lock_unlock(v8);

  v12 = OUTLINED_FUNCTION_19_8();
  sub_1AC5D1128(v12, v13, v14);
  v15 = *(v4 + 144);

  v16 = OUTLINED_FUNCTION_19_8();
  sub_1AC5D0DD0(v16, v17, v18);
  return sub_1AC6ED8B0(v15, v4, a1, a2, a3);
}

id sub_1AC6E8164()
{
  v0 = [objc_opt_self() anonymousListener];
  v10 = [v0 endpoint];
  OUTLINED_FUNCTION_42_8(v10, v1, v2, v3, v4, v5, v6, v7, v9);

  return v10;
}

uint64_t sub_1AC6E8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 104);
  sub_1AC6E1468(v10, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + 104) = v13;
  return swift_endAccess();
}

uint64_t sub_1AC6E8304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC7A09D8();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 96);
  sub_1AC6E1260();
  *(a1 + 96) = v13;
  sub_1AC5D1128(v10, v11, v12);
  swift_endAccess();
}

uint64_t sub_1AC6E8444@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AC6E84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_40();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v25;
  v34 = sub_1AC6E880C();
  if (!v34)
  {
    goto LABEL_6;
  }

  v36 = v34;
  v37 = v35;
  v64 = v23;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v38 = __swift_project_value_buffer(v28, qword_1ED9386C8);
  (*(v30 + 16))(v33, v38, v28);
  v66 = v36;
  v67 = v37;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  OUTLINED_FUNCTION_32_9();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v39 = OUTLINED_FUNCTION_161();
    v40(v39);
    v66 = v36;
    v67 = v37;
    OUTLINED_FUNCTION_32_9();
    swift_dynamicCast();
LABEL_6:
    OUTLINED_FUNCTION_38_8();
    return;
  }

  swift_unknownObjectRetain();
  v41 = OUTLINED_FUNCTION_22_9();
  sub_1AC5D0DD0(v41, v42, v43);
  v44 = sub_1AC79FDC8();
  v45 = sub_1AC7A05F8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v62 = v46;
    v63 = swift_slowAlloc();
    a10 = v63;
    *v46 = 136315138;
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1AC7A09C8();
    v69 = v66;
    v70 = v67;
    MEMORY[0x1B26E8C40](0x20726F746341, 0xE600000000000000);
    v66 = v27;
    v67 = v65;
    v68 = v64;
    sub_1AC7A0AF8();
    MEMORY[0x1B26E8C40](0xD000000000000017, 0x80000001AC7B4D80);
    swift_getObjectType();
    v47 = sub_1AC7A0F78();
    MEMORY[0x1B26E8C40](v47);

    v48 = sub_1AC5CFE74(v69, v70, &a10);

    v49 = v62;
    *(v62 + 1) = v48;
    _os_log_impl(&dword_1AC5BC000, v44, v45, "Failed precondition: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v50 = OUTLINED_FUNCTION_28_10();
    MEMORY[0x1B26EAB10](v50);
    MEMORY[0x1B26EAB10](v49, -1, -1);

    v51 = OUTLINED_FUNCTION_22_9();
    sub_1AC5D1128(v51, v52, v53);
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_161();
    v55(v54);
    __break(1u);
  }

  v56 = OUTLINED_FUNCTION_22_9();
  sub_1AC5D1128(v56, v57, v58);
  swift_unknownObjectRelease();
  v59 = OUTLINED_FUNCTION_161();
  v60(v59);
  __break(1u);
}

uint64_t sub_1AC6E880C()
{
  OUTLINED_FUNCTION_36_8();
  v1 = *(*(v0 + 128) + 16);

  v2 = OUTLINED_FUNCTION_5_12();
  sub_1AC5D0DD0(v2, v3, v4);
  os_unfair_lock_lock(v1);
  swift_beginAccess();
  v5 = *(v0 + 96);
  if (*(v5 + 16) && (v6 = OUTLINED_FUNCTION_5_12(), v9 = sub_1AC5D0E20(v6, v7, v8), (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 16 * v9);
    swift_endAccess();

    v11(&v18, v12);

    v13 = v18;
  }

  else
  {
    swift_endAccess();
    v13 = 0;
  }

  os_unfair_lock_unlock(v1);

  v14 = OUTLINED_FUNCTION_5_12();
  sub_1AC5D1128(v14, v15, v16);
  return v13;
}

id sub_1AC6E8900(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1AC7A09D8();
  swift_dynamicCast();
  v9 = sub_1AC5C7E18();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    switch(v15)
    {
      case 1u:
        sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

        v11 = sub_1AC6E9FC0(a1, v14, 0);
        goto LABEL_7;
      case 2u:
        v11 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
        goto LABEL_7;
      case 3u:
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
        sub_1AC7A0D18();
        result = sub_1AC7A0B78();
        __break(1u);
        return result;
      default:
        sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

        v11 = sub_1AC6E9F4C(a1, v14);
LABEL_7:
        v10 = v11;
        v12 = sub_1AC6EE63C(a1, v3);
        [v10 setRemoteObjectInterface_];

        sub_1AC6E9C00(v10, a1, v14, v15);
        sub_1AC6EE830(v10, a1, 0, 0, v4, a2, a3);
        break;
    }
  }

  sub_1AC5D1128(a1, v14, v15);
  return v10;
}

uint64_t sub_1AC6E8BD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a8;
  v59 = a7;
  v57 = a6;
  v51 = a5;
  v60 = a2;
  v61 = a4;
  v52 = a3;
  v62 = a13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v14 = sub_1AC7A01E8();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = *(v15 + 16);
  v53 = a1;
  v49 = v15 + 16;
  v48 = v19;
  v19(&v46 - v17, a1, v14);
  v20 = *(v15 + 80);
  v50 = v16;
  v21 = swift_allocObject();
  v22 = v62;
  *(v21 + 2) = v63;
  *(v21 + 3) = a9;
  v54 = a9;
  v55 = a10;
  *(v21 + 4) = a10;
  *(v21 + 5) = a11;
  v58 = a11;
  v56 = a12;
  *(v21 + 6) = a12;
  *(v21 + 7) = v22;
  v47 = *(v15 + 32);
  v47(&v21[(v20 + 64) & ~v20], v18, v14);
  v70 = sub_1AC6EEC20;
  v71 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_1AC6E9230;
  v69 = &block_descriptor_91;
  v23 = _Block_copy(&aBlock);

  v24 = [v60 remoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v60 = v65;
  sub_1AC79FC68();
  v25 = sub_1AC7A0838();
  v27 = v26;

  if (v27)
  {
    v65 = MEMORY[0x1E69E7CC0];
    v28 = v52;
    v29 = *(*(v52 + 128) + 16);

    os_unfair_lock_lock(v29);
    sub_1AC5D1B84(&v65, v51);
    os_unfair_lock_unlock(v29);

    v48(v18, v53, v14);
    v30 = (v20 + 80) & ~v20;
    v31 = swift_allocObject();
    v33 = v54;
    v32 = v55;
    *(v31 + 2) = v63;
    *(v31 + 3) = v33;
    v34 = v58;
    *(v31 + 4) = v32;
    *(v31 + 5) = v34;
    v35 = v62;
    *(v31 + 6) = v56;
    *(v31 + 7) = v35;
    v36 = v57;
    *(v31 + 8) = v28;
    *(v31 + 9) = v36;
    v47(&v31[v30], v18, v14);
    __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));

    v14 = v60;
    v37 = sub_1AC6B4A94();

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v38 = sub_1AC79FDE8();
    __swift_project_value_buffer(v38, qword_1ED9386C8);
    if (v37)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v40 = v27;

  v41 = sub_1AC79FDC8();
  v42 = sub_1AC7A05F8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v64 = v44;
    *v43 = 136315138;
    aBlock = 0;
    v67 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v67 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v25, v40);

    v45 = sub_1AC5CFE74(aBlock, v67, &v64);

    *(v43 + 4) = v45;
    _os_log_impl(&dword_1AC5BC000, v41, v42, "Failed precondition: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B26EAB10](v44, -1, -1);
    MEMORY[0x1B26EAB10](v43, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6E91C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  sub_1AC7A01E8();
  return sub_1AC7A01C8();
}

void sub_1AC6E9230(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AC6E9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v27 - v20;
  sub_1AC5D1E4C(v19, v37, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v38)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v37, v36, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
LABEL_5:
    sub_1AC6E96E0(a3, a1, a7, v15);
    (*(v12 + 16))(v18, v15, a7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    sub_1AC7A01E8();
    sub_1AC7A01D8();
    (*(v12 + 8))(v15, a7);
    return sub_1AC5C720C(v37, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  v29 = a2;
  v28 = v12;
  v30 = a4;
  sub_1AC5D9384(&v35, v32);
  v23 = v33;
  v22 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v24 = *(v22 + 24);
  v31[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v31);
  v24(v23, v22);
  sub_1AC6E96E0(a3, v31, a7, v21);
  sub_1AC5C720C(v31, &unk_1EB56C620, &unk_1AC7A7A00);
  v26 = v28;
  (*(v28 + 16))(v18, v21, a7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  sub_1AC7A01E8();
  sub_1AC7A01D8();
  (*(v26 + 8))(v21, a7);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return sub_1AC5C720C(v37, &unk_1EB56C620, &unk_1AC7A7A00);
}

uint64_t sub_1AC6E96E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AC5D1E4C(a2, v33, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v9 = v34;
  v10 = dynamic_cast_existential_1_conditional(a1, a1, MEMORY[0x1E69E8158]);
  if (v10)
  {
    v16 = v11;
    sub_1AC6EB2E4(v10, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v34);
    v18 = v17;

    if (!v4)
    {
      v28 = v18;
      v29 = v16;
      v19 = &unk_1EB56D420;
      v20 = &qword_1AC7AF0B0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      swift_dynamicCast();
      return sub_1AC5C720C(v33, &unk_1EB56C620, &unk_1AC7A7A00);
    }

    return sub_1AC5C720C(v33, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  v21 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for SomeOptionalDistributedActor);
  if (!v21)
  {

LABEL_9:
    sub_1AC5C720C(v33, &unk_1EB56C620, &unk_1AC7A7A00);
    return sub_1AC6EB6A8(a2, a3, a4);
  }

  v23 = v21;
  v24 = v22;
  v31 = v21;
  v32 = v22;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v28);
  sub_1AC6EB564(v9, v23, v24, boxed_opaque_existential_0Tm);

  if (!v4)
  {
    v19 = &unk_1EB56BA10;
    v20 = &unk_1AC7A7AC0;
    goto LABEL_11;
  }

  __swift_deallocate_boxed_opaque_existential_0Tm(&v28);
  return sub_1AC5C720C(v33, &unk_1EB56C620, &unk_1AC7A7A00);
}

uint64_t sub_1AC6E98DC()
{
  swift_beginAccess();
  result = OUTLINED_FUNCTION_11_13();
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = v5;
LABEL_7:
      OUTLINED_FUNCTION_16_11(v6);
    }
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v6 >= v2)
    {
      break;
    }

    ++v5;
    if (*(v1 + 8 * v6))
    {
      v5 = v6;
      goto LABEL_7;
    }
  }

  swift_beginAccess();
  result = OUTLINED_FUNCTION_11_13();
  for (i = 0; ; ++i)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      sub_1AC5C720C(v0 + 56, &qword_1EB56B9D0, &unk_1AC7AF0F0);

      return v0;
    }

    if (*(v1 + 8 * v8))
    {
      for (j = v8; ; v8 = j)
      {
        OUTLINED_FUNCTION_16_11(v8);
      }
    }
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AC6E9A50()
{
  sub_1AC6E98DC();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

void *sub_1AC6E9A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = sub_1AC6EE24C(a2, a3, a4);
  v9 = v8;
  swift_endAccess();
  sub_1AC5C3958(v7, v9);
  swift_beginAccess();
  v10 = sub_1AC6EE534(a2, a3, a4, &unk_1EB56D490, &qword_1AC7AE770, &qword_1ED9372C8, 0x1E696B0D8);
  swift_endAccess();
  [v10 invalidate];

  swift_beginAccess();
  v11 = sub_1AC6EE34C(a2, a3, a4);
  swift_endAccess();

  swift_beginAccess();
  v12 = sub_1AC6EE434(a2, a3, a4);
  v14 = v13;
  swift_endAccess();
  return sub_1AC6EEDA4(v12, v14);
}

void sub_1AC6E9C00(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = *(*(v4 + 144) + 16);

  sub_1AC5D0DD0(a2, a3, a4);
  v10 = a1;
  os_unfair_lock_lock(v9);
  sub_1AC6E9CC4(v4, a2, a3, a4, v10);
  os_unfair_lock_unlock(v9);

  sub_1AC5D1128(a2, a3, a4);
}

uint64_t sub_1AC6E9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 136);
  sub_1AC6E14B8(v10, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + 136) = v13;
  return swift_endAccess();
}

void sub_1AC6E9D74(void *a1, void *a2, uint64_t a3)
{
  v7 = *(*(v3 + 144) + 16);

  sub_1AC5D0DD0(a1, a2, a3);
  os_unfair_lock_lock(v7);
  sub_1AC6E9E20(v3, a1, a2, a3);
  os_unfair_lock_unlock(v7);

  sub_1AC5D1128(a1, a2, a3);
}

uint64_t sub_1AC6E9E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = sub_1AC5D0E20(a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D268, &qword_1AC7AE780);
    sub_1AC7A0B18();
    sub_1AC5D1128(*(*(v13 + 48) + 24 * v10), *(*(v13 + 48) + 24 * v10 + 8), *(*(v13 + 48) + 24 * v10 + 16));
    v11 = *(*(v13 + 56) + 8 * v10);
    sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);
    sub_1AC5EDAF0();
    sub_1AC7A0B38();
    *(a1 + 136) = v13;
  }

  return swift_endAccess();
}

id sub_1AC6E9F4C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79FF58();

  v4 = [v2 initWithServiceName_];

  return v4;
}

id sub_1AC6E9FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1AC79FF58();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1AC6EA03C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v10);
  sub_1AC7A09D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D448, &unk_1AC7AF100);
  swift_dynamicCast();
  v5 = v2[16];

  sub_1AC5D0DD0(a1, v8, v9);
  swift_unknownObjectRetain();
  v6 = sub_1AC6ED7CC(v5, v2, a1, v8, v9, a1, a2);
  sub_1AC5D1128(a1, v8, v9);
  return v6;
}

uint64_t sub_1AC6EA1A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1AC6EA1E4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v14 = sub_1AC79FF68();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v18 = sub_1AC6EDD70(v14, v16, 4099, 0);
  sub_1AC5D1E4C(a1 + 56, v21, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (AssociatedTypeWitness)
  {
    __swift_project_boxed_opaque_existential_1(v21, AssociatedTypeWitness);
    sub_1AC6B4154(a1, a2, a3, a4, a5, a6, v18);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    sub_1AC5C720C(v21, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  }

  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v21);
  sub_1AC7A09D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D448, &unk_1AC7AF100);
  swift_dynamicCast();
  sub_1AC6E9D74(a3, v19, v20);
  sub_1AC5D1128(a3, v19, v20);
  if (a7)
  {
    a7();
  }

  [a2 setInterruptionHandler_];
  [a2 setInvalidationHandler_];
}

id sub_1AC6EA410(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = a1;
  sub_1AC7A09D8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v29 = sub_1AC79FDE8();
      __swift_project_value_buffer(v29, qword_1ED9386C8);
      swift_unknownObjectRetain();
      v30 = sub_1AC79FDC8();
      v31 = sub_1AC7A05F8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39 = v33;
        *v32 = 136315138;
        swift_unknownObjectRelease();
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0x7020746F6E6E6143, 0xEC00000020737361);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
        sub_1AC7A0AF8();
        MEMORY[0x1B26E8C40](0xD000000000000040, 0x80000001AC7B7FC0);
        v34 = sub_1AC5CFE74(0, 0xE000000000000000, &v39);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_1AC5BC000, v30, v31, "Failed precondition: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1B26EAB10](v33, -1, -1);
        MEMORY[0x1B26EAB10](v32, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_17:
      swift_once();
    }
  }

  v8 = v36;
  v7 = v37;
  v9 = v38;
  if (v38 != 2)
  {
    v27 = v36;
    v28 = v37;
LABEL_11:
    sub_1AC5D1128(v27, v28, v9);
    goto LABEL_12;
  }

  swift_beginAccess();
  v10 = *(v2 + 104);
  v11 = v36;
  v12 = sub_1AC6DC8C4(v36, v37, 2, v10);
  if (!v12)
  {
    swift_endAccess();
    sub_1AC5D1128(v36, v37, 2);
    v27 = v36;
    v28 = v37;
    v9 = 2;
    goto LABEL_11;
  }

  v13 = v12;
  swift_endAccess();
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  if (*(*(v3 + 112) + 16) && (, sub_1AC5D0E20(v36, v37, 2), v16 = v15, , (v16 & 1) != 0))
  {
    sub_1AC5D1128(v36, v37, 2);
  }

  else
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 24) = a2;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 2) = v17;
    *(v19 + 3) = v18;
    *(v19 + 4) = ObjectType;
    *(v19 + 5) = a2;
    v20 = type metadata accessor for NSXPCActorSystem.ArgumentListenerDelegate();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtCC6Speech16NSXPCActorSystemP33_94CB77BB9A0C7D73CCFFEC4A056F3C0724ArgumentListenerDelegate_shouldAcceptNewConnectionToActor];
    *v22 = sub_1AC6EEB50;
    v22[1] = v19;
    v35.receiver = v21;
    v35.super_class = v20;
    v23 = objc_msgSendSuper2(&v35, sel_init);
    swift_beginAccess();
    sub_1AC5D0DD0(v8, v7, 2);
    v24 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v3 + 112);
    sub_1AC6E1490(v24, v8, v7, 2, isUniquelyReferenced_nonNull_native);
    *(v3 + 112) = v39;
    sub_1AC5D1128(v8, v7, 2);
    swift_endAccess();
    [v13 setDelegate_];
    [v13 activate];
    sub_1AC5D1128(v8, v7, 2);
  }

  return v11;
}

uint64_t sub_1AC6EA91C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1AC5D1E4C(result + 56, &v29, &qword_1EB56B9D0, &unk_1AC7AF0F0);
    if (v30)
    {
      sub_1AC5D9384(&v29, v31);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = *(a3 + 24);
        sub_1AC68A30C(v7 + 16, &v29);
        v11 = [a1 endpoint];
        v12 = [a1 remoteObjectInterface];
        if (v12)
        {
          v13 = v12;
          __swift_project_boxed_opaque_existential_1(&v29, v30);
          v14 = sub_1AC6B3C48(v7, v11, 0, 3, v13);
          v24 = v14;
          if (v14)
          {
            v25 = v15;
            sub_1AC6E9C00(a1, v11, 0, 3);

LABEL_17:
            v26 = sub_1AC6EA03C(v9, v10);
            v28 = v27;
            [a1 setExportedInterface_];
            [a1 setExportedObject_];
            sub_1AC6EADF0(a1, v9, v10, v24, v25);
            __swift_project_boxed_opaque_existential_1(v31, v31[3]);
            sub_1AC6B3F74(v7, a1, v9);

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0(&v29);
            __swift_destroy_boxed_opaque_existential_0(v31);
            return 1;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = 0;
        goto LABEL_17;
      }

      if (off_1ED937D60 != -1)
      {
        swift_once();
      }

      v16 = sub_1AC79FDE8();
      __swift_project_value_buffer(v16, qword_1ED9386C8);
      v17 = sub_1AC79FDC8();
      v18 = sub_1AC7A0618();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v29 = v20;
        *v19 = 136315138;
        v21 = sub_1AC7A0F78();
        v23 = sub_1AC5CFE74(v21, v22, &v29);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_1AC5BC000, v17, v18, "Remote connection attempt to argument of type %s refused because argument was deallocated", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B26EAB10](v20, -1, -1);
        MEMORY[0x1B26EAB10](v19, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {

      sub_1AC5C720C(&v29, &qword_1EB56B9D0, &unk_1AC7AF0F0);
    }

    return 0;
  }

  return result;
}

id sub_1AC6EADF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [a1 interruptionHandler];
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1AC6EF19C;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = a1;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = v12;
  v14[9] = v13;
  v27 = sub_1AC6EEB5C;
  v28 = v14;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_7;
  v15 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v16 = a1;
  swift_unknownObjectRetain();

  [v16 setInterruptionHandler_];
  _Block_release(v15);
  v17 = [v16 invalidationHandler];
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v17 = sub_1AC6EEB78;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v16;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = v17;
  v19[9] = v18;
  v27 = sub_1AC6EEB60;
  v28 = v19;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_54;
  v20 = _Block_copy(&v23);

  v21 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [v21 setInvalidationHandler_];
  _Block_release(v20);
  return [v21 activate];
}

void sub_1AC6EB0A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = sub_1AC79FF68();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v14 = sub_1AC6EDD70(v10, v12, 4097, 0);
  sub_1AC5D1E4C(a1 + 56, v16, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v17)
  {
    [a2 invalidate];
  }

  v15 = sub_1AC5C720C(v16, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (a7)
  {
    a7(v15);
  }
}

void sub_1AC6EB188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v14 = sub_1AC79FF68();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v18 = sub_1AC6EDD70(v14, v16, 4099, 0);
  sub_1AC5D1E4C(a1 + 56, v20, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (!v21)
  {
    v19 = sub_1AC5C720C(v20, &qword_1EB56B9D0, &unk_1AC7AF0F0);
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1AC6B4154(a1, a2, a3, a4, a5, a6, v18);
  v19 = __swift_destroy_boxed_opaque_existential_0(v20);
  if (a7)
  {
LABEL_3:
    a7(v19);
  }

LABEL_4:
  [a2 setInterruptionHandler_];
  [a2 setInvalidationHandler_];
}

void sub_1AC6EB2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_0();
  v37[2] = v22;
  v38 = v21;
  v23 = v20;
  v25 = v24;
  v37[1] = *v23;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_40();
  v39 = v26;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v27);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_40();
  v30 = v29;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v37 - v32;
  if (v25)
  {
    v40 = v25;
    v41 = 0;
    v42 = 2;
    v37[0] = v25;
    swift_dynamicCast();

    swift_dynamicCast();
    sub_1AC79FC08();

    v34 = OUTLINED_FUNCTION_31_8();
    v35(v34);
    (*(v30 + 8))(v33, AssociatedTypeWitness);
  }

  else
  {
    sub_1AC6015E8();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_38_8();
}

void sub_1AC6EB564(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1)
  {
    v8 = *(a3 + 32);
    v9 = a1;
    v10 = v8(a2, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = v9;
    sub_1AC6EB2E4(v10, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v14, v15, v16, v17, v18, a4, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);

    if (!v4)
    {
      swift_dynamicCast();
    }
  }

  else
  {
    sub_1AC7A0CD8();
  }
}

uint64_t sub_1AC6EB6A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1AC7A0798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-v8];
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    sub_1AC6015E8();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1AC6EB86C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  v11 = a1[15];
  if (*(v11 + 16))
  {
    v12 = sub_1AC5D0E20(a2, a3, a4);
    if (v13)
    {
      v28 = *(*(v11 + 56) + 16 * v12);
      swift_endAccess();
      *a6 = v28;
      v14 = v28;
      return swift_unknownObjectRetain();
    }
  }

  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v16 = sub_1AC6B3B84();
  if (!v16)
  {
LABEL_8:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v21 = sub_1AC79FDE8();
      __swift_project_value_buffer(v21, qword_1ED9386C8);
      swift_unknownObjectRetain();
      v22 = sub_1AC79FDC8();
      v23 = sub_1AC7A05F8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29 = v25;
        *v24 = 136315138;
        swift_unknownObjectRelease();
        sub_1AC7A09C8();
        MEMORY[0x1B26E8C40](0xD000000000000041, 0x80000001AC7B8010);
        swift_getObjectType();
        v26 = sub_1AC7A0F78();
        MEMORY[0x1B26E8C40](v26);

        v27 = sub_1AC5CFE74(0, 0xE000000000000000, &v29);

        *(v24 + 4) = v27;
        _os_log_impl(&dword_1AC5BC000, v22, v23, "Failed precondition: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1B26EAB10](v25, -1, -1);
        MEMORY[0x1B26EAB10](v24, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_13:
      swift_once();
    }
  }

  v17 = v16;
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v18 = sub_1AC6B3A5C();
  if (!v18)
  {

    goto LABEL_8;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = v17;
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v29 = a1[15];
  sub_1AC6E1600(v20, v19, a2, a3, a4);
  a1[15] = v29;
  result = swift_endAccess();
  *a6 = v20;
  *(a6 + 8) = v19;
  return result;
}

id sub_1AC6EBC90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSXPCActorSystem.ArgumentListenerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC6EBCDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6EBCF0()
{
  OUTLINED_FUNCTION_85();
  v1 = dynamic_cast_existential_1_unconditional(v0[3], v0[3], &protocol descriptor for NSXPCActorSerializable);
  v3 = v2;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AC61DAF0;
  v5 = v0[2];

  return sub_1AC6EDE20(v1, v5, v1, v3);
}

uint64_t sub_1AC6EBDA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_0(0x65636976726573, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_29_12();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_5_0(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x726F746361 && a2 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_5_0(0x726F746361, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001AC7B80D0 == a2)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_5_0(0xD000000000000010, 0x80000001AC7B80D0);

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1AC6EBEBC(unsigned __int8 a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6EBF04(char a1)
{
  result = 0x65636976726573;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_29_12();
      break;
    case 2:
      result = 0x726F746361;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1AC6EBFBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AC6E8164();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t sub_1AC6EC054()
{
  swift_conformsToProtocol();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC6E6764();
}

uint64_t sub_1AC6EC15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1AC5C4D48;

  return sub_1AC6E6B50(a1, a2, a3, v14, a5, v15, a7);
}

uint64_t sub_1AC6EC228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1AC5C4D48;

  return sub_1AC6EBCDC(a2, a3);
}

uint64_t sub_1AC6EC2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6EBDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6EC308(uint64_t a1)
{
  v2 = sub_1AC6EEDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6EC344(uint64_t a1)
{
  v2 = sub_1AC6EEDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AC6EC380()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D4D0, &qword_1AC7AF140);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1AC6EEDE4();
  sub_1AC7A0F38();
  switch(v1)
  {
    case 2:
      objc_opt_self();
      v7 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D4D8, &qword_1AC7AF148);
      v8 = sub_1AC7A0D98();
      v9 = OUTLINED_FUNCTION_39_7(v8, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
      swift_unknownObjectRelease();
      v10 = 0;
      if (!v9)
      {
        goto LABEL_8;
      }

      v11 = sub_1AC79F868();
      v13 = v12;

      sub_1AC64FB70();
      OUTLINED_FUNCTION_27_10();
      v14 = OUTLINED_FUNCTION_161();
      v15(v14);
      v16 = v11;
      v17 = v13;
      goto LABEL_6;
    case 3:
      objc_opt_self();
      v18 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D4D8, &qword_1AC7AF148);
      v19 = sub_1AC7A0D98();
      v20 = OUTLINED_FUNCTION_39_7(v19, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
      swift_unknownObjectRelease();
      v10 = 0;
      if (v20)
      {
        v21 = sub_1AC79F868();
        v23 = v22;

        sub_1AC64FB70();
        OUTLINED_FUNCTION_27_10();
        v24 = OUTLINED_FUNCTION_161();
        v25(v24);
        v16 = v21;
        v17 = v23;
LABEL_6:
        sub_1AC5C28A8(v16, v17);
      }

      else
      {
LABEL_8:
        v26 = v10;
        sub_1AC79F748();

        swift_willThrow();
LABEL_9:
        v27 = OUTLINED_FUNCTION_161();
        v28(v27);
      }

      OUTLINED_FUNCTION_38_8();
      return;
    default:
      sub_1AC7A0C68();
      goto LABEL_9;
  }
}

void sub_1AC6EC6B0()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D4B0, &qword_1AC7AF138);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AC6EEDE4();
  sub_1AC7A0F18();
  if (v0)
  {
    goto LABEL_9;
  }

  v4 = sub_1AC7A0C58();
  if (!*(v4 + 16))
  {

    v6 = sub_1AC7A0A38();
    swift_allocError();
    v8 = v7;
    sub_1AC7A0C18();
    sub_1AC7A0A18();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B00], v6);
    swift_willThrow();
    v13 = OUTLINED_FUNCTION_13_7();
    v14(v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_38_8();
    return;
  }

  v5 = *(v4 + 32);

  switch(v5)
  {
    case 2:
      sub_1AC64FBC4();
      OUTLINED_FUNCTION_23_9(MEMORY[0x1E6969080]);
      v9 = v19;
      v10 = v20;
      sub_1AC5CF764(0, &qword_1EB56C660, 0x1E696ACD0);
      v11 = sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      if (OUTLINED_FUNCTION_41_8(v11))
      {
        goto LABEL_11;
      }

      __break(1u);
LABEL_7:
      sub_1AC64FBC4();
      OUTLINED_FUNCTION_23_9(MEMORY[0x1E6969080]);
      v9 = v19;
      v10 = v20;
      sub_1AC5CF764(0, &qword_1EB56C660, 0x1E696ACD0);
      v12 = sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      if (OUTLINED_FUNCTION_41_8(v12))
      {
LABEL_11:
        v17 = OUTLINED_FUNCTION_13_7();
        v18(v17);
        sub_1AC5C28A8(v9, v10);
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 3:
      goto LABEL_7;
    default:
      sub_1AC7A0C28();
      v15 = OUTLINED_FUNCTION_13_7();
      v16(v15);
      goto LABEL_9;
  }
}

uint64_t sub_1AC6ECA28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_16;
      }

LABEL_7:
      sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      result = sub_1AC7A0758() & 1;
      break;
    default:
      if (a6)
      {
LABEL_16:
        result = 0;
      }

      else
      {
LABEL_9:
        if (a1 == a4 && a2 == a5)
        {
          result = 1;
        }

        else
        {

          result = sub_1AC7A0D38();
        }
      }

      break;
  }

  return result;
}

uint64_t sub_1AC6ECB1C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AC7A0E78();
  sub_1AC5D0EA4(v7, a1, a2, a3);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6ECBB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AC7A0E78();
  sub_1AC5D0EA4(v6, v2, v3, v4);
  return sub_1AC7A0EC8();
}

void sub_1AC6ECC08(uint64_t a1@<X8>)
{
  sub_1AC6EC6B0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

void sub_1AC6ECC58()
{
  if (off_1ED937D60 != -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v0 = sub_1AC79FDE8();
    __swift_project_value_buffer(v0, qword_1ED9386C8);
    v1 = sub_1AC79FDC8();
    v2 = sub_1AC7A05F8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v6 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_1AC5CFE74(0xD000000000000037, 0x80000001AC7B7F80, &v6);
      _os_log_impl(&dword_1AC5BC000, v1, v2, "Failed precondition: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      v5 = OUTLINED_FUNCTION_28_10();
      MEMORY[0x1B26EAB10](v5);
      MEMORY[0x1B26EAB10](v3, -1, -1);
    }

    __break(1u);
LABEL_5:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }
}

double sub_1AC6ECD8C(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  *&result = sub_1AC6E65A0(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1AC6ECE68()
{
  OUTLINED_FUNCTION_85();
  swift_conformsToProtocol();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC6ECEC8(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1AC5C4D48;

  return sub_1AC6ECE68();
}

uint64_t sub_1AC6ECF6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return j__OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC6ECFF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return j__OUTLINED_FUNCTION_28_4();
}

void sub_1AC6ED094(uint64_t a1, uint64_t a2)
{
  sub_1AC79FBF8();
  sub_1AC7A09D8();
  sub_1AC6E80A4(v2, v3, v4);

  sub_1AC5D1128(v2, v3, v4);
}

uint64_t *sub_1AC6ED128()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = swift_unknownObjectRetain();
  v5 = sub_1AC70A9F8(v4);
  v7 = v6;
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v8 = sub_1AC79FDE8();
  __swift_project_value_buffer(v8, qword_1ED9386C8);

  v9 = sub_1AC79FDC8();
  v10 = sub_1AC7A05D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136446466;
    swift_getObjectType();
    v12 = sub_1AC7A0F78();
    v14 = v2;
    v15 = sub_1AC5CFE74(v12, v13, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1AC5CFE74(v5, v7, &v20);

    *(v11 + 14) = v16;
    v2 = v14;
    _os_log_impl(&dword_1AC5BC000, v9, v10, "Invalidate and deinit %{public}s %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    v17 = OUTLINED_FUNCTION_28_10();
    MEMORY[0x1B26EAB10](v17);
    MEMORY[0x1B26EAB10](v11, -1, -1);
  }

  else
  {
  }

  v18 = *(v2 + 88);
  swift_unknownObjectRetain();
  sub_1AC6ED094(v3, v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1AC6ED370()
{
  sub_1AC6ED128();
  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6ED3A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6ED3E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1AC6ED690(a1, v12, a2);
  if (v2)
  {
    v16 = *(v6 + 32);
    v16(v9, v12, v5);
    if (sub_1AC7A0D08())
    {
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      swift_allocError();
      return (v16)(v17, v9, v5);
    }
  }

  return result;
}

uint64_t sub_1AC6ED690@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void sub_1AC6ED760(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t sub_1AC6ED7CC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  os_unfair_lock_lock(v13);
  sub_1AC6EB86C(a2, a3, a4, a5, &v15);
  os_unfair_lock_unlock(v13);

  if (!v7)
  {
    a7 = v15;
  }

  sub_1AC5D1128(a3, a4, a5);
  swift_unknownObjectRelease();
  return a7;
}

BOOL sub_1AC6ED8B0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = sub_1AC6EE534(a3, a4, a5, &qword_1EB56D268, &qword_1AC7AE780, &qword_1ED9372C0, 0x1E696B0B8);
  swift_endAccess();
  if (v9)
  {
    [v9 invalidate];
  }

  os_unfair_lock_unlock(v8);

  sub_1AC5D1128(a3, a4, a5);
  return v9 == 0;
}

uint64_t sub_1AC6ED9EC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AC5D0DD0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for NSXPCActorID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AC5D0DD0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AC5D1128(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for NSXPCActorID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AC5D1128(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for NSXPCActorID(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for NSXPCActorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AC6EDB94()
{
  result = qword_1ED937950;
  if (!qword_1ED937950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED937950);
  }

  return result;
}

unint64_t sub_1AC6EDBEC()
{
  result = qword_1EB56D400;
  if (!qword_1EB56D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D400);
  }

  return result;
}

unint64_t sub_1AC6EDC44()
{
  result = qword_1EB56D408;
  if (!qword_1EB56D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D408);
  }

  return result;
}

unint64_t sub_1AC6EDC9C()
{
  result = qword_1EB56D410;
  if (!qword_1EB56D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D410);
  }

  return result;
}

id sub_1AC6EDD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC79FF58();

  if (a4)
  {
    v8 = sub_1AC79FE18();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1AC6EDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6EDED8, 0, 0);
}

uint64_t sub_1AC6EDED8()
{
  OUTLINED_FUNCTION_85();
  sub_1AC7A0128();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6EDF78;

  return sub_1AC6ECE68();
}

uint64_t sub_1AC6EDF78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1AC6EE0E0;
  }

  else
  {
    v7 = sub_1AC6EE078;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC6EE078()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_37_8();
  v1(v0);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC6EE0E0()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_37_8();
  v1(v0);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6EE14C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AC6E08C4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
  sub_1AC7A0B18();
  v6 = *(v10 + 48);
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_80();
  sub_1AC6E34BC(v6 + *(v7 + 72) * v5);
  v8 = *(*(v10 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4F0, &unk_1AC7AF180);
  sub_1AC6EEE38();
  sub_1AC7A0B38();
  *v2 = v10;
  return v8;
}

uint64_t sub_1AC6EE24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1AC5D0E20(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4A0, &qword_1AC7AE768);
  sub_1AC7A0B18();
  sub_1AC5D1128(*(*(v10 + 48) + 24 * v7), *(*(v10 + 48) + 24 * v7 + 8), *(*(v10 + 48) + 24 * v7 + 16));
  v8 = *(*(v10 + 56) + 16 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CDF0, &qword_1AC7AF130);
  sub_1AC5EDAF0();
  sub_1AC7A0B38();
  *v4 = v10;
  return v8;
}

uint64_t sub_1AC6EE34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1AC5D0E20(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D260, &qword_1AC7AE778);
  sub_1AC7A0B18();
  sub_1AC5D1128(*(*(v10 + 48) + 24 * v7), *(*(v10 + 48) + 24 * v7 + 8), *(*(v10 + 48) + 24 * v7 + 16));
  v8 = *(*(v10 + 56) + 8 * v7);
  type metadata accessor for NSXPCActorSystem.ArgumentListenerDelegate();
  sub_1AC5EDAF0();
  sub_1AC7A0B38();
  *v4 = v10;
  return v8;
}

uint64_t sub_1AC6EE434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1AC5D0E20(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D270, &qword_1AC7AE788);
  sub_1AC7A0B18();
  sub_1AC5D1128(*(*(v10 + 48) + 24 * v7), *(*(v10 + 48) + 24 * v7 + 8), *(*(v10 + 48) + 24 * v7 + 16));
  v8 = *(*(v10 + 56) + 16 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D480, &qword_1AC7AC100);
  sub_1AC5EDAF0();
  sub_1AC7A0B38();
  *v4 = v10;
  return v8;
}

uint64_t sub_1AC6EE534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v12 = v7;
  v13 = sub_1AC5D0E20(a1, a2, a3);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1AC7A0B18();
  sub_1AC5D1128(*(*(v18 + 48) + 24 * v15), *(*(v18 + 48) + 24 * v15 + 8), *(*(v18 + 48) + 24 * v15 + 16));
  v16 = *(*(v18 + 56) + 8 * v15);
  sub_1AC5CF764(0, a6, a7);
  sub_1AC5EDAF0();
  sub_1AC7A0B38();
  *v12 = v18;
  return v16;
}

uint64_t sub_1AC6EE63C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  result = sub_1AC6B4790();
  if (!result)
  {
    if (off_1ED937D60 != -1)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v3 = sub_1AC79FDE8();
      __swift_project_value_buffer(v3, qword_1ED9386C8);
      swift_unknownObjectRetain();
      v4 = sub_1AC79FDC8();
      v5 = sub_1AC7A05F8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v10 = v7;
        *v6 = 136315138;
        swift_unknownObjectRelease();
        sub_1AC7A09C8();

        swift_getObjectType();
        v8 = sub_1AC7A0F78();
        MEMORY[0x1B26E8C40](v8);

        v9 = sub_1AC5CFE74(0xD00000000000002CLL, 0x80000001AC7B8060, &v10);

        *(v6 + 4) = v9;
        _os_log_impl(&dword_1AC5BC000, v4, v5, "Failed precondition: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1B26EAB10](v7, -1, -1);
        MEMORY[0x1B26EAB10](v6, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_7:
      swift_once();
    }
  }

  return result;
}

id sub_1AC6EE830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [a1 interruptionHandler];
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_1AC6EF19C;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a7;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = v13;
  v15[9] = v14;
  v28 = sub_1AC6EF198;
  v29 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_67;
  v16 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v17 = a1;
  swift_unknownObjectRetain();

  [v17 setInterruptionHandler_];
  _Block_release(v16);
  v18 = [v17 invalidationHandler];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v18 = sub_1AC6EF19C;
  }

  else
  {
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = v17;
  v20[4] = a2;
  v20[5] = a7;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = v18;
  v20[9] = v19;
  v28 = sub_1AC6EEBA8;
  v29 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_73;
  v21 = _Block_copy(&aBlock);

  v22 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [v22 setInvalidationHandler_];
  _Block_release(v21);
  sub_1AC5D1E4C(a5 + 56, &aBlock, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v27);
    sub_1AC6B45B0(a5, v22, a2);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    sub_1AC5C720C(&aBlock, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  }

  return [v22 activate];
}

uint64_t sub_1AC6EEC20()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v5 = *(sub_1AC7A01E8() - 8);
  v6 = v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1AC6E91C4(v0, v6, v2, v3, v4);
}

uint64_t sub_1AC6EECE4()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v5 = *(sub_1AC7A01E8() - 8);
  return sub_1AC6E9298(v0, *(v1 + 64), *(v1 + 72), v1 + ((*(v5 + 80) + 80) & ~*(v5 + 80)), v2, v3, v4);
}

void *sub_1AC6EEDA4(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1AC6EEDE4()
{
  result = qword_1EB56D4B8;
  if (!qword_1EB56D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D4B8);
  }

  return result;
}

unint64_t sub_1AC6EEE38()
{
  result = qword_1EB56B3F8;
  if (!qword_1EB56B3F8)
  {
    type metadata accessor for SpeechRecognizerSupportedFeatures(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B3F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NSXPCActorID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NSXPCActorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC6EF080()
{
  result = qword_1EB56D508;
  if (!qword_1EB56D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D508);
  }

  return result;
}

unint64_t sub_1AC6EF0D8()
{
  result = qword_1EB56D510;
  if (!qword_1EB56D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D510);
  }

  return result;
}

unint64_t sub_1AC6EF130()
{
  result = qword_1EB56D518;
  if (!qword_1EB56D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D518);
  }

  return result;
}

id OUTLINED_FUNCTION_39_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_1AC6EF218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = objc_allocWithZone(type metadata accessor for AssetsInstallationRequest());
  sub_1AC6EF678(a1, a2, a3);
  *&v4[OBJC_IVAR____TtC6Speech24AssetInstallationRequest_request] = v10;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1AC6EF30C()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1AC62A5AC;

  return AssetsInstallationRequest.downloadAndInstall()();
}

uint64_t sub_1AC6EF3B8()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_progress];
  v3 = *&v1[OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_assetConfigs];
  [v2 setTotalUnitCount_];
  [v2 setCompletedUnitCount_];
  v4 = swift_allocObject();
  v0[3] = v4;
  *(v4 + 16) = v1;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1AC6EF4F4;

  return sub_1AC65CE28(&unk_1AC7AF3A8, v4, v3);
}

uint64_t sub_1AC6EF4F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

id AssetInstallationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1AC6EF678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v8 = sub_1AC79FDE8();
  __swift_project_value_buffer(v8, qword_1ED9386C8);
  if (sub_1AC61C24C())
  {
    *&v3[OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_assetConfigs] = a1;
    v9 = &v3[OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_clientID];
    *v9 = a2;
    *(v9 + 1) = a3;
    v10 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v11 = OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_progress;
    *&v3[OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_progress] = v10;
    [v10 setKind_];
    [*&v3[v11] setFileOperationKind_];
    v12 = *&v3[v11];
    v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v14 = v12;
    v15 = [v13 initWithBool_];
    [v14 setUserInfoObject:v15 forKey:*MEMORY[0x1E696A8A0]];

    sub_1AC6F0610(0, 0xE000000000000000, *&v3[v11]);
    v21.receiver = v3;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, sel_init);
  }

  else
  {
    v16 = sub_1AC79FDC8();
    v17 = sub_1AC7A05F8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1AC5CFE74(0xD00000000000001DLL, 0x80000001AC7B8210, &v20);
      _os_log_impl(&dword_1AC5BC000, v16, v17, "Failed precondition: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B26EAB10](v19, -1, -1);
      MEMORY[0x1B26EAB10](v18, -1, -1);
    }

    __break(1u);
  }
}

uint64_t sub_1AC6EF918(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1AC79F8E8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1AC79FB58();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1AC79FB68();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B0, &qword_1AC7AF428);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6EFAC8, 0, 0);
}

uint64_t sub_1AC6EFAC8()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v14 = v0[13];
  v15 = v0[4];
  v8 = v0[3];
  v16 = v0[10];
  v17 = v0[2];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v0[14] = v9;
  [v9 setTotalUnitCount_];
  [*(v8 + OBJC_IVAR____TtC6Speech25AssetsInstallationRequest_progress) addChild:v9 withPendingUnitCount:1];
  sub_1AC79FB48();
  (*(v4 + 104))(v3, *MEMORY[0x1E6969A48], v6);
  sub_1AC79F8D8();
  sub_1AC79FB38();
  (*(v7 + 8))(v5, v15);
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v16);
  v10 = swift_task_alloc();
  v0[15] = v10;
  v10[2] = v17;
  v10[3] = v8;
  v10[4] = v14;
  v10[5] = v9;
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1AC6EFCF0;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000017, 0x80000001AC7B8230, sub_1AC6F0674, v10, v12);
}

uint64_t sub_1AC6EFCF0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v3 + 136) = v0;

  if (v0)
  {
    v6 = sub_1AC6EFE98;
  }

  else
  {

    v6 = sub_1AC6EFDFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1AC6EFDFC()
{
  v1 = *(v0 + 104);

  sub_1AC6F0680(v1);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6EFE98()
{
  v1 = *(v0 + 104);

  sub_1AC6F0680(v1);

  OUTLINED_FUNCTION_44();

  return v2();
}

void sub_1AC6EFF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a2;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v8 = *(v7 - 8);
  v26 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B0, &qword_1AC7AF428);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v28 = sub_1AC79FF58();
  sub_1AC6F06E8(a4, v13);
  v14 = sub_1AC79F8E8();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v15 = sub_1AC79F898();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v25 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v34 = sub_1AC6F0758;
  v35 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1AC6F02C8;
  v33 = &block_descriptor_8;
  v17 = _Block_copy(&aBlock);
  v18 = a5;

  (*(v8 + 16))(v10, v27, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v8 + 32))(v20 + v19, v10, v7);
  v34 = sub_1AC6F0760;
  v35 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1AC6564AC;
  v33 = &block_descriptor_28_0;
  v21 = _Block_copy(&aBlock);
  v22 = v18;

  v23 = v28;
  [v25 fetchAssetWithConfig:v29 clientIdentifier:v28 expiration:v15 progress:v17 completion:v21];
  _Block_release(v21);
  _Block_release(v17);
}

uint64_t sub_1AC6F02A8(uint64_t result, id a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return [a2 setCompletedUnitCount_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6F02C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1AC6F031C(int a1, int a2, void *a3, id a4)
{
  [a4 setCompletedUnitCount_];
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01D8();
  }
}

uint64_t sub_1AC6F03C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC6EF918(v2);
}

uint64_t sub_1AC6F0460()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1AC5C5380;

  return sub_1AC6F03C8(v2);
}

void sub_1AC6F0610(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79FF58();

  [a3 setLocalizedAdditionalDescription_];
}

uint64_t sub_1AC6F0680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B0, &qword_1AC7AF428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC6F06E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B0, &qword_1AC7AF428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6F0760(int a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v7 = *(v3 + 16);

  return sub_1AC6F031C(a1, a2, a3, v7);
}

void sub_1AC6F0808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B8, &qword_1AC7AF448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  *(inited + 32) = 0x6E65764520525341;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v7 = sub_1AC79FE38();
  if (a3)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v7;
    sub_1AC6F1334(a3, sub_1AC6F1630, 0, isUniquelyReferenced_nonNull_native, &v11);
  }

  v9 = sub_1AC79FF58();
  sub_1AC71EDEC();

  v10 = sub_1AC79FE18();

  SFPLLogRegisteredEvent();
}

uint64_t sub_1AC6F0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5B8, &qword_1AC7AF448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  *(inited + 32) = 0x746163696C707041;
  *(inited + 40) = 0xEF656D614E6E6F69;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v11 = sub_1AC79FE38();
  if (a4)
  {

    swift_isUniquelyReferenced_nonNull_native();
    sub_1AC6E1340();
  }

  else
  {
    sub_1AC6E0808();
    if (v12)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D288, &unk_1AC7AE7A0);
      sub_1AC7A0B18();

      sub_1AC7A0B38();
    }
  }

  if (a6)
  {

    swift_isUniquelyReferenced_nonNull_native();
    sub_1AC6E1340();
  }

  else
  {
    sub_1AC6E0808();
    if (v13)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D288, &unk_1AC7AE7A0);
      sub_1AC7A0B18();

      sub_1AC7A0B38();
    }
  }

  sub_1AC6F0808(0xD00000000000001DLL, 0x80000001AC7B8280, v11);
}

uint64_t sub_1AC6F0CAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5C8, &qword_1AC7B1DC0);
  v43 = v4;
  result = sub_1AC7A0BB8();
  v10 = v8;
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v40 = v3;
  v41 = v8;
  v12 = 0;
  v13 = (v8 + 64);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_33;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      sub_1AC613DA0(0, (v38 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v42 + 72);
    v24 = *(v10 + 48) + v23 * v22;
    if (v43)
    {
      sub_1AC61B988(v24, v7);
      v25 = *(v10 + 56);
      v26 = v7;
      v27 = *(v25 + 8 * v22);
    }

    else
    {
      sub_1AC61B924(v24, v7);
      v28 = *(v10 + 56);
      v26 = v7;
      v27 = *(v28 + 8 * v22);
    }

    sub_1AC7A0E78();
    v29 = v26;
    sub_1AC6F7B7C();
    result = sub_1AC7A0EC8();
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_1AC61B988(v29, *(v11 + 48) + v23 * v33);
    *(*(v11 + 56) + 8 * v33) = v27;
    v7 = v29;
    ++*(v11 + 16);
    v10 = v41;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v18 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1AC6F0FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5C0, &unk_1AC7AF450);
  v36 = v4;
  result = sub_1AC7A0BB8();
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
      sub_1AC613DA0(0, (v34 + 63) >> 6, v9);
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
    }

    sub_1AC7A0E78();
    sub_1AC7A0048();
    result = sub_1AC7A0EC8();
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

double sub_1AC6F12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC61B924(a2, a1);

  return result;
}

uint64_t sub_1AC6F12E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1AC6F1334(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_1AC6F15F4(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v42 = v47[5];
  v43 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v46[0] = v14;
      v46[1] = v15;
      v46[2] = v17;
      v46[3] = v18;

      v42(v45, v46);

      v19 = v45[0];
      v20 = v45[1];
      v21 = v45[2];
      v22 = v45[3];
      v23 = *v48;
      v25 = sub_1AC6E0808();
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D288, &unk_1AC7AE7A0);
          sub_1AC7A0B28();
        }
      }

      else
      {
        sub_1AC6F0FF0(v28, v44 & 1);
        v30 = sub_1AC6E0808();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v48;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1AC5CA508(v43);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1AC7A0DC8();
  __break(1u);
  return result;
}

uint64_t sub_1AC6F15F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1AC6F1630@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AC6F12E8(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1AC6F1674()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_31_9(v1, v2, v3, v4);
  v0[12] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[15] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[16] = v8;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6F177C()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = OUTLINED_FUNCTION_24_12();
    OUTLINED_FUNCTION_23_10(v2);
    OUTLINED_FUNCTION_11_14();
    sub_1AC5C6DD8(v0);
    v7 = v1[17];
    v8 = v1[10];
    v1[4] = v1[9];
    v1[5] = v8;

    OUTLINED_FUNCTION_16_12();
    sub_1AC5C6DD8(v7);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D18);
    v9 = swift_task_alloc();
    v1[19] = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_14_9(v9);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6F197C(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 160) = v1;

  if (!v1)
  {
    *(v5 + 168) = a1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6F1AA0()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
  v4 = OUTLINED_FUNCTION_123();
  v2(v4);

  v5 = v0[1];
  v6 = v0[21];

  return v5(v6);
}

uint64_t sub_1AC6F1B9C()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
  v4 = OUTLINED_FUNCTION_123();
  v2(v4);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6F1C60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F1EC0;

  return sub_1AC6F1674();
}

uint64_t sub_1AC6F1EC0()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  **(v0 + 16) = v7;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC6F20CC()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_31_9(v1, v2, v3, v4);
  v0[12] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[15] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[16] = v8;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6F21D4()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = OUTLINED_FUNCTION_24_12();
    OUTLINED_FUNCTION_23_10(v2);
    OUTLINED_FUNCTION_11_14();
    sub_1AC5C6DD8(v0);
    v7 = v1[17];
    v8 = v1[10];
    v1[4] = v1[9];
    v1[5] = v8;

    OUTLINED_FUNCTION_16_12();
    sub_1AC5C6DD8(v7);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D00);
    v9 = swift_task_alloc();
    v1[19] = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_14_9(v9);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6F23D4(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 160) = v1;

  if (!v1)
  {
    *(v5 + 168) = a1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6F2528()
{
  OUTLINED_FUNCTION_85();
  v1[7] = v0;
  v1[5] = v2;
  v1[6] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA8, &qword_1AC7A7CF0);
  v1[11] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6F263C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[14];
    v2 = v0[5];
    v3 = sub_1AC5C6544();
    v0[3] = v2;
    v0[2] = v3;
    sub_1AC79FC98();
    sub_1AC5DE738(v1);
    v5 = v0[13];
    v0[4] = v0[6];
    sub_1AC79FC98();
    sub_1AC5DE738(v5);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7CE0);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1AC6F28DC;
    v7 = OUTLINED_FUNCTION_9_1(v0[7]);

    return v8(v7);
  }

  else
  {
    v4 = v0[7];

    return MEMORY[0x1EEE6DFA0](sub_1AC6F2AD4, v4, 0);
  }
}

uint64_t sub_1AC6F28DC()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_18_2();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v7[16] = v0;

  if (!v0)
  {
    v7[17] = v3;
    v7[18] = v5;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6F2A08()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
  v4 = OUTLINED_FUNCTION_123();
  v2(v4);

  v5 = v0[1];
  v7 = v0[17];
  v6 = v0[18];

  return v5(v6, v7);
}

uint64_t sub_1AC6F2B04()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_170();
  v2(v3);
  v4 = OUTLINED_FUNCTION_123();
  v2(v4);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6F2BC8()
{
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6F2CF4()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6F2D98()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_13_0(v2);
    nullsub_1();
    if (!v0)
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7C80);
      v9 = swift_task_alloc();
      *(v1 + 64) = v9;
      *v9 = v1;
      v9[1] = sub_1AC6F2F08;
      OUTLINED_FUNCTION_9_1(*(v1 + 24));
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6F2F08()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6F306C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFD54(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for LSRAssets();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6F30F4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_65();
  v10 = v5 == 0xD000000000000018 && v6 == a2;
  if (v10 || (v11 = v9, v12 = v8, v13 = v7, v14 = v5, (OUTLINED_FUNCTION_53(0xD000000000000018, v6) & 1) != 0))
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000022;
  v17 = v14 == 0xD000000000000022 && v15 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_53(0xD000000000000022, v15), (result & 1) != 0))
  {
    if (v12)
    {
      OUTLINED_FUNCTION_99();
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      *(v18 + 24) = v11;
      OUTLINED_FUNCTION_7_14();
      *(&v126 + 1) = 1107296256;
      v127 = sub_1AC5EF7E0;
      v128 = &block_descriptor_41;
      v19 = _Block_copy(&v126);

      [a3 getModelPropertiesWithReply_];
LABEL_14:
      _Block_release(v19);
      return 1;
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000047;
  v21 = v14 == 0xD000000000000047 && v20 == a2;
  if (v21 || (result = OUTLINED_FUNCTION_53(0xD000000000000047, v20), (result & 1) != 0))
  {
    v22 = *(v13 + 16);
    if (v22)
    {
      result = sub_1AC5D2398(v13 + 32, &v141);
      if (!v142)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v30 = OUTLINED_FUNCTION_33_8(result, v23, v24, v25, v26, v27, v28, v29, v126);
      v37 = OUTLINED_FUNCTION_10_16(v30, v31, v32, MEMORY[0x1E69E6158], v33, v34, v35, v36, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139);
      v45 = OUTLINED_FUNCTION_32_10(v37, v38, v39, v40, v41, v42, v43, v44, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139, *(&v139 + 1));

      if (v22 != 1)
      {
        result = sub_1AC5D2398(v13 + 64, &v141);
        if (!v142)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v53 = OUTLINED_FUNCTION_33_8(result, v46, v47, v48, v49, v50, v51, v52, v126);
        v60 = OUTLINED_FUNCTION_10_16(v53, v54, v55, MEMORY[0x1E69E6158], v56, v57, v58, v59, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139);
        v68 = OUTLINED_FUNCTION_32_10(v60, v61, v62, v63, v64, v65, v66, v67, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139, *(&v139 + 1));

        if (!v12)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_99();
        v69 = swift_allocObject();
        *(v69 + 16) = v12;
        *(v69 + 24) = v11;
        v129 = sub_1AC6F46C0;
        v130 = v69;
        *&v126 = MEMORY[0x1E69E9820];
        *(&v126 + 1) = 1107296256;
        v127 = sub_1AC6F4500;
        v128 = &block_descriptor_35;
        v70 = _Block_copy(&v126);

        [a3 getContextualNamedEntitySourcesForApplication:v45 taskName:v68 reply:v70];
LABEL_26:
        _Block_release(v70);

        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000049;
  v72 = v14 == 0xD000000000000049 && v71 == a2;
  if (v72 || (result = OUTLINED_FUNCTION_53(0xD000000000000049, v71), (result & 1) != 0))
  {
    v73 = *(v13 + 16);
    if (v73)
    {
      result = sub_1AC5D2398(v13 + 32, &v141);
      if (!v142)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v81 = OUTLINED_FUNCTION_33_8(result, v74, v75, v76, v77, v78, v79, v80, v126);
      v88 = OUTLINED_FUNCTION_10_16(v81, v82, v83, MEMORY[0x1E69E6158], v84, v85, v86, v87, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139);
      v45 = OUTLINED_FUNCTION_32_10(v88, v89, v90, v91, v92, v93, v94, v95, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139, *(&v139 + 1));

      if (v73 != 1)
      {
        result = sub_1AC5D2398(v13 + 64, &v141);
        if (!v142)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v103 = OUTLINED_FUNCTION_33_8(result, v96, v97, v98, v99, v100, v101, v102, v126);
        v110 = OUTLINED_FUNCTION_10_16(v103, v104, v105, MEMORY[0x1E69E6158], v106, v107, v108, v109, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139);
        v68 = OUTLINED_FUNCTION_32_10(v110, v111, v112, v113, v114, v115, v116, v117, v126, *(&v126 + 1), v127, v128, v129, v130, *&v131, v132, *(&v132 + 1), v133, v134, v135, *(&v135 + 1), v136, v137, *&v138, v139, *(&v139 + 1));

        if (!v12)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        OUTLINED_FUNCTION_99();
        v118 = swift_allocObject();
        *(v118 + 16) = v12;
        *(v118 + 24) = v11;
        v129 = sub_1AC6F4694;
        v130 = v118;
        *&v126 = MEMORY[0x1E69E9820];
        *(&v126 + 1) = 1107296256;
        v127 = sub_1AC6F457C;
        v128 = &block_descriptor_29;
        v70 = _Block_copy(&v126);

        [a3 getContextualRankedContactSourcesForApplication:v45 taskName:v68 reply:v70];
        goto LABEL_26;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000036;
  v120 = v14 == 0xD000000000000036 && v119 == a2;
  if (v120 || (v121 = OUTLINED_FUNCTION_53(0xD000000000000036, v119), result = 0, (v121 & 1) != 0))
  {
    v122 = *(v13 + 16);
    if (v122)
    {
      result = sub_1AC5D2398(v13 + 32, &v139);
      if (!v140)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      sub_1AC5C3968(&v139, &v141);
      result = swift_dynamicCast();
      if (v122 != 1)
      {
        v123 = v138;
        result = sub_1AC5D2398(v13 + 64, &v132);
        if (v134)
        {
          sub_1AC5C3968(&v132, &v135);
          result = swift_dynamicCast();
          if (v12)
          {
            v124 = v131;
            OUTLINED_FUNCTION_99();
            v125 = swift_allocObject();
            *(v125 + 16) = v12;
            *(v125 + 24) = v11;
            OUTLINED_FUNCTION_7_14();
            *(&v126 + 1) = 1107296256;
            v127 = sub_1AC714F68;
            v128 = &block_descriptor_9;
            v19 = _Block_copy(&v126);

            [a3 getGeoLMRegionIDForLatitude:v19 longitude:v123 reply:v124];
            goto LABEL_14;
          }

LABEL_66:
          __break(1u);
          return result;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_1AC6F36F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F4758;

  return sub_1AC6F20CC();
}

uint64_t sub_1AC6F398C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F3BEC;

  return sub_1AC6F2528();
}

uint64_t sub_1AC6F3BEC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[4];
  v6 = v0[3];
  v7 = v0[2];
  *v7 = v8;
  v7[1] = v9;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC6F3E2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC5C608C();
}

uint64_t sub_1AC6F3EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC6F2CF4();
}

uint64_t sub_1AC6F3F7C()
{
  sub_1AC7A0E78();
  type metadata accessor for LSRAssets();
  OUTLINED_FUNCTION_8_10();
  sub_1AC6F46F4(v0, v1, v2, &unk_1AC7AF744);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6F3FF8()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for LSRAssets();
    OUTLINED_FUNCTION_8_10();
    sub_1AC6F46F4(v1, v2, v3, &unk_1AC7AF794);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6F40BC(uint64_t a1)
{
  type metadata accessor for LSRAssets();
  sub_1AC6F46F4(&unk_1EB56ACE0, v1, type metadata accessor for LSRAssets, &unk_1AC7AF794);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6F4134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for LSRAssets();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6F418C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LSRAssets();
  v6 = sub_1AC6F46F4(&unk_1EB56ACE0, v5, type metadata accessor for LSRAssets, &unk_1AC7AF794);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6F4214(uint64_t a1)
{
  type metadata accessor for LSRAssets();
  sub_1AC6F46F4(&unk_1EB56ACE0, v1, type metadata accessor for LSRAssets, &unk_1AC7AF794);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC6F42A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LSRAssets();
  sub_1AC6F46F4(&unk_1EB56ACE0, v4, type metadata accessor for LSRAssets, &unk_1AC7AF794);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC6F4468()
{
  result = xpcInterface_LSRAssets();
  qword_1EB56E5F0 = result;
  return result;
}

uint64_t sub_1AC6F4490(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC5CF764(0, &qword_1EB56AB60, off_1E797ADF8);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC641B24(v6);
}

uint64_t sub_1AC6F4514(uint64_t a1, void (*a2)(void *, __n128), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8[0] = a1;

  (a2)(v8);
  return sub_1AC641B24(v8);
}

uint64_t sub_1AC6F4590(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_1AC5CF764(0, a3, a4);
  v5 = sub_1AC7A0158();

  v4(v5);
}

uint64_t sub_1AC6F460C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, __n128))
{
  if (a2)
  {
    v6 = MEMORY[0x1E69E6158];
    *&v5 = a1;
    *(&v5 + 1) = a2;
    sub_1AC5C3968(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  (a3)(v7);
  return sub_1AC641B24(v7);
}

uint64_t sub_1AC6F46F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_1AC79FF58();
}

BOOL sub_1AC6F47B8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1AC79FB18() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1AC6F488C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1AC6F493C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC61C24C();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B26E95B0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1AC6F4A30@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 1001:
      v10 = 3;
      break;
    case 1002:
      v10 = 7;
      break;
    case 1003:
      v10 = 8;
      break;
    case 1004:
      v10 = 9;
      break;
    case 1005:
      v10 = 10;
      break;
    case 1006:
      v10 = 11;
      break;
    case 1007:
      v10 = 12;
      break;
    case 1008:
      v10 = 13;
      break;
    case 1009:
      v10 = 15;
      break;
    case 1010:
      v10 = 14;
      break;
    case 1011:
      v10 = 4;
      break;
    default:
      v10 = 16;
      switch(result)
      {
        case 0:
          goto LABEL_17;
        case 1:
          v10 = 0;
          goto LABEL_17;
        case 2:
          v10 = 1;
          goto LABEL_17;
        case 3:
          v10 = 2;
          goto LABEL_17;
        default:
          v18[1] = v7;
          v18[2] = v6;
          v18[3] = v5;
          v18[4] = v4;
          v18[5] = v3;
          v18[6] = v2;
          v18[7] = v8;
          v18[8] = v9;
          if (off_1ED937D60 == -1)
          {
            goto LABEL_19;
          }

          while (1)
          {
            swift_once();
LABEL_19:
            v11 = sub_1AC79FDE8();
            __swift_project_value_buffer(v11, qword_1ED9386C8);
            v12 = sub_1AC79FDC8();
            v13 = sub_1AC7A05F8();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              *v14 = 136315138;
              v18[0] = v15;
              sub_1AC7A09C8();

              v16 = sub_1AC7A0CC8();
              MEMORY[0x1B26E8C40](v16);

              v17 = sub_1AC5CFE74(0xD000000000000027, 0x80000001AC7B8430, v18);

              *(v14 + 4) = v17;
              _os_log_impl(&dword_1AC5BC000, v12, v13, "Failed precondition: %s", v14, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v15);
              MEMORY[0x1B26EAB10](v15, -1, -1);
              MEMORY[0x1B26EAB10](v14, -1, -1);
            }

            __break(1u);
          }
      }
  }

LABEL_17:
  *a2 = v10;
  return result;
}

Speech::TaskHint_optional __swiftcall TaskHint.init(taskString:)(Swift::String taskString)
{
  v17 = v1;
  v2 = sub_1AC79FFE8();
  v4 = v3;

  v5 = 0;
LABEL_2:
  v6 = byte_1F212FAD8[v5++ + 32];
  v7 = TaskHint.preferredModelTaskNames.getter();
  v8 = v7;
  v9 = v7 + 40;
  v10 = -*(v7 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {

      if (v5 != 16)
      {
        goto LABEL_2;
      }

      v6 = 16;
      v15 = v17;
      goto LABEL_15;
    }

    if (++v11 >= *(v8 + 16))
    {
      break;
    }

    if (sub_1AC79FFE8() == v2 && v12 == v4)
    {

LABEL_14:
      v15 = v17;

LABEL_15:
      *v15 = v6;
      return v7;
    }

    v9 += 16;
    v14 = sub_1AC7A0D38();

    if (v14)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return v7;
}

uint64_t TaskHint.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

unint64_t sub_1AC6F4EB4()
{
  result = qword_1EB56D5E0;
  if (!qword_1EB56D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56D5E8, &qword_1AC7AF7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D5E0);
  }

  return result;
}

unint64_t sub_1AC6F4F1C()
{
  result = qword_1EB56D5F0;
  if (!qword_1EB56D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaskHint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

void *sub_1AC6F50D4(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79FB18();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v9) = *(a2 + v9);
    v10 = a3[9];
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = type metadata accessor for TranscriberCommon.ModelOptions(0);

    if (__swift_getEnumTagSinglePayload(v12, 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
      memcpy(v11, v12, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = sub_1AC79F7F8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v16))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
        memcpy(v11, v12, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(*(v16 - 8) + 16))(v11, v12, v16);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
      }

      v11[v13[5]] = v12[v13[5]];
      v18 = v13[6];
      v19 = &v11[v18];
      v20 = &v12[v18];
      v21 = *(v20 + 1);
      *v19 = *v20;
      *(v19 + 1) = v21;
      v22 = v13[7];

      if (__swift_getEnumTagSinglePayload(&v12[v22], 1, v16))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
        memcpy(&v11[v22], &v12[v22], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v16 - 8) + 16))(&v11[v22], &v12[v22], v16);
        __swift_storeEnumTagSinglePayload(&v11[v22], 0, 1, v16);
      }

      v24 = v13[8];
      v25 = &v11[v24];
      v26 = &v12[v24];
      v27 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v27;
      *&v11[v13[9]] = *&v12[v13[9]];
      v11[v13[10]] = v12[v13[10]];
      v11[v13[11]] = v12[v13[11]];
      *&v11[v13[12]] = *&v12[v13[12]];
      v11[v13[13]] = v12[v13[13]];
      v28 = v13[14];
      v29 = *&v12[v28];
      *&v11[v28] = v29;
      *&v11[v13[15]] = *&v12[v13[15]];

      v30 = v29;

      __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    }

    v31 = a3[10];
    v32 = a3[11];
    v33 = (a1 + v31);
    v34 = (a2 + v31);
    *v33 = *v34;
    *(v33 + 10) = *(v34 + 10);
    *(a1 + v32) = *(a2 + v32);
    v35 = a3[12];
    v36 = a3[13];
    v37 = a1 + v35;
    v38 = a2 + v35;
    *v37 = *v38;
    v39 = *(v38 + 1);
    *(v37 + 1) = v39;
    *(a1 + v36) = *(a2 + v36);
    v40 = a3[15];
    *(a1 + a3[14]) = *(a2 + a3[14]);
    *(a1 + v40) = *(a2 + v40);
    v41 = v39;
  }

  return a1;
}

uint64_t sub_1AC6F54AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a1 + *(a2 + 36);
  v6 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = sub_1AC79F7F8();
    if (!__swift_getEnumTagSinglePayload(v5, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5, v7);
    }

    v8 = *(v6 + 28);
    if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5 + v8, v7);
    }
  }
}

uint64_t sub_1AC6F5674(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TranscriberCommon.ModelOptions(0);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    memcpy(v10, v11, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = sub_1AC79F7F8();
    if (__swift_getEnumTagSinglePayload(v11, 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(v10, v11, v14);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    }

    v10[v12[5]] = v11[v12[5]];
    v16 = v12[6];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v20 = v12[7];

    if (__swift_getEnumTagSinglePayload(&v11[v20], 1, v14))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v10[v20], &v11[v20], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(&v10[v20], &v11[v20], v14);
      __swift_storeEnumTagSinglePayload(&v10[v20], 0, 1, v14);
    }

    v22 = v12[8];
    v23 = &v10[v22];
    v24 = &v11[v22];
    v25 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v25;
    *&v10[v12[9]] = *&v11[v12[9]];
    v10[v12[10]] = v11[v12[10]];
    v10[v12[11]] = v11[v12[11]];
    *&v10[v12[12]] = *&v11[v12[12]];
    v10[v12[13]] = v11[v12[13]];
    v26 = v12[14];
    v27 = *&v11[v26];
    *&v10[v26] = v27;
    *&v10[v12[15]] = *&v11[v12[15]];

    v28 = v27;

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  }

  v29 = a3[10];
  v30 = a3[11];
  v31 = (a1 + v29);
  v32 = (a2 + v29);
  *v31 = *v32;
  *(v31 + 10) = *(v32 + 10);
  *(a1 + v30) = *(a2 + v30);
  v33 = a3[12];
  v34 = a3[13];
  v35 = a1 + v33;
  v36 = a2 + v33;
  *v35 = *v36;
  v37 = *(v36 + 8);
  *(v35 + 8) = v37;
  *(a1 + v34) = *(a2 + v34);
  v38 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v38) = *(a2 + v38);
  v39 = v37;

  return a1;
}

uint64_t sub_1AC6F5A00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v7 = a3[9];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    if (v12)
    {
      sub_1AC6F8C8C(v8, type metadata accessor for TranscriberCommon.ModelOptions);
      goto LABEL_7;
    }

    v16 = sub_1AC79F7F8();
    v17 = __swift_getEnumTagSinglePayload(v8, 1, v16);
    v18 = __swift_getEnumTagSinglePayload(v9, 1, v16);
    if (v17)
    {
      if (!v18)
      {
        (*(*(v16 - 8) + 16))(v8, v9, v16);
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
        goto LABEL_19;
      }
    }

    else
    {
      v30 = *(v16 - 8);
      if (!v18)
      {
        (*(v30 + 24))(v8, v9, v16);
LABEL_19:
        v8[v10[5]] = v9[v10[5]];
        v32 = v10[6];
        v33 = &v8[v32];
        v34 = &v9[v32];
        *v33 = *v34;
        v33[1] = v34[1];

        v35 = v10[7];
        v36 = __swift_getEnumTagSinglePayload(&v8[v35], 1, v16);
        v37 = __swift_getEnumTagSinglePayload(&v9[v35], 1, v16);
        if (v36)
        {
          if (!v37)
          {
            (*(*(v16 - 8) + 16))(&v8[v35], &v9[v35], v16);
            __swift_storeEnumTagSinglePayload(&v8[v35], 0, 1, v16);
LABEL_25:
            v40 = v10[8];
            v41 = &v8[v40];
            v42 = &v9[v40];
            *v41 = *v42;
            v41[1] = v42[1];

            *&v8[v10[9]] = *&v9[v10[9]];

            v8[v10[10]] = v9[v10[10]];
            v8[v10[11]] = v9[v10[11]];
            *&v8[v10[12]] = *&v9[v10[12]];

            v8[v10[13]] = v9[v10[13]];
            v43 = v10[14];
            v44 = *&v8[v43];
            v45 = *&v9[v43];
            *&v8[v43] = v45;
            v46 = v45;

            *&v8[v10[15]] = *&v9[v10[15]];

            goto LABEL_26;
          }
        }

        else
        {
          v38 = *(v16 - 8);
          if (!v37)
          {
            (*(v38 + 24))(&v8[v35], &v9[v35], v16);
            goto LABEL_25;
          }

          (*(v38 + 8))(&v8[v35], v16);
        }

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
        memcpy(&v8[v35], &v9[v35], *(*(v39 - 8) + 64));
        goto LABEL_25;
      }

      (*(v30 + 8))(v8, v16);
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(v8, v9, *(*(v31 - 8) + 64));
    goto LABEL_19;
  }

  if (v12)
  {
LABEL_7:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    memcpy(v8, v9, *(*(v15 - 8) + 64));
    goto LABEL_26;
  }

  v13 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(v8, v9, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 16))(v8, v9, v13);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  }

  v8[v10[5]] = v9[v10[5]];
  v19 = v10[6];
  v20 = &v8[v19];
  v21 = &v9[v19];
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = v10[7];

  if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v13))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v8[v22], &v9[v22], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 16))(&v8[v22], &v9[v22], v13);
    __swift_storeEnumTagSinglePayload(&v8[v22], 0, 1, v13);
  }

  v24 = v10[8];
  v25 = &v8[v24];
  v26 = &v9[v24];
  *v25 = *v26;
  v25[1] = v26[1];
  *&v8[v10[9]] = *&v9[v10[9]];
  v8[v10[10]] = v9[v10[10]];
  v8[v10[11]] = v9[v10[11]];
  *&v8[v10[12]] = *&v9[v10[12]];
  v8[v10[13]] = v9[v10[13]];
  v27 = v10[14];
  v28 = *&v9[v27];
  *&v8[v27] = v28;
  *&v8[v10[15]] = *&v9[v10[15]];

  v29 = v28;

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
LABEL_26:
  v47 = a3[10];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = *v49;
  *(v48 + 10) = *(v49 + 10);
  *v48 = v50;
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v51 = a3[12];
  v52 = a1 + v51;
  v53 = a2 + v51;
  *v52 = *v53;
  v54 = *(v52 + 8);
  v55 = *(v53 + 8);
  *(v52 + 8) = v55;
  v56 = v55;

  *(a1 + a3[13]) = *(a2 + a3[13]);

  *(a1 + a3[14]) = *(a2 + a3[14]);

  *(a1 + a3[15]) = *(a2 + a3[15]);

  return a1;
}

uint64_t sub_1AC6F6138(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    memcpy(v10, v11, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = sub_1AC79F7F8();
    if (__swift_getEnumTagSinglePayload(v11, 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 32))(v10, v11, v14);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    }

    v10[v12[5]] = v11[v12[5]];
    *&v10[v12[6]] = *&v11[v12[6]];
    v16 = v12[7];
    if (__swift_getEnumTagSinglePayload(&v11[v16], 1, v14))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v10[v16], &v11[v16], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 32))(&v10[v16], &v11[v16], v14);
      __swift_storeEnumTagSinglePayload(&v10[v16], 0, 1, v14);
    }

    *&v10[v12[8]] = *&v11[v12[8]];
    *&v10[v12[9]] = *&v11[v12[9]];
    v10[v12[10]] = v11[v12[10]];
    v10[v12[11]] = v11[v12[11]];
    *&v10[v12[12]] = *&v11[v12[12]];
    v10[v12[13]] = v11[v12[13]];
    *&v10[v12[14]] = *&v11[v12[14]];
    *&v10[v12[15]] = *&v11[v12[15]];
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  }

  v18 = a3[10];
  v19 = a3[11];
  v20 = (a1 + v18);
  v21 = (a2 + v18);
  *v20 = *v21;
  *(v20 + 10) = *(v21 + 10);
  *(a1 + v19) = *(a2 + v19);
  v22 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

uint64_t sub_1AC6F6454(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11);
  v13 = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (!EnumTagSinglePayload)
  {
    if (v13)
    {
      sub_1AC6F8C8C(v9, type metadata accessor for TranscriberCommon.ModelOptions);
      goto LABEL_7;
    }

    v17 = sub_1AC79F7F8();
    v18 = __swift_getEnumTagSinglePayload(v9, 1, v17);
    v19 = __swift_getEnumTagSinglePayload(v10, 1, v17);
    if (v18)
    {
      if (!v19)
      {
        (*(*(v17 - 8) + 32))(v9, v10, v17);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *(v17 - 8);
      if (!v19)
      {
        (*(v22 + 40))(v9, v10, v17);
LABEL_19:
        v9[v11[5]] = v10[v11[5]];
        v24 = v11[6];
        v25 = &v9[v24];
        v26 = &v10[v24];
        v28 = *v26;
        v27 = v26[1];
        *v25 = v28;
        v25[1] = v27;

        v29 = v11[7];
        v30 = __swift_getEnumTagSinglePayload(&v9[v29], 1, v17);
        v31 = __swift_getEnumTagSinglePayload(&v10[v29], 1, v17);
        if (v30)
        {
          if (!v31)
          {
            (*(*(v17 - 8) + 32))(&v9[v29], &v10[v29], v17);
            __swift_storeEnumTagSinglePayload(&v9[v29], 0, 1, v17);
LABEL_25:
            v34 = v11[8];
            v35 = &v9[v34];
            v36 = &v10[v34];
            v38 = *v36;
            v37 = v36[1];
            *v35 = v38;
            v35[1] = v37;

            *&v9[v11[9]] = *&v10[v11[9]];

            v9[v11[10]] = v10[v11[10]];
            v9[v11[11]] = v10[v11[11]];
            *&v9[v11[12]] = *&v10[v11[12]];

            v9[v11[13]] = v10[v11[13]];
            v39 = v11[14];
            v40 = *&v9[v39];
            *&v9[v39] = *&v10[v39];

            *&v9[v11[15]] = *&v10[v11[15]];

            goto LABEL_26;
          }
        }

        else
        {
          v32 = *(v17 - 8);
          if (!v31)
          {
            (*(v32 + 40))(&v9[v29], &v10[v29], v17);
            goto LABEL_25;
          }

          (*(v32 + 8))(&v9[v29], v17);
        }

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
        memcpy(&v9[v29], &v10[v29], *(*(v33 - 8) + 64));
        goto LABEL_25;
      }

      (*(v22 + 8))(v9, v17);
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(v9, v10, *(*(v23 - 8) + 64));
    goto LABEL_19;
  }

  if (v13)
  {
LABEL_7:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    memcpy(v9, v10, *(*(v16 - 8) + 64));
    goto LABEL_26;
  }

  v14 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(v9, v10, *(*(v15 - 8) + 64));
  }

  else
  {
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  }

  v9[v11[5]] = v10[v11[5]];
  *&v9[v11[6]] = *&v10[v11[6]];
  v20 = v11[7];
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v14))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v9[v20], &v10[v20], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(*(v14 - 8) + 32))(&v9[v20], &v10[v20], v14);
    __swift_storeEnumTagSinglePayload(&v9[v20], 0, 1, v14);
  }

  *&v9[v11[8]] = *&v10[v11[8]];
  *&v9[v11[9]] = *&v10[v11[9]];
  v9[v11[10]] = v10[v11[10]];
  v9[v11[11]] = v10[v11[11]];
  *&v9[v11[12]] = *&v10[v11[12]];
  v9[v11[13]] = v10[v11[13]];
  *&v9[v11[14]] = *&v10[v11[14]];
  *&v9[v11[15]] = *&v10[v11[15]];
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
LABEL_26:
  v41 = a3[10];
  v42 = a3[11];
  v43 = (a1 + v41);
  v44 = (a2 + v41);
  *v43 = *v44;
  *(v43 + 10) = *(v44 + 10);
  *(a1 + v42) = *(a2 + v42);
  v45 = a3[12];
  v46 = a1 + v45;
  v47 = a2 + v45;
  *v46 = *v47;
  v48 = *(v46 + 8);
  *(v46 + 8) = *(v47 + 8);

  *(a1 + a3[13]) = *(a2 + a3[13]);

  *(a1 + a3[14]) = *(a2 + a3[14]);

  *(a1 + a3[15]) = *(a2 + a3[15]);

  return a1;
}

uint64_t type metadata accessor for SpeechRecognizerSupportedFeatures(uint64_t a1)
{
  result = qword_1ED937C88;
  if (!qword_1ED937C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC6F6B50(uint64_t a1)
{
  sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    sub_1AC6F6C58(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1AC6F6C58(uint64_t a1)
{
  if (!qword_1ED937508[0])
  {
    type metadata accessor for TranscriberCommon.ModelOptions(255);
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, qword_1ED937508);
    }
  }
}

id sub_1AC6F6CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v3 = OUTLINED_FUNCTION_167(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_4();
  v60 = v4;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_91();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v8);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v13 = *(a1 + v12[8]);

  v14 = sub_1AC6F880C(v13);
  v65 = sub_1AC79F9F8();
  v64 = sub_1AC7A0438();
  v15 = *(a1 + v12[6]);
  v62 = *(a1 + v12[7]);
  v63 = v15;
  v61 = *(a1 + v12[12] + 8);
  sub_1AC5D1E4C(a1 + v12[9], v11, &qword_1EB56C318, &unk_1AC7A8790);
  v16 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  OUTLINED_FUNCTION_96(v11, 1, v16);
  if (v17)
  {
    sub_1AC5C720C(v11, &qword_1EB56C318, &unk_1AC7A8790);
    v34 = 0;
  }

  else
  {
    v18 = v16[6];
    v58 = v11[v16[5]];
    v19 = &v11[v18];
    v21 = *&v11[v18];
    v20 = *(v19 + 1);
    v56 = v7;
    v57 = v21;
    v55 = v20;
    sub_1AC5D1E4C(v11, v7, &qword_1EB56BB68, &qword_1AC7A8490);
    sub_1AC5D1E4C(&v11[v16[7]], v60, &qword_1EB56BB68, &qword_1AC7A8490);
    v22 = *&v11[v16[9]];
    v23 = v16[13];
    v24 = *&v11[v16[12]];
    v25 = &v11[v16[8]];
    v54 = *v25;
    v59 = v14;
    v26 = v25[1];
    v27 = v11[v16[10]];
    v52 = v11[v16[11]];
    v53 = v27;
    v28 = v16[14];
    v29 = *&v11[v16[15]];
    v30 = v11[v23];
    v31 = *&v11[v28];
    v51 = objc_allocWithZone(_SFSpeechRecognizerModelOptions);
    v32 = v31;
    v33 = v55;

    HIBYTE(v50) = v52;
    LOBYTE(v50) = v53;
    v49 = v26;
    v14 = v59;
    v34 = sub_1AC6F8958(v58, v57, v33, v56, v60, v22, v24, v54, v49, v50, v29, v30, v31);
    OUTLINED_FUNCTION_0_13();
    sub_1AC6F8C8C(v11, v35);
  }

  v36 = a1 + v12[10];
  if (*(v36 + 25))
  {
    v37 = 0;
  }

  else
  {
    if (*(v36 + 24))
    {
      v38 = *MEMORY[0x1E6960CC0];
      LODWORD(v39) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v40) = *(MEMORY[0x1E6960CC0] + 12);
      v41 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v38 = *v36;
      v39 = *(v36 + 8);
      v41 = *(v36 + 16);
      v40 = HIDWORD(v39);
    }

    time.value = v38;
    time.timescale = v39;
    time.flags = v40;
    time.epoch = v41;
    v37 = [objc_allocWithZone(_SFSpeechRecognizerEndpointDetectorOptions) initWithDetectAfterTime_];
  }

  v42 = *(a1 + v12[11]);
  if (v42 == 3)
  {
    v43 = 0;
  }

  else
  {
    v43 = [objc_allocWithZone(_SFSpeechRecognizerSpeechDetectorOptions) initWithSensitivityLevel_];
  }

  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v46 = v64;
  v45 = v65;
  v47 = [v44 initWithLocale:v65 taskNames:v64 singleUtterance:v63 concatenateUtterances:v62 voiceCommandActiveSet:v61 modelOptions:v34 endpointDetectionOptions:v37 speechDetectionOptions:v43 flags:v14];

  sub_1AC6F8C8C(a1, type metadata accessor for SpeechRecognizerSupportedFeatures);
  return v47;
}

void sub_1AC6F7110()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v95 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v93 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v91 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v10 = OUTLINED_FUNCTION_167(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_4();
  v89 = v11;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_91();
  v92 = v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_4();
  v90 = v15;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_4();
  v20 = v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_91();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5F8, &unk_1AC7AFA70);
  OUTLINED_FUNCTION_167(v24);
  OUTLINED_FUNCTION_31();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v88 - v27;
  v29 = *(v26 + 56);
  sub_1AC5D1E4C(v4, &v88 - v27, &qword_1EB56C318, &unk_1AC7A8790);
  sub_1AC5D1E4C(v2, &v28[v29], &qword_1EB56C318, &unk_1AC7A8790);
  v30 = OUTLINED_FUNCTION_20_11(v28);
  v31 = OUTLINED_FUNCTION_20_11(&v28[v29]);
  if (v30 != 1)
  {
    if (v31 == 1)
    {
      OUTLINED_FUNCTION_0_13();
      v33 = v28;
LABEL_17:
      sub_1AC6F8C8C(v33, v32);
      goto LABEL_18;
    }

    v34 = v23;
    sub_1AC6F8BE0(v28, v23);
    v35 = v20;
    sub_1AC6F8BE0(&v28[v29], v20);
    v36 = v94;
    v37 = *(v94 + 48);
    OUTLINED_FUNCTION_17_9(v23, v0);
    OUTLINED_FUNCTION_17_9(v35, v0 + v37);
    v38 = v95;
    OUTLINED_FUNCTION_96(v0, 1, v95);
    if (v40)
    {
      OUTLINED_FUNCTION_6_8(v0 + v37);
      if (!v40)
      {
        goto LABEL_15;
      }

      sub_1AC5C720C(v0, &qword_1EB56BB68, &qword_1AC7A8490);
    }

    else
    {
      v39 = v92;
      sub_1AC5D1E4C(v0, v92, &qword_1EB56BB68, &qword_1AC7A8490);
      OUTLINED_FUNCTION_6_8(v0 + v37);
      if (v40)
      {
        goto LABEL_14;
      }

      v41 = v93;
      OUTLINED_FUNCTION_15_9();
      v88 = v23;
      v42 = v91;
      v43(v91);
      OUTLINED_FUNCTION_1_17();
      v46 = sub_1AC6F8C44(v44, v45, MEMORY[0x1E6968FC8]);
      v47 = OUTLINED_FUNCTION_18_9(v46);
      v48 = *(v41 + 8);
      v49 = v42;
      v34 = v88;
      v48(v49, v38);
      v48(v39, v38);
      sub_1AC5C720C(v0, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v47 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_21_10();
    v52 = *(v35 + v51 + 8);
    if (v53)
    {
      if (!v52)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_7_15(v50);
      v56 = v40 && v54 == v55;
      if (!v56 && (sub_1AC7A0D38() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v52)
    {
      goto LABEL_16;
    }

    v57 = v34;
    v58 = *(v17 + 28);
    v59 = *(v36 + 48);
    v60 = v57;
    v0 = v90;
    OUTLINED_FUNCTION_17_9(v57 + v58, v90);
    OUTLINED_FUNCTION_17_9(v35 + v58, v0 + v59);
    OUTLINED_FUNCTION_6_8(v0);
    if (v40)
    {
      OUTLINED_FUNCTION_6_8(v0 + v59);
      if (v40)
      {
        sub_1AC5C720C(v0, &qword_1EB56BB68, &qword_1AC7A8490);
        v34 = v60;
LABEL_38:
        OUTLINED_FUNCTION_21_10();
        v74 = *(v35 + v73 + 8);
        if (v75)
        {
          if (v74)
          {
            OUTLINED_FUNCTION_7_15(v72);
            v78 = v40 && v76 == v77;
            if (v78 || (sub_1AC7A0D38() & 1) != 0)
            {
LABEL_47:
              v79 = *(v17 + 56);
              v80 = *(v34 + v79);
              v81 = *(v35 + v79);
              if (v80)
              {
                if (v81)
                {
                  sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
                  v82 = v81;
                  v83 = v80;
                  sub_1AC7A0758();
                  OUTLINED_FUNCTION_2_18();
                  sub_1AC6F8C8C(v35, v84);
                  OUTLINED_FUNCTION_29_13();

                  goto LABEL_18;
                }

                v85 = v80;
                OUTLINED_FUNCTION_2_18();
                sub_1AC6F8C8C(v35, v87);
                OUTLINED_FUNCTION_29_13();
              }

              else
              {
                v85 = v81;
                OUTLINED_FUNCTION_2_18();
                sub_1AC6F8C8C(v35, v86);
                OUTLINED_FUNCTION_29_13();
                if (!v81)
                {
                  goto LABEL_18;
                }
              }

              goto LABEL_18;
            }
          }
        }

        else if (!v74)
        {
          goto LABEL_47;
        }

LABEL_16:
        sub_1AC6F8C8C(v35, type metadata accessor for TranscriberCommon.ModelOptions);
        v33 = v34;
        v32 = type metadata accessor for TranscriberCommon.ModelOptions;
        goto LABEL_17;
      }

      v34 = v60;
LABEL_15:
      sub_1AC5C720C(v0, &qword_1EB56C320, &qword_1AC7A87A0);
      goto LABEL_16;
    }

    v39 = v89;
    sub_1AC5D1E4C(v0, v89, &qword_1EB56BB68, &qword_1AC7A8490);
    OUTLINED_FUNCTION_6_8(v0 + v59);
    if (!v61)
    {
      v62 = v93;
      OUTLINED_FUNCTION_15_9();
      v63 = v0;
      v64 = v91;
      v65(v91);
      OUTLINED_FUNCTION_1_17();
      v68 = sub_1AC6F8C44(v66, v67, MEMORY[0x1E6968FC8]);
      v69 = v39;
      v70 = OUTLINED_FUNCTION_18_9(v68);
      v71 = *(v62 + 8);
      v71(v64, v38);
      v71(v69, v38);
      sub_1AC5C720C(v63, &qword_1EB56BB68, &qword_1AC7A8490);
      v34 = v60;
      if ((v70 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }

    v34 = v60;
LABEL_14:
    (*(v93 + 8))(v39, v38);
    goto LABEL_15;
  }

  if (v31 != 1)
  {
    sub_1AC5C720C(&v28[v29], &qword_1EB56C318, &unk_1AC7A8790);
  }

LABEL_18:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6F7DFC()
{
  sub_1AC7A0E78();
  sub_1AC6F7B7C();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6F7E3C(int a1, void *a2, int a3, void *a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1AC5CF764(0, &unk_1EB56AB00, 0x1E699B9C8);
      v7 = a4;
      v8 = a2;
      v9 = sub_1AC7A0758();

      if (v9)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_1AC6F7EDC(uint64_t a1, char a2, void *a3)
{
  sub_1AC7A0E98();
  if (a3)
  {
    sub_1AC7A0E98();
    v4 = a3;
    sub_1AC7A0768();
  }

  else
  {
    sub_1AC7A0E98();
  }
}

uint64_t sub_1AC6F7F60(char a1, void *a2)
{
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  if (a2)
  {
    v3 = a2;
    sub_1AC7A0768();
  }

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6F7FE4(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC6F7B7C();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6F80A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1AC7A0E78();
  sub_1AC6F7EDC(v5, v2, v3);
  return sub_1AC7A0EC8();
}

void sub_1AC6F80EC()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v86 = v7;
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v85 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v11 = OUTLINED_FUNCTION_167(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_4();
  v83 = v12;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_4();
  v84 = v17;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_4();
  v22 = v21;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_91();
  v89 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D5F8, &unk_1AC7AFA70);
  OUTLINED_FUNCTION_167(v25);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_13();
  v28 = *(v27 + 56);
  sub_1AC5D1E4C(v5, v0, &qword_1EB56C318, &unk_1AC7A8790);
  sub_1AC5D1E4C(v3, v0 + v28, &qword_1EB56C318, &unk_1AC7A8790);
  LODWORD(v3) = OUTLINED_FUNCTION_20_11(v0);
  v29 = OUTLINED_FUNCTION_20_11(v0 + v28);
  if (v3 != 1)
  {
    if (v29 == 1)
    {
      OUTLINED_FUNCTION_0_13();
      sub_1AC6F8C8C(v0, v30);
      goto LABEL_20;
    }

    v31 = v89;
    sub_1AC6F8BE0(v0, v89);
    v32 = v22;
    sub_1AC6F8BE0(v0 + v28, v22);
    v33 = *(v88 + 48);
    OUTLINED_FUNCTION_17_9(v31, v1);
    OUTLINED_FUNCTION_17_9(v22, v1 + v33);
    v34 = v87;
    OUTLINED_FUNCTION_96(v1, 1, v87);
    if (v35)
    {
      OUTLINED_FUNCTION_5_13(v1 + v33);
      if (v35)
      {
        sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_18:
        OUTLINED_FUNCTION_13_8();
        if (!v35)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_21_10();
        v47 = *(v32 + v46 + 8);
        if (v48)
        {
          if (!v47)
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_7_15(v45);
          v51 = v35 && v49 == v50;
          if (!v51 && (sub_1AC7A0D38() & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (v47)
        {
          goto LABEL_19;
        }

        v52 = v31;
        v53 = v19[7];
        v54 = *(v88 + 48);
        v55 = v84;
        OUTLINED_FUNCTION_17_9(v52 + v53, v84);
        sub_1AC5D1E4C(v32 + v53, v55 + v54, &qword_1EB56BB68, &qword_1AC7A8490);
        OUTLINED_FUNCTION_5_13(v55);
        if (v35)
        {
          OUTLINED_FUNCTION_5_13(v55 + v54);
          v56 = v89;
          if (v35)
          {
            sub_1AC5C720C(v55, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_40:
            OUTLINED_FUNCTION_21_10();
            v67 = *(v32 + v66 + 8);
            if (v68)
            {
              if (!v67)
              {
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_7_15(v65);
              v71 = v35 && v69 == v70;
              if (!v71 && (sub_1AC7A0D38() & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else if (v67)
            {
              goto LABEL_19;
            }

            sub_1AC6290FC();
            if (v72)
            {
              v73 = v19[15];
              v74 = *(v56 + v73);
              v75 = *(v32 + v73);
              if (v74)
              {
                if (!v75)
                {
                  goto LABEL_19;
                }

                v76 = sub_1AC629308(v74, v75);

                if ((v76 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

              else if (v75)
              {
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_13_8();
              if (v35)
              {
                OUTLINED_FUNCTION_13_8();
                if (v35)
                {
                  v77 = v19[14];
                  v78 = *(v56 + v77);
                  v79 = *(v32 + v77);
                  if (v78)
                  {
                    if (v79)
                    {
                      sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
                      v80 = v79;
                      v81 = v78;
                      sub_1AC7A0758();
                    }
                  }
                }
              }
            }

LABEL_19:
            OUTLINED_FUNCTION_2_18();
            sub_1AC6F8C8C(v32, v44);
            OUTLINED_FUNCTION_29_13();
            goto LABEL_20;
          }
        }

        else
        {
          v57 = v83;
          sub_1AC5D1E4C(v55, v83, &qword_1EB56BB68, &qword_1AC7A8490);
          OUTLINED_FUNCTION_5_13(v55 + v54);
          if (!v58)
          {
            v60 = v85;
            v59 = v86;
            (*(v86 + 32))(v85, v55 + v54, v34);
            OUTLINED_FUNCTION_1_17();
            sub_1AC6F8C44(v61, v62, MEMORY[0x1E6968FC8]);
            v63 = sub_1AC79FED8();
            v64 = *(v59 + 8);
            v64(v60, v34);
            v64(v57, v34);
            sub_1AC5C720C(v55, &qword_1EB56BB68, &qword_1AC7A8490);
            v56 = v89;
            if ((v63 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_40;
          }

          (*(v86 + 8))(v57, v34);
        }

        v36 = v55;
LABEL_16:
        sub_1AC5C720C(v36, &qword_1EB56C320, &qword_1AC7A87A0);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1AC5D1E4C(v1, v15, &qword_1EB56BB68, &qword_1AC7A8490);
      OUTLINED_FUNCTION_5_13(v1 + v33);
      if (!v35)
      {
        v38 = v85;
        v37 = v86;
        OUTLINED_FUNCTION_15_9();
        v39(v38);
        OUTLINED_FUNCTION_1_17();
        sub_1AC6F8C44(v40, v41, MEMORY[0x1E6968FC8]);
        v42 = sub_1AC79FED8();
        v43 = *(v37 + 8);
        v43(v38, v34);
        v43(v15, v34);
        sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
        if ((v42 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      (*(v86 + 8))(v15, v34);
    }

    v36 = v1;
    goto LABEL_16;
  }

  if (v29 != 1)
  {
    sub_1AC5C720C(v0 + v28, &qword_1EB56C318, &unk_1AC7A8790);
  }

LABEL_20:
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6F880C(char a1)
{
  if (a1)
  {
    v1 = 512;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | sub_1AC637EF8() & 1;
  if (sub_1AC637EF8())
  {
    v2 |= 0x20uLL;
  }

  if (sub_1AC637EF8())
  {
    v2 |= 0x40uLL;
  }

  if (sub_1AC637EF8())
  {
    v3 = v2 | 2;
  }

  else
  {
    v3 = v2;
  }

  v4 = sub_1AC637EF8();

  if (v4)
  {
    v5 = v3 | 0x80;
  }

  else
  {
    v5 = v3;
  }

  if (sub_1AC637EF8())
  {
    v5 |= 4uLL;
  }

  if (sub_1AC637EF8())
  {
    v6 = v5 | 0x100;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1AC637EF8();

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 | 0x400;
  }

  if (sub_1AC637EF8())
  {
    v9 = v8 | 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1AC637EF8();

  if (v10)
  {
    return v9 | 0x10;
  }

  else
  {
    return v9;
  }
}

id sub_1AC6F8958(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11, char a12, void *a13)
{
  if (a3)
  {
    v29 = sub_1AC79FF58();
  }

  else
  {
    v29 = 0;
  }

  v16 = sub_1AC79F7F8();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v16) != 1)
  {
    v17 = sub_1AC79F788();
    (*(*(v16 - 8) + 8))(a4, v16);
  }

  v27 = v17;
  if (__swift_getEnumTagSinglePayload(a5, 1, v16) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1AC79F788();
    (*(*(v16 - 8) + 8))(a5, v16);
  }

  v19 = sub_1AC7A0148();

  if (a7)
  {
    v20 = sub_1AC79FE18();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = sub_1AC79FF58();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    sub_1AC5CF764(0, &qword_1EB56C568, off_1E797AD30);
    v22 = sub_1AC7A0148();
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v26) = a12 & 1;
  LOWORD(v25) = a10 & 0x101;
  v23 = [v30 initWithFarField:a1 & 1 geoLMRegionID:v29 supplementalModelURL:v17 modelOverrideURL:v18 speechProfileURLs:v19 userIdMask:v20 taskForMemoryLock:v21 atypicalSpeech:v25 enableParallelLoading:v22 speechProfileContainers:v26 enableFullPayloadCorrection:a13 customLm:?];

  return v23;
}

uint64_t sub_1AC6F8BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6F8C44(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AC6F8C8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t assignWithCopy for RecognizerCapabilities(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for RecognizerCapabilities(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for RecognizerCapabilities(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RecognizerCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AC6F8E20()
{
  result = qword_1EB56D600;
  if (!qword_1EB56D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D600);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

uint64_t sub_1AC6F8EB0()
{
  OUTLINED_FUNCTION_85();
  v0[3] = v1;
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_85_0(v3);

  return AudioBufferSequence.next()();
}

uint64_t sub_1AC6F8F3C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    if (*(v5 + 24))
    {
      swift_getObjectType();
      v9 = sub_1AC7A01B8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1AC6F9098, v9, v11);
  }

  else
  {
    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1AC6F9098()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC6F9120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1AC7A01B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[5] = v5;
  v4[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AC6F91C0, v5, v7);
}

uint64_t sub_1AC6F91C0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37_9();
  v6 = (*(v1 + 80) + **(v1 + 80));
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 56) = v2;
  *v2 = v3;
  v2[1] = sub_1AC6F92D4;
  v4 = *(v0 + 24);

  return v6(v4);
}

uint64_t sub_1AC6F92D4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1AC6F93E8, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v9();
  }
}

uint64_t sub_1AC6F93E8()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_44();

  return v1();
}

void sub_1AC6F9470()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C888, &qword_1AC7AAD80);
  OUTLINED_FUNCTION_167(v2);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_35_9();
  v4 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC625D80(*v0, v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) != 1)
  {
    OUTLINED_FUNCTION_161();
    sub_1AC637E08();
    if (*(v4 + 16))
    {
      sub_1AC6A88B8(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_1AC6F9554()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8A8, &qword_1AC7B0940);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC625E7C(*v0, &v6 - v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    sub_1AC637E08();
    if (*(v4 + 16))
    {
      sub_1AC6A8A18(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t SFCustomLanguageModelData.PhraseCount.description.getter()
{
  v2 = sub_1AC7A0CC8();

  MEMORY[0x1B26E8C40](9, 0xE100000000000000);

  v0 = OUTLINED_FUNCTION_170();
  MEMORY[0x1B26E8C40](v0);

  return v2;
}

uint64_t SFCustomLanguageModelData.PhraseCount.insert(data:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return sub_1AC6FE0D8(&v5, a2);
}

uint64_t sub_1AC6F976C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657361726870 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AC7A0D38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1AC7A0D38();

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

uint64_t sub_1AC6F9834(char a1)
{
  if (a1)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x657361726870;
  }
}

uint64_t sub_1AC6F986C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6F976C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6F98B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AC6F982C();
  *a1 = result;
  return result;
}

uint64_t sub_1AC6F98DC(uint64_t a1)
{
  v2 = sub_1AC6FE194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6F9918(uint64_t a1)
{
  v2 = sub_1AC6FE194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFCustomLanguageModelData.CustomPronunciation.description.getter()
{
  v5 = *v0;

  MEMORY[0x1B26E8C40](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
  sub_1AC649C74();
  v1 = sub_1AC79FEA8();
  v3 = v2;

  MEMORY[0x1B26E8C40](v1, v3);

  return v5;
}

uint64_t SFCustomLanguageModelData.CustomPronunciation.insert(data:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  return sub_1AC6FE240(&v4, a2);
}

void static SFCustomLanguageModelData.CustomPronunciation.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_39_8(a1);
  v3 = v3 && v1 == v2;
  if (v3 || (sub_1AC7A0D38() & 1) != 0)
  {
    OUTLINED_FUNCTION_39();

    sub_1AC62852C();
  }
}

uint64_t sub_1AC6F9B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D656870617267 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AC7A0D38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D656E6F6870 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1AC7A0D38();

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

uint64_t sub_1AC6F9C50(char a1)
{
  if (a1)
  {
    return 0x73656D656E6F6870;
  }

  else
  {
    return 0x656D656870617267;
  }
}

uint64_t sub_1AC6F9C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6F9B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6F9CB0(uint64_t a1)
{
  v2 = sub_1AC6FE304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6F9CEC(uint64_t a1)
{
  v2 = sub_1AC6FE304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SFCustomLanguageModelData.CustomPronunciation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_40_0();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D620, &qword_1AC7AFB18);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_4(v24, v24[3]);
  sub_1AC6FE304();
  sub_1AC7A0F38();
  sub_1AC7A0C68();
  if (!v22)
  {
    OUTLINED_FUNCTION_85_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC7047C0(&unk_1EB56D630);
    OUTLINED_FUNCTION_20_12();
    sub_1AC7A0C88();
  }

  v26 = OUTLINED_FUNCTION_161();
  v27(v26);
  OUTLINED_FUNCTION_38_8();
}

void SFCustomLanguageModelData.CustomPronunciation.hash(into:)(uint64_t a1)
{
  sub_1AC7A0048();
  OUTLINED_FUNCTION_39();

  sub_1AC6335D8();
}

uint64_t SFCustomLanguageModelData.CustomPronunciation.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A0048();
  sub_1AC6335D8();
  return sub_1AC7A0EC8();
}

void SFCustomLanguageModelData.CustomPronunciation.init(from:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D638, &qword_1AC7AFB20);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_92_4(v2, v2[3]);
  sub_1AC6FE304();
  sub_1AC7A0F18();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_81_3();
    v7 = sub_1AC7A0C28();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_85_6();
    sub_1AC7047C0(&unk_1EB56D640);
    OUTLINED_FUNCTION_81_3();
    sub_1AC7A0C48();
    v10 = OUTLINED_FUNCTION_45_8();
    v11(v10, v5);
    *v4 = v7;
    v4[1] = v9;
    v4[2] = v12;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_1AC6FA164(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC7A0048();
  sub_1AC6335D8();
  return sub_1AC7A0EC8();
}

void sub_1AC6FA200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 32;
    do
    {
      sub_1AC68A30C(v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v4 = OUTLINED_FUNCTION_42_9();
      v5(v4);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t static SFCustomLanguageModelData.DataInsertableBuilder.buildOptional(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1AC5C6E6C();
  if (v4)
  {
    return sub_1AC5D9384(&v3, a1);
  }

  a1[3] = &type metadata for SFCustomLanguageModelData.CompoundDataInsertable;
  a1[4] = &off_1F212DF60;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AC6FA334()
{
  type metadata accessor for SFCustomLanguageModelData.PhraseCountGenerator.Iterator();

  return swift_allocObject();
}

uint64_t sub_1AC6FA430(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AC5C5380;

  return v6(a1);
}

uint64_t sub_1AC6FA558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1AC6FA624;

  return sub_1AC6F9120(a1, a2, a3);
}

uint64_t sub_1AC6FA624()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_1AC6FA724(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_14(a1 + 32, a2);

  MEMORY[0x1B26E8CF0](v3);
  sub_1AC703E6C(*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_161();
  sub_1AC7A0198();
  return swift_endAccess();
}

uint64_t sub_1AC6FA7CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AC6FA79C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AC6FA814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AC6C0278();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AC6FA840(uint64_t a1)
{
  v2 = sub_1AC70484C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6FA87C(uint64_t a1)
{
  v2 = sub_1AC70484C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AC6FA8BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D650, &qword_1AC7AFB38);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_92_4(a1, a1[3]);
  sub_1AC70484C();
  sub_1AC7A0F38();
  v3 = OUTLINED_FUNCTION_171();
  return v4(v3);
}

uint64_t sub_1AC6FA9B8()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_37_9();
  (*(v0 + 96))(v2);
  return sub_1AC7A0EC8();
}

uint64_t SFCustomLanguageModelData.PhraseCountGenerator.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_77_4();
  v1 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

uint64_t sub_1AC6FAAE8(uint64_t a1)
{
  sub_1AC7A0E78();
  (*(**v1 + 96))(v3);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6FAB48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC6FAB9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 80))();

  *a1 = v3;
  return result;
}

BOOL _s6Speech25SFCustomLanguageModelDataC11PhraseCountV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_39_8(a1);
  v5 = v5 && v3 == v4;
  if (v5)
  {
    return v1 == v2;
  }

  v6 = sub_1AC7A0D38();
  result = 0;
  if (v6)
  {
    return v1 == v2;
  }

  return result;
}

uint64_t sub_1AC6FAC94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AC7A0D38() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1AC7A0D38();

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

uint64_t sub_1AC6FAD58(char a1)
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](a1 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6FAD98(char a1)
{
  if (a1)
  {
    return 0x746E756F63;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_1AC6FADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AC6FAC94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC6FADF4(uint64_t a1)
{
  v2 = sub_1AC7048A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AC6FAE30(uint64_t a1)
{
  v2 = sub_1AC7048A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AC6FAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_40_0();
  v32 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_35_9();
  v29 = OUTLINED_FUNCTION_92_4(v25, v25[3]);
  v32(v29);
  sub_1AC7A0F38();
  sub_1AC7A0C68();
  if (!v22)
  {
    OUTLINED_FUNCTION_85_6();
    sub_1AC7A0C78();
  }

  v30 = OUTLINED_FUNCTION_161();
  v31(v30);
  OUTLINED_FUNCTION_38_8();
}

uint64_t _s6Speech25SFCustomLanguageModelDataC11PhraseCountV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1AC7A0048();
  return MEMORY[0x1B26E9A40](v2);
}

uint64_t _s6Speech25SFCustomLanguageModelDataC11PhraseCountV9hashValueSivg_0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A0048();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

void sub_1AC6FB0AC()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v17 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_92_4(v4, v4[3]);
  v2(v10);
  sub_1AC7A0F18();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_81_3();
    v11 = sub_1AC7A0C28();
    v13 = v12;
    OUTLINED_FUNCTION_85_6();
    OUTLINED_FUNCTION_81_3();
    v14 = sub_1AC7A0C38();
    v15 = OUTLINED_FUNCTION_45_8();
    v16(v15, v8);
    *v17 = v11;
    v17[1] = v13;
    v17[2] = v14;

    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_1AC6FB254(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1AC7A0E78();
  OUTLINED_FUNCTION_171_2();
  sub_1AC7A0048();
  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.Iterator.__allocating_init(templates:templateClasses:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_9();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SFCustomLanguageModelData.TemplatePhraseCountGenerator.Iterator.init(templates:templateClasses:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_48_8();
}

uint64_t sub_1AC6FB324()
{
  OUTLINED_FUNCTION_85();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v3);
  v1[17] = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v4);
  v1[18] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6FB3C0()
{
  v60 = v0;
  v1 = v0[16];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    v5 = v0[15];
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
LABEL_29:

    OUTLINED_FUNCTION_44();
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_1AC7048F4(&v56);
  v2 = v57;
  v54 = v0;
  if (v57)
  {
    v3 = v56;
    v4 = v58;
  }

  else
  {

    v6 = *(v1 + 16);
    v2 = *(v6 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_51:
      sub_1AC704554(v6);
      v6 = v51;
    }

    v7 = *(v6 + 16);
    if (v2 - 1 >= v7)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      OUTLINED_FUNCTION_2_14();
      swift_once();
      goto LABEL_47;
    }

    v8 = v7 - 1;
    v9 = v7 - v2;
    v10 = (v6 + 24 * v2);
    v11 = v10[1];
    ++v10;
    v3 = v11;
    v2 = v10[1];
    v4 = v10[2];
    memmove(v10, v10 + 3, 24 * v9);
    *(v6 + 16) = v8;
    *(v1 + 16) = v6;
  }

  swift_endAccess();
  v12 = HIBYTE(v2) & 0xF;
  v56 = v3;
  v57 = v2;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v12 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v58 = 0;
  v59 = v12;

  v13 = 0;
  v55 = 0;
  v14 = 1;
  while (1)
  {
    v6 = &v56;
    v15 = sub_1AC7A0098();
    if (!v16)
    {
      v22 = v0[15];

      *v22 = v3;
      v22[1] = v2;
      v22[2] = v4;
      goto LABEL_29;
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v17 = v15;
    v18 = v16;
    v19 = v15 == 60 && v16 == 0xE100000000000000;
    if (v19 || (sub_1AC7A0D38() & 1) != 0)
    {
      v14 = 0;
      v55 = v13;
    }

    if (v17 == 62 && v18 == 0xE100000000000000)
    {
      break;
    }

    v21 = sub_1AC7A0D38();

    if (!(v14 & 1 | ((v21 & 1) == 0)))
    {
      goto LABEL_33;
    }

LABEL_27:
    ++v13;
  }

  if (v14)
  {
    v14 = 1;
    goto LABEL_27;
  }

LABEL_33:

  v6 = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    goto LABEL_49;
  }

  swift_bridgeObjectRetain_n();
  v6 = sub_1AC7A0078();

  v25 = sub_1AC7A0078();

  if (v25 >> 14 < v6 >> 14)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_57_6();
  sub_1AC7A00F8();

  v26 = OUTLINED_FUNCTION_57_6();
  MEMORY[0x1B26E8BE0](v26);

  v27 = OUTLINED_FUNCTION_57_6();
  sub_1AC6DC694(v27, v28, v29);
  v31 = v30;

  if (!v31)
  {

    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      goto LABEL_54;
    }

LABEL_47:
    v48 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    v49 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(7, v49, v50);
    swift_willThrow();

    OUTLINED_FUNCTION_44();
LABEL_30:

    return v23();
  }

  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_53;
  }

  v33 = (v31 + 40);
  v52 = v4 / v32;
  v53 = v1;
  do
  {
    v34 = *(v33 - 1);
    v35 = *v33;
    v0[11] = v3;
    v0[12] = v2;

    v56 = sub_1AC7A00E8();
    v57 = v36;

    sub_1AC7A0078();

    sub_1AC7A0078();

    v0[13] = v34;
    v0[14] = v35;
    sub_1AC70496C();
    sub_1AC7A0038();

    v37 = v56;
    v38 = v57;
    swift_beginAccess();
    v39 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AC60DBAC(0, *(v39 + 16) + 1, 1, v39);
      v39 = v44;
      *(v1 + 16) = v44;
    }

    v42 = *(v39 + 16);
    v41 = *(v39 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_1AC60DBAC(v41 > 1, v42 + 1, 1, v39);
      v39 = v45;
    }

    *(v39 + 16) = v42 + 1;
    v43 = (v39 + 24 * v42);
    v43[4] = v37;
    v43[5] = v38;
    v1 = v53;
    v43[6] = v52;
    *(v53 + 16) = v39;
    v0 = v54;
    swift_endAccess();
    v33 += 2;
    --v32;
  }

  while (v32);

  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v54[19] = v46;
  *v46 = v47;
  v46[1] = sub_1AC6FB9F0;

  return sub_1AC6FB324();
}