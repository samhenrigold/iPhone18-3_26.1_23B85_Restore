uint64_t sub_26F130178@<X0>(uint64_t *a1@<X8>)
{
  result = static TipConfiguration.bundleIdentifierOverride.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F1301CC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26F130218()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F130280(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t static DaemonUtilities.ingestContent(_:)(uint64_t a1)
{
  sub_26F134D2C();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F130358;

  return MEMORY[0x2821D9378](a1);
}

uint64_t sub_26F130358()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F13046C()
{
  sub_26F134CBC();
  sub_26F134CAC();
  sub_26F134D0C();
  sub_26F134CFC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for DaemonUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for DaemonUtilities(_BYTE *result, int a2, int a3)
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

uint64_t static TipConfiguration.bundleIdentifierOverride.getter()
{
  v0 = sub_26F134C9C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F134C8C();
  v6 = sub_26F134C5C();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_26F130714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static TipConfiguration.bundleIdentifierOverride.setter(v1, v2);
}

uint64_t static TipConfiguration.bundleIdentifierOverride.setter(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F134C7C();
  sub_26F134C6C();
  return v2(&v4, 0);
}

void (*static TipConfiguration.bundleIdentifierOverride.modify(void *a1))(char **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v2;
  v3 = sub_26F134C9C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v2[10] = v7;
  sub_26F134C8C();
  v8 = sub_26F134C5C();
  v10 = v9;
  (*(v5 + 8))(v7, v3);
  v2[8] = v8;
  v2[9] = v10;
  return sub_26F1308AC;
}

void sub_26F1308AC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  if (a2)
  {

    v4 = sub_26F134C7C();
    OUTLINED_FUNCTION_1();
    v4(v2, 0);
  }

  else
  {
    v5 = sub_26F134C7C();
    OUTLINED_FUNCTION_1();
    v5(v2 + 32, 0);
  }

  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

_BYTE *storeEnumTagSinglePayload for TipConfiguration(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_26F134C6C();
}

uint64_t static TipEventProxy.donate(eventIdentifier:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_26F130AB8, 0, 0);
}

uint64_t sub_26F130AB8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_26F131054;
  *(v5 + 24) = v4;
  v6 = sub_26F134D3C();
  sub_26F134D4C();

  v6(v0 + 2, 0);

  if (v1)
  {
    v7 = sub_26F131064(v0[10]);
  }

  else
  {
    v7 = 0;
  }

  v0[11] = v7;
  sub_26F134CEC();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_26F130C10;
  v10 = v0[8];
  v9 = v0[9];

  return MEMORY[0x2821D9358](v10, v9);
}

uint64_t sub_26F130C10(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26F130EE8, 0, 0);
  }

  else
  {
    sub_26F134BFC();
    v8 = swift_task_alloc();
    v4[15] = v8;
    *v8 = v6;
    v8[1] = sub_26F130DA4;
    v9 = v4[11];
    v10 = v4[7];
    v11 = v4[6];

    return MEMORY[0x2821D92E0](v11, v10, v9, a1);
  }
}

