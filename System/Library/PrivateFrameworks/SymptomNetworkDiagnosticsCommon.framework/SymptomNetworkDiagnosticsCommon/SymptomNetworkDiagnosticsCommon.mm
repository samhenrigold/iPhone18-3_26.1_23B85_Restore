uint64_t sub_29EC1A304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC1A350(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 104);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_29EC1A404(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t NDFXPCActivityManager.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = (v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v5 = sub_29EC23480();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t NDFXPCActivityManager.init(logger:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v5 = sub_29EC23480();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

void sub_29EC1A5DC(uint64_t a1, unint64_t a2)
{

  v4 = sub_29EC23460();
  v5 = sub_29EC23530();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_29EC1B4DC(a1, a2, v13);
    _os_log_impl(&dword_29EC19000, v4, v5, "Registering XPC activity: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x29EDACF00](v7, -1, -1);
    MEMORY[0x29EDACF00](v6, -1, -1);
  }

  v8 = *MEMORY[0x29EDCA998];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v13[4] = sub_29EC1A860;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29EC1A8E0;
  v13[3] = &block_descriptor;
  v11 = _Block_copy(v13);

  v12 = sub_29EC234D0();
  xpc_activity_register((v12 + 32), v8, v11);

  _Block_release(v11);
}

uint64_t sub_29EC1A7E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC1A820()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EC1A860(_xpc_activity_s *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29EC1A958(a1, v3, v4);
  }

  return result;
}

uint64_t sub_29EC1A8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29EC1A958(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  state = xpc_activity_get_state(a1);

  v7 = sub_29EC23460();
  v8 = sub_29EC23510();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EC1B4DC(a2, a3, &v19);
    *(v9 + 12) = 2048;
    *(v9 + 14) = state;
    _os_log_impl(&dword_29EC19000, v7, v8, "XPC Activity ID: %s state: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x29EDACF00](v10, -1, -1);
    MEMORY[0x29EDACF00](v9, -1, -1);
  }

  if (state)
  {
    if (state == 3)
    {

      oslog = sub_29EC23460();
      v11 = sub_29EC23530();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_29EC1B4DC(a2, a3, &v19);
        _os_log_impl(&dword_29EC19000, oslog, v11, "XPC Activity ID: %s is deferred", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x29EDACF00](v13, -1, -1);
        v14 = v12;
LABEL_16:
        MEMORY[0x29EDACF00](v14, -1, -1);

        return;
      }
    }

    else
    {
      if (state == 2)
      {

        sub_29EC1AFDC(a1, a2, a3);
        return;
      }

      oslog = sub_29EC23460();
      v15 = sub_29EC23520();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_29EC1B4DC(a2, a3, &v19);
        *(v16 + 12) = 2048;
        *(v16 + 14) = state;
        _os_log_impl(&dword_29EC19000, oslog, v15, "XPC Activity ID:%s has unknown state: %ld", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x29EDACF00](v17, -1, -1);
        v14 = v16;
        goto LABEL_16;
      }
    }
  }

  else
  {

    sub_29EC1ACE4(a1, a2, a3);
  }
}

void sub_29EC1ACE4(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  if ((*(*v3 + 96))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    if (v10)
    {
      xpc_activity_set_criteria(a1, v10);
      xpc_dictionary_create(0, 0, 0);

      v11 = sub_29EC23460();
      v12 = sub_29EC23530();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_29EC1B4DC(a2, a3, &v20);
        _os_log_impl(&dword_29EC19000, v11, v12, "Set override criteria for XPC Activity ID: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x29EDACF00](v14, -1, -1);
        MEMORY[0x29EDACF00](v13, -1, -1);
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    oslog = sub_29EC23460();
    v17 = sub_29EC23500();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_29EC19000, oslog, v17, "No override criteria provided for XPC activity check-in", v18, 2u);
      MEMORY[0x29EDACF00](v18, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_29EC23460();
    v15 = sub_29EC23520();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_29EC19000, oslog, v15, "No delegate configured to handle background task activity", v16, 2u);
      MEMORY[0x29EDACF00](v16, -1, -1);
    }
  }
}

