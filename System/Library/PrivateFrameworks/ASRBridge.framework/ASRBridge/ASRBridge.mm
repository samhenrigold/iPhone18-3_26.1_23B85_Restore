void sub_22325FC54(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v52 - v8;
  v9 = sub_2232A9504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v14 = __swift_project_value_buffer(v13, qword_28131DB88);
  v15 = a1;
  v55 = v14;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  v18 = os_log_type_enabled(v16, v17);
  v56 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v53 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v58[0] = v21;
    *v20 = 136315138;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_2232AB064();
    v24 = v23;
    (*(v10 + 8))(v12, v56);
    v25 = sub_2232603D0(v22, v24, v58);
    v9 = v56;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22325E000, v16, v17, "handling session started for session id: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DD8AC0](v21, -1, -1);
    v26 = v20;
    v6 = v53;
    MEMORY[0x223DD8AC0](v26, -1, -1);
  }

  v27 = v54;
  sub_2232AA614();
  (*(v10 + 56))(v27, 0, 1, v9);
  v28 = qword_28131DB58;
  swift_beginAccess();
  sub_223260794(v27, v2 + v28, &unk_27D0812C0, &qword_2232AD0C0);
  swift_endAccess();
  sub_2232A97E4();
  v29 = sub_2232AA794();
  (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
  v30 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v6, v2 + v30, &unk_27D0814C0, &unk_2232AC480);
  swift_endAccess();
  sub_2232AAA34();
  __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_2232AA614();
  v31 = v56;
  sub_2232AA764();
  v34 = *(v10 + 8);
  v32 = (v10 + 8);
  v33 = v34;
  (v34)(v12, v31);
  v35 = qword_28131DB68;
  swift_beginAccess();
  sub_223260794(v57, v2 + v35, &unk_27D0818D8, ",6");
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  *(v2 + qword_28131DB28) = sub_2232A97D4() & 1;
  if (*(v2 + qword_28131D288) == 1)
  {
    sub_2232AA614();
    v36 = sub_2232AA634();
    sub_223260840(v12, v36, v37);

    (v33)(v12, v31);
  }

  v53 = v33;
  v54 = v32;
  v38 = v15;

  v39 = sub_2232AAAC4();
  v40 = sub_2232AAD84();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57[0] = v42;
    *v41 = 136315394;
    sub_223260E74(v2 + v35, v58, &unk_27D0818D8, ",6");
    v43 = v59;
    sub_223260EDC(v58, &unk_27D0818D8, ",6");
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = 544501582;
    }

    if (v43)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE400000000000000;
    }

    v46 = sub_2232603D0(v44, v45, v57);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v47 = v56;
    v48 = sub_2232AB064();
    v50 = v49;
    (v53)(v12, v47);
    v51 = sub_2232603D0(v48, v50, v57);

    *(v41 + 14) = v51;
    _os_log_impl(&dword_22325E000, v39, v40, "%sFound session state for session id %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v42, -1, -1);
    MEMORY[0x223DD8AC0](v41, -1, -1);
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

uint64_t sub_223260388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2232603D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22326049C(v11, 0, 0, 1, a1, a2);
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
    sub_2232606EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22326049C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_223260F3C(a5, a6);
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
    result = sub_2232AAF84();
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

unint64_t sub_2232605A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2232A2C98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_2232606A4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2232606EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_223260794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_223260840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v5 = sub_2232AADC4();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232AADB4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2232AAB44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2232A9504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v10 + 16);
  v31(v12, a1, v9);
  v34 = v3;
  sub_2232AAA14();
  v33 = *(v3 + qword_28131D270);
  v32 = type metadata accessor for AttendingStatesServiceHandler(0);
  v13 = objc_allocWithZone(v32);
  v30 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue;
  v14 = sub_2232606A4(0, &qword_28131D1B0, 0x277D85C78);
  v29[1] = "attendingStatesServiceHandler";
  v29[2] = v14;
  sub_2232AAB34();
  v41 = MEMORY[0x277D84F90];
  sub_223260388(&unk_28131D1B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818F0, &qword_2232AD040);
  sub_223260DAC();
  sub_2232AAEE4();
  (*(v36 + 104))(v35, *MEMORY[0x277D85260], v37);
  *&v13[v30] = sub_2232AADF4();
  v31(&v13[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId], v12, v9);
  v15 = &v13[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId];
  v16 = v39;
  *v15 = v38;
  v15[1] = v16;
  sub_223260E10(v42, &v13[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher]);
  *&v13[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_candidateRequestCacheManager] = v33;
  v40.receiver = v13;
  v40.super_class = v32;

  v17 = objc_msgSendSuper2(&v40, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  (*(v10 + 8))(v12, v9);
  v18 = v34;
  v19 = *(v34 + qword_28131DB30);
  *(v34 + qword_28131DB30) = v17;
  v20 = v18;
  v21 = v17;

  v22 = [objc_allocWithZone(MEMORY[0x277D24240]) initWithDelegate_];
  v23 = *(v20 + qword_28131DB60);
  *(v20 + qword_28131DB60) = v22;
  v24 = v22;

  [v24 startUpdateStates];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  __swift_project_value_buffer(v25, qword_28131DB88);
  v26 = sub_2232AAAC4();
  v27 = sub_2232AAD84();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22325E000, v26, v27, "Successfully setup Attending handling in AsrBridge", v28, 2u);
    MEMORY[0x223DD8AC0](v28, -1, -1);
  }
}

uint64_t type metadata accessor for AttendingStatesServiceHandler(uint64_t a1)
{
  result = qword_28131D5A8;
  if (!qword_28131D5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223260DAC()
{
  result = qword_28131D1F8;
  if (!qword_28131D1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0818F0, &qword_2232AD040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D1F8);
  }

  return result;
}

uint64_t sub_223260E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223260E74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_223260EDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_223260F3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_223261168(a1, a2);
  sub_223260F88(&unk_28368CAB8);
  return v3;
}

uint64_t sub_223260F88(uint64_t result)
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

  result = sub_223261074(result, v11, 1, v3);
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

char *sub_223261074(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081960, &qword_2232ACE98);
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

void *sub_223261168(uint64_t a1, unint64_t a2)
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

  v6 = sub_2232644DC(v5, 0);
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

  result = sub_2232AAF84();
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
        v10 = sub_2232AAC64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2232644DC(v10, 0);
        result = sub_2232AAF54();
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

void sub_2232612E0(void *a1)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v56[-v3];
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v56[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v56[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v56[-v19];
  v21 = qword_28131DB58;
  swift_beginAccess();
  v62 = v1;
  v59 = v21;
  sub_223260E74(v1 + v21, v20, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  v22 = *(v5 + 56);
  v22(v18, 0, 1, v4);
  v23 = *(v8 + 56);
  sub_223260E74(v20, v10, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v18, &v10[v23], &unk_27D0812C0, &qword_2232AD0C0);
  v65 = v5;
  v24 = *(v5 + 48);
  if (v24(v10, 1, v4) == 1)
  {
    v58 = v22;
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    if (v24(&v10[v23], 1, v4) == 1)
    {
      sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v40 = sub_2232AAAD4();
      __swift_project_value_buffer(v40, qword_28131DB88);
      v41 = sub_2232AAAC4();
      v42 = sub_2232AAD84();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v62;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22325E000, v41, v42, "setting sessionId and sessionState to nil", v45, 2u);
        MEMORY[0x223DD8AC0](v45, -1, -1);
      }

      v46 = v60;
      v58(v60, 1, 1, v4);
      v47 = v59;
      swift_beginAccess();
      sub_223260794(v46, v44 + v47, &unk_27D0812C0, &qword_2232AD0C0);
      swift_endAccess();
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v48 = qword_28131DB68;
      swift_beginAccess();
      sub_223260794(v67, v44 + v48, &unk_27D0818D8, ",6");
      swift_endAccess();
      v49 = sub_2232AA794();
      v50 = v61;
      (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
      v51 = qword_28131DB20;
      swift_beginAccess();
      sub_223260794(v50, v44 + v51, &unk_27D0814C0, &unk_2232AC480);
      swift_endAccess();
      *(v44 + qword_28131DB28) = 2;
      sub_2232605A8(MEMORY[0x277D84F90], &unk_27D081920, &qword_2232ACE70);
      sub_2232AA8B4();
      if (*(v44 + qword_28131D288) == 1)
      {
        v52 = sub_2232AA634();
        v54 = v53;
        v55 = v63;
        sub_2232AA614();
        sub_223261C98(v52, v54, v55);

        (*(v65 + 8))(v55, v4);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v10, v64, &unk_27D0812C0, &qword_2232AD0C0);
  if (v24(&v10[v23], 1, v4) == 1)
  {
    sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v65 + 8))(v64, v4);
LABEL_6:
    sub_223260EDC(v10, &unk_27D0818B8, "(6");
    goto LABEL_7;
  }

  v58 = v22;
  v36 = v65;
  v37 = v63;
  (*(v65 + 32))(v63, &v10[v23], v4);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v38 = v64;
  v57 = sub_2232AABE4();
  v39 = *(v36 + 8);
  v39(v37, v4);
  sub_223260EDC(v18, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
  v39(v38, v4);
  sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
  if (v57)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  __swift_project_value_buffer(v25, qword_28131DB88);
  v26 = v66;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD94();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v67[0] = v30;
    *v29 = 136315138;
    v31 = v63;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_2232AB064();
    v34 = v33;
    (*(v65 + 8))(v31, v4);
    v35 = sub_2232603D0(v32, v34, v67);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_22325E000, v27, v28, "SessionId: %s is not the current session, ignoring", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);
  }
}

void sub_223261C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_223261D0C(a1, a2, a3);
  v5 = qword_28131DB60;
  [*(v4 + qword_28131DB60) invalidate];
  v6 = *(v4 + v5);
  *(v4 + v5) = 0;

  v7 = *(v4 + qword_28131DB30);
  *(v4 + qword_28131DB30) = 0;
}

uint64_t sub_223261D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v25 = sub_2232AAB14();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2232AAB44();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2232A9504();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + 16);
  (*(v10 + 16))(v12, a3, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_2232622E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  sub_2232AAB24();
  v28 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v19 = v25;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v8, v6, v18);
  _Block_release(v18);
  (*(v27 + 8))(v6, v19);
  (*(v24 + 8))(v8, v26);
}

uint64_t sub_2232620C4()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223262204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22326224C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2232622A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2232622E4()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_223262380(v0 + v2, v6, v7, v8);
}

uint64_t sub_223262380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CacheKey(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  v14 = sub_2232A9504();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(v8 + 28)];
  *v15 = a2;
  v15[1] = a3;
  sub_223262524(v13, v11);
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  swift_beginAccess();

  sub_223262588(&v18, v11);
  swift_endAccess();
  return sub_223262940(v13);
}

uint64_t type metadata accessor for CacheKey(uint64_t a1)
{
  result = qword_28131D318;
  if (!qword_28131D318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223262524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223262588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*a1 == 1)
  {
    v5 = sub_2232626FC(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v19[0] = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2232A5684();
        v9 = v19[0];
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for CacheKey(0);
      sub_223262940(v10 + *(*(v11 - 8) + 72) * v7);

      sub_2232A4188(v7, v9);
      result = sub_223262940(a2);
      *v3 = v9;
    }

    else
    {

      return sub_223262940(a2);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 24);
    v15 = *(a1 + 16);
    v16 = *(a1 + 8);
    v19[0] = *a1;
    v19[1] = v16;
    v20 = v15 & 1;
    v21 = v14;
    v22 = v13 & 1;
    v23 = *(a1 + 40);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2232A4B1C(v19, a2, v17);
    result = sub_223262940(a2);
    *v2 = v18;
  }

  return result;
}

unint64_t sub_2232626FC(uint64_t a1)
{
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2232AABD4();
  type metadata accessor for CacheKey(0);
  sub_2232AAC44();
  v2 = sub_2232AB114();

  return sub_2232627CC(a1, v2);
}

unint64_t sub_2232627CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CacheKey(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_223262524(*(v2 + 48) + v12 * v10, v8);
      if (sub_2232A94E4())
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_2232AB094() & 1) != 0)
        {
          break;
        }
      }

      sub_223262940(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_223262940(v8);
  }

  return v10;
}

uint64_t sub_223262940(uint64_t a1)
{
  v2 = type metadata accessor for CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223262A4C(void *a1, const char *a2, SEL *a3, const char *a4, const char *a5, ...)
{
  v72 = a5;
  v67 = a4;
  v68 = a2;
  v69 = a3;
  v77 = a1;
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v64[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v64[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v64[-v21];
  v23 = qword_28131DB58;
  swift_beginAccess();
  v76 = v5;
  v70 = v23;
  sub_223260E74(v5 + v23, v22, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v7 + 56))(v20, 0, 1, v6);
  v24 = *(v10 + 56);
  sub_223260E74(v22, v12, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v20, &v12[v24], &unk_27D0812C0, &qword_2232AD0C0);
  v74 = v7;
  v25 = *(v7 + 48);
  if (v25(v12, 1, v6) == 1)
  {
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    if (v25(&v12[v24], 1, v6) == 1)
    {
      sub_223260EDC(v12, &unk_27D0812C0, &qword_2232AD0C0);
      v26 = v76;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v43 = sub_2232AAAD4();
      __swift_project_value_buffer(v43, qword_28131DB88);
      v44 = v77;
      v45 = sub_2232AAAC4();
      v46 = sub_2232AAD84();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v78 = v48;
        *v47 = 136315138;
        v49 = v73;
        sub_2232AA614();
        v50 = sub_2232A94C4();
        v52 = v51;
        (*(v74 + 8))(v49, v6);
        v53 = sub_2232603D0(v50, v52, &v78);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_22325E000, v45, v46, v68, v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x223DD8AC0](v48, -1, -1);
        MEMORY[0x223DD8AC0](v47, -1, -1);
      }

      v54 = *(v26 + qword_28131DB60);
      if (v54)
      {
        [v54 *v69];
      }

      else
      {
        v55 = sub_2232AAAC4();
        v56 = sub_2232AAD94();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_22325E000, v55, v56, v67, v57, 2u);
          MEMORY[0x223DD8AC0](v57, -1, -1);
        }
      }

      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v12, v75, &unk_27D0812C0, &qword_2232AD0C0);
  if (v25(&v12[v24], 1, v6) == 1)
  {
    sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v74 + 8))(v75, v6);
LABEL_6:
    sub_223260EDC(v12, &unk_27D0818B8, "(6");
    v26 = v76;
    goto LABEL_7;
  }

  v36 = v6;
  v38 = v73;
  v37 = v74;
  (*(v74 + 32))(v73, &v12[v24], v36);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v66 = v25;
  v39 = v75;
  v65 = sub_2232AABE4();
  v40 = v37;
  v6 = v36;
  v41 = *(v40 + 8);
  v41(v38, v36);
  sub_223260EDC(v20, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
  v42 = v39;
  v25 = v66;
  v41(v42, v36);
  sub_223260EDC(v12, &unk_27D0812C0, &qword_2232AD0C0);
  v26 = v76;
  if (v65)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v27 = sub_2232AAAD4();
  __swift_project_value_buffer(v27, qword_28131DB88);

  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v78 = v31;
    *v30 = 136315138;
    v32 = v26 + v70;
    v33 = v71;
    sub_223260E74(v32, v71, &unk_27D0812C0, &qword_2232AD0C0);
    if (v25(v33, 1, v6))
    {
      sub_223260EDC(v33, &unk_27D0812C0, &qword_2232AD0C0);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v58 = v6;
      v60 = v73;
      v59 = v74;
      (*(v74 + 16))(v73, v33, v58);
      sub_223260EDC(v33, &unk_27D0812C0, &qword_2232AD0C0);
      v61 = sub_2232A94C4();
      v34 = v62;
      (*(v59 + 8))(v60, v58);
      v35 = v61;
    }

    v63 = sub_2232603D0(v35, v34, &v78);

    *(v30 + 4) = v63;
    _os_log_impl(&dword_22325E000, v28, v29, v72, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DD8AC0](v31, -1, -1);
    MEMORY[0x223DD8AC0](v30, -1, -1);
  }
}

uint64_t sub_2232632C4@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  MEMORY[0x28223BE20](v1 - 8);
  v70 = v64 - v2;
  v3 = sub_2232AA714();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v3);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = v64 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v64 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081860, &qword_2232ACCA8);
  v12 = *(v4 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2232AC340;
  v15 = v14 + v13;
  v16 = *MEMORY[0x277D5D1D0];
  v69 = v5;
  v17 = *(v5 + 104);
  v17(v15, v16, v3);
  v18 = *MEMORY[0x277D5D1A8];
  v17(v15 + v12, v18, v3);
  v66 = *MEMORY[0x277D5D1C8];
  (v17)(v15 + 2 * v12);
  v19 = sub_223264760(v14);

  v71 = v17;
  v17(v11, v16, v3);
  if (*(v19 + 16) && (v20 = sub_223264408(v11), (v21 & 1) != 0))
  {
    sub_2232606EC(*(v19 + 56) + 32 * v20, v74);
    v22 = *(v69 + 8);
    v22(v11, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
    if (swift_dynamicCast())
    {
      v23 = v73;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v22 = *(v69 + 8);
    v22(v11, v3);
    v23 = 0;
  }

  v24 = v65;
  v71(v65, v18, v3);
  if (*(v19 + 16) && (v25 = sub_223264408(v24), (v26 & 1) != 0))
  {
    sub_2232606EC(*(v19 + 56) + 32 * v25, v74);
    v22(v24, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    if (swift_dynamicCast())
    {
      v27 = v73;
      goto LABEL_13;
    }
  }

  else
  {
    v22(v24, v3);
  }

  v27 = MEMORY[0x277D84F90];
LABEL_13:
  v65 = v22;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v28 = sub_2232AAAD4();
  v29 = __swift_project_value_buffer(v28, qword_28131DB88);

  v64[1] = v29;
  v30 = sub_2232AAAC4();
  v31 = sub_2232AAD84();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v64[0] = v23;
    v33 = v32;
    v34 = swift_slowAlloc();
    v74[0] = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x223DD80A0](v27, MEMORY[0x277D837D0]);
    v37 = sub_2232603D0(v35, v36, v74);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_22325E000, v30, v31, "displayHintsFromSession: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DD8AC0](v34, -1, -1);
    v38 = v33;
    v23 = v64[0];
    MEMORY[0x223DD8AC0](v38, -1, -1);
  }

  v39 = v70;
  v40 = v72;
  v41 = v67;
  v71(v67, v66, v3);
  if (*(v19 + 16) && (v42 = sub_223264408(v41), (v43 & 1) != 0))
  {
    sub_2232606EC(*(v19 + 56) + 32 * v42, v74);
    (v65)(v41, v3);

    v44 = sub_2232A95E4();
    v45 = swift_dynamicCast();
    (*(*(v44 - 8) + 56))(v39, v45 ^ 1u, 1, v44);
  }

  else
  {

    (v65)(v41, v3);
    v46 = sub_2232A95E4();
    (*(*(v46 - 8) + 56))(v39, 1, 1, v46);
  }

  v47 = sub_223263B38(v23, v39);
  v48 = [objc_opt_self() isDictationAutoPunctuationEnabled];
  v49 = sub_22326779C(v23, v48);
  v50 = sub_22326B7AC(v23);
  v52 = v51;
  if (*(v40 + qword_28131D8D0))
  {

    v53 = sub_2232AAAC4();
    v54 = sub_2232AAD84();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22325E000, v53, v54, "Sending empty JITLME for MUX enabled device for improving ASR performance.", v55, 2u);
      MEMORY[0x223DD8AC0](v55, -1, -1);
    }

    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    v72 = v47;
    v57 = sub_2232AAAC4();
    v58 = sub_2232AAD84();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v23;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22325E000, v57, v58, "Attaching display Hints to ASR", v60, 2u);
      v61 = v60;
      v23 = v59;
      MEMORY[0x223DD8AC0](v61, -1, -1);
    }

    sub_2232AA944();
    v74[0] = v23;
    v74[1] = v27;
    sub_22326BF10();
    sub_22326C1EC();
    sub_22326C2DC();
    sub_22326C288();
    sub_2232A9514();

    v56 = v73;
    v39 = v70;
    v47 = v72;
  }

  result = sub_223260EDC(v39, &qword_27D081410, &qword_2232ACCA0);
  v63 = v68;
  *v68 = v47;
  *(v63 + 8) = v49 & 1;
  v63[2] = v56;
  v63[3] = v50;
  v63[4] = v52;
  return result;
}

