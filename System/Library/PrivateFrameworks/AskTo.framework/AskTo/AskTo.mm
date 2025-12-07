uint64_t sub_2258D3840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2258D3880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2258D38DC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2258D3940()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2258D398C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2258D39C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2258D4048@<X0>(uint64_t a3@<X8>)
{
  sub_2258E0AE0();
  swift_allocObject();
  sub_2258E0AD0();
  *(a3 + 24) = sub_2258E0C00();
  sub_2258D4584();
  sub_2258E0AC0();
}

ATResponseDecoder __swiftcall ATResponseDecoder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ATResponseDecoder()
{
  result = qword_27D7377D8;
  if (!qword_27D7377D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7377D8);
  }

  return result;
}

uint64_t sub_2258D44A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

unint64_t sub_2258D4584()
{
  result = qword_27D7377E0;
  if (!qword_27D7377E0)
  {
    sub_2258E0C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377E0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA69870);
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

uint64_t sub_2258D4664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7377E8, &qword_2258E1CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2258D4714(uint64_t a1, __int16 a2)
{
  *(v3 + 80) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_2258E0C10();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2258D47D8, 0, 0);
}

uint64_t sub_2258D47D8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_2258E0D80();
  }

  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  sub_2258E0C20();
  v6 = sub_2258E0BD0();
  (*(v4 + 104))(v3, *MEMORY[0x277CEEB80], v5);
  sub_2258D5674();
  sub_2258E0D10();

  (*(v4 + 8))(v3, v5);
  *(v0 + 16) = 0;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_2258D4988;
  v8 = *(v0 + 24);
  v9 = *(v0 + 80);

  return sub_2258D4CC0(v8, v9, v0 + 16);
}

uint64_t sub_2258D4988()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2258D4B20;
  }

  else
  {
    v2 = sub_2258D4ABC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2258D4ABC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2258D4B20()
{
  if (qword_27D7377C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_2258E0BA0();
  __swift_project_value_buffer(v2, qword_27D737BB0);
  v3 = v1;
  v4 = sub_2258E0B80();
  v5 = sub_2258E0E80();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2258D2000, v4, v5, "Error sending request: %@", v8, 0xCu);
    sub_2258D4664(v9);
    MEMORY[0x22AA69870](v9, -1, -1);
    MEMORY[0x22AA69870](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2258D4CC0(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2258D4CE8, 0, 0);
}

uint64_t sub_2258D4CE8()
{
  v24 = v0;
  if (qword_27D7377C0 != -1)
  {
    swift_once();
  }

  v1 = sub_2258E0BA0();
  __swift_project_value_buffer(v1, qword_27D737BB0);
  v2 = sub_2258E0B80();
  v3 = sub_2258E0E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2258D9640(0xD00000000000003ALL, 0x80000002258E2120, &v23);
    *(v4 + 12) = 2080;
    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_2258E0D80();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_2258D9640(v8, v10, &v23);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_2258D2000, v2, v3, "%s called with client bundle identifier %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA69870](v5, -1, -1);
    MEMORY[0x22AA69870](v4, -1, -1);
  }

  v12 = *(v0 + 16);
  v13 = sub_2258E0B80();
  v14 = sub_2258E0E80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 16);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&dword_2258D2000, v13, v14, "Sending question to daemon: %@", v16, 0xCu);
    sub_2258D4664(v17);
    MEMORY[0x22AA69870](v17, -1, -1);
    MEMORY[0x22AA69870](v16, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 40) = v19;
  *v19 = v0;
  v19[1] = sub_2258D5014;
  v20 = *(v0 + 16);
  v21 = *(v0 + 64);

  return MEMORY[0x2821413C8](v20, v21);
}

uint64_t sub_2258D5014(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2258D516C;
  }

  else
  {
    *(v4 + 56) = a1;

    v5 = sub_2258D5148;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2258D516C()
{
  v1 = *(v0 + 48);
  v2 = sub_2258E0B30();
  sub_2258D5620();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2258D521C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  v5 = sub_2258E0D20();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2258D52E4, 0, 0);
}

uint64_t sub_2258D52E4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_2258E0D80();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = sub_2258E0BD0();
  (*(v7 + 104))(v6, *MEMORY[0x277CEEDF0], v8);
  MEMORY[0x22AA68F30](v3, v5, v9, v6);

  (*(v7 + 8))(v6, v8);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_2258D5468;
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v13 = *(v0 + 80);

  return sub_2258D4CC0(v12, v13, v11);
}

uint64_t sub_2258D5468()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2258D4B20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2258D55A4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_2258D5620()
{
  result = qword_27D7377F0;
  if (!qword_27D7377F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377F0);
  }

  return result;
}

unint64_t sub_2258D5674()
{
  result = qword_27D7377F8;
  if (!qword_27D7377F8)
  {
    sub_2258E0C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7377F8);
  }

  return result;
}

