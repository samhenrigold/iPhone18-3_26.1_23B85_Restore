uint64_t sub_255FA6340(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255FB5978();
  v14[1] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_255FB58E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5BA8();
  v11 = (v3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + 16) = a1;
  (*(v8 + 16))(v10, a2, v7);
  sub_255FA79E8();
  v12 = a1;
  sub_255FB5928();
  sub_255FA6628(v15);

  (*(v8 + 8))(a2, v7);
  return v3;
}

uint64_t sub_255FA6628(int a1)
{
  v2 = v1;
  LODWORD(v47) = a1;
  v3 = sub_255FB5978();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - v6;
  v8 = sub_255FB5BC8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  v18 = OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_config;
  swift_beginAccess();
  v19 = *(v9 + 16);
  v45 = v17;
  v19(v17, v2 + v18, v8);
  sub_255FB5B88();
  swift_beginAccess();
  v47 = v9;
  (*(v9 + 24))(v2 + v18, v15, v8);
  swift_endAccess();
  v39[1] = sub_255FA7BFC();
  sub_255FB5D98();
  v46 = v15;
  v19(v12, v15, v8);
  v41 = v7;
  v20 = sub_255FB5968();
  v21 = sub_255FB5D08();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48[0] = v23;
    *v22 = 136446210;
    v24 = sub_255FB5BB8();
    v26 = v25;
    v44 = *(v47 + 8);
    v44(v12, v8);
    v27 = sub_255FA7D18(v24, v26, v48);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_255FA5000, v20, v21, "PlaygroundLoggerProbePoint config updated: (%{public}s)", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x259C556A0](v23, -1, -1);
    MEMORY[0x259C556A0](v22, -1, -1);
  }

  else
  {

    v44 = *(v47 + 8);
    v44(v12, v8);
  }

  v28 = *(v42 + 8);
  v29 = v43;
  v28(v41, v43);
  swift_beginAccess();
  v30 = sub_255FB5B98();
  swift_endAccess();
  v31 = v45;
  if ((v30 & 1) != 0 && (sub_255FB5B98() & 1) == 0)
  {
    sub_255FA72B0();
    if (qword_27F821C50 != -1)
    {
      swift_once();
    }

    swift_weakAssign();
    *MEMORY[0x277D23D50] = sub_255FA7184;
  }

  else
  {
    swift_beginAccess();
    v32 = sub_255FB5B98();
    swift_endAccess();
    if ((v32 & 1) != 0 || (sub_255FB5B98() & 1) == 0)
    {
      v33 = v40;
      sub_255FB5D98();
      v34 = sub_255FB5968();
      v35 = sub_255FB5D08();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_255FA5000, v34, v35, "PlaygroundLoggerProbePoint config was updated but nothing changed", v36, 2u);
        MEMORY[0x259C556A0](v36, -1, -1);
      }

      v28(v33, v29);
    }

    else
    {
      *MEMORY[0x277D23D50] = 0;
      if (qword_27F821C50 != -1)
      {
        swift_once();
      }

      swift_weakAssign();
      sub_255FB5E38();
    }
  }

  v37 = v44;
  v44(v46, v8);
  return v37(v31, v8);
}