void sub_29EC1AFDC(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;

  v8 = sub_29EC23460();
  v9 = sub_29EC23530();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_29EC1B4DC(a2, a3, &v25);
    _os_log_impl(&dword_29EC19000, v8, v9, "Running XPC Activity: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x29EDACF00](v11, -1, -1);
    MEMORY[0x29EDACF00](v10, -1, -1);
  }

  if (xpc_activity_should_defer(a1))
  {

    v12 = sub_29EC23460();
    v13 = sub_29EC23530();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_29EC1B4DC(a2, a3, &v25);
      _os_log_impl(&dword_29EC19000, v12, v13, "Deferring XPC Activity %s due to system request", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x29EDACF00](v15, -1, -1);
      MEMORY[0x29EDACF00](v14, -1, -1);
    }

    xpc_activity_set_state(a1, 3);
  }

  else
  {
    if ((*(*v4 + 96))())
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      (*(v17 + 16))(a1, a2, a3, ObjectType, v17);

      oslog = sub_29EC23460();
      v19 = sub_29EC23530();

      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_29EC1B4DC(a2, a3, &v25);
        _os_log_impl(&dword_29EC19000, oslog, v19, "Finished running XPC Activity: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x29EDACF00](v21, -1, -1);
        MEMORY[0x29EDACF00](v20, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      oslog = sub_29EC23460();
      v22 = sub_29EC23520();
      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_29EC19000, oslog, v22, "No delegate configured to handle background task activity", v23, 2u);
        MEMORY[0x29EDACF00](v23, -1, -1);
      }
    }
  }
}

uint64_t NDFXPCActivityManager.deinit()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v2 = sub_29EC23480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NDFXPCActivityManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v2 = sub_29EC23480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

unint64_t sub_29EC1B4DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EC1B5A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29EC1BCA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_29EC1B5A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29EC1B6B4(a5, a6);
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
    result = sub_29EC235A0();
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

void *sub_29EC1B6B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_29EC1B700(a1, a2);
  sub_29EC1B830(&unk_2A2551068);
  return v3;
}

