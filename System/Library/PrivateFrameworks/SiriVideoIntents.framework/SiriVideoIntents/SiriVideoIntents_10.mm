void *sub_26977D4F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v4 = OUTLINED_FUNCTION_117_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_22_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26977D55C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_66_2(v4);
  v4[2] = a1;
  v4[3] = 2 * (v5 / 24);
  return v4;
}

void *sub_26977D62C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_66_2(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_26977D6A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_61_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_5_12(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
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

void *sub_26977D794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_72_0();
  v9 = a5(v8);
  OUTLINED_FUNCTION_5_12(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26977D884(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_26977D8A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_26977D944(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

void sub_26977D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_147();
  if (v8 && (a4(0), OUTLINED_FUNCTION_4_3(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_35_8();

      MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_35_8();

    MEMORY[0x2821FE828](v11);
  }
}

void sub_26977DA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_147();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_4_3(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_35_8();

      MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_35_8();

    MEMORY[0x2821FE828](v13);
  }
}

uint64_t sub_26977DB10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26977DB40(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_26977DB64(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26977DBF0(void *a1, SEL *a2, uint64_t (*a3)(void))
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  a3(0);
  v6 = sub_269854CB4();

  return v6;
}

void sub_26977DC54(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();
  [a2 setAllUmcIds_];
}

uint64_t sub_26977DCB4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  return OUTLINED_FUNCTION_25_2();
}

uint64_t sub_26977DD18(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269854CB4();

  return v4;
}

uint64_t sub_26977DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_14(a1, a2, a3);
  sub_269750050();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_167();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_61_0();
    v5 = MEMORY[0x26D646120](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_126();
}

uint64_t sub_26977DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_14(a1, a2, a3);
  sub_269750050();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_167();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_61_0();
    v5 = MEMORY[0x26D646120](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_126();
}

unint64_t sub_26977DE2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26977DE98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26977DEE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_269855324();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26977DF3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -a2;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v3 < 1)
  {
    if (v4 <= 0 && v3 < v4)
    {
      return 0;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && v4 < v3)
  {
    return 0;
  }

  v6 = __OFADD__(result, v3);
  result -= a2;
  if (v6)
  {
    goto LABEL_15;
  }

  return result;
}

id *sub_26977DF94(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for IntentExtensionExecutionDeviceState(0);
  v8[4] = sub_26977E150(&qword_280324208, type metadata accessor for IntentExtensionExecutionDeviceState, &unk_26985F484);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_26977E400(a1, boxed_opaque_existential_1);
  swift_defaultActor_initialize();
  *(a2 + 160) = 0;
  sub_2696A73F8(v8, a2 + 112);
  *(a2 + 152) = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
  v7.receiver = a2;
  v7.super_class = type metadata accessor for CarSessionProvider();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5[19] addSessionObserver_];
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_26977E088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26977E0E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26977E150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26977E198()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26977E230()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26977E2C8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_26977E360(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_50_0();
  v5(v4);
  return a2;
}

uint64_t sub_26977E400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentExtensionExecutionDeviceState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t OUTLINED_FUNCTION_3_30(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_21()
{
}

uint64_t OUTLINED_FUNCTION_15_17()
{
}

uint64_t OUTLINED_FUNCTION_20_13(void *a1, SEL *a2)
{

  return sub_26977DBF0(a1, a2, type metadata accessor for Content);
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_33_8()
{
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_55_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_67_1(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_26977D994(v2 + a2, v4, v3 + a2, a1);
}

void OUTLINED_FUNCTION_68_3()
{

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_70_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_3()
{
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_1(void *a1, SEL *a2)
{

  return sub_26977DBF0(a1, a2, type metadata accessor for UtsSearchParam);
}

unint64_t OUTLINED_FUNCTION_92_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  strcpy((v2 + 72), "tv.apple.com");
  *(v2 + 85) = 0;
  *(v2 + 86) = -5120;

  return sub_269693054();
}

void OUTLINED_FUNCTION_97_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_101_1()
{

  sub_2697ADE90(0x6C7070612E6D6F63, 0xEC00000076742E65, v0 + 16);
}

void OUTLINED_FUNCTION_104_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_106_1()
{
}

void *OUTLINED_FUNCTION_108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return __swift_project_boxed_opaque_existential_1((a1 + v1), v3);
}

void OUTLINED_FUNCTION_111_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_112_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_115_1(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_136(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26977D794(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);

  return type metadata accessor for BackgroundPlayableFetch();
}

uint64_t OUTLINED_FUNCTION_141()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_143(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

char *OUTLINED_FUNCTION_144()
{

  return PlayVideoIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_146(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_163(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269855144();
}

id OUTLINED_FUNCTION_167()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

BOOL OUTLINED_FUNCTION_168()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t type metadata accessor for IntentExtensionExecutionDeviceState(uint64_t a1)
{
  result = qword_2803243C0;
  if (!qword_2803243C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26977EE90(uint64_t a1)
{
  sub_269854304();
  if (v1 <= 0x3F)
  {
    sub_269854334();
    if (v2 <= 0x3F)
    {
      sub_2698542E4();
      if (v3 <= 0x3F)
      {
        sub_2697154B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26977EFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_269854334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26977F038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269854304();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26977F0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2698542E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26977F120(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_26977F188@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 outputVoice];

  if (v3)
  {
    v4 = [v3 gender];

    v5 = sub_2698542E4();
    v6 = *(*(v5 - 8) + 104);
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D61B68];
    }

    else if (v4 == 1)
    {
      v7 = MEMORY[0x277D61B60];
    }

    else
    {
      v7 = MEMORY[0x277D61B70];
    }

    v11 = *v7;
    v10 = a1;
  }

  else
  {
    v8 = *MEMORY[0x277D61B70];
    v9 = sub_2698542E4();
    v6 = *(*(v9 - 8) + 104);
    v5 = v9;
    v10 = a1;
    v11 = v8;
  }

  return v6(v10, v11, v5);
}

uint64_t sub_26977F2C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_26977F2DC()
{
  OUTLINED_FUNCTION_2_7();
  *(v0 + 40) = sub_269854A04();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26977F3A4;

  return sub_2696B8B54();
}

uint64_t sub_26977F3A4()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void *sub_26977F4B8()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  v2 = sub_269853264();
  swift_allocObject();

  v3 = sub_269853254();
  v14[3] = v0;
  v14[4] = &off_287A3DBA0;
  v14[0] = v1;
  v12 = v2;
  v13 = MEMORY[0x277D5BD58];
  *&v11 = v3;
  type metadata accessor for PlayVideoUnsupportedValueStrategy();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v0;
  v4[6] = &off_287A3DBA0;
  v4[2] = v9;
  sub_2696AE06C(&v11, (v4 + 7));
  __swift_destroy_boxed_opaque_existential_0(v14);

  return v4;
}

uint64_t sub_26977F624()
{
  OUTLINED_FUNCTION_2_7();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  sub_269852EB4();
  v1[19] = swift_task_alloc();
  v4 = sub_269853634();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v5 = sub_2698548D4();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26977F76C);
}

uint64_t sub_26977F76C()
{
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "PlayVideoUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);

  (*(v9 + 8))(v8, v10);
  sub_269852E64();
  sub_2698535C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243D0, &unk_26985F688);
  v11 = sub_2698536C4();
  v12 = [v11 unsupportedReason];

  v13 = PlayVideoContentUnsupportedReason.init(rawValue:)(v12);
  v14 = v13;
  v16 = v15;
  if (v15)
  {
    goto LABEL_6;
  }

  if (v13 == 6)
  {
    *(v0 + 16) = 0;
    *(v0 + 20) = 0;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_26978002C;

    return sub_2696C0FB4();
  }

  else
  {
    if (v13 == 5)
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
      v30 = OUTLINED_FUNCTION_30_0();
      *(v0 + 224) = v30;
      *v30 = v0;
      v30[1] = sub_26977FDE0;
      v29 = 0x800000026987EE70;
      v28 = 0xD000000000000010;
    }

    else
    {
      if (v13 != 1)
      {
LABEL_6:
        type metadata accessor for PlayVideoIntent();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        result = sub_2696BBEF8(ObjCClassFromMetadata);
        if (v19)
        {
          v20 = result;
          v21 = v19;
          if (v16)
          {
            v22 = -1;
          }

          else
          {
            v22 = v14;
          }

          sub_2696BAE9C();
          swift_allocError();
          *v23 = v20;
          *(v23 + 8) = v21;
          *(v23 + 16) = v22;
          *(v23 + 24) = 2;
          swift_willThrow();
          v24 = OUTLINED_FUNCTION_1_25();
          v25(v24);

          OUTLINED_FUNCTION_7_7();

          return v26();
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
      v27 = OUTLINED_FUNCTION_30_0();
      *(v0 + 208) = v27;
      *v27 = v0;
      v27[1] = sub_26977FB94;
      v28 = 0xD000000000000015;
      v29 = 0x800000026987DB70;
    }

    return v32(v28, v29);
  }
}

uint64_t sub_26977FB94()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v7 + 216) = v0;

  if (v0)
  {
    v8 = sub_26977FD5C;
  }

  else
  {
    v8 = sub_26977FC98;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26977FC98()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_22(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_34(v5);

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_26977FD5C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_1_25();
  v1(v0);

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_26977FDE0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v7 + 232) = v0;

  if (v0)
  {
    v8 = sub_26977FFA8;
  }

  else
  {
    v8 = sub_26977FEE4;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26977FEE4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_22(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_34(v5);

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_26977FFA8()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_1_25();
  v1(v0);

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_26978002C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v2[13] = v1;
  v2[14] = v4;
  v2[15] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v7 + 248) = v0;

  if (v0)
  {
    v8 = sub_2697803A4;
  }

  else
  {
    v8 = sub_269780130;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269780130()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_5_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v2 = swift_allocObject();
  *(v0 + 264) = v2;
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_22(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_34(v5);

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_2697801F4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2697802FC);
}

uint64_t sub_2697802FC()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2697803A4()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_1_25();
  v1(v0);

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_26978043C()
{
  OUTLINED_FUNCTION_2_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243D0, &unk_26985F688);
  v1 = sub_2698536B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2697804D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26977F624();
}

uint64_t sub_269780580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_269780428(a1);
}

uint64_t sub_269780614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayVideoUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

void *OUTLINED_FUNCTION_5_26()
{
  v2 = *(v0 + 144);
  *(v0 + 256) = v1;
  return __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
}

id sub_269780774()
{
  result = [objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentHandler()) init];
  qword_28033D728 = result;
  return result;
}

uint64_t sub_2697807A8(uint64_t a1)
{
  v119 = a1;
  v120 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v111 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v102 = v4 - v3;
  sub_269851F04();
  OUTLINED_FUNCTION_8();
  v117 = v6;
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v103 = v8 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F40, &unk_26985DE30);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_24_3();
  v107 = v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  v114 = &v102 - v11;
  sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v109 = v13;
  v110 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v108 = v15 - v14;
  sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v112 = v17;
  v113 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v102 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F48, qword_26985DE40);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_24_3();
  v106 = v25;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v26);
  v104 = &v102 - v27;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v28);
  v105 = &v102 - v29;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v30);
  v115 = &v102 - v31;
  OUTLINED_FUNCTION_22_0();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v102 - v36;
  v38 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v44 = v43 - v42;
  v45 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_1();
  v51 = (v50 - v49);
  (*(v47 + 16))(v50 - v49, v119, v45);
  v52 = OUTLINED_FUNCTION_7_23();
  v54 = v53(v52);
  if (v54 != *MEMORY[0x277D5C140])
  {
    v60 = v120;
    if (v54 != *MEMORY[0x277D5C148])
    {
      v83 = OUTLINED_FUNCTION_7_23();
      v84(v83);
LABEL_28:
      v90 = 0;
      return v90 & 1;
    }

    v61 = OUTLINED_FUNCTION_7_23();
    v62(v61);
    v63 = *v51;
    sub_2696D6C54();
    if (v64)
    {
      v65 = v64;
      v66 = v102;
      sub_269854544();

      v67 = v108;
      sub_269852424();
      (*(v111 + 8))(v66, v60);
      v68 = v105;
      sub_2698523A4();
      (*(v109 + 8))(v67, v110);
      v69 = 0;
      v71 = v117;
      v70 = v118;
      v73 = v106;
      v72 = v107;
    }

    else
    {
      v69 = 1;
      v71 = v117;
      v70 = v118;
      v73 = v106;
      v72 = v107;
      v68 = v105;
    }

    v95 = v104;
    __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
    (*(v71 + 104))(v95, *MEMORY[0x277D391E8], v70);
    __swift_storeEnumTagSinglePayload(v95, 0, 1, v70);
    v96 = *(v116 + 48);
    sub_269740BE4(v68, v72);
    sub_269740BE4(v95, v72 + v96);
    OUTLINED_FUNCTION_8_21(v72);
    if (v97)
    {

      OUTLINED_FUNCTION_3_23(v95);
      OUTLINED_FUNCTION_3_23(v68);
      OUTLINED_FUNCTION_8_21(v72 + v96);
      if (v97)
      {
        v82 = v72;
        goto LABEL_22;
      }
    }

    else
    {
      sub_269740BE4(v72, v73);
      OUTLINED_FUNCTION_8_21(v72 + v96);
      if (!v97)
      {
        v98 = v72 + v96;
        v99 = v103;
        (*(v71 + 32))(v103, v98, v70);
        sub_269740C54();
        v90 = sub_269854A54();

        v100 = *(v71 + 8);
        v100(v99, v70);
        OUTLINED_FUNCTION_5_22(v95);
        OUTLINED_FUNCTION_5_22(v68);
        v100(v73, v70);
        v94 = v72;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_3_23(v95);
      OUTLINED_FUNCTION_3_23(v68);
      (*(v71 + 8))(v73, v70);
    }

    v87 = v72;
    goto LABEL_27;
  }

  v55 = OUTLINED_FUNCTION_7_23();
  v56(v55);
  v107 = v40;
  v57 = *(v40 + 32);
  v119 = v38;
  v57(v44, v51, v38);
  sub_269853864();
  sub_2696D3C74();
  (*(v112 + 8))(v20, v113);
  v58 = v120;
  if (__swift_getEnumTagSinglePayload(v23, 1, v120) == 1)
  {
    sub_269698048(v23, &qword_280323360, &unk_26985AB80);
    v59 = 1;
  }

  else
  {
    v74 = v108;
    sub_269852424();
    (*(v111 + 8))(v23, v58);
    sub_2698523A4();
    (*(v109 + 8))(v74, v110);
    v59 = 0;
  }

  v75 = v117;
  v76 = v118;
  v77 = v115;
  __swift_storeEnumTagSinglePayload(v37, v59, 1, v118);
  (*(v75 + 104))(v35, *MEMORY[0x277D391E8], v76);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v76);
  v78 = *(v116 + 48);
  v79 = v114;
  sub_269740BE4(v37, v114);
  sub_269740BE4(v35, v79 + v78);
  if (__swift_getEnumTagSinglePayload(v79, 1, v76) != 1)
  {
    sub_269740BE4(v79, v77);
    if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v76) == 1)
    {
      OUTLINED_FUNCTION_3_23(v35);
      OUTLINED_FUNCTION_3_23(v37);
      v85 = OUTLINED_FUNCTION_2_17();
      v86(v85);
      (*(v75 + 8))(v77, v76);
      goto LABEL_14;
    }

    v88 = v79 + v78;
    v89 = v103;
    (*(v75 + 32))(v103, v88, v76);
    sub_269740C54();
    v90 = sub_269854A54();
    v91 = *(v75 + 8);
    v91(v89, v76);
    OUTLINED_FUNCTION_5_22(v35);
    OUTLINED_FUNCTION_5_22(v37);
    v92 = OUTLINED_FUNCTION_2_17();
    v93(v92);
    v91(v115, v76);
    v94 = v79;
LABEL_29:
    OUTLINED_FUNCTION_5_22(v94);
    return v90 & 1;
  }

  OUTLINED_FUNCTION_3_23(v35);
  OUTLINED_FUNCTION_3_23(v37);
  v80 = OUTLINED_FUNCTION_2_17();
  v81(v80);
  if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v76) != 1)
  {
LABEL_14:
    v87 = v79;
LABEL_27:
    sub_269698048(v87, &qword_280323F40, &unk_26985DE30);
    goto LABEL_28;
  }

  v82 = v79;
LABEL_22:
  sub_269698048(v82, &qword_280323F48, qword_26985DE40);
  v90 = 1;
  return v90 & 1;
}

id sub_269781218()
{
  if (qword_2803224C8 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D728;
  qword_28033D730 = qword_28033D728;

  return v1;
}

uint64_t sub_26978127C()
{
  v0 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v12 = __swift_project_value_buffer(v6, qword_28033D910);
  (*(v8 + 16))(v11, v12, v6);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v2;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "RemoveFromWatchListFlowStrategy.actionForInput() called", v15, 2u);
    v2 = v20;
    MEMORY[0x26D647170](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v6);
  sub_269853844();
  v17 = sub_2697807A8(v5);
  (*(v2 + 8))(v5, v0);
  if (v17)
  {
    return sub_269853004();
  }

  else
  {
    return sub_269853014();
  }
}

uint64_t sub_2697814D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v2[4] = OUTLINED_FUNCTION_4_7();
  v3 = sub_269852474();
  v2[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_269851ED4();
  v2[9] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v2[10] = v6;
  v2[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269851EF4();
  v2[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v2[13] = v8;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = sub_269853874();
  v2[16] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v2[17] = v10;
  v2[18] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698538B4();
  v2[19] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v2[20] = v12;
  v2[21] = OUTLINED_FUNCTION_4_7();
  v13 = sub_2698548D4();
  v2[22] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v2[23] = v14;
  v2[24] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_26978175C);
}

uint64_t sub_26978175C()
{
  v1 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v3 = v0[23];
  v2 = v1[24];
  v4 = v1[22];
  v5 = __swift_project_value_buffer(v4, qword_28033D910);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "RemoveFromWatchListFlowStrategy.makeIntentFromParse() called", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[22];
  v12 = v1[3];

  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    v13 = v1[3];
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntent()) init];
  }

  v15 = v1[20];
  v14 = v1[21];
  v16 = v1[19];
  (*(v15 + 16))(v14, v1[2], v16);
  v17 = (*(v15 + 88))(v14, v16);
  if (v17 == *MEMORY[0x277D5C140])
  {
    v58 = v13;
    v18 = v1[18];
    v19 = v1[21];
    v20 = v1[17];
    v21 = v1[15];
    v22 = v1[13];
    v52 = v1[16];
    v53 = v1[12];
    v24 = v1[10];
    v23 = v1[11];
    v56 = v1[14];
    v57 = v1[5];
    v25 = v1[3];
    v54 = v1[9];
    v55 = v1[4];
    (*(v1[20] + 96))(v19, v1[19]);
    (*(v20 + 32))(v18, v19, v52);
    v26 = v25;
    sub_269853864();
    sub_269851EE4();
    v27 = *(v22 + 8);
    v27(v21, v53);
    sub_269851EB4();
    (*(v24 + 8))(v23, v54);
    sub_269853864();
    sub_2696D3C74();
    v27(v56, v53);
    if (__swift_getEnumTagSinglePayload(v55, 1, v57) == 1)
    {
      v29 = v1[17];
      v28 = v1[18];
      v30 = v1[16];
      v31 = v1[4];

      sub_2696CC3F8(v31);
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v32, 11);

      (*(v29 + 8))(v28, v30);
LABEL_19:
      OUTLINED_FUNCTION_4_19();

      v50 = v1[1];

      return v50();
    }

    v42 = v1[8];
    v43 = v1[5];
    v44 = v1[6];
    (*(v44 + 32))(v42, v1[4], v43);
    sub_2697A27C0();

    (*(v44 + 8))(v42, v43);
  }

  else
  {
    v33 = v1[20];
    v34 = v1[21];
    v35 = v1[19];
    v36 = v1[3];
    if (v17 != *MEMORY[0x277D5C148])
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v48, 13);
      v49 = v36;

      (*(v33 + 8))(v34, v35);
      goto LABEL_19;
    }

    (*(v33 + 96))(v1[21], v1[19]);
    v37 = *v34;
    v38 = v36;
    sub_2696D6C54();
    if (!v39)
    {
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_3_24(v51, 11);

      goto LABEL_19;
    }

    v40 = v39;
    sub_269854544();
    v41 = v40;
    sub_2698544E4();

    sub_2697A27C0();

    v58 = v13;
  }

  OUTLINED_FUNCTION_4_19();
  (*(v45 + 8))();

  v46 = v1[1];

  return v46(v58);
}