uint64_t sub_223263B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2232A9664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_2232A95E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (*(v12 + 48))(a2, 1, v11) != 1)
  {
    v56 = a1;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    v16 = sub_2232AAAC4();
    v17 = sub_2232AAD94();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v55 = v14;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_22325E000, v16, v17, "Both LegacyNLContext and SystemDialogActs are present for this request", v18, 2u);
      v20 = v19;
      v14 = v55;
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    a1 = v56;
  }

  sub_2232646F0(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2232643A0(v10);
    if (a1)
    {
      v21 = *(a1 + 16);
      if (v21)
      {
        v24 = *(v5 + 16);
        v22 = v5 + 16;
        v23 = v24;
        v25 = (v22 - 8);
        v26 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v27 = *(v22 + 56);
        while (1)
        {
          v23(v7, v26, v4);
          if (sub_2232A9624())
          {
            break;
          }

          if (sub_2232A9634())
          {
            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v50 = sub_2232AAAD4();
            __swift_project_value_buffer(v50, qword_28131DB88);
            v51 = sub_2232AAAC4();
            v52 = sub_2232AAD84();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_22325E000, v51, v52, "SDA found indicating confirmation task type", v53, 2u);
              MEMORY[0x223DD8AC0](v53, -1, -1);
            }

            if (qword_28131D5D0 != -1)
            {
              swift_once();
            }

            v54 = byte_28131D5D8;
            (*v25)(v7, v4);
            v38 = v54 == 0;
            v48 = 9;
            v49 = 7;
            goto LABEL_49;
          }

          (*v25)(v7, v4);
          v26 += v27;
          if (!--v21)
          {
            goto LABEL_15;
          }
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v43 = sub_2232AAAD4();
        __swift_project_value_buffer(v43, qword_28131DB88);
        v44 = sub_2232AAAC4();
        v45 = sub_2232AAD84();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_22325E000, v44, v45, "SDA found indicating SiriDictation task type", v46, 2u);
          MEMORY[0x223DD8AC0](v46, -1, -1);
        }

        if (qword_28131D5D0 != -1)
        {
          swift_once();
        }

        v47 = byte_28131D5D8;
        (*v25)(v7, v4);
        v38 = v47 == 0;
        goto LABEL_48;
      }

LABEL_15:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v28 = sub_2232AAAD4();
      __swift_project_value_buffer(v28, qword_28131DB88);
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD84();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_35;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "No relevant SDA found, using default task type";
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v41 = sub_2232AAAD4();
      __swift_project_value_buffer(v41, qword_28131DB88);
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD84();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_35;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "SystemDialogActs not present using default task type";
    }

    _os_log_impl(&dword_22325E000, v29, v30, v32, v31, 2u);
    MEMORY[0x223DD8AC0](v31, -1, -1);
LABEL_35:

    if (qword_28131D5D0 != -1)
    {
      swift_once();
    }

    v40 = byte_28131D5D8 == 0;
LABEL_38:
    if (v40)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  (*(v12 + 32))(v14, v10, v11);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v33 = sub_2232AAAD4();
  __swift_project_value_buffer(v33, qword_28131DB88);
  v34 = sub_2232AAAC4();
  v35 = sub_2232AAD84();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22325E000, v34, v35, "LegacyNLContext is present, ignoring SystemDialogActs", v36, 2u);
    MEMORY[0x223DD8AC0](v36, -1, -1);
  }

  if ((sub_2232A95D4() & 1) == 0)
  {
    if (qword_28131D5D0 != -1)
    {
      swift_once();
    }

    v39 = byte_28131D5D8;
    (*(v12 + 8))(v14, v11);
    v40 = v39 == 0;
    goto LABEL_38;
  }

  if (qword_28131D5D0 != -1)
  {
    swift_once();
  }

  v37 = byte_28131D5D8;
  (*(v12 + 8))(v14, v11);
  v38 = v37 == 0;
LABEL_48:
  v48 = 2;
  v49 = 8;
LABEL_49:
  if (v38)
  {
    return v48;
  }

  else
  {
    return v49;
  }
}

uint64_t sub_2232643A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223264408(uint64_t a1)
{
  sub_2232AA714();
  v2 = MEMORY[0x277D5D1F0];
  sub_223262204(&unk_28131DAB0, MEMORY[0x277D5D1F0], MEMORY[0x277D5D1F8]);
  v3 = sub_2232AABC4();
  return sub_223264550(a1, v3, MEMORY[0x277D5D1F0], &qword_28131DAA8, v2, MEMORY[0x277D5D200]);
}

void *sub_2232644DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081960, &qword_2232ACE98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_223264550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_223262204(v23, v24, v25);
      v19 = sub_2232AABE4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_2232646F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081410, &qword_2232ACCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223264760(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2232AA714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v60 = sub_2232AA794();
  v11 = *(v60 - 8);
  v12 = MEMORY[0x28223BE20](v60);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  if (*(v1 + qword_28131D8D0) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AAAD4();
    __swift_project_value_buffer(v33, qword_28131DB88);

    v34 = sub_2232AAAC4();
    v35 = sub_2232AAD84();

    v36 = &unk_28131D000;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v59 = a1;
      v38 = v37;
      v39 = swift_slowAlloc();
      v61[0] = v39;
      *v38 = 136315138;
      v19 = v60;
      (*(v11 + 16))(v14, v1 + qword_28131DCE0, v60);
      sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v40 = sub_2232AB064();
      v42 = v41;
      (*(v11 + 8))(v14, v19);
      v43 = sub_2232603D0(v40, v42, v61);
      v36 = &unk_28131D000;

      *(v38 + 4) = v43;
      _os_log_impl(&dword_22325E000, v34, v35, "Fetching context for sessionUserId: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DD8AC0](v39, -1, -1);
      MEMORY[0x223DD8AC0](v38, -1, -1);
    }

    else
    {

      v19 = v60;
    }

    __swift_project_boxed_opaque_existential_1((v2 + qword_28131D8C0), *(v2 + qword_28131D8C0 + 24));
    (*(v11 + 16))(v14, v2 + v36[412], v19);
    goto LABEL_20;
  }

  v56 = v17;
  v57 = &v55 - v16;
  v59 = a1;
  v18 = *(v1 + qword_28131D8C0 + 24);
  v58 = (v1 + qword_28131D8C0);
  __swift_project_boxed_opaque_existential_1((v1 + qword_28131D8C0), v18);
  (*(v5 + 104))(v7, *MEMORY[0x277D5D1C0], v4);
  sub_2232AA734();
  (*(v5 + 8))(v7, v4);
  if (!v61[3])
  {
    sub_223260EDC(v61, &qword_27D081820, &qword_2232ACC70);
    v19 = v60;
    (*(v11 + 56))(v10, 1, 1, v60);
    goto LABEL_15;
  }

  v19 = v60;
  v20 = swift_dynamicCast();
  (*(v11 + 56))(v10, v20 ^ 1u, 1, v19);
  if ((*(v11 + 48))(v10, 1, v19) == 1)
  {
LABEL_15:
    sub_223260EDC(v10, &unk_27D0814C0, &unk_2232AC480);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v44 = sub_2232AAAD4();
    __swift_project_value_buffer(v44, qword_28131DB88);

    v45 = sub_2232AAAC4();
    v46 = sub_2232AADA4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v61[0] = v48;
      *v47 = 136315138;
      (*(v11 + 16))(v14, v1 + qword_28131DCE0, v19);
      sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v49 = sub_2232AB064();
      v51 = v50;
      (*(v11 + 8))(v14, v19);
      v52 = sub_2232603D0(v49, v51, v61);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_22325E000, v45, v46, "Could not find a previous user in the session because perhaps this is the first request of the session. Fetching context for sessionUserId: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x223DD8AC0](v48, -1, -1);
      MEMORY[0x223DD8AC0](v47, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    (*(v11 + 16))(v14, v2 + qword_28131DCE0, v19);
LABEL_20:
    v53 = sub_2232AA754();
    (*(v11 + 8))(v14, v19);
    return v53;
  }

  v21 = v57;
  (*(v11 + 32))(v57, v10, v19);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v22 = sub_2232AAAD4();
  __swift_project_value_buffer(v22, qword_28131DB88);
  v23 = v56;
  (*(v11 + 16))(v56, v21, v19);
  v24 = sub_2232AAAC4();
  v25 = sub_2232AAD84();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v26 = 136315138;
    sub_22326C240(&qword_28131DAA0, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v27 = sub_2232AB064();
    v29 = v28;
    v30 = *(v11 + 8);
    v30(v23, v19);
    v31 = sub_2232603D0(v27, v29, v61);
    v21 = v57;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_22325E000, v24, v25, "Fetching context for the user selected in previous request: %s", v26, 0xCu);
    v32 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x223DD8AC0](v32, -1, -1);
    MEMORY[0x223DD8AC0](v26, -1, -1);
  }

  else
  {

    v30 = *(v11 + 8);
    v30(v23, v19);
  }

  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v53 = sub_2232AA754();
  v30(v21, v19);
  return v53;
}

uint64_t sub_2232650D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2232650EC(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(id, uint64_t), uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v100 = a7;
  v101 = a8;
  v98 = a5;
  v99 = a6;
  v94 = a4;
  v12 = sub_2232AA6B4();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2232AA694();
  v96 = *(v14 - 8);
  v97 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v89 - v19;
  v21 = sub_2232A9504();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  v26 = __swift_project_value_buffer(v25, qword_28131DB88);
  v27 = a1;
  v105 = v26;
  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();

  v30 = os_log_type_enabled(v28, v29);
  v106 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = v21;
    v33 = v20;
    v34 = a3;
    v35 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v35 = v27;
    v36 = v27;
    _os_log_impl(&dword_22325E000, v28, v29, "AsrRequestProcessor received message: %@", v31, 0xCu);
    sub_223260EDC(v35, &qword_27D0812D0, &qword_2232AC4A0);
    v37 = v35;
    a3 = v34;
    v20 = v33;
    v21 = v32;
    MEMORY[0x223DD8AC0](v37, -1, -1);
    MEMORY[0x223DD8AC0](v31, -1, -1);
  }

  if (a3())
  {
    v38 = sub_2232AA7A4();
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_2232AA904();
  v41 = v40;
  sub_2232AA954();
  sub_223265B48(v38, v39, v41, v24);
  v42 = v106;

  (*(v22 + 8))(v24, v21);
  if (*(v42 + qword_28131DCF8) == 1)
  {
    v43 = sub_2232AAAC4();
    v44 = sub_2232AADA4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22325E000, v43, v44, "Dropping the StartSpeechRequestMessage as we already ran this request in Candidate mode.", v45, 2u);
      MEMORY[0x223DD8AC0](v45, -1, -1);
    }
  }

  else
  {
    v47 = v102;
    v46 = v103;
    v48 = *(v102 + 104);
    v91 = *MEMORY[0x277D5CF40];
    v92 = v102 + 104;
    v90 = v48;
    v48(v20);
    v49 = 1;
    (*(v47 + 56))(v20, 0, 1, v46);
    v50 = qword_28131DD10;
    swift_beginAccess();
    sub_223260794(v20, v42 + v50, &unk_27D081810, &unk_2232ACC60);
    v51 = swift_endAccess();
    v94(v51);
    v53 = v95;
    v52 = v96;
    v54 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x277D5CE90], v97);
    sub_223260388(&qword_28131DAD0, MEMORY[0x277D5CEA0], MEMORY[0x277D5CEB0]);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v109[0] != v107 || v109[1] != v108)
    {
      v49 = sub_2232AB094();
    }

    v55 = *(v52 + 8);
    v55(v53, v54);
    v55(v104, v54);

    *(v42 + qword_28131D8E0) = v49 & 1;
    sub_223268998(0);
    v56 = v98(v27, v42);
    v57 = v27;
    v58 = v56;
    v59 = sub_2232AAAC4();
    v60 = sub_2232AAD84();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v109[0] = v63;
      *v61 = 138412546;
      *(v61 + 4) = v58;
      *v62 = v58;
      *(v61 + 12) = 2080;
      v64 = v58;
      v65 = sub_2232AA5D4();
      v67 = sub_2232603D0(v65, v66, v109);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_22325E000, v59, v60, "RequestSettings: %@ for requestId: %s", v61, 0x16u);
      sub_223260EDC(v62, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x223DD8AC0](v63, -1, -1);
      MEMORY[0x223DD8AC0](v61, -1, -1);
    }

    if (v99())
    {
      v68 = v106;
      *(v106 + qword_28131DD18) = 1;
      v69 = v93;
      v70 = v103;
      v90(v93, v91, v103);
      v71 = sub_223291AA4(v69);
      (*(v102 + 8))(v69, v70);
      *(v68 + qword_28131DD20) = v71;

      v72 = *(v68 + qword_28131D8B0);
      sub_2232AA5D4();
      v73 = sub_2232AABF4();

      [v72 disableLocalSpeechRecognitionForRequestId_];

      v74 = v57;
      v75 = sub_2232AAAC4();
      v76 = sub_2232AAD84();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v109[0] = v78;
        *v77 = 136315138;
        v79 = sub_2232AA5D4();
        v81 = sub_2232603D0(v79, v80, v109);

        *(v77 + 4) = v81;
        _os_log_impl(&dword_22325E000, v75, v76, "#AsrOnServer ASR is being processed on server for requestId: %s. LocalSpeechRecognition is disabled.", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x223DD8AC0](v78, -1, -1);
        MEMORY[0x223DD8AC0](v77, -1, -1);
      }

      v82 = v106;
    }

    else
    {
      v82 = v106;
      v83 = [v58 speechRecognitionTask];
      v84 = sub_2232AA5D4();
      sub_22326BC40(v83, v84, v85);
    }

    [*(v82 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v86 = sub_2232AA8A4();
    __swift_project_value_buffer(v86, qword_28131DBA0);
    v87 = swift_allocObject();
    v87[2] = v82;
    v87[3] = v57;
    v87[4] = v101;
    v88 = v57;

    sub_2232AA874();
  }
}

uint64_t sub_223265B48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a1;
  v29 = a3;
  v27 = a2;
  v33 = sub_2232AAB14();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2232AAB44();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2232A9504();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v4 + 16);
  (*(v11 + 16))(v13, a4, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v14, v13, v10);
  v19 = (v18 + v15);
  v20 = v29;
  *v19 = v27;
  v19[1] = v20;
  *(v18 + v16) = v5;
  v21 = v28;
  *(v18 + v17) = v28;
  aBlock[4] = sub_2232A5B6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_38;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  sub_2232AAB24();
  v36 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v24 = v30;
  v25 = v33;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v9, v24, v22);
  _Block_release(v22);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v9, v34);
}

uint64_t sub_223265F28()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

