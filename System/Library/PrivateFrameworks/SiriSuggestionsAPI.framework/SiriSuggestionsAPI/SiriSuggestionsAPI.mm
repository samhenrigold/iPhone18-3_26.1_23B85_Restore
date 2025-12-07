uint64_t static StaticSuggestionDialogCache.shouldWarmup()()
{
  v0 = sub_1BFAAE428();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BFAAE7A8();
  sub_1BFAAE798();
  sub_1BFAAE768();

  sub_1BFAAE898();

  v4 = sub_1BFAAE418();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v16[0] = 0;
  if (qword_1EDCC6710 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EDCC6710);
  }

  v7 = qword_1EDCC6718;

  [v7 lock];
  sub_1BF9F854C(v4, v6, v16);
  [v7 unlock];

  v8 = v16[0];
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v9 = sub_1BFAAF688();
  __swift_project_value_buffer(v9, qword_1EDCC77C8);

  v10 = sub_1BFAAF668();
  v11 = sub_1BFAAFB68();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v16 = v13;
    *v12 = 136315394;
    v14 = sub_1BF9F88A8(v4, v6, v16);

    *(v12 + 4) = v14;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_1BF9F6000, v10, v11, "Current locale is: %s. Cache contains locale: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_2Tm(v13);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {
  }

  return v8 ^ 1u;
}

uint64_t sub_1BF9F854C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (qword_1EDCC6700 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v3 = off_1EDCC6708 + 64;
  v4 = 1 << *(off_1EDCC6708 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_1EDCC6708 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  do
  {
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
        }

        v6 = *&v3[8 * v9];
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_10:
    v6 &= v6 - 1;
    sub_1BF9F86D0();
  }

  while ((sub_1BFAAFBD8() & 1) == 0);

  *a3 = 1;
  return result;
}

unint64_t sub_1BF9F86D0()
{
  result = qword_1EDCC6FD8;
  if (!qword_1EDCC6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6FD8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1BF9F875C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BF9F89DC(a1, a2);
  sub_1BF9F8B9C(&unk_1F3F077F8);
  return v3;
}

unint64_t sub_1BF9F87A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BF9F875C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1BFAAFC88();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1BF9F88A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BF9F87A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BF9F8B40(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v7;
}

void *sub_1BF9F896C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC220, &unk_1BFAB7AC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1BF9F89DC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_1BFAAF958())
  {
    result = sub_1BF9F896C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BFAAFC38();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1BFAAFC88();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

uint64_t __swift_destroy_boxed_opaque_existential_2Tm(void *a1)
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

uint64_t sub_1BF9F8B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BF9F8B9C(uint64_t result)
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

    result = sub_1BFAA93A0(result, v7, 1, v3);
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

id sub_1BF9F8C84(void *a1)
{
  sub_1BF9F90E8();
  v2 = a1[4];
  v3 = a1[5];

  v4 = sub_1BF9F912C(v2, v3, 2);
  v5 = a1[6];
  a1[6] = v4;

  return sub_1BF9F8CE8();
}

id sub_1BF9F8CE8()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = sub_1BF9F8C84(v0);
    v4 = v0[6];
    v0[6] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t static CoreSpeechPolicyProvider.shouldWarmup()()
{
  type metadata accessor for SuggestionsCloudKVStoreManager();
  swift_allocObject();
  sub_1BF9F8E4C(0xD00000000000001ELL, 0x80000001BFAB8BD0);
  v0 = objc_opt_self();
  if ([v0 isContinuousConversationSupported] && (objc_msgSend(v0, sel_isIOSDeviceSupportingBargeIn) & 1) != 0)
  {
    v1 = sub_1BF9F8E78(0x737567616DLL, 0xE500000000000000);

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

void *sub_1BF9F8E4C(uint64_t a1, uint64_t a2)
{
  v2[2] = 0xD000000000000012;
  v2[3] = 0x80000001BFAB9210;
  v2[5] = a2;
  v2[6] = 0;
  v2[4] = a1;
  return v2;
}

id sub_1BF9F8E78(void *a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v16 = a1;
  v17 = a2;

  MEMORY[0x1BFB60B80](v5, v6);
  v7 = sub_1BF9F8CE8();
  v8 = sub_1BFAAF858();

  v9 = [v7 BOOLForKey_];

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v10 = sub_1BFAAF688();
  __swift_project_value_buffer(v10, qword_1EDCC7478);

  v11 = sub_1BFAAF668();
  v12 = sub_1BFAAFB78();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1BF9F88A8(a1, a2, &v16);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_1BF9F6000, v11, v12, "wasEducationExposed for %s: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_2Tm(v14);
    MEMORY[0x1BFB618C0](v14, -1, -1);
    MEMORY[0x1BFB618C0](v13, -1, -1);
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_88_0@<X0>(char a1@<W8>)
{
  *(v1 - 136) = a1;

  return sub_1BFAAFDC8();
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1)
{

  return sub_1BFAAFCD8();
}

unint64_t sub_1BF9F90E8()
{
  result = qword_1EDCC63F8;
  if (!qword_1EDCC63F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC63F8);
  }

  return result;
}

id sub_1BF9F912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BFAAF858();

  v6 = [v4 initWithStoreIdentifier:v5 type:a3];

  return v6;
}

uint64_t sub_1BF9F91A8()
{

  return v0;
}

uint64_t static CoreSpeechPolicyProvider.warmup()()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC77C8);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "Warming up CSAttSiriMagusSupportedPolicy.sharedInstance", v3, 2u);
    OUTLINED_FUNCTION_94();
  }

  v4 = [objc_opt_self() sharedInstance];
  sub_1BFAAFBF8();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_2Tm(v6);
}

uint64_t sub_1BF9F92DC()
{
  sub_1BF9F91A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF9F9378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9F93E8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_54();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1BF9F9468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF9F94C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_94()
{

  JUMPOUT(0x1BFB618C0);
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{

  return sub_1BFA20F44(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a9, &__src, 0xE1uLL);
}

void OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  PolicyResult.getLeafPolicyResults.getter(a1, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_31()
{
}

void OUTLINED_FUNCTION_31_0()
{

  JUMPOUT(0x1BFB60B80);
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAFE08();
}

__n128 OUTLINED_FUNCTION_50_5(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t SiriSuggestionsFacade.__allocating_init(clientProvider:)(void *a1)
{
  sub_1BF9F93E8(a1, v10);
  sub_1BFAAF0E8();
  v2 = sub_1BFAAF0D8();
  v3 = OUTLINED_FUNCTION_169(v2, MEMORY[0x1E69D3170], v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v3;
}

uint64_t SiriSuggestionsFacade.__allocating_init(clientProvider:flagProvider:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_101_0();
  v4 = sub_1BFAAEAC8();
  v5 = OUTLINED_FUNCTION_60_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_220();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v11 = OUTLINED_FUNCTION_34_2();
  v12(v11);
  v13 = OUTLINED_FUNCTION_220();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v15 = OUTLINED_FUNCTION_34_2();
  v17 = v16(v15);
  sub_1BF9F93E8(a2, v22);
  v21 = a2;
  v18 = SiriSuggestionsFacade.__allocating_init(siriRequestState:client:flagProvider:autoCompleteService:)(v8, v17, v22, sub_1BF9FD318, v20);
  __swift_destroy_boxed_opaque_existential_2Tm(a2);
  __swift_destroy_boxed_opaque_existential_2Tm(v2);
  return v18;
}

uint64_t SiriSuggestionsFacade.__allocating_init(siriRequestState:client:flagProvider:autoCompleteService:suggestionsLogger:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, void *a6)
{
  v55 = a4;
  v54 = a5;
  OUTLINED_FUNCTION_184();
  sub_1BFAAEAC8();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = *(v11 + 16);
  v57 = v15;
  v58 = v6;
  v59 = v17;
  v53 = v16;
  v16();
  v18 = type metadata accessor for LocalStateStoreClient();
  v74 = v18;
  OUTLINED_FUNCTION_97_0();
  v51 = sub_1BF9FD8E4(v19, v20);
  v75 = v51;
  v73[0] = a2;
  v76 = a6;
  sub_1BF9F93E8(a6, v72);
  type metadata accessor for DispatchSELFLogger();
  OUTLINED_FUNCTION_131_0();

  DispatchSELFLogger.__allocating_init()();
  OUTLINED_FUNCTION_184();
  type metadata accessor for SELFDispatcherFactory();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  type metadata accessor for InAppSuggestionsDispatcherFactory();
  v22 = swift_allocObject();
  sub_1BF9FA474(v72, v22 + 16);
  *(v22 + 56) = v21;
  v23 = a3;
  sub_1BF9F93E8(a3, v72);
  v24 = type metadata accessor for DefaultSiriHintsViewService();
  v70 = v18;
  v71 = &off_1F3F08940;
  *&v69 = a2;
  v25 = sub_1BF9FCF20(&v69);
  if (v56)
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v76);
    __swift_destroy_boxed_opaque_existential_2Tm(a3);
    v26 = *(v11 + 8);
    v26(v58, v59);
    __swift_destroy_boxed_opaque_existential_2Tm(v72);
    v26(v57, v59);
    __swift_destroy_boxed_opaque_existential_2Tm(v73);
  }

  else
  {
    v56 = v25;
    v47 = type metadata accessor for DefaultSELFLogger();
    v27 = swift_allocObject();
    v27[2] = &unk_1BFAB1F30;
    v27[3] = 0;
    v27[4] = sub_1BFA301BC;
    v27[5] = 0;
    sub_1BF9F93E8(v76, &v69);
    v48 = v23;
    v28 = __swift_mutable_project_boxed_opaque_existential_1Tm(v73, v74);
    v49 = &v47;
    MEMORY[0x1EEE9AC00](v28);
    OUTLINED_FUNCTION_2();
    v50 = 0;
    v31 = (v30 - v29);
    (*(v32 + 16))(v30 - v29);
    v33 = *v31;
    v67 = v18;
    v68 = v51;
    v66[0] = v33;
    v65[4] = &off_1F3F08B48;
    v65[3] = v24;
    v64 = &protocol witness table for DefaultSELFLogger;
    v65[0] = v56;
    v63 = v47;
    *&v62 = v27;
    v18 = swift_allocObject();
    v34 = __swift_mutable_project_boxed_opaque_existential_1Tm(v65, v24);
    v52 = &v47;
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_2();
    v37 = (v36 - v35);
    (*(v38 + 16))(v36 - v35);
    v39 = *v37;
    v61[3] = v24;
    v61[4] = &off_1F3F08B48;
    v61[0] = v39;
    v40 = v57;
    v41 = v59;
    (v53)(v18 + OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_siriRequestState, v57, v59);
    sub_1BF9F93E8(v66, v18 + 16);
    *(v18 + 56) = v22;
    sub_1BF9F93E8(v72, v18 + 104);
    sub_1BF9F93E8(v61, v18 + 144);
    v42 = v67;
    v43 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v60[3] = v42;
    v60[4] = *(v43 + 8);
    __swift_allocate_boxed_opaque_existential_1Tm_0(v60);
    OUTLINED_FUNCTION_54();
    (*(v44 + 16))();

    v55(v60);

    __swift_destroy_boxed_opaque_existential_2Tm(v76);
    __swift_destroy_boxed_opaque_existential_2Tm(v48);
    v45 = *(v11 + 8);
    v45(v58, v41);
    __swift_destroy_boxed_opaque_existential_2Tm(v72);
    v45(v40, v41);
    __swift_destroy_boxed_opaque_existential_2Tm(v61);
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    sub_1BF9FA474(&v62, v18 + 64);
    sub_1BF9FA474(&v69, v18 + OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_suggestionsLogger);
    __swift_destroy_boxed_opaque_existential_2Tm(v66);
    __swift_destroy_boxed_opaque_existential_2Tm(v65);
    __swift_destroy_boxed_opaque_existential_2Tm(v73);
  }

  return v18;
}

uint64_t sub_1BF9FA474(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SiriSuggestionsFacade.__allocating_init(siriRequestState:client:flagProvider:autoCompleteService:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  OUTLINED_FUNCTION_101_0();
  v9 = sub_1BFAAEAC8();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = type metadata accessor for SuggestionsOverXPCLogger();
  v17 = swift_allocObject();
  v17[5] = type metadata accessor for LocalStateStoreClient();
  OUTLINED_FUNCTION_97_0();
  v17[6] = sub_1BF9FD8E4(v18, v19);
  v17[2] = a2;
  v20 = OUTLINED_FUNCTION_178();
  v21(v20);
  sub_1BF9F93E8(a3, v26);
  v25[3] = v16;
  v25[4] = &protocol witness table for SuggestionsOverXPCLogger;
  v25[0] = v17;

  v22 = SiriSuggestionsFacade.__allocating_init(siriRequestState:client:flagProvider:autoCompleteService:suggestionsLogger:)(v15, a2, v26, a4, a5, v25);

  __swift_destroy_boxed_opaque_existential_2Tm(a3);
  (*(v11 + 8))(v5, v9);
  return v22;
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x1BFB618C0);
}

void OUTLINED_FUNCTION_49_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_49_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_43_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_69()
{

  JUMPOUT(0x1BFB618C0);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_69_2()
{
}

uint64_t sub_1BF9FAA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1BF9F93E8(a1, v14);
  v5 = sub_1BFAAF338();
  v6 = sub_1BFAAF328();
  v12 = v5;
  v13 = MEMORY[0x1E69CE278];
  v11 = v6;
  sub_1BF9F93E8(a2, v10);
  v7 = sub_1BFAAF358();
  swift_allocObject();
  result = sub_1BFAAF348();
  v9 = MEMORY[0x1E69CE280];
  a3[3] = v7;
  a3[4] = v9;
  *a3 = result;
  return result;
}

uint64_t sub_1BF9FAB40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SiriRuntimeSuggestionsAPIClientProvider.__deallocating_deinit()
{
  sub_1BF9FAB40(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, &qword_1EBDFB640, &qword_1BFAB11D0);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1BFAAFED8();
}

void sub_1BF9FAE68()
{
  OUTLINED_FUNCTION_102();
  v27[0] = v0;
  v27[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v18);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - v20;
  v22 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  (*(v12 + 16))(v17, v7, v10);
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v12 + 32))(v25 + v23, v17, v10);
  *(v25 + v24) = v5;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v27[0];
  v26[1] = v3;

  sub_1BFA0C8A4();

  OUTLINED_FUNCTION_101();
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_108_0()
{
  v2 = *(v0 + 32);
  *(v0 + 16) = v2;

  return v2;
}

uint64_t sub_1BF9FB10C()
{
  OUTLINED_FUNCTION_43();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50_5(v1);
  *(v3 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_88_3(v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  OUTLINED_FUNCTION_18();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_1BF9FB2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_60_0(v6);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0F0, &unk_1BFAB7008);
  OUTLINED_FUNCTION_60_0(v10);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a1)
  {
    sub_1BFAAF4D8();
    v14 = sub_1BFAAE7F8();
    v15 = 0;
  }

  else
  {
    v14 = sub_1BFAAE7F8();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v15, 1, v14);
  sub_1BFA29E68(a2, v9, &qword_1EBDFB640, &qword_1BFAB11D0);
  a3[3] = sub_1BFAAEAC8();
  a3[4] = sub_1BFA94A24(&qword_1EDCC7088, MEMORY[0x1E69D2D60], MEMORY[0x1E69D2D58]);
  __swift_allocate_boxed_opaque_existential_1Tm(a3);
  return sub_1BFAAEAB8();
}

uint64_t sub_1BF9FB424()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[9];
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  (*(v1 + 128))();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA8AED8;
  v4 = OUTLINED_FUNCTION_53(v0[7]);

  return sub_1BF9FB760(v4, v5, v6, v2, v7);
}

uint64_t sub_1BF9FB4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_54();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9FB558()
{
  sub_1BF9FB4F4(*(v0 + 160), v0 + 104, &qword_1EBDFB6A8, &qword_1BFAB13C0);
  if (*(v0 + 128))
  {
    sub_1BF9FA474((v0 + 104), v0 + 64);
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v1);
    *(v0 + 40) = v1;
    *(v0 + 48) = *(v2 + 16);
    *(v0 + 56) = *(v2 + 24);
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_54();
    (*(v3 + 16))();
    OUTLINED_FUNCTION_44();
    v10 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_9_0(v5);
    v7 = OUTLINED_FUNCTION_53(v6);

    return v10(v7);
  }

  else
  {
    sub_1BFA007F8(v0 + 104, &qword_1EBDFB6A8, &qword_1BFAB13C0);
    OUTLINED_FUNCTION_36();

    return v9();
  }
}