uint64_t sub_269781D80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269741AF0;

  return sub_2697814D8(a1, a2);
}

uint64_t sub_269781E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RemoveFromWatchListFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_269781E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_269781F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_269782000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_2697820CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2696C995C;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2697821A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_269740D68(a1, a2, a3, a4, a5);
  v7 = *(v5 + 8);

  return v7(v6);
}

uint64_t sub_269782204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2696DC678;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_269782348(uint64_t a1)
{
  result = sub_2697823C0(&qword_2803243D8, &unk_26985F790);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2697823C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromWatchListFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_269782400()
{
  if (qword_2803224C8 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D728;
  qword_28033D738 = qword_28033D728;

  return v1;
}

uint64_t sub_269782464()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698532A4();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[17] = v5;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[19] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26978258C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v0[19], qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_15_13(&dword_269684000, v6, v7, "RemoveFromWatchListHandleIntentFlowStrategy.makeIntentHandledResponse() called");
    MEMORY[0x26D647170](v5, -1, -1);
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v11 = v0[14];

  (*(v9 + 8))(v8, v10);
  sub_269743A7C(v11 + 104, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243F8, qword_26985FA30);
  v12 = sub_269853504();
  v13 = [v12 content];

  if (v13)
  {
    sub_26978701C(v13);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v0[22] = v15;
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_269742684;
  OUTLINED_FUNCTION_12_17();

  return sub_2696C5C2C();
}

uint64_t sub_269782760()
{
  OUTLINED_FUNCTION_2_7();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698532A4();
  v1[24] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[25] = v5;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = sub_2698548D4();
  v1[28] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[29] = v7;
  v1[30] = OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26978289C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v0[28], qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_15_13(&dword_269684000, v6, v7, "RemoveFromWatchListHandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called");
    MEMORY[0x26D647170](v5, -1, -1);
  }

  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[22];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243F8, qword_26985FA30);
  v12 = sub_2698534E4();
  v13 = OBJC_IVAR___RemoveFromWatchListIntentResponse_code;
  swift_beginAccess();
  v14 = *&v12[v13];

  if (v14 == 100)
  {
    __swift_project_boxed_opaque_existential_1((v11 + 104), *(v0[22] + 128));
    v15 = swift_task_alloc();
    v0[31] = v15;
    *v15 = v0;
    v15[1] = sub_269742DF0;
    v16 = v0[27];

    return sub_269788BF4(v16, 0xD00000000000001FLL, 0x800000026987E2D0);
  }

  else
  {
    sub_269743A7C(v11 + 104, (v0 + 2));
    v18 = sub_269853504();
    v19 = [v18 content];

    if (v19)
    {
      sub_26978701C(v19);
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v0[33] = v21;
    v22 = swift_task_alloc();
    v0[34] = v22;
    *v22 = v0;
    v22[1] = sub_2697430D8;
    OUTLINED_FUNCTION_12_17();

    return sub_2696C616C();
  }
}

uint64_t sub_269782B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_269782C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_269782D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_269782DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_269782464();
}

uint64_t sub_269782E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_269782F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_269783014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_269782760();
}

uint64_t sub_2697830C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_269740DA0(a1, a2, a3, a4, a5);
  v7 = *(v5 + 8);

  return v7(v6);
}

unint64_t sub_26978311C(uint64_t a1)
{
  result = sub_269783144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_269783144()
{
  result = qword_2803243F0;
  if (!qword_2803243F0)
  {
    type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803243F0);
  }

  return result;
}

id sub_26978319C()
{
  v13[3] = &type metadata for UTSProvider;
  v13[4] = &off_287A43FA8;
  v0 = swift_allocObject();
  v13[0] = v0;
  v11 = &type metadata for CoreAnalyticsService;
  v12 = &xmmword_287A41610;
  v0[5] = &type metadata for UTSNetworkProvider;
  v0[6] = &off_287A43DC0;
  v1 = swift_allocObject();
  v0[2] = v1;
  sub_2697D24B0(&v10, (v1 + 16));
  v0[10] = &type metadata for CoreAnalyticsService;
  v0[11] = &xmmword_287A41610;
  v11 = &type metadata for UTSProvider;
  v12 = &off_287A43FA8;
  v2 = swift_allocObject();
  v9 = &xmmword_287A41610;
  *&v10 = v2;
  v8 = &type metadata for CoreAnalyticsService;
  v2[5] = &type metadata for UTSNetworkProvider;
  v2[6] = &off_287A43DC0;
  v3 = swift_allocObject();
  v2[2] = v3;
  sub_2697D24B0(&v7, (v3 + 16));
  v2[10] = &type metadata for CoreAnalyticsService;
  v2[11] = &xmmword_287A41610;
  sub_2696B2824(v13, &v7);
  sub_269746E7C(&v10, v6);
  v4 = sub_2697858F0(&v7, v6);
  sub_269747248(&v10);
  sub_2696B28D4(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_26978332C()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_269854824();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v5 = sub_269851D34();
  v1[14] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[15] = v6;
  v1[16] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[17] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_37_0();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697834AC()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v1 = *(v0 + 144);
  v2 = __swift_project_value_buffer(*(v0 + 136), qword_28033D928);
  v3 = v2;
  *(v0 + 192) = v2;
  v4 = *(v1 + 16);
  *(v0 + 200) = v4;
  *(v0 + 208) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = OUTLINED_FUNCTION_7_16();
  v4(v5);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v8);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v9, v7, "Resolve step");
    OUTLINED_FUNCTION_12_1();
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);

  v13 = *(v12 + 8);
  *(v0 + 216) = v13;
  v13(v10, v11);
  *(v0 + 40) = &type metadata for SiriVideoFeatureKeys;
  *(v0 + 48) = sub_2696A2978();
  *(v0 + 16) = 2;
  v14 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v14 & 1) == 0)
  {
    v24 = OUTLINED_FUNCTION_7_16();
    v4(v24);
    v25 = sub_2698548B4();
    v26 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v26))
    {
      v27 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v27);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v28, v29, "watchlist support flag is not enabled");
      OUTLINED_FUNCTION_18_7();
    }

    v30 = OUTLINED_FUNCTION_22_3();
    (v13)(v30);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(6);
LABEL_40:
    OUTLINED_FUNCTION_11_25();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_116();

    __asm { BRAA            X2, X16 }
  }

  v15 = *(v0 + 64);
  sub_269851D24();
  v16 = [v15 content];
  if (v16)
  {
    v17 = v16;
    sub_26977E470(v16);
    if (v18)
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 112);
      v22 = *(v0 + 72);

      __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService), *(v22 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService + 24));
      v23 = sub_2696C9DAC();
      sub_2697B2EA8(v23);
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      static ContentResolutionResult.success(with:)(v17);

      (*(v20 + 8))(v19, v21);
      goto LABEL_40;
    }
  }

  v31 = [*(v0 + 64) contentSearch];
  *(v0 + 224) = v31;
  if (!v31)
  {
    v48 = OUTLINED_FUNCTION_7_16();
    v4(v48);
    v49 = sub_2698548B4();
    v50 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v50))
    {
      v51 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v51);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v52, v53, "Missing required search from intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v54 = *(v0 + 128);
    v55 = *(v0 + 112);
    v56 = *(v0 + 120);

    v57 = OUTLINED_FUNCTION_22_3();
    (v13)(v57);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(5);
    (*(v56 + 8))(v54, v55);
    goto LABEL_40;
  }

  v32 = v31;
  sub_26977E46C(v31);
  if (v33)
  {
    v34 = v33;
    goto LABEL_16;
  }

  v77 = v32;
  v58 = sub_2697856BC(v32);
  if (!v58)
  {
    goto LABEL_37;
  }

  v59 = v58;
  v60 = sub_26975004C();
  for (i = 0; ; ++i)
  {
    if (v60 == i)
    {

LABEL_37:
      v65 = OUTLINED_FUNCTION_7_16();
      v4(v65);
      v66 = sub_2698548B4();
      v67 = sub_269854F44();
      if (OUTLINED_FUNCTION_19_5(v67))
      {
        v68 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_24(v68);
        OUTLINED_FUNCTION_97_1(&dword_269684000, v69, v3, "Unable to infer title from search parameters");
        OUTLINED_FUNCTION_12_1();
      }

      v70 = *(v0 + 160);
      v71 = *(v0 + 136);
      v73 = *(v0 + 120);
      v72 = *(v0 + 128);
      v74 = *(v0 + 112);

      v13(v70, v71);
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(3);

      (*(v73 + 8))(v72, v74);
      goto LABEL_40;
    }

    if ((v59 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x26D646120](i, v59);
    }

    else
    {
      if (i >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v62 = *(v59 + 8 * i + 32);
    }

    v63 = v62;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v62 role] == 8)
    {

      sub_2696D1E04(v63, &selRef_name);
      v34 = v64;

      if (v34)
      {
LABEL_16:
        *(v0 + 232) = v34;
        if (qword_280322710 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_17:
  v35 = sub_269854854();
  __swift_project_value_buffer(v35, qword_28033D958);
  sub_269854814();
  v36 = sub_269854844();
  v37 = sub_269854FF4();
  if (sub_269855074())
  {
    v38 = OUTLINED_FUNCTION_16_2();
    *v38 = 0;
    v39 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v36, v37, v39, "removeFromWatchListDisambiguateResolve", "", v38, 2u);
    OUTLINED_FUNCTION_10();
  }

  v40 = *(v0 + 96);
  v41 = *(v0 + 104);
  v42 = *(v0 + 80);
  v43 = *(v0 + 88);
  v44 = *(v0 + 72);

  (*(v43 + 16))(v40, v41, v42);
  sub_269854894();
  swift_allocObject();
  *(v0 + 240) = sub_269854884();
  (*(v43 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver), *(v44 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver + 24));
  v45 = swift_task_alloc();
  *(v0 + 248) = v45;
  *v45 = v0;
  v45[1] = sub_269783B94;
  OUTLINED_FUNCTION_116();

  return sub_2697BD868();
}

uint64_t sub_269783B94()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v5 + 256) = v0;

  if (v0)
  {
    v8 = sub_269783FD0;
  }

  else
  {
    *(v5 + 264) = v3;
    v8 = sub_269783CD0;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269783CD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_1((v0[9] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService), *(v0[9] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService + 24));
  v2 = sub_26975004C();
  v3 = sub_2696C9DAC();
  sub_2697B2BF8(v2, v3);
  v0[34] = [v1 itemLimit];
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_269783DCC;

  return sub_2697850FC();
}

uint64_t sub_269783DCC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  *(v6 + 288) = v5;

  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269783EEC()
{
  v1 = *(v0 + 224);
  sub_26978422C(*(v0 + 240));

  v2 = OUTLINED_FUNCTION_22_3();
  v3(v2);
  OUTLINED_FUNCTION_11_25();

  v4 = OUTLINED_FUNCTION_8_23();

  return v5(v4);
}

void sub_269783FD0()
{
  v1 = *(v0 + 256);
  (*(v0 + 200))(*(v0 + 168), *(v0 + 192), *(v0 + 136));
  v2 = v1;
  v3 = sub_2698548B4();
  v4 = sub_269854F24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v22 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    *(v0 + 56) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v9 = sub_269854AE4();
    v11 = sub_26974F520(v9, v10, &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_269684000, v3, v4, "Error while resolving WatchList content: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v12 = OUTLINED_FUNCTION_22_3();
    v22(v12);
  }

  else
  {
    v13 = *(v0 + 216);

    v14 = OUTLINED_FUNCTION_22_3();
    v13(v14);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  type metadata accessor for RemoveFromWatchListContentResolutionResult();
  static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(1);

  sub_26978422C(v15);

  (*(v18 + 8))(v17, v19);
  OUTLINED_FUNCTION_11_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_116();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26978422C(uint64_t a1)
{
  v1 = sub_269854864();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v9 = sub_269854854();
  __swift_project_value_buffer(v9, qword_28033D958);
  v10 = sub_269854844();
  sub_269854874();
  v11 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v10, v11, v14, "removeFromWatchListDisambiguateResolve", v12, v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2697844D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269745730;

  return sub_26978332C();
}

uint64_t sub_26978459C()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_37_0();
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26978464C()
{
  v1 = [*(v0 + 16) content];
  if (v1 && (v2 = *(v0 + 16), v1, (v3 = [v2 content]) != 0) && (sub_26978701C(v3), v4))
  {

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v5 = (v0 + 48);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v6 = OUTLINED_FUNCTION_2_8();
    v7(v6);
    v8 = sub_2698548B4();
    v9 = sub_269854F04();
    if (OUTLINED_FUNCTION_19_4(v9))
    {
      v10 = "Confirm step: success";
LABEL_12:
      v13 = *v5;
      v14 = OUTLINED_FUNCTION_16_2();
      *v14 = 0;
      _os_log_impl(&dword_269684000, v8, v9, v10, v14, 2u);
      OUTLINED_FUNCTION_10();
      goto LABEL_15;
    }

    v13 = *v5;
  }

  else
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v5 = (v0 + 40);
    __swift_project_value_buffer(*(v0 + 24), qword_28033D928);
    v11 = OUTLINED_FUNCTION_2_8();
    v12(v11);
    v8 = sub_2698548B4();
    v9 = sub_269854F04();
    if (OUTLINED_FUNCTION_19_4(v9))
    {
      v10 = "Confirm step: no content";
      goto LABEL_12;
    }

    v13 = *v5;
  }

LABEL_15:
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  (*(v16 + 8))(v13, v15);
  v17 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
  v18 = OUTLINED_FUNCTION_11_16();
  RemoveFromWatchListIntentResponse.init(code:userActivity:)(v18, 0);

  v19 = OUTLINED_FUNCTION_8_23();

  return v20(v19);
}

uint64_t sub_2697848A8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26974729C;

  return sub_26978459C();
}

uint64_t sub_269784968()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2698548D4();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_37_0();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269784A24()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v2, qword_28033D928);
  v0[10] = v4;
  v5 = *(v3 + 16);
  v0[11] = v5;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v8);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v9, v10, "Handle step");
    OUTLINED_FUNCTION_18_7();
  }

  v11 = v0[6];
  v12 = v0[3];

  v0[13] = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  v14(v13);
  v15 = [v12 content];
  if (v15 && (sub_2696D1E04(v15, &selRef_umcId), (v0[14] = v16) != 0))
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService), *(v0[4] + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService + 24));
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_269784C48;
    v18 = OUTLINED_FUNCTION_7_16();

    return sub_2697B97D8(v18, v19);
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(5, 0);

    v22 = OUTLINED_FUNCTION_8_23();

    return v23(v22);
  }
}

uint64_t sub_269784C48()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_269784E74;
  }

  else
  {
    v5 = sub_269784D68;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269784D68()
{
  OUTLINED_FUNCTION_34();
  (*(v0 + 88))(*(v0 + 64), *(v0 + 80), *(v0 + 40));
  v1 = sub_2698548B4();
  v2 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v2))
  {
    v3 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v3);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v4, v5, "Successfully removed item from watchlist");
    OUTLINED_FUNCTION_18_7();
  }

  v6 = *(v0 + 104);

  v7 = OUTLINED_FUNCTION_22_3();
  v6(v7);
  v8 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
  RemoveFromWatchListIntentResponse.init(code:userActivity:)(4, 0);

  v9 = OUTLINED_FUNCTION_8_23();

  return v10(v9);
}