NSObject *sub_22326608C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v141 = a6;
  v174 = a5;
  v143 = a3;
  v144 = a4;
  v162 = a2;
  v153 = a1;
  v147 = sub_2232AA6E4();
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v9 - 8);
  v152 = &v128[-v10];
  v156 = sub_2232AA794();
  v154 = *(v156 - 8);
  v11 = MEMORY[0x28223BE20](v156);
  v148 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v158 = &v128[-v13];
  v14 = sub_2232A9504();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v128[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v142 = &v128[-v19];
  MEMORY[0x28223BE20](v18);
  v155 = &v128[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v128[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v151 = &v128[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v128[-v29];
  MEMORY[0x28223BE20](v28);
  v31 = &v128[-v30];
  v32 = qword_28131DB58;
  swift_beginAccess();
  v159 = *(v15 + 16);
  v160 = v15 + 16;
  v159(v31, v174, v14);
  (*(v15 + 56))(v31, 0, 1, v14);
  v33 = *(v22 + 56);
  v163 = v7;
  v150 = v32;
  sub_223260E74(v32 + v7, v24, &unk_27D0812C0, &qword_2232AD0C0);
  v34 = v14;
  sub_223260E74(v31, &v24[v33], &unk_27D0812C0, &qword_2232AD0C0);
  v164 = v15;
  v35 = *(v15 + 48);
  if (v35(v24, 1, v14) == 1)
  {
    sub_223260EDC(v31, &unk_27D0812C0, &qword_2232AD0C0);
    v36 = v35(&v24[v33], 1, v14);
    v37 = v163;
    if (v36 == 1)
    {
      sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
      v38 = v158;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v39 = v157;
  sub_223260E74(v24, v157, &unk_27D0812C0, &qword_2232AD0C0);
  if (v35(&v24[v33], 1, v14) == 1)
  {
    sub_223260EDC(v31, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v164 + 8))(v39, v14);
    v37 = v163;
LABEL_6:
    v145 = v35;
    sub_223260EDC(v24, &unk_27D0818B8, "(6");
LABEL_7:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v40 = sub_2232AAAD4();
    __swift_project_value_buffer(v40, qword_28131DB88);
    v41 = v161;
    v159(v161, v174, v14);

    v42 = sub_2232AAAC4();
    v43 = sub_2232AAD94();

    if (os_log_type_enabled(v42, v43))
    {
      LODWORD(v174) = v43;
      v44 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v173[0] = v163;
      *v44 = 136315650;
      v45 = v151;
      sub_223260E74(v150 + v37, v151, &unk_27D0812C0, &qword_2232AD0C0);
      if (v145(v45, 1, v14))
      {
        sub_223260EDC(v45, &unk_27D0812C0, &qword_2232AD0C0);
        v46 = 0xE300000000000000;
        v47 = 7104878;
        v48 = v164;
      }

      else
      {
        v68 = v155;
        v159(v155, v45, v14);
        sub_223260EDC(v45, &unk_27D0812C0, &qword_2232AD0C0);
        v69 = sub_2232A94C4();
        v46 = v70;
        v48 = v164;
        (*(v164 + 8))(v68, v34);
        v47 = v69;
      }

      v71 = sub_2232603D0(v47, v46, v173);

      *(v44 + 4) = v71;
      *(v44 + 12) = 2080;
      sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v72 = v161;
      v73 = sub_2232AB064();
      v75 = v74;
      (*(v48 + 8))(v72, v34);
      v76 = sub_2232603D0(v73, v75, v173);

      *(v44 + 14) = v76;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_2232603D0(v153, v162, v173);
      _os_log_impl(&dword_22325E000, v42, v174, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v44, 0x20u);
      v43 = v163;
      swift_arrayDestroy();
      MEMORY[0x223DD8AC0](v43, -1, -1);
      MEMORY[0x223DD8AC0](v44, -1, -1);
    }

    else
    {

      (*(v164 + 8))(v41, v14);
    }

    sub_22329E88C();
    swift_allocError();
    *v77 = 0;
    goto LABEL_30;
  }

  v145 = v35;
  v49 = v164;
  v50 = v155;
  (*(v164 + 32))(v155, &v24[v33], v14);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  LODWORD(v140) = sub_2232AABE4();
  v51 = *(v49 + 8);
  v51(v50, v14);
  sub_223260EDC(v31, &unk_27D0812C0, &qword_2232AD0C0);
  v51(v39, v14);
  v38 = v158;
  sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
  v37 = v163;
  if ((v140 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v52 = qword_28131DB20;
  swift_beginAccess();
  v53 = v37 + v52;
  v54 = v152;
  sub_223260E74(v53, v152, &unk_27D0814C0, &unk_2232AC480);
  v55 = v154;
  v56 = v156;
  if ((*(v154 + 48))(v54, 1, v156) == 1)
  {
    sub_223260EDC(v54, &unk_27D0814C0, &unk_2232AC480);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v57 = sub_2232AAAD4();
    __swift_project_value_buffer(v57, qword_28131DB88);
    v43 = sub_2232AAAC4();
    v58 = sub_2232AAD94();
    if (os_log_type_enabled(v43, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22325E000, v43, v58, "UserId has not been set for current session", v59, 2u);
      MEMORY[0x223DD8AC0](v59, -1, -1);
    }

    sub_22329E88C();
    swift_allocError();
    *v60 = 1;
LABEL_30:
    swift_willThrow();
    return v43;
  }

  (*(v55 + 32))(v38, v54, v56);
  v61 = qword_28131DB68;
  swift_beginAccess();
  sub_223260E74(v37 + v61, &v171, &unk_27D0818D8, ",6");
  if (v172)
  {
    sub_2232650D4(&v171, v173);
    v62 = v37;
    v63 = *(v37 + qword_28131DB28);
    if (v63 == 2)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v64 = sub_2232AAAD4();
      __swift_project_value_buffer(v64, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v65 = sub_2232AAD94();
      if (os_log_type_enabled(v43, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_22325E000, v43, v65, "Unable to find isSystemAssistantExperienceEnabled to pass to AsrRequestProcessor", v66, 2u);
        MEMORY[0x223DD8AC0](v66, -1, -1);
      }

      sub_22329E88C();
      swift_allocError();
      *v67 = 3;
      swift_willThrow();
      (*(v55 + 8))(v38, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    else
    {
      v139 = v14;
      v159(v155, v174, v14);
      v138 = *(v55 + 16);
      v138(v148, v38, v56);
      v174 = sub_2232AAA44();
      v163 = v83;
      sub_2232AAA14();
      v161 = sub_2232AAA04();
      sub_223260E10(v173, v170);
      __swift_project_boxed_opaque_existential_1(v173, v173[3]);
      sub_2232AA744();
      sub_223260E10(v62 + qword_28131D290, v168);
      v84 = [objc_allocWithZone(MEMORY[0x277D24250]) initWithDelegate_];
      v140 = *(v62 + qword_28131DB60);
      v85 = v140;
      v86 = *(v62 + qword_28131D270);
      v150 = v84;
      v151 = v86;
      v87 = *(v62 + qword_28131D278);
      v88 = *(v62 + qword_28131DB48 + 8);
      v137 = *(v62 + qword_28131DB48);
      v132 = v88;
      v133 = v87;
      v89 = *(v62 + qword_28131DB80);
      v129 = *(v62 + qword_28131DB70);
      v90 = *(v62 + qword_28131DB78);
      v135 = *(v62 + qword_28131D288);
      v136 = v90;

      v145 = v85;
      _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
      v134 = v91;
      v92 = objc_opt_self();
      v131 = [v92 isIdentityScoreConsumptionEnabled];
      v130 = [v92 isIdentityBridgeInstrumentationEnabled];
      v93 = qword_28131DB50;
      swift_beginAccess();
      v94 = v147;
      (v149)[2](v146, v62 + v93, v147);
      v95 = __swift_mutable_project_boxed_opaque_existential_1(v168, v168[3]);
      v157 = v128;
      MEMORY[0x28223BE20](v95);
      v97 = &v128[-((v96 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v98 + 16))(v97);
      v99 = *v97;
      v100 = type metadata accessor for MyriadDecisionMonitor();
      v167[3] = v100;
      v167[4] = &off_28368D388;
      v167[0] = v99;
      type metadata accessor for AsrRequestProcessor(0);
      v101 = swift_allocObject();
      v102 = __swift_mutable_project_boxed_opaque_existential_1(v167, v100);
      v152 = v128;
      MEMORY[0x28223BE20](v102);
      v104 = &v128[-((v103 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v105 + 16))(v104);
      v106 = *v104;
      v166[3] = v100;
      v166[4] = &off_28368D388;
      v166[0] = v106;
      v107 = qword_28131DD08;
      v149[13](v101 + qword_28131DD08, *MEMORY[0x277D5D0D0], v94);
      v108 = qword_28131DD10;
      v109 = sub_2232AA6B4();
      (*(*(v109 - 8) + 56))(v101 + v108, 1, 1, v109);
      *(v101 + qword_28131DD18) = 0;
      *(v101 + qword_28131DD20) = 0;
      *(v101 + qword_28131DD00) = 0;
      *(v101 + qword_28131DCF8) = 0;
      v110 = (v101 + qword_28131D878);
      *v110 = 0;
      v110[1] = 0;
      *(v101 + qword_28131D8E0) = 0;
      *(v101 + qword_28131D8F0) = v89;
      *(v101 + qword_28131D8D8) = v129;
      sub_223260E10(v170, v101 + qword_28131D8C0);
      sub_223260E10(v169, v101 + qword_28131D848);
      v138((v101 + qword_28131DCE0), v148, v156);
      *(v101 + qword_28131D850) = v133;
      sub_223260E10(&v171, v101 + qword_28131D858);
      sub_223260E10(v166, v101 + qword_28131D8A0);
      v111 = v132;
      *v110 = v137;
      v110[1] = v111;
      v112 = v135;
      *(v101 + qword_28131D8D0) = v136;
      *(v101 + qword_28131D898) = v112;
      *(v101 + qword_28131D830) = v63 & 1;
      *(v101 + qword_28131DD30) = v141 & 1;
      v113 = v134;
      *(v101 + qword_28131D868) = v134;
      v114 = v130;
      *(v101 + qword_28131DCF0) = v131;
      *(v101 + qword_28131DCE8) = v114;
      sub_223260E10(&v171, v165);
      type metadata accessor for BufferedResultCandidateHandler();
      v115 = swift_allocObject();
      v115[10] = 0;

      v116 = v162;

      v117 = MEMORY[0x277D84F90];
      v115[11] = sub_22326767C(MEMORY[0x277D84F90], &qword_27D081958, &qword_2232ACE90);
      v115[12] = 0;
      v115[7] = v153;
      v115[8] = v116;
      sub_2232650D4(v165, (v115 + 2));
      *(v101 + qword_28131D838) = v115;
      v118 = v150;
      *(v101 + qword_28131D8B0) = v150;
      *(v101 + qword_28131D888) = v140;
      v115[9] = v113;
      *(v101 + qword_28131D900) = v151;
      type metadata accessor for ASRMUXRequestContext();
      v119 = swift_allocObject();
      v145 = v145;

      v150 = v118;

      *(v119 + 24) = sub_2232605A8(v117, &qword_27D081950, &unk_2232AD030);
      *(v119 + 32) = sub_223268790(v117);
      *(v119 + 40) = 0;
      *(v119 + 16) = v115;
      *(v101 + qword_28131DD28) = v119;
      swift_beginAccess();
      v120 = v149;
      v121 = v101 + v107;
      v122 = v146;
      v123 = v147;
      (v149)[3](v121, v146, v147);
      swift_endAccess();
      v124 = v155;
      v125 = v139;
      v159(v142, v155, v139);
      sub_223260E10(&v171, v165);

      v43 = sub_2232AA974();

      (v120[1])(v122, v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      __swift_destroy_boxed_opaque_existential_1Tm(v170);
      __swift_destroy_boxed_opaque_existential_1Tm(&v171);
      v126 = *(v154 + 8);
      v127 = v156;
      v126(v148, v156);
      (*(v164 + 8))(v124, v125);
      v126(v158, v127);
      __swift_destroy_boxed_opaque_existential_1Tm(v166);
      __swift_destroy_boxed_opaque_existential_1Tm(v167);
      __swift_destroy_boxed_opaque_existential_1Tm(v168);
      __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }
  }

  else
  {
    sub_223260EDC(&v171, &unk_27D0818D8, ",6");
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v79 = sub_2232AAAD4();
    __swift_project_value_buffer(v79, qword_28131DB88);
    v43 = sub_2232AAAC4();
    v80 = sub_2232AAD94();
    if (os_log_type_enabled(v43, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22325E000, v43, v80, "Unable to find SessionState to pass to AsrRequestProcessor", v81, 2u);
      MEMORY[0x223DD8AC0](v81, -1, -1);
    }

    sub_22329E88C();
    swift_allocError();
    *v82 = 2;
    swift_willThrow();
    (*(v55 + 8))(v38, v56);
  }

  return v43;
}

unint64_t sub_22326767C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2232A2C98(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_22326779C(uint64_t a1, char a2)
{
  v31 = sub_2232A95A4();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232A9664();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v24 = sub_2232AAAD4();
    __swift_project_value_buffer(v24, qword_28131DB88);
    v25 = sub_2232AAAC4();
    v26 = sub_2232AAD84();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Feature flag for auto-punctuation is off";
    goto LABEL_30;
  }

  if (qword_28131D5C8 != -1)
  {
    swift_once();
  }

  if (![qword_28131DCA0 dictationAutoPunctuationEnabled])
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v29 = sub_2232AAAD4();
    __swift_project_value_buffer(v29, qword_28131DB88);
    v25 = sub_2232AAAC4();
    v26 = sub_2232AAD84();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Auto-punctuation is disabled";
    goto LABEL_30;
  }

  if (!a1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v30 = sub_2232AAAD4();
    __swift_project_value_buffer(v30, qword_28131DB88);
    v25 = sub_2232AAAC4();
    v26 = sub_2232AAD84();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "SystemDialogActs are not present, disabling auto-punctuation";
LABEL_30:
    _os_log_impl(&dword_22325E000, v25, v26, v28, v27, 2u);
    MEMORY[0x223DD8AC0](v27, -1, -1);
LABEL_31:

    return 0;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v32 = v13;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v15 = *(v12 + 56);
  v16 = (v12 - 8);
  v17 = (v4 + 8);
  v13(v10, v14, v7);
  while (1)
  {
    if ((sub_2232A9604() & 1) == 0)
    {
      (*v16)(v10, v7);
      goto LABEL_9;
    }

    sub_2232A9654();
    v18 = sub_2232A9594();
    (*v17)(v6, v31);
    (*v16)(v10, v7);
    if (v18)
    {
      break;
    }

LABEL_9:
    v14 += v15;
    if (!--v11)
    {
      return 0;
    }

    v32(v10, v14, v7);
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v19 = sub_2232AAAD4();
  __swift_project_value_buffer(v19, qword_28131DB88);
  v20 = sub_2232AAAC4();
  v21 = sub_2232AAD84();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22325E000, v20, v21, "Previous SDA contains a message payload prompt, enabling auto-punctuation", v22, 2u);
    MEMORY[0x223DD8AC0](v22, -1, -1);
  }

  return 1;
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

uint64_t sub_223267CD4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v53 = a2;
  v91 = sub_2232AA7C4();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2232A9534();
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2232A9554();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2232A95C4();
  v9 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2232A9584();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v78 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2232A9684();
  v13 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2232A9664();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  result = a1[1];
  if (!*a1)
  {
    v94 = MEMORY[0x277D84F90];
LABEL_31:

    result = sub_22326865C(v51);
    *v53 = v94;
    return result;
  }

  v52[1] = a1[1];
  v63 = *(v19 + 16);
  if (!v63)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_30:
    v94 = v22;
    goto LABEL_31;
  }

  v66 = v17;
  v69 = v6;
  v20 = 0;
  v62 = v19 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v61 = v64 + 16;
  v59 = (v64 + 8);
  v55 = "systemDialogActs";
  v56 = (v13 + 8);
  v21 = v71;
  v82 = (v71 + 8);
  v83 = v71 + 16;
  v73 = (v9 + 8);
  v72 = (v7 + 8);
  v87 = (v93 + 8);
  v88 = v70 + 16;
  v22 = MEMORY[0x277D84F90];
  v86 = (v70 + 8);
  *&v15 = 136315138;
  v54 = v15;
  v89 = v4;
  v23 = v78;
  v68 = v11;
  v60 = v19;
  while (v20 < *(v19 + 16))
  {
    v24 = *(v64 + 72);
    v65 = v20;
    (*(v64 + 16))(v66, v62 + v24 * v20, v67);
    if (sub_2232A9614())
    {
      v25 = v57;
      sub_2232A95F4();
      v26 = sub_2232A9674();
      result = (*v56)(v25, v58);
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = 0;
        v84 = v26 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v79 = v27;
        v80 = v26;
        while (v28 < *(v26 + 16))
        {
          v29 = *(v21 + 72);
          v85 = v28;
          (*(v21 + 16))(v23, v84 + v29 * v28, v11);
          if (sub_2232A9564())
          {
            v30 = v74;
            sub_2232A9574();
            v31 = v76;
            sub_2232A95B4();
            (*v73)(v30, v75);
            v32 = sub_2232A9544();
            (*v72)(v31, v77);
            v33 = *(v32 + 16);
            if (v33)
            {
              v34 = (*(v70 + 80) + 32) & ~*(v70 + 80);
              v81 = v32;
              v35 = v32 + v34;
              v36 = *(v70 + 72);
              v92 = *(v70 + 16);
              v93 = v36;
              v37 = v69;
              do
              {
                v92(v37, v35, v4);
                v38 = v90;
                sub_2232A9524();
                v39 = sub_2232AA7B4();
                v41 = v40;
                (*v87)(v38, v91);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v22 = sub_22326888C(0, *(v22 + 2) + 1, 1, v22);
                }

                v43 = *(v22 + 2);
                v42 = *(v22 + 3);
                if (v43 >= v42 >> 1)
                {
                  v22 = sub_22326888C((v42 > 1), v43 + 1, 1, v22);
                }

                v4 = v89;
                (*v86)(v37, v89);
                *(v22 + 2) = v43 + 1;
                v44 = &v22[16 * v43];
                *(v44 + 4) = v39;
                *(v44 + 5) = v41;
                v35 += v93;
                --v33;
              }

              while (v33);

              v11 = v68;
              v21 = v71;
            }

            else
            {
            }

            v23 = v78;
            v27 = v79;
            v26 = v80;
          }

          v28 = v85 + 1;
          result = (*v82)(v23, v11);
          if (v28 == v27)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v45 = sub_2232AAAD4();
      __swift_project_value_buffer(v45, qword_28131DB88);
      v46 = sub_2232AAAC4();
      v47 = sub_2232AAD84();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v94 = v49;
        *v48 = v54;
        *(v48 + 4) = sub_2232603D0(0xD000000000000021, v55 | 0x8000000000000000, &v94);
        _os_log_impl(&dword_22325E000, v46, v47, "Not updating jitProfile for SDA: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v50 = v49;
        v21 = v71;
        MEMORY[0x223DD8AC0](v50, -1, -1);
        MEMORY[0x223DD8AC0](v48, -1, -1);
      }
    }

    result = (*v59)(v66, v67);
    v20 = v65 + 1;
    v19 = v60;
    if (v65 + 1 == v63)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22326865C(uint64_t result)
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

  result = sub_22326888C(result, v10, 1, v3);
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

unint64_t sub_223268790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
    v3 = sub_2232AB014();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2232A2C98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

char *sub_22326888C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_223268998(void *a1)
{
  v2 = v1;
  v186 = a1;
  v3 = sub_2232AA6B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v188 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  MEMORY[0x28223BE20](v189);
  v190 = &v169 - v6;
  v201 = sub_2232AA794();
  v193 = *(v201 - 8);
  v7 = MEMORY[0x28223BE20](v201);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v199 = &v169 - v9;
  v10 = sub_2232A9504();
  v194 = *(v10 - 8);
  v195 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v185 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v191 = &v169 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v169 - v16;
  MEMORY[0x28223BE20](v15);
  v198 = &v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v169 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v187 = &v169 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v169 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v169 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v169 - v33;
  v35 = qword_28131DD10;
  swift_beginAccess();
  v196 = v35;
  sub_223293AB8(v2 + v35, v34);
  v200 = v4;
  v36 = *(v4 + 48);
  v202 = v3;
  v37 = v3;
  v38 = v36;
  if (v36(v34, 1, v37) == 1)
  {
    goto LABEL_2;
  }

  sub_223293AB8(v34, v32);
  v46 = (v200[11])(v32, v202);
  if (v46 == *MEMORY[0x277D5CF40])
  {
LABEL_8:
    sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v174 = v38;
    v47 = sub_2232AAAD4();
    v48 = __swift_project_value_buffer(v47, qword_28131DB88);

    v176 = v48;
    v49 = sub_2232AAAC4();
    v50 = sub_2232AAD84();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v218[0] = v52;
      *v51 = 136315138;
      v53 = sub_2232AA944();
      v55 = sub_2232603D0(v53, v54, v218);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_22325E000, v49, v50, "Setting speech client delegate for requestId = %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x223DD8AC0](v52, -1, -1);
      MEMORY[0x223DD8AC0](v51, -1, -1);
    }

    v56 = v202;
    sub_2232AA954();
    v57 = sub_2232AA904();
    v179 = v58;
    v180 = v57;
    v184 = sub_2232AA944();
    v178 = v59;
    v185 = *(v193 + 16);
    v175 = v193 + 16;
    (v185)(v199, v2 + qword_28131DCE0, v201);
    sub_223260E10(v2 + qword_28131D858, v218);
    v182 = sub_2232AA924();
    sub_223260E10(v2 + qword_28131D8A0, v217);
    sub_223260E10(v2 + qword_28131D8C0, v215);
    sub_223260E10(v2 + qword_28131D848, v214);
    v177 = sub_2232AA914();
    v60 = *(v2 + qword_28131D838);
    v61 = *(v2 + qword_28131D8F0);
    v62 = *(v2 + qword_28131D8D8);
    LODWORD(v186) = *(v2 + qword_28131D8D0);
    v63 = *(v2 + qword_28131D898);
    v172 = *(v2 + qword_28131DD30);
    v173 = v63;
    v64 = *(v2 + qword_28131D8E0);
    v170 = v62;
    v171 = v64;
    v65 = v200;
    v200[13](v29, *MEMORY[0x277D5CF20], v56);
    (v65[7])(v29, 0, 1, v56);
    v66 = v190;
    v67 = *(v189 + 48);
    sub_223293AB8(v196 + v2, v190);
    sub_223293AB8(v29, v66 + v67);
    v68 = v174;
    v69 = v174(v66, 1, v56);
    v181 = v60;
    v183 = v61;
    if (v69 == 1)
    {

      sub_223260EDC(v29, &unk_27D081810, &unk_2232ACC60);
      v70 = v68(v66 + v67, 1, v56);
      v71 = v197;
      if (v70 == 1)
      {
        sub_223260EDC(v66, &unk_27D081810, &unk_2232ACC60);
        LODWORD(v189) = 1;
LABEL_36:
        v92 = v194;
        v93 = v201;
        LODWORD(v190) = *(v2 + qword_28131DCF0);
        LODWORD(v188) = *(v2 + qword_28131DCE8);
        LODWORD(v187) = *(v2 + qword_28131D830);
        v94 = __swift_mutable_project_boxed_opaque_existential_1(v217, v217[3]);
        v202 = &v169;
        MEMORY[0x28223BE20](v94);
        v96 = (&v169 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v97 + 16))(v96);
        v98 = *v96;
        v99 = type metadata accessor for MyriadDecisionMonitor();
        v213[4] = &off_28368D388;
        v213[3] = v99;
        v213[0] = v98;
        v100 = v92[2];
        v174 = (v92 + 2);
        v169 = v100;
        v100(v71, v198, v195);
        v101 = v192;
        (v185)(v192, v199, v93);
        sub_223260E10(v218, v212);
        if (qword_28131DA80 != -1)
        {
          swift_once();
        }

        v175 = qword_28131DD40;
        sub_223260E10(v213, v211);
        sub_223260E10(v215, v210);
        sub_223260E10(v214, v209);
        v102 = __swift_mutable_project_boxed_opaque_existential_1(v211, v211[3]);
        v200 = &v169;
        MEMORY[0x28223BE20](v102);
        v104 = (&v169 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v105 + 16))(v104);
        v106 = *v104;
        v207 = v99;
        v208 = &off_28368D388;
        v206[0] = v106;
        v107 = objc_allocWithZone(type metadata accessor for AssistantSpeechRecognizerResponseHandler(0));
        v108 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
        v196 = &v169;
        MEMORY[0x28223BE20](v108);
        v110 = (&v169 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v111 + 16))(v110);
        v112 = *v110;
        v205[4] = &off_28368D388;
        v205[3] = v99;
        v205[0] = v112;
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = 0;
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = 0;
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache] = MEMORY[0x277D84F90];
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR] = 0;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived] = 0;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage] = 0;
        v113 = v178;

        v114 = sub_2232AAAC4();
        v115 = sub_2232AAD84();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v204[0] = v117;
          *v116 = 136315138;
          *(v116 + 4) = sub_2232603D0(v184, v113, v204);
          _os_log_impl(&dword_22325E000, v114, v115, "Result selection gate in place for requestId=%s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          MEMORY[0x223DD8AC0](v117, -1, -1);
          MEMORY[0x223DD8AC0](v116, -1, -1);
        }

        v118 = v191;
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers] = v183;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isRMVEnabled] = v170;
        sub_223260E10(v205, &v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_myriadMonitor]);
        v119 = v177;
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_requestQueue] = v177;
        (v185)(&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId], v101, v201);
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] = v186;
        v120 = v172;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] = v173;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest] = v120;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isFFRequest] = v171;
        sub_223260E10(v210, &v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState]);
        sub_223260E10(v209, &v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState]);
        *&v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_bufferedResultCandidateHandler] = v181;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isUOS] = v189 & 1;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] = v190;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityBridgeInstrumentationEnabled] = v188;
        v107[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled] = v187;
        v121 = v195;
        v122 = v169;
        v169(v118, v197, v195);
        sub_223260E10(v212, v204);
        v122(&v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId], v118, v121);
        v123 = &v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId];
        v124 = v179;
        *v123 = v180;
        v123[1] = v124;
        v125 = &v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        *v125 = v184;
        v125[1] = v113;
        sub_223260E10(v204, &v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher]);
        *&v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper] = v182;
        *&v107[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil] = v175;
        v126 = type metadata accessor for SpeechRecognizerResponseHandler(0);
        v203.receiver = v107;
        v203.super_class = v126;

        v127 = v119;
        swift_unknownObjectRetain();

        v128 = objc_msgSendSuper2(&v203, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(v204);
        v129 = v118;
        v130 = v194[1];
        v130(v129, v121);
        if (v186)
        {
          v131 = v128;
          v132 = v128;
          v194 = sub_2232777E8();

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v209);
          __swift_destroy_boxed_opaque_existential_1Tm(v210);
          __swift_destroy_boxed_opaque_existential_1Tm(v212);
          v133 = *(v193 + 8);
          v134 = v201;
          v133(v192, v201);
          v130(v197, v121);
          __swift_destroy_boxed_opaque_existential_1Tm(v214);
          __swift_destroy_boxed_opaque_existential_1Tm(v215);
          __swift_destroy_boxed_opaque_existential_1Tm(v218);
          v133(v199, v134);
          v130(v198, v121);
          __swift_destroy_boxed_opaque_existential_1Tm(v213);
          __swift_destroy_boxed_opaque_existential_1Tm(v205);
          v135 = *&v132[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
          *&v132[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = v194;

          v136 = v131;
        }

        else
        {

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v209);
          __swift_destroy_boxed_opaque_existential_1Tm(v210);
          __swift_destroy_boxed_opaque_existential_1Tm(v212);
          v136 = v128;
          v137 = *(v193 + 8);
          v138 = v201;
          v137(v192, v201);
          v130(v197, v121);
          __swift_destroy_boxed_opaque_existential_1Tm(v214);
          __swift_destroy_boxed_opaque_existential_1Tm(v215);
          __swift_destroy_boxed_opaque_existential_1Tm(v218);
          v137(v199, v138);
          v130(v198, v121);
          __swift_destroy_boxed_opaque_existential_1Tm(v213);
          __swift_destroy_boxed_opaque_existential_1Tm(v205);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v206);
        __swift_destroy_boxed_opaque_existential_1Tm(v211);
        __swift_destroy_boxed_opaque_existential_1Tm(v217);
        v72 = &unk_28131D000;
        v139 = *(v2 + qword_28131DD00);
        *(v2 + qword_28131DD00) = v136;
LABEL_44:

LABEL_45:
        if (*(v2 + v72[416]))
        {
          [*(v2 + qword_28131D8B0) setLocalSpeechRecognizerClientDelegate_];
        }

        return;
      }
    }

    else
    {
      v196 = v29;
      v81 = v187;
      sub_223293AB8(v66, v187);
      if (v68(v66 + v67, 1, v56) != 1)
      {
        v87 = v81;
        v88 = v200;
        v89 = v188;
        v90 = v202;
        v200[4](v188, (v66 + v67), v202);
        sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);

        LODWORD(v189) = sub_2232AABE4();
        v91 = v88[1];
        v91(v89, v90);
        sub_223260EDC(v196, &unk_27D081810, &unk_2232ACC60);
        v91(v87, v90);
        sub_223260EDC(v66, &unk_27D081810, &unk_2232ACC60);
        v71 = v197;
        goto LABEL_36;
      }

      sub_223260EDC(v196, &unk_27D081810, &unk_2232ACC60);
      (v200[1])(v81, v202);
      v71 = v197;
    }

    sub_223260EDC(v66, &qword_27D081808, "H6");
    LODWORD(v189) = 0;
    goto LABEL_36;
  }

  if (v46 == *MEMORY[0x277D5CF28] || v46 == *MEMORY[0x277D5CF10] || v46 == *MEMORY[0x277D5CF08] || v46 == *MEMORY[0x277D5CF30])
  {
    goto LABEL_2;
  }

  if (v46 == *MEMORY[0x277D5CF20])
  {
    goto LABEL_8;
  }

  if (v46 == *MEMORY[0x277D5CF48] || v46 == *MEMORY[0x277D5CF38])
  {
LABEL_2:
    sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v39 = sub_2232AAAD4();
    __swift_project_value_buffer(v39, qword_28131DB88);

    v40 = sub_2232AAAC4();
    v41 = sub_2232AAD84();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v218[0] = v199;
      *v42 = 136315138;
      v201 = v2;
      sub_223293AB8(v196 + v2, v24);
      v43 = v202;
      if (v38(v24, 1, v202))
      {
        v44 = 7104878;
        sub_223260EDC(v24, &unk_27D081810, &unk_2232ACC60);
        v45 = 0xE300000000000000;
      }

      else
      {
        v82 = v200;
        v83 = v188;
        v200[2](v188, v24, v43);
        sub_223260EDC(v24, &unk_27D081810, &unk_2232ACC60);
        v44 = sub_2232AA6A4();
        v45 = v84;
        (v82[1])(v83, v43);
      }

      v85 = sub_2232603D0(v44, v45, v218);

      *(v42 + 4) = v85;
      _os_log_impl(&dword_22325E000, v40, v41, "Not setting LocalSpeechRecognizerClientDelegate for requestType %s", v42, 0xCu);
      v86 = v199;
      __swift_destroy_boxed_opaque_existential_1Tm(v199);
      MEMORY[0x223DD8AC0](v86, -1, -1);
      MEMORY[0x223DD8AC0](v42, -1, -1);

      v72 = &unk_28131D000;
      v2 = v201;
    }

    else
    {

      v72 = &unk_28131D000;
    }

    goto LABEL_45;
  }

  if (v46 != *MEMORY[0x277D5CF50] && v46 != *MEMORY[0x277D5CF18])
  {
    v199 = v200[1];
    (v199)(v32, v202);
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v73 = sub_2232AAAD4();
    __swift_project_value_buffer(v73, qword_28131DB88);

    v74 = sub_2232AAAC4();
    v75 = sub_2232AAD84();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = v38;
      v77 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v218[0] = v198;
      *v77 = 136315138;
      v201 = v2;
      sub_223293AB8(v196 + v2, v21);
      v78 = v202;
      if (v76(v21, 1, v202))
      {
        v79 = 7104878;
        sub_223260EDC(v21, &unk_27D081810, &unk_2232ACC60);
        v80 = 0xE300000000000000;
      }

      else
      {
        v165 = v188;
        v200[2](v188, v21, v78);
        sub_223260EDC(v21, &unk_27D081810, &unk_2232ACC60);
        v79 = sub_2232AA6A4();
        v80 = v166;
        (v199)(v165, v78);
      }

      v167 = sub_2232603D0(v79, v80, v218);

      *(v77 + 4) = v167;
      _os_log_impl(&dword_22325E000, v74, v75, "Not setting LocalSpeechRecognizerClientDelegate for requestType %s", v77, 0xCu);
      v168 = v198;
      __swift_destroy_boxed_opaque_existential_1Tm(v198);
      MEMORY[0x223DD8AC0](v168, -1, -1);
      MEMORY[0x223DD8AC0](v77, -1, -1);

      v72 = &unk_28131D000;
      v2 = v201;
    }

    else
    {

      v72 = &unk_28131D000;
    }

    sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
    goto LABEL_45;
  }

  sub_223260EDC(v34, &unk_27D081810, &unk_2232ACC60);
  if (v186)
  {
    v140 = v186;
    v141 = v191;
    sub_2232AA954();
    v142 = sub_2232AA904();
    v201 = v143;
    v202 = v142;
    v144 = sub_2232AA944();
    v199 = v145;
    v200 = v144;
    sub_223260E10(v2 + qword_28131D858, v218);
    v197 = sub_2232AA924();
    v146 = objc_allocWithZone(type metadata accessor for DictationSpeechRecognizerResponseHandler(0));
    *&v146[OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions] = v140;
    v148 = v194;
    v147 = v195;
    v149 = v194[2];
    v150 = v185;
    v149(v185, v141, v195);
    sub_223260E10(v218, v217);
    v151 = qword_28131DA80;
    v198 = v140;
    if (v151 != -1)
    {
      swift_once();
    }

    v152 = qword_28131DD40;
    v149(&v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId], v150, v147);
    v153 = &v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId];
    v154 = v201;
    *v153 = v202;
    *(v153 + 1) = v154;
    v155 = &v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v156 = v199;
    *v155 = v200;
    *(v155 + 1) = v156;
    sub_223260E10(v217, &v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher]);
    *&v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper] = v197;
    *&v146[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil] = v152;
    v157 = type metadata accessor for SpeechRecognizerResponseHandler(0);
    v216.receiver = v146;
    v216.super_class = v157;

    v158 = objc_msgSendSuper2(&v216, sel_init);

    __swift_destroy_boxed_opaque_existential_1Tm(v217);
    v159 = v148[1];
    v159(v150, v147);
    __swift_destroy_boxed_opaque_existential_1Tm(v218);
    v159(v191, v147);
    v72 = &unk_28131D000;
    v139 = *(v2 + qword_28131DD00);
    *(v2 + qword_28131DD00) = v158;
    goto LABEL_44;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v160 = sub_2232AAAD4();
  __swift_project_value_buffer(v160, qword_28131DB88);
  v161 = sub_2232AAAC4();
  v162 = sub_2232AAD94();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v218[0] = v164;
    *v163 = 136315138;
    *(v163 + 4) = sub_2232603D0(0xD000000000000028, 0x80000002232AE0E0, v218);
    _os_log_impl(&dword_22325E000, v161, v162, "Unexpected nil dictationOptions when initializing %s", v163, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    MEMORY[0x223DD8AC0](v164, -1, -1);
    MEMORY[0x223DD8AC0](v163, -1, -1);
  }
}