uint64_t sub_26F130DA4(uint64_t a1)
{
  v3 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26F130F4C, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_26F130EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F130F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26F130FB8(uint64_t a1, uint64_t a2)
{
  sub_26F134E2C();

  MEMORY[0x274388E40](a1, a2);
  MEMORY[0x274388E40](0xD00000000000001DLL, 0x800000026F135890);
  return 0xD000000000000012;
}

unint64_t sub_26F131064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DC0, &qword_26F135338);
    v2 = sub_26F134EDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_26F1313F8(*(a1 + 56) + 56 * v11, &__src[2]);
    __src[0] = v13;
    __src[1] = v14;
    memcpy(__dst, __src, sizeof(__dst));
    v15 = *__dst;
    v16 = *&__dst[8];
    sub_26F131464(&__dst[16], v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DC8, &qword_26F135340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DD0, &qword_26F135348);
    swift_dynamicCast();
    sub_26F131484(&v26, v27);
    sub_26F131484(v27, v28);
    sub_26F131484(v28, v25);
    result = sub_26F133FB8(v15, v16);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      *v19 = v15;
      v19[1] = v16;

      v20 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_26F131484(v25, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v15;
      v21[1] = v16;
      result = sub_26F131484(v25, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t TipEventProxy.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
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

uint64_t sub_26F1313F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F131464(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

_OWORD *sub_26F131484(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static TipEventProxySwift.donate(eventIdentifier:for:)()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for TipEventProxy();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3(v8);
  *v9 = v10;
  v9[1] = sub_26F1315B8;

  return static TipEventProxy.donate(eventIdentifier:for:with:)(v7, v5, v3, v1, 0);
}

uint64_t sub_26F1315B8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_26F13172C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  sub_26F134D9C();
  v3[3] = v4;
  sub_26F134D9C();
  v3[4] = v5;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_26F13180C;

  return static TipEventProxySwift.donate(eventIdentifier:for:)();
}

uint64_t sub_26F13180C()
{
  OUTLINED_FUNCTION_7();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_26F134BBC();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 16), 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_26F1319A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DD8, &qword_26F135398);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26F134E1C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_26F1353A8;
  v9[5] = v8;
  sub_26F131FD4(0, 0, v6, &unk_26F1353B8, v9);
}

id TipEventProxySwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipEventProxySwift.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipEventProxySwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F131BA0()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_0(v1);

  return v4(v3);
}

uint64_t sub_26F131C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26F132684;

  return v6();
}

uint64_t sub_26F131D4C()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_0(v1);

  return v4(v3);
}

uint64_t sub_26F131DE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26F1315B8;

  return v7();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26F131F10()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3(v6);
  *v7 = v8;
  v7[1] = sub_26F132684;

  return sub_26F131DE8(v2, v3, v4, v5);
}

uint64_t sub_26F131FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DD8, &qword_26F135398);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_26F132270(a3, v22 - v10);
  v12 = sub_26F134E1C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26F132308(v11);
  }

  else
  {
    sub_26F134E0C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_26F134DFC();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_26F134DAC() + 32;
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

      sub_26F132308(a3);

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

  sub_26F132308(a3);
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

uint64_t sub_26F132270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DD8, &qword_26F135398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F132308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DD8, &qword_26F135398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F132370(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F132468;

  return v6(a1);
}

uint64_t sub_26F132468()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_26F13254C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2(v1);

  return v4(v3);
}

uint64_t sub_26F1325E8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2(v1);

  return v4(v3);
}

uint64_t static TipProxy.invalidate(tipIdentifier:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 112) = *a5;
  return MEMORY[0x2822009F8](sub_26F132744, 0, 0);
}

uint64_t sub_26F132744()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_26F132C94;
  *(v5 + 24) = v4;
  v6 = sub_26F134D3C();
  sub_26F134D4C();

  v6(v0 + 16, 0);

  sub_26F134CEC();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_26F132888;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return MEMORY[0x2821D9358](v9, v8);
}

uint64_t sub_26F132888(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v4 + 88) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    sub_26F134C1C();
    v10 = swift_task_alloc();
    *(v4 + 96) = v10;
    *v10 = v6;
    v10[1] = sub_26F132A14;
    v11 = *(v4 + 56);
    v12 = *(v4 + 112);
    v13 = *(v4 + 48);

    return MEMORY[0x2821D92F0](v13, v11, v12, a1);
  }
}

uint64_t sub_26F132A14()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F132B48, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_26F132B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F132BAC(uint64_t a1, uint64_t a2, char a3)
{
  sub_26F134E2C();
  MEMORY[0x274388E40](0x79786F7250706954, 0xED0000203A646928);
  MEMORY[0x274388E40](a1, a2);
  MEMORY[0x274388E40](0xD000000000000022, 0x800000026F135940);
  sub_26F134E8C();
  MEMORY[0x274388E40](41, 0xE100000000000000);
  return 0;
}

uint64_t TipProxy.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL sub_26F132D3C(char a1, char a2)
{
  sub_26F132F64();
  sub_26F134DEC();
  sub_26F134DEC();
  return v4 == v3;
}