uint64_t sub_269784E74()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if (!swift_dynamicCast() || *(v0 + 136))
  {

    objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(5, 0);
    v15 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    v3(v5, v4, v6);
    v7 = sub_2698548B4();
    v8 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v8))
    {
      v9 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v9);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v10, v11, "User was not consented to the TV app");
      OUTLINED_FUNCTION_18_7();
    }

    v12 = *(v0 + 104);

    v13 = OUTLINED_FUNCTION_22_3();
    v12(v13);
    v14 = objc_allocWithZone(type metadata accessor for RemoveFromWatchListIntentResponse());
    RemoveFromWatchListIntentResponse.init(code:userActivity:)(100, 0);
    v15 = *(v0 + 16);
  }

  v16 = OUTLINED_FUNCTION_8_23();

  return v17(v16);
}

uint64_t sub_269785038(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26974729C;

  return sub_269784968();
}

uint64_t sub_2697850FC()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2698548D4();
  v0[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_37_0();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697851D0()
{
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v1 = v0[5];
  v2 = __swift_project_value_buffer(v0[4], qword_28033D928);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_7_16();
  v3(v4);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v7);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v8, v6, "RemoveFromWatchListIntentHandler::handleSuggestedContent Found suggested content in the intent, attempting to use it");
    OUTLINED_FUNCTION_12_1();
  }

  v9 = v0[10];
  v10 = v0[4];
  v11 = v0[5];

  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = sub_26975004C();
  if (v13 != 1)
  {
    if (v13 >= 2)
    {
      v33 = OUTLINED_FUNCTION_7_16();
      v3(v33);

      v34 = sub_2698548B4();
      v35 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = sub_26975004C();

        _os_log_impl(&dword_269684000, v34, v2, "Disambiguating %ld content options from WatchList", v36, 0xCu);
        OUTLINED_FUNCTION_12_1();
      }

      else
      {
      }

      v12(v0[8], v0[4]);
      type metadata accessor for RemoveFromWatchListContentResolutionResult();
      v44 = OUTLINED_FUNCTION_7_16();
      v46 = sub_2696D18D0(v44, v45);
      static ContentResolutionResult.disambiguation(with:)(v46);
      OUTLINED_FUNCTION_11_16();

      goto LABEL_24;
    }

    v25 = OUTLINED_FUNCTION_7_16();
    v3(v25);
    v26 = sub_2698548B4();
    v27 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_5(v27))
    {
      v28 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v28);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v29, v30, "Got no results for request");
      OUTLINED_FUNCTION_18_7();
    }

    v31 = OUTLINED_FUNCTION_22_3();
    (v12)(v31);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    v32 = 2;
    goto LABEL_21;
  }

  if (!sub_26975004C())
  {
    v37 = OUTLINED_FUNCTION_7_16();
    v3(v37);
    v38 = sub_2698548B4();
    v39 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v39))
    {
      v40 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v40);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v41, v42, "Content item didn't include UMC ID");
      OUTLINED_FUNCTION_18_7();
    }

    v43 = OUTLINED_FUNCTION_22_3();
    (v12)(v43);
    type metadata accessor for RemoveFromWatchListContentResolutionResult();
    v32 = 1;
LABEL_21:
    static RemoveFromWatchListContentResolutionResult.unsupported(forReason:)(v32);
    goto LABEL_24;
  }

  v14 = v0[2] & 0xC000000000000001;
  sub_269750050();
  v15 = v0[2];
  if (v14)
  {
    v16 = MEMORY[0x26D646120](0, v15);
  }

  else
  {
    v16 = *(v15 + 32);
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_7_16();
  v3(v18);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v20))
  {
    v21 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v21);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v22, v2, "Returning success with only result");
    OUTLINED_FUNCTION_12_1();
  }

  v23 = v0[9];
  v24 = v0[4];

  v12(v23, v24);
  type metadata accessor for RemoveFromWatchListContentResolutionResult();
  static ContentResolutionResult.success(with:)(v17);

LABEL_24:

  v47 = OUTLINED_FUNCTION_8_23();

  return v48(v47);
}

id sub_269785604(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoveFromWatchListIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2697856BC(void *a1)
{
  v1 = [a1 roles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Person();
  v3 = sub_269854CB4();

  return v3;
}

uint64_t sub_269785728()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_2697857C0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

uint64_t sub_269785858()
{
  OUTLINED_FUNCTION_8_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_25(v1);

  return v3(v2);
}

id sub_2697858F0(uint64_t a1, uint64_t a2)
{
  v33[3] = &type metadata for ContentResolver;
  v33[4] = &off_287A42478;
  v4 = swift_allocObject();
  v33[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v32[3] = &type metadata for WatchListServiceImpl;
  v32[4] = &off_287A42000;
  v6 = swift_allocObject();
  v32[0] = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v31[3] = &type metadata for CoreAnalyticsService;
  v31[4] = &xmmword_287A41610;
  v30[3] = &type metadata for FeatureFlagServiceImpl;
  v30[4] = &off_287A41BD8;
  v8 = type metadata accessor for RemoveFromWatchListIntentHandler();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v33, &type metadata for ContentResolver);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for WatchListServiceImpl);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for FeatureFlagServiceImpl);
  v29[3] = &type metadata for ContentResolver;
  v29[4] = &off_287A42478;
  v18 = swift_allocObject();
  v29[0] = v18;
  v19 = *(v12 + 1);
  *(v18 + 16) = *v12;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v12 + 4);
  v28[3] = &type metadata for WatchListServiceImpl;
  v28[4] = &off_287A42000;
  v20 = swift_allocObject();
  v28[0] = v20;
  v21 = *(v16 + 1);
  *(v20 + 16) = *v16;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v16 + 4);
  v27[3] = &type metadata for CoreAnalyticsService;
  v27[4] = &xmmword_287A41610;
  v26[3] = &type metadata for FeatureFlagServiceImpl;
  v26[4] = &off_287A41BD8;
  sub_2696A73F8(v29, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_contentResolver);
  sub_2696A73F8(v28, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_watchListService);
  sub_2696A73F8(v27, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_analyticsService);
  sub_2696A73F8(v26, v9 + OBJC_IVAR____TtC16SiriVideoIntents32RemoveFromWatchListIntentHandler_featureFlagService);
  v25.receiver = v9;
  v25.super_class = v8;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v22;
}

uint64_t OUTLINED_FUNCTION_11_25()
{
}

void *sub_269785C84()
{
  sub_2698538C4();
  v0 = type metadata accessor for BaseDialogProvider();
  v9[3] = v0;
  v9[4] = &off_287A3DBA0;
  v9[0] = swift_allocObject();
  type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x28223BE20](v2);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v1[10] = v0;
  v1[11] = &off_287A3DBA0;
  v1[7] = v6;
  sub_2696A73F8(v10, (v1 + 2));
  type metadata accessor for LocUtil();
  v7 = swift_allocObject();
  sub_26968E5D4(v10, v7 + 16);
  v1[12] = v7;
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v1;
}

uint64_t sub_269785DD4()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698532A4();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_2698548D4();
  v1[11] = v5;
  v1[12] = *(v5 - 8);
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269785F10()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v3, qword_28033D910);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "RemoveFromWatchListUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324420, &unk_26985FBC0);
  v11 = sub_2698536B4();
  v12 = [v11 content];

  if (v12)
  {
    sub_26978701C(v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v0[14] = v14;
  v15 = sub_2698536C4();
  v16 = [v15 unsupportedReason];

  v17 = RemoveFromWatchListContentUnsupportedReason.init(rawValue:)(v16);
  if (v18)
  {
    goto LABEL_9;
  }

  if ((v17 - 3) < 2)
  {
    v26 = v0[4];

    __swift_project_boxed_opaque_existential_1((v26 + 56), *(v26 + 80));
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[17] = v27;
    *v27 = v28;
    v27[1] = sub_2697864C0;
    OUTLINED_FUNCTION_8_24();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else if (v17 == 6)
  {
    v37 = v0[4];

    __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));
    sub_269852CF4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[19] = v38;
    *v38 = v39;
    v38[1] = sub_269786664;
    OUTLINED_FUNCTION_8_24();

    return sub_2696C6B0C(v40, v41);
  }

  else
  {
    if (v17 != 2)
    {
LABEL_9:
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      v0[21] = v19;
      *v19 = v20;
      v19[1] = sub_269786808;
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_8_24();

      return sub_2696C616C();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v23;
    *v23 = v24;
    v23[1] = sub_269786300;
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_8_24();

    return sub_2696C6818();
  }
}

uint64_t sub_269786300()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269786418()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_15(*(v0 + 80));
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_25();
  v2(v1);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2697864C0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697865BC()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_15(*(v0 + 72));
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_7_25();
  v2(v1);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_269786664()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269786760()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_15(*(v0 + 64));
  OUTLINED_FUNCTION_7_25();
  v2(v1);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_269786808()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269786920()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_15(v0[7]);
  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_24();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2697869D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697869FC()
{
  OUTLINED_FUNCTION_2_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324420, &unk_26985FBC0);
  v1 = sub_2698536B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269786A70@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269830114();
  if (v12)
  {
    sub_269852C24();
    sub_269852BF4();
    sub_26982F6E0();
    sub_269852C14();

    swift_unknownObjectRelease();

    sub_269852C04();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v13 = __swift_project_value_buffer(v8, qword_28033D910);
    (*(v9 + 16))(v11, v13, v8);
    v14 = sub_2698548B4();
    v15 = sub_269854F34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269684000, v14, v15, "Unable to get localized string for OPEN_TV label", v16, 2u);
      MEMORY[0x26D647170](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_269852CA4();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_269852E44();
  v17 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v17);
  v18 = sub_2698538F4();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v19 = MEMORY[0x277D5C1D8];
  a2[3] = v18;
  a2[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2698530B4();

  sub_269698048(v21, &qword_280323028, qword_26985AD20);
  return sub_269698048(v7, &qword_280323010, &unk_26985B640);
}

uint64_t sub_269786E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_269785DD4();
}

uint64_t sub_269786EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26974872C;

  return sub_2697869D0(a1);
}

uint64_t sub_269786F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_26978701C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1)
{
  v3 = *(v1 + 16);

  return sub_269786A70(v3);
}

id sub_2697870A4()
{
  result = [objc_allocWithZone(type metadata accessor for WatchSportsEventIntentHandler()) init];
  qword_28033D740 = result;
  return result;
}

id sub_2697870D8()
{
  if (qword_2803224E0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D740;
  qword_28033D748 = qword_28033D740;

  return v1;
}

uint64_t sub_26978713C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v4 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "WatchSportsEventFlowStrategy.actionForInput() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_269853004();
}

uint64_t sub_2697872C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  OUTLINED_FUNCTION_8_9(v4);
  v3[5] = OUTLINED_FUNCTION_4_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  OUTLINED_FUNCTION_8_9(v5);
  v3[6] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269852344();
  v3[7] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v3[8] = v7;
  v3[9] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269851ED4();
  v3[10] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[11] = v9;
  v3[12] = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324440, &qword_26985FD98);
  OUTLINED_FUNCTION_8_9(v10);
  v3[13] = OUTLINED_FUNCTION_37_0();
  v3[14] = swift_task_alloc();
  v11 = sub_269851EF4();
  v3[15] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v3[16] = v12;
  v3[17] = OUTLINED_FUNCTION_37_0();
  v3[18] = swift_task_alloc();
  v13 = sub_269853874();
  v3[19] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v3[20] = v14;
  v3[21] = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698538B4();
  v3[22] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v3[23] = v16;
  v3[24] = OUTLINED_FUNCTION_4_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v17);
  v3[25] = OUTLINED_FUNCTION_37_0();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v18 = sub_2698548D4();
  v3[28] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v3[29] = v19;
  v3[30] = OUTLINED_FUNCTION_37_0();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269787604);
}

uint64_t sub_269787604()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[34];
  v2 = v0[29];
  v3 = __swift_project_value_buffer(v0[28], qword_28033D910);
  v4 = *(v2 + 16);
  v154 = v3;
  v4(v1);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "WatchSportsEventFlowStrategy.makeIntentFromParse() called", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  v8 = v0[34];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v12(v8, v10);
  v13 = v0[3];
  if (v11)
  {
    v14 = v0[3];
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for WatchSportsEventIntent()) init];
  }

  v15 = v0[4];
  v16 = v13;
  sub_2696D3780();
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v0[4];
    sub_269694CBC();
    v19 = v17;
    v20 = sub_269855034();
    [v14 setIsRemoteExecution_];

    __swift_project_boxed_opaque_existential_1((v18 + 104), *(v18 + 128));
    sub_2697AD1E8();
    if (v21)
    {
      v22 = sub_269854A64();
    }

    else
    {
      v22 = 0;
    }

    [v14 setCrossDeviceRequestInitiator_];

    sub_269795600(v19);
  }

  v23 = v0[23];
  v24 = v0[24];
  v25 = v0[22];
  (*(v23 + 16))(v24, v0[2], v25);
  v26 = (*(v23 + 88))(v24, v25);
  if (v26 == *MEMORY[0x277D5C140])
  {
    v153 = v4;
    v149 = v12;
    v151 = v14;
    v27 = v0[24];
    v28 = v0[21];
    v30 = v0[19];
    v29 = v0[20];
    v32 = v0[17];
    v31 = v0[18];
    v33 = v0[16];
    v146 = v0[15];
    v35 = v0[11];
    v34 = v0[12];
    v147 = v0[10];
    (*(v0[23] + 96))(v27, v0[22]);
    (*(v29 + 32))(v28, v27, v30);
    sub_269853864();
    sub_2696D3C74();
    v36 = *(v33 + 8);
    v36(v31, v146);
    sub_269853864();
    sub_269851EE4();
    v36(v32, v146);
    v37 = sub_269851EB4();
    (*(v35 + 8))(v34, v147);
    sub_269771E34(v37);

    v38 = sub_2698520B4();
    v39 = OUTLINED_FUNCTION_94();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v38);
    v42 = v0[20];
    v43 = v0[21];
    v44 = v0[19];
    v45 = v0[14];
    if (EnumTagSinglePayload == 1)
    {
      (*(v42 + 8))(v0[21], v0[19]);
      sub_269698048(v45, &qword_280324440, &qword_26985FD98);
      v46 = 0;
      v47 = 0xF000000000000000;
    }

    else
    {
      v46 = sub_269852094();
      v47 = v53;
      (*(v42 + 8))(v43, v44);
      OUTLINED_FUNCTION_5_27();
      (*(v54 + 8))(v45, v38);
    }

    v12 = v149;
    v14 = v151;
  }

  else
  {
    if (v26 != *MEMORY[0x277D5C148])
    {
      (v4)(v0[33], v154, v0[28]);
      v81 = sub_2698548B4();
      v82 = sub_269854F24();
      if (OUTLINED_FUNCTION_39_1(v82))
      {
        v83 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v83);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v84, v85, "WatchSportsEventFlowStrategy.makeIntentFromParse parse type is unsupported");
        OUTLINED_FUNCTION_4_16();
      }

      v86 = v0[33];
      v87 = v0[28];
      v89 = v0[23];
      v88 = v0[24];
      v90 = v0[22];

      v12(v86, v87);
      sub_2696BAE9C();
      v91 = swift_allocError();
      OUTLINED_FUNCTION_1_26(v91, v92, 13);

      (*(v89 + 8))(v88, v90);
      goto LABEL_34;
    }

    v153 = v4;
    v48 = v0[24];
    (*(v0[23] + 96))(v48, v0[22]);
    v49 = *v48;
    sub_2696D6C54();
    if (v50)
    {
      v51 = v50;
      sub_269854544();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v122 = v0[26];
    v121 = v0[27];
    v123 = sub_269852474();
    __swift_storeEnumTagSinglePayload(v122, v52, 1, v123);
    sub_269788A7C(v122, v121);
    sub_2696D6C54();
    if (v124)
    {
      v125 = v124;
      v126 = sub_2698544E4();

      sub_269771E34(v126);

      v127 = sub_2698520B4();
      v128 = OUTLINED_FUNCTION_94();
      v130 = __swift_getEnumTagSinglePayload(v128, v129, v127);
      v131 = v0[13];
      if (v130 == 1)
      {

        sub_269698048(v131, &qword_280324440, &qword_26985FD98);
        v47 = 0xF000000000000000;
        v46 = 0;
      }

      else
      {
        v132 = sub_269852094();
        v47 = v133;

        (*(*(v127 - 8) + 8))(v131, v127);
        v46 = v132;
      }
    }

    else
    {

      v46 = 0;
      v47 = 0xF000000000000000;
    }
  }

  v55 = v0[25];
  sub_2696DAE88(v0[27], v55);
  v56 = sub_269852474();
  v57 = __swift_getEnumTagSinglePayload(v55, 1, v56);
  v58 = v0[25];
  if (v57 == 1)
  {
    v59 = &qword_280323360;
    v60 = &unk_26985AB80;
    v61 = v0[25];
LABEL_25:
    sub_269698048(v61, v59, v60);
    v67 = v0[6];
    v68 = sub_269852024();
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v68);
    v69 = v153;
LABEL_26:
    sub_269698048(v0[6], &qword_2803233C8, &unk_26985E990);
LABEL_27:
    (v69)(v0[30], v154, v0[28]);
    v70 = sub_2698548B4();
    v71 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v71))
    {
      v72 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v72);
      OUTLINED_FUNCTION_10_9(&dword_269684000, v73, v74, "WatchSportsEventFlowStrategy.makeIntentFromParse failed to access videoClientComponent.results");
      OUTLINED_FUNCTION_4_16();
    }

    v75 = v0[30];
    v77 = v0[27];
    v76 = v0[28];

    v12(v75, v76);
    sub_2696BAE9C();
    v78 = swift_allocError();
    OUTLINED_FUNCTION_1_26(v78, v79, 11);

    sub_2696CE4BC(v46, v47);
    v80 = v77;
