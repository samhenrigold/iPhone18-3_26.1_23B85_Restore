void static _RTCReportingS.newHierarchyTokenFromParentToken(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v3 = sub_223C48188();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF8, &qword_223C4ADA0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D837D0];
    *(v16 + 16) = xmmword_223C4AD60;
    *(v16 + 56) = v17;
    *(v16 + 32) = 0x6E656B6F74;
    *(v16 + 40) = 0xE500000000000000;
    sub_223C48178();
    v18 = sub_223C48148();
    v20 = v19;
    (*(v5 + 8))(v9, v3);
    *(v16 + 64) = v18;
    *(v16 + 72) = v20;
    *(v16 + 88) = v17;
    *(v16 + 96) = 0x6C6576656CLL;
    *(v16 + 104) = 0xE500000000000000;
    *(v16 + 152) = MEMORY[0x277D83B88];
    *(v16 + 120) = v17;
    *(v16 + 128) = 1;
    sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
    OUTLINED_FUNCTION_54();
    sub_223C48478();
    goto LABEL_13;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_13:
    OUTLINED_FUNCTION_63();
    return;
  }

  v11 = v10;
  *&v26[0] = 0x6E656B6F74;
  *(&v26[0] + 1) = 0xE500000000000000;
  v12 = v2;
  v13 = [v11 __swift_objectForKeyedSubscript_];
  OUTLINED_FUNCTION_54();
  swift_unknownObjectRelease();
  sub_223C48568();
  swift_unknownObjectRelease();
  sub_223C2A050(v26, v27);
  *&v24 = 0x6C6576656CLL;
  *(&v24 + 1) = 0xE500000000000000;
  v14 = MEMORY[0x277D837D0];
  v15 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_223C48568();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(v27);

    sub_223C2CF0C(v26, &qword_27D0B99E8, &qword_223C4A8A0);
    goto LABEL_13;
  }

  v21 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);

    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF8, &qword_223C4ADA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_223C4AD60;
  *(v22 + 56) = v14;
  *(v22 + 32) = 0x6E656B6F74;
  *(v22 + 40) = 0xE500000000000000;
  sub_223C2C0BC(v27, v22 + 64);
  *(v22 + 120) = v14;
  *(v22 + 96) = 0x6C6576656CLL;
  *(v22 + 104) = 0xE500000000000000;
  if (!__OFADD__(v23, 1))
  {
    *(v22 + 152) = v21;
    *(v22 + 128) = v23 + 1;
    sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
    OUTLINED_FUNCTION_54();
    sub_223C48478();

    __swift_destroy_boxed_opaque_existential_0(v27);
    goto LABEL_13;
  }

  __break(1u);
}

void _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  v4 = v3;
  v5 = sub_223C48238();

  v6 = sub_223C48238();

  if (v4)
  {
    v7 = sub_223C48398();
  }

  else
  {
    v7 = 0;
  }

  [v2 initWithSessionInfo:v5 userInfo:v6 frameworksToCheck:v7 aggregationBlock:0];

  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C27D10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id _RTCReportingS.init(sessionInfo:userInfo:frameworksToCheck:aggregationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();

  v7 = &v5[OBJC_IVAR____RTCReportingS_messageLoggingBlock];
  *v7 = 0;
  v7[1] = 0;
  v18 = OBJC_IVAR____RTCReportingS_messageSentDelegate;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____RTCReportingS_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9B48, &qword_223C4AD40);
  v9 = swift_allocObject();
  *&v6[v8] = v9;
  *&v6[OBJC_IVAR____RTCReportingS_session] = 0;
  v6[OBJC_IVAR____RTCReportingS_configured] = 0;
  *(v9 + 16) = 0;
  v10 = OBJC_IVAR____RTCReportingS_connectionManager;
  if (qword_280AEC1C0 != -1)
  {
    swift_once();
  }

  *&v6[v10] = qword_280AEC3A0;
  v11 = &v6[OBJC_IVAR____RTCReportingS_generatedSessionID];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____RTCReportingS_deprecatedPeriodic;
  *&v6[OBJC_IVAR____RTCReportingS_deprecatedPeriodic] = 0;
  v13 = OBJC_IVAR____RTCReportingS_legacyAVCSupport;
  *&v6[OBJC_IVAR____RTCReportingS_legacyAVCSupport] = 0;
  *&v6[OBJC_IVAR____RTCReportingS_earlyCachedEvents] = 0;
  v6[OBJC_IVAR____RTCReportingS_completelyDisabled] = 0;
  *&v6[OBJC_IVAR____RTCReportingS_extraFields] = 0;
  v6[OBJC_IVAR____RTCReportingS_terminated] = 0;
  *&v6[OBJC_IVAR____RTCReportingS_sentEventCount] = 0;
  v14 = OBJC_IVAR____RTCReportingS_activeTasks;
  sub_223C48188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BC8, &qword_223C4AD78);
  sub_223C3F658();
  *&v6[v14] = sub_223C48298();
  if (sub_223C28174())
  {
    *&v6[OBJC_IVAR____RTCReportingS_sessionInfo] = a1;
    v15 = MEMORY[0x277D84F98];
    if (a2)
    {
      v15 = a2;
    }

    *&v6[OBJC_IVAR____RTCReportingS_userInfo] = v15;
    v24.receiver = v6;
    v24.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v24, sel_init, v10);
    sub_223C28024(a4, a5);
  }

  else
  {
    sub_223C28024(a4, a5);

    sub_223C28024(*v7, v7[1]);
    sub_223C35CC0(&v6[v18]);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

uint64_t sub_223C28024(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_56(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return MEMORY[0x2821FEBE8](v0, 2);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_beginAccess();
}

uint64_t sub_223C2811C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_223C28174()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_223C3E0C8();
    *(v0 + 40) = v1 & 1;
  }

  return v1 & 1;
}

void _RTCReportingS.startConfiguration(completionHandler:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____RTCReportingS_userInfo;
  OUTLINED_FUNCTION_48_0();
  v10 = swift_beginAccess();
  if (*(*(v3 + v9) + 16))
  {
    if (qword_280AEC178 != -1)
    {
      v10 = swift_once();
    }

    v11 = qword_280AEC180;
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_37_0();
    *(v12 - 16) = v3;
    *(v12 - 8) = ObjectType;
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_7_1();
    v15 = OUTLINED_FUNCTION_29_1(v14);
    os_unfair_lock_lock(v15);
    sub_223C28584(v16, &v35);
    os_unfair_lock_unlock(v11 + 4);
    if ((v35 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____RTCReportingS_lock);
      MEMORY[0x28223BE20](v17);
      OUTLINED_FUNCTION_38_0();
      *(v19 - 32) = v3;
      *(v19 - 24) = v7;
      *(v19 - 16) = v5;
      *(v19 - 8) = ObjectType;
      MEMORY[0x28223BE20](v20);
      OUTLINED_FUNCTION_7_1();
      v22 = OUTLINED_FUNCTION_29_1(v21);
      os_unfair_lock_lock(v22);
      sub_223C2BF98();
      os_unfair_lock_unlock(v18 + 4);
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_280AEC160 != -1)
    {
      swift_once();
    }

    if (byte_280AEC398 == 1)
    {
      if (qword_280AEC1C8 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v23 = sub_223C481B8();
      __swift_project_value_buffer(v23, qword_280AEC1D0);
      v24 = sub_223C48198();
      sub_223C484A8();
      v25 = OUTLINED_FUNCTION_46_0();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_45_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_47_0();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        v32 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x223DF6270](v32);
      }
    }
  }

  if (v7)
  {

    v7(0);
    v33 = OUTLINED_FUNCTION_31_0();
    sub_223C28024(v33, v34);
  }

LABEL_16:
  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C28518(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&var1, a1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_223C28554@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223C28518(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_223C285BC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v7 = qword_280AEC118 + 1;
  if (__OFADD__(qword_280AEC118, 1))
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v3 = v2;
  ++qword_280AEC118;
  v5 = 0x280AEB000uLL;
  if (qword_280AEBD80 >= v7)
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v16 = sub_223C481B8();
    __swift_project_value_buffer(v16, qword_280AEC1D0);
    v17 = sub_223C48198();
    v18 = sub_223C48498();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349312;
      *(v19 + 4) = qword_280AEC118;
      *(v19 + 12) = 2050;
      *(v19 + 14) = qword_280AEBD80;
      _os_log_impl(&dword_223C26000, v17, v18, "active session count now %{public}ld/%{public}ld", v19, 0x16u);
      MEMORY[0x223DF6270](v19, -1, -1);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v4 = a1;
  if (qword_280AEC1C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = sub_223C481B8();
  __swift_project_value_buffer(v8, qword_280AEC1D0);
  v9 = sub_223C48198();
  v10 = sub_223C484A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = *(v5 + 3456);
    _os_log_impl(&dword_223C26000, v9, v10, "RTCReporting session limit (%{public}ld) exceeded", v11, 0xCu);
    MEMORY[0x223DF6270](v11, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____RTCReportingS_lock);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  os_unfair_lock_lock(v12 + 4);
  sub_223C2BF1C();
  if (!v3)
  {
    os_unfair_lock_unlock(v12 + 4);
    v15 = 1;
LABEL_13:
    *a2 = v15;
    return;
  }

  os_unfair_lock_unlock(v12 + 4);
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return MEMORY[0x2821FE1E8](a1, 256, v1);
}

void sub_223C288F4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a4;
  v104 = a3;
  v107 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v87 - v6;
  v7 = OBJC_IVAR____RTCReportingS_userInfo;
  swift_beginAccess();
  sub_223C2C00C(*&a1[v7], __src);
  swift_endAccess();
  v112 = __src[0];
  v113 = __src[1];
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v112, v111);
    v8 = swift_dynamicCast();
    v9 = v109;
    if (v8)
    {
      v10 = v110;
    }

    else
    {
      v10 = 0;
    }

    if (!v8)
    {
      v9 = 0;
    }

    v102 = v9;
  }

  else
  {
    v10 = 0;
    v102 = 0;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v7], __src);
  swift_endAccess();
  v112 = __src[0];
  v113 = __src[1];
  v11 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v112, v111);
    v12 = swift_dynamicCast();
    v13 = v109;
    v11 = v110;
    if (!v12)
    {
      v11 = 0;
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (!v11)
  {
    v13 = 0;
  }

  v101 = v13;
  if (!v11)
  {
    v11 = 0xE000000000000000;
  }

  v106 = v11;
  v14 = *&a1[OBJC_IVAR____RTCReportingS_sessionInfo];
  sub_223C2C00C(v14, __src);
  v112 = __src[0];
  v113 = __src[1];
  if (!*(&__src[1] + 1))
  {
    if (v10)
    {
      goto LABEL_28;
    }

LABEL_34:

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v29 = sub_223C481B8();
    __swift_project_value_buffer(v29, qword_280AEC1D0);
    v30 = sub_223C48198();
    v31 = sub_223C484B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223C26000, v30, v31, "invalid or missing clientName", v32, 2u);
      MEMORY[0x223DF6270](v32, -1, -1);
    }

    v33 = v107;
    if (!v107)
    {
      return;
    }

    v34 = sub_223C48418();
    v26 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v34);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v33;
    v27[5] = v104;

    v28 = &unk_223C4AFE8;
LABEL_79:
    sub_223C3F818(0, 0, v26, v28, v27);

    return;
  }

  sub_223C2A050(&v112, v111);
  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = v109;
  }

  else
  {
    v16 = 0;
  }

  if (!v10)
  {
    goto LABEL_34;
  }

  if ((v15 & 1) == 0)
  {
LABEL_28:

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v20 = sub_223C481B8();
    __swift_project_value_buffer(v20, qword_280AEC1D0);
    v21 = sub_223C48198();
    v22 = sub_223C484B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_223C26000, v21, v22, "invalid or missing clientType", v23, 2u);
      MEMORY[0x223DF6270](v23, -1, -1);
    }

    v24 = v107;
    if (!v107)
    {
      return;
    }

    v25 = sub_223C48418();
    v26 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v24;
    v27[5] = v104;

    v28 = &unk_223C4AFF8;
    goto LABEL_79;
  }

  if (a1[OBJC_IVAR____RTCReportingS_configured] != 1)
  {
    v93 = v16;
    a1[OBJC_IVAR____RTCReportingS_configured] = 1;
    sub_223C2C00C(v14, __src);
    v112 = __src[0];
    v113 = __src[1];
    if (*(&__src[1] + 1))
    {
      sub_223C2A050(&v112, v111);
      if (swift_dynamicCast())
      {
        v35 = v109;
      }

      else
      {
        v35 = 0;
        LOWORD(v109) = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    sub_223C2C00C(v14, __src);
    v112 = __src[0];
    v113 = __src[1];
    if (*(&__src[1] + 1))
    {
      sub_223C2A050(&v112, v111);
      if (swift_dynamicCast())
      {
        v40 = v109;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v124 = 1;
    sub_223C2C00C(v14, __src);
    sub_223C4582C(__src, &v112, &qword_27D0B99E8, &qword_223C4A8A0);
    v100 = v40;
    if (*(&v113 + 1))
    {
      sub_223C2A050(&v112, v111);
      sub_223C2C0BC(v111, &v109);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98);
      if (swift_dynamicCast())
      {
        v41 = v108;
      }

      else
      {
        v41 = sub_223C48298();
      }

      v42 = sub_223C2DAB4(v41);
      v43 = v56;
      v44 = v57;
      __swift_destroy_boxed_opaque_existential_0(v111);
      sub_223C2CF0C(__src, &qword_27D0B99E8, &qword_223C4A8A0);
      if (!v44)
      {
        v42 = 0;
        v43 = 0;
      }
    }

    else
    {
      sub_223C2CF0C(__src, &qword_27D0B99E8, &qword_223C4A8A0);
      v42 = 0;
      v43 = 0;
      v44 = 0;
    }

    sub_223C2C00C(v14, __src);
    v112 = __src[0];
    v113 = __src[1];
    if (*(&__src[1] + 1) && (sub_223C2A050(&v112, v111), (swift_dynamicCast() & 1) != 0))
    {
      v89 = v110;
      if (v110)
      {
        v99 = v109;
LABEL_90:
        sub_223C2C00C(v14, __src);
        v112 = __src[0];
        v113 = __src[1];
        if (*(&__src[1] + 1) && (sub_223C2A050(&v112, v111), (swift_dynamicCast() & 1) != 0))
        {
          *(&v98 + 1) = v110;
          if (v110)
          {
            *&v98 = v109;
LABEL_96:
            sub_223C2C00C(v14, __src);
            v112 = __src[0];
            v113 = __src[1];
            if (*(&__src[1] + 1) && (sub_223C2A050(&v112, v111), (swift_dynamicCast() & 1) != 0))
            {
              *(&v97 + 1) = v110;
              if (v110)
              {
                *&v97 = v109;
                goto LABEL_102;
              }
            }

            else
            {
              *(&v97 + 1) = 0;
            }

            *&v97 = 0;
LABEL_102:
            sub_223C2C00C(v14, __src);
            if (*(&__src[1] + 1))
            {
              sub_223C2A050(__src, &v112);
              LOBYTE(v96) = swift_dynamicCast() & LOBYTE(v111[0]);
              v96 = v96;
            }

            else
            {
              v96 = 0;
            }

            sub_223C2C00C(v14, __src);
            if (*(&__src[1] + 1) && (sub_223C2A050(__src, &v112), (swift_dynamicCast() & 1) != 0))
            {
              v95 = *&v111[0];
              v124 = 0;
            }

            else
            {
              v95 = 0;
            }

            v90 = v44;
            v91 = v43;
            v92 = v42;
            v58 = getprogname();
            v94 = v35;
            if (!v58)
            {
              v65 = 0;
              v66 = v100;
              goto LABEL_135;
            }

            v60 = sub_223C48378();
            v61 = v59;
            v62 = v60 == 0x64786F62646E6173 && v59 == 0xE800000000000000;
            v63 = v62;
            if (v62 || (sub_223C48678() & 1) != 0 || (v60 == 0x6C6F6F74637472 ? (v64 = v61 == 0xE700000000000000) : (v64 = 0), v64 || (v65 = 0, (sub_223C48678() & 1) != 0)))
            {
              sub_223C2C00C(v14, __src);
              if (!*(&__src[1] + 1))
              {
                v65 = 0;
                if (v63)
                {
                  goto LABEL_126;
                }

LABEL_129:
                v67 = sub_223C48678();

                LOWORD(v35) = v94;
                v66 = v100;
                if (v67)
                {
                  goto LABEL_130;
                }

LABEL_135:

                sub_223C2D120(v72);

                LOWORD(__src[0]) = v35;
                DWORD1(__src[0]) = v66;
                v73 = v91;
                v74 = v92;
                *(&__src[0] + 1) = v92;
                *&__src[1] = v91;
                v75 = v90;
                *(&__src[1] + 1) = v90;
                *&__src[2] = v99;
                v76 = v65;
                v88 = v65;
                v77 = v89;
                *(&__src[2] + 1) = v89;
                __src[3] = v98;
                __src[4] = v97;
                LOBYTE(__src[5]) = v96;
                BYTE1(__src[5]) = v76;
                *(&__src[5] + 2) = v111[0];
                WORD3(__src[5]) = WORD2(v111[0]);
                *(&__src[5] + 1) = v95;
                LOBYTE(__src[6]) = v124;
                sub_223C2DA7C(__src, &v112);
                v78 = v105;
                sub_223C483F8();
                v79 = sub_223C48418();
                __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
                v80 = swift_allocObject();
                v80[2] = 0;
                v80[3] = 0;
                v81 = v101;
                v82 = v102;
                v80[4] = v93;
                v80[5] = v82;
                v80[6] = v10;
                v80[7] = v81;
                v80[8] = v106;
                memcpy(v80 + 9, __src, 0x61uLL);
                v83 = v107;
                v80[22] = a1;
                v80[23] = v83;
                v85 = v103;
                v84 = v104;
                v80[24] = v104;
                v80[25] = v85;
                sub_223C29A24(v83, v84);
                v86 = a1;
                sub_223C3FE74(0, 0, v78, &unk_223C4B008, v80);

                sub_223C2CF0C(v78, &unk_27D0B9A30, &unk_223C4AB88);
                LOWORD(v112) = v94;
                DWORD1(v112) = v100;
                *(&v112 + 1) = v74;
                *&v113 = v73;
                *(&v113 + 1) = v75;
                v114 = v99;
                v115 = v77;
                v116 = v98;
                v117 = v97;
                v118 = v96;
                v119 = v88;
                v120 = v111[0];
                v121 = WORD2(v111[0]);
                v122 = v95;
                v123 = v124;
                sub_223C2DEFC(&v112);
                return;
              }

              sub_223C2A050(__src, &v112);
              v65 = (swift_dynamicCast() & LOBYTE(v111[0]));
            }

            if (v63)
            {
LABEL_126:

              LOWORD(v35) = v94;
              v66 = v100;
LABEL_130:
              if (qword_280AEC1C8 != -1)
              {
                swift_once();
              }

              v68 = sub_223C481B8();
              __swift_project_value_buffer(v68, qword_280AEC1D0);
              v69 = sub_223C48198();
              v70 = sub_223C484C8();
              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                *v71 = 0;
                _os_log_impl(&dword_223C26000, v69, v70, "overriding eager=YES for sandboxd", v71, 2u);
                MEMORY[0x223DF6270](v71, -1, -1);
              }

              v65 = 1;
              goto LABEL_135;
            }

            goto LABEL_129;
          }
        }

        else
        {
          *(&v98 + 1) = 0;
        }

        *&v98 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v89 = 0;
    }

    v99 = 0;
    goto LABEL_90;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v7], __src);
  swift_endAccess();
  v112 = __src[0];
  v113 = __src[1];
  v17 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v112, v111);
    v18 = swift_dynamicCast();
    v19 = v109;
    v17 = v110;
    if (!v18)
    {
      v17 = 0;
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v36 = v19;
  }

  else
  {
    v36 = 63;
  }

  if (v17)
  {
    v37 = v17;
  }

  else
  {
    v37 = 0xE100000000000000;
  }

  swift_beginAccess();
  sub_223C2C00C(*&a1[v7], __src);
  swift_endAccess();
  v112 = __src[0];
  v113 = __src[1];
  v38 = *(&__src[1] + 1);
  if (*(&__src[1] + 1))
  {
    sub_223C2A050(&v112, v111);
    if (swift_dynamicCast())
    {
      v39 = v109;
      v38 = v110;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v109 = 0;
      v110 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v45 = v39;
  }

  else
  {
    v45 = 63;
  }

  if (v38)
  {
    v46 = v38;
  }

  else
  {
    v46 = 0xE100000000000000;
  }

  if (qword_280AEC1C8 != -1)
  {
    swift_once();
  }

  v47 = sub_223C481B8();
  __swift_project_value_buffer(v47, qword_280AEC1D0);

  v48 = sub_223C48198();
  v49 = sub_223C484A8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&__src[0] = v51;
    *v50 = 136446466;
    v52 = sub_223C354E8(v36, v37, __src);

    *(v50 + 4) = v52;
    *(v50 + 12) = 2082;
    v53 = sub_223C354E8(v45, v46, __src);

    *(v50 + 14) = v53;
    _os_log_impl(&dword_223C26000, v48, v49, "attempting to re-configure session (%{public}s:%{public}s) after initial configuration", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DF6270](v51, -1, -1);
    MEMORY[0x223DF6270](v50, -1, -1);
  }

  else
  {
  }

  v54 = v107;
  if (v107)
  {
    v55 = sub_223C48418();
    v26 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v55);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v54;
    v27[5] = v104;

    v28 = &unk_223C4B018;
    goto LABEL_79;
  }
}