void sub_22326A3C0(void *a1, uint64_t a2)
{
  v4 = sub_2232AA694();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232632C4(&v56);
  v8 = *(a2 + qword_28131D8F0);
  if (v8 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v38)
  {
    v49 = v7;
    if (!i)
    {
LABEL_15:
      LODWORD(v53) = sub_2232AA004();
      v51 = sub_2232AA5D4();
      v20 = v49;
      sub_2232AA014();
      sub_2232AA684();
      (*(v5 + 8))(v20, v4);
      if (sub_2232AA024())
      {
        v50 = sub_2232AA7A4();
      }

      else
      {
        v50 = 0;
      }

      v21 = *MEMORY[0x277D24258];
      v22 = sub_2232AA924();
      v23 = sub_2232AA944();
      v25 = sub_22326A9D4(v22, v23, v24);
      swift_unknownObjectRelease();

      v26 = v56;
      LODWORD(v52) = sub_22326B608(v56);
      aBlock = v58;
      v27 = sub_2232AABF4();

      v28 = sub_2232AABF4();

      v29 = sub_2232AACF4();
      sub_2232606A4(0, &qword_28131D1A0, 0x277CEF130);
      v30 = sub_2232AACF4();

      if (*(&aBlock + 1))
      {
        v31 = sub_2232AABF4();
      }

      else
      {
        v31 = 0;
      }

      v32 = (v25 != 2) ^ v25;
      if (v53)
      {
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      v34 = v57;
      v35 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v43) = 0;
      LOBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      BYTE3(v40) = v34;
      BYTE2(v40) = 1;
      BYTE1(v40) = v52 & 1;
      LOBYTE(v40) = v32 & 1;
      LODWORD(v39) = 0;
      v36 = v50;
      [v35 initWithRequestId:v27 inputOrigin:v28 speechRecognitionTaskName:v26 speechRecognitionMode:v33 location:v50 jitGrammar:v29 overrideModelPath:v21 applicationName:0 detectUtterances:0 continuousListening:v39 shouldHandleCapitalization:0 secureOfflineOnly:v40 maximumRecognitionDuration:0 recognitionOverrides:v41 shouldStoreAudioOnDevice:0 deliverEagerPackage:v30 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v42 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v43 powerContext:v31 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_223260EDC(&aBlock, &qword_27D081720, &qword_2232AC498);
      return;
    }

    v10 = v8;
    v55[5] = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if (i < 0)
    {
      break;
    }

    v45 = v5;
    v46 = v4;
    v47 = a1;
    v48 = a2;
    v11 = objc_opt_self();
    v5 = 0;
    v12 = v10;
    v52 = v11;
    v53 = v10 & 0xC000000000000001;
    v8 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = v10 & 0xFFFFFFFFFFFFFF8;
    v51 = v55;
    v7 = v10;
    v13 = i;
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v53)
      {
        v15 = MEMORY[0x223DD8300](v5, v12);
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_27;
        }

        v15 = *&v12[8 * v5 + 32];
      }

      v16 = v15;
      a2 = swift_allocObject();
      *(a2 + 16) = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_22328B1F4;
      *(v17 + 24) = a2;
      v55[2] = sub_22328B1FC;
      v55[3] = v17;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v55[0] = sub_223278834;
      v55[1] = &block_descriptor_5;
      a1 = _Block_copy(&aBlock);
      v18 = v16;

      v4 = [v52 newWithBuilder_];
      _Block_release(a1);
      if (!v4)
      {
        goto LABEL_30;
      }

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_26;
      }

      sub_2232AAF94();
      sub_2232AAFC4();
      sub_2232AAFD4();
      sub_2232AAFA4();
      ++v5;
      v12 = v7;
      if (v14 == v13)
      {
        v4 = v46;
        v5 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v37 = v8;
    v38 = sub_2232AAFE4();
    v8 = v37;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22326A984()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326A9D4(void *a1, uint64_t a2, unint64_t a3)
{
  v33 = a3;
  v5 = sub_2232AAAB4();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232AAB64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;

  v17 = v15;
  sub_22326AE38(a1, a2, v33, sub_22328215C, v16);

  sub_2232AAB54();
  if (qword_28131D5C0 != -1)
  {
    swift_once();
  }

  v18 = sub_2232AAAF4();
  v19 = __swift_project_value_buffer(v18, qword_28131DC88);
  MEMORY[0x223DD7F00](v11, v19);
  v20 = *(v8 + 8);
  v20(v11, v7);
  sub_2232AAE54();
  v20(v13, v7);
  if (sub_2232AAB04())
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v21 = sub_2232AAAD4();
    __swift_project_value_buffer(v21, qword_28131DB88);
    v22 = sub_2232AAAC4();
    v23 = sub_2232AAD94();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22325E000, v22, v23, "Timed out fetching phoneCallState.", v24, 2u);
      MEMORY[0x223DD8AC0](v24, -1, -1);
    }

    sub_2232AAE44();
    if (qword_28131D968 != -1)
    {
      swift_once();
    }

    v25 = qword_28131DD38;
    v26 = v30;
    sub_2232AAAA4();
    v27 = 2;
    sub_2232AAA84();

    (*(v31 + 8))(v26, v32);
  }

  else
  {

    swift_beginAccess();
    v27 = *(v14 + 16);
  }

  return v27;
}

uint64_t sub_22326ADF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326AE38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v39 = a2;
  v40 = sub_2232AAAB4();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v13 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v14 = qword_28131DD38;
  sub_2232AAA74();

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v15 = sub_2232AAAD4();
  __swift_project_value_buffer(v15, qword_28131DB88);

  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2232603D0(v39, a3, aBlock);
    _os_log_impl(&dword_22325E000, v16, v17, "Fetching isUserOnPhoneCall status for requestId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DD8AC0](v19, -1, -1);
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

  if ([a1 respondsToSelector_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    v21 = sub_2232AAC04();
    v36 = a1;
    *(inited + 32) = v21;
    *(inited + 40) = v22;
    sub_22326B3C0(inited);
    swift_setDeallocating();
    sub_22326B5B4(inited + 32);
    v23 = v40;
    (*(v7 + 16))(v10, v12, v40);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v7 + 32))(v26 + v24, v10, v23);
    v27 = (v26 + v25);
    v28 = v38;
    *v27 = v39;
    v27[1] = a3;
    v29 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
    v30 = v37;
    *v29 = v28;
    v29[1] = v30;

    v31 = sub_2232AAD64();
    v32 = sub_2232AABF4();
    aBlock[4] = sub_223282210;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22328067C;
    aBlock[3] = &block_descriptor_1;
    v33 = _Block_copy(aBlock);

    [v36 fetchContextsForKeys:v31 forRequestID:v32 includesNearbyDevices:0 completion:v33];
    _Block_release(v33);
  }

  return (*(v7 + 8))(v12, v40);
}

uint64_t sub_22326B30C()
{
  v1 = sub_2232AAAB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22326B3C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081418, &qword_2232AC940);
    v3 = sub_2232AAF44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2232AB0F4();

      sub_2232AAC44();
      result = sub_2232AB114();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2232AB094();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22326B528(uint64_t a1)
{
  v1 = sub_2232AA5D4();
  v3 = v2;
  if (v1 == sub_2232AA944() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2232AB094();
  }

  return v5 & 1;
}

uint64_t sub_22326B608(unint64_t a1)
{
  if (a1 > 0xA)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v7 = sub_2232AAAD4();
    __swift_project_value_buffer(v7, qword_28131DB88);
    v2 = sub_2232AAAC4();
    v3 = sub_2232AADA4();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected unknown taskName, setting deliverEager to true";
    goto LABEL_13;
  }

  if (((1 << a1) & 0x178) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x287) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v1 = sub_2232AAAD4();
    __swift_project_value_buffer(v1, qword_28131DB88);
    v2 = sub_2232AAAC4();
    v3 = sub_2232AADA4();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "unexpected spelling taskName, setting deliverEager to true";
LABEL_13:
    _os_log_impl(&dword_22325E000, v2, v3, v5, v4, 2u);
    MEMORY[0x223DD8AC0](v4, -1, -1);
LABEL_14:
  }

  return 1;
}

uint64_t sub_22326B7AC(uint64_t a1)
{
  v40 = sub_2232A95A4();
  v2 = *(v40 - 1);
  MEMORY[0x28223BE20](v40);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2232A9664();
  v5 = *(v41 - 8);
  v6 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  if (!a1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AAAD4();
    __swift_project_value_buffer(v33, qword_28131DB88);
    v34 = sub_2232AAAC4();
    v35 = sub_2232AAD84();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22325E000, v34, v35, "SDA not present - no payload target language exists returning nil", v36, 2u);
      MEMORY[0x223DD8AC0](v36, -1, -1);
    }

    return 0;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v39 = v7;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v15 = (v2 + 8);
  v16 = (v12 - 8);
  v17 = *(v12 + 56);
  v13(v9, v14, v41);
  while (1)
  {
    if (sub_2232A9604())
    {
      sub_2232A9654();
      v19 = sub_2232A9594();
      (*v15)(v4, v40);
      if (v19)
      {
        break;
      }
    }

    v18 = v41;
    (*v16)(v9, v41);
    v14 += v17;
    if (!--v10)
    {
      return 0;
    }

    v11(v9, v14, v18);
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v20 = sub_2232AAAD4();
  __swift_project_value_buffer(v20, qword_28131DB88);
  v21 = v39;
  v22 = v41;
  v11(v39, v9, v41);
  v23 = sub_2232AAAC4();
  v24 = sub_2232AAD84();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v25 = 136315138;
    v26 = sub_2232A9644();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xD000000000000019;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x80000002232ADA30;
    }

    v30 = *v16;
    (*v16)(v21, v22);
    v31 = sub_2232603D0(v28, v29, &v42);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_22325E000, v23, v24, "SDA found - payload target language is: %s", v25, 0xCu);
    v32 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DD8AC0](v32, -1, -1);
    MEMORY[0x223DD8AC0](v25, -1, -1);
  }

  else
  {

    v30 = *v16;
    (*v16)(v21, v22);
  }

  v38 = sub_2232A9644();
  v30(v9, v22);
  return v38;
}