LABEL_30:
    sub_269698048(v80, &qword_280323360, &unk_26985AB80);
LABEL_34:

    v93 = v0[1];

    return v93();
  }

  v62 = sub_269852464();
  OUTLINED_FUNCTION_5_27();
  (*(v63 + 8))(v58, v56);
  sub_269771D90(v62);

  v64 = sub_269852084();
  v65 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v65, v66, v64) == 1)
  {
    v61 = v0[5];
    v59 = &qword_2803234A8;
    v60 = &unk_26985A8E8;
    goto LABEL_25;
  }

  v95 = v0[5];
  sub_269852064();
  OUTLINED_FUNCTION_5_27();
  (*(v96 + 8))(v95, v64);
  v97 = sub_269852024();
  v98 = OUTLINED_FUNCTION_94();
  v69 = v153;
  if (__swift_getEnumTagSinglePayload(v98, v99, v97) == 1)
  {
    goto LABEL_26;
  }

  v100 = *(v97 - 8);
  if ((*(v100 + 88))(v0[6], v97) != *MEMORY[0x277D39398])
  {
    (*(v100 + 8))(v0[6], v97);
    goto LABEL_27;
  }

  v148 = v46;
  v150 = v12;
  v102 = v0[8];
  v101 = v0[9];
  v104 = v0[6];
  v103 = v0[7];
  (*(v100 + 96))(v104, v97);
  (*(v102 + 32))(v101, v104, v103);
  v105 = sub_269851F24();
  sub_269788AEC(v105, v106, v14);
  v152 = v14;
  if (v47 >> 60 == 15)
  {
    v107 = OUTLINED_FUNCTION_11_26();
    v153(v107);
    v108 = sub_2698548B4();
    v109 = sub_269854F24();
    if (OUTLINED_FUNCTION_39_1(v109))
    {
      v110 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v110);
      OUTLINED_FUNCTION_10_9(&dword_269684000, v111, v112, "WatchSportsEventFlowStrategy.makeIntentFromParse failed to access usoEntity");
      OUTLINED_FUNCTION_4_16();
    }

    v113 = v0[31];
    v114 = v0[28];
    v115 = v0[27];
    v117 = v0[8];
    v116 = v0[9];
    v118 = v0[7];

    v150(v113, v114);
    sub_2696BAE9C();
    v119 = swift_allocError();
    OUTLINED_FUNCTION_1_26(v119, v120, 11);

    sub_2696CE4BC(v148, v47);
    (*(v117 + 8))(v116, v118);
    v80 = v115;
    goto LABEL_30;
  }

  v134 = v0[32];
  sub_269788B50(v46, v47, v14);
  v135 = OUTLINED_FUNCTION_11_26();
  v153(v135);
  v136 = sub_2698548B4();
  v137 = sub_269854F14();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v138);
    _os_log_impl(&dword_269684000, v136, v137, "Finished creating WatchSportsEventIntent from parse", v134, 2u);
    OUTLINED_FUNCTION_4_16();
  }

  v139 = v0[32];
  v141 = v0[27];
  v140 = v0[28];
  v142 = v0[8];
  v143 = v0[9];
  v144 = v0[7];
  sub_2696CE4BC(v148, v47);

  v150(v139, v140);
  (*(v142 + 8))(v143, v144);
  sub_269698048(v141, &qword_280323360, &unk_26985AB80);

  v145 = v0[1];

  return v145(v152);
}

uint64_t sub_26978834C()
{
  sub_269759494(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  return v0;
}

uint64_t sub_26978837C()
{
  sub_26978834C();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2697883EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269741AF0;

  return sub_2697872C4(a1, a2);
}

uint64_t sub_269788494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WatchSportsEventFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2697884E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_2697885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_269788678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2696DC678;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_269788744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2696C995C;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_269788820(uint64_t a1, uint64_t a2)
{
  v3 = sub_2697568A4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_269788880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for WatchSportsEventFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2696DC678;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2697889C4(uint64_t a1)
{
  result = sub_269788A3C(&qword_280324428, &unk_26985FC80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269788A3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WatchSportsEventFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269788A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269788AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setMatchupId_];
}

void sub_269788B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269851C84();
  [a3 setUsoEntityData_];
}

uint64_t OUTLINED_FUNCTION_1_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;
  *(v3 - 88) = a1;

  return swift_willThrow();
}

uint64_t sub_269788BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269788C20()
{
  OUTLINED_FUNCTION_2_7();
  *(v0 + 48) = sub_269854A04();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_269788CE4;

  return sub_2696B8F78();
}

uint64_t sub_269788CE4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

void *sub_269788DE0(uint64_t a1)
{
  sub_269852C84();
  sub_2698538C4();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_2698538C4();
  type metadata accessor for LocUtil();
  v28 = swift_allocObject();
  sub_26968E5D4(&v45, v28 + 16);
  sub_2698546A4();
  v3 = sub_269854694();
  v43 = &type metadata for CoreAnalyticsService;
  v44 = &xmmword_287A41610;
  v46 = &type metadata for UTSNetworkProvider;
  v47 = &off_287A43DC0;
  *&v45 = swift_allocObject();
  sub_2697D24B0(&v42, (v45 + 16));
  v48 = &type metadata for CoreAnalyticsService;
  v49 = &xmmword_287A41610;
  v4 = type metadata accessor for MoveToGroupDevicesProvider();
  v5 = swift_allocObject();
  v6 = sub_269853264();
  swift_allocObject();
  v7 = sub_269853254();
  v43 = v1;
  v44 = &off_287A3DBA0;
  *&v42 = v2;
  v40 = sub_269854674();
  v41 = MEMORY[0x277D61F08];
  v38[4] = &xmmword_287A41610;
  *&v39 = v3;
  v38[3] = &type metadata for CoreAnalyticsService;
  v37[3] = &type metadata for UTSProvider;
  v37[4] = &off_287A43FA8;
  v37[0] = swift_allocObject();
  sub_269728D78(&v45, v37[0] + 16);
  v36[3] = v4;
  v36[4] = &off_287A40140;
  v36[0] = v5;
  v34 = v6;
  v35 = MEMORY[0x277D5BD58];
  *&v33 = v7;
  v31 = &type metadata for EncryptionProvider;
  v32 = &protocol witness table for EncryptionProvider;
  type metadata accessor for WatchSportsEventHandleIntentStrategy();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v42, v1);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for CoreAnalyticsService);
  __swift_mutable_project_boxed_opaque_existential_1(v37, &type metadata for UTSProvider);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v4);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  v24 = *v12;
  v25 = *v22;
  v8[20] = v1;
  v8[21] = &off_287A3DBA0;
  v8[17] = v24;
  v8[37] = &type metadata for CoreAnalyticsService;
  v8[38] = &xmmword_287A41610;
  v8[42] = &type metadata for UTSProvider;
  v8[43] = &off_287A43FA8;
  v26 = swift_allocObject();
  v8[39] = v26;
  memcpy((v26 + 16), v17, 0x50uLL);
  v8[47] = v4;
  v8[48] = &off_287A40140;
  v8[44] = v25;
  sub_2696A73F8(v51, (v8 + 2));
  sub_26968E5D4(&v50, (v8 + 7));
  sub_2696A73F8((v8 + 17), (v8 + 12));
  v8[22] = v28;
  v8[23] = a1;
  sub_26968E5D4(v51, (v8 + 24));
  sub_26968E5D4(&v39, (v8 + 29));
  sub_26968E5D4(&v33, (v8 + 49));
  sub_26968E5D4(&v30, (v8 + 54));
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(&v42);
  sub_269728DD4(&v45);
  return v8;
}

id sub_269789288()
{
  if (qword_2803224E0 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D740;
  qword_28033D750 = qword_28033D740;

  return v1;
}

uint64_t sub_2697892EC()
{
  OUTLINED_FUNCTION_2_7();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v3);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v4 = sub_2698532A4();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269789408()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = OUTLINED_FUNCTION_3_31(v1, qword_28033D910);
  v3(v2);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v6);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v12 = v0[8];

  v13 = OUTLINED_FUNCTION_12_23();
  v14(v13);
  __swift_project_boxed_opaque_existential_1((v12 + 136), *(v12 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[16] = v15;
  *v15 = v16;
  v15[1] = sub_26978957C;
  v17 = v0[12];

  return sub_269788BF4(v17, 0xD000000000000021, 0x800000026987F2A0);
}

uint64_t sub_26978957C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269789678()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 56), *(*(v0 + 64) + 80));
  sub_269852CA4();
  v6 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_49_6();
  sub_2698530B4();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_4_17();

  return v9();
}

uint64_t sub_2697897F0()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_269789864()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2698548D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26978990C()
{
  OUTLINED_FUNCTION_34();
  if (qword_2803226E0 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = OUTLINED_FUNCTION_3_31(v1, qword_28033D910);
  v3(v2);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v6);
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v12 = v0[4];

  v13 = OUTLINED_FUNCTION_12_23();
  v14(v13);
  v15 = *(v12 + 184);
  v0[8] = v15;
  if (v15)
  {
    v16 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[9] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_65_2(v17);

    return sub_26978A85C();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[11] = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_65_2(v20);

    return sub_269789D8C();
  }
}

uint64_t sub_269789ABC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269789BB8()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_4_17();

  return v1();
}

uint64_t sub_269789C18()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_269789D28()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269789D8C()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324450, &qword_26985FF78);
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[8] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_37_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269789EBC()
{
  OUTLINED_FUNCTION_21_11();
  v2 = OUTLINED_FUNCTION_74_1();
  v3 = [v2 isAppInstalled];

  if (v3)
  {
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v5 = OUTLINED_FUNCTION_74_1();
      v6 = sub_2696D1E04(v5, &selRef_playablePunchoutUrl);
      if (v7)
      {
        OUTLINED_FUNCTION_37_6();
        sub_26978D094(1);
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        v8 = v1[11];
        v9 = v1[9];
        v11 = v1[6];
        v10 = v1[7];
        v12 = v1[5];
        v13 = v1[3];
        OUTLINED_FUNCTION_33_0(v1[8], qword_28033D910);
        (*(v9 + 16))(v8);
        (*(v11 + 16))(v10, v13, v12);
        v14 = sub_2698548B4();
        v15 = sub_269854F14();
        v16 = os_log_type_enabled(v14, v15);
        v17 = v1[7];
        if (v16)
        {
          v18 = OUTLINED_FUNCTION_27_2();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          v20 = sub_2698534E4();
          v21 = [v20 isEntitledToPlayOnDevice];

          if (!v21)
          {
            sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
            v21 = sub_269855034();
          }

          (*(v1[6] + 8))(v1[7], v1[5]);
          *(v18 + 4) = v21;
          *v19 = v21;
          _os_log_impl(&dword_269684000, v14, v15, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse() punching out to playablePunchoutUrl isEntitled: %@", v18, 0xCu);
          sub_269698048(v19, &qword_280324D50, &qword_26985D530);
          OUTLINED_FUNCTION_68_3();
          OUTLINED_FUNCTION_10();
        }

        else
        {
          v91 = v1[5];
          v92 = v1[6];

          (*(v92 + 8))(v17, v91);
        }

        v93 = v1[2];
        (*(v1[9] + 8))(v1[11], v1[8]);
        sub_26978DC30(v0, v4);

        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v95 = OUTLINED_FUNCTION_35_0(v94);
        v96 = OUTLINED_FUNCTION_33_6(v95, xmmword_2698590C0);
        v97 = MEMORY[0x277D5C1D8];
        v93[3] = v96;
        v93[4] = v97;
        __swift_allocate_boxed_opaque_existential_1(v93);
        sub_2698538E4();

        OUTLINED_FUNCTION_4_17();
        goto LABEL_38;
      }

      if (qword_2803226E0 != -1)
      {
        v6 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v77 = OUTLINED_FUNCTION_3_31(v6, qword_28033D910);
      v78(v77);
      v79 = sub_2698548B4();
      v80 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v80))
      {
        v81 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v81);
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v82, v83, v84, v85, v86, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v87 = OUTLINED_FUNCTION_12_23();
      v88(v87);
      sub_26978D094(0);
      v76 = "intentResponse.playablePunchoutUrl";
      goto LABEL_34;
    }
  }

  v22 = OUTLINED_FUNCTION_74_1();
  v23 = sub_2696D1E04(v22, &selRef_appName);
  v1[15] = v24;
  if (!v24)
  {
    if (qword_2803226E0 != -1)
    {
      v23 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v47 = OUTLINED_FUNCTION_3_31(v23, qword_28033D910);
    v48(v47);
    v49 = sub_2698548B4();
    v50 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v50))
    {
      v51 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v51);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v57 = OUTLINED_FUNCTION_12_23();
    v58(v57);
    sub_26978D094(0);
    v59 = 0x800000026987F220;
    v60 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v60);
    v62 = 0xD000000000000016;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_37_6();
  v25 = OUTLINED_FUNCTION_74_1();
  sub_2696D1E04(v25, &selRef_appStorePunchoutUrl);
  v1[16] = v26;
  if (!v26)
  {

    if (qword_2803226E0 != -1)
    {
      v63 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v64 = OUTLINED_FUNCTION_3_31(v63, qword_28033D910);
    v65(v64);
    v66 = sub_2698548B4();
    v67 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v67))
    {
      v68 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v68);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v74 = OUTLINED_FUNCTION_12_23();
    v75(v74);
    sub_26978D094(0);
    v76 = "intentResponse.appStorePunchoutUrl";
LABEL_34:
    v59 = (v76 - 32) | 0x8000000000000000;
    v89 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v89);
    v62 = 0xD000000000000022;
LABEL_35:
    *v61 = v62;
    *(v61 + 8) = v59;
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_73_1();

    OUTLINED_FUNCTION_7_7();
LABEL_38:

    return v90();
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v27 = v1[14];
  v28 = v1[9];
  OUTLINED_FUNCTION_33_0(v1[8], qword_28033D910);
  (*(v28 + 16))(v27);
  v29 = sub_2698548B4();
  v30 = sub_269854F24();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_16_2();
    *v31 = 0;
    _os_log_impl(&dword_269684000, v29, v30, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse() punching out to app store", v31, 2u);
    OUTLINED_FUNCTION_68_3();
  }

  v32 = v1[14];
  v33 = v1[8];
  v34 = v1[9];

  (*(v34 + 8))(v32, v33);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[17] = v35;
  *v35 = v36;
  v35[1] = sub_26978A640;
  OUTLINED_FUNCTION_112();

  return sub_2696B9F80(v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_26978A640()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_4_17();

    return v8();
  }
}

uint64_t sub_26978A7BC()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_73_1();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_26978A85C()
{
  OUTLINED_FUNCTION_2_7();
  v1[57] = v2;
  v1[58] = v0;
  v1[55] = v3;
  v1[56] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324450, &qword_26985FF78);
  v1[59] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[60] = v6;
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v7);
  v1[63] = OUTLINED_FUNCTION_4_7();
  v8 = sub_2698532A4();
  v1[64] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[65] = v9;
  v1[66] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[67] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[68] = v11;
  v1[69] = OUTLINED_FUNCTION_37_0();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v12 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v12);
  v1[76] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269853634();
  v1[77] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[78] = v14;
  v1[79] = OUTLINED_FUNCTION_4_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324098, &qword_26985EB78);
  OUTLINED_FUNCTION_8_9(v15);
  v1[80] = OUTLINED_FUNCTION_4_7();
  v16 = type metadata accessor for VideoDataModels.ButtonModel(0);
  v1[81] = v16;
  OUTLINED_FUNCTION_8_9(v16);
  v1[82] = OUTLINED_FUNCTION_4_7();
  v17 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_26978AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_28_10();
  v19 = sub_2698534E4();
  v20 = [v19 isAppInstalled];

  if (v20 && (v21 = [v20 BOOLValue], v20, v21) && (OUTLINED_FUNCTION_28_10(), v22 = sub_2698534E4(), v23 = objc_msgSend(v22, sel_isEntitledToPlayOnDevice), v22, v23) && (v24 = objc_msgSend(v23, sel_BOOLValue), v23, v24) && (OUTLINED_FUNCTION_28_10(), v25 = sub_2698534E4(), sub_2696D1E04(v25, &selRef_playablePunchoutUrl), (v18[83] = v26) != 0))
  {
    OUTLINED_FUNCTION_37_6();
    v27 = swift_task_alloc();
    v18[84] = v27;
    *v27 = v18;
    v27[1] = sub_26978AEA4;
    OUTLINED_FUNCTION_112();

    return sub_26978D4AC();
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    v30 = sub_269853504();
    v31 = sub_2696D1E04(v30, &selRef_matchupId);
    v18[88] = v31;
    v18[89] = v32;
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      __swift_project_boxed_opaque_existential_1((v18[58] + 312), *(v18[58] + 336));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      v35 = swift_allocObject();
      v18[90] = v35;
      *(v35 + 16) = xmmword_269857710;
      *(v35 + 32) = v33;
      *(v35 + 40) = v34;

      v36 = swift_task_alloc();
      v18[91] = v36;
      *v36 = v18;
      v36[1] = sub_26978B7C8;
      OUTLINED_FUNCTION_112();

      return sub_2697D780C();
    }

    else
    {
      if (qword_2803226E0 != -1)
      {
        v31 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v38 = OUTLINED_FUNCTION_3_31(v31, qword_28033D910);
      v39(v38);
      v40 = sub_2698548B4();
      v41 = sub_269854F04();
      if (OUTLINED_FUNCTION_19_5(v41))
      {
        v42 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v42);
        OUTLINED_FUNCTION_18_8();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_47_4();

      v48 = OUTLINED_FUNCTION_12_23();
      v49(v48);
      sub_26978D094(0);
      v50 = sub_2696BAE9C();
      v60 = OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v50);
      OUTLINED_FUNCTION_25_10(v51, 16);
      OUTLINED_FUNCTION_2_24();
      OUTLINED_FUNCTION_58_1();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_112();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, v60, a15, a16, a17, a18);
    }
  }
}