uint64_t sub_1BF9FB760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_1BFAAFF98();
}

uint64_t OUTLINED_FUNCTION_89_3(uint64_t a1)
{

  return sub_1BFAAFCD8();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  return sub_1BFAAF268();
}

uint64_t OUTLINED_FUNCTION_34_5()
{
  *(v1 + 608) = *(v2 + 16);
  *(v1 + 616) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

_OWORD *OUTLINED_FUNCTION_34_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  v17 = (*(v14 + 56) + 32 * v15);

  return sub_1BFA27FE0(v17, &v19);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return sub_1BFAAECE8();
}

void SiriSuggestionsXPCClient.submit(for:propertyKey:propertyValue:completion:)()
{
  OUTLINED_FUNCTION_102();
  v75 = v2;
  v76 = v1;
  v77 = v3;
  v78 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_101_0();
  v9 = sub_1BFAAEF98();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = *(v0 + 8);
  v17 = *(v0 + 16);
  sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3();
  swift_allocObject();
  v18 = sub_1BFAAE268();
  sub_1BFAAE248();
  sub_1BFA27F7C(v8, &v80);
  sub_1BFAAEF88();
  OUTLINED_FUNCTION_41_5();
  sub_1BFA00780(v19, 255, v20, MEMORY[0x1E69D30E8]);
  v21 = sub_1BFAAE258();
  v73 = v17;
  v71 = v6;
  v72 = v18;
  v22 = v75;
  v74 = v21;
  v24 = v23;
  (*(v11 + 8))(v14, v9);
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v25 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v25, qword_1EDCC8B70);
  v26 = v73;
  sub_1BF9FC17C(v15, v16);
  v27 = v22;

  v28 = v74;
  v29 = v24;
  sub_1BFA006A8(v74, v24);
  v30 = sub_1BFAAF668();
  v31 = sub_1BFAAFB78();
  v32 = OUTLINED_FUNCTION_28_6();
  sub_1BF9FC184(v32, v33);

  sub_1BF9FDC2C(v28, v24);
  if (os_log_type_enabled(v30, v31))
  {
    v70 = v31;
    v34 = v26;
    v35 = OUTLINED_FUNCTION_31_4();
    v79[0] = swift_slowAlloc();
    *v35 = 136315650;
    if (v34)
    {
      strcpy(&v80, "{sessionId: ");
      BYTE13(v80) = 0;
      HIWORD(v80) = -5120;
      v36 = OUTLINED_FUNCTION_28_6();
      sub_1BF9FC17C(v36, v37);
      v38 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x1BFB60B80](v38);
      MEMORY[0x1BFB60B80](125, 0xE100000000000000);
      v39 = OUTLINED_FUNCTION_28_6();
    }

    else
    {
      strcpy(&v80, "{requestId: ");
      BYTE13(v80) = 0;
      HIWORD(v80) = -5120;
      v41 = OUTLINED_FUNCTION_28_6();
      sub_1BF9FC17C(v41, v42);
      v43 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x1BFB60B80](v43);
      MEMORY[0x1BFB60B80](125, 0xE100000000000000);
      v39 = OUTLINED_FUNCTION_28_6();
    }

    sub_1BF9FC184(v39, v40);
    v44 = sub_1BF9F88A8(v80, *(&v80 + 1), v79);

    *(v35 + 4) = v44;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_1BF9F88A8(v77, v27, v79);
    *(v35 + 22) = 2080;
    v45 = sub_1BFAAE318();
    v47 = sub_1BF9F88A8(v45, v46, v79);

    *(v35 + 24) = v47;
    _os_log_impl(&dword_1BF9F6000, v30, v70, "Calling Suggestions XPC service submit on request: %s, for key: %s, with value: %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_28();

    v26 = v73;
  }

  else
  {
  }

  if (v26)
  {

    v48 = sub_1BFAAF668();
    v49 = sub_1BFAAFB88();
    v50 = OUTLINED_FUNCTION_28_6();
    sub_1BF9FC184(v50, v51);
    if (os_log_type_enabled(v48, v49))
    {
      v52 = OUTLINED_FUNCTION_51_0();
      v53 = OUTLINED_FUNCTION_31_4();
      v79[0] = v53;
      *v52 = 136315138;
      strcpy(&v80, "{sessionId: ");
      BYTE13(v80) = 0;
      HIWORD(v80) = -5120;
      v54 = OUTLINED_FUNCTION_28_6();
      sub_1BF9FC17C(v54, v55);
      v56 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x1BFB60B80](v56);
      MEMORY[0x1BFB60B80](125, 0xE100000000000000);
      v57 = OUTLINED_FUNCTION_28_6();
      sub_1BF9FC184(v57, v58);
      v59 = sub_1BF9F88A8(v80, *(&v80 + 1), v79);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1BF9F6000, v48, v49, "Unknown interaction id type: %s for XPC submission", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v53);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    sub_1BF9FDC2C(v74, v24);
  }

  else
  {
    v60 = *(v76 + 16);
    OUTLINED_FUNCTION_28_6();
    v61 = sub_1BFAAF858();
    v62 = sub_1BFAAF858();
    v63 = v74;
    v64 = sub_1BFAAE328();
    v65 = swift_allocObject();
    v66 = v78;
    *(v65 + 16) = v71;
    *(v65 + 24) = v66;
    v83 = sub_1BFAA4530;
    v84 = v65;
    OUTLINED_FUNCTION_35_7();
    OUTLINED_FUNCTION_34_7(COERCE_DOUBLE(1107296256));
    v81 = v67;
    v82 = &block_descriptor;
    v68 = _Block_copy(&v80);

    [v60 submitFor:v61 propertyKey:v62 propertyValue:v64 completion:v68];
    sub_1BF9FDC2C(v63, v29);

    _Block_release(v68);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BF9FC080()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void OUTLINED_FUNCTION_30_0()
{

  JUMPOUT(0x1BFB60B80);
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t SiriSuggestionsFacade.submitEngagement(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BF9FC1A4()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 32));
  OUTLINED_FUNCTION_144(*(v0 + 16));
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_156(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_22_4(v3);

  return v6(v5);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_19_1()
{
}

uint64_t sub_1BF9FC470()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB3C78);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_60_1();

  return v6(v4);
}

uint64_t sub_1BF9FC5DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v73 = a1;
  v74 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE18, &qword_1BFAB52C8);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BFAB1400;
  sub_1BF9F94C4(a1, &v88);
  v72 = "tionsAPI10StoreCache";
  v5 = type metadata accessor for SuggestionsCloudKVStoreManager();
  swift_allocObject();
  v6 = sub_1BF9F8E4C(0xD00000000000001ELL, 0x80000001BFAB8BD0);
  v7 = type metadata accessor for CoreSpeechPolicyProvider();
  v86 = v7;
  v87 = &off_1F3F08AE8;
  *&v85 = swift_allocObject();
  v8 = type metadata accessor for SiriFeatureSupportPolicyProvider();
  v64 = v8;
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1Tm(&v85, v7);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  v15 = *v13;
  v9[5] = v7;
  v9[6] = &off_1F3F08AE8;
  v9[2] = v15;
  v9[7] = sub_1BFA28C80;
  v9[8] = 0;
  __swift_destroy_boxed_opaque_existential_2Tm(&v85);
  v16 = type metadata accessor for DefaultSELFLogger();
  v17 = swift_allocObject();
  v71 = &unk_1BFAB1F30;
  v17[2] = &unk_1BFAB1F30;
  v17[3] = 0;
  v70 = sub_1BFA301BC;
  v17[4] = sub_1BFA301BC;
  v17[5] = 0;
  v86 = v16;
  v87 = &protocol witness table for DefaultSELFLogger;
  *&v85 = v17;
  v18 = type metadata accessor for SuggestionDialogCacheProvider();
  v19 = swift_allocObject();
  v67 = sub_1BFAAF0F8();
  v66 = v20;
  v83 = v5;
  v84 = &off_1F3F09410;
  v82[0] = v6;
  v80 = v8;
  v81 = &off_1F3F08AF8;
  v79[0] = v9;
  v78 = &off_1F3F092E8;
  v77 = v18;
  v76[0] = v19;
  v65 = type metadata accessor for FeatureAnnouncementACEViewFactory();
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1Tm(v82, v5);
  OUTLINED_FUNCTION_22();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v69 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = (&v64 - v69);
  v68 = *(v23 + 16);
  v68(&v64 - v69);
  __swift_mutable_project_boxed_opaque_existential_1Tm(v79, v80);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v31 = (v30 - v29);
  (*(v32 + 16))(v30 - v29);
  __swift_mutable_project_boxed_opaque_existential_1Tm(v76, v77);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v36 = (v35 - v34);
  (*(v37 + 16))(v35 - v34);
  v38 = *v27;
  v39 = *v31;
  v40 = *v36;
  v21[10] = v5;
  v21[11] = &off_1F3F09410;
  v21[7] = v38;
  v21[15] = v64;
  v21[16] = &off_1F3F08AF8;
  v21[12] = v39;
  v21[25] = v18;
  v21[26] = &off_1F3F092E8;
  v21[22] = v40;
  sub_1BF9FA474(&v88, (v21 + 2));
  sub_1BF9FA474(&v85, (v21 + 17));
  v41 = v66;
  v21[27] = v67;
  v21[28] = v41;
  __swift_destroy_boxed_opaque_existential_2Tm(v76);
  __swift_destroy_boxed_opaque_existential_2Tm(v79);
  __swift_destroy_boxed_opaque_existential_2Tm(v82);
  v42 = v75;
  *(v75 + 56) = v65;
  *(v42 + 64) = &off_1F3F08B10;
  *(v42 + 32) = v21;
  sub_1BF9F94C4(v73, &v88);
  swift_allocObject();
  v43 = sub_1BF9F8E4C(0xD00000000000001ELL, v72 | 0x8000000000000000);
  v44 = swift_allocObject();
  v44[2] = v71;
  v44[3] = 0;
  v44[4] = v70;
  v44[5] = 0;
  v86 = v16;
  v87 = &protocol witness table for DefaultSELFLogger;
  *&v85 = v44;
  v45 = swift_allocObject();
  v73 = sub_1BFAAF0F8();
  v47 = v46;
  v83 = v5;
  v84 = &off_1F3F09410;
  v81 = &off_1F3F092E8;
  v82[0] = v43;
  v80 = v18;
  v79[0] = v45;
  v48 = type metadata accessor for SiriHintsACEViewFactory();
  v49 = swift_allocObject();
  v50 = __swift_mutable_project_boxed_opaque_existential_1Tm(v82, v5);
  MEMORY[0x1EEE9AC00](v50);
  v51 = (&v64 - v69);
  v68(&v64 - v69);
  __swift_mutable_project_boxed_opaque_existential_1Tm(v79, v80);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v55 = (v54 - v53);
  (*(v56 + 16))(v54 - v53);
  v57 = *v51;
  v58 = *v55;
  *(v49 + 88) = v5;
  *(v49 + 96) = &off_1F3F09410;
  *(v49 + 64) = v57;
  *(v49 + 168) = v18;
  *(v49 + 176) = &off_1F3F092E8;
  *(v49 + 144) = v58;
  sub_1BF9FA474(&v88, v49 + 16);
  *(v49 + 56) = a3;
  sub_1BF9FA474(&v85, v49 + 104);
  *(v49 + 184) = v73;
  *(v49 + 192) = v47;
  __swift_destroy_boxed_opaque_existential_2Tm(v79);
  __swift_destroy_boxed_opaque_existential_2Tm(v82);
  v59 = v75;
  *(v75 + 96) = v48;
  *(v59 + 104) = &off_1F3F09DD8;
  *(v59 + 72) = v49;
  v60 = v59;
  v61 = type metadata accessor for ACEViewFactoryChain();
  result = swift_allocObject();
  *(result + 16) = v60;
  v63 = v74;
  v74[3] = v61;
  v63[4] = &off_1F3F0A6D8;
  *v63 = result;
  return result;
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x1BFB618C0);
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  return v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1Tm(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_1BF9FCF20(void *a1)
{
  v2 = sub_1BFAAF0E8();
  v3 = sub_1BFAAF0D8();
  v20 = v2;
  v21 = MEMORY[0x1E69D3170];
  *&v19 = v3;
  sub_1BF9FC5DC(&v19, v22, 0.12);
  __swift_destroy_boxed_opaque_existential_2Tm(&v19);
  sub_1BF9F94C4(v22, &v19);
  sub_1BF9F94C4(a1, v18);
  v4 = __swift_mutable_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v9 = type metadata accessor for LocalStateStoreClient();
  v17[3] = v9;
  v17[4] = &off_1F3F08940;
  v17[0] = v8;
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1Tm(v17, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[10] = v9;
  v10[11] = &off_1F3F08940;
  v10[7] = v15;
  sub_1BF9FA474(&v19, (v10 + 2));
  __swift_destroy_boxed_opaque_existential_2Tm(v17);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  __swift_destroy_boxed_opaque_existential_2Tm(v22);
  __swift_destroy_boxed_opaque_existential_2Tm(v18);
  return v10;
}

void OUTLINED_FUNCTION_12_10()
{
  v0[17] = 0;
  v0[18] = 0;
  v0[16] = 0;
}

uint64_t SiriSuggestionsAPIClientProvider.requestState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_60_0(v0);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0F0, &unk_1BFAB7008);
  OUTLINED_FUNCTION_60_0(v4);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BFAAE7F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_1BFAAEFD8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  return sub_1BFAAEAB8();
}

void *sub_1BF9FD4D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  OUTLINED_FUNCTION_60_0(v3);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  if (qword_1EDCC6C78)
  {
    v7 = qword_1EDCC6C78;
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v8 = sub_1BFAAF688();
    __swift_project_value_buffer(v8, qword_1EDCC8B70);

    v9 = sub_1BFAAF668();
    v10 = sub_1BFAAFB68();

    if (os_log_type_enabled(v9, v10))
    {
      v22 = v2;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v23[0] = v12;
      *v11 = 136315138;
      sub_1BFA29E68(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, v6, &qword_1EBDFB640, &qword_1BFAB11D0);
      v13 = sub_1BFAAEFD8();
      if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
      {
        sub_1BF9FAB40(v6, &qword_1EBDFB640, &qword_1BFAB11D0);
        v14 = 0xE700000000000000;
        v15 = 0x6E776F6E6B6E75;
      }

      else
      {
        v15 = sub_1BFAAEFC8();
        v14 = v16;
        (*(*(v13 - 8) + 8))(v6, v13);
      }

      v17 = sub_1BF9F88A8(v15, v14, v23);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1BF9F6000, v9, v10, "Constructing siri runtime facade for the first time using %s turn State", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v12);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();

      v2 = v22;
    }

    else
    {
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v18 = OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState;
    sub_1BFAAF0E8();
    v19 = sub_1BFAAF0D8();
    v7 = sub_1BFA940CC(0, v23, v1 + v18, v19, v2);

    sub_1BF9FAB40(v23, &qword_1EBDFB638, &qword_1BFAB6BE0);
    qword_1EDCC6C78 = v7;
  }

  return v7;
}

void OUTLINED_FUNCTION_90_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_90_3()
{
}

void OUTLINED_FUNCTION_175()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1BF9FD8A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalStateStoreClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF9FD8E4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_163();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1BF9F88A8(v16, v17, va);
}

void OUTLINED_FUNCTION_114_1(uint64_t a1, uint64_t a2)
{

  sub_1BFA0143C(a1, a2, v2, v3);
}