uint64_t sub_255FA6BC8(uint64_t a1)
{
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FA831C(a1, v13);
  if (swift_dynamicCast())
  {
    v7 = v12[0];
    v6 = v12[1];
    if (qword_27F821C50 != -1)
    {
      swift_once();
    }

    if (swift_weakLoadStrong())
    {
      sub_255FA6DC4(v7, v6);
      sub_255FA83C4(v7, v6);
    }

    else
    {
      return sub_255FA83C4(v7, v6);
    }
  }

  else
  {
    sub_255FA7BFC();
    sub_255FB5D98();
    v9 = sub_255FB5968();
    v10 = sub_255FB5D18();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_255FA5000, v9, v10, "Error: Received non-Data result from _ler_send_log_data.", v11, 2u);
      MEMORY[0x259C556A0](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_255FA6DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v4 = sub_255FB5C18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255FB5C38();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255FB5978();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FA7BFC();
  sub_255FB5D98();
  v15 = sub_255FB5968();
  v16 = sub_255FB5D08();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v7;
    v19 = v4;
    v20 = v3;
    v21 = v5;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_255FA5000, v15, v16, "PlaygroundLoggerProbePoint did receive logger data.", v17, 2u);
    v23 = v22;
    v5 = v21;
    v3 = v20;
    v4 = v19;
    v7 = v18;
    v10 = v29;
    MEMORY[0x259C556A0](v23, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v24 = swift_allocObject();
  v26 = v30;
  v25 = v31;
  v24[2] = v30;
  v24[3] = v25;
  v24[4] = v3;
  aBlock[4] = sub_255FA8458;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255FA726C;
  aBlock[3] = &block_descriptor;
  v27 = _Block_copy(aBlock);
  sub_255FA847C(v26, v25);

  sub_255FB5C28();
  v34 = MEMORY[0x277D84F90];
  sub_255FA84D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
  sub_255FA8528();
  sub_255FB5DE8();
  MEMORY[0x259C55120](0, v10, v7, v27);
  _Block_release(v27);
  (*(v5 + 8))(v7, v4);
  (*(v32 + 8))(v10, v33);
}

uint64_t sub_255FA7184(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_255FB5DB8();
  swift_unknownObjectRelease();
  sub_255FA6BC8(v2);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_255FA71D0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  if (v3)
  {
    v4 = *(a3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8);
    v5 = result;
    sub_255FA847C(result, a2);
    sub_255FA85D4(v3, v4);
    v3(v5, a2, 0);
    sub_255FA85E4(v3, v4);

    return sub_255FA83C4(v5, a2);
  }

  return result;
}

uint64_t sub_255FA726C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_255FA72B0()
{
  v1 = v0;
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255FB5E28();
  v8 = v7;
  sub_255FA7BFC();
  sub_255FB5D98();
  sub_255FA85D4(v6, v8);
  v9 = sub_255FB5968();
  v10 = sub_255FB5D08();
  sub_255FA85E4(v6, v8);
  if (os_log_type_enabled(v9, v10))
  {
    v23 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v22 = v2;
    if (v6)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v8;
      v14 = sub_255FA86B8;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v24 = v14;
    v25 = v13;
    sub_255FA85D4(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB0, &unk_255FB6D20);
    v15 = sub_255FB5CB8();
    v17 = sub_255FA7D18(v15, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_255FA5000, v9, v10, "setupPlaygroundPrintHook() existing playgroundPrintHook: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C556A0](v12, -1, -1);
    MEMORY[0x259C556A0](v11, -1, -1);

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v18;
  return sub_255FB5E38();
}

void sub_255FA75A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_255FB5978();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3(a1, a2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v12 = sub_255FB5B98();
    swift_endAccess();

    if (v12)
    {
      sub_255FA7BFC();
      sub_255FB5D98();
      v13 = sub_255FB5968();
      v14 = sub_255FB5D08();
      v15 = os_log_type_enabled(v13, v14);
      v16 = MEMORY[0x277D23D48];
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25[0] = a2;
        v19 = v18;
        *v17 = 136315138;
        v25[1] = *v16;
        v26[0] = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB8, qword_255FB64B0);
        v20 = sub_255FB5CB8();
        v22 = sub_255FA7D18(v20, v21, v26);
        v16 = MEMORY[0x277D23D48];

        *(v17 + 4) = v22;
        _os_log_impl(&dword_255FA5000, v13, v14, "setupPlaygroundPrintHook() sending printed string to _ler_print_hook: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x259C556A0](v19, -1, -1);
        MEMORY[0x259C556A0](v17, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
      v23 = *v16;
      if (*v16)
      {
        v24 = sub_255FB5C78();
        v23();
      }
    }
  }
}

uint64_t sub_255FA7830()
{
  v1 = OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_config;
  v2 = sub_255FB5BC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_255FA85E4(*(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler), *(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8));
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PlaygroundLoggerProbePoint(uint64_t a1)
{
  result = qword_27F821C68;
  if (!qword_27F821C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA793C(uint64_t a1)
{
  result = sub_255FB5BC8();
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

unint64_t sub_255FA79E8()
{
  result = qword_27F821C78;
  if (!qword_27F821C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C78);
  }

  return result;
}

unint64_t sub_255FA7A40()
{
  result = qword_27F821C80;
  if (!qword_27F821C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C80);
  }

  return result;
}

uint64_t sub_255FA7AB0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_255FA6340(a1, a2);
  return v4;
}

uint64_t sub_255FA7B00()
{
  *MEMORY[0x277D23D50] = 0;
  if (qword_27F821C50 != -1)
  {
    swift_once();
  }

  return swift_weakAssign();
}

uint64_t sub_255FA7B6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    a1 = swift_allocObject();
    *(a1 + 16) = v4;
    *(a1 + 24) = a2;
    v5 = sub_255FA86E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  v8 = *(v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  v7 = *(v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8);
  *v6 = v5;
  v6[1] = a1;

  return sub_255FA85E4(v8, v7);
}

unint64_t sub_255FA7BFC()
{
  result = qword_27F821C88;
  if (!qword_27F821C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F821C88);
  }

  return result;
}

uint64_t sub_255FA7C48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_255FA7CBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_255FA7D18(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_255FA7D18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255FA7DE4(v11, 0, 0, 1, a1, a2);
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
    sub_255FA831C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255FA7DE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255FA7EF0(a5, a6);
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
    result = sub_255FB5E18();
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

void *sub_255FA7EF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_255FA7F3C(a1, a2);
  sub_255FA806C(&unk_28680CF40);
  return v3;
}

void *sub_255FA7F3C(uint64_t a1, unint64_t a2)
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

  v6 = sub_255FA8158(v5, 0);
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

  result = sub_255FB5E18();
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
        v10 = sub_255FB5CD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255FA8158(v10, 0);
        result = sub_255FB5DF8();
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

uint64_t sub_255FA806C(uint64_t result)
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

  result = sub_255FA81CC(result, v11, 1, v3);
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

void *sub_255FA8158(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821C90, &qword_255FB6498);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255FA81CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821C90, &qword_255FB6498);
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

_BYTE **sub_255FA82C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
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

uint64_t sub_255FA831C(uint64_t a1, uint64_t a2)
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

uint64_t sub_255FA83C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_255FA8418()
{
  sub_255FA83C4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255FA847C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_255FA84D0()
{
  result = qword_27F821C98;
  if (!qword_27F821C98)
  {
    sub_255FB5C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C98);
  }

  return result;
}

unint64_t sub_255FA8528()
{
  result = qword_27F821CA8;
  if (!qword_27F821CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F821CA0, &unk_255FB64A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CA8);
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

uint64_t sub_255FA85D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255FA85E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255FA85F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FA862C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FA8680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255FA86E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_255FA8734(uint64_t a1)
{
  v2 = sub_255FB58E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_255FA9664(v5);
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_255FA883C()
{
  v1 = off_27F821E28;
  v2 = qword_27F821E30;
  off_27F821E28 = 0;
  qword_27F821E30 = 0;
  sub_255FA85E4(v1, v2);

  sub_255FA89D0(v0 + qword_27F821D28);
  v3 = qword_27F821D30;
  v4 = sub_255FB5898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_255FA85E4(*(v0 + qword_27F821F40), *(v0 + qword_27F821F40 + 8));

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for LoggingStreamAgent(uint64_t a1)
{
  result = qword_27F821CC0;
  if (!qword_27F821CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA89D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_255FA8A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = 0x6144726567676F6CLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006174;
  }

  else
  {
    v4 = 0x8000000255FB77B0;
  }

  if (*a2)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v5 = 0x6144726567676F6CLL;
  }

  if (*a2)
  {
    v6 = 0x8000000255FB77B0;
  }

  else
  {
    v6 = 0xEA00000000006174;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255FB5E68();
  }

  return v8 & 1;
}

uint64_t sub_255FA8B40()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FA8BCC(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FA8C44(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FA8CCC@<X0>(char *a2@<X8>)
{
  v3 = sub_255FB5E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255FA8D2C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255FB77B0;
  v3 = 0x6144726567676F6CLL;
  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xEA00000000006174;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_255FA8D74()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x6144726567676F6CLL;
  }
}

uint64_t sub_255FA8DB8(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  MEMORY[0x28223BE20](a1);
  if (v4 == 1)
  {
    sub_255FA8FF0();
  }

  else
  {
    sub_255FA847C(v3, v2);
    sub_255FA8FF0();
  }

  sub_255FB58D8();
  return sub_255FA905C(v3, v2, v4);
}

double sub_255FA8EE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[3] = &type metadata for PlaygroundLoggerSample_Transport.Key;
  v7[4] = sub_255FA8FF0();
  LOBYTE(v7[0]) = 0;
  sub_255FB58B8();
  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = 0;
  }

  return result;
}

unint64_t sub_255FA8FF0()
{
  result = qword_27F821CD8;
  if (!qword_27F821CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CD8);
  }

  return result;
}

uint64_t sub_255FA9044(_BYTE *a1, void *a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a1 = 1;
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_255FA905C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_255FA83C4(a1, a2);
  }
}

uint64_t sub_255FA906C(_BYTE *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = 0;
  *a2 = v3;
  a2[1] = v4;
  return sub_255FA847C(v3, v4);
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerSample_Transport.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaygroundLoggerSample_Transport.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255FA9200(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255FA924C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_255FA92B0()
{
  result = qword_27F821CE0;
  if (!qword_27F821CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CE0);
  }

  return result;
}

uint64_t sub_255FA930C(uint64_t *a1, uint64_t *a2)
{
  v3 = (v2 + qword_27F821D38);
  if (*(v2 + qword_27F821D38 + 8))
  {
    v4 = *v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v4 = sub_255FB5CB8();
    *v3 = v4;
    v3[1] = v5;
  }

  return v4;
}

uint64_t sub_255FA93C8(uint64_t a1)
{
  v2 = sub_255FB58E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_255FA9B9C(v5);
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_255FA94D0()
{
  *MEMORY[0x277D23D50] = 0;
  if (qword_27F821C50 != -1)
  {
    swift_once();
  }

  swift_weakAssign();

  sub_255FA89D0(v0 + qword_27F821D28);
  v1 = qword_27F821D30;
  v2 = sub_255FB5898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_255FA85E4(*(v0 + qword_27F821F40), *(v0 + qword_27F821F40 + 8));

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PlaygroundLoggerStreamAgent(uint64_t a1)
{
  result = qword_27F821CE8;
  if (!qword_27F821CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA9664(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_255FB5978();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_255FB58E8();
  v36 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_255FB5D48();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5D38();
  MEMORY[0x28223BE20](v9);
  v10 = sub_255FB5C38();
  MEMORY[0x28223BE20](v10 - 8);
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  sub_255FB5C28();
  v37 = MEMORY[0x277D84F90];
  sub_255FAA0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  v11 = v32;
  v12 = v30;
  sub_255FB5DE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v29);
  v13 = v31;
  *(v1 + 16) = sub_255FB5D78();
  v14 = qword_27F821D28;
  v15 = sub_255FB5898();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  sub_255FB5888();
  v16 = (v2 + qword_27F821D38);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v2 + qword_27F821F40);
  *v17 = 0;
  v17[1] = 0;
  v18 = *(v2 + 16);
  v19 = v33;
  (*(v36 + 16))(v33, v11, v13);
  type metadata accessor for LoggingProbePoint(0);
  swift_allocObject();
  *(v2 + qword_27F821F48) = sub_255FAE598(v18, v19);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v20 = sub_255FB5968();
  v21 = sub_255FB5CF8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136446210;
    v24 = sub_255FA930C(&qword_27F821D20, &qword_255FB6878);
    v26 = sub_255FA7D18(v24, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_255FA5000, v20, v21, "Initialize agent: %{public}s)", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x259C556A0](v23, -1, -1);
    MEMORY[0x259C556A0](v22, -1, -1);
  }

  (*(v36 + 8))(v11, v13);
  (*(v34 + 8))(v12, v35);
  return v2;
}

uint64_t sub_255FA9B9C(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_255FB5978();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_255FB58E8();
  v36 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_255FB5D48();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5D38();
  MEMORY[0x28223BE20](v9);
  v10 = sub_255FB5C38();
  MEMORY[0x28223BE20](v10 - 8);
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  sub_255FB5C28();
  v37 = MEMORY[0x277D84F90];
  sub_255FAA0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  v11 = v32;
  v12 = v30;
  sub_255FB5DE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v29);
  v13 = v31;
  *(v1 + 16) = sub_255FB5D78();
  v14 = qword_27F821D28;
  v15 = sub_255FB5898();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  sub_255FB5888();
  v16 = (v2 + qword_27F821D38);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v2 + qword_27F821F40);
  *v17 = 0;
  v17[1] = 0;
  v18 = *(v2 + 16);
  v19 = v33;
  (*(v36 + 16))(v33, v11, v13);
  type metadata accessor for PlaygroundLoggerProbePoint(0);
  swift_allocObject();
  *(v2 + qword_27F821F48) = sub_255FA6340(v18, v19);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v20 = sub_255FB5968();
  v21 = sub_255FB5CF8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136446210;
    v24 = sub_255FA930C(&qword_27F821D18, &qword_255FB6868);
    v26 = sub_255FA7D18(v24, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_255FA5000, v20, v21, "Initialize agent: %{public}s)", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x259C556A0](v23, -1, -1);
    MEMORY[0x259C556A0](v22, -1, -1);
  }

  (*(v36 + 8))(v11, v13);
  (*(v34 + 8))(v12, v35);
  return v2;
}