uint64_t sub_26978AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_14_6();
  v21 = v20;
  OUTLINED_FUNCTION_6_13();
  *v22 = v21;
  v23 = *v19;
  OUTLINED_FUNCTION_1_6();
  *v24 = v23;

  if (v18)
  {

    v36 = v21[70];
    v37 = v21[69];
    v38 = v21[66];
    v39 = v21[63];
    v40 = v21[62];

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_112();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v36, v37, v38, v39, v40, v18, a16, a17, a18);
  }

  else
  {

    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x2822009F8](v34);
  }
}

uint64_t sub_26978B090(uint64_t a1)
{
  sub_269854614();
  *(v1 + 680) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v1 + 688) = v3;
  *v3 = v4;
  v3[1] = sub_26978B14C;

  return sub_269796CBC();
}

uint64_t sub_26978B14C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26978B24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  v23 = v22[80];
  if (__swift_getEnumTagSinglePayload(v23, 1, v22[81]) == 1)
  {
    v24 = sub_269698048(v23, &qword_280324098, &qword_26985EB78);
    if (qword_2803226E0 != -1)
    {
      v24 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v25 = v22[68];
    v26 = OUTLINED_FUNCTION_3_31(v24, qword_28033D910);
    v27(v26);
    v28 = sub_2698548B4();
    v29 = sub_269854F14();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v30);
      _os_log_impl(&dword_269684000, v28, v29, "Unable to generate snippet model for remote button. Manually closing Siri.", v25, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v31 = v22[75];
    v32 = v22[68];
    v33 = v22[67];
    v34 = v22[55];

    (*(v32 + 8))(v31, v33);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v36 = OUTLINED_FUNCTION_35_0(v35);
    *(v36 + 16) = xmmword_2698590C0;
    *(v36 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_2698538F4();
    OUTLINED_FUNCTION_41_3();
    v37 = MEMORY[0x277D5C1D8];
    v34[3] = v38;
    v34[4] = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_55_3(boxed_opaque_existential_1, v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_11_27();

    OUTLINED_FUNCTION_4_17();
    OUTLINED_FUNCTION_69();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v54 = v22[82];
    v55 = v22[58];
    sub_26975DCA4(v23, v54);
    sub_269852E64();
    sub_2698535C4();
    __swift_project_boxed_opaque_existential_1((v55 + 392), *(v55 + 416));
    v22[32] = type metadata accessor for VideoDataModels(0);
    v22[33] = sub_26978E4BC(&qword_280323A28, 255, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
    v56 = __swift_allocate_boxed_opaque_existential_1(v22 + 29);
    sub_269720A64(v54, v56);
    swift_storeEnumTagMultiPayload();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v22[87] = v57;
    *v57 = v58;
    v57[1] = sub_26978B5CC;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2821BB470](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_26978B5CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 232));
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26978B6B4()
{
  v1 = v0[82];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_269720AC8(v1);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_26978B7C8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *v7 = *v1;
  v6[92] = v0;

  if (v0)
  {
  }

  else
  {
    v6[93] = v3;
    v6[94] = v5;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26978B914()
{
  v98 = v0;
  v3 = *(v0 + 752);
  v4 = *(v0 + 712);
  sub_26981D604();

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 760) = v5;
  *(v0 + 768) = v6;
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 776) = v7;
  *(v0 + 784) = v8;
  if (v6)
  {
    if (*(v0 + 88))
    {
      *(v0 + 792) = sub_269854614();
      *(v0 + 800) = v9;
      if (v9)
      {
        OUTLINED_FUNCTION_37_6();
        __swift_project_boxed_opaque_existential_1((*(v0 + 464) + 352), *(*(v0 + 464) + 376));
        v10 = swift_task_alloc();
        *(v0 + 808) = v10;
        *v10 = v0;
        v10[1] = sub_26978C668;
        OUTLINED_FUNCTION_84();

        return sub_269760410(v11, v12);
      }

      v3 = (v0 + 360);
      v15 = (v0 + 376);
      v16 = 368;
      v17 = 384;
    }

    else
    {
      v3 = (v0 + 312);
      v15 = (v0 + 328);
      v16 = 320;
      v17 = 336;
    }

    *v15 = v5;
    *(v0 + v17) = v6;
    sub_2696A8078(v15);
    *v3 = v7;
    *(v0 + v16) = v8;
    sub_2696A8078(v3);
  }

  OUTLINED_FUNCTION_28_10();
  v18 = sub_2698534E4();
  sub_2696D1E04(v18, &selRef_appName);
  *(v0 + 824) = v19;
  if (!v19)
  {
LABEL_20:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_38_7();
    OUTLINED_FUNCTION_29_2(v50, qword_28033D910);
    (*(v6 + 16))(v3);
    v52 = *(v1 + 16);
    v51 = v1 + 16;
    OUTLINED_FUNCTION_61_1();
    v52();
    OUTLINED_FUNCTION_61_1();
    v52();
    v53 = sub_2698548B4();
    v54 = sub_269854F24();
    os_log_type_enabled(v53, v54);
    OUTLINED_FUNCTION_51_6();
    if (v55)
    {
      swift_slowAlloc();
      v95 = OUTLINED_FUNCTION_71_4();
      v97[0] = v95;
      *v8 = 136315394;
      v56 = sub_2698534E4();
      *(v0 + 392) = sub_2696D1E04(v56, &selRef_appName);
      *(v0 + 400) = v57;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      OUTLINED_FUNCTION_70_3(v58);
      v59 = OUTLINED_FUNCTION_32_8();
      (v5)(v59);
      v60 = sub_26974F520(v4, v54, v97);

      v61 = OUTLINED_FUNCTION_56_3();
      *(v0 + 408) = sub_2696D1E04(v61, &selRef_appStorePunchoutUrl);
      *(v0 + 416) = v62;
      sub_269854AE4();
      v63 = OUTLINED_FUNCTION_64_2();
      (v5)(v63);
      v64 = sub_26974F520(v60, v53, v97);

      *(v8 + 14) = v64;
      OUTLINED_FUNCTION_43_3(&dword_269684000, v65, v66, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() did not receive appName '%s' or appStorePunchoutUrl '%s'", v67, v68, v69, v70, v84, v86, v88);
      OUTLINED_FUNCTION_72_1(v71, v72, v73, v74, v75, v76, v77, v78, v85, v87, v89, v90, v92, v95);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v91 + 8))(v93);
    }

    else
    {

      v79 = *(v7 + 8);
      v79(v2, v51);
      v79(v3, v51);
      (*(v5 + 8))(v4, v8);
    }

    sub_26978D094(0);
    v80 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v80);
    OUTLINED_FUNCTION_25_10(v81, 57);
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_5_28();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_84();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28_10();
  v20 = sub_2698534E4();
  sub_2696D1E04(v20, &selRef_appStorePunchoutUrl);
  if (!v21)
  {

    goto LABEL_20;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_33_0(v7, qword_28033D910);
  v23 = *(v5 + 16);
  v22 = (v5 + 16);
  v23(v3);
  v24 = sub_2698548B4();
  v25 = sub_269854F24();
  if (os_log_type_enabled(v24, v25))
  {
    v22 = OUTLINED_FUNCTION_16_2();
    *v22 = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_68_4();
  (*(v8 + 8))(v25, v22);
  sub_2696A73F8(v6 + 96, v0 + 112);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, *(v0 + 136));
  OUTLINED_FUNCTION_3_20();
  v31 = OUTLINED_FUNCTION_4_7();
  v32 = OUTLINED_FUNCTION_48_5(v31);
  v33(v32);
  v34 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_67_2(v34);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_54_1(inited);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_62_2();
  v36();
  OUTLINED_FUNCTION_77_2();
  v37 = __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  OUTLINED_FUNCTION_52_2(v37, v38, v39, v40, v41, v42, v43, v44, v84, v86, v88, v90, v92, v94, v96);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 848) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_17_13(v45);
  OUTLINED_FUNCTION_84();

  return sub_2696C3DCC(v47, v48);
}

uint64_t sub_26978BFB0()
{
  v103 = v1;
  v4 = 0x280322000uLL;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v5 = v1[92];
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v0, qword_28033D910);
  v6 = OUTLINED_FUNCTION_42_5();
  v7(v6);
  v8 = v5;
  v9 = sub_2698548B4();
  v10 = sub_269854F24();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[92];
  v13 = v1[74];
  v14 = v1[68];
  v15 = v1[67];
  if (v11)
  {
    v16 = OUTLINED_FUNCTION_27_2();
    v101 = v13;
    v102[0] = OUTLINED_FUNCTION_9_3();
    v13 = v102[0];
    *v16 = 136315138;
    v1[53] = v12;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v18 = sub_269854AE4();
    v2 = v19;
    v3 = sub_26974F520(v18, v19, v102);

    *(v16 + 4) = v3;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v20, v21, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() error while getting local playables for game: %s");
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_68_3();
    v4 = 0x280322000;
    OUTLINED_FUNCTION_10();

    (*(v14 + 8))(v101, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  OUTLINED_FUNCTION_28_10();
  v22 = sub_2698534E4();
  sub_2696D1E04(v22, &selRef_appName);
  v1[103] = v23;
  if (!v23)
  {
LABEL_16:
    if (*(v4 + 1760) != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_38_7();
    OUTLINED_FUNCTION_29_2(v55, qword_28033D910);
    (*(v13 + 16))(v9);
    v57 = *(v2 + 16);
    v56 = v2 + 16;
    OUTLINED_FUNCTION_61_1();
    v57();
    OUTLINED_FUNCTION_61_1();
    v57();
    v58 = sub_2698548B4();
    v59 = sub_269854F24();
    os_log_type_enabled(v58, v59);
    OUTLINED_FUNCTION_51_6();
    if (v60)
    {
      swift_slowAlloc();
      v100 = OUTLINED_FUNCTION_71_4();
      v102[0] = v100;
      *v4 = 136315394;
      v61 = sub_2698534E4();
      v1[49] = sub_2696D1E04(v61, &selRef_appName);
      v1[50] = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      OUTLINED_FUNCTION_70_3(v63);
      v64 = OUTLINED_FUNCTION_32_8();
      (v10)(v64);
      v65 = sub_26974F520(v15, v59, v102);

      v66 = OUTLINED_FUNCTION_56_3();
      v1[51] = sub_2696D1E04(v66, &selRef_appStorePunchoutUrl);
      v1[52] = v67;
      sub_269854AE4();
      v68 = OUTLINED_FUNCTION_64_2();
      (v10)(v68);
      v69 = sub_26974F520(v65, v58, v102);

      *(v4 + 14) = v69;
      OUTLINED_FUNCTION_43_3(&dword_269684000, v70, v71, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponseRemote() did not receive appName '%s' or appStorePunchoutUrl '%s'", v72, v73, v74, v75, v89, v91, v93);
      OUTLINED_FUNCTION_72_1(v76, v77, v78, v79, v80, v81, v82, v83, v90, v92, v94, v95, v97, v100);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v96 + 8))(v98, v101);
    }

    else
    {

      v84 = v12[1];
      v84(v3, v56);
      v84(v9, v56);
      (*(v10 + 8))(v15, v4);
    }

    sub_26978D094(0);
    v85 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v85);
    OUTLINED_FUNCTION_25_10(v86, 57);
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_5_28();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_84();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_28_10();
  v24 = sub_2698534E4();
  sub_2696D1E04(v24, &selRef_appStorePunchoutUrl);
  if (!v25)
  {

    goto LABEL_16;
  }

  if (*(v4 + 1760) != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_33_0(v12, qword_28033D910);
  v27 = *(v10 + 16);
  v26 = (v10 + 16);
  v27(v9);
  v28 = sub_2698548B4();
  v29 = sub_269854F24();
  if (os_log_type_enabled(v28, v29))
  {
    v26 = OUTLINED_FUNCTION_16_2();
    *v26 = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_68_4();
  (*(v4 + 8))(v29, v26);
  sub_2696A73F8(v13 + 96, (v1 + 14));
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 14), v1[17]);
  OUTLINED_FUNCTION_3_20();
  v35 = OUTLINED_FUNCTION_4_7();
  v36 = OUTLINED_FUNCTION_48_5(v35);
  v37(v36);
  v38 = type metadata accessor for BaseDialogProvider();
  OUTLINED_FUNCTION_67_2(v38);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_54_1(inited);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_62_2();
  v40();
  OUTLINED_FUNCTION_77_2();
  v41 = __swift_destroy_boxed_opaque_existential_0(v1 + 14);
  OUTLINED_FUNCTION_52_2(v41, v42, v43, v44, v45, v46, v47, v48, v89, v91, v93, v95, v97, v99, v101);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v1[106] = v49;
  *v49 = v50;
  OUTLINED_FUNCTION_17_13(v49);
  OUTLINED_FUNCTION_84();

  return sub_2696C3DCC(v51, v52);
}

uint64_t sub_26978C668()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v3 + 816) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26978C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_115();
  a29 = v32;
  a30 = v33;
  a28 = v31;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v30, qword_28033D910);
  v34 = OUTLINED_FUNCTION_42_5();
  v35(v34);

  v36 = sub_2698548B4();
  v37 = sub_269854F04();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v31[100];
  if (v38)
  {
    v40 = v31[99];
    v30 = v31[67];
    v41 = OUTLINED_FUNCTION_27_2();
    v42 = OUTLINED_FUNCTION_9_3();
    a15 = v42;
    *v41 = 136315138;
    v43 = sub_26974F520(v40, v39, &a15);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_269684000, v36, v37, "AirPlaying from source device instead of playing from remote device: %s.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    v44 = OUTLINED_FUNCTION_22_3();
  }

  else
  {
    OUTLINED_FUNCTION_47_4();

    v44 = OUTLINED_FUNCTION_12_23();
  }

  v45(v44);
  OUTLINED_FUNCTION_35_9();
  v31[43] = v39;
  v31[44] = v37;
  sub_2696A8078((v31 + 43));

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v47 = OUTLINED_FUNCTION_35_0(v46);
  OUTLINED_FUNCTION_33_6(v47, xmmword_2698590C0);
  OUTLINED_FUNCTION_41_3();
  v48 = MEMORY[0x277D5C1D8];
  v30[3] = v49;
  v30[4] = v48;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_55_3(boxed_opaque_existential_1, v51, v52, v53, v54, v55);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_11_27();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_69();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26978C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_115();
  a29 = v32;
  a30 = v33;
  a28 = v31;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v34 = v31[102];
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_33_0(v30, qword_28033D910);
  v35 = OUTLINED_FUNCTION_42_5();
  v36(v35);
  v37 = v34;
  v38 = sub_2698548B4();
  v39 = sub_269854F04();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v31[102];
  v42 = v31[72];
  v43 = v31[68];
  v44 = v31[67];
  if (v40)
  {
    a14 = v31[72];
    v45 = OUTLINED_FUNCTION_27_2();
    v46 = OUTLINED_FUNCTION_9_3();
    a15 = v46;
    *v45 = 136315138;
    v31[54] = v41;
    v47 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v48 = sub_269854AE4();
    v50 = sub_26974F520(v48, v49, &a15);

    *(v45 + 4) = v50;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v51, v52, "Error while setting airplay destination: %s");
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();

    (*(v43 + 8))(a14, v44);
  }

  else
  {

    (*(v43 + 8))(v42, v44);
  }

  OUTLINED_FUNCTION_35_9();
  v31[43] = v39;
  v31[44] = v41;
  sub_2696A8078((v31 + 43));

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v54 = OUTLINED_FUNCTION_35_0(v53);
  OUTLINED_FUNCTION_33_6(v54, xmmword_2698590C0);
  OUTLINED_FUNCTION_41_3();
  v55 = MEMORY[0x277D5C1D8];
  v44[3] = v56;
  v44[4] = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_55_3(boxed_opaque_existential_1, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_11_27();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_69();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26978CC78()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 856) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26978CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = v18[105];

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 16));

  OUTLINED_FUNCTION_2_24();
  v30 = v18[69];
  v31 = v18[66];
  v32 = v18[63];
  v33 = v18[62];
  v34 = v18[61];
  v35 = v20;

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_112();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_26978CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_14();
  OUTLINED_FUNCTION_21_11();
  v19 = *(v18 + 840);
  v20 = *(v18 + 528);
  v21 = *(v18 + 520);
  v22 = *(v18 + 504);
  v41 = *(v18 + 512);
  v23 = *(v18 + 440);
  __swift_project_boxed_opaque_existential_1((*(v18 + 464) + 56), *(*(v18 + 464) + 80));
  sub_269852CA4();
  v24 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v24);
  v25 = sub_2698538F4();
  *(v18 + 208) = 0u;
  *(v18 + 224) = 0;
  *(v18 + 192) = 0u;
  v26 = MEMORY[0x277D5C1D8];
  v23[3] = v25;
  v23[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_49_6();
  sub_2698530B4();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 16));

  sub_269698048(v18 + 192, &qword_280323028, qword_26985AD20);
  sub_269698048(v22, &qword_280323010, &unk_26985B640);
  (*(v21 + 8))(v20, v41);

  OUTLINED_FUNCTION_1_27();
  v38 = v28;
  v39 = v27;
  v40 = *(v18 + 504);
  v42 = *(v18 + 496);
  v43 = *(v18 + 488);

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_112();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v18 + 192, 0, v38, v39, v40, v42, v43, a16, a17, a18);
}

uint64_t sub_26978D094(uint64_t a1)
{
  sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v19 = sub_2698540F4();
  OUTLINED_FUNCTION_3_20();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_2698540C4();
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_2698540B4();
  (*(v10 + 16))(v14, v16, v8);
  sub_2698540E4();
  sub_2698540D4();
  (*(v3 + 8))(v7, v19);
  return (*(v10 + 8))(v16, v8);
}