void sub_2258D56CC()
{
  v1 = v0;
  if (qword_27D7377C8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_2258E0BA0();
    __swift_project_value_buffer(v2, qword_27D737BC8);
    v3 = sub_2258E0B80();
    v4 = sub_2258E0E80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v80[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v80);
      _os_log_impl(&dword_2258D2000, v3, v4, "%s called", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA69870](v6, -1, -1);
      MEMORY[0x22AA69870](v5, -1, -1);
    }

    v7 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseIdentifierCache;
    swift_beginAccess();
    v8 = *&v1[v7];
    if ((v8 & 0xC000000000000001) != 0)
    {

      v9 = sub_2258E0EF0();

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else if (!*(v8 + 16))
    {
LABEL_11:
      v17 = v1;
      v18 = sub_2258E0B80();
      v19 = sub_2258E0E80();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v80[0] = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v80);
        *(v20 + 12) = 2048;
        v22 = *&v1[v7];
        if ((v22 & 0xC000000000000001) != 0)
        {

          v23 = sub_2258E0EF0();
        }

        else
        {
          v23 = *(v22 + 16);
        }

        *(v20 + 14) = v23;

        _os_log_impl(&dword_2258D2000, v18, v19, "%s undeliveredResponseIdentifierCache.count %ld", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AA69870](v21, -1, -1);
        MEMORY[0x22AA69870](v20, -1, -1);
      }

      else
      {
      }

      return;
    }

    if (v1[OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses] != 1)
    {
      v24 = sub_2258E0B80();
      v25 = sub_2258E0E70();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v80[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v80);
        _os_log_impl(&dword_2258D2000, v24, v25, "%s: Have undelivered responses, but applicationIsReadyForActions == false", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA69870](v27, -1, -1);
        MEMORY[0x22AA69870](v26, -1, -1);
      }

      return;
    }

    v10 = v1;
    v11 = sub_2258E0B80();
    v12 = sub_2258E0E80();
    v76 = v10;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v80[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v80);
      *(v13 + 12) = 2048;
      v15 = *&v1[v7];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = sub_2258E0EF0();
      }

      else
      {
        v16 = *(v15 + 16);
      }

      *(v13 + 14) = v16;

      _os_log_impl(&dword_2258D2000, v11, v12, "%s: Have %ld undelivered responses", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v28 = v14;
      v10 = v76;
      MEMORY[0x22AA69870](v28, -1, -1);
      MEMORY[0x22AA69870](v13, -1, -1);
    }

    else
    {
    }

    v29 = *&v1[v7];
    if ((v29 & 0xC000000000000001) != 0)
    {

      sub_2258E0EE0();
      sub_2258D7EC0();
      sub_2258D806C(&qword_27D7378A8, sub_2258D7EC0, MEMORY[0x277D85378]);
      sub_2258E0E60();
      v30 = v80[1];
      v75 = v80[0];
      v31 = v80[2];
      v1 = v80[3];
      v32 = v80[4];
    }

    else
    {
      v33 = -1 << *(v29 + 32);
      v30 = v29 + 56;
      v31 = ~v33;
      v34 = -v33;
      v35 = v34 < 64 ? ~(-1 << v34) : -1;
      v32 = v35 & *(v29 + 56);
      v75 = v29;

      v1 = 0;
    }

    v36 = (v31 + 64) >> 6;
    v37 = v75;
    if (v75 < 0)
    {
      break;
    }

    while (1)
    {
      v39 = v1;
      v40 = v32;
      v41 = v1;
      if (!v32)
      {
        break;
      }

LABEL_37:
      v42 = (v40 - 1) & v40;
      v43 = *(*(v37 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
      if (!v43)
      {
        goto LABEL_58;
      }

LABEL_41:
      v77 = v42;
      v45 = [*&v10[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache] objectForKey_];
      if (v45)
      {
        v46 = v45;
        v47 = __swift_project_boxed_opaque_existential_0(&v10[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar], *&v10[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar + 24]);
        v48 = sub_2258E0BF0();
        v49 = sub_2258E0BD0();

        v50 = *v47;
        swift_beginAccess();
        v51 = *(v50 + 16);
        if ((v51 & 0xC000000000000001) != 0)
        {
          v52 = v49;
          v53 = sub_2258E0FE0();

          if (v53)
          {
            sub_2258E0C70();
            swift_dynamicCast();
            v53 = v78;
          }
        }

        else if (*(v51 + 16) && (v62 = sub_2258D9CE4(v49), (v63 & 1) != 0))
        {
          v53 = *(*(v51 + 56) + 8 * v62);
          v64 = v53;
        }

        else
        {
          v53 = 0;
        }

        swift_endAccess();

        if (v53)
        {

          [*&v10[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache] removeObjectForKey_];
          swift_beginAccess();
          v38 = sub_2258D7038(v43);
          swift_endAccess();

          sub_2258D65E8(v46, 0);
        }

        else
        {
          v65 = v43;
          v66 = sub_2258E0B80();
          v67 = sub_2258E0E80();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            log = v66;
            v70 = swift_slowAlloc();
            v79[0] = v70;
            *v68 = 136315394;
            *(v68 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v79);
            *(v68 + 12) = 2112;
            *(v68 + 14) = v65;
            *v69 = v43;
            v71 = v65;
            _os_log_impl(&dword_2258D2000, log, v67, "%s: Delaying delivery because topic is not registered. responseIdentifier: %@", v68, 0x16u);
            sub_2258D4664(v69);
            v72 = v69;
            v37 = v75;
            MEMORY[0x22AA69870](v72, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x22AA69870](v70, -1, -1);
            v73 = v68;
            v10 = v76;
            MEMORY[0x22AA69870](v73, -1, -1);
          }

          else
          {
          }
        }

        v1 = v41;
        v32 = v77;
        if (v37 < 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v54 = v43;
        v55 = sub_2258E0B80();
        v56 = sub_2258E0E70();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v79[0] = v59;
          *v57 = 136315394;
          *(v57 + 4) = sub_2258D9640(0xD000000000000025, 0x80000002258E22C0, v79);
          *(v57 + 12) = 2112;
          *(v57 + 14) = v54;
          *v58 = v43;
          v60 = v54;
          _os_log_impl(&dword_2258D2000, v55, v56, "%s: Could not find response in response cache for identifier %@", v57, 0x16u);
          sub_2258D4664(v58);
          MEMORY[0x22AA69870](v58, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v59);
          v61 = v59;
          v37 = v75;
          MEMORY[0x22AA69870](v61, -1, -1);
          MEMORY[0x22AA69870](v57, -1, -1);
        }

        else
        {
        }

        v1 = v41;
        v32 = v77;
        v10 = v76;
        if (v37 < 0)
        {
          goto LABEL_39;
        }
      }
    }

    while (1)
    {
      v41 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v36)
      {
        goto LABEL_58;
      }

      v40 = *(v30 + 8 * v41);
      ++v39;
      if (v40)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

LABEL_39:
  v44 = sub_2258E0F10();
  if (v44)
  {
    v78 = v44;
    sub_2258D7EC0();
    swift_dynamicCast();
    v43 = v79[0];
    v41 = v1;
    v42 = v32;
    if (v79[0])
    {
      goto LABEL_41;
    }
  }

LABEL_58:
  sub_2258D80B4(v37);
}

uint64_t sub_2258D61C0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2258D6FCC(v3, v7);
      sub_2258D7028(v7, &v5);
      sub_2258E0C00();
      if ((swift_dynamicCast() & 1) != 0 && v6)
      {
        MEMORY[0x22AA68FD0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2258E0E00();
        }

        sub_2258E0E10();
        v1 = v8;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  sub_2258D62DC(v1);
}

void sub_2258D62DC(unint64_t a1)
{
  v2 = v1;
  if (qword_27D7377C8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = sub_2258E0BA0();
    __swift_project_value_buffer(v4, qword_27D737BC8);
    v5 = sub_2258E0B80();
    v6 = sub_2258E0E80();
    v21 = a1;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2258D9640(0xD00000000000001DLL, 0x80000002258E2230, &v23);
      _os_log_impl(&dword_2258D2000, v5, v6, "%s called", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v9 = v8;
      a1 = v21;
      MEMORY[0x22AA69870](v9, -1, -1);
      MEMORY[0x22AA69870](v7, -1, -1);
    }

    if (a1 >> 62)
    {
      break;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }

LABEL_6:
    v11 = 0;
    v12 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses;
    v13 = a1 & 0xC000000000000001;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x22AA69190](v11, a1);
      }

      else
      {
        if (v11 >= *(v22 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v2 + v12) == 1)
      {
        sub_2258D65E8(v14, 1);
      }

      else
      {
        v17 = sub_2258E0B80();
        v18 = sub_2258E0E80();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_2258D2000, v17, v18, "Deferring notifying client of response because the application isn't ready to receive responses", v19, 2u);
          v20 = v19;
          a1 = v21;
          MEMORY[0x22AA69870](v20, -1, -1);
        }

        sub_2258D6BB0(v15);
      }

      ++v11;
      if (v16 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v10 = sub_2258E0EF0();
  if (v10)
  {
    goto LABEL_6;
  }
}