uint64_t sub_223C29A24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223C29A38()
{
  swift_unknownObjectRelease();

  if (*(v0 + 184))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

unint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_223C29FE0();
}

_OWORD *sub_223C29B2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_22_1();
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v6;
  v11 = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
  if ((OUTLINED_FUNCTION_59(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_223C29FE0();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v5;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0((v15[7] + 32 * v10));
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_63();

    return sub_223C2A050(v16, v17);
  }

  else
  {
    sub_223C2A218(v10, v4, v3, v2, v15);
    OUTLINED_FUNCTION_63();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _RTCReportingS.sendMessage(category:type:payload:)(Swift::UInt16 category, Swift::UInt16 type, Swift::OpaquePointer_optional payload)
{
  rawValue = payload.value._rawValue;
  v6 = MEMORY[0x223DF5480](4, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, MEMORY[0x277D837E0]);
  v7 = MEMORY[0x277D84C58];
  v59 = MEMORY[0x277D84C58];
  LOWORD(v57) = category;
  OUTLINED_FUNCTION_64(v6, v8, v9, v10, v11, v12, v13, v14, v49, v52, v55, v56, *(&v56 + 1), v57);
  swift_isUniquelyReferenced_nonNull_native();
  v60 = v6;
  v15 = sub_223C29B2C(&v55, 0xD000000000000012);
  v16 = v60;
  v59 = v7;
  LOWORD(v57) = type;
  OUTLINED_FUNCTION_64(v15, v17, v18, v19, v20, v21, v22, v23, v50, v53, v55, v56, *(&v56 + 1), v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v16;
  OUTLINED_FUNCTION_60(isUniquelyReferenced_nonNull_native, v25, 0x657079547372, isUniquelyReferenced_nonNull_native);
  v33 = v60;
  if (rawValue)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98);
    v35 = rawValue;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    *(&v57 + 1) = 0;
    v58 = 0;
  }

  *&v57 = v35;
  v59 = v34;
  if (v34)
  {
    OUTLINED_FUNCTION_64(v34, v26, v27, v28, v29, v30, v31, v32, v51, v54, v55, v56, *(&v56 + 1), v57);

    swift_isUniquelyReferenced_nonNull_native();
    v60 = v33;
    v36 = sub_223C29B2C(&v55, 0xD000000000000011);
    v33 = v60;
  }

  else
  {

    sub_223C2CF0C(&v57, &qword_27D0B99E8, &qword_223C4A8A0);
    v44 = sub_223C29FE0();
    if (v45)
    {
      v46 = v44;
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BE8, &qword_223C4AD90);
      sub_223C485F8();
      v33 = v60;

      sub_223C2A050((v33[7] + 32 * v46), &v55);
      sub_223C48618();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v36 = sub_223C2CF0C(&v55, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  v59 = MEMORY[0x277D83B88];
  *&v57 = 0;
  OUTLINED_FUNCTION_64(v36, v37, v38, v39, v40, v41, v42, v43, v51, v54, v55, v56, *(&v56 + 1), v57);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v33;
  OUTLINED_FUNCTION_60(v47, v48, 0x67616C467372, v47);
  v61.value._rawValue = v60;
  _RTCReportingS.sendMessage(dictionary:)(v61);
}

unint64_t sub_223C29FE0()
{
  sub_223C48758();
  OUTLINED_FUNCTION_29_0();
  sub_223C48358();
  sub_223C48788();
  v0 = OUTLINED_FUNCTION_20();

  return sub_223C2A164(v0, v1, v2);
}

_OWORD *sub_223C2A050(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{
  *(v3 - 96) = v2;

  return sub_223C2F610(v1, 0x54746E65696C635FLL);
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{
  *(v4 - 96) = v3;

  return sub_223C2F610(v1, v2);
}

unint64_t sub_223C2A164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_223C48678() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_223C2A218(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_223C2A050(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _RTCReportingS.sendMessage(dictionary:)(Swift::OpaquePointer_optional dictionary)
{
  v3 = v1;
  rawValue = dictionary.value._rawValue;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_48_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      v8 = v3;
      if (rawValue)
      {
        sub_223C40B20(rawValue);
        v9 = sub_223C48238();
      }

      else
      {
        v9 = 0;
      }

      [v7 didSendMessageForReportingClient:v3 event:v9];

      swift_unknownObjectRelease();

      if (!rawValue)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    Strong = swift_unknownObjectRelease();
  }

  if (!rawValue)
  {
LABEL_13:
    sub_223C44D4C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    return;
  }

LABEL_7:
  if (qword_280AEC150 != -1)
  {
    OUTLINED_FUNCTION_18_1();
    Strong = swift_once();
  }

  v10 = qword_280AEC158;
  MEMORY[0x28223BE20](Strong);
  OUTLINED_FUNCTION_37_0();
  *(v11 - 16) = ObjectType;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v14 = OUTLINED_FUNCTION_29_1(v13);
  os_unfair_lock_lock(v14);
  sub_223C2A5BC(v15, &v22);
  os_unfair_lock_unlock(v10 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v17 = *&v3[OBJC_IVAR____RTCReportingS_lock];
    v18 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_7_1();
    v20 = OUTLINED_FUNCTION_29_1(v19);
    os_unfair_lock_lock(v20);
    sub_223C2BF1C();
    os_unfair_lock_unlock(v17 + 4);
  }
}

void *sub_223C2A558(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_223C2A590@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_223C2A558(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_223C2A5E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v194 = a4;
  v190 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v177 - v9;
  v10 = sub_223C48188();
  v195 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v193 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v12;
  MEMORY[0x28223BE20](v11);
  v197 = &v177 - v13;
  v14 = type metadata accessor for EventValue(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v198 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](&v177 - v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v177 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v177 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v177 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v38 = (&v177 - v37);
  if (a1[OBJC_IVAR____RTCReportingS_terminated])
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v39 = sub_223C481B8();
    __swift_project_value_buffer(v39, qword_280AEC1D0);
    v40 = a1;
    v41 = sub_223C48198();
    v42 = sub_223C48488();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_34;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v203 = v44;
    *v43 = 136315138;
    if (*&v40[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v45 = *&v40[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v46 = *&v40[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v46 = 0xE100000000000000;
      v45 = 63;
    }

    v59 = sub_223C354E8(v45, v46, &v203);

    *(v43 + 4) = v59;
    v60 = "dropping message to terminated session(%s)";
LABEL_33:
    _os_log_impl(&dword_223C26000, v41, v42, v60, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x223DF6270](v44, -1, -1);
    MEMORY[0x223DF6270](v43, -1, -1);
LABEL_34:

    return;
  }

  v186 = v33;
  v181 = v32;
  v189 = v25;
  v182 = v36;
  v183 = v15;
  v179 = v35;
  v187 = v34;
  v191 = v14;
  sub_223C2C00C(a2, &v203);
  v201 = v203;
  v202 = v204;
  v205 = v5;
  v180 = v10;
  if (*(&v204 + 1))
  {
    sub_223C2A050(&v201, v199);
    v47 = swift_dynamicCast();
    if (v47)
    {
      v184 = v200[0];
    }

    else
    {
      v184 = 0;
      v200[0] = 0;
    }

    v48 = v47 ^ 1;
  }

  else
  {
    v184 = 0;
    v48 = 1;
  }

  v188 = a1;
  sub_223C2C00C(a2, &v203);
  v201 = v203;
  v202 = v204;
  if (*(&v204 + 1))
  {
    sub_223C2A050(&v201, v199);
    v49 = swift_dynamicCast();
    v50 = v200[0];
    if (!v49)
    {
      v50 = 0;
    }

    v185 = v50;
    v51 = v49 ^ 1;
  }

  else
  {
    v185 = 0;
    v51 = 1;
  }

  sub_223C2C00C(a2, &v203);
  v201 = v203;
  v202 = v204;
  if (*(&v204 + 1))
  {
    sub_223C2A050(&v201, v199);
    v52 = swift_dynamicCast();
    if (*v200 == 1)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  sub_223C2C00C(a2, &v203);
  v201 = v203;
  v202 = v204;
  if (!*(&v204 + 1) || (sub_223C2A050(&v201, v199), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9BF0, &qword_223C4AD98), (swift_dynamicCast() & 1) == 0) || (v54 = *v200) == 0)
  {
    v54 = sub_223C48298();
  }

  v55 = v191;
  if ((v48 | v51))
  {

    sub_223C44D4C();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
    return;
  }

  v57 = v205;
  v58 = sub_223C2C118(v54);
  v205 = v57;
  if (v57)
  {

    return;
  }

  v61 = v58;
  v62 = v188;
  v63 = *&v188[OBJC_IVAR____RTCReportingS_extraFields];
  if (v63)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v203 = v61;
    v65 = v205;
    sub_223C364F8(v63, sub_223C36C60, 0, isUniquelyReferenced_nonNull_native, &v203);
    v205 = v65;
    v61 = v203;
  }

  LOBYTE(v199[0]) = v53;
  *v38 = v184;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v55);
  sub_223C4582C(v38, v31, &qword_27D0B9950, &qword_223C4A5D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v55);
  v184 = v61;
  if (EnumTagSinglePayload == 1)
  {

    sub_223C2CF0C(v31, &qword_27D0B9950, &qword_223C4A5D0);
    v67 = sub_223C29FE0();
    if (v68)
    {
      v69 = v67;
      LODWORD(v178) = swift_isUniquelyReferenced_nonNull_native();
      *&v203 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v70 = v203;

      sub_223C2D02C(v70[7] + *(v183 + 72) * v69, v28);
      v61 = v70;
      sub_223C48618();
      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    __swift_storeEnumTagSinglePayload(v28, v71, 1, v55);
    sub_223C2CF0C(v28, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    v72 = v31;
    v73 = v61;
    v74 = v198;
    sub_223C2D02C(v72, v198);

    swift_isUniquelyReferenced_nonNull_native();
    *&v203 = v73;
    sub_223C2F610(v74, 0x646F6874656D5FLL);
    v61 = v203;
  }

  v178 = v54;
  sub_223C2CF0C(v38, &qword_27D0B9950, &qword_223C4A5D0);
  v75 = v189;
  *v189 = v185;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v55);
  v76 = v75;
  v77 = v186;
  sub_223C4582C(v76, v186, &qword_27D0B9950, &qword_223C4A5D0);
  if (__swift_getEnumTagSinglePayload(v77, 1, v55) == 1)
  {
    sub_223C2CF0C(v77, &qword_27D0B9950, &qword_223C4A5D0);
    v78 = v61;
    v79 = sub_223C29FE0();
    if (v80)
    {
      v81 = v79;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v78 = v203;

      v82 = v181;
      sub_223C2D02C(v78[7] + *(v183 + 72) * v81, v181);
      sub_223C48618();
      v83 = 0;
    }

    else
    {
      v83 = 1;
      v82 = v181;
    }

    __swift_storeEnumTagSinglePayload(v82, v83, 1, v55);
    sub_223C2CF0C(v82, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    v84 = v77;
    v85 = v198;
    sub_223C2D02C(v84, v198);
    swift_isUniquelyReferenced_nonNull_native();
    *&v203 = v61;
    sub_223C2F610(v85, 0x7375746174735FLL);
    v78 = v203;
  }

  sub_223C2CF0C(v189, &qword_27D0B9950, &qword_223C4A5D0);
  if (v62[OBJC_IVAR____RTCReportingS_completelyDisabled])
  {

    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v86 = sub_223C481B8();
    __swift_project_value_buffer(v86, qword_280AEC1D0);
    v87 = v62;
    v41 = sub_223C48198();
    v42 = sub_223C48488();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_34;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v203 = v44;
    *v43 = 136315138;
    if (*&v87[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v88 = *&v87[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v89 = *&v87[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v89 = 0xE100000000000000;
      v88 = 63;
    }

    v157 = sub_223C354E8(v88, v89, &v203);

    *(v43 + 4) = v157;
    v60 = "dropping message to inactive session(%s)";
    goto LABEL_33;
  }

  v90 = v55;
  v91 = OBJC_IVAR____RTCReportingS_sentEventCount;
  v92 = v187;
  *v187 = *&v62[OBJC_IVAR____RTCReportingS_sentEventCount];
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v90);
  v93 = v92;
  v94 = v182;
  sub_223C4582C(v93, v182, &qword_27D0B9950, &qword_223C4A5D0);
  if (__swift_getEnumTagSinglePayload(v94, 1, v90) == 1)
  {
    sub_223C2CF0C(v94, &qword_27D0B9950, &qword_223C4A5D0);
    v95 = sub_223C29FE0();
    if (v96)
    {
      v97 = v95;
      swift_isUniquelyReferenced_nonNull_native();
      *&v203 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C485F8();
      v78 = v203;

      v98 = v179;
      sub_223C2D02C(v78[7] + *(v183 + 72) * v97, v179);
      v99 = v191;
      sub_223C48618();
      v100 = 0;
      v101 = v188;
    }

    else
    {
      v100 = 1;
      v101 = v188;
      v99 = v191;
      v98 = v179;
    }

    __swift_storeEnumTagSinglePayload(v98, v100, 1, v99);
    sub_223C2CF0C(v98, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    v102 = v94;
    v103 = v198;
    sub_223C2D02C(v102, v198);
    swift_isUniquelyReferenced_nonNull_native();
    *&v203 = v78;
    sub_223C2F610(v103, 0x754E746E6576655FLL);
    v78 = v203;
    v101 = v188;
  }

  sub_223C2CF0C(v187, &qword_27D0B9950, &qword_223C4A5D0);
  v104 = *&v101[v91];
  v105 = __CFADD__(v104, 1);
  v106 = v104 + 1;
  if (v105)
  {
    __break(1u);
    goto LABEL_121;
  }

  *&v101[v91] = v106;
  v107 = *&v101[OBJC_IVAR____RTCReportingS_session];
  if (v107)
  {

    v108 = *&v101[OBJC_IVAR____RTCReportingS_legacyAVCSupport];
    v198 = v107;
    if (!v108)
    {

      goto LABEL_111;
    }

    v191 = v108;
    sub_223C40B20(v178);
    v109 = sub_223C48238();

    v110 = v199[0];
    *&v203 = v78;
    BYTE8(v203) = v199[0];
    v111 = Event.category.getter();
    if (v112)
    {
      v113 = 0;
    }

    else
    {
      v113 = v111;
    }

    if ((v113 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v113 >> 16))
    {
      *&v203 = v78;
      BYTE8(v203) = v110;
      v114 = Event.type.getter();
      if (v115)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114;
      }

      if ((v116 & 0x8000000000000000) == 0)
      {
        if (!(v116 >> 16))
        {
          [v191 invokeAWDAdaptorForPayload:v109 category:v113 type:v116];

          if (qword_280AEC160 == -1)
          {
LABEL_76:
            if (byte_280AEC398 == 1)
            {

              v101 = sub_223C48318();

              v117 = sub_223C48318();

              sub_223C40B20(v178);

              v118 = v78;
              v78 = sub_223C48238();

              *&v203 = v118;
              BYTE8(v203) = v110;
              v119 = Event.category.getter();
              if (v120)
              {
                v121 = 0;
              }

              else
              {
                v121 = v119;
              }

              if ((v121 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (!(v121 >> 16))
              {
                *&v203 = v118;
                BYTE8(v203) = v110;
                v122 = Event.type.getter();
                if (v123)
                {
                  v124 = 0;
                }

                else
                {
                  v124 = v122;
                }

                if ((v124 & 0x8000000000000000) == 0)
                {
                  if (!(v124 >> 16))
                  {
                    v125 = *&v188[v91];
                    if (v125)
                    {
                      v126 = v191;
                      [v191 sendPowerLogEventForClient:v101 serviceName:v117 payload:v78 category:v121 type:v124 eventNumber:v125 - 1];

                      v101 = v188;
                      v78 = v118;
                      goto LABEL_111;
                    }

                    goto LABEL_131;
                  }

LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  swift_once();
                  goto LABEL_93;
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              __break(1u);
              goto LABEL_129;
            }

            v101 = v188;
LABEL_111:
            if (qword_280AEC1C8 == -1)
            {
LABEL_112:
              v205 = v78;
              v148 = sub_223C481B8();
              __swift_project_value_buffer(v148, qword_280AEC1D0);
              v149 = v101;
              v150 = sub_223C48198();
              v151 = sub_223C484C8();

              v152 = os_log_type_enabled(v150, v151);
              v191 = v149;
              if (v152)
              {
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                *&v203 = v154;
                *v153 = 136315138;
                if (*&v149[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
                {
                  v155 = *&v149[OBJC_IVAR____RTCReportingS_generatedSessionID];
                  v156 = *&v149[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
                }

                else
                {
                  v156 = 0xE100000000000000;
                  v155 = 63;
                }

                v158 = sub_223C354E8(v155, v156, &v203);

                *(v153 + 4) = v158;
                _os_log_impl(&dword_223C26000, v150, v151, "sendMessage called for: %s", v153, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v154);
                MEMORY[0x223DF6270](v154, -1, -1);
                MEMORY[0x223DF6270](v153, -1, -1);
              }

              v159 = v199[0];
              v160 = v197;
              sub_223C48178();
              v161 = v196;
              sub_223C483F8();
              v162 = sub_223C48418();
              __swift_storeEnumTagSinglePayload(v161, 0, 1, v162);
              v163 = v195;
              v164 = v193;
              v165 = v180;
              (*(v195 + 16))(v193, v160, v180);
              v166 = (*(v163 + 80) + 64) & ~*(v163 + 80);
              v167 = (v192 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
              v168 = swift_allocObject();
              *(v168 + 16) = 0;
              *(v168 + 24) = 0;
              v169 = v205;
              *(v168 + 32) = v198;
              *(v168 + 40) = v169;
              *(v168 + 48) = v159;
              v170 = v191;
              *(v168 + 56) = v191;
              (*(v163 + 32))(v168 + v166, v164, v165);
              *(v168 + v167) = v194;

              v171 = v170;
              v172 = v196;
              v173 = sub_223C3FE74(0, 0, v196, &unk_223C4AF98, v168);
              sub_223C2CF0C(v172, &unk_27D0B9A30, &unk_223C4AB88);
              v174 = OBJC_IVAR____RTCReportingS_activeTasks;
              swift_beginAccess();

              v175 = swift_isUniquelyReferenced_nonNull_native();
              *&v201 = *&v171[v174];
              v176 = v197;
              sub_223C443E8(v173, v197, v175);
              *&v171[v174] = v201;
              swift_endAccess();
              sub_223C3F50C();

              (*(v163 + 8))(v176, v165);
              return;
            }

LABEL_121:
            swift_once();
            goto LABEL_112;
          }

LABEL_126:
          swift_once();
          goto LABEL_76;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    __break(1u);
    goto LABEL_124;
  }

  if (qword_280AEC160 != -1)
  {
    swift_once();
  }

  LODWORD(v117) = byte_280AEC398;
  if ((byte_280AEC398 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (qword_280AEC1C8 != -1)
  {
    goto LABEL_132;
  }

LABEL_93:
  v127 = sub_223C481B8();
  __swift_project_value_buffer(v127, qword_280AEC1D0);
  v128 = sub_223C48198();
  v129 = sub_223C484A8();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_223C26000, v128, v129, "event sent to session with incomplete configuration - caching as a workaround", v130, 2u);
    MEMORY[0x223DF6270](v130, -1, -1);
  }

LABEL_96:
  v131 = v78;
  v132 = OBJC_IVAR____RTCReportingS_earlyCachedEvents;
  swift_beginAccess();
  v133 = MEMORY[0x277D84F90];
  if (!*&v101[v132])
  {
    *&v101[v132] = MEMORY[0x277D84F90];
  }

  v134 = v199[0];
  swift_beginAccess();

  sub_223C36EC0();
  v135 = *(*&v101[v132] + 16);
  sub_223C36E80(v135);
  v136 = *&v101[v132];
  *(v136 + 16) = v135 + 1;
  v137 = v136 + 16 * v135;
  *(v137 + 32) = v131;
  *(v137 + 40) = v134;
  *&v101[v132] = v136;
  swift_endAccess();
  v138 = *&v101[v132];
  if (v138)
  {

    v139 = *(v138 + 16);

    if (v139 > v190)
    {
      if (qword_280AEC1C8 != -1)
      {
        swift_once();
      }

      v140 = sub_223C481B8();
      __swift_project_value_buffer(v140, qword_280AEC1D0);
      v141 = sub_223C48198();
      v142 = sub_223C484B8();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_223C26000, v141, v142, "too many events sent to unconfigured session", v143, 2u);
        v144 = v143;
        v101 = v188;
        MEMORY[0x223DF6270](v144, -1, -1);
      }

      if (v117)
      {
        v145 = sub_223C48198();
        v146 = sub_223C484A8();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_223C26000, v145, v146, "dumping early event cache buffer - too large", v147, 2u);
          MEMORY[0x223DF6270](v147, -1, -1);
        }
      }

      *&v101[v132] = v133;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_223C2BE24()
{
  v1 = sub_223C48188();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_223C2C474(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{
  *(a1 + 16) = *(v2 + 64);
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

double sub_223C2C00C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_223C29FE0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_223C2C0BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t type metadata accessor for EventValue(uint64_t a1)
{
  result = qword_280AEC168;
  if (!qword_280AEC168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223C2C0BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223C2C118(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_3();
  v49 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v50 = (&v45 - v10);
  v11 = MEMORY[0x223DF5480](*(a1 + 16), MEMORY[0x277D837D0]);
  v12 = a1 + 64;
  OUTLINED_FUNCTION_28_1();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v45 = a1;

  v18 = 0;
  v46 = v17;
  v47 = a1 + 64;
  v48 = v8;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(v45 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_223C2C0BC(*(v45 + 56) + 32 * v22, v51);
      *&v52 = v25;
      *(&v52 + 1) = v24;
      sub_223C2A050(v51, &v53);

      v20 = v50;
LABEL_9:
      v55 = v52;
      v56[0] = v53;
      v56[1] = v54;
      v26 = *(&v52 + 1);
      if (!*(&v52 + 1))
      {
        break;
      }

      v27 = v55;
      sub_223C2A050(v56, &v52);
      sub_223C2C58C(&v52, v20);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_0(&v52);

        break;
      }

      v57 = 0;
      sub_223C2D02C(v20, v8);
      swift_isUniquelyReferenced_nonNull_native();
      *&v51[0] = v11;
      sub_223C29FE0();
      OUTLINED_FUNCTION_22_1();
      if (__OFADD__(v30, v31))
      {
        goto LABEL_25;
      }

      v8 = v28;
      v32 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      if (sub_223C485F8())
      {
        v33 = sub_223C29FE0();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_27;
        }

        v8 = v33;
      }

      if (v32)
      {

        v11 = *&v51[0];
        v35 = OUTLINED_FUNCTION_33_0();
        sub_223C36BBC(v35, v36);
        __swift_destroy_boxed_opaque_existential_0(&v52);
      }

      else
      {
        v11 = *&v51[0];
        OUTLINED_FUNCTION_53(*&v51[0] + 8 * (v8 >> 6));
        v38 = (v37 + 16 * v8);
        *v38 = v27;
        v38[1] = v26;
        v39 = OUTLINED_FUNCTION_33_0();
        sub_223C2D02C(v39, v40);
        __swift_destroy_boxed_opaque_existential_0(&v52);
        v41 = *(v11 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_26;
        }

        *(v11 + 16) = v43;
      }

      v2 = v57;
      v12 = v47;
      v17 = v46;
      if (!v15)
      {
        goto LABEL_3;
      }
    }

    return v11;
  }

  else
  {
LABEL_3:
    v20 = v50;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v15 = 0;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
        goto LABEL_9;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_223C486C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_223C2C474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_223C2C4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0();
  v5 = OUTLINED_FUNCTION_30_0();
  v6(v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_26_1()
{

  return sub_223C29FE0();
}

uint64_t sub_223C2C58C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_3();
  v112 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v111 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v110 = (&v103 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v103 - v13);
  v107 = sub_223C48078();
  OUTLINED_FUNCTION_3();
  v106 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13();
  v17 = sub_223C48188();
  OUTLINED_FUNCTION_3();
  v108 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  v23 = sub_223C2C0BC(a1, v120);
  if (OUTLINED_FUNCTION_9_1(v23, v24, v25, MEMORY[0x277D837D0]))
  {
    v26 = *(&v117 + 1);
    *a2 = v117;
    a2[1] = v26;
LABEL_3:
    OUTLINED_FUNCTION_50_0();
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v120);
  }

  v109 = a2;
  v105 = v5;
  v27 = sub_223C2811C(0, qword_280AEC0E8, 0x277CCABB0);
  v30 = OUTLINED_FUNCTION_9_1(v27, v28, v29, v27);
  if (v30)
  {
    v33 = v117;
    if (*MEMORY[0x277CBED28] && v117 == *MEMORY[0x277CBED28])
    {

      *v109 = 1;
LABEL_11:
      OUTLINED_FUNCTION_49_0();
      goto LABEL_14;
    }

    v34 = *MEMORY[0x277CBED10];

    if (v34 && v33 == v34)
    {
      *v109 = 0;
      goto LABEL_11;
    }
  }

  v35 = OUTLINED_FUNCTION_9_1(v30, v31, v32, MEMORY[0x277D84A28]);
  if (v35 || (v39 = OUTLINED_FUNCTION_9_1(v35, v36, v37, MEMORY[0x277D84D38]), v42 = v109, v39))
  {
    *v109 = v117;
    OUTLINED_FUNCTION_49_0();
    goto LABEL_14;
  }

  v43 = OUTLINED_FUNCTION_9_1(v39, v40, v41, MEMORY[0x277D839F8]);
  v44 = v105;
  if (v43)
  {
    *v42 = v117;
    OUTLINED_FUNCTION_50_0();
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    (*(v108 + 32))(v42, v22, v17);
    OUTLINED_FUNCTION_50_0();
    goto LABEL_14;
  }

  sub_223C2811C(0, &unk_280AEBEF0, 0x277CBEA60);
  if (swift_dynamicCast())
  {
    v45 = *&v113[0];
    v46 = [*&v113[0] count];
    v47 = sub_223C43DC0(0, v46 & ~(v46 >> 63), 0, MEMORY[0x277D84F90]);
    sub_223C48518();
    while (1)
    {
      sub_223C48068();
      if (!*(&v118[0] + 1))
      {
        v85 = OUTLINED_FUNCTION_27_1();
        v86(v85);

        *v42 = v47;
        OUTLINED_FUNCTION_50_0();
        goto LABEL_14;
      }

      sub_223C2A050(&v117, &v114);
      sub_223C2C58C(&v114, v14);
      if (v2)
      {
        break;
      }

      v49 = v47[2];
      v48 = v47[3];
      if (v49 >= v48 >> 1)
      {
        v47 = sub_223C43DC0((v48 > 1), v49 + 1, 1, v47);
      }

      __swift_destroy_boxed_opaque_existential_0(&v114);
      v47[2] = v49 + 1;
      sub_223C2D02C(v14, v47 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v49);
    }

    __swift_destroy_boxed_opaque_existential_0(&v114);
    v95 = OUTLINED_FUNCTION_27_1();
    v96(v95);

    return __swift_destroy_boxed_opaque_existential_0(v120);
  }

  sub_223C2811C(0, &qword_280AEC0B8, 0x277CBEAC0);
  if (!swift_dynamicCast())
  {
    v87 = sub_223C2811C(0, &qword_280AEBEE8, 0x277D82BB8);
    if (OUTLINED_FUNCTION_9_1(v87, v88, v89, v87))
    {
      v90 = v117;
      if ([v117 respondsToSelector_])
      {
        v91 = [v90 description];
        v92 = sub_223C48328();
        v94 = v93;

        *v42 = v92;
        v42[1] = v94;
        goto LABEL_3;
      }
    }

    v97 = OUTLINED_FUNCTION_41_0();
    __swift_project_boxed_opaque_existential_0(v97, v98);
    *&v117 = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C48, &qword_223C4AFC8);
    v99 = sub_223C48338();
    v101 = v100;
    sub_223C456A8();
    swift_allocError();
    *v102 = v99;
    v102[1] = v101;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v120);
  }

  *&v117 = 0;
  v103 = v120[6];
  sub_223C48248();
  if (v117)
  {
    v50 = v117;
    v119 = MEMORY[0x223DF5480](*(v117 + 16), MEMORY[0x277D837D0], v44, MEMORY[0x277D837E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C50, &qword_223C4AFD0);
    sub_223C48288();
    v51 = 0;
    v104 = v50;
    v52 = v50 + 64;
    OUTLINED_FUNCTION_28_1();
    v55 = v54 & v53;
    v56 = v119;
    v58 = (v57 + 63) >> 6;
    v106 = v50 + 64;
    if ((v54 & v53) == 0)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v59 = v51;
LABEL_36:
      v60 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v61 = v60 | (v59 << 6);
      v62 = (*(v104 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      sub_223C2C0BC(*(v104 + 56) + 32 * v61, v113);
      *&v114 = v64;
      *(&v114 + 1) = v63;
      sub_223C2A050(v113, &v115);

LABEL_37:
      v117 = v114;
      v118[0] = v115;
      v118[1] = v116;
      v108 = *(&v114 + 1);
      if (!*(&v114 + 1))
      {
        v119 = v56;

        *v42 = v56;
        OUTLINED_FUNCTION_49_0();
        goto LABEL_14;
      }

      v65 = v117;
      sub_223C2A050(v118, &v114);
      v66 = v110;
      sub_223C2C58C(&v114, v110);
      if (v2)
      {
        v119 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v114);

        return __swift_destroy_boxed_opaque_existential_0(v120);
      }

      sub_223C2D02C(v66, v111);
      swift_isUniquelyReferenced_nonNull_native();
      *&v113[0] = v56;
      v107 = v65;
      sub_223C29FE0();
      OUTLINED_FUNCTION_22_1();
      if (__OFADD__(v69, v70))
      {
        break;
      }

      v71 = v67;
      v72 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      if (sub_223C485F8())
      {
        v73 = sub_223C29FE0();
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_63;
        }

        v71 = v73;
      }

      if (v72)
      {

        v56 = *&v113[0];
        v75 = OUTLINED_FUNCTION_25_1();
        sub_223C36BBC(v75, v76);
        __swift_destroy_boxed_opaque_existential_0(&v114);
      }

      else
      {
        v56 = *&v113[0];
        OUTLINED_FUNCTION_53(*&v113[0] + 8 * (v71 >> 6));
        v78 = (v77 + 16 * v71);
        v79 = v108;
        *v78 = v107;
        v78[1] = v79;
        v80 = OUTLINED_FUNCTION_25_1();
        sub_223C2D02C(v80, v81);
        __swift_destroy_boxed_opaque_existential_0(&v114);
        v82 = *(v56 + 16);
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          goto LABEL_61;
        }

        *(v56 + 16) = v84;
      }

      v42 = v109;
      v52 = v106;
      if (!v55)
      {
LABEL_32:
        while (1)
        {
          v59 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v59 >= v58)
          {
            v55 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
            goto LABEL_37;
          }

          v55 = *(v52 + 8 * v59);
          ++v51;
          if (v55)
          {
            v51 = v59;
            goto LABEL_36;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
LABEL_63:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C2CF0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_223C3C718(0, 0, v0, &unk_223C4ABA0, v1);
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

uint64_t sub_223C2D02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t sub_223C2D120(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner((*(v2 + OBJC_IVAR____RTCReportingS_lock) + 16));
  v4 = sub_223C2C118(a1);
  v5 = sub_223C44660(v4, sub_223C2D328, sub_223C2D328);

  if (!v5[2])
  {

    v5 = 0;
  }

  *(v2 + OBJC_IVAR____RTCReportingS_extraFields) = v5;
}

uint64_t sub_223C2D328(unint64_t *a1, uint64_t a2, void *a3)
{
  v29 = a2;
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
  MEMORY[0x28223BE20](v33);
  v5 = (&v29 - v4);
  v6 = type metadata accessor for EventValue(0);
  v32 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v10 = 0;
  v34 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = (v34[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    sub_223C2D6B4(v34[7] + *(v32 + 72) * v21, v9);
    *v5 = v23;
    v5[1] = v24;
    sub_223C2D6B4(v9, v5 + *(v33 + 48));
    v25 = v23 == 0x4E746E65696C635FLL && v24 == 0xEB00000000656D61;
    if (v25 || (sub_223C48678() & 1) != 0 || (v23 == 0x656369767265735FLL ? (v26 = v24 == 0xEC000000656D614ELL) : (v26 = 0), v26))
    {
      swift_bridgeObjectRetain_n();
      sub_223C2CF0C(v5, &qword_27D0B99E0, &unk_223C4AFA0);
      sub_223C2D718(v9);
    }

    else
    {
      v27 = sub_223C48678();
      swift_bridgeObjectRetain_n();
      sub_223C2CF0C(v5, &qword_27D0B99E0, &unk_223C4AFA0);
      sub_223C2D718(v9);

      if ((v27 & 1) == 0)
      {
        *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (__OFADD__(v31++, 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_223C2D774(v30, v29, v31, v34);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_223C2D650(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223C4A8D0;
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

uint64_t sub_223C2D6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223C2D718(uint64_t a1)
{
  v2 = type metadata accessor for EventValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C2D774(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventValue(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
  result = sub_223C48648();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_223C2D6B4(v22 + v43 * v21, v40);
    sub_223C2D02C(v26, v17);
    sub_223C48758();

    sub_223C48358();
    result = sub_223C48788();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_223C2D02C(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_223C2DAB4(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_223C29FE0(), (v3 & 1) != 0) && (v4 = sub_223C2C0BC(*(a1 + 56) + 32 * v2, &v24), (OUTLINED_FUNCTION_50(v4, v5, v6, MEMORY[0x277D83B88], v7, v8, v9, v10, v20, v22, v24) & 1) != 0))
  {
    v11 = v21;
    sub_223C2C00C(a1, &v24);

    if (v25)
    {
      if (OUTLINED_FUNCTION_50(v12, v13, v14, MEMORY[0x277D837D0], v15, v16, v17, v18, v21, v23, v24))
      {
        return v11;
      }
    }

    else
    {
      sub_223C2CF0C(&v24, &qword_27D0B99E8, &qword_223C4A8A0);
    }
  }

  else
  {
  }

  v11 = 0;
  OUTLINED_FUNCTION_43();
  return v11;
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_223C48618();
}

uint64_t sub_223C2DC14@<X0>(double *a1@<X8>)
{
  getTimeIntervalSince1970(Date:)();
  v3 = v2;
  if (!v2)
  {
    v3 = -1.0;
  }

  *a1 = v3;
  type metadata accessor for EventValue(0);

  return swift_storeEnumTagMultiPayload();
}

void getTimeIntervalSince1970(Date:)()
{
  sub_223C48108();
  v1 = (*&v0 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v2 = v0 < 0.0 && ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v0 >= 0.0)
  {
    v1 = 0;
  }

  v3 = (*&v0 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v1;
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v3 = 1;
  }

  if (((v3 | v2) & 1) == 0)
  {
    if (v0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v0 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }
}

unint64_t OUTLINED_FUNCTION_33()
{

  return sub_223C29FE0();
}

uint64_t sub_223C2DE04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_223C351E8;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_29_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v2;
  *(a1 - 8) = v1;
  return v3 + 16;
}

uint64_t sub_223C2DF44()
{
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *v0;
  if (!*(v13 + 16))
  {
    return 0;
  }

  v14 = sub_223C29FE0();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_223C2D6B4(*(v13 + 56) + *(v2 + 72) * v14, v10);
  sub_223C2D02C(v10, v12);
  sub_223C2D02C(v12, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v6;
    }

    sub_223C2F914(v6, type metadata accessor for EventValue);
    return 0;
  }

  result = *v6;
  if ((*v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223C2E0D0(uint64_t a1)
{
  v2 = v1;
  if (*(*(v1 + 32) + 320) != 1)
  {
    goto LABEL_18;
  }

  v3 = *(v1 + 25);
  v192 = *(v1 + 272);
  v4 = Event.category.getter();
  v5 = *(v1 + 32);
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    v8 = *(v5 + 160);
    if (*(v8 + 16))
    {
      if ((sub_223C3C4E0(v4, v8) & 1) == 0)
      {
        if (qword_280AEBEE0 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_280AEBEE0);
        }

        v15 = sub_223C481B8();
        __swift_project_value_buffer(v15, qword_280AEC380);
        v11 = sub_223C48198();
        v12 = sub_223C48498();
        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_17;
        }

        v13 = OUTLINED_FUNCTION_52();
        *v13 = 134349056;
        *(v13 + 4) = v7;
        v14 = "dropping event with category %{public}ld due to allowlist";
        goto LABEL_16;
      }

      v5 = *(v1 + 32);
    }

    v9 = *(v5 + 168);
    if (*(v9 + 16))
    {
      if (sub_223C3C4E0(v7, v9))
      {
        if (qword_280AEBEE0 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_280AEBEE0);
        }

        v10 = sub_223C481B8();
        __swift_project_value_buffer(v10, qword_280AEC380);
        v11 = sub_223C48198();
        v12 = sub_223C48498();
        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_17;
        }

        v13 = OUTLINED_FUNCTION_52();
        *v13 = 134349056;
        *(v13 + 4) = v7;
        v14 = "dropping event with category %{public}ld due to denylist";
LABEL_16:
        _os_log_impl(&dword_223C26000, v11, v12, v14, v13, 0xCu);
        OUTLINED_FUNCTION_36();
LABEL_17:

LABEL_18:

        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_32();

        __asm { BRAA            X1, X16 }
      }

      v5 = *(v1 + 32);
    }
  }

  v18 = *(v1 + 272);
  v191 = v3;
  if (*(v5 + 200) != 1)
  {

    goto LABEL_60;
  }

  v19 = qword_280AEC160;

  if (v19 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    OUTLINED_FUNCTION_6_0();
    if (byte_280AEC398)
    {
      v21 = v2[31];
      v20 = v2[32];
      v22 = v2[30];
      v23 = v2[27];
      v24 = v2[25];
      v26 = v2[14];
      v25 = v2[15];
      sub_223C48118();
      sub_223C2DC14(v23);
      (*(v21 + 8))(v20, v22);
      sub_223C2DC14(v25);
      OUTLINED_FUNCTION_11_0();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
      sub_223C2C4D4(v25, v26, &qword_27D0B9950, &qword_223C4A5D0);
      if (__swift_getEnumTagSinglePayload(v26, 1, v24) == 1)
      {
        sub_223C2CF0C(v2[14], &qword_27D0B9950, &qword_223C4A5D0);
        v30 = OUTLINED_FUNCTION_33();
        v31 = v2[34];
        if (v32)
        {
          v33 = v30;
          v34 = v2[13];
          swift_isUniquelyReferenced_nonNull_native();
          v192 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_38();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v35 + v36 * v33, v34);
          OUTLINED_FUNCTION_51(v33, v37, MEMORY[0x277D837D0], v38, MEMORY[0x277D837E0]);
        }

        OUTLINED_FUNCTION_44();
        v57 = v2[13];
        OUTLINED_FUNCTION_35(v58, v59, v60, v61);
        sub_223C2CF0C(v57, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[14], v2[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_22_0();
      }

      v62 = v2[27];
      v64 = v2[11];
      v63 = v2[12];
      sub_223C2CF0C(v2[15], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v62, v63);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
      v69 = OUTLINED_FUNCTION_15_0();
      sub_223C2C4D4(v69, v70, v71, &qword_223C4A5D0);
      OUTLINED_FUNCTION_13_0(v64);
      if (v72)
      {
        sub_223C2CF0C(v2[11], &qword_27D0B9950, &qword_223C4A5D0);
        v73 = OUTLINED_FUNCTION_24_0();
        if (v74)
        {
          v75 = v73;
          v76 = v2[10];
          swift_isUniquelyReferenced_nonNull_native();
          v192 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v77 + v78 * v75, v76);
          OUTLINED_FUNCTION_51(v75, v79, MEMORY[0x277D837D0], v80, MEMORY[0x277D837E0]);
        }

        OUTLINED_FUNCTION_44();
        v106 = v2[10];
        OUTLINED_FUNCTION_35(v107, v108, v109, v110);
        sub_223C2CF0C(v106, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[11], v2[28]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_18_0(isUniquelyReferenced_nonNull_native);
      }

      v111 = v2[27];
      v113 = v2[8];
      v112 = v2[9];
      v18 = &qword_27D0B9950;
      sub_223C2CF0C(v2[12], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v111, v112);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_13_0(v113);
      if (v72)
      {
        sub_223C2CF0C(v2[8], &qword_27D0B9950, &qword_223C4A5D0);
        v118 = OUTLINED_FUNCTION_28_0();
        if (v120)
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_47();
          v118 = sub_223C48618();
          v121 = 0;
        }

        else
        {
          v121 = 1;
        }

        v140 = v2[7];
        OUTLINED_FUNCTION_35(v118, v121, v119, v2[25]);
        sub_223C2CF0C(v140, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[8], v2[28]);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_0(v122);
        v18 = v192;
      }

      v141 = v2[27];
      sub_223C2CF0C(v2[9], &qword_27D0B9950, &qword_223C4A5D0);
      OUTLINED_FUNCTION_10_0();
      sub_223C2F914(v141, v142);
    }

    else
    {
      v39 = v2[32];
      v41 = v2[30];
      v40 = v2[31];
      v189 = v2[29];
      v42 = v2[24];
      v43 = v2[25];
      v44 = v2[23];
      sub_223C48118();
      sub_223C480E8();
      v190 = *(v40 + 8);
      v190(v39, v41);
      sub_223C48128();
      sub_223C2DC14(v189);
      sub_223C2DC14(v42);
      OUTLINED_FUNCTION_11_0();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
      sub_223C2C4D4(v42, v44, &qword_27D0B9950, &qword_223C4A5D0);
      if (__swift_getEnumTagSinglePayload(v44, 1, v43) == 1)
      {
        sub_223C2CF0C(v2[23], &qword_27D0B9950, &qword_223C4A5D0);
        v48 = OUTLINED_FUNCTION_33();
        v49 = v2[34];
        if (v50)
        {
          v51 = v48;
          v52 = v2[22];
          swift_isUniquelyReferenced_nonNull_native();
          v192 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_38();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v53 + v54 * v51, v52);
          OUTLINED_FUNCTION_51(v51, v55, MEMORY[0x277D837D0], v56, MEMORY[0x277D837E0]);
        }

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_44();
        v82 = v2[22];
        OUTLINED_FUNCTION_35(v83, v84, v85, v86);
        sub_223C2CF0C(v82, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[23], v2[28]);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_6_0();
      }

      v87 = v2[29];
      v89 = v2[20];
      v88 = v2[21];
      sub_223C2CF0C(v2[24], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v87, v88);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_15_0();
      sub_223C2C4D4(v94, v95, v96, &qword_223C4A5D0);
      OUTLINED_FUNCTION_13_0(v89);
      if (v72)
      {
        sub_223C2CF0C(v2[20], &qword_27D0B9950, &qword_223C4A5D0);
        v97 = OUTLINED_FUNCTION_24_0();
        if (v98)
        {
          v99 = v97;
          v100 = v2[19];
          swift_isUniquelyReferenced_nonNull_native();
          v192 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_6_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_37();

          OUTLINED_FUNCTION_45();
          sub_223C2D02C(v101 + v102 * v99, v100);
          OUTLINED_FUNCTION_51(v99, v103, MEMORY[0x277D837D0], v104, MEMORY[0x277D837E0]);
        }

        OUTLINED_FUNCTION_44();
        v123 = v2[19];
        OUTLINED_FUNCTION_35(v124, v125, v126, v127);
        sub_223C2CF0C(v123, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[20], v2[28]);
        v105 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_18_0(v105);
      }

      v128 = v2[29];
      v130 = v2[17];
      v129 = v2[18];
      v18 = &qword_27D0B9950;
      sub_223C2CF0C(v2[21], &qword_27D0B9950, &qword_223C4A5D0);
      sub_223C2D6B4(v128, v129);
      OUTLINED_FUNCTION_2_1();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_13_0(v130);
      if (v72)
      {
        sub_223C2CF0C(v2[17], &qword_27D0B9950, &qword_223C4A5D0);
        v135 = OUTLINED_FUNCTION_28_0();
        if (v137)
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
          OUTLINED_FUNCTION_5_0();
          sub_223C485F8();
          OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_47();
          v135 = sub_223C48618();
          v138 = 0;
        }

        else
        {
          v138 = 1;
        }

        v143 = v2[16];
        OUTLINED_FUNCTION_35(v135, v138, v136, v2[25]);
        sub_223C2CF0C(v143, &qword_27D0B9950, &qword_223C4A5D0);
      }

      else
      {
        sub_223C2D02C(v2[17], v2[28]);
        v139 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_23_0(v139);
        v18 = v192;
      }

      v144 = v2[33];
      v146 = v2[29];
      v145 = v2[30];
      sub_223C2CF0C(v2[18], &qword_27D0B9950, &qword_223C4A5D0);
      OUTLINED_FUNCTION_10_0();
      sub_223C2F914(v146, v147);
      v190(v144, v145);
    }

LABEL_60:
    v148 = v2[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
    OUTLINED_FUNCTION_42();
    v151 = *(v150 + 72);
    v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_223C4A8F0;
    v155 = (v154 + v153);
    v156 = *(v149 + 48);
    v157 = MessageKeys.payload.unsafeMutableAddressor();
    v159 = *v157;
    v158 = v157[1];
    *v155 = v159;
    v155[1] = v158;
    v192 = v18;

    sub_223C2F96C();
    *(v155 + v156) = v160;
    type metadata accessor for XPCObject(0);
    swift_storeEnumTagMultiPayload();
    v161 = (v155 + v151);
    v162 = MessageKeys.sessionID.unsafeMutableAddressor();
    v163 = v162[1];
    *v161 = *v162;
    v161[1] = v163;
    v164 = *(v148 + 184);
    if (!v164)
    {
      __break(1u);
      return MEMORY[0x282200430]();
    }

    v165 = v2[4];
    v166 = (v161 + *(v149 + 48));
    *v166 = *(v165 + 176);
    v166[1] = v164;
    swift_storeEnumTagMultiPayload();
    v167 = (v155 + 2 * v151);
    v168 = *(v149 + 48);

    v169 = MessageKeys.realtime.unsafeMutableAddressor();
    v171 = *v169;
    v170 = v169[1];
    *v167 = v171;
    v167[1] = v170;

    *(v167 + v168) = v191;
    swift_storeEnumTagMultiPayload();
    v2[35] = RTCXPCDictionary.init(dictionaryLiteral:)(v154);
    v172 = *(v165 + 344);
    v173 = __OFADD__(v172, 1);
    v174 = v172 + 1;
    if (!v173)
    {
      break;
    }

    __break(1u);
LABEL_70:
    swift_once();
  }

  *(v165 + 344) = v174;
  v175 = v2[4];
  v176 = *(v175 + 312);
  v2[36] = v176;
  if (!v176)
  {
    v179 = v2[35];
    v181 = v2[5];
    v180 = v2[6];
    v182 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v180, 1, 1, v182);
    v183 = sub_223C30968();
    v184 = swift_allocObject();
    v184[2] = v175;
    v184[3] = v183;
    v184[4] = v175;
    v184[5] = v179;
    v184[6] = v181;
    swift_retain_n();
    swift_unknownObjectRetain();
    v185 = OUTLINED_FUNCTION_7_0();
    v2[38] = v185;
    *(v175 + 312) = v185;

    v186 = swift_task_alloc();
    v2[39] = v186;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v186 = v2;
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x282200430]();
  }

  v177 = swift_task_alloc();
  v2[37] = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
  *v177 = v2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_32();

  return MEMORY[0x282200440]();
}

uint64_t sub_223C2F028()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C2F084()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return v4(v3);
}

uint64_t sub_223C2F168()
{
  v3 = sub_223C48188();
  OUTLINED_FUNCTION_26(v3);
  OUTLINED_FUNCTION_42_0();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_223C349AC;
  OUTLINED_FUNCTION_2_2();

  return sub_223C2F540(v7, v8, v9, v10, v2, v4, v5, v11);
}

uint64_t sub_223C2F298()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  *(v1 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v4 = type metadata accessor for EventValue(0);
  *(v1 + 200) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 208) = v5;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  v6 = sub_223C48138();
  *(v1 + 240) = v6;
  OUTLINED_FUNCTION_26(v6);
  *(v1 + 248) = v7;
  *(v1 + 256) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v3;
  *(v1 + 264) = v8;
  *(v1 + 272) = v9;
  *(v1 + 25) = *(v3 + 8);

  return MEMORY[0x2822009F8](sub_223C2E0D0, v0, 0);
}

uint64_t sub_223C2F540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a8;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  v9 = swift_task_alloc();
  *(v8 + 88) = v9;
  *v9 = v8;
  v9[1] = sub_223C350E4;

  return sub_223C2F298();
}

uint64_t sub_223C2F610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_22_1();
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v6;
  v11 = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
  if ((OUTLINED_FUNCTION_59(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_223C29FE0();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_223C486C8();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_63();

    return sub_223C36BBC(v15, v16);
  }

  else
  {
    sub_223C2F7C0(v10, v4, v3, v2, *v5);
    OUTLINED_FUNCTION_63();
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_223C2F7C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EventValue(0);
  result = sub_223C2D02C(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FCC68](v5 - 88, a2, a3, v3, v4);
}

void OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  *(a1 + 16) = sub_223C45688;
  *(a1 + 24) = v1;

  os_unfair_lock_lock(v2 + 4);
}

uint64_t sub_223C2F914(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_223C2F96C()
{
  OUTLINED_FUNCTION_24();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v2);
  v56 = &v52 - v3;
  v4 = type metadata accessor for EventValue(0);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_13();
  v58 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v57 = (&v52 - v13);
  v14 = *v0;

  v59 = RTCXPCDictionary.init()();
  v15 = v14 + 64;
  v54 = v14;
  OUTLINED_FUNCTION_15();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v52 = v21;
  swift_unknownObjectRetain();
  v22 = 0;
  v55 = v15;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
      v24 = v57;
LABEL_8:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v23 << 6);
      v27 = (*(v54 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      v30 = v58;
      sub_223C2D6B4(*(v54 + 56) + *(v53 + 72) * v26, v58);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      v32 = *(v31 + 48);
      *v11 = v29;
      v11[1] = v28;
      sub_223C2D02C(v30, v11 + v32);
      v33 = OUTLINED_FUNCTION_8();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);

LABEL_9:
      v36 = OUTLINED_FUNCTION_28();
      sub_223C3140C(v36, v37);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      if (__swift_getEnumTagSinglePayload(v24, 1, v38) == 1)
      {
        break;
      }

      v40 = *v24;
      v39 = v24[1];
      v41 = v24 + *(v38 + 48);
      v42 = v11;
      v43 = v58;
      sub_223C2D02C(v41, v58);
      v44 = v56;
      sub_223C3147C();
      v45 = type metadata accessor for XPCObject(0);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
      RTCXPCDictionary.subscript.setter(v44, v40, v39);
      OUTLINED_FUNCTION_2_0();
      v46 = v43;
      v11 = v42;
      sub_223C2F914(v46, v47);
      v15 = v55;
      if (!v18)
      {
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_23();
  }

  else
  {
LABEL_3:
    v24 = v57;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        OUTLINED_FUNCTION_26_0();
        __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
        v18 = 0;
        goto LABEL_9;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v22 = v23;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_11()
{

  return MEMORY[0x2821FDEA0](v2, v0, v1);
}

uint64_t type metadata accessor for XPCObject(uint64_t a1)
{
  result = qword_280AEC190;
  if (!qword_280AEC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_223C48188();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  type metadata accessor for XPCObject(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_20();
  sub_223C304C4(v13, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v15 = xpc_BOOL_create(*v12);
      goto LABEL_13;
    case 3u:
      v15 = xpc_int64_create(*v12);
      goto LABEL_13;
    case 4u:
      v15 = xpc_uint64_create(*v12);
      goto LABEL_13;
    case 5u:
      v15 = xpc_double_create(*v12);
      goto LABEL_13;
    case 6u:
      v15 = xpc_date_create(*v12);
      goto LABEL_13;
    case 7u:
      v24 = *v12;
      v23 = *(v12 + 8);
      switch(v23 >> 62)
      {
        case 1uLL:
          v29 = v24 >> 32;
          if (v24 >> 32 < v24)
          {
            __break(1u);
          }

          v28 = v24;
          goto LABEL_20;
        case 2uLL:
          v28 = *(v24 + 16);
          v29 = *(v24 + 24);
LABEL_20:
          sub_223C461C8(v28, v29);
          goto LABEL_21;
        case 3uLL:
          memset(uuid, 0, 14);
          v25 = 0;
          goto LABEL_17;
        default:
          *uuid = *v12;
          *&uuid[8] = v23;
          uuid[10] = BYTE2(v23);
          uuid[11] = BYTE3(v23);
          uuid[12] = BYTE4(v23);
          v25 = BYTE6(v23);
          uuid[13] = BYTE5(v23);
LABEL_17:
          xpc_data_create(uuid, v25);
LABEL_21:
          v30 = OUTLINED_FUNCTION_9_2();
          sub_223C46250(v30, v23);
          break;
      }

      return v1;
    case 8u:
      v26 = sub_223C48348();

      xpc_string_create((v26 + 32));
      OUTLINED_FUNCTION_9_2();

      return v1;
    case 9u:
      (*(v4 + 32))(v8, v12, v2);
      *uuid = sub_223C48168();
      *&uuid[8] = v16;
      uuid[10] = v17;
      uuid[11] = v18;
      uuid[12] = v19;
      uuid[13] = v20;
      uuid[14] = v21;
      uuid[15] = v22;
      v1 = xpc_uuid_create(uuid);
      (*(v4 + 8))(v8, v2);
      return v1;
    case 0xDu:
      v15 = xpc_null_create();
LABEL_13:
      v1 = v15;
      break;
    default:
      v1 = *v12;
      break;
  }

  return v1;
}

xpc_object_t RTCXPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v3 = OUTLINED_FUNCTION_14(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v46 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v45 = v12 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (v39 - v19);
  MEMORY[0x28223BE20](v18);
  v44 = (v39 - v21);
  empty = xpc_dictionary_create_empty();
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v8[12];
    v24 = *(v10 + 80);
    v39[1] = a1;
    v40 = v20;
    v25 = a1 + ((v24 + 32) & ~v24);
    v41 = *(v10 + 72);
    v42 = v23;
    v43 = v17;
    do
    {
      v48 = v22;
      v26 = v44;
      sub_223C2C474(v25, v44, &unk_27D0B9A18, &qword_223C4A950);
      v27 = v26[1];
      v28 = v8[12];
      *v20 = *v26;
      v20[1] = v27;
      sub_223C307C0(v26 + v42, v20 + v28);
      sub_223C2C474(v20, v17, &unk_27D0B9A18, &qword_223C4A950);
      v29 = v45;
      sub_223C2C474(v20, v45, &unk_27D0B9A18, &qword_223C4A950);

      v30 = v49;
      v31 = v8;
      sub_223C307C0(v29 + v8[12], v49);
      type metadata accessor for XPCObject(0);
      v32 = OUTLINED_FUNCTION_9_2();
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v8);
      v33 = v30;
      v34 = v46;
      sub_223C2C474(v33, v46, &unk_27D0B9C60, qword_223C4B100);
      if (__swift_getEnumTagSinglePayload(v34, 1, v8) == 1)
      {
        sub_223C2CF0C(v34, &unk_27D0B9C60, qword_223C4B100);
        v8 = 0;
      }

      else
      {
        XPCObject.obj.getter();
        v35 = OUTLINED_FUNCTION_9_2();
        sub_223C3058C(v35);
      }

      v36 = v31[12];
      v37 = sub_223C48348();

      xpc_dictionary_set_value(empty, (v37 + 32), v8);
      v8 = v31;
      swift_unknownObjectRelease();
      sub_223C2CF0C(v49, &unk_27D0B9C60, qword_223C4B100);
      v20 = v40;
      sub_223C2CF0C(v40, &unk_27D0B9A18, &qword_223C4A950);

      v17 = v43;
      sub_223C3058C(&v43[v36]);
      v25 += v41;
      v22 = v48 - 1;
    }

    while (v48 != 1);
  }

  return empty;
}

uint64_t sub_223C304C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_223C3058C(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return MEMORY[0x2821FE988](v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  *(v2 - 96) = v1;

  return sub_223C2F610(v0, 0x535474726174735FLL);
}

void *XPCMessage.init(ty:payload:)(unsigned __int8 a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = xpc_int64_create(a1);
  XPCObject.init(_:)(v10, v9);
  sub_223C320CC(v9, v7);
  v11 = type metadata accessor for XPCObject(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_223C30D7C(v7);
    v12 = 0;
  }

  else
  {
    v12 = XPCObject.obj.getter();
    sub_223C3058C(v7);
  }

  v13 = sub_223C48348();
  xpc_dictionary_set_value(a2, (v13 + 32), v12);
  swift_unknownObjectRelease();
  sub_223C30D7C(v9);

  return a2;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_223C30854, 0, 0);
}

uint64_t sub_223C307C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223C30854()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_223C34658;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000011, 0x8000000223C4A500, sub_223C30DE4, v6, &type metadata for RTCXPCDictionary);
}

unint64_t sub_223C30968()
{
  result = qword_280AEC0D0;
  if (!qword_280AEC0D0)
  {
    type metadata accessor for Session(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AEC0D0);
  }

  return result;
}

char *OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = &a9 - v9;
  *(v11 - 104) = v10;
  return result;
}

void sub_223C30A24(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - v11;
  (*(v10 + 16))(aBlock - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_223C31158;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223C310B8;
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, a3, a5, v15);
  _Block_release(v15);
}

uint64_t sub_223C30BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_223C30CA4()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[3];
  swift_unknownObjectRetain();
  v0[4] = XPCMessage.init(ty:payload:)(2u, v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_14_0(v2);

  return XPCConnection.sendWithReply(_:)(v3, v4);
}

uint64_t sub_223C30D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_223C30CA4, a4, 0);
}

uint64_t sub_223C30D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C30DF4()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 4);
  sub_223C2A5BC(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

uint64_t sub_223C30E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 24);
  if (result || (v5 = *(a1 + 16), type metadata accessor for XPCConnection(), swift_allocObject(), *(a1 + 24) = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000017, 0x8000000223C4A000, v5, 0, 0, 0), result = , (v6 = *(a1 + 24)) != 0) && (swift_beginAccess(), *(v6 + 32) = &off_283720B08, swift_unknownObjectWeakAssign(), (result = *(a1 + 24)) != 0))
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223C30FA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 97))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_223C30FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_223C3106C(uint64_t a1, int a2)
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

uint64_t sub_223C310B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_223C31118(uint64_t result, int a2, int a3)
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

uint64_t sub_223C31158(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);

  return sub_223C311E0(a1);
}

uint64_t sub_223C311E0(uint64_t a1)
{
  if (MEMORY[0x223DF6570]() == MEMORY[0x277D86480])
  {
    sub_223C46FD4();
    swift_allocError();
    *v3 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
    return sub_223C483D8();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C80, &qword_223C4B430);
    return sub_223C483E8();
  }
}

uint64_t sub_223C312C0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  *(v7 + 1192) = v6;
  *(v7 + 1200) = v0;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_223C3140C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_223C3147C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  v82 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v83 = type metadata accessor for XPCObject(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_7();
  v81 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = (&v75 - v27);
  sub_223C2D6B4(v0, &v75 - v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      *v2 = *v28;
      OUTLINED_FUNCTION_18();
      break;
    case 4u:
      *v2 = *v28;
      OUTLINED_FUNCTION_18();
      break;
    case 5u:
      sub_223C48188();
      OUTLINED_FUNCTION_3_0();
      (*(v65 + 32))(v2, v28);
      OUTLINED_FUNCTION_18();
      break;
    case 6u:
      v66 = v2;
      v67 = *v28;
      empty = xpc_array_create_empty();
      v69 = *(v67 + 16);
      if (v69)
      {
        v70 = v67 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v71 = *(v81 + 72);
        do
        {
          sub_223C2D6B4(v70, v26);
          sub_223C3147C();
          OUTLINED_FUNCTION_2_0();
          sub_223C2F914(v26, v72);
          v73 = XPCObject.obj.getter();
          sub_223C2F914(v17, type metadata accessor for XPCObject);
          xpc_array_append_value(empty, v73);
          swift_unknownObjectRelease();
          v70 += v71;
          --v69;
        }

        while (v69);
      }

      *v66 = empty;
      break;
    case 7u:
      v79 = v13;
      v80 = v10;
      v77 = v2;
      v30 = *v28;
      v84 = RTCXPCDictionary.init()();
      v31 = v30 + 64;
      v78 = v30;
      OUTLINED_FUNCTION_15();
      v34 = v33 & v32;
      v36 = (v35 + 63) >> 6;
      v76 = v37;
      swift_unknownObjectRetain();
      v38 = 0;
      if (!v34)
      {
        goto LABEL_6;
      }

LABEL_5:
      v39 = v38;
      v40 = v80;
LABEL_11:
      v41 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v42 = v41 | (v39 << 6);
      v43 = (*(v78 + 48) + 16 * v42);
      v45 = *v43;
      v44 = v43[1];
      sub_223C2D6B4(*(v78 + 56) + *(v81 + 72) * v42, v22);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
      v47 = *(v46 + 48);
      *v40 = v45;
      v40[1] = v44;
      sub_223C2D02C(v22, v40 + v47);
      v48 = OUTLINED_FUNCTION_8();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);

      while (1)
      {
        v51 = v40;
        v52 = v79;
        sub_223C3140C(v51, v79);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
        {
          break;
        }

        v54 = *(v52 + 8);
        sub_223C2D02C(v52 + *(v53 + 48), v22);
        sub_223C3147C();
        v55 = OUTLINED_FUNCTION_8();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v83);
        v58 = OUTLINED_FUNCTION_28();
        RTCXPCDictionary.subscript.setter(v58, v59, v54);
        OUTLINED_FUNCTION_2_0();
        sub_223C2F914(v22, v60);
        if (v34)
        {
          goto LABEL_5;
        }

LABEL_6:
        v40 = v80;
        while (1)
        {
          v39 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
            JUMPOUT(0x223C319C0);
          }

          if (v39 >= v36)
          {
            break;
          }

          v34 = *(v31 + 8 * v39);
          ++v38;
          if (v34)
          {
            v38 = v39;
            goto LABEL_11;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
        OUTLINED_FUNCTION_26_0();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
        v34 = 0;
      }

      v74 = v76;
      swift_unknownObjectRelease();

      *v77 = v74;
      break;
    default:
      v29 = v28[1];
      *v2 = *v28;
      v2[1] = v29;
      OUTLINED_FUNCTION_18();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23();
}

uint64_t RTCXPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *v3;
  sub_223C2C474(a1, &v14 - v7, &unk_27D0B9C60, qword_223C4B100);
  v10 = type metadata accessor for XPCObject(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_223C2CF0C(v8, &unk_27D0B9C60, qword_223C4B100);
    v11 = 0;
  }

  else
  {
    v11 = XPCObject.obj.getter();
    sub_223C3058C(v8);
  }

  OUTLINED_FUNCTION_20();
  v12 = sub_223C48348();

  xpc_dictionary_set_value(v9, (v12 + 32), v11);
  swift_unknownObjectRelease();
  sub_223C2CF0C(a1, &unk_27D0B9C60, qword_223C4B100);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, a2, 1, a4);
}

uint64_t sub_223C31B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_223C349AC;

  return sub_223C30D5C(a1, v4, v5, v6, v7);
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223C48188();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = type metadata accessor for XPCObject(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v40 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  if (a1)
  {
    v22 = swift_unknownObjectRetain();
    v23 = MEMORY[0x223DF6570](v22);
    if (v23 == MEMORY[0x277D864B0])
    {
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_1_3();
    }

    else
    {
      v24 = v23;
      if (v23 == MEMORY[0x277D86450] || v23 == MEMORY[0x277D86478])
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_0_3();
      }

      else if (v23 == MEMORY[0x277D86448])
      {
        value = xpc_BOOL_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v21 = value;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v23 == MEMORY[0x277D86498])
      {
        v27 = xpc_int64_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v21 = v27;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v23 == MEMORY[0x277D864C8])
      {
        v28 = xpc_uint64_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v21 = v28;
        OUTLINED_FUNCTION_1_3();
      }

      else if (v23 == MEMORY[0x277D86470])
      {
        v29 = xpc_double_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v21 = v29;
        OUTLINED_FUNCTION_1_3();
      }

      else
      {
        if (v23 != MEMORY[0x277D86460])
        {
          if (v23 == MEMORY[0x277D86458])
          {
            result = xpc_data_get_bytes_ptr(a1);
            if (result)
            {
              v31 = result;
              length = xpc_data_get_length(a1);
              v33 = MEMORY[0x223DF52E0](v31, length);
              v35 = v34;
              OUTLINED_FUNCTION_5_2();
              *v19 = v33;
              v19[1] = v35;
              swift_storeEnumTagMultiPayload();
              v36 = v19;
LABEL_34:
              sub_223C307C0(v36, v21);
              goto LABEL_29;
            }

            __break(1u);
          }

          else
          {
            if (v23 != MEMORY[0x277D864C0])
            {
              if (v23 != MEMORY[0x277D864D0])
              {
                swift_unknownObjectRelease();
                if (v24 != MEMORY[0x277D864B8] && v24 != MEMORY[0x277D86440] && v24 != MEMORY[0x277D86468])
                {
                  swift_unknownObjectRelease();
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_0_3();
                goto LABEL_28;
              }

              result = xpc_uuid_get_bytes(a1);
              if (result)
              {
                sub_223C48158();
                OUTLINED_FUNCTION_5_2();
                (*(v6 + 32))(v21, v10, v4);
                OUTLINED_FUNCTION_1_3();
                goto LABEL_28;
              }

LABEL_40:
              __break(1u);
              return result;
            }

            result = xpc_string_get_string_ptr(a1);
            if (result)
            {
              v37 = sub_223C48378();
              v39 = v38;
              OUTLINED_FUNCTION_5_2();
              *v15 = v37;
              v15[1] = v39;
              swift_storeEnumTagMultiPayload();
              v36 = v15;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v30 = xpc_date_get_value(a1);
        OUTLINED_FUNCTION_5_2();
        *v21 = v30;
        OUTLINED_FUNCTION_1_3();
      }
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_223C307C0(v21, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

LABEL_17:

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v11);
}

uint64_t sub_223C320CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223C32180(uint64_t a1)
{
  v14 = v1[2];
  v12 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_1(v8);
  *v9 = v10;
  v9[1] = sub_223C34944;

  return sub_223C3234C(a1, v14, v12, v3, v4, v5, v6, v7);
}

uint64_t sub_223C3234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = v13;
  *(v8 + 328) = v14;
  *(v8 + 304) = v12;
  *(v8 + 288) = a8;
  *(v8 + 296) = v11;
  *(v8 + 272) = a6;
  *(v8 + 280) = a7;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  memcpy((v8 + 16), v11, 0x61uLL);

  return MEMORY[0x2822009F8](sub_223C323DC, 0, 0);
}

uint64_t sub_223C323DC()
{
  OUTLINED_FUNCTION_20_1();
  v1 = v0[37];
  v0[42] = sub_223C324E4();
  v0[43] = v2;
  type metadata accessor for Session(0);
  swift_allocObject();

  sub_223C2DA7C(v1, (v0 + 15));
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_223C34030;
  OUTLINED_FUNCTION_41_0();

  return sub_223C329EC();
}

uint64_t type metadata accessor for Session(uint64_t a1)
{
  result = qword_280AEC1E8;
  if (!qword_280AEC1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223C329EC()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 992) = v0;
  *(v1 + 113) = v2;
  *(v1 + 984) = v3;
  *(v1 + 976) = v4;
  *(v1 + 968) = v5;
  *(v1 + 960) = v6;
  *(v1 + 952) = v7;
  *(v1 + 944) = v8;
  *(v1 + 936) = v9;
  *(v1 + 218) = *v3;
  *(v1 + 322) = *(v3 + 2);
  *(v1 + 220) = *(v3 + 4);
  v10 = *(v3 + 24);
  *(v1 + 1000) = *(v3 + 8);
  *(v1 + 1016) = v10;
  v11 = *(v3 + 56);
  *(v1 + 1032) = *(v3 + 40);
  *(v1 + 1048) = v11;
  *(v1 + 1064) = *(v3 + 72);
  *(v1 + 217) = *(v3 + 80);
  *(v1 + 321) = *(v3 + 81);
  *(v1 + 114) = *(v3 + 82);
  *(v1 + 118) = *(v3 + 86);
  *(v1 + 1072) = *(v3 + 88);
  *(v1 + 324) = *(v3 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9C60, qword_223C4B100);
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  *(v1 + 1104) = swift_task_alloc();
  *(v1 + 1112) = swift_task_alloc();
  *(v1 + 1120) = swift_task_alloc();
  v12 = sub_223C48138();
  *(v1 + 1128) = v12;
  OUTLINED_FUNCTION_26(v12);
  *(v1 + 1136) = v13;
  *(v1 + 1144) = swift_task_alloc();
  OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t OUTLINED_FUNCTION_47()
{
  v5 = *(v3 + 56) + *(v1 + 72) * v0;

  return sub_223C2D02C(v5, v2);
}

uint64_t sub_223C32BC8()
{
  v1 = (v0 + 325);
  v2 = *(v0 + 992);
  swift_defaultActor_initialize();
  v2[22] = 0;
  v2[23] = 0;
  if (qword_280AEC1C0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 992);
  v2[24] = sub_223C30DF4();
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 1;
  *(v3 + 312) = 0;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 304) = 0;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  *(v3 + 328) = 0;
  v4 = sub_223C28174();
  *v1 = v4 & 1;
  if (v4)
  {
    v142 = v2;
    v5 = *(v0 + 1144);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1128);
    v143 = *(v0 + 1016);
    v8 = *(v0 + 992);
    v9 = *(v0 + 113);
    v140 = *(v0 + 984);
    v10 = *(v0 + 968);
    v11 = *(v0 + 944);
    v12 = *(v0 + 936);
    *(v8 + 112) = *(v0 + 952);
    *(v8 + 128) = v10;
    *(v8 + 144) = v12;
    *(v8 + 152) = v11;
    *(v8 + 200) = v9;
    sub_223C48118();
    v13 = OBJC_IVAR____TtC12RTCReporting7Session_baseTime;
    v14 = *(v6 + 32);
    v14(v8 + OBJC_IVAR____TtC12RTCReporting7Session_baseTime, v5, v7);
    (*(v6 + 16))(v5, v8 + v13, v7);
    getTimeIntervalSince1970(Date:)();
    (*(v6 + 8))(v5, v7);
    sub_223C480F8();
    v14(v8 + OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime, v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950);
    OUTLINED_FUNCTION_42();
    v17 = *(v16 + 72);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_223C4A8E0;
    v137 = v20;
    v21 = (v20 + v19);
    v22 = (v21 + *(v15 + 48));
    v23 = MessageKeys.clientName.unsafeMutableAddressor();
    v24 = v23[1];
    *v21 = *v23;
    v21[1] = v24;
    v25 = *(v8 + 120);
    *v22 = *(v8 + 112);
    v22[1] = v25;
    v26 = type metadata accessor for XPCObject(0);
    *(v0 + 1152) = v26;
    OUTLINED_FUNCTION_34();
    v27 = (v21 + v17);
    v28 = (v21 + v17 + *(v15 + 48));

    v29 = MessageKeys.serviceName.unsafeMutableAddressor();
    v30 = v29[1];
    *v27 = *v29;
    v27[1] = v30;
    v31 = *(v8 + 136);
    *v28 = *(v8 + 128);
    v28[1] = v31;
    OUTLINED_FUNCTION_34();
    v32 = (v21 + 2 * v17);
    v33 = (v32 + *(v15 + 48));

    v34 = MessageKeys.clientType.unsafeMutableAddressor();
    v35 = v34[1];
    *v32 = *v34;
    v32[1] = v35;
    v36 = *(v8 + 152);
    *v33 = *(v8 + 144);
    v33[1] = v36;
    OUTLINED_FUNCTION_34();
    v37 = (v21 + 3 * v17);
    v38 = *(v15 + 48);

    v39 = MessageKeys.legacyClient.unsafeMutableAddressor();
    v40 = v39[1];
    *v37 = *v39;
    v37[1] = v40;
    *(v37 + v38) = v143 != 1;
    v144 = v26;
    swift_storeEnumTagMultiPayload();
    v41 = (v21 + 4 * v17);

    v42 = MessageKeys.realtime.unsafeMutableAddressor();
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    v44 = *(v0 + 984);
    if (*(v140 + 24) == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v44 + 80);
    }

    *(v41 + *(v15 + 48)) = v45 & 1;
    swift_storeEnumTagMultiPayload();

    v54 = RTCXPCDictionary.init(dictionaryLiteral:)(v137);
    *(v0 + 1160) = v54;
    *(v0 + 912) = v54;
    v55 = *(v44 + 24);
    v56 = v142;
    v57 = v0 + 325;
    if (v55 == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v141 = (v0 + 1016);
      v58 = *(v0 + 984);
      *(v0 + 840) = *(v58 + 8);
      *(v0 + 856) = v55;
      if (v55)
      {
        v59 = *(v0 + 1120);
        v60 = *(v0 + 848);
        v134 = *(v0 + 840);
        v135 = *(v0 + 324);
        v133 = *(v0 + 321);
        v138 = *(v0 + 217);
        swift_unknownObjectRetain();
        sub_223C2C4D4(v0 + 840, v0 + 864, &qword_27D0B9AD0, &qword_223C4ABE0);
        v61 = MessageKeys.hierarchyToken.unsafeMutableAddressor();
        v63 = *v61;
        v62 = v61[1];
        *v59 = v60;
        v59[1] = v55;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_1();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
        sub_223C2C4D4(v0 + 840, v0 + 888, &qword_27D0B9AD0, &qword_223C4ABE0);

        RTCXPCDictionary.subscript.setter(v59, v63, v62);
        v68 = MessageKeys.hierarchyLevel.unsafeMutableAddressor();
        v69 = *v68;
        v70 = *(v68 + 1);

        v71 = v133;
        v57 = v0 + 325;
        sub_223C2CF0C(v0 + 840, &qword_27D0B9AD0, &qword_223C4ABE0);
        *v59 = v134;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_1();
        LOBYTE(v55) = v135;
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
        v76 = v69;
        v77 = v138;
        RTCXPCDictionary.subscript.setter(v59, v76, v70);
        v58 = *(v0 + 984);
      }

      else
      {
        v55 = *(v0 + 324);
        v71 = *(v0 + 321);
        v77 = *(v0 + 217);
        swift_unknownObjectRetain();
      }

      v78 = *(v0 + 1072);
      v79 = *(v0 + 1064);
      v80 = (v57 + 675);
      v81 = *(v0 + 220);
      *(v0 + 120) = *(v0 + 218);
      *(v0 + 124) = v81;
      v82 = *v141;
      *(v0 + 128) = *(v57 + 675);
      *(v0 + 144) = v82;
      v136 = (v57 + 707);
      v139 = (v57 + 723);
      v83 = *(v57 + 723);
      *(v0 + 160) = *(v57 + 707);
      *(v0 + 176) = v83;
      *(v0 + 192) = v79;
      *(v0 + 200) = v77 & 1;
      *(v0 + 201) = v71 & 1;
      *(v0 + 208) = v78;
      *(v0 + 216) = v55 & 1;

      sub_223C2C4D4(v58, v0 + 224, &unk_27D0B9A60, &unk_223C4ABD0);
      sub_223C2DEFC(v0 + 120);
      if (v79)
      {
        v84 = *(v0 + 1120);
        v85 = *(v0 + 1056);
        v86 = MessageKeys.samplingUUID.unsafeMutableAddressor();
        v87 = *v86;
        v88 = v86[1];
        *v84 = v85;
        v84[1] = v79;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v89, v90, v91, v144);

        v92 = v88;
        v57 = v0 + 325;
        RTCXPCDictionary.subscript.setter(v84, v87, v92);
      }

      v93 = *(v0 + 324);
      v94 = *(v0 + 1072);
      v95 = *(v0 + 321);
      v96 = *(v0 + 217);
      v97 = *(v0 + 1064);
      v98 = *(v0 + 1056);
      v99 = *(v0 + 1048);
      v100 = *(v0 + 1040);
      v101 = *(v0 + 1032);
      v102 = *(v0 + 1024);
      v103 = *(v0 + 1016);
      v104 = *(v0 + 1008);
      v105 = *(v0 + 1000);
      v106 = *(v0 + 220);
      v107 = *(v0 + 322);
      v108 = *(v0 + 218);
      *(v0 + 432) = v108;
      *(v0 + 436) = v106;
      *(v0 + 440) = v105;
      *(v0 + 448) = v104;
      *(v0 + 456) = v103;
      *(v0 + 464) = v102;
      *(v0 + 472) = v101;
      *(v0 + 480) = v100;
      *(v0 + 488) = v99;
      *(v0 + 496) = v98;
      *(v0 + 504) = v97;
      *(v0 + 512) = v96 & 1;
      *(v0 + 513) = v95 & 1;
      *(v0 + 520) = v94;
      *(v57 + 203) = v93 & 1;
      *(v0 + 328) = v108;
      *(v0 + 330) = v107;
      *(v0 + 332) = v106;
      *(v0 + 336) = v105;
      *(v0 + 344) = v104;
      *(v0 + 352) = v103;
      *(v0 + 360) = v102;
      *(v0 + 368) = v101;
      *(v0 + 376) = v100;
      *(v0 + 384) = v99;
      *(v0 + 392) = v98;
      *(v0 + 400) = v97;
      *(v0 + 408) = v96;
      *(v0 + 409) = v95;
      *(v0 + 410) = *(v0 + 114);
      *(v0 + 414) = *(v0 + 118);
      *(v0 + 416) = v94;
      *(v0 + 424) = v93;
      sub_223C2DA7C(v0 + 328, v0 + 536);
      sub_223C2DEFC(v0 + 432);
      if (v95)
      {
        v109 = *(v0 + 1120);
        MessageKeys.eager.unsafeMutableAddressor();
        *v109 = v95 & 1;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v144);

        v113 = OUTLINED_FUNCTION_15_0();
        RTCXPCDictionary.subscript.setter(v113, v114, v115);
      }

      v116 = *(v0 + 324);
      v117 = *(v0 + 1072);
      v118 = *(v0 + 321);
      v119 = *(v0 + 217);
      v120 = *(v0 + 1064);
      v121 = *(v0 + 220);
      *(v0 + 640) = *(v0 + 218);
      *(v0 + 644) = v121;
      *(v57 + 323) = *v80;
      *(v57 + 339) = *v141;
      *(v57 + 355) = *v136;
      *(v57 + 371) = *v139;
      *(v0 + 712) = v120;
      *(v0 + 720) = v119 & 1;
      *(v0 + 721) = v118 & 1;
      *(v0 + 728) = v117;
      *(v57 + 411) = v116 & 1;
      sub_223C2DEFC(v0 + 640);
      if ((v116 & 1) == 0)
      {
        v122 = *(v0 + 1120);
        v123 = *(v0 + 1072);
        MessageKeys.overrideSampling.unsafeMutableAddressor();
        *v122 = v123;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_0();
        __swift_storeEnumTagSinglePayload(v124, v125, v126, v144);

        v127 = OUTLINED_FUNCTION_15_0();
        RTCXPCDictionary.subscript.setter(v127, v128, v129);
      }

      v56 = v142;
    }

    *(v0 + 1168) = v56[24];

    *(v0 + 1176) = XPCMessage.init(ty:payload:)(0, v54);
    v130 = swift_task_alloc();
    *(v0 + 1184) = v130;
    *v130 = v0;
    v131 = OUTLINED_FUNCTION_14_0(v130);

    return XPCConnection.sendWithReply(_:)(v131, v132);
  }

  else
  {
    sub_223C2CF0C(*(v0 + 984), &unk_27D0B9A60, &unk_223C4ABD0);

    sub_223C3D450();
    swift_allocError();
    *v46 = xmmword_223C4A8D0;
    swift_willThrow();
    v47 = *v1;
    v48 = *(v0 + 992);

    memcpy((v0 + 16), v48 + 26, 0x61uLL);
    sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);

    sub_223C28024(v48[41], v48[42]);
    if (v47 == 1)
    {
      OUTLINED_FUNCTION_27_0();
      v49 = *(v47 + 8);
      v50 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
      v49(v50);
      v51 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
      v49(v51);
    }

    OUTLINED_FUNCTION_3_1();
    type metadata accessor for Session(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_20_0();

    return v52();
  }
}

uint64_t sub_223C33670()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1112);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_223C2CF0C(*(v0 + 1112), &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {
    v3 = *(v0 + 1112);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v5 = *v3;
      v4 = v3[1];
      sub_223C3D450();
      swift_allocError();
      *v6 = v5;
      v6[1] = v4;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v3, v7);
  }

  v8 = *(v0 + 1152);
  v9 = *(v0 + 1104);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    sub_223C2CF0C(*(v0 + 1104), &unk_27D0B9C60, qword_223C4B100);
LABEL_12:
    sub_223C3D450();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
LABEL_13:
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v20 = *(v0 + 325);
    v21 = *(v0 + 992);

    memcpy((v0 + 16), v21 + 26, 0x61uLL);
    sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);

    sub_223C28024(v21[41], v21[42]);
    if (v20 == 1)
    {
      OUTLINED_FUNCTION_27_0();
      v22 = *(v20 + 8);
      v23 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
      v22(v23);
      v24 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
      v22(v24);
    }

    OUTLINED_FUNCTION_3_1();
    type metadata accessor for Session(0);
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 1152);
  v11 = *(v0 + 1104);
  OUTLINED_FUNCTION_30_0();
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v11, v18);
    goto LABEL_12;
  }

  v12 = *(v0 + 1192);
  v13 = *(v0 + 1096);
  v14 = *(v0 + 992);
  v15 = v11[1];
  *(v14 + 176) = *v11;
  *(v14 + 184) = v15;

  MessageKeys.allowed.unsafeMutableAddressor();

  RTCXPCDictionary.subscript.getter(v12, v13);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v10);
  v17 = MEMORY[0x277D84FA0];
  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(*(v0 + 1096), &unk_27D0B9C60, qword_223C4B100);
LABEL_22:
    v36 = 0;
    v30 = 0;
    *(*(v0 + 992) + 160) = v17;
    goto LABEL_23;
  }

  v27 = *(v0 + 1096);
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v27, v37);
    goto LABEL_22;
  }

  v28 = *v27;
  count = xpc_array_get_count(*v27);
  *(v0 + 928) = MEMORY[0x223DF5670](count, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v30 = swift_allocObject();
  *(v30 + 16) = v0 + 928;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_223C3DD2C;
  *(v31 + 24) = v30;
  *(v0 + 824) = sub_223C3DD28;
  *(v0 + 832) = v31;
  *(v0 + 792) = MEMORY[0x277D85DD0];
  *(v0 + 800) = 1107296256;
  *(v0 + 808) = sub_223C3C2E4;
  *(v0 + 816) = &block_descriptor_55;
  v32 = _Block_copy((v0 + 792));

  xpc_array_apply(v28, v32);
  swift_unknownObjectRelease();
  _Block_release(v32);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(*(v0 + 992) + 160) = *(v0 + 928);
  v36 = sub_223C3DD2C;
LABEL_23:
  *(v0 + 1216) = v30;
  *(v0 + 1208) = v36;
  v38 = *(v0 + 1192);
  v39 = *(v0 + 1088);
  MessageKeys.denied.unsafeMutableAddressor();

  RTCXPCDictionary.subscript.getter(v38, v39);

  OUTLINED_FUNCTION_13_0(v39);
  if (v40)
  {
    sub_223C2CF0C(*(v0 + 1088), &unk_27D0B9C60, qword_223C4B100);
  }

  else
  {
    v41 = *(v0 + 1088);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      v43 = *v41;
      v44 = xpc_array_get_count(*v41);
      *(v0 + 920) = MEMORY[0x223DF5670](v44, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
      v45 = swift_allocObject();
      *(v45 + 16) = v0 + 920;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_223C3D4A4;
      *(v46 + 24) = v45;
      *(v0 + 776) = sub_223C3D4AC;
      *(v0 + 784) = v46;
      *(v0 + 744) = MEMORY[0x277D85DD0];
      *(v0 + 752) = 1107296256;
      *(v0 + 760) = sub_223C3C2E4;
      *(v0 + 768) = &block_descriptor;
      v47 = _Block_copy((v0 + 744));

      xpc_array_apply(v43, v47);
      swift_unknownObjectRelease();
      _Block_release(v47);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if ((v43 & 1) == 0)
      {
        *(*(v0 + 992) + 168) = *(v0 + 920);
        v48 = sub_223C3D4A4;
        goto LABEL_31;
      }

LABEL_38:
      __break(1u);
      return MEMORY[0x2822009F8](v33, v34, v35);
    }

    OUTLINED_FUNCTION_0_1();
    sub_223C2F914(v41, v49);
  }

  v48 = 0;
  v45 = 0;
  *(*(v0 + 992) + 168) = v17;
LABEL_31:
  *(v0 + 1232) = v45;
  *(v0 + 1224) = v48;
  v50 = *(v0 + 1152);
  v51 = *(v0 + 1080);
  v52 = *(v0 + 992);
  RTCXPCDictionary.subscript.getter(*(v0 + 1192), v51);
  LODWORD(v50) = __swift_getEnumTagSinglePayload(v51, 1, v50);
  sub_223C2CF0C(v51, &unk_27D0B9C60, qword_223C4B100);
  *(v52 + 320) = v50 == 1;
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

unsigned __int8 *RTCXPCDictionary.subscript.getter@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_223C48348();
  v7 = xpc_dictionary_get_value(a3, (v6 + 32));

  return XPCObject.init(_:)(v7, a4);
}

uint64_t OUTLINED_FUNCTION_48()
{
}

void sub_223C33F28()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_223C28024(v2, v1);
  v3 = OUTLINED_FUNCTION_30_0();
  sub_223C28024(v3, v4);

  OUTLINED_FUNCTION_46();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_223C34030()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 360) = v3;
  *(v6 + 368) = v0;

  if (v0)
  {
    v7 = sub_223C3FB1C;
    v8 = 0;
  }

  else
  {
    v7 = sub_223C34140;
    v8 = v3;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_223C34140()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 360);
  *(v0 + 376) = *(v1 + 176);
  *(v0 + 384) = *(v1 + 184);

  *(v0 + 113) = sub_223C341B8();
  v2 = OUTLINED_FUNCTION_35_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_223C341C8()
{
  v1 = *(v0 + 113);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v14 = *(v0 + 336);
  v15 = *(v0 + 376);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v5 + OBJC_IVAR____RTCReportingS_lock);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v15;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;
  *(v7 + 56) = v14;
  *(v7 + 72) = v4;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_223C34628;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v6 + 4);

  if (!v2)
  {
    v10 = *(v0 + 312);

    if (v10)
    {
      v12 = *(v0 + 312);
      v11 = *(v0 + 320);

      v12(MEMORY[0x277D84F90]);

      sub_223C28024(v12, v11);
    }

    else
    {
    }

    OUTLINED_FUNCTION_20_0();

    return v13();
  }

  return result;
}

uint64_t sub_223C34348(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = &a1[OBJC_IVAR____RTCReportingS_generatedSessionID];
  *v18 = a2;
  v18[1] = a3;

  *&a1[OBJC_IVAR____RTCReportingS_session] = a4;

  a1[OBJC_IVAR____RTCReportingS_completelyDisabled] = a5;
  v19 = a6 == 17238 && a7 == 0xE200000000000000;
  if (v19 || ((v20 = sub_223C48678(), a6 == 21580) ? (v21 = a7 == 0xE200000000000000) : (v21 = 0), !v21 ? (v22 = 0) : (v22 = 1), (v20 & 1) != 0 || (v22 & 1) != 0 || (sub_223C48678() & 1) != 0 || (a6 == 0x4D41434B48 ? (v23 = a7 == 0xE500000000000000) : (v23 = 0), v23 || (sub_223C48678() & 1) != 0)))
  {
    v24 = objc_allocWithZone(RTCReportingAVCLegacySupport);

    v25 = [v24 init];
    v26 = *&a1[OBJC_IVAR____RTCReportingS_legacyAVCSupport];
    *&a1[OBJC_IVAR____RTCReportingS_legacyAVCSupport] = v25;
  }

  else
  {
  }

  v27 = OBJC_IVAR____RTCReportingS_earlyCachedEvents;
  result = swift_beginAccess();
  v29 = *&a1[v27];
  if (v29)
  {
    *&a1[v27] = 0;
    sub_223C483F8();
    v30 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v29;
    v31[5] = a1;
    v31[6] = v34;
    v32 = a1;
    sub_223C3FE74(0, 0, v17, &unk_223C4B028, v31);

    return sub_223C2CF0C(v17, &unk_27D0B9A30, &unk_223C4AB88);
  }

  return result;
}

uint64_t sub_223C345E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C34658()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_223C46E68;
  }

  else
  {

    v2 = sub_223C33654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_223C34778(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_223C48398();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_223C347E8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_39();
  }

  else
  {
    v9 = *(v3 + 16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = OUTLINED_FUNCTION_39();
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return sub_223C482E8();
}

uint64_t sub_223C34948()
{
  OUTLINED_FUNCTION_31();
  *(*(v0 + 16) + 312) = 0;

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_223C349AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_223C34A8C()
{
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  v4 = *(v1 + 32);
  *v3 = *v0;

  sub_223C34BB4(*(v1 + 16), *(v2 + 24));

  return MEMORY[0x2822009F8](sub_223C34BC0, v4, 0);
}

void sub_223C34BB4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_223C34BC0()
{

  v1 = v0[4];
  v2 = *(v1 + 312);
  v0[36] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[37] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v3 = v0;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x282200440]();
  }

  else
  {
    v4 = v0[35];
    v6 = v0[5];
    v5 = v0[6];
    v7 = sub_223C48418();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = sub_223C30968();
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v8;
    v9[4] = v1;
    v9[5] = v4;
    v9[6] = v6;
    swift_retain_n();
    swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_7_0();
    v0[38] = v10;
    *(v1 + 312) = v10;

    v11 = swift_task_alloc();
    v0[39] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
    *v11 = v0;
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x282200430]();
  }
}

uint64_t sub_223C34DA4()
{
  OUTLINED_FUNCTION_19();
  v2 = *v1;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_223C3C33C;
  }

  else
  {
    v6 = sub_223C34EC8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_223C34EC8()
{
  v1 = *(v0 + 32);
  v2 = v1[43];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1[43] = v4;
    v5 = v1[41];
    if (v5)
    {
      if (v4)
      {

        swift_unknownObjectRelease();

        v6 = OUTLINED_FUNCTION_30_0();
      }

      else
      {

        v5(v8);
        v9 = OUTLINED_FUNCTION_30_0();
        sub_223C28024(v9, v10);

        swift_unknownObjectRelease();
        v6 = v1[41];
        v7 = v1[42];
        v1[41] = 0;
        v1[42] = 0;
      }

      sub_223C28024(v6, v7);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_20_0();

    v11();
  }
}

uint64_t sub_223C350E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_223C40E9C;
  }

  else
  {
    v5 = sub_223C40DE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_223C351E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_20_0();

  return v3();
}

void _RTCReportingS.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65();
  ObjectType = swift_getObjectType();
  if (qword_280AEC1C8 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v5 = sub_223C481B8();
  __swift_project_value_buffer(v5, qword_280AEC1D0);
  v6 = v2;
  v7 = sub_223C48198();
  v8 = sub_223C48488();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_52();
    v9 = OUTLINED_FUNCTION_44_0();
    v26 = v9;
    *v3 = 136315138;
    if (*&v6[OBJC_IVAR____RTCReportingS_generatedSessionID + 8])
    {
      v10 = *&v6[OBJC_IVAR____RTCReportingS_generatedSessionID];
      v11 = *&v6[OBJC_IVAR____RTCReportingS_generatedSessionID + 8];
    }

    else
    {
      v11 = 0xE100000000000000;
      v10 = 63;
    }

    v12 = sub_223C354E8(v10, v11, &v26);

    *(v3 + 4) = v12;
    OUTLINED_FUNCTION_47_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x223DF6270](v18);
    v19 = OUTLINED_FUNCTION_8_1();
    MEMORY[0x223DF6270](v19);
  }

  v20 = *&v6[OBJC_IVAR____RTCReportingS_lock];
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_37_0();
  *(v22 - 16) = v6;
  *(v22 - 8) = ObjectType;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  *(v24 - 16) = sub_223C3598C;
  *(v24 - 8) = v25;

  os_unfair_lock_lock(v20 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v20 + 4);

  v27.receiver = v6;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_dealloc);
  OUTLINED_FUNCTION_63();
}

uint64_t sub_223C354E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_43();
  v9 = sub_223C355A8(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_223C2C0BC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_223C355A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_223C3D038(a5, a6);
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
    result = sub_223C485D8();
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

uint64_t sub_223C356A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  if ((*(a1 + OBJC_IVAR____RTCReportingS_terminated) & 1) == 0)
  {
    sub_223C359A8(v3);
    v6 = *(a1 + OBJC_IVAR____RTCReportingS_session);
    if (v6)
    {

      sub_223C483F8();
      v7 = sub_223C48418();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;

      sub_223C3FE74(0, 0, v5, &unk_223C4AF10, v8);

      sub_223C2CF0C(v5, &unk_27D0B9A30, &unk_223C4AB88);
    }
  }

  v9 = OBJC_IVAR____RTCReportingS_activeTasks;
  swift_beginAccess();
  v21[1] = a1;
  v10 = *(a1 + v9);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(*(a1 + v9) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C10, &qword_223C4AF00);
      sub_223C482A8();
      return swift_endAccess();
    }

    v16 = *(v12 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      do
      {
LABEL_12:
        v16 &= v16 - 1;

        sub_223C48438();
      }

      while (v16);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223C35954()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void sub_223C359A8(uint64_t a1)
{
  if (qword_280AEC178 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280AEC180;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C35A7C()
{
  if (__OFSUB__(qword_280AEC118, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_280AEC118;
    if (qword_280AEC1C8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v0 = sub_223C481B8();
  __swift_project_value_buffer(v0, qword_280AEC1D0);
  v1 = sub_223C48198();
  v2 = sub_223C48498();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349312;
    *(v3 + 4) = qword_280AEC118;
    *(v3 + 12) = 2050;
    *(v3 + 14) = qword_280AEBD80;
    _os_log_impl(&dword_223C26000, v1, v2, "active session count now %{public}ld/%{public}ld", v3, 0x16u);
    MEMORY[0x223DF6270](v3, -1, -1);
  }
}

uint64_t sub_223C35CE8()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v1[1] = sub_223C34944;

  return sub_223C35D90();
}

uint64_t sub_223C35D90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223C349AC;

  return sub_223C35E20();
}

uint64_t sub_223C35E40()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[6];
  v2 = *(v1 + 184);
  if (v2 && *(v1 + 320))
  {
    v3 = *(v1 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9A10, &qword_223C4A948);
    v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A18, &qword_223C4A950) - 8);
    v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_223C4A900;
    v7 = (v6 + v5);
    v8 = (v6 + v5 + v4[14]);

    v9 = MessageKeys.sessionID.unsafeMutableAddressor();
    v10 = v9[1];
    *v7 = *v9;
    v7[1] = v10;
    *v8 = v3;
    v8[1] = v2;
    type metadata accessor for XPCObject(0);
    swift_storeEnumTagMultiPayload();

    v11 = RTCXPCDictionary.init(dictionaryLiteral:)(v6);
    v0[7] = XPCMessage.init(ty:payload:)(1u, v11);
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v13 = OUTLINED_FUNCTION_14_0(v12);

    return XPCConnection.sendWithReply(_:)(v13, v14);
  }

  else
  {
    *(v1 + 320) = 2;
    OUTLINED_FUNCTION_20_0();

    return v16();
  }
}

uint64_t sub_223C3603C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_39();
  }

  else
  {
    v9 = *(v3 + 48);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = OUTLINED_FUNCTION_39();
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_223C36164()
{
  *(*(v0 + 48) + 320) = 2;
  OUTLINED_FUNCTION_20_0();
  return v1();
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t *Session.deinit()
{

  sub_223C362C8(v0[26], v0[27], v0[28], v0[29], v0[30], v0[31], v0[32], v0[33], v0[34], v0[35]);

  sub_223C28024(v0[41], v0[42]);
  v1 = OBJC_IVAR____TtC12RTCReporting7Session_baseTime;
  v2 = sub_223C48138();
  OUTLINED_FUNCTION_3_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime, v2);
  swift_defaultActor_destroy();
  return v0;
}

void sub_223C362C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 != 1)
  {
  }
}

Swift::String __swiftcall _RTCReportingS.getReportingSessionID()()
{
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C36458(v6, v2);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v6[0];
  v4 = v6[1];
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void *sub_223C36410@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr)@<X1>)
{
  result = sub_223C36474(a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

void *sub_223C36474(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_223C364B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____RTCReportingS_generatedSessionID);
  v3 = *(a1 + OBJC_IVAR____RTCReportingS_generatedSessionID + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_223C364F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for EventValue(0);
  v47 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C30, &qword_223C4AFB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (v39 - v16);
  sub_223C36F0C(a1, a2, a3, v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    sub_223C3684C(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_223C4556C(v41);
    }

    v19 = *(v18 + 48);
    v21 = *v17;
    v20 = v17[1];
    sub_223C2D02C(v17 + v19, v14);
    v22 = *a5;
    v24 = sub_223C29FE0();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
        sub_223C48608();
      }
    }

    else
    {
      sub_223C372BC(v27, a4 & 1);
      v29 = sub_223C29FE0();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v24 = v29;
    }

    v31 = *a5;
    if (v28)
    {
      v32 = *(v47 + 72) * v24;
      v33 = v40;
      sub_223C2D6B4(v31[7] + v32, v40);
      sub_223C2D718(v14);

      sub_223C36BBC(v33, v31[7] + v32);
      a4 = 1;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v31[6] + 16 * v24);
      *v34 = v21;
      v34[1] = v20;
      sub_223C2D02C(v14, v31[7] + *(v47 + 72) * v24);
      v35 = v31[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v31[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_223C486C8();
  __break(1u);
  return result;
}

uint64_t sub_223C3684C@<X0>(uint64_t a1@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0);
  MEMORY[0x28223BE20](v37);
  v4 = &v35 - v3;
  v5 = type metadata accessor for EventValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99D8, &unk_223C4A890);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v35 - v14);
  v17 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[4];
  v35 = v4;
  v38 = v18;
  if (v20)
  {
    v21 = v6;
    v36 = a1;
    v22 = v19;
LABEL_7:
    v23 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v22 << 6);
    v25 = (*(v17 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    sub_223C2D6B4(*(v17 + 56) + *(v21 + 72) * v24, v8);
    v28 = v37;
    v29 = *(v37 + 48);
    *v15 = v26;
    v15[1] = v27;
    v30 = v28;
    sub_223C2D02C(v8, v15 + v29);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v30);

    a1 = v36;
LABEL_8:
    *v1 = v17;
    v1[1] = v16;
    v1[2] = v38;
    v1[3] = v19;
    v1[4] = v23;
    v31 = v1[5];
    sub_223C36B70(v15, v12, &qword_27D0B99D8, &unk_223C4A890);
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v12, 1, v30) != 1)
    {
      v33 = v35;
      sub_223C36B70(v12, v35, &qword_27D0B99E0, &unk_223C4AFA0);
      v31(v33);
      sub_223C2CF0C(v33, &qword_27D0B99E0, &unk_223C4AFA0);
      v32 = 0;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
    return __swift_storeEnumTagSinglePayload(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= ((v18 + 64) >> 6))
      {
        v30 = v37;
        __swift_storeEnumTagSinglePayload(&v35 - v14, 1, 1, v37);
        v23 = 0;
        goto LABEL_8;
      }

      v20 = *(v16 + 8 * v22);
      ++v19;
      if (v20)
      {
        v21 = v6;
        v36 = a1;
        v19 = v22;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223C36B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_62(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_0();
  v5 = OUTLINED_FUNCTION_30_0();
  v6(v5);
  return v4;
}

uint64_t sub_223C36BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223C36C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223C2D6B4(a4, a1);

  return a2;
}

uint64_t sub_223C36C60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99E0, &unk_223C4AFA0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
  result = sub_223C36C20(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_223C36CD0()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_2(v2);

  return sub_223C36E60(v4, v5, v6, v7, v0);
}

uint64_t sub_223C36D6C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____RTCReportingS_session;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 0;
  if (v3)
  {
    result = *(v1 + 32);
    *(v0 + 104) = result;
    v6 = *(v2 + v4);
    *(v0 + 112) = v6;
    if (v6)
    {
      v7 = *(v1 + 40);
      *(v0 + 40) = result;
      *(v0 + 48) = v7;

      v8 = swift_task_alloc();
      v9 = OUTLINED_FUNCTION_55(v8);
      *v9 = v10;
      OUTLINED_FUNCTION_15_1(v9);

      return sub_223C2F298();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v11();
  }

  return result;
}

uint64_t sub_223C36E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_223C36D6C, 0, 0);
}

