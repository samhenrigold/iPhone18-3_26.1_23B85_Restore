id _HPSLoggingFacility(uint64_t a1)
{
  if (_HPSLoggingFacility_onceToken != -1)
  {
    _HPSLoggingFacility_cold_1();
  }

  v2 = _HPSLoggingFacility_oslog;

  return v2;
}

id HPSLogForCategory(int a1)
{
  if (HPSLogForCategory_onceToken != -1)
  {
    HPSLogForCategory_cold_1();
  }

  v2 = HPSLogForCategory_oslog[a1];

  return v2;
}

uint64_t __HPSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.HPSettings", "AppleConnect");
  v1 = HPSLogForCategory_oslog[0];
  HPSLogForCategory_oslog[0] = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2542BC280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2542BD490(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2542C038C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_2542C298C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_2542C399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2542C3E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C4814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C57C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C5C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C6374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C6570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2542C676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_2542C6EC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2542C6F98(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_2542C7094()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  v4 = *((v3 & v2) + 0x60);
  OUTLINED_FUNCTION_1_2();
  sub_25430D714(v0 + v4);
}

void sub_2542C7324(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2542C7094();
}

id sub_2542C738C(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v21 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  OUTLINED_FUNCTION_1_2();
  sub_25430D830(v17, 0xE800000000000000, v3, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {

    (*(v5 + 8))(v8, v21);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v3);
    swift_getObjectType();
    (*(v10 + 16))(v13, v16, v3);
    v18 = sub_2542C6F64(v13);

    (*(v10 + 8))(v16, v3);
    swift_deallocPartialClassInstance();
  }

  return v18;
}

id sub_2542C76E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2542C779C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25434177C();
  *a1 = result;
  return result;
}

uint64_t sub_2542C77C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_254341CAC(*a1, *v2);
  *a2 = result;
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

void type metadata accessor for AssertionType()
{
  if (!qword_27F5DF1E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F5DF1E8);
    }
  }
}

void static CarrySettings.MessageChannel.Role.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88();
  v46 = v4;
  OUTLINED_FUNCTION_177();
  v45 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  type metadata accessor for CarrySettings.MessageChannel.Role(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF250, &qword_2543A6840);
  OUTLINED_FUNCTION_110(v24);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109();
  v27 = v3 + *(v26 + 56);
  sub_2542C7D8C(v2, v3);
  sub_2542C7D8C(v46, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = OUTLINED_FUNCTION_93();
    sub_2542C7D8C(v37, v38);
    if (swift_getEnumCaseMultiPayload())
    {
      v20 = v23;
      goto LABEL_12;
    }

    v41 = v45;
    (*(v6 + 32))(v14, v27, v45);
    sub_2543A1F68();
    v42 = *(v6 + 8);
    v42(v14, v41);
    v42(v23, v41);
LABEL_14:
    sub_2542C7DF0(v3);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2542C7D8C(v3, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v20 = v17;
      goto LABEL_12;
    }

    v39 = v45;
    (*(v6 + 32))(v9, v27, v45);
    sub_2543A1F68();
    v40 = *(v6 + 8);
    v40(v9, v39);
    v40(v17, v39);
    goto LABEL_14;
  }

  v29 = OUTLINED_FUNCTION_47();
  sub_2542C7D8C(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF258, &qword_2543A6848);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v44;
    v31 = v45;
    (*(v6 + 32))(v44, v27, v45);
    v33 = sub_2543A1F68();
    v34 = *(v6 + 8);
    v34(v20, v31);
    if ((v33 & 1) == 0)
    {
      v34(v32, v31);

      sub_2542C7DF0(v3);
      goto LABEL_15;
    }

    v35 = OUTLINED_FUNCTION_46();
    sub_2542C7E4C(v35, v36);

    v34(v32, v31);
    goto LABEL_14;
  }

LABEL_12:
  (*(v6 + 8))(v20, v45);
  sub_2542DA948(v3, &qword_27F5DF250);
LABEL_15:
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2542C7D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.MessageChannel.Role(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542C7DF0(uint64_t a1)
{
  v2 = type metadata accessor for CarrySettings.MessageChannel.Role(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2542C7E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2543A1F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v32 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v13 = &v32 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
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
    v35 = &v32 - v11;
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
        v25(v13, v24 + v40 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v43, v13, v4);
        sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
        v26 = sub_2543A27F8();
        v27 = a2;
        v28 = ~(-1 << *(a2 + 32));
        do
        {
          v29 = v26 & v28;
          if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
          {
            (*v20)(v43, v4);
            return;
          }

          (v25)(v7, *(v27 + 48) + v29 * v40, v4);
          sub_2542D620C(&qword_27F5DF530, MEMORY[0x277CC95F0]);
          v30 = sub_2543A2848();
          v31 = *v20;
          (*v20)(v7, v4);
          v26 = v29 + 1;
        }

        while ((v30 & 1) == 0);
        v31(v43, v4);
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
        return;
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
  }
}

void CarrySettings.MessageChannel.__allocating_init(role:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_104();
  CarrySettings.MessageChannel.init(role:)(v2, v3, v4);
}

void CarrySettings.MessageChannel.init(role:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v4 = v3;
  v31 = v5;
  sub_2543A3068();
  OUTLINED_FUNCTION_3();
  v29 = v7;
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v28 = v9 - v8;
  sub_2543A3058();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v11 = sub_2543A2168();
  v12 = OUTLINED_FUNCTION_110(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  *&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache] = MEMORY[0x277D84F98];
  v13 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_callbackMediators;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF270, &qword_2543A6850);
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  *&v3[v13] = sub_2542D4F6C();
  v14 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_channelLoader;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF280, &qword_2543A6858);
  OUTLINED_FUNCTION_187(v15);
  *&v3[v14] = sub_2542D3B54(0, 0);
  v16 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_dataModelUpdateSubject;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF290, &qword_2543A6860);
  OUTLINED_FUNCTION_187(v17);
  *&v3[v16] = sub_2543A2068();
  v18 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_dataModelUpdateTokens;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2A0, &qword_2543A6868);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = MEMORY[0x277D84FA0];
  *&v4[v18] = v19;
  v20 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_dispatchQueue;
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  v33 = MEMORY[0x277D84F90];
  sub_2542D620C(&qword_27F5DF2B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2542DAB80(&qword_27F5DF2C8, &qword_27F5DF2C0);
  sub_2543A3188();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  *&v4[v20] = sub_2543A3078();
  v21 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_installProfileSubject;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2D8, &qword_2543A6878);
  OUTLINED_FUNCTION_187(v22);
  *&v4[v21] = sub_2543A2068();
  v23 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_installProfileTokens;
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v24 + 112) = MEMORY[0x277D84FA0];
  *&v4[v23] = v24;
  v25 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_foundSubject;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2F0, &qword_2543A6880);
  OUTLINED_FUNCTION_187(v26);
  *&v4[v25] = sub_2543A2068();
  v27 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_lostSubject;
  swift_allocObject();
  *&v4[v27] = sub_2543A2068();
  sub_2543A1FA8();
  sub_2542C7D8C(v31, &v4[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_role]);
  v32.receiver = v4;
  v32.super_class = type metadata accessor for CarrySettings.MessageChannel(0);
  objc_msgSendSuper2(&v32, sel_init);
  sub_2542C7DF0(v31);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2542C867C()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2542C86E0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  v0[4] = *(v0[2] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_channelLoader);
  OUTLINED_FUNCTION_67();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_63();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2542C87FC;

  return sub_2542D3E9C(&unk_2543A6D10, v3);
}

uint64_t sub_2542C87FC()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {

    OUTLINED_FUNCTION_64();

    return v10(v3);
  }
}

uint64_t sub_2542C8938()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_2542C899C(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = sub_2543A1F88();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for CarrySettings.MessageChannel.Role(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = sub_2543A1FB8();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542C8AF4);
}

uint64_t sub_2542C8AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_97(v16[22] + 16, (v16 + 18));
  Strong = swift_unknownObjectWeakLoadStrong();
  v16[32] = Strong;
  if (Strong)
  {
    v18 = Strong;
    (*(v16[30] + 16))(v16[31], Strong + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger, v16[29]);
    v19 = sub_2543A1F98();
    v20 = sub_2543A3008();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_157();
      *v21 = 0;
      _os_log_impl(&dword_2542B7000, v19, v20, "Creating COMessageChannel", v21, 2u);
      OUTLINED_FUNCTION_43();
    }

    v22 = v16[28];

    v23 = OUTLINED_FUNCTION_76();
    v24(v23);
    v25 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_role;
    sub_2542C7D8C(v18 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_role, v22);
    OUTLINED_FUNCTION_65();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF258, &qword_2543A6848);
        v27 = OUTLINED_FUNCTION_75();
        v28(v27);
        _s15HomePodSettings6HPCallV2idSSvg_0();
      }

      else
      {
        v42 = OUTLINED_FUNCTION_75();
        v43(v42);
      }
    }

    else
    {
      v40 = OUTLINED_FUNCTION_75();
      v41(v40);
      _s15HomePodSettings6HPCallV2idSSvg_0();
    }

    v44 = v16[27];
    v46 = v16[24];
    v45 = v16[25];
    v47 = v16[23];
    _s15HomePodSettings6HPCallV2idSSvg_0();
    v61 = *(v46 + 8);
    v61(v45, v47);
    v48 = objc_opt_self();
    v49 = sub_2543A2858();
    v50 = sub_2543A2858();

    v51 = [v48 messageChannelWithTopic:v49 cluster:v50 manualGrouping:1];
    v16[33] = v51;

    OUTLINED_FUNCTION_0_3();
    sub_2542D620C(v52, v53);
    sub_2543A2DA8();
    OUTLINED_FUNCTION_169();

    [v51 addGroupedHomeKitIdentifiers_];

    sub_2542CBDE0(v51);
    sub_2542C7D8C(v18 + v25, v44);
    v54 = swift_getEnumCaseMultiPayload();
    if (v54)
    {
      if (v54 != 1)
      {
        v56 = OUTLINED_FUNCTION_144();
        [v51 addSessionConsumerWithSubTopic:v56 delegate:v18 dispatchQueue:*(v18 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_dispatchQueue)];

        v57 = OUTLINED_FUNCTION_47();
        (v61)(v57);
        goto LABEL_17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF258, &qword_2543A6848);
    }

    v61(v16[27], v16[23]);
    v55 = OUTLINED_FUNCTION_144();
    [v51 addSessionProducerWithSubTopic:v55 delegate:v18 dispatchQueue:*(v18 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_dispatchQueue)];

LABEL_17:
    v16[2] = v16;
    v16[3] = sub_2542C8FE0;
    v58 = OUTLINED_FUNCTION_158();
    v16[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
    v16[10] = MEMORY[0x277D85DD0];
    v16[11] = 1107296256;
    v16[12] = sub_2542C9210;
    v16[13] = &block_descriptor_185;
    v16[14] = v58;
    [v51 activateWithCompletion_];
    OUTLINED_FUNCTION_48();

    return MEMORY[0x282200938](v59);
  }

  v29 = sub_2542DAE80();
  OUTLINED_FUNCTION_100(&type metadata for ClientError, v29);
  *v30 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2542C8FE0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542C90DC()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);

  *v2 = v1;

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_195();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2542C9170()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2542C9210(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_254372814();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_2542C9280()
{
  OUTLINED_FUNCTION_28();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_2543A1F88();
  v1[21] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[22] = v5;
  v1[23] = OUTLINED_FUNCTION_146();
  v6 = sub_2543A1FB8();
  v1[24] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[25] = v7;
  v1[26] = OUTLINED_FUNCTION_140();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2542C9990()
{
  OUTLINED_FUNCTION_28();
  sub_2542D35AC(*(v0 + 184));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542C99F8()
{
  OUTLINED_FUNCTION_28();
  swift_unknownObjectWeakInit();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_2542C9A58()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[34];
  v2 = v0[23];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_2542C9B08;
  v4 = OUTLINED_FUNCTION_158();
  sub_2542C9F08(v4, v1, v3, (v0 + 15), v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2542C9B08()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[36] = v5;
  if (v5)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x259C0AE60](v2 + 15);
    v2[37] = v2[16];
  }

  OUTLINED_FUNCTION_51();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2542C9C1C()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 152);

  v2 = OUTLINED_FUNCTION_65();
  v3(v2);

  OUTLINED_FUNCTION_64();
  v5 = *(v0 + 296);

  return v4(v5);
}

void sub_2542C9F08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v22 = a3;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (a2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_2542D61B4(v11, v12);

  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v8 + 32))(v16 + v15, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v22;

    v23 = v11;
    v24 = v12;
    v25 = v19;
    v26 = &unk_2543A6CA8;
    v27 = v16;
    sub_2543A2048();

    sub_2542D7D40(v11, v12);
  }

  else
  {
    v20 = v22;
    sub_2542D7D40(v11, v12);
  }
}

