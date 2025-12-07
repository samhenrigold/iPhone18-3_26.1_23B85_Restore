uint64_t sub_22B94498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B944A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B944A5C()
{
  result = qword_281416950;
  if (!qword_281416950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416950);
  }

  return result;
}

unint64_t sub_22B944AB0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22B944AC0(unint64_t result)
{
  if (result >= 5)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_22B944AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B945AC8;

  return sub_22B9407BC(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_22B944BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 185) = a5;
  *(v5 + 184) = a4;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  return MEMORY[0x2822009F8](sub_22B944BE8, 0, 0);
}

uint64_t sub_22B944BE8()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 56);
  v3 = v2[2];
  *(v0 + 64) = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    *(v0 + 144) = 0;
    *(v0 + 152) = v4;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 186) = v1 == 2;
    v6 = v2[7];
    v5 = v2[8];
    sub_22B9358B4(v2 + 4, v6);
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_22B9451C8;
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    return sub_22B97EDC0(v9, v8, v6, v5);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    *(v0 + 72) = MEMORY[0x277D84F90];
    *(v0 + 80) = v12;
    if (v12)
    {
      v13 = *(v11 + 32);
      *(v0 + 88) = v13;
      if (v12 == 1)
      {
        v14 = v13;
        swift_willThrow();

        v15 = *(v0 + 8);

        return v15();
      }

      else
      {
        v18 = *(v0 + 40);
        v19 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
        *(v0 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
        *(v0 + 104) = *(v18 + v19);
        v20 = v13;
        *(v0 + 112) = 1;
        v21 = *(v0 + 104);
        v22 = *(*(v0 + 72) + 40);
        *(v0 + 120) = v22;

        v23 = v22;

        return MEMORY[0x2822009F8](sub_22B944E30, v21, 0);
      }
    }

    else
    {
      v16 = v1 == 2;

      v17 = *(v0 + 8);

      return v17(0, v16);
    }
  }
}

uint64_t sub_22B944E30()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 104);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B944F44, 0, 0);
}

uint64_t sub_22B944F44()
{
  v24 = v0;
  v1 = (*(v0 + 40) + *(v0 + 96));
  v2 = *(*sub_22B9358B4(v1, v1[3]) + 56);
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    v5 = *(v0 + 112) + 1;
    swift_unknownObjectRetain();
    v6 = sub_22BA0FB5C();
    [v2 appendError_];
    swift_unknownObjectRelease();

    if (v5 == v4)
    {
LABEL_3:

      swift_willThrow();

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD40);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1044C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_22B97D720();
      v16 = sub_22B99153C(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v10, v11, "Encountered error setting sync date: %s", v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v17 = *(v0 + 80);
    v18 = *(v0 + 112) + 1;

    if (v18 == v17)
    {
      goto LABEL_3;
    }
  }

  v19 = *(v0 + 104);
  v20 = *(v0 + 112) + 1;
  *(v0 + 112) = v20;
  v21 = *(*(v0 + 72) + 8 * v20 + 32);
  *(v0 + 120) = v21;
  v22 = v21;

  return MEMORY[0x2822009F8](sub_22B944E30, v19, 0);
}

uint64_t sub_22B9451C8(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 187) = a2;
  *(v5 + 168) = v2;

  if (v2)
  {
    v6 = sub_22B9455F4;
  }

  else
  {
    *(v5 + 176) = a1;
    v6 = sub_22B9452F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9452F4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 136);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (*(v3 + 185))
  {
    if (*(v3 + 185) == 1)
    {
      if (*(v3 + 187))
      {

        v7 = 1;
        goto LABEL_14;
      }

      v9 = sub_22BA10C6C();

      if (v9)
      {
        v7 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 187))
    {
      v8 = sub_22BA10C6C();

      if ((v8 & 1) == 0)
      {
LABEL_11:
        v7 = *(v3 + 186);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_14:
  v10 = *(v3 + 144) + 1;
  if (v10 == *(v3 + 64))
  {
    v11 = *(v3 + 152);
    *(v3 + 72) = v11;
    v12 = *(v11 + 16);
    *(v3 + 80) = v12;
    if (v12)
    {
      v13 = *(v11 + 32);
      *(v3 + 88) = v13;
      if (v12 == 1)
      {
        v14 = v13;
        swift_willThrow();

        v15 = *(v3 + 8);

        return v15();
      }

      v24 = *(v3 + 40);
      v25 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v3 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v3 + 104) = *(v24 + v25);
      v26 = v13;
      *(v3 + 112) = 1;
      v27 = *(v3 + 104);
      v28 = *(*(v3 + 72) + 40);
      *(v3 + 120) = v28;

      v29 = v28;
      a1 = sub_22B944E30;
      a2 = v27;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v23 = *(v3 + 8);

    return v23(v6, v7);
  }

  else
  {
    *(v3 + 136) = v6;
    *(v3 + 144) = v10;
    *(v3 + 128) = v6;
    *(v3 + 186) = v7;
    v17 = (*(v3 + 56) + 40 * v10);
    v19 = v17[7];
    v18 = v17[8];
    sub_22B9358B4(v17 + 4, v19);
    v20 = swift_task_alloc();
    *(v3 + 160) = v20;
    *v20 = v3;
    v20[1] = sub_22B9451C8;
    v22 = *(v3 + 40);
    v21 = *(v3 + 48);

    return sub_22B97EDC0(v22, v21, v19, v18);
  }
}

uint64_t sub_22B9455F4()
{
  if ((*(v0 + 184) & 1) == 0)
  {

    swift_willThrow();
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 152);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, *(v0 + 152));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22B97FA40((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 168);
  v2[2] = v4 + 1;
  v6 = (v2 + 4);
  v2[v4 + 4] = v5;
  v7 = *(v0 + 144) + 1;
  if (v7 == *(v0 + 64))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 186);
    *(v0 + 72) = v2;
    v10 = v2[2];
    *(v0 + 80) = v10;
    if (v10)
    {
      v11 = *v6;
      *(v0 + 88) = *v6;
      if (v10 == 1)
      {
        v12 = v11;
        swift_willThrow();

LABEL_11:
        v13 = *(v0 + 8);

        return v13();
      }

      v22 = *(v0 + 40);
      v23 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 96) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 104) = *(v22 + v23);
      v24 = v11;
      *(v0 + 112) = 1;
      v25 = *(v0 + 104);
      v26 = *(*(v0 + 72) + 40);
      *(v0 + 120) = v26;

      v27 = v26;

      return MEMORY[0x2822009F8](sub_22B944E30, v25, 0);
    }

    else
    {

      v21 = *(v0 + 8);

      return v21(v8, v9);
    }
  }

  else
  {
    *(v0 + 144) = v7;
    *(v0 + 152) = v2;
    v15 = (*(v0 + 56) + 40 * v7);
    v17 = v15[7];
    v16 = v15[8];
    sub_22B9358B4(v15 + 4, v17);
    v18 = swift_task_alloc();
    *(v0 + 160) = v18;
    *v18 = v0;
    v18[1] = sub_22B9451C8;
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);

    return sub_22B97EDC0(v20, v19, v17, v16);
  }
}

