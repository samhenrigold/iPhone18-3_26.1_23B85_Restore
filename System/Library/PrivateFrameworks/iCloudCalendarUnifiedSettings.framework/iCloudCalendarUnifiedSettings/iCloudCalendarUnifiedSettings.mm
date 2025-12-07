id sub_27550659C()
{
  v1 = OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v2 = *(v0 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id iCloudCalendarUnifiedSettingsProvider.__allocating_init(accountManager:presenter:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_calendarSettingsProvider] = 0;
  *&v5[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v5[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_accountManager] = a1;
  *&v5[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_presenter] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_275508768();

  return v8;
}

id iCloudCalendarUnifiedSettingsProvider.init(accountManager:presenter:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_calendarSettingsProvider] = 0;
  *&v2[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v2[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_accountManager] = a1;
  *&v2[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_presenter] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for iCloudCalendarUnifiedSettingsProvider();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_275508768();

  return v7;
}

char *iCloudCalendarUnifiedSettingsProvider.init(presenter:)(void *a1)
{
  *&v1[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_calendarSettingsProvider] = 0;
  *&v1[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v4 = result;
    v5 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    *&v1[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_accountManager] = v5;
    *&v1[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_presenter] = a1;
    v10.receiver = v1;
    v10.super_class = type metadata accessor for iCloudCalendarUnifiedSettingsProvider();
    v6 = a1;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    v8 = *&v7[OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_accountManager];
    v9 = v7;
    [v8 setDelegate_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2755069B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275508EB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275508768();
  v8 = sub_275508ED4();
  v9 = NSClassFromString(v8);

  if (v9 && (swift_getObjCClassMetadata(), v17[1] = &unk_288429928, swift_dynamicCastTypeToObjCProtocolConditional()))
  {
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithManager:*(v2 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_accountManager) presenter:*(v2 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_presenter)];
    *(v2 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider_calendarSettingsProvider) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (a2)
    {
      v11 = sub_275508ED4();
    }

    else
    {
      v11 = 0;
    }

    [v10 onCalendarTapWithDeeplink_];

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2809F4A40 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_2809F4A48);
    (*(v5 + 16))(v7, v12, v4);
    v13 = sub_275508E94();
    v14 = sub_275508F64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275505000, v13, v14, "[iCloudCalendarSettingsProvider] Unable to find CalendarSettingsSpecifierProvider", v15, 2u);
      MEMORY[0x277C7A100](v15, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

id iCloudCalendarUnifiedSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudCalendarUnifiedSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudCalendarUnifiedSettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_275506DEC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_27550839C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_275507E7C(a2, a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_275508608();
        v10 = v13;
      }

      sub_2755081D4(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

id sub_275506EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v9 = sub_275508EB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = sub_27550659C();
  v17 = [v16 accountForService_];

  if (!v17)
  {
    if (qword_2809F4A40 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v9, qword_2809F4A48);
    (*(v10 + 16))(v13, v46, v9);
    v47 = a1;
    v48 = sub_275508E94();
    v49 = sub_275508F64();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v10;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v51 = 136315138;
      v53 = sub_275508F04();
      v55 = sub_2755078D4(v53, v54, &v62);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_275505000, v48, v49, "No account exist for serviceType: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x277C7A100](v52, -1, -1);
      MEMORY[0x277C7A100](v51, -1, -1);

      (*(v50 + 8))(v13, v9);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    return 0;
  }

  v58 = v15;
  v59 = v10;
  v18 = v9;
  v19 = OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v20 = [*(v5 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager) altDSIDForAccount:v17 service:a1];
  if (v20)
  {
    v21 = v20;
    v22 = sub_275508F04();
    v24 = v23;

    if (v22 == a2 && v24 == a3)
    {
LABEL_23:

      return v17;
    }

    v26 = sub_275508FD4();

    if (v26)
    {
      return v17;
    }
  }

  v27 = [*(v5 + v19) DSIDForAccount:v17 service:a1];
  v28 = v18;
  v30 = v58;
  v29 = v59;
  if (!v27)
  {
LABEL_14:
    if (qword_2809F4A40 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v28, qword_2809F4A48);
    (*(v29 + 16))(v30, v37, v28);
    v38 = a1;
    v39 = sub_275508E94();
    v40 = sub_275508F64();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v42;
      *v41 = 136315138;
      v43 = sub_275508F04();
      v45 = sub_2755078D4(v43, v44, &v62);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_275505000, v39, v40, "No matching account found for serviceType: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x277C7A100](v42, -1, -1);
      MEMORY[0x277C7A100](v41, -1, -1);
    }

    (*(v29 + 8))(v30, v28);
    return 0;
  }

  v31 = v27;
  v32 = sub_275508F04();
  v34 = v33;

  if (v32 == v60 && v34 == v61)
  {
    goto LABEL_23;
  }

  v36 = sub_275508FD4();

  if ((v36 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v17;
}

uint64_t sub_27550747C()
{
  v0 = sub_275508EB4();
  __swift_allocate_value_buffer(v0, qword_2809F4A48);
  __swift_project_value_buffer(v0, qword_2809F4A48);
  return sub_275508EA4();
}

uint64_t sub_2755074F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_275508F04();
  v3 = MEMORY[0x277C79CB0](v2);

  return v3;
}

uint64_t sub_275507534(uint64_t a1, uint64_t a2)
{
  sub_275508F04();
  sub_275508F14();
}

uint64_t sub_275507588(uint64_t a1, uint64_t a2)
{
  sub_275508F04();
  sub_275508FF4();
  sub_275508F14();
  v2 = sub_275509004();

  return v2;
}

uint64_t sub_275507604(uint64_t a1, id *a2)
{
  result = sub_275508EE4();
  *a2 = 0;
  return result;
}

uint64_t sub_27550767C(uint64_t a1, id *a2)
{
  v3 = sub_275508EF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2755076FC@<X0>(uint64_t *a3@<X8>)
{
  sub_275508F04();
  v4 = sub_275508ED4();

  *a3 = v4;
  return result;
}

uint64_t sub_275507740(void *a1, uint64_t *a2)
{
  v2 = sub_275508F04();
  v4 = v3;
  if (v2 == sub_275508F04() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_275508FD4();
  }

  return v7 & 1;
}

uint64_t sub_2755077C8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_275508ED4();

  *a2 = v3;
  return result;
}

uint64_t sub_275507810@<X0>(uint64_t *a2@<X8>)
{
  result = sub_275508F04();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_27550783C(uint64_t a1)
{
  v2 = sub_275508E50(&qword_2809F49A0, &unk_2755097D4);
  v3 = sub_275508E50(&qword_2809F49D8, &unk_275509734);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2755078D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2755079A0(v11, 0, 0, 1, a1, a2);
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
    sub_275508CA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2755079A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275507AAC(a5, a6);
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
    result = sub_275508F94();
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

void *sub_275507AAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_275507AF8(a1, a2);
  sub_275507C28(&unk_2884286A8);
  return v3;
}

void *sub_275507AF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_275507D14(v5, 0);
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

  result = sub_275508F94();
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
        v10 = sub_275508F34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275507D14(v10, 0);
        result = sub_275508F84();
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

uint64_t sub_275507C28(uint64_t result)
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

  result = sub_275507D88(result, v11, 1, v3);
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

void *sub_275507D14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F49A8, &qword_275509688);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_275507D88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F49A8, &qword_275509688);
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

unint64_t sub_275507E7C(uint64_t a1, uint64_t a2)
{
  sub_275508F04();
  sub_275508FF4();
  sub_275508F14();
  v3 = sub_275509004();

  return sub_275508504(a1, v3);
}

uint64_t sub_275507F10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F49B0, &qword_275509690);
  v36 = v4;
  result = sub_275508FB4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_275508F04();
      sub_275508FF4();
      sub_275508F14();
      v25 = sub_275509004();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

void sub_2755081D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275508F74() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_275508F04();
      sub_275508FF4();
      v10 = v9;
      sub_275508F14();
      v11 = sub_275509004();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_27550839C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_275507E7C(a2, a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_275507F10(v13, a3 & 1);
      v8 = sub_275507E7C(a2, v17);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType();
        sub_275508FE4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_275508608();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_275508504(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_275508F04();
      v8 = v7;
      if (v6 == sub_275508F04() && v8 == v9)
      {
        break;
      }

      v11 = sub_275508FD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_275508608()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F49B0, &qword_275509690);
  v2 = *v0;
  v3 = sub_275508FA4();
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

void sub_275508768()
{
  v0 = NSOpenStepRootDirectory();
  sub_275508F04();

  sub_275508F54();
  sub_275508F24();
  v5 = sub_275508F54();
  v6 = v1;
  sub_275508F24();
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_275508ED4();

  v4 = [v2 initWithPath_];

  if (!v4 || ([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _s29iCloudCalendarUnifiedSettings01iabcD8ProviderC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0()
{
  v1 = v0;
  v25 = MEMORY[0x277D84F98];
  v2 = sub_27550659C();
  v3 = *MEMORY[0x277CED1A0];
  v4 = [v2 accountForService_];

  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_275506DEC(v4, v5);
    v7 = OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
    v8 = [*(v1 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager) altDSIDForAccount:v6 service:v5];
    if (v8)
    {
      v9 = v8;
      v10 = sub_275508F04();
      v12 = v11;

      v13 = [*(v1 + v7) DSIDForAccount:v6 service:v5];
      if (v13)
      {
        v14 = v13;
        v15 = sub_275508F04();
        v17 = v16;

        v18 = *MEMORY[0x277CED1B0];
        v19 = sub_275506EF0(*MEMORY[0x277CED1B0], v10, v12, v15, v17);

        if (v19)
        {
          v20 = v19;
          sub_275506DEC(v19, v18);
        }
      }

      else
      {
      }
    }
  }

  v21 = *(v1 + OBJC_IVAR___iCloudCalendarUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
  v22 = *MEMORY[0x277CED1C0];
  v23 = [v21 accountForService_];
  if (v23)
  {
    sub_275506DEC(v23, v22);
  }

  return v25;
}

void type metadata accessor for AIDAServiceType()
{
  if (!qword_2809F49B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F49B8);
    }
  }
}

unint64_t sub_275508C10()
{
  result = qword_2809F4998;
  if (!qword_2809F4998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F4998);
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

uint64_t sub_275508CA8(uint64_t a1, uint64_t a2)
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

uint64_t sub_275508E50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}