uint64_t sub_2542CA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_2543A1F88();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_2543A1FB8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542CA2A0);
}

uint64_t sub_2542CA480()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 184) = sub_2542D36E0(*(v0 + 104)) & 1;

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542CA74C()
{
  OUTLINED_FUNCTION_28();
  sub_2542D3A2C(*(v0 + 104));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542CA7B4()
{
  OUTLINED_FUNCTION_31();
  v10 = v1;
  OUTLINED_FUNCTION_178();
  if (v0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    v3 = OUTLINED_FUNCTION_100(v2, MEMORY[0x277D84950]);
    OUTLINED_FUNCTION_112(v3, v4);
    OUTLINED_FUNCTION_46();
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    v9 = 1;
    objc_allocWithZone(type metadata accessor for CarrySettings.DataModelUpdateResponse());
    CarrySettings.DataModelUpdateResponse.init(result:)(&v9);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_192(v6, *(v5 + 40));
  }

  OUTLINED_FUNCTION_153();

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_2542CA884()
{
  OUTLINED_FUNCTION_28();
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v3;
  v4 = sub_2543A1F88();
  v1[27] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[28] = v5;
  v1[29] = OUTLINED_FUNCTION_146();
  v6 = sub_2543A1FB8();
  v1[30] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_140();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2542CAEF0()
{
  OUTLINED_FUNCTION_28();
  sub_2542D35AC(*(v0 + 232));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542CAF58()
{
  OUTLINED_FUNCTION_28();
  swift_unknownObjectWeakInit();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_2542CAFB8()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 232);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_2542CB07C;
  v5 = *(v0 + 360);
  v6 = OUTLINED_FUNCTION_158();
  sub_2542CB454(v6, v3, v5, v2, v1, v0 + 168, v4);

  OUTLINED_FUNCTION_195();

  return MEMORY[0x282200938](v7);
}

uint64_t sub_2542CB07C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[43] = v5;
  if (v5)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x259C0AE60](v2 + 21);
    v2[44] = v2[22];
  }

  OUTLINED_FUNCTION_51();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2542CB190()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();

  v1 = OUTLINED_FUNCTION_92();
  v2(v1);

  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_195();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2542CB454(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a7;
  v23 = a3;
  v26 = a1;
  v9 = sub_2543A1F88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (a2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_2542D61B4(v13, v14);
  v27 = a5;
  sub_2543A2768();

  (*(v10 + 16))(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v25, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v10 + 32))(v18 + v17, &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;

    v28 = v13;
    v29 = v14;
    v30 = v23;
    v31 = v24;
    v32 = v27;
    v33 = &unk_2543A6C88;
    v34 = v18;
    sub_2543A2048();
  }

  sub_2542D7D40(v13, v14);
}

uint64_t sub_2542CB6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_2543A1F88();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_2543A1FB8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542CB7FC);
}

uint64_t sub_2542CB9DC()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 184) = sub_2542D36E0(*(v0 + 104)) & 1;

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542CBCA8()
{
  OUTLINED_FUNCTION_28();
  sub_2542D3A2C(*(v0 + 104));

  v1 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2542CBD10()
{
  OUTLINED_FUNCTION_31();
  v10 = v1;
  OUTLINED_FUNCTION_178();
  if (v0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    v3 = OUTLINED_FUNCTION_100(v2, MEMORY[0x277D84950]);
    OUTLINED_FUNCTION_112(v3, v4);
    OUTLINED_FUNCTION_46();
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    v9 = 1;
    objc_allocWithZone(type metadata accessor for CarrySettings.InstallProfileResponse());
    CarrySettings.InstallProfileResponse.init(result:)(&v9);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_192(v6, *(v5 + 40));
  }

  OUTLINED_FUNCTION_153();

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_2542CBDE0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_177();
  type metadata accessor for CarrySettings.MessageChannel.Role(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v7 = v6 - v5;
  updated = type metadata accessor for CarrySettings.DataModelUpdateRequest();
  OUTLINED_FUNCTION_67();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2542CC524(updated, v1, &unk_2543A6C60, v9);

  sub_2542C7D8C(v2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_role, v7);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_2542C7DF0(v7);
  }

  sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  (*(v10 + 8))(v7);
  v11 = type metadata accessor for CarrySettings.InstallProfileRequest();
  OUTLINED_FUNCTION_67();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2542CC524(v11, v1, &unk_2543A6C70, v12);
}

uint64_t sub_2542CBF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2542CBF9C);
}

uint64_t sub_2542CBF9C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    if (v2)
    {
      v3 = [v2 member];
    }

    else
    {
      v3 = 0;
    }

    v0[9] = v3;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2542CC0CC;
    OUTLINED_FUNCTION_116(v0[5]);

    return sub_2542C9280();
  }

  else
  {
    v4 = sub_2542D6354();
    v5 = OUTLINED_FUNCTION_100(&unk_286647A28, v4);
    OUTLINED_FUNCTION_156(v5, v6, xmmword_2543A6810);
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_2542CC0CC(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v4 = v3;
  OUTLINED_FUNCTION_41();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v9 = *(v8 + 72);
  v10 = *v2;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  *(v6 + 88) = v1;

  if (!v1)
  {
    *(v6 + 96) = v4;
  }

  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2542CC1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2542CC214);
}

uint64_t sub_2542CC214()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    if (v2)
    {
      v3 = [v2 member];
    }

    else
    {
      v3 = 0;
    }

    v0[9] = v3;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2542CC344;
    OUTLINED_FUNCTION_116(v0[5]);

    return sub_2542CA884();
  }

  else
  {
    v4 = sub_2542D6354();
    v5 = OUTLINED_FUNCTION_100(&unk_286647A28, v4);
    OUTLINED_FUNCTION_156(v5, v6, xmmword_2543A6810);
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_2542CC344(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v4 = v3;
  OUTLINED_FUNCTION_41();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v9 = *(v8 + 72);
  v10 = *v2;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  *(v6 + 88) = v1;

  if (!v1)
  {
    *(v6 + 96) = v4;
  }

  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2542CC468()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_64();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_2542CC4C8()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_2542CC524(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_67();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = sub_2542D777C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_25436B978;
  v10[3] = &block_descriptor_103;
  v9 = _Block_copy(v10);

  [a2 registerHandler:v9 forRequestClass:swift_getObjCClassFromMetadata()];
  _Block_release(v9);
}

char *sub_2542CC648(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a1;
  v45 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_2543A1F88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = a2;
    v38 = result;
    v21 = swift_allocObject();
    v41 = a7;
    v22 = v21;
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v23 = v19;
    v39 = v19;
    sub_25436B77C(sub_2542D77D4, v22, v19);

    v24 = sub_2543A2BB8();
    v40 = v13;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v43;
    (*(v15 + 16))(v43, v23, v14);
    v27 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v28 = (v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = v44;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v25;
    (*(v15 + 32))(&v31[v27], v26, v14);
    v32 = &v31[v28];
    v33 = v41;
    v34 = v42;
    *v32 = v45;
    v32[1] = v33;
    *&v31[v29] = v30;
    *&v31[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v34;

    v35 = v30;
    v36 = v34;
    sub_2542CCD54(0, 0, v40);

    return (*(v15 + 8))(v39, v14);
  }

  return result;
}

uint64_t sub_2542CC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_2542CC9B4);
}

uint64_t sub_2542CC9B4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = v0[6], , v2, v4 = sub_25436B8F0(v3), v6 = v5, , v0[11] = v4, v0[12] = v6, v4))
  {
    v11 = (v0[7] + *v0[7]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_2542CCB30;
    v8 = OUTLINED_FUNCTION_116(v0[9]);

    return v11(v8);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_2542CCB30()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  OUTLINED_FUNCTION_51();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2542CCC38(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v9 = v1;
  v3 = v1[11];
  v4 = v1[12];
  v7 = v1[15];
  v2 = v7;
  v8 = 0;
  v3(&v7, &v8);
  sub_2542D7A3C(v3, v4);

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_2542CCCBC(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v10 = v1;
  v2 = v1[14];
  v4 = v1[11];
  v3 = v1[12];
  v8 = 0;
  v9 = v2;
  v5 = v2;
  v4(&v8, &v9);
  sub_2542D7A3C(v4, v3);

  OUTLINED_FUNCTION_27();

  return v6();
}

void sub_2542CCD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v12);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  sub_2542DA8D8(v9, v3);
  v14 = sub_2543A2BB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_2542DA948(v3, &qword_27F5DF328);
  }

  else
  {
    sub_2543A2BA8();
    (*(*(v14 - 8) + 8))(v3, v14);
  }

  v16 = *(v5 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2542DA948(v9, &qword_27F5DF328);
    OUTLINED_FUNCTION_63();
    v18 = swift_allocObject();
    *(v18 + 16) = v7;
    *(v18 + 24) = v5;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2543A2B58();
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2543A28A8();
  OUTLINED_FUNCTION_63();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = v5;

  swift_task_create();
  OUTLINED_FUNCTION_168();

  sub_2542DA948(v9, &qword_27F5DF328);

LABEL_9:
  OUTLINED_FUNCTION_86();
}

void sub_2542CD000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v13);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  sub_2542DA8D8(v10, v3);
  sub_2543A2BB8();
  v15 = OUTLINED_FUNCTION_62();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v4);

  if (EnumTagSinglePayload == 1)
  {
    sub_2542DA948(v3, &qword_27F5DF328);
  }

  else
  {
    sub_2543A2BA8();
    v17 = OUTLINED_FUNCTION_47();
    v18(v17);
  }

  v19 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2542DA948(v10, &qword_27F5DF328);
    OUTLINED_FUNCTION_63();
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2543A2B58();
  swift_unknownObjectRelease();
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2543A28A8();
  OUTLINED_FUNCTION_63();
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF590, &qword_2543A6D58);
  swift_task_create();
  OUTLINED_FUNCTION_104();

  sub_2542DA948(v10, &qword_27F5DF328);

LABEL_9:
  OUTLINED_FUNCTION_86();
}

void sub_2542CD340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2543A1FB8();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  v16 = v15 - v14;
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v27 = sub_2543A2888();
  (*(v12 + 16))(v16, v3 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger, v10);
  v18 = v9;
  sub_2543A2768();
  v19 = sub_2543A1F98();
  v20 = sub_2543A2FF8();

  if (os_log_type_enabled(v19, v20))
  {
    v25 = v7;
    v21 = OUTLINED_FUNCTION_87();
    v26 = v10;
    v22 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_101();
    *v21 = 138412802;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v23 = v18;
    *(v21 + 14) = sub_2542D5198(v25);
    *(v21 + 22) = 2080;
    v24 = sub_2542D5198(v27);

    *(v21 + 24) = v24;
    _os_log_impl(&dword_2542B7000, v19, v20, "Message channel %@ failed to add consumer with subtopic %s. Error = %s", v21, 0x20u);
    sub_2542DA948(v22, &unk_27F5DF308);
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_53();

    (*(v12 + 8))(v16, v26);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_86();
}