uint64_t DispatchSELFLogger.__allocating_init()()
{
  v0 = type metadata accessor for DefaultSELFLogger();
  v1 = swift_allocObject();
  v1[2] = &unk_1BFAB1F30;
  v1[3] = 0;
  v1[4] = sub_1BFA301BC;
  v1[5] = 0;
  v6[3] = v0;
  v6[4] = &protocol witness table for DefaultSELFLogger;
  v6[0] = v1;
  sub_1BF9F94C4(v6, &v5);
  if (qword_1EDCC89D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCCBD98;

  __swift_destroy_boxed_opaque_existential_2Tm(v6);
  OUTLINED_FUNCTION_5_10();
  v3 = swift_allocObject();
  sub_1BF9F97E4();
  *(v3 + 16) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1)
{
  *(v1 + 48) = a1;
  *(v1 + 16) = v2;

  return sub_1BFAAE3E8();
}

void OUTLINED_FUNCTION_23_8(uint64_t a1@<X8>)
{
  v4 = (v1 + 16 * a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_5()
{
}

uint64_t sub_1BF9FDC2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1BF9FDCC8()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_29_5();
  v2(v1);
  sub_1BFAA445C(v0, &qword_1EBDFC118, &qword_1BFAB7550);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BF9FDD5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_79()
{
  v6 = *(v0 + 56) + (__clz(__rbit64(v2)) | (v1 << 6)) * v3;

  return sub_1BFA177A0(v6, v4 - 136);
}

void OUTLINED_FUNCTION_79_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_1BF9FDE28()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

void OUTLINED_FUNCTION_8_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_8_9()
{
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t objectdestroy_101Tm_0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2_3();
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_48_5();
  v3(v2);

  v4 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t SiriSuggestionsBaseAPIClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_113();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_45(v5);
  v6 = OUTLINED_FUNCTION_98();

  return v8(v6);
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

BOOL OUTLINED_FUNCTION_91(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BFAAFCF8();
}

unint64_t OUTLINED_FUNCTION_43_4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1BF9F88A8(a1, a2, va);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1BFAAEB18();
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_2Tm((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_39_5()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 368) + 16), *(*(v0 + 368) + 40));

  return sub_1BFAAE398();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return sub_1BF9F94C4(v0 + 56, v0 + 96);
}

unint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1BF9F88A8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_41_4()
{
}

void *OUTLINED_FUNCTION_35_1()
{

  return sub_1BFA27488(v5, v2, v0, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BFAAFF08();
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

id OUTLINED_FUNCTION_35_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return sub_1BFAAF818();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_allocObject();
}

uint64_t sub_1BF9FE78C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_36();

  return v3();
}

void __swiftcall SuggestionExecutionContextData.init(dialogPhase:hasAdditionalCommands:patternId:)(SiriSuggestionsAPI::SuggestionExecutionContextData *__return_ptr retstr, Swift::String_optional dialogPhase, Swift::Bool hasAdditionalCommands, Swift::String_optional patternId)
{
  retstr->dialogPhase = dialogPhase;
  retstr->hasAdditionalCommands = hasAdditionalCommands;
  retstr->patternId = patternId;
}

uint64_t SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)()
{
  OUTLINED_FUNCTION_40();
  *(v1 + 176) = v22;
  *(v1 + 184) = v0;
  *(v1 + 160) = v19;
  *(v1 + 168) = v21;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 96) = v8;
  *(v1 + 104) = v9;
  v10 = sub_1BFAAE3F8();
  *(v1 + 192) = v10;
  OUTLINED_FUNCTION_15(v10);
  *(v1 + 200) = v11;
  *(v1 + 208) = *(v12 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_100();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v13);
  *(v1 + 224) = OUTLINED_FUNCTION_100();
  *(v1 + 232) = *v20;
  *(v1 + 312) = *(v20 + 16);
  *(v1 + 248) = *(v20 + 24);
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1BFAAF668();
}

uint64_t OUTLINED_FUNCTION_15_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 48) + 24 * a1;
  v5 = *v4;
  *(v2 + 512) = *v4;
  v6 = *(v4 + 8);
  *(v2 + 520) = v6;
  v7 = *(v4 + 16);
  *(v2 + 426) = v7;
  *(v2 + 408) = v5;
  *(v2 + 416) = v6;
  *(v2 + 424) = v7;

  return sub_1BF9FC17C(v5, v6);
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_1BFAAFD38();
}

uint64_t sub_1BF9FEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v11 = sub_1BFAAF688();
  *(v10 + 264) = __swift_project_value_buffer(v11, qword_1EDCC77C8);
  v12 = sub_1BFAAF668();
  sub_1BFAAFB68();
  v13 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_2_9();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_29(v15);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v16, v17, "Running doSiriHints() with SuggestionExecutionContextData");
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v19 = *(v10 + 248);
  v18 = *(v10 + 256);
  v20 = *(v10 + 312);
  v22 = *(v10 + 232);
  v21 = *(v10 + 240);
  v23 = *(v10 + 184);

  __swift_project_boxed_opaque_existential_1((v23 + 144), *(v23 + 168));
  *(v10 + 16) = v22;
  *(v10 + 24) = v21;
  *(v10 + 32) = v20;
  *(v10 + 40) = v19;
  *(v10 + 48) = v18;
  v24 = swift_task_alloc();
  *(v10 + 272) = v24;
  *v24 = v10;
  v24[1] = sub_1BF9FF5E0;
  OUTLINED_FUNCTION_53(*(v10 + 112));
  OUTLINED_FUNCTION_138();

  return sub_1BF9FEFDC(v25, v26, v27, v28);
}

double OUTLINED_FUNCTION_126()
{
  result = 0.0;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1BF9FA474((v2 + 392), a1 + 32);
  return a1 + v1;
}

double OUTLINED_FUNCTION_55_4()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1BFAAF1E8();
}

void OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  sub_1BFA0B100();
}

void OUTLINED_FUNCTION_26_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_6()
{
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void OUTLINED_FUNCTION_11_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t result)
{
  v2[5] = *(v1 + *(result + 44));
  v3 = (v1 + *(result + 48));
  v2[6] = *v3;
  v2[7] = v3[1];
  return result;
}

uint64_t sub_1BF9FEFDC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *a4;
  *(v5 + 136) = *(a4 + 16);
  v7 = *(a4 + 24);
  *(v5 + 48) = v6;
  *(v5 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1BF9FF028, 0, 0);
}

uint64_t sub_1BF9FF028()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v19 = v2;
  if (sub_1BF9FF22C(&v17))
  {
    v3 = *(v0 + 40);
    v4 = v3[5];
    *(v0 + 80) = v4;
    *(v0 + 88) = v3[6];
    *(v0 + 96) = __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
    *(v0 + 104) = sub_1BFAAE398();
    *(v0 + 112) = v5;
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v6 = sub_1BFAAE398();
    v8 = v7;
    *(v0 + 120) = v7;
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_1BFA2BB88;
    v10 = MEMORY[0x1E69E7CD0];

    return sub_1BFA23A80(v6, v8, v10);
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v12 = sub_1BFAAF688();
    __swift_project_value_buffer(v12, qword_1EDCC77C8);
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB78();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BF9F6000, v13, v14, "[SiriHintsViewService] Suggestions are not applicable for current Siri execution. Returning nil", v15, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v16 = *(v0 + 8);

    return v16(0, 0, 0);
  }
}

uint64_t sub_1BF9FF22C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = qword_1EDCC6D50;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!sub_1BF9FF4F4(v2, v1, qword_1EDCC6D58))
  {
LABEL_12:
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v8 = sub_1BFAAF688();
    __swift_project_value_buffer(v8, qword_1EDCC77C8);

    v9 = sub_1BFAAF668();
    v10 = sub_1BFAAFB78();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      if (v1)
      {
        v13 = v2;
      }

      else
      {
        v13 = 7104878;
      }

      if (!v1)
      {
        v1 = 0xE300000000000000;
      }

      v14 = sub_1BF9F88A8(v13, v1, &v16);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_1BF9F6000, v9, v10, "Current Siri dialog phase %s is not a terminal state, so it does not qualify for hints", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v12);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {
    }

    return 0;
  }

  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    sub_1BFAAE758();

    if (sub_1BFAAF4E8())
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v4 = sub_1BFAAF688();
      __swift_project_value_buffer(v4, qword_1EDCC77C8);
      v5 = sub_1BFAAF668();
      v6 = sub_1BFAAFB78();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1BF9F6000, v5, v6, "Current Siri execution is running in ambient mode. Not returning hint view", v7, 2u);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      return 0;
    }
  }

  return 1;
}

BOOL sub_1BF9FF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BFAAFF98();
  sub_1BFAAF908();
  v6 = sub_1BFAAFFE8();
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

    v13 = sub_1BFAAFF08();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1BF9FF5E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  v2[35] = v4;
  v2[36] = v5;
  v2[37] = v6;
  v2[38] = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void OUTLINED_FUNCTION_25_0()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0);

  JUMPOUT(0x1BFB618C0);
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_1BFAAF288();
}

uint64_t sub_1BF9FF7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_214();
  if (*(v20 + 296))
  {
    if (*(v20 + 288))
    {
      v21 = *(v20 + 216);
      v22 = *(v20 + 200);
      v23 = *(v20 + 208);
      v24 = *(v20 + 192);
      a9 = v24;
      a10 = v21;
      a16 = *(v20 + 176);
      a17 = *(v20 + 224);
      a15 = *(v20 + 168);
      a13 = *(v20 + 184);
      a14 = *(v20 + 160);
      v25 = *(v20 + 136);
      a11 = *(v20 + 144);
      a12 = *(v20 + 152);
      v26 = *(v20 + 128);
      v27 = *(v20 + 104);
      sub_1BFAAFA98();
      OUTLINED_FUNCTION_86_2();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      sub_1BFA17B2C(v26, v20 + 56, &qword_1EBDFB558, &qword_1BFAB0980);
      (*(v22 + 16))(v21, v27, v24);
      v32 = (*(v22 + 80) + 80) & ~*(v22 + 80);
      v33 = (v23 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v37 = *(v20 + 72);
      *(v36 + 32) = *(v20 + 56);
      *(v36 + 48) = v37;
      *(v36 + 64) = *(v20 + 88);
      *(v36 + 72) = v25;
      (*(v22 + 32))(v36 + v32, a10, v24);
      *(v36 + v33) = a13;
      v38 = (v36 + v34);
      *v38 = a11;
      v38[1] = a12;
      *(v36 + v35) = a14;
      v39 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v39 = a15;
      v39[1] = a16;

      sub_1BFA0B100();
    }

    __swift_project_boxed_opaque_existential_1((*(v20 + 184) + 104), *(*(v20 + 184) + 128));
    OUTLINED_FUNCTION_120_0();
    v40 = sub_1BFAAF078();
    v41 = *(v20 + 280);
    if (v40)
    {
      v42 = *(v20 + 96);

      *v42 = 0;
      v42[1] = 0;
      v42[2] = 0;
    }

    else
    {
      if (v41)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_163();
        v54 = swift_dynamicCastObjCClass();
        if (v54)
        {
          v55 = v41;
        }
      }

      else
      {
        v54 = 0;
      }

      v56 = *(v20 + 296);
      v57 = *(v20 + 280);
      v58 = *(v20 + 96);
      *v58 = v54;
      v58[1] = v57;
      v58[2] = v56;
    }
  }

  else
  {
    v43 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v44 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_2_9();
      v46 = swift_slowAlloc();
      *v46 = 0;
      OUTLINED_FUNCTION_92_1();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      v51 = OUTLINED_FUNCTION_148();
      sub_1BF9FFC50(v51, v52, 0);
    }

    v53 = *(v20 + 96);

    *v53 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_90();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BF9FFAE8()
{
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v0 + 32));
  }

  v7 = (v4 + 80) & ~v4;

  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((((((((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return swift_task_create();
}

void sub_1BF9FFC50(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1BF9FFC94()
{
  sub_1BFA00130();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_84_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_84_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
}

uint64_t SuggestionsOverXPCLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF9FFD70(uint64_t a1, int a2)
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

uint64_t SiriSuggestionsFacade.__deallocating_deinit()
{
  SiriSuggestionsFacade.deinit();

  return swift_deallocClassInstance();
}

char *SiriSuggestionsFacade.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 23);
  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_siriRequestState;
  sub_1BFAAEAC8();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(&v0[v1]);
  __swift_destroy_boxed_opaque_existential_2Tm(&v0[OBJC_IVAR____TtC18SiriSuggestionsAPI21SiriSuggestionsFacade_suggestionsLogger]);
  return v0;
}

uint64_t InAppSuggestionsDispatcherFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t SiriHintsSuggestionsDispatcherFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DispatchSELFLogger.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 24));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocClassInstance();
}

uint64_t DefaultSELFLogger.__deallocating_deinit()
{
  DefaultSELFLogger.deinit();
  OUTLINED_FUNCTION_58_0();

  return swift_deallocClassInstance();
}

uint64_t DefaultSELFLogger.deinit()
{

  return v0;
}

uint64_t sub_1BF9FFFEC()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA0002C()
{

  return swift_deallocClassInstance();
}

void *sub_1BFA00064()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 22);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BFA000AC()
{
  sub_1BFA00064();

  return swift_deallocClassInstance();
}

uint64_t SiriFeatureSupportPolicyProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1BFA00130()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 18);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BFA00170()
{
  v42 = v0;
  sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3();
  swift_allocObject();
  v0[10] = sub_1BFAAE268();
  sub_1BFAAE248();
  sub_1BFAAEB98();
  sub_1BFA00780(&qword_1EDCC7040, 255, MEMORY[0x1E69D2DE8], MEMORY[0x1E69D2DF0]);
  OUTLINED_FUNCTION_46();
  v1 = sub_1BFAAE258();
  v0[11] = v1;
  v0[12] = v2;
  v3 = v1;
  v4 = v2;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = sub_1BFAAF688();
  __swift_project_value_buffer(v9, qword_1EDCC8B70);
  v40 = *(v7 + 16);
  v40(v5, v8, v6);
  sub_1BFA006A8(v3, v4);
  v10 = sub_1BFAAF668();
  v11 = sub_1BFAAFB78();
  sub_1BF9FDC2C(v3, v4);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v15 = v0[5];
  v14 = v0[6];
  if (v12)
  {
    v39 = v11;
    v16 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v16 = 136315394;
    OUTLINED_FUNCTION_38_6();
    sub_1BFA00780(v17, 255, v18, MEMORY[0x1E69695E0]);
    v19 = sub_1BFAAFEE8();
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_1BF9F88A8(v19, v21, v41);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = sub_1BFAAE318();
    v25 = sub_1BF9F88A8(v23, v24, v41);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1BF9F6000, v10, v39, "Calling Suggestions XPC service on request: %s, with intent value: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v4;
  v27 = v3;
  v29 = v0[7];
  v28 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  v32 = v0[4];
  v40(v28, v0[3], v30);
  v33 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v34 = (v29 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v0[13] = v35;
  *(v35 + 16) = v32;
  (*(v31 + 32))(v35 + v33, v28, v30);
  v36 = (v35 + v34);
  *v36 = v27;
  v36[1] = v26;
  sub_1BFA006A8(v27, v26);

  v37 = swift_task_alloc();
  v0[14] = v37;
  *v37 = v0;
  v37[1] = sub_1BFA9E1B0;

  return (sub_1BFA007C8)();
}

uint64_t sub_1BFA005E4()
{
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = OUTLINED_FUNCTION_48_5();
  v5(v4);
  sub_1BF9FDC2C(*(v0 + v3), *(v0 + v3 + 8));
  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA006A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000012;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return sub_1BF9F94C4(v0 + 16, v0 + 56);
}

uint64_t sub_1BFA00780(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BFA007C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF9FB10C, 0, 0);
}

uint64_t sub_1BFA007F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_54();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BFA0087C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_127();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_9(float a1)
{
  *v1 = a1;
}

void OUTLINED_FUNCTION_18_11()
{

  JUMPOUT(0x1BFB60B80);
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_87_1()
{
}

uint64_t sub_1BFA00B04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF9FE78C;

  return v6(a1);
}

uint64_t sub_1BFA00BFC()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_96_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDF08;
  v6 = OUTLINED_FUNCTION_27_9();

  return sub_1BFA00E7C(v6, v7, v8, v9, v10, v0, v1);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  *(v2 + *(v1 + 28)) = 0xBFF0000000000000;
  v4 = v2 + *(v1 + 32);

  return sub_1BFA1B678(v0, v4);
}

void *OUTLINED_FUNCTION_33_0()
{
  result = *(v0 + 56);
  *result = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BFAAFE78();
}

id OUTLINED_FUNCTION_73_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1BFA00E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v7[11] = swift_task_alloc();
  v10 = sub_1BFAAE3F8();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA010E0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

void OUTLINED_FUNCTION_28_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return MEMORY[0x1EEE3FA58](0);
}

uint64_t OUTLINED_FUNCTION_29_4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  a3 = a1;

  return sub_1BFA1B5D0(&a3);
}

uint64_t OUTLINED_FUNCTION_86_0()
{
}

