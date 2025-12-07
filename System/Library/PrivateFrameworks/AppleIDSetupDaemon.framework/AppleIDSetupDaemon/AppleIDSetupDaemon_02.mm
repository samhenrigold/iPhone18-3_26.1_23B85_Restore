uint64_t sub_24080DAE0()
{

  return MEMORY[0x2822009F8](sub_24080DBDC, 0, 0);
}

uint64_t sub_24080DBDC()
{
  v43 = v0;
  v1 = *(v0 + 96);
  v39 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = sub_24080D778(v1, *(v0 + 40));
  v6 = v5;
  v7 = sub_2408D3B90();
  v8 = type metadata accessor for CloudSignInContext();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext;
  *&v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext] = 0;
  v11 = OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms;
  *&v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms] = 0;
  *&v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_model] = v4;
  v38 = v5;
  *&v9[v10] = v5;
  v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_skipCDPEnablement] = v7 & 1;
  v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_backgroundDataclassEnablement] = 0;
  v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_skipDataclassEnablement] = 0;
  *&v9[v11] = 0;
  v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_shouldStashLoginResponse] = 0;
  *&v9[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_findMyActivationAction] = 2;
  *(v0 + 16) = v9;
  *(v0 + 24) = v8;

  v41 = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_2408D4910();
  (*(v2 + 16))(v39, v1, v3);
  v12 = v6;
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F10();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v40 = *(v0 + 64);
  v20 = *(v0 + 48);
  v21 = *(v0 + 56);
  if (v15)
  {
    v34 = v14;
    v22 = *(v0 + 72);
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v23 = 136315394;
    sub_24080D61C(&unk_27E5071B0, 255, MEMORY[0x277CED500], MEMORY[0x277CED508]);
    v37 = v17;
    v24 = sub_2408D5220();
    v35 = v20;
    v26 = v25;
    v27 = *(v19 + 8);
    v27(v16, v22);
    v28 = sub_2408CC504(v24, v26, &v42);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v12;
    *v33 = v38;
    v29 = v12;
    _os_log_impl(&dword_2407CF000, v13, v34, "Created new CloudSignInContext with model:%s, cdpContext:%@", v23, 0x16u);
    sub_2407D9440(v33, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x245CC9F60](v36, -1, -1);
    MEMORY[0x245CC9F60](v23, -1, -1);

    (*(v21 + 8))(v40, v35);
    v27(v37, v22);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v16, v18);
    (*(v21 + 8))(v40, v20);
    v30(v17, v18);
  }

  v31 = *(v0 + 8);

  return v31(v41);
}

id sub_24080DFB4()
{
  v0 = sub_2408D4B20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CEE698]) init];
  [v4 setCanMakeAccountActive_];
  [v4 setIgnoreAccountConversion_];
  sub_2408D4910();
  v5 = v4;
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2407CF000, v6, v7, "Created AMS sign in context: %@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_24080E18C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v55 = a4;
    v20 = v12;
LABEL_14:
    v22 = __clz(__rbit64(v10)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 16 * v22;
    v25 = *v24;
    v26 = *(v24 + 8);
    v53[0] = v23;
    v53[1] = v25;
    v54 = v26;
    v27 = v23;
    sub_2407D256C(v25, v26);
    a2(v51, v53);

    sub_24080F17C(v25, v26);
    v29 = v51[0];
    v28 = v51[1];
    v30 = v52;
    v31 = *a5;
    v33 = sub_2408CCC7C(v51[0]);
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if ((v55 & 1) == 0)
      {
        sub_2408C6540();
      }
    }

    else
    {
      sub_2408C94F8(v36, v55 & 1);
      v38 = sub_2408CCC7C(v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_27;
      }

      v33 = v38;
    }

    v10 &= v10 - 1;
    v40 = *a5;
    if (v37)
    {
      v13 = 16 * v33;
      v14 = v40[7] + 16 * v33;
      v15 = *v14;
      v16 = *(v14 + 8);
      sub_2407D256C(*v14, v16);
      sub_24080F17C(v28, v30);

      v17 = v40[7] + v13;
      v18 = *v17;
      v19 = *(v17 + 8);
      *v17 = v15;
      *(v17 + 8) = v16;
      sub_24080F17C(v18, v19);
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      *(v40[6] + 8 * v33) = v29;
      v41 = v40[7] + 16 * v33;
      *v41 = v28;
      *(v41 + 8) = v30;
      v42 = v40[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v40[2] = v44;
    }

    a4 = 1;
    v12 = v20;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v21 = v12;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v11)
    {
      sub_2407D17F4(a1);
    }

    v10 = *(v7 + 8 * v20);
    ++v21;
    if (v10)
    {
      v55 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for AIDAServiceType(0);
  result = sub_2408D5280();
  __break(1u);
  return result;
}

uint64_t sub_24080E450(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D3490();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080E510, 0, 0);
}

uint64_t sub_24080E510()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D3480();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    *(v0 + 56) = __swift_project_value_buffer(v5, qword_27E506FF0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Attempting to present terms", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v22 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_24080E82C;
    v13 = MEMORY[0x277D839B0];

    return v22(v0 + 88, sub_24080F048, v11, &unk_2408D7590, 0, v13);
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v15 = sub_2408D4B20();
    __swift_project_value_buffer(v15, qword_27E506FF0);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2407CF000, v16, v17, "terms are not supported for this platform yet", v18, 2u);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    v19 = *(v0 + 16);

    v20 = *(v0 + 8);
    v21 = *(v0 + 16);

    return v20(0, v21);
  }
}

uint64_t sub_24080E82C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24080EA48;
  }

  else
  {

    v2 = sub_24080E948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24080E948(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished agreeing to terms with result: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 8);
  v8 = *(v1 + 16);

  return v7(v2, v8);
}

uint64_t sub_24080EA48()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24080EABC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24080EADC, 0, 0);
}

uint64_t sub_24080EADC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24080EBC0;

  return v5(sub_24080EEC0, v2);
}

uint64_t sub_24080EBC0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24080ED08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);
    v4 = *(v2 + 48) == 0;

    return v3(v4);
  }
}

uint64_t sub_24080ED08()
{

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E506FF0);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to present progress view with error: %@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 48) == 0;

  return v12(v13);
}

uint64_t sub_24080EEC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2407D379C;

  return sub_24080BB60(v2, v3, v4);
}

uint64_t sub_24080EF88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_24080B70C(v2, v3, v5, v4);
}

uint64_t sub_24080F060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24080F0C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_240807214(a1, v4, v5, v6);
}

void sub_24080F17C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24080F1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2407DB6F0;

  return sub_2408053B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24080F288(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240802A60(a1, v5, v4);
}

uint64_t sub_24080F334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24080F398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2407DB6F0;

  return sub_240800804(a1, v1);
}

unint64_t sub_24080F430()
{
  result = qword_27E507218;
  if (!qword_27E507218)
  {
    sub_2407EEDBC(255, &qword_27E507210, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507218);
  }

  return result;
}

uint64_t sub_24080F4B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2407FF060(a1, v5, v4);
}

void sub_24080F564(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_24080F58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24080F600(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2407F7F70(a1, v5, v4);
}

uint64_t sub_24080F6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18AppleIDSetupDaemon17LocalSetupServiceC7FailureO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24080F72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24080F780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void sub_24080F800(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2408D5060();
    if (v2 <= 0x3F)
    {
      sub_2408104CC(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_24080F950()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507280);
  __swift_project_value_buffer(v0, qword_27E507280);
  return sub_2408D4940();
}

id *sub_24080F99C()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2408D3990();
  sub_240811714(&qword_27E506AD8, MEMORY[0x277CED460], MEMORY[0x277CED468]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CED458], v2);
  sub_24080FCE0(v3);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 16));

  v5 = *(*v0 + 19);
  v6 = sub_2408D5060();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = v0 + *(*v0 + 22);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);

  sub_2407D9440(v0 + *(*v0 + 25), &qword_27E507328, &qword_2408D7900);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24080FC68(uint64_t a1)
{
  sub_24080F99C();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_24080FCE0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = *(v4[11] - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v54 - v12;
  v60 = v13;
  v63 = sub_2408D5060();
  v14 = *(v63 - 8);
  v15 = MEMORY[0x28223BE20](v63);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v59 = v14;
  v64 = v11;
  v19 = sub_2408D4B20();
  __swift_project_value_buffer(v19, qword_27E507280);
  v20 = a1;
  v21 = sub_2408D4B10();
  v22 = sub_2408D4F10();

  v23 = os_log_type_enabled(v21, v22);
  v57 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v56 = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67[0] = v27;
    *v25 = 136315394;
    v28 = sub_2408D53B0();
    v30 = sub_2408CC504(v28, v29, v67);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2112;
    v31 = a1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v32;
    *v26 = v32;
    _os_log_impl(&dword_2407CF000, v21, v22, "%s handling isolated cancellation with error: %@", v25, 0x16u);
    sub_2407D9440(v26, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    v33 = v25;
    v4 = v56;
    MEMORY[0x245CC9F60](v33, -1, -1);
  }

  v67[0] = a1;
  v34 = v4[10];
  v35 = v4[12];
  sub_2408D3640();
  v66 = a1;
  v36 = v4[13];
  v37 = v60;
  v67[0] = v34;
  v67[1] = v60;
  v67[2] = v35;
  v67[3] = v36;
  type metadata accessor for RemoteSetupService(0, v67);
  swift_getWitnessTable();
  sub_2408D4270();
  v38 = *(*v2 + 152);
  swift_beginAccess();
  v39 = v59;
  v40 = v63;
  (*(v59 + 16))(v18, &v2[v38], v63);
  v41 = v64;
  if ((*(v64 + 48))(v18, 1, v37))
  {
    (*(v39 + 8))(v18, v40);
  }

  else
  {
    v42 = v54;
    (*(v41 + 16))(v54, v18, v37);
    (*(v39 + 8))(v18, v40);
    v66 = a1;
    sub_2408D3640();
    (*(v41 + 8))(v42, v37);
  }

  v43 = v57;
  sub_2407D2B30(a1);
  v44 = *v2;
  if (*&v2[*(*v2 + 184)])
  {
    v66 = a1;
    sub_2408D3D80();
    sub_240811714(&qword_27E506DB8, MEMORY[0x277CED5B0], MEMORY[0x277CED5A8]);

    sub_2408D4270();

    v44 = *v2;
  }

  if (*&v2[*(v44 + 192)])
  {
    v66 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    sub_2408116B0();
    sub_2408D4270();

    v44 = *v2;
  }

  v45 = *(v44 + 200);
  swift_beginAccess();
  sub_2407EEE04(&v2[v45], v43, &qword_27E507328, &qword_2408D7900);
  v46 = (*(v61 + 48))(v43, 1, v62);
  v47 = v64;
  if (v46)
  {
    sub_2407D9440(v43, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    v48 = v61;
    v49 = v62;
    v50 = v55;
    (*(v61 + 16))(v55, v43, v62);
    sub_2407D9440(v43, &qword_27E507328, &qword_2408D7900);
    v65 = a1;
    v51 = a1;
    sub_2408D4E90();
    (*(v48 + 8))(v50, v49);
  }

  v52 = v58;
  (*(v47 + 56))(v58, 1, 1, v37);
  swift_beginAccess();
  (*(v39 + 40))(&v2[v38], v52, v63);
  return swift_endAccess();
}

void sub_2408104CC(uint64_t a1)
{
  if (!qword_27E507318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507320, qword_2408D77F0);
    v1 = sub_2408D5060();
    if (!v2)
    {
      atomic_store(v1, &qword_27E507318);
    }
  }
}

uint64_t sub_240810530(uint64_t a1, void *a2)
{
  v3 = sub_2408D39E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AD0, &qword_2408D6868);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_2408D3990();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v21[5] = a2;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v18 = swift_dynamicCast();
  v19 = *(v11 + 56);
  if (v18)
  {
    v19(v9, 0, 1, v10);
    (*(v11 + 32))(v16, v9, v10);
    v14 = v16;
  }

  else
  {
    v19(v9, 1, 1, v10);
    sub_2407D9440(v9, &qword_27E506AD0, &qword_2408D6868);
    swift_getErrorValue();
    sub_2408D52B0();
  }

  (*(v11 + 16))(v6, v14, v10);
  (*(v4 + 104))(v6, *MEMORY[0x277CED478], v3);
  sub_2408D3A00();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24081081C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408108DC, 0, 0);
}

uint64_t sub_2408108DC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2408D39F0();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x277CED478];
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E507280);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v9 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCA8];
    if (v9)
    {
      v11 = "Client is remaining in failed state";
LABEL_10:
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, v11, v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E507280);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v13 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCB0];
    if (v13)
    {
      v11 = "Client has decided to proceed from the failure, moving on";
      goto LABEL_10;
    }
  }

  v15 = v0[2];

  v16 = *v10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v17 - 8) + 104))(v15, v16, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_240810B40(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240810C00, 0, 0);
}

uint64_t sub_240810C00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2408D39F0();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x277CED490];
  (*(v2 + 8))(v1, v3);
  v6 = v0[2];
  if (v4 == v5)
  {
    v7 = MEMORY[0x277CEDCA8];
  }

  else
  {
    *v6 = 0;
    v7 = MEMORY[0x277CEDCB0];
  }

  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D88, &qword_2408D6D40);
  (*(*(v9 - 8) + 104))(v6, v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_240810D38(uint64_t a1, uint64_t a2)
{
  sub_2407D9440(a2, &qword_27E507328, &qword_2408D7900);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_240810E14(uint64_t a1, uint64_t a2, char *a3)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v46 = sub_2408D38D0();
  v8 = *(v46 - 8);
  v9 = MEMORY[0x28223BE20](v46);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = sub_2408D3EC0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v20, a2, v21);
  (*(v22 + 56))(v20, 0, 1, v21);
  v47 = a1;
  v23 = sub_2408D39A0();
  v24 = sub_2408D3560();
  sub_2408D3FE0();
  v24(v49, 0);
  v23(v50, 0);
  sub_2407EEE04(v48, v7, &unk_27E506A20, &unk_2408D67F0);
  v25 = sub_2408D3970();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v7, 1, v25) == 1)
  {
    return sub_2407D9440(v7, &unk_27E506A20, &unk_2408D67F0);
  }

  sub_2408D38F0();
  (*(v26 + 8))(v7, v25);
  v28 = v8;
  v29 = *(v8 + 32);
  v30 = v46;
  v29(v17, v15, v46);
  v48 = v17;
  v31 = sub_2408D38B0();
  v33 = v32;
  v34 = v45;
  sub_2408D3A10();
  v35 = sub_2408D38B0();
  v37 = v36;
  v38 = v34;
  v39 = *(v28 + 8);
  v39(v38, v30);
  if (v31 == v35 && v33 == v37)
  {
  }

  else
  {
    v40 = sub_2408D5240();

    if ((v40 & 1) == 0)
    {
      v42 = v48;
      return (v39)(v42, v30);
    }
  }

  v41 = v48;
  (*(v28 + 16))(v44, v48, v30);
  sub_2408D3A20();
  v42 = v41;
  return (v39)(v42, v30);
}

uint64_t sub_2408112A8()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CEDCB0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24081135C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_2408D39E0();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *a2);
  return sub_2408D3A00();
}

uint64_t sub_24081142C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v4[0] = *(a2 + 80);
  v4[1] = v2;
  type metadata accessor for RemoteRepairService(0, v4);
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2408114DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24081153C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3630();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D39E0();
  MEMORY[0x28223BE20](v7);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED470]);
  sub_2408D3A00();
  (*(v4 + 16))(v6, a2, v3);
  return sub_2408D39C0();
}

unint64_t sub_2408116B0()
{
  result = qword_27E507330[0];
  if (!qword_27E507330[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506A48, &qword_2408D6808);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E507330);
  }

  return result;
}

uint64_t sub_240811714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24081175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18AppleIDSetupDaemon19RemoteRepairServiceC7FailureOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2408117D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24081181C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_240811860(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2408118AC()
{
  v1 = *v0;
  sub_2408D5300();
  if (v1)
  {
    v2 = 8101;
  }

  else
  {
    v2 = 8100;
  }

  MEMORY[0x245CC9750](v2);
  return sub_2408D5320();
}

uint64_t sub_2408118FC()
{
  if (*v0)
  {
    v1 = 8101;
  }

  else
  {
    v1 = 8100;
  }

  return MEMORY[0x245CC9750](v1);
}

uint64_t sub_240811934(uint64_t a1)
{
  v2 = *v1;
  sub_2408D5300();
  if (v2)
  {
    v3 = 8101;
  }

  else
  {
    v3 = 8100;
  }

  MEMORY[0x245CC9750](v3);
  return sub_2408D5320();
}

void *sub_240811980@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 8101)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 8100)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2408119A8(uint64_t *a1@<X8>)
{
  v2 = 8100;
  if (*v1)
  {
    v2 = 8101;
  }

  *a1 = v2;
}

uint64_t sub_2408119C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2408D4B20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  sub_240812D1C(a1, v30);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();
  if (!os_log_type_enabled(v11, v12))
  {
    sub_240812D54(a1);

    (*(v8 + 8))(v10, v7);
    goto LABEL_5;
  }

  v27 = v7;
  v28 = v6;
  v29 = v2;
  v13 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v30[0] = v26;
  *v13 = 136315138;
  v14 = [*(a1 + 24) userInfo];
  if (v14)
  {
    v15 = v14;
    sub_240812D54(a1);
    sub_2408D4CB0();

    v16 = sub_2408D4CC0();
    v18 = v17;

    v19 = sub_2408CC504(v16, v18, v30);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v11, v12, "SignOutServiceDelegate processing aps message: %s", v13, 0xCu);
    v20 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);

    (*(v8 + 8))(v10, v27);
    v6 = v28;
    v2 = v29;
LABEL_5:
    v21 = sub_2408D4E60();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = *(a1 + 48);
    *(v22 + 64) = *(a1 + 32);
    *(v22 + 80) = v23;
    *(v22 + 96) = *(a1 + 64);
    v24 = *(a1 + 16);
    *(v22 + 32) = *a1;
    *(v22 + 48) = v24;
    *(v22 + 112) = v2;
    sub_240812D1C(a1, v30);

    sub_24083AB60(0, 0, v6, &unk_2408D7AC0, v22);
  }

  result = sub_240812D54(a1);
  __break(1u);
  return result;
}