void sub_2542CD5B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88();
  v5 = OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_109();
  (*(v7 + 16))(v2, v2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger, v5);
  v9 = v4;
  v10 = v3;
  v11 = sub_2543A1F98();
  v12 = sub_2543A2FF8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_138();
    v14 = OUTLINED_FUNCTION_136();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v9;
    v14[1] = v10;
    v15 = v9;
    v16 = v10;
    OUTLINED_FUNCTION_188(&dword_2542B7000, v11, v12, "Message consumer %@ did start session %@");
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    OUTLINED_FUNCTION_190(v17, v18, v17);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_32();
  }

  v19 = OUTLINED_FUNCTION_93();
  v20(v19);
  v21 = [v10 member];
  OUTLINED_FUNCTION_105(v2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache);
  v22 = v10;
  sub_2542D5B78(v22, v21);
  swift_endAccess();

  v23 = [v22 member];
  sub_2543A2048();

  OUTLINED_FUNCTION_86();
}

void sub_2542CD848(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2543A1FB8();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_118();
  v14(v2);
  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = sub_2543A1F98();
  v19 = sub_2543A3008();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_87();
    *v20 = 138413058;
    *(v20 + 4) = v17;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v17;
    v21[1] = v16;
    *(v20 + 22) = 2112;
    v33 = v10;
    v22 = v16;
    v23 = v17;
    v24 = [v22 member];
    *(v20 + 24) = v24;
    v21[2] = v24;
    *(v20 + 32) = 2080;
    v25 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF318, &qword_2543A6898);
    v26 = OUTLINED_FUNCTION_155();
    v27 = sub_2542D5198(v26);

    *(v20 + 34) = v27;
    _os_log_impl(&dword_2542B7000, v18, v19, "Message consumer %@ did stop session %@ with member %@ and notice %s", v20, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_82();
    v3 = v2;
    OUTLINED_FUNCTION_82();

    (*(v12 + 8))(v2, v33);
    v28 = &HPSHomeKitSetupCompleteNotification;
    v29 = [v16 HPSHomePodMediaAccessorySettingKeyPathAXTouchAccomodationsHoldDurationSeconds + 7];
  }

  else
  {

    (*(v12 + 8))(v2, v10);
    v28 = 0x1FB957000;
    v29 = [v16 0x1FB9573B7];
  }

  v30 = v29;
  OUTLINED_FUNCTION_105(v3 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache);
  v31 = sub_2542D5840(v30);
  swift_endAccess();

  v35 = [v16 (v28 + 951)];
  sub_2543A2048();

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2542CDC1C()
{
  OUTLINED_FUNCTION_28();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_2543A1FB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_146();
  v7 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2542CDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v18 = v16[4];
  v17 = v16[5];
  v19 = v16[3];
  v20 = OUTLINED_FUNCTION_50();
  v21(v20);
  v22 = v17;
  v23 = v19;
  v24 = v18;
  v25 = sub_2543A1F98();
  v26 = sub_2543A3008();

  if (os_log_type_enabled(v25, v26))
  {
    a11 = v16[7];
    a12 = v16[9];
    v27 = v16[4];
    a9 = v16[5];
    a10 = v16[8];
    v28 = v16[3];
    v29 = OUTLINED_FUNCTION_87();
    v30 = OUTLINED_FUNCTION_136();
    a13 = OUTLINED_FUNCTION_87();
    *v29 = 138412802;
    *(v29 + 4) = v28;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v28;
    v30[1] = v27;
    *(v29 + 22) = 2080;
    v16[2] = a9;
    v31 = v28;
    v32 = v27;
    v33 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF320, &qword_2543A68A8);
    OUTLINED_FUNCTION_133();
    v34 = sub_2543A2888();
    sub_2542D5198(v34);
    OUTLINED_FUNCTION_164();

    *(v29 + 24) = v16 + 2;
    _os_log_impl(&dword_2542B7000, v25, v26, "Message consumer %@ should start session with member %@ and request %s", v29, 0x20u);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    OUTLINED_FUNCTION_190(v35, v36, v35);
    OUTLINED_FUNCTION_82();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_43();

    (*(a10 + 8))(a12, a11);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_46();
    v38(v37);
  }

  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_48();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2542CDF74(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_2542CE064;

  return sub_2542CDC1C();
}

uint64_t sub_2542CE064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_89();
  v12 = v11;
  OUTLINED_FUNCTION_41();
  v14 = v13[6];
  v15 = v13[5];
  v16 = v13[4];
  v17 = v13[3];
  v18 = v13[2];
  v19 = *v10;
  OUTLINED_FUNCTION_7();
  *v20 = v19;

  v21 = OUTLINED_FUNCTION_135();
  v22(v21);
  _Block_release(v14);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_181();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

void sub_2542CE1E8(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_88();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v3 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger, v8);
  v15 = v5;
  v16 = v4;
  v17 = sub_2543A1F98();
  v18 = sub_2543A3008();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_138();
    v20 = OUTLINED_FUNCTION_136();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v15;
    v20[1] = v16;
    v21 = v15;
    v22 = v16;
    OUTLINED_FUNCTION_188(&dword_2542B7000, v17, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_32();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_86();
}

void sub_2542CE3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v5 = v4;
  v7 = v6;
  v8 = sub_2543A1FB8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_143();
  v21 = sub_2543A3678();
  OUTLINED_FUNCTION_118();
  v10(v3);
  v11 = v7;
  sub_2543A2768();
  v12 = sub_2543A1F98();
  v13 = sub_2543A2FF8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = v5;
    v14 = OUTLINED_FUNCTION_87();
    v15 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_101();
    *v14 = 138412802;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v16 = v11;
    *(v14 + 14) = sub_2542D5198(v20);
    *(v14 + 22) = 2080;
    v17 = sub_2542D5198(v21);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_2542B7000, v12, v13, "### Channel %@ did fail to add producer, subtopic %s, error %s", v14, 0x20u);
    sub_2542DA948(v15, &unk_27F5DF308);
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_53();
  }

  else
  {
  }

  v18 = OUTLINED_FUNCTION_165();
  v19(v18, v8);
  OUTLINED_FUNCTION_86();
}

void sub_2542CE63C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  sub_2543A2878();
  v10 = a3;
  v13 = a5;
  v11 = a1;
  v12 = OUTLINED_FUNCTION_76();
  a6(v12);
}

void sub_2542CE6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v5 = v4;
  v7 = v6;
  v8 = sub_2543A1FB8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_143();
  v23 = sub_2543A3678();
  OUTLINED_FUNCTION_118();
  v10(v3);
  v11 = v7;
  v12 = v5;
  v13 = sub_2543A1F98();
  v14 = sub_2543A3008();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_87();
    v16 = OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_87();
    *v15 = 138412802;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v12;
    *(v15 + 22) = 2080;
    v17 = v11;
    v18 = v12;
    v19 = sub_2542D5198(v23);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_2542B7000, v13, v14, "Producer %@ did fail to start session with member %@, error %s", v15, 0x20u);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    OUTLINED_FUNCTION_142(v20);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  v21 = OUTLINED_FUNCTION_165();
  v22(v21, v8);
  OUTLINED_FUNCTION_86();
}

void sub_2542CE970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v8 = v7;
  OUTLINED_FUNCTION_114();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  v16 = v15 - v14;
  v41 = v17;
  v42 = v4;
  (*(v12 + 16))(v15 - v14, v4 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger);
  v18 = v8;
  v19 = v6;
  v20 = v5;
  v21 = v3;
  v22 = sub_2543A1F98();
  v23 = sub_2543A3008();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_87();
    *v24 = 138413058;
    *(v24 + 4) = v19;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v20;
    *v25 = v19;
    v25[1] = v20;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v21;
    v25[2] = v21;
    *(v24 + 32) = 2080;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF330, &qword_2543AFFB0);
    v30 = OUTLINED_FUNCTION_155();
    v31 = sub_2542D5198(v30);

    *(v24 + 34) = v31;
    _os_log_impl(&dword_2542B7000, v22, v23, "Producer %@ did start session %@, member %@, response %s", v24, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_82();
  }

  (*(v12 + 8))(v16, v41);
  v32 = [v20 member];
  OUTLINED_FUNCTION_105(v42 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache);
  v33 = v20;
  sub_2542D5B78(v33, v32);
  swift_endAccess();

  v34 = sub_2543A2BB8();
  OUTLINED_FUNCTION_180(v34);
  OUTLINED_FUNCTION_67();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_175();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v35;
  v36[5] = v33;
  v37 = v33;
  v38 = OUTLINED_FUNCTION_162();
  sub_2542CD000(v38, v39, v40);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2542CECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_2542CECCC);
}

uint64_t sub_2542CECCC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 64);

    OUTLINED_FUNCTION_182([v3 member]);
  }

  **(v0 + 48) = Strong == 0;
  OUTLINED_FUNCTION_27();

  return v4();
}

void sub_2542CEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_88();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v15);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_109();
  v49 = v18;
  v50 = v19;
  (*(v18 + 16))(v3, v3 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger);
  v20 = v14;
  v21 = v12;
  v22 = v10;
  v23 = v8;
  v24 = v6;
  v25 = sub_2543A1F98();
  v26 = sub_2543A3008();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_136();
    swift_slowAlloc();
    *v27 = 138413314;
    *(v27 + 4) = v20;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v21;
    *v28 = v20;
    v28[1] = v21;
    *(v27 + 22) = 2080;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF338, &qword_2543A68E0);
    v32 = OUTLINED_FUNCTION_155();
    v33 = sub_2542D5198(v32);

    *(v27 + 24) = v33;
    *(v27 + 32) = 2080;
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF318, &qword_2543A6898);
    v35 = OUTLINED_FUNCTION_155();
    v36 = sub_2542D5198(v35);

    *(v27 + 34) = v36;
    *(v27 + 42) = 2080;
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF340, &qword_2543A68E8);
    v38 = OUTLINED_FUNCTION_155();
    v39 = sub_2542D5198(v38);

    *(v27 + 44) = v39;
    _os_log_impl(&dword_2542B7000, v25, v26, "Producer %@ did stop session %@, initiator %s, notice %s, error %s", v27, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    v4 = v3;
    OUTLINED_FUNCTION_82();
  }

  (*(v49 + 8))(v3, v50);
  v40 = [v21 member];
  OUTLINED_FUNCTION_105(v4 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache);
  v41 = sub_2542D5840(v40);
  swift_endAccess();

  v42 = sub_2543A2BB8();
  OUTLINED_FUNCTION_180(v42);
  OUTLINED_FUNCTION_67();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_175();
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v43;
  v44[5] = v21;
  v45 = v21;
  v46 = OUTLINED_FUNCTION_162();
  sub_2542CD000(v46, v47, v48);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2542CF258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_2542CF27C);
}

uint64_t sub_2542CF27C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 64);

    OUTLINED_FUNCTION_182([v3 member]);
  }

  **(v0 + 48) = Strong == 0;
  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_2542CF404()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2543A1FB8();
  v1[5] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_146();
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2542CF4AC()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_50();
  v4(v3);
  v5 = v1;
  v6 = v2;
  v7 = sub_2543A1F98();
  v8 = sub_2543A3008();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = OUTLINED_FUNCTION_138();
    v12 = OUTLINED_FUNCTION_136();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v10;
    v12[1] = v9;
    v13 = v10;
    v14 = v9;
    _os_log_impl(&dword_2542B7000, v7, v8, "Producer %@ should start session with member %@", v11, 0x16u);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
    OUTLINED_FUNCTION_142(v15);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_82();
  }

  v16 = OUTLINED_FUNCTION_46();
  v17(v16);

  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_195();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_2542CF6A4(void *a1, void *a2, void *aBlock, void *a4)
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
  v10[1] = sub_2542CF77C;

  return sub_2542CF404();
}

uint64_t sub_2542CF77C(uint64_t a1)
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  v11 = OUTLINED_FUNCTION_135();
  v12(v11);
  _Block_release(v5);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_195();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