uint64_t getEnumTagSinglePayload for TipProxy.InvalidationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipProxy.InvalidationReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26F132F64()
{
  result = qword_2806D3DE0;
  if (!qword_2806D3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D3DE0);
  }

  return result;
}

uint64_t static TipProxy.remoteTipIdentifiers(bundleID:in:)()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  v4 = v3;
  v0[4] = v5;
  v0[5] = v6;
  v0[3] = v7;
  v0[6] = sub_26F134CEC();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_26F133080;

  return MEMORY[0x2821D9358](v4, v2);
}

uint64_t sub_26F133080()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_6();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26F1331A4, 0, 0);
  }
}

uint64_t sub_26F1331A4()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 72) = sub_26F134CCC();
  v4 = (*MEMORY[0x277D71568] + MEMORY[0x277D71568]);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DE8, &qword_26F1354C0);
  *v1 = v0;
  v1[1] = sub_26F13328C;

  return v4(v0 + 16, &unk_26F1354B8, 0, v2);
}

uint64_t sub_26F13328C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_26F13344C;
  }

  else
  {

    v7 = sub_26F133394;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26F133394()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  sub_26F134BDC();
  OUTLINED_FUNCTION_6_0();
  (*(v7 + 16))(v4, v2);
  v5[3] = v3;
  *v5 = v1;
  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_26F13344C()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_26F1334B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26F1334D0, 0, 0);
}

uint64_t sub_26F1334D0()
{
  v1 = sub_26F134C4C();
  v2 = sub_26F134B40();
  MEMORY[0x274388DE0](v1, v2);
  sub_26F134D7C();
  sub_26F134D7C();
  v3 = sub_26F134D5C();

  v4 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  result = sub_26F130280(v3);
  v6 = result;
  for (i = 0; v6 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x274388EB0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v8 = sub_26F134C3C();
    if (v8)
    {

      sub_26F134E4C();
      sub_26F134E6C();
      sub_26F134E7C();
      result = sub_26F134E5C();
    }

    else
    {
    }
  }

  v9 = sub_26F130280(v20);
  if (v9)
  {
    v10 = v9;
    result = sub_26F1340E4(0, v9 & ~(v9 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_28;
    }

    v11 = 0;
    v12 = v4;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x274388EB0](v11, v20);
      }

      else
      {
      }

      v13 = sub_26F134C2C();
      v15 = v14;

      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26F1340E4((v16 > 1), v17 + 1, 1);
      }

      ++v11;
      *(v4 + 16) = v17 + 1;
      v18 = v4 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v10 != v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  **(v0 + 16) = v12;
  OUTLINED_FUNCTION_6();

  return v19();
}

uint64_t static TipProxy.remoteTipIdentifiers(in:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26F1337CC, 0, 0);
}

uint64_t sub_26F1337CC()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DF0, &qword_26F1354E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DF8, &qword_26F1354E8);
  v6 = sub_26F133E58();
  *v3 = v0;
  v3[1] = sub_26F1338E8;

  return MEMORY[0x2821D93B8](&unk_26F1354D8, v2, v4, v5, v6);
}

uint64_t sub_26F1338E8()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    v9 = sub_26F133A64;
  }

  else
  {
    *(v5 + 64) = v3;

    v9 = sub_26F133A04;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26F133A04()
{
  OUTLINED_FUNCTION_4();
  v1 = sub_26F133F04(*(v0 + 64));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26F133A64()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_26F133AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26F133AE4, 0, 0);
}

uint64_t sub_26F133AE4()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 16);
  *(v0 + 88) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DF8, &qword_26F1354E8) + 48);
  v2 = sub_26F134BCC();
  *(v0 + 40) = v3;
  *v1 = v2;
  v1[1] = v3;
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E10, &qword_26F1354F8);
  sub_26F134BCC();
  *(v0 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_26F133BE8;

  return static TipProxy.remoteTipIdentifiers(bundleID:in:)();
}