uint64_t sub_240811D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2408D4B20();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240811E10, 0, 0);
}

uint64_t sub_240811E10(uint64_t a1)
{
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "SignOutServiceDelegate sending sign out command", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v1[9];
  v6 = v1[5];
  v7 = v1[6];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  v9 = objc_allocWithZone(sub_2408D4190());

  v10 = sub_2408D4160();
  v1[11] = v10;
  v11 = swift_task_alloc();
  v1[12] = v11;
  *v11 = v1;
  v11[1] = sub_240811F9C;

  return sub_24087D810(v10);
}

uint64_t sub_240811F9C(char a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_2408121E8;
  }

  else
  {
    v4 = sub_2408120B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2408120B4(uint64_t a1)
{
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 112);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "SignOutServiceDelegate finished sign out command with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 80);
  v7 = *(v1 + 64);
  v8 = *(v1 + 40);

  v6(v7, v8);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2408121E8()
{
  v21 = v0;
  v1 = *(v0 + 104);

  sub_2408D4930();
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v18 = *(v0 + 56);
    v19 = *(v0 + 80);
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "SignOutServiceDelegate error occurred on sign out command: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);

    v19(v18, v6);
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v15 = *(v0 + 40);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2408123F8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_240812458()
{
  result = qword_27E5073B8;
  if (!qword_27E5073B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073B8);
  }

  return result;
}

unint64_t sub_2408124B0()
{
  result = qword_27E5073C0;
  if (!qword_27E5073C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073C0);
  }

  return result;
}

void sub_240812504(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  *&v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  *&v51 = &v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  sub_2408D4930();
  v15 = a1;
  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();
  if (!os_log_type_enabled(v16, v17))
  {

    v26 = *(v5 + 8);
    v26(v14, v4);
    v25 = v4;
LABEL_5:
    v27 = [v15 userInfo];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2408D4CB0();

      v53[0] = 6581603;
      v53[1] = 0xE300000000000000;
      sub_2408D50D0();
      if (*(v29 + 16) && (v30 = sub_2408CCDE4(v60), (v31 & 1) != 0))
      {
        sub_2407EEB40(*(v29 + 56) + 32 * v30, v54);
        sub_240812CC8(v60);
        if (swift_dynamicCast())
        {
          if (v53[0] == 8100)
          {
            v32 = 0;
            goto LABEL_23;
          }

          if (v53[0] == 8101)
          {
            v32 = 1;
LABEL_23:
            sub_24087C8B0(v29, &v68);
            v64 = v68;
            v65 = v69;
            v66 = v70;
            v54[0] = 6581603;
            v54[1] = 0xE300000000000000;
            LOBYTE(v55) = v32;
            HIDWORD(v55) = *&v67[3];
            *(&v55 + 1) = *v67;
            v56 = v15;
            v58 = v69;
            v57 = v68;
            v59 = v70;
            v41 = v55;
            v51 = v69;
            v52 = v68;
            v50 = v70;
            v60[0] = 6581603;
            v60[1] = 0xE300000000000000;
            v61 = v32;
            *&v62[3] = *&v67[3];
            *v62 = *v67;
            v63 = v15;
            sub_240812D1C(v54, v53);
            sub_240812D54(v60);
            v45 = v50;
            v44 = v51;
            v43 = v52;
            v42 = xmmword_2408D79E0;
            goto LABEL_21;
          }
        }
      }

      else
      {

        sub_240812CC8(v60);
      }

      v37 = v52;
      sub_2408D4930();
      v38 = sub_2408D4B10();
      v39 = sub_2408D4F30();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2407CF000, v38, v39, "SignOutServiceDelegate received push message with unknown cmd, failing initialization", v40, 2u);
        MEMORY[0x245CC9F60](v40, -1, -1);
      }

      v36 = v37;
    }

    else
    {
      sub_2408D4930();
      v33 = sub_2408D4B10();
      v34 = sub_2408D4F30();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2407CF000, v33, v34, "SignOutServiceDelegate received push message with empty userInfo, failing initialization", v35, 2u);
        MEMORY[0x245CC9F60](v35, -1, -1);
      }

      v36 = v12;
    }

    v26(v36, v25);

    v41 = 0;
    v15 = 0;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
LABEL_21:
    *a2 = v42;
    *(a2 + 16) = v41;
    *(a2 + 24) = v15;
    *(a2 + 32) = v43;
    *(a2 + 48) = v44;
    *(a2 + 64) = v45;
    return;
  }

  v46 = v12;
  v47 = v5;
  v48 = v4;
  *&v50 = a2;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v60[0] = v19;
  *v18 = 136315138;
  v20 = [v15 userInfo];
  v49 = v15;

  if (v20)
  {
    sub_2408D4CB0();

    v21 = sub_2408D4CC0();
    v23 = v22;

    v24 = sub_2408CC504(v21, v23, v60);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_2407CF000, v16, v17, "SignOutServiceDelegate initializing push message with payload: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);

    v25 = v48;
    v26 = *(v47 + 8);
    v26(v14, v48);
    v15 = v49;
    a2 = v50;
    v12 = v46;
    goto LABEL_5;
  }

  __break(1u);
}

BOOL sub_240812B54(char a1)
{
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 & 1;
  sub_2408D4930();
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v6 | 0x1FA4;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6 ^ 1;
    _os_log_impl(&dword_2407CF000, v7, v8, "SignOutServiceDelegate should process aps command: %ld, decision : %{BOOL}d", v9, 0x12u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v6 == 0;
}

uint64_t sub_240812D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407D379C;

  return sub_240811D38(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for SignOutPushServiceDelegate.Command(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignOutPushServiceDelegate.Command(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_240812FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240813004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24081306C()
{
  result = qword_27E5073C8;
  if (!qword_27E5073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073C8);
  }

  return result;
}

uint64_t sub_2408130C0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2408130E4, 0, 0);
}

uint64_t sub_2408130E4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_240813A0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24085F49C;
  v0[13] = &block_descriptor_6;
  v0[14] = v3;
  [v1 signOutOfAllServicesUsingContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24081320C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_240813230, 0, 0);
}

uint64_t sub_240813230()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_240813358;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24085F49C;
  v0[13] = &block_descriptor_2;
  v0[14] = v3;
  [v1 removeAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240813358(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 160);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

id sub_240813474(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_2408D4D00();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 aa:v4 appleAccountWithAltDSID:?];

  return v5;
}

uint64_t sub_2408134F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240813A08;

  return v9(a1, a2, a3);
}

uint64_t sub_24081361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240813744;

  return v9(a1, a2, a3);
}

uint64_t sub_240813744(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2408138A4(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = sub_2408D4DB0();
  }

  else
  {
    v3 = 0;
  }

  v9[0] = 0;
  v4 = [v1 accountsWithAccountTypeIdentifiers:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_24081399C();
    v2 = sub_2408D4DC0();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_2408D33F0();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_24081399C()
{
  result = qword_27E5070C8;
  if (!qword_27E5070C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5070C8);
  }

  return result;
}

uint64_t sub_240813A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506C48);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    v11 = sub_2408D4D40();
    v13 = sub_2408CC504(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v14 = sub_2408D4D40();
    v16 = sub_2408CC504(v14, v15, &v21);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074E8, &qword_2408D8040);
    v17 = sub_2408D4D40();
    v19 = sub_2408CC504(v17, v18, &v21);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_2407CF000, v7, v8, "Configuring %s for external usage with model: %s router: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  *(v3 + 248) = a1;

  *(v3 + 240) = a2;
}

uint64_t sub_240813C98(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_2408D3A60();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_2408D3630();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for ProximityTransportConnector.LegacySetupCompleted(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_2408D4B20();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = sub_2408D3500();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240813F30, v2, 0);
}

uint64_t sub_240813F30()
{
  v1 = v0[14];
  *(v1 + 248) = v0[13];

  sub_2408D34B0();
  swift_allocObject();
  v0[38] = sub_2408D34C0();
  sub_2408D49E0();
  sub_2408D48E0();
  swift_allocObject();
  v0[39] = sub_2408D48C0();
  sub_2408D48D0();
  v0[40] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_240814028, 0, 0);
}

uint64_t sub_240814028()
{
  v1 = *(v0 + 112);
  sub_24080A424();

  return MEMORY[0x2822009F8](sub_240814094, v1, 0);
}

uint64_t sub_240814094()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  v1[1] = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_240814164;
  v3 = *(v0 + 296);
  v4 = *(v0 + 120);

  return MEMORY[0x2821400E8](v3, &unk_2408D8230, v1, v4);
}

uint64_t sub_240814164()
{

  return MEMORY[0x2822009F8](sub_24081427C, 0, 0);
}

uint64_t sub_24081427C()
{
  sub_2407EEE04(v0[37], v0[36], &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    sub_2407D9440(v2, &qword_27E506EF8, &qword_2408D76B0);
  }

  v3 = v0[14];
  sub_24080A730();

  return MEMORY[0x2822009F8](sub_240814344, v3, 0);
}

uint64_t sub_240814344(uint64_t a1)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 280);
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v2, v3, &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v1 + 296);
  v6 = *(v1 + 280);
  if (EnumCaseMultiPayload != 1)
  {
    v25 = *(v1 + 120);
    v26 = *(v1 + 128);
    v27 = *(v1 + 96);
    sub_2407D9440(*(v1 + 296), &qword_27E506EF8, &qword_2408D76B0);

    (*(v26 + 32))(v27, v6, v25);
    goto LABEL_7;
  }

  v7 = (v1 + 48);
  v8 = *v6;
  *(v1 + 344) = *v6;
  *(v1 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v5, &qword_27E506EF8, &qword_2408D76B0);
  *(v1 + 48) = v8;
  v9 = v8;
  if (swift_dynamicCast())
  {
    (*(*(v1 + 232) + 32))(*(v1 + 248), *(v1 + 256), *(v1 + 224));
    v10 = sub_240880C4C();
    v11 = *(v1 + 248);
    if (v10)
    {
      v13 = *(v1 + 232);
      v12 = *(v1 + 240);
      v14 = *(v1 + 224);

      sub_2408D4910();
      v15 = *(v13 + 16);
      v15(v12, v11, v14);
      v16 = sub_2408D4B10();
      v17 = sub_2408D4F20();
      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v1 + 232);
      v19 = *(v1 + 240);
      v21 = *(v1 + 224);
      if (v18)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        v15(v22, v19, v21);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = *(v20 + 8);
        v24(v19, v21);
        *(v73 + 4) = v23;
        *v74 = v23;
        _os_log_impl(&dword_2407CF000, v16, v17, "Setup flow cancelled with %@", v73, 0xCu);
        sub_2407D9440(v74, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v74, -1, -1);
        MEMORY[0x245CC9F60](v73, -1, -1);
      }

      else
      {

        v24 = *(v20 + 8);
        v24(v19, v21);
      }

      v64 = *(v1 + 248);
      v65 = *(v1 + 224);
      (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      v15(v66, v64, v65);
      swift_willThrow();
      v24(v64, v65);
      goto LABEL_36;
    }

    (*(*(v1 + 232) + 8))(*(v1 + 248), *(v1 + 224));
  }

  *(v1 + 56) = v8;
  v29 = v8;
  if (swift_dynamicCast())
  {

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    *(v1 + 352) = __swift_project_value_buffer(*(v1 + 200), qword_27E506C48);
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2407CF000, v30, v31, "RemoteSetupService caught user selected Manual", v32, 2u);
      MEMORY[0x245CC9F60](v32, -1, -1);
    }

    v33 = *(v1 + 112);

    swift_beginAccess();
    v34 = *(v33 + 120);
    if (v34)
    {
      v35 = *(v1 + 224);
      v36 = *(v1 + 232);
      *(v1 + 80) = v34;
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v37 = swift_allocError();
      (*(v36 + 104))(v38, *MEMORY[0x277CED2D8], v35);
      *(v1 + 88) = v37;
      type metadata accessor for ProximityTransportConnector();
      sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6F38);

      sub_2408D3640();
    }

    v75 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v39 = swift_task_alloc();
    *(v1 + 360) = v39;
    *v39 = v1;
    v39[1] = sub_24081502C;
    v40 = *(v1 + 160);

    return v75(v40);
  }

  v7 = (v1 + 64);

  *(v1 + 64) = v8;
  v42 = v8;
  if (swift_dynamicCast())
  {
    v44 = *(v1 + 184);
    v43 = *(v1 + 192);

    sub_240875B98(v43, v44, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v46 = *(v1 + 176);
    v45 = *(v1 + 184);
    __swift_project_value_buffer(*(v1 + 200), qword_27E506C48);
    sub_240875C00(v45, v46, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    v47 = sub_2408D4B10();
    v48 = sub_2408D4F10();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v1 + 176);
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      sub_2408763D8(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted, &unk_2408D70E4);
      swift_allocError();
      sub_240875C00(v50, v53, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
      v54 = _swift_stdlib_bridgeErrorToNSError();
      sub_240875C68(v50, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_2407CF000, v47, v48, "Caught LegacySetupCompleted result: %@", v51, 0xCu);
      sub_2407D9440(v52, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v52, -1, -1);
      MEMORY[0x245CC9F60](v51, -1, -1);
    }

    else
    {

      sub_240875C68(v50, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    }

    sub_2407EEE04(*(v1 + 184), *(v1 + 272), &qword_27E506EF8, &qword_2408D76B0);
    v67 = swift_getEnumCaseMultiPayload();
    v68 = *(v1 + 272);
    v69 = *(v1 + 184);
    if (v67 == 1)
    {
      *(v1 + 72) = *v68;
      swift_willThrowTypedImpl();
      sub_240875C68(v69, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
LABEL_36:

      v28 = *(v1 + 8);
      goto LABEL_37;
    }

    v70 = *(v1 + 120);
    v71 = *(v1 + 128);
    v72 = *(v1 + 96);
    sub_240875C68(*(v1 + 184), type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    (*(v71 + 32))(v72, v68, v70);

LABEL_7:

    v28 = *(v1 + 8);
LABEL_37:

    return v28();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v1 + 200), qword_27E506C48);
  v55 = v8;
  v56 = sub_2408D4B10();
  v57 = sub_2408D4F20();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    v60 = v8;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 4) = v61;
    *v59 = v61;
    _os_log_impl(&dword_2407CF000, v56, v57, "Error received during setup is: %@", v58, 0xCu);
    sub_2407D9440(v59, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v59, -1, -1);
    MEMORY[0x245CC9F60](v58, -1, -1);
  }

  v62 = swift_task_alloc();
  *(v1 + 384) = v62;
  *v62 = v1;
  v62[1] = sub_2408157D0;
  v63 = *(v1 + 104);

  return sub_240815AC0(v8, v63);
}

uint64_t sub_24081502C()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_24081513C, v1, 0);
}

uint64_t sub_24081513C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = sub_2408D35A0();
  (*(v2 + 8))(v1, v3);
  v5 = sub_2408D4B10();
  if (v4)
  {
    v6 = sub_2408D4F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, "Throwing custom manual implementation error", v7, 2u);
      MEMORY[0x245CC9F60](v7, -1, -1);
    }

    v8 = *(v0 + 224);
    v9 = *(v0 + 232);

    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(v9 + 104))(v10, *MEMORY[0x277CED2B8], v8);
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = sub_2408D4F20();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v5, v13, "Calling base to perform manual setup", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 368) = v15;
    *v15 = v0;
    v15[1] = sub_24081545C;
    v16 = *(v0 + 136);
    v17 = *(v0 + 104);

    return sub_2407F7188(v16, v17);
  }
}

uint64_t sub_24081545C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_2408156B8;
  }

  else
  {
    v4 = sub_240815588;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240815588()
{
  (*(*(v0 + 128) + 32))(*(v0 + 96), *(v0 + 136), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408156B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408157D0()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_2408158E4, v4, 0);
  }

  return result;
}

uint64_t sub_2408158E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408159FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2408167FC(a1, a3);
}

uint64_t sub_240815AC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v5 = sub_2408D4130();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_2408D3630();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[15] = v7;
  v3[2] = a1;
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v8 = swift_task_alloc();
  v3[16] = v8;
  *v8 = v3;
  v8[1] = sub_240815C44;

  return v10(v7);
}

uint64_t sub_240815C44()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_240815D54, v1, 0);
}

uint64_t sub_240815D54()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = v7;
    v10 = v7;
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[7];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v0[6] = v14;
      v17 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v18 = sub_2408D5230();
      v19 = v0[7];
      if (v18)
      {
      }

      else
      {
        swift_allocError();
        *v32 = v19;
      }

      v33 = v0[7];
      v34 = _swift_stdlib_bridgeErrorToNSError();

      *(v15 + 4) = v34;
      *v16 = v34;
      _os_log_impl(&dword_2407CF000, v11, v12, "Skipping showing error: %@", v15, 0xCu);
      sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    else
    {
    }

    v0[5] = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v35 = sub_2408D5230();
    v36 = v0[7];
    if (v35)
    {
    }

    else
    {
      swift_allocError();
      *v37 = v36;
    }

    swift_willThrow();

    v38 = v0[1];

    return v38();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v20 = v0[7];
    v21 = sub_2408D4B20();
    __swift_project_value_buffer(v21, qword_27E506C48);
    v22 = v20;
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F10();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[7];
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v0[4] = v26;
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v30 = sub_2408D5230();
      v31 = v0[7];
      if (v30)
      {
      }

      else
      {
        swift_allocError();
        *v40 = v31;
      }

      v41 = v0[7];
      v42 = _swift_stdlib_bridgeErrorToNSError();

      *(v27 + 4) = v42;
      *v28 = v42;
      _os_log_impl(&dword_2407CF000, v23, v24, "Presenting error to user before proceeding: %@", v27, 0xCu);
      sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    else
    {
    }

    v43 = swift_task_alloc();
    v0[17] = v43;
    *(v43 + 16) = v0 + 2;
    v45 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v44 = swift_task_alloc();
    v0[18] = v44;
    *v44 = v0;
    v44[1] = sub_2408162BC;

    return v45();
  }
}