void sub_22326BC40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v22 = [objc_allocWithZone(MEMORY[0x277D59590]) init];
  if (v22)
  {
    if (a1 > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_2232AC554[a1];
    }

    [v22 setTaskType_];
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v21 setStartedOrChanged_];
  v10 = sub_2232AA9B4();
  if (v10)
  {
    v11 = v10;
    [v10 setAsrBridgeContext_];
    [*(v4 + 16) emitMessage_];
    v12 = sub_2232AA994();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 captureSnapshot];

      if (v14)
      {
        v15 = [objc_opt_self() context];
        if (v15)
        {
          v16 = v15;
          sub_2232A94B4();
          v17 = sub_2232A9504();
          v18 = *(v17 - 8);
          v19 = 0;
          if ((*(v18 + 48))(v8, 1, v17) != 1)
          {
            v19 = sub_2232A94D4();
            (*(v18 + 8))(v8, v17);
          }

          [v14 logWithEventContext:v16 requestIdentifier:v19];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v20 = v22;
  }

  else
  {

    v20 = v21;
  }
}

unint64_t sub_22326BF10()
{
  result = qword_28131D938;
  if (!qword_28131D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D938);
  }

  return result;
}

uint64_t sub_22326BF64(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v23[0] = sub_2232A9504();
  v2 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = 4 * v6;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2232AC310;
  v10 = v9 + v7;
  v11 = (v10 + v5[14]);
  sub_2232AA7D4();
  *v11 = 0x6764697242525341;
  v11[1] = 0xE900000000000065;
  v12 = (v10 + v6 + v5[14]);
  sub_2232AA824();
  *v12 = 0xD00000000000001ALL;
  v12[1] = 0x80000002232AE170;
  v13 = (v10 + 2 * v6 + v5[14]);
  sub_2232AA7E4();
  *v13 = sub_2232AA904();
  v13[1] = v14;
  v15 = (v10 + 3 * v6 + v5[14]);
  sub_2232AA864();
  sub_2232AA954();
  sub_22326C240(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v16 = v23[0];
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v2 + 8))(v4, v16);
  *v15 = v17;
  v15[1] = v19;
  v20 = (v10 + v8 + v5[14]);
  sub_2232AA854();
  *v20 = sub_2232AA5D4();
  v20[1] = v21;
  return v9;
}

unint64_t sub_22326C1EC()
{
  result = qword_28131D940;
  if (!qword_28131D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D940);
  }

  return result;
}

uint64_t sub_22326C240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22326C288()
{
  result = qword_28131D910;
  if (!qword_28131D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D910);
  }

  return result;
}

unint64_t sub_22326C2DC()
{
  result = qword_28131D908;
  if (!qword_28131D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D908);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22326C33C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232A9C34();

  sub_2232A9C24();
  v14 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a2 + v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_2232A9C64();

  sub_2232A9C54();
  v17 = [a3 lastTRPCandidateId];
  if (v17)
  {
    v18 = v17;
    sub_2232AAC04();
  }

  return sub_2232A9C44();
}

uint64_t sub_22326C5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA444();

  sub_2232AA434();
  v14 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a2 + v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_2232AA474();

  sub_2232AA464();
  v17 = [a3 lastTRPCandidateId];
  if (v17)
  {
    v18 = v17;
    sub_2232AAC04();
  }

  return sub_2232AA454();
}

uint64_t sub_22326C848()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326C888()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326C8C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326C900()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326C958()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22326C9A8()
{
  MEMORY[0x223DD8B00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326C9E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CA24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326CA64()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22326CAB0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CAF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326CB3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CB74()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22326CC14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326CC50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CC88()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CCD8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CD28()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326CD7C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CDC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CE10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326CE48()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22326CE98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22326CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22326CFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2232A9504();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22326D06C()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22326D140()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22326D180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326D1B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22326D1F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22326D244(void *a1, uint64_t a2)
{
  v5 = sub_2232AAB14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2232AAB44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_223278888;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_69;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  v16 = a1;
  sub_2232AAB24();
  v18[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void sub_22326D4F4(void *a1, void *a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR;
  if (*(a1 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_didStopASR) == 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v6 = a1;
    oslog = sub_2232AAAC4();
    v7 = sub_2232AADA4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2232603D0(*&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v21);
      _os_log_impl(&dword_22325E000, oslog, v7, "ASR was already stopped for requestId = %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x223DD8AC0](v9, -1, -1);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v12 = sub_2232AAAD4();
    __swift_project_value_buffer(v12, qword_28131DB88);
    v13 = a1;
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2232603D0(*&v13[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v13[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v21);
      _os_log_impl(&dword_22325E000, v14, v15, "Going to stop ASR for requestId = %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223DD8AC0](v17, -1, -1);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    *(a1 + v4) = 1;
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AA8A4();
    __swift_project_value_buffer(v18, qword_28131DBA0);
    *(swift_allocObject() + 16) = v13;
    v19 = v13;
    sub_2232AA874();

    oslog = sub_2232AABF4();
    [a2 stopSpeechRecognitionTaskAndInvalidateWithReason:a3 requestId:oslog completion:0];
  }
}

uint64_t sub_22326D854(uint64_t a1)
{
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v23 = 4 * v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2232AC310;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  sub_2232AA7D4();
  *v11 = 0x6764697242525341;
  v11[1] = 0xE900000000000065;
  v12 = (v10 + v7 + v6[14]);
  sub_2232AA824();
  *v12 = 0xD00000000000001ALL;
  v12[1] = 0x80000002232AD200;
  v13 = (v10 + 2 * v7 + v6[14]);
  sub_2232AA7E4();
  v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v13 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v13[1] = v14;
  v15 = (v10 + 3 * v7 + v6[14]);

  sub_2232AA864();
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v2);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v16 = sub_2232AB064();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  *v15 = v16;
  v15[1] = v18;
  v19 = (v10 + v23 + v6[14]);
  sub_2232AA854();
  v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v19[1] = v20;

  return v9;
}

void sub_22326DB24(id a1, unint64_t a2, char *a3, uint64_t a4, NSObject *a5, unint64_t a6)
{
  v76 = a4;
  v77 = a5;
  v74 = sub_2232A9504();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
LABEL_42:
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v75 = __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22325E000, v14, v15, "Received partial result", v16, 2u);
    MEMORY[0x223DD8AC0](v16, -1, -1);
  }

  v18 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v19 = *&a3[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  v20 = v18 == a1 && v19 == a2;
  if (!v20)
  {
    v17 = sub_2232AB094();
    if ((v17 & 1) == 0)
    {

      v32 = a3;
      v77 = sub_2232AAAC4();
      v33 = sub_2232AAD94();

      if (os_log_type_enabled(v77, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_2232603D0(a1, a2, aBlock);
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_2232603D0(v18, v19, aBlock);
        _os_log_impl(&dword_22325E000, v77, v33, "Response requestId = %s does not match current requestId = %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v35, -1, -1);
        MEMORY[0x223DD8AC0](v34, -1, -1);
      }

      else
      {
        v54 = v77;
      }

      return;
    }
  }

  v21 = a3[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage];
  v73 = a3;
  if ((v21 & 1) == 0)
  {
    a3[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_havePostedSpeechPartialDeliveryStartedMessage] = 1;
    MEMORY[0x28223BE20](v17);
    *&v71[-16] = v22;
    v23 = objc_allocWithZone(sub_2232AA394());
    v24 = sub_2232A9D44();
    if (v24)
    {
      v25 = v24;
      v26 = sub_2232AAAC4();
      v27 = sub_2232AAD84();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22325E000, v26, v27, "Going to post speechPartialDeliveryStartedMessage", v28, 2u);
        MEMORY[0x223DD8AC0](v28, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v73[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v73[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
      sub_2232AA624();
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22325E000, v29, v30, "Posted speechPartialDeliveryStartedMessage", v31, 2u);
        MEMORY[0x223DD8AC0](v31, -1, -1);
      }
    }

    else
    {

      v36 = sub_2232AAAC4();
      v37 = sub_2232AAD94();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v72 = v37;
        v39 = v38;
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2232603D0(a1, a2, aBlock);
        _os_log_impl(&dword_22325E000, v36, v72, "Failed to create speechPartialDeliveryStartedMessage for request: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x223DD8AC0](v40, -1, -1);
        MEMORY[0x223DD8AC0](v39, -1, -1);
      }
    }
  }

  v41 = [objc_allocWithZone(MEMORY[0x277D47738]) init];
  sub_2232A94F4();
  sub_2232A94C4();
  v42 = *(v10 + 8);
  v10 += 8;
  v42(v12, v74);
  v43 = sub_2232AABF4();

  [v41 setAceId_];

  a1 = v41;
  v44 = sub_2232AABF4();
  [a1 setRefId_];

  v45 = sub_2232AABF4();
  [a1 setLanguage_];

  a2 = sub_2232606A4(0, &qword_28131D178, 0x277D477A0);
  v46 = sub_2232AACF4();
  [a1 setTokens_];

  if (!(a6 >> 62))
  {
    a3 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a3)
    {
      goto LABEL_23;
    }

LABEL_44:
    v55 = v73;
    if (v73[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest])
    {

      v56 = v55;
      v57 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache;
      swift_beginAccess();
      v58 = a1;
      MEMORY[0x223DD8070]();
      if (*((*&v56[v57] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v56[v57] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2232AAD24();
      }

      sub_2232AAD34();
      swift_endAccess();
    }

    else
    {
      v58 = a1;
      v59 = sub_2232AAAC4();
      v60 = sub_2232AAD84();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = 136315138;
        v63 = [v58 tokens];
        if (v63)
        {
          v64 = v63;
          v65 = sub_2232AAD04();
        }

        else
        {
          v65 = 0;
        }

        v78 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812E0, &qword_2232AC4B0);
        v66 = sub_2232AAC14();
        v68 = sub_2232603D0(v66, v67, aBlock);

        *(v61 + 4) = v68;
        _os_log_impl(&dword_22325E000, v59, v60, "Submitting partial text: %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x223DD8AC0](v62, -1, -1);
        MEMORY[0x223DD8AC0](v61, -1, -1);
      }

      v69 = *&v55[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper];
      aBlock[4] = sub_22326E7D8;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_225;
      v70 = _Block_copy(aBlock);
      [v69 handleCommand:v58 completion:v70];
      _Block_release(v70);
    }

    return;
  }

  a3 = sub_2232AAFE4();
  if (!a3)
  {
    goto LABEL_44;
  }

LABEL_23:
  v47 = 0;
  v76 = a6 & 0xFFFFFFFFFFFFFF8;
  v77 = (a6 & 0xC000000000000001);
  while (1)
  {
    if (v77)
    {
      v49 = a6;
      v50 = MEMORY[0x223DD8300](v47, a6);
    }

    else
    {
      if (v47 >= *(v76 + 16))
      {
        goto LABEL_41;
      }

      v49 = a6;
      v50 = *(a6 + 8 * v47 + 32);
    }

    v51 = v50;
    a6 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (![v50 aceToken])
    {
      break;
    }

    v52 = [a1 tokens];
    if (!v52)
    {
      goto LABEL_56;
    }

    v53 = v52;
    v12 = sub_2232AAD04();

    aBlock[0] = v12;
    MEMORY[0x223DD8070]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2232AAD24();
    }

    sub_2232AAD34();
    v10 = aBlock[0];
    if (aBlock[0])
    {
      v48 = sub_2232AACF4();
    }

    else
    {
      v48 = 0;
    }

    [a1 setTokens_];

    ++v47;
    v20 = a6 == a3;
    a6 = v49;
    if (v20)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_22326E5A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x277D5CDD8];
  v10 = sub_2232AA644();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2232AA5A4();

  sub_2232AA594();
  v12 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v13 = sub_2232A9504();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a2 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_2232AA5C4();

  return sub_2232AA5B4();
}

uint64_t sub_22326E8C8()
{
  v1 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_speechPartialResultsCache;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_2232AAFE4();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DD8300](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      aBlock[4] = sub_22326EA64;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v5 handleCommand:v10 completion:v9];
      _Block_release(v9);
    }

    while (v4 != v6);
  }

  return result;
}

void sub_22326EA70(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v5 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22325E000, oslog, v5, a3, v6, 2u);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }
}

uint64_t sub_22326EBFC(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC320;
  v31 = v10;
  v11 = v10 + v9;
  v12 = (v11 + *(v7 + 48));
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_2232AA824();
  *v13 = 0xD00000000000001BLL;
  v13[1] = 0x80000002232AD220;
  v14 = (v11 + 2 * v8 + *(v7 + 48));
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + *(v7 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + *(v7 + 48));
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;
  v22 = v11 + 5 * v8;

  sub_2232AA834();
  v23 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  v24 = [v32 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2232AAC04();
    v23 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = (v22 + *(v7 + 48));
  MEMORY[0x223DD7FE0](v26, v23);

  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  return v31;
}

uint64_t sub_22326EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26[0] = a4;
  v26[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v26 - v15;
  v17 = *MEMORY[0x277D5CDD8];
  v18 = sub_2232AA644();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_2232A9E04();

  sub_2232A9DD4();
  v20 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v21 = sub_2232A9504();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, a2 + v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  sub_2232A9E34();

  sub_2232A9E24();
  v23 = sub_2232AA794();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, a3, v23);
  (*(v24 + 56))(v10, 0, 1, v23);
  sub_2232A9E14();

  sub_2232A9DE4();

  return sub_2232A9DF4();
}

uint64_t sub_22326F2F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232AA344();

  sub_2232AA324();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a2 + v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_2232AA374();

  sub_2232AA364();
  v21 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v22 = sub_2232AA794();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a2 + v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_2232AA354();
  v24 = [a3 multiUserTrpCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  sub_2232AA334();

  return sub_2232AA314();
}

uint64_t sub_22326F664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232AA2C4();

  sub_2232AA2A4();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a2 + v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_2232AA2F4();

  sub_2232AA2E4();
  v21 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v22 = sub_2232AA794();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a2 + v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_2232AA2D4();
  v24 = [a3 multiUserTrpCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  sub_2232AA2B4();

  return sub_2232AA294();
}

uint64_t sub_22326FA48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232AA0D4();

  sub_2232AA0A4();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a2 + v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_2232AA104();

  sub_2232AA0F4();
  v21 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v22 = sub_2232AA794();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a2 + v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_2232AA0E4();
  v24 = [a3 trpCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  sub_2232AA0B4();

  return sub_2232AA0C4();
}

uint64_t sub_22326FDB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232A98F4();

  sub_2232A98C4();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a2 + v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_2232A9924();

  sub_2232A9914();
  v21 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v22 = sub_2232AA794();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a2 + v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_2232A9904();
  v24 = [a3 trpCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  sub_2232A98D4();

  return sub_2232A98E4();
}

uint64_t sub_223270120(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232A9E04();

  sub_2232A9DD4();
  v18 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v19 = sub_2232A9504();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a2 + v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_2232A9E34();

  sub_2232A9E24();
  v21 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v22 = sub_2232AA794();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v8, a2 + v21, v22);
  (*(v23 + 56))(v8, 0, 1, v22);
  sub_2232A9E14();
  v24 = [a3 trpCandidateId];
  if (v24)
  {
    v25 = v24;
    sub_2232AAC04();
  }

  sub_2232A9DE4();

  return sub_2232A9DF4();
}

uint64_t sub_22327048C(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC320;
  v31 = v10;
  v11 = v10 + v9;
  v12 = (v11 + *(v7 + 48));
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_2232AA824();
  *v13 = 0xD000000000000018;
  v13[1] = 0x80000002232AD270;
  v14 = (v11 + 2 * v8 + *(v7 + 48));
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + *(v7 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + *(v7 + 48));
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;
  v22 = v11 + 5 * v8;

  sub_2232AA834();
  v23 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  v24 = [v32 trpCandidateId];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2232AAC04();
    v23 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = (v22 + *(v7 + 48));
  MEMORY[0x223DD7FE0](v26, v23);

  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  return v31;
}

void sub_22327084C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v6 = qword_28131DD38;
  sub_2232AAA84();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v25 = sub_2232AAAD4();
    __swift_project_value_buffer(v25, qword_28131DB88);
    v26 = sub_2232AAAC4();
    v27 = sub_2232AADA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v26, v27, "Not posting StoppedListeningForSpeechContinuationMessage since self is already out of scope", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }

    goto LABEL_60;
  }

  v8 = Strong;
  if ((a1 & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v29 = sub_2232AAAD4();
    __swift_project_value_buffer(v29, qword_28131DB88);
    v30 = sub_2232AAAC4();
    v31 = sub_2232AADA4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22325E000, v30, v31, "Not posting StoppedListeningForSpeechContinuationMessage since myriad selection is lost", v32, 2u);
      MEMORY[0x223DD8AC0](v32, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AA8A4();
    __swift_project_value_buffer(v33, qword_28131DBA0);
    v34 = swift_allocObject();
    *(v34 + 16) = v8;
    *(v34 + 24) = a4;
    v35 = v8;
    v36 = a4;
    goto LABEL_42;
  }

  if (*(Strong + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled) != 1)
  {
    MEMORY[0x28223BE20](Strong);
    if (v37 == 1)
    {
      v38 = objc_allocWithZone(sub_2232AA584());
      v39 = sub_2232AA424();
      if (!v39)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v67 = sub_2232AAAD4();
        __swift_project_value_buffer(v67, qword_28131DB88);
        v53 = v8;
        v26 = sub_2232AAAC4();
        v54 = sub_2232AAD94();

        if (!os_log_type_enabled(v26, v54))
        {
          goto LABEL_59;
        }

        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v75[0] = v56;
        *v55 = 136315138;
        v68 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        v69 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

        v70 = sub_2232603D0(v68, v69, v75);

        *(v55 + 4) = v70;
        v60 = "Failed to create MultiUserStoppedListeningForSpeechContinuationMessage for request: %s";
        goto LABEL_58;
      }

      v40 = v39;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v41 = sub_2232AAAD4();
      __swift_project_value_buffer(v41, qword_28131DB88);
      v42 = sub_2232AAAC4();
      v43 = sub_2232AAD84();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Going to post MultiUserStoppedListeningForSpeechContinuationMessage";
LABEL_37:
        _os_log_impl(&dword_22325E000, v42, v43, v45, v44, 2u);
        MEMORY[0x223DD8AC0](v44, -1, -1);
      }
    }

    else
    {
      v46 = objc_allocWithZone(sub_2232AA484());
      v47 = sub_2232AA424();
      if (!v47)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v71 = sub_2232AAAD4();
        __swift_project_value_buffer(v71, qword_28131DB88);
        v53 = v8;
        v26 = sub_2232AAAC4();
        v54 = sub_2232AAD94();

        if (!os_log_type_enabled(v26, v54))
        {
          goto LABEL_59;
        }

        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v75[0] = v56;
        *v55 = 136315138;
        v72 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
        v73 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

        v74 = sub_2232603D0(v72, v73, v75);

        *(v55 + 4) = v74;
        v60 = "Failed to create StoppedListeningForSpeechContinuationMessage for request: %s";
        goto LABEL_58;
      }

      v40 = v47;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v48 = sub_2232AAAD4();
      __swift_project_value_buffer(v48, qword_28131DB88);
      v42 = sub_2232AAAC4();
      v43 = sub_2232AAD84();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Going to post StoppedListeningForSpeechContinuationMessage";
        goto LABEL_37;
      }
    }

    sub_223260E10(v8 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher, v75);
    __swift_project_boxed_opaque_existential_1(v75, v76);
    sub_2232AA624();

LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v49 = sub_2232AA8A4();
    __swift_project_value_buffer(v49, qword_28131DBA0);
    v50 = swift_allocObject();
    *(v50 + 16) = v8;
    *(v50 + 24) = a4;
    v35 = v8;
    v51 = a4;