uint64_t OUTLINED_FUNCTION_86_3(uint64_t a1)
{

  return MEMORY[0x1EEE6A698](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_93_0()
{
}

uint64_t sub_1BFA013C8()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_114_1(v0, v1);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1BFA0143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v5 + 112);
  sub_1BFA01624(sub_1BFA5F83C, v10, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v5 + 112) = v16;
  swift_endAccess();
  if (*(v16 + 16) >= 0xBuLL)
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
    }

    v12 = sub_1BFAAF688();
    __swift_project_value_buffer(v12, qword_1EDCC8B70);

    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(*(v5 + 112) + 16);

      _os_log_impl(&dword_1BF9F6000, v13, v14, "There are %ld unresumed calls to Suggestions service. Suggestions service is likely down.\nKeep waiting for them to be resumed.", v15, 0xCu);
      MEMORY[0x1BFB618C0](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1BFA015EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BFA01624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1BFA01764(a3, a4);
  OUTLINED_FUNCTION_5_1();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB888, &unk_1BFAB1940);
  if (sub_1BFAAFCD8())
  {
    sub_1BFA01764(a3, a4);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  v17 = *v5;
  if (v14)
  {
    v18 = (*(v17 + 56) + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_1BFA01888(v13, a3, a4, a1, a2, v17);
  }
}

unint64_t sub_1BFA01764(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  sub_1BFAAF908();
  v4 = sub_1BFAAFFE8();

  return sub_1BFA017D4(a1, a2, v4);
}

unint64_t sub_1BFA017D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BFAAFF08() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BFA01888(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_36_9(a1, a2, a3, a4, a5, a6);
  v9 = (v8 + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = (*(v7 + 56) + 16 * result);
  *v12 = v13;
  v12[1] = v14;
  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v17;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return sub_1BFAAFA98();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAFF08();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

void sub_1BFA01A2C()
{
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_91_3();
  v5 = *(v1 + 16);
  v6 = (v1 + (v4 & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_1BFA01AC0(v0, v5, v1 + v3, v7, v8);
}

void sub_1BFA01AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v17 = *(a2 + 16);
  sub_1BFAAE398();
  v11 = sub_1BFAAF858();

  v12 = sub_1BFAAE328();
  sub_1BFA01D14(a1, v10, &qword_1EBDFC118, &qword_1BFAB7550);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1BFA01D64(v10, v14 + v13, &qword_1EBDFC118, &qword_1BFAB7550);
  aBlock[4] = sub_1BFAA451C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_91;
  v15 = _Block_copy(aBlock);

  [v17 logEngagementFor:v11 intent:v12 completion:v15];
  _Block_release(v15);
}

id OUTLINED_FUNCTION_92_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_92_2()
{
}

uint64_t sub_1BFA01D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_133(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return v4;
}

uint64_t sub_1BFA01D64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_133(a1, a2, a3, a4);
  OUTLINED_FUNCTION_54();
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return v4;
}

uint64_t sub_1BFA01DB8()
{
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_134();
  (*(v4 + 8))(v0 + ((v5 + 48) & ~v5), v2);

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + v1));

  return MEMORY[0x1EEE6BDD0](v0, v1 + 48, v5 | 7);
}

uint64_t sub_1BFA01EA0()
{
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = (v6 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_134();
  (*(v4 + 8))(v0 + v6, v2);
  sub_1BF9FC184(*(v0 + v8), *(v0 + v8 + 8));

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + v1));

  return MEMORY[0x1EEE6BDD0](v0, v1 + 48, v5 | 7);
}

uint64_t sub_1BFA02030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BFA020EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BFA021D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 4);
  sub_1BF9FC184(v0[9], v0[10]);

  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 14);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1BFA0222C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1BFA02288()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_OWORD *sub_1BFA022C0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1BFA02354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1BFA023E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BFA02478()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BFA024B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BFA02504()
{
  v1 = sub_1BFAAE3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

char *sub_1BFA025E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

uint64_t sub_1BFA02604(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BFAAE3F8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1BFA026DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1BFAAE3F8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BFA027D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BFA02928()
{
  v1 = sub_1BFAAE738();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BFA029E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BFA02B14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BFA4625C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BFA02D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BFA02D88(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_32_3();
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_18();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_84_1(*(v4 + a3[5] + 8));
    }

    type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    OUTLINED_FUNCTION_18();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[6];
    }

    else
    {
      sub_1BFAAEEF8();
      OUTLINED_FUNCTION_18();
      if (*(v15 + 84) == v3)
      {
        v8 = v14;
        v13 = a3[7];
      }

      else
      {
        sub_1BFAAF1E8();
        OUTLINED_FUNCTION_18();
        if (*(v17 + 84) == v3)
        {
          v8 = v16;
          v13 = a3[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
          OUTLINED_FUNCTION_18();
          if (*(v19 + 84) == v3)
          {
            v8 = v18;
            v13 = a3[13];
          }

          else
          {
            sub_1BFAAF318();
            OUTLINED_FUNCTION_18();
            if (*(v21 + 84) == v3)
            {
              v8 = v20;
              v13 = a3[14];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
              OUTLINED_FUNCTION_18();
              if (*(v23 + 84) == v3)
              {
                v8 = v22;
                v13 = a3[15];
              }

              else
              {
                v8 = sub_1BFAAEB28();
                v13 = a3[16];
              }
            }
          }
        }
      }
    }

    v9 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1BFA02FDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_32_3();
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_18();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[5] + 8) = (v4 - 1);
      return;
    }

    type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    OUTLINED_FUNCTION_18();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      sub_1BFAAEEF8();
      OUTLINED_FUNCTION_18();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        sub_1BFAAF1E8();
        OUTLINED_FUNCTION_18();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[12];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
          OUTLINED_FUNCTION_18();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[13];
          }

          else
          {
            sub_1BFAAF318();
            OUTLINED_FUNCTION_18();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[14];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
              OUTLINED_FUNCTION_18();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[15];
              }

              else
              {
                v10 = sub_1BFAAEB28();
                v14 = a4[16];
              }
            }
          }
        }
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1BFA03238()
{
  OUTLINED_FUNCTION_32_3();
  v2 = sub_1BFAAF2E8();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BFA03278()
{
  OUTLINED_FUNCTION_32_3();
  v2 = sub_1BFAAF2E8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1BFA032BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_84_1(*(a1 + 8));
  }

  v7 = sub_1BFAAF218();
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1BFA03338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BFAAF218();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BFA03490()
{
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BFA03558()
{
  OUTLINED_FUNCTION_102();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_10_7();
  type metadata accessor for ContinuationsManager.ManagedContinuation(v3, v4, v1, v2);
  OUTLINED_FUNCTION_27();
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_19_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_7();
  sub_1BFAAFA78();
  OUTLINED_FUNCTION_1();
  (*(v7 + 8))(v0 + v6);

  v8 = OUTLINED_FUNCTION_15_3();
  v9(v8);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BFA036A4()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_26_3();
  type metadata accessor for ContinuationsManager.ManagedContinuation(v1, v2, v3, v4);
  OUTLINED_FUNCTION_27();
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_19_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_26_3();
  sub_1BFAAFA78();
  OUTLINED_FUNCTION_1();
  (*(v7 + 8))(v0 + v6);

  v8 = OUTLINED_FUNCTION_15_3();
  v9(v8);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BFA037E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BFAAFA78();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 44));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BFA03894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BFAAFA78();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BFA03944()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_10_7();
  v1 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1BFA03A54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_10_7();
  sub_1BFAAFA78();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BFA03AF4()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_10_7();
  v1 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  OUTLINED_FUNCTION_22();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  v5 = OUTLINED_FUNCTION_15_3();
  v6(v5);

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t sub_1BFA03C50(uint64_t a1)
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_10_7();
  sub_1BFAAFA78();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v1 + v5);
  (*(v6 + 8))(v1 + v8, v2);

  return MEMORY[0x1EEE6BDD0](v1, v8 + v9, v10 | 7);
}

uint64_t sub_1BFA03DA4()
{
  v1 = sub_1BFAAED58();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v16 + 8, v15 | 7);
}

uint64_t sub_1BFA03F00()
{
  type metadata accessor for InAppSuggestions(0);
  OUTLINED_FUNCTION_27();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v7);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v23 = *(v11 + 64);
  v12 = sub_1BFAAED58();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  v15 = *(v13 + 80);
  v17 = *(v16 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_1();
  (*(v18 + 8))(v0 + v4);
  OUTLINED_FUNCTION_215(*(v1 + 28));

  OUTLINED_FUNCTION_215(*(v1 + 32));

  v19 = sub_1BFAAEEF8();
  if (!__swift_getEnumTagSinglePayload(v0 + v10, 1, v19))
  {
    OUTLINED_FUNCTION_54();
    (*(v20 + 8))(v0 + v10, v19);
  }

  v21 = (v10 + v23 + v15) & ~v15;
  (*(v14 + 8))(v0 + v21, v12);

  return MEMORY[0x1EEE6BDD0](v0, v21 + v17, v3 | v9 | v15 | 7);
}

uint64_t sub_1BFA04124()
{
  v1 = *(type metadata accessor for InAppSuggestions(0) - 8);
  v41 = *(v1 + 80);
  v2 = (v41 + 16) & ~v41;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_61_2();
  v6 = *(v5 + 80);
  v7 = (v2 + v3 + v6) & ~v6;
  v38 = *(v8 + 64);
  v9 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v12 = *(v10 + 80);
  v40 = *(v13 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_1();
  (*(v14 + 8))(v0 + v2);

  v39 = v7;
  v15 = v0 + v7;
  v37 = *(v11 + 8);
  v37(v0 + v7, v9);
  OUTLINED_FUNCTION_215(v4[5]);

  v16 = v0 + v7 + v4[6];

  v17 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  v18 = *(v17 + 28);
  sub_1BFAAF218();
  OUTLINED_FUNCTION_1();
  (*(v19 + 8))(v16 + v18);
  OUTLINED_FUNCTION_237();
  if (*(v16 + *(v17 + 36) + 16))
  {
  }

  v20 = v4[7];
  sub_1BFAAEEF8();
  OUTLINED_FUNCTION_1();
  (*(v21 + 8))(v15 + v20);
  __swift_destroy_boxed_opaque_existential_2Tm((v15 + v4[8]));
  __swift_destroy_boxed_opaque_existential_2Tm((v15 + v4[9]));
  v22 = (v15 + v4[10]);
  if (v22[3])
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v22);
  }

  v23 = v4[12];
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_1();
  (*(v24 + 8))(v15 + v23);
  v25 = v4[13];
  v26 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  if (!__swift_getEnumTagSinglePayload(v15 + v25, 1, v26))
  {
    sub_1BFAAF2E8();
    OUTLINED_FUNCTION_1();
    (*(v27 + 8))(v15 + v25);
  }

  v28 = v4[14];
  sub_1BFAAF318();
  OUTLINED_FUNCTION_1();
  (*(v29 + 8))(v15 + v28);
  v30 = v4[15];
  v31 = sub_1BFAAF758();
  if (!__swift_getEnumTagSinglePayload(v15 + v30, 1, v31))
  {
    OUTLINED_FUNCTION_54();
    (*(v32 + 8))(v15 + v30, v31);
  }

  v33 = (v39 + v38 + v12) & ~v12;
  v34 = v4[16];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_1();
  (*(v35 + 8))(v15 + v34);
  v37(v0 + v33, v9);

  return MEMORY[0x1EEE6BDD0](v0, v33 + v40, v41 | v6 | v12 | 7);
}

uint64_t sub_1BFA04554()
{
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v1 + v0);
  v3 = OUTLINED_FUNCTION_235();
  if (!OUTLINED_FUNCTION_100_0(v3))
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_207();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA0466C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_1BFAAEEF8();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_54();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1BFA047B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_18();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_84_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1BFA04860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_18();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1BFA04970(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_84_1(*(a1 + 8));
  }

  sub_1BFAAF138();
  OUTLINED_FUNCTION_18();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    sub_1BFAAE3F8();
    OUTLINED_FUNCTION_18();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      sub_1BFAAF398();
      OUTLINED_FUNCTION_18();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
        OUTLINED_FUNCTION_18();
        if (*(v16 + 84) == a2)
        {
          v9 = v15;
          v10 = a3[11];
        }

        else
        {
          v9 = sub_1BFAAEB28();
          v10 = a3[13];
        }
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1BFA04AF8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1BFAAF138();
    OUTLINED_FUNCTION_18();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1BFAAE3F8();
      OUTLINED_FUNCTION_18();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        sub_1BFAAF398();
        OUTLINED_FUNCTION_18();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[10];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
          OUTLINED_FUNCTION_18();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[11];
          }

          else
          {
            v10 = sub_1BFAAEB28();
            v11 = a4[13];
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1BFA04C88()
{
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  v5 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1BFA04D58()
{
  v1 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_61_2();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v24 = *(v4 + 64);
  v5 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v8 = *(v6 + 80);
  swift_unknownObjectRelease();

  v25 = v3;
  v9 = v0 + v3;

  v10 = v1[6];
  sub_1BFAAF138();
  OUTLINED_FUNCTION_1();
  (*(v11 + 8))(v9 + v10);
  v12 = *(v7 + 8);
  v12(v9 + v1[7], v5);
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_237();
  v13 = v1[10];
  sub_1BFAAF398();
  OUTLINED_FUNCTION_1();
  (*(v14 + 8))(v9 + v13);
  v15 = v1[11];
  v16 = sub_1BFAAF758();
  if (!__swift_getEnumTagSinglePayload(v9 + v15, 1, v16))
  {
    OUTLINED_FUNCTION_54();
    (*(v17 + 8))(v9 + v15, v16);
  }

  OUTLINED_FUNCTION_237();
  v18 = v1[13];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_1();
  (*(v19 + 8))(v9 + v18);
  v12(v0 + ((v25 + v24 + v8) & ~v8), v5);
  v20 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v20, v21, v22);
}

uint64_t sub_1BFA04FBC()
{
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v1 + v0);
  v3 = OUTLINED_FUNCTION_235();
  if (!OUTLINED_FUNCTION_100_0(v3))
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_207();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA050D8()
{
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_27();
  v41 = *(v2 + 80);
  v3 = (v41 + 40) & ~v41;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_61_2();
  v8 = *(v7 + 80);
  v9 = (v3 + v5 + v8) & ~v8;
  v40 = *(v10 + 64);
  swift_unknownObjectRelease();

  v11 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + v3 + 8));
  v12 = *(v1 + 32);
  v13 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  v15 = *(v14 + 8);
  v15(v11 + v12, v13);
  v16 = *(v1 + 40);
  v17 = sub_1BFAAED08();
  if (!__swift_getEnumTagSinglePayload(v11 + v16, 1, v17))
  {
    OUTLINED_FUNCTION_54();
    (*(v18 + 8))(v11 + v16, v17);
  }

  v19 = v0 + v9;
  v15(v0 + v9, v13);

  v20 = v0 + v9 + v6[6];

  v21 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  v22 = *(v21 + 28);
  sub_1BFAAF218();
  OUTLINED_FUNCTION_1();
  (*(v23 + 8))(v20 + v22);

  if (*(v20 + *(v21 + 36) + 16))
  {
  }

  v24 = v6[7];
  sub_1BFAAEEF8();
  OUTLINED_FUNCTION_1();
  (*(v25 + 8))(v19 + v24);
  __swift_destroy_boxed_opaque_existential_2Tm((v19 + v6[8]));
  __swift_destroy_boxed_opaque_existential_2Tm((v19 + v6[9]));
  v26 = (v19 + v6[10]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v26);
  }

  v27 = v6[12];
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_1();
  (*(v28 + 8))(v19 + v27);
  v29 = v6[13];
  v30 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  if (!__swift_getEnumTagSinglePayload(v19 + v29, 1, v30))
  {
    sub_1BFAAF2E8();
    OUTLINED_FUNCTION_1();
    (*(v31 + 8))(v19 + v29);
  }

  v32 = v6[14];
  sub_1BFAAF318();
  OUTLINED_FUNCTION_1();
  (*(v33 + 8))(v19 + v32);
  v34 = v6[15];
  v35 = sub_1BFAAF758();
  if (!__swift_getEnumTagSinglePayload(v19 + v34, 1, v35))
  {
    OUTLINED_FUNCTION_54();
    (*(v36 + 8))(v19 + v34, v35);
  }

  v37 = v6[16];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_1();
  (*(v38 + 8))(v19 + v37);

  return MEMORY[0x1EEE6BDD0](v0, ((v40 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v41 | v8 | 7);
}

uint64_t sub_1BFA054EC()
{
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v1 + v0);
  v3 = OUTLINED_FUNCTION_235();
  if (!OUTLINED_FUNCTION_100_0(v3))
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_207();
    v5(v4);
  }

  OUTLINED_FUNCTION_167();

  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA05614()
{
  v1 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_61_2();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v40 = *(v4 + 64);
  v43 = sub_1BFAAED58();
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v7 = *(v5 + 80);
  v38 = *(v8 + 64);
  v9 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v12 = *(v10 + 80);
  swift_unknownObjectRelease();

  v41 = v3;
  v13 = v0 + v3;
  v42 = v9;
  v39 = *(v11 + 8);
  v39(v13, v9);

  v14 = v13 + v1[6];

  v15 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  v16 = v15[7];
  sub_1BFAAF218();
  OUTLINED_FUNCTION_1();
  (*(v17 + 8))(v14 + v16);
  OUTLINED_FUNCTION_215(v15[8]);

  if (*(v14 + v15[9] + 16))
  {
  }

  v18 = v1[7];
  sub_1BFAAEEF8();
  OUTLINED_FUNCTION_1();
  (*(v19 + 8))(v13 + v18);
  __swift_destroy_boxed_opaque_existential_2Tm((v13 + v1[8]));
  __swift_destroy_boxed_opaque_existential_2Tm((v13 + v1[9]));
  v20 = (v13 + v1[10]);
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v20);
  }

  v21 = v1[12];
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_1();
  (*(v22 + 8))(v13 + v21);
  v23 = v1[13];
  v24 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  if (!__swift_getEnumTagSinglePayload(v13 + v23, 1, v24))
  {
    sub_1BFAAF2E8();
    OUTLINED_FUNCTION_1();
    (*(v25 + 8))(v13 + v23);
  }

  v26 = v1[14];
  sub_1BFAAF318();
  OUTLINED_FUNCTION_1();
  (*(v27 + 8))(v13 + v26);
  v28 = v1[15];
  v29 = sub_1BFAAF758();
  if (!__swift_getEnumTagSinglePayload(v13 + v28, 1, v29))
  {
    OUTLINED_FUNCTION_54();
    (*(v30 + 8))(v13 + v28, v29);
  }

  v31 = (v41 + v40 + v7) & ~v7;
  v32 = v1[16];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_1();
  (*(v33 + 8))(v13 + v32);
  (*(v6 + 8))(v0 + v31, v43);
  v39(v0 + ((v31 + v38 + v12) & ~v12), v42);
  v34 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v34, v35, v36);
}