uint64_t sub_2408162BC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_2408164D4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2408163E4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408163E4()
{
  v1 = v0[7];
  v0[3] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v3 = sub_2408D5230();
  v4 = v0[7];
  if (v3)
  {
  }

  else
  {
    swift_allocError();
    *v5 = v4;
  }

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2408164D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24081654C(uint64_t a1, void *a2)
{
  v3 = sub_2408D35B0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_2408D3500();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a2;
  v17[1] = a2;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v5, v12, v9);
    v15(v5, 0, 6, v9);
    sub_2408D35D0();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v15(v8, 1, 1, v9);
    sub_2407D9440(v8, &qword_27E507268, &qword_2408D8240);
    sub_2408D52A0();
    v15(v5, 0, 6, v9);
    return sub_2408D35D0();
  }
}

uint64_t sub_2408167FC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40);
  v3[13] = swift_task_alloc();
  v4 = sub_2408D3D60();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240816904, v2, 0);
}

uint64_t sub_240816904()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v0[18] = v2;
  if (v2)
  {
    v0[5] = sub_2408D3630();
    v0[6] = sub_2408763D8(&qword_27E507498, 255, MEMORY[0x277CED360], &unk_2408D9410);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v12 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_240816BB0;

    return v12(boxed_opaque_existential_1);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E506C48);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F10();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "We do not have a valid connector. Cancelling early.", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_240816BB0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v2;
  v3[1] = sub_240816D0C;
  v4 = *(v1 + 104);

  return sub_2407EF354(v4, v1 + 16);
}

uint64_t sub_240816D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_240816E24, v2, 0);
}

uint64_t sub_240816E24()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    (*(v2 + 32))(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    v9 = (*(v2 + 88))(v8, v1);
    if (v9 == *MEMORY[0x277CED560])
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v10 = sub_2408D4B20();
      __swift_project_value_buffer(v10, qword_27E506C48);
      v11 = sub_2408D4B10();
      v12 = sub_2408D4F10();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2407CF000, v11, v12, "Setting up as client", v13, 2u);
        MEMORY[0x245CC9F60](v13, -1, -1);
      }

      v14 = v0[18];

      v23 = sub_2408176E0;
      v15 = swift_task_alloc();
      v0[21] = v15;
      *v15 = v0;
      v16 = sub_240817294;
    }

    else
    {
      if (v9 != *MEMORY[0x277CED568])
      {
        return sub_2408D5190();
      }

      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v17 = sub_2408D4B20();
      __swift_project_value_buffer(v17, qword_27E506C48);
      v18 = sub_2408D4B10();
      v19 = sub_2408D4F10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2407CF000, v18, v19, "Setting up as server", v20, 2u);
        MEMORY[0x245CC9F60](v20, -1, -1);
      }

      v14 = v0[18];

      v23 = sub_2408227C4;
      v15 = swift_task_alloc();
      v0[23] = v15;
      *v15 = v0;
      v16 = sub_240817510;
    }

    v15[1] = v16;
    v21 = v0[11];
    v22 = v0[10];

    return v23(v22, v21, v14);
  }
}

uint64_t sub_240817294()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_24081746C;
  }

  else
  {
    v4 = sub_2408173C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408173C0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24081746C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240817510()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_24081763C;
  }

  else
  {
    v4 = sub_240876448;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24081763C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408176E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v4[19] = swift_task_alloc();
  v6 = sub_2408D3970();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = sub_2408D3D60();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[30] = v9;
  *v9 = v4;
  v9[1] = sub_2408178FC;

  return sub_240828170(a2);
}

uint64_t sub_2408178FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_240817C7C;
  }

  else
  {
    v5 = sub_240817A28;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240817A28()
{
  v16 = v0;

  v0[33] = sub_2408709F8(v1);

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v2, qword_27E506C48);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED400]);

    v7 = sub_2408D4EF0();
    v9 = v8;

    v10 = sub_2408CC504(v7, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Attempting authentication for discovered accounts: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_240817D1C;
  v12 = v0[29];
  v13 = v0[16];

  return sub_2408813B8(v12, v13);
}

uint64_t sub_240817C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240817D1C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);

    v4 = sub_240818210;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 144);
    v4 = sub_240817E44;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_240817E44()
{
  v1 = v0[17];
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277CED560], v0[24]);

  return MEMORY[0x2822009F8](sub_240817ECC, v1, 0);
}

uint64_t sub_240817ECC()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_2407D9440(v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v5 = *(v0 + 264);
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  v6[1] = sub_240818044;
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);

  return sub_24082A4B4(v8, v7, v0 + 56, v5);
}

uint64_t sub_240818044(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 192);
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  (*(v6 + 8))(v5, v7);

  sub_2407D9440(v4 + 56, &qword_27E507FA0, &qword_2408D7FB0);
  v8 = *(v3 + 144);
  if (v1)
  {
    v9 = sub_24081847C;
  }

  else
  {
    v9 = sub_2408182B8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_240818210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408182B8()
{
  v14 = v0;

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[38];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    sub_2408D3D80();

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Discovered server and established router: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_240818540;
  v10 = v0[19];
  v11 = v0[16];

  return sub_240818DD0(v10, v11);
}

uint64_t sub_24081847C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_240818540()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_240818A08;
  }

  else
  {
    v4 = sub_24081866C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24081866C()
{
  v33 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &unk_27E506A20, &unk_2408D67F0);
    v4 = v0[31];
  }

  else
  {
    v6 = v0[22];
    v5 = v0[23];
    (*(v2 + 32))(v5, v3, v1);
    v7 = *(v2 + 16);
    v7(v6, v5, v1);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F20();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[20];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v14 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v15 = sub_2408D5220();
      v30 = v7;
      v17 = v16;
      v31 = *(v12 + 8);
      v31(v11, v13);
      v18 = sub_2408CC504(v15, v17, &v32);
      v7 = v30;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2407CF000, v8, v9, "Updating accounts with selection: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x245CC9F60](v29, -1, -1);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    else
    {

      v31 = *(v12 + 8);
      v31(v11, v13);
    }

    v19 = v0[23];
    v20 = v0[20];
    v21 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2408D71B0;
    v7(v23 + v22, v19, v20);
    v4 = sub_240870BF0(v23);
    swift_setDeallocating();
    v31(v23 + v22, v20);
    swift_deallocClassInstance();
    v31(v19, v20);
  }

  v0[42] = v4;

  v24 = swift_task_alloc();
  v0[43] = v24;
  *v24 = v0;
  v24[1] = sub_240818ADC;
  v25 = v0[38];
  v26 = v0[15];
  v27 = v0[16];

  return sub_24081A428(v26, v25, v27, v4);
}

uint64_t sub_240818A08()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240818ADC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_240818CFC;
  }

  else
  {
    v4 = sub_240818C24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240818C24()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240818CFC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240818DD0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2408D37E0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_2408D4130();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_2408D3630();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_2408D3490();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240818FB4, v2, 0);
}

uint64_t sub_240818FB4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[9] + 144), *(v0[9] + 168));
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_240819258;
    v6 = v0[19];

    return v15(v6);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Feature disabled, not asking for family member selection", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[7];

    v13 = sub_2408D3970();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_240819258()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_240819368, v1, 0);
}

uint64_t sub_240819368()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  v7 = sub_2408D4050();
  v0[24] = v7;
  (*(v6 + 8))(v4, v5);
  if ((v7 - 1) > 1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E506C48);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F20();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "age range not eligible for picking another member", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    v20 = v0[7];

    v21 = sub_2408D3970();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v22 = v0[1];

    return v22();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    v0[25] = __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_2407CF000, v9, v10, "Fetching family circle to ask for family member selection for age range: %lu", v11, 0xCu);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[9];

    sub_2407D91C4(v12 + 200, (v0 + 2));
    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_2408196B8;

    return MEMORY[0x28213FE78](v13, v14);
  }
}

uint64_t sub_2408196B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = sub_24081A0D4;
  }

  else
  {
    v6 = sub_2408197EC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void *sub_2408197EC()
{
  v82 = v0;
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished fetching circle: %@", v6, 0xCu);
    sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v9 = *(v0 + 216);

  v10 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
  v11 = [v9 me];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isGuardian];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = [*(v0 + 216) members];
    sub_2407EEDBC(0, &qword_27E507620, 0x277D08268);
    v30 = sub_2408D4DC0();

    if (v30 >> 62)
    {
      v31 = sub_2408D51A0();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v31)
    {
LABEL_5:
      if (*(v0 + 192) == 1)
      {
        v14 = sub_2408D4F90();
        if (v14 >> 62)
        {
          v52 = v14;
          v15 = sub_2408D51A0();
          v14 = v52;
          if (v15)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
LABEL_8:
            v16 = v14;
            v81 = MEMORY[0x277D84F90];
            result = sub_24087B5DC(0, v15 & ~(v15 >> 63), 0);
            if ((v15 & 0x8000000000000000) == 0)
            {
              v18 = 0;
              v19 = *(v0 + 88);
              v20 = v81;
              v21 = v16;
              v78 = v16 & 0xC000000000000001;
              v22 = v16;
              do
              {
                if (v78)
                {
                  v23 = MEMORY[0x245CC9570](v18, v21);
                }

                else
                {
                  v23 = *(v21 + 8 * v18 + 32);
                }

                v24 = v23;
                sub_2408D4FA0();

                v81 = v20;
                v26 = *(v20 + 16);
                v25 = *(v20 + 24);
                if (v26 >= v25 >> 1)
                {
                  sub_24087B5DC((v25 > 1), v26 + 1, 1);
                  v20 = v81;
                }

                v27 = *(v0 + 104);
                v28 = *(v0 + 80);
                ++v18;
                *(v20 + 16) = v26 + 1;
                (*(v19 + 32))(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, v27, v28);
                v21 = v22;
              }

              while (v15 != v18);
LABEL_35:

              v10 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
LABEL_41:
              *(v0 + 232) = v20;
              v54 = *(v0 + 216);

              v55 = [v54 v10[108]];
              v56 = *(v0 + 216);
              if (v55)
              {

                v57 = [v56 canAddMembers];
              }

              else
              {
                v58 = [*(v0 + 216) members];
                sub_2407EEDBC(0, &qword_27E507620, 0x277D08268);
                v59 = sub_2408D4DC0();

                if (v59 >> 62)
                {
                  v60 = sub_2408D51A0();
                }

                else
                {
                  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v57 = v60 == 0;
              }

              v61 = sub_2408D4B10();
              v62 = sub_2408D4F20();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = *(v0 + 80);
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v81 = v65;
                *v64 = 136315394;
                v66 = MEMORY[0x245CC9210](v20, v63);
                v68 = v67;

                v69 = sub_2408CC504(v66, v68, &v81);

                *(v64 + 4) = v69;
                *(v64 + 12) = 1024;
                *(v64 + 14) = v57;
                _os_log_impl(&dword_2407CF000, v61, v62, "Asking user to make a family member selection: %s canAddMembers: %{BOOL}d", v64, 0x12u);
                __swift_destroy_boxed_opaque_existential_0Tm(v65);
                MEMORY[0x245CC9F60](v65, -1, -1);
                MEMORY[0x245CC9F60](v64, -1, -1);
              }

              else
              {
              }

              v70 = *(v0 + 216);
              v71 = *(v0 + 192);
              v72 = swift_task_alloc();
              *(v0 + 240) = v72;
              *(v72 + 16) = v20;
              *(v72 + 24) = v57;
              v73 = swift_allocObject();
              *(v0 + 248) = v73;
              *(v73 + 16) = v70;
              *(v73 + 24) = v57;
              *(v73 + 32) = v71;
              v80 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
              v74 = v70;
              v75 = swift_task_alloc();
              *(v0 + 256) = v75;
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
              *v75 = v0;
              v75[1] = sub_24081A17C;
              v77 = *(v0 + 56);

              return v80(v77, sub_240875E70, v72, &unk_2408D82F0, v73, v76);
            }

            __break(1u);
            goto LABEL_54;
          }
        }

LABEL_40:

        v20 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }

      v39 = sub_2408D4F80();
      if (v39 >> 62)
      {
        v53 = v39;
        v40 = sub_2408D51A0();
        v39 = v53;
        if (!v40)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_40;
        }
      }

      v41 = v39;
      v81 = MEMORY[0x277D84F90];
      result = sub_24087B5DC(0, v40 & ~(v40 >> 63), 0);
      if ((v40 & 0x8000000000000000) == 0)
      {
        v42 = 0;
        v43 = *(v0 + 88);
        v20 = v81;
        v44 = v41;
        v79 = v41 & 0xC000000000000001;
        v45 = v41;
        do
        {
          if (v79)
          {
            v46 = MEMORY[0x245CC9570](v42, v44);
          }

          else
          {
            v46 = *(v44 + 8 * v42 + 32);
          }

          v47 = v46;
          sub_2408D4FA0();

          v81 = v20;
          v49 = *(v20 + 16);
          v48 = *(v20 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_24087B5DC((v48 > 1), v49 + 1, 1);
            v20 = v81;
          }

          v50 = *(v0 + 96);
          v51 = *(v0 + 80);
          ++v42;
          *(v20 + 16) = v49 + 1;
          (*(v43 + 32))(v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v49, v50, v51);
          v44 = v45;
        }

        while (v40 != v42);
        goto LABEL_35;
      }