LABEL_42:
    sub_2232AA874();

    return;
  }

  MEMORY[0x28223BE20](Strong);
  v9 = objc_allocWithZone(sub_2232AA4F4());
  v10 = sub_2232AA494();
  if (!v10)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v52 = sub_2232AAAD4();
    __swift_project_value_buffer(v52, qword_28131DB88);
    v53 = v8;
    v26 = sub_2232AAAC4();
    v54 = sub_2232AAD94();

    if (!os_log_type_enabled(v26, v54))
    {
      goto LABEL_59;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75[0] = v56;
    *v55 = 136315138;
    v57 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v58 = *&v53[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

    v59 = sub_2232603D0(v57, v58, v75);

    *(v55 + 4) = v59;
    v60 = "Failed to create StoppedListeningForSpeechContinuationForPlannerMessage for request: %s";
LABEL_58:
    _os_log_impl(&dword_22325E000, v26, v54, v60, v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x223DD8AC0](v56, -1, -1);
    MEMORY[0x223DD8AC0](v55, -1, -1);
LABEL_59:

    goto LABEL_60;
  }

  v11 = v10;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v12 = sub_2232AAAD4();
  __swift_project_value_buffer(v12, qword_28131DB88);
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22325E000, v13, v14, "Going to post StoppedListeningForSpeechContinuationForPlannerMessage", v15, 2u);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher;
  sub_223260E10(v8 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher, v75);
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v17 = v8;
  sub_2232AA624();
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v75);
  MEMORY[0x28223BE20](v18);
  v19 = objc_allocWithZone(sub_2232AA564());
  v20 = sub_2232AA504();
  if (v20)
  {
    v21 = v20;
    v22 = sub_2232AAAC4();
    v23 = sub_2232AAD84();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22325E000, v22, v23, "Going to post RootStoppedListeningForSpeechContinuationMessage", v24, 2u);
      MEMORY[0x223DD8AC0](v24, -1, -1);
    }

    sub_223260E10(v8 + v16, v75);
    __swift_project_boxed_opaque_existential_1(v75, v76);
    sub_2232AA624();

    goto LABEL_39;
  }

  v26 = sub_2232AAAC4();
  v61 = sub_2232AAD94();

  if (os_log_type_enabled(v26, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75[0] = v63;
    *v62 = 136315138;
    v64 = *&v17[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v65 = *&v17[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

    v66 = sub_2232603D0(v64, v65, v75);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_22325E000, v26, v61, "Failed to create RootStoppedListeningForSpeechContinuationMessage for request: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x223DD8AC0](v63, -1, -1);
    MEMORY[0x223DD8AC0](v62, -1, -1);
  }

LABEL_60:
}

uint64_t sub_223271498(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC320;
  v31 = v10;
  v11 = v10 + v9;
  v12 = (v11 + *(v7 + 48));
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = v11 + v8 + *(v7 + 48);
  sub_2232AA824();
  strcpy(v13, "asrMyriadLoss");
  *(v13 + 14) = -4864;
  v14 = (v11 + 2 * v8 + *(v7 + 48));
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + *(v7 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + *(v7 + 48));
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;
  v22 = v11 + 5 * v8;

  sub_2232AA834();
  v23 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  v24 = [v32 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2232AAC04();
    v23 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = (v22 + *(v7 + 48));
  MEMORY[0x223DD7FE0](v26, v23);

  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  return v31;
}

uint64_t sub_2232717E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA4B4();

  sub_2232AA4A4();
  v14 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a2 + v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_2232AA4E4();

  sub_2232AA4D4();
  v17 = [a3 lastTRPCandidateId];
  if (v17)
  {
    v18 = v17;
    sub_2232AAC04();
  }

  return sub_2232AA4C4();
}

uint64_t sub_223271A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA524();

  sub_2232AA514();
  v14 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a2 + v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_2232AA554();

  sub_2232AA544();
  v17 = [a3 lastTRPCandidateId];
  if (v17)
  {
    v18 = v17;
    sub_2232AAC04();
  }

  return sub_2232AA534();
}

uint64_t sub_223271CF0(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_2232A9504();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2232AC320;
  v31 = v10;
  v11 = v10 + v9;
  v12 = (v11 + *(v7 + 48));
  sub_2232AA7D4();
  *v12 = 0x6764697242525341;
  v12[1] = 0xE900000000000065;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_2232AA824();
  *v13 = 0xD00000000000002ELL;
  v13[1] = 0x80000002232AD240;
  v14 = (v11 + 2 * v8 + *(v7 + 48));
  sub_2232AA7E4();
  v15 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v14[1] = v15;
  v16 = (v11 + 3 * v8 + *(v7 + 48));

  sub_2232AA864();
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v3);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = sub_2232AB064();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  *v16 = v17;
  v16[1] = v19;
  v20 = (v11 + 4 * v8 + *(v7 + 48));
  sub_2232AA854();
  v21 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v20[1] = v21;
  v22 = v11 + 5 * v8;

  sub_2232AA834();
  v23 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  v24 = [v32 lastTRPCandidateId];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2232AAC04();
    v23 = v27;
  }

  else
  {
    v26 = 0;
  }

  v28 = (v22 + *(v7 + 48));
  MEMORY[0x223DD7FE0](v26, v23);

  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  return v31;
}

uint64_t sub_2232720B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x277D5CDD8];
  v10 = sub_2232AA644();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2232AA5F4();

  sub_2232AA5E4();
  v12 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v13 = sub_2232A9504();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a2 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  return sub_2232AA604();
}

uint64_t sub_22327232C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2232AC310;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  sub_2232AA7D4();
  *v9 = 0x6764697242525341;
  v9[1] = 0xE900000000000065;
  v10 = (v8 + v5 + v4[14]);
  sub_2232AA804();
  *v10 = 0xD000000000000033;
  v10[1] = 0x80000002232AD820;
  v11 = (v8 + 2 * v5 + v4[14]);
  sub_2232AA824();
  *v11 = 0xD000000000000021;
  v11[1] = 0x80000002232AD100;
  v12 = (v8 + 3 * v5 + v4[14]);
  sub_2232AA854();
  *v12 = a1;
  v12[1] = a2;
  v13 = (v8 + 4 * v5 + v4[14]);

  sub_2232AA814();
  *v13 = sub_2232AB064();
  v13[1] = v14;
  return v7;
}

uint64_t sub_223272508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v27 - v14;
  v16 = *MEMORY[0x277D5CDD8];
  v17 = sub_2232AA644();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2232A9B04();

  sub_2232A9AE4();
  v19 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v20 = sub_2232A9504();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, a2 + v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_2232A9B34();

  sub_2232A9B24();

  sub_2232A9AD4();
  v22 = a5;
  sub_2232A9AF4();
  v23 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v24 = sub_2232AA794();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, a2 + v23, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  return sub_2232A9B14();
}

uint64_t sub_223272848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2232AC320;
  v13 = v12 + v11;
  v14 = (v13 + v9[14]);
  sub_2232AA7D4();
  *v14 = 0x6764697242525341;
  v14[1] = 0xE900000000000065;
  v15 = (v13 + v10 + v9[14]);
  sub_2232AA824();
  *v15 = 0xD00000000000001ALL;
  v15[1] = 0x80000002232AD0E0;
  v16 = (v13 + 2 * v10 + v9[14]);
  sub_2232AA7E4();
  v17 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v16[1] = v17;
  v18 = (v13 + 3 * v10 + v9[14]);

  sub_2232AA864();
  (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v5);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v19 = sub_2232AB064();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *v18 = v19;
  v18[1] = v21;
  v22 = (v13 + 4 * v10 + v9[14]);
  sub_2232AA854();
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = (v13 + 5 * v10 + v9[14]);

  sub_2232AA814();
  v30 = v29;
  *v24 = sub_2232AB064();
  v24[1] = v25;
  return v12;
}

uint64_t sub_223272BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2232AC320;
  v13 = v12 + v11;
  v14 = (v13 + v9[14]);
  sub_2232AA7D4();
  *v14 = 0x6764697242525341;
  v14[1] = 0xE900000000000065;
  v15 = (v13 + v10 + v9[14]);
  sub_2232AA824();
  *v15 = 0xD00000000000001ALL;
  v15[1] = 0x80000002232AD130;
  v16 = (v13 + 2 * v10 + v9[14]);
  sub_2232AA7E4();
  v17 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v16 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v16[1] = v17;
  v18 = (v13 + 3 * v10 + v9[14]);

  sub_2232AA864();
  (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v5);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v19 = sub_2232AB064();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *v18 = v19;
  v18[1] = v21;
  v22 = (v13 + 4 * v10 + v9[14]);
  sub_2232AA854();
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v24 = (v13 + 5 * v10 + v9[14]);

  sub_2232AA814();
  v30 = v29;
  *v24 = sub_2232AB064();
  v24[1] = v25;
  return v12;
}

uint64_t sub_223272EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a1;
  v35 = a3;
  v33 = a2;
  v6 = sub_2232A9504();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  v36 = v13;
  *(v13 + 16) = xmmword_2232AC330;
  v14 = v13 + v12;
  v15 = (v13 + v12 + v10[14]);
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + v10[14]);
  sub_2232AA804();
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000048, 0x80000002232AD7B0);
  MEMORY[0x223DD7FE0](a1, a2);
  MEMORY[0x223DD7FE0](0xD000000000000016, 0x80000002232AD800);
  v17 = v35;
  MEMORY[0x223DD7FE0](*(v35 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId), *(v35 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8));
  v18 = v39;
  *v16 = v38;
  v16[1] = v18;
  v19 = (v14 + 2 * v11 + v10[14]);
  sub_2232AA824();
  *v19 = 0xD000000000000021;
  v19[1] = 0x80000002232AD150;
  v20 = (v14 + 3 * v11 + v10[14]);
  sub_2232AA7E4();
  v21 = v17;
  v22 = *(v17 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v20 = *(v17 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v20[1] = v22;
  v23 = (v14 + 4 * v11 + v10[14]);

  sub_2232AA864();
  (*(v7 + 16))(v9, v21 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v6);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v24 = sub_2232AB064();
  v26 = v25;
  (*(v7 + 8))(v9, v6);
  *v23 = v24;
  v23[1] = v26;
  v27 = (v14 + 5 * v11 + v10[14]);
  sub_2232AA854();
  v28 = v33;
  *v27 = v34;
  v27[1] = v28;
  v29 = (v14 + 6 * v11 + v10[14]);

  sub_2232AA814();
  v38 = v37;
  *v29 = sub_2232AB064();
  v29[1] = v30;
  return v36;
}

uint64_t sub_223273298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v28 = a1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = xmmword_2232AC330;
  v12 = v11 + v10;
  v13 = (v12 + v8[14]);
  sub_2232AA7D4();
  *v13 = 0x6764697242525341;
  v13[1] = 0xE900000000000065;
  v14 = (v12 + v9 + v8[14]);
  sub_2232AA804();
  *v14 = 0xD00000000000003FLL;
  v14[1] = 0x80000002232AD770;
  v15 = (v12 + 2 * v9 + v8[14]);
  sub_2232AA824();
  *v15 = 0xD000000000000021;
  v15[1] = 0x80000002232AD150;
  v16 = (v12 + 3 * v9 + v8[14]);
  sub_2232AA7E4();
  v17 = v28;
  v18 = *(v28 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v16 = *(v28 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v16[1] = v18;
  v19 = (v12 + 4 * v9 + v8[14]);

  sub_2232AA864();
  (*(v5 + 16))(v7, v17 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v4);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v20 = sub_2232AB064();
  v22 = v21;
  (*(v5 + 8))(v7, v4);
  *v19 = v20;
  v19[1] = v22;
  v23 = (v12 + 5 * v9 + v8[14]);
  sub_2232AA854();
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v25 = (v12 + 6 * v9 + v8[14]);

  sub_2232AA814();
  v33 = v32;
  *v25 = sub_2232AB064();
  v25[1] = v26;
  return v29;
}

uint64_t sub_2232735C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v22[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v14 = *MEMORY[0x277D5CDD8];
  v15 = sub_2232AA644();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_2232A9A04();

  sub_2232A99C4();
  v17 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v18 = sub_2232A9504();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a2 + v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_2232A9A24();

  sub_2232A9A14();

  sub_2232A99F4();
  sub_2232A99D4();
  v20 = a6;
  return sub_2232A99E4();
}

uint64_t sub_223273844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x277D5CDD8];
  v13 = sub_2232AA644();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_2232A97A4();

  sub_2232A9774();
  v15 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v16 = sub_2232A9504();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a2 + v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_2232A97C4();

  sub_2232A97B4();

  sub_2232A9794();
  return sub_2232A9784();
}

void sub_223273B3C()
{
  v1 = v0;
  v2 = sub_2232AAAB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = *&v0[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
  if (!v9)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v19 = sub_2232AAAD4();
    __swift_project_value_buffer(v19, qword_28131DB88);
    v20 = v0;
    v37 = sub_2232AAAC4();
    v21 = sub_2232AAD84();

    if (os_log_type_enabled(v37, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2232603D0(*&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v20[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v38);
      _os_log_impl(&dword_22325E000, v37, v21, "No recognition candidate accepted yet for requestId: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DD8AC0](v23, -1, -1);
      MEMORY[0x223DD8AC0](v22, -1, -1);

      return;
    }

    goto LABEL_16;
  }

  v37 = v9;
  v10 = sub_2232AA5D4();
  v12 = v11;

  if (v10 == *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] && v12 == *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8])
  {
  }

  else
  {
    v14 = sub_2232AB094();

    if ((v14 & 1) == 0)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v15 = sub_2232AAAD4();
      __swift_project_value_buffer(v15, qword_28131DB88);
      v16 = sub_2232AAAC4();
      v17 = sub_2232AAD94();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22325E000, v16, v17, "ResultSelectedMessage requestId does not match current requestId", v18, 2u);
        MEMORY[0x223DD8AC0](v18, -1, -1);
      }

LABEL_16:
      v24 = v37;

      return;
    }
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  __swift_project_value_buffer(v25, qword_28131DB88);
  v26 = sub_2232AAAC4();
  v27 = sub_2232AAD84();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22325E000, v26, v27, "Will wait on Myriad selection..", v28, 2u);
    MEMORY[0x223DD8AC0](v28, -1, -1);
  }

  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v29 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v30 = qword_28131DD38;
  sub_2232AAA74();

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v6, v8, v2);
  v32 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v33 = (v4 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v3 + 32))(v34 + v32, v6, v2);
  *(v34 + v33) = v31;
  v35 = v37;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v36 = v35;

  sub_22328019C(0x7065636341204352, 0xED000065636E6174, sub_22327A9C0, v34);

  (*(v3 + 8))(v8, v2);
}

void sub_223274124(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v6 = qword_28131DD38;
  sub_2232AAA84();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {

      sub_223282C18(a4);

      sub_2232A9A34();
      v9 = swift_dynamicCastClass();
      v11 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
      v10 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];

      v13 = sub_2232A9FB4();
      if (v9)
      {
        sub_22327FE1C(v11, v10, v13, v12);
      }

      else
      {
        sub_22327FDEC(v11, v10, v13, v12);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v24 = sub_2232AA8A4();
      __swift_project_value_buffer(v24, qword_28131DBA0);
      *(swift_allocObject() + 16) = v8;
      v25 = v8;
      sub_2232AA874();

      v26 = *&v25[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
      *&v25[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = 0;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v18 = sub_2232AAAD4();
      __swift_project_value_buffer(v18, qword_28131DB88);
      v19 = sub_2232AAAC4();
      v20 = sub_2232AADA4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22325E000, v19, v20, "Not posting ResultSelected since myriad selection is lost", v21, 2u);
        MEMORY[0x223DD8AC0](v21, -1, -1);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v22 = sub_2232AA8A4();
      __swift_project_value_buffer(v22, qword_28131DBA0);
      *(swift_allocObject() + 16) = v8;
      v23 = v8;
      sub_2232AA884();
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v14 = sub_2232AAAD4();
    __swift_project_value_buffer(v14, qword_28131DB88);
    v15 = sub_2232AAAC4();
    v16 = sub_2232AADA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22325E000, v15, v16, "Not posting ResultSelected since self is already out-of-scope", v17, 2u);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }
  }
}

uint64_t sub_223274570(uint64_t a1)
{
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v23 = 4 * v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2232AC310;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  sub_2232AA7D4();
  *v11 = 0x6764697242525341;
  v11[1] = 0xE900000000000065;
  v12 = v10 + v7 + v6[14];
  sub_2232AA824();
  strcpy(v12, "asrMyriadLoss");
  *(v12 + 14) = -4864;
  v13 = (v10 + 2 * v7 + v6[14]);
  sub_2232AA7E4();
  v14 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v13 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v13[1] = v14;
  v15 = (v10 + 3 * v7 + v6[14]);

  sub_2232AA864();
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v2);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v16 = sub_2232AB064();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  *v15 = v16;
  v15[1] = v18;
  v19 = (v10 + v23 + v6[14]);
  sub_2232AA854();
  v20 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v19[1] = v20;

  return v9;
}

uint64_t sub_223274848(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = 2 * v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2232AC340;
  v7 = v6 + v4;
  v8 = (v7 + v2[14]);
  sub_2232AA7D4();
  *v8 = 0x6764697242525341;
  v8[1] = 0xE900000000000065;
  v9 = (v7 + v3 + v2[14]);
  sub_2232AA824();
  *v9 = 0xD000000000000027;
  v9[1] = 0x80000002232AD180;
  v10 = (v7 + v5 + v2[14]);
  sub_2232AA854();
  v11 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  *v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v10[1] = v11;

  return v6;
}