void *sub_29EC1B700(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EC1B91C(v5, 0);
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

  result = sub_29EC235A0();
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
        v10 = sub_29EC234E0();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EC1B91C(v10, 0);
        result = sub_29EC23590();
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

uint64_t sub_29EC1B830(uint64_t result)
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

  result = sub_29EC1B990(result, v11, 1, v3);
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

void *sub_29EC1B91C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E730, &qword_29EC23D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EC1B990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E730, &qword_29EC23D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t type metadata accessor for NDFXPCActivityManager(uint64_t a1)
{
  result = qword_2A188E948;
  if (!qword_2A188E948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EC1BB4C(uint64_t a1)
{
  result = sub_29EC23480();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EC1BCA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_29EC1BD80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = sub_29EC23560();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_29EC1BE2C(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = sub_29EC23560();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_29EC1BEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29EC231B8();
  v3 = sub_29EC23480();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t NDFUserDefaultsBackedProperty.__allocating_init(wrappedValue:_:key:)(char *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = swift_allocObject();
  NDFUserDefaultsBackedProperty.init(wrappedValue:_:key:)(a1, a2, a3, a4);
  return v8;
}

char *NDFUserDefaultsBackedProperty.init(wrappedValue:_:key:)(char *a1, void *a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v9 = *(v8 - 1);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v55 = &v47[-v10];
  v11 = sub_29EC23560();
  v56 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v47[-v13];
  v15 = *(v9 + 56);
  v15(&v5[*(v7 + 136)], 1, 1, v8);
  v16 = *(*v5 + 144);
  v17 = sub_29EC231B8();
  v18 = sub_29EC23480();
  (*(*(v18 - 8) + 16))(&v5[v16], v17, v18);
  v19 = v59;
  *(v5 + 2) = v58;
  *(v5 + 3) = v19;
  v20 = *(*v5 + 120);
  v58 = v9;
  v59 = a1;
  v21 = *(v9 + 16);
  v21(&v5[v20], a1, v8);
  v22 = v57;
  *&v5[*(*v5 + 128)] = v57;
  v23 = v22;
  sub_29EC1CA20(v14);
  v57 = v8;
  v24 = v8;
  v25 = v56;
  v15(v14, 0, 1, v24);
  v26 = *(*v5 + 136);
  swift_beginAccess();
  v27 = *(v25 + 40);
  v53 = v14;
  v54 = v11;
  v27(&v5[v26], v14, v11);
  swift_endAccess();
  v28 = v23;

  v29 = sub_29EC23460();
  v30 = sub_29EC23510();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v49 = v21;
    v32 = v31;
    v33 = swift_slowAlloc();
    v50 = v33;
    v51 = swift_slowAlloc();
    v60[0] = v51;
    *v32 = 138413058;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2080;
    v48 = v30;
    v35 = *(v5 + 2);
    v34 = *(v5 + 3);
    v52 = v28;

    v36 = sub_29EC1B4DC(v35, v34, v60);

    *(v32 + 14) = v36;
    *(v32 + 22) = 2080;
    (*(v25 + 16))(v53, &v5[v26], v54);
    v37 = sub_29EC234C0();
    v39 = sub_29EC1B4DC(v37, v38, v60);

    *(v32 + 24) = v39;
    *(v32 + 32) = 2080;
    v40 = v57;
    v49(v55, &v5[*(*v5 + 120)], v57);
    v41 = sub_29EC234C0();
    v43 = sub_29EC1B4DC(v41, v42, v60);

    *(v32 + 34) = v43;
    _os_log_impl(&dword_29EC19000, v29, v48, "Initialized NDFUserDefaultsBackingStore with %@ for key: %s, value: %s [default: %s]", v32, 0x2Au);
    v44 = v50;
    sub_29EC1D1B4(v50);
    MEMORY[0x29EDACF00](v44, -1, -1);
    v45 = v51;
    swift_arrayDestroy();
    MEMORY[0x29EDACF00](v45, -1, -1);
    MEMORY[0x29EDACF00](v32, -1, -1);

    (*(v58 + 8))(v59, v40);
  }

  else
  {

    (*(v58 + 8))(v59, v57);
  }

  return v5;
}

uint64_t sub_29EC1C520(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2A1C7C4A8](a1, a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 192))(v4);
}

uint64_t sub_29EC1C600@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_29EC23560();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v12 - v7;
  sub_29EC1BD80(&v12 - v7);
  v9 = *(v3 - 8);
  v10 = *(v9 + 48);
  if (v10(v8, 1, v3) != 1)
  {
    return (*(v9 + 32))(a1, v8, v3);
  }

  (*(v9 + 16))(a1, v1 + *(*v1 + 120), v3);
  result = (v10)(v8, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_29EC1C7B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_29EC1D21C(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_29EC1C830(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_29EC1C600(v9);
  return sub_29EC1C944;
}

void sub_29EC1C944(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_29EC1D21C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_29EC1D21C(*(*a1 + 32), a2);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_29EC1CA20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_29EC23560();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v45 - v9;
  v11 = *(v4 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v8, v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v45 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v45 - v20;
  v22 = *&v2[*(v3 + 128)];
  v23 = *(v2 + 3);
  v49 = *(v2 + 2);
  v50 = v23;
  v24 = sub_29EC234A0();
  v25 = [v22 valueForKey_];

  if (v25)
  {
    sub_29EC23570();
    swift_unknownObjectRelease();
    sub_29EC1DBE0(v53, v54);
  }

  else
  {
    memset(v54, 0, sizeof(v54));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E740, &unk_29EC23DC0);
  v26 = swift_dynamicCast();
  v27 = *(v11 + 56);
  if (v26)
  {
    v27(v10, 0, 1, v4);
    v48 = *(v11 + 32);
    v48(v21, v10, v4);
    v28 = *(v11 + 16);
    v28(v18, v21, v4);

    v29 = sub_29EC23460();
    v30 = sub_29EC23530();

    v47 = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v54[0] = v46;
      *v31 = 136315394;
      v28(v51, v18, v4);
      v32 = sub_29EC234C0();
      v34 = v33;
      (*(v11 + 8))(v18, v4);
      v35 = sub_29EC1B4DC(v32, v34, v54);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_29EC1B4DC(v49, v50, v54);
      _os_log_impl(&dword_29EC19000, v29, v47, "Loaded value %s for key: %s", v31, 0x16u);
      v36 = v46;
      swift_arrayDestroy();
      MEMORY[0x29EDACF00](v36, -1, -1);
      MEMORY[0x29EDACF00](v31, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v18, v4);
    }

    return (v48)(v52, v21, v4);
  }

  else
  {
    v27(v10, 1, 1, v4);
    (*(v6 + 8))(v10, v5);

    v37 = sub_29EC23460();
    v38 = sub_29EC23530();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v54[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_29EC1B4DC(v49, v50, v54);
      *(v39 + 12) = 2080;
      (*(v11 + 16))(v51, &v2[*(*v2 + 120)], v4);
      v41 = sub_29EC234C0();
      v43 = sub_29EC1B4DC(v41, v42, v54);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_29EC19000, v37, v38, "No stored value found for key: %s, using default: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDACF00](v40, -1, -1);
      MEMORY[0x29EDACF00](v39, -1, -1);
    }

    return (*(v11 + 16))(v52, &v2[*(*v2 + 120)], v4);
  }
}

char *NDFUserDefaultsBackedProperty.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120), *(v1 + 80));

  v2 = *(*v0 + 136);
  v3 = sub_29EC23560();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 144);
  v5 = sub_29EC23480();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t NDFUserDefaultsBackedProperty.__deallocating_deinit()
{
  NDFUserDefaultsBackedProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t sub_29EC1D1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E738, &unk_29EC23D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29EC1D21C(uint64_t a1, uint64_t a2)
{
  v67 = *v2;
  v4 = *(v67 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v71 = &v65 - v9;
  v10 = sub_29EC23560();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v12);
  v15 = &v65 - v14;
  v16 = *(v10 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v13, v17);
  v75 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v68 = &v65 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v65 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v65 - v28;
  v30 = v5[2];
  v77 = a1;
  v80 = v5 + 2;
  v81 = v30;
  v30(&v65 - v28, a1, v4);
  v72 = v5[7];
  v73 = v5 + 7;
  v72(v29, 0, 1, v4);
  v76 = v2;
  sub_29EC1BD80(v26);
  v70 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = *(v16 + 16);
  v32(v15, v29, v10);
  v78 = v31;
  v32(&v15[v31], v26, v10);
  v79 = v5;
  v33 = v5[6];
  v82 = v4;
  if (v33(v15, 1, v4) == 1)
  {
    v34 = *(v16 + 8);
    v34(v26, v10);
    v34(v29, v10);
    v35 = v82;
    if (v33(&v15[v78], 1, v82) == 1)
    {
      v34(v15, v10);
      return;
    }
  }

  else
  {
    v66 = v26;
    v36 = v16;
    v37 = v68;
    v32(v68, v15, v10);
    v38 = v78;
    if (v33(&v15[v78], 1, v82) != 1)
    {
      v60 = v79;
      v61 = v71;
      v35 = v82;
      (v79[4])(v71, &v15[v38], v82);
      v62 = sub_29EC23490();
      v63 = v60[1];
      v63(v61, v35);
      v64 = *(v36 + 8);
      v64(v66, v10);
      v64(v29, v10);
      v63(v37, v35);
      v64(v15, v10);
      v40 = v77;
      v41 = v81;
      if (v62)
      {
        return;
      }

      goto LABEL_7;
    }

    v39 = *(v16 + 8);
    v39(v66, v10);
    v39(v29, v10);
    v35 = v82;
    (v79[1])(v37, v82);
  }

  (*(v69 + 8))(v15, v70);
  v40 = v77;
  v41 = v81;
LABEL_7:
  v65 = v10;
  v42 = v76;
  v43 = v74;
  v41(v74, v40, v35);

  v44 = sub_29EC23460();
  v45 = sub_29EC23530();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83[0] = v82;
    *v46 = 136315650;
    v47 = v75;
    sub_29EC1BD80(v75);
    v48 = sub_29EC234C0();
    v50 = sub_29EC1B4DC(v48, v49, v83);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v81(v71, v43, v35);
    v51 = sub_29EC234C0();
    v53 = v52;
    (v79[1])(v43, v35);
    v54 = sub_29EC1B4DC(v51, v53, v83);

    *(v46 + 14) = v54;
    *(v46 + 22) = 2080;
    *(v46 + 24) = sub_29EC1B4DC(v42[2], v42[3], v83);
    _os_log_impl(&dword_29EC19000, v44, v45, "Set value %s -> %s for key: %s", v46, 0x20u);
    v55 = v82;
    swift_arrayDestroy();
    MEMORY[0x29EDACF00](v55, -1, -1);
    v56 = v46;
    v41 = v81;
    MEMORY[0x29EDACF00](v56, -1, -1);
  }

  else
  {

    (v79[1])(v43, v35);
    v47 = v75;
  }

  v41(v47, v40, v35);
  v72(v47, 0, 1, v35);
  sub_29EC1BE2C(v47);
  v57 = *(v42 + *(*v42 + 128));
  v58 = sub_29EC235C0();
  v59 = sub_29EC234A0();
  [v57 setValue:v58 forKey:v59];
  swift_unknownObjectRelease();
}

__n128 sub_29EC1D9FC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_29EC1DA0C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_29EC23560();
    if (v3 <= 0x3F)
    {
      result = sub_29EC23480();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

_OWORD *sub_29EC1DBE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NonReentrantAsyncMethod.init(continuation:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for NonReentrantAsyncMethod(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for NonReentrantAsyncMethod(uint64_t a1)
{
  result = qword_2A188E9D8;
  if (!qword_2A188E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NonReentrantAsyncMethod.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NonReentrantAsyncMethod.continuation.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_29EC1DDEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NonReentrantAsyncMethod(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_29EC23E30;
  a2[1] = v6;
}

uint64_t sub_29EC1DE6C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_29EC1DF54;

  return v5();
}

uint64_t sub_29EC1DF54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29EC1E048(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for NonReentrantAsyncMethod(0) + 20));

  *v6 = &unk_29EC23E20;
  v6[1] = v5;
  return result;
}

uint64_t sub_29EC1E0C8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_29EC1E70C;

  return v4();
}

uint64_t NonReentrantAsyncMethod.block.getter()
{
  v1 = *(v0 + *(type metadata accessor for NonReentrantAsyncMethod(0) + 20));

  return v1;
}

uint64_t NonReentrantAsyncMethod.block.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NonReentrantAsyncMethod(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_29EC1E294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29EC1E370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_29EC1E434(uint64_t a1)
{
  sub_29EC1E4B8();
  if (v1 <= 0x3F)
  {
    sub_29EC1E51C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29EC1E4B8()
{
  if (!qword_2A188E750)
  {
    v0 = sub_29EC234F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A188E750);
    }
  }
}

unint64_t sub_29EC1E51C()
{
  result = qword_2A188E758;
  if (!qword_2A188E758)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A188E758);
  }

  return result;
}

uint64_t sub_29EC1E56C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC1E5A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EC1E70C;

  return sub_29EC1E0C8(v2);
}