void sub_2258D65E8(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2258E0B70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2258E0BF0();
  v12 = sub_2258E0BD0();

  v13 = (v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar);
  v14 = *__swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar), *(v3 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar + 24));
  swift_beginAccess();
  v15 = sub_2258D9004(v12, *(v14 + 16));
  swift_endAccess();
  if (v15)
  {
    v52 = a1;
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_2258E0C30();
    v16 = sub_2258D91A8(v10);
    v17 = *(v7 + 8);
    v17(v10, v6);
    if (v16)
    {
      if (qword_27D7377C8 != -1)
      {
        swift_once();
      }

      v18 = sub_2258E0BA0();
      __swift_project_value_buffer(v18, qword_27D737BC8);
      v19 = v15;
      v20 = sub_2258E0B80();
      v21 = sub_2258E0E80();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v49 = v22;
        v51 = swift_slowAlloc();
        v53[0] = v51;
        *v22 = 136315138;
        v50 = v21;
        sub_2258E0C30();
        sub_2258D806C(&qword_27D737890, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v23 = sub_2258E1050();
        v24 = v19;
        v25 = v12;
        v27 = v26;
        v17(v10, v6);
        v28 = sub_2258D9640(v23, v27, v53);
        v12 = v25;
        v19 = v24;

        v29 = v49;
        *(v49 + 1) = v28;
        _os_log_impl(&dword_2258D2000, v20, v50, "Notifying response listener with id %s", v29, 0xCu);
        v30 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA69870](v30, -1, -1);
        MEMORY[0x22AA69870](v29, -1, -1);
      }

      [v16 didReceiveResponse_];
      swift_unknownObjectRelease();

      return;
    }

    a1 = v52;
  }

  if (a2)
  {
    if (qword_27D7377C8 != -1)
    {
      swift_once();
    }

    v31 = sub_2258E0BA0();
    __swift_project_value_buffer(v31, qword_27D737BC8);
    v32 = v12;
    v33 = sub_2258E0B80();
    v34 = sub_2258E0E80();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_2258D2000, v33, v34, "Deferring notifying client of response because topic %@ is not registered", v35, 0xCu);
      sub_2258D4664(v36);
      MEMORY[0x22AA69870](v36, -1, -1);
      MEMORY[0x22AA69870](v35, -1, -1);
    }

    sub_2258D6BB0(a1);
  }

  else
  {
    v38 = v12;
    if (qword_27D7377C8 != -1)
    {
      swift_once();
    }

    v39 = sub_2258E0BA0();
    __swift_project_value_buffer(v39, qword_27D737BC8);
    v40 = a1;
    v41 = sub_2258E0B80();
    v42 = sub_2258E0E70();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53[0] = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_2258D9640(0xD00000000000003BLL, 0x80000002258E2250, v53);
      *(v43 + 12) = 2112;
      v46 = sub_2258E0BF0();
      v47 = sub_2258E0BD0();

      *(v43 + 14) = v47;
      *v44 = v47;
      _os_log_impl(&dword_2258D2000, v41, v42, "%s topic %@ is not registered. This response will be missed by the client.", v43, 0x16u);
      sub_2258D4664(v44);
      MEMORY[0x22AA69870](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA69870](v45, -1, -1);
      MEMORY[0x22AA69870](v43, -1, -1);
    }
  }
}

void sub_2258D6BB0(void *a1)
{
  v2 = v1;
  v4 = sub_2258E0B70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2258E0BF0();
  sub_2258E0BE0();

  v10 = sub_2258E0B50();
  (*(v5 + 8))(v8, v4);
  if (qword_27D7377C8 != -1)
  {
    swift_once();
  }

  v11 = sub_2258E0BA0();
  __swift_project_value_buffer(v11, qword_27D737BC8);
  v12 = a1;
  v13 = v10;
  v14 = sub_2258E0B80();
  v15 = sub_2258E0E80();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v2;
    v30[0] = v18;
    v19 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_2258D9640(0xD000000000000022, 0x80000002258E2290, v30);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    *(v16 + 22) = 2080;
    v20 = v12;
    v21 = [v13 UUIDString];
    v22 = sub_2258E0D80();
    v24 = v23;

    v25 = sub_2258D9640(v22, v24, v30);

    *(v16 + 24) = v25;
    _os_log_impl(&dword_2258D2000, v14, v15, "%s response: %@, uuid: %s", v16, 0x20u);
    sub_2258D4664(v17);
    MEMORY[0x22AA69870](v17, -1, -1);
    swift_arrayDestroy();
    v26 = v19;
    v2 = v29;
    MEMORY[0x22AA69870](v26, -1, -1);
    MEMORY[0x22AA69870](v16, -1, -1);
  }

  [*(v2 + OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache) setObject:v12 forKey:v13];
  swift_beginAccess();
  v27 = v13;
  sub_2258D7CA8(&v31, v27);
  swift_endAccess();
}