LABEL_54:
      __break(1u);
      return result;
    }
  }

  v32 = sub_2408D4B10();
  v33 = sub_2408D4F30();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2407CF000, v32, v33, "User is not a guardian and cannot sign in other users", v34, 2u);
    MEMORY[0x245CC9F60](v34, -1, -1);
  }

  v35 = *(v0 + 216);

  v36 = sub_2408D3500();
  sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277CED2C0], v36);
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_24081A0D4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24081A17C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_24081A360;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_24081A2C0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24081A2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24081A360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24081A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v6 = sub_2408D3D70();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for SignInReport(0);
  v5[35] = swift_task_alloc();
  v5[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v7 = sub_2408D3490();
  v5[42] = v7;
  v5[43] = *(v7 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v5[45] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v5[46] = v8;
  v5[47] = *(v8 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = sub_2408D3E10();
  v5[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075E8, &qword_2408D8278);
  v5[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v5[62] = swift_task_alloc();
  v9 = sub_2408D4660();
  v5[63] = v9;
  v5[64] = *(v9 - 8);
  v5[65] = swift_task_alloc();
  v10 = sub_2408D3970();
  v5[66] = v10;
  v5[67] = *(v10 - 8);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v11 = sub_2408D3C20();
  v5[77] = v11;
  v5[78] = *(v11 - 8);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v12 = sub_2408D3630();
  v5[82] = v12;
  v5[83] = *(v12 - 8);
  v5[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24081AA18, v4, 0);
}

uint64_t sub_24081AA18()
{
  v15 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[85] = __swift_project_value_buffer(v1, qword_27E506C48);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[23] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Beginning setup as client with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  *(v0[28] + 240) = v0[25];

  v0[86] = sub_2407F585C(MEMORY[0x277D84F90]);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[87] = v10;
  *v10 = v0;
  v10[1] = sub_24081AC54;
  v11 = v0[84];

  return v13(v11);
}

uint64_t sub_24081AC54()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081AD64, v1, 0);
}

void sub_24081AD64(uint64_t a1)
{
  v132 = v1;
  v2 = *(v1 + 672);
  v3 = *(v1 + 664);
  v4 = *(v1 + 656);
  v5 = *(v1 + 648);
  v6 = *(v1 + 624);
  v7 = *(v1 + 616);
  v8 = *(v1 + 216);
  sub_2408D3540();
  v9 = *(v3 + 8);
  *(v1 + 704) = v9;
  *(v1 + 712) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = sub_2408D3B20();
  *(v1 + 720) = v10;
  v11 = *(v6 + 8);
  *(v1 + 728) = v11;
  *(v1 + 736) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = *(v1 + 536);
    v14 = *(v1 + 216);
    v15 = sub_2408782D0(*(v8 + 16), 0);
    v127 = sub_2408784D4(&v131, &v15[(*(v13 + 80) + 32) & ~*(v13 + 80)], v12, v14);
    v16 = v131;

    sub_2407D17F4(v16);
    if (v127 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_5:
  v131 = v15;
  sub_240872EC8(&v131, v10);

  v17 = v131;
  *(v1 + 744) = v131;

  v18 = sub_2408D4B10();
  v19 = sub_2408D4F20();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v131 = v21;
    *v20 = 136315138;
    sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED400]);
    v22 = sub_2408D4EF0();
    v24 = sub_2408CC504(v22, v23, &v131);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2407CF000, v18, v19, "Sorted discovered accounts: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x245CC9F60](v21, -1, -1);
    MEMORY[0x245CC9F60](v20, -1, -1);
  }

  v25 = *(v17 + 16);
  *(v1 + 752) = v25;
  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    *(v1 + 768) = *(v1 + 688);
    *(v1 + 760) = v26;
    v38 = sub_2407F5674(v26);
    v39 = sub_2407F5A54(v26);
    v40 = *(v26 + 16);
    *(v1 + 776) = v40;
    if (!v40)
    {

LABEL_24:

      *(v1 + 880) = v38;
      *(v1 + 872) = v39;
      v64 = *(v1 + 760);

      v65 = *(v64 + 16);
      if (!v65)
      {
LABEL_36:
        v102 = sub_2408D4B10();
        v103 = sub_2408D4F10();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_2407CF000, v102, v103, "Sending termination command via router", v104, 2u);
          MEMORY[0x245CC9F60](v104, -1, -1);
        }

        sub_2408D3E00();
        v130 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
        v105 = swift_task_alloc();
        *(v1 + 888) = v105;
        v106 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
        *v105 = v1;
        v105[1] = sub_24081D504;
        v108 = *(v1 + 464);
        v107 = *(v1 + 472);
        v109 = *(v1 + 456);

        v130(v107, v108, v109, v106);
        return;
      }

      v66 = 0;
      v67 = *(v1 + 536);
      v129 = (v67 + 8);
      while (1)
      {
        v68 = *(v1 + 760);
        if (v66 >= *(v68 + 16))
        {
          goto LABEL_51;
        }

        v69 = *(v1 + 488);
        v70 = *(v67 + 16);
        v70(*(v1 + 584), v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, *(v1 + 528));
        sub_2408D37A0();
        v71 = sub_2408D3720();
        if ((*(*(v71 - 8) + 48))(v69, 1, v71) != 1)
        {
          break;
        }

        v72 = *(v1 + 488);
        ++v66;
        (*v129)(*(v1 + 584), *(v1 + 528));
        sub_2407D9440(v72, &qword_27E506A18, &qword_2408D67E8);
        if (v65 == v66)
        {
          goto LABEL_36;
        }
      }

      v125 = *(v1 + 768);
      v73 = *(v1 + 600);
      v74 = *(v1 + 592);
      v75 = *(v1 + 584);
      v76 = *(v1 + 536);
      v77 = *(v1 + 528);
      sub_2407D9440(*(v1 + 488), &qword_27E506A18, &qword_2408D67E8);
      v78 = *(v76 + 32);
      v78(v74, v75, v77);
      v78(v73, v74, v77);
      sub_2408D38F0();
      if (v125[2] && (v79 = sub_2408CCBA8(*(v1 + 424)), (v80 & 1) != 0))
      {
        v81 = *(v1 + 600);
        v82 = *(v1 + 576);
        v83 = *(v1 + 528);
        v84 = *(v1 + 424);
        v85 = *(v1 + 368);
        v86 = *(v1 + 376);
        v87 = *(*(v1 + 768) + 56) + 16 * v79;
        v88 = *v87;
        *(v1 + 912) = *v87;
        v89 = *(v87 + 8);
        *(v1 + 89) = v89;
        v126 = v88;
        v124 = v89;
        sub_240875D9C(v88, v89);
        (*(v86 + 8))(v84, v85);
        v70(v82, v81, v83);
        v90 = sub_2408D4B10();
        v91 = sub_2408D4F20();
        v92 = os_log_type_enabled(v90, v91);
        v93 = *(v1 + 576);
        v94 = *(v1 + 528);
        if (v92)
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v131 = v96;
          *v95 = 136315138;
          sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
          v97 = sub_2408D5220();
          v99 = v98;
          v100 = *v129;
          (*v129)(v93, v94);
          v101 = sub_2408CC504(v97, v99, &v131);

          *(v95 + 4) = v101;
          _os_log_impl(&dword_2407CF000, v90, v91, "Attempting to run family repair on client for account: %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          MEMORY[0x245CC9F60](v96, -1, -1);
          MEMORY[0x245CC9F60](v95, -1, -1);
        }

        else
        {

          v100 = *v129;
          (*v129)(v93, v94);
        }

        *(v1 + 920) = v100;
        if ((v124 & 1) == 0)
        {

          v121 = swift_task_alloc();
          *(v1 + 928) = v121;
          *v121 = v1;
          v121[1] = sub_24081DFC4;
          v122 = *(v1 + 600);
          v123 = *(v1 + 208);

          sub_240821198(v123, v122, v126);
          return;
        }

        v129 = (v1 + 920);
        *(v1 + 144) = v126;
        v110 = v126;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        v111 = v126;
        v112 = sub_2408D4B10();
        v113 = sub_2408D4F30();

        v114 = os_log_type_enabled(v112, v113);
        v115 = *(v1 + 89);
        v116 = *(v1 + 912);
        if (v114)
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *v117 = 138412290;
          v119 = v126;
          v120 = _swift_stdlib_bridgeErrorToNSError();
          *(v117 + 4) = v120;
          *v118 = v120;
          _os_log_impl(&dword_2407CF000, v112, v113, "Failed to run family repair: %@", v117, 0xCu);
          sub_2407D9440(v118, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v118, -1, -1);
          MEMORY[0x245CC9F60](v117, -1, -1);

          sub_24080F564(v116, v115);
        }

        else
        {
          sub_24080F564(*(v1 + 912), *(v1 + 89));
        }
      }

      else
      {
        (*(*(v1 + 376) + 8))(*(v1 + 424), *(v1 + 368));
      }

      (*v129)(*(v1 + 600), *(v1 + 528));
      goto LABEL_36;
    }

    *(v1 + 108) = *(*(v1 + 536) + 80);
    *(v1 + 1064) = *MEMORY[0x277CED208];

    v41 = 0;
    while (1)
    {
      *(v1 + 984) = v39;
      *(v1 + 976) = v38;
      *(v1 + 968) = v41;
      *(v1 + 960) = v38;
      *(v1 + 952) = v39;
      *(v1 + 944) = 0;
      v45 = *(v1 + 760);
      if (v41 >= *(v45 + 16))
      {
        break;
      }

      v46 = *(v1 + 768);
      v47 = *(v1 + 568);
      v48 = *(v1 + 536);
      v49 = *(v1 + 528);
      v50 = *(v48 + 16);
      v48 += 16;
      v51 = v45 + ((*(v1 + 108) + 32) & ~*(v1 + 108)) + *(v48 + 56) * v41;
      *(v1 + 992) = v50;
      *(v1 + 1000) = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50(v47, v51, v49);
      sub_2408D38F0();
      if (*(v46 + 16) && (v52 = sub_2408CCBA8(*(v1 + 416)), (v53 & 1) != 0))
      {
        v54 = *(v1 + 416);
        v56 = *(v1 + 368);
        v55 = *(v1 + 376);
        v57 = *(*(v1 + 768) + 56) + 16 * v52;
        v58 = *v57;
        *(v1 + 1032) = *v57;
        v59 = *(v57 + 8);
        sub_240875D9C(v58, v59);
        v60 = *(v55 + 8);
        *(v1 + 1040) = v60;
        *(v1 + 1048) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v60(v54, v56);
        if ((v59 & 1) == 0)
        {
          v128 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
          v35 = swift_task_alloc();
          *(v1 + 1056) = v35;
          *v35 = v1;
          v36 = sub_24081FB44;
          goto LABEL_10;
        }

        v61 = *(v1 + 568);
        v62 = *(v1 + 536);
        v63 = *(v1 + 528);
        *(v1 + 152) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        (*(v62 + 8))(v61, v63);
        sub_24080F564(v58, 1);
      }

      else
      {
        v42 = *(v1 + 568);
        v43 = *(v1 + 536);
        v44 = *(v1 + 528);
        (*(*(v1 + 376) + 8))(*(v1 + 416), *(v1 + 368));
        (*(v43 + 8))(v42, v44);
      }

      v41 = *(v1 + 968) + 1;
      if (v41 == *(v1 + 776))
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v27 = *(v1 + 536);
  v28 = *(v1 + 688);
  *(v1 + 808) = 0;
  *(v1 + 800) = v26;
  *(v1 + 792) = v28;
  *(v1 + 784) = 0;
  v29 = *(v1 + 744);
  if (!*(v29 + 16))
  {
    goto LABEL_52;
  }

  v30 = *(v1 + 608);
  v32 = *(v27 + 16);
  v31 = v27 + 16;
  v33 = *(v1 + 528);
  v34 = *(v31 + 64);
  *(v1 + 92) = v34;
  *(v1 + 816) = *(v31 + 56);
  *(v1 + 824) = v32;
  *(v1 + 832) = v31 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v30, v29 + ((v34 + 32) & ~v34), v33);
  v128 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v35 = swift_task_alloc();
  *(v1 + 840) = v35;
  *v35 = v1;
  v36 = sub_24081BAE4;
LABEL_10:
  v35[1] = v36;
  v37 = *(v1 + 672);

  v128(v37);
}

uint64_t sub_24081BAE4()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081BBF4, v1, 0);
}

uint64_t sub_24081BBF4()
{
  v13 = v0[103];
  v1 = v0[88];
  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[76];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[62];
  v14 = v0[26];
  v15 = v0[28];
  sub_2408D3520();
  v1(v2, v3);
  swift_beginAccess();
  v13(v8, v4, v6);
  (*(v5 + 56))(v8, 0, 1, v6);
  sub_2408D4640();
  v9 = swift_task_alloc();
  v0[106] = v9;
  v9[2] = v15;
  v9[3] = v14;
  v9[4] = v7;
  v10 = swift_task_alloc();
  v0[107] = v10;
  v11 = type metadata accessor for AuthenticationReport(0);
  v0[108] = v11;
  *v10 = v0;
  v10[1] = sub_24081BD94;

  return MEMORY[0x2821400E8](v0 + 10, &unk_2408D8288, v9, v11);
}

uint64_t sub_24081BD94()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081BEC0, v1, 0);
}

uint64_t sub_24081BEC0()
{
  v196 = v0;
  v1 = *(v0 + 80);
  if (*(v0 + 88))
  {
    v2 = v1;

    *(v0 + 112) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    *(v0 + 120) = v1;
    v3 = v1;
    if (swift_dynamicCast())
    {
      v4 = (*(*(v0 + 256) + 88))(*(v0 + 264), *(v0 + 248));
      if (v4 == *MEMORY[0x277CED588])
      {
        v5 = v4;
        v187 = v1;
        sub_24080F564(v1, 1);
        v6 = sub_2408D4B10();
        v7 = sub_2408D4F20();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_2407CF000, v6, v7, "Throwing error during auth: CommandRouter.Failure.userCancelled", v8, 2u);
          MEMORY[0x245CC9F60](v8, -1, -1);
        }

        v9 = *(v0 + 536);
        v183 = *(v0 + 528);
        v184 = *(v0 + 608);
        v10 = *(v0 + 520);
        v12 = *(v0 + 504);
        v11 = *(v0 + 512);
        v14 = *(v0 + 248);
        v13 = *(v0 + 256);

        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        swift_allocError();
        (*(v13 + 104))(v15, v5, v14);
        swift_willThrow();
        sub_24080F564(v187, 1);

        (*(v11 + 8))(v10, v12);
        (*(v9 + 8))(v184, v183);
LABEL_19:

        v51 = *(v0 + 8);

        return v51();
      }

      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    }

    v36 = v1;
    v37 = sub_2408D4B10();
    v38 = sub_2408D4F20();
    sub_24080F564(v1, 1);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v195[0] = v40;
      *v39 = 136315138;
      *(v0 + 128) = v1;
      v41 = v1;
      v42 = sub_2408D4D40();
      v44 = sub_2408CC504(v42, v43, v195);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_2407CF000, v37, v38, "Throwing error during auth: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x245CC9F60](v40, -1, -1);
      MEMORY[0x245CC9F60](v39, -1, -1);
    }

    v45 = *(v0 + 608);
    v46 = *(v0 + 536);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    v49 = *(v0 + 504);
    v50 = *(v0 + 512);
    swift_willThrow();
    sub_24080F564(v1, 1);
    (*(v50 + 8))(v48, v49);
    (*(v46 + 8))(v45, v47);
    goto LABEL_19;
  }

  sub_240875D9C(*(v0 + 80), 0);

  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v195[0] = v19;
    *v18 = 136315138;
    *(v0 + 136) = v1;

    v20 = sub_2408D4D40();
    v22 = sub_2408CC504(v20, v21, v195);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2407CF000, v16, v17, "Report: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  v23 = *(v0 + 368);
  v24 = *(v0 + 376);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  sub_2408CBA10(v25);
  sub_2407EEE04(v25, v26, &qword_27E507F00, &qword_2408D6D50);
  if ((*(v24 + 48))(v26, 1, v23) == 1)
  {
    sub_2407D9440(*(v0 + 240), &qword_27E507F00, &qword_2408D6D50);
    sub_24080F564(v1, 0);
    v191 = *(v0 + 784);
  }

  else
  {
    v27 = *(v0 + 784);
    v28 = *(v0 + 608);
    v29 = *(v0 + 384);
    (*(*(v0 + 376) + 32))(v29, *(v0 + 232), *(v0 + 368));
    sub_2407DDB18(v29, v28);
    v30 = *(v0 + 384);
    v31 = *(v0 + 368);
    if (v27)
    {
      v32 = *(*(v0 + 376) + 8);
      v33 = *(v0 + 384);
      v34 = *(v0 + 368);

      return v32(v33, v34);
    }

    v52 = *(v0 + 240);
    v192 = *(v0 + 376);
    sub_24080F564(v1, 0);
    (*(v192 + 8))(v30, v31);
    sub_2407D9440(v52, &qword_27E507F00, &qword_2408D6D50);
    v191 = 0;
  }

  v53 = sub_2408D4B10();
  v54 = sub_2408D4F20();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v195[0] = v56;
    *v55 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v57 = sub_2408D5220();
    v59 = sub_2408CC504(v57, v58, v195);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    *(v0 + 96) = v1;
    *(v0 + 104) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075F0, &qword_2408D8290);
    v60 = sub_2408D4D40();
    v62 = sub_2408CC504(v60, v61, v195);

    *(v55 + 14) = v62;
    _os_log_impl(&dword_2407CF000, v53, v54, "Finished authenticating account (%s) with report: %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v56, -1, -1);
    MEMORY[0x245CC9F60](v55, -1, -1);
  }

  v63 = v1;
  v180 = *(v0 + 824);
  v64 = *(v0 + 792);
  v65 = *(v0 + 608);
  v66 = *(v0 + 544);
  v67 = *(v0 + 528);
  v68 = *(v0 + 432);
  v70 = *(v0 + 368);
  v69 = *(v0 + 376);
  swift_beginAccess();
  sub_2408D38F0();
  swift_endAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v195[0] = v64;
  v188 = v63;
  sub_2408C9E10(v63, 0, v68, isUniquelyReferenced_nonNull_native);
  (*(v69 + 8))(v68, v70);
  v185 = v195[0];
  v180(v66, v65, v67);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v0 + 800);
  if ((v72 & 1) == 0)
  {
LABEL_73:
    v73 = sub_240869C28(0, *(v73 + 2) + 1, 1, v73);
  }

  v75 = *(v73 + 2);
  v74 = *(v73 + 3);
  if (v75 >= v74 >> 1)
  {
    v73 = sub_240869C28((v74 > 1), v75 + 1, 1, v73);
  }

  v76 = *(v0 + 816);
  v181 = *(v0 + 608);
  v182 = *(v0 + 752);
  v77 = *(v0 + 544);
  v78 = *(v0 + 536);
  v79 = *(v0 + 528);
  v81 = *(v0 + 504);
  v80 = *(v0 + 512);
  v178 = *(v0 + 520);
  v179 = *(v0 + 808) + 1;
  v82 = (*(v0 + 92) + 32) & ~*(v0 + 92);
  sub_24080F564(v188, 0);
  *(v73 + 2) = v75 + 1;
  (*(v78 + 32))(&v73[v82 + v76 * v75], v77, v79);
  (*(v80 + 8))(v178, v81);
  result = (*(v78 + 8))(v181, v79);
  if (v179 == v182)
  {
    *(v0 + 768) = v185;
    *(v0 + 760) = v73;
    v83 = MEMORY[0x277D84F90];
    v84 = sub_2407F5674(MEMORY[0x277D84F90]);
    v85 = sub_2407F5A54(v83);
    v86 = *(v73 + 2);
    *(v0 + 776) = v86;
    v87 = v191;
    if (!v86)
    {

LABEL_45:

      *(v0 + 880) = v84;
      *(v0 + 872) = v85;
      v73 = *(v0 + 760);

      v120 = *(v73 + 2);
      if (!v120)
      {
LABEL_57:
        v156 = sub_2408D4B10();
        v157 = sub_2408D4F10();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_2407CF000, v156, v157, "Sending termination command via router", v158, 2u);
          MEMORY[0x245CC9F60](v158, -1, -1);
        }

        sub_2408D3E00();
        v194 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
        v159 = swift_task_alloc();
        *(v0 + 888) = v159;
        v160 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
        *v159 = v0;
        v159[1] = sub_24081D504;
        v162 = *(v0 + 464);
        v161 = *(v0 + 472);
        v163 = *(v0 + 456);

        return v194(v161, v162, v163, v160);
      }

      v121 = 0;
      v122 = *(v0 + 536);
      v191 = (v122 + 8);
      while (1)
      {
        v123 = *(v0 + 760);
        if (v121 >= *(v123 + 16))
        {
          goto LABEL_72;
        }

        v124 = *(v0 + 488);
        v125 = *(v122 + 16);
        v125(*(v0 + 584), v123 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v121, *(v0 + 528));
        sub_2408D37A0();
        v126 = sub_2408D3720();
        if ((*(*(v126 - 8) + 48))(v124, 1, v126) != 1)
        {
          break;
        }

        v73 = *(v0 + 488);
        ++v121;
        (*v191)(*(v0 + 584), *(v0 + 528));
        sub_2407D9440(v73, &qword_27E506A18, &qword_2408D67E8);
        if (v120 == v121)
        {
          goto LABEL_57;
        }
      }

      v189 = *(v0 + 768);
      v127 = *(v0 + 600);
      v128 = *(v0 + 592);
      v129 = *(v0 + 584);
      v130 = *(v0 + 536);
      v131 = *(v0 + 528);
      sub_2407D9440(*(v0 + 488), &qword_27E506A18, &qword_2408D67E8);
      v132 = *(v130 + 32);
      v132(v128, v129, v131);
      v132(v127, v128, v131);
      sub_2408D38F0();
      if (*(v189 + 16) && (v133 = sub_2408CCBA8(*(v0 + 424)), (v134 & 1) != 0))
      {
        v135 = *(v0 + 600);
        v136 = *(v0 + 576);
        v137 = *(v0 + 528);
        v138 = *(v0 + 424);
        v139 = *(v0 + 368);
        v140 = *(v0 + 376);
        v141 = *(*(v0 + 768) + 56) + 16 * v133;
        v142 = *v141;
        *(v0 + 912) = *v141;
        v143 = *(v141 + 8);
        *(v0 + 89) = v143;
        v190 = v142;
        v186 = v143;
        sub_240875D9C(v142, v143);
        (*(v140 + 8))(v138, v139);
        v125(v136, v135, v137);
        v144 = sub_2408D4B10();
        v145 = sub_2408D4F20();
        v146 = os_log_type_enabled(v144, v145);
        v147 = *(v0 + 576);
        v148 = *(v0 + 528);
        if (v146)
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v195[0] = v150;
          *v149 = 136315138;
          sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
          v151 = sub_2408D5220();
          v153 = v152;
          v154 = *v191;
          (*v191)(v147, v148);
          v155 = sub_2408CC504(v151, v153, v195);

          *(v149 + 4) = v155;
          _os_log_impl(&dword_2407CF000, v144, v145, "Attempting to run family repair on client for account: %s", v149, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v150);
          MEMORY[0x245CC9F60](v150, -1, -1);
          MEMORY[0x245CC9F60](v149, -1, -1);
        }

        else
        {

          v154 = *v191;
          (*v191)(v147, v148);
        }

        *(v0 + 920) = v154;
        if ((v186 & 1) == 0)
        {

          v175 = swift_task_alloc();
          *(v0 + 928) = v175;
          *v175 = v0;
          v175[1] = sub_24081DFC4;
          v176 = *(v0 + 600);
          v177 = *(v0 + 208);

          return sub_240821198(v177, v176, v190);
        }

        v191 = (v0 + 920);
        *(v0 + 144) = v190;
        v164 = v190;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        v165 = v190;
        v166 = sub_2408D4B10();
        v167 = sub_2408D4F30();

        v168 = os_log_type_enabled(v166, v167);
        v169 = *(v0 + 89);
        v170 = *(v0 + 912);
        if (v168)
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v171 = 138412290;
          v173 = v190;
          v174 = _swift_stdlib_bridgeErrorToNSError();
          *(v171 + 4) = v174;
          *v172 = v174;
          _os_log_impl(&dword_2407CF000, v166, v167, "Failed to run family repair: %@", v171, 0xCu);
          sub_2407D9440(v172, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v172, -1, -1);
          MEMORY[0x245CC9F60](v171, -1, -1);

          sub_24080F564(v170, v169);
        }

        else
        {
          sub_24080F564(*(v0 + 912), *(v0 + 89));
        }
      }

      else
      {
        (*(*(v0 + 376) + 8))(*(v0 + 424), *(v0 + 368));
      }

      (*v191)(*(v0 + 600), *(v0 + 528));
      goto LABEL_57;
    }

    *(v0 + 108) = *(*(v0 + 536) + 80);
    *(v0 + 1064) = *MEMORY[0x277CED208];

    v88 = 0;
    while (1)
    {
      *(v0 + 984) = v85;
      *(v0 + 976) = v84;
      *(v0 + 968) = v88;
      *(v0 + 960) = v84;
      *(v0 + 952) = v85;
      *(v0 + 944) = v87;
      v91 = *(v0 + 760);
      if (v88 >= *(v91 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v92 = *(v0 + 768);
      v93 = *(v0 + 568);
      v94 = *(v0 + 536);
      v95 = *(v0 + 528);
      v96 = *(v94 + 16);
      v94 += 16;
      v97 = v91 + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + *(v94 + 56) * v88;
      *(v0 + 992) = v96;
      *(v0 + 1000) = v94 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v96(v93, v97, v95);
      sub_2408D38F0();
      if (*(v92 + 16) && (v98 = sub_2408CCBA8(*(v0 + 416)), (v99 & 1) != 0))
      {
        v100 = *(v0 + 416);
        v102 = *(v0 + 368);
        v101 = *(v0 + 376);
        v103 = *(*(v0 + 768) + 56) + 16 * v98;
        v73 = *v103;
        *(v0 + 1032) = *v103;
        v104 = *(v103 + 8);
        sub_240875D9C(v73, v104);
        v105 = *(v101 + 8);
        *(v0 + 1040) = v105;
        *(v0 + 1048) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v105(v100, v102);
        if ((v104 & 1) == 0)
        {
          v193 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
          v117 = swift_task_alloc();
          *(v0 + 1056) = v117;
          *v117 = v0;
          v118 = sub_24081FB44;
LABEL_40:
          v117[1] = v118;
          v119 = *(v0 + 672);

          return v193(v119);
        }

        v106 = *(v0 + 568);
        v107 = *(v0 + 536);
        v108 = *(v0 + 528);
        *(v0 + 152) = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        (*(v107 + 8))(v106, v108);
        sub_24080F564(v73, 1);
        v87 = v191;
      }

      else
      {
        v73 = *(v0 + 568);
        v89 = *(v0 + 536);
        v90 = *(v0 + 528);
        (*(*(v0 + 376) + 8))(*(v0 + 416), *(v0 + 368));
        (*(v89 + 8))(v73, v90);
      }

      v88 = *(v0 + 968) + 1;
      if (v88 == *(v0 + 776))
      {
        goto LABEL_45;
      }
    }
  }

  v109 = *(v0 + 808) + 1;
  *(v0 + 808) = v109;
  *(v0 + 800) = v73;
  *(v0 + 792) = v185;
  *(v0 + 784) = v191;
  v110 = *(v0 + 744);
  if (v109 < *(v110 + 16))
  {
    v111 = *(v0 + 608);
    v112 = *(v0 + 536);
    v113 = *(v0 + 528);
    v114 = *(v112 + 16);
    v112 += 16;
    v115 = *(v112 + 64);
    *(v0 + 92) = v115;
    v116 = *(v112 + 56);
    *(v0 + 816) = v116;
    *(v0 + 824) = v114;
    *(v0 + 832) = v112 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v114(v111, v110 + ((v115 + 32) & ~v115) + v116 * v109, v113);
    v193 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v117 = swift_task_alloc();
    *(v0 + 840) = v117;
    *v117 = v0;
    v118 = sub_24081BAE4;
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_24081D504()
{
  v2 = *v1;

  v3 = *(v2 + 224);
  if (v0)
  {

    v4 = sub_24081D744;
  }

  else
  {
    v4 = sub_24081D63C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24081D63C()
{
  v1 = v0[59];
  v2 = sub_2408D3E40();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2407D9440(v1, &qword_27E5075E8, &qword_2408D8278);
  v3 = swift_task_alloc();
  v0[112] = v3;
  *v3 = v0;
  v3[1] = sub_24081D84C;
  v4 = v0[26];

  return sub_240822018(v4);
}

uint64_t sub_24081D744()
{
  v1 = v0[59];
  v2 = sub_2408D3E40();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2407D9440(v1, &qword_27E5075E8, &qword_2408D8278);
  v3 = swift_task_alloc();
  v0[112] = v3;
  *v3 = v0;
  v3[1] = sub_24081D84C;
  v4 = v0[26];

  return sub_240822018(v4);
}

uint64_t sub_24081D84C()
{
  v1 = *v0;
  v2 = *v0;

  v6 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v3 = swift_task_alloc();
  *(v1 + 904) = v3;
  *v3 = v2;
  v3[1] = sub_24081D9B8;
  v4 = *(v1 + 672);

  return v6(v4);
}

uint64_t sub_24081D9B8()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081DAC8, v1, 0);
}

void *sub_24081DAC8(uint64_t a1)
{
  v2 = v1[110];
  v3 = v1[88];
  v4 = v1[84];
  v5 = v1[82];
  v6 = v1[47];
  sub_2408D3540();
  v3(v4, v5);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v8 = 0;
  v9 = v2 + 64;
  v36 = v6;
  v37 = v2;
  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;
  v35 = result + 8;
  v38 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = v39[54];
      v19 = v39[46];
      v20 = *(*(v37 + 48) + 8 * v17);
      (*(v36 + 16))(v18, *(v37 + 56) + *(v36 + 72) * v17, v19);
      v21 = v20;
      v22 = sub_2408D38B0();
      v24 = v23;
      (*(v36 + 8))(v18, v19);
      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v38;
      *(v38[6] + 8 * v17) = v21;
      v25 = (v38[7] + 16 * v17);
      *v25 = v22;
      v25[1] = v24;
      v26 = v38[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v38[2] = v28;
      v12 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v29 = v39[91];
    v30 = v39[80];
    v31 = v39[77];
    v32 = v39[55];
    v33 = v39[56];

    sub_2407EEE04(v33, v32, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();
    sub_2407D9440(v33, &qword_27E506DA0, &unk_2408D76A0);
    v29(v30, v31);

    v34 = v39[1];

    return v34();
  }

  return result;
}

uint64_t sub_24081DFC4()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = sub_24081E318;
  }

  else
  {
    v5 = *(v2 + 224);
    sub_24080F564(*(v2 + 912), 0);
    v4 = sub_24081E0F0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24081E0F0(uint64_t a1)
{
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 912);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished running family repair", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);

    sub_24080F564(v5, 0);
  }

  else
  {
    sub_24080F564(*(v1 + 912), 0);
  }

  (*(v1 + 920))(*(v1 + 600), *(v1 + 528));
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2407CF000, v7, v8, "Sending termination command via router", v9, 2u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  sub_2408D3E00();
  v16 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v10 = swift_task_alloc();
  *(v1 + 888) = v10;
  v11 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
  *v10 = v1;
  v10[1] = sub_24081D504;
  v13 = *(v1 + 464);
  v12 = *(v1 + 472);
  v14 = *(v1 + 456);

  return v16(v12, v13, v14, v11);
}

uint64_t sub_24081E318()
{
  sub_24080F564(*(v0 + 912), 0);
  v1 = *(v0 + 936);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 89);
  v7 = *(v0 + 912);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to run family repair: %@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    sub_24080F564(v7, v6);
  }

  else
  {
    sub_24080F564(*(v0 + 912), *(v0 + 89));
  }

  (*(v0 + 920))(*(v0 + 600), *(v0 + 528));
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F10();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2407CF000, v12, v13, "Sending termination command via router", v14, 2u);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  sub_2408D3E00();
  v21 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v15 = swift_task_alloc();
  *(v0 + 888) = v15;
  v16 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
  *v15 = v0;
  v15[1] = sub_24081D504;
  v18 = *(v0 + 464);
  v17 = *(v0 + 472);
  v19 = *(v0 + 456);

  return v21(v17, v18, v19, v16);
}