uint64_t sub_29EC1E650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EC1DF54;

  return sub_29EC1DE6C(a1, v4);
}

uint64_t sub_29EC1E74C()
{
  sub_29EC23650();
  sub_29EC23660();
  return sub_29EC23680();
}

uint64_t sub_29EC1E7C0(uint64_t a1)
{
  sub_29EC23650();
  sub_29EC23660();
  return sub_29EC23680();
}

uint64_t sub_29EC1E804@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EC21B20(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

id NDFDevicePayload.init(coder:)(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v113 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v115 = &v105[-v10];
  MEMORY[0x2A1C7C4A8](v9, v11);
  v121 = &v105[-v12];
  v13 = sub_29EC23450();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v119 = &v105[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16, v18);
  v120 = &v105[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E768, &qword_29EC23E58);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v105[-v22];
  v24 = sub_29EC23430();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v105[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v27, v30);
  v126 = &v105[-v31];
  v32 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceModel];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_designatedDeviceReachability];
  *v33 = 0;
  v114 = v33;
  v33[2] = 1;
  v124 = v14;
  v34 = *(v14 + 56);
  v127 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  v122 = v13;
  v123 = v34;
  v34(&v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID], 1, 1, v13);
  v128 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV4];
  *v128 = xmmword_29EC23E40;
  v129 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV6];
  v118 = xmmword_29EC23E40;
  *v129 = xmmword_29EC23E40;
  v35 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_obscuredSSID];
  *v35 = 0;
  *(v35 + 1) = 0;
  v130 = v35;
  v36 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_natCount];
  *v36 = 0;
  v116 = v36;
  v36[2] = 1;
  v37 = &v1[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties];
  *v37 = 0;
  v117 = v37;
  v37[8] = 1;
  sub_29EC21DF0(0, &qword_2A188E770, 0x29EDB8DB0);
  v38 = sub_29EC23550();
  if (!v38)
  {
    goto LABEL_8;
  }

  v39 = v38;
  v125 = a1;
  (*(v25 + 56))(v23, 1, 1, v24);
  sub_29EC21C60(&qword_2A188E778, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF8]);
  sub_29EC235B0();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {

LABEL_9:

    sub_29EC21B44(&v2[v127]);
    sub_29EC21BAC(*v128, *(v128 + 1));
    sub_29EC21BAC(*v129, *(v129 + 1));

    type metadata accessor for NDFDevicePayload(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = *(v25 + 32);
  v40(v29, v23, v24);
  v41 = v126;
  v40(v126, v29, v24);
  v42 = sub_29EC21DF0(0, &qword_2A188E780, 0x29EDBA140);
  a1 = v125;
  v43 = sub_29EC23550();
  if (!v43)
  {
    (*(v25 + 8))(v41, v24);
    goto LABEL_8;
  }

  v44 = v43;
  v110 = v42;
  v111 = v25;
  v112 = v24;
  v45 = v121;
  v46 = v122;
  v123(v121, 1, 1, v122);
  v47 = sub_29EC21C60(&qword_2A188E788, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C30]);
  sub_29EC235B0();

  v48 = v124;
  v50 = v124 + 48;
  v49 = *(v124 + 48);
  if (v49(v45, 1, v46) == 1)
  {
    (*(v111 + 8))(v126, v112);
LABEL_8:

    goto LABEL_9;
  }

  v109 = v50;
  v107 = v49;
  v108 = v47;
  v52 = *(v48 + 32);
  v53 = v119;
  (v52)(v119, v45, v46);
  v54 = v120;
  v121 = v52;
  (v52)(v120, v53, v46);
  sub_29EC21DF0(0, &qword_2A188E790, 0x29EDBA070);
  v55 = sub_29EC23550();
  if (!v55 || (LOWORD(v142) = 0, BYTE2(v142) = 1, v56 = v55, sub_29EC23620(), v56, BYTE2(v142) == 1))
  {

    (*(v124 + 8))(v54, v46);
    (*(v111 + 8))(v126, v112);
    goto LABEL_9;
  }

  v106 = v142;
  (*(v111 + 16))(&v2[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_timestamp], v126, v112);
  (*(v124 + 16))(&v2[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceID], v54, v46);
  v119 = sub_29EC21DF0(0, &qword_2A188E798, 0x29EDBA0F8);
  v57 = sub_29EC23550();
  if (v57)
  {
    v142 = 0;
    v143 = 0;
    v58 = v57;
    sub_29EC234B0();

    v59 = v143;
    if (v143)
    {
      v60 = v142;
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  v61 = 1;
  swift_beginAccess();
  *v32 = v60;
  *(v32 + 1) = v59;

  *&v2[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole] = v106;
  v62 = sub_29EC23550();
  if (v62)
  {
    v140 = 0;
    v141 = 1;
    v63 = v62;
    sub_29EC23620();

    v64 = v140;
    v61 = v141;
  }

  else
  {
    v64 = 0;
  }

  v65 = 1;
  v66 = v114;
  swift_beginAccess();
  *v66 = v64;
  v66[2] = v61;
  v67 = sub_29EC23550();
  if (v67)
  {
    v68 = v67;
    v65 = 1;
    v69 = v113;
    v70 = v122;
    v123(v113, 1, 1, v122);
    sub_29EC235B0();

    v71 = v107(v69, 1, v70);
    v72 = v115;
    if (v71 != 1)
    {
      (v121)(v115, v69, v70);
      v65 = 0;
    }
  }

  else
  {
    v70 = v122;
    v72 = v115;
  }

  v123(v72, v65, 1, v70);
  v73 = v127;
  swift_beginAccess();
  sub_29EC21CA8(v72, &v2[v73]);
  swift_endAccess();
  sub_29EC21DF0(0, &qword_2A188E7A0, 0x29EDB8DA0);
  v74 = v125;
  v75 = sub_29EC23550();
  if (v75)
  {
    v139 = v118;
    v76 = v75;
    sub_29EC233F0();

    v77 = *(&v139 + 1);
    v78 = v124;
    if (*(&v139 + 1) >> 60 == 15)
    {
      v79 = 0;
      v77 = 0xF000000000000000;
    }

    else
    {
      v79 = v139;
    }
  }

  else
  {
    v79 = 0;
    v77 = 0xF000000000000000;
    v78 = v124;
  }

  v80 = v128;
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  *v80 = v79;
  v80[1] = v77;
  sub_29EC21BAC(v81, v82);
  v83 = sub_29EC23550();
  if (v83 && (v138 = v118, v84 = v83, sub_29EC233F0(), v84, v85 = *(&v138 + 1), *(&v138 + 1) >> 60 != 15))
  {
    v86 = v138;
  }

  else
  {
    v86 = 0;
    v85 = 0xF000000000000000;
  }

  v87 = v129;
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  *v87 = v86;
  v87[1] = v85;
  sub_29EC21BAC(v88, v89);
  v90 = sub_29EC23550();
  if (v90)
  {
    v136 = 0;
    v137 = 0;
    v91 = v90;
    sub_29EC234B0();

    v92 = v137;
    if (v137)
    {
      v93 = v136;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
    v92 = 0;
  }

  v94 = 1;
  v95 = v130;
  swift_beginAccess();
  *v95 = v93;
  *(v95 + 1) = v92;

  v96 = sub_29EC23550();
  if (v96)
  {
    v134 = 0;
    v135 = 1;
    v97 = v96;
    sub_29EC23620();

    v98 = v134;
    v94 = v135;
  }

  else
  {
    v98 = 0;
  }

  v99 = 1;
  v100 = v116;
  swift_beginAccess();
  *v100 = v98;
  v100[2] = v94;
  v101 = sub_29EC23550();
  (*(v78 + 8))(v120, v70);
  (*(v111 + 8))(v126, v112);
  if (v101)
  {
    v132 = 0;
    v133 = 1;
    sub_29EC23640();

    v101 = v132;
    v99 = v133;
  }

  v102 = v117;
  swift_beginAccess();
  *v102 = v101;
  v102[8] = v99;
  v103 = type metadata accessor for NDFDevicePayload(0);
  v131.receiver = v2;
  v131.super_class = v103;
  v104 = objc_msgSendSuper2(&v131, sel_init);

  return v104;
}

uint64_t sub_29EC1F6DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29EC23450();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id NDFDevicePayload.__allocating_init(timestamp:deviceID:deviceRole:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return NDFDevicePayload.init(timestamp:deviceID:deviceRole:)(a1, a2, v4);
}

id NDFDevicePayload.init(timestamp:deviceID:deviceRole:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceModel];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_designatedDeviceReachability];
  *v8 = 0;
  v8[2] = 1;
  v9 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  v10 = sub_29EC23450();
  v11 = *(v10 - 8);
  (*(v11 + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV4] = xmmword_29EC23E40;
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV6] = xmmword_29EC23E40;
  v12 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_obscuredSSID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_natCount];
  *v13 = 0;
  v13[2] = 1;
  v14 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_timestamp;
  v16 = sub_29EC23430();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a1, v16);
  (*(v11 + 16))(&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceID], a2, v10);
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole] = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for NDFDevicePayload(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v11 + 8))(a2, v10);
  (*(v17 + 8))(a1, v16);
  return v18;
}