void sub_2232749B0(uint64_t a1, void *a2, void *a3)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = a3;
  v7 = a2;
  v8 = sub_2232AAAC4();
  v9 = sub_2232AAD84();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315650;
    v12 = [v6 aceId];
    if (v12)
    {
      v13 = v12;

      v14 = sub_2232AAC04();
      v16 = v15;

      v17 = sub_2232603D0(v14, v16, &v27);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2080;
      v18 = [v6 refId];
      if (v18)
      {
        v19 = v18;

        v20 = sub_2232AAC04();
        v22 = v21;

        v23 = sub_2232603D0(v20, v22, &v27);

        *(v10 + 14) = v23;
        *(v10 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
        v24 = sub_2232AAEA4();
        v26 = sub_2232603D0(v24, v25, &v27);

        *(v10 + 24) = v26;
        _os_log_impl(&dword_22325E000, v8, v9, "Sent voiceIdScoreCard to server with aceId: %s and refId:%s, error: %s", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v11, -1, -1);
        MEMORY[0x223DD8AC0](v10, -1, -1);

        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_223274C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232A9994();

  sub_2232A9984();
  v14 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, a2 + v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_2232A9974();

  sub_2232A9964();
  v17 = a3;
  return sub_2232A9954();
}

char *sub_223274EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - v10;
  v12 = *MEMORY[0x277D5CDD8];
  v13 = sub_2232AA644();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_2232A9D04();

  sub_2232A9CC4();
  v15 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v16 = sub_2232A9504();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, a2 + v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  sub_2232A9D24();

  sub_2232A9D14();
  v18 = a3;
  sub_2232A9CE4();
  [v18 userIdentityClassification];
  v42[1] = a1;
  sub_2232A9CF4();
  result = [v18 spIdKnownUserScores];
  if (result)
  {
    v20 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v21 = sub_2232AAB94();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D8, &qword_2232AC4A8);
    result = sub_2232AAFF4();
    v22 = result;
    v23 = 0;
    v25 = v21 + 64;
    v24 = *(v21 + 64);
    v44 = v21;
    v26 = 1 << *(v21 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v24;
    v29 = (v26 + 63) >> 6;
    v43 = result + 64;
    if ((v27 & v24) != 0)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
LABEL_11:
        v33 = v30 | (v23 << 6);
        v34 = (*(v44 + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = *(*(v44 + 56) + 8 * v33);

        result = [v37 integerValue];
        *&v43[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        v38 = (*(v22 + 6) + 16 * v33);
        *v38 = v35;
        v38[1] = v36;
        *(*(v22 + 7) + 8 * v33) = result;
        v39 = *(v22 + 2);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          break;
        }

        *(v22 + 2) = v41;
        if (!v28)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v31 = v23;
      while (1)
      {
        v23 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v23 >= v29)
        {

          return sub_2232A9CD4();
        }

        v32 = *(v25 + 8 * v23);
        ++v31;
        if (v32)
        {
          v30 = __clz(__rbit64(v32));
          v28 = (v32 - 1) & v32;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_223275538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2232A9504();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = *(*v9 + 72);
  v12 = swift_allocObject();
  v38 = v12;
  *(v12 + 16) = xmmword_2232AC320;
  v13 = v12 + v10;
  v14 = (v12 + v10 + v9[14]);
  sub_2232AA7D4();
  *v14 = 0x6764697242525341;
  v14[1] = 0xE900000000000065;
  v15 = (v13 + v11 + v9[14]);
  sub_2232AA804();
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000048, 0x80000002232AD7B0);
  v41 = a1;
  v42 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
  v16 = sub_2232AAC14();
  MEMORY[0x223DD7FE0](v16);

  MEMORY[0x223DD7FE0](0xD000000000000016, 0x80000002232AD800);
  v17 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v36 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8);
  v37 = v17;
  MEMORY[0x223DD7FE0]();
  v18 = v44;
  *v15 = v43;
  v15[1] = v18;
  v19 = v11;
  v20 = (v13 + 2 * v11 + v9[14]);
  sub_2232AA824();
  *v20 = 0xD00000000000001ELL;
  v20[1] = 0x80000002232AD1B0;
  v21 = (v13 + 3 * v11 + v9[14]);
  sub_2232AA7E4();
  v22 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v21 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v21[1] = v22;
  v11 *= 4;
  v23 = (v13 + v11 + v9[14]);

  sub_2232AA864();
  v24 = v39;
  v25 = a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v26 = v8;
  v27 = v8;
  v28 = v40;
  (*(v39 + 16))(v27, v25, v40);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v29 = sub_2232AB064();
  v31 = v30;
  (*(v24 + 8))(v26, v28);
  *v23 = v29;
  v23[1] = v31;
  v32 = (v13 + v11 + v19 + v9[14]);
  sub_2232AA854();
  v33 = v36;
  *v32 = v37;
  v32[1] = v33;

  return v38;
}

uint64_t sub_2232758D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v7 = sub_2232A9504();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2232AC320;
  v37 = v14;
  v15 = v14 + v13;
  v16 = (v15 + *(v11 + 48));
  sub_2232AA7D4();
  *v16 = 0x6764697242525341;
  v16[1] = 0xE900000000000065;
  sub_2232AA804();
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000034, 0x80000002232AD910);
  if (a2)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v40 = v36;
    sub_22327F678();
    v17 = sub_2232AAED4();
    v18 = v19;
  }

  v20 = (v15 + v12 + *(v11 + 48));
  MEMORY[0x223DD7FE0](v17, v18);

  v21 = v42;
  *v20 = v41;
  v20[1] = v21;
  v22 = (v15 + 2 * v12 + *(v11 + 48));
  sub_2232AA824();
  *v22 = 0xD00000000000001ELL;
  v22[1] = 0x80000002232AD1B0;
  v23 = (v15 + 3 * v12 + *(v11 + 48));
  sub_2232AA7E4();
  v24 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v23 = *(a3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v23[1] = v24;
  v25 = a3;
  v26 = (v15 + 4 * v12 + *(v11 + 48));

  sub_2232AA864();
  (*(v8 + 16))(v10, v25 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v7);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v27 = sub_2232AB064();
  v29 = v28;
  (*(v8 + 8))(v10, v7);
  *v26 = v27;
  v26[1] = v29;
  sub_2232AA854();
  v41 = 0;
  v42 = 0xE000000000000000;
  if (v39)
  {
    v30 = v38;
  }

  else
  {
    v30 = 0;
  }

  if (v39)
  {
    v31 = v39;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v32 = (v15 + 5 * v12 + *(v11 + 48));

  MEMORY[0x223DD7FE0](v30, v31);

  v33 = v42;
  *v32 = v41;
  v32[1] = v33;
  return v37;
}

uint64_t sub_223275C7C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6)
{
  v47 = a6;
  v40 = a5;
  v44 = a2;
  v45 = a4;
  v43 = a3;
  v41 = sub_2232A9504();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v42 = 8 * v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2232AC350;
  v46 = v13;
  v14 = v13 + v12;
  v15 = (v13 + v12 + *(v10 + 48));
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + *(v10 + 48));
  sub_2232AA804();
  *v16 = 0xD000000000000029;
  v16[1] = 0x80000002232AD860;
  v17 = (v14 + 2 * v11 + *(v10 + 48));
  sub_2232AA824();
  *v17 = 0xD000000000000025;
  v17[1] = 0x80000002232AD1D0;
  v18 = (v14 + 3 * v11 + *(v10 + 48));
  sub_2232AA7E4();
  v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v18 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v18[1] = v19;
  v20 = (v14 + 4 * v11 + *(v10 + 48));

  sub_2232AA864();
  v21 = a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v22 = v41;
  (*(v7 + 16))(v9, v21, v41);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v23 = sub_2232AB064();
  v25 = v24;
  (*(v7 + 8))(v9, v22);
  *v20 = v23;
  v20[1] = v25;
  sub_2232AA854();
  v26 = 0xE000000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  if (v43)
  {
    v27 = v44;
  }

  else
  {
    v27 = 0;
  }

  if (v43)
  {
    v28 = v43;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = (v14 + 5 * v11 + *(v10 + 48));

  MEMORY[0x223DD7FE0](v27, v28);

  v30 = v50;
  *v29 = v49;
  v29[1] = v30;
  v31 = (v14 + 6 * v11 + *(v10 + 48));
  sub_2232AA844();
  v49 = [v45 code];
  *v31 = sub_2232AB064();
  v31[1] = v32;
  v33 = v14 + v42 - v11;
  sub_2232AA7F4();
  v49 = 0;
  v50 = 0xE000000000000000;
  if (v47)
  {
    v34 = 0;
  }

  else
  {
    v48 = v40;
    sub_22327F678();
    v34 = sub_2232AAED4();
    v26 = v35;
  }

  v36 = (v33 + *(v10 + 48));
  MEMORY[0x223DD7FE0](v34, v26);

  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  return v46;
}

uint64_t sub_223276060(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6)
{
  v47 = a6;
  v40 = a5;
  v44 = a2;
  v45 = a4;
  v43 = a3;
  v41 = sub_2232A9504();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v42 = 8 * v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2232AC350;
  v46 = v13;
  v14 = v13 + v12;
  v15 = (v13 + v12 + *(v10 + 48));
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + *(v10 + 48));
  sub_2232AA804();
  *v16 = 0xD000000000000038;
  v16[1] = 0x80000002232AD890;
  v17 = (v14 + 2 * v11 + *(v10 + 48));
  sub_2232AA824();
  *v17 = 0xD000000000000025;
  v17[1] = 0x80000002232AD1D0;
  v18 = (v14 + 3 * v11 + *(v10 + 48));
  sub_2232AA7E4();
  v19 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v18 = *(a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v18[1] = v19;
  v20 = (v14 + 4 * v11 + *(v10 + 48));

  sub_2232AA864();
  v21 = a1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v22 = v41;
  (*(v7 + 16))(v9, v21, v41);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v23 = sub_2232AB064();
  v25 = v24;
  (*(v7 + 8))(v9, v22);
  *v20 = v23;
  v20[1] = v25;
  sub_2232AA854();
  v26 = 0xE000000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  if (v43)
  {
    v27 = v44;
  }

  else
  {
    v27 = 0;
  }

  if (v43)
  {
    v28 = v43;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = (v14 + 5 * v11 + *(v10 + 48));

  MEMORY[0x223DD7FE0](v27, v28);

  v30 = v50;
  *v29 = v49;
  v29[1] = v30;
  v31 = (v14 + 6 * v11 + *(v10 + 48));
  sub_2232AA844();
  v49 = [v45 code];
  *v31 = sub_2232AB064();
  v31[1] = v32;
  v33 = v14 + v42 - v11;
  sub_2232AA7F4();
  v49 = 0;
  v50 = 0xE000000000000000;
  if (v47)
  {
    v34 = 0;
  }

  else
  {
    v48 = v40;
    sub_22327F678();
    v34 = sub_2232AAED4();
    v26 = v35;
  }

  v36 = (v33 + *(v10 + 48));
  MEMORY[0x223DD7FE0](v34, v26);

  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  return v46;
}

uint64_t sub_223276444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, int a6)
{
  v55 = a6;
  v47 = a5;
  v52 = a4;
  v53 = a3;
  v50 = sub_2232A9504();
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v51 = 8 * v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2232AC350;
  v54 = v13;
  v14 = v13 + v12;
  v15 = (v13 + v12 + *(v10 + 48));
  sub_2232AA7D4();
  *v15 = 0x6764697242525341;
  v15[1] = 0xE900000000000065;
  v16 = (v14 + v11 + *(v10 + 48));
  sub_2232AA804();
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_2232AAF64();

  v57 = 0xD000000000000013;
  v58 = 0x80000002232AD8D0;
  v49 = a1;
  v56 = [a1 code];
  v17 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v17);

  MEMORY[0x223DD7FE0](32, 0xE100000000000000);
  v18 = [a1 description];
  v19 = sub_2232AAC04();
  v21 = v20;

  MEMORY[0x223DD7FE0](v19, v21);

  MEMORY[0x223DD7FE0](0xD00000000000001ALL, 0x80000002232AD8F0);
  v22 = v58;
  *v16 = v57;
  v16[1] = v22;
  v23 = (v14 + 2 * v11 + *(v10 + 48));
  sub_2232AA824();
  *v23 = 0xD000000000000025;
  v23[1] = 0x80000002232AD1D0;
  v24 = (v14 + 3 * v11 + *(v10 + 48));
  sub_2232AA7E4();
  v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);
  *v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v24[1] = v25;
  v26 = (v14 + 4 * v11 + *(v10 + 48));

  sub_2232AA864();
  v27 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v28 = v48;
  v29 = v50;
  (*(v8 + 16))(v48, v27, v50);
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v30 = sub_2232AB064();
  v32 = v31;
  (*(v8 + 8))(v28, v29);
  *v26 = v30;
  v26[1] = v32;
  sub_2232AA854();
  v57 = 0;
  v58 = 0xE000000000000000;
  if (v52)
  {
    v33 = v53;
  }

  else
  {
    v33 = 0;
  }

  if (v52)
  {
    v34 = v52;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35 = (v14 + 5 * v11 + *(v10 + 48));

  v36 = v33;
  v37 = 0xE000000000000000;
  MEMORY[0x223DD7FE0](v36, v34);

  v38 = v58;
  *v35 = v57;
  v35[1] = v38;
  v39 = (v14 + 6 * v11 + *(v10 + 48));
  sub_2232AA844();
  v57 = [v49 code];
  *v39 = sub_2232AB064();
  v39[1] = v40;
  v41 = v14 + v51 - v11;
  sub_2232AA7F4();
  v57 = 0;
  v58 = 0xE000000000000000;
  if (v55)
  {
    v42 = 0;
  }

  else
  {
    v56 = v47;
    sub_22327F678();
    v42 = sub_2232AAED4();
    v37 = v43;
  }

  v44 = (v41 + *(v10 + 48));
  MEMORY[0x223DD7FE0](v42, v37);

  v45 = v58;
  *v44 = v57;
  v44[1] = v45;
  return v54;
}

void sub_223276910(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v6 = sub_2232AABF4();
    [a1 setMultiUserTrpCandidateId_];

    sub_2232606A4(0, &unk_27D0812B0, 0x277D5D2F8);

    v7 = sub_2232AACF4();

    [a1 setTrpCandidateList_];

    v8 = sub_2232AABF4();
    [a1 setRequestId_];
  }
}

void sub_223276A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_2232AABF4();
    [a1 setLastTRPCandidateId_];

    v6 = sub_2232AABF4();
    [a1 setRequestId_];
  }
}

id sub_223276AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v56 = a1;
  v57 = a3;
  v8 = sub_2232A9504();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0;
  v65 = 1;
  if ((v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isCandidateRequest] & 1) != 0 || v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isFFRequest] == 1)
  {
    v64 = 30;
    v65 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v13 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v14 = v12;
  v15 = [v13 init];
  v16 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v17 = v14;
  v18 = [v16 initWithRecognition:v17 rawRecognition:v17 audioAnalytics:v15 isFinal:0 utteranceStart:0.0];

  if (v18)
  {
    v54 = a4;
    v55 = a2;
    sub_2232A94F4();
    v19 = sub_2232A94C4();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v21;
    v22[4] = v5;
    v22[5] = v18;
    v22[6] = &v64;
    v23 = objc_allocWithZone(MEMORY[0x277D5D2F0]);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22327A978;
    *(v24 + 24) = v22;
    v62 = sub_22327A988;
    v63 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_22327F7FC;
    v61 = &block_descriptor_113;
    v25 = _Block_copy(&aBlock);
    v26 = v5;
    v27 = v18;

    v28 = [v23 initWithBuilder_];
    _Block_release(v25);
    if (v28)
    {
      v53 = v27;
      v29 = swift_allocObject();
      v30 = v55;
      v29[2] = v56;
      v29[3] = v30;
      v29[4] = v26;
      v29[5] = v28;
      v31 = v54;
      v29[6] = v57;
      v29[7] = v31;
      v57 = objc_allocWithZone(MEMORY[0x277D5D2F8]);
      v32 = swift_allocObject();
      *(v32 + 16) = sub_22327A9B0;
      *(v32 + 24) = v29;
      v62 = sub_22327F800;
      v63 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_22327F7FC;
      v61 = &block_descriptor_122;
      v33 = _Block_copy(&aBlock);

      v34 = v26;

      v35 = v28;

      v36 = [v57 &off_2784D7178];
      _Block_release(v33);
      if (v36)
      {

        return v36;
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v46 = sub_2232AAAD4();
      __swift_project_value_buffer(v46, qword_28131DB88);
      v47 = v34;
      v48 = sub_2232AAAC4();
      v49 = sub_2232AAD94();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_2232603D0(*&v47[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v47[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v48, v49, "Failed to create fabricated TRPCandidate for request: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x223DD8AC0](v51, -1, -1);
        MEMORY[0x223DD8AC0](v50, -1, -1);
      }
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v42 = sub_2232AAAD4();
      __swift_project_value_buffer(v42, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v44 = sub_2232AAD94();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22325E000, v43, v44, "Could not create fabricated TCUPackage", v45, 2u);
        MEMORY[0x223DD8AC0](v45, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v38 = sub_2232AAAD4();
    __swift_project_value_buffer(v38, qword_28131DB88);
    v39 = sub_2232AAAC4();
    v40 = sub_2232AAD94();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22325E000, v39, v40, "Failed to create speechPackage", v41, 2u);
      MEMORY[0x223DD8AC0](v41, -1, -1);
    }
  }

  return 0;
}

id sub_223277184(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (result)
  {
    v8 = result;
    v9 = sub_2232AABF4();
    [v8 setTcuId_];

    v10 = sub_2232AABF4();
    [v8 setRequestId_];

    result = [v8 setSpeechPackage_];
    if ((a6[1] & 1) == 0)
    {
      v11 = *a6;

      return [v8 setSpeechEvent_];
    }
  }

  return result;
}

void sub_223277270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = sub_2232AABF4();
    [a1 setTrpCandidateId_];

    v11 = sub_2232AABF4();
    [a1 setRequestId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811C8, &qword_2232AC458);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2232AC360;
    *(v12 + 32) = a5;
    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v13 = a5;
    v14 = sub_2232AACF4();

    [a1 setTcuList_];

    if (a7)
    {
      v15 = sub_2232AABF4();
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [a1 setUserId_];
  }
}

void sub_2232773E4(uint64_t a1, int a2, id a3)
{
  v5 = [a3 description];
  if (!v5)
  {
    sub_2232AAC04();
    v5 = sub_2232AABF4();
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D47208]) initWithReason_];

  if (v6)
  {
    [v6 setErrorCode_];
    v7 = v6;
    v8 = sub_2232AABF4();
    [v7 setRefId_];

    v9 = *(v3 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
    aBlock[4] = sub_223277650;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22328BC90;
    aBlock[3] = &block_descriptor_104;
    v10 = _Block_copy(aBlock);
    [v9 handleCommand:v7 completion:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    oslog = sub_2232AAAC4();
    v12 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, oslog, v12, "Could not create CommandFailed to fail the request, request will likely timeout", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }
  }
}

void sub_223277650(uint64_t a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v3 = sub_2232AAAD4();
  __swift_project_value_buffer(v3, qword_28131DB88);
  v4 = a2;
  oslog = sub_2232AAAC4();
  v5 = sub_2232AAD94();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
    v8 = sub_2232AAEA4();
    v10 = sub_2232603D0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22325E000, oslog, v5, "Sent CommandFailed to fail the request with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DD8AC0](v7, -1, -1);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }

  else
  {
  }
}

id sub_2232777E8()
{
  if (*(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isRMVEnabled) != 1)
  {
    if (AFIsATV())
    {
      sub_2232AAA54();
      if (!v21)
      {
        v59 = sub_2232AAA64();
        if (v60)
        {
          v61 = v59;
          v62 = v60;
          if (qword_28131D338 != -1)
          {
            swift_once();
          }

          v63 = sub_2232AAAD4();
          __swift_project_value_buffer(v63, qword_28131DB88);
          v64 = sub_2232AAAC4();
          v65 = sub_2232AADA4();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_22325E000, v64, v65, "Generating default user voice ID score card", v66, 2u);
            MEMORY[0x223DD8AC0](v66, -1, -1);
          }

          v67 = swift_allocObject();
          *(v67 + 16) = v61;
          *(v67 + 24) = v62;
          v68 = objc_allocWithZone(MEMORY[0x277CEF520]);
          v69 = swift_allocObject();
          *(v69 + 16) = sub_2232789FC;
          *(v69 + 24) = v67;
          v81 = sub_22327F800;
          v82 = v69;
          aBlock = MEMORY[0x277D85DD0];
          v78 = 1107296256;
          v79 = sub_22327F7FC;
          v80 = &block_descriptor_91;
          v70 = _Block_copy(&aBlock);

          v58 = [v68 initWithBuilder_];
          _Block_release(v70);

          return v58;
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v71 = sub_2232AAAD4();
        __swift_project_value_buffer(v71, qword_28131DB88);
        v31 = p_aBlock;
        v32 = sub_2232AAAC4();
        v33 = sub_2232AAD94();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109120;
          goto LABEL_26;
        }

LABEL_63:

        return 0;
      }
    }

    v22 = sub_2232AAA54();
    if (!v23)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v36 = sub_2232AAAD4();
      __swift_project_value_buffer(v36, qword_28131DB88);
      v31 = p_aBlock;
      v32 = sub_2232AAAC4();
      v33 = sub_2232AAD94();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 67109120;

        v35 = "Primary user is missing from homemebers list when RMV=%{BOOL}d";
        goto LABEL_31;
      }

      goto LABEL_63;
    }

    v24 = v22;
    v25 = v23;
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    v27 = objc_allocWithZone(MEMORY[0x277CEF520]);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2232789D8;
    *(v28 + 24) = v26;
    v81 = sub_22327F800;
    v82 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v29 = &block_descriptor_81;
    goto LABEL_51;
  }

  v1 = *(p_aBlock + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers);
  v2 = sub_2232AAA64();
  if (!v3)
  {
    if (qword_28131D338 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  v4 = v2;
  v5 = v3;
  if (v1 >> 62)
  {
    goto LABEL_71;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v19 = *(MEMORY[0x277D84F90] + 16);
    if (v19)
    {
      v73 = v5;
      v74 = v4;
LABEL_34:
      v37 = 0;
      v38 = MEMORY[0x277D84F98];
      v5 = v7 + 5;
      v75 = v19;
      v76 = v7;
      while (1)
      {
        if (v37 >= v7[2])
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v6 = sub_2232AAFE4();
          goto LABEL_5;
        }

        v42 = *(v5 - 1);
        v41 = *v5;
        sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);

        v43 = sub_2232AAE74();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v38;
        v4 = sub_2232A2C98(v42, v41);
        v46 = v38[2];
        v47 = (v45 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_67;
        }

        v1 = v45;
        if (v38[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v38 = aBlock;
            if ((v45 & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          else
          {
            sub_2232A4FC8();
            v38 = aBlock;
            if ((v1 & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          sub_2232A2E28(v48, isUniquelyReferenced_nonNull_native);
          v49 = sub_2232A2C98(v42, v41);
          if ((v1 & 1) != (v50 & 1))
          {
            goto LABEL_75;
          }

          v4 = v49;
          v38 = aBlock;
          if ((v1 & 1) == 0)
          {
LABEL_45:
            v38[(v4 >> 6) + 8] |= 1 << v4;
            v51 = (v38[6] + 16 * v4);
            *v51 = v42;
            v51[1] = v41;
            *(v38[7] + 8 * v4) = v43;
            v52 = v38[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_69;
            }

            v38[2] = v54;
            goto LABEL_36;
          }
        }

        v39 = v38[7];
        v40 = *(v39 + 8 * v4);
        *(v39 + 8 * v4) = v43;

LABEL_36:
        ++v37;
        v5 += 2;
        v7 = v76;
        if (v75 == v37)
        {
          v5 = v73;
          v4 = v74;
          goto LABEL_50;
        }
      }
    }

    v38 = MEMORY[0x277D84F98];
LABEL_50:

    v55 = swift_allocObject();
    v55[2] = v38;
    v55[3] = v4;
    v55[4] = v5;
    v27 = objc_allocWithZone(MEMORY[0x277CEF520]);
    v56 = swift_allocObject();
    *(v56 + 16) = sub_223278A40;
    *(v56 + 24) = v55;
    v81 = sub_22327F800;
    v82 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v29 = &block_descriptor_101;
LABEL_51:
    v79 = sub_22327F7FC;
    v80 = v29;
    v57 = _Block_copy(&aBlock);

    v58 = [v27 initWithBuilder_];
    _Block_release(v57);

    return v58;
  }

  v73 = v5;
  v74 = v4;
  aBlock = MEMORY[0x277D84F90];
  p_aBlock = &aBlock;
  sub_223278A20(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
LABEL_73:
    swift_once();
LABEL_24:
    v30 = sub_2232AAAD4();
    __swift_project_value_buffer(v30, qword_28131DB88);
    v31 = p_aBlock;
    v32 = sub_2232AAAC4();
    v33 = sub_2232AAD94();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = 1;
LABEL_26:

      v35 = "Unknown user missing from homemebers list when RMV=%{BOOL}d";
LABEL_31:
      _os_log_impl(&dword_22325E000, v32, v33, v35, v34, 8u);
      MEMORY[0x223DD8AC0](v34, -1, -1);

      return 0;
    }

    goto LABEL_63;
  }

  v8 = 0;
  v7 = aBlock;
  v5 = (v1 & 0xC000000000000001);
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_68;
    }

    if (v5)
    {
      v10 = v7;
      v11 = MEMORY[0x223DD8300](v8, v1);
    }

    else
    {
      if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v10 = v7;
      v11 = *(v1 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = [v11 sharedUserId];
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = sub_2232AAC04();
    v4 = v16;

    v7 = v10;
    aBlock = v10;
    v18 = v10[2];
    v17 = v10[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      sub_223278A20((v17 > 1), v18 + 1, 1);
      v7 = aBlock;
    }

    v7[2] = v19;
    v20 = &v7[2 * v18];
    v20[4] = v15;
    v20[5] = v4;
    ++v8;
    if (v9 == v6)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_75:
  result = sub_2232AB0A4();
  __break(1u);
  return result;
}

id sub_223278104(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v4 = sub_2232AAE74();
    [v3 setSpIdAudioProcessedDuration_];

    v5 = sub_2232AAE74();
    [v3 setSpIdUnknownUserScore_];

    v6 = sub_2232AAB84();
    [v3 setSpIdKnownUserScores_];

    v7 = sub_2232AAE74();
    [v3 setSpIdUserScoresVersion_];

    [v3 setSpIdScoreThresholdingType_];
    [v3 setSpIdAssetVersion_];
    v8 = sub_2232AABF4();
    [v3 setUserClassified_];

    return [v3 setUserIdentityClassification_];
  }

  return result;
}

id sub_223278278(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v9 = sub_2232AAE74();
    [v8 setSpIdAudioProcessedDuration_];

    v10 = sub_2232AAE74();
    [v8 setSpIdUnknownUserScore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0810F0, &qword_2232AC430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    *(inited + 48) = sub_2232AAE74();
    sub_22329DF2C(inited);
    swift_setDeallocating();
    sub_22327A910(inited + 32);
    v12 = sub_2232AAB84();

    [v8 setSpIdKnownUserScores_];

    v13 = sub_2232AAE74();
    [v8 setSpIdUserScoresVersion_];

    [v8 setSpIdScoreThresholdingType_];
    [v8 setSpIdAssetVersion_];
    v14 = sub_2232AABF4();
    [v8 setUserClassified_];

    return [v8 setUserIdentityClassification_];
  }

  return result;
}

uint64_t sub_223278464()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_myriadMonitor));
  v1 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_userId;
  v2 = sub_2232AA794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState));
}