id CarrySettings.MessageChannel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.MessageChannel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarrySettings.MessageChannel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2542CFAE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_171(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_2542DAB80(a4, a2);
  return sub_2543A20E8();
}

uint64_t CarrySettings.MessageChannel.prewarm()()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v0;
  v2 = sub_2543A1FB8();
  v1[3] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_146();
  v4 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542CFC5C()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_50();
  v2(v1);
  v3 = sub_2543A1F98();
  v4 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v4))
  {
    *OUTLINED_FUNCTION_157() = 0;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_37();
  }

  v10 = OUTLINED_FUNCTION_46();
  v11(v10);
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_2542CFD70;

  return sub_2542C867C();
}

uint64_t sub_2542CFD70()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_176();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_167();
  if (!v0)
  {
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t CarrySettings.MessageChannel.invalidate()()
{
  OUTLINED_FUNCTION_28();
  v1[11] = v0;
  v2 = sub_2543A1FB8();
  v1[12] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[13] = v3;
  v1[14] = OUTLINED_FUNCTION_146();
  v4 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542CFF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_94();
  a22 = v24;
  v27 = OUTLINED_FUNCTION_50();
  v28(v27);
  v29 = sub_2543A1F98();
  v30 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v30))
  {
    *OUTLINED_FUNCTION_157() = 0;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_37();
  }

  v37 = v24[13];
  v36 = v24[14];
  v38 = v24[11];
  v39 = v24[12];

  (*(v37 + 8))(v36, v39);
  v40 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache;
  OUTLINED_FUNCTION_97(v38 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_cache, (v24 + 2));
  v41 = *(v38 + v40);
  swift_beginAccess();
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF360, &qword_2543A6910);
  sub_2543A27A8();
  swift_endAccess();
  swift_unknownObjectWeakInit();
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = sub_2543A3398();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v42 | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v41 + 32);
    v44 = ~v47;
    v43 = v41 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & *(v41 + 64);
    v46 = v41;
  }

  v50 = (v44 + 64) >> 6;
  v51 = sub_2543A2768();
  v52 = 0;
  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v53 = v52;
    v54 = v45;
    v55 = v52;
    if (!v45)
    {
      break;
    }

LABEL_14:
    v56 = (v54 - 1) & v54;
    v57 = *(*(v46 + 56) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
    if (!v57)
    {
LABEL_20:
      v60 = v24[11];
      sub_2542D6060(v46);

      MEMORY[0x259C0AE60](v24 + 8);
      v24[15] = *(v60 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_channelLoader);

      OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_48();

      return MEMORY[0x2822009F8](v51);
    }

    while (1)
    {
      a12 = v57;
      sub_2542D0288(&a12, (v24 + 8));

      v52 = v55;
      v45 = v56;
      if ((v46 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_2543A33C8())
      {
        v59 = v58;
        swift_unknownObjectRelease();
        v24[10] = v59;
        sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
        swift_dynamicCast();
        v57 = v24[9];
        v55 = v52;
        v56 = v45;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v50)
    {
      goto LABEL_20;
    }

    v54 = *(v43 + 8 * v55);
    ++v53;
    if (v54)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](v51);
}

uint64_t sub_2542D0220()
{
  OUTLINED_FUNCTION_28();
  sub_2542D4850();

  OUTLINED_FUNCTION_27();

  return v0();
}

void *sub_2542D0288(void **a1, uint64_t a2)
{
  v4 = sub_2543A1FB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  [v9 stopWithNotice_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = &HPSHomeKitSetupCompleteNotification;
  if (Strong)
  {
    v12 = Strong;
    (*(v5 + 16))(v8, Strong + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger, v4);

    v13 = v9;
    v14 = sub_2543A1F98();
    v15 = sub_2543A3008();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25[1] = v2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25[0] = v4;
      v19 = v18;
      *v17 = 138412290;
      v20 = [v13 member];
      *(v17 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_2542B7000, v14, v15, "Simulating lost event for %@", v17, 0xCu);
      sub_2542DA948(v19, &unk_27F5DF308);
      v21 = v19;
      v4 = v25[0];
      MEMORY[0x259C0AD90](v21, -1, -1);
      MEMORY[0x259C0AD90](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v11 = &HPSHomeKitSetupCompleteNotification;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;

    v24 = [v9 v11[419]];
    v25[9] = v24;
    sub_2543A2048();
  }

  return result;
}

uint64_t CarrySettings.MessageChannel.sendDataModelUpdate(withData:to:)()
{
  OUTLINED_FUNCTION_28();
  v1[138] = v0;
  v1[137] = v2;
  v1[136] = v3;
  v1[135] = v4;
  v5 = sub_2543A1FB8();
  v1[139] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[140] = v6;
  v1[141] = OUTLINED_FUNCTION_140();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v7 = sub_2543A1F88();
  v1[144] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[145] = v8;
  v1[146] = OUTLINED_FUNCTION_140();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2542D0668(uint64_t a1)
{
  v2 = v1[149];
  v3 = v1[145];
  v36 = v1[144];
  v37 = v1[148];
  v4 = v1[143];
  v5 = v1[140];
  v35 = v1[139];
  v6 = v1[138];
  v38 = v1[137];
  v7 = v1[136];
  v8 = v1[135];
  sub_2543A1F78();
  OUTLINED_FUNCTION_67();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  OUTLINED_FUNCTION_63();
  v10 = swift_allocObject();
  v1[150] = v10;
  *(v10 + 16) = &unk_2543A6928;
  *(v10 + 24) = v9;
  v11 = v6;
  sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
  OUTLINED_FUNCTION_163();
  swift_asyncLet_begin();
  v12 = objc_allocWithZone(type metadata accessor for CarrySettings.DataModelUpdateRequest());
  v13 = OUTLINED_FUNCTION_164();
  sub_2542D61B4(v13, v7);
  v1[151] = CarrySettings.DataModelUpdateRequest.init(data:)(v8, v7);
  v14 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger;
  v1[152] = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger;
  v15 = *(v5 + 16);
  v1[153] = v15;
  v1[154] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v4, v11 + v14, v35);
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v1[155] = v17;
  v1[156] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v37, v2, v36);
  v18 = v38;
  v19 = sub_2543A1F98();
  v20 = sub_2543A3008();

  os_log_type_enabled(v19, v20);
  OUTLINED_FUNCTION_111();
  if (v21)
  {
    v39 = v19;
    v22 = v1[137];
    OUTLINED_FUNCTION_138();
    v34 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_87();
    *v20 = 136315394;
    OUTLINED_FUNCTION_0_3();
    sub_2542D620C(v23, v24);
    OUTLINED_FUNCTION_133();
    sub_2543A35A8();
    v25 = OUTLINED_FUNCTION_80();
    v11(v25);
    v26 = OUTLINED_FUNCTION_76();
    sub_2542D5198(v26);
    OUTLINED_FUNCTION_169();

    OUTLINED_FUNCTION_24();
    *v34 = v22;
    v27 = v22;
    OUTLINED_FUNCTION_188(&dword_2542B7000, v39, v20, "%s Sending data to target %@");
    sub_2542DA948(v34, &unk_27F5DF308);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_32();

    v28 = *(v8 + 8);
    v28(v18, v16);
  }

  else
  {

    v29 = OUTLINED_FUNCTION_80();
    v11(v29);
    v28 = *(v8 + 8);
    v30 = OUTLINED_FUNCTION_76();
    v28(v30, v31);
  }

  v1[158] = v11;
  v1[157] = v28;
  v32 = OUTLINED_FUNCTION_15();

  return MEMORY[0x282200930](v32);
}

uint64_t sub_2542D0994()
{
  *(v1 + 1272) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_3(sub_2542D133C);
  }

  else
  {
    return OUTLINED_FUNCTION_1_3(sub_2542D09C0);
  }
}

uint64_t sub_2542D09C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_173();
  v5 = v3[137];
  v6 = v3[123];
  v3[160] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = v5;
  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_131();
  sub_2542D1B74(v10);
  sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
  OUTLINED_FUNCTION_77(&qword_27F5DF390);
  OUTLINED_FUNCTION_65();
  v3[161] = sub_2543A2DA8();

  v3[82] = v3;
  v3[87] = v4;
  v3[83] = sub_2542D0B24;
  OUTLINED_FUNCTION_158();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  OUTLINED_FUNCTION_56(v11);
  OUTLINED_FUNCTION_55(COERCE_DOUBLE(1107296256));
  v3[98] = &block_descriptor;
  OUTLINED_FUNCTION_185(v12, sel_sendRequest_members_withCompletionHandler_);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x282200938](v13);
}

uint64_t sub_2542D0B24()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1296) = *(v3 + 688);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542D0C20()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 968);
  v3 = *(v0 + 976);

  type metadata accessor for CarrySettings.DataModelUpdateResponse();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v48 = *(v0 + 1240);
    v40 = v4;
    v41 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    v46 = *(v0 + 1192);
    v6 = *(v0 + 1176);
    v43 = *(v0 + 1152);
    v7 = *(v0 + 1136);
    v8 = *(v0 + 1112);
    v9 = *(v0 + 1104);
    v10 = v3;
    v50 = v2;
    v11 = [v2 member];
    v12 = [v11 description];
    v39 = sub_2543A2878();

    v41(v7, v9 + v5, v8);
    v48(v6, v46, v43);
    v13 = v10;
    OUTLINED_FUNCTION_164();
    sub_2543A2768();
    v14 = sub_2543A1F98();
    LOBYTE(v7) = sub_2543A3008();

    v45 = v7;
    v15 = os_log_type_enabled(v14, v7);
    v16 = *(v0 + 1264);
    v47 = *(v0 + 1256);
    v49 = *(v0 + 1208);
    v17 = *(v0 + 1176);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1136);
    v21 = *(v0 + 1112);
    if (v15)
    {
      v44 = *(v0 + 1136);
      v22 = OUTLINED_FUNCTION_87();
      v38 = OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_101();
      *v22 = 136315650;
      OUTLINED_FUNCTION_0_3();
      sub_2542D620C(v23, v24);
      v42 = v21;
      v25 = OUTLINED_FUNCTION_189();
      v26 = v18 + 8;
      v27 = OUTLINED_FUNCTION_47();
      v16(v27);
      sub_2542D5198(v25);
      OUTLINED_FUNCTION_154();
      *(v22 + 4) = v17;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v40;
      *v38 = v40;
      *(v22 + 22) = 2080;
      v28 = v11;
      sub_2542D5198(v39);
      OUTLINED_FUNCTION_131();

      *(v22 + 24) = v19;
      _os_log_impl(&dword_2542B7000, v14, v45, "%s Received data model update response: %@ from %s", v22, 0x20u);
      sub_2542DA948(v38, &unk_27F5DF308);
      OUTLINED_FUNCTION_53();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_37();

      v30 = v42;
      v29 = v44;
    }

    else
    {

      v26 = v18 + 8;
      v36 = OUTLINED_FUNCTION_47();
      v16(v36);
      v29 = v20;
      v30 = v21;
    }

    v47(v29, v30);
    *(v0 + 1304) = v26;
    v35 = OUTLINED_FUNCTION_15();
  }

  else
  {
    v31 = *(v0 + 1208);
    v32 = sub_2542D6354();
    v33 = OUTLINED_FUNCTION_100(&unk_286647A28, v32);
    *(v0 + 1312) = v33;
    OUTLINED_FUNCTION_156(v33, v34, xmmword_2543A6830);

    v35 = OUTLINED_FUNCTION_15();
  }

  return MEMORY[0x282200920](v35);
}

uint64_t sub_2542D1014()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  (*(v0 + 1264))(*(v0 + 1192), *(v0 + 1152));

  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_195();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2542D133C()
{
  OUTLINED_FUNCTION_28();

  v1 = OUTLINED_FUNCTION_15();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_2542D1610(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v2 = v1[161];
  v3 = v1[160];
  v4 = v1[151];
  swift_willThrow();

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x282200920](v5);
}