void sub_29EC1F9EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v55 = &v54 - v6;
  v7 = sub_29EC23450();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29EC23430();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x29EDCA1E8];
  (*((*MEMORY[0x29EDCA1E8] & *v1) + 0xC0))(v15);
  v19 = sub_29EC23410();
  (*(v13 + 8))(v17, v12);
  v20 = sub_29EC234A0();
  [a1 encodeObject:v19 forKey:v20];

  (*((*v18 & *v2) + 0xD8))();
  v21 = sub_29EC23440();
  v54 = *(v8 + 8);
  v54(v11, v7);
  v22 = sub_29EC234A0();
  [a1 encodeObject:v21 forKey:v22];

  (*((*v18 & *v2) + 0x108))();
  if (v23)
  {
    v24 = sub_29EC234A0();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_29EC234A0();
  [a1 encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();

  (*((*v18 & *v2) + 0xF0))();
  v26 = sub_29EC23610();
  v27 = sub_29EC234A0();
  [a1 encodeObject:v26 forKey:v27];

  if (((*((*v18 & *v2) + 0x120))() & 0x10000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_29EC23610();
  }

  v29 = v55;
  v30 = sub_29EC234A0();
  [a1 encodeObject:v28 forKey:v30];
  swift_unknownObjectRelease();

  v31 = MEMORY[0x29EDCA1E8];
  (*((*MEMORY[0x29EDCA1E8] & *v2) + 0x138))();
  if ((*(v8 + 48))(v29, 1, v7) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_29EC23440();
    v54(v29, v7);
  }

  v33 = sub_29EC234A0();
  [a1 encodeObject:v32 forKey:v33];
  swift_unknownObjectRelease();

  v34 = (*((*v31 & *v2) + 0x150))();
  if (v35 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v37 = v34;
    v38 = v35;
    v36 = sub_29EC233E0();
    sub_29EC21BAC(v37, v38);
  }

  v39 = sub_29EC234A0();
  [a1 encodeObject:v36 forKey:v39];
  swift_unknownObjectRelease();

  v40 = (*((*v31 & *v2) + 0x168))();
  if (v41 >> 60 == 15)
  {
    v42 = 0;
  }

  else
  {
    v43 = v40;
    v44 = v41;
    v42 = sub_29EC233E0();
    sub_29EC21BAC(v43, v44);
  }

  v45 = sub_29EC234A0();
  [a1 encodeObject:v42 forKey:v45];
  swift_unknownObjectRelease();

  (*((*v31 & *v2) + 0x180))();
  if (v46)
  {
    v47 = sub_29EC234A0();
  }

  else
  {
    v47 = 0;
  }

  v48 = sub_29EC234A0();
  [a1 encodeObject:v47 forKey:v48];
  swift_unknownObjectRelease();

  if (((*((*v31 & *v2) + 0x198))() & 0x10000) != 0)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_29EC23610();
  }

  v50 = sub_29EC234A0();
  [a1 encodeObject:v49 forKey:v50];
  swift_unknownObjectRelease();

  (*((*v31 & *v2) + 0x1B0))();
  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_29EC23630();
  }

  v53 = sub_29EC234A0();
  [a1 encodeObject:v52 forKey:v53];
  swift_unknownObjectRelease();
}