char *sub_223C36E80(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_223C36F48((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_223C36EC0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_223C36F48(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_223C36F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

char *sub_223C36F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9C40, &qword_223C4AFC0);
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

uint64_t sub_223C37054()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {

    v6 = sub_223C3FCCC;
  }

  else
  {

    v6 = sub_223C37170;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_223C37170()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 96) + 1;
  *(v0 + 96) = v1;
  if (v1 == *(v0 + 80))
  {
    OUTLINED_FUNCTION_20_0();

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 64) + 16 * v1;
    v8 = *(v6 + 32);
    v7 = v6 + 32;
    result = v8;
    *(v0 + 104) = v8;
    v9 = *(v5 + v4);
    *(v0 + 112) = v9;
    if (v9)
    {
      v10 = *(v7 + 8);
      *(v0 + 40) = result;
      *(v0 + 48) = v10;

      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_55(v11);
      *v12 = v13;
      OUTLINED_FUNCTION_15_1(v12);

      return sub_223C2F298();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_223C29FE0();
}

uint64_t sub_223C372BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventValue(0);
  v6 = OUTLINED_FUNCTION_26(v5);
  v41 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v43 = v9 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
  v42 = v4;
  result = sub_223C48638();
  v12 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v40 = v10;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      sub_223C2D650(0, (v39 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 56);
    v25 = (*(v10 + 48) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v41 + 72);
    v29 = v24 + v28 * v23;
    if (v42)
    {
      sub_223C2D02C(v29, v43);
    }

    else
    {
      sub_223C2D6B4(v29, v43);
    }

    sub_223C48758();
    sub_223C48358();
    result = sub_223C48788();
    v30 = -1 << *(v12 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (*(v12 + 48) + 16 * v33);
    *v38 = v26;
    v38[1] = v27;
    result = sub_223C2D02C(v43, *(v12 + 56) + v28 * v33);
    ++*(v12 + 16);
    v10 = v40;
    if (!v17)
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
    v37 = *(v19 + 8 * v32);
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

Swift::Void __swiftcall _RTCReportingS.flushMessages()()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____RTCReportingS_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_223C2BF1C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_223C376DC(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____RTCReportingS_session))
  {
    if (qword_280AEC1C8 != -1)
    {
      swift_once();
    }

    v1 = sub_223C481B8();
    __swift_project_value_buffer(v1, qword_280AEC1D0);
    v2 = sub_223C48198();
    v3 = sub_223C484A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223C26000, v2, v3, "attempted to flush unconfigured session", v4, 2u);
      MEMORY[0x223DF6270](v4, -1, -1);
    }
  }
}

uint64_t sub_223C37810(int a1, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  sub_223C3D4D8(&v4, value);
  return 1;
}

uint64_t sub_223C37878()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223C378B0()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_223C378F0()
{

  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_223C37960()
{
  v1 = sub_223C48218();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  v7 = (v4 + 64) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_223C37A44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223C37A8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void __createAWDAdaptorInstance_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/AVConference.framework/Frameworks/GKSPerformance.framework"];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_223C26000, v4, OS_LOG_TYPE_DEFAULT, "loading AWDAdaptor bundle", v6, 2u);
    }

    if (([v3 isLoaded] & 1) == 0)
    {
      [v3 load];
    }

    createAWDAdaptorInstance_awdAdaptorClass = [v3 classNamed:@"AWDAdaptor"];
  }

  else
  {
    createAWDAdaptorInstance_awdAdaptorClass = 0;
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __createAWDAdaptorInstance_block_invoke_cold_1(v5);
    }
  }
}

RTCReporting *RTCReportingInitWithSessionInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [RTCReporting alloc];

  return [(RTCReporting *)v6 initWithSessionInfo:a1 userInfo:a2 frameworksToCheck:a3 aggregationBlock:0];
}

void *RTCReportingStartConfiguration(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingStartConfiguration_block_invoke;
    v2[3] = &unk_2784F14C0;
    v2[4] = a2;
    return [result startConfigurationWithCompletionHandler:v2];
  }

  return result;
}

uint64_t __RTCReportingStartConfiguration_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingFetchStatesWithUserInfo(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __RTCReportingFetchStatesWithUserInfo_block_invoke;
    v3[3] = &unk_2784F14C0;
    v3[4] = a3;
    return [result fetchReportingStatesWithUserInfo:a2 fetchComplete:v3];
  }

  return result;
}

uint64_t __RTCReportingFetchStatesWithUserInfo_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingSetMessageBlock(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingSetMessageBlock_block_invoke;
    v2[3] = &unk_2784F14E8;
    v2[4] = a2;
    return [result setMessageLoggingBlock:v2];
  }

  return result;
}

uint64_t __RTCReportingSetMessageBlock_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingUpdateSharedDataWithDictionary(void *result, const char *a2)
{
  if (result)
  {
    return [result updateSharedDataWithDictionary:a2];
  }

  return result;
}