uint64_t sub_24081E5D8()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081E704, v1, 0);
}

void sub_24081E704()
{
  v196 = v0;
  sub_2407EEE04(*(v0 + 328), *(v0 + 320), &unk_27E5071F0, &qword_2408D7640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 320);
    swift_bridgeObjectRelease_n();

    v2 = *v1;
    v3 = *v1;
    v4 = sub_2408D4B10();
    v5 = sub_2408D4F20();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2407CF000, v4, v5, "Finishing setupAsClient with error: %@", v6, 0xCu);
      sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v7, -1, -1);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v10 = *(v0 + 1032);
    v11 = *(v0 + 728);
    v12 = *(v0 + 632);
    v13 = *(v0 + 616);
    v14 = *(v0 + 568);
    v15 = v4;
    v16 = *(v0 + 536);
    v17 = *(v0 + 528);
    v18 = *(v0 + 328);

    swift_willThrow();
    sub_24080F564(v10, 0);
    sub_2407D9440(v18, &unk_27E5071F0, &qword_2408D7640);
    (*(v16 + 8))(v14, v17);
    v11(v12, v13);

    v19 = *(v0 + 8);

    v19();
    return;
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 312);
  (*(v0 + 992))(*(v0 + 552), *(v0 + 568), *(v0 + 528));
  sub_2407EEE04(v20, v21, &unk_27E5071F0, &qword_2408D7640);
  v22 = sub_2408D4B10();
  v23 = sub_2408D4F20();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 552);
  v26 = *(v0 + 536);
  v27 = *(v0 + 528);
  v28 = *(v0 + 312);
  if (v24)
  {
    v184 = *(v0 + 304);
    v29 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v195[0] = v190;
    *v29 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v30 = sub_2408D5220();
    v32 = v31;
    v182 = *(v26 + 8);
    v182(v25, v27);
    v33 = sub_2408CC504(v30, v32, v195);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_2407EEE04(v28, v184, &unk_27E5071F0, &qword_2408D7640);
    v34 = sub_2408D4D40();
    v36 = v35;
    sub_2407D9440(v28, &unk_27E5071F0, &qword_2408D7640);
    v37 = sub_2408CC504(v34, v36, v195);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_2407CF000, v22, v23, "Finished signing into account (%s) with report: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v190, -1, -1);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  else
  {

    sub_2407D9440(v28, &unk_27E5071F0, &qword_2408D7640);
    v182 = *(v26 + 8);
    v182(v25, v27);
  }

  v38 = *(v0 + 1040);
  v39 = *(v0 + 952);
  v40 = *(v0 + 432);
  v41 = *(v0 + 368);
  v42 = *(v0 + 328);
  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  sub_2408D38F0();
  sub_2407EEE04(v42, v43, &unk_27E5071F0, &qword_2408D7640);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v195[0] = v39;
  sub_2408C9C1C(v43, v40, isUniquelyReferenced_nonNull_native);
  v38(v40, v41);
  v46 = v195[0];
  sub_2407EEE04(v42, v44, &unk_27E5071F0, &qword_2408D7640);
  v191 = v46;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *(v0 + 568);
    v48 = *(v0 + 528);
    v49 = *(v0 + 328);
    v50 = *(v0 + 296);
    sub_24080F564(*(v0 + 1032), 0);
    sub_2407D9440(v49, &unk_27E5071F0, &qword_2408D7640);
    v182(v47, v48);
    sub_2407D9440(v50, &unk_27E5071F0, &qword_2408D7640);
    v51 = *(v0 + 1008);
    v52 = *(v0 + 976);
    v53 = *(v0 + 960);
    goto LABEL_32;
  }

  v54 = *(v0 + 1008);
  v55 = *(v0 + 272);
  v56 = *(v0 + 280);
  sub_240875B98(*(v0 + 296), v56, type metadata accessor for SignInReport);
  v57 = sub_24086ED9C(*(v56 + *(v55 + 20)));
  v181 = v54;
  sub_240845108(v57);
  v59 = 0;
  v60 = v58 + 56;
  v185 = v58 + 56;
  v187 = v58;
  v61 = -1;
  v62 = -1 << *(v58 + 32);
  if (-v62 < 64)
  {
    v61 = ~(-1 << -v62);
  }

  v63 = v61 & *(v58 + 56);
  v64 = (63 - v62) >> 6;
  v52 = *(v0 + 976);
  v53 = *(v0 + 960);
  v183 = v64;
  while (v63)
  {
    v65 = v59;
LABEL_22:
    v67 = *(v0 + 392);
    v66 = *(v0 + 400);
    v69 = *(v0 + 368);
    v68 = *(v0 + 376);
    v70 = *(*(v187 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v63)))));
    sub_2408D38F0();
    v71 = v69;
    v72 = *(v68 + 32);
    v72(v67, v66, v71);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v53;
    v74 = sub_2408CCC7C(v70);
    v76 = v53[2];
    v77 = (v75 & 1) == 0;
    v78 = __OFADD__(v76, v77);
    v79 = v76 + v77;
    if (v78)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }

    v80 = v75;
    if (v53[3] >= v79)
    {
      if ((v73 & 1) == 0)
      {
        v87 = v74;
        sub_2408C5870();
        v74 = v87;
      }
    }

    else
    {
      sub_2408C81A4(v79, v73);
      v74 = sub_2408CCC7C(v70);
      if ((v80 & 1) != (v81 & 1))
      {
        type metadata accessor for AIDAServiceType(0);

        sub_2408D5280();
        return;
      }
    }

    v63 &= v63 - 1;
    v53 = *(v0 + 160);
    v82 = *(v0 + 392);
    v83 = *(v0 + 368);
    v84 = *(v0 + 376);
    if (v80)
    {
      (*(v84 + 40))(v53[7] + *(v84 + 72) * v74, v82, v83);
    }

    else
    {
      v53[(v74 >> 6) + 8] |= 1 << v74;
      *(v53[6] + 8 * v74) = v70;
      v72(v53[7] + *(v84 + 72) * v74, v82, v83);
      v85 = v53[2];
      v78 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v78)
      {
        goto LABEL_76;
      }

      v53[2] = v86;
    }

    v59 = v65;
    v52 = v53;
    v64 = v183;
    v60 = v185;
  }

  while (1)
  {
    v65 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v65 >= v64)
    {
      break;
    }

    v63 = *(v60 + 8 * v65);
    ++v59;
    if (v63)
    {
      goto LABEL_22;
    }
  }

  v88 = *(v0 + 568);
  v89 = *(v0 + 528);
  v90 = *(v0 + 328);
  v91 = *(v0 + 280);
  sub_24080F564(*(v0 + 1032), 0);
  sub_2407D9440(v90, &unk_27E5071F0, &qword_2408D7640);
  v182(v88, v89);

  sub_240875C68(v91, type metadata accessor for SignInReport);
  v46 = v191;
  v51 = v181;