unint64_t sub_255FAA0D4()
{
  result = qword_27F821D00;
  if (!qword_27F821D00)
  {
    sub_255FB5D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821D00);
  }

  return result;
}

unint64_t sub_255FAA12C()
{
  result = qword_27F821D10;
  if (!qword_27F821D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F821D08, &qword_255FB6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821D10);
  }

  return result;
}

uint64_t sub_255FAA190(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_255FAA1DC(uint64_t a1)
{
  sub_255FAACE4(319);
  if (v1 <= 0x3F)
  {
    sub_255FB5898();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id *sub_255FAA2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 11);
  v5 = *(v4 + 56);
  v6 = *(*v2 + 10);
  swift_unknownObjectRetain();
  v5(v6, v4);
  swift_unknownObjectRelease();

  sub_255FACF28(v2 + qword_27F821D28, &qword_27F821CD0, &qword_255FB6870);
  v7 = qword_27F821D30;
  v8 = sub_255FB5898();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  sub_255FA85E4(*(v3 + qword_27F821F40), *(v3 + qword_27F821F40 + 8));
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_255FAA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + qword_27F821D38);
  if (*(v4 + qword_27F821D38 + 8))
  {
    v6 = *v5;
  }

  else
  {
    type metadata accessor for AbstractProbePointStreamAgent(255, *(*v4 + 80), *(*v4 + 88), a4);
    swift_getMetatypeMetadata();
    v6 = sub_255FB5CB8();
    *v5 = v6;
    v5[1] = v7;
  }

  return v6;
}

uint64_t sub_255FAA4C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (v2 + qword_27F821F40);
  v5 = *(v2 + qword_27F821F40);
  v6 = *(v2 + qword_27F821F40 + 8);
  *v4 = a1;
  v4[1] = a2;

  sub_255FA85E4(v5, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v9 = *(v3 + 80);
  v8[2] = v9;
  v10 = *(v3 + 88);
  v8[3] = v10;
  v8[4] = v7;
  v11 = *(v10 + 72);
  swift_unknownObjectRetain();

  v11(sub_255FAD008, v8, v9, v10);
  swift_unknownObjectRelease();
}

uint64_t sub_255FAA600(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 88);
  v5 = *(v4 + 88);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_255FAA6B0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_255FAA6F0(a1);
  return v2;
}

void *sub_255FAA6F0(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = *v1;
  v4 = sub_255FB5978();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255FB58E8();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_255FB5D48();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255FB5D38();
  MEMORY[0x28223BE20](v11);
  v12 = sub_255FB5C38();
  MEMORY[0x28223BE20](v12 - 8);
  v39[2] = sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  v15 = (*(v14 + 40))(v13, v14);
  v39[0] = v16;
  v39[1] = v15;
  sub_255FB5C28();
  v48 = MEMORY[0x277D84F90];
  sub_255FACF88(&qword_27F821D00, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  sub_255FB5DE8();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v40);
  v17 = v42;
  v2[2] = sub_255FB5D78();
  v18 = qword_27F821D28;
  v19 = sub_255FB5898();
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  sub_255FB5888();
  v20 = (v2 + qword_27F821D38);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v2 + qword_27F821F40);
  *v21 = 0;
  v21[1] = 0;
  v22 = v2[2];
  v23 = v41;
  (*(v46 + 16))(v41, v17, v47);
  v24 = *(v14 + 48);
  v25 = v22;
  v26 = v13;
  v27 = v43;
  *(v2 + qword_27F821F48) = v24(v25, v23, v26, v14);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v28 = sub_255FB5968();
  v29 = sub_255FB5CF8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v48 = v31;
    *v30 = 136446210;
    v35 = sub_255FAA404(v31, v32, v33, v34);
    v37 = sub_255FA7D18(v35, v36, &v48);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_255FA5000, v28, v29, "Initialize agent: %{public}s)", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C556A0](v31, -1, -1);
    MEMORY[0x259C556A0](v30, -1, -1);
  }

  (*(v46 + 8))(v17, v47);
  (*(v44 + 8))(v27, v45);
  return v2;
}

uint64_t sub_255FAAC74(uint64_t a1, uint64_t a2)
{
  sub_255FAA2CC(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void sub_255FAACE4(uint64_t a1)
{
  if (!qword_27F821DC0)
  {
    sub_255FB5898();
    v1 = sub_255FB5DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F821DC0);
    }
  }
}

uint64_t sub_255FAAD3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_255FB5978();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255FB5C48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    *v10 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
    v14 = v13;
    LOBYTE(v13) = sub_255FB5C58();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      v15 = *(v12 + qword_27F821F40);
      if (v15)
      {
        v16 = *(v12 + qword_27F821F40 + 8);

        v15(a1);
        sub_255FA85E4(v15, v16);
      }

      else
      {
        sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
        sub_255FB5D88();
        v17 = sub_255FB5968();
        v18 = sub_255FB5D18();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_255FA5000, v17, v18, "Error: Unable to send probe sample without stream.", v19, 2u);
          MEMORY[0x259C556A0](v19, -1, -1);
        }

        else
        {
        }

        return (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_255FAB008(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = *v1;
  v4 = sub_255FB5898();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v7;
  MEMORY[0x28223BE20](v6);
  v53 = &v41 - v8;
  v9 = sub_255FB5978();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v13 = sub_255FB5968();
  v14 = sub_255FB5D28();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v3;
    v17 = v16;
    v54 = v16;
    *v15 = 136315138;
    v21 = sub_255FAA404(v16, v18, v19, v20);
    v23 = sub_255FA7D18(v21, v22, &v54);

    *(v15 + 4) = v23;
    v2 = v1;
    _os_log_impl(&dword_255FA5000, v13, v14, "%s handleMessageStream", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v24 = v17;
    v3 = v50;
    MEMORY[0x259C556A0](v24, -1, -1);
    MEMORY[0x259C556A0](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v26 = *(v3 + 80);
  v25 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v25;
  v28[4] = v27;
  v49 = v26;
  swift_getAssociatedConformanceWitness();
  v45 = v2;
  v43 = v25;
  swift_getAssociatedConformanceWitness();

  v50 = sub_255FB5828();

  v29 = v53;
  sub_255FB5888();
  v30 = swift_allocObject();
  swift_weakInit();
  v32 = v47;
  v31 = v48;
  v44 = *(v48 + 16);
  v33 = v46;
  v44(v46, v29, v47);
  v34 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v49;
  *(v35 + 3) = v25;
  *(v35 + 4) = v30;
  v42 = *(v31 + 32);
  v42(&v35[v34], v33, v32);
  sub_255FB5958();

  v36 = swift_allocObject();
  swift_weakInit();
  v44(v33, v53, v32);
  v37 = swift_allocObject();
  v38 = v42;
  v39 = v43;
  *(v37 + 2) = v49;
  *(v37 + 3) = v39;
  *(v37 + 4) = v36;
  v38(&v37[v34], v33, v32);
  sub_255FB5878();
  sub_255FACF88(&qword_27F821DC8, MEMORY[0x277D40750], MEMORY[0x277D40748]);

  sub_255FB58F8();

  (*(v31 + 8))(v53, v32);
}

uint64_t sub_255FAB5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v6 = sub_255FB5898();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = sub_255FB5978();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DE8, &unk_255FB6980);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v65 = v21;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v64 = *(v10 + 16);
    v64(v14, a1, AssociatedTypeWitness);
    swift_retain_n();
    v26 = sub_255FB5968();
    v27 = sub_255FB5D08();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v63 = a1;
      v61 = v27;
      v29 = v28;
      v30 = swift_slowAlloc();
      v62 = v30;
      v72 = v30;
      *v29 = 136446722;
      v59 = v26;
      v34 = sub_255FAA404(v30, v31, v32, v33);
      v36 = sub_255FA7D18(v34, v35, &v72);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2082;
      v60 = v17;
      v58 = v10;
      v37 = v67;
      v38 = v8;
      v39 = v8;
      v40 = v68;
      (*(v67 + 16))(v39, v25 + qword_27F821D30, v68);

      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
      v41 = sub_255FB5E58();
      v43 = v42;

      (*(v37 + 8))(v38, v40);
      v44 = sub_255FA7D18(v41, v43, &v72);

      *(v29 + 14) = v44;
      *(v29 + 22) = 2082;
      v64(v66, v14, AssociatedTypeWitness);
      v45 = sub_255FB5CB8();
      v47 = v46;
      (*(v58 + 8))(v14, AssociatedTypeWitness);
      v48 = sub_255FA7D18(v45, v47, &v72);

      *(v29 + 24) = v48;
      v49 = v59;
      _os_log_impl(&dword_255FA5000, v59, v61, "%{public}s-%{public}s received message: %{public}s.", v29, 0x20u);
      v50 = v62;
      swift_arrayDestroy();
      MEMORY[0x259C556A0](v50, -1, -1);
      a1 = v63;
      MEMORY[0x259C556A0](v29, -1, -1);

      (*(v69 + 8))(v60, v70);
    }

    else
    {

      (*(v10 + 8))(v14, AssociatedTypeWitness);
      (*(v69 + 8))(v17, v70);
    }

    sub_255FAA600(a1, v51);
    v55 = v65;
    sub_255FACEC0(v71, v65, &qword_27F821DE8, &unk_255FB6980);
    v56 = sub_255FB5868();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {

      return sub_255FACF28(v55, &qword_27F821DE8, &unk_255FB6980);
    }

    else
    {
      sub_255FB5858();

      return (*(v57 + 8))(v55, v56);
    }
  }

  else
  {
    sub_255FACEC0(v71, v23, &qword_27F821DE8, &unk_255FB6980);
    v52 = sub_255FB5868();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v23, 1, v52) == 1)
    {
      return sub_255FACF28(v23, &qword_27F821DE8, &unk_255FB6980);
    }

    else
    {
      sub_255FB5858();
      return (*(v53 + 8))(v23, v52);
    }
  }
}