uint64_t sub_29EC20350(uint64_t a1, void **a2)
{
  v4 = sub_29EC23430();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0xC8))(v7);
}

uint64_t sub_29EC20540(uint64_t a1, void **a2)
{
  v4 = sub_29EC23450();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0xE0))(v7);
}

uint64_t sub_29EC2065C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_29EC20708(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_29EC207FC@<X0>(void **a1@<X0>, _WORD *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_29EC208B0()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29EC208F4(__int16 a1)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_29EC209A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x108))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC20A08(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x110);

  return v4(v2, v3);
}

uint64_t sub_29EC20B00@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x120))();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_29EC20CB0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_29EC21D18(a1, &v9 - v6);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0x140))(v7);
}

uint64_t sub_29EC20D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  swift_beginAccess();
  return sub_29EC21D18(v1 + v3, a1);
}

uint64_t sub_29EC20DE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  swift_beginAccess();
  sub_29EC21CA8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_29EC20EA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC20F04(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x158);
  sub_29EC21D88(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_29EC21000@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC21064(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x170);
  sub_29EC21D88(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_29EC210F4(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_29EC21D88(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_29EC21158(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_29EC21BAC(v7, v8);
}

uint64_t sub_29EC21214@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x180))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC21278(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x188);

  return v4(v2, v3);
}

uint64_t sub_29EC21304(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_29EC21364(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_29EC21420@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x198))();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_29EC21508(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  return *v2 | (*(v2 + 2) << 16);
}

uint64_t sub_29EC21560(int a1, void *a2)
{
  v4 = v2 + *a2;
  result = swift_beginAccess();
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_29EC21610@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x1B0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_29EC216E8()
{
  v1 = v0 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_29EC21734(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *sub_29EC217F4()
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_29EC23400();
  }

  else
  {
    v3 = v2;
    sub_29EC233D0();

    swift_willThrow();
  }

  return v3;
}

uint64_t static NDFDevicePayload.decodedObject(from:)(uint64_t a1, uint64_t a2)
{
  sub_29EC21DF0(0, &qword_2A188E7A8, 0x29EDBA000);
  type metadata accessor for NDFDevicePayload(0);
  return sub_29EC23540();
}

id NDFDevicePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDFDevicePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFDevicePayload(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EC21B20(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 6u) << 8);
}

uint64_t sub_29EC21B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC21BAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EC21BC0(a1, a2);
  }

  return a1;
}