LABEL_32:
  v92 = *(v0 + 728);
  v93 = *(v0 + 632);
  v94 = *(v0 + 616);
  sub_2407D9440(*(v0 + 320), &unk_27E5071F0, &qword_2408D7640);
  v92(v93, v94);
  for (i = *(v0 + 968) + 1; i != *(v0 + 776); i = *(v0 + 968) + 1)
  {
    *(v0 + 984) = v46;
    *(v0 + 976) = v52;
    *(v0 + 968) = i;
    *(v0 + 960) = v53;
    *(v0 + 952) = v46;
    *(v0 + 944) = v51;
    v108 = *(v0 + 760);
    if (i >= *(v108 + 16))
    {
      goto LABEL_73;
    }

    v109 = *(v0 + 768);
    v110 = *(v0 + 568);
    v111 = *(v0 + 536);
    v112 = *(v0 + 528);
    v113 = *(v111 + 16);
    v111 += 16;
    v114 = v108 + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + *(v111 + 56) * i;
    *(v0 + 992) = v113;
    *(v0 + 1000) = v111 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v113(v110, v114, v112);
    sub_2408D38F0();
    if (*(v109 + 16) && (v115 = sub_2408CCBA8(*(v0 + 416)), (v116 & 1) != 0))
    {
      v117 = v51;
      v118 = *(v0 + 416);
      v120 = *(v0 + 368);
      v119 = *(v0 + 376);
      v121 = *(*(v0 + 768) + 56) + 16 * v115;
      v122 = *v121;
      *(v0 + 1032) = *v121;
      v123 = *(v121 + 8);
      sub_240875D9C(v122, v123);
      v124 = *(v119 + 8);
      *(v0 + 1040) = v124;
      *(v0 + 1048) = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v124(v118, v120);
      if ((v123 & 1) == 0)
      {
        v194 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
        v165 = swift_task_alloc();
        *(v0 + 1056) = v165;
        *v165 = v0;
        v165[1] = sub_24081FB44;
        v166 = *(v0 + 672);

        v194(v166);
        return;
      }

      v125 = *(v0 + 568);
      v126 = *(v0 + 536);
      v127 = *(v0 + 528);
      *(v0 + 152) = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      (*(v126 + 8))(v125, v127);
      sub_24080F564(v122, 1);
      v46 = v191;
      v51 = v117;
    }

    else
    {
      v105 = *(v0 + 568);
      v106 = *(v0 + 536);
      v107 = *(v0 + 528);
      (*(*(v0 + 376) + 8))(*(v0 + 416), *(v0 + 368));
      (*(v106 + 8))(v105, v107);
    }
  }

  *(v0 + 880) = v52;
  *(v0 + 872) = v46;
  v96 = *(v0 + 760);

  v97 = *(v96 + 16);
  if (v97)
  {
    v98 = 0;
    v99 = *(v0 + 536);
    v192 = (v99 + 8);
    while (1)
    {
      v100 = *(v0 + 760);
      if (v98 >= *(v100 + 16))
      {
        goto LABEL_74;
      }

      v101 = *(v0 + 488);
      v102 = *(v99 + 16);
      v102(*(v0 + 584), v100 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, *(v0 + 528));
      sub_2408D37A0();
      v103 = sub_2408D3720();
      if ((*(*(v103 - 8) + 48))(v101, 1, v103) != 1)
      {
        break;
      }

      v104 = *(v0 + 488);
      ++v98;
      (*v192)(*(v0 + 584), *(v0 + 528));
      sub_2407D9440(v104, &qword_27E506A18, &qword_2408D67E8);
      if (v97 == v98)
      {
        goto LABEL_53;
      }
    }

    v188 = *(v0 + 768);
    v128 = *(v0 + 600);
    v129 = *(v0 + 592);
    v130 = *(v0 + 584);
    v131 = *(v0 + 536);
    v132 = *(v0 + 528);
    sub_2407D9440(*(v0 + 488), &qword_27E506A18, &qword_2408D67E8);
    v133 = *(v131 + 32);
    v133(v129, v130, v132);
    v133(v128, v129, v132);
    sub_2408D38F0();
    if (!*(v188 + 16) || (v134 = sub_2408CCBA8(*(v0 + 424)), (v135 & 1) == 0))
    {
      (*(*(v0 + 376) + 8))(*(v0 + 424), *(v0 + 368));
LABEL_52:
      (*v192)(*(v0 + 600), *(v0 + 528));
      goto LABEL_53;
    }

    v136 = *(v0 + 600);
    v137 = *(v0 + 576);
    v138 = *(v0 + 528);
    v139 = *(v0 + 424);
    v140 = *(v0 + 368);
    v141 = *(v0 + 376);
    v142 = *(*(v0 + 768) + 56) + 16 * v134;
    v143 = *v142;
    *(v0 + 912) = *v142;
    v144 = *(v142 + 8);
    *(v0 + 89) = v144;
    v189 = v143;
    v186 = v144;
    sub_240875D9C(v143, v144);
    (*(v141 + 8))(v139, v140);
    v102(v137, v136, v138);
    v145 = sub_2408D4B10();
    v146 = sub_2408D4F20();
    v147 = os_log_type_enabled(v145, v146);
    v148 = *(v0 + 576);
    v149 = *(v0 + 528);
    if (v147)
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v195[0] = v151;
      *v150 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v152 = sub_2408D5220();
      v154 = v153;
      v155 = *v192;
      (*v192)(v148, v149);
      v156 = sub_2408CC504(v152, v154, v195);

      *(v150 + 4) = v156;
      _os_log_impl(&dword_2407CF000, v145, v146, "Attempting to run family repair on client for account: %s", v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v151);
      MEMORY[0x245CC9F60](v151, -1, -1);
      MEMORY[0x245CC9F60](v150, -1, -1);
    }

    else
    {

      v155 = *v192;
      (*v192)(v148, v149);
    }

    *(v0 + 920) = v155;
    if (v186)
    {
      v192 = (v0 + 920);
      *(v0 + 144) = v189;
      v167 = v189;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      v168 = v189;
      v169 = sub_2408D4B10();
      v170 = sub_2408D4F30();

      v171 = os_log_type_enabled(v169, v170);
      v172 = *(v0 + 89);
      v173 = *(v0 + 912);
      if (v171)
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        *v174 = 138412290;
        v176 = v189;
        v177 = _swift_stdlib_bridgeErrorToNSError();
        *(v174 + 4) = v177;
        *v175 = v177;
        _os_log_impl(&dword_2407CF000, v169, v170, "Failed to run family repair: %@", v174, 0xCu);
        sub_2407D9440(v175, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v175, -1, -1);
        MEMORY[0x245CC9F60](v174, -1, -1);

        sub_24080F564(v173, v172);
      }

      else
      {
        sub_24080F564(*(v0 + 912), *(v0 + 89));
      }

      goto LABEL_52;
    }

    v178 = swift_task_alloc();
    *(v0 + 928) = v178;
    *v178 = v0;
    v178[1] = sub_24081DFC4;
    v179 = *(v0 + 600);
    v180 = *(v0 + 208);

    sub_240821198(v180, v179, v189);
  }

  else
  {
LABEL_53:
    v157 = sub_2408D4B10();
    v158 = sub_2408D4F10();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_2407CF000, v157, v158, "Sending termination command via router", v159, 2u);
      MEMORY[0x245CC9F60](v159, -1, -1);
    }

    sub_2408D3E00();
    v193 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v160 = swift_task_alloc();
    *(v0 + 888) = v160;
    v161 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
    *v160 = v0;
    v160[1] = sub_24081D504;
    v163 = *(v0 + 464);
    v162 = *(v0 + 472);
    v164 = *(v0 + 456);

    v193(v162, v163, v164, v161);
  }
}

uint64_t sub_24081FB44()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_24081FC54, v1, 0);
}

uint64_t sub_24081FC54(uint64_t a1)
{
  v39 = *(v1 + 992);
  v2 = *(v1 + 704);
  v3 = *(v1 + 672);
  v4 = *(v1 + 656);
  v5 = *(v1 + 568);
  v6 = *(v1 + 536);
  v7 = *(v1 + 528);
  v8 = *(v1 + 496);
  v41 = *(v1 + 1032);
  sub_2408D3540();
  v2(v3, v4);
  v39(v8, v5, v7);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_2408D3BF0();
  sub_2408D38F0();
  v9 = *(v41 + 16);
  v10 = *(v1 + 944);
  if (v9)
  {
    *(v1 + 168) = v9;
    sub_2408CC144((v1 + 176), (v1 + 64));
    if (v10)
    {

      v10 = 0;
    }
  }

  v11 = *(v1 + 1040);
  *(v1 + 1008) = v10;
  v42 = *(v1 + 1064);
  v12 = *(v1 + 408);
  v13 = *(v1 + 368);
  v14 = *(v1 + 352);
  v15 = *(v1 + 360);
  v16 = *(v1 + 344);
  v40 = *(v1 + 336);
  v17 = *(v1 + 224);
  (*(*(v1 + 376) + 16))(*(v1 + 432), v12, v13);
  sub_2408D3750();
  v11(v12, v13);
  v18 = sub_2408D3770();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  sub_2408D3A90();
  __swift_project_boxed_opaque_existential_1((v17 + 144), *(v17 + 168));
  (*(v16 + 104))(v14, v42, v40);
  v19 = sub_2408D4770();
  (*(v16 + 8))(v14, v40);
  if (v19)
  {
    v20 = *(v1 + 760);
    if (*(v20 + 16))
    {
      v21 = *(v1 + 560);
      v22 = *(v1 + 536);
      v23 = *(v1 + 528);
      v24 = *(v1 + 480);
      (*(v1 + 992))(v21, v20 + ((*(v1 + 108) + 32) & ~*(v1 + 108)), v23);
      sub_2408D37A0();
      (*(v22 + 8))(v21, v23);
      v25 = sub_2408D3720();
      if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
      {
        sub_2407D9440(*(v1 + 480), &qword_27E506A18, &qword_2408D67E8);
        v26 = sub_2408D4B10();
        v27 = sub_2408D4F10();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2407CF000, v26, v27, "Age based account support is enabled, using termination to finish", v28, 2u);
          MEMORY[0x245CC9F60](v28, -1, -1);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v29 = *(v1 + 480);
      v30 = sub_2408D3720();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    }

    sub_2407D9440(*(v1 + 480), &qword_27E506A18, &qword_2408D67E8);
  }

LABEL_12:
  v31 = *(v1 + 632);
  v32 = *(v1 + 224);
  v33 = *(v1 + 208);
  v34 = swift_task_alloc();
  *(v1 + 1016) = v34;
  v34[2] = v32;
  v34[3] = v33;
  v34[4] = v31;
  v35 = swift_task_alloc();
  *(v1 + 1024) = v35;
  *v35 = v1;
  v35[1] = sub_24081E5D8;
  v36 = *(v1 + 328);
  v37 = *(v1 + 272);

  return MEMORY[0x2821400E8](v36, &unk_2408D82B8, v34, v37);
}

uint64_t sub_2408200E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240820188, a1, 0);
}

uint64_t sub_240820188()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_2408D4660();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[7] = v6;
  v7 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
  *v5 = v0;
  v5[1] = sub_24082034C;
  v8 = v0[5];

  return MEMORY[0x28213FC20](v8, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v6, v3, v7);
}

uint64_t sub_24082034C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[2];
    sub_2407D9440(v4[5], &qword_27E507230, &unk_2408D7680);
    v6 = sub_240820788;
    v7 = v5;
    v8 = 0;
  }

  else
  {
    v4[9] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v9 = sub_2408D4E00();
    v11 = v10;
    v6 = sub_2408204E4;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2408204E4()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820, MEMORY[0x277CED540]);
  v2 = sub_2408D4680();
  v0[10] = v2;

  sub_2407D9440(v1, &qword_27E507230, &unk_2408D7680);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_240820620;

  return sub_24082CFC4(v2);
}

uint64_t sub_240820620(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x2822009F8](sub_2408207EC, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_240820788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408207EC()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_240820858(uint64_t a1)
{
  v2 = sub_2408D38D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  sub_2407EEE04(a1, &v14 - v10, &qword_27E507F00, &qword_2408D6D50);
  v12 = (*(v3 + 48))(v11, 1, v2);
  if (v12 != 1)
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    sub_2408D3900();
    (*(v3 + 8))(v8, v2);
  }

  return v12 == 1;
}

uint64_t sub_240820A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240820AE0, a2, 0);
}

uint64_t sub_240820AE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_2408D3C20();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[8] = v6;
  v7 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
  *v5 = v0;
  v5[1] = sub_240820CA4;
  v8 = v0[6];

  return MEMORY[0x28213FC20](v8, sub_2407EE514, 0, sub_2407EE538, 0, v6, v3, v7);
}

uint64_t sub_240820CA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[3];
    sub_2407D9440(v4[6], &qword_27E507228, &qword_2408D8160);
    v6 = sub_2408210C8;
    v7 = v5;
    v8 = 0;
  }

  else
  {
    v4[10] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v9 = sub_2408D4E00();
    v11 = v10;
    v6 = sub_240820E3C;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_240820E3C()
{
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180, MEMORY[0x277CED540]);
  v2 = sub_2408D4680();
  v0[11] = v2;

  sub_2407D9440(v1, &qword_27E507228, &qword_2408D8160);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_240820F7C;
  v4 = v0[2];

  return sub_24083B498(v4, v2);
}

uint64_t sub_240820F7C()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24082112C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2408210C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24082112C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240821198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_2408D3970();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_2408D3490();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082132C, v3, 0);
}

uint64_t sub_24082132C()
{
  v76 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1((v0[7] + 144), *(v0[7] + 168));
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    sub_2408D38F0();
    v8 = sub_2408D3890();
    v10 = v9;
    v0[19] = v9;
    v11 = *(v7 + 8);
    v11(v5, v6);
    if (v10)
    {
      v12 = v0[6];
      v13 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
      if (*(v12 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport))
      {

        v14 = sub_2408CBED4();
        v16 = v15;

        v0[20] = v16;
        if (v16)
        {
          v17 = *(v12 + v13);
          if (v17)
          {
            v18 = *(v17 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context);
            v0[21] = v18;
            if (v18)
            {
              v72 = v14;
              v19 = qword_27E506918;
              v70 = v18;
              if (v19 != -1)
              {
                swift_once();
              }

              v21 = v0[9];
              v20 = v0[10];
              v22 = v0[8];
              v23 = v0[5];
              v24 = sub_2408D4B20();
              v0[22] = __swift_project_value_buffer(v24, qword_27E506C48);
              (*(v21 + 16))(v20, v23, v22);
              v25 = sub_2408D4B10();
              v26 = sub_2408D4F10();
              v27 = os_log_type_enabled(v25, v26);
              v29 = v0[9];
              v28 = v0[10];
              v30 = v0[8];
              if (v27)
              {
                buf = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v75[0] = v68;
                *buf = 136315138;
                sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
                v65 = v26;
                v31 = sub_2408D5220();
                v33 = v32;
                (*(v29 + 8))(v28, v30);
                v34 = sub_2408CC504(v31, v33, v75);

                *(buf + 4) = v34;
                _os_log_impl(&dword_2407CF000, v25, v65, "Performing family repair for family account: %s", buf, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v68);
                MEMORY[0x245CC9F60](v68, -1, -1);
                MEMORY[0x245CC9F60](buf, -1, -1);
              }

              else
              {

                (*(v29 + 8))(v28, v30);
              }

              v61 = v0[5];
              v62 = swift_task_alloc();
              v0[23] = v62;
              v62[2] = v70;
              v62[3] = v72;
              v62[4] = v16;
              v62[5] = v8;
              v62[6] = v10;
              v62[7] = v61;
              v74 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
              v63 = swift_task_alloc();
              v0[24] = v63;
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507610, &qword_2408D82D8);
              *v63 = v0;
              v63[1] = sub_240821B94;

              return v74(v0 + 2, sub_240875E5C, v62, &unk_2408D6D20, 0, v64);
            }
          }
        }
      }
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v40 = v0[11];
    v41 = v0[8];
    v42 = v0[9];
    v43 = v0[5];
    v44 = sub_2408D4B20();
    __swift_project_value_buffer(v44, qword_27E506C48);
    (*(v42 + 16))(v40, v43, v41);
    v45 = sub_2408D4B10();
    v46 = sub_2408D4F30();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[14];
      v48 = v0[12];
      bufa = v0[11];
      v69 = v11;
      v49 = v0[9];
      v73 = v0[8];
      v50 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75[0] = v71;
      *v50 = 136315138;
      sub_2408D38F0();
      sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v51 = sub_2408D5220();
      v53 = v52;
      v69(v47, v48);
      (*(v49 + 8))(bufa, v73);
      v54 = sub_2408CC504(v51, v53, v75);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2407CF000, v45, v46, "Missing dsid from account: %s or family token", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x245CC9F60](v71, -1, -1);
      MEMORY[0x245CC9F60](v50, -1, -1);
    }

    else
    {
      v55 = v0[11];
      v56 = v0[8];
      v57 = v0[9];

      (*(v57 + 8))(v55, v56);
    }

    v58 = sub_2408D3500();
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    *v59 = 0xD00000000000004ELL;
    v59[1] = 0x80000002408DAE40;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277CED298], v58);
    swift_willThrow();

    v39 = v0[1];
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v35 = sub_2408D4B20();
    __swift_project_value_buffer(v35, qword_27E506C48);
    v36 = sub_2408D4B10();
    v37 = sub_2408D4F20();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2407CF000, v36, v37, "Feature disabled, not running family repair", v38, 2u);
      MEMORY[0x245CC9F60](v38, -1, -1);
    }

    v39 = v0[1];
  }

  return v39();
}

uint64_t sub_240821B94()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_240821F54;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_240821CD8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240821CD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    sub_2407D256C(*(v1 + 16), 1);
    v3 = v2;
    v4 = sub_2408D4B10();
    v5 = sub_2408D4F30();
    sub_24080F17C(v2, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2407CF000, v4, v5, "Family repair failed: %@", v6, 0xCu);
      sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v7, -1, -1);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v10 = *(v1 + 168);

    swift_willThrow();
    sub_24080F17C(v2, 1);

    v11 = *(v1 + 8);
  }

  else
  {
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F10();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 168);
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Family repair succeeded", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);

      sub_24080F17C(v2, 0);
    }

    else
    {
    }

    v11 = *(v1 + 8);
  }

  return v11();
}

uint64_t sub_240821F54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240822018(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D4130();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2408D3630();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[9] = v5;
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_24082218C;

  return v8(v5);
}

uint64_t sub_24082218C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_24082229C, v1, 0);
}

uint64_t sub_24082229C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Skipping confirmation for finished state", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    v0[11] = __swift_project_value_buffer(v13, qword_27E506C48);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "Asking for confirmation for finished state", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v19 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v17 = swift_task_alloc();
    v0[12] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
    *v17 = v0;
    v17[1] = sub_2408225A8;

    return v19(v0 + 13, sub_2407EF144, 0, &unk_2408D6D38, 0, v18);
  }
}

uint64_t sub_2408225A8()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_240876424;
  }

  else
  {
    v4 = sub_2408226E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408226E0(uint64_t a1)
{
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received confirmation that the user is ready to finish", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2408227C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_2408D3D60();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240822908, v3, 0);
}

uint64_t sub_240822908()
{
  v15 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[28] = __swift_project_value_buffer(v1, qword_27E506C48);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[15] = v4;
    type metadata accessor for ProximityTransportConnector();

    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Setting up as server with connector: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_240822B10;
  v11 = v0[27];
  v12 = v0[17];

  return sub_2408813B8(v11, v12);
}

uint64_t sub_240822B10()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_240822E38;
  }

  else
  {
    v4 = sub_240822C3C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240822C3C()
{
  v21 = v0;
  v1 = *(v0[24] + 16);
  v1(v0[26], v0[27], v0[23]);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  if (v4)
  {
    v6 = v0[24];
    v7 = v0[25];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_2408D4D40();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v8);
    v14 = sub_2408CC504(v10, v12, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v2, v3, "Establishing router with transport: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  else
  {
    v15 = v0[23];
    v16 = v0[24];

    v13 = *(v16 + 8);
    v13(v5, v15);
  }

  v0[31] = v13;
  v17 = v0[18];
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277CED568], v0[20]);

  return MEMORY[0x2822009F8](sub_240822EC4, v17, 0);
}

uint64_t sub_240822E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240822EC4()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_2407D9440(v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_240823038;
  v6 = *(v0 + 216);
  v7 = *(v0 + 176);

  return sub_24082A4B4(v7, v6, v0 + 56, 0);
}