id sub_22327855C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistantSpeechRecognizerResponseHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AssistantSpeechRecognizerResponseHandler(uint64_t a1)
{
  result = qword_28131D350;
  if (!qword_28131D350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2232786E4(uint64_t a1)
{
  result = sub_2232AA794();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_2232787D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

uint64_t sub_223278834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
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

unint64_t sub_2232788DC()
{
  result = qword_28131D210;
  if (!qword_28131D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D081AB0, &unk_2232AD010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D210);
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

uint64_t sub_223278990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_223278A20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223278A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223278A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0810E8, &unk_2232AC930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223278B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2232AAB14();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2232AAB44();
  v14 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v5[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_requestQueue];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v5;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  aBlock[4] = sub_22327F6EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_222;
  v18 = _Block_copy(aBlock);

  v19 = v5;

  sub_2232AAB24();
  v24 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v16, v13, v18);
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);
}

void sub_223278E34(uint64_t a1, unint64_t a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22325E000, v6, v7, "Received final result", v8, 2u);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v10 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  v11 = v9 == a1 && v10 == a2;
  if (!v11 && (sub_2232AB094() & 1) == 0)
  {

    v12 = v2;
    oslog = sub_2232AAAC4();
    v13 = sub_2232AAD94();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_2232603D0(a1, a2, &v17);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2232603D0(v9, v10, &v17);
      _os_log_impl(&dword_22325E000, oslog, v13, "Response requestId = %s does not match current requestId = %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD8AC0](v15, -1, -1);
      MEMORY[0x223DD8AC0](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22327909C(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22325E000, v5, v6, "Received TRPDetected.", v7, 2u);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] != 1)
  {
    v38 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (os_log_type_enabled(v38, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Received TRPDetected from CoreSpeech when Medoc is not enabled.";
      goto LABEL_16;
    }

LABEL_17:

    return;
  }

  v8 = [a1 requestId];
  if (!v8)
  {
LABEL_12:
    v38 = sub_2232AAAC4();
    v19 = sub_2232AAD84();
    if (os_log_type_enabled(v38, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "TRPDetected requestId does not match current requestId";
LABEL_16:
      _os_log_impl(&dword_22325E000, v38, v19, v21, v20, 2u);
      MEMORY[0x223DD8AC0](v20, -1, -1);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = sub_2232AAC04();
  v12 = v11;

  v13 = v10;
  v14 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v15 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  if (v13 == v14 && v12 == v15)
  {
  }

  else
  {
    v17 = sub_2232AB094();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  MEMORY[0x28223BE20](v18);
  if (v22 == 1)
  {
    v23 = objc_allocWithZone(sub_2232AA1E4());
    v24 = sub_2232A9C14();
    if (!v24)
    {
      v25 = v2;
      v26 = sub_2232AAAC4();
      v27 = sub_2232AAD94();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2232603D0(v14, v15, &v39);
        v30 = "Failed to create MultiUserSpeechStopDetectedMessage for request: %s";
LABEL_31:
        _os_log_impl(&dword_22325E000, v26, v27, v30, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x223DD8AC0](v29, -1, -1);
        MEMORY[0x223DD8AC0](v28, -1, -1);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v31 = objc_allocWithZone(sub_2232A9C74());
    v24 = sub_2232A9C14();
    if (!v24)
    {
      v37 = v2;
      v26 = sub_2232AAAC4();
      v27 = sub_2232AAD94();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2232603D0(v14, v15, &v39);
        v30 = "Failed to create SpeechStopDetectedMessage for request: %s";
        goto LABEL_31;
      }

LABEL_32:

      return;
    }
  }

  v32 = v24;
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
  sub_2232AA624();

  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v33 = sub_2232AA8A4();
  __swift_project_value_buffer(v33, qword_28131DBA0);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = a1;
  v35 = v2;
  v36 = a1;
  sub_2232AA874();
}

void sub_2232795D8(NSObject *a1)
{
  v2 = v1;
  v146 = sub_2232AA794();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v5 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
LABEL_78:
    swift_once();
  }

  v6 = sub_2232AAAD4();
  v7 = __swift_project_value_buffer(v6, qword_28131DB88);
  v8 = a1;
  v9 = sub_2232AAAC4();
  v10 = sub_2232AAD84();
  if (os_log_type_enabled(v9, v10))
  {
    v147 = v7;
    v11 = v5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v154 = v13;
    *v12 = 136315138;
    v5 = [v8 multiUserTrpCandidateId];

    if (!v5)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v14 = sub_2232AAC04();
    v16 = v15;

    v17 = sub_2232603D0(v14, v16, &v154);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22325E000, v9, v10, "Received MultiUserTRPCandidate with top level trpId: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DD8AC0](v13, -1, -1);
    MEMORY[0x223DD8AC0](v12, -1, -1);

    v5 = v11;
    v7 = v147;
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled) != 1)
  {
    v153 = sub_2232AAAC4();
    v39 = sub_2232AAD94();
    if (os_log_type_enabled(v153, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22325E000, v153, v39, "MultiUserTRPCandidate received from ASR but Multi User is NOT enabled. Will ignore this message.", v40, 2u);
      MEMORY[0x223DD8AC0](v40, -1, -1);
    }

    goto LABEL_29;
  }

  v152 = v2;
  v18 = [v8 requestId];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v20 = sub_2232AAC04();
  v22 = v21;

  v23 = v20;
  v25 = *&v152[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v24 = *&v152[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  if (v23 == v25 && v22 == v24)
  {
  }

  else
  {
    v27 = sub_2232AB094();

    if ((v27 & 1) == 0)
    {
LABEL_13:
      v28 = v8;
      v29 = v152;
      v153 = sub_2232AAAC4();
      v30 = sub_2232AAD84();
      if (os_log_type_enabled(v153, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v154 = v32;
        *v31 = 136315394;
        v33 = [v28 requestId];

        if (v33)
        {
          v34 = sub_2232AAC04();
          v36 = v35;

          v37 = sub_2232603D0(v34, v36, &v154);

          *(v31 + 4) = v37;
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_2232603D0(*&v29[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v29[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v154);
          _os_log_impl(&dword_22325E000, v153, v30, "MultiUserTRPCandidate requestId = %s does not match current requestId = %s.", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v32, -1, -1);
          v38 = v31;
LABEL_28:
          MEMORY[0x223DD8AC0](v38, -1, -1);

          return;
        }

        goto LABEL_102;
      }

LABEL_29:
      v63 = v153;

      return;
    }
  }

  v41 = [v8 trpCandidateList];
  if (!v41)
  {
    v59 = v152;
    v153 = sub_2232AAAC4();
    v60 = sub_2232AAD94();

    if (os_log_type_enabled(v153, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v154 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_2232603D0(v25, v24, &v154);
      _os_log_impl(&dword_22325E000, v153, v60, "Received MultiUserTRPCandidate with nil trpCandidateList for request: %s.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x223DD8AC0](v62, -1, -1);
      v38 = v61;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v42 = v41;
  v141 = v25;
  v142 = v24;
  sub_2232606A4(0, &unk_27D0812B0, 0x277D5D2F8);
  v2 = sub_2232AAD04();

  swift_bridgeObjectRetain_n();
  v43 = v8;
  a1 = sub_2232AAAC4();
  v44 = sub_2232AAD84();
  v45 = os_log_type_enabled(a1, v44);
  v46 = &off_2232AC000;
  v47 = v2 >> 62;
  v144 = v2;
  v147 = v7;
  v134 = v43;
  if (v45)
  {
    v48 = v5;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v154 = v50;
    *v49 = 136315394;
    v51 = [v43 multiUserTrpCandidateId];
    v5 = v43;
    if (!v51)
    {
LABEL_103:
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v52 = v51;

    v53 = sub_2232AAC04();
    v55 = v54;

    v56 = sub_2232603D0(v53, v55, &v154);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2048;
    v2 = v144;
    if (v47)
    {
      v57 = sub_2232AAFE4();
    }

    else
    {
      v57 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v48;

    *(v49 + 14) = v57;

    _os_log_impl(&dword_22325E000, a1, v44, "Received MultiUserTRPCandidate with trpCandidateId: %s with %ld entries.", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x223DD8AC0](v50, -1, -1);
    MEMORY[0x223DD8AC0](v49, -1, -1);

    v58 = v152;
    v46 = &off_2232AC000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v58 = v152;
  }

  v160 = sub_22329DF18(MEMORY[0x277D84F90]);
  if (v47)
  {
LABEL_81:
    v65 = sub_2232AAFE4();
    if (v65)
    {
      goto LABEL_35;
    }

LABEL_82:

    MEMORY[0x28223BE20](v112);
    v113 = v134;
    *(&v133 - 4) = v58;
    *(&v133 - 3) = v113;
    *(&v133 - 2) = &v160;
    v114 = v142;
    v115 = v141;
    if (v116 == 1)
    {
      v117 = objc_allocWithZone(sub_2232AA3D4());
      v118 = sub_2232AA3C4();
      if (v118)
      {
        v119 = v118;
        v120 = sub_2232AAAC4();
        v121 = sub_2232AAD84();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = "Posting MultiUserRootTRPCandidateRequestMessage.";
LABEL_90:
          _os_log_impl(&dword_22325E000, v120, v121, v123, v122, 2u);
          MEMORY[0x223DD8AC0](v122, -1, -1);
        }

LABEL_91:

        __swift_project_boxed_opaque_existential_1(&v58[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v58[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
        sub_2232AA624();

        goto LABEL_98;
      }

      v126 = v58;
      v127 = sub_2232AAAC4();
      v128 = sub_2232AAD94();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v154 = v130;
        *v129 = 136315138;
        *(v129 + 4) = sub_2232603D0(v115, v114, &v154);
        v131 = "receivedMultiUserTRPCandidate: Failed to create MultiUserRootTRPCandidateRequestMessage for request: %s.";
LABEL_96:
        _os_log_impl(&dword_22325E000, v127, v128, v131, v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v130);
        MEMORY[0x223DD8AC0](v130, -1, -1);
        MEMORY[0x223DD8AC0](v129, -1, -1);
      }
    }

    else
    {
      v124 = objc_allocWithZone(sub_2232AA304());
      v125 = sub_2232AA284();
      if (v125)
      {
        v119 = v125;
        v120 = sub_2232AAAC4();
        v121 = sub_2232AAD84();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = "Posting MultiUserTRPCandidateRequestMessage.";
          goto LABEL_90;
        }

        goto LABEL_91;
      }

      v132 = v58;
      v127 = sub_2232AAAC4();
      v128 = sub_2232AAD94();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v154 = v130;
        *v129 = 136315138;
        *(v129 + 4) = sub_2232603D0(v115, v114, &v154);
        v131 = "receivedMultiUserTRPCandidate: Failed to create MultiUserTRPCandidateRequestMessage for request: %s.";
        goto LABEL_96;
      }
    }

    goto LABEL_98;
  }

  v65 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_82;
  }

LABEL_35:
  v66 = 0;
  v151 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState;
  v148 = v2 & 0xC000000000000001;
  v153 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState;
  v138 = v2 & 0xFFFFFFFFFFFFFF8;
  v137 = v2 + 32;
  v139 = (v150 + 8);
  *&v64 = 136315138;
  v136 = v64;
  *&v64 = *(v46 + 90);
  v135 = v64;
  v143 = v65;
  v140 = v5;
  while (1)
  {
    if (v148)
    {
      v67 = MEMORY[0x223DD8300](v66, v2);
    }

    else
    {
      if (v66 >= *(v138 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v67 = *(v137 + 8 * v66);
    }

    v68 = v67;
    if (__OFADD__(v66++, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    v70 = [v67 trpCandidateId];
    if (!v70)
    {
      v46 = v58;
      a1 = sub_2232AAAC4();
      v94 = sub_2232AAD94();

      if (os_log_type_enabled(a1, v94))
      {
        v46 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v154 = v95;
        *v46 = v136;
        *(v46 + 4) = sub_2232603D0(v141, v142, &v154);
        _os_log_impl(&dword_22325E000, a1, v94, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s as trpCandidateId was not populated in the TRPCandidate. This can have serious side effects.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        v96 = v95;
        v65 = v143;
        MEMORY[0x223DD8AC0](v96, -1, -1);
        MEMORY[0x223DD8AC0](v46, -1, -1);
      }

      goto LABEL_37;
    }

    v71 = v70;
    v149 = sub_2232AAC04();
    v2 = v72;

    v73 = [v68 userId];
    v150 = v68;
    if (!v73)
    {
      v97 = v58;

      a1 = sub_2232AAAC4();
      v46 = sub_2232AAD94();

      if (os_log_type_enabled(a1, v46))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v154 = v99;
        *v98 = v135;
        *(v98 + 4) = sub_2232603D0(v141, v142, &v154);
        *(v98 + 12) = 2080;
        v100 = sub_2232603D0(v149, v2, &v154);

        *(v98 + 14) = v100;
        _os_log_impl(&dword_22325E000, a1, v46, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s as userId was not populated for the TRPCandidate: %s. This can have serious side effects.", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v99, -1, -1);
        v101 = v98;
        v65 = v143;
        MEMORY[0x223DD8AC0](v101, -1, -1);
      }

      else
      {
      }

      v2 = v144;
      goto LABEL_37;
    }

    v145 = v2;
    v74 = v73;
    v46 = sub_2232AAC04();
    a1 = v75;

    sub_2232AA774();
    v159 = MEMORY[0x277D84F90];
    v76 = [v68 tcuList];
    if (!v76)
    {
      __break(1u);
      goto LABEL_101;
    }

    v77 = v76;

    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v78 = sub_2232AAD04();

    if (v78 >> 62)
    {
      v5 = sub_2232AAFE4();
      if (!v5)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v5 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_72;
      }
    }

    if (v5 < 1)
    {
      goto LABEL_80;
    }

    v79 = 0;
    v80 = MEMORY[0x277D84F90];
    do
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x223DD8300](v79, v78);
      }

      else
      {
        v84 = *(v78 + 8 * v79 + 32);
      }

      v85 = v84;
      v86 = [v84 prevTCUIds];
      if (v86)
      {

        *&v154 = v85;
        sub_223260E10(v153 + v58, &v154 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_223281EF0(0, v80[2] + 1, 1, v80);
        }

        v88 = v80[2];
        v87 = v80[3];
        if (v88 >= v87 >> 1)
        {
          v80 = sub_223281EF0((v87 > 1), v88 + 1, 1, v80);
        }

        v80[2] = v88 + 1;
        v81 = &v80[6 * v88];
        v82 = v154;
        v83 = v156;
        v81[3] = v155;
        v81[4] = v83;
        v81[2] = v82;
        v159 = v80;
      }

      else
      {
        sub_223260E10(&v58[v151], v158);
        __swift_project_boxed_opaque_existential_1(v158, v158[3]);
        sub_2232AA744();
        *&v154 = v85;
        sub_2232650D4(&v157, &v154 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_223281EF0(0, v80[2] + 1, 1, v80);
        }

        v90 = v80[2];
        v89 = v80[3];
        v58 = v152;
        if (v90 >= v89 >> 1)
        {
          v80 = sub_223281EF0((v89 > 1), v90 + 1, 1, v80);
        }

        v80[2] = v90 + 1;
        v91 = &v80[6 * v90];
        v92 = v154;
        v93 = v156;
        v91[3] = v155;
        v91[4] = v93;
        v91[2] = v92;
        v159 = v80;
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
      }

      ++v79;
    }

    while (v5 != v79);
LABEL_72:

    MEMORY[0x28223BE20](v102);
    v5 = v140;
    *(&v133 - 6) = v58;
    *(&v133 - 5) = v5;
    v46 = v145;
    *(&v133 - 4) = v149;
    *(&v133 - 3) = v46;
    *(&v133 - 2) = &v159;
    v103 = objc_allocWithZone(sub_2232A9E44());
    v104 = sub_2232A9DC4();

    if (!v104)
    {
      break;
    }

    v105 = sub_2232AA784();
    a1 = &v160;
    sub_2232A0C00(v104, v105, v106);

    (*v139)(v5, v146);
    v2 = v144;
    v65 = v143;
LABEL_37:
    if (v66 == v65)
    {
      goto LABEL_82;
    }
  }

  v107 = v58;
  v108 = sub_2232AAAC4();
  v109 = sub_2232AAD94();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v154 = v111;
    *v110 = v136;
    *(v110 + 4) = sub_2232603D0(v141, v142, &v154);
    _os_log_impl(&dword_22325E000, v108, v109, "receivedMultiUserTRPCandidate: Failed to create TRPCandidateRequestMessage for request: %s.", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    MEMORY[0x223DD8AC0](v111, -1, -1);
    MEMORY[0x223DD8AC0](v110, -1, -1);
  }

  (*v139)(v5, v146);
LABEL_98:
}