uint64_t sub_1BFA05A14()
{
  v24 = sub_1BFAAED58();
  OUTLINED_FUNCTION_2_3();
  v2 = v1;
  v3 = *(v1 + 80);
  v22 = (v3 + 32) & ~v3;
  v5 = (*(v4 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = (v11 + v17 + 40) & ~v17;
  v21 = *(v16 + 64);
  v19 = v3 | v17 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v22, v24);

  (*(v7 + 8))(v0 + v9, v23);
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + v11));
  (*(v14 + 8))(v0 + v18, v12);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v21, v19 | 7);
}

uint64_t sub_1BFA05C34(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_18();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_18();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1BFA05D3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_18();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
    OUTLINED_FUNCTION_18();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7] + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_1BFA05E5C()
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_24_7();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  type metadata accessor for PresentationContext(0);
  OUTLINED_FUNCTION_14_5();
  v10 = *(v9 + 80);
  v11 = (v6 + v8 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v4 + 8))(v1 + v6, v2);
  v14 = *(v0 + 20);
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  (*(v15 + 8))(v1 + v11 + v14);
  v16 = *(v0 + 24);
  v17 = sub_1BFAAE3F8();
  if (!__swift_getEnumTagSinglePayload(v1 + v11 + v16, 1, v17))
  {
    (*(*(v17 - 8) + 8))(v1 + v11 + v16, v17);
  }

  return MEMORY[0x1EEE6BDD0](v1, v11 + v13, v5 | v10 | 7);
}

uint64_t sub_1BFA0602C()
{
  type metadata accessor for PresentationContext(0);
  OUTLINED_FUNCTION_14_5();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 20);
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  (*(v8 + 8))(v1 + v4 + v7);
  v9 = *(v0 + 24);
  v10 = sub_1BFAAE3F8();
  if (!__swift_getEnumTagSinglePayload(v1 + v4 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v1 + v4 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1BFA06408()
{

  OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BFA0644C()
{
  sub_1BFAAEF58();
  OUTLINED_FUNCTION_2_3();

  v0 = OUTLINED_FUNCTION_48_5();
  v1(v0);
  v2 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BFA064F8()
{

  sub_1BF9FC184(v0[3], v0[4]);

  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 8);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1BFA0654C()
{
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();

  sub_1BF9FDC2C(*(v0 + 24), *(v0 + 32));
  sub_1BF9FDC2C(*(v0 + 40), *(v0 + 48));
  v1 = OUTLINED_FUNCTION_48_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BFA06658()
{

  OUTLINED_FUNCTION_89_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BFA0668C()
{
  OUTLINED_FUNCTION_102();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v2);

  __swift_destroy_boxed_opaque_existential_2Tm((v1 + v9 + 8));
  v10 = *(v0 + 32);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_1();
  (*(v11 + 8))(v1 + v9 + v10);
  v12 = *(v0 + 40);
  v13 = sub_1BFAAED08();
  if (!OUTLINED_FUNCTION_110_1(v13))
  {
    OUTLINED_FUNCTION_54();
    (*(v14 + 8))(v1 + v9 + v12, v0);
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BFA06858()
{
  OUTLINED_FUNCTION_102();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_27();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v0 + v5, v2);

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + v9 + 8));
  v10 = *(v1 + 32);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_1();
  (*(v11 + 8))(v0 + v9 + v10);
  v12 = *(v1 + 40);
  v13 = sub_1BFAAED08();
  if (!OUTLINED_FUNCTION_110_1(v13))
  {
    OUTLINED_FUNCTION_54();
    (*(v14 + 8))(v0 + v9 + v12, v10);
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BFA069F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_91_3();
  v2 = v0 + v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v2);

  OUTLINED_FUNCTION_82_2();
  v4 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BFA06AE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_27();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();
  v8 = *(v7 + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v11 = *(v10 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_1();
  (*(v12 + 8))(v1 + v4);

  __swift_destroy_boxed_opaque_existential_2Tm((v1 + v9 + 8));
  v13 = *(v0 + 32);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_1();
  (*(v14 + 8))(v1 + v9 + v13);
  v15 = *(v0 + 40);
  v16 = sub_1BFAAED08();
  if (!__swift_getEnumTagSinglePayload(v1 + v9 + v15, 1, v16))
  {
    OUTLINED_FUNCTION_54();
    (*(v17 + 8))(v1 + v9 + v15, v16);
  }

  return MEMORY[0x1EEE6BDD0](v1, v9 + v11, v3 | v8 | 7);
}

uint64_t sub_1BFA06CD4()
{

  sub_1BF9FDC2C(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_89_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BFA06D38()
{
  sub_1BFAAEF58();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BFA06E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_91_3();
  v2 = v0 + v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v2);

  OUTLINED_FUNCTION_82_2();

  v4 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BFA06F0C()
{
  OUTLINED_FUNCTION_102();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_60();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1BFAAF498();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v8 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  OUTLINED_FUNCTION_1();
  (*(v9 + 8))(v0 + v2);

  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BFA070A0()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_58_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BFA070FC(unint64_t *a1, uint64_t a2, int *a3)
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
    sub_1BFAAE3F8();
    OUTLINED_FUNCTION_18();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[13];
    }

    else
    {
      sub_1BFAAEEA8();
      OUTLINED_FUNCTION_18();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[14];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
        v11 = a3[15];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1BFA07210(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1BFAAE3F8();
    OUTLINED_FUNCTION_18();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[13];
    }

    else
    {
      sub_1BFAAEEA8();
      OUTLINED_FUNCTION_18();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
        v11 = a4[15];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_1BFA074D8()
{
  OUTLINED_FUNCTION_102();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v15);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_107();
  v17 = sub_1BFAAFA98();
  OUTLINED_FUNCTION_110(v1, v18, v19, v17);
  sub_1BFA17890(v6, v21);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v4;
  *(v20 + 40) = v14;
  *(v20 + 48) = v12;
  *(v20 + 56) = v10;
  *(v20 + 64) = v8;
  sub_1BFA022C0(v21, (v20 + 72));

  sub_1BFA0C5AC(0, 0, v1, v3, v20);

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA075EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  sub_1BFA16988(v6, v21);
  sub_1BFA17890(a5, v20);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v21[1];
  *(v16 + 32) = v21[0];
  *(v16 + 48) = v17;
  *(v16 + 64) = v22;
  *(v16 + 72) = a1;
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  *(v16 + 96) = a4;
  sub_1BFA022C0(v20, (v16 + 104));

  sub_1BFA0C5AC(0, 0, v14, &unk_1BFAB0F70, v16);
}

void SiriSuggestionsBaseAPIClient.submit(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v40 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_22();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v18);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = sub_1BFAAFA98();
  OUTLINED_FUNCTION_110(v21, v23, v24, v22);
  (*(v13 + 16))(v17, v1, v5);
  sub_1BFA17890(v7, v41);
  v25 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v37;
  *(v28 + 4) = v5;
  *(v28 + 5) = v29;
  (*(v13 + 32))(&v28[v25], v17, v5);
  v30 = &v28[v26];
  v31 = v39;
  *v30 = v38;
  *(v30 + 1) = v11;
  v32 = &v28[v27];
  v33 = v40;
  *v32 = v31;
  *(v32 + 1) = v33;
  sub_1BFA022C0(v41, &v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8]);

  v34 = OUTLINED_FUNCTION_47();
  sub_1BFA0C5AC(v34, v35, v21, v36, v28);

  OUTLINED_FUNCTION_101();
}

{
  OUTLINED_FUNCTION_102();
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v10 = v9;
  OUTLINED_FUNCTION_22();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v16);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_107();
  v18 = *v10;
  v35 = *(v10 + 8);
  v36 = v18;
  LOBYTE(v10) = *(v10 + 16);
  v19 = sub_1BFAAFA98();
  OUTLINED_FUNCTION_110(v1, v20, v21, v19);
  (*(v12 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v5);
  sub_1BFA17890(v7, v40);
  v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v23 = (v22 + v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v37;
  *(v24 + 4) = v5;
  *(v24 + 5) = v25;
  (*(v12 + 32))(&v24[v22], &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v26 = &v24[(v22 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  v28 = v35;
  v27 = v36;
  *v26 = v36;
  *(v26 + 1) = v28;
  v26[16] = v10;
  v29 = &v24[v23];
  v30 = v39;
  *v29 = v38;
  *(v29 + 1) = v30;
  sub_1BFA022C0(v40, &v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8]);
  sub_1BF9FC17C(v27, v28);

  v31 = OUTLINED_FUNCTION_47();
  sub_1BFA0C5AC(v31, v32, v1, v33, v24);

  OUTLINED_FUNCTION_101();
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

void sub_1BFA07980()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v16);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v20 = sub_1BFAAFA98();
  OUTLINED_FUNCTION_110(v19, v21, v22, v20);
  sub_1BFA17890(v5, v24);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v3;
  *(v23 + 40) = v15;
  *(v23 + 48) = v13;
  *(v23 + 56) = v11 & 1;
  *(v23 + 64) = v9;
  *(v23 + 72) = v7;
  sub_1BFA022C0(v24, (v23 + 80));

  sub_1BF9FC17C(v15, v13);

  sub_1BFA0C5AC(0, 0, v19, v2, v23);

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA07AB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_1BFA16988(v7, v23);
  sub_1BFA17890(a6, v22);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = v23[1];
  *(v18 + 32) = v23[0];
  *(v18 + 48) = v19;
  *(v18 + 64) = v24;
  *(v18 + 72) = a1;
  *(v18 + 80) = a2;
  *(v18 + 88) = a3 & 1;
  *(v18 + 96) = a4;
  *(v18 + 104) = a5;
  sub_1BFA022C0(v22, (v18 + 112));
  sub_1BF9FC17C(a1, a2);

  sub_1BFA0C5AC(0, 0, v16, &unk_1BFAB0F58, v18);
}

uint64_t sub_1BFA07E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsBaseAPIClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFA07EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;

  v6 = swift_task_alloc();
  *(v5 + 40) = v6;
  *v6 = v5;
  v6[1] = sub_1BFA07FC8;

  return sub_1BFA4C15C();
}

uint64_t sub_1BFA07FC8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_119();
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA08104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA50080(a1, a2, 0, a3, a4, a5);
}

uint64_t sub_1BFA081E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;

  v9 = swift_task_alloc();
  *(v5 + 40) = v9;
  *v9 = v5;
  v9[1] = sub_1BFA082BC;

  return SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(v5 + 16, a3, a4, a5);
}

uint64_t sub_1BFA082BC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 48) = v0;

  OUTLINED_FUNCTION_119();
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA083D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA083FC, 0, 0);
}

uint64_t sub_1BFA083FC()
{
  OUTLINED_FUNCTION_95();
  v15 = v1;
  OUTLINED_FUNCTION_58();
  v2 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;
  v7 = *(*(v6 + 16) + 8);
  OUTLINED_FUNCTION_44();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1BFA08548;
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);

  return v14(v0 + 16, v12, v10, v11, v5, v7);
}

uint64_t sub_1BFA08548()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA08684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;

  v6 = swift_task_alloc();
  *(v5 + 40) = v6;
  *v6 = v5;
  v6[1] = sub_1BFA082BC;

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFA0875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;

  v9 = swift_task_alloc();
  *(v5 + 40) = v9;
  *v9 = v5;
  v9[1] = sub_1BFA082BC;

  return sub_1BFA22AF0(v5 + 16, a3, a4, a5);
}

uint64_t sub_1BFA08830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsBaseAPIClient.submitAsync(for:properties:)();
}

uint64_t sub_1BFA088D8()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC8B70);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB88();
  if (OUTLINED_FUNCTION_91(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v8();
}

uint64_t sub_1BFA089C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsBaseAPIClient.flush(for:)();
}

uint64_t sub_1BFA08A6C()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC8B70);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB88();
  if (OUTLINED_FUNCTION_91(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v8();
}

uint64_t sub_1BFA08B74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsBaseAPIClient.logShown(for:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFA08C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BF9FDF08;

  return SiriSuggestionsEngagementAPIClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA08CC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA08D84, 0, 0);
}

uint64_t sub_1BFA08D84()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_56_0();
  v3(v2);
  OUTLINED_FUNCTION_12_2(&dword_1BFAB3C78);
  v10 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_6_1(v6);

  return v10(v8);
}

uint64_t sub_1BFA08E60()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1BFA08FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA09098, 0, 0);
}

uint64_t sub_1BFA09098()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_56_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(v7, v8);
}

uint64_t sub_1BFA09168()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1BFA092DC()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_80_0();

  return v0();
}

uint64_t sub_1BFA09334(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA093F8, 0, 0);
}

uint64_t sub_1BFA093F8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_56_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v7, v8);
}

uint64_t sub_1BFA094C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0958C, 0, 0);
}

void sub_1BFA0958C()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_14();
  (*(v4 + 16))(v1, v3);
  v5 = OUTLINED_FUNCTION_57();
  v6(v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_30();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_64(v7);
  *v8 = v9;
  v8[1] = sub_1BFA096F8;
  OUTLINED_FUNCTION_28_1(v0[7]);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1BFA096F8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA097F4()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_50();
  v1(v0);

  OUTLINED_FUNCTION_36();

  return v2();
}

uint64_t sub_1BFA0985C()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_50();
  v1(v0);

  OUTLINED_FUNCTION_80_0();

  return v2();
}

uint64_t sub_1BFA098C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA09988, 0, 0);
}

uint64_t sub_1BFA09988()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_56_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)();
}