id sub_2258D6F14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2258D6FCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2258D7028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2258D7038(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_2258E0F20();

    if (v6)
    {
      v7 = sub_2258D71C0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_2258D7EC0();
  v10 = sub_2258E0E90();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2258E0EA0();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2258D7318();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2258D78A4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2258D71C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2258E0EF0();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2258D7A44(v5, v4);
  v15 = v6;

  v7 = sub_2258E0E90();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2258D7EC0();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2258E0EA0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2258D78A4(v9);
  result = sub_2258E0EA0();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2258D7318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  v2 = *v0;
  v3 = sub_2258E0F30();
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

uint64_t sub_2258D7468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  result = sub_2258E0F40();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2258E0E90();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2258D767C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
  result = sub_2258E0F40();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2258E0E90();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2258D78A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2258E0EC0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2258E0E90();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2258D7A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
    v2 = sub_2258E0F50();
    v15 = v2;
    sub_2258E0EE0();
    if (sub_2258E0F10())
    {
      sub_2258D7EC0();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2258D767C(v9 + 1);
        }

        v2 = v15;
        result = sub_2258E0E90();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_2258E0F10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_2258D7C24(uint64_t a1, uint64_t a2)
{
  sub_2258E0E90();
  result = sub_2258E0ED0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2258D7CA8(uint64_t *a1, void *a2)
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

    v9 = sub_2258E0F00();

    if (v9)
    {

      sub_2258D7EC0();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2258E0EF0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2258D7A44(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2258D767C(v20 + 1);
    }

    v18 = v8;
    sub_2258D7C24(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2258D7EC0();
  v11 = sub_2258E0E90();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2258D7F0C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2258E0EA0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_2258D7EC0()
{
  result = qword_27D737898;
  if (!qword_27D737898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D737898);
  }

  return result;
}

void sub_2258D7F0C(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2258D767C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2258D7318();
      goto LABEL_12;
    }

    sub_2258D7468(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_2258E0E90();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2258D7EC0();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2258E0EA0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2258E1080();
  __break(1u);
}

uint64_t sub_2258D806C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2258D8164(char a1, uint64_t a2)
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v4 = qword_2813690D0 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  if (qword_27D7377D0 != -1)
  {
    swift_once();
  }

  v7 = sub_2258E0BA0();
  __swift_project_value_buffer(v7, qword_27D737BE0);
  swift_unknownObjectRetain();
  v8 = sub_2258E0B80();
  v9 = sub_2258E0E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2258D9640(0xD000000000000028, 0x80000002258E2320, &v18);
    *(v10 + 12) = 2080;
    if (Strong)
    {
      v12 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v12 = 7104878;
    }

    if (Strong)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_2258D9640(v12, v13, &v18);

    *(v10 + 14) = v14;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a1 & 1;
    _os_log_impl(&dword_2258D2000, v8, v9, "%s called. ATDispatchCenter.delegate is %s. didSend: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AA69870](v11, -1, -1);
    MEMORY[0x22AA69870](v10, -1, -1);
  }

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16 = *(v6 + 8);
    swift_unknownObjectRetain();
    v16(a1 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(a2, 0);
  return swift_unknownObjectRelease();
}

void *sub_2258D8408()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = sub_2258DF854(MEMORY[0x277D84F90]);
  v0[3] = sub_2258DF94C(v1);
  v0[4] = sub_2258DFA50(v1);
  v0[5] = v1;
  v0[6] = [objc_allocWithZone(type metadata accessor for XPCListenerDelegate()) init];
  swift_weakAssign();
  return v0;
}

uint64_t sub_2258D8484(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v117 = sub_2258E0B70();
  v105 = *(v117 - 8);
  v6 = MEMORY[0x28223BE20](v117, v5);
  v116 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v104 - v9;
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v11 = sub_2258E0BA0();
  v12 = __swift_project_value_buffer(v11, qword_281369290);

  v109 = v12;
  v13 = sub_2258E0B80();
  v14 = sub_2258E0E80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v121 = v16;
    *v15 = 136315138;
    v17 = sub_2258E0BC0();
    v18 = MEMORY[0x22AA68FF0](a1, v17);
    v20 = sub_2258D9640(v18, v19, &v121);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2258D2000, v13, v14, "Registering topics: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA69870](v16, -1, -1);
    MEMORY[0x22AA69870](v15, -1, -1);
  }

  v21 = [objc_opt_self() currentProcess];
  LODWORD(v112) = [v21 isDaemon];

  v22 = sub_2258E0B80();
  v23 = sub_2258E0E80();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v112;
    _os_log_impl(&dword_2258D2000, v22, v23, "isClientProcessDaemon: %{BOOL}d", v24, 8u);
    MEMORY[0x22AA69870](v24, -1, -1);
  }

  sub_2258E0B60();
  v123 = MEMORY[0x277D84F90];
  v124 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v26 = sub_2258E0EF0();
    v108 = v10;
    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v108 = v10;
    if (v26)
    {
LABEL_9:
      if (v26 >= 1)
      {
        v27 = 0;
        v114 = a1 & 0xC000000000000001;
        v111 = (v105 + 16);
        *&v25 = 138412546;
        v106 = v25;
        v110 = MEMORY[0x277D84F90];
        v118 = MEMORY[0x277D84F90];
        v107 = a1;
        v115 = v26;
        while (1)
        {
          if (v114)
          {
            v35 = MEMORY[0x22AA69190](v27, a1);
          }

          else
          {
            v35 = *(a1 + 8 * v27 + 32);
          }

          v36 = v35;
          v37 = sub_2258E0C80();
          v39 = v38;
          v40 = sub_2258E0BB0();
          v42 = v41;
          v121 = v37;
          v122 = v39;

          MEMORY[0x22AA68FB0](v40, v42);

          v43 = v121;
          v44 = v122;
          swift_beginAccess();
          v45 = v3[2];
          if ((v45 & 0xC000000000000001) != 0)
          {
            v46 = v36;
            v47 = sub_2258E0FE0();

            if (!v47)
            {
              goto LABEL_25;
            }

            v119 = v47;
            sub_2258E0C70();
            swift_dynamicCast();
            v48 = v120;
          }

          else
          {
            if (!*(v45 + 16) || (v49 = sub_2258D9CE4(v36), (v50 & 1) == 0))
            {
LABEL_25:
              swift_endAccess();
LABEL_26:
              if (v112)
              {
                v54 = objc_allocWithZone(MEMORY[0x277CCAE98]);
                v55 = sub_2258E0D70();

                v56 = [v54 initWithMachServiceName_];

                [v56 setDelegate_];
                v57 = v56;
                MEMORY[0x22AA68FD0]();
                if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2258E0E00();
                }

                sub_2258E0E10();

                v110 = v123;
              }

              else
              {
              }

              (*v111)(v116, v10, v117);
              v58 = objc_allocWithZone(sub_2258E0C70());
              v59 = v36;
              v60 = sub_2258E0C60();
              MEMORY[0x22AA68FD0]();
              if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2258E0E00();
              }

              sub_2258E0E10();

              v118 = v124;
              goto LABEL_12;
            }

            v48 = *(*(v45 + 56) + 8 * v49);
          }

          swift_endAccess();
          if (!v48)
          {
            goto LABEL_26;
          }

          v51 = v36;

          v52 = sub_2258E0B80();
          v53 = sub_2258E0E70();

          if (os_log_type_enabled(v52, v53))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v121 = v30;
            *v28 = v106;
            *(v28 + 4) = v51;
            *v29 = v51;
            *(v28 + 12) = 2080;
            v31 = v51;
            v32 = sub_2258D9640(v43, v44, &v121);

            *(v28 + 14) = v32;
            _os_log_impl(&dword_2258D2000, v52, v53, "Tried to registered topic %@ for service name %s, but it's already registered locally.", v28, 0x16u);
            sub_2258DC6A0(v29, &qword_27D7377E8, &qword_2258E1CB0);
            v33 = v29;
            v10 = v108;
            MEMORY[0x22AA69870](v33, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v30);
            v34 = v30;
            a1 = v107;
            MEMORY[0x22AA69870](v34, -1, -1);
            MEMORY[0x22AA69870](v28, -1, -1);
          }

          else
          {
          }

LABEL_12:
          if (v115 == ++v27)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
      goto LABEL_80;
    }
  }

  v110 = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
LABEL_36:
  v61 = v118;
  if (v118 >> 62)
  {
    goto LABEL_68;
  }

  v62 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v62)
  {
LABEL_38:
    v63 = 0;
    v115 = v61 & 0xC000000000000001;
    v112 = v61 & 0xFFFFFFFFFFFFFF8;
    v64 = (v105 + 8);
    v114 = v62;
    while (1)
    {
      if (v115)
      {
        v75 = MEMORY[0x22AA69190](v63);
      }

      else
      {
        if (v63 >= *(v112 + 16))
        {
          goto LABEL_67;
        }

        v75 = *(v61 + 8 * v63 + 32);
      }

      v76 = v75;
      v77 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v96 = v61;
        v62 = sub_2258E0EF0();
        v61 = v96;
        if (!v62)
        {
          goto LABEL_69;
        }

        goto LABEL_38;
      }

      v78 = sub_2258E0C50();
      swift_beginAccess();
      v79 = v3[2];
      if ((v79 & 0xC000000000000001) != 0)
      {
        if (v79 < 0)
        {
          v80 = v3[2];
        }

        else
        {
          v80 = v79 & 0xFFFFFFFFFFFFFF8;
        }

        v81 = v76;
        v82 = sub_2258E0EF0();
        v61 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_65;
        }

        v3[2] = sub_2258DA0F0(v80, v61);
      }

      else
      {
        v83 = v76;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v3[2];
      v85 = v120;
      v3[2] = 0x8000000000000000;
      v86 = sub_2258D9CE4(v78);
      v87 = v85[2];
      v88 = (v61 & 1) == 0;
      v89 = __OFADD__(v87, v88);
      v90 = v87 + v88;
      if (v89)
      {
        goto LABEL_64;
      }

      v91 = v61;
      if (v85[3] < v90)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_58;
      }

      v95 = v86;
      sub_2258DB3D0();
      v86 = v95;
      v92 = v120;
      if (v91)
      {
LABEL_39:
        v65 = v92[7];
        v66 = *(v65 + 8 * v86);
        *(v65 + 8 * v86) = v76;

        goto LABEL_40;
      }