void *RTCReportingUpdateSharedDataForKey(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    return [result updateSharedDataForKey:a2 value:a3];
  }

  return result;
}

uint64_t RTCReportingSendMessageWithError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = objc_autoreleasePoolPush();
  v15 = 0;
  v11 = [a1 sendMessageWithCategory:a2 type:a3 payload:a4 error:&v15];
  if (a5)
  {
    *a5 = 0;
    if (v15)
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = [v15 code];
      *a5 = CFErrorCreate(v12, @"RTCReportingErrorDomain", v13, [v15 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v10);
  return v11;
}

uint64_t RTCReportingSendMessageWithDictionary(void *a1, uint64_t a2, CFErrorRef *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [a1 sendMessageWithDictionary:a2 error:&v11];
  if (a3)
  {
    *a3 = 0;
    if (v11)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = [v11 code];
      *a3 = CFErrorCreate(v8, @"RTCReportingErrorDomain", v9, [v11 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t RTCReportingSendOneMessageWithDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v12 = objc_autoreleasePoolPush();
  v17 = 0;
  v13 = [RTCReporting sendOneMessageWithSessionInfo:a1 userInfo:a2 category:a3 type:a4 payload:a5 error:&v17];
  if (a6)
  {
    *a6 = 0;
    if (v17)
    {
      v14 = *MEMORY[0x277CBECE8];
      v15 = [v17 code];
      *a6 = CFErrorCreate(v14, @"RTCReportingErrorDomain", v15, [v17 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v12);
  return v13;
}

uint64_t RTCReportingCreateEphemeralSessionWithSessionInfo(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [+[RTCReporting createEphemeralSessionWithSessionInfo:userInfo:error:](RTCReporting createEphemeralSessionWithSessionInfo:a1 userInfo:a2 error:{&v11), "copy"}];
  if (a3)
  {
    *a3 = 0;
    if (v11)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = [v11 code];
      *a3 = CFErrorCreate(v8, @"RTCReportingErrorDomain", v9, [v11 userInfo]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

void *RTCReportingFlushMessages(void *result, const char *a2)
{
  if (result)
  {
    return [result flushMessages];
  }

  return result;
}

void *RTCReportingFlushMessagesWithCompletion(void *result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __RTCReportingFlushMessagesWithCompletion_block_invoke;
    v2[3] = &unk_2784F1510;
    v2[4] = a2;
    return [result flushMessagesWithCompletion:v2];
  }

  return result;
}

uint64_t __RTCReportingFlushMessagesWithCompletion_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *RTCReportingUploadLogWithArray(void *result, const char *a2)
{
  if (result)
  {
    return [result uploadDataArray:a2 completionHandler:0];
  }

  return result;
}

uint64_t EventValue.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(floatLiteral:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(BOOLeanLiteral:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(dictionaryLiteral:)@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = sub_223C39E94(a2);
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_223C39E94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F0, &qword_223C4A8A8);
    v2 = sub_223C48648();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_223C3B0F0(a1, 1, &v4);
  return v4;
}

uint64_t _s12RTCReporting10EventValueO13stringLiteralACSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();

  return swift_storeEnumTagMultiPayload();
}

void EventValue.init<A>(_:)()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_19_0(v3);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v20 = OUTLINED_FUNCTION_10(v12, v13, v14, v15, v16, v17, v18, v19, v33);
  v21(v20);
  v22 = v1;
  OUTLINED_FUNCTION_6();
  if (sub_223C48558())
  {
    OUTLINED_FUNCTION_0_0();
    if (sub_223C48548() > 64)
    {
      v22 = v1;
      OUTLINED_FUNCTION_6();
      if (sub_223C48558())
      {
        OUTLINED_FUNCTION_0_0();
        if (sub_223C48548() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v22 = v1;
      OUTLINED_FUNCTION_6();
      v0 = sub_223C48558();
      OUTLINED_FUNCTION_0_0();
      v23 = sub_223C48548();
      if (v0)
      {
        if (v23 > 64)
        {
LABEL_8:
          v24 = sub_223C3A280();
          OUTLINED_FUNCTION_12(v24, MEMORY[0x277D84A28], v24);
          OUTLINED_FUNCTION_4();
          sub_223C482E8();
          v25 = OUTLINED_FUNCTION_1_0();
          v26(v25);
          if ((v0 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_16(&unk_223C4A5C0);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_4();
        sub_223C482E8();
        v27 = OUTLINED_FUNCTION_1_0();
        v28(v27);
        if (v0)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_0_0();
        sub_223C48538();
        goto LABEL_14;
      }

      if (v23 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_0_0();
  if (sub_223C48548() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = v1;
    OUTLINED_FUNCTION_6();
    v29 = sub_223C48558();
    OUTLINED_FUNCTION_0_0();
    v30 = sub_223C48548();
    if ((v29 & 1) == 0)
    {
      break;
    }

    if (v30 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v31 = sub_223C3A280();
    OUTLINED_FUNCTION_12(v31, MEMORY[0x277D84A28], v31);
    v22 = OUTLINED_FUNCTION_21_0();
    (*(v6 + 8))(v10, v1);
    if (v22)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      if (sub_223C48548() == 64)
      {
        v22 = v1;
        OUTLINED_FUNCTION_6();
        if ((sub_223C48558() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v30 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_0();
  sub_223C48538();
LABEL_24:
  OUTLINED_FUNCTION_0_0();
  sub_223C48538();
  v32 = OUTLINED_FUNCTION_27();
  (v0)(v32);
  (v0)(v2, v1);
  *v34 = v22;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23();
}

{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_19_0(v3);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v7 = MEMORY[0x28223BE20](v6);
  v15 = OUTLINED_FUNCTION_10(v7, v8, v9, v10, v11, v12, v13, v14, v27);
  v16(v15);
  v17 = v1;
  OUTLINED_FUNCTION_6();
  if (sub_223C48558() & 1) == 0 || (OUTLINED_FUNCTION_22(), OUTLINED_FUNCTION_16(&unk_223C4A5C0), OUTLINED_FUNCTION_11(), OUTLINED_FUNCTION_4(), sub_223C482F8(), v18 = OUTLINED_FUNCTION_1_0(), v19(v18), (v0))
  {
    OUTLINED_FUNCTION_0_0();
    if (sub_223C48548() > 63)
    {
      v17 = v1;
      OUTLINED_FUNCTION_6();
      v0 = sub_223C48558();
      OUTLINED_FUNCTION_0_0();
      v20 = sub_223C48548();
      if (v0)
      {
        if (v20 <= 64)
        {
          OUTLINED_FUNCTION_22();
          OUTLINED_FUNCTION_16(&unk_223C4A5C0);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_4();
          sub_223C482D8();
          v21 = OUTLINED_FUNCTION_1_0();
          v22(v21);
          if ((v0 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v20 < 65)
      {
LABEL_11:
        OUTLINED_FUNCTION_0_0();
        sub_223C48538();
        goto LABEL_12;
      }

      v23 = sub_223C3A544();
      OUTLINED_FUNCTION_12(v23, MEMORY[0x277D84D38], v23);
      OUTLINED_FUNCTION_21_0();
      v24 = OUTLINED_FUNCTION_1_0();
      v25(v24);
      if (v0)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_0_0();
    sub_223C48538();
    v26 = OUTLINED_FUNCTION_27();
    (v0)(v26);
    (v0)(v2, v1);
    *v28 = v17;
    type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_9();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

unint64_t sub_223C3A280()
{
  result = qword_27D0B9938;
  if (!qword_27D0B9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9938);
  }

  return result;
}

unint64_t sub_223C3A544()
{
  result = qword_27D0B9940;
  if (!qword_27D0B9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9940);
  }

  return result;
}

uint64_t EventValue.init<A>(_:)@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_29_0();
  v3();
  sub_223C3A6AC();
  sub_223C48228();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  *a1 = v7;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_9();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_223C3A6AC()
{
  result = qword_27D0B9948;
  if (!qword_27D0B9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9948);
  }

  return result;
}

uint64_t EventValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_223C48188();
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 32))(a2, a1);
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_25();

  return swift_storeEnumTagMultiPayload();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Event.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  result = sub_223C39E94(a1);
  *a2 = result;
  return result;
}

RTCReporting::Event __swiftcall Event.init(_:)(RTCReporting::Event result)
{
  *(v1 + 8) = 0;
  *v1 = result.dict._rawValue;
  return result;
}

RTCReporting::Event __swiftcall Event.init(category:type:)(Swift::UInt64 category, Swift::UInt64 type)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - v12);
  *(v5 + 8) = 0;
  v14 = type metadata accessor for EventValue(0);
  *v5 = sub_223C48298();
  *v13 = category;
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  v15 = OUTLINED_FUNCTION_8();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_30();
  sub_223C3AC70(v10, 0x646F6874656D5FLL, 0xE700000000000000);
  sub_223C2CF0C(v13, &qword_27D0B9950, &qword_223C4A5D0);
  *v13 = type;
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  v18 = OUTLINED_FUNCTION_8();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  OUTLINED_FUNCTION_30();
  sub_223C3AC70(v10, 0x7375746174735FLL, 0xE700000000000000);
  result.dict._rawValue = sub_223C2CF0C(v13, &qword_27D0B9950, &qword_223C4A5D0);
  result.isRealtime = v21;
  return result;
}

uint64_t Event.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_223C2C474(a1, &v11 - v8, &qword_27D0B9950, &qword_223C4A5D0);
  sub_223C3AC70(v9, a2, a3);
  return sub_223C2CF0C(a1, &qword_27D0B9950, &qword_223C4A5D0);
}

uint64_t Event.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_223C29FE0(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_3_0();
    sub_223C2D6B4(v7 + *(v9 + 72) * v6, a1);
    v10 = a1;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_26_0();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_223C3ABA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v9 = *a3;
  v8 = a3[1];
  sub_223C2C474(a1, &v11 - v6, &qword_27D0B9950, &qword_223C4A5D0);

  return Event.subscript.setter(v7, v9, v8);
}

uint64_t sub_223C3AC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  type metadata accessor for EventValue(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_223C2CF0C(a1, &qword_27D0B9950, &qword_223C4A5D0);
    OUTLINED_FUNCTION_20();
    sub_223C440F8(v15);

    return sub_223C2CF0C(v9, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {
    sub_223C2D02C(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    OUTLINED_FUNCTION_29_0();
    sub_223C2F610(v17, v18);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_223C3ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_223C2A050(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    OUTLINED_FUNCTION_29_0();
    sub_223C29B2C(v4, v5);

    *v3 = v8;
  }

  else
  {
    sub_223C2CF0C(a1, &qword_27D0B99E8, &qword_223C4A8A0);
    OUTLINED_FUNCTION_20();
    sub_223C44204(v7);

    return sub_223C2CF0C(v9, &qword_27D0B99E8, &qword_223C4A8A0);
  }

  return result;
}

void (*Event.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B9950, &qword_223C4A5D0);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v7[3] = __swift_coroFrameAllocStub(v10);
  v7[4] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v7[5] = v11;
  v12 = *v3;
  if (*(v12 + 16) && (v13 = sub_223C29FE0(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_3_0();
    sub_223C2D6B4(v16 + *(v18 + 72) * v15, v11);
    v19 = v11;
    v20 = 0;
    v21 = 1;
    v22 = v17;
  }

  else
  {
    type metadata accessor for EventValue(0);
    OUTLINED_FUNCTION_26_0();
  }

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  return sub_223C3AFE8;
}

void sub_223C3AFE8()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = *v2;
  sub_223C2C474((*v2)[5], (*v2)[4], &qword_27D0B9950, &qword_223C4A5D0);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[3];
  v8 = *v3;
  v7 = v3[1];
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_20();
    sub_223C2C474(v9, v10, &qword_27D0B9950, &qword_223C4A5D0);

    sub_223C3AC70(v6, v8, v7);
    sub_223C2CF0C(v4, &qword_27D0B9950, &qword_223C4A5D0);
  }

  else
  {

    sub_223C3AC70(v4, v8, v7);
  }

  sub_223C2CF0C(v5, &qword_27D0B9950, &qword_223C4A5D0);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_23();

  free(v11);
}

void sub_223C3B0F0(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v6 = type metadata accessor for EventValue(0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B99F8, &unk_223C4A8B0);
  v10 = MEMORY[0x28223BE20](v9);
  v43 = (&v37 - v12);
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_13:

    return;
  }

  v37 = v3;
  v38 = a1;
  v13 = 0;
  v14 = *(v10 + 48);
  v39 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v40 = v14;
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
      sub_223C486C8();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v43;
    sub_223C2C474(v39 + *(v11 + 72) * v13, v43, &qword_27D0B99F8, &unk_223C4A8B0);
    v17 = *v16;
    v18 = v16[1];
    v47 = *v16;
    v48 = v18;
    v19 = v8;
    sub_223C2D02C(v16 + v40, v8);
    v20 = *v44;
    v22 = sub_223C29FE0();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A40, &unk_223C4ABB0);
      sub_223C48608();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v44;
    *(*v44 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = v17;
    v30[1] = v18;
    v31 = v29[7] + *(v42 + 72) * v22;
    v8 = v19;
    sub_223C2D02C(v19, v31);
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
    a1 = v38;
    v11 = v15;
    if (v41 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_223C372BC(v25, a2 & 1);
  v27 = sub_223C29FE0();
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

  v49 = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A00, &unk_223C4A8C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_223C2F914(v19, type metadata accessor for EventValue);

    return;
  }

LABEL_22:
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_223C485C8();
  MEMORY[0x223DF5570](0xD00000000000001BLL, 0x8000000223C49D10);
  sub_223C485E8();
  MEMORY[0x223DF5570](39, 0xE100000000000000);
  sub_223C48628();
  __break(1u);
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

void sub_223C3B670(uint64_t a1)
{
  sub_223C48188();
  if (v1 <= 0x3F)
  {
    sub_223C3B72C(319);
    if (v2 <= 0x3F)
    {
      sub_223C3B784(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_223C3B72C(uint64_t a1)
{
  if (!qword_27D0B9968)
  {
    type metadata accessor for EventValue(255);
    v1 = sub_223C483B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0B9968);
    }
  }
}

void sub_223C3B784(uint64_t a1)
{
  if (!qword_27D0B9970)
  {
    type metadata accessor for EventValue(255);
    v1 = sub_223C482B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D0B9970);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_223C3B800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_223C3B840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Event.Keys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Event.Keys(_BYTE *result, int a2, int a3)
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

uint64_t sub_223C3B998(uint64_t a1, int a2)
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

uint64_t sub_223C3B9B8(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280AEC1B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280AEC1B0);
    }
  }
}

unint64_t sub_223C3BA30()
{
  sub_223C48188();
  sub_223C3BC80(&qword_280AEC0C0, MEMORY[0x277CC95F0]);
  sub_223C482C8();
  v0 = OUTLINED_FUNCTION_25();

  return sub_223C3BAC4(v0, v1);
}

unint64_t sub_223C3BAC4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_223C48188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_223C3BC80(qword_280AEBF08, MEMORY[0x277CC95F0]);
    v9 = sub_223C48308();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_223C3BC80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_25();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223C3BCE8()
{
  v0 = sub_223C481B8();
  __swift_allocate_value_buffer(v0, qword_280AEC380);
  __swift_project_value_buffer(v0, qword_280AEC380);
  return sub_223C481A8();
}

uint64_t sub_223C3BD98(unsigned __int8 a1)
{
  sub_223C48758();
  MEMORY[0x223DF5970](a1);
  return sub_223C48788();
}

uint64_t sub_223C3BDFC(uint64_t a1)
{
  v2 = *v1;
  sub_223C48758();
  MEMORY[0x223DF5970](v2);
  return sub_223C48788();
}

unint64_t sub_223C3BE40(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000015;
  if (!a2)
  {
    return 0xD000000000000016;
  }

  if (a2 != 1)
  {
    sub_223C485C8();

    MEMORY[0x223DF5570](a1, a2);
    return 0xD000000000000020;
  }

  return v2;
}

uint64_t Session.__allocating_init(clientType:clientName:serviceName:)()
{
  OUTLINED_FUNCTION_41();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 1;
  type metadata accessor for Session(0);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_223C3C030;

  return sub_223C329EC();
}

uint64_t sub_223C3C030()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_223C3C120()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 325);
  v2 = *(v0 + 992);

  memcpy((v0 + 16), v2 + 26, 0x61uLL);
  sub_223C2CF0C(v0 + 16, &unk_27D0B9A60, &unk_223C4ABD0);

  sub_223C28024(v2[41], v2[42]);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_27_0();
    v3 = *(v1 + 8);
    v4 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_baseTime);
    v3(v4);
    v5 = OUTLINED_FUNCTION_25_0(OBJC_IVAR____TtC12RTCReporting7Session_obfuscatedBaseTime);
    v3(v5);
  }

  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Session(0);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_223C3C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_223C3C33C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_223C3C4E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_223C48748();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_223C3C56C()
{
  OUTLINED_FUNCTION_41();
  v14 = v0;
  swift_unknownObjectRelease();
  if (qword_280AEBEE0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280AEBEE0);
  }

  v1 = sub_223C481B8();
  __swift_project_value_buffer(v1, qword_280AEC380);

  v2 = sub_223C48198();
  v3 = sub_223C484A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = OUTLINED_FUNCTION_52();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (*(v4 + 184))
    {
      v7 = *(*(v0 + 16) + 176);
      v8 = *(v4 + 184);
    }

    else
    {
      v8 = 0xE100000000000000;
      v7 = 63;
    }

    v9 = sub_223C354E8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_223C26000, v2, v3, "session %s received error during send - marking as disabled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_36();
  }

  v10 = *(v0 + 16);
  *(v10 + 320) = 0;
  swift_willThrow();
  *(v10 + 312) = 0;

  OUTLINED_FUNCTION_20_0();

  return v11();
}

uint64_t sub_223C3C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A30, &unk_223C4AB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_223C2C4D4(a3, v21 - v9, &unk_27D0B9A30, &unk_223C4AB88);
  v11 = sub_223C48418();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_223C2CF0C(v10, &unk_27D0B9A30, &unk_223C4AB88);
  }

  else
  {
    sub_223C48408();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_223C483C8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_223C48348() + 32;

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

      sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);

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

  sub_223C2CF0C(a3, &unk_27D0B9A30, &unk_223C4AB88);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_223C3C9A8(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (a1[43])
  {
    v7 = a1[41];
    v8 = a1[42];
    a1[41] = sub_223C3D3E4;
    a1[42] = v6;

    sub_223C28024(v7, v8);
  }

  else
  {

    a2(0);
  }
}

uint64_t sub_223C3CA6C()
{
  OUTLINED_FUNCTION_41();
  v16 = v0;
  swift_unknownObjectRelease();
  if (qword_280AEBEE0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280AEBEE0);
  }

  v1 = *(v0 + 72);
  v2 = sub_223C481B8();
  __swift_project_value_buffer(v2, qword_280AEC380);
  v3 = v1;
  v4 = sub_223C48198();
  v5 = sub_223C484A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_52();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_223C486F8();
    v12 = sub_223C354E8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223C26000, v4, v5, "failed to send session end: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_36();
  }

  else
  {
  }

  *(*(v0 + 48) + 320) = 2;
  OUTLINED_FUNCTION_20_0();

  return v13();
}

uint64_t sub_223C3CC18(uint64_t a1)
{
  result = sub_223C48138();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of Session.end()()
{
  OUTLINED_FUNCTION_19();
  v4 = (*(*v0 + 384) + **(*v0 + 384));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_223C349AC;

  return v4();
}

uint64_t getEnumTagSinglePayload for Session.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Session.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223C3CFE4()
{
  result = qword_27D0B9A28;
  if (!qword_27D0B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B9A28);
  }

  return result;
}

uint64_t sub_223C3D038(uint64_t a1, unint64_t a2)
{
  v3 = sub_223C3D084(a1, a2);
  sub_223C3D19C(&unk_283720DF8);
  return v3;
}

uint64_t sub_223C3D084(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_223C48388())
  {
    result = sub_223C3D280(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_223C485B8();
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
          result = sub_223C485D8();
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

uint64_t sub_223C3D19C(uint64_t result)
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

    result = sub_223C3D2F0(result, v7, 1, v3);
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

void *sub_223C3D280(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A50, &unk_223C4ABC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_223C3D2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0B9A50, &unk_223C4ABC0);
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