uint64_t SiriSuggestionsEngagementAPIClient.submitEngagement(for:with:)()
{
  OUTLINED_FUNCTION_40();
  v5 = OUTLINED_FUNCTION_131(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_15(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_40();
  v5 = OUTLINED_FUNCTION_131(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_15(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_40();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = sub_1BFAAE3F8();
  v1[19] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[20] = v7;
  v1[21] = *(v8 + 64);
  v1[22] = OUTLINED_FUNCTION_100();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v9);
  v1[23] = OUTLINED_FUNCTION_100();
  v10 = sub_1BFAAEB98();
  v1[24] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[25] = v11;
  v1[26] = *(v12 + 64);
  v1[27] = OUTLINED_FUNCTION_109();
  v1[28] = swift_task_alloc();
  v13 = sub_1BFAAF1E8();
  v1[29] = v13;
  OUTLINED_FUNCTION_15(v13);
  v1[30] = v14;
  v1[31] = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BFA09AF8()
{
  OUTLINED_FUNCTION_51();
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_92();
  v2(v1);
  v3 = OUTLINED_FUNCTION_56_0();
  v4(v3);
  OUTLINED_FUNCTION_30();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1BFA09C64;
  v7 = OUTLINED_FUNCTION_53(*(v0 + 72));

  return v9(v7);
}

uint64_t sub_1BFA09C64()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1BFA09DD8()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA09E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BF9FDF08;

  return SiriSuggestionsEngagementAPIClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA09EF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA09FB4, 0, 0);
}

uint64_t sub_1BFA09FB4()
{
  OUTLINED_FUNCTION_40();
  v1 = OUTLINED_FUNCTION_33_0();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD0]);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_1(v5);

  return sub_1BFA4C740();
}

uint64_t sub_1BFA0A05C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0A120, 0, 0);
}

uint64_t sub_1BFA0A120()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_33_0();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD0]);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return (sub_1BFA4DBF8)(v7);
}

uint64_t sub_1BFA0A1E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0A2A4, 0, 0);
}

uint64_t sub_1BFA0A2A4()
{
  OUTLINED_FUNCTION_40();
  v1 = OUTLINED_FUNCTION_33_0();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD0]);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v7, v8);
}

uint64_t sub_1BFA0A350(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0A414, 0, 0);
}

uint64_t sub_1BFA0A414()
{
  OUTLINED_FUNCTION_40();
  v1 = OUTLINED_FUNCTION_33_0();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD0]);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(v7, v8);
}

uint64_t sub_1BFA0A4C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0A584, 0, 0);
}

uint64_t sub_1BFA0A584()
{
  OUTLINED_FUNCTION_40();
  v1 = OUTLINED_FUNCTION_33_0();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD0]);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_1(v5);

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA0A630(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BFAAEB98();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA0A6F4, 0, 0);
}

uint64_t sub_1BFA0A6F4()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[6];
  v2 = v0[2];
  *v0[7] = v2;
  (*(v1 + 104))();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_44();
  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_64(v7);
  *v8 = v9;
  v8[1] = sub_1BFA096F8;
  v10 = OUTLINED_FUNCTION_28_1(v0[7]);

  return v12(v10);
}

uint64_t sub_1BFA0A8D8()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[8];
  v9 = v0[5];
  v2 = v0[2];
  *v0[9] = v2;
  (*(v1 + 104))();
  v3 = *(v9 + 24);
  v4 = v2;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1BFA09C64;
  v6 = OUTLINED_FUNCTION_53(v0[9]);

  return v8(v6);
}

uint64_t sub_1BFA0AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BF9FDF08;

  return SiriSuggestionsEngagementAPIClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA0AC70()
{
  v1 = *(*(v0 + 200) + 16);
  v2 = OUTLINED_FUNCTION_57();
  v1(v2);
  v3 = OUTLINED_FUNCTION_93();
  if (v4(v3) == *MEMORY[0x1E69D2DE0])
  {
    (*(*(v0 + 200) + 96))(*(v0 + 224), *(v0 + 192));
    v5 = OUTLINED_FUNCTION_92();
    v6(v5);
    *(v0 + 96) = sub_1BFAAF1C8();
    *(v0 + 104) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 96;
    v9 = sub_1BFA14164(sub_1BFA14E70, v8, &unk_1F3F07880);

    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 232);
    if (v9)
    {
      v14 = *(v0 + 192);
      v13 = *(v0 + 200);
      v15 = *(v0 + 184);
      v30 = *(v0 + 176);
      v31 = *(v0 + 208);
      v16 = *(v0 + 160);
      v28 = *(v0 + 216);
      v29 = *(v0 + 152);
      v17 = *(v0 + 112);
      v27 = *(v0 + 120);
      *(v0 + 40) = *(v0 + 128);
      v32 = v12;
      v33 = v10;
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
      OUTLINED_FUNCTION_54();
      (*(v18 + 16))();
      v19 = sub_1BFAAFA98();
      OUTLINED_FUNCTION_110(v15, v20, v21, v19);
      sub_1BFA177A0(v0 + 16, v0 + 56);
      (v1)(v28, v17, v14);
      (*(v16 + 16))(v30, v27, v29);
      v22 = (*(v13 + 80) + 72) & ~*(v13 + 80);
      v23 = (v31 + *(v16 + 80) + v22) & ~*(v16 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      sub_1BF9FA474((v0 + 56), v24 + 32);
      (*(v13 + 32))(v24 + v22, v28, v14);
      (*(v16 + 32))(v24 + v23, v30, v29);
      OUTLINED_FUNCTION_47();
      sub_1BFA0B100();

      (*(v11 + 8))(v33, v32);
      __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
    }

    else
    {
      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192));
  }

  OUTLINED_FUNCTION_36();

  return v25();
}

uint64_t sub_1BFA0AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BFA0AFEC, 0, 0);
}

uint64_t sub_1BFA0AFEC()
{
  OUTLINED_FUNCTION_51();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_30();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA17D0C;
  v3 = OUTLINED_FUNCTION_28_1(*(v0 + 24));

  return v5(v3);
}

void sub_1BFA0B100()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_71();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_60_0(v8);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  sub_1BFA17B2C(v3, v21 - v10, &qword_1EBDFB548, &qword_1BFAB08F0);
  v12 = sub_1BFAAFA98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BFA007F8(v11, &qword_1EBDFB548, &qword_1BFAB08F0);
  }

  else
  {
    sub_1BFAAFA88();
    OUTLINED_FUNCTION_54();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BFAAFA48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v19 = sub_1BFAAF8E8() + 32;

      if (v18 | v16)
      {
        v22[0] = 0;
        v22[1] = 0;
        v20 = v22;
        v22[2] = v16;
        v22[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v21[1] = 7;
      v21[2] = v20;
      v21[3] = v19;
      OUTLINED_FUNCTION_132();

      sub_1BFA007F8(v3, &qword_1EBDFB548, &qword_1BFAB08F0);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_1BFA007F8(v3, &qword_1EBDFB548, &qword_1BFAB08F0);
  if (v18 | v16)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v16;
    v22[7] = v18;
  }

  OUTLINED_FUNCTION_132();
LABEL_14:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA0B350@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  if (static SiriSuggestions.Constants.isSiriRuntimeEnabled()())
  {
    if (qword_1EDCC77C0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BFAAF688();
    __swift_project_value_buffer(v5, qword_1EDCC77C8);
    v6 = sub_1BFAAF668();
    v7 = sub_1BFAAFB78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BF9F6000, v6, v7, "Detected SiriRuntime. Using runtime provider", v8, 2u);
      MEMORY[0x1BFB618C0](v8, -1, -1);
    }

    v9 = *MEMORY[0x1E69D3148];
    v10 = sub_1BFAAF008();
    (*(*(v10 - 8) + 104))(v4, v9, v10);
    v11 = *MEMORY[0x1E69D3118];
    v12 = sub_1BFAAEFD8();
    (*(*(v12 - 8) + 104))(v4, v11, v12);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
    type metadata accessor for SiriRuntimeSuggestionsAPIClientProvider(0);
    v13 = swift_allocObject();
    sub_1BFA17BBC(v4, v13 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, &qword_1EBDFB640, &qword_1BFAB11D0);
    v14 = sub_1BF9FD4D0();
    swift_setDeallocating();
    sub_1BFA007F8(v13 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, &qword_1EBDFB640, &qword_1BFAB11D0);
    swift_deallocClassInstance();
    result = type metadata accessor for LocalStateStoreClient();
    a1[3] = result;
    a1[4] = &protocol witness table for LocalStateStoreClient;
    *a1 = v14;
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1BFAAF688();
    __swift_project_value_buffer(v16, qword_1EDCC77C8);
    v17 = sub_1BFAAF668();
    v18 = sub_1BFAAFB68();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF9F6000, v17, v18, "Fallback to XPC only client, this doesn't assume SiriEnvironment to be set like the runtime client", v19, 2u);
      MEMORY[0x1BFB618C0](v19, -1, -1);
    }

    if (qword_1EDCC7788 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDCC7790;
    a1[3] = type metadata accessor for LocalStateStoreClient();
    a1[4] = &protocol witness table for LocalStateStoreClient;
    *a1 = v20;
  }

  return result;
}

void *static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_1BFA0B844(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  v8 = type metadata accessor for LocalStateStoreClient();
  sub_1BFA177A0(v20, v17);
  v9 = v18;
  v10 = v19;
  __swift_mutable_project_boxed_opaque_existential_1Tm(v17, v18);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1BFA27330(v13, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_2Tm(v17);
  __swift_destroy_boxed_opaque_existential_2Tm(v20);
  return v15;
}

uint64_t sub_1BFA0B844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v17 = a8;
  if (a8 || (type metadata accessor for SiriSuggestionsXPCClient(), (v17 = SiriSuggestionsXPCClient.__allocating_init()()) != 0))
  {
    sub_1BFA0BA34(v17, a1, a2, a3, a4, a5, a6, a7, a9);
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BFAAF688();
    __swift_project_value_buffer(v19, qword_1EDCC8B70);
    v20 = sub_1BFAAF668();
    v21 = sub_1BFAAFB88();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BF9F6000, v20, v21, "Unable to create XPC connection", v22, 2u);
      MEMORY[0x1BFB618C0](v22, -1, -1);
    }

    v23 = type metadata accessor for NoOpSiriSuggestionsClient();
    inited = swift_initStaticObject();
    a9[3] = v23;
    result = sub_1BFA17B74(&qword_1EBDFB630, type metadata accessor for NoOpSiriSuggestionsClient, &unk_1BFAB3A18);
    a9[4] = result;
    *a9 = inited;
  }

  return result;
}

uint64_t sub_1BFA0BA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  sub_1BFA17B2C(a2, v22, &qword_1EBDFB638, &qword_1BFAB6BE0);
  v17 = type metadata accessor for SiriSuggestionsSupportingDataClient();
  v18 = swift_allocObject();
  *(v18 + 40) = type metadata accessor for SiriSuggestionsXPCClient();
  v19 = sub_1BFA17B74(&qword_1EDCC7E28, type metadata accessor for SiriSuggestionsXPCClient, &protocol conformance descriptor for SiriSuggestionsXPCClient);
  v20 = v22[1];
  *(v18 + 88) = v22[0];
  *(v18 + 16) = a1;
  *(v18 + 48) = v19;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  *(v18 + 80) = a6;
  *(v18 + 104) = v20;
  *(v18 + 120) = v23;
  *(v18 + 128) = a7;
  *(v18 + 136) = a8;
  a9[3] = v17;
  a9[4] = sub_1BFA17B74(&qword_1EDCC7F40, type metadata accessor for SiriSuggestionsSupportingDataClient, &protocol conformance descriptor for SiriSuggestionsSupportingDataClient);
  *a9 = v18;
}

uint64_t DonationPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA0BC50(uint64_t a1)
{
  v2 = *v1;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v2);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA0BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA07EF4(a4, a5, a6, a7, a8);
}

uint64_t sub_1BFA0BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA0875C(a4, a5, a6, a7, a8);
}

uint64_t sub_1BFA0BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA081E4(a4, a5, a6, a7, a8);
}

uint64_t sub_1BFA0BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA50080(a4, a5, 0, a6, a7, a8);
}

uint64_t sub_1BFA0C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA08684(a4, a5, a6, a7, a8);
}

uint64_t sub_1BFA0C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA083D4(a4, a5, a6, a7, a8);
}

uint64_t sub_1BFA0C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = (*(v17 + 24) + **(v17 + 24));
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1BFA0C354;

  return v15(a5, a6, a7, a8);
}

uint64_t sub_1BFA0C354()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA0C464()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_125();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_77(v0);
  *v1 = v2;
  v1[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_61();

  return sub_1BFA0C1F0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA0C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1BFA17B2C(a3, v24 - v10, &qword_1EBDFB548, &qword_1BFAB08F0);
  v12 = sub_1BFAAFA98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BFA007F8(v11, &qword_1EBDFB548, &qword_1BFAB08F0);
  }

  else
  {
    sub_1BFAAFA88();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BFAAFA48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BFAAF8E8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB648, &qword_1BFAB11E8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1BFA007F8(a3, &qword_1EBDFB548, &qword_1BFAB08F0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BFA007F8(a3, &qword_1EBDFB548, &qword_1BFAB08F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB648, &qword_1BFAB11E8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1BFA0C8A4()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v8);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1BFA17B2C(v5, v23 - v10, &qword_1EBDFB548, &qword_1BFAB08F0);
  v12 = sub_1BFAAFA98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BFA007F8(v11, &qword_1EBDFB548, &qword_1BFAB08F0);
  }

  else
  {
    sub_1BFAAFA88();
    OUTLINED_FUNCTION_54();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BFAAFA48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_1BFAAF8E8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_1BFA007F8(v5, &qword_1EBDFB548, &qword_1BFAB08F0);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1BFA007F8(v5, &qword_1EBDFB548, &qword_1BFAB08F0);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA0CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6 & 1;
  v9 = swift_task_alloc();
  *(v8 + 40) = v9;
  *v9 = v8;
  v9[1] = sub_1BFA0CC44;

  return sub_1BFA4C15C();
}

uint64_t sub_1BFA0CC44()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_49();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_27_1();

    return v11(v10);
  }
}

uint64_t sub_1BFA0CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6 & 1;
  v11 = swift_task_alloc();
  *(v8 + 40) = v11;
  *v11 = v8;
  v11[1] = sub_1BFA0CE64;

  return sub_1BFA22AF0(v8 + 16, a7, a8, v14);
}

uint64_t sub_1BFA0CE64()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_49();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_27_1();

    return v11(v10);
  }
}

uint64_t sub_1BFA0CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6 & 1;
  v11 = swift_task_alloc();
  *(v8 + 40) = v11;
  *v11 = v8;
  v11[1] = sub_1BFA0CE64;

  return SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(v8 + 16, a7, a8, v14);
}

uint64_t sub_1BFA0D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA0D15C;

  return sub_1BFA50080(a4, a5, a6 & 1, a7, a8, v17);
}

uint64_t sub_1BFA0D15C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = *(v2 + 8);

  return v4(v0 != 0);
}

uint64_t sub_1BFA0D254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6 & 1;
  v9 = swift_task_alloc();
  *(v8 + 40) = v9;
  *v9 = v8;
  v9[1] = sub_1BFA0CE64;

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFA0D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BFA17D2C;

  return sub_1BFA4FE04(a4, a5, a6 & 1, a7, a8, v17);
}

uint64_t sub_1BFA0D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a1;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7 & 1;
  v12 = (*(v14 + 32) + **(v14 + 32));
  v10 = swift_task_alloc();
  *(v8 + 48) = v10;
  *v10 = v8;
  v10[1] = sub_1BFA0D584;

  return v12(v8 + 16, a8);
}

uint64_t sub_1BFA0D584()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA0D694(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_125();
  v4 = v2 + *(v3 + 64);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v5 = v1 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v1 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_77(v10);
  *v11 = v12;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA0D424(a1, v15, v14, v1 + v2, v6, v7, v8, v9);
}

uint64_t SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[11] = *(v4 - 8);
  v1[12] = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA0D8B8()
{
  v32 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);

  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB78();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = v0[5];
    v29 = v0[6];
    v25 = v0[3];
    v26 = v0[4];
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136315650;
    OUTLINED_FUNCTION_121();
    v0[2] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    sub_1BFAAF8B8();
    v7 = OUTLINED_FUNCTION_121();
    v8(v7);
    v9 = OUTLINED_FUNCTION_71();
    v12 = sub_1BF9F88A8(v9, v10, v11);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1BF9F88A8(v25, v26, &v30);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_1BF9F88A8(v27, v29, &v30);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  else
  {

    v18 = OUTLINED_FUNCTION_121();
    v19(v18);
  }

  v20 = v0[5];
  v21 = v0[6];
  v30 = 0x5F5F636578655F5FLL;
  v31 = 0xE800000000000000;
  MEMORY[0x1BFB60B80](v20, v21);
  v0[13] = v31;
  OUTLINED_FUNCTION_44();
  v28 = (v22 + *v22);
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_1BFA0DBF0;
  OUTLINED_FUNCTION_53(v0[3]);
  OUTLINED_FUNCTION_86();

  return v28();
}