uint64_t sub_26978D4AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_2698548D4();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_37_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26978D56C(uint64_t a1)
{
  if (qword_2803226E0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = v1[11];
  v3 = v1[8];
  v1[12] = OUTLINED_FUNCTION_29_2(a1, qword_28033D910);
  v5 = *(v3 + 16);
  v4 = (v3 + 16);
  v1[13] = v5;
  v1[14] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v8);
    _os_log_impl(&dword_269684000, v6, v7, "WatchSportsEventHandleIntentFlowStrategy.makeIntentHandledResponse submitting appPunchout command to remote...", v4, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v9 = v1[8];
  v10 = v1[6];
  v12 = v1[3];
  v11 = v1[4];

  v1[15] = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  v14(v13);
  __swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
  v15 = sub_26978DC30(v12, v11);
  v1[16] = v15;
  sub_269854604();
  v1[17] = v16;
  v17 = swift_task_alloc();
  v1[18] = v17;
  sub_26969329C(0, &qword_2803239C0, 0x277D471B0);
  *v17 = v1;
  v17[1] = sub_26978D760;

  return MEMORY[0x2821BB680](v15);
}

uint64_t sub_26978D760()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  *v4 = *v1;
  v3[19] = v5;
  v3[20] = v0;

  if (!v0)
  {
    v6 = v3[16];
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26978D870()
{
  v1 = *(v0 + 152);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v2 = v1;
  v3 = sub_2698548B4();
  LOBYTE(v1) = sub_269854F14();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = *(v0 + 152);
    v5 = OUTLINED_FUNCTION_27_2();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    OUTLINED_FUNCTION_18_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_269698048(v6, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18_7();
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);

  v14(v15, v16);
  sub_269795A18(1);

  OUTLINED_FUNCTION_4_17();

  return v17();
}

uint64_t sub_26978D9FC()
{
  v30 = v0;
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[7];

  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_2698548B4();
  LOBYTE(v6) = sub_269854F24();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = v0[20];
    v28 = v0[15];
    v10 = OUTLINED_FUNCTION_27_2();
    v11 = OUTLINED_FUNCTION_9_3();
    v29 = v11;
    *v10 = 136315138;
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v29);

    *(v10 + 4) = v15;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v21 = OUTLINED_FUNCTION_22_3();
    v28(v21);
  }

  else
  {
    v22 = v0[15];

    v23 = OUTLINED_FUNCTION_22_3();
    v22(v23);
  }

  v24 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[6] + 272), *(v0[6] + 296));
  sub_2697B426C();
  v25 = v24;
  sub_269795A18(0);

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();

  return v26();
}

id sub_26978DC30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_26969329C(0, &qword_280323038, 0x277D479F0);
  v8 = sub_2696CD66C(1);
  sub_269851C64();
  v9 = sub_269851C74();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_269851C24();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setPunchOutUri_];

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v11 = v8;
  sub_269853474();
  if (v12)
  {
    v13 = sub_269854A64();
  }

  else
  {
    v13 = 0;
  }

  [v11 setRefId_];

  return v11;
}

uint64_t sub_26978DDD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  sub_26978E504(v0 + 136);

  sub_269759494(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  return v0;
}

uint64_t sub_26978DE48()
{
  sub_26978DDD0();

  return MEMORY[0x2821FE8D8](v0, 472, 7);
}

uint64_t sub_26978DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_26978DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_26978E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_26978E0EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_269789864();
}

uint64_t sub_26978E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_26978E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WatchSportsEventHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_26978E320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_2697892EC();
}

uint64_t sub_26978E3BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2697568DC(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_26978E41C(uint64_t a1, uint64_t a2)
{
  result = sub_26978E4BC(&qword_280324448, a2, type metadata accessor for WatchSportsEventHandleIntentStrategy, &unk_26985FE78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26978E4BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_5_28()
{
}

uint64_t OUTLINED_FUNCTION_11_27()
{
}

uint64_t OUTLINED_FUNCTION_25_10@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_35_9()
{
  v2 = *(v0 + 776);
  v3 = *(v0 + 784);

  return sub_26978DC30(v2, v3);
}

void OUTLINED_FUNCTION_43_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_type_t a10, os_log_t log)
{

  _os_log_impl(a1, log, a10, a4, v11, 0x16u);
}

void OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 272) = a15;
  *(v16 + 280) = v15;
  *(v16 + 288) = 0;
  *(v16 + 296) = 0;
  *(v16 + 304) = 1;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{
  *(v1 + 840) = a1;
  v4 = *(v1 + 176);

  return __swift_mutable_project_boxed_opaque_existential_1(v2, v4);
}

uint64_t OUTLINED_FUNCTION_55_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_2698538E4();
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_2698534E4();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v3;
  v2[19] = v1;

  return type metadata accessor for VideoLiveTuneInDialogProvider();
}

void OUTLINED_FUNCTION_68_4()
{
}

uint64_t OUTLINED_FUNCTION_70_3(uint64_t a1)
{

  return sub_269854AE4();
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_1(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_2698534E4();
}

uint64_t OUTLINED_FUNCTION_77_2()
{
  v5 = *v3;
  v0[5] = v1;
  v0[6] = v4;
  v0[2] = v5;
  __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_26978E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_33_9();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_33_9();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_269860010;
  v9[5] = v8;
  sub_269791A64(0, 0, v6, &unk_269860020, v9);
}

id WatchSportsEventIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchSportsEventIntentHandler.init()()
{
  v4 = &type metadata for CoreAnalyticsService;
  v5 = &xmmword_287A41610;
  v6[3] = &type metadata for UTSNetworkProvider;
  v6[4] = &off_287A43DC0;
  v6[0] = swift_allocObject();
  sub_2697D24B0(&v3, (v6[0] + 16));
  v6[8] = &type metadata for CoreAnalyticsService;
  v6[9] = &xmmword_287A41610;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v0 = sub_2697B9550();
  sub_269728D78(v6, &v3);
  v1 = sub_269791FE4(&v3, v0);
  sub_269728DD4(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t WatchSportsEventIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1 = sub_2698548D4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_12(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26978EC94()
{
  OUTLINED_FUNCTION_8_5();
  if (qword_2803226E8 != -1)
  {
    v0 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v1 = OUTLINED_FUNCTION_3_31(v0, qword_28033D928);
  v2(v1);
  v3 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v5);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v6, v7, "Confirm step: success");
    OUTLINED_FUNCTION_18_7();
  }

  v8 = OUTLINED_FUNCTION_22_3();
  v9(v8);
  objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  WatchSportsEventIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_11_16();

  v10 = OUTLINED_FUNCTION_8_23();

  return v11(v10);
}

uint64_t sub_26978EDCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2697927A8;

  return WatchSportsEventIntentHandler.confirm(intent:)();
}

uint64_t WatchSportsEventIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269854824();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_37_0();
  v1[7] = swift_task_alloc();
  v5 = sub_2698548D4();
  v1[8] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_37_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26978EFB0()
{
  v82 = v0;
  v1 = [*(v0 + 16) isRemoteExecution];
  sub_269694CBC();
  v2 = sub_269855034();
  v3 = v2;
  if (v1)
  {
    OUTLINED_FUNCTION_22_3();
    v4 = sub_269855064();

    if (v4)
    {
      v5 = *(v0 + 16);
      __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector), *(*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector + 24));
      sub_26974FAB0(v5, &selRef_crossDeviceRequestInitiator);
      sub_2697B8974();
    }
  }

  else
  {
  }

  *(v0 + 120) = *(*(v0 + 24) + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider);
  sub_2697B92B0();
  v6 = 0x280322000uLL;
  if (v7)
  {

    v8 = sub_2697B92B0();
    v10 = v9;
    v11 = qword_2803226E8;

    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v12 = *(v0 + 112);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = __swift_project_value_buffer(v14, qword_28033D928);
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_2698548B4();
    v17 = sub_269854F24();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 112);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    if (v18)
    {
      v22 = OUTLINED_FUNCTION_27_2();
      v23 = OUTLINED_FUNCTION_9_3();
      *v22 = 136315138;
      v80 = v21;
      v81 = v23;
      v24 = v8;
      if (!v10)
      {
        v8 = 7104878;
      }

      v79 = v19;
      if (v10)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_26974F520(v8, v25, &v81);

      *(v22 + 4) = v26;
      v8 = v24;
      _os_log_impl(&dword_269684000, v16, v17, "WatchSportsEventIntentHandler manually setting matchupId: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_10();
      v6 = 0x280322000;
      OUTLINED_FUNCTION_10();

      v27 = (*(v20 + 8))(v79, v80);
    }

    else
    {

      v27 = (*(v20 + 8))(v19, v21);
    }
  }

  else
  {
    v28 = sub_26974FAB0(*(v0 + 16), &selRef_matchupId);
    if (!v29)
    {
      if (qword_2803226E8 != -1)
      {
        v28 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      v66 = OUTLINED_FUNCTION_3_31(v28, qword_28033D928);
      v67(v66);
      v58 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v58, v68))
      {
        v69 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v69);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v70, v71, "WatchSportsEventIntentHandler failed to access matchupId off WatchSportsEventIntent");
        OUTLINED_FUNCTION_18_7();
      }

      goto LABEL_42;
    }

    v30 = *(v0 + 16);

    v27 = sub_26974FAB0(v30, &selRef_matchupId);
    v8 = v27;
    v10 = v31;
  }

  *(v0 + 128) = v8;
  *(v0 + 136) = v10;
  if (!v10)
  {
    if (*(v6 + 1768) != -1)
    {
      v27 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v56 = OUTLINED_FUNCTION_3_31(v27, qword_28033D928);
    v57(v56);
    v58 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v60);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v61, v62, "WatchSportsEventIntentHandler failed because matchupId is nil");
      OUTLINED_FUNCTION_18_7();
    }

LABEL_42:

    v72 = OUTLINED_FUNCTION_22_3();
    v73(v72);
    v74 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
    OUTLINED_FUNCTION_25_11();
    goto LABEL_43;
  }

  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v32 = sub_269854854();
  __swift_project_value_buffer(v32, qword_28033D958);
  sub_269854814();
  v33 = sub_269854844();
  v34 = sub_269854FF4();
  if (sub_269855074())
  {
    v35 = OUTLINED_FUNCTION_16_2();
    *v35 = 0;
    v36 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v33, v34, v36, "watchSportsEventResolve", "enableTelemetry=YES", v35, 2u);
    OUTLINED_FUNCTION_10();
  }

  v37 = *(v0 + 16);

  v38 = OUTLINED_FUNCTION_25_2();
  v39(v38);
  sub_269854894();
  swift_allocObject();
  *(v0 + 144) = sub_269854884();
  v40 = OUTLINED_FUNCTION_26_14();
  v41(v40);
  v42 = sub_269791F80(v37);
  *(v0 + 152) = v43;
  if (v43 >> 60 == 15)
  {
    sub_2697B9214();
    if (v44)
    {

      if (*(v6 + 1768) != -1)
      {
        v45 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      v46 = OUTLINED_FUNCTION_3_31(v45, qword_28033D928);
      v47(v46);
      v48 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v50);
        OUTLINED_FUNCTION_38_8(&dword_269684000, v51, v52, "WatchSportsEventIntentHandler forceMockBestPlayableResponse");
        OUTLINED_FUNCTION_18_7();
      }

      OUTLINED_FUNCTION_37_7();
      v53 = OUTLINED_FUNCTION_26_14();
      v54(v53);
      sub_2697909C0();
      v55 = OUTLINED_FUNCTION_11_16();
      sub_26978FCA4(v55);

LABEL_43:
      OUTLINED_FUNCTION_12_25();

      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_116();

      __asm { BRAA            X2, X16 }
    }

    v77 = swift_task_alloc();
    *(v0 + 176) = v77;
    *v77 = v0;
    OUTLINED_FUNCTION_4_23(v77);
    OUTLINED_FUNCTION_116();

    return sub_269790C50();
  }

  else
  {
    *(v0 + 160) = v42;
    v63 = swift_task_alloc();
    *(v0 + 168) = v63;
    *v63 = v0;
    v63[1] = sub_26978F6B4;
    OUTLINED_FUNCTION_116();

    return sub_269790160();
  }
}

uint64_t sub_26978F6B4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26978F798()
{
  sub_2696CE4BC(v0[20], v0[19]);
  sub_2697B9214();
  if (v1)
  {

    if (qword_2803226E8 != -1)
    {
      v2 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v3 = OUTLINED_FUNCTION_3_31(v2, qword_28033D928);
    v4(v3);
    v5 = sub_2698548B4();
    sub_269854F24();
    OUTLINED_FUNCTION_45_0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v7);
      OUTLINED_FUNCTION_38_8(&dword_269684000, v8, v9, "WatchSportsEventIntentHandler forceMockBestPlayableResponse");
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_37_7();
    v10 = OUTLINED_FUNCTION_26_14();
    v11(v10);
    sub_2697909C0();
    v12 = OUTLINED_FUNCTION_11_16();
    sub_26978FCA4(v12);

    OUTLINED_FUNCTION_12_25();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_76_2();

    __asm { BRAA            X2, X16 }
  }

  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_4_23(v15);
  OUTLINED_FUNCTION_76_2();

  return sub_269790C50();
}

uint64_t sub_26978F94C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v5 + 184) = v1;

  if (v1)
  {
    v8 = sub_26978FB3C;
  }

  else
  {
    *(v5 + 192) = a1;
    v8 = sub_26978FA8C;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_26978FA8C()
{
  sub_26978FCA4(*(v0 + 144));

  OUTLINED_FUNCTION_12_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_76_2();

  __asm { BRAA            X2, X16 }
}

void sub_26978FB3C()
{
  sub_26978FCA4(v0[18]);

  if (qword_2803226E8 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v2 = OUTLINED_FUNCTION_3_31(v1, qword_28033D928);
  v3(v2);
  v4 = sub_2698548B4();
  sub_269854F24();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v6);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v7, v8, "WatchSportsEventIntentHandler error occurred requesting UTS sportsTuneIn");
    OUTLINED_FUNCTION_18_7();
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];

  (*(v10 + 8))(v9, v11);
  v12 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  OUTLINED_FUNCTION_25_11();

  OUTLINED_FUNCTION_12_25();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_76_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26978FCA4(uint64_t a1)
{
  v1 = sub_269854864();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854824();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322710 != -1)
  {
    swift_once();
  }

  v9 = sub_269854854();
  __swift_project_value_buffer(v9, qword_28033D958);
  v10 = sub_269854844();
  sub_269854874();
  v11 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v10, v11, v14, "watchSportsEventResolve", v12, v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26978FF50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269790014;

  return WatchSportsEventIntentHandler.handle(intent:)();
}

uint64_t sub_269790014()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_50_0();
  v10(v9);
  _Block_release(v4);

  OUTLINED_FUNCTION_7_7();

  return v11();
}