uint64_t sub_2542D190C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D199C;

  return sub_2542C867C();
}

uint64_t sub_2542D199C()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_64();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2542D1A88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2542DB188;

  return v5();
}

void sub_2542D1B74(unint64_t a1)
{
  v2 = sub_2542EEECC(a1);
  v3 = sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
  v4 = sub_2542D6290(&qword_27F5DF390);
  v8[1] = MEMORY[0x259C098E0](v2, v3, v4);
  v5 = sub_254372808(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C09DA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2542D8060(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_2542D1C8C(uint64_t a1)
{
  result = MEMORY[0x259C098E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_2543A2768();
    sub_2542D8284(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t *sub_2542D1D4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_254372814();
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = a2;
  v11 = a3;

  return sub_25436B708(v8, v10, v11);
}

uint64_t CarrySettings.MessageChannel.sendInstallProfileRequest(withProfileData:context:to:)()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  *(v1 + 1104) = v0;
  *(v1 + 1096) = v4;
  *(v1 + 1088) = v5;
  *(v1 + 1080) = v6;
  v7 = sub_2543A1FB8();
  *(v1 + 1112) = v7;
  OUTLINED_FUNCTION_8(v7);
  *(v1 + 1120) = v8;
  *(v1 + 1128) = OUTLINED_FUNCTION_140();
  *(v1 + 1136) = swift_task_alloc();
  *(v1 + 1144) = swift_task_alloc();
  v9 = sub_2543A1F88();
  *(v1 + 1152) = v9;
  OUTLINED_FUNCTION_8(v9);
  *(v1 + 1160) = v10;
  *(v1 + 1168) = OUTLINED_FUNCTION_140();
  *(v1 + 1176) = swift_task_alloc();
  *(v1 + 1184) = swift_task_alloc();
  *(v1 + 1192) = swift_task_alloc();
  *(v1 + 1200) = *v3;
  *(v1 + 1216) = *(v3 + 16);
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2542D1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_172();
  v34 = v33[152];
  v35 = v33[151];
  v36 = v33[145];
  v70 = v33[149];
  v71 = v33[144];
  v37 = v33[140];
  v67 = v33[139];
  v69 = v33[143];
  v38 = v33[138];
  v72 = v33[148];
  v73 = v33[137];
  v65 = v33[135];
  v66 = v33[136];
  sub_2543A1F78();
  OUTLINED_FUNCTION_67();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  OUTLINED_FUNCTION_63();
  v40 = swift_allocObject();
  v33[153] = v40;
  *(v40 + 16) = &unk_2543A6960;
  *(v40 + 24) = v39;
  v41 = v38;
  sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
  OUTLINED_FUNCTION_163();
  swift_asyncLet_begin();
  v42 = objc_allocWithZone(type metadata accessor for CarrySettings.InstallProfileRequest());
  v43 = OUTLINED_FUNCTION_169();
  sub_2542D6430(v43, v35, v34);
  sub_2542D61B4(v65, v66);
  v33[154] = CarrySettings.InstallProfileRequest.init(profileData:variant:audienceIdentifier:)();
  v44 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger;
  v33[155] = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings14MessageChannel_logger;
  v46 = *(v37 + 16);
  v45 = v37 + 16;
  v33[156] = v46;
  v33[157] = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46(v69, &v41[v44], v67);
  v47 = *(v36 + 16);
  v33[158] = v47;
  v33[159] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v72, v70, v71);
  v48 = v73;
  v49 = sub_2543A1F98();
  v50 = sub_2543A3008();

  os_log_type_enabled(v49, v50);
  OUTLINED_FUNCTION_111();
  if (v51)
  {
    v74 = v49;
    v52 = v33[137];
    OUTLINED_FUNCTION_138();
    v68 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_87();
    *v50 = 136315394;
    OUTLINED_FUNCTION_0_3();
    sub_2542D620C(v53, v54);
    OUTLINED_FUNCTION_133();
    sub_2543A35A8();
    v55 = OUTLINED_FUNCTION_80();
    (v45)(v55);
    v56 = OUTLINED_FUNCTION_76();
    sub_2542D5198(v56);
    OUTLINED_FUNCTION_169();

    OUTLINED_FUNCTION_24();
    *v68 = v52;
    v57 = v52;
    OUTLINED_FUNCTION_188(&dword_2542B7000, v74, v50, "%s Sending install profile request to %@");
    sub_2542DA948(v68, &unk_27F5DF308);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_32();

    v58 = *(v65 + 8);
    v58(v48, v66);
  }

  else
  {

    v59 = OUTLINED_FUNCTION_80();
    (v45)(v59);
    v58 = *(v65 + 8);
    v60 = OUTLINED_FUNCTION_76();
    v58(v60, v61);
  }

  v33[161] = v45;
  v33[160] = v58;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_127();

  return MEMORY[0x282200930](v62);
}

uint64_t sub_2542D2288()
{
  *(v1 + 1296) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_3(sub_2542D2BA4);
  }

  else
  {
    return OUTLINED_FUNCTION_1_3(sub_2542D22B4);
  }
}

uint64_t sub_2542D22B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_173();
  v5 = v3[137];
  v6 = v3[123];
  v3[163] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = v5;
  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_131();
  sub_2542D1B74(v10);
  sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
  OUTLINED_FUNCTION_77(&qword_27F5DF390);
  OUTLINED_FUNCTION_65();
  v3[164] = sub_2543A2DA8();

  v3[82] = v3;
  v3[87] = v4;
  v3[83] = sub_2542D2418;
  OUTLINED_FUNCTION_158();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  OUTLINED_FUNCTION_56(v11);
  OUTLINED_FUNCTION_55(COERCE_DOUBLE(1107296256));
  v3[98] = &block_descriptor_38;
  OUTLINED_FUNCTION_185(v12, sel_sendRequest_members_withCompletionHandler_);
  OUTLINED_FUNCTION_181();

  return MEMORY[0x282200938](v13);
}

uint64_t sub_2542D2418()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1320) = *(v3 + 688);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542D2514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, os_log_t log, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_160();
  v34 = *(v33 + 1312);
  v35 = *(v33 + 968);
  v36 = *(v33 + 976);

  type metadata accessor for CarrySettings.InstallProfileResponse();
  OUTLINED_FUNCTION_106();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = v37;
    v39 = *(v33 + 1264);
    OUTLINED_FUNCTION_73();
    v40 = *(v33 + 1192);
    v41 = *(v33 + 1176);
    v42 = *(v33 + 1152);
    v43 = OUTLINED_FUNCTION_91();
    v44(v43);
    v39(v41, v40, v42);
    v45 = v36;
    v46 = v35;
    v47 = sub_2543A1F98();
    LOBYTE(v40) = sub_2543A3008();

    v75 = v40;
    loga = v47;
    v48 = os_log_type_enabled(v47, v40);
    v49 = *(v33 + 1280);
    v76 = *(v33 + 1288);
    v77 = *(v33 + 1232);
    v50 = *(v33 + 1176);
    v51 = *(v33 + 1160);
    v52 = *(v33 + 1136);
    v53 = *(v33 + 1112);
    if (v48)
    {
      v74 = *(v33 + 1112);
      v54 = OUTLINED_FUNCTION_87();
      v72 = v46;
      v55 = OUTLINED_FUNCTION_136();
      v79 = OUTLINED_FUNCTION_87();
      *v54 = 136315650;
      OUTLINED_FUNCTION_0_3();
      sub_2542D620C(v56, v57);
      v73 = v49;
      v58 = sub_2543A35A8();
      v59 = v51 + 8;
      v60 = OUTLINED_FUNCTION_93();
      v76(v60);
      sub_2542D5198(v58);
      OUTLINED_FUNCTION_154();
      *(v54 + 4) = v50;
      *(v54 + 12) = 2112;
      *(v54 + 14) = v38;
      *v55 = v38;
      *(v54 + 22) = 2112;
      v61 = v45;
      v62 = [v72 member];
      *(v54 + 24) = v62;
      v55[1] = v62;
      _os_log_impl(&dword_2542B7000, loga, v75, "%s Received install profile response: %@ from %@", v54, 0x20u);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF308, &unk_2543A6888);
      OUTLINED_FUNCTION_142(v63);
      OUTLINED_FUNCTION_43();
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_44();

      v73(v52, v74);
    }

    else
    {

      v59 = v51 + 8;
      v68 = OUTLINED_FUNCTION_93();
      v76(v68);
      v49(v52, v53);
    }

    *(v33 + 1328) = v59;
    OUTLINED_FUNCTION_15();
  }

  else
  {
    v64 = *(v33 + 1232);
    v65 = sub_2542D6354();
    v66 = OUTLINED_FUNCTION_100(&unk_286647A28, v65);
    *(v33 + 1336) = v66;
    OUTLINED_FUNCTION_156(v66, v67, xmmword_2543A6830);

    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_130();

  return MEMORY[0x282200920](v69);
}

uint64_t sub_2542D2878(uint64_t a1)
{
  OUTLINED_FUNCTION_89();
  (*(v1 + 1288))(*(v1 + 1192), *(v1 + 1152));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2542D2BA4()
{
  OUTLINED_FUNCTION_28();

  v1 = OUTLINED_FUNCTION_15();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_2542D2E4C(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v2 = v1[164];
  v3 = v1[163];
  v4 = v1[154];
  swift_willThrow();

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x282200920](v5);
}

uint64_t sub_2542D311C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB1A4;

  return sub_2542C867C();
}

uint64_t sub_2542D323C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return CarrySettings.MessageChannel.invalidate()();
}

uint64_t sub_2542D32CC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_2542D33AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return CarrySettings.MessageChannel.prewarm()();
}

uint64_t sub_2542D343C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return CarrySettings.MessageChannel.sendDataModelUpdate(withData:to:)();
}

uint64_t sub_2542D34EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return CarrySettings.MessageChannel.sendInstallProfileRequest(withProfileData:context:to:)();
}

uint64_t sub_2542D35AC(uint64_t a1)
{
  v2 = sub_2543A1F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, a1, v2, v7);
  swift_beginAccess();
  sub_2542D7D98(v9, v5);
  (*(v3 + 8))(v9, v2);
  return swift_endAccess();
}

uint64_t sub_2542D36E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  sub_2543A2768();
  LOBYTE(a1) = sub_2542D3744(a1, v3);

  return a1 & 1;
}

BOOL sub_2542D3744(uint64_t a1, uint64_t a2)
{
  v4 = sub_2543A1F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  v16 = a1;
  v8 = sub_2543A27F8();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_2542D620C(&qword_27F5DF530, MEMORY[0x277CC95F0]);
    v14 = sub_2543A2848();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

BOOL sub_2542D3948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_114();
  sub_2543A36E8();
  sub_2543A28C8();
  v6 = sub_2543A3728();
  v7 = ~(-1 << *(v3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(v3 + 48) + 16 * v8);
    if (*v11 == v5 && v11[1] == v4)
    {
      break;
    }

    v13 = sub_2543A3608();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_2542D3A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF528, &qword_2543A6C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_beginAccess();
  sub_2542D9F98(a1, v4);
  sub_2542DA948(v4, &qword_27F5DF528);
  return swift_endAccess();
}

uint64_t sub_2542D3AF4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2542D3B1C()
{
  v0 = sub_2542D3AF4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2542D3B54(uint64_t a1, uint64_t a2)
{
  v5 = sub_2543A1FB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  *(v2 + 112) = a1;
  v11[2] = 0x3C726564616F4CLL;
  v11[3] = 0xE700000000000000;
  v11[1] = sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
  sub_2542DAA2C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DF5B0, &unk_2543A6D80);
  v9 = sub_2543A2888();
  MEMORY[0x259C093D0](v9);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  sub_2543A1FA8();
  sub_2542D7A3C(a1, a2);
  (*(v6 + 32))(v2 + *(*v2 + 112), v8, v5);
  return v2;
}

uint64_t sub_2542D3D10(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  swift_defaultActor_initialize();
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = 2;
  *(v1 + 112) = v3;
  type metadata accessor for CarrySettings.SyncManager(0);
  sub_2542DAA2C(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF558, &qword_2543A6CF8);
  v11 = sub_2543A2888();
  MEMORY[0x259C093D0](v11);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  sub_2543A1FA8();
  sub_2542D7A3C(v3, v2);
  (*(v6 + 32))(v1 + *(*v1 + 112), v10, v4);
  return v1;
}

uint64_t sub_2542D3E9C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_2543A1FB8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542D3F6C);
}