uint64_t sub_29EC21BC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for NDFDevicePayload(uint64_t a1)
{
  result = qword_2A188EBF0;
  if (!qword_2A188EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EC21C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29EC21CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC21D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC21D88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EC21D9C(a1, a2);
  }

  return a1;
}

uint64_t sub_29EC21D9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_29EC21DF0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_29EC21E3C()
{
  result = qword_2A188E7B0;
  if (!qword_2A188E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E7B0);
  }

  return result;
}

void sub_29EC21EA8(uint64_t a1)
{
  sub_29EC23430();
  if (v1 <= 0x3F)
  {
    sub_29EC23450();
    if (v2 <= 0x3F)
    {
      sub_29EC228A8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29EC228A8(uint64_t a1)
{
  if (!qword_2A188E820)
  {
    sub_29EC23450();
    v1 = sub_29EC23560();
    if (!v2)
    {
      atomic_store(v1, &qword_2A188E820);
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

uint64_t getEnumTagSinglePayload for NDFDaemonError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFDaemonError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_29EC22968(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EC22984(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

SymptomNetworkDiagnosticsCommon::NDFDeviceRole_optional __swiftcall NDFDeviceRole.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_29EC22A24()
{
  sub_29EC23650();
  sub_29EC23670();
  return sub_29EC23680();
}

uint64_t sub_29EC22A6C(uint64_t a1)
{
  sub_29EC23650();
  sub_29EC23670();
  return sub_29EC23680();
}

unint64_t sub_29EC22ADC()
{
  result = qword_2A188E890;
  if (!qword_2A188E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E890);
  }

  return result;
}

unint64_t sub_29EC22B34()
{
  result = qword_2A188E898;
  if (!qword_2A188E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E898);
  }

  return result;
}

unint64_t sub_29EC22B8C()
{
  result = qword_2A188E8A0;
  if (!qword_2A188E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8A0);
  }

  return result;
}

unint64_t sub_29EC22BE4()
{
  result = qword_2A188E8A8;
  if (!qword_2A188E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8A8);
  }

  return result;
}

unint64_t sub_29EC22C48()
{
  result = qword_2A188E8B0;
  if (!qword_2A188E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8B0);
  }

  return result;
}

unint64_t sub_29EC22CA0()
{
  result = qword_2A188E8B8;
  if (!qword_2A188E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8B8);
  }

  return result;
}

BOOL sub_29EC22D38(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_29EC22D68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29EC22D94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_29EC22E80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s31SymptomNetworkDiagnosticsCommon13NDFDeviceRoleOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s31SymptomNetworkDiagnosticsCommon13NDFDeviceRoleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NDFNetworkProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFNetworkProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_29EC2309C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_29EC23128()
{
  v0 = sub_29EC23480();
  __swift_allocate_value_buffer(v0, qword_2A188E920);
  __swift_project_value_buffer(v0, qword_2A188E920);
  sub_29EC23360();

  sub_29EC23388();

  return sub_29EC23470();
}

uint64_t sub_29EC231B8()
{
  if (qword_2A188F180 != -1)
  {
    swift_once();
  }

  v0 = sub_29EC23480();

  return __swift_project_value_buffer(v0, qword_2A188E920);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EC23254@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A188F180 != -1)
  {
    swift_once();
  }

  v2 = sub_29EC23480();
  v3 = __swift_project_value_buffer(v2, qword_2A188E920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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