uint64_t sub_255FABCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48[-v9];
  swift_getAssociatedTypeWitness();
  v62 = a4;
  swift_getAssociatedConformanceWitness();
  v60 = sub_255FB5848();
  v11 = *(v60 - 8);
  v58 = *(v11 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v48[-v12];
  v13 = sub_255FB5898();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_255FB5978();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v54 = a5;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v22 = *(v14 + 16);
    v55 = a3;
    v53 = v22;
    v22(v16, a3, v13);

    v23 = sub_255FB5968();
    v24 = sub_255FB5D28();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v52 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v50 = v27;
      v63[0] = v27;
      *v26 = 136446466;
      v49 = v24;
      v31 = sub_255FAA404(v27, v28, v29, v30);
      v33 = sub_255FA7D18(v31, v32, v63);
      v51 = v14 + 16;
      v34 = v14;
      v35 = v33;

      *(v26 + 4) = v35;
      *(v26 + 12) = 2082;
      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
      v36 = sub_255FB5E58();
      v38 = v37;
      (*(v34 + 8))(v16, v13);
      v39 = sub_255FA7D18(v36, v38, v63);
      v14 = v34;

      *(v26 + 14) = v39;
      _os_log_impl(&dword_255FA5000, v23, v49, "%{public}s-%{public}s messageStream.open success", v26, 0x16u);
      v40 = v50;
      swift_arrayDestroy();
      MEMORY[0x259C556A0](v40, -1, -1);
      v41 = v26;
      v10 = v52;
      MEMORY[0x259C556A0](v41, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    (*(v56 + 8))(v19, v57);
    v43 = v59;
    v42 = v60;
    (*(v11 + 16))(v59, v61, v60);
    v44 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v45 = swift_allocObject();
    v46 = v54;
    *(v45 + 16) = v62;
    *(v45 + 24) = v46;
    (*(v11 + 32))(v45 + v44, v43, v42);
    sub_255FAA4C4(sub_255FACD78, v45);

    v53(v10, v55, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v47 = qword_27F821D28;
    swift_beginAccess();
    sub_255FACE50(v10, v21 + v47);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_255FAC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_255FB5848();
  return sub_255FB5838();
}

uint64_t sub_255FAC344(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DD0, &unk_255FB6970);
  MEMORY[0x28223BE20](v2);
  v4 = &v55[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v55[-v9];
  v11 = sub_255FB5898();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v55[-v15];
  v17 = sub_255FB5978();
  v65 = *(v17 - 8);
  v66 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v63 = v2;
    v64 = v10;
    v60 = v8;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v62 = *(v12 + 16);
    v62(v16, v67, v11);

    v22 = v12;
    v23 = sub_255FB5968();
    v24 = sub_255FB5D28();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = v4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v68[0] = v27;
      v59 = v21;
      v28 = v27;
      *v26 = 136446466;
      v29 = v22;
      v57 = v22;
      v33 = sub_255FAA404(v27, v30, v31, v32);
      v35 = sub_255FA7D18(v33, v34, v68);
      v56 = v24;
      v36 = v35;

      *(v26 + 4) = v36;
      *(v26 + 12) = 2082;
      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
      v37 = sub_255FB5E58();
      v39 = v38;
      v40 = *(v29 + 8);
      v40(v16, v11);
      v41 = sub_255FA7D18(v37, v39, v68);

      *(v26 + 14) = v41;
      _os_log_impl(&dword_255FA5000, v23, v56, "%{public}s-%{public}s messageStream invalidating", v26, 0x16u);
      swift_arrayDestroy();
      v42 = v28;
      v21 = v59;
      MEMORY[0x259C556A0](v42, -1, -1);
      v43 = v26;
      v4 = v58;
      MEMORY[0x259C556A0](v43, -1, -1);

      (*(v65 + 8))(v19, v66);
      v44 = v57;
    }

    else
    {

      v40 = *(v22 + 8);
      v40(v16, v11);
      (*(v65 + 8))(v19, v66);
      v44 = v22;
    }

    v45 = qword_27F821D28;
    swift_beginAccess();
    v46 = v64;
    v62(v64, v67, v11);
    (*(v44 + 56))(v46, 0, 1, v11);
    v47 = *(v63 + 48);
    sub_255FACEC0(v21 + v45, v4, &qword_27F821CD0, &qword_255FB6870);
    sub_255FACEC0(v46, &v4[v47], &qword_27F821CD0, &qword_255FB6870);
    v48 = *(v44 + 48);
    if (v48(v4, 1, v11) == 1)
    {
      sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
      if (v48(&v4[v47], 1, v11) == 1)
      {
        sub_255FACF28(v4, &qword_27F821CD0, &qword_255FB6870);
LABEL_12:
        v52 = (v21 + qword_27F821F40);
        v53 = *(v21 + qword_27F821F40);
        v54 = *(v21 + qword_27F821F40 + 8);
        *v52 = 0;
        v52[1] = 0;
        sub_255FA85E4(v53, v54);
      }
    }

    else
    {
      v49 = v60;
      sub_255FACEC0(v4, v60, &qword_27F821CD0, &qword_255FB6870);
      if (v48(&v4[v47], 1, v11) != 1)
      {
        v50 = v61;
        (*(v44 + 32))(v61, &v4[v47], v11);
        sub_255FACF88(&qword_27F821DD8, MEMORY[0x277D403A8], MEMORY[0x277D403B8]);
        v51 = sub_255FB5C68();
        v40(v50, v11);
        sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
        v40(v49, v11);
        sub_255FACF28(v4, &qword_27F821CD0, &qword_255FB6870);
        if (v51)
        {
          goto LABEL_12;
        }
      }

      sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
      v40(v49, v11);
    }

    sub_255FACF28(v4, &qword_27F821DD0, &unk_255FB6970);
  }

  return result;
}

uint64_t sub_255FACA84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FACAC8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_255FB5898() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_255FABCF0(a1, v6, v7, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_255FB5898();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255FACC18()
{
  v1 = *(sub_255FB5898() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_255FAC344(v2, v3);
}

uint64_t sub_255FACC98()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = sub_255FB5848();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255FACD78(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(sub_255FB5848() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_255FAC2A8(a1, v6, v3, v4);
}

uint64_t sub_255FACE50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FACEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255FACF28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255FACF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255FACFD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_25LiveExecutionResultsProbe28SourceLocationInfo_TransportOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255FAD090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_255FAD0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255FAD13C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x68746150656C6966;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6D756C6F63;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x8000000255FB7880;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x626D754E656E696CLL;
    }

    else
    {
      v4 = 0x68746150656C6966;
    }

    if (v3)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E6D756C6F63;
  v8 = 0x8000000255FB7880;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x626D754E656E696CLL;
    v6 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255FB5E68();
  }

  return v11 & 1;
}

uint64_t sub_255FAD280(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xEE006E6F69746163;
    if (a1 == 2)
    {
      v6 = 0x6372756F53676F6CLL;
    }

    else
    {
      v6 = 0x6F4C656372756F73;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE900000000000070;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D617473656D6974;
    }

    else
    {
      v6 = 0x676E69727473;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6372756F53676F6CLL;
  if (a2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C656372756F73;
    v10 = 0xEE006E6F69746163;
  }

  if (a2)
  {
    v2 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_255FB5E68();
  }

  return v13 & 1;
}

uint64_t sub_255FAD408()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](qword_255FB6C60[v1]);
  return sub_255FB5EA8();
}

uint64_t sub_255FAD490(uint64_t a1)
{
  v2 = *v1;
  sub_255FB5E88();
  MEMORY[0x259C55250](qword_255FB6C60[v2]);
  return sub_255FB5EA8();
}