LABEL_59:
      v92[(v86 >> 6) + 8] |= 1 << v86;
      *(v92[6] + 8 * v86) = v78;
      *(v92[7] + 8 * v86) = v76;
      v93 = v92[2];
      v89 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v89)
      {
        goto LABEL_66;
      }

      v92[2] = v94;
LABEL_40:
      v3[2] = v92;
      swift_endAccess();
      v67 = sub_2258E0C40();
      v69 = v68;
      v70 = sub_2258E0C50();
      swift_beginAccess();
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v3[3];
      v3[3] = 0x8000000000000000;
      sub_2258DADB4(v70, v67, v69, v71);

      v3[3] = v120;
      swift_endAccess();
      v72 = v116;
      sub_2258E0C30();
      swift_beginAccess();
      v73 = v113;
      swift_unknownObjectRetain();
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v120 = v3[4];
      v3[4] = 0x8000000000000000;
      sub_2258DABE8(v73, v72, v74);
      (*v64)(v72, v117);
      v3[4] = v120;
      swift_endAccess();

      ++v63;
      v61 = v118;
      if (v77 == v114)
      {
        goto LABEL_69;
      }
    }

    sub_2258DA980(v90, isUniquelyReferenced_nonNull_native);
    v86 = sub_2258D9CE4(v78);
    if ((v91 & 1) != (v61 & 1))
    {
      goto LABEL_81;
    }

LABEL_58:
    v92 = v120;
    if (v91)
    {
      goto LABEL_39;
    }

    goto LABEL_59;
  }

LABEL_69:

  v97 = v110;
  if (!(v110 >> 62))
  {
    v98 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v99 = v108;
    if (v98)
    {
      goto LABEL_71;
    }

LABEL_78:
    swift_beginAccess();
    sub_2258D90B8(v97);
    swift_endAccess();
    return (*(v105 + 8))(v99, v117);
  }

  v98 = sub_2258E0EF0();
  v99 = v108;
  if (!v98)
  {
    goto LABEL_78;
  }

LABEL_71:
  if (v98 >= 1)
  {
    for (i = 0; i != v98; ++i)
    {
      if ((v97 & 0xC000000000000001) != 0)
      {
        v101 = MEMORY[0x22AA69190](i, v97);
      }

      else
      {
        v101 = *(v97 + 8 * i + 32);
      }

      v102 = v101;
      [v101 activate];
    }

    goto LABEL_78;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  sub_2258E0BC0();
  result = sub_2258E1090();
  __break(1u);
  return result;
}