uint64_t sub_26F133BE8()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    v9 = sub_26F133D44;
  }

  else
  {
    v10 = *(v5 + 48);

    *(v5 + 80) = v3;
    *(v5 + 92) = *(v10 + 64);
    v9 = sub_26F133D0C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26F133D0C()
{
  *(*(v0 + 16) + *(v0 + 88) + *(v0 + 92)) = *(v0 + 80);
  OUTLINED_FUNCTION_6();
  return v1();
}

uint64_t sub_26F133D44()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_26F133DAC()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26F1315B8;

  return sub_26F133AC0(v5, v3, v6);
}

unint64_t sub_26F133E58()
{
  result = qword_2806D3E00;
  if (!qword_2806D3E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D3DF0, &qword_26F1354E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D3E00);
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

uint64_t sub_26F133F04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E08, &qword_26F1354F0);
    v1 = sub_26F134EDC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_26F13420C(v2, 1, &v4);

  return v4;
}

unint64_t sub_26F133FB8(uint64_t a1, uint64_t a2)
{
  sub_26F134F0C();
  sub_26F134DBC();
  v4 = sub_26F134F1C();

  return sub_26F134030(a1, a2, v4);
}

unint64_t sub_26F134030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26F134EEC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_26F1340E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F134104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F134104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D3E30, &qword_26F135510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_26F13420C(uint64_t a1, char a2, void *a3)
{
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E10, &qword_26F1354F8);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3DF8, &qword_26F1354E8);
  v10 = MEMORY[0x28223BE20](v9);
  v42 = (&v36 - v12);
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_13:

    return;
  }

  v36 = v3;
  v37 = a1;
  v13 = 0;
  v14 = *(v10 + 48);
  v38 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v39 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26F134EFC();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v42;
    sub_26F134A80(v38 + *(v11 + 72) * v13, v42, &qword_2806D3DF8, &qword_26F1354E8);
    v18 = v16[1];
    v46 = *v16;
    v17 = v46;
    v47 = v18;
    v19 = v8;
    sub_26F134658(v16 + v39, v8);
    v20 = *v43;
    v22 = sub_26F133FB8(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E18, &qword_26F135500);
      sub_26F134E9C();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v43;
    *(*v43 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = v17;
    v30[1] = v18;
    v31 = v29[7] + *(v41 + 72) * v22;
    v8 = v19;
    sub_26F134658(v19, v31);
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v34;
    a2 = 1;
    a1 = v37;
    v11 = v15;
    if (v40 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_26F134730(v25, a2 & 1);
  v27 = sub_26F133FB8(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v48 = v35;
  MEMORY[0x274389150](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E20, &qword_26F135508);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26F1346C8(v19);

    return;
  }

LABEL_22:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_26F134E2C();
  MEMORY[0x274388E40](0xD00000000000001BLL, 0x800000026F1359C0);
  sub_26F134E8C();
  MEMORY[0x274388E40](39, 0xE100000000000000);
  sub_26F134EAC();
  __break(1u);
}

uint64_t sub_26F134658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E10, &qword_26F1354F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1346C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E10, &qword_26F1354F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F134730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E10, &qword_26F1354F8);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D3E08, &qword_26F1354F0);
  v40 = v4;
  result = sub_26F134ECC();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v37 = v2;
  v38 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_26F134ADC(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v39 + 72);
    v26 = v21 + v25 * v20;
    if (v40)
    {
      sub_26F134658(v26, v41);
    }

    else
    {
      sub_26F134A80(v26, v41, &qword_2806D3E10, &qword_26F1354F8);
    }

    sub_26F134F0C();
    sub_26F134DBC();
    result = sub_26F134F1C();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v23;
    v35[1] = v24;
    result = sub_26F134658(v41, *(v9 + 56) + v25 * v30);
    ++*(v9 + 16);
    v7 = v38;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_26F134A80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26F134ADC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26F1354A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_26F134B40()
{
  result = qword_2806D3E28;
  if (!qword_2806D3E28)
  {
    sub_26F134C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D3E28);
  }

  return result;
}