uint64_t sub_240823038(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  (*(v6 + 8))(v5, v7);
  sub_2407D9440(v4 + 56, &qword_27E507FA0, &qword_2408D7FB0);
  v8 = *(v3 + 152);
  if (v1)
  {
    v9 = sub_2408233B0;
  }

  else
  {
    v9 = sub_2408231E8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2408231E8()
{
  v15 = v0;

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F20();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[33];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    sub_2408D3D80();

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Proceeding to continue setup as server with router: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_240823458;
  v10 = v0[33];
  v11 = v0[16];
  v12 = v0[17];

  return sub_240823700(v11, v10, v12);
}

uint64_t sub_2408233B0()
{
  (*(v0 + 248))(*(v0 + 216), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240823458()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_240823648;
  }

  else
  {
    v4 = sub_240823584;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240823584()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[23];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240823648()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[23];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240823700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_2408D36F0();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = type metadata accessor for SignInReport(0);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507630, &qword_2408D8310);
  v4[38] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507638, &qword_2408D8318);
  v4[39] = v8;
  v4[40] = *(v8 - 8);
  v4[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507640, &qword_2408D8320);
  v4[42] = v9;
  v4[43] = *(v9 - 8);
  v4[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507648, &unk_2408D8328);
  v4[45] = v10;
  v4[46] = *(v10 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v11 = sub_2408D3C20();
  v4[51] = v11;
  v4[52] = *(v11 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v12 = sub_2408D3630();
  v4[55] = v12;
  v4[56] = *(v12 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v13 = sub_2408D3A40();
  v4[61] = v13;
  v4[62] = *(v13 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240823C58, v3, 0);
}

uint64_t sub_240823C58()
{
  *(v0[23] + 240) = v0[21];

  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v2 = sub_2408D4E00();
  v0[71] = v2;
  v0[72] = v1;

  return MEMORY[0x2822009F8](sub_240823D34, v2, v1);
}

uint64_t sub_240823D34()
{
  sub_2408D3D30();
  v1 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_240823DCC, v1, 0);
}

uint64_t sub_240823DCC()
{
  v61 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[24];
  v4 = v0[25];
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_2407EEE04(v1, v2, &qword_27E506D00, &unk_2408D7FE0);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[69];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  if (v5 == 1)
  {
    sub_2407D9440(v0[69], &qword_27E506D00, &unk_2408D7FE0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_2407D9440(v0[60], &qword_27E506DA0, &unk_2408D76A0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v12 = v0[70];
    v13 = v0[68];
    v14 = sub_2408D4B20();
    __swift_project_value_buffer(v14, qword_27E506C48);
    sub_2407EEE04(v12, v13, &qword_27E506D00, &unk_2408D7FE0);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F10();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[68];
    if (v17)
    {
      v19 = v0[67];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v60[0] = v21;
      *v20 = 136315138;
      sub_2407EEE04(v18, v19, &qword_27E506D00, &unk_2408D7FE0);
      v22 = sub_2408D4D40();
      v24 = v23;
      sub_2407D9440(v18, &qword_27E506D00, &unk_2408D7FE0);
      v25 = sub_2408CC504(v22, v24, v60);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2407CF000, v15, v16, "No locale info from connected device: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    else
    {

      sub_2407D9440(v18, &qword_27E506D00, &unk_2408D7FE0);
    }

    v26 = *(v0[23] + 248);
    v0[77] = v26;
    if (v26)
    {
      v57 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

      v27 = swift_task_alloc();
      v0[78] = v27;
      *v27 = v0;
      v27[1] = sub_24082548C;
      v28 = v0[57];

      return v57(v28);
    }

    else
    {
      v30 = v0[70];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      sub_2407D9440(v30, &qword_27E506D00, &unk_2408D7FE0);

      v32 = v0[1];

      return v32();
    }
  }

  v10 = v0[24];
  v11 = v0[25];
  sub_2408D36B0();
  (*(v11 + 8))(v6, v10);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[62] + 32))(v0[65], v0[60], v0[61]);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[61];
  v36 = v0[62];
  v37 = sub_2408D4B20();
  __swift_project_value_buffer(v37, qword_27E506C48);
  v38 = *(v36 + 16);
  v38(v34, v33, v35);
  v39 = sub_2408D4B10();
  v40 = sub_2408D4F10();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[64];
  if (v41)
  {
    v43 = v0[62];
    v44 = v0[63];
    v45 = v0[61];
    v46 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60[0] = v58;
    *v46 = 136315138;
    v38(v44, v42, v45);
    v47 = sub_2408D4D40();
    v49 = v48;
    v50 = *(v43 + 8);
    v50(v42, v45);
    v51 = sub_2408CC504(v47, v49, v60);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_2407CF000, v39, v40, "Setting signInModel.peerDeviceLocaleInfo: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x245CC9F60](v58, -1, -1);
    MEMORY[0x245CC9F60](v46, -1, -1);
  }

  else
  {
    v52 = v0[61];
    v53 = v0[62];

    v50 = *(v53 + 8);
    v50(v42, v52);
  }

  v0[73] = v50;
  v54 = v0[65];
  v55 = swift_task_alloc();
  v0[74] = v55;
  *(v55 + 16) = v54;
  v59 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v56 = swift_task_alloc();
  v0[75] = v56;
  *v56 = v0;
  v56[1] = sub_240824E34;

  return v59(sub_240876070, v55);
}

uint64_t sub_240824600()
{
  v61 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[24];
  v4 = v0[25];
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_2407EEE04(v1, v2, &qword_27E506D00, &unk_2408D7FE0);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[69];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  if (v5 == 1)
  {
    sub_2407D9440(v0[69], &qword_27E506D00, &unk_2408D7FE0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_2407D9440(v0[60], &qword_27E506DA0, &unk_2408D76A0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v12 = v0[70];
    v13 = v0[68];
    v14 = sub_2408D4B20();
    __swift_project_value_buffer(v14, qword_27E506C48);
    sub_2407EEE04(v12, v13, &qword_27E506D00, &unk_2408D7FE0);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F10();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[68];
    if (v17)
    {
      v19 = v0[67];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v60[0] = v21;
      *v20 = 136315138;
      sub_2407EEE04(v18, v19, &qword_27E506D00, &unk_2408D7FE0);
      v22 = sub_2408D4D40();
      v24 = v23;
      sub_2407D9440(v18, &qword_27E506D00, &unk_2408D7FE0);
      v25 = sub_2408CC504(v22, v24, v60);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2407CF000, v15, v16, "No locale info from connected device: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    else
    {

      sub_2407D9440(v18, &qword_27E506D00, &unk_2408D7FE0);
    }

    v26 = *(v0[23] + 248);
    v0[77] = v26;
    if (v26)
    {
      v57 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

      v27 = swift_task_alloc();
      v0[78] = v27;
      *v27 = v0;
      v27[1] = sub_24082548C;
      v28 = v0[57];

      return v57(v28);
    }

    else
    {
      v30 = v0[70];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      sub_2407D9440(v30, &qword_27E506D00, &unk_2408D7FE0);

      v32 = v0[1];

      return v32();
    }
  }

  v10 = v0[24];
  v11 = v0[25];
  sub_2408D36B0();
  (*(v11 + 8))(v6, v10);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[62] + 32))(v0[65], v0[60], v0[61]);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v33 = v0[65];
  v34 = v0[64];
  v35 = v0[61];
  v36 = v0[62];
  v37 = sub_2408D4B20();
  __swift_project_value_buffer(v37, qword_27E506C48);
  v38 = *(v36 + 16);
  v38(v34, v33, v35);
  v39 = sub_2408D4B10();
  v40 = sub_2408D4F10();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[64];
  if (v41)
  {
    v43 = v0[62];
    v44 = v0[63];
    v45 = v0[61];
    v46 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60[0] = v58;
    *v46 = 136315138;
    v38(v44, v42, v45);
    v47 = sub_2408D4D40();
    v49 = v48;
    v50 = *(v43 + 8);
    v50(v42, v45);
    v51 = sub_2408CC504(v47, v49, v60);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_2407CF000, v39, v40, "Setting signInModel.peerDeviceLocaleInfo: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x245CC9F60](v58, -1, -1);
    MEMORY[0x245CC9F60](v46, -1, -1);
  }

  else
  {
    v52 = v0[61];
    v53 = v0[62];

    v50 = *(v53 + 8);
    v50(v42, v52);
  }

  v0[73] = v50;
  v54 = v0[65];
  v55 = swift_task_alloc();
  v0[74] = v55;
  *(v55 + 16) = v54;
  v59 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v56 = swift_task_alloc();
  v0[75] = v56;
  *v56 = v0;
  v56[1] = sub_240824E34;

  return v59(sub_240876070, v55);
}

uint64_t sub_240824E34()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 184);

  if (v0)
  {
    v4 = sub_24082528C;
  }

  else
  {
    v4 = sub_240824F7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240824F7C()
{
  (*(v0 + 584))(*(v0 + 520), *(v0 + 488));
  v1 = *(*(v0 + 184) + 248);
  *(v0 + 616) = v1;
  if (v1)
  {
    v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v2 = swift_task_alloc();
    *(v0 + 624) = v2;
    *v2 = v0;
    v2[1] = sub_24082548C;
    v3 = *(v0 + 456);

    return v8(v3);
  }

  else
  {
    v5 = *(v0 + 560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24082528C()
{
  v1 = v0[73];
  v2 = v0[65];
  v3 = v0[61];
  sub_2407D9440(v0[70], &qword_27E506D00, &unk_2408D7FE0);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24082548C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_2408255B8, v1, 0);
}

uint64_t sub_2408255B8(uint64_t a1)
{
  v3 = v1[56];
  v2 = v1[57];
  v5 = v1[54];
  v4 = v1[55];
  v6 = v1[51];
  v7 = v1[52];
  v8 = v1[23];
  sub_2408D3540();
  v9 = *(v3 + 8);
  v1[79] = v9;
  v1[80] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = sub_2408D3B20();
  v11 = *(v7 + 8);
  v1[81] = v11;
  v1[82] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v6);
  *(v8 + 184) = v10;

  v12 = *(v8 + 248);
  v1[83] = v12;
  if (v12)
  {
    v19 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v13 = swift_task_alloc();
    v1[84] = v13;
    *v13 = v1;
    v13[1] = sub_240825928;
    v14 = v1[57];

    return v19(v14);
  }

  else
  {
    v16 = v1[70];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    sub_2407D9440(v16, &qword_27E506D00, &unk_2408D7FE0);

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_240825928()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_240825A54, v1, 0);
}

uint64_t sub_240825A54(uint64_t a1)
{
  v32 = v1;
  v2 = v1[81];
  v3 = v1[79];
  v4 = v1[57];
  v6 = v1[54];
  v5 = v1[55];
  v7 = v1[51];
  v27 = v1[50];
  v8 = v1[43];
  v28 = v1[44];
  v29 = v1[42];
  v9 = v1[23];
  sub_2408D3540();
  v3(v4, v5);
  v10 = sub_2408D3AE0();
  v2(v6, v7);
  v9[24] = v10;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v1[85] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v1[86] = v13;
  v1[87] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v27, 1, 1, v11);
  *(swift_task_alloc() + 16) = v27;
  (*(v8 + 104))(v28, *MEMORY[0x277D858A0], v29);
  sub_2408D4EC0();

  v14 = *(*v9 + 208);
  v1[88] = v14;
  swift_beginAccess();
  sub_240876008(v27, v9 + v14, &qword_27E506DA8, &qword_2408D8100);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v15 = sub_2408D4B20();
  v1[89] = __swift_project_value_buffer(v15, qword_27E506C48);

  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v1[49];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    sub_2407EEE04(v9 + v14, v18, &qword_27E506DA8, &qword_2408D8100);
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2407CF000, v16, v17, "Setup as server signInStreamContinuation: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  v30 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v24 = swift_task_alloc();
  v1[90] = v24;
  *v24 = v1;
  v24[1] = sub_240825DF8;
  v25 = v1[57];

  return v30(v25);
}

uint64_t sub_240825DF8()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_240825F08, v1, 0);
}

uint64_t sub_240825F08(uint64_t a1)
{
  v2 = v1[81];
  v3 = v1[79];
  v4 = v1[57];
  v6 = v1[54];
  v5 = v1[55];
  v7 = v1[51];
  sub_2408D3540();
  v3(v4, v5);
  v8 = sub_2408D3B20();
  v2(v6, v7);
  v1[17] = v8;
  v12 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v9 = swift_task_alloc();
  v1[91] = v9;
  *v9 = v1;
  v9[1] = sub_24082601C;
  v10 = v1[57];

  return v12(v10);
}

uint64_t sub_24082601C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_24082612C, v1, 0);
}

uint64_t sub_24082612C(uint64_t a1)
{
  v25 = v1;
  v2 = v1[81];
  v3 = v1[79];
  v4 = v1[57];
  v6 = v1[54];
  v5 = v1[55];
  v7 = v1[51];
  sub_2408D3540();
  v3(v4, v5);
  v8 = sub_2408D3AE0();
  v2(v6, v7);
  sub_240828080(v8);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

    v13 = sub_2408D4EF0();
    v15 = v14;

    v16 = sub_2408CC504(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v9, v10, "Setup as server remainingServices: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v17 = sub_2407F5674(MEMORY[0x277D84F90]);
  sub_2408D4EA0();
  v1[92] = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00, &unk_2408D6C34);
  swift_beginAccess();
  v1[94] = v17;
  v1[93] = v17;
  v18 = v1[92];
  v19 = v1[23];
  v20 = swift_task_alloc();
  v1[95] = v20;
  *v20 = v1;
  v20[1] = sub_240826414;
  v21 = v1[38];
  v22 = v1[39];

  return MEMORY[0x2822005A8](v21, v19, v18, v22, v1 + 18);
}

uint64_t sub_240826414()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_240826FF8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = sub_24082653C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24082653C()
{
  v102 = v0;
  v1 = v0[38];
  if ((*(v0[32] + 48))(v1, 1, v0[31]) == 1)
  {
    v2 = v0[88];
    v3 = v0[86];
    v4 = v0[85];
    v5 = v0[49];
    v6 = v0[23];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3(v5, 1, 1, v4);
    swift_beginAccess();
    sub_2407EEE6C(v5, v6 + v2);
    swift_endAccess();
    v98 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v7 = swift_task_alloc();
    v0[97] = v7;
    *v7 = v0;
    v7[1] = sub_240827234;

    return v98();
  }

  else
  {
    v10 = v0[36];
    v9 = v0[37];
    sub_240875B98(v1, v9, type metadata accessor for SignInReport);
    sub_240875C00(v9, v10, type metadata accessor for SignInReport);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[36];
    if (v13)
    {
      v15 = v0[35];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v101[0] = v17;
      *v16 = 136315138;
      sub_240875C00(v14, v15, type metadata accessor for SignInReport);
      v18 = sub_2408D4D40();
      v20 = v19;
      sub_240875C68(v14, type metadata accessor for SignInReport);
      v21 = sub_2408CC504(v18, v20, v101);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v11, v12, "Received signIn report: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {

      sub_240875C68(v14, type metadata accessor for SignInReport);
    }

    sub_240875C00(v0[37], v0[34], type metadata accessor for SignInReport);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F20();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[34];
    v26 = &off_2408D6000;
    if (v24)
    {
      v27 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v101[0] = v99;
      *v27 = 136315394;

      sub_240845108(v28);
      type metadata accessor for AIDAServiceType(0);
      sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
      v29 = sub_2408D4EF0();
      v31 = v30;

      sub_240875C68(v25, type metadata accessor for SignInReport);
      v32 = sub_2408CC504(v29, v31, v101);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;

      v26 = &off_2408D6000;
      v33 = sub_2408D4EF0();
      v35 = v34;

      v36 = sub_2408CC504(v33, v35, v101);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_2407CF000, v22, v23, "Subtracting all attempted services: %s from those remaining: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v99, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    else
    {

      sub_240875C68(v25, type metadata accessor for SignInReport);
    }

    v37 = v0[96];
    v38 = *(v0[37] + *(v0[31] + 20));

    sub_240845108(v39);
    v41 = v40;
    swift_beginAccess();
    sub_24086C57C(v41);
    swift_endAccess();

    v42 = sub_24086ED9C(v38);
    v0[99] = v37;
    sub_240845108(v42);
    v48 = v43;
    v49 = 0;
    v93 = v43 + 56;
    v50 = -1;
    v51 = -1 << *(v43 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v43 + 56);
    v53 = (63 - v51) >> 6;
    v54 = v0[94];
    v55 = v0[93];
    v94 = *(v26 + 119);
    v100 = v53;
    v95 = v43;
    while (1)
    {
      v0[101] = v54;
      v0[100] = v55;
      if (!v52)
      {
        break;
      }

      v56 = v49;
LABEL_21:
      v57 = *(*(v48 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v52)))));
      sub_240875C00(v0[37], v0[33], type metadata accessor for SignInReport);
      v58 = v57;
      v59 = sub_2408D4B10();
      v60 = sub_2408D4F20();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[33];
      if (v61)
      {
        v96 = v60;
        v63 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v101[0] = v97;
        *v63 = v94;
        sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
        v64 = sub_2408D5220();
        v65 = v58;
        v67 = v66;
        sub_240875C68(v62, type metadata accessor for SignInReport);
        v68 = v64;
        v48 = v95;
        v69 = sub_2408CC504(v68, v67, v101);

        *(v63 + 4) = v69;
        *(v63 + 12) = 2080;
        v70 = sub_2408D4D30();
        v72 = sub_2408CC504(v70, v71, v101);

        *(v63 + 14) = v72;
        v58 = v65;
        _os_log_impl(&dword_2407CF000, v59, v96, "Recording account id: %s for service: %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC9F60](v97, -1, -1);
        MEMORY[0x245CC9F60](v63, -1, -1);
      }

      else
      {

        sub_240875C68(v62, type metadata accessor for SignInReport);
      }

      (*(v0[28] + 16))(v0[30], v0[37], v0[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[19] = v55;
      v43 = sub_2408CCC7C(v58);
      v74 = v55[2];
      v75 = (v44 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return MEMORY[0x2822005A8](v43, v44, v45, v46, v47);
      }

      v78 = v44;
      if (v55[3] >= v77)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = v58;
          v86 = v43;
          sub_2408C5870();
          v43 = v86;
          v58 = v85;
        }
      }

      else
      {
        sub_2408C81A4(v77, isUniquelyReferenced_nonNull_native);
        v43 = sub_2408CCC7C(v58);
        if ((v78 & 1) != (v79 & 1))
        {
          type metadata accessor for AIDAServiceType(0);

          return sub_2408D5280();
        }
      }

      v52 &= v52 - 1;
      v55 = v0[19];
      v80 = v0[30];
      v81 = v0[27];
      v82 = v0[28];
      if (v78)
      {
        (*(v82 + 40))(v55[7] + *(v82 + 72) * v43, v80, v81);
      }

      else
      {
        v55[(v43 >> 6) + 8] |= 1 << v43;
        *(v55[6] + 8 * v43) = v58;
        v43 = (*(v82 + 32))(v55[7] + *(v82 + 72) * v43, v80, v81);
        v83 = v55[2];
        v76 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v76)
        {
          goto LABEL_45;
        }

        v55[2] = v84;
      }

      v49 = v56;
      v54 = v55;
      v53 = v100;
    }

    while (1)
    {
      v56 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v56 >= v53)
      {
        break;
      }

      v52 = *(v93 + 8 * v56);
      ++v49;
      if (v52)
      {
        goto LABEL_21;
      }
    }

    v87 = v0[17];
    v0[102] = v87;
    if (*(v87 + 16))
    {
      sub_240875C68(v0[37], type metadata accessor for SignInReport);
      *(v0 + 93) = *(v0 + 50);
      v88 = v0[92];
      v89 = v0[23];
      v90 = swift_task_alloc();
      v0[95] = v90;
      *v90 = v0;
      v90[1] = sub_240826414;
      v43 = v0[38];
      v46 = v0[39];
      v47 = v0 + 18;
      v44 = v89;
      v45 = v88;

      return MEMORY[0x2822005A8](v43, v44, v45, v46, v47);
    }

    v91 = v0[72];
    v92 = v0[71];

    return MEMORY[0x2822009F8](sub_24082735C, v92, v91);
  }
}