uint64_t sub_255FAD4DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255FADDE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255FAD520(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FAE534();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FAD5F4()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FAD6C4(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FAD780(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

unint64_t sub_255FAD84C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255FADED8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255FAD87C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0x6372756F53676F6CLL;
  v5 = 0xEE006E6F69746163;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x6F4C656372756F73;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255FAD908()
{
  v1 = 0x676E69727473;
  v2 = 0x6372756F53676F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6F4C656372756F73;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FAD990(uint64_t *a1)
{
  sub_255FAE204();
  sub_255FAE258();
  sub_255FAE2AC();
  return sub_255FB5908();
}

__n128 sub_255FADAEC@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_255FADF24(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 sub_255FADB38@<Q0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_255FB59C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255FB59A8();
  v26 = v9;
  v27 = v8;
  sub_255FB59E8();
  v11 = v10;
  sub_255FB59D8();
  v25 = sub_255FB59B8();
  (*(v5 + 8))(v7, v4);
  sub_255FB5988();
  v12 = sub_255FB5A58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_255FADE08(v3);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
  }

  else
  {
    sub_255FB3D24(v42);
    v14 = v42[0];
    v15 = v42[1];
    v16 = v42[2];
    v17 = v42[3];
    v18 = v42[4];
    v19 = v43;
    (*(v13 + 8))(v3, v12);
  }

  *&v30 = v27;
  *(&v30 + 1) = v26;
  v20 = 0x300020100uLL >> (8 * v25);
  if (v25 >= 5)
  {
    LOBYTE(v20) = 0;
  }

  v31.n128_u64[0] = v11;
  v31.n128_u8[8] = v20;
  *&v32 = v14;
  *(&v32 + 1) = v15;
  *&v33[0] = v16;
  *(&v33[0] + 1) = v17;
  *&v33[1] = v18;
  BYTE8(v33[1]) = v19;
  v34[0] = v27;
  v34[1] = v26;
  v34[2] = v11;
  v35 = v20;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  sub_255FADE70(&v30, &v29);
  sub_255FADEA8(v34);
  v21 = v33[0];
  v22 = v28;
  *(v28 + 32) = v32;
  *(v22 + 48) = v21;
  *(v22 + 57) = *(v33 + 9);
  result = v31;
  *v22 = v30;
  *(v22 + 16) = result;
  return result;
}

uint64_t sub_255FADDE4(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t sub_255FADE08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255FADED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255FB5E48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FADF24@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = &type metadata for PrintSample_Transport.Key;
  v5 = sub_255FAE204();
  *&v22 = v5;
  LOBYTE(v20[0]) = 0;
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    v8 = v33;
    v7 = v34;
    v21 = &type metadata for PrintSample_Transport.Key;
    *&v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v20);
    v9 = v32;
    v21 = &type metadata for PrintSample_Transport.Key;
    *&v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_255FAE258();
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v20);
    v11 = v31;
    v26[3] = &type metadata for PrintSample_Transport.Key;
    v26[4] = v5;
    LOBYTE(v26[0]) = 3;
    sub_255FAE2AC();
    sub_255FB58B8();
    v12 = sub_255FB58E8();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_0(v26);
    *&v16 = v8;
    *(&v16 + 1) = v7;
    *&v17 = v9;
    BYTE8(v17) = v11;
    v18 = v27;
    *v19 = v28;
    *&v19[16] = v29;
    v19[24] = v30;
    v20[0] = v8;
    v20[1] = v7;
    v20[2] = v9;
    LOBYTE(v21) = v11;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    sub_255FADE70(&v16, &v15);
    result = sub_255FADEA8(v20);
    v13 = *v19;
    a2[2] = v18;
    a2[3] = v13;
    *(a2 + 57) = *&v19[9];
    v14 = v17;
    *a2 = v16;
    a2[1] = v14;
  }

  return result;
}

unint64_t sub_255FAE204()
{
  result = qword_27F821DF8;
  if (!qword_27F821DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821DF8);
  }

  return result;
}

unint64_t sub_255FAE258()
{
  result = qword_27F821E00;
  if (!qword_27F821E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E00);
  }

  return result;
}

unint64_t sub_255FAE2AC()
{
  result = qword_27F821E08;
  if (!qword_27F821E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceLocation_Transport.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SourceLocation_Transport.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255FAE47C()
{
  result = qword_27F821E10;
  if (!qword_27F821E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E10);
  }

  return result;
}

unint64_t sub_255FAE4D4()
{
  result = qword_27F821E18;
  if (!qword_27F821E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E18);
  }

  return result;
}

unint64_t sub_255FAE534()
{
  result = qword_27F821E20;
  if (!qword_27F821E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E20);
  }

  return result;
}

uint64_t sub_255FAE598(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255FB58E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5AC8();
  v10 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdOutFileHandle;
  *(v3 + v10) = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
  v11 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdErrFileHandle;
  *(v3 + v11) = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
  v12 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD;
  v13 = sub_255FB5C08();
  v14 = fileno(v13);
  *(v3 + v12) = dup(v14);
  v15 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD;
  v16 = sub_255FB5BF8();
  v17 = fileno(v16);
  *(v3 + v15) = dup(v17);
  v18 = (v3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + 16) = a1;
  (*(v7 + 16))(v9, a2, v6);
  sub_255FB1CE8();
  v19 = a1;
  sub_255FB5928();
  sub_255FAE7A4(v21[2], v22);

  (*(v7 + 8))(a2, v6);
  return v3;
}

uint64_t sub_255FAE7A4(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v85 = a2;
  v71 = sub_255FB59C8();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255FB5978();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_255FB5A78();
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_255FB5B28();
  v78 = *(v74 - 8);
  v7 = MEMORY[0x28223BE20](v74);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v69 - v10;
  MEMORY[0x28223BE20](v9);
  v11 = sub_255FB5B78();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v21 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_config;
  swift_beginAccess();
  v77 = *(v12 + 16);
  v81 = v20;
  v77(v20, &v2[v21], v11);
  sub_255FB5B08();
  (*(v79 + 13))(v80, **(&unk_2798181F0 + v85), v83);
  sub_255FB5B48();
  swift_beginAccess();
  v83 = v12;
  v22 = *(v12 + 24);
  v80 = v2;
  v85 = v21;
  v22(&v2[v21], v18, v11);
  swift_endAccess();
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();
  v79 = v18;
  v84 = v11;
  v77(v15, v18, v11);
  v23 = sub_255FB5968();
  v24 = sub_255FB5D08();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v86[0] = v26;
    *v25 = 136446210;
    v27 = sub_255FB5B38();
    v29 = v28;
    v77 = *(v83 + 8);
    (v77)(v15, v84);
    v30 = sub_255FA7D18(v27, v29, v86);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_255FA5000, v23, v24, "LoggingProbePoint config updated: (%{public}s)", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C556A0](v26, -1, -1);
    MEMORY[0x259C556A0](v25, -1, -1);
  }

  else
  {

    v77 = *(v83 + 8);
    (v77)(v15, v84);
  }

  (*(v75 + 8))(v82, v76);
  v31 = v80;
  swift_beginAccess();
  v32 = v72;
  sub_255FB5B58();
  swift_endAccess();
  v33 = v73;
  sub_255FB5B18();
  sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38], MEMORY[0x277D23D40]);
  v34 = v74;
  v35 = sub_255FB5DC8();
  v36 = *(v78 + 8);
  v36(v33, v34);
  v36(v32, v34);
  v37 = v81;
  if (v35)
  {
    sub_255FB5B58();
    sub_255FB5B18();
    v38 = sub_255FB5DC8();
    v36(v33, v34);
    v36(v32, v34);
    if ((v38 & 1) == 0 && !off_27F821E28)
    {

      sub_255FAF380(sub_255FB1EC4, v31);
    }
  }

  swift_beginAccess();
  sub_255FB5B58();
  swift_endAccess();
  sub_255FB5AE8();
  v39 = sub_255FB5DC8();
  v36(v33, v34);
  v36(v32, v34);
  if ((v39 & 1) != 0 && (sub_255FB5B58(), sub_255FB5AE8(), v40 = sub_255FB5DC8(), v36(v33, v34), v36(v32, v34), (v40 & 1) == 0))
  {
    v46 = sub_255FB5C08();
    v47 = fileno(v46);
    *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD) = dup(v47);
    v48 = *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdOutFileHandle);
    v49 = v69;
    (*(v70 + 104))(v69, *MEMORY[0x277D23CF0], v71);
    v50 = v48;
    sub_255FB0E0C(1, v50, v49);

    v51 = v49;
    v37 = v81;
    (*(v70 + 8))(v51, v71);
  }

  else
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5AE8();
    v41 = sub_255FB5DC8();
    v36(v33, v34);
    v36(v32, v34);
    if ((v41 & 1) == 0)
    {
      sub_255FB5B58();
      sub_255FB5AE8();
      v42 = sub_255FB5DC8();
      v36(v33, v34);
      v36(v32, v34);
      if (v42)
      {
        v43 = *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD);
        v44 = sub_255FB5C08();
        v45 = fileno(v44);
        dup2(v43, v45);
      }
    }
  }

  swift_beginAccess();
  sub_255FB5B58();
  swift_endAccess();
  sub_255FB5AF8();
  v52 = sub_255FB5DC8();
  v36(v33, v34);
  v36(v32, v34);
  if ((v52 & 1) != 0 && (sub_255FB5B58(), sub_255FB5AF8(), v53 = sub_255FB5DC8(), v36(v33, v34), v36(v32, v34), (v53 & 1) == 0))
  {
    v59 = sub_255FB5BF8();
    v60 = fileno(v59);
    *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD) = dup(v60);
    v61 = *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdErrFileHandle);
    v62 = v70;
    v63 = v69;
    v64 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D23CF8], v71);
    v65 = v61;
    sub_255FB0E0C(2, v65, v63);

    (*(v62 + 8))(v63, v64);
  }

  else
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5AF8();
    v54 = sub_255FB5DC8();
    v36(v33, v34);
    v36(v32, v34);
    if ((v54 & 1) == 0)
    {
      sub_255FB5B58();
      sub_255FB5AF8();
      v55 = sub_255FB5DC8();
      v36(v33, v34);
      v36(v32, v34);
      if (v55)
      {
        v56 = *(v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD);
        v57 = sub_255FB5BF8();
        v58 = fileno(v57);
        dup2(v56, v58);
      }
    }
  }

  v66 = v84;
  v67 = v77;
  (v77)(v79, v84);
  return v67(v37, v66);
}