void *sub_2258D9004(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2258E0FE0();

    if (v4)
    {
      sub_2258E0C70();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2258D9CE4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2258D90B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2258E0EF0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2258E0EF0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2258DA050(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2258DB530(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2258D91A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v3 + 16) && (v4 = sub_2258D9BE8(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_2258D9220()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2258D929C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2258D92E0(void *a1, const char *a2)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v4 = sub_2258E0BA0();
  __swift_project_value_buffer(v4, qword_281369290);
  v5 = a1;
  oslog = sub_2258E0B80();
  v6 = sub_2258E0E80();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_2258D2000, oslog, v6, a2, v7, 8u);
    MEMORY[0x22AA69870](v7, -1, -1);
    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_2258D95E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2258D9640(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2258D970C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2258D6FCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2258D970C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2258D9818(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2258E0FB0();
    a6 = v11;
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

void *sub_2258D9818(uint64_t a1, unint64_t a2)
{
  v3 = sub_2258D9864(a1, a2);
  sub_2258D9994(&unk_2838DAB48);
  return v3;
}

void *sub_2258D9864(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2258D9A80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2258E0FB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2258E0DC0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2258D9A80(v10, 0);
        result = sub_2258E0F70();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2258D9994(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2258D9AF4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2258D9A80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737990, &qword_2258E1CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2258D9AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737990, &qword_2258E1CB8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_2258D9BE8(uint64_t a1)
{
  sub_2258E0B70();
  sub_2258DC760(&qword_281369270, MEMORY[0x277CC9600]);
  v2 = sub_2258E0D50();

  return sub_2258D9D28(a1, v2);
}

unint64_t sub_2258D9C6C(uint64_t a1, uint64_t a2)
{
  sub_2258E10E0();
  sub_2258E0DA0();
  v4 = sub_2258E10F0();

  return sub_2258D9ED4(a1, a2, v4);
}

unint64_t sub_2258D9CE4(uint64_t a1)
{
  v2 = sub_2258E0E90();

  return sub_2258D9F8C(a1, v2);
}

unint64_t sub_2258D9D28(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2258E0B70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2258DC760(&qword_27D737988, MEMORY[0x277CC9610]);
      v16 = sub_2258E0D60();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2258D9ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2258E1070())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2258D9F8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2258E0BC0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2258E0EA0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2258DA050(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2258E0EF0();
LABEL_9:
  result = sub_2258E0FA0();
  *v2 = result;
  return result;
}

uint64_t sub_2258DA0F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
    v2 = sub_2258E1030();
    v19 = v2;
    sub_2258E0FC0();
    v3 = sub_2258E0FF0();
    if (v3)
    {
      v4 = v3;
      sub_2258E0BC0();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2258E0C70();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2258DA980(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2258E0E90();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2258E0FF0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2258DA314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2258E0B70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
  v40 = v4;
  result = sub_2258E1020();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
        swift_unknownObjectRetain();
      }

      sub_2258DC760(&qword_281369270, MEMORY[0x277CC9600]);
      result = sub_2258E0D50();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2258DA6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
  v35 = v4;
  result = sub_2258E1020();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2258E10E0();
      sub_2258E0DA0();
      result = sub_2258E10F0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2258DA980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
  result = sub_2258E1020();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2258E0E90();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2258DABE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2258E0B70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2258D9BE8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2258DAFE4();
      goto LABEL_7;
    }

    sub_2258DA314(v18, a3 & 1);
    v23 = sub_2258D9BE8(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2258DAF2C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2258E1090();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_2258DADB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2258D9C6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2258DA6DC(v16, a4 & 1);
      v11 = sub_2258D9C6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2258E1090();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2258DB264();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2258DAF2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2258E0B70();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_2258DAFE4()
{
  v1 = v0;
  v34 = sub_2258E0B70();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
  v4 = *v0;
  v5 = sub_2258E1010();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_2258DB264()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
  v2 = *v0;
  v3 = sub_2258E1010();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_2258DB3D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
  v2 = *v0;
  v3 = sub_2258E1010();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_2258DB530(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2258E0EF0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2258E0EF0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2258DC7F4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379A8, &qword_2258E1CC8);
            v9 = sub_2258DB6B0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2258DC7A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2258DB6B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA69190](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2258DB730;
  }

  __break(1u);
  return result;
}

uint64_t sub_2258DB738(void *a1)
{
  v2 = sub_2258E0B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v11 = sub_2258E0BA0();
    __swift_project_value_buffer(v11, qword_281369290);
    v12 = a1;
    v13 = sub_2258E0B80();
    v14 = sub_2258E0E80();
    if (!os_log_type_enabled(v13, v14))
    {

LABEL_40:
      return 0;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = [v12 processIdentifier];

    _os_log_impl(&dword_2258D2000, v13, v14, "Topic registrar was nil. Couldn't accept new connection to PID %d", v15, 8u);
    MEMORY[0x22AA69870](v15, -1, -1);

    return 0;
  }

  v8 = Strong;
  v9 = sub_2258E0D70();
  v10 = [a1 valueForEntitlement_];

  if (v10)
  {
    sub_2258E0EB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  aBlock = v86;
  v82 = v87;
  if (!*(&v87 + 1))
  {
    sub_2258DC6A0(&aBlock, &qword_27D737980, &qword_2258E1CA8);
LABEL_23:
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v38 = sub_2258E0BA0();
    __swift_project_value_buffer(v38, qword_281369290);
    v12 = a1;
    v39 = sub_2258E0B80();
    v40 = sub_2258E0E80();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_39;
    }

    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = [v12 processIdentifier];

    v42 = "Not accepting new connection to PID %d because the process lacks the necessary entitlement.";
    goto LABEL_27;
  }

  if (!swift_dynamicCast() || (v85 & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = [a1 serviceName];
  if (!v16)
  {
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v49 = sub_2258E0BA0();
    __swift_project_value_buffer(v49, qword_281369290);
    v12 = a1;
    v39 = sub_2258E0B80();
    v40 = sub_2258E0E80();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_39;
    }

    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = [v12 processIdentifier];

    v42 = "Incoming connection service name was nil. Couldn't accept new connection to PID %d";
LABEL_27:
    _os_log_impl(&dword_2258D2000, v39, v40, v42, v41, 8u);
    v43 = v41;
LABEL_28:
    MEMORY[0x22AA69870](v43, -1, -1);

    return 0;
  }

  v17 = v16;
  v18 = sub_2258E0D80();
  v20 = v19;

  swift_beginAccess();
  v21 = v8[3];
  if (!*(v21 + 16) || (v22 = sub_2258D9C6C(v18, v20), (v23 & 1) == 0))
  {
    swift_endAccess();
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v44 = sub_2258E0BA0();
    __swift_project_value_buffer(v44, qword_281369290);
    v12 = a1;

    v39 = sub_2258E0B80();
    v45 = sub_2258E0E80();

    if (os_log_type_enabled(v39, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&aBlock = v47;
      *v46 = 136315394;
      v48 = sub_2258D9640(v18, v20, &aBlock);

      *(v46 + 4) = v48;
      *(v46 + 12) = 1024;
      *(v46 + 14) = [v12 processIdentifier];

      _os_log_impl(&dword_2258D2000, v39, v45, "Couldn't find topic for service name %s. Not accepting new connection to PID %d", v46, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA69870](v47, -1, -1);
      v43 = v46;
      goto LABEL_28;
    }

LABEL_39:

    goto LABEL_40;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  swift_beginAccess();
  v25 = v8[2];
  v26 = v24;
  v27 = sub_2258D9004(v26, v25);
  if (!v27)
  {
    swift_endAccess();
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v62 = sub_2258E0BA0();
    __swift_project_value_buffer(v62, qword_281369290);
    v63 = v26;
    v12 = a1;

    v39 = sub_2258E0B80();
    v64 = sub_2258E0E80();

    if (os_log_type_enabled(v39, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&aBlock = v67;
      *v65 = 138412802;
      *(v65 + 4) = v63;
      *v66 = v63;
      *(v65 + 12) = 2080;
      v68 = v63;
      v69 = sub_2258D9640(v18, v20, &aBlock);

      *(v65 + 14) = v69;
      *(v65 + 22) = 1024;
      *(v65 + 24) = [v12 processIdentifier];

      _os_log_impl(&dword_2258D2000, v39, v64, "Couldn't find registration entry for topic %@ for service name %s. Not accepting new connection to PID %d", v65, 0x1Cu);
      sub_2258DC6A0(v66, &qword_27D7377E8, &qword_2258E1CB0);
      MEMORY[0x22AA69870](v66, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x22AA69870](v67, -1, -1);
      MEMORY[0x22AA69870](v65, -1, -1);

      return 0;
    }

    goto LABEL_39;
  }

  v28 = v27;
  swift_endAccess();
  sub_2258E0C30();
  swift_beginAccess();
  v29 = v8[4];
  if (!*(v29 + 16) || (v30 = sub_2258D9BE8(v6), (v31 & 1) == 0))
  {
    swift_endAccess();
    (*(v3 + 8))(v6, v2);
    if (qword_281369258 != -1)
    {
      swift_once();
    }

    v51 = sub_2258E0BA0();
    __swift_project_value_buffer(v51, qword_281369290);
    v52 = v26;
    v53 = a1;

    v54 = sub_2258E0B80();
    v55 = sub_2258E0E80();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v80 = v28;
      v58 = v57;
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v56 = 138412802;
      *(v56 + 4) = v52;
      *v58 = v52;
      *(v56 + 12) = 2080;
      v60 = v52;
      v61 = sub_2258D9640(v18, v20, &aBlock);

      *(v56 + 14) = v61;
      *(v56 + 22) = 1024;
      *(v56 + 24) = [v53 processIdentifier];

      _os_log_impl(&dword_2258D2000, v54, v55, "Couldn't find response listener for topic %@ for service name %s. Not accepting new connection to PID %d", v56, 0x1Cu);
      sub_2258DC6A0(v58, &qword_27D7377E8, &qword_2258E1CB0);
      MEMORY[0x22AA69870](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA69870](v59, -1, -1);
      MEMORY[0x22AA69870](v56, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v80 = v28;
  v32 = *(*(v29 + 56) + 8 * v30);
  swift_endAccess();
  swift_unknownObjectRetain();

  (*(v3 + 8))(v6, v2);
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v33 = sub_2258E0BA0();
  __swift_project_value_buffer(v33, qword_281369290);
  v34 = a1;
  v35 = sub_2258E0B80();
  v36 = sub_2258E0E80();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = [v34 processIdentifier];

    _os_log_impl(&dword_2258D2000, v35, v36, "Accepting new connection to PID %d", v37, 8u);
    MEMORY[0x22AA69870](v37, -1, -1);
  }

  else
  {

    v35 = v34;
  }

  type metadata accessor for ResponseListenerWrapper();
  v70 = swift_allocObject();
  *(v70 + 16) = v32;
  v71 = objc_opt_self();
  swift_unknownObjectRetain();
  v72 = [v71 interfaceWithProtocol_];
  [v34 setExportedInterface:v72];
  [v34 setExportedObject:v70];
  v73 = swift_allocObject();
  *(v73 + 16) = v34;
  v83 = sub_2258DC700;
  v84 = v73;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v82 = sub_2258D929C;
  *(&v82 + 1) = &block_descriptor;
  v74 = _Block_copy(&aBlock);
  v75 = v34;

  [v75 setInterruptionHandler:v74];
  _Block_release(v74);
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  v83 = sub_2258DC73C;
  v84 = v76;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v82 = sub_2258D929C;
  *(&v82 + 1) = &block_descriptor_19;
  v77 = _Block_copy(&aBlock);
  v78 = v75;

  [v78 setInvalidationHandler:v77];
  _Block_release(v77);
  [v78 activate];

  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_2258DC488(uint64_t a1)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v2 = sub_2258E0BA0();
  __swift_project_value_buffer(v2, qword_281369290);
  v3 = sub_2258E0B80();
  v4 = sub_2258E0E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2258D2000, v3, v4, "Internal response listener woke up!", v5, 2u);
    MEMORY[0x22AA69870](v5, -1, -1);
  }

  v6 = *(a1 + 16);

  return v6(a1);
}

uint64_t sub_2258DC580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281369258 != -1)
  {
    swift_once();
  }

  v6 = sub_2258E0BA0();
  __swift_project_value_buffer(v6, qword_281369290);
  v7 = sub_2258E0B80();
  v8 = sub_2258E0E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2258D2000, v7, v8, "Calling into client response listener to notify of received response", v9, 2u);
    MEMORY[0x22AA69870](v9, -1, -1);
  }

  [*(a2 + 16) didReceiveResponse_];
  v10 = *(a3 + 16);

  return v10(a3, 0);
}

uint64_t sub_2258DC6A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2258DC760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2258E0B70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2258DC7A8()
{
  result = qword_2813690C0;
  if (!qword_2813690C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813690C0);
  }

  return result;
}

unint64_t sub_2258DC7F4()
{
  result = qword_27D7379B0;
  if (!qword_27D7379B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7379A8, &qword_2258E1CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7379B0);
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

uint64_t ATDispatchCenter.SendError.errorDescription.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x206E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    return 0xD000000000000022;
  }

  sub_2258E0F80();

  v3 = [v1 description];
  v4 = sub_2258E0D80();
  v6 = v5;

  MEMORY[0x22AA68FB0](v4, v6);

  return 0xD000000000000020;
}

uint64_t ATDispatchCenter.SendError.errorDomain.getter()
{
  if (*v0 < 2)
  {
    return 0x65532E6F546B7341;
  }

  v2 = [*v0 domain];
  v3 = sub_2258E0D80();

  return v3;
}

id ATDispatchCenter.SendError.errorCode.getter()
{
  result = *v0;
  if (*v0 >= 2)
  {
    return [result code];
  }

  return result;
}

unint64_t ATDispatchCenter.SendError.errorUserInfo.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379D0, &qword_2258E1D10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2258E1CF0;
    *(inited + 32) = 1868983913;
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    strcpy((inited + 48), "Unknown error");
    *(inited + 62) = -4864;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379D0, &qword_2258E1D10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2258E1CF0;
    *(inited + 32) = 1868983913;
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000002258E2670;
LABEL_5:
    v4 = sub_2258DFF04(inited);
    swift_setDeallocating();
    sub_2258DC6A0(v3, &qword_27D7379D8, &qword_2258E1D18);
    return v4;
  }

  v6 = [v1 userInfo];
  v7 = sub_2258E0D40();

  return v7;
}

id sub_2258DCBF0()
{
  result = *v0;
  if (*v0 >= 2)
  {
    return [result code];
  }

  return result;
}

uint64_t sub_2258DCC10(uint64_t a1)
{
  v2 = sub_2258E0678();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2258DCC4C(uint64_t a1)
{
  v2 = sub_2258E0678();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t *sub_2258DCC90()
{
  v0 = type metadata accessor for TopicRegistrar();
  swift_allocObject();
  v10[3] = v0;
  v10[4] = &off_2838DAB90;
  v10[0] = sub_2258D8408();
  type metadata accessor for ATDispatcher();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  MEMORY[0x28223BE20](v2, v2);
  v4 = (&v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;

  v7 = sub_2258DF470(v6, v1);

  __swift_destroy_boxed_opaque_existential_0(v10);
  result = sub_2258DF6E4(v7);
  qword_2813690D0 = result;
  return result;
}

id static ATDispatchCenter.shared.getter()
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813690D0;

  return v1;
}

uint64_t ATDispatchCenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ATDispatchCenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2258DCFEC;
}

void sub_2258DCFEC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ATDispatchCenter.send(_:to:)(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2258DD098, 0, 0);
}

uint64_t sub_2258DD098()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2258DD14C;
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  return sub_2258D4714(v2, v3);
}

uint64_t sub_2258DD14C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2258DD3D0(void *a1, __int16 a2, void *aBlock, void *a4)
{
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2258DD460, 0, 0);
}

uint64_t sub_2258DD460()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 24) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2258DD514;
  v2 = *(v0 + 16);
  v3 = *(v0 + 56);

  return sub_2258D4714(v2, v3);
}