uint64_t sub_240826FF8()
{
  v1 = v0[70];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v1, &qword_27E506D00, &unk_2408D7FE0);

  sub_2407D9440(v2, &qword_27E506DA8, &qword_2408D8100);

  v6 = v0[1];

  return v6();
}

uint64_t sub_240827234()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_240827E64;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = sub_240827828;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24082735C()
{
  v1 = v0[99];
  sub_2408D3D30();
  v0[103] = v1;
  if (v1)
  {
    v2 = v0[23];

    v3 = sub_2408275C8;
    v4 = v2;
  }

  else
  {
    v4 = v0[23];
    v3 = sub_240827400;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_240827400()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = sub_2408D36E0();
  (*(v2 + 8))(v1, v3);
  v5 = sub_2408D4B10();
  if (v4)
  {
    v6 = sub_2408D4F10();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not finishing yet, working with legacy device";
  }

  else
  {
    v6 = sub_2408D4F20();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Not finishing yet, waiting for termination";
  }

  _os_log_impl(&dword_2407CF000, v5, v6, v8, v7, 2u);
  MEMORY[0x245CC9F60](v7, -1, -1);
LABEL_7:

  sub_240875C68(*(v0 + 296), type metadata accessor for SignInReport);
  *(v0 + 744) = *(v0 + 800);
  v9 = *(v0 + 736);
  v10 = *(v0 + 184);
  v11 = swift_task_alloc();
  *(v0 + 760) = v11;
  *v11 = v0;
  v11[1] = sub_240826414;
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);

  return MEMORY[0x2822005A8](v12, v10, v9, v13, v0 + 144);
}

uint64_t sub_2408275C8()
{
  v1 = v0[70];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v6 = v0[37];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v1, &qword_27E506D00, &unk_2408D7FE0);
  sub_240875C68(v6, type metadata accessor for SignInReport);

  sub_2407D9440(v2, &qword_27E506DA8, &qword_2408D8100);

  v7 = v0[1];

  return v7();
}

uint64_t sub_240827828()
{
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  *v1 = v0;
  v1[1] = sub_2408278D4;
  v2 = *(v0 + 456);

  return v4(v2);
}

uint64_t sub_2408278D4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_2408279E4, v1, 0);
}

void *sub_2408279E4(uint64_t a1)
{
  v2 = v1[94];
  v3 = v1[79];
  v4 = v1[57];
  v5 = v1[55];
  v40 = v1[28];
  sub_2408D3540();
  v3(v4, v5);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v7 = 0;
  v8 = v2 + 64;
  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v2 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = (v40 + 8);
  v42 = v2;
  v39 = result + 8;
  v43 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v7 << 6);
      v17 = v44[29];
      v18 = v44[27];
      v19 = *(*(v42 + 48) + 8 * v16);
      (*(v44[28] + 16))(v17, *(v42 + 56) + *(v44[28] + 72) * v16, v18);
      v20 = v19;
      v21 = sub_2408D38B0();
      v23 = v22;
      (*v41)(v17, v18);
      *(v39 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v43;
      *(v43[6] + 8 * v16) = v20;
      v24 = (v43[7] + 16 * v16);
      *v24 = v21;
      v24[1] = v23;
      v25 = v43[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v43[2] = v27;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = *(v8 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    v36 = v44[81];
    v38 = v44[70];
    v28 = v44[59];
    v29 = v44[58];
    v30 = v44[53];
    v31 = v44[51];
    v37 = v44[50];
    v32 = v44[46];
    v34 = v44[45];
    v35 = v44[47];

    sub_2407EEE04(v28, v29, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();
    sub_2407D9440(v28, &qword_27E506DA0, &unk_2408D76A0);
    v36(v30, v31);
    (*(v32 + 8))(v35, v34);
    sub_2407D9440(v38, &qword_27E506D00, &unk_2408D7FE0);

    sub_2407D9440(v37, &qword_27E506DA8, &qword_2408D8100);

    v33 = v44[1];

    return v33();
  }

  return result;
}

uint64_t sub_240827E64()
{
  v1 = v0[70];
  v2 = v0[50];
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_2407D9440(v1, &qword_27E506D00, &unk_2408D7FE0);

  sub_2407D9440(v2, &qword_27E506DA8, &qword_2408D8100);

  v3 = v0[1];

  return v3();
}

void sub_240828080(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_24086A4D4(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_240828170(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2408D3970();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_2408D3C20();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_2408D3630();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_2408D4130();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240828350, v1, 0);
}

uint64_t sub_240828350()
{
  v14 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[18] = __swift_project_value_buffer(v1, qword_27E506C48);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[2] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Fetching accounts for model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_240828550;
  v11 = v0[3];

  return sub_240807978(v11);
}

uint64_t sub_240828550(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 160) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v9 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v7 = swift_task_alloc();
    *(v3 + 168) = v7;
    *v7 = v4;
    v7[1] = sub_24082871C;
    v8 = *(v3 + 112);

    return v9(v8);
  }
}

uint64_t sub_24082871C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24082882C, v1, 0);
}

uint64_t sub_24082882C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_2408D3570();
  v4 = *(v3 + 8);
  v0[22] = v4;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  if (sub_2408D4120() == 1)
  {
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, "Bypassing confirmation for repair/setup flow", v7, 2u);
      MEMORY[0x245CC9F60](v7, -1, -1);
    }

    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "User decided to connect and set up remote device", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v17 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_240828BDC;
    v12 = v0[13];

    return v17(v12);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_240828A98;
    v15 = v0[20];
    v16 = v0[3];

    return sub_240829748(v16, v15);
  }
}

uint64_t sub_240828A98(char a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);

    v6 = sub_240829690;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 216) = a1 & 1;
    v6 = sub_2408292D4;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_240828BDC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_240828CEC, v1, 0);
}

void sub_240828CEC(uint64_t a1)
{
  v55 = v1;
  v2 = v1[22];
  v3 = v1[20];
  v4 = v1[13];
  v6 = v1[10];
  v5 = v1[11];
  v8 = v1[8];
  v7 = v1[9];
  v9 = v1[6];
  sub_2408D3540();
  v2(v4, v5);
  v10 = sub_2408D3B20();
  (*(v7 + 8))(v6, v8);
  v53 = v3;
  v54 = v10;
  v11 = v3 + 56;
  v12 = -1 << *(v3 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v3 + 56);
  v15 = (63 - v12) >> 6;
  v51 = (v9 + 8);
  v52 = v9;

  v16 = 0;
  v49 = v3 + 56;
  v50 = v1;
  while (v14)
  {
LABEL_12:
    (*(v52 + 16))(v1[7], *(v53 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v1[5]);
    v18 = sub_2408D3960();
    v19 = v18;
    if (v54[2])
    {
      v20 = -1 << *(v18 + 32);
      if (-v20 < 64)
      {
        v21 = ~(-1 << -v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v18 + 56);
      v23 = (63 - v20) >> 6;

      v24 = 0;
      while (v22)
      {
        v25 = v24;
LABEL_22:
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = *(*(v19 + 48) + ((v25 << 9) | (8 * v26)));
        v28 = sub_24086D3D4(v27);
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v23)
        {

          v11 = v49;
          v1 = v50;
          goto LABEL_6;
        }

        v22 = *(v19 + 56 + 8 * v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_6:
    v14 &= v14 - 1;
    (*v51)(v1[7], v1[5]);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v29 = v54;
      v30 = v54[2];
      v31 = sub_2408D4B10();
      v32 = sub_2408D4F10();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 67109120;
        *(v33 + 4) = v30 == 0;
        _os_log_impl(&dword_2407CF000, v31, v32, "User has the required accounts to proceed: %{BOOL}d", v33, 8u);
        MEMORY[0x245CC9F60](v33, -1, -1);
      }

      if (v30)
      {

        v34 = sub_2408D4B10();
        v35 = sub_2408D4F30();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v54 = v37;
          *v36 = 136315138;
          type metadata accessor for AIDAServiceType(0);
          sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
          v38 = sub_2408D4EF0();
          v40 = sub_2408CC504(v38, v39, &v54);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_2407CF000, v34, v35, "Unable to proceed, user missing accounts for required services: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x245CC9F60](v37, -1, -1);
          MEMORY[0x245CC9F60](v36, -1, -1);
        }

        v42 = v1[16];
        v41 = v1[17];
        v43 = v1[15];
        v44 = sub_2408D3500();
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        *v45 = v29;
        (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277CED2B0], v44);
        swift_willThrow();
        (*(v42 + 8))(v41, v43);

        v46 = v1[1];

        v46();
      }

      else
      {
        (*(v1[16] + 8))(v1[17], v1[15]);

        v47 = v1[1];
        v48 = v1[20];

        v47(v48);
      }

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_2408292D4(uint64_t a1)
{
  v24 = v1;
  if (*(v1 + 216) == 1)
  {
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F10();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "User decided to connect and set up remote device", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v22 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v5 = swift_task_alloc();
    *(v1 + 208) = v5;
    *v5 = v1;
    v5[1] = sub_240828BDC;
    v6 = *(v1 + 104);

    return v22(v6);
  }

  else
  {

    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED400]);
      v12 = sub_2408D4EF0();
      v14 = v13;

      v15 = sub_2408CC504(v12, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2407CF000, v8, v9, "User decided to not connect to remote device with proposed accounts: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x245CC9F60](v11, -1, -1);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    else
    {
    }

    v17 = *(v1 + 128);
    v16 = *(v1 + 136);
    v18 = *(v1 + 120);
    v19 = sub_2408D3500();
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CED2D8], v19);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_240829690()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_240829748(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2408D4130();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_2408D3630();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[13] = v6;
  v9 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_2408298C0;

  return v9(v6);
}

uint64_t sub_2408298C0()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2408299D0, v1, 0);
}

uint64_t sub_2408299D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Discovery model indicates we should skip confirmation, auto confirming", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(1);
  }

  else
  {
    v13 = v0[7];
    swift_beginAccess();
    v14 = *(v13 + 120);
    v0[15] = v14;
    if (v14)
    {
      v0[16] = *(v14 + 112);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
      sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0, MEMORY[0x277CED818]);
      v16 = sub_2408D4E00();

      return MEMORY[0x2822009F8](sub_240829DC8, v16, v15);
    }

    else
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v17 = sub_2408D4B20();
      v0[17] = __swift_project_value_buffer(v17, qword_27E506C48);
      v18 = sub_2408D4B10();
      v19 = sub_2408D4F20();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2407CF000, v18, v19, "Asking user for confirmation to connect before proceeding", v20, 2u);
        MEMORY[0x245CC9F60](v20, -1, -1);
      }

      v21 = v0[6];

      v22 = swift_task_alloc();
      v0[18] = v22;
      *(v22 + 16) = v21;
      v25 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
      v23 = swift_task_alloc();
      v0[19] = v23;
      *v23 = v0;
      v23[1] = sub_24082A120;
      v24 = MEMORY[0x277D839B0];

      return v25(v0 + 21, sub_240875AD4, v22, &unk_2408D6CF8, 0, v24);
    }
  }
}

uint64_t sub_240829DC8()
{
  v1 = *(v0 + 56);
  *(v0 + 169) = sub_2408D4200() & 1;

  return MEMORY[0x2822009F8](sub_240829E3C, v1, 0);
}

uint64_t sub_240829E3C()
{
  if (*(v0 + 169))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    __swift_project_value_buffer(v1, qword_27E506C48);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F10();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Remote role: bleClientIntercept indicates we should skip confirmation, auto confirming", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    *(v0 + 136) = __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Asking user for confirmation to connect before proceeding", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = *(v0 + 48);

    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *(v12 + 16) = v11;
    v15 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_24082A120;
    v14 = MEMORY[0x277D839B0];

    return v15(v0 + 168, sub_240875AD4, v12, &unk_2408D6CF8, 0, v14);
  }
}

uint64_t sub_24082A120()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_24082A344;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24082A248;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082A248(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User made the connection decision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_24082A344()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_24082A3C4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_24086A4D4(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24082A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_2408D34E0();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074F0, &qword_2408D8048);
  v5[14] = swift_task_alloc();
  v8 = sub_2408D3630();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v9 = sub_2408D3C20();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = sub_2408D4760();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v11 = sub_2408D3970();
  v5[24] = v11;
  v5[25] = *(v11 - 8);
  v5[26] = swift_task_alloc();
  v12 = sub_2408D3D60();
  v5[27] = v12;
  v5[28] = *(v12 - 8);
  v5[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082A838, v4, 0);
}

uint64_t sub_24082A838()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v2 + 104))(v1, *MEMORY[0x277CED560], v3);
  v4 = sub_2408D3D50();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = [objc_opt_self() sharedInstance];
    sub_2408D37F0();
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[24];

    sub_2408D38F0();
    (*(v17 + 8))(v16, v18);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v6 = v0[31];
  v7 = v0[6];
  v8 = sub_2408D38D0();
  (*(*(v8 - 8) + 56))(v6, v19, 1, v8);
  sub_2408D4750();
  v9 = *(v7 + 248);
  v0[32] = v9;
  if (v9)
  {
    v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v10 = swift_task_alloc();
    v0[33] = v10;
    *v10 = v0;
    v10[1] = sub_24082ABB0;
    v11 = v0[17];

    return v20(v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    v14 = v0[31];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_2407D9440(v14, &qword_27E507F00, &qword_2408D6D50);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24082ABB0()
{

  return MEMORY[0x2822009F8](sub_24082ACAC, 0, 0);
}

uint64_t sub_24082ACAC(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[6];
  sub_2408D3540();
  v9 = *(v7 + 8);
  v1[34] = v9;
  v1[35] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  sub_2408D4730();

  (*(v3 + 8))(v2, v5);

  return MEMORY[0x2822009F8](sub_24082ADB0, v8, 0);
}

uint64_t sub_24082ADB0()
{
  v15 = v0[30];
  v16 = v0[31];
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[21];
  v6 = v0[14];
  v18 = v0[6];
  v17 = v0[23];
  v7 = v0[2];
  v0[36] = swift_allocObject();
  swift_weakInit();
  v0[37] = sub_2408D3D80();
  (*(v1 + 16))(v2, v7, v3);
  sub_2407EEE04(v16, v15, &qword_27E507F00, &qword_2408D6D50);
  (*(v4 + 16))(v6, v17, v5);
  (*(v4 + 56))(v6, 0, 1, v5);

  v0[38] = sub_2408D3D40();
  v8 = *(v18 + 248);
  v0[39] = v8;
  if (v8)
  {
    v19 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_24082B130;
    v10 = v0[17];

    return v19(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v12 = 2;
    swift_willThrow();

    v13 = v0[31];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_2407D9440(v13, &qword_27E507F00, &qword_2408D6D50);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24082B130()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24082B25C, v1, 0);
}

uint64_t sub_24082B25C()
{
  v1 = v0[34];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  sub_2408D3580();
  v1(v2, v3);
  (*(v7 + 104))(v5, *MEMORY[0x277CED258], v6);
  v8 = MEMORY[0x245CC7910](v4, v5);
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  if (v8)
  {
    sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
    v10 = sub_2408D4E00();
    v12 = v11;
    v13 = sub_24082B448;
  }

  else
  {
    v0[41] = swift_allocObject();
    swift_weakInit();
    sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);

    v10 = sub_2408D4E00();
    v12 = v14;
    v13 = sub_24082B5BC;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_24082B448()
{
  v1 = *(v0 + 48);
  sub_2408D3D20();

  return MEMORY[0x2822009F8](sub_24082B4CC, v1, 0);
}

uint64_t sub_24082B4CC()
{
  *(v0 + 328) = swift_allocObject();
  swift_weakInit();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);

  v2 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_24082B5BC, v2, v1);
}

uint64_t sub_24082B5BC()
{
  v1 = *(v0 + 48);
  sub_2408D3D00();

  return MEMORY[0x2822009F8](sub_24082B658, v1, 0);
}

uint64_t sub_24082B658()
{
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v7 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);
  v1 = swift_task_alloc();
  v0[42] = v1;
  v2 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80, MEMORY[0x277CEDB10]);
  *v1 = v0;
  v1[1] = sub_24082B760;
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];

  return v7(v3, v5, v4, v2);
}