uint64_t sub_1BFA0DBF0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_36();

    return v10();
  }
}

uint64_t sub_1BFA0DD14()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 120) = a3;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA0DD98()
{
  OUTLINED_FUNCTION_43();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  *(v0 + 96) = sub_1BFAAF7D8();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA0DE8C;
  OUTLINED_FUNCTION_53(*(v0 + 56));
  OUTLINED_FUNCTION_86();

  return sub_1BFA0E004();
}

uint64_t sub_1BFA0DE8C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 112) = v0;

  sub_1BFA007F8(v3 + 16, &qword_1EBDFB558, &qword_1BFAB0980);

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA0E004()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 600) = v0;
  *(v1 + 592) = v4;
  *(v1 + 584) = v2;
  *(v1 + 489) = v5;
  *(v1 + 576) = v6;
  *(v1 + 568) = v7;
  *(v1 + 560) = v8;
  *(v1 + 552) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v10);
  *(v1 + 608) = OUTLINED_FUNCTION_100();
  *(v1 + 616) = *(v3 - 8);
  *(v1 + 624) = OUTLINED_FUNCTION_109();
  *(v1 + 632) = swift_task_alloc();
  v11 = sub_1BFAAF1E8();
  *(v1 + 640) = v11;
  OUTLINED_FUNCTION_15(v11);
  *(v1 + 648) = v12;
  *(v1 + 656) = OUTLINED_FUNCTION_109();
  *(v1 + 664) = swift_task_alloc();
  v13 = sub_1BFAAEB98();
  *(v1 + 672) = v13;
  OUTLINED_FUNCTION_15(v13);
  *(v1 + 680) = v14;
  *(v1 + 688) = *(v15 + 64);
  *(v1 + 696) = OUTLINED_FUNCTION_109();
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 712) = swift_task_alloc();
  *(v1 + 720) = swift_task_alloc();
  *(v1 + 728) = swift_task_alloc();
  v16 = sub_1BFAAE3F8();
  *(v1 + 736) = v16;
  OUTLINED_FUNCTION_15(v16);
  *(v1 + 744) = v17;
  *(v1 + 752) = *(v18 + 64);
  *(v1 + 760) = OUTLINED_FUNCTION_109();
  *(v1 + 768) = swift_task_alloc();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1BFA0E23C()
{
  v54 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = *(v0 + 768);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v51 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = sub_1BFAAF688();
  *(v0 + 776) = __swift_project_value_buffer(v9, qword_1EDCC8B70);
  v10 = *(v2 + 16);
  *(v0 + 784) = v10;
  *(v0 + 792) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v3);
  v11 = *(v5 + 16);
  *(v0 + 800) = v11;
  *(v0 + 808) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49 = v11;
  v11(v4, v7, v6);
  sub_1BFA17B2C(v51, v0 + 112, &qword_1EBDFB558, &qword_1BFAB0980);
  v12 = sub_1BFAAF668();
  v13 = sub_1BFAAFB78();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 768);
  v16 = *(v0 + 744);
  v17 = *(v0 + 736);
  v18 = *(v0 + 680);
  if (v14)
  {
    log = v12;
    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v19 = 136315650;
    OUTLINED_FUNCTION_65();
    sub_1BFA17B74(v20, v21, MEMORY[0x1E69695E0]);
    sub_1BFAAFEE8();
    v47 = v13;
    (*(v16 + 8))(v15, v17);
    v22 = OUTLINED_FUNCTION_121();
    v25 = sub_1BF9F88A8(v22, v23, v24);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = sub_1BFAAEB88();
    v28 = v27;
    v29 = *(v18 + 8);
    v30 = OUTLINED_FUNCTION_71();
    v29(v30);
    v31 = sub_1BF9F88A8(v26, v28, &v53);

    *(v19 + 14) = v31;
    *(v19 + 22) = 2080;
    sub_1BFA17B2C(v0 + 112, v0 + 432, &qword_1EBDFB558, &qword_1BFAB0980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB558, &qword_1BFAB0980);
    sub_1BFAAF8B8();
    sub_1BFA007F8(v0 + 112, &qword_1EBDFB558, &qword_1BFAB0980);
    v32 = OUTLINED_FUNCTION_71();
    v35 = sub_1BF9F88A8(v32, v33, v34);

    *(v19 + 24) = v35;
    _os_log_impl(&dword_1BF9F6000, log, v47, "Submitting intent properties for %s intent: %s owner: %s", v19, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BFA007F8(v0 + 112, &qword_1EBDFB558, &qword_1BFAB0980);
    v29 = *(v18 + 8);
    v36 = OUTLINED_FUNCTION_71();
    v29(v36);
    (*(v16 + 8))(v15, v17);
  }

  *(v0 + 816) = v29;
  v37 = *(v0 + 672);
  v52 = *(v0 + 592);
  v38 = *(v0 + 560);
  *(v0 + 472) = sub_1BFAAE398();
  *(v0 + 480) = v39;
  *(v0 + 488) = 0;
  *(v0 + 40) = v37;
  v40 = MEMORY[0x1E69D2DE8];
  *(v0 + 48) = sub_1BFA17B74(&qword_1EDCC6508, MEMORY[0x1E69D2DE8], MEMORY[0x1E69D2DF8]);
  *(v0 + 56) = sub_1BFA17B74(&qword_1EDCC7040, v40, MEMORY[0x1E69D2DF0]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
  v49(boxed_opaque_existential_1Tm, v38, v37);
  v42 = *(v52 + 32);
  *(v0 + 824) = v42;
  *(v0 + 832) = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x2C9A000000000000;
  v50 = (v42 + *v42);
  v43 = swift_task_alloc();
  *(v0 + 840) = v43;
  *v43 = v0;
  v43[1] = sub_1BFA0E768;
  v44 = *(v0 + 592);
  v45 = *(v0 + 584);

  return v50(v0 + 472, 0xD000000000000010, 0x80000001BFAB83E0, v0 + 16, v45, v44);
}

uint64_t sub_1BFA0E768()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  v3[106] = v0;

  sub_1BF9FC184(v3[59], v2[60]);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA0F250()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  v3[108] = v0;

  sub_1BF9FC184(v3[62], v2[63]);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v3 + 8);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA0F690()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 888) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA0FA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_2Tm((v14 + 16));
  OUTLINED_FUNCTION_29_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA0FAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  sub_1BFA007F8(v14 + 152, &qword_1EBDFB558, &qword_1BFAB0980);
  __swift_destroy_boxed_opaque_existential_2Tm((v14 + 64));
  __swift_destroy_boxed_opaque_existential_2Tm((v14 + 232));
  OUTLINED_FUNCTION_29_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA0FBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  sub_1BFA007F8(v14 + 152, &qword_1EBDFB558, &qword_1BFAB0980);
  OUTLINED_FUNCTION_29_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 120) = a4;
  *(v7 + 72) = a3;
  *(v7 + 80) = a5;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA0FCB0()
{
  OUTLINED_FUNCTION_40();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA0FD60;
  OUTLINED_FUNCTION_53(*(v0 + 56));

  return sub_1BFA0E004();
}

uint64_t sub_1BFA0FD60()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 112) = v0;

  sub_1BFA007F8(v3 + 16, &qword_1EBDFB558, &qword_1BFAB0980);
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:owner:executedParameters:submitEngagement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 96) = a7;
  *(v8 + 104) = v7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a6;
  *(v8 + 128) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA0FEB0()
{
  OUTLINED_FUNCTION_40();
  sub_1BFA177A0(v0[9], (v0 + 2));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1BFA0FF58;
  OUTLINED_FUNCTION_53(v0[7]);

  return sub_1BFA0E004();
}

uint64_t sub_1BFA0FF58()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 120) = v0;

  sub_1BFA007F8(v3 + 16, &qword_1EBDFB558, &qword_1BFAB0980);
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA100C4()
{
  OUTLINED_FUNCTION_43();
  v2 = *(v1 + 256);
  v3 = *(v2 + 32);
  *(v1 + 328) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    v0 = (v6 - 1) & v6;
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(v7 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1BFA17890(*(v7 + 56) + 48 * v11, v1 + 144);
    *(v1 + 80) = v14;
    *(v1 + 88) = v13;
    sub_1BFA022C0((v1 + 144), (v1 + 96));

    v15 = v8;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 72 + 8 * v9++);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_126();
  }

  *(v1 + 288) = v0;
  *(v1 + 296) = v15;
  OUTLINED_FUNCTION_99();
  if (v0)
  {
    sub_1BFA022C0((v1 + 32), (v1 + 192));
    v16 = swift_task_alloc();
    *(v1 + 312) = v16;
    *v16 = v1;
    v16[1] = sub_1BFA10278;
    OUTLINED_FUNCTION_28_1(*(v1 + 240));

    return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
  }

  else
  {

    OUTLINED_FUNCTION_36();

    return v18();
  }
}

uint64_t sub_1BFA10278()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA10398()
{
  OUTLINED_FUNCTION_43();
  result = __swift_destroy_boxed_opaque_existential_2Tm((v1 + 192));
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  if (v3)
  {
    v5 = *(v1 + 256);
LABEL_7:
    v0 = (v3 - 1) & v3;
    v7 = __clz(__rbit64(v3)) | (v4 << 6);
    v8 = (*(v5 + 48) + 16 * v7);
    v10 = *v8;
    v9 = v8[1];
    sub_1BFA17890(*(v5 + 56) + 48 * v7, v1 + 144);
    *(v1 + 80) = v10;
    *(v1 + 88) = v9;
    sub_1BFA022C0((v1 + 144), (v1 + 96));

LABEL_8:
    *(v1 + 288) = v0;
    *(v1 + 296) = v4;
    OUTLINED_FUNCTION_99();
    if (v0)
    {
      sub_1BFA022C0((v1 + 32), (v1 + 192));
      v11 = swift_task_alloc();
      *(v1 + 312) = v11;
      *v11 = v1;
      v11[1] = sub_1BFA10278;
      OUTLINED_FUNCTION_28_1(*(v1 + 240));

      return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
    }

    else
    {

      OUTLINED_FUNCTION_36();

      return v12();
    }
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= (((1 << *(v1 + 328)) + 63) >> 6))
      {
        OUTLINED_FUNCTION_126();
        goto LABEL_8;
      }

      v5 = *(v1 + 256);
      v3 = *(v5 + 8 * v6 + 64);
      ++v4;
      if (v3)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFA10530()
{
  OUTLINED_FUNCTION_40();

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 192));
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t SiriSuggestionsBaseAPIClient.submit(for:dialogID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA105B0()
{
  OUTLINED_FUNCTION_66();
  v24 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);

  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = MEMORY[0x1BFB60C30](v4, MEMORY[0x1E69E6158]);
    v10 = sub_1BF9F88A8(v8, v9, &v23);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1BF9F88A8(v6, v5, &v23);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  v22 = v0[12];
  v16 = v0[10];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
  v0[6] = sub_1BFA154CC(&qword_1EDCC77A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v0[7] = sub_1BFA154CC(&qword_1EBDFB568, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v0[2] = v16;
  v17 = *(v22 + 24);

  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1BFA108C4;
  v19 = OUTLINED_FUNCTION_53(v0[8]);

  return v21(v19);
}

uint64_t sub_1BFA108C4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA109E0()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_85();

  return v1();
}

unint64_t SiriSuggestionsClientPredefinedTypes.rawValue.getter()
{
  result = 0x72656E776FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0x4974694B69726973;
      break;
    case 5:
      result = 0x746E65746E496B73;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:owner:intentProps:verb:executionParams:)()
{
  OUTLINED_FUNCTION_40();
  v1[17] = v19;
  v1[18] = v0;
  v1[15] = v2;
  v1[16] = v3;
  v1[13] = v4;
  v1[14] = v5;
  v1[11] = v6;
  v1[12] = v7;
  v1[10] = v8;
  v9 = sub_1BFAAEB98();
  v1[19] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_100();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v11);
  v1[22] = OUTLINED_FUNCTION_100();
  v12 = sub_1BFAAE3F8();
  v1[23] = v12;
  OUTLINED_FUNCTION_15(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA10C50()
{
  OUTLINED_FUNCTION_51();
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v1 = OUTLINED_FUNCTION_67();
  if (MEMORY[0x1BFB60380](v1) == 0x6F747541656D6F48 && v2 == 0xEE006E6F6974616DLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v4 = sub_1BFAAFF08();

    if ((v4 & 1) == 0)
    {

      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_136();

      __asm { BRAA            X1, X16 }
    }
  }

  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  sub_1BFAAE388();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    sub_1BFAAE3E8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1BFA007F8(*(v0 + 176), &qword_1EBDFB570, &qword_1BFAB1F50);
    }
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  }

  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB578, &qword_1BFAB09D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB08E0;
  *(inited + 32) = 1651664246;
  *(inited + 40) = 0xE400000000000000;
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v11)
  {
    v15 = v11;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v15;

  sub_1BFAAF7D8();
  sub_1BFAAF1B8();
  v16 = OUTLINED_FUNCTION_57();
  v17(v16);
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_1BFA10F04;
  OUTLINED_FUNCTION_53(*(v0 + 200));
  OUTLINED_FUNCTION_136();

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BFA10F04()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 216) = v0;

  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_67();
  v10(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    v14 = *(v5 + 8);

    return v14();
  }
}

uint64_t sub_1BFA11110()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA11180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BFA111A4, 0, 0);
}

uint64_t sub_1BFA111A4()
{
  OUTLINED_FUNCTION_51();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_30();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA112B8;
  v3 = OUTLINED_FUNCTION_28_1(*(v0 + 24));

  return v5(v3);
}