uint64_t sub_2542D3F6C()
{
  v1 = v0[6];
  v2 = *(*v1 + 112);
  v39 = *(v0[8] + 16);
  v39(v0[10], v1 + v2, v0[7]);
  v3 = sub_2543A1F98();
  v4 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v4))
  {
    *OUTLINED_FUNCTION_157() = 0;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_37();
  }

  v10 = v0[8];
  v11 = v0[4];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_46();
  v12(v13);
  if (v11)
  {
    v38 = v12;
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[6];
  }

  else
  {
    v16 = v0[6];
    v15 = *(v16 + 112);
    if (!v15)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF568, &qword_2543A6D20);
      v34 = sub_2542DAB80(&qword_27F5DF570, &qword_27F5DF568);
      OUTLINED_FUNCTION_100(v33, v34);
      swift_willThrow();

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X1, X16 }
    }

    v38 = v12;
    v14 = *(v16 + 120);
  }

  v0[11] = v14;
  v17 = *(v16 + 128);
  v0[12] = v17;
  if (*(v16 + 136))
  {
    if (*(v16 + 136) == 1)
    {
      sub_2542DAA2C(v0[4], v0[5]);
      sub_2542DAB64(v17, 1);

      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X2, X16 }
    }

    v22 = v0[4];
    v21 = v0[5];
    v39(v0[9], v1 + v2, v0[7]);
    sub_2542DAA2C(v22, v21);
    v23 = sub_2543A1F98();
    v24 = sub_2543A3008();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_157();
      *v25 = 0;
      _os_log_impl(&dword_2542B7000, v23, v24, "Starting task", v25, 2u);
      OUTLINED_FUNCTION_82();
    }

    v26 = OUTLINED_FUNCTION_92();
    v38(v26);
    sub_2542D4900(v15, v14);
    v0[15] = v27;
    v28 = *(v16 + 128);
    *(v16 + 128) = v27;
    v29 = *(v16 + 136);
    *(v16 + 136) = 0;

    sub_2542DAA80(v28, v29);
    v30 = swift_task_alloc();
    v0[16] = v30;
    sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    *v30 = v0;
    v30[1] = sub_2542D44E4;
  }

  else
  {
    sub_2542DAA2C(v0[4], v0[5]);
    sub_2542DAB64(v17, 0);
    v20 = swift_task_alloc();
    v0[13] = v20;
    sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    *v20 = v0;
    v20[1] = sub_2542D43CC;
  }

  OUTLINED_FUNCTION_128();

  return MEMORY[0x282200430](v31);
}

uint64_t sub_2542D43CC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_2542D47D8;
  }

  else
  {
    v4 = sub_2542D4758;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542D44E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_2542D46B0;
  }

  else
  {
    v4 = sub_2542D45FC;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2542D45FC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 48);

  v2 = *(v0 + 24);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
  v4 = *(v1 + 136);
  *(v1 + 136) = 1;
  v5 = v2;
  sub_2542DAA80(v3, v4);

  OUTLINED_FUNCTION_64();

  return v6(v5);
}

uint64_t sub_2542D46B0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 48);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  v3 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_2542DAA80(v2, v3);
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_2542D4758()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 96);

  sub_2542DAA80(v1, 0);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_64();

  return v3(v2);
}

uint64_t sub_2542D47D8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 96);

  sub_2542DAA80(v1, 0);

  OUTLINED_FUNCTION_27();

  return v2();
}

void sub_2542D4850()
{
  v1 = *(v0 + 136);
  if (!v1)
  {
    v2 = *(v0 + 128);
    sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2C58();
    sub_2542DAA80(v2, 0);
    v1 = *(v0 + 136);
  }

  v3 = *(v0 + 128);
  *(v0 + 128) = 0;
  *(v0 + 136) = 2;

  sub_2542DAA80(v3, v1);
}

void sub_2542D4900(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_2542DAB80(&qword_27F5DF578, &qword_27F5DF280);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  swift_retain_n();

  sub_25434DBA4();
}

uint64_t sub_2542D4A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = sub_2543A1FB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2542D4AFC);
}

uint64_t sub_2542D4AFC()
{
  OUTLINED_FUNCTION_31();
  sub_2543A2C88();
  v3 = (*(v0 + 32) + **(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2542D4C3C;

  return v3(v0 + 16);
}

uint64_t sub_2542D4C3C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_167();
  if (v0)
  {
    v4 = sub_2542D4F10;
  }

  else
  {
    v4 = sub_2542D4D54;
  }

  return MEMORY[0x2822009F8](v4);
}

void sub_2542D4D54(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_50();
  v3(v2);
  v4 = *(v1 + 16);
  v5 = sub_2543A1F98();
  v6 = sub_2543A3008();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 64);
    v16 = *(v1 + 72);
    v8 = *(v1 + 56);
    v9 = OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_87();
    *v9 = 136315138;
    *(v1 + 24) = v4;
    sub_2542D6250(0, &qword_27F5DF370, 0x277CFD0D0);
    OUTLINED_FUNCTION_90();
    v10 = sub_2543A2888();
    v11 = sub_2542D5198(v10);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_2542B7000, v5, v6, "Task completed. Element = %s", v9, 0xCu);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_32();

    (*(v7 + 8))(v16, v8);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_76();
    v13(v12);
  }

  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2542D4F10()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_2542D4F6C()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
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