uint64_t sub_2258DD514()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2258DD6AC;
  }

  else
  {
    v2 = sub_2258DD628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2258DD628()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2258DD6AC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_2258E0B30();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ATDispatchCenter.canAsk(to:requiredCapabilities:)(__int16 a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2258DD778, 0, 0);
}

uint64_t sub_2258DD778()
{
  sub_2258E0D00();
  swift_allocObject();
  *(v0 + 24) = sub_2258E0CF0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2258DD838;
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);

  return MEMORY[0x282141380](v3, v2);
}

uint64_t sub_2258DD838(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2258DD9CC;
  }

  else
  {
    *(v4 + 50) = a1 & 1;
    v5 = sub_2258DD964;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2258DD964()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 50);

  return v1(v2);
}

uint64_t sub_2258DD9CC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2258DDBC4(__int16 a1, uint64_t a2, void *aBlock)
{
  *(v3 + 56) = a1;
  *(v3 + 16) = _Block_copy(aBlock);
  if (a2)
  {
    v5 = sub_2258E0E50();
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 24) = v5;

  return MEMORY[0x2822009F8](sub_2258DDC60, 0, 0);
}

uint64_t sub_2258DDC60()
{
  sub_2258E0D00();
  swift_allocObject();
  *(v0 + 32) = sub_2258E0CF0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2258DDD20;
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);

  return MEMORY[0x282141380](v3, v2);
}

uint64_t sub_2258DDD20(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2258DDEE4;
  }

  else
  {
    *(v4 + 58) = a1 & 1;
    v5 = sub_2258DDE4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2258DDE4C()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 16);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2258DDEE4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = sub_2258E0B30();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 16));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ATDispatchCenter.send(_:to:destinationsNotSupportingLegacyAskViaMessages:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2258DDFBC, 0, 0);
}

uint64_t sub_2258DDFBC()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 32) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(*(v0 + 32) + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2258DE070;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 48);

  return sub_2258D521C(v3, v4, v2);
}

uint64_t sub_2258DE070()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ATDispatchCenter.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2258DE18C, 0, 0);
}

uint64_t sub_2258DE18C()
{
  sub_2258E0D00();
  swift_allocObject();
  v0[7] = sub_2258E0CF0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2258DE250;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2821413B0](v6, v4, v5, v2, v3);
}