uint64_t sub_1BFA112B8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA11398()
{
  OUTLINED_FUNCTION_40();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[29] = v5;
  v6 = sub_1BFAAEB68();
  v1[34] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[35] = v7;
  v1[36] = OUTLINED_FUNCTION_109();
  v1[37] = swift_task_alloc();
  v8 = sub_1BFAAEB18();
  v1[38] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[39] = v9;
  v1[40] = OUTLINED_FUNCTION_109();
  v1[41] = swift_task_alloc();
  v10 = sub_1BFAAE3F8();
  v1[42] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[43] = v11;
  v1[44] = OUTLINED_FUNCTION_109();
  v1[45] = swift_task_alloc();
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BFA11504()
{
  v90 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = OUTLINED_FUNCTION_92();
  v3(v2);

  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB78();

  if (os_log_type_enabled(v4, v5))
  {
    v82 = *(v0 + 240);
    v86 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v6 = 136315394;
    OUTLINED_FUNCTION_65();
    sub_1BFA17B74(v7, v8, MEMORY[0x1E69695E0]);
    v9 = sub_1BFAAFEE8();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_120();
    v13(v12);
    v14 = sub_1BF9F88A8(v9, v11, &v88);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2080;
    v15 = MEMORY[0x1BFB60C30](v82, v86);
    v17 = sub_1BF9F88A8(v15, v16, &v88);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_1BF9F6000, v4, v5, "Submitting conversation continuer for %s intentQueries: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    v18 = OUTLINED_FUNCTION_120();
    v19(v18);
  }

  v20 = *(v0 + 240);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v0 + 312);
    v23 = *(v0 + 280);
    v88 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DBB8(0, v21, 0);
    v24 = v88;
    v25 = *(v23 + 16);
    v23 += 16;
    v26 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v79 = *(v23 + 56);
    v80 = v25;
    v83 = v21;
    v27 = (v23 - 8);
    do
    {
      v28 = *(v0 + 296);
      v29 = *(v0 + 272);
      v80(v28, v26, v29);
      sub_1BFAAEB48();
      (*v27)(v28, v29);
      v88 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1BFA2DBB8((v30 > 1), v31 + 1, 1);
        v24 = v88;
      }

      v32 = *(v0 + 328);
      v33 = *(v0 + 304);
      *(v24 + 16) = v31 + 1;
      (*(v22 + 32))(v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v31, v32, v33);
      v26 += v79;
      --v21;
    }

    while (v21);
    v74 = v24;
    v21 = v83;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  v87 = sub_1BFAAF7D8();
  if (!v21)
  {
LABEL_22:
    *(v0 + 368) = v87;
    *(v0 + 208) = sub_1BFAAE398();
    *(v0 + 216) = v67;
    *(v0 + 224) = 0;
    *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB600, &qword_1BFAB7660);
    *(v0 + 192) = sub_1BFA177F4(&qword_1EBDFB608, &qword_1EBDFB610, MEMORY[0x1E69D2D88], MEMORY[0x1E69E6330]);
    v68 = sub_1BFA177F4(&qword_1EDCC6450, &qword_1EDCC6518, MEMORY[0x1E69D2D80], MEMORY[0x1E69E6300]);
    *(v0 + 160) = v74;
    *(v0 + 200) = v68;
    OUTLINED_FUNCTION_44();
    v85 = (v69 + *v69);
    v70 = swift_task_alloc();
    *(v0 + 376) = v70;
    *v70 = v0;
    v70[1] = sub_1BFA11E44;
    v71 = *(v0 + 256);
    v72 = *(v0 + 248);

    return v85(v0 + 208, 0xD000000000000010, 0x80000001BFAB8400, v0 + 160, v72, v71);
  }

  v34 = *(v0 + 280);
  v35 = *(v34 + 16);
  v34 += 16;
  v77 = v35;
  v36 = *(v0 + 240) + ((*(v34 + 64) + 32) & ~*(v34 + 64));
  v76 = (*(v0 + 312) + 8);
  v75 = *(v34 + 56);
  while (1)
  {
    v81 = v36;
    v84 = v21;
    v37 = *(v0 + 352);
    v38 = *(v0 + 336);
    v39 = *(v0 + 320);
    v40 = *(v0 + 304);
    v77(*(v0 + 288));
    sub_1BFAAEB48();
    sub_1BFAAEB08();
    (*v76)(v39, v40);
    v41 = sub_1BFAAE398();
    v43 = v42;
    v78(v37, v38);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1BFAAFC48();

    v88 = 0xD000000000000010;
    v89 = 0x80000001BFAB8660;
    MEMORY[0x1BFB60B80](v41, v43);

    v44 = v88;
    v45 = v89;
    v46 = sub_1BFAAF118();
    *(v0 + 40) = v46;
    v47 = MEMORY[0x1E69D3178];
    v48 = sub_1BFA17B74(&qword_1EBDFB5E8, MEMORY[0x1E69D3178], MEMORY[0x1E69D3188]);
    *(v0 + 48) = v48;
    v49 = sub_1BFA17B74(&qword_1EBDFB5F0, v47, MEMORY[0x1E69D3180]);
    *(v0 + 56) = v49;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    sub_1BFAAEB58();
    v50 = OUTLINED_FUNCTION_71();
    v51(v50);
    sub_1BFA022C0((v0 + 16), (v0 + 64));
    __swift_mutable_project_boxed_opaque_existential_1Tm(v0 + 64, *(v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    v88 = v87;
    *(v0 + 136) = v46;
    *(v0 + 144) = v48;
    *(v0 + 152) = v49;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 112));
    OUTLINED_FUNCTION_54();
    (*(v52 + 16))();
    v53 = sub_1BFA01764(v44, v45);
    if (__OFADD__(*(v87 + 16), (v54 & 1) == 0))
    {
      __break(1u);
      goto LABEL_29;
    }

    v55 = v53;
    v56 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5F8, &unk_1BFAB1190);
    v57 = sub_1BFAAFCD8();
    v58 = v88;
    if (v57)
    {
      break;
    }

LABEL_18:
    v87 = v58;
    if (v56)
    {
      v61 = (v58[7] + 48 * v55);
      __swift_destroy_boxed_opaque_existential_2Tm(v61);
      sub_1BFA022C0((v0 + 112), v61);
    }

    else
    {
      v62 = *(v0 + 136);
      v63 = __swift_mutable_project_boxed_opaque_existential_1Tm(v0 + 112, v62);
      OUTLINED_FUNCTION_22();
      v65 = v64;
      v66 = OUTLINED_FUNCTION_100();
      (*(v65 + 16))(v66, v63, v62);
      sub_1BFA20A40(v55, v44, v45, v66, v58);
      __swift_destroy_boxed_opaque_existential_2Tm((v0 + 112));
    }

    __swift_destroy_boxed_opaque_existential_2Tm((v0 + 64));
    v36 = v81 + v75;
    v21 = v84 - 1;
    if (v84 == 1)
    {
      goto LABEL_22;
    }
  }

  v59 = sub_1BFA01764(v44, v45);
  if ((v56 & 1) == (v60 & 1))
  {
    v55 = v59;
    goto LABEL_18;
  }

  return sub_1BFAAFF38();
}

uint64_t sub_1BFA11E44()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  v3[48] = v0;

  sub_1BF9FC184(v3[26], v2[27]);
  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v3 + 20);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA11F84()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  if (*(v0[46] + 16))
  {
    sub_1BFAAE398();
    v0[49] = v1;
    v2 = swift_task_alloc();
    v0[50] = v2;
    *v2 = v0;
    v2[1] = sub_1BFA120AC;
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_112();

    return SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)(v3, v4, v5, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_112();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1BFA120AC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA121B8()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_112();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1BFA12248()
{
  OUTLINED_FUNCTION_51();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 160));

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  __asm { BRAA            X1, X16 }
}

void sub_1BFA122E8()
{
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  __asm { BRAA            X1, X16 }
}

SiriSuggestionsAPI::SiriSuggestionsClientPredefinedTypes_optional __swiftcall SiriSuggestionsClientPredefinedTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BFA12420@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestionsClientPredefinedTypes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.intentProps.getter()
{
  type metadata accessor for SiriSuggestionsIntentPropertiesTransport(0);
}

uint64_t SiriSuggestionsIntentPropertiesTransport.verb.getter()
{
  type metadata accessor for SiriSuggestionsIntentPropertiesTransport(0);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestionsIntentPropertiesTransport.init(intentName:owner:intentProps:verb:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BFA17BBC(a1, a6, &qword_1EBDFB580, &qword_1BFAB09D8);
  v11 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport(0);
  result = sub_1BF9FA474(a2, a6 + v11[5]);
  *(a6 + v11[6]) = a3;
  v13 = (a6 + v11[7]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  OUTLINED_FUNCTION_60_0(v5);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB588, &unk_1BFAB09E0);
  OUTLINED_FUNCTION_22();
  v11 = v10;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_107();
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BFA15584();
  sub_1BFAAFFF8();
  if (!v2)
  {
    v14 = v29;
    sub_1BFAAEC28();
    LOBYTE(v33[0]) = 0;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE58();
    v15 = v11;
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB598, &qword_1BFAB09F0);
    LOBYTE(v31) = 2;
    OUTLINED_FUNCTION_52();
    v17 = sub_1BFAAEE38();
    v34 = 3;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE18();
    v27 = v32;
    v28 = v31;
    v19 = v14;
    sub_1BFA17B2C(v8, v14, &qword_1EBDFB580, &qword_1BFAB09D8);
    v20 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport(0);
    sub_1BFA177A0(v33, v14 + v20[5]);
    v21 = v16;
    v22 = v15;
    v23 = sub_1BFA128F0(v17);

    __swift_destroy_boxed_opaque_existential_2Tm(v33);
    sub_1BFA007F8(v8, &qword_1EBDFB580, &qword_1BFAB09D8);
    (*(v22 + 8))(v3, v21);
    *(v19 + v20[6]) = v23;
    v24 = (v19 + v20[7]);
    v25 = v27;
    *v24 = v28;
    v24[1] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v30);
}

unint64_t sub_1BFA128F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB618, &qword_1BFAB11A0);
    v2 = sub_1BFAAFD48();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
LABEL_7:
  if (!v5)
  {
    goto LABEL_9;
  }

  do
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1BFA17890(*(a1 + 56) + 48 * v11, v29);
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v26[3] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v27[2] = v29[2];
    v15 = v28;
    sub_1BFA022C0(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB598, &qword_1BFAB09F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    swift_dynamicCast();
    sub_1BFA022C0(v23, v25);
    sub_1BFA022C0(v25, v26);
    sub_1BFA022C0(v26, &v24);
    result = sub_1BFA01764(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v21 = (v2[7] + 48 * v16);
      __swift_destroy_boxed_opaque_existential_2Tm(v21);
      result = sub_1BFA022C0(&v24, v21);
      v8 = v9;
      goto LABEL_7;
    }

    if (v2[2] >= v2[3])
    {
      goto LABEL_20;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v2[6] + 16 * result) = v15;
    result = sub_1BFA022C0(&v24, (v2[7] + 48 * result));
    v18 = v2[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v2[2] = v20;
    v8 = v9;
  }

  while (v5);
LABEL_9:
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
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BFA12B9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
    v1 = sub_1BFAAFD48();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1BFA17890(*(a1 + 56) + 48 * v10, v29);
    *&v28 = v12;
    *(&v28 + 1) = v13;
    *&v26[5] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v27[2] = v29[2];
    v14 = v28;
    sub_1BFA022C0(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
    swift_dynamicCast();
    sub_1BF9FA474(&v23, v25);
    sub_1BF9FA474(v25, v26);
    sub_1BF9FA474(v26, &v24);
    result = sub_1BFA01764(v14, *(&v14 + 1));
    v15 = result;
    if (v16)
    {
      *(v1[6] + 16 * result) = v14;

      v17 = (v1[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_2Tm(v17);
      result = sub_1BF9FA474(&v24, v17);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v1[6] + 16 * result) = v14;
      result = sub_1BF9FA474(&v24, v1[7] + 40 * result);
      v18 = v1[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v1[2] = v20;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
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

unint64_t sub_1BFA12E44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5E0, &qword_1BFAB1168);
    v7 = sub_1BFAAFD48();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_63();

  v9 = 0;
  while (v3)
  {
    while (1)
    {
      v10 = v9;
LABEL_10:
      OUTLINED_FUNCTION_79();
      v30 = v4;
      v31 = v5;
      *&v27[5] = MEMORY[0x28];
      v28[0] = MEMORY[0x38];
      v28[1] = MEMORY[0x48];
      v29 = v32;
      v11 = MEMORY[0x30];
      v4 = MEMORY[0x28];
      sub_1BF9FA474(v28, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
      OUTLINED_FUNCTION_108(v12, v13, v14);
      sub_1BF9FA474((v6 + 16), v26);
      sub_1BF9FA474(v26, v27);
      sub_1BF9FA474(v27, &v25);
      v15 = OUTLINED_FUNCTION_71();
      result = sub_1BFA01764(v15, v16);
      v5 = result;
      if (v17)
      {
        break;
      }

      if (v7[2] >= v7[3])
      {
        goto LABEL_17;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      OUTLINED_FUNCTION_122();
      *v18 = v4;
      v18[1] = v11;
      result = sub_1BF9FA474(&v25, v7[7] + 40 * v5);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v7[2] = v21;
      v9 = v10;
    }

    OUTLINED_FUNCTION_122();
    *v22 = v4;
    v22[1] = v11;

    v4 = (v7[7] + 40 * v5);
    __swift_destroy_boxed_opaque_existential_2Tm(v4);
    result = sub_1BF9FA474(&v25, v4);
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {

      return v7;
    }

    v3 = *(v1 + 8 * v10);
    ++v9;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1BFA13064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
    v7 = sub_1BFAAFD48();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_63();

  v9 = 0;
  while (v3)
  {
    while (1)
    {
      v10 = v9;
LABEL_10:
      OUTLINED_FUNCTION_79();
      v30 = v4;
      v31 = v5;
      *&v27[5] = MEMORY[0x28];
      v28[0] = MEMORY[0x38];
      v28[1] = MEMORY[0x48];
      v29 = v32;
      v11 = MEMORY[0x30];
      v4 = MEMORY[0x28];
      sub_1BF9FA474(v28, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
      OUTLINED_FUNCTION_108(v12, v13, v14);
      sub_1BF9FA474((v6 + 16), v26);
      sub_1BF9FA474(v26, v27);
      sub_1BF9FA474(v27, &v25);
      v15 = OUTLINED_FUNCTION_71();
      result = sub_1BFA01764(v15, v16);
      v5 = result;
      if (v17)
      {
        break;
      }

      if (v7[2] >= v7[3])
      {
        goto LABEL_17;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      OUTLINED_FUNCTION_122();
      *v18 = v4;
      v18[1] = v11;
      result = sub_1BF9FA474(&v25, v7[7] + 40 * v5);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v7[2] = v21;
      v9 = v10;
    }

    OUTLINED_FUNCTION_122();
    *v22 = v4;
    v22[1] = v11;

    v4 = (v7[7] + 40 * v5);
    __swift_destroy_boxed_opaque_existential_2Tm(v4);
    result = sub_1BF9FA474(&v25, v4);
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {

      return v7;
    }

    v3 = *(v1 + 8 * v10);
    ++v9;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  OUTLINED_FUNCTION_60_0(v3);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5A0, &qword_1BFAB09F8);
  OUTLINED_FUNCTION_22();
  v31[2] = v8;
  v31[3] = v7;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1BFA15584();
  sub_1BFAB0008();
  v35 = 0;
  v12 = OUTLINED_FUNCTION_71();
  sub_1BFA17B2C(v12, v13, &qword_1EBDFB580, &qword_1BFAB09D8);
  v14 = sub_1BFAAEC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_1BFA007F8(v6, &qword_1EBDFB580, &qword_1BFAB09D8);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  else
  {
    *(&v33 + 1) = v14;
    v34 = sub_1BFA17B74(&qword_1EDCC64F8, MEMORY[0x1E69D2EF0], MEMORY[0x1E69D2EF8]);
    __swift_allocate_boxed_opaque_existential_1Tm(&v32);
    OUTLINED_FUNCTION_54();
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_84();
  v16 = v31[1];
  sub_1BFAAEE28();
  if (!v16)
  {
    sub_1BFA007F8(&v32, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v35 = 1;
    v20 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport(0);
    v21 = (v2 + v20[5]);
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v24 = *(v23 + 32);
    *(&v33 + 1) = v22;
    v34 = v24;
    __swift_allocate_boxed_opaque_existential_1Tm(&v32);
    OUTLINED_FUNCTION_54();
    (*(v25 + 16))();
    OUTLINED_FUNCTION_84();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v32);
    LOBYTE(v32) = 2;
    sub_1BFA12B9C(*(v2 + v20[6]));
    sub_1BFAAEE48();

    v35 = 3;
    v26 = (v2 + v20[7]);
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      v29 = MEMORY[0x1E69E6160];
      v30 = MEMORY[0x1E69E6158];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v29 = 0;
      *&v33 = 0;
    }

    *&v32 = v28;
    *(&v32 + 1) = v27;
    *(&v33 + 1) = v30;
    v34 = v29;

    OUTLINED_FUNCTION_84();
    sub_1BFAAEE28();
  }

  v17 = OUTLINED_FUNCTION_104();
  v18(v17);
  return sub_1BFA007F8(&v32, &qword_1EBDFB5A8, &qword_1BFAB0A00);
}

uint64_t sub_1BFA1366C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_118() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
      {

        return 2;
      }

      else if (a1 == 1651664246 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_97();
        v10 = sub_1BFAAFF08();

        if (v10)
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

uint64_t sub_1BFA137AC(unsigned __int8 a1)
{
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA137F4(char a1)
{
  result = 0x614E746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x72656E776FLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_118();
      break;
    case 3:
      result = 1651664246;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA13880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA1366C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA138B4(uint64_t a1)
{
  v2 = sub_1BFA15584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA138F0(uint64_t a1)
{
  v2 = sub_1BFA15584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA139F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDE28;

  return sub_1BFA07EF4(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA13AD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return (sub_1BFA08A50)(a1, a2);
}

uint64_t sub_1BFA13B88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return sub_1BFA09EF0(a1, a2);
}

uint64_t sub_1BFA13CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB1118);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_2(v11);
  OUTLINED_FUNCTION_128();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1BFA13D5C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1108);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA13DF0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB10F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA13F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB10B8);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_2(v11);
  OUTLINED_FUNCTION_128();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1BFA13F9C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB10A8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_7_0(v2);

  return v6(v4);
}

uint64_t sub_1BFA1403C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1098);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA140D0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1088);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

BOOL sub_1BFA14164(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

    v8 = a1(v11);
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

BOOL sub_1BFA14274(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_15(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1BFA14350()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1078);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA143E4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1068);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA144F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1028);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_2(v11);
  OUTLINED_FUNCTION_128();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1BFA14590()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1018);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_96();

  return v6(v4);
}

uint64_t sub_1BFA1462C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1008);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA146C0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0FF8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA147D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB0FB8);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_2(v11);
  OUTLINED_FUNCTION_128();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1BFA1486C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0FA8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_96();

  return v6(v4);
}