uint64_t sub_269790160()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324478, qword_269860050);
  v1[5] = OUTLINED_FUNCTION_37_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = sub_2698548D4();
  v1[14] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[15] = v5;
  v1[16] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2697902A0(uint64_t a1)
{
  if (qword_2803226E0 != -1)
  {
    a1 = swift_once();
  }

  v2 = v1[15];
  v3 = OUTLINED_FUNCTION_3_31(a1, qword_28033D910);
  v4(v3);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v7);
    _os_log_impl(&dword_269684000, v5, v6, "WatchSportsEventIntentHandler.donateIntent donating intent.", v2, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v9 = v1[15];
  v8 = v1[16];
  v11 = v1[13];
  v10 = v1[14];
  v12 = v1[12];
  v14 = v1[2];
  v13 = v1[3];

  (*(v9 + 8))(v8, v10);
  sub_2698346F4(v14, v13, v11);
  v15 = [objc_allocWithZone(sub_269854494()) init];
  sub_269791F1C(0xD000000000000014, 0x800000026987F1A0, v15);
  sub_269792698(v11, v12, &qword_280324478, qword_269860050);
  v16 = sub_269854074();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16);
  v18 = v1[12];
  if (EnumTagSinglePayload == 1)
  {
    v19 = sub_2696CB05C(v1[12], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FF4();
    OUTLINED_FUNCTION_1_28();
    v20 = OUTLINED_FUNCTION_25_2();
    v19 = v21(v20);
    if (v10)
    {
      OUTLINED_FUNCTION_30_11();
      v19 = OUTLINED_FUNCTION_27_11();
      goto LABEL_10;
    }
  }

  v18 = 0;
LABEL_10:
  v22 = v1[13];
  OUTLINED_FUNCTION_0_16(v19, sel_setAthleteName_);

  OUTLINED_FUNCTION_29_10(v23, v24, &qword_280324478, qword_269860050);
  v25 = OUTLINED_FUNCTION_9_23();
  v26 = v1[11];
  if (v25 == 1)
  {
    v27 = sub_2696CB05C(v1[11], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853F64();
    OUTLINED_FUNCTION_1_28();
    v28 = OUTLINED_FUNCTION_25_2();
    v27 = v29(v28);
    if (v22)
    {
      OUTLINED_FUNCTION_30_11();
      v27 = OUTLINED_FUNCTION_27_11();
      goto LABEL_15;
    }
  }

  v26 = 0;
LABEL_15:
  v30 = v1[13];
  OUTLINED_FUNCTION_0_16(v27, sel_setAthleteQId_);

  OUTLINED_FUNCTION_29_10(v31, v32, &qword_280324478, qword_269860050);
  v33 = OUTLINED_FUNCTION_9_23();
  v34 = v1[10];
  if (v33 == 1)
  {
    v35 = sub_2696CB05C(v1[10], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FD4();
    OUTLINED_FUNCTION_1_28();
    v36 = OUTLINED_FUNCTION_25_2();
    v35 = v37(v36);
    if (v30)
    {
      OUTLINED_FUNCTION_30_11();
      v35 = OUTLINED_FUNCTION_27_11();
      goto LABEL_20;
    }
  }

  v34 = 0;
LABEL_20:
  v38 = v1[13];
  OUTLINED_FUNCTION_0_16(v35, sel_setLeagueName_);

  OUTLINED_FUNCTION_29_10(v39, v40, &qword_280324478, qword_269860050);
  v41 = OUTLINED_FUNCTION_9_23();
  v42 = v1[9];
  if (v41 == 1)
  {
    v43 = sub_2696CB05C(v1[9], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269854054();
    OUTLINED_FUNCTION_1_28();
    v44 = OUTLINED_FUNCTION_25_2();
    v43 = v45(v44);
    if (v38)
    {
      OUTLINED_FUNCTION_30_11();
      v43 = OUTLINED_FUNCTION_27_11();
      goto LABEL_25;
    }
  }

  v42 = 0;
LABEL_25:
  v46 = v1[13];
  OUTLINED_FUNCTION_0_16(v43, sel_setLeagueQId_);

  OUTLINED_FUNCTION_29_10(v47, v48, &qword_280324478, qword_269860050);
  v49 = OUTLINED_FUNCTION_9_23();
  v50 = v1[8];
  if (v49 == 1)
  {
    v51 = sub_2696CB05C(v1[8], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853FB4();
    OUTLINED_FUNCTION_1_28();
    v52 = OUTLINED_FUNCTION_25_2();
    v51 = v53(v52);
    if (v46)
    {
      OUTLINED_FUNCTION_30_11();
      v51 = OUTLINED_FUNCTION_27_11();
      goto LABEL_30;
    }
  }

  v50 = 0;
LABEL_30:
  v54 = v1[13];
  OUTLINED_FUNCTION_0_16(v51, sel_setSportName_);

  OUTLINED_FUNCTION_29_10(v55, v56, &qword_280324478, qword_269860050);
  v57 = OUTLINED_FUNCTION_9_23();
  v58 = v1[7];
  if (v57 == 1)
  {
    v59 = sub_2696CB05C(v1[7], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269854034();
    OUTLINED_FUNCTION_1_28();
    v60 = OUTLINED_FUNCTION_25_2();
    v59 = v61(v60);
    if (v54)
    {
      OUTLINED_FUNCTION_30_11();
      v59 = OUTLINED_FUNCTION_27_11();
      goto LABEL_35;
    }
  }

  v58 = 0;
LABEL_35:
  v62 = v1[13];
  OUTLINED_FUNCTION_0_16(v59, sel_setSportQId_);

  OUTLINED_FUNCTION_29_10(v63, v64, &qword_280324478, qword_269860050);
  v65 = OUTLINED_FUNCTION_9_23();
  v66 = v1[6];
  if (v65 == 1)
  {
    v67 = sub_2696CB05C(v1[6], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269853F84();
    OUTLINED_FUNCTION_1_28();
    v68 = OUTLINED_FUNCTION_25_2();
    v67 = v69(v68);
    if (v62)
    {
      OUTLINED_FUNCTION_30_11();
      v67 = OUTLINED_FUNCTION_27_11();
      goto LABEL_40;
    }
  }

  v66 = 0;
LABEL_40:
  OUTLINED_FUNCTION_0_16(v67, sel_setTeamName_);

  OUTLINED_FUNCTION_29_10(v70, v71, &qword_280324478, qword_269860050);
  v72 = OUTLINED_FUNCTION_9_23();
  v73 = v1[5];
  if (v72 == 1)
  {
    sub_2696CB05C(v1[5], &qword_280324478, qword_269860050);
  }

  else
  {
    sub_269854014();
    v75 = v74;
    OUTLINED_FUNCTION_3_14();
    (*(v76 + 8))(v73, v16);
    if (v75)
    {
      v77 = sub_269854A64();

      goto LABEL_45;
    }
  }

  v77 = 0;
LABEL_45:
  v78 = v1[13];
  v79 = v1[4];
  [v15 setTeamQId_];

  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider), *(v79 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider + 24));
  sub_2697B752C(v15, 1);

  sub_2696CB05C(v78, &qword_280324478, qword_269860050);

  OUTLINED_FUNCTION_7_7();

  return v80();
}

char *sub_2697909C0()
{
  v1 = v0;
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
  v7 = WatchSportsEventIntentResponse.init(code:userActivity:)(4, 0);
  sub_269694CBC();
  v8 = sub_269855034();
  [v7 setIsEntitledToPlayOnDevice_];

  v9 = *(v1 + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider);
  sub_2697B9214();
  if (v10)
  {
    sub_269854A64();
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    v9 = 0;
  }

  [v7 setPlayablePunchoutUrl_];

  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v11 = __swift_project_value_buffer(v2, qword_28033D928);
  (*(v3 + 16))(v5, v11, v2);
  v12 = v7;
  v13 = sub_2698548B4();
  v14 = sub_269854F14();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_27_2();
    v16 = OUTLINED_FUNCTION_9_3();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_26974FAB0(v12, &selRef_playablePunchoutUrl);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 7104878;
      v19 = 0xE300000000000000;
    }

    v20 = sub_26974F520(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_269684000, v13, v14, "WatchSportsEventIntentHandler returning mock successful UTS bestPlayable response %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_269790C50()
{
  OUTLINED_FUNCTION_2_7();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = sub_2698548D4();
  v1[58] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[59] = v5;
  v1[60] = OUTLINED_FUNCTION_37_0();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269790D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_8_5();
  v19 = v18[56];
  v20 = v18[55];
  __swift_project_boxed_opaque_existential_1((v18[57] + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider), *(v18[57] + OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  OUTLINED_FUNCTION_33_9();
  v21 = swift_allocObject();
  v18[64] = v21;
  *(v21 + 16) = xmmword_269857710;
  *(v21 + 32) = v20;
  *(v21 + 40) = v19;

  v22 = swift_task_alloc();
  v18[65] = v22;
  *v22 = v18;
  v22[1] = sub_269790E14;

  return sub_2697D780C();
}

uint64_t sub_269790E14()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2[66] = v1;
  v2[67] = v3;
  v2[68] = v0;

  if (v0)
  {
    v4 = sub_269791774;
  }

  else
  {

    v4 = sub_269790F30;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269790F30()
{
  v84 = v0;
  sub_26981D604();
  v1 = *(v0 + 408);
  if (v1)
  {
    v72 = *(v0 + 400);
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v76 = v2;
    v5 = *(v0 + 504);
    v6 = *(v0 + 472);
    v78 = __swift_project_value_buffer(*(v0 + 464), qword_28033D928);
    v79 = *(v6 + 16);
    v79(v5);

    v7 = sub_2698548B4();
    v8 = sub_269854F14();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 504);
    v11 = *(v0 + 472);
    v73 = *(v0 + 464);
    v81 = v3;
    if (v9)
    {
      v71 = *(v0 + 504);
      v12 = v4;
      v14 = *(v0 + 440);
      v13 = *(v0 + 448);
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_9_3();
      v83 = v16;
      *v15 = 136315394;
      v17 = v14;
      v4 = v12;
      *(v15 + 4) = sub_26974F520(v17, v13, &v83);
      *(v15 + 12) = 1024;
      v18 = v76;
      *(v15 + 14) = v76 & 1;

      _os_log_impl(&dword_269684000, v7, v8, "WatchSportsEventIntentHandler successfully retrieved playable for matchupId: %s isEntitledToPlayOnDevice: %{BOOL}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v19 = *(v11 + 8);
      v19(v71, v73);
    }

    else
    {

      v19 = *(v11 + 8);
      v19(v10, v73);
      v18 = v76;
    }

    v34 = *(v0 + 528);
    v77 = type metadata accessor for WatchSportsEventIntentResponse();
    v35 = objc_allocWithZone(v77);
    v33 = WatchSportsEventIntentResponse.init(code:userActivity:)(4, 0);
    v36 = 0x277CCA000uLL;
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    OUTLINED_FUNCTION_0_16(v37, sel_setIsEntitledToPlayOnDevice_);

    v38 = sub_269854A64();
    OUTLINED_FUNCTION_0_16(v38, sel_setPlayablePunchoutUrl_);

    if (*(v34 + 16) && (v39 = sub_26973CEF8(v72, v1), (v40 & 1) != 0))
    {
      v74 = v19;
      v41 = *(v0 + 496);
      v42 = *(v0 + 464);
      memcpy((v0 + 16), (*(*(v0 + 528) + 56) + (v39 << 7)), 0x80uLL);
      sub_2697926F8(v0 + 16, v0 + 144);

      (v79)(v41, v78, v42);

      sub_2697926F8(v0 + 16, v0 + 272);
      v43 = sub_2698548B4();
      v44 = sub_269854F14();

      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 496);
      v47 = *(v0 + 464);
      if (v45)
      {
        v48 = swift_slowAlloc();
        v80 = v46;
        v49 = OUTLINED_FUNCTION_9_3();
        v83 = v49;
        *v48 = 67109378;
        *(v48 + 4) = *(v0 + 74);
        sub_269792754(v0 + 16);
        *(v48 + 8) = 2080;

        v50 = sub_26974F520(v81, v4, &v83);

        *(v48 + 10) = v50;
        _os_log_impl(&dword_269684000, v43, v44, "WatchSportsEventIntentHandler isAppInstalled: %{BOOL}d playableUrl: %s", v48, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_10();
        v36 = 0x277CCA000;
        OUTLINED_FUNCTION_10();

        v51 = v80;
      }

      else
      {

        sub_269792754(v0 + 16);

        v51 = v46;
      }

      v64 = v74(v51, v47);
      if (*(v0 + 64))
      {

        OUTLINED_FUNCTION_25_2();
        v65 = sub_269854A64();
      }

      else
      {
        v65 = 0;
      }

      OUTLINED_FUNCTION_0_16(v64, sel_setAppName_);

      v66 = [objc_allocWithZone(*(v36 + 2992)) initWithInteger_];
      OUTLINED_FUNCTION_0_16(v66, sel_setIsAppInstalled_);

      if (*(v0 + 88))
      {

        OUTLINED_FUNCTION_25_2();
        v67 = sub_269854A64();
        sub_269792754(v0 + 16);
      }

      else
      {
        v68 = sub_269792754(v0 + 16);
        v67 = 0;
      }

      OUTLINED_FUNCTION_0_16(v68, sel_setAppStorePunchoutUrl_);
    }

    else
    {
      v52 = *(v0 + 488);
      v53 = *(v0 + 464);

      (v79)(v52, v78, v53);

      v54 = sub_2698548B4();
      v55 = sub_269854F24();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 488);
      v58 = *(v0 + 464);
      if (v56)
      {
        v82 = *(v0 + 488);
        v59 = OUTLINED_FUNCTION_27_2();
        v75 = v19;
        v60 = OUTLINED_FUNCTION_9_3();
        v83 = v60;
        *v59 = 136315138;

        v61 = sub_26974F520(v72, v1, &v83);

        *(v59 + 4) = v61;
        _os_log_impl(&dword_269684000, v54, v55, "WatchSportsEventIntentHandler failed to retrieve channel for channelId: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v75(v82, v58);
      }

      else
      {

        v19(v57, v58);
      }

      v62 = objc_allocWithZone(v77);
      v63 = OUTLINED_FUNCTION_25_11();

      v33 = v63;
    }
  }

  else
  {

    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v21 = *(v0 + 472);
    v20 = *(v0 + 480);
    v22 = *(v0 + 464);
    v23 = __swift_project_value_buffer(v22, qword_28033D928);
    (*(v21 + 16))(v20, v23, v22);

    v24 = sub_2698548B4();
    v25 = sub_269854F24();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 440);
      v26 = *(v0 + 448);
      v28 = OUTLINED_FUNCTION_27_2();
      v29 = OUTLINED_FUNCTION_9_3();
      v83 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_26974F520(v27, v26, &v83);
      _os_log_impl(&dword_269684000, v24, v25, "WatchSportsEventIntentHandler failed to retrieve playable for matchupId: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v30 = OUTLINED_FUNCTION_22_3();
    v31(v30);
    v32 = objc_allocWithZone(type metadata accessor for WatchSportsEventIntentResponse());
    v33 = OUTLINED_FUNCTION_25_11();
  }

  v69 = *(v0 + 8);

  return v69(v33);
}

uint64_t sub_269791774()
{
  OUTLINED_FUNCTION_8_5();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

id WatchSportsEventIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchSportsEventIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269791894(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2696DAF80;

  return v6();
}

uint64_t sub_26979197C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2696DA938;

  return v7();
}

uint64_t sub_269791A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_269792698(a3, v22 - v10, &qword_280324D20, &qword_269860000);
  v12 = sub_269854DB4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2696CB05C(v11, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_269854D34();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_269854B04() + 32;
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

      sub_2696CB05C(a3, &qword_280324D20, &qword_269860000);

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

  sub_2696CB05C(a3, &qword_280324D20, &qword_269860000);
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

uint64_t sub_269791D40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269791E38;

  return v6(a1);
}

uint64_t sub_269791E38()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

void sub_269791F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 _setLaunchId_];
}

uint64_t sub_269791F80(void *a1)
{
  v1 = [a1 usoEntityData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269851C94();

  return v3;
}

id sub_269791FE4(const void *a1, uint64_t a2)
{
  v12 = a2;
  v19[3] = &type metadata for UTSProvider;
  v19[4] = &off_287A43FA8;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), a1, 0x50uLL);
  v18[3] = &type metadata for SiriRemembersProvider;
  v18[4] = &off_287A41D70;
  v17[3] = &type metadata for TvProfileSelector;
  v17[4] = &off_287A41E28;
  v3 = type metadata accessor for WatchSportsEventIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for UTSProvider);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for SiriRemembersProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for TvProfileSelector);
  v16[3] = &type metadata for UTSProvider;
  v16[4] = &off_287A43FA8;
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), v7, 0x50uLL);
  v15[3] = &type metadata for SiriRemembersProvider;
  v15[4] = &off_287A41D70;
  v14[3] = &type metadata for TvProfileSelector;
  v14[4] = &off_287A41E28;
  sub_26970EF58(v16, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_utsProvider]);
  v9 = &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_userDefaultsProvider];
  *v9 = v12;
  v9[1] = &off_287A41E38;
  sub_26970EF58(v15, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_siriRemembersProvider]);
  sub_26970EF58(v14, &v4[OBJC_IVAR____TtC16SiriVideoIntents29WatchSportsEventIntentHandler_tvProfileSelector]);
  v13.receiver = v4;
  v13.super_class = v3;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v10;
}

uint64_t sub_26979225C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_11(v0);
  *v1 = v2;
  v1[1] = sub_2696DA938;
  v3 = OUTLINED_FUNCTION_22_3();

  return v4(v3);
}

uint64_t sub_269792304()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_11(v0);
  *v1 = v2;
  v1[1] = sub_2696DAF80;
  v3 = OUTLINED_FUNCTION_22_3();

  return v4(v3);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_33_9();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2697923F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_24_11(v6);
  *v7 = v8;
  v7[1] = sub_2696DAF80;

  return sub_26979197C(a1, v3, v4, v5);
}

uint64_t sub_2697924C0()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_11(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_14(v1);

  return v4(v3);
}

uint64_t sub_269792558()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_11(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_14(v1);

  return v4(v3);
}

uint64_t sub_2697925F0()
{
  OUTLINED_FUNCTION_8_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_11(v0);
  *v1 = v2;
  v1[1] = sub_2696DAF80;
  v3 = OUTLINED_FUNCTION_22_3();

  return v4(v3);
}

uint64_t sub_269792698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_14();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_12_25()
{
}