uint64_t sub_2258DE250()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2258DE3C8;
  }

  else
  {
    v2 = sub_2258DE364;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2258DE364()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2258DE3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2258DE44C()
{
  sub_2258E0D00();
  swift_allocObject();
  v0[3] = sub_2258E0CF0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2258DE508;
  v2 = v0[2];

  return MEMORY[0x2821413C0](v2);
}

uint64_t sub_2258DE508(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2258E07F0;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_2258DE634;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2258DE634()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t ATDispatchCenter.updateMessageBubble(_:responderHandle:answerChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2258DE6C0, 0, 0);
}

uint64_t sub_2258DE6C0()
{
  sub_2258E0D00();
  swift_allocObject();
  v0[6] = sub_2258E0CF0();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2258DE780;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282141398](v5, v4, v2, v3);
}

uint64_t sub_2258DE780()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2258DE8F8;
  }

  else
  {
    v2 = sub_2258DE894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2258DE894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2258DE8F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void ATDispatchCenter.register(topic:responseListener:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F0, &qword_2258E1D50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2258E1D00;
  *(v5 + 32) = a1;
  v6 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v7 = *v6;
  __swift_project_boxed_opaque_existential_0((*v6 + 48), *(*v6 + 72));
  v8 = a1;
  sub_2258D8484(v5, a2);

  if (*(*(v7 + 40) + OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses) == 1)
  {
    sub_2258D56CC();
  }
}

void ATDispatchCenter.register(topics:responseListener:)(unint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher), *(v2 + OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher + 24));
  v6 = *v5;
  __swift_project_boxed_opaque_existential_0((*v5 + 48), *(*v5 + 72));
  sub_2258D8484(a1, a2);
  if (*(*(v6 + 40) + OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses) == 1)
  {
    sub_2258D56CC();
  }
}

id ATDispatchCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATDispatchCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2258DEBBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2258E07E8;

  return v6();
}

uint64_t sub_2258DECA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2258DED8C;

  return v7();
}

uint64_t sub_2258DED8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2258DEE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_2258E0780(a3, v24 - v11, &qword_27D7379F8, &qword_2258E1ED0);
  v13 = sub_2258E0E40();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2258DC6A0(v12, &qword_27D7379F8, &qword_2258E1ED0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2258E0E30();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2258E0E20();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2258E0D90() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2258DC6A0(a3, &qword_27D7379F8, &qword_2258E1ED0);

    return v22;
  }

LABEL_8:
  sub_2258DC6A0(a3, &qword_27D7379F8, &qword_2258E1ED0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2258DF17C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2258DF274;

  return v6(a1);
}

uint64_t sub_2258DF274()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_2258DF36C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for TopicRegistrar();
  v10[4] = &off_2838DAB90;
  v10[0] = a1;
  v5 = OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseCache;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  if (MEMORY[0x277D84F90] >> 62 && sub_2258E0EF0())
  {
    sub_2258DFC38(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_undeliveredResponseIdentifierCache] = v6;
  a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_applicationIsReadyForResponses] = 0;
  sub_2258E071C(v10, &a2[OBJC_IVAR____TtC5AskTo18AppResponseHandler_topicRegistrar]);
  v9.receiver = a2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

void *sub_2258DF470(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TopicRegistrar();
  v27[3] = v4;
  v27[4] = &off_2838DAB90;
  v27[0] = a1;
  type metadata accessor for DaemonReceiver();
  v5 = swift_allocObject();
  sub_2258E0D00();

  a2[2] = sub_2258E0CA0();
  a2[3] = v5;
  sub_2258E071C(v27, (a2 + 6));
  sub_2258E071C(v27, v26);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x28223BE20](v6, v6);
  v8 = (&v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v24 = v4;
  v25 = &off_2838DAB90;
  v23[0] = v10;
  v11 = objc_allocWithZone(type metadata accessor for AppResponseHandler());
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (&v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;

  v17 = sub_2258DF36C(v16, v11);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  a2[5] = v17;
  v18 = objc_allocWithZone(ATBSActionListener);
  v19 = v17;
  v20 = [v18 initWithResponseHandler_];
  a2[4] = v20;
  [v20 startListening];

  __swift_destroy_boxed_opaque_existential_0(v27);
  return a2;
}

uint64_t *sub_2258DF6E4(uint64_t *a1)
{
  v1 = *a1;
  v13[3] = v1;
  v13[4] = &off_2838DAB70;
  v13[0] = a1;
  v2 = type metadata accessor for ATDispatchCenter();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v13, v1);
  MEMORY[0x28223BE20](v4, v4);
  v6 = (&v11 - v5);
  (*(v7 + 16))(&v11 - v5);
  v8 = *v6;
  v12[3] = v1;
  v12[4] = &off_2838DAB70;
  v12[0] = v8;
  *&v3[OBJC_IVAR____TtC5AskTo16ATDispatchCenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_2258E071C(v12, &v3[OBJC_IVAR____TtC5AskTo16ATDispatchCenter_dispatcher]);
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v9;
}

unint64_t sub_2258DF854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737998, &qword_2258E1CC0);
    v3 = sub_2258E1040();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2258D9CE4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2258DF94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7379C0, &unk_2258E1F50);
    v3 = sub_2258E1040();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2258D9C6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2258DFA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D737A08, &unk_2258E1F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379B8, &unk_2258E1CD0);
    v8 = sub_2258E1040();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2258E0780(v10, v6, &qword_27D737A08, &unk_2258E1F40);
      result = sub_2258D9BE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2258E0B70();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2258DFC38(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2258E0EF0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7378A0, &qword_2258E1BC0);
      v3 = sub_2258E0F60();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2258E0EF0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA69190](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2258E0E90();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2258D7EC0();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2258E0EA0();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_2258E0E90();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2258D7EC0();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2258E0EA0();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_2258DFF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D737A10, &unk_2258E1F60);
    v3 = sub_2258E1040();
    v4 = a1 + 32;

    while (1)
    {
      sub_2258E0780(v4, &v13, &qword_27D7379D8, &qword_2258E1D18);
      v5 = v13;
      v6 = v14;
      result = sub_2258D9C6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2258D7028(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5AskTo16ATDispatchCenterC9SendErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2258E00A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2258E00FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2258E015C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2258E018C()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2258DED8C;

  return sub_2258DDBC4(v4, v2, v3);
}

uint64_t sub_2258E0250()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2258E07E8;

  return sub_2258DEBBC(v2, v3, v4);
}

uint64_t sub_2258E0310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2258E07E8;

  return sub_2258DECA4(a1, v4, v5, v6);
}

uint64_t sub_2258E03DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2258E07E8;

  return sub_2258DF17C(a1, v4);
}

uint64_t sub_2258E0494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2258DED8C;

  return sub_2258DF17C(a1, v4);
}

uint64_t sub_2258E054C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2258E07E8;

  return sub_2258DD3D0(v2, v5, v3, v4);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2258E0678()
{
  result = qword_27D737A00;
  if (!qword_27D737A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D737A00);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2258E071C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2258E0780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2258E081C()
{
  v0 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v0, qword_281369290);
  __swift_project_value_buffer(v0, qword_281369290);
  return sub_2258E0B90();
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

uint64_t sub_2258E0934()
{
  v0 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v0, qword_2813692A8);
  __swift_project_value_buffer(v0, qword_2813692A8);
  return sub_2258E0B90();
}

uint64_t sub_2258E09E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2258E0BA0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2258E0B90();
}