uint64_t sub_255FAF380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_255FB5978();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5E28();
  v11 = v10;
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();
  sub_255FA85D4(v9, v11);
  v12 = sub_255FB5968();
  v13 = sub_255FB5D08();
  sub_255FA85E4(v9, v11);
  if (os_log_type_enabled(v12, v13))
  {
    v31 = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    v29 = v5;
    v30 = a1;
    if (v9)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v9;
      *(v16 + 24) = v11;
      v17 = sub_255FB1FE0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v33 = v17;
    v34 = v16;
    sub_255FA85D4(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB0, &unk_255FB6D20);
    v18 = sub_255FB5CB8();
    v20 = sub_255FA7D18(v18, v19, &v35);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_255FA5000, v12, v13, "setupPrintHook() existing playgroundPrintHook: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C556A0](v15, -1, -1);
    MEMORY[0x259C556A0](v14, -1, -1);

    (*(v6 + 8))(v8, v29);
    a1 = v30;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = v32;
  v23 = off_27F821E28;
  v24 = qword_27F821E30;
  off_27F821E28 = sub_255FB1F44;
  qword_27F821E30 = v22;

  sub_255FA85E4(v23, v24);

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v9;
  v26[3] = v11;
  v26[4] = v25;
  return sub_255FB5E38();
}

uint64_t sub_255FAF6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void), uint64_t a7)
{
  v21 = a7;
  v22 = a6;
  v11 = sub_255FB5B28();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5B18();
    sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38], MEMORY[0x277D23D40]);
    v19 = sub_255FB5DC8();

    v20 = *(v12 + 8);
    v20(v15, v11);
    result = (v20)(v17, v11);
    if (v19)
    {
      return v22(a1, a2, a3, a4 & 1);
    }
  }

  return result;
}

uint64_t sub_255FAF8D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_255FB5A78();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255FB5B28();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if (a3)
  {
    a3(a1, a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = a1;
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5B18();
    sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38], MEMORY[0x277D23D40]);
    v19 = sub_255FB5DC8();
    v20 = *(v12 + 8);
    v20(v15, v11);
    v20(v17, v11);
    if (v19)
    {
      swift_beginAccess();
      sub_255FB5B68();
      swift_endAccess();
      v21 = sub_255FB5A68();
      (*(v28 + 8))(v10, v29);
      v22 = 0;
      if (v21)
      {
        sub_255FB2288();
        v22 = v23;
      }

      v24 = off_27F821E28;
      if (off_27F821E28)
      {
        v25 = qword_27F821E30;

        v24(v27, a2, v22, (v21 & 1) == 0);
        sub_255FA85E4(v24, v25);
      }
    }
  }

  return result;
}

uint64_t sub_255FAFBD8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v38 = a3;
  v39 = a4;
  v43 = a1;
  v5 = sub_255FB5C18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5C38();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255FB5978();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_255FB5818();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5808();
  sub_255FB57F8();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();

  v21 = sub_255FB5968();
  v22 = sub_255FB5D08();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v11;
    v25 = v8;
    v26 = v6;
    v27 = v5;
    v28 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_255FA7D18(v43, a2, aBlock);
    _os_log_impl(&dword_255FA5000, v21, v22, "Print hook received: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v5 = v27;
    v6 = v26;
    v8 = v25;
    MEMORY[0x259C556A0](v29, -1, -1);
    MEMORY[0x259C556A0](v23, -1, -1);

    (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  *(v31 + 32) = v39 & 1;
  *(v31 + 40) = v43;
  *(v31 + 48) = a2;
  *(v31 + 56) = v20;
  aBlock[4] = sub_255FB2398;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255FA726C;
  aBlock[3] = &block_descriptor_0;
  v33 = _Block_copy(aBlock);

  v34 = v40;
  sub_255FB5C28();
  v44 = MEMORY[0x277D84F90];
  sub_255FB23C4(&qword_27F821C98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
  sub_255FA8528();
  sub_255FB5DE8();
  MEMORY[0x259C55120](0, v34, v8, v33);
  _Block_release(v33);
  (*(v6 + 8))(v8, v5);
  (*(v41 + 8))(v34, v42);
}

uint64_t sub_255FB0134(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v26[0] = a2;
  v26[1] = a4;
  v7 = sub_255FB59C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_255FB59F8();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_255FB0468(v26[0], a3 & 1, v19);
    (*(v8 + 104))(v10, *MEMORY[0x277D23D00], v7);
    sub_255FB240C(v19, v17);

    sub_255FB5998();
    v22 = v21 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler;
    swift_beginAccess();
    v23 = *v22;
    if (*v22)
    {
      v24 = *(v22 + 8);
      swift_endAccess();

      v25 = sub_255FADB38(v28);
      v23(v28, v25);
      sub_255FADEA8(v28);
      sub_255FA85E4(v23, v24);

      (*(v11 + 8))(v13, v27);
      return sub_255FACF28(v19, &qword_27F821DF0, &qword_255FB6D30);
    }

    else
    {
      (*(v11 + 8))(v13, v27);
      sub_255FACF28(v19, &qword_27F821DF0, &qword_255FB6D30);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_255FB0468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v5 = sub_255FB5978();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v43[3] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43[1] = v43 - v8;
  v9 = sub_255FB5A98();
  v43[2] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = sub_255FB5A48();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821E88, &qword_255FB6D38);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v15);
  v49 = v43 - v18;
  v19 = sub_255FB5A78();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = sub_255FB5A58();
    v24 = *(*(v23 - 8) + 56);

    return v24(a3, 1, 1, v23);
  }

  else
  {
    v43[0] = a3;
    swift_beginAccess();
    sub_255FB5B68();
    swift_endAccess();
    v26 = (*(v20 + 88))(v22, v19);
    if (v26 == *MEMORY[0x277D23D28])
    {
      v27 = sub_255FB5A58();
      return (*(*(v27 - 8) + 56))(v43[0], 1, 1, v27);
    }

    else
    {
      if (v26 == *MEMORY[0x277D23D18])
      {
        v28 = v10;
        v29 = *(v10 + 56);
        v31 = v48;
        v30 = v49;
        v29(v49, 1, 1, v48);
        sub_255FB5AB8();
        sub_255FB5AA8();
        sub_255FB5A88();
        sub_255FACF28(v30, &qword_27F821E88, &qword_255FB6D38);

        v29(v17, 0, 1, v31);
        sub_255FB247C(v17, v30);
        v37 = v47;
        sub_255FB247C(v30, v47);
        v38 = (*(v28 + 48))(v37, 1, v31);
        v32 = v43[0];
        if (v38 == 1)
        {
          sub_255FACF28(v37, &qword_27F821E88, &qword_255FB6D38);
          v39 = sub_255FB5A58();
          return (*(*(v39 - 8) + 56))(v32, 1, 1, v39);
        }

        v40 = *(v28 + 32);
        v41 = v44;
        v40(v44, v37, v31);
        v40(v32, v41, v31);
        v42 = *MEMORY[0x277D23D08];
        v34 = sub_255FB5A58();
        v35 = *(v34 - 8);
        (*(v35 + 104))(v32, v42, v34);
      }

      else
      {
        if (v26 != *MEMORY[0x277D23D20])
        {
          v36 = sub_255FB5A58();
          (*(*(v36 - 8) + 56))(v43[0], 1, 1, v36);
          return (*(v20 + 8))(v22, v19);
        }

        v32 = v43[0];
        *v43[0] = v50;
        v33 = *MEMORY[0x277D23D10];
        v34 = sub_255FB5A58();
        v35 = *(v34 - 8);
        (*(v35 + 104))(v32, v33, v34);
      }

      return (*(v35 + 56))(v32, 0, 1, v34);
    }
  }
}