uint64_t sub_22B9458B8()
{
  swift_unknownObjectRelease();

  sub_22B936C4C(v0 + 5);
  sub_22B936C4C(v0 + 10);
  if (v0[15])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B945918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B945AC8;

  return sub_22B941244(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

uint64_t sub_22B945A28(uint64_t a1)
{
  sub_22B945A80();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22B945A80()
{
  if (!qword_281416C10)
  {
    v0 = sub_22BA0FD8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281416C10);
    }
  }
}

uint64_t sub_22B945AD4()
{

  return sub_22B93E87C();
}

uint64_t sub_22B945B48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (xpc_activity_get_state(Strong) != 4)
    {
      sub_22B946530();
      swift_allocError();
      *v3 = 3;
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22B946530();
    swift_allocError();
    *v2 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_22B945C0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "Unexpected missing activity while deferring", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v1 = Strong;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 7104878;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = xpc_activity_copy_identifier();
      if (v8)
      {
        v9 = v8;
        sub_22BA100DC();
        free(v9);
        swift_unknownObjectRelease();
        v5 = sub_22BA1005C();
        v11 = v10;
LABEL_15:
        v16 = sub_22B99153C(v5, v11, &v21);

        *(v6 + 4) = v16;
        _os_log_impl(&dword_22B92A000, v3, v4, "Marking xpc_activity state DEFER for %s", v6, 0xCu);
        sub_22B936C4C(v7);
        MEMORY[0x23189ADD0](v7, -1, -1);
        MEMORY[0x23189ADD0](v6, -1, -1);
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v11 = 0xE300000000000000;
    goto LABEL_15;
  }

LABEL_16:

  if (xpc_activity_set_state(v1, 3))
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v18 = sub_22BA0FEDC();
  v19 = sub_22BA1044C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B92A000, v18, v19, "We did not set the state of activity to DEFER successfully", v20, 2u);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_22B945F30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "Unexpected missing activity while trying to mark DONE", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v1 = Strong;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 7104878;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = xpc_activity_copy_identifier();
      if (v8)
      {
        v9 = v8;
        sub_22BA100DC();
        free(v9);
        swift_unknownObjectRelease();
        v5 = sub_22BA1005C();
        v11 = v10;
LABEL_15:
        v16 = sub_22B99153C(v5, v11, &v31);

        *(v6 + 4) = v16;
        _os_log_impl(&dword_22B92A000, v3, v4, "Marking xpc_activity state DONE for %s", v6, 0xCu);
        sub_22B936C4C(v7);
        MEMORY[0x23189ADD0](v7, -1, -1);
        MEMORY[0x23189ADD0](v6, -1, -1);
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v11 = 0xE300000000000000;
    goto LABEL_15;
  }

LABEL_16:

  if (xpc_activity_get_state(v1) == 5)
  {

    v17 = sub_22BA0FEDC();
    v18 = sub_22BA1044C();

    if (!os_log_type_enabled(v17, v18))
    {
LABEL_29:

      goto LABEL_30;
    }

    v19 = 7104878;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = xpc_activity_copy_identifier();
      if (v22)
      {
        v23 = v22;
        sub_22BA100DC();
        free(v23);
        swift_unknownObjectRelease();
        v19 = sub_22BA1005C();
        v25 = v24;
LABEL_28:
        v30 = sub_22B99153C(v19, v25, &v31);

        *(v20 + 4) = v30;
        _os_log_impl(&dword_22B92A000, v17, v18, "Tried to mark activity %s but activity is already marked as DONE", v20, 0xCu);
        sub_22B936C4C(v21);
        MEMORY[0x23189ADD0](v21, -1, -1);
        MEMORY[0x23189ADD0](v20, -1, -1);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v25 = 0xE300000000000000;
    goto LABEL_28;
  }

  if (!xpc_activity_set_state(v1, 5))
  {
    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1044C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B92A000, v26, v27, "We did not set the state of activity to DONE successfully", v28, 2u);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_30:
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_22B9463A4()
{
  sub_22B946584(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22B94640C@<X0>(uint64_t *a2@<X8>)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a2 = v3;
  return result;
}

BOOL sub_22B9464E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  should_defer = xpc_activity_should_defer(Strong);
  swift_unknownObjectRelease();
  return should_defer;
}

unint64_t sub_22B946530()
{
  result = qword_27D8D4E10;
  if (!qword_27D8D4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4E10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCActivityError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCActivityError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B946700()
{
  result = qword_27D8D4E18;
  if (!qword_27D8D4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4E18);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SyncProgress(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22B946810(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B946844(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_22B94685C(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B946878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B9468C0(uint64_t result, int a2, int a3)
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

uint64_t sub_22B94691C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22B94693C, 0, 0);
}

uint64_t sub_22B94693C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[20] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v4 = (v1 + v3);
  v5 = sub_22B9358B4((v1 + v3), *(v1 + v3 + 24));
  v6 = *MEMORY[0x277D19BD0];
  v7 = [*(*v5 + 24) integerForKey_];
  [*(*sub_22B9358B4(v4 v4[3]) + 24)];
  if (v7 >= *v2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1046C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "First sync after restore from backup, pro actively clearing sync state", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    v16 = v0[19];

    v17 = *(v16 + 48);
    [v17 clearSyncStateForAllRecordTypes];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_22B946DD8;
    v18 = swift_continuation_init();
    v0[17] = sub_22B9349C8(&unk_27D8D4EE0, qword_22BA138F0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22BA0435C;
    v0[13] = &unk_283F52DA8;
    v0[14] = v18;
    [v17 ensureSaltIsAvailable_];
    v10 = (v0 + 2);

    return MEMORY[0x282200938](v10);
  }

  v8 = *(v0[19] + 40);
  v0[22] = v8;
  if (v8 >> 62)
  {
    v9 = sub_22BA1080C();
    v0[23] = v9;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = v9;
    if (v9)
    {
LABEL_4:
      v10 = sub_22BA102EC();
      v0[24] = v10;
      if (v9 >= 1)
      {
        v0[25] = 0;
        if ((v0[22] & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x231899FA0](0);
        }

        else
        {
          v11 = swift_unknownObjectRetain();
        }

        v0[26] = v11;
        v0[27] = sub_22BA102DC();
        v20 = sub_22BA1029C();

        return MEMORY[0x2822009F8](sub_22B947058, v20, v19);
      }

      __break(1u);
      return MEMORY[0x282200938](v10);
    }
  }

  v21 = (v0[18] + v0[20]);
  v22 = *(*sub_22B9358B4(v21, v21[3]) + 24);
  v23 = sub_22BA0A634(0xBu, 0);
  v25 = v24;

  v26 = v0[19];
  if ((v25 & 1) == 0)
  {
    v27 = *(v26 + 8);
    if (v23 >= v27)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v27 = *(v26 + 8);
  if (v27 > 0)
  {
LABEL_21:
    v28 = (v0[18] + v0[20]);
    sub_22B9358B4(v28, v28[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v29 = *(*sub_22B9358B4(v28, v28[3]) + 24);
    v30 = sub_22BA0FFCC();
    [v29 setInteger:v27 forKey:v30];
  }

LABEL_22:
  v31 = v0[1];

  return v31(0, 0);
}

uint64_t sub_22B946DD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_22B9472F0;
  }

  else
  {
    v2 = sub_22B946EE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B946EE8()
{
  v1 = (v0[18] + v0[20]);
  v2 = *(*sub_22B9358B4(v1, v1[3]) + 24);
  v3 = sub_22BA0A634(0xBu, 0);
  v5 = v4;

  v6 = v0[19];
  if (v5)
  {
    v7 = *(v6 + 8);
    if (v7 <= 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = *(v6 + 8);
  if (v3 < v7)
  {
LABEL_3:
    v8 = (v0[18] + v0[20]);
    sub_22B9358B4(v8, v8[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v9 = *(*sub_22B9358B4(v8, v8[3]) + 24);
    v10 = sub_22BA0FFCC();
    [v9 setInteger:v7 forKey:v10];
  }

LABEL_4:
  v11 = v0[1];

  return v11(0, 0);
}

uint64_t sub_22B947058()
{
  v1 = *(v0 + 208);

  [v1 resetLocalSyncStateIfAppropriate];

  return MEMORY[0x2822009F8](sub_22B9470D0, 0, 0);
}

uint64_t sub_22B9470D0()
{
  v1 = v0[25];
  v2 = v0[23];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = (v0[18] + v0[20]);
    v4 = *(*sub_22B9358B4(v3, v3[3]) + 24);
    v5 = sub_22BA0A634(0xBu, 0);
    v7 = v6;

    v8 = v0[19];
    if (v7)
    {
      v9 = *(v8 + 8);
      if (v9 <= 0)
      {
LABEL_5:
        v13 = v0[1];

        return v13(0, 0);
      }
    }

    else
    {
      v9 = *(v8 + 8);
      if (v5 >= v9)
      {
        goto LABEL_5;
      }
    }

    v10 = (v0[18] + v0[20]);
    sub_22B9358B4(v10, v10[3]);
    sub_22BA08CC8(0, 0xD000000000000013, 0x800000022BA1C4C0);
    v11 = *(*sub_22B9358B4(v10, v10[3]) + 24);
    v12 = sub_22BA0FFCC();
    [v11 setInteger:v9 forKey:v12];

    goto LABEL_5;
  }

  ++v0[25];
  if ((v0[22] & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x231899FA0]();
  }

  else
  {
    v15 = swift_unknownObjectRetain();
  }

  v0[26] = v15;
  v0[27] = sub_22BA102DC();
  v17 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B947058, v17, v16);
}

uint64_t sub_22B9472F0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22B947364()
{
  v1 = *(v0 + 24);
  sub_22B930C20(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_22B947398(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_22B947448;

  return sub_22B94691C(a1);
}

uint64_t sub_22B947448(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

__n128 sub_22B9475A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B9475BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B947604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B947664()
{
  v1 = *(v0 + 8);
  sub_22B930C20(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_22B947698(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B947BCC(a1, a2);
}

uint64_t sub_22B94774C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return sub_22B947E44(a1, a2, v7, v6);
}

uint64_t sub_22B947814(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t sub_22B947958(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947A44;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStep.swift", 102, 2);
}

uint64_t sub_22B947A44()
{

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B947B40()
{
  sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v1 = sub_22BA09CBC();
  if (v1)
  {
    [v1 sendBroadcastToClient];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B947BCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947CB8;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStep.swift", 102, 2);
}

uint64_t sub_22B947CB8()
{

  return MEMORY[0x2822009F8](sub_22B947DB4, 0, 0);
}

uint64_t sub_22B947DB4()
{
  v1 = *(*sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 56);
  if (v1)
  {
    [v1 setSyncJobStateWithState_];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B947E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_22B947E68, 0, 0);
}

uint64_t sub_22B947E68()
{
  v45 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v2)
  {
    v44[0] = 0x2E636E7973;
    v44[1] = 0xE500000000000000;
    sub_22B9358B4((v1 + 16), *(v1 + 40));
    v3 = sub_22B9B580C();
    MEMORY[0x231899730](v3);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v4 = sub_22BA10C1C();
    MEMORY[0x231899730](v4);

    v5 = sub_22BA0FFCC();

    v6 = sub_22BA0FDAC();
    [v2 syncCoordinatorWaitingForImportToFinishWithName:v5 identifier:v6];
  }

  v7 = v0[8];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = v12 == 5;
      v14 = 0x556567617373656DLL;
      if (v12 != 5)
      {
        v14 = 0x6E776F6E6B6E75;
      }

      v15 = 0xEF31566574616470;
      if (!v13)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0x656D686361747461;
      if (v11 != 3)
      {
        v16 = 0xD000000000000012;
      }

      v17 = 0x800000022BA1BA10;
      if (v11 == 3)
      {
        v17 = 0xEA0000000000746ELL;
      }

      if (v11 <= 4)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x72636E4574616863;
      if (v11 != 1)
      {
        v18 = 0xD000000000000012;
      }

      v19 = 0xEF32766465747079;
      if (v11 != 1)
      {
        v19 = 0x800000022BA1B9F0;
      }

      if (!v11)
      {
        v18 = 0xD000000000000012;
        v19 = 0x800000022BA1B9C0;
      }

      if (v11 <= 2)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (v11 <= 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22B97FB74(0, *(v10 + 2) + 1, 1, v10);
      }

      v23 = *(v10 + 2);
      v22 = *(v10 + 3);
      if (v23 >= v22 >> 1)
      {
        v10 = sub_22B97FB74((v22 > 1), v23 + 1, 1, v10);
      }

      *(v10 + 2) = v23 + 1;
      v24 = &v10[16 * v23];
      *(v24 + 4) = v20;
      *(v24 + 5) = v21;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v0[5] = v10;
  sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
  sub_22B9486FC();
  v25 = sub_22BA0FFAC();
  v27 = v26;

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v28 = sub_22BA0FEFC();
  v0[10] = sub_22B936CA8(v28, qword_28141AD10);
  swift_unknownObjectRetain();

  v29 = sub_22BA0FEDC();
  v30 = sub_22BA1046C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[6];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44[0] = v33;
    *v32 = 136315394;
    sub_22B9358B4((v31 + 16), *(v31 + 40));
    v34 = sub_22B9B580C();
    v36 = sub_22B99153C(v34, v35, v44);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_22B99153C(v25, v27, v44);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_22B92A000, v29, v30, "Import Step start for job: %s types: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v33, -1, -1);
    MEMORY[0x23189ADD0](v32, -1, -1);
  }

  else
  {
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  v38 = qword_28141AD98;
  v0[11] = qword_28141AD98;
  swift_beginAccess();
  *(v38 + 16) = MEMORY[0x277D84F98];

  v39 = swift_task_alloc();
  v0[12] = v39;
  *v39 = v0;
  v39[1] = sub_22B9483E8;
  v40 = v0[8];
  v42 = v0[6];
  v41 = v0[7];

  return sub_22B9D75F4(v42, v41, v40);
}

uint64_t sub_22B9483E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B948518, 0, 0);
  }
}

uint64_t sub_22B948518()
{
  v19 = v0;
  swift_unknownObjectRetain();
  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 48);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    sub_22B9358B4((v3 + 16), *(v3 + 40));
    v6 = sub_22B9B580C();
    v8 = sub_22B99153C(v6, v7, &v18);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;

    v10 = sub_22B9C3040(v9);
    v12 = v11;

    v13 = sub_22B99153C(v10, v12, &v18);

    *(v4 + 14) = v13;
    _os_log_impl(&dword_22B92A000, v1, v2, "Import Step summary for job: %s, %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v5, -1, -1);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v15 = sub_22B9C3254(v14);

  v16 = *(v0 + 8);

  return v16(v15, 0);
}

unint64_t sub_22B9486FC()
{
  result = qword_281414C28;
  if (!qword_281414C28)
  {
    sub_22B948760(&qword_27D8D4EF0, &qword_22BA13990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C28);
  }

  return result;
}

uint64_t sub_22B948760(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChatAutoDonation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChatAutoDonation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_22B948804(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x800000022BA1BA50;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022BA1BA50;
  }

  else
  {
    v6 = 0x800000022BA1BA70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250617461446F6ELL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000746E657365;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v4 = 0x800000022BA1BA70;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7250617461446F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000746E657365;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22B9488EC()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9489A8(uint64_t a1)
{
  sub_22BA1008C();
}

uint64_t sub_22B948A50(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B948B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B949188(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B948B38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000746E657365;
  v4 = 0x800000022BA1BA50;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000022BA1BA70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7250617461446F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22B948BB0()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B948C1C(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B948C6C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B948CF4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22BA10AAC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B948D58(uint64_t a1)
{
  v2 = sub_22B9495F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B948D94(uint64_t a1)
{
  v2 = sub_22B9495F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B948DD0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = sub_22B9349C8(&qword_27D8D4F10, &unk_22BA13A60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9495F0();
  sub_22BA10D9C();
  v31 = MEMORY[0x277D83B88];
  *&v30 = a2;
  sub_22B936C98(&v30, v29);
  v12 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v12;
  sub_22B9BAE64(v29, 29811, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v14 = v27;
  v28 = v27;
  if (a4)
  {
    sub_22B9EB6F0(25715, 0xE200000000000000, &v30);
    sub_22B949698(&v30);
  }

  else
  {
    v31 = MEMORY[0x277D84A28];
    *&v30 = a3;
    sub_22B936C98(&v30, v29);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v14;
    sub_22B9BAE64(v29, 25715, 0xE200000000000000, v15);
    v28 = v27;
  }

  v16 = objc_opt_self();
  v17 = sub_22BA0FF5C();

  *&v30 = 0;
  v18 = [v16 dataWithPropertyList:v17 format:200 options:0 error:&v30];

  v19 = v30;
  v20 = v8;
  if (v18)
  {
    v21 = sub_22BA0FCAC();
    v23 = v22;

    sub_22BA0FC9C();
    sub_22BA10BCC();
    (*(v9 + 8))(v11, v8);
    sub_22B9359BC(v21, v23);
  }

  else
  {
    v25 = v19;
    sub_22BA0FB6C();

    swift_willThrow();
    return (*(v9 + 8))(v11, v20);
  }
}

char *sub_22B9490F0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22B9491D4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_22B949144(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_22B949188(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

char *sub_22B9491D4(void *a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = sub_22B9349C8(&qword_27D8D4EF8, &unk_22BA13A50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-1] - v6;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9495F0();
  sub_22BA10D8C();
  if (v1)
  {
    goto LABEL_15;
  }

  sub_22B9363C8();
  sub_22BA10B3C();
  v9 = v24[0];
  v8 = v24[1];
  v10 = objc_opt_self();
  v2 = sub_22BA0FC8C();
  v23[0] = 0;
  v11 = [v10 propertyListWithData:v2 options:0 format:0 error:v23];

  v12 = v23[0];
  if (!v11)
  {
    v18 = v12;
    sub_22BA0FB6C();

    swift_willThrow();
LABEL_14:
    swift_willThrow();
    sub_22B9359BC(v9, v8);
    (*(v5 + 8))(v7, v4);
    goto LABEL_15;
  }

  sub_22BA107AC();
  swift_unknownObjectRelease();
  sub_22B936B20(v24, v23);
  sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
  v2 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22B949644();
    swift_allocError();
    v20 = 1;
LABEL_13:
    *v19 = v20;
    swift_willThrow();
    sub_22B936C4C(v24);
    goto LABEL_14;
  }

  v13 = v22;
  if (!v22[2] || (v14 = sub_22B990A58(29811, 0xE200000000000000), (v15 & 1) == 0) || (sub_22B936B20(v13[7] + 32 * v14, v23), (swift_dynamicCast() & 1) == 0))
  {

    sub_22B949644();
    swift_allocError();
    v20 = 2;
    goto LABEL_13;
  }

  v2 = v22;
  if (v13[2] && (v16 = sub_22B990A58(25715, 0xE200000000000000), (v17 & 1) != 0))
  {
    sub_22B936B20(v13[7] + 32 * v16, v23);
    sub_22B9359BC(v9, v8);
    sub_22B936C4C(v24);
    (*(v5 + 8))(v7, v4);

    swift_dynamicCast();
  }

  else
  {
    sub_22B9359BC(v9, v8);

    sub_22B936C4C(v24);
    (*(v5 + 8))(v7, v4);
  }

LABEL_15:
  sub_22B936C4C(a1);
  return v2;
}

unint64_t sub_22B9495F0()
{
  result = qword_2814158F0[0];
  if (!qword_2814158F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814158F0);
  }

  return result;
}

unint64_t sub_22B949644()
{
  result = qword_27D8D4F08;
  if (!qword_27D8D4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F08);
  }

  return result;
}

uint64_t sub_22B949698(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChatAutoDonation.DecodingErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChatAutoDonation.DecodingErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B949864()
{
  result = qword_27D8D4F18;
  if (!qword_27D8D4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F18);
  }

  return result;
}

unint64_t sub_22B9498BC()
{
  result = qword_27D8D4F20;
  if (!qword_27D8D4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F20);
  }

  return result;
}

unint64_t sub_22B949914()
{
  result = qword_2814158E0;
  if (!qword_2814158E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158E0);
  }

  return result;
}

unint64_t sub_22B94996C()
{
  result = qword_2814158E8;
  if (!qword_2814158E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158E8);
  }

  return result;
}

__n128 sub_22B9499C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22B9499EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B949A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B949AA0(unint64_t a1, void *a2)
{
  v30 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = a1;
    v28 = a1 + 32;
    v23 = MEMORY[0x277D84F90];
    v24 = a1 & 0xC000000000000001;
    v26 = a2;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = v3;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x231899FA0](v4, v22);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v28 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;

      v10 = [v7 recordID];
      v11 = v10;
      if ((v9 & 0xC000000000000001) == 0)
      {
        if (*(v9 + 16))
        {
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
          v14 = sub_22BA1071C();
          v15 = -1 << *(v9 + 32);
          v16 = v14 & ~v15;
          if ((*(v9 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = *(*(v9 + 48) + 8 * v16);
              v19 = sub_22BA1072C();

              if (v19)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v9 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v3 = v25;
            a2 = v26;
            v5 = v24;
            v6 = v27;
            goto LABEL_5;
          }
        }

LABEL_18:

        v3 = v25;
        a2 = v26;
        v5 = v24;
        v6 = v27;
LABEL_19:
        sub_22B9FF448(&v29, [v7 recordID]);

        MEMORY[0x231899830]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22BA1022C();
          v6 = v27;
        }

        a1 = sub_22BA1026C();
        v23 = v30;
        goto LABEL_5;
      }

      v12 = v10;
      v13 = sub_22BA1083C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = a1;
    v3 = sub_22BA1080C();
    a1 = v20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22B949D8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B949DB0, 0, 0);
}

uint64_t sub_22B949DB0()
{
  v1 = sub_22B9358B4((v0[4] + 24), *(v0[4] + 48));
  sub_22B9ECD18(*(v1 + 16));
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B949EA8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B949EA8()
{

  return MEMORY[0x2822009F8](sub_22B949FA4, 0, 0);
}

uint64_t sub_22B949FA4()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  sub_22B9358B4(v1 + 8, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22B94A0D4;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_22B94A0D4()
{

  return MEMORY[0x2822009F8](sub_22B94A1D0, 0, 0);
}

uint64_t sub_22B94A1D0()
{
  v1 = v0[2];
  sub_22B94A5B8();
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[7] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  if ([*(*sub_22B9358B4((v1 + v2) *(v1 + v2 + 24)) + 24)] <= 0)
  {
    v8 = v0[2];
    v9 = v0[3];
    v10 = *(v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_22B94A3DC;
    v13 = v0[2];
    v12 = v0[3];

    return sub_22B9E923C(v13, v12, v10, v8, v9, 0, 0, 1);
  }

  else
  {
    v3 = (v0[2] + v0[7]);
    v4 = sub_22B9358B4(v3, v3[3]);
    v5 = *(*v4 + 56);
    v6 = v0[2];
    if (v5)
    {
      [*(*v4 + 56) startChanges];

      sub_22B951454(v7, v6);

      [v5 commitChanges];
    }

    else
    {

      sub_22B951454(v15, v6);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22B94A3DC()
{

  return MEMORY[0x2822009F8](sub_22B94A4D8, 0, 0);
}

uint64_t sub_22B94A4D8()
{
  v1 = (v0[2] + v0[7]);
  v2 = sub_22B9358B4(v1, v1[3]);
  v3 = *(*v2 + 56);
  v4 = v0[2];
  if (v3)
  {
    [*(*v2 + 56) startChanges];

    sub_22B951454(v5, v4);

    [v3 commitChanges];
  }

  else
  {

    sub_22B951454(v6, v4);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B94A5B8()
{
  result = sub_22B9BC494();
  if (result)
  {
    v2 = (v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    v3 = sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v4 = *MEMORY[0x277D19AB0];
    result = [*(*v3 + 24) integerForKey_];
    if (result <= 0)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v5 = sub_22BA0FEFC();
      sub_22B936CA8(v5, qword_28141AD40);
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1046C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_22B92A000, v6, v7, "User finished first full sync, and did not have a marker for first restore, setting marker", v8, 2u);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      v9 = *(*sub_22B9358B4(v2, v2[3]) + 24);

      return [v9 setInteger:1 forKey:v4];
    }
  }

  return result;
}

void sub_22B94A730(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
      v6 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v7 = sub_22BA0FFCC();
      v8 = [v6 objectForKey_];

      if (!v8)
      {
        v30 = 0u;
        v31 = 0u;
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
        return;
      }

      sub_22BA107AC();
      swift_unknownObjectRelease();
      sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      v9 = sub_22BA0FFFC();
      v11 = v10;
      v12 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v13 = sub_22BA0FFCC();
      v14 = [v12 objectForKey_];

      if (v14)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        if (swift_dynamicCast())
        {

          v9 = v26;
          v11 = v27;
        }
      }

      else
      {
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      }

      v15 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v16 = sub_22BA0FFCC();
      v17 = [v15 objectForKey_];

      if (v17)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v18 = [v26 integerValue];

LABEL_20:
          sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          *(inited + 32) = sub_22BA0FFFC();
          *(inited + 40) = v20;
          *&v30 = 0;
          *(&v30 + 1) = 0xE000000000000000;
          sub_22BA108FC();
          MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1C740);
          v21 = sub_22BA10C1C();
          MEMORY[0x231899730](v21);

          MEMORY[0x231899730](8250, 0xE200000000000000);
          MEMORY[0x231899730](v9, v11);
          MEMORY[0x231899730](0xD000000000000026, 0x800000022BA1C760);
          v22 = v30;
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 48) = v22;
          sub_22B9BBA8C(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
          v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v24 = sub_22BA0FFCC();

          v25 = sub_22BA0FF5C();

          [v23 initWithDomain:v24 code:v18 userInfo:v25];

          swift_willThrow();
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      }

      v18 = 1;
      goto LABEL_20;
    }
  }
}

uint64_t sub_22B94AC34(uint64_t a1, uint64_t a2)
{
  v3[118] = v2;
  v3[117] = a2;
  v3[116] = a1;
  sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v3[119] = swift_task_alloc();
  v4 = sub_22B9349C8(&unk_27D8D53D0, &qword_22BA13DB8);
  v3[120] = v4;
  v3[121] = *(v4 - 8);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v5 = sub_22B9349C8(&qword_27D8D4F28, &qword_22BA13DC0);
  v3[124] = v5;
  v3[125] = *(v5 - 8);
  v3[126] = swift_task_alloc();
  v6 = sub_22B9349C8(&unk_27D8D53E0, &unk_22BA13DC8);
  v3[127] = v6;
  v3[128] = *(v6 - 8);
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B94AE34, 0, 0);
}

uint64_t sub_22B94AE34()
{
  v22 = v0;
  v1 = sub_22B9358B4((v0[118] + 24), *(v0[118] + 48));
  v2 = sub_22BA082E0(*(v1 + 16));
  v4 = v3;
  v0[132] = v2;
  v0[133] = v3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v5 = sub_22BA0FEFC();
  v0[134] = sub_22B936CA8(v5, qword_28141AD40);

  swift_unknownObjectRetain();
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_22B99153C(v2, v4, &v21);
    *(v8 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B951A00(&qword_281416BE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_22BA10C1C();
    v12 = sub_22B99153C(v10, v11, &v21);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_22B92A000, v6, v7, "Starting write to %s (%s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  v13 = v0[118];
  v14 = v13[11];
  v15 = v13[12];
  sub_22B9358B4(v13 + 8, v14);
  v16 = *v13;
  v17 = v13[2];
  v20 = (*(v15 + 16) + **(v15 + 16));
  v18 = swift_task_alloc();
  v0[135] = v18;
  *v18 = v0;
  v18[1] = sub_22B94B15C;

  return v20(v16, v17, v14, v15);
}

uint64_t sub_22B94B15C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[136] = a1;
  v5[137] = v2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v5[138] = a2;

    return MEMORY[0x2822009F8](sub_22B94B318, 0, 0);
  }
}

uint64_t sub_22B94B318()
{
  v86 = v0;
  v1 = v0;
  v2 = v0[136];

  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v80 = v2;

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v0[139] = MEMORY[0x277D84F98];
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v13);
    ++v11;
    if (v6)
    {
      while (1)
      {
        v14 = *(v80 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v6))));
        v82 = *(v14 + 8);
        v15 = *v14;

        v16 = [v15 recordID];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v12;
        v8 = sub_22B990B14(v16);
        v18 = v12[2];
        v19 = (v9 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          break;
        }

        v22 = v9;
        if (v12[3] >= v21)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v26 = v8;
            sub_22B9EC3D4();
            v8 = v26;
            v12 = v85[0];
          }
        }

        else
        {
          sub_22B9D9050(v21, isUniquelyReferenced_nonNull_native);
          v12 = v85[0];
          v8 = sub_22B990B14(v16);
          if ((v22 & 1) != (v23 & 1))
          {
            sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

            return sub_22BA10CBC();
          }
        }

        v6 &= v6 - 1;
        v1 = v0;
        if (v22)
        {
          *(v12[7] + 8 * v8) = v82;

          v11 = v13;
          v0[139] = v12;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v12[(v8 >> 6) + 8] |= 1 << v8;
          *(v12[6] + 8 * v8) = v16;
          *(v12[7] + 8 * v8) = v82;

          v24 = v12[2];
          v20 = __OFADD__(v24, 1);
          v25 = v24 + 1;
          if (v20)
          {
            goto LABEL_35;
          }

          v12[2] = v25;
          v11 = v13;
          v0[139] = v12;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v11;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return MEMORY[0x2822009F8](v8, v9, v10);
    }
  }

  v27 = v1[136];

  v28 = *(v27 + 16);
  v1[140] = v28;
  if (v28)
  {
    v73 = v1 + 71;
    v74 = v1 + 809;
    v29 = v1[136];
    v75 = v1[131];
    v76 = v1[130];
    v30 = v1[128];
    v31 = v1[127];
    v32 = v1[125];
    v71 = v1[126];
    v72 = v1[124];
    v77 = v1[129];
    v78 = v1[123];
    v79 = v1[121];
    v81 = v1[120];
    v83 = v1[122];
    v33 = v1;
    v34 = v1[118];
    v35 = v33[117];
    v36 = v33[116];
    v37 = sub_22B9358B4((v34 + 24), *(v34 + 48));
    v38 = sub_22B94F2C4(v29);

    v39 = *v37;
    v40 = *(v37 + 2);
    *(v33 + 30) = *(v37 + 1);
    *(v33 + 31) = v40;
    *(v33 + 29) = v39;
    v41 = *(v37 + 3);
    v42 = *(v37 + 4);
    v43 = *(v37 + 5);
    v33[70] = v37[12];
    *(v33 + 33) = v42;
    *(v33 + 34) = v43;
    *(v33 + 32) = v41;
    v44 = sub_22B95064C(v36, v35, v38);
    v33[141] = v44;

    v45 = sub_22B9358B4((v34 + 24), *(v34 + 48));
    v46 = *v45;
    v47 = *(v45 + 2);
    *(v33 + 17) = *(v45 + 1);
    *(v33 + 18) = v47;
    *(v33 + 16) = v46;
    v48 = *(v45 + 3);
    v49 = *(v45 + 4);
    v50 = *(v45 + 5);
    v33[44] = v45[12];
    *(v33 + 20) = v49;
    *(v33 + 21) = v50;
    *(v33 + 19) = v48;
    v33[74] = &type metadata for SyncZoneInfo;
    v33[75] = &off_283F57268;
    v51 = swift_allocObject();
    v33[71] = v51;
    memmove((v51 + 16), v45, 0x68uLL);
    *(v33 + 809) = 0;
    v52 = swift_task_alloc();
    *(v52 + 16) = v44;
    *(v52 + 24) = 0;
    *(v52 + 32) = v74;
    *(v52 + 40) = v36;
    *(v52 + 48) = v35;
    *(v52 + 56) = v73;
    (*(v32 + 104))(v71, *MEMORY[0x277D858A0], v72);
    sub_22B951748((v33 + 32), (v33 + 45));
    sub_22BA1035C();

    (*(v30 + 32))(v76, v75, v31);
    sub_22B936C4C(v73);
    (*(v30 + 16))(v77, v76, v31);
    sub_22B95194C(&qword_281414C10, &unk_27D8D53E0, &unk_22BA13DC8, MEMORY[0x277D858E0]);
    sub_22BA1032C();
    (*(v79 + 32))(v83, v78, v81);
    (*(v30 + 8))(v76, v31);
    v8 = sub_22B94BD94;
    *(v33 + 151) = 0u;
    *(v33 + 153) = 0u;
    v9 = 0;
    v10 = 0;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  swift_unknownObjectRetain();
  v53 = sub_22BA0FEDC();
  v54 = sub_22BA1046C();

  swift_unknownObjectRelease();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v1[133];
  if (v55)
  {
    v57 = v1[132];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v85[0] = v59;
    *v58 = 136315394;
    v60 = sub_22B99153C(v57, v56, v85);

    *(v58 + 4) = v60;
    *(v58 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B951A00(&qword_281416BE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v61 = sub_22BA10C1C();
    v63 = sub_22B99153C(v61, v62, v85);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_22B92A000, v53, v54, "Nothing more to sync for %s (%s)", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v59, -1, -1);
    MEMORY[0x23189ADD0](v58, -1, -1);
  }

  else
  {
  }

  v64 = v1[118];
  v65 = v64[11];
  v66 = v64[12];
  sub_22B9358B4(v64 + 8, v65);
  v84 = (*(v66 + 8) + **(v66 + 8));
  v67 = swift_task_alloc();
  v1[142] = v67;
  *v67 = v1;
  v67[1] = sub_22B94BB9C;
  v68 = v1[117];
  v69 = v1[116];

  return v84(v69, v68, v65, v66);
}

uint64_t sub_22B94BB9C()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 1120) != 0;

  v3 = *(v5 + 8);

  return v3(0, v2);
}

uint64_t sub_22B94BD94()
{
  swift_beginAccess();
  v1 = sub_22B95194C(&qword_281414C20, &unk_27D8D53D0, &qword_22BA13DB8, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  *(v0 + 1144) = v2;
  *v2 = v0;
  v2[1] = sub_22B94BE80;
  v3 = *(v0 + 960);

  return MEMORY[0x282200308](v0 + 792, v3, v1);
}

uint64_t sub_22B94BE80()
{
  v2 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v3 = sub_22B94C84C;
  }

  else
  {
    swift_endAccess();
    *(v2 + 1160) = *(v2 + 792);
    *(v2 + 1168) = *(v2 + 800);
    *(v2 + 810) = *(v2 + 808);
    v3 = sub_22B94BFB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B94BFB4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v100 = v3;
  v4 = *(v3 + 810);
  if (v4 > 0xFD)
  {
    v5 = *(v3 + 976);
    v6 = *(v3 + 968);
    v7 = *(v3 + 960);

    (*(v6 + 8))(v5, v7);
    v8 = *(v3 + 1232);
    *(v3 + 1312) = v8;
    v9 = *(v3 + 944);
    sub_22B95186C(v9, v3 + 16);
    sub_22B95186C(v9, v3 + 136);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1046C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v3 + 1208);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v99 = v14;
      *v13 = 136315906;
      v15 = sub_22B9358B4((v3 + 40), *(v3 + 64));
      v16 = sub_22BA082E0(*(v15 + 16));
      v18 = v17;
      sub_22B9518A4(v3 + 16);
      v19 = sub_22B99153C(v16, v18, &v99);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v12;
      *(v13 + 22) = 2080;
      v20 = sub_22B9358B4((v3 + 160), *(v3 + 184));
      v21 = sub_22BA082E0(*(v20 + 16));
      v23 = v22;
      sub_22B9518A4(v3 + 136);
      v24 = sub_22B99153C(v21, v23, &v99);

      *(v13 + 24) = v24;
      *(v13 + 32) = 2048;
      *(v13 + 34) = v8;
      _os_log_impl(&dword_22B92A000, v10, v11, "%s: %lld records %s written, %lld failures", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    else
    {

      sub_22B9518A4(v3 + 136);
      sub_22B9518A4(v3 + 16);
    }

    v51 = *(v3 + 944);
    v52 = *(*(v3 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v3 + 1320) = v52;
    v53 = sub_22B9358B4((v51 + 24), *(v51 + 48));
    *(v3 + 811) = sub_22BA08430(*(v53 + 16));
    a1 = sub_22B94E718;
    a2 = v52;
    goto LABEL_13;
  }

  if (v4 > 0x3F)
  {
    sub_22B9518D4(*(v3 + 1160), *(v3 + 1168), *(v3 + 810));
LABEL_12:
    a1 = sub_22B94BD94;
    a2 = 0;
    goto LABEL_13;
  }

  if (v4)
  {
    v25 = *(v3 + 1168);
    v26 = *(v3 + 1160);
    v27 = *(*sub_22B9358B4((*(v3 + 928) + 16), *(*(v3 + 928) + 40)) + 24);
    sub_22B95190C(v26, v25, v4);
    v28 = v26;
    v29 = v25;
    swift_unknownObjectRetain();
    v30 = sub_22BA0FB5C();
    v31 = [v27 wasQuotaExceededInError_];

    swift_unknownObjectRelease();
    if (v31)
    {
      v32 = v28;
      v33 = v25;
      v34 = sub_22BA0FEDC();
      v35 = sub_22BA1044C();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v3 + 810);
      v38 = *(v3 + 1168);
      v39 = *(v3 + 1160);
      if (v36)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v99 = v41;
        *v40 = 136315138;
        v97 = v38;
        v42 = [v32 recordName];
        v96 = v37;
        v43 = sub_22BA0FFFC();
        v95 = v39;
        v44 = v32;
        v46 = v45;

        v47 = sub_22B99153C(v43, v46, &v99);
        v32 = v44;

        *(v40 + 4) = v47;
        _os_log_impl(&dword_22B92A000, v34, v35, "Record %s failed to write because Quota Exceeded", v40, 0xCu);
        sub_22B936C4C(v41);
        MEMORY[0x23189ADD0](v41, -1, -1);
        MEMORY[0x23189ADD0](v40, -1, -1);

        sub_22B9518D4(v95, v97, v96);
        v48 = v95;
        v49 = v97;
        v50 = v96;
      }

      else
      {

        sub_22B9518D4(v39, v38, v37);
        v48 = v39;
        v49 = v38;
        v50 = v37;
      }

      sub_22B9518D4(v48, v49, v50);
      v87 = *(v3 + 1232);
      v88 = v87 + 1;
      if (!__OFADD__(v87, 1))
      {
        v89 = *(v3 + 1224);
        if (!v89)
        {
          v90 = v25;
          v89 = *(v3 + 1168);
        }

        *(v3 + 1224) = v89;
        *(v3 + 1232) = v88;
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    v66 = *(v3 + 928);

    v67 = *(*sub_22B9358B4((v66 + 16), *(v66 + 40)) + 24);
    v68 = v28;
    v69 = v25;
    swift_unknownObjectRetain();
    v70 = sub_22BA0FB5C();
    v71 = [v67 wasRecordSizeFailure_];

    a1 = swift_unknownObjectRelease();
    if (v71)
    {
      if (*(*(v3 + 1112) + 16))
      {
        v72 = v68;
        v73 = sub_22B990B14(v72);
        if (v74)
        {
          v75 = *(*(*(v3 + 1112) + 56) + 8 * v73);
          *(v3 + 1360) = v75;
          v76 = v72;
          v77 = sub_22BA0FEDC();
          v78 = sub_22BA1044C();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v99 = v80;
            *v79 = 136315394;
            v81 = [v76 recordName];
            v82 = sub_22BA0FFFC();
            v84 = v83;

            v85 = sub_22B99153C(v82, v84, &v99);

            *(v79 + 4) = v85;
            *(v79 + 12) = 2048;
            *(v79 + 14) = v75;
            _os_log_impl(&dword_22B92A000, v77, v78, "Record %s exceeded maximum payload size, had size: %ld bytes", v79, 0x16u);
            sub_22B936C4C(v80);
            MEMORY[0x23189ADD0](v80, -1, -1);
            MEMORY[0x23189ADD0](v79, -1, -1);
          }

          a2 = *(*(v3 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
          *(v3 + 1368) = a2;
          v86 = sub_22B94F130;
          goto LABEL_35;
        }
      }
    }

    else
    {

      v91 = v68;
      a1 = v25;
    }

    v92 = *(v3 + 1232);
    *(v3 + 1240) = v92 + 1;
    if (__OFADD__(v92, 1))
    {
LABEL_38:
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v93 = *(v3 + 928);
    v94 = *(v3 + 1168);
    a2 = *(v93 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v3 + 1248) = a2;
    v86 = sub_22B94D1D4;
LABEL_35:
    a1 = v86;
LABEL_13:
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v54 = *(v3 + 1216);
  v55 = *(v3 + 1160);
  *(v3 + 1176) = v54 + 1;
  if (__OFADD__(v54, 1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v56 = *(v3 + 1168);
  v57 = *(v3 + 944);
  v58 = v57[11];
  v59 = v57[12];
  sub_22B9358B4(v57 + 8, v58);
  sub_22B951920(v55, v56, v4);
  v60 = [v55 recordID];
  *(v3 + 1184) = v60;
  v98 = (*(v59 + 24) + **(v59 + 24));
  v61 = swift_task_alloc();
  *(v3 + 1192) = v61;
  *v61 = v3;
  v61[1] = sub_22B94CDF0;
  v62 = *(v3 + 1160);
  v63 = *(v3 + 936);
  v64 = *(v3 + 928);

  return v98(v64, v63, v60, v62, 0, v58, v59);
}

uint64_t sub_22B94C84C()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B94C8C0, 0, 0);
}

uint64_t sub_22B94C8C0()
{
  *(v0 + 880) = *(v0 + 1152);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B94C950, 0, 0);
}

uint64_t sub_22B94C950()
{
  v1 = *(v0 + 1152);
  *(v0 + 1280) = *(v0 + 1232);
  *(v0 + 1272) = v1;
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v29 = *(v0 + 928);
  (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
  v4 = *(sub_22B9358B4((v3 + 24), *(v3 + 48)) + 16);
  v5 = sub_22BA1030C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v29;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v2, &unk_22BA13DE0, v6);

  v7 = v1;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1044C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B92A000, v8, v9, "Error handling batch completion with error %@", v10, 0xCu);
    sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v10, -1, -1);
  }

  v14 = *(v0 + 928);

  sub_22B9358B4((v14 + 16), *(v14 + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v14) = sub_22B9819E8(v1);
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1056);
    v17 = *(v0 + 944);
    sub_22BA108FC();

    MEMORY[0x231899730](v16, v15);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v18 = sub_22B958118(*(v0 + 656), *(v0 + 664));
    MEMORY[0x231899730](v18);

    sub_22B975FD8(8, v1, 0xD000000000000026, 0x800000022BA1C620);

    v19 = v17[11];
    v20 = v17[12];
    sub_22B9358B4(v17 + 8, v19);
    v21 = *(v20 + 32);
    v22 = v1;
    v28 = (v21 + *v21);
    v23 = swift_task_alloc();
    *(v0 + 1288) = v23;
    *v23 = v0;
    v23[1] = sub_22B94E0D4;
    v24 = *(v0 + 936);
    v25 = *(v0 + 928);

    return v28(v25, v24, v1, 1, v19, v20);
  }

  else
  {

    v27 = swift_task_alloc();
    *(v0 + 1304) = v27;
    *v27 = v0;
    v27[1] = sub_22B94E208;

    return sub_22B97D504(v1);
  }
}

uint64_t sub_22B94CDF0()
{
  v2 = *v1;
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v3 = sub_22B94CF98;
  }

  else
  {

    v3 = sub_22B94CF0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B94CF0C()
{
  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  v1 = *(v0 + 1176);
  *(v0 + 1216) = v1;
  *(v0 + 1208) = v1;

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94CF98()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 810);

  sub_22B95190C(v3, v2, v4);
  v5 = v1;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1044C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 810);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1160);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2112;
    v17 = [v12 recordID];
    sub_22B9518D4(v12, v11, v10);
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_22B92A000, v6, v7, "Error handling record save: %@ for record ID: %@", v13, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);

    sub_22B9518D4(v12, v11, v10);
  }

  else
  {

    sub_22B9518D4(v12, v11, v10);
    sub_22B9518D4(v12, v11, v10);
  }

  sub_22B9518D4(*(v0 + 1160), *(v0 + 1168), *(v0 + 810));
  v18 = *(v0 + 1176);
  *(v0 + 1216) = v18;
  *(v0 + 1208) = v18;

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94D1D4()
{
  v1 = *(v0 + 1248);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v1 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 1168);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 184) = v2;
  swift_endAccess();
  v7 = v6;

  return MEMORY[0x2822009F8](sub_22B94D2E8, 0, 0);
}

char *sub_22B94D2E8()
{
  sub_22B9358B4((*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v1 = sub_22BA09CBC();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = sub_22BA0FB5C();
    [v2 appendError_];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 1168);
  sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v4) = sub_22B9819E8(v4);
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(*sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40)) + 24);
  swift_unknownObjectRetain();
  v6 = sub_22BA0FB5C();
  v7 = [v5 isCKErrorPartialFailure_];

  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = *(*sub_22B9358B4((*(v0 + 928) + 16), *(*(v0 + 928) + 40)) + 24);
    swift_unknownObjectRetain();
    v9 = sub_22BA0FB5C();
    v10 = [v8 errorsFromPartialFailure_];
    swift_unknownObjectRelease();

    if (v10)
    {
      v11 = sub_22BA101FC();

      v12 = sub_22B950540(v11);

      if (v12)
      {
        if (v12 >> 62)
        {
          v13 = sub_22BA1080C();
          if (v13)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
LABEL_9:
            v14 = (v0 + 904);
            *(v0 + 904) = MEMORY[0x277D84F90];
            result = sub_22B968100(0, v13 & ~(v13 >> 63), 0);
            if (v13 < 0)
            {
              __break(1u);
              return result;
            }

            v16 = *v14;
            v59 = v12;
            if ((v12 & 0xC000000000000001) != 0)
            {
              v17 = 0;
              do
              {
                MEMORY[0x231899FA0](v17, v59);
                v18 = sub_22B94F4DC();
                v20 = v19;
                swift_unknownObjectRelease();
                *v14 = v16;
                v22 = *(v16 + 16);
                v21 = *(v16 + 24);
                if (v22 >= v21 >> 1)
                {
                  sub_22B968100((v21 > 1), v22 + 1, 1);
                  v16 = *v14;
                }

                ++v17;
                *(v16 + 16) = v22 + 1;
                v23 = v16 + 16 * v22;
                *(v23 + 32) = v18;
                *(v23 + 40) = v20;
              }

              while (v13 != v17);
            }

            else
            {
              v40 = (v12 + 32);
              do
              {
                v41 = *v40;
                v42 = sub_22B94F4DC();
                v44 = v43;

                *v14 = v16;
                v46 = *(v16 + 16);
                v45 = *(v16 + 24);
                if (v46 >= v45 >> 1)
                {
                  sub_22B968100((v45 > 1), v46 + 1, 1);
                  v16 = *v14;
                }

                *(v16 + 16) = v46 + 1;
                v47 = v16 + 16 * v46;
                *(v47 + 32) = v42;
                *(v47 + 40) = v44;
                ++v40;
                --v13;
              }

              while (v13);
            }

LABEL_28:
            v48 = sub_22BA0197C(v16);

            v49 = *(v48 + 16);
            if (v49)
            {
              v50 = sub_22B9801C4(*(v48 + 16), 0);
              v51 = sub_22B954698((v0 + 608), v50 + 4, v49, v48);
              v52 = *(v0 + 608);

              sub_22B951944(v52);
              if (v51 == v49)
              {
LABEL_32:
                v53 = *(v0 + 1152);
                *(v0 + 912) = v50;
                sub_22B950864((v0 + 912));
                if (v53)
                {
                }

                v24 = (v0 + 848);
                v54 = *(v0 + 1064);
                v55 = *(v0 + 1056);

                v27 = (v0 + 856);
                *(v0 + 920) = *(v0 + 912);
                sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
                sub_22B95194C(&qword_281414C28, &qword_27D8D4EF0, &qword_22BA13990, MEMORY[0x277D83958]);
                v56 = sub_22BA0FFAC();

                *(v0 + 864) = 0;
                *(v0 + 872) = 0xE000000000000000;
                sub_22BA108FC();
                v57 = *(v0 + 872);
                *(v0 + 848) = *(v0 + 864);
                *(v0 + 856) = v57;
                MEMORY[0x231899730](0xD00000000000001DLL, 0x800000022BA1C650);
                MEMORY[0x231899730](v55, v54);
                MEMORY[0x231899730](0xD000000000000018, 0x800000022BA1C670);
                v28 = v56;
                goto LABEL_17;
              }

              __break(1u);
            }

            v50 = MEMORY[0x277D84F90];
            goto LABEL_32;
          }
        }

        v16 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }
  }

  v24 = (v0 + 816);
  v25 = *(v0 + 1064);
  v26 = *(v0 + 1056);
  v27 = (v0 + 824);
  *(v0 + 832) = 0;
  *(v0 + 840) = 0xE000000000000000;
  sub_22BA108FC();

  *(v0 + 816) = 0xD00000000000001DLL;
  *(v0 + 824) = 0x800000022BA1C650;
  MEMORY[0x231899730](v26, v25);
  MEMORY[0x231899730](8250, 0xE200000000000000);
  swift_getErrorValue();
  v28 = sub_22B958118(*(v0 + 752), *(v0 + 760));
LABEL_17:
  MEMORY[0x231899730](v28);

  sub_22B975FD8(8, *(v0 + 1168), *v24, *v27);

LABEL_18:
  v29 = *(v0 + 1168);
  v30 = *(v0 + 1160);
  v31 = *(v0 + 944);
  v32 = v31[11];
  v33 = v31[12];
  sub_22B9358B4(v31 + 8, v32);
  v34 = *(v33 + 24);
  v35 = v29;
  v58 = (v34 + *v34);
  v36 = swift_task_alloc();
  *(v0 + 1256) = v36;
  *v36 = v0;
  v36[1] = sub_22B94DA18;
  v37 = *(v0 + 1168);
  v38 = *(v0 + 936);
  v39 = *(v0 + 928);

  return v58(v39, v38, v30, v37, 1, v32, v33);
}

uint64_t sub_22B94DA18()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {

    v2 = sub_22B94DBEC;
  }

  else
  {
    v2 = sub_22B94DB34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B94DB34()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 810);

  sub_22B9518D4(v2, v1, v3);
  sub_22B9518D4(v2, v1, v3);
  *(v0 + 1232) = *(v0 + 1240);

  return MEMORY[0x2822009F8](sub_22B94BD94, 0, 0);
}

uint64_t sub_22B94DBEC()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 810);

  sub_22B9518D4(v2, v1, v3);
  sub_22B9518D4(v2, v1, v3);
  v4 = *(v0 + 1264);
  *(v0 + 1280) = *(v0 + 1240);
  *(v0 + 1272) = v4;
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v32 = *(v0 + 928);
  (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
  v7 = *(sub_22B9358B4((v6 + 24), *(v6 + 48)) + 16);
  v8 = sub_22BA1030C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v32;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v5, &unk_22BA13DE0, v9);

  v10 = v4;
  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1044C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_22B92A000, v11, v12, "Error handling batch completion with error %@", v13, 0xCu);
    sub_22B936BEC(v14, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  v17 = *(v0 + 928);

  sub_22B9358B4((v17 + 16), *(v17 + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v17) = sub_22B9819E8(v4);
  swift_unknownObjectRelease();
  if (v17)
  {
    v18 = *(v0 + 1064);
    v19 = *(v0 + 1056);
    v20 = *(v0 + 944);
    sub_22BA108FC();

    MEMORY[0x231899730](v19, v18);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v21 = sub_22B958118(*(v0 + 656), *(v0 + 664));
    MEMORY[0x231899730](v21);

    sub_22B975FD8(8, v4, 0xD000000000000026, 0x800000022BA1C620);

    v22 = v20[11];
    v23 = v20[12];
    sub_22B9358B4(v20 + 8, v22);
    v24 = *(v23 + 32);
    v25 = v4;
    v31 = (v24 + *v24);
    v26 = swift_task_alloc();
    *(v0 + 1288) = v26;
    *v26 = v0;
    v26[1] = sub_22B94E0D4;
    v27 = *(v0 + 936);
    v28 = *(v0 + 928);

    return v31(v28, v27, v4, 1, v22, v23);
  }

  else
  {

    v30 = swift_task_alloc();
    *(v0 + 1304) = v30;
    *v30 = v0;
    v30[1] = sub_22B94E208;

    return sub_22B97D504(v4);
  }
}

uint64_t sub_22B94E0D4()
{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = sub_22B94E638;
  }

  else
  {
    v3 = sub_22B94E558;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B94E208()
{

  return MEMORY[0x2822009F8](sub_22B94E304, 0, 0);
}

uint64_t sub_22B94E304()
{
  v23 = v0;

  v1 = *(v0 + 1280);
  *(v0 + 1312) = v1;
  v2 = *(v0 + 944);
  sub_22B95186C(v2, v0 + 16);
  sub_22B95186C(v2, v0 + 136);
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1208);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315906;
    v8 = sub_22B9358B4((v0 + 40), *(v0 + 64));
    v9 = sub_22BA082E0(*(v8 + 16));
    v11 = v10;
    sub_22B9518A4(v0 + 16);
    v12 = sub_22B99153C(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    *(v6 + 22) = 2080;
    v13 = sub_22B9358B4((v0 + 160), *(v0 + 184));
    v14 = sub_22BA082E0(*(v13 + 16));
    v16 = v15;
    sub_22B9518A4(v0 + 136);
    v17 = sub_22B99153C(v14, v16, &v22);

    *(v6 + 24) = v17;
    *(v6 + 32) = 2048;
    *(v6 + 34) = v1;
    _os_log_impl(&dword_22B92A000, v3, v4, "%s: %lld records %s written, %lld failures", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {

    sub_22B9518A4(v0 + 136);
    sub_22B9518A4(v0 + 16);
  }

  v18 = *(v0 + 944);
  v19 = *(*(v0 + 928) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1320) = v19;
  v20 = sub_22B9358B4((v18 + 24), *(v18 + 48));
  *(v0 + 811) = sub_22BA08430(*(v20 + 16));

  return MEMORY[0x2822009F8](sub_22B94E718, v19, 0);
}

uint64_t sub_22B94E558(uint64_t a1)
{
  v2 = v1[153];
  v3 = v1[141];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_22B94E638()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B94E718()
{
  v1 = *(v0 + 811);
  swift_beginAccess();
  v2 = sub_22B964498(v1);
  swift_endAccess();
  if (*(v2 + 16))
  {
    v3 = sub_22B990B64(1);
    if (v4)
    {
      v6 = *(v0 + 1208);
      v7 = (*(v2 + 56) + 16 * v3);
      v8 = *v7 + v6;
      if (__OFADD__(*v7, v6))
      {
        __break(1u);
      }

      else
      {
        v9 = *(v0 + 1312);
        v10 = v7[1];
        v11 = v10 + v9;
        if (!__OFADD__(v10, v9))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v8;
          v14 = v11;
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v3, v4, v5);
    }
  }

  v15 = *(v0 + 1312);
  v16 = *(v0 + 1208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v16;
  v14 = v15;
LABEL_7:
  sub_22B9BB0F8(v13, v14, 1, isUniquelyReferenced_nonNull_native);
  v17 = *(v0 + 811);

  sub_22B9645F8(v18, v17);

  v3 = sub_22B94E868;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22B94E868()
{
  v1 = v0[153];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_22B92A000, v3, v4, "Aborting after finishing batch due to: %@", v5, 0xCu);
      sub_22B936BEC(v6, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v9 = v0[118];

    v10 = v9[11];
    v11 = v9[12];
    sub_22B9358B4(v9 + 8, v10);
    v12 = *(v11 + 32);
    v13 = v1;
    v27 = (v12 + *v12);
    v14 = swift_task_alloc();
    v0[168] = v14;
    *v14 = v0;
    v14[1] = sub_22B94EC94;
    v15 = v0[153];
    v16 = v0[117];
    v17 = v0[116];
    v18 = 1;
    v19 = v10;
    v20 = v11;
    v21 = v27;
  }

  else
  {
    v22 = v0[118];
    v23 = v22[11];
    v24 = v22[12];
    sub_22B9358B4(v22 + 8, v23);
    v28 = (*(v24 + 32) + **(v24 + 32));
    v25 = swift_task_alloc();
    v0[166] = v25;
    *v25 = v0;
    v25[1] = sub_22B94EB80;
    v16 = v0[117];
    v17 = v0[116];
    v15 = 0;
    v18 = 0;
    v19 = v23;
    v20 = v24;
    v21 = v28;
  }

  return v21(v17, v16, v15, v18, v19, v20);
}

uint64_t sub_22B94EB80()
{
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v2 = sub_22B94F064;
  }

  else
  {
    v2 = sub_22B94EF70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B94EC94()
{
  v2 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v3 = sub_22B94EE9C;
  }

  else
  {
    v3 = sub_22B94EDC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B94EDC8(uint64_t a1)
{
  v2 = *(v1 + 1128);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22B94EE9C()
{
  v1 = *(v0 + 1128);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B94EF70()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1208);

  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 1120) != 0;

    v6 = *(v0 + 8);

    v6(v4, v5);
  }
}

uint64_t sub_22B94F064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B94F130()
{
  v1 = *(v0 + 1368);
  swift_beginAccess();
  v2 = *(v1 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 192) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FE58(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 192) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FE58((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 1360);
  *(v2 + 2) = v5 + 1;
  *&v2[8 * v5 + 32] = v6;
  *(v1 + 192) = v2;

  return MEMORY[0x2822009F8](sub_22B94F22C, 0, 0);
}

uint64_t sub_22B94F22C()
{
  v4 = *(v0 + 1232);
  *(v0 + 1240) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 1168);
    v2 = *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 1248) = v2;
    v1 = sub_22B94D1D4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22B94F2C4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22BA109CC();
    v4 = v1 + 64;
    result = sub_22BA107CC();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 16 * v5);
      sub_22BA1099C();
      sub_22BA109DC();
      v1 = v19;
      sub_22BA109EC();
      result = sub_22BA109AC();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_22B951A48(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_22B951A48(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_22B94F4DC()
{
  sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
  sub_22B951998();
  v1 = v0;
  v2 = sub_22BA10C3C();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_22BA0FB5C();

  v6 = [v5 userInfo];
  v7 = sub_22BA0FF6C();

  v47 = v5;
  type metadata accessor for CKError(0);
  v8 = v5;
  if (swift_dynamicCast())
  {

    v9 = [v8 userInfo];
    v10 = sub_22BA0FF6C();

    v11 = sub_22BA0FFFC();
    if (*(v10 + 16))
    {
      v13 = sub_22B990A58(v11, v12);
      v15 = v14;

      if (v15)
      {
        sub_22B936B20(*(v10 + 56) + 32 * v13, &v47);

        type metadata accessor for CKUnderlyingError(0);
        if (swift_dynamicCast())
        {
          [v8 code];
          v47 = sub_22BA10C1C();
          v48 = v16;
          MEMORY[0x231899730](47, 0xE100000000000000);
          sub_22B951A00(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);
          sub_22BA0FB2C();
          v17 = sub_22BA10C1C();
          MEMORY[0x231899730](v17);

          v19 = v47;
          v18 = v48;
          v47 = v46;
          sub_22BA0FB2C();
          v20 = stringForCKUnderlyingErrorCode();
          v21 = sub_22BA0FFFC();
          v23 = v22;

LABEL_17:
          v36 = [v8 domain];
          v37 = sub_22BA0FFFC();
          v39 = v38;

          v47 = v37;
          v48 = v39;
          MEMORY[0x231899730](10272, 0xE200000000000000);
          MEMORY[0x231899730](v19, v18);

          MEMORY[0x231899730](2112041, 0xE300000000000000);
          MEMORY[0x231899730](v21, v23);

          goto LABEL_18;
        }

LABEL_16:
        v47 = [v8 code];
        v19 = sub_22BA10C1C();
        v18 = v34;
        v47 = v46;
        sub_22B951A00(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);
        sub_22BA0FB2C();
        v20 = stringForCKErrorCode();
        v21 = sub_22BA0FFFC();
        v23 = v35;
        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v24 = sub_22BA0FFFC();
  if (!*(v7 + 16))
  {

    goto LABEL_19;
  }

  v26 = sub_22B990A58(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_22B936B20(*(v7 + 56) + 32 * v26, &v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v40 = [v8 domain];
    v41 = sub_22BA0FFFC();
    v43 = v42;

    v47 = v41;
    v48 = v43;
    MEMORY[0x231899730](10272, 0xE200000000000000);
    [v8 code];
    v44 = sub_22BA10C1C();
    MEMORY[0x231899730](v44);

    MEMORY[0x231899730](41, 0xE100000000000000);

    return v47;
  }

  v29 = [v8 domain];
  v30 = sub_22BA0FFFC();
  v32 = v31;

  v47 = v30;
  v48 = v32;
  MEMORY[0x231899730](10272, 0xE200000000000000);
  [v8 code];
  v33 = sub_22BA10C1C();
  MEMORY[0x231899730](v33);

  MEMORY[0x231899730](2112041, 0xE300000000000000);
  MEMORY[0x231899730]();
LABEL_18:

  return v47;
}

uint64_t sub_22B94FAFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_22B94FB20, 0, 0);
}

uint64_t sub_22B94FB20()
{
  sub_22B9ECD54(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B94FC08;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22B9E81AC(v3, v2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B94FC08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B94FCFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B94FD20, 0, 0);
}

uint64_t sub_22B94FD20()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  sub_22B9358B4(v1 + 8, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22B94FE50;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_22B94FE50()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v2;
  v3[1] = sub_22B94FFD4;
  v4 = v1[3];
  v5 = v1[2];

  return sub_22B982058(v5, v4);
}

uint64_t sub_22B94FFD4()
{

  return MEMORY[0x2822009F8](sub_22B9500D0, 0, 0);
}

uint64_t sub_22B9500D0()
{
  v1 = sub_22B9358B4((v0[4] + 24), *(v0[4] + 48));
  sub_22B9ECD54(*(v1 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22B9501C8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneWriter.swift", 108, 2);
}

uint64_t sub_22B9501C8()
{

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B9502CC()
{
  v1 = *(v0 + 104);
  sub_22B930C20(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_22B950318(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B949D8C(a1, a2);
}

uint64_t sub_22B9503D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B94AC34(a1, a2);
}

uint64_t sub_22B950488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B94FCFC(a1, a2);
}

uint64_t sub_22B950540(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22BA109CC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22B936B20(i, v5);
    sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22BA1099C();
    sub_22BA109DC();
    sub_22BA109EC();
    sub_22BA109AC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_22B95064C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22BA1080C())
  {
    sub_22B9579D4(MEMORY[0x277D84F90]);
    v6 = v16;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  sub_22B951A54(0, &unk_281414AC0, 0x277CBC4A0);
  v17 = v6;
  sub_22B949AA0(a3, &v17);

  v7 = sub_22BA105CC();
  v8 = sub_22B99BA10(a1, a2, 0x6574697277, 0xE500000000000000);
  [v7 setGroup_];

  v9 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v10 setQualityOfService_];
  [v10 setAllowsCellularAccess_];
  v11 = v9[3];
  v12 = v9[4];
  sub_22B9358B4(v9, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = v13;
    [v10 setAllowsCellularAccess_];
    [v10 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v7 setConfiguration_];

  [v7 setAtomic_];
  [v7 setSavePolicy_];
  return v7;
}

uint64_t sub_22B950864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B951440(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22B9508D0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22B9508D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BA10C0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22BA1024C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22B950A98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22B9509C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22B9509C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22BA10C6C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22B950A98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22B951328(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22B951074((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22BA10C6C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22BA10C6C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B95133C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22B95133C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22B951074((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22B951328(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22B95129C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22BA10C6C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22B951074(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22BA10C6C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22BA10C6C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_22B95129C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B951328(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_22B95133C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D4F30, &qword_22BA16710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_22B951454(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CloudState();
  v24 = v8;
  v25 = &off_283F589F0;
  v23[0] = a1;
  v9 = (a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v10 = *(*sub_22B9358B4((a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v11 = *MEMORY[0x277D19AB0];

  if ([v10 integerForKey_] <= 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1046C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "User has not marked first restore, setting first restore date, and marker", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    sub_22B9358B4(v23, v8);
    sub_22BA0FD7C();
    v16 = sub_22BA09CBC();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_22BA0FCFC();
      v19 = sub_22BA0FFCC();
      [v17 setSyncDate:v18 forKey:v19 shouldOverride:0];

      swift_unknownObjectRelease();
    }

    (*(v5 + 8))(v7, v4);
    [*(*sub_22B9358B4(v9 v9[3]) + 24)];
    v8 = v24;
  }

  v20 = *(*sub_22B9358B4(v23, v8) + 56);
  if (v20)
  {
    [v20 setSyncJobStateWithState_];
  }

  return sub_22B936C4C(v23);
}

uint64_t sub_22B9517A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B94FAFC(a1, v4, v5, v8, v6, v7);
}

void sub_22B9518D4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_22B9518E8(a1, a2, a3);
  }
}

void sub_22B9518E8(void *a1, void *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
    }
  }

  else
  {
    sub_22B92E460(a1, a2, a3 & 1);
  }
}

id sub_22B95190C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_22B951920(result, a2, a3);
  }

  return result;
}

id sub_22B951920(id result, void *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    return sub_22B92E4AC(result, a2, a3 & 1);
  }

  if (a3 >> 6 == 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B95194C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B951998()
{
  result = qword_27D8D4F38;
  if (!qword_27D8D4F38)
  {
    sub_22B951A54(255, &qword_281414A88, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F38);
  }

  return result;
}

uint64_t sub_22B951A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B951A48(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22B951A54(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_22B951A9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  result = v1;
  v6 = result;
  if (!v4)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = a1 + 40;
  v15 = a1 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      if (MEMORY[0x231899D50](v11, v12))
      {
        break;
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    if (!v13)
    {
      result = swift_unknownObjectRelease();
      goto LABEL_6;
    }

    MEMORY[0x231899830](v14);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22BA1022C();
    }

    result = sub_22BA1026C();
    v8 = v15;
    v3 = v16;
  }

  while (v7 != v4);
LABEL_15:

  return v3;
}

uint64_t sub_22B951C1C()
{
  v1 = sub_22B951F04();
  if (v2 >> 60 == 15)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1044C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "No transfer data present for record.", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v9 = sub_22BA0FC8C();
    v10 = JWDecodeDictionary();

    if (v10)
    {
      v11 = sub_22BA0FF6C();

      sub_22B98963C(v11);
      v13 = v12;

      if (v13)
      {
        v22 = v13;
        sub_22B952374(&v22, 26997, 0xE200000000000000);
        sub_22B952374(&v22, 6911347, 0xE300000000000000);
        sub_22B952374(&v22, 6911329, 0xE300000000000000);
        sub_22B9359A8(v7, v8);
        return v22;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD40);
    v16 = v0;
    v17 = sub_22BA0FEDC();
    v18 = sub_22BA1044C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_22B92A000, v17, v18, "Could not decode transfer data for record: %@", v19, 0xCu);
      sub_22B936BEC(v20, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v20, -1, -1);
      MEMORY[0x23189ADD0](v19, -1, -1);
    }

    sub_22B9359A8(v7, v8);
  }

  return 0;
}

uint64_t sub_22B951F04()
{
  v1 = sub_22B95222C(1);
  if (v2 >> 60 == 15)
  {
    result = sub_22B95222C(0);
    if (v4 >> 60 != 15)
    {
      return result;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    v6 = v0;
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_22B92A000, v7, v8, "No transfer metadata found for record: %@", v9, 0xCu);
      sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }
  }

  else
  {
    if (qword_28141ADC8)
    {
      v12 = v1;
      v13 = v2;
      v14 = (*(qword_28141ADD0 + 88))();
      sub_22B9359A8(v12, v13);
      return v14;
    }

    v15 = v1;
    v16 = v2;
    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);
    v19 = v0;
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_22B92A000, v20, v21, "Failed to decompress data for record: %@", v22, 0xCu);
      sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    sub_22B9359A8(v15, v16);
  }

  return 0;
}

uint64_t sub_22B95222C(char a1)
{
  if (a1)
  {
    v2 = 28003;
  }

  else
  {
    v2 = 109;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  v4 = MEMORY[0x231899D50](v2, v3);

  if (v4)
  {
    sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  v5 = [v1 encryptedValues];
  v6 = sub_22BA0FFCC();

  v7 = [v5 objectForKey_];

  swift_unknownObjectRelease();
  if (v7 && (sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980), (swift_dynamicCast() & 1) != 0))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B952374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_22B990A58(a2, a3);
    if (v7)
    {
      sub_22B936B20(*(v5 + 56) + 32 * v6, &v14);
      sub_22B936C98(&v14, v16);
      sub_22B936B20(v16, &v14);
      sub_22B9349C8(&unk_27D8D4F40, &qword_22BA13E08);
      if (swift_dynamicCast())
      {
        v8 = sub_22BA0FF5C();
      }

      else
      {
        v8 = 0;
      }

      v9 = JWEncodeDictionary();

      if (v9)
      {
        v10 = sub_22BA0FCAC();
        v12 = v11;

        v15 = MEMORY[0x277CC9318];
        *&v14 = v10;
        *(&v14 + 1) = v12;

        sub_22B9B4FFC(&v14, a2, a3);
        return sub_22B936C4C(v16);
      }

      sub_22B936C4C(v16);
    }
  }

  sub_22B9EB6F0(a2, a3, v16);
  return sub_22B936BEC(v16, &unk_27D8D5A30, qword_22BA13390);
}

unint64_t sub_22B952500()
{
  result = qword_27D8D57E0;
  if (!qword_27D8D57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D57E0);
  }

  return result;
}

void *sub_22B952560(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22B9801C4(*(a1 + 16), 0);
  v4 = sub_22B954698(&v6, v3 + 4, v2, a1);
  sub_22B951944(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22B9525F0(void *a1)
{
  v3 = sub_22BA0FD8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = [a1 statusValue];
  v11 = 1;
  if (v10 - 1 >= 3)
  {
    if (v10)
    {
      if (v10 == 999)
      {
        return v11 & 1;
      }

      __break(1u);
    }

    else
    {
      v12 = [v1 modificationDate];
      if (!v12)
      {
LABEL_9:
        v11 = 1;
        return v11 & 1;
      }

      v13 = v12;
      sub_22BA0FD5C();

      v14 = [a1 modificationDate];
      if (v14)
      {
        v15 = v14;
        sub_22BA0FD5C();

        v11 = sub_22BA0FD0C();
        v16 = *(v4 + 8);
        v16(v7, v3);
        v16(v9, v3);
        return v11 & 1;
      }
    }

    (*(v4 + 8))(v9, v3);
    goto LABEL_9;
  }

  return v11 & 1;
}

uint64_t sub_22B9527A8(uint64_t a1)
{
  v2 = sub_22BA106BC();
  v4 = sub_22B9C2E30(v2, v3);
  result = 0;
  if (v4 > 3u)
  {
    if (v4 != 5)
    {
      if (v4 != 4)
      {
        return result;
      }

      goto LABEL_13;
    }

    if (!*(a1 + 16))
    {
      return 0;
    }

    v12 = sub_22B990A58(29813, 0xE200000000000000);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    sub_22B936B20(*(a1 + 56) + 32 * v12, v35);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v14 = sub_22BA10AAC();

    if (v14 == 2)
    {
      if (!*(a1 + 16))
      {
        return 0;
      }

      v26 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v26, v35);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v18 = v33;
      v17 = v34;
      v28 = objc_allocWithZone(MEMORY[0x277D1AC30]);
      sub_22B936A50(v33, v34);
      v29 = sub_22BA0FC8C();
      sub_22B9359BC(v33, v34);
      v21 = [v28 initWithData_];

      if (!v21)
      {
        goto LABEL_47;
      }

      if ([v21 hasMsgid])
      {
LABEL_44:
        v30 = [v21 msgid];
        if (v30)
        {
          v31 = v30;
          v32 = sub_22BA0FFFC();
          sub_22B9359BC(v18, v17);

          return v32;
        }

        sub_22B9359BC(v18, v17);

        return 0;
      }
    }

    else if (v14 == 1)
    {
      if (!*(a1 + 16))
      {
        return 0;
      }

      v22 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v22, v35);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v18 = v33;
      v17 = v34;
      v24 = objc_allocWithZone(MEMORY[0x277D1AC28]);
      sub_22B936A50(v33, v34);
      v25 = sub_22BA0FC8C();
      sub_22B9359BC(v33, v34);
      v21 = [v24 initWithData_];

      if (!v21)
      {
        goto LABEL_47;
      }

      if ([v21 hasMsgid])
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v14)
      {
        return 0;
      }

      if (!*(a1 + 16))
      {
        return 0;
      }

      v15 = sub_22B990A58(28789, 0xE200000000000000);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      sub_22B936B20(*(a1 + 56) + 32 * v15, v35);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      v18 = v33;
      v17 = v34;
      v19 = objc_allocWithZone(MEMORY[0x277D1AC20]);
      sub_22B936A50(v33, v34);
      v20 = sub_22BA0FC8C();
      sub_22B9359BC(v33, v34);
      v21 = [v19 initWithData_];

      if (!v21)
      {
        goto LABEL_47;
      }

      if ([v21 hasMsgid])
      {
        goto LABEL_44;
      }
    }

LABEL_47:
    sub_22B9359BC(v18, v17);
    return 0;
  }

  if (v4 - 1 >= 2)
  {
    if (v4 != 3)
    {
      return result;
    }

    if (*(a1 + 16))
    {
      v6 = sub_22B990A58(0x617461646174656DLL, 0xE800000000000000);
      if (v7)
      {
        sub_22B936B20(*(a1 + 56) + 32 * v6, v35);
        sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
        if (swift_dynamicCast())
        {
          if (*(v33 + 16) && (v8 = sub_22B990A58(0x6469756761, 0xE500000000000000), (v9 & 1) != 0))
          {
            sub_22B936B20(*(v33 + 56) + 32 * v8, v35);

            if (swift_dynamicCast())
            {
              return v33;
            }
          }

          else
          {
          }
        }
      }
    }

    return 0;
  }

LABEL_13:
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_22B990A58(1684632935, 0xE400000000000000);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_22B936B20(*(a1 + 56) + 32 * v10, v35);
  if (swift_dynamicCast())
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B952CD4(uint64_t a1)
{
  v2 = sub_22BA106BC();
  v4 = sub_22B9C2E30(v2, v3);
  if ((v4 - 4) < 2)
  {
    return sub_22B9527A8(a1);
  }

  if (v4 == 3)
  {
    result = sub_22B9527A8(a1);
    if (!v11)
    {
      return result;
    }

    v12 = sub_22BA0FFCC();

    v13 = IMMessageGuidFromIMFileTransferGuid();

    if (v13)
    {
      v14 = sub_22BA0FFFC();

      return v14;
    }

    return 0;
  }

  if (v4 != 2)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = sub_22B990A58(0x444974616863, 0xE600000000000000);
  if (v6)
  {
    sub_22B936B20(*(a1 + 56) + 32 * v5, v48);
    v7 = swift_dynamicCast();
    v8 = v7 == 0;
    if (v7)
    {
      result = v46;
    }

    else
    {
      result = 0;
    }

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v47;
    }

    if (!*(a1 + 16))
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v10 = 0;
    if (!*(a1 + 16))
    {
      return result;
    }
  }

  v15 = v10;
  v16 = result;
  v17 = sub_22B990A58(0x6F746F725067736DLL, 0xE900000000000034);
  if ((v18 & 1) == 0)
  {
    return v16;
  }

  sub_22B936B20(*(a1 + 56) + 32 * v17, v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v16;
  }

  v19 = sub_22BA0FC8C();
  v20 = [v19 _FTOptionallyDecompressData];

  if (v20)
  {
    v21 = sub_22BA0FCAC();
    v23 = v22;

    v20 = sub_22BA0FC8C();
    sub_22B9359BC(v21, v23);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D1AC10]) initWithData_];

  if (!v24 || (v25 = v24, v26 = [v25 actualParentChatId], v25, !v26))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v38 = sub_22BA0FEFC();
    sub_22B936CA8(v38, qword_28141AD40);

    v39 = sub_22BA0FEDC();
    v40 = sub_22BA1046C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v41 = 136315138;
      if (v15)
      {
        v43 = v16;
      }

      else
      {
        v43 = 7104878;
      }

      if (v15)
      {
        v44 = v15;
      }

      else
      {
        v44 = 0xE300000000000000;
      }

      v45 = sub_22B99153C(v43, v44, v48);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22B92A000, v39, v40, "proto4 for message found, but no actualParentChatID found, falling through to %s", v41, 0xCu);
      sub_22B936C4C(v42);
      MEMORY[0x23189ADD0](v42, -1, -1);
      MEMORY[0x23189ADD0](v41, -1, -1);
      sub_22B9359BC(v46, v47);

      return v16;
    }

    sub_22B9359BC(v46, v47);

    return v16;
  }

  v27 = sub_22BA0FFFC();
  v29 = v28;

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v30 = sub_22BA0FEFC();
  sub_22B936CA8(v30, qword_28141AD40);

  v31 = sub_22BA0FEDC();
  v32 = sub_22BA1046C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_22B99153C(v27, v29, v48);
    *(v33 + 12) = 2080;
    if (v15)
    {
      v35 = v16;
    }

    else
    {
      v35 = 7104878;
    }

    if (!v15)
    {
      v15 = 0xE300000000000000;
    }

    v36 = v27;
    v37 = sub_22B99153C(v35, v15, v48);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_22B92A000, v31, v32, "For message, using actualParentChatID from proto4 %s instead of %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v34, -1, -1);
    MEMORY[0x23189ADD0](v33, -1, -1);
    sub_22B9359BC(v46, v47);

    return v36;
  }

  else
  {
    sub_22B9359BC(v46, v47);

    return v27;
  }
}

id sub_22B953298()
{
  result = sub_22B9532B8();
  qword_281414A40 = result;
  return result;
}

id sub_22B9532B8()
{
  sub_22B951A54(0, &qword_281414B98, 0x277CCAC30);
  v0 = sub_22BA1041C();
  v1 = sub_22BA1041C();
  v2 = sub_22BA1041C();
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22BA13E30;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v5 = v0;
  v6 = v1;
  v7 = v2;
  v8 = sub_22BA101DC();

  v9 = [v4 initWithType:1 subpredicates:v8];

  return v9;
}

id sub_22B953420()
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13420;
  *(inited + 32) = 0x4D414E5F454E4F5ALL;
  *(inited + 40) = 0xE900000000000045;
  v2 = [v0 recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = sub_22BA0FFFC();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x545F44524F434552;
  *(inited + 88) = 0xEB00000000455059;
  *(inited + 96) = sub_22BA106BC();
  *(inited + 104) = v9;
  *(inited + 120) = v8;
  *(inited + 128) = 0x4E5F44524F434552;
  *(inited + 136) = 0xEB00000000454D41;
  v10 = [v0 recordID];
  v11 = [v10 recordName];

  v12 = sub_22BA0FFFC();
  v14 = v13;

  *(inited + 168) = v8;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  if (qword_281414A38 != -1)
  {
    swift_once();
  }

  v15 = qword_281414A40;
  v16 = sub_22BA0FF5C();

  v17 = [v15 predicateWithSubstitutionVariables_];

  return v17;
}

id sub_22B95368C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteRecord();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [objc_allocWithZone(v2) initWithEntity:v3 insertIntoManagedObjectContext:a1];

  return v4;
}

uint64_t sub_22B953704(void *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *sub_22B9358B4(a3, a3[3]);

  return sub_22B957164(a1, a2, v7, v6);
}

uint64_t sub_22B9537AC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22B953F3C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22B9538D8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22BA10D3C();

    sub_22BA1008C();
    v23 = sub_22BA10D6C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22BA10C6C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22B9542B0(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22BA10D3C();

            sub_22BA1008C();
            v41 = sub_22BA10D6C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22BA10C6C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_22B954078(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x23189ADD0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22B951944(v13);
    return v5;
  }

  result = MEMORY[0x23189ADD0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22B953E48(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22B97FB74(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B953F3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22BA10D3C();
  sub_22BA1008C();
  v6 = sub_22BA10D6C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22BA10C6C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BA0006C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22B9544D4(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_22B954078(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_22B9542B0(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22BA10D3C();

        sub_22BA1008C();
        v19 = sub_22BA10D6C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22BA10C6C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22B9542B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA108BC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22BA10D3C();

    sub_22BA1008C();
    result = sub_22BA10D6C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22B9544D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22BA107DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22BA10D3C();

        sub_22BA1008C();
        v10 = sub_22BA10D6C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_22B954698(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B9547F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B954944(uint64_t a1, void *a2, uint64_t a3)
{
  v141 = *MEMORY[0x277D85DE8];
  v112 = sub_22BA0FC4C();
  v6 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SyncFiles.FileMove(0);
  MEMORY[0x28223BE20](v8);
  v114 = v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
  v10 = MEMORY[0x28223BE20](v117);
  v116 = (v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v119 = (v109 - v12);
  v139 = &type metadata for FileManagerProvider;
  v140 = &off_283F53B48;
  v138 = a2;
  v13 = *(a1 + 16);
  if (v13)
  {
    v110 = (v6 + 8);
    v14 = a2;
    v15 = a1 + 32;
    v16 = 0;
    v17 = MEMORY[0x277D84F98];
    *&v18 = 138412290;
    v113 = v18;
    v130 = xmmword_22BA13CB0;
    v120 = MEMORY[0x277D84F98];
    v118 = v13;
    v109[2] = a3;
    v109[1] = v8;
    v115 = a1 + 32;
    do
    {
      v19 = (v15 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];

      v129 = v20;
      v22 = MEMORY[0x231899D50](v20, v21);
      if (v22)
      {
        v23 = v22;
        v123 = v16;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          v122 = v23;
          v133 = v17;
          v26 = *sub_22B9358B4(&v138, v139);
          v137 = &off_283F53B48;
          v136 = &type metadata for FileManagerProvider;
          *&v135 = v26;
          v27 = v26;
          v28 = v119;
          sub_22B970BF0(v25, v129, v21, v119);
          sub_22B957EE4(&v135);
          v29 = v28;
          v30 = v116;
          sub_22B957F38(v29, v116);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v121 = v21;
          if (EnumCaseMultiPayload == 1)
          {
            v32 = *v30;
            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            v33 = sub_22BA0FEFC();
            sub_22B936CA8(v33, qword_28141AD40);
            v34 = v32;
            v35 = sub_22BA0FEDC();
            v36 = sub_22BA1044C();

            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              *v37 = v113;
              v39 = v32;
              v40 = _swift_stdlib_bridgeErrorToNSError();
              *(v37 + 4) = v40;
              *v38 = v40;
              _os_log_impl(&dword_22B92A000, v35, v36, "Encountered error during asset move: %@", v37, 0xCu);
              sub_22B936BEC(v38, &qword_27D8D4CD0, qword_22BA14360);
              MEMORY[0x23189ADD0](v38, -1, -1);
              v41 = v37;
              v13 = v118;
              MEMORY[0x23189ADD0](v41, -1, -1);
            }

            swift_unknownObjectRetain();
            v42 = sub_22BA0FEDC();
            v43 = sub_22BA1044C();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = v113;
              *(v44 + 4) = v25;
              *v45 = v25;
              swift_unknownObjectRetain();
              _os_log_impl(&dword_22B92A000, v42, v43, "Failed to move asset %@", v44, 0xCu);
              sub_22B936BEC(v45, &qword_27D8D4CD0, qword_22BA14360);
              v46 = v45;
              v13 = v118;
              MEMORY[0x23189ADD0](v46, -1, -1);
              MEMORY[0x23189ADD0](v44, -1, -1);
            }

            v47 = [v25 fileURL];
            if (v47)
            {
              v48 = v111;
              v49 = v47;
              sub_22BA0FC0C();

              v50 = sub_22BA0FB9C();
              v136 = MEMORY[0x277D837D0];
              *&v135 = v50;
              *(&v135 + 1) = v51;
              sub_22B936C98(&v135, &v134);
              v52 = v133;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v132 = v52;
              sub_22B9BAE64(&v134, 0x4C5255656C6966, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
              (*v110)(v48, v112);
              v54 = v132;
              v133 = v132;
            }

            else
            {
              v54 = v133;
            }

            sub_22B975FD8(2, v32, 0, 0);

            v21 = v121;
          }

          else
          {
            v55 = v30;
            v56 = v114;
            sub_22B957FA8(v55, v114);
            v57 = sub_22BA0FB9C();
            v136 = MEMORY[0x277D837D0];
            *&v135 = v57;
            *(&v135 + 1) = v58;
            sub_22B936C98(&v135, &v134);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v132 = v17;
            sub_22B9BAE64(&v134, 0x4C5255656C6966, 0xE700000000000000, v59);
            sub_22B95800C(v56);
            v54 = v132;
            v133 = v132;
          }

          v60 = [v25 size];
          v136 = MEMORY[0x277D84D38];
          *&v135 = v60;
          sub_22B936C98(&v135, &v134);
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v132 = v54;
          sub_22B9BAE64(&v134, 1702521203, 0xE400000000000000, v61);
          v62 = v132;
          v133 = v132;
          v63 = [v25 UUID];
          if (v63)
          {
            v64 = v63;
            v65 = sub_22BA0FFFC();
            v67 = v66;

            v136 = MEMORY[0x277D837D0];
            *&v135 = v65;
            *(&v135 + 1) = v67;
            v21 = v121;
            sub_22B936C98(&v135, &v134);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v132 = v62;
            sub_22B9BAE64(&v134, 1684632949, 0xE400000000000000, v68);
            v133 = v132;
          }

          else
          {
            sub_22B9EB6F0(1684632949, 0xE400000000000000, &v135);
            sub_22B936BEC(&v135, &unk_27D8D5A30, qword_22BA13390);
          }

          v69 = [v25 signature];
          if (v69)
          {
            v70 = v69;
            v71 = sub_22BA0FCAC();
            v73 = v72;

            v74 = v73 >> 62;
            v128 = HIDWORD(v71);
            if ((v73 >> 62) > 1)
            {
              if (v74 == 2)
              {
                v78 = *(v71 + 16);
                v77 = *(v71 + 24);
                v75 = v77 - v78;
                if (__OFSUB__(v77, v78))
                {
                  goto LABEL_77;
                }

                if (v75)
                {
                  goto LABEL_32;
                }
              }
            }

            else if (v74)
            {
              v80 = v128 - v71;
              if (__OFSUB__(v128, v71))
              {
                goto LABEL_78;
              }

              v75 = v80;
              if (v80)
              {
LABEL_32:
                *&v134 = MEMORY[0x277D84F90];
                sub_22B968100(0, v75 & ~(v75 >> 63), 0);
                v127 = v71;
                if (v74)
                {
                  if (v74 == 2)
                  {
                    v79 = *(v71 + 16);
                  }

                  else
                  {
                    v79 = v127;
                  }
                }

                else
                {
                  v79 = 0;
                }

                v131 = v79;
                if (v75 < 0)
                {
                  goto LABEL_76;
                }

                v82 = 0;
                v81 = v134;
                v125 = v71 >> 32;
                v126 = BYTE6(v73);
                v124 = &v135 + v131;
                while (2)
                {
                  if (v82 >= v75)
                  {
                    __break(1u);
LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
LABEL_76:
                    __break(1u);
LABEL_77:
                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    __break(1u);
                  }

                  v83 = v82 + 1;
                  if (__OFADD__(v82, 1))
                  {
                    goto LABEL_69;
                  }

                  v84 = v131 + v82;
                  if (v74 == 2)
                  {
                    if (v84 < *(v71 + 16))
                    {
                      goto LABEL_70;
                    }

                    if (v84 >= *(v71 + 24))
                    {
                      goto LABEL_73;
                    }

                    v89 = sub_22BA0FA2C();
                    if (!v89)
                    {
                      goto LABEL_80;
                    }

                    v86 = v89;
                    v90 = sub_22BA0FA4C();
                    v88 = v84 - v90;
                    if (__OFSUB__(v84, v90))
                    {
                      goto LABEL_75;
                    }

LABEL_56:
                    v91 = *(v86 + v88);
                  }

                  else
                  {
                    if (v74 == 1)
                    {
                      if (v84 < v127 || v84 >= v125)
                      {
                        goto LABEL_72;
                      }

                      v85 = sub_22BA0FA2C();
                      if (!v85)
                      {
                        goto LABEL_79;
                      }

                      v86 = v85;
                      v87 = sub_22BA0FA4C();
                      v88 = v84 - v87;
                      if (__OFSUB__(v84, v87))
                      {
                        goto LABEL_74;
                      }

                      goto LABEL_56;
                    }

                    if (v84 >= v126)
                    {
                      goto LABEL_71;
                    }

                    LOWORD(v135) = v71;
                    BYTE2(v135) = BYTE2(v71);
                    BYTE3(v135) = BYTE3(v71);
                    BYTE4(v135) = v128;
                    BYTE5(v135) = BYTE5(v71);
                    BYTE6(v135) = BYTE6(v71);
                    BYTE7(v135) = HIBYTE(v71);
                    WORD4(v135) = v73;
                    BYTE10(v135) = BYTE2(v73);
                    BYTE11(v135) = BYTE3(v73);
                    BYTE12(v135) = BYTE4(v73);
                    BYTE13(v135) = BYTE5(v73);
                    v91 = v124[v82];
                  }

                  sub_22B9349C8(&qword_27D8D4F78, &qword_22BA15760);
                  v92 = swift_allocObject();
                  *(v92 + 16) = v130;
                  *(v92 + 56) = MEMORY[0x277D84B78];
                  *(v92 + 64) = MEMORY[0x277D84BC0];
                  *(v92 + 32) = v91;
                  v93 = sub_22BA1001C();
                  *&v134 = v81;
                  v96 = *(v81 + 16);
                  v95 = *(v81 + 24);
                  if (v96 >= v95 >> 1)
                  {
                    v109[0] = v93;
                    v98 = v94;
                    sub_22B968100((v95 > 1), v96 + 1, 1);
                    v94 = v98;
                    v93 = v109[0];
                    v81 = v134;
                  }

                  *(v81 + 16) = v96 + 1;
                  v97 = v81 + 16 * v96;
                  *(v97 + 32) = v93;
                  *(v97 + 40) = v94;
                  ++v82;
                  if (v83 == v75)
                  {
                    goto LABEL_62;
                  }

                  continue;
                }
              }
            }

            else
            {
              v75 = BYTE6(v73);
              if (BYTE6(v73))
              {
                goto LABEL_32;
              }
            }

            v81 = MEMORY[0x277D84F90];
LABEL_62:
            *&v135 = v81;
            sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
            sub_22B9486FC();
            v99 = sub_22BA0FFAC();
            v101 = v100;
            sub_22B9359BC(v71, v73);

            v136 = MEMORY[0x277D837D0];
            *&v135 = v99;
            *(&v135 + 1) = v101;
            sub_22B936C98(&v135, &v134);
            v102 = v133;
            v103 = swift_isUniquelyReferenced_nonNull_native();
            v132 = v102;
            sub_22B9BAE64(&v134, 0x727574616E676973, 0xE900000000000065, v103);
            v76 = v132;
            v133 = v132;
            v13 = v118;
            v17 = MEMORY[0x277D84F98];
            v21 = v121;
          }

          else
          {
            sub_22B9EB6F0(0x727574616E676973, 0xE900000000000065, &v135);
            sub_22B936BEC(&v135, &unk_27D8D5A30, qword_22BA13390);
            v76 = v133;
            v17 = MEMORY[0x277D84F98];
          }

          v136 = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
          *&v135 = v76;
          sub_22B936C98(&v135, &v134);
          v104 = v120;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v132 = v104;
          sub_22B9BAE64(&v134, v129, v21, v105);
          swift_unknownObjectRelease();

          sub_22B936BEC(v119, &qword_27D8D4F70, &unk_22BA15750);
          v120 = v132;
          v15 = v115;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v16 = v123;
      }

      else
      {
      }

      ++v16;
    }

    while (v16 != v13);
    v106 = v120;
  }

  else
  {
    v107 = a2;
    v106 = 0;
  }

  sub_22B936C4C(&v138);
  return v106;
}

uint64_t sub_22B955688(void *a1, void *a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v246 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v246 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v246 - v14;
  v260 = &type metadata for FileManagerProvider;
  v261 = &off_283F53B48;
  v259[0] = a1;
  v16 = MEMORY[0x277D84F98];
  v258 = MEMORY[0x277D84F98];
  v17 = a1;
  v18 = [a2 recordChangeTag];
  v19 = MEMORY[0x277D837D0];
  if (v18)
  {
    v20 = v18;
    v21 = sub_22BA0FFFC();
    v23 = v22;

    ObjectType = v19;
    *&v256 = v21;
    *(&v256 + 1) = v23;
    sub_22B936C98(&v256, v255);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v254 = v16;
    sub_22B9BAE64(v255, 0x615465676E616863, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
    v258 = v254;
  }

  else
  {
    sub_22B9EB6F0(0x615465676E616863, 0xE900000000000067, &v256);
    sub_22B936BEC(&v256, &unk_27D8D5A30, qword_22BA13390);
  }

  v25 = [a2 creationDate];
  v253 = a2;
  if (v25)
  {
    v26 = v25;
    sub_22BA0FD5C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_22BA0FD8C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v13, v27, 1, v28);
  sub_22B935A74(v13, v15);
  v31 = *(v29 + 48);
  if (v31(v15, 1, v28) == 1)
  {
    sub_22B936BEC(v15, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B9EB6F0(0x6E6F697461657263, 0xEC00000065746144, &v256);
    sub_22B936BEC(&v256, &unk_27D8D5A30, qword_22BA13390);
  }

  else
  {
    ObjectType = v28;
    v32 = sub_22B957E80(&v256);
    (*(v29 + 32))(v32, v15, v28);
    sub_22B936C98(&v256, v255);
    v33 = v258;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v33;
    sub_22B9BAE64(v255, 0x6E6F697461657263, 0xEC00000065746144, v34);
    v258 = v254;
  }

  v35 = [v253 modificationDate];
  if (v35)
  {
    v36 = v35;
    sub_22BA0FD5C();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v30(v7, v37, 1, v28);
  sub_22B935A74(v7, v10);
  if (v31(v10, 1, v28) == 1)
  {
    sub_22B936BEC(v10, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22B9EB6F0(0xD000000000000010, 0x800000022BA1BAE0, &v256);
    sub_22B936BEC(&v256, &unk_27D8D5A30, qword_22BA13390);
  }

  else
  {
    ObjectType = v28;
    v38 = sub_22B957E80(&v256);
    (*(v29 + 32))(v38, v10, v28);
    sub_22B936C98(&v256, v255);
    v39 = v258;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v39;
    sub_22B9BAE64(v255, 0xD000000000000010, 0x800000022BA1BAE0, v40);
    v258 = v254;
  }

  v41 = MEMORY[0x277D837D0];
  v42 = [v253 modifiedByDevice];
  v43 = 0xD000000000000010;
  if (v42)
  {
    v44 = v42;
    v45 = sub_22BA0FFFC();
    v47 = v46;

    ObjectType = v41;
    *&v256 = v45;
    *(&v256 + 1) = v47;
    sub_22B936C98(&v256, v255);
    v48 = v258;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v48;
    sub_22B9BAE64(v255, 0xD000000000000010, 0x800000022BA1BB00, v49);
    v50 = v254;
  }

  else
  {
    sub_22B9EB6F0(0xD000000000000010, 0x800000022BA1BB00, &v256);
    sub_22B936BEC(&v256, &unk_27D8D5A30, qword_22BA13390);
    v50 = v258;
  }

  v51 = v253;
  v52 = [v253 recordID];
  v53 = [v52 recordName];

  v54 = sub_22BA0FFFC();
  v56 = v55;

  ObjectType = v41;
  *&v256 = v54;
  *(&v256 + 1) = v56;
  sub_22B936C98(&v256, v255);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v254 = v50;
  sub_22B9BAE64(v255, 0x614E64726F636572, 0xEA0000000000656DLL, v57);
  v58 = v254;
  v59 = sub_22BA106BC();
  ObjectType = v41;
  *&v256 = v59;
  *(&v256 + 1) = v60;
  sub_22B936C98(&v256, v255);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v254 = v58;
  sub_22B9BAE64(v255, 0x795464726F636572, 0xEA00000000006570, v61);
  v62 = v254;
  v63 = [v51 recordID];
  v64 = [v63 zoneID];

  v65 = [v64 zoneName];
  v66 = sub_22BA0FFFC();
  v68 = v67;

  ObjectType = v41;
  *&v256 = v66;
  *(&v256 + 1) = v68;
  sub_22B936C98(&v256, v255);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v254 = v62;
  sub_22B9BAE64(v255, 0x656D614E656E6F7ALL, 0xE800000000000000, v69);
  v70 = v254;
  v71 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v71 setOutputFormat_];
  [v51 encodeSystemFieldsWithCoder_];
  [v71 finishEncoding];
  v72 = [v71 encodedData];
  v73 = sub_22BA0FCAC();
  v75 = v74;

  ObjectType = MEMORY[0x277CC9318];
  v76 = "1";
  *&v256 = v73;
  *(&v256 + 1) = v75;
  sub_22B936C98(&v256, v255);
  v251 = v73;
  sub_22B936A50(v73, v75);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v254 = v70;
  v78 = v51;
  sub_22B9BAE64(v255, 0xD000000000000017, 0x800000022BA1BAB0, v77);
  v79 = v254;
  v258 = v254;
  v80 = sub_22BA106DC();
  v81 = sub_22BA0197C(v80);

  v82 = sub_22BA106BC();
  v84 = sub_22B9C2E30(v82, v83);
  if (v84 > 3)
  {
    if (v84 - 4 >= 2)
    {
      goto LABEL_67;
    }

    goto LABEL_33;
  }

  if (v84 == 1)
  {
    v142 = [objc_opt_self() sharedFeatureFlags];
    v72 = [v142 isTranscriptBackgroundsMicEnabled];

    if (v72)
    {
      v76 = sub_22B957CC4(&unk_283F50EF8);
      swift_arrayDestroy();
    }

    else
    {
      v76 = sub_22B957CC4(&unk_283F50F38);
      sub_22B957E2C(&unk_283F50F58);
    }

    v143 = *(v76 + 16);
    v144 = *(v81 + 16);
    v248 = v75;
    v249 = v71;
    v250 = v79;
    v246 = v76;
    if (v143 > v144 >> 3)
    {
      v145 = sub_22B9538D8(v76, v81);

      v146 = v145;
    }

    else
    {
      *&v256 = v81;
      sub_22B9537AC(v76);

      v146 = v256;
    }

    v147 = 0;
    v71 = v146 + 56;
    v148 = 1 << *(v146 + 32);
    v149 = -1;
    if (v148 < 64)
    {
      v149 = ~(-1 << v148);
    }

    v81 = v149 & *(v146 + 56);
    v79 = (v148 + 63) >> 6;
    v247 = v258;
    i = v146;
    while (1)
    {
LABEL_77:
      v86 = v147;
      if (v81)
      {
LABEL_78:
        v147 = v86;
        goto LABEL_82;
      }

      while (1)
      {
        do
        {
          v147 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_157;
          }

          if (v147 >= v79)
          {
            v186 = v247;
            v258 = v247;

            v187 = sub_22B952560(v246);
            v188 = sub_22B9358B4(v259, v260);
            v189 = sub_22B954944(v187, *v188, v78);

            if (v189)
            {
              v190 = v249;
              v79 = v250;
              if (*(v189 + 16))
              {
                ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
                *&v256 = v189;
                sub_22B936C98(&v256, v255);
                v191 = swift_isUniquelyReferenced_nonNull_native();
                v254 = v186;
                sub_22B9BAE64(v255, 0x737465737361, 0xE600000000000000, v191);

                v192 = v251;
                v193 = v248;
LABEL_152:
                sub_22B9359BC(v192, v193);
                v79 = v254;
              }

              else
              {
                sub_22B9359BC(v251, v248);
              }
            }

            else
            {
LABEL_153:
              sub_22B9359BC(v251, v248);

              v79 = v250;
            }

            goto LABEL_155;
          }

          v81 = *(v71 + 8 * v147);
          ++v86;
        }

        while (!v81);
LABEL_82:
        v150 = __clz(__rbit64(v81));
        v81 &= v81 - 1;
        v151 = (*(v146 + 48) + ((v147 << 10) | (16 * v150)));
        v43 = *v151;
        v152 = v151[1];

        v153 = MEMORY[0x231899D50](v43, v152);
        if (v153)
        {
          v76 = v78;
          v156 = v153;
          ObjectType = swift_getObjectType();
          *&v256 = v156;
          sub_22B936C98(&v256, v255);
          v250 = v156;
          swift_unknownObjectRetain();
          v157 = v247;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v254 = v157;
          v158 = sub_22B990A58(v43, v152);
          v160 = v157[2];
          v161 = (v159 & 1) == 0;
          v117 = __OFADD__(v160, v161);
          v162 = v160 + v161;
          if (v117)
          {
            goto LABEL_164;
          }

          v163 = v159;
          if (v157[3] < v162)
          {
            sub_22B9D877C(v162, v72);
            v158 = sub_22B990A58(v43, v152);
            if ((v163 & 1) != (v164 & 1))
            {
              goto LABEL_172;
            }

            goto LABEL_95;
          }

          if (v72)
          {
LABEL_95:
            if ((v163 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v72 = v76;
            v175 = v158;
            sub_22B9EBF40();
            v158 = v175;
            v76 = v72;
            if ((v163 & 1) == 0)
            {
LABEL_102:
              v176 = v254;
              v254[(v158 >> 6) + 8] |= 1 << v158;
              v177 = (v176[6] + 16 * v158);
              *v177 = v43;
              v177[1] = v152;
              sub_22B936C98(v255, (v176[7] + 32 * v158));
              swift_unknownObjectRelease();
              v178 = v176[2];
              v117 = __OFADD__(v178, 1);
              v179 = v178 + 1;
              if (v117)
              {
                goto LABEL_168;
              }

              v176[2] = v179;
              v247 = v176;
              v250 = v176;
              v78 = v76;
              v146 = i;
              goto LABEL_77;
            }
          }

          v72 = v76;
          v76 = v158;

          v43 = v254;
          v173 = (v254[7] + 32 * v76);
          v78 = v72;
          sub_22B936C4C(v173);
          sub_22B936C98(v255, v173);
          goto LABEL_100;
        }

        v76 = v78;
        v154 = [v78 encryptedValues];
        v155 = sub_22BA0FFCC();
        v72 = [v154 objectForKey_];

        swift_unknownObjectRelease();
        if (v72)
        {
          break;
        }

        v86 = v147;
        v78 = v76;
        v146 = i;
        if (v81)
        {
          goto LABEL_78;
        }
      }

      ObjectType = swift_getObjectType();
      *&v256 = v72;
      sub_22B936C98(&v256, v255);
      swift_unknownObjectRetain();
      v165 = v247;
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v165;
      v167 = sub_22B990A58(v43, v152);
      v169 = v165[2];
      v170 = (v168 & 1) == 0;
      v117 = __OFADD__(v169, v170);
      v171 = v169 + v170;
      if (v117)
      {
        goto LABEL_167;
      }

      if (v165[3] >= v171)
      {
        if (v166)
        {
          goto LABEL_98;
        }

        v180 = v167;
        v181 = v168;
        sub_22B9EBF40();
        v182 = v181;
        v167 = v180;
        v78 = v253;
        if ((v182 & 1) == 0)
        {
          goto LABEL_105;
        }

LABEL_99:
        v76 = v167;

        v43 = v254;
        v174 = (v254[7] + 32 * v76);
        sub_22B936C4C(v174);
        sub_22B936C98(v255, v174);
LABEL_100:
        swift_unknownObjectRelease();
        v247 = v43;
        v250 = v43;
        v146 = i;
      }

      else
      {
        LODWORD(v250) = v168;
        sub_22B9D877C(v171, v166);
        v167 = sub_22B990A58(v43, v152);
        v172 = v168 & 1;
        LOBYTE(v168) = v250;
        if ((v250 & 1) != v172)
        {
          goto LABEL_172;
        }

LABEL_98:
        v78 = v76;
        if (v168)
        {
          goto LABEL_99;
        }

LABEL_105:
        v76 = v254;
        v254[(v167 >> 6) + 8] |= 1 << v167;
        v183 = (*(v76 + 48) + 16 * v167);
        *v183 = v43;
        v183[1] = v152;
        sub_22B936C98(v255, (*(v76 + 56) + 32 * v167));
        swift_unknownObjectRelease();
        v184 = *(v76 + 16);
        v117 = __OFADD__(v184, 1);
        v185 = v184 + 1;
        if (v117)
        {
          goto LABEL_170;
        }

        *(v76 + 16) = v185;
        v247 = v76;
        v250 = v76;
        v146 = i;
      }
    }
  }

  if (v84 == 2)
  {
LABEL_33:
    v249 = v71;
    v250 = v79;
    v248 = v75;
    v79 = 0;
    v71 = v81 + 56;
    v101 = 1 << *(v81 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v103 = v102 & *(v81 + 56);
    v43 = (v101 + 63) >> 6;
    v247 = v258;
    for (i = v81; ; v81 = i)
    {
      while (1)
      {
        v86 = v79;
        if (!v103)
        {
          goto LABEL_38;
        }

LABEL_37:
        v79 = v86;
LABEL_41:
        v104 = __clz(__rbit64(v103));
        v103 &= v103 - 1;
        v105 = (*(v81 + 48) + ((v79 << 10) | (16 * v104)));
        v107 = *v105;
        v106 = v105[1];

        v108 = MEMORY[0x231899D50](v107, v106);
        if (!v108)
        {
          break;
        }

        v76 = v78;
        v111 = v108;
        ObjectType = swift_getObjectType();
        *&v256 = v111;
        sub_22B936C98(&v256, v255);
        v250 = v111;
        swift_unknownObjectRetain();
        v112 = v247;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v254 = v112;
        v113 = sub_22B990A58(v107, v106);
        v115 = v112[2];
        v116 = (v114 & 1) == 0;
        v117 = __OFADD__(v115, v116);
        v118 = v115 + v116;
        if (v117)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v119 = v114;
        if (v112[3] < v118)
        {
          sub_22B9D877C(v118, v72);
          v113 = sub_22B990A58(v107, v106);
          if ((v119 & 1) != (v120 & 1))
          {
            goto LABEL_172;
          }

LABEL_54:
          if (v119)
          {
            goto LABEL_55;
          }

          goto LABEL_60;
        }

        if (v72)
        {
          goto LABEL_54;
        }

        v72 = v113;
        sub_22B9EBF40();
        v113 = v72;
        v76 = v253;
        if (v119)
        {
LABEL_55:
          v72 = v76;
          v129 = v113;

          v76 = v254;
          v130 = (v254[7] + 32 * v129);
          v78 = v72;
          sub_22B936C4C(v130);
          sub_22B936C98(v255, v130);
          swift_unknownObjectRelease();
          goto LABEL_65;
        }

LABEL_60:
        v133 = v254;
        v254[(v113 >> 6) + 8] |= 1 << v113;
        v134 = (v133[6] + 16 * v113);
        *v134 = v107;
        v134[1] = v106;
        sub_22B936C98(v255, (v133[7] + 32 * v113));
        swift_unknownObjectRelease();
        v135 = v133[2];
        v117 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v117)
        {
          goto LABEL_162;
        }

        v133[2] = v136;
        v247 = v133;
        v250 = v133;
        v81 = i;
        v78 = v76;
      }

      v76 = v78;
      v109 = [v78 encryptedValues];
      v110 = sub_22BA0FFCC();
      v72 = [v109 objectForKey_];

      swift_unknownObjectRelease();
      if (!v72)
      {

        v86 = v79;
        v81 = i;
        v78 = v76;
        if (!v103)
        {
LABEL_38:
          while (1)
          {
            v79 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              break;
            }

            if (v79 >= v43)
            {

              sub_22B9359BC(v251, v248);

              v79 = v250;
LABEL_155:
              sub_22B936C4C(v259);
              return v79;
            }

            v103 = *(v71 + 8 * v79);
            ++v86;
            if (v103)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        goto LABEL_37;
      }

      ObjectType = swift_getObjectType();
      *&v256 = v72;
      sub_22B936C98(&v256, v255);
      swift_unknownObjectRetain();
      v121 = v247;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v121;
      v123 = sub_22B990A58(v107, v106);
      v125 = v121[2];
      v126 = (v124 & 1) == 0;
      v117 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v117)
      {
        goto LABEL_161;
      }

      if (v121[3] < v127)
      {
        LODWORD(v250) = v124;
        sub_22B9D877C(v127, v122);
        v123 = sub_22B990A58(v107, v106);
        v128 = v124 & 1;
        LOBYTE(v124) = v250;
        if ((v250 & 1) != v128)
        {
          goto LABEL_172;
        }

LABEL_57:
        v78 = v76;
        if (v124)
        {
          goto LABEL_58;
        }

LABEL_63:
        v76 = v254;
        v254[(v123 >> 6) + 8] |= 1 << v123;
        v139 = (*(v76 + 48) + 16 * v123);
        *v139 = v107;
        v139[1] = v106;
        sub_22B936C98(v255, (*(v76 + 56) + 32 * v123));
        swift_unknownObjectRelease();
        v140 = *(v76 + 16);
        v117 = __OFADD__(v140, 1);
        v141 = v140 + 1;
        if (!v117)
        {
          *(v76 + 16) = v141;
          goto LABEL_65;
        }

LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if (v122)
      {
        goto LABEL_57;
      }

      v137 = v123;
      v138 = v124;
      sub_22B9EBF40();
      v123 = v137;
      v78 = v253;
      if ((v138 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_58:
      v131 = v123;

      v76 = v254;
      v132 = (v254[7] + 32 * v131);
      sub_22B936C4C(v132);
      sub_22B936C98(v255, v132);
      swift_unknownObjectRelease();
LABEL_65:
      v247 = v76;
      v250 = v76;
    }
  }

  if (v84 != 3)
  {
LABEL_67:

    sub_22B9359BC(v251, v75);
    goto LABEL_155;
  }

  v248 = v75;
  v43 = MEMORY[0x277D84F90];
  *&v256 = MEMORY[0x277D84F90];
  sub_22B968100(0, 2, 0);
  v85 = v256;
  v76 = *(v256 + 16);
  v86 = *(v256 + 24);
  v87 = v86 >> 1;
  v72 = v76 + 1;
  if (v86 >> 1 <= v76)
  {
    goto LABEL_159;
  }

LABEL_24:
  *(v85 + 16) = v72;
  v88 = v85 + 16 * v76;
  *(v88 + 32) = 6386028;
  *(v88 + 40) = 0xE300000000000000;
  if (v87 <= v72)
  {
    sub_22B968100((v86 > 1), v76 + 2, 1);
    v85 = v256;
  }

  *(v85 + 16) = v76 + 2;
  v89 = v85 + 16 * v72;
  *(v89 + 32) = 1684633185;
  *(v89 + 40) = 0xE400000000000000;
  *&v256 = v43;
  sub_22B968100(0, 2, 0);
  v90 = v256;
  v76 = *(v256 + 16);
  v91 = *(v256 + 24);
  v92 = v91 >> 1;
  v93 = v76 + 1;
  if (v91 >> 1 <= v76)
  {
    sub_22B968100((v91 > 1), v76 + 1, 1);
    v90 = v256;
    v91 = *(v256 + 24);
    v92 = v91 >> 1;
  }

  *(v90 + 16) = v93;
  v94 = v90 + 16 * v76;
  *(v94 + 32) = 109;
  *(v94 + 40) = 0xE100000000000000;
  if (v92 <= v93)
  {
    sub_22B968100((v91 > 1), v76 + 2, 1);
    v90 = v256;
  }

  *(v90 + 16) = v76 + 2;
  v95 = v90 + 16 * v93;
  *(v95 + 32) = 28003;
  *(v95 + 40) = 0xE200000000000000;
  *&v256 = v85;
  sub_22B953E48(v90);
  v72 = sub_22BA0197C(v256);

  v96 = *(v72 + 16);
  v97 = *(v81 + 16);
  v98 = v253;
  v249 = v71;
  v250 = v79;
  if (v96 <= v97 >> 3)
  {
    *&v256 = v81;
    sub_22B9537AC(v72);

    v100 = v256;
  }

  else
  {
    v99 = sub_22B9538D8(v72, v81);

    v100 = v99;
  }

  v43 = 0;
  v194 = v100 + 56;
  v195 = 1 << *(v100 + 32);
  v196 = -1;
  if (v195 < 64)
  {
    v196 = ~(-1 << v195);
  }

  v71 = v196 & *(v100 + 56);
  v79 = (v195 + 63) >> 6;
  v247 = v258;
  i = v100;
LABEL_114:
  while (2)
  {
    v86 = v43;
    if (!v71)
    {
      goto LABEL_116;
    }

    while (1)
    {
      v43 = v86;
LABEL_119:
      v197 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v198 = (*(v100 + 48) + ((v43 << 10) | (16 * v197)));
      v199 = *v198;
      v81 = v198[1];

      v200 = MEMORY[0x231899D50](v199, v81);
      if (v200)
      {
        v203 = v98;
        v204 = v200;
        ObjectType = swift_getObjectType();
        *&v256 = v204;
        sub_22B936C98(&v256, v255);
        v250 = v204;
        swift_unknownObjectRetain();
        v205 = v247;
        v206 = swift_isUniquelyReferenced_nonNull_native();
        v254 = v205;
        v207 = sub_22B990A58(v199, v81);
        v209 = v205[2];
        v210 = (v208 & 1) == 0;
        v117 = __OFADD__(v209, v210);
        v211 = v209 + v210;
        if (v117)
        {
          goto LABEL_165;
        }

        v72 = v208;
        if (v205[3] >= v211)
        {
          if ((v206 & 1) == 0)
          {
            v222 = v207;
            sub_22B9EBF40();
            v207 = v222;
            v98 = v253;
            if (v72)
            {
              goto LABEL_136;
            }

            goto LABEL_138;
          }
        }

        else
        {
          sub_22B9D877C(v211, v206);
          v207 = sub_22B990A58(v199, v81);
          if ((v72 & 1) != (v212 & 1))
          {
            goto LABEL_172;
          }
        }

        v98 = v203;
        if (v72)
        {
          goto LABEL_136;
        }

LABEL_138:
        v76 = v254;
        v254[(v207 >> 6) + 8] |= 1 << v207;
        v223 = (*(v76 + 48) + 16 * v207);
        *v223 = v199;
        v223[1] = v81;
        sub_22B936C98(v255, (*(v76 + 56) + 32 * v207));
        swift_unknownObjectRelease();
        v224 = *(v76 + 16);
        v117 = __OFADD__(v224, 1);
        v225 = v224 + 1;
        if (v117)
        {
          goto LABEL_169;
        }

LABEL_143:
        *(v76 + 16) = v225;
        v247 = v76;
        v250 = v76;
        v100 = i;
        goto LABEL_114;
      }

      v76 = v98;
      v201 = [v98 encryptedValues];
      v202 = sub_22BA0FFCC();
      v72 = [v201 objectForKey_];

      swift_unknownObjectRelease();
      if (v72)
      {
        break;
      }

      v86 = v43;
      v100 = i;
      v98 = v76;
      if (!v71)
      {
LABEL_116:
        while (1)
        {
          v43 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            break;
          }

          if (v43 >= v79)
          {
            v258 = v247;

            v230 = sub_22B951C1C();
            if (!v230)
            {
              goto LABEL_153;
            }

            v231 = v230;
            *&v256 = MEMORY[0x277D84F90];
            sub_22B968100(0, 2, 0);
            v232 = v256;
            v234 = *(v256 + 16);
            v233 = *(v256 + 24);
            v235 = v233 >> 1;
            v236 = v234 + 1;
            v237 = v248;
            if (v233 >> 1 <= v234)
            {
              sub_22B968100((v233 > 1), v234 + 1, 1);
              v232 = v256;
              v233 = *(v256 + 24);
              v235 = v233 >> 1;
            }

            *(v232 + 16) = v236;
            v238 = v232 + 16 * v234;
            *(v238 + 32) = 6386028;
            *(v238 + 40) = 0xE300000000000000;
            if (v235 <= v236)
            {
              sub_22B968100((v233 > 1), v234 + 2, 1);
              v232 = v256;
            }

            *(v232 + 16) = v234 + 2;
            v239 = v232 + 16 * v236;
            *(v239 + 32) = 1684633185;
            *(v239 + 40) = 0xE400000000000000;
            v240 = sub_22B9358B4(v259, v260);
            v241 = sub_22B954944(v232, *v240, v253);

            if (v241)
            {
              ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
              *&v256 = v241;
              sub_22B936C98(&v256, v255);
              v242 = swift_isUniquelyReferenced_nonNull_native();
              v254 = v231;
              sub_22B9BAE64(v255, 0x737465737361, 0xE600000000000000, v242);
              v231 = v254;
            }

            ObjectType = sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
            *&v256 = v231;
            sub_22B936C98(&v256, v255);
            v243 = v258;
            v244 = swift_isUniquelyReferenced_nonNull_native();
            v254 = v243;
            sub_22B9BAE64(v255, 0x617461646174656DLL, 0xE800000000000000, v244);

            v192 = v251;
            v193 = v237;
            goto LABEL_152;
          }

          v71 = *(v194 + 8 * v43);
          ++v86;
          if (v71)
          {
            goto LABEL_119;
          }
        }

LABEL_158:
        __break(1u);
LABEL_159:
        sub_22B968100((v86 > 1), v72, 1);
        v85 = v256;
        v86 = *(v256 + 24);
        v87 = v86 >> 1;
        goto LABEL_24;
      }
    }

    ObjectType = swift_getObjectType();
    *&v256 = v72;
    sub_22B936C98(&v256, v255);
    swift_unknownObjectRetain();
    v213 = v247;
    v214 = swift_isUniquelyReferenced_nonNull_native();
    v254 = v213;
    v207 = sub_22B990A58(v199, v81);
    v216 = v213[2];
    v217 = (v215 & 1) == 0;
    v117 = __OFADD__(v216, v217);
    v218 = v216 + v217;
    if (v117)
    {
      goto LABEL_166;
    }

    if (v213[3] < v218)
    {
      LODWORD(v250) = v215;
      sub_22B9D877C(v218, v214);
      v207 = sub_22B990A58(v199, v81);
      v219 = v215 & 1;
      LOBYTE(v215) = v250;
      if ((v250 & 1) != v219)
      {
        goto LABEL_172;
      }

      goto LABEL_135;
    }

    if (v214)
    {
LABEL_135:
      v98 = v76;
      if (v215)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v226 = v207;
      v227 = v215;
      sub_22B9EBF40();
      v207 = v226;
      v98 = v253;
      if (v227)
      {
LABEL_136:
        v220 = v207;

        v98 = v253;
        v76 = v254;
        v221 = (v254[7] + 32 * v220);
        sub_22B936C4C(v221);
        sub_22B936C98(v255, v221);
        swift_unknownObjectRelease();
        v247 = v76;
        v250 = v76;
        v100 = i;
        continue;
      }
    }

    break;
  }

  v76 = v254;
  v254[(v207 >> 6) + 8] |= 1 << v207;
  v228 = (*(v76 + 48) + 16 * v207);
  *v228 = v199;
  v228[1] = v81;
  sub_22B936C98(v255, (*(v76 + 56) + 32 * v207));
  swift_unknownObjectRelease();
  v229 = *(v76 + 16);
  v117 = __OFADD__(v229, 1);
  v225 = v229 + 1;
  if (!v117)
  {
    goto LABEL_143;
  }

LABEL_171:
  __break(1u);
LABEL_172:
  result = sub_22BA10CBC();
  __break(1u);
  return result;
}