char *OUTLINED_FUNCTION_25_11()
{

  return WatchSportsEventIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_27_11()
{
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_269792698(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_269854A64();
}

void OUTLINED_FUNCTION_37_7()
{
}

void OUTLINED_FUNCTION_38_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_269792920()
{
  v0 = sub_269854624();
  v2 = v1;
  v3 = sub_269854A94();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      goto LABEL_23;
    }

    v6 = OUTLINED_FUNCTION_1_29(v0, v4, v3);

    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v7 = sub_269854624();
  v9 = v8;
  v10 = sub_269854A94();
  if (!v9)
  {

    goto LABEL_17;
  }

  if (v7 == v10 && v9 == v11)
  {
    goto LABEL_23;
  }

  v13 = OUTLINED_FUNCTION_1_29(v7, v11, v10);

  if ((v13 & 1) == 0)
  {
LABEL_17:
    v15 = sub_269854624();
    v17 = v16;
    v18 = sub_269854A94();
    if (!v17)
    {
      v14 = 0;
      goto LABEL_25;
    }

    if (v15 != v18 || v17 != v19)
    {
      v14 = OUTLINED_FUNCTION_1_29(v15, v19, v18);
LABEL_24:

LABEL_25:

      return v14 & 1;
    }

LABEL_23:
    v14 = 1;
    goto LABEL_24;
  }

LABEL_15:
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_269792A6C()
{
  sub_2698556D4();
  sub_269854604();
  sub_269854B34();

  sub_2698556B4();
  return sub_269855544();
}

uint64_t sub_269792AE0()
{
  v2 = sub_269854624();
  v4 = v3;
  v5 = sub_269854A94();
  if (v4)
  {
    if (v5 == v2 && v4 == v6)
    {
      goto LABEL_16;
    }

    v8 = OUTLINED_FUNCTION_0_35(v5);

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v9 = sub_269854A94();
  if (!v4)
  {

    goto LABEL_19;
  }

  if (v9 == v2 && v4 == v10)
  {
LABEL_16:

LABEL_17:

    goto LABEL_29;
  }

  v12 = OUTLINED_FUNCTION_0_35(v9);

  if (v12)
  {
    goto LABEL_17;
  }

LABEL_19:
  v13 = sub_269854A94();
  if (!v4)
  {
    goto LABEL_17;
  }

  if (v13 != v2 || v4 != v14)
  {
    OUTLINED_FUNCTION_0_35(v13);
  }

LABEL_29:
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_269792CA0(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_269854A64();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD000000000000013, 0x800000026987F3A0);
  v0 = sub_269854634();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v0, v2);

  MEMORY[0x26D645A60](0x614E6D6F6F72202CLL, 0xEC000000203A656DLL);
  v3 = sub_269854644();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v3, v5);

  MEMORY[0x26D645A60](0x747369737361202CLL, 0xEF203A6449746E61);
  v6 = sub_269854604();
  MEMORY[0x26D645A60](v6);

  MEMORY[0x26D645A60](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_269854654();
  v7 = sub_2698547A4();
  MEMORY[0x26D645A60](v7);

  MEMORY[0x26D645A60](0xD000000000000010, 0x800000026987F3C0);
  v8 = sub_269854614();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v8, v10);

  MEMORY[0x26D645A60](0xD00000000000001ELL, 0x800000026987F3E0);
  v11 = sub_269854624();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26D645A60](v11, v13);

  MEMORY[0x26D645A60](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_269792F34()
{
  result = qword_280324480;
  if (!qword_280324480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324480);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{

  return sub_269855584();
}

uint64_t OUTLINED_FUNCTION_1_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269855584();
}

uint64_t sub_269792FF4(void *a1, uint64_t a2)
{
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_28033D910);
  v48 = *(v5 + 16);
  v49 = v12;
  v48(v11);
  sub_269706F14(a1, v53);
  v13 = sub_2698548B4();
  v14 = sub_269854F14();
  sub_269706F70(a1);
  v15 = os_log_type_enabled(v13, v14);
  v50 = v5;
  v51 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v47 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v53[0] = v18;
    *v17 = 136315138;
    v19 = sub_2697937D8();
    v21 = sub_26974F520(v19, v20, v53);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_269684000, v13, v14, "#hal Invoking device resolution service with filter: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v5 = v50;
    OUTLINED_FUNCTION_10();
    v9 = v47;
    OUTLINED_FUNCTION_10();
  }

  v22 = *(v5 + 8);
  v22(v11, v3);

  sub_2697E2660();

  v53[0] = sub_2697E26D0(v23);
  sub_26979468C(v53);

  v24 = v53[0];
  (v48)(v9, v49, v3);

  v25 = sub_2698548B4();
  v26 = sub_269854F14();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53[0] = v28;
    *v27 = 134218242;
    *(v27 + 4) = sub_26975004C();
    *(v27 + 12) = 2080;
    sub_2697F056C(v24, v29, v30, v31, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10]);
    v38 = sub_26974F520(v36, v37, v53);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_269684000, v25, v26, "#hal %ld device(s): %s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v22(v9, v3);
  v39 = v51;
  v40 = sub_26975004C();

  if (v40)
  {
    if (v39[4] || v39[6] || v39[8])
    {
      KeyPath = swift_getKeyPath();
      v42 = sub_269793A74(KeyPath, v39, v24);
      v44 = ~v43;

      if (v44)
      {

        return v42;
      }
    }
  }

  else
  {

    return 1;
  }

  return v24;
}

uint64_t sub_269793450(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - v5;
  v6 = type metadata accessor for MediaNLIntent(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, a1, v17);
  v24 = (*(v19 + 88))(v23, v17);
  if (v24 == *MEMORY[0x277D5C128])
  {
    (*(v19 + 96))(v23, v17);
    (*(v12 + 32))(v16, v23, v10);
    (*(v12 + 16))(v9, v16, v10);
    v25 = sub_2697A6E84();
    sub_2696CC460(v9);
    (*(v12 + 8))(v16, v10);
  }

  else
  {
    v26 = v24;
    v27 = *MEMORY[0x277D5C140];
    v28 = *MEMORY[0x277D5C148];
    (*(v19 + 8))(v23, v17);
    if (v26 == v27 || v26 == v28)
    {
      v30 = v37;
      sub_2696CB644(v37);
      v31 = sub_269852474();
      if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
      {
        v25 = sub_269852434();
        (*(*(v31 - 8) + 8))(v30, v31);
        goto LABEL_12;
      }

      sub_2696CC3F8(v30);
    }

    v25 = 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_3_32();
  if (sub_269852D14() & 1) != 0 || (OUTLINED_FUNCTION_3_32(), (sub_269852CE4()))
  {
    v32 = 1;
  }

  else
  {
    v33 = a2[3];
    v34 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v33);
    v32 = sub_2696CB5D4(v33, v34) & v25;
  }

  return v32 & 1;
}

uint64_t sub_2697937D8()
{
  v1 = 7104878;
  sub_269855204();

  strcpy(v8, "deviceName: ");
  HIWORD(v8[1]) = -4864;
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x26D645A60](v2, v3);

  MEMORY[0x26D645A60](0x3A6D6F6F72202C22, 0xEA00000000002220);
  if (v0[6])
  {
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x26D645A60](v4, v5);

  MEMORY[0x26D645A60](0x7469746E65202C22, 0xEC00000022203A79);
  if (v0[8])
  {
    v1 = v0[7];
    v6 = v0[8];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x26D645A60](v1, v6);

  MEMORY[0x26D645A60](34, 0xE100000000000000);
  return v8[0];
}

unint64_t sub_26979395C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2697939A8(char a1)
{
  if (!a1)
  {
    return 0x656369766544;
  }

  if (a1 == 1)
  {
    return 1836019538;
  }

  return 0x797469746E45;
}

unint64_t sub_269793A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26979395C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_269793A48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697939A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269793A74(uint64_t a1, const void *a2, unint64_t a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_269706F14(a2, v23);
  swift_getAtKeyPath();
  memcpy(v23, __dst, sizeof(v23));
  sub_269706F70(v23);
  if (!__src[1])
  {
    return 0;
  }

  if (qword_2803224F8 != -1)
  {
    swift_once();
  }

  v6 = qword_280324488;
  sub_26981D250(a1, qword_280324488);
  if (!v7)
  {

    return 0;
  }

  v8 = sub_269793CA8(__src[0], __src[1], a3, v7);

  if (sub_26975004C())
  {
    return v8;
  }

  sub_26981D250(a1, v6);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;

  memcpy(__src, a2, sizeof(__src));
  sub_269706F14(a2, v18);
  swift_getAtKeyPath();
  memcpy(__dst, __src, sizeof(__dst));
  sub_269706F70(__dst);
  v13 = v20;
  if (!v20)
  {
    return 0;
  }

  v14 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  if (v12)
  {
    if (v12 == 1)
    {
      v16 = 0xE400000000000000;
      v17 = 1836019538;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x797469746E45;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    v17 = 0x656369766544;
  }

  *(inited + 32) = v17;
  *(inited + 40) = v16;
  *(inited + 48) = v14;
  *(inited + 56) = v13;
  return sub_269854A04();
}

uint64_t sub_269793CA8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = a3;
  v61 = a1;
  v62 = a2;
  v50 = sub_269851B04();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324490, &qword_269860150);
  v7 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v43 - v11;
  if (a4 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_269855324())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v44 = i;
    v51 = v10;
    v10 = v55;
    v14 = sub_26975004C();
    v15 = 0;
    v46 = a4 & 0xC000000000000001;
    v43 = a4 + 32;
    v63 = v10 & 0xFFFFFFFFFFFFFF8;
    v64 = v10 & 0xC000000000000001;
    v48 = (v5 + 8);
    v5 = v10;
    v57 = v14;
    v45 = a4;
    v54 = (v7 + 8);
LABEL_5:
    v7 = v46;
    sub_269750050();
    if (v7)
    {
      v16 = MEMORY[0x26D646120](v15, a4);
    }

    else
    {
      v16 = *(v43 + 8 * v15);
    }

    v17 = __OFADD__(v15, 1);
    v18 = v15 + 1;
    if (!v17)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v47 = v18;
  v19 = 0;
  v70 = v13;
  a4 = MEMORY[0x277D837D0];
  v59 = v16;
  while (v14 != v19)
  {
    if (v64)
    {
      v20 = MEMORY[0x26D646120](v19, v5);
    }

    else
    {
      if (v19 >= *(v63 + 16))
      {
        goto LABEL_50;
      }

      v20 = *(v5 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    KeyPath = v20;
    v7 = v20;
    swift_getAtKeyPath();

    v21 = v69;
    if (!v69)
    {

      goto LABEL_27;
    }

    v60 = v7;
    v22 = v68;
    KeyPath = v61;
    v67 = v62;
    v23 = sub_269693054();
    if (!sub_269855114())
    {

LABEL_23:
      v7 = &v70;
      sub_269855284();
      v10 = *(v70 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      goto LABEL_27;
    }

    sub_269854464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324498, &unk_269860158);
    v68 = v16;
    KeyPath = swift_getKeyPath();
    v7 = sub_269854A54();

    v24 = v54;
    if (v7)
    {
      v53 = v23;
      v68 = v22;
      v69 = v21;

      v25 = v51;
      sub_269854464();
      sub_2697951CC();
      v26 = sub_269795220();
      v27 = v56;
      v52 = v26;
      v7 = sub_269854A34();
      v28 = v25;
      v29 = v25;
      v10 = *v24;
      (*v24)(v29, v27);

      if (v7)
      {
        KeyPath = v22;
        v67 = v21;

        sub_269854464();
        v65[0] = 0;
        v65[1] = 0xE000000000000000;
        sub_269795284();
        sub_2697952D8();
        v30 = v56;
        sub_269854EA4();
        (v10)(v28, v30);

        KeyPath = v68;
        v67 = v69;
        v31 = v49;
        sub_269851AE4();
        v32 = sub_2698550F4();
        v34 = v33;
        (*v48)(v31, v50);

        v68 = v32;
        v69 = v34;
        KeyPath = v61;
        v67 = v62;
        v35 = MEMORY[0x277D837D0];
        v7 = sub_269855114();

        (v10)(v58, v30);

        v5 = v55;
        v14 = v57;
        a4 = v35;
        v16 = v59;
        if (v7)
        {

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      v14 = v57;
      (v10)(v58, v56);
    }

    else
    {

      v10 = *v24;
      (*v24)(v58, v56);
    }

    v5 = v55;
    a4 = MEMORY[0x277D837D0];
    v16 = v59;
LABEL_27:
    ++v19;
  }

  v7 = v70;
  if (sub_26975004C())
  {

    return v7;
  }

  v10 = 0;
  v13 = MEMORY[0x277D84F90];
  v65[0] = MEMORY[0x277D84F90];
  a4 = v45;
  v15 = v47;
  while (v14 != v10)
  {
    if (v64)
    {
      v36 = MEMORY[0x26D646120](v10, v5);
    }

    else
    {
      if (v10 >= *(v63 + 16))
      {
        goto LABEL_52;
      }

      v36 = *(v5 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_51;
    }

    KeyPath = v36;
    v37 = v36;
    swift_getAtKeyPath();

    v7 = v69;
    if (v69)
    {
      v38 = sub_269854AF4();
      v40 = v39;

      v68 = v38;
      v69 = v40;
      KeyPath = sub_269854AF4();
      v67 = v41;
      sub_269693054();
      v7 = sub_269855144();

      if (v7)
      {
        v7 = v65;
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      else
      {
      }

      v14 = v57;
    }

    else
    {
    }

    ++v10;
  }

  v7 = v65[0];
  v10 = sub_26975004C();

  if (!v10)
  {

    if (v15 != v44)
    {
      goto LABEL_5;
    }

    return v13;
  }

  return v7;
}

uint64_t sub_2697944DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244C0, qword_269860198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985C7B0;
  *(inited + 32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2698590C0;
  *(v1 + 32) = swift_getKeyPath();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2698590C0;
  *(v2 + 32) = swift_getKeyPath();
  *(inited + 64) = v2;
  *(inited + 72) = 0;
  *(inited + 80) = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26985A540;
  *(v3 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323F28, &unk_26985DDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244C8, qword_2698601F0);
  result = sub_269854A04();
  qword_280324488 = result;
  return result;
}

uint64_t sub_26979468C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2697E23EC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_269794708(v6);
  return sub_269855294();
}

void sub_269794708(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_269855534();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_269706FC4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2697948E4(v8, v9, a1, v5);
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
    sub_2697947E8(0, v3, 1, a1);
  }
}

void sub_2697947E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_269854654();
        sub_269854654();
        v13 = sub_2698547B4();
        v14 = sub_2698547B4();

        if (v14 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2697948E4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v95 = (v8 + 16);
      v96 = *(v8 + 16);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v97 = v8;
        v98 = (v8 + 16 * v96);
        v99 = *v98;
        v100 = &v95[2 * v96];
        v8 = *(v100 + 1);
        sub_269794F7C((*a3 + 8 * *v98), (*a3 + 8 * *v100), (*a3 + 8 * v8), v113);
        if (v5)
        {
          break;
        }

        if (v8 < v99)
        {
          goto LABEL_121;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_122;
        }

        *v98 = v99;
        v98[1] = v8;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_123;
        }

        v96 = *v95 - 1;
        sub_2697E18B8(v100 + 16, v101, v100);
        *v95 = v96;
        v8 = v97;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_2697E18A4(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v103 = v5;
      v105 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v113 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v15;
      sub_269854654();
      sub_269854654();
      v110 = sub_2698547B4();
      v109 = sub_2698547B4();

      v17 = v113;
      v18 = v12 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v10 + 1;
        if (v20 >= v17)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v5 = v21;
        sub_269854654();
        v23 = v20;
        sub_269854654();
        v24 = sub_2698547B4();
        v25 = sub_2698547B4();

        v17 = v113;
        v26 = v25 < v24;
        v10 = v23;
        v27 = !v26;
        v28 = (v109 < v110) ^ v27;
        ++v14;
        v18 = v19 + 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v17;
LABEL_12:
      if (v109 >= v110)
      {
        v5 = v103;
        v8 = v105;
      }

      else
      {
        v8 = v105;
        v29 = v12;
        if (v10 < v12)
        {
          goto LABEL_127;
        }

        if (v12 >= v10)
        {
          v5 = v103;
          v9 = v12;
          goto LABEL_27;
        }

        if (v17 >= v19)
        {
          v30 = v19;
        }

        else
        {
          v30 = v17;
        }

        v31 = 8 * v30 - 8;
        v32 = v10;
        v5 = v103;
        do
        {
          if (v29 != --v32)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v34 = *(v33 + v13);
            *(v33 + v13) = *(v33 + v31);
            *(v33 + v31) = v34;
          }

          v29 = (v29 + 1);
          v31 -= 8;
          v13 += 8;
        }

        while (v29 < v32);
      }

      v9 = v12;
    }

LABEL_27:
    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_126;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v10 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26977BE84();
      v8 = v93;
    }

    v50 = *(v8 + 16);
    v51 = v50 + 1;
    if (v50 >= *(v8 + 24) >> 1)
    {
      sub_26977BE84();
      v8 = v94;
    }

    *(v8 + 16) = v51;
    v52 = v8 + 32;
    v53 = (v8 + 32 + 16 * v50);
    *v53 = v9;
    v53[1] = v10;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v113 = v10;
    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        v55 = (v52 + 16 * (v51 - 1));
        v56 = (v8 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v8 + 32);
          v58 = *(v8 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_63:
          if (v60)
          {
            goto LABEL_112;
          }

          v72 = *v56;
          v71 = v56[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_115;
          }

          v76 = v55[1];
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_120;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v51 < 2)
        {
          goto LABEL_114;
        }

        v79 = *v56;
        v78 = v56[1];
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_78:
        if (v75)
        {
          goto LABEL_117;
        }

        v81 = *v55;
        v80 = v55[1];
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v82 < v74)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v8;
        v87 = (v52 + 16 * (v54 - 1));
        v88 = *v87;
        v89 = v52;
        v90 = v54;
        v8 = v52 + 16 * v54;
        v91 = *(v8 + 8);
        sub_269794F7C((*a3 + 8 * *v87), (*a3 + 8 * *v8), (*a3 + 8 * v91), v112);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v91 < v88)
        {
          goto LABEL_107;
        }

        v5 = *(v86 + 16);
        if (v90 > v5)
        {
          goto LABEL_108;
        }

        *v87 = v88;
        v87[1] = v91;
        if (v90 >= v5)
        {
          goto LABEL_109;
        }

        v92 = v90;
        v51 = (v5 - 1);
        sub_2697E18B8((v8 + 16), &v5[-v92 - 1], v8);
        v8 = v86;
        *(v86 + 16) = v5 - 1;
        v26 = v5 > 2;
        v5 = 0;
        v52 = v89;
        if (!v26)
        {
          goto LABEL_92;
        }
      }

      v61 = v52 + 16 * v51;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = v56[1];
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = v55[1];
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_124;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v113;
    if (v113 >= v6)
    {
      goto LABEL_95;
    }
  }

  v36 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v10 == v36)
  {
    goto LABEL_43;
  }

  v104 = v5;
  v106 = v8;
  v37 = *a3;
  v38 = *a3 + 8 * v10 - 8;
  v107 = v9;
  v39 = v9 - v10;
  v111 = v36;
LABEL_36:
  v113 = v10;
  v40 = *(v37 + 8 * v10);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    sub_269854654();
    sub_269854654();
    v46 = sub_2698547B4();
    v47 = sub_2698547B4();

    if (v47 >= v46)
    {
LABEL_41:
      v10 = v113 + 1;
      v38 += 8;
      --v39;
      if ((v113 + 1) == v111)
      {
        v10 = v111;
        v5 = v104;
        v8 = v106;
        v9 = v107;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v48;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

uint64_t sub_269794F7C(char *a1, char *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_26977D884(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_269854654();
      sub_269854654();
      v16 = sub_2698547B4();
      v17 = sub_2698547B4();

      if (v17 >= v16)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_26977D884(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_269854654();
    sub_269854654();
    v29 = sub_2698547B4();
    v30 = sub_2698547B4();

    v5 = v24;
    v31 = v24 + 1;
    if (v30 < v29)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}