char *sub_255FB0E0C(int a1, void *a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_255FB59C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = [a2 fileDescriptor];
  grantpt(v8);
  unlockpt(v8);
  result = ptsname(v8);
  if (result)
  {
    v10 = sub_255FB5BD8();
    sub_255FB1FE8(v8);
    v11 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:1];
    dup2([v11 fileDescriptor], a1);
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v5);
    v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v6 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    aBlock[4] = sub_255FB25B0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_255FB1734;
    aBlock[3] = &block_descriptor_25;
    v15 = _Block_copy(aBlock);

    sub_255FA85D4(sub_255FB25B0, v14);

    [a2 setReadabilityHandler_];

    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255FB108C(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v52 = a3;
  v3 = sub_255FB5C18();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_255FB5C38();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255FB59C8();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255FB5CA8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_255FB5B28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255FB5C48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  *v16 = sub_255FB5D58();
  (*(v14 + 104))(v16, *MEMORY[0x277D851F0], v13);
  v17 = sub_255FB5C58();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    v20 = v52;
    v21 = sub_255FB5AD8();
    (*(v10 + 8))(v12, v9);
    if (v21)
    {
      v22 = v51;
      v23 = [v51 availableData];
      v24 = sub_255FB57E8();
      v26 = v25;

      v27 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v27 != 2 || *(v24 + 16) == *(v24 + 24))
        {
          goto LABEL_13;
        }
      }

      else if (v27)
      {
        if (v24 == v24 >> 32)
        {
LABEL_13:
          [v22 setReadabilityHandler_];
          _Block_release(0);
          goto LABEL_14;
        }
      }

      else if ((v26 & 0xFF000000000000) == 0)
      {
        goto LABEL_13;
      }

      sub_255FB5C98();
      v28 = sub_255FB5C88();
      if (!v29)
      {
LABEL_14:
        sub_255FA83C4(v24, v26);
      }

      v30 = v28;
      v31 = v29;
      v51 = *(v19 + 16);
      v32 = v42;
      v33 = v43;
      v34 = v44;
      (*(v43 + 16))(v42, v20, v44);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v52 = v24;
      v36 = (v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = v30;
      *(v37 + 24) = v31;
      (*(v33 + 32))(v37 + v35, v32, v34);
      *(v37 + v36) = v19;
      aBlock[4] = sub_255FB26FC;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_255FA726C;
      aBlock[3] = &block_descriptor_31;
      v38 = _Block_copy(aBlock);

      v39 = v45;
      sub_255FB5C28();
      v53 = MEMORY[0x277D84F90];
      sub_255FB23C4(&qword_27F821C98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
      sub_255FA8528();
      v40 = v47;
      v41 = v50;
      sub_255FB5DE8();
      MEMORY[0x259C55120](0, v39, v40, v38);
      _Block_release(v38);
      sub_255FA83C4(v52, v26);
      (*(v49 + 8))(v40, v41);
      (*(v46 + 8))(v39, v48);
    }
  }

  return result;
}

void sub_255FB1734(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_255FB179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v27 = a4;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_255FB59C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255FB5818();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_255FB59F8();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_255FB5808();
  sub_255FB57F8();
  (*(v12 + 8))(v14, v11);
  (*(v8 + 16))(v10, v24, v7);
  v18 = sub_255FB5A58();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_255FB5998();
  v19 = v27 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler;
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v19 + 8);
    swift_endAccess();

    v22 = sub_255FADB38(v28);
    v20(v28, v22);
    sub_255FADEA8(v28);
    sub_255FA85E4(v20, v21);
    return (*(v15 + 8))(v17, v25);
  }

  else
  {
    (*(v15 + 8))(v17, v25);
    return swift_endAccess();
  }
}

uint64_t sub_255FB1AFC()
{
  v1 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_config;
  v2 = sub_255FB5B78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_255FA85E4(*(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler), *(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler + 8));
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for LoggingProbePoint(uint64_t a1)
{
  result = qword_27F821E58;
  if (!qword_27F821E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FB1C28(uint64_t a1)
{
  result = sub_255FB5B78();
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

unint64_t sub_255FB1CE8()
{
  result = qword_27F821E68;
  if (!qword_27F821E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E68);
  }

  return result;
}

unint64_t sub_255FB1D40()
{
  result = qword_27F821E70;
  if (!qword_27F821E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E70);
  }

  return result;
}

uint64_t sub_255FB1DB0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_255FAE598(a1, a2);
  return v4;
}

uint64_t sub_255FB1E00()
{
  v0 = off_27F821E28;
  v1 = qword_27F821E30;
  off_27F821E28 = 0;
  qword_27F821E30 = 0;
  return sub_255FA85E4(v0, v1);
}

uint64_t sub_255FB1E14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_255FB278C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  return sub_255FA85E4(v8, v9);
}

uint64_t sub_255FB1ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FB1F04()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FB1F54()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FB1FA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255FB1FE8(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  memset(&v14, 0, sizeof(v14));
  if (!tcgetattr(a1, &v14))
  {
    *&v14.c_iflag = vandq_s8(*&v14.c_iflag, xmmword_255FB6C90);
    result = tcsetattr(a1, 0, &v14);
    if (!result)
    {
      return result;
    }

    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D98();
    v9 = sub_255FB5968();
    v13 = sub_255FB5D18();
    if (!os_log_type_enabled(v9, v13))
    {
      v6 = v8;
      goto LABEL_9;
    }

    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = MEMORY[0x259C54FA0]();
    _os_log_impl(&dword_255FA5000, v9, v13, "Error: Could not set tty settings: %{public}d", v11, 8u);
    v6 = v8;
    goto LABEL_7;
  }

  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();
  v9 = sub_255FB5968();
  v10 = sub_255FB5D18();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = MEMORY[0x259C54FA0]();
    _os_log_impl(&dword_255FA5000, v9, v10, "Error: Could not get tty settings: %{public}d", v11, 8u);
LABEL_7:
    MEMORY[0x259C556A0](v11, -1, -1);
  }

LABEL_9:

  return (*(v3 + 8))(v6, v2);
}