uint64_t sub_2542D5014(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542D504C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2542D5094(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2542D50A4()
{
  OUTLINED_FUNCTION_102();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t sub_2542D513C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v5 = a4(a1, a2);
  v6 = sub_2542D5198(v5);

  v8 = *a1;
  *v8 = v6;
  *a1 = v8 + 1;
  return result;
}

uint64_t sub_2542D5198(uint64_t a1)
{
  OUTLINED_FUNCTION_114();
  sub_2543A2768();
  OUTLINED_FUNCTION_139();
  v7 = sub_2542D5250(v4, v5, v6, 1, v3, v2);
  v8 = v12[0];
  if (v7)
  {
    v9 = v7;

    ObjectType = swift_getObjectType();
    v12[0] = v9;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v12[0] = v3;
    v12[1] = v2;
  }

  v10 = *v1;
  if (*v1)
  {
    sub_2542D62F0(v12, *v1);
    *v1 = v10 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
}

unint64_t sub_2542D5250(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2542D5350(a5, a6);
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
    result = sub_2543A32F8();
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

uint64_t sub_2542D5350(uint64_t a1, unint64_t a2)
{
  v3 = sub_2542D539C(a1, a2);
  sub_2542D54B4(&unk_286644BD0);
  return v3;
}

uint64_t sub_2542D539C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2543A2908())
  {
    result = sub_2542D5598(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2543A3288();
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
          result = sub_2543A32F8();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_2542D54B4(uint64_t result)
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

    result = sub_2542D5608(result, v7, 1, v3);
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

void *sub_2542D5598(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5A8, &qword_2543A6D78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2542D5608(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5A8, &qword_2543A6D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2542D56FC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25438E008(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF508, &qword_2543A6C38);
  sub_2543A3368();
  v6 = *(v13 + 48);
  v7 = sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  (*(v8 + 8))(v6 + *(v8 + 72) * v5, v7);
  v9 = *(*(v13 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF510, &qword_2543A6C40);
  OUTLINED_FUNCTION_0_3();
  sub_2542D620C(v10, v11);
  OUTLINED_FUNCTION_76();
  sub_2543A3388();
  *v2 = v13;
  return v9;
}

uint64_t sub_2542D5840(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_25438E094(a1);
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF598, &qword_2543A6D68);
      sub_2543A3368();
      v8 = v17;

      v13 = *(*(v17 + 56) + 8 * v16);
      sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
      sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
      sub_2542D6290(&qword_27F5DF390);
      sub_2543A3388();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2543A33B8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_2543A2768();
  v7 = sub_2543A31D8();
  v8 = sub_2542D5E38(v4, v7);

  v9 = sub_25438E094(v5);
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
    sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
    sub_2542D6290(&qword_27F5DF390);
    sub_2543A3388();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

double sub_2542D5A7C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v5 = sub_25438E0D0(a2, a3);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF540, &unk_2543A6CD0);
    sub_2543A3368();

    sub_2542DA8C0((*(v9 + 56) + 40 * v7), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF548, &qword_2543B4150);
    sub_2543A3388();
    *v3 = v9;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_2542D5B78(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_2543A31D8();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_2542D5E38(v7, v8 + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_2543196FC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return;
  }

  __break(1u);
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

uint64_t sub_2542D5C84()
{
  MEMORY[0x259C0AE60](v0 + 16);
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2542D5CBC(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_196();

  return sub_2542CECA8(v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2542D5D9C(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_196();

  return sub_2542CF258(v4, v5, v6, v7, v8);
}

uint64_t sub_2542D5E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5A0, &qword_2543A6D70);
    v2 = sub_2543A3408();
    v17 = v2;
    sub_2543A3398();
    while (1)
    {
      v3 = sub_2543A33C8();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
      swift_dynamicCast();
      sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_25439EA60(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_2543A30A8();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2542D6068()
{
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2542D609C()
{
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_66(v1);

  return sub_2542D190C();
}

uint64_t sub_2542D6124()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_95();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_1(v1);

  return v4(v3);
}

uint64_t sub_2542D61B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2542D620C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2542D6250(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2542D6290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2542D6250(255, &qword_27F5DF388, 0x277CFD088);
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2542D62F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2542D6354()
{
  result = qword_27F5DF3A0;
  if (!qword_27F5DF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF3A0);
  }

  return result;
}

uint64_t sub_2542D63A8()
{
  OUTLINED_FUNCTION_28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_66(v1);

  return sub_2542D311C();
}

uint64_t sub_2542D6430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_2543A2768();
  }

  return result;
}

uint64_t sub_2542D6478(uint64_t a1)
{
  result = sub_2542D6290(&qword_27F5DF390);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of CarrySettingsNetworking.invalidate()(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_22(v3);

  return v7(v5);
}

uint64_t dispatch thunk of CarrySettingsNetworking.prewarm()(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_42();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_22(v3);

  return v7(v5);
}

uint64_t dispatch thunk of CarrySettingsNetworking.sendDataModelUpdate(withData:to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_89();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_42();
  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_39(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_66(v13);

  return v16(v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of CarrySettingsNetworking.sendInstallProfileRequest(withProfileData:context:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_42();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_39(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_66(v14);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2542D6978(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2542D6DAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2542D6A10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((v9 + ((v7 + 16) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2542D6B68);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        return v8 + (v12 | v18) + 1;
      default:
        break;
    }
  }

  v19 = (a1 + v7 + 16) & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_2542D6B7C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        return;
      case 2:
        *&a1[v12] = v17;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x2542D6D6CLL);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = &a1[v10 + 16] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

unint64_t sub_2542D6DAC()
{
  result = qword_27F5DF438;
  if (!qword_27F5DF438)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F5DF438);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2542D6E2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_2542D6E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2542D6ED0(uint64_t a1)
{
  result = type metadata accessor for CarrySettings.MessageChannel.Role(319);
  if (v2 <= 0x3F)
  {
    result = sub_2543A1FB8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CarrySettings.MessageChannel.channel(_:didAdd:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x210))();
}

uint64_t dispatch thunk of CarrySettings.MessageChannel.consumer(_:shouldStartSessionWithMember:request:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x208);
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_39(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_66(v10);

  return v13(v7, v5, v3);
}

uint64_t sub_2542D7230()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_41();
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t dispatch thunk of CarrySettings.MessageChannel.producer(_:shouldStartSessionWithMember:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_102();
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x238);
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_22(v4);

  return v8(v6);
}

uint64_t sub_2542D7584(uint64_t a1)
{
  sub_2542D760C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2542D7654(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_2542D760C()
{
  if (!qword_27F5DF468)
  {
    v0 = sub_2543A1F88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5DF468);
    }
  }
}

void sub_2542D7654(uint64_t a1)
{
  if (!qword_27F5DF470)
  {
    sub_2543A1F88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5DF478, &qword_2543A6BA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5DF470);
    }
  }
}

uint64_t sub_2542D773C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2542D77A0()
{

  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542D77DC()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542D78DC(uint64_t a1)
{
  v3 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_2542D32CC;

  return sub_2542CC984(a1, v9, v10, v11, v1 + v5, v13, v14, v15);
}

uint64_t sub_2542D7A3C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2542D7A4C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22(v2);

  return sub_2542CBF78(v4, v5, v0);
}

uint64_t sub_2542D7ADC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22(v2);

  return sub_2542CC1F0(v4, v5, v0);
}

uint64_t sub_2542D7B6C()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_41();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_64();

  return v5(v2);
}

uint64_t sub_2542D7C58(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_177();
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_132();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39(v2);
  *v3 = v4;
  v3[1] = sub_2542DB160;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_196();

  return sub_2542CB6DC(v5, v6, v7, v8);
}

uint64_t sub_2542D7D40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

BOOL sub_2542D7D98(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2543A1F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  v27 = a2;
  v9 = sub_2543A27F8();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2542D8E08(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2542D620C(&qword_27F5DF530, MEMORY[0x277CC95F0]);
    v15 = sub_2543A2848();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_2542D8060(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_2543A2768();
    v9 = sub_2543A31E8();

    if (v9)
    {

      sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_2543A31D8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_2542D83D0(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_2542D8904(v17 + 1);
        }

        v18 = v8;
        sub_2542D8D84(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
    v11 = sub_2543A30A8();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_2542D9094(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_2543A30B8();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

BOOL sub_2542D8284(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2543A36E8();
  sub_2543A28C8();
  v8 = sub_2543A3728();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2543A3608() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_2543A2768();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_2543A2768();
  sub_2542D91F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2542D83D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
    v2 = sub_2543A3258();
    v15 = v2;
    sub_2543A31C8();
    while (1)
    {
      if (!sub_2543A31F8())
      {

        return v2;
      }

      sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2542D8904(v3 + 1);
      }

      v2 = v15;
      result = sub_2543A30A8();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2542D85AC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2543A1F88();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF538, &qword_2543A6C98);
  result = sub_2543A3248();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_25439F45C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
    result = sub_2543A27F8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2542D8904(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
  result = sub_2543A3248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_25439F45C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_2543A30A8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2542D8B28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF550, &unk_2543A6CE0);
  result = sub_2543A3248();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_25439F45C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2543A36E8();
    sub_2543A28C8();
    result = sub_2543A3728();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2542D8D84(uint64_t a1, uint64_t a2)
{
  sub_2543A30A8();
  result = sub_2543A31B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2542D8E08(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_2543A1F88();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2542D85AC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2542D983C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
      v14 = sub_2543A27F8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2542D620C(&qword_27F5DF530, MEMORY[0x277CC95F0]);
        v16 = sub_2543A2848();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_2542D9360();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_2543A3638();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_2542D9094(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2542D8904(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_2542D9B54(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_2543A30A8();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_2543A30B8();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2542D9594();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_2543A3638();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_2542D91F8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2542D8B28(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2542D9D64(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2543A36E8();
      sub_2543A28C8();
      result = sub_2543A3728();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2543A3608() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2542D96E4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2543A3638();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2542D9360()
{
  v1 = v0;
  v2 = sub_2543A1F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF538, &qword_2543A6C98);
  v6 = *v0;
  v7 = sub_2543A3238();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

id sub_2542D9594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
  v2 = *v0;
  v3 = sub_2543A3238();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2542D96E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF550, &unk_2543A6CE0);
  v2 = *v0;
  v3 = sub_2543A3238();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_2543A2768();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2542D983C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2543A1F88();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF538, &qword_2543A6C98);
  v7 = sub_2543A3248();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
        result = sub_2543A27F8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2542D9B54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
  result = sub_2543A3248();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_2543A30A8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2542D9D64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF550, &unk_2543A6CE0);
  result = sub_2543A3248();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2543A36E8();
        sub_2543A2768();
        sub_2543A28C8();
        result = sub_2543A3728();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2542D9F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_2543A1F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  v25 = a1;
  v9 = sub_2543A27F8();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_2542D620C(&qword_27F5DF530, MEMORY[0x277CC95F0]);
    v13 = sub_2543A2848();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2542D9360();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_2542DA20C(v11);
  v14 = 0;
  *v16 = v26;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

void sub_2542DA20C(int64_t a1)
{
  v3 = sub_2543A1F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_2543A31A8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_2542D620C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
        v23 = sub_2543A27F8();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t objectdestroy_124Tm()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542DA5DC(uint64_t a1)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_177();
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_132();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39(v2);
  *v3 = v4;
  v3[1] = sub_2542DB160;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_196();

  return sub_2542CA180(v5, v6, v7, v8);
}

uint64_t sub_2542DA6C4()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_175();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2542DA710(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39(v2);
  *v3 = v4;
  v3[1] = sub_2542DB160;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_196();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2542DA7BC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542DA814()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_195();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2542DA8C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2542DA8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542DA948(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_171(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_26();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2542DA99C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_95();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_1(v1);

  return v4(v3);
}

uint64_t sub_2542DAA2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2542DAA80(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_2542DAA9C()
{

  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542DAAD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_95();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_2542D32CC;
  v3 = OUTLINED_FUNCTION_16();

  return sub_2542C899C(v3, v4);
}

id sub_2542DAB64(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_2542DAB80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_171(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2542DABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_2542DAC88;

  return sub_2542D4A34(a2, a3, a4, a5, a6);
}

uint64_t sub_2542DAC88()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2542DAD80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542DADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_89();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_17(v10);
  *v11 = v12;
  v11[1] = sub_2542DB160;
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_181();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

unint64_t sub_2542DAE80()
{
  result = qword_27F5DF580;
  if (!qword_27F5DF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF580);
  }

  return result;
}

uint64_t sub_2542DAED4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2542DAFC8;

  return v5(v2 + 32);
}

uint64_t sub_2542DAFC8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_2542DB0BC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_95();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return swift_willThrow();
}

void OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
}

uint64_t OUTLINED_FUNCTION_20()
{
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *(v12 + 4) = v10;
  *(v12 + 12) = 2112;
  *(v12 + 14) = v11;
  *a10 = v11;
  *(v12 + 22) = 2080;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_24()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v0;
}

void OUTLINED_FUNCTION_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_33()
{
}

void OUTLINED_FUNCTION_34()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_43()
{

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_44()
{

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_45(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x259C0AD90);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t result)
{
  v1[102] = result;
  v1[99] = v2;
  v1[95] = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v19 = v17;
  *(v18 + 22) = 2080;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_58(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_t log)
{

  _os_log_impl(a1, log, a14, a4, v21, 0x20u);
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_60()
{

  JUMPOUT(0x259C0AD90);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_74(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = v1;
}

uint64_t OUTLINED_FUNCTION_77(unint64_t *a1)
{

  return sub_2542D6290(a1);
}

void OUTLINED_FUNCTION_79()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x259C0AD90);
}

void OUTLINED_FUNCTION_82()
{

  JUMPOUT(0x259C0AD90);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_98(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_2542D5198(v0);
}

uint64_t OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1)
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_107(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_108(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_112(uint64_t a1, void *a2)
{
  *a2 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_113()
{

  return sub_2542D5198(v0);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 14) = v10;
  *(v11 + 22) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_137()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_2542D5198(v0);
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return sub_2543A2858();
}

BOOL OUTLINED_FUNCTION_145(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return os_log_type_enabled(v21, v20);
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return sub_2542D5198(a1);
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_2543A35A8();
}

uint64_t OUTLINED_FUNCTION_149()
{

  return sub_2543A1FB8();
}

id OUTLINED_FUNCTION_150(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

id OUTLINED_FUNCTION_151()
{

  return v0;
}

id OUTLINED_FUNCTION_152()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_153()
{
}

uint64_t OUTLINED_FUNCTION_154()
{
}

uint64_t OUTLINED_FUNCTION_155()
{

  return sub_2543A2888();
}

uint64_t OUTLINED_FUNCTION_156(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_157()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_158()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_2543A2048();
}

uint64_t OUTLINED_FUNCTION_183(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_184(uint64_t a1)
{

  return swift_willThrow();
}

id OUTLINED_FUNCTION_185(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_2543A1FB8();
}

uint64_t OUTLINED_FUNCTION_187(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_188(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_189()
{

  return sub_2543A35A8();
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_191()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_192@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return swift_continuation_throwingResume();
}

uint64_t sub_2542DC3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542DC370(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2542DC3F4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2542DC420(uint64_t a1)
{
  v2 = sub_2542DCDB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DC45C(uint64_t a1)
{
  v2 = sub_2542DCDB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542DC498(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69676E6972 && a2 == 0xE700000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646573756170 && a2 == 0xE600000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463)
      {

        return 3;
      }

      else
      {
        v9 = sub_2543A3608();

        if (v9)
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

uint64_t sub_2542DC5FC(char a1)
{
  result = 0x676E69676E6972;
  switch(a1)
  {
    case 1:
      result = 0x657669746361;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x656E6E6F63736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2542DC69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542DC498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542DC6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542DC5F4();
  *a1 = result;
  return result;
}

uint64_t sub_2542DC70C(uint64_t a1)
{
  v2 = sub_2542DCCB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DC748(uint64_t a1)
{
  v2 = sub_2542DCCB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542DC784(uint64_t a1)
{
  v2 = sub_2542DCD08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DC7C0(uint64_t a1)
{
  v2 = sub_2542DCD08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542DC7FC(uint64_t a1)
{
  v2 = sub_2542DCD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DC838(uint64_t a1)
{
  v2 = sub_2542DCD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542DC874(uint64_t a1)
{
  v2 = sub_2542DCE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DC8B0(uint64_t a1)
{
  v2 = sub_2542DCE04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPCall.Status.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5C0, &qword_2543A6D90);
  OUTLINED_FUNCTION_3();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0();
  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5C8, &qword_2543A6D98);
  OUTLINED_FUNCTION_3();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5D0, &qword_2543A6DA0);
  OUTLINED_FUNCTION_3();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5D8, &qword_2543A6DA8);
  OUTLINED_FUNCTION_3();
  v40 = v16;
  v41 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5E0, &qword_2543A6DB0);
  OUTLINED_FUNCTION_3();
  v22 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542DCCB4();
  sub_2543A3778();
  switch(v26)
  {
    case 1:
      OUTLINED_FUNCTION_11_0();
      v36 = sub_2542DCDB0();
      v28 = v42;
      OUTLINED_FUNCTION_7_0(&type metadata for HPCall.Status.ActiveCodingKeys, &v52, v37, v38, v36);
      v32 = v43;
      v31 = v44;
      goto LABEL_6;
    case 2:
      v53 = 2;
      v27 = sub_2542DCD5C();
      v28 = v45;
      OUTLINED_FUNCTION_7_0(&type metadata for HPCall.Status.PausedCodingKeys, &v53, v29, v30, v27);
      v32 = v46;
      v31 = v47;
      goto LABEL_6;
    case 3:
      v54 = 3;
      v33 = sub_2542DCD08();
      v28 = v48;
      OUTLINED_FUNCTION_7_0(&type metadata for HPCall.Status.DisconnectedCodingKeys, &v54, v34, v35, v33);
      v32 = v49;
      v31 = v50;
LABEL_6:
      (*(v32 + 8))(v28, v31);
      break;
    default:
      v51 = 0;
      sub_2542DCE04();
      sub_2543A3508();
      (*(v40 + 8))(v19, v41);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_2542DCCB4()
{
  result = qword_27F5DF5E8;
  if (!qword_27F5DF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF5E8);
  }

  return result;
}

unint64_t sub_2542DCD08()
{
  result = qword_27F5DF5F0;
  if (!qword_27F5DF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF5F0);
  }

  return result;
}

unint64_t sub_2542DCD5C()
{
  result = qword_27F5DF5F8;
  if (!qword_27F5DF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF5F8);
  }

  return result;
}

unint64_t sub_2542DCDB0()
{
  result = qword_27F5DF600;
  if (!qword_27F5DF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF600);
  }

  return result;
}

unint64_t sub_2542DCE04()
{
  result = qword_27F5DF608;
  if (!qword_27F5DF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF608);
  }

  return result;
}

uint64_t HPCall.Status.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t HPCall.Status.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v75 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF610, &qword_2543A6DB8);
  OUTLINED_FUNCTION_3();
  v74 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0();
  v77 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF618, &qword_2543A6DC0);
  OUTLINED_FUNCTION_3();
  v71 = v7;
  v72 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0();
  v73 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF620, &qword_2543A6DC8);
  OUTLINED_FUNCTION_3();
  v69 = v11;
  v70 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF628, &qword_2543A6DD0);
  OUTLINED_FUNCTION_3();
  v68 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF630, &qword_2543A6DD8);
  OUTLINED_FUNCTION_3();
  v76 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542DCCB4();
  v25 = v79;
  sub_2543A3768();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v65 = v15;
  v66 = v19;
  v67 = v14;
  v26 = v77;
  v27 = v78;
  v79 = a1;
  v28 = v24;
  v29 = sub_2543A34E8();
  sub_2542DE280(v29, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_8;
  }

  v64 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2542DD4C8);
  }

  v34 = *(v31 + v32);
  sub_2542DF1BC(v32 + 1, v33 >> 1, v30, v31, v32, v33);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_8:
    v47 = v76;
    v48 = sub_2543A32E8();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
    *v50 = &type metadata for HPCall.Status;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v47 + 8))(v28, v20);
    a1 = v79;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = v75;
  v40 = v76;
  v63 = v34;
  v41 = v34;
  v42 = v74;
  switch(v41)
  {
    case 1:
      OUTLINED_FUNCTION_11_0();
      v59 = sub_2542DCDB0();
      v53 = v67;
      OUTLINED_FUNCTION_8_0(&type metadata for HPCall.Status.ActiveCodingKeys, &v81, v60, v61, v59);
      swift_unknownObjectRelease();
      v57 = v69;
      v56 = v70;
      goto LABEL_18;
    case 2:
      v82[0] = 2;
      v52 = sub_2542DCD5C();
      v53 = v73;
      OUTLINED_FUNCTION_8_0(&type metadata for HPCall.Status.PausedCodingKeys, v82, v54, v55, v52);
      swift_unknownObjectRelease();
      v57 = v71;
      v56 = v72;
LABEL_18:
      (*(v57 + 8))(v53, v56);
      goto LABEL_19;
    case 3:
      v82[1] = 3;
      sub_2542DCD08();
      v58 = v64;
      sub_2543A3458();
      if (v58)
      {
        (*(v40 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v79;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v42 + 8))(v26, v27);
LABEL_19:
      (*(v40 + 8))(v28, v20);
      *v39 = v63;
      result = __swift_destroy_boxed_opaque_existential_0(v79);
      break;
    default:
      v80 = 0;
      v43 = sub_2542DCE04();
      v44 = v66;
      OUTLINED_FUNCTION_8_0(&type metadata for HPCall.Status.RingingCodingKeys, &v80, v45, v46, v43);
      swift_unknownObjectRelease();
      (*(v68 + 8))(v44, v65);
      goto LABEL_19;
  }

  return result;
}

uint64_t HPCall.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HPCall.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HPCall(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t HPCall.dateConnected.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HPCall(0) + 24);

  return sub_2542DE304(v3, a1);
}

uint64_t HPCall.init(uuid:status:dateConnected:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for HPCall(0);
  *(a4 + *(v9 + 20)) = v7;
  v10 = a4 + *(v9 + 24);

  return sub_2542DE374(a3, v10);
}

BOOL static HPCall.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2543A1F38();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF640, &qword_2543A6DF0);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  if ((sub_2543A1F68() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for HPCall(0);
  if (*(a1 + *(v18 + 20)) != *(a2 + *(v18 + 20)))
  {
    return 0;
  }

  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_2542DE304(a1 + v19, v17);
  sub_2542DE304(a2 + v19, &v17[v20]);
  OUTLINED_FUNCTION_14_0(v17);
  if (v21)
  {
    OUTLINED_FUNCTION_14_0(&v17[v20]);
    if (v21)
    {
      sub_2542DE3E4(v17, &qword_27F5DF638, &unk_2543B0DF0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_2542DE304(v17, v13);
  OUTLINED_FUNCTION_14_0(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
LABEL_11:
    sub_2542DE3E4(v17, &qword_27F5DF640, &qword_2543A6DF0);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  OUTLINED_FUNCTION_1_5();
  sub_2542DE538(v23, v24, MEMORY[0x277CC9598]);
  v25 = sub_2543A2848();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v13, v4);
  sub_2542DE3E4(v17, &qword_27F5DF638, &unk_2543B0DF0);
  return (v25 & 1) != 0;
}

uint64_t sub_2542DD938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6E6F4365746164 && a2 == 0xED00006465746365)
    {

      return 2;
    }

    else
    {
      v8 = sub_2543A3608();

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

uint64_t sub_2542DDA8C(unsigned __int8 a1)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a1);
  return sub_2543A3728();
}

uint64_t sub_2542DDAD4(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 0x737574617473;
  }

  return 0x6E6E6F4365746164;
}

uint64_t sub_2542DDB5C(uint64_t a1)
{
  v2 = *v1;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v2);
  return sub_2543A3728();
}

uint64_t sub_2542DDBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542DD938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542DDBD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542DDA4C();
  *a1 = result;
  return result;
}

uint64_t sub_2542DDBF8(uint64_t a1)
{
  v2 = sub_2542DE43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542DDC34(uint64_t a1)
{
  v2 = sub_2542DE43C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPCall.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF650, &qword_2543A6DF8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542DE43C();
  sub_2543A3778();
  v16[15] = 0;
  sub_2543A1F88();
  OUTLINED_FUNCTION_4_0();
  sub_2542DE538(v11, v12, MEMORY[0x277CC95F8]);
  OUTLINED_FUNCTION_12_1();
  sub_2543A3578();
  if (!v2)
  {
    v16[14] = *(v3 + *(type metadata accessor for HPCall(0) + 20));
    OUTLINED_FUNCTION_11_0();
    sub_2542DE490();
    sub_2543A3578();
    v16[12] = 2;
    sub_2543A1F38();
    OUTLINED_FUNCTION_1_5();
    sub_2542DE538(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_12_1();
    sub_2543A3538();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HPCall.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v36 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v34 = v10 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF678, &qword_2543A6E00);
  OUTLINED_FUNCTION_3();
  v32 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for HPCall(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542DE43C();
  sub_2543A3768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v6;
  v30 = v17;
  v18 = v33;
  v39 = 0;
  OUTLINED_FUNCTION_4_0();
  sub_2542DE538(v19, v20, MEMORY[0x277CC9618]);
  v21 = v34;
  OUTLINED_FUNCTION_13_0(v36, &v39);
  (*(v18 + 32))(v30, v21, v36);
  OUTLINED_FUNCTION_11_0();
  sub_2542DE4E4();
  OUTLINED_FUNCTION_13_0(&type metadata for HPCall.Status, v38);
  v34 = v13;
  v22 = v30;
  *(v30 + *(v13 + 20)) = v38[1];
  sub_2543A1F38();
  v37 = 2;
  OUTLINED_FUNCTION_1_5();
  sub_2542DE538(v23, v24, MEMORY[0x277CC95A0]);
  v25 = v29;
  sub_2543A3498();
  v26 = OUTLINED_FUNCTION_5_0();
  v27(v26);
  sub_2542DE374(v25, v22 + *(v34 + 24));
  sub_2542DE580(v22, v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2542DE5E4(v22);
}

uint64_t sub_2542DE254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HPCall.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_2542DE280(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_6_0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for HPCall(uint64_t a1)
{
  result = qword_27F5DF6A0;
  if (!qword_27F5DF6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542DE304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542DE374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542DE3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2542DE43C()
{
  result = qword_27F5DF658;
  if (!qword_27F5DF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF658);
  }

  return result;
}

unint64_t sub_2542DE490()
{
  result = qword_27F5DF668;
  if (!qword_27F5DF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF668);
  }

  return result;
}

unint64_t sub_2542DE4E4()
{
  result = qword_27F5DF688;
  if (!qword_27F5DF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF688);
  }

  return result;
}

uint64_t sub_2542DE538(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2542DE580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPCall(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542DE5E4(uint64_t a1)
{
  v2 = type metadata accessor for HPCall(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2542DE644()
{
  result = qword_27F5DF698;
  if (!qword_27F5DF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF698);
  }

  return result;
}

uint64_t sub_2542DE6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2543A1F88();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 252)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 4)
      {
        return v9 - 3;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2542DE7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2543A1F88();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 252)
    {
      *(a1 + *(a4 + 20)) = a2 + 3;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2542DE874(uint64_t a1)
{
  sub_2543A1F88();
  if (v1 <= 0x3F)
  {
    sub_2542DE900(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2542DE900(uint64_t a1)
{
  if (!qword_27F5DF6B0)
  {
    sub_2543A1F38();
    v1 = sub_2543A30C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5DF6B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HPCall.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HPCall.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542DEACCLL);
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

uint64_t getEnumTagSinglePayload for CarrySettings.ProfileVariant(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2542DEBA4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542DEC70);
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

unint64_t sub_2542DECEC()
{
  result = qword_27F5DF6B8;
  if (!qword_27F5DF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6B8);
  }

  return result;
}

unint64_t sub_2542DED44()
{
  result = qword_27F5DF6C0;
  if (!qword_27F5DF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6C0);
  }

  return result;
}

unint64_t sub_2542DED9C()
{
  result = qword_27F5DF6C8;
  if (!qword_27F5DF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6C8);
  }

  return result;
}

unint64_t sub_2542DEDF4()
{
  result = qword_27F5DF6D0;
  if (!qword_27F5DF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6D0);
  }

  return result;
}

unint64_t sub_2542DEE4C()
{
  result = qword_27F5DF6D8;
  if (!qword_27F5DF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6D8);
  }

  return result;
}

unint64_t sub_2542DEEA4()
{
  result = qword_27F5DF6E0;
  if (!qword_27F5DF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6E0);
  }

  return result;
}

unint64_t sub_2542DEEFC()
{
  result = qword_27F5DF6E8;
  if (!qword_27F5DF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6E8);
  }

  return result;
}

unint64_t sub_2542DEF54()
{
  result = qword_27F5DF6F0;
  if (!qword_27F5DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6F0);
  }

  return result;
}

unint64_t sub_2542DEFAC()
{
  result = qword_27F5DF6F8;
  if (!qword_27F5DF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF6F8);
  }

  return result;
}

unint64_t sub_2542DF004()
{
  result = qword_27F5DF700;
  if (!qword_27F5DF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF700);
  }

  return result;
}

unint64_t sub_2542DF05C()
{
  result = qword_27F5DF708;
  if (!qword_27F5DF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF708);
  }

  return result;
}

unint64_t sub_2542DF0B4()
{
  result = qword_27F5DF710;
  if (!qword_27F5DF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF710);
  }

  return result;
}

unint64_t sub_2542DF10C()
{
  result = qword_27F5DF718;
  if (!qword_27F5DF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF718);
  }

  return result;
}