void sub_255FB2288()
{
  v0 = [objc_opt_self() callStackReturnAddresses];
  sub_255FAA190(0, &qword_27F821E80, 0x277CCABB0);
  v1 = sub_255FB5CE8();

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x259C551C0](3, v1);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
LABEL_8:
      __break(1u);
      return;
    }

    v2 = *(v1 + 56);
  }

  v3 = v2;

  v4 = [v3 unsignedLongLongValue];

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_255FB2358()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255FB23C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255FB240C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FB247C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821E88, &qword_255FB6D38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FB24EC()
{
  v1 = sub_255FB59C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255FB25B0(void *a1)
{
  v3 = *(sub_255FB59C8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_255FB108C(a1, v4, v5);
}

uint64_t sub_255FB2624()
{
  v1 = sub_255FB59C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_255FB26FC()
{
  v1 = *(sub_255FB59C8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_255FB179C(v3, v4, v0 + v2, v5);
}

uint64_t sub_255FB278C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v6[2] = a1[2];
  v7[0] = v3;
  *(v7 + 9) = *(a1 + 57);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t sub_255FB27F4()
{
  sub_255FB5E88();
  sub_255FB5CC8();
  return sub_255FB5EA8();
}

uint64_t sub_255FB2868(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();
  return sub_255FB5EA8();
}

uint64_t sub_255FB28BC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255FB5E48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255FB29BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for PlaygroundLoggerProbePointConfiguration_Transport.Key;
  v7[4] = sub_255FB2ABC();
  sub_255FB58B8();
  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_255FB2ABC()
{
  result = qword_27F821E98;
  if (!qword_27F821E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport.Key(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport.Key(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_255FB2CB8()
{
  result = qword_27F821EA0;
  if (!qword_27F821EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EA0);
  }

  return result;
}

uint64_t sub_255FB2DAC()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](v1);
  return sub_255FB5EA8();
}

uint64_t sub_255FB2E20(uint64_t a1)
{
  v2 = *v1;
  sub_255FB5E88();
  MEMORY[0x259C55250](v2);
  return sub_255FB5EA8();
}

unint64_t *sub_255FB2E64@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_255FB2E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB3CCC();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FB2F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB3BC8();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

BOOL sub_255FB3068(void *a1, uint64_t *a2)
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

void *sub_255FB3098@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_255FB30C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_255FB31B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_255FB31E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_255FB3610(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_255FB3220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "streamLoggedResultsEnabled";
  }

  else
  {
    v4 = "activeLogSources";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "activeLogSources";
  }

  else
  {
    v7 = "streamLoggedResultsEnabled";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255FB5E68();
  }

  return v9 & 1;
}

uint64_t sub_255FB32CC()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB334C(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FB33B8(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB3434@<X0>(char *a2@<X8>)
{
  v3 = sub_255FB5E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255FB3494(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "activeLogSources";
  }

  else
  {
    v3 = "streamLoggedResultsEnabled";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_255FB34D4()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_255FB3510(uint64_t a1, char a2)
{
  sub_255FB3798();
  sub_255FB37EC();
  sub_255FB3840();
  return sub_255FB5918();
}

uint64_t sub_255FB35E0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_255FB3648(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_255FB3610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_255FB3648(uint64_t a1)
{
  v8 = &type metadata for LoggingProbePointConfiguration_Transport.Key;
  v4 = sub_255FB3798();
  v9 = v4;
  LOBYTE(v7[0]) = 0;
  sub_255FB37EC();
  sub_255FB58B8();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v2 = v10;
    v8 = &type metadata for LoggingProbePointConfiguration_Transport.Key;
    v9 = v4;
    LOBYTE(v7[0]) = 1;
    sub_255FB3840();
    sub_255FB58B8();
  }

  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v2;
}

unint64_t sub_255FB3798()
{
  result = qword_27F821EA8;
  if (!qword_27F821EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EA8);
  }

  return result;
}

unint64_t sub_255FB37EC()
{
  result = qword_27F821EB0;
  if (!qword_27F821EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EB0);
  }

  return result;
}

unint64_t sub_255FB3840()
{
  result = qword_27F821EB8;
  if (!qword_27F821EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceLocationCollectionMode_Transport(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SourceLocationCollectionMode_Transport(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoggingProbePointConfiguration_Transport(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LoggingProbePointConfiguration_Transport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_255FB3AC0()
{
  result = qword_27F821EC0;
  if (!qword_27F821EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EC0);
  }

  return result;
}

unint64_t sub_255FB3B18()
{
  result = qword_27F821EC8;
  if (!qword_27F821EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EC8);
  }

  return result;
}

unint64_t sub_255FB3B70()
{
  result = qword_27F821ED0;
  if (!qword_27F821ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821ED0);
  }

  return result;
}

unint64_t sub_255FB3BC8()
{
  result = qword_27F821ED8;
  if (!qword_27F821ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821ED8);
  }

  return result;
}

unint64_t sub_255FB3C20()
{
  result = qword_27F821EE0;
  if (!qword_27F821EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EE0);
  }

  return result;
}

unint64_t sub_255FB3C78()
{
  result = qword_27F821EE8;
  if (!qword_27F821EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EE8);
  }

  return result;
}

unint64_t sub_255FB3CCC()
{
  result = qword_27F821EF0;
  if (!qword_27F821EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EF0);
  }

  return result;
}

uint64_t sub_255FB3D24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_255FB5A48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255FB5A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  v13 = v12;
  v14 = *MEMORY[0x277D23D08];
  if (v12 == *MEMORY[0x277D23D08])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v20 = sub_255FB5A38();
    v26 = v21;
    v17 = sub_255FB5A08();
    v22 = v14;
    v23 = v4;
    v18 = sub_255FB5A28();
    v19 = sub_255FB5A18();
    v24 = v23;
    v14 = v22;
    result = (*(v5 + 8))(v7, v24);
    v16 = v26;
  }

  else if (v12 == *MEMORY[0x277D23D10])
  {
    result = (*(v9 + 96))(v11, v8);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v11;
  }

  else
  {
    result = (*(v9 + 8))(v11, v8);
    v20 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a1 = v20;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v13 != v14;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255FB3FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255FB4020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_255FB4098()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB4160(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FB4214(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

unint64_t sub_255FB42D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255FB4F34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255FB4308(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x68746150656C6966;
  v4 = 0xE600000000000000;
  v5 = 0x6E6D756C6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000255FB7880;
  }

  if (*v1)
  {
    v3 = 0x626D754E656E696CLL;
    v2 = 0xEA00000000007265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_255FB438C()
{
  v1 = 0x68746150656C6966;
  v2 = 0x6E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x626D754E656E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_255FB453C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_255FB4F80(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_255FB4584(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6F4C656372756F73;
  }

  if (v2)
  {
    v4 = 0xEE006E6F69746163;
  }

  else
  {
    v4 = 0x8000000255FB78A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F4C656372756F73;
  }

  if (*a2)
  {
    v6 = 0x8000000255FB78A0;
  }

  else
  {
    v6 = 0xEE006E6F69746163;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255FB5E68();
  }

  return v8 & 1;
}

uint64_t sub_255FB463C()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB46D0(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FB4750(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB47E0@<X0>(char *a2@<X8>)
{
  v3 = sub_255FB5E48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255FB4840(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255FB78A0;
  v3 = 0x6F4C656372756F73;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEE006E6F69746163;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_255FB4890(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB56D0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FB4954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F4C656372756F73;
  v4 = 0xEE006E6F69746163;
  v5 = 0x8000000255FB78A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000255FB78A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0x6F4C656372756F73;
  if (*a2 == 1)
  {
    v5 = 0xEE006E6F69746163;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255FB5E68();
  }

  return v11 & 1;
}

uint64_t sub_255FB4A6C()
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB4B28(uint64_t a1)
{
  sub_255FB5CC8();
}

uint64_t sub_255FB4BD0(uint64_t a1)
{
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

unint64_t sub_255FB4C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255FB51B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255FB4CB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEE006E6F69746163;
  v5 = 0x6F4C656372756F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000255FB78A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_255FB4D30()
{
  v1 = 0x6F4C656372756F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_255FB4DA4()
{
  v1 = sub_255FB542C();
  sub_255FB5480();
  sub_255FB58D8();
  if (v0[5])
  {
    v6 = *v0;
    v7 = 0;
    *(&v11 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
    v12 = v1;
    LOBYTE(v10[0]) = 2;
    sub_255FB58A8();
    v2 = v10;
  }

  else
  {
    v3 = v0[4];
    v4 = v0[1];
    v10[0] = *v0;
    v10[1] = v4;
    v11 = *(v0 + 1);
    v12 = v3;
    v8 = &type metadata for SourceLocationInfo_Transport.Key;
    v9 = v1;
    LOBYTE(v6) = 1;
    sub_255FB54D4();
    sub_255FB58A8();
    v2 = &v6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

double sub_255FB4EF0@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  sub_255FB51FC(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_255FB4F34(uint64_t a1, uint64_t a2)
{
  v2 = sub_255FB5E48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FB4F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for SourceLocation_Transport.Key;
  v5 = sub_255FB5724();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v14);
    v9 = v19;
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v14);
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 3;
    sub_255FB58B8();
    v11 = sub_255FB58E8();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_0(v14);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v9;
    a2[3] = v13;
    a2[4] = v12;
  }

  return result;
}

unint64_t sub_255FB51B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_255FB5E48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FB51FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v17 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
  v5 = sub_255FB542C();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_255FB5480();
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    v8 = v15[0];
    if (v15[0])
    {
      *(&v17 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 2;
      sub_255FB58B8();
      v9 = sub_255FB58E8();
      (*(*(v9 - 8) + 8))(a1, v9);
      result = __swift_destroy_boxed_opaque_existential_0(v16);
      v10 = 0;
      v11 = 0;
      v12 = v15[0];
      v13 = 0uLL;
    }

    else
    {
      v15[3] = &type metadata for SourceLocationInfo_Transport.Key;
      v15[4] = v5;
      LOBYTE(v15[0]) = 1;
      sub_255FB54D4();
      sub_255FB58B8();
      v14 = sub_255FB58E8();
      (*(*(v14 - 8) + 8))(a1, v14);
      result = __swift_destroy_boxed_opaque_existential_0(v15);
      v12 = v16[0];
      v10 = v16[1];
      v13 = v17;
      v11 = v18;
    }

    *a2 = v12;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v8;
  }

  return result;
}

unint64_t sub_255FB542C()
{
  result = qword_27F821EF8;
  if (!qword_27F821EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EF8);
  }

  return result;
}

unint64_t sub_255FB5480()
{
  result = qword_27F821F00;
  if (!qword_27F821F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F00);
  }

  return result;
}

unint64_t sub_255FB54D4()
{
  result = qword_27F821F08;
  if (!qword_27F821F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F08);
  }

  return result;
}

_BYTE *sub_255FB5528(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 40) & 1;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255FB5574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255FB55BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255FB5618()
{
  result = qword_27F821F10;
  if (!qword_27F821F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F10);
  }

  return result;
}

unint64_t sub_255FB5670()
{
  result = qword_27F821F18;
  if (!qword_27F821F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F18);
  }

  return result;
}

unint64_t sub_255FB56D0()
{
  result = qword_27F821F20;
  if (!qword_27F821F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F20);
  }

  return result;
}

unint64_t sub_255FB5724()
{
  result = qword_27F821F28;
  if (!qword_27F821F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F28);
  }

  return result;
}

unint64_t sub_255FB5794()
{
  result = qword_27F821F30;
  if (!qword_27F821F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F30);
  }

  return result;
}