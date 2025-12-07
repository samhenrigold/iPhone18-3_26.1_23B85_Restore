uint64_t sub_22634414C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635034C();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_22635037C();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_22635033C();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_22635039C();
  v80 = *(v87 - 8);
  v8 = MEMORY[0x28223BE20](v87);
  v74 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v79 = &v67[-v10];
  v11 = sub_22634EEFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v67[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v67[-v18];
  v20 = sub_22635004C();
  v88 = *(v20 - 8);
  v89 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v67[-v24];
  v26 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
  swift_beginAccess();
  v78 = v2;
  v27 = *(v2 + v26);
  if (*(v27 + 16))
  {

    v28 = sub_2263394D8(a1);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);
      swift_unknownObjectRetain();

      sub_22634FFEC();
      v31 = *(v12 + 16);
      v72 = a1;
      v71 = v12 + 16;
      v70 = v31;
      v31(v19, a1, v11);
      swift_unknownObjectRetain();
      v32 = sub_22635003C();
      v33 = sub_22635071C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v34 = 136315394;
        swift_getObjectType();
        v68 = v33;
        v90 = v30;
        swift_unknownObjectRetain();
        v35 = sub_2263504CC();
        v37 = sub_226345004(v35, v36, aBlock);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v38 = sub_226350C1C();
        v40 = v39;
        (*(v12 + 8))(v19, v11);
        v41 = sub_226345004(v38, v40, aBlock);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_2262B6000, v32, v68, "Begin extending OS transaction %s for 8 seconds... (uuid = %s)", v34, 0x16u);
        v42 = v69;
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v42, -1, -1);
        MEMORY[0x22AA7D570](v34, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v19, v11);
      }

      (*(v88 + 8))(v25, v89);
      aBlock[0] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DA0, &qword_226355A38);
      swift_allocObject();
      swift_unknownObjectRetain();
      v52 = sub_22634FD2C();
      v89 = *(v78 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue);
      v53 = v74;
      sub_22635038C();
      v54 = v75;
      *v75 = 8;
      v55 = *MEMORY[0x277D85188];
      v56 = v76;
      v57 = *(v76 + 104);
      v78 = v30;
      v58 = v77;
      v57(v54, v55, v77);
      v59 = v79;
      MEMORY[0x22AA7C470](v53, v54);
      (*(v56 + 8))(v54, v58);
      v88 = *(v80 + 8);
      (v88)(v53, v87);
      v60 = v73;
      v70(v73, v72, v11);
      v61 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v52;
      (*(v12 + 32))(v62 + v61, v60, v11);
      aBlock[4] = sub_226345744;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22634107C;
      aBlock[3] = &block_descriptor_2;
      v63 = _Block_copy(aBlock);

      v64 = v81;
      sub_22635035C();
      v90 = MEMORY[0x277D84F90];
      sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
      sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
      v65 = v83;
      v66 = v86;
      sub_2263508CC();
      MEMORY[0x22AA7C830](v59, v64, v65, v63);
      _Block_release(v63);
      swift_unknownObjectRelease();

      (*(v85 + 8))(v65, v66);
      (*(v82 + 8))(v64, v84);
      (v88)(v59, v87);
    }
  }

  sub_22634FFEC();
  (*(v12 + 16))(v15, a1, v11);
  v43 = sub_22635003C();
  v44 = sub_22635073C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v47 = sub_226350C1C();
    v49 = v48;
    (*(v12 + 8))(v15, v11);
    v50 = sub_226345004(v47, v49, aBlock);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_2262B6000, v43, v44, "Unable to extend OS transaction because it no longer exists. (uuid = %s)", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x22AA7D570](v46, -1, -1);
    MEMORY[0x22AA7D570](v45, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  return (*(v88 + 8))(v23, v89);
}

uint64_t sub_226344C40(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22635004C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_22634FFEC();
  (*(v6 + 16))(v8, a2, v5);
  swift_unknownObjectRetain();
  v13 = sub_22635003C();
  v14 = sub_22635071C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v2;
    v16 = v15;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v16 = 136315394;
    swift_getObjectType();
    v31 = v12;
    swift_unknownObjectRetain();
    v17 = sub_2263504CC();
    v19 = sub_226345004(v17, v18, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_226350C1C();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_226345004(v20, v22, &v32);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2262B6000, v13, v14, "End extending OS transaction %s after 8 seconds. (uuid = %s)", v16, 0x16u);
    v24 = v27;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v24, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_226344FA8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_226345004(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_226345004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2263450D0(v11, 0, 0, 1, a1, a2);
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
    sub_2262FB40C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2263450D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2263451DC(a5, a6);
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
    result = sub_2263509AC();
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

void *sub_2263451DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_226345228(a1, a2);
  sub_226345358(&unk_283977F10);
  return v3;
}

void *sub_226345228(uint64_t a1, unint64_t a2)
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

  v6 = sub_226345444(v5, 0);
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

  result = sub_2263509AC();
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
        v10 = sub_22635050C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226345444(v10, 0);
        result = sub_22635095C();
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

uint64_t sub_226345358(uint64_t result)
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

  result = sub_2263454B8(result, v11, 1, v3);
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

void *sub_226345444(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E28, &qword_226355B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2263454B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E28, &qword_226355B88);
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

_BYTE **sub_2263455AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2263455BC(uint64_t (*a1)(void))
{
  a1();

  return sub_226350D6C();
}

uint64_t sub_226345610(uint64_t a1)
{
  result = sub_22634FCDC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226345818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2263458B0;

  return sub_22633DAD4(a1, v1);
}

uint64_t sub_2263458B0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2263459BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);

  return sub_22633DF3C(a1, a2);
}

uint64_t sub_226345A48(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2262D641C;

  return sub_2263420A4(a1, a2, v2);
}

void sub_226345AF4()
{
  v1 = *(sub_22634EEFC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_226340F64(v3, v0 + v2, v4);
}

uint64_t sub_226345B84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263410C0(a1, a2);
}

uint64_t sub_226345C30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_22634116C(a1, a2);
}

uint64_t sub_226345CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341218(a1, a2);
}

uint64_t sub_226345D88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263412C4(a1, a2);
}

uint64_t sub_226345E34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341370(a1, a2);
}

uint64_t sub_226345EE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_22634141C(a1, a2);
}

uint64_t sub_226345F8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263414C8(a1, a2);
}

uint64_t sub_226346038(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341574(a1, a2);
}

uint64_t sub_2263460E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341620(a1, a2);
}

uint64_t sub_226346190(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263416CC(a1, a2);
}

uint64_t sub_22634623C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341778(a1, a2);
}

uint64_t sub_2263462E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226346330(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_22634EEFC() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2262FF0E0;

  return sub_226341824(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_226346590(uint64_t a1)
{
  v3 = *(sub_22634EEFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_226341F5C(a1, v5, v1 + v4, v6);
}

void sub_226346694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2263503AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_2263503CC();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    swift_beginAccess();
    v15 = *&v2[v14];
    if (*(v15 + 16))
    {

      v16 = sub_2263394D8(a1);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        sub_22634FFEC();

        v19 = v2;
        v20 = sub_22635003C();
        v21 = sub_22635071C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v35 = v32;
          *v22 = 136315906;
          swift_getObjectType();
          v23 = sub_226350D6C();
          v31 = v21;
          v25 = sub_226345004(v23, v24, &v35);

          *(v22 + 4) = v25;
          *(v22 + 12) = 2080;
          *(v22 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226357CD0, &v35);
          *(v22 + 22) = 2080;
          *(v22 + 24) = sub_226345004(0x206E6F6973736553, 0xEF6D726177657250, &v35);
          *(v22 + 32) = 2080;
          v33 = 0x286E6F6973736553;
          v34 = 0xE800000000000000;
          sub_22634EEFC();
          sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v26 = v5;

          v27 = sub_226350C1C();
          MEMORY[0x22AA7C5B0](v27);

          MEMORY[0x22AA7C5B0](41, 0xE100000000000000);

          v28 = sub_226345004(v33, v34, &v35);

          *(v22 + 34) = v28;
          _os_log_impl(&dword_2262B6000, v20, v31, "%s.%s %s %s", v22, 0x2Au);
          v29 = v32;
          swift_arrayDestroy();
          MEMORY[0x22AA7D570](v29, -1, -1);
          MEMORY[0x22AA7D570](v22, -1, -1);

          (*(v26 + 8))(v7, v4);
        }

        else
        {

          (*(v5 + 8))(v7, v4);
        }

        sub_22633EF1C(v18);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226346B34()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionExecutor_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for LinkActionExecutor(uint64_t a1)
{
  result = qword_28137F6F8;
  if (!qword_28137F6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226346C18(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_226346CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0);
  v5[14] = swift_task_alloc();
  v6 = sub_22634F17C();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_22634FDDC();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_22634EEFC();
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for VisualAction.Kind(0);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226346F30, v4, 0);
}

uint64_t sub_226346F30()
{
  v1 = v0[27];
  v2 = v0[8];
  v3 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v2 + *(v3 + 20), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[27];
  if (EnumCaseMultiPayload != 1)
  {
    v8 = v0[7];
    sub_226325C38(v5);
    goto LABEL_5;
  }

  v6 = v5[1];
  v0[28] = v5[2];
  v0[29] = v5[3];
  v0[30] = v5[4];
  v0[31] = v5[5];
  v7 = v5[6];
  v0[32] = v7;
  if (v6)
  {
    v8 = v0[7];

LABEL_5:
    v9 = MEMORY[0x277D78AE8];
LABEL_6:
    v10 = *v9;
    v11 = sub_22634FB9C();
    (*(*(v11 - 8) + 104))(v8, v10, v11);
    v12 = *MEMORY[0x277D78A40];
    v13 = sub_22634FAEC();
    (*(*(v13 - 8) + 104))(v8, v12, v13);

    v14 = v0[1];

    return v14();
  }

  if ((sub_22634FCAC() & 1) == 0)
  {
    v8 = v0[7];

    v9 = MEMORY[0x277D78AD8];
    goto LABEL_6;
  }

  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[10];
  v20 = *(v0[11] + 120);
  v0[33] = v20;
  v21 = sub_22634F9BC();
  (*(*(v21 - 8) + 16))(v16, v19, v21);
  (*(v17 + 104))(v16, *MEMORY[0x277D78CD0], v18);

  return MEMORY[0x2822009F8](sub_226347218, v20, 0);
}

uint64_t sub_226347218()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  sub_2262E0528(v1, v0[25]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2263472BC, v4, 0);
}

uint64_t sub_2263472BC(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 104);
  v11 = *(v1 + 248);
  v12 = *(v1 + 224);
  sub_22634F4EC();
  sub_22634F50C();
  v7 = *(v5 + 16);
  *(v1 + 272) = v7;
  *(v1 + 280) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6, v3, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_22634F16C();
  *(v1 + 16) = v12;
  *(v1 + 32) = v2;
  *(v1 + 40) = v11;
  v8 = swift_task_alloc();
  *(v1 + 288) = v8;
  *v8 = v1;
  v8[1] = sub_226347430;
  v9 = *(v1 + 136);

  return sub_226312BC0(v9, v1 + 16);
}

uint64_t sub_226347430(void *a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  v5 = *(v4 + 88);
  if (v1)
  {
    v6 = sub_2263477DC;
  }

  else
  {

    v6 = sub_226347568;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226347568()
{
  v1 = v0[34];
  v18 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v17 = v2;
  v4 = v0[22];
  v5 = v0[21];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v9 = *MEMORY[0x277D78A48];
  v10 = sub_22634FAEC();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v1(v3, v2, v5);
  v12 = sub_226347C3C();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v12;
  *(v14 + 4) = v7;
  (*(v4 + 32))(&v14[v13], v3, v5);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v6, &unk_226355C70, v14);

  (*(v4 + 8))(v17, v5);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2263477DC()
{
  v1 = v0[34];
  v19 = v0[32];
  v20 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v18 = v2;
  v4 = v0[22];
  v5 = v0[21];
  v7 = v0[11];
  v6 = v0[12];
  v21 = v0[7];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v8 = sub_22635064C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v1(v3, v2, v5);
  v9 = sub_226347C3C();
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v7;
  *(v11 + 3) = v9;
  *(v11 + 4) = v7;
  (*(v4 + 32))(&v11[v10], v3, v5);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v6, &unk_226355C68, v11);

  (*(v4 + 8))(v18, v5);
  v12 = *MEMORY[0x277D78AE0];
  v13 = sub_22634FB9C();
  (*(*(v13 - 8) + 104))(v21, v12, v13);
  v14 = *MEMORY[0x277D78A40];
  v15 = sub_22634FAEC();
  (*(*(v15 - 8) + 104))(v21, v14, v15);

  v16 = v0[1];

  return v16();
}

BOOL sub_226347AA4(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v5 + 20), v4);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  sub_226325C38(v4);
  return v6;
}

uint64_t sub_226347B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_226346CC4(a1, a2, a3, a4);
}

unint64_t sub_226347C14(uint64_t a1)
{
  result = sub_226347C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226347C3C()
{
  result = qword_28137F708;
  if (!qword_28137F708)
  {
    type metadata accessor for LinkActionExecutor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137F708);
  }

  return result;
}

uint64_t sub_226347C94(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_226347D8C(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_226347E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2262D641C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_226347FF8()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18OpenEntityExecutor_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for OpenEntityExecutor(uint64_t a1)
{
  result = qword_28137E7C8;
  if (!qword_28137E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263480D4(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_226348180(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for VisualAction(0);
  v3[14] = swift_task_alloc();
  v4 = sub_22635004C();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = sub_22634FBEC();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = type metadata accessor for VisualAction.Kind(0);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226348390, v2, 0);
}

uint64_t sub_226348390()
{
  v69 = v0;
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 104) + 20);
  sub_2262D76C0(v1 + v2, *(v0 + 272));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 272);
  if (EnumCaseMultiPayload == 3 && (v5 = *(v0 + 264), v6 = *(v0 + 184), v7 = *(v0 + 192), v8 = *(v7 + 8), *(v0 + 280) = v8, *(v0 + 288) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v8(v4, v6), sub_2262D76C0(v1 + v2, v5), v9 = swift_getEnumCaseMultiPayload(), v4 = *(v0 + 264), v9 == 3))
  {
    v10 = *(v0 + 192);
    (*(v10 + 32))(*(v0 + 248), *(v0 + 264), *(v0 + 184));
    *(v0 + 296) = CFAbsoluteTimeGetCurrent();
    v11 = sub_22634FC8C();
    v12 = (v10 + 16);
    v13 = *(v0 + 248);
    v14 = *(v0 + 184);
    if (v11)
    {
      v15 = *(v0 + 240);
      sub_22635001C();
      v16 = *v12;
      *(v0 + 304) = *v12;
      *(v0 + 312) = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v16(v15, v13, v14);
      v17 = sub_22635003C();
      v18 = sub_22635071C();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 240);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      if (v19)
      {
        v66 = *(v0 + 120);
        v25 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v68 = v64;
        *v25 = 136315138;
        sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
        v60 = v18;
        v26 = sub_226350C1C();
        v62 = v21;
        v28 = v27;
        v8(v20, v22);
        v29 = sub_226345004(v26, v28, &v68);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2262B6000, v17, v60, "Executing open action for target %s using ToolKit...", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x22AA7D570](v64, -1, -1);
        MEMORY[0x22AA7D570](v25, -1, -1);

        v30 = *(v23 + 8);
        v30(v62, v66);
      }

      else
      {

        v8(v20, v22);
        v30 = *(v23 + 8);
        v30(v21, v24);
      }

      *(v0 + 320) = v30;
      v54 = *(v0 + 88);
      v55 = *(*(v0 + 96) + 112);
      *(v0 + 328) = v55;
      *(v0 + 336) = *v54;
      *(v0 + 344) = v54[1];
      *(v0 + 352) = sub_22634FBAC();
      *(v0 + 360) = v56;
      *(v0 + 368) = sub_22634FBDC();
      *(v0 + 376) = v57;

      return MEMORY[0x2822009F8](sub_226348AA8, v55, 0);
    }

    else
    {
      v38 = *(v0 + 224);
      sub_22635001C();
      v39 = *v12;
      *(v0 + 408) = *v12;
      *(v0 + 416) = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v38, v13, v14);
      v40 = sub_22635003C();
      v41 = sub_22635071C();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 224);
      v44 = *(v0 + 184);
      v45 = *(v0 + 160);
      v47 = *(v0 + 120);
      v46 = *(v0 + 128);
      if (v42)
      {
        v67 = *(v0 + 120);
        v48 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68 = v65;
        *v48 = 136315138;
        sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
        v61 = v41;
        v49 = sub_226350C1C();
        v63 = v45;
        v51 = v50;
        v8(v43, v44);
        v52 = sub_226345004(v49, v51, &v68);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_2262B6000, v40, v61, "Executing open action for target %s using LinkServices...", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x22AA7D570](v65, -1, -1);
        MEMORY[0x22AA7D570](v48, -1, -1);

        v53 = *(v46 + 8);
        v53(v63, v67);
      }

      else
      {

        v8(v43, v44);
        v53 = *(v46 + 8);
        v53(v45, v47);
      }

      *(v0 + 424) = v53;
      v58 = swift_task_alloc();
      *(v0 + 432) = v58;
      *v58 = v0;
      v58[1] = sub_2263494F8;
      v59 = *(v0 + 248);

      return sub_22630F928(v59);
    }
  }

  else
  {
    v31 = *(v0 + 80);
    sub_2262FE61C(v4, type metadata accessor for VisualAction.Kind);
    v32 = *MEMORY[0x277D78AE8];
    v33 = sub_22634FB9C();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    v34 = *MEMORY[0x277D78A40];
    v35 = sub_22634FAEC();
    (*(*(v35 - 8) + 104))(v31, v34, v35);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_226348AA8()
{
  sub_2262F929C(*(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 112));
  *(v0 + 384) = 0;

  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_226348BCC;
  v2 = *(v0 + 112);

  return sub_2262F6C00(v2);
}

uint64_t sub_226348BCC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_2263499B0;
  }

  else
  {
    v4 = sub_226349130;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226348CF8(uint64_t a1)
{
  v42 = v1;
  v2 = v1[48];
  v3 = v1[38];
  v4 = v1[31];
  v5 = v1[26];
  v6 = v1[23];
  sub_22635001C();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22635003C();
  v9 = sub_22635073C();

  if (os_log_type_enabled(v8, v9))
  {
    v38 = v1[40];
    v39 = v1[35];
    v10 = v1[26];
    v11 = v1[23];
    v36 = v1[18];
    v37 = v1[31];
    v35 = v1[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136315394;
    swift_getErrorValue();
    v14 = sub_226350C9C();
    v16 = sub_226345004(v14, v15, &v41);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v17 = sub_226350C1C();
    v19 = v18;
    v39(v10, v11);
    v20 = sub_226345004(v17, v19, &v41);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2262B6000, v8, v9, "Error %s occurred while executing open action for target %s using ToolKit.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v13, -1, -1);
    MEMORY[0x22AA7D570](v12, -1, -1);

    v38(v36, v35);
    v39(v37, v11);
  }

  else
  {
    v40 = v1[40];
    v21 = v8;
    v22 = v1[35];
    v23 = v1[31];
    v24 = v1[26];
    v25 = v1[23];
    v26 = v1[18];
    v27 = v1[15];

    v22(v24, v25);
    v40(v26, v27);
    v22(v23, v25);
  }

  v28 = v1[10];
  v29 = *MEMORY[0x277D78AB8];
  v30 = sub_22634FB9C();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  v31 = *MEMORY[0x277D78A40];
  v32 = sub_22634FAEC();
  (*(*(v32 - 8) + 104))(v28, v31, v32);

  v33 = v1[1];

  return v33();
}

uint64_t sub_226349130(uint64_t a1)
{
  v37 = v1;
  v2 = *(v1 + 304);
  v3 = *(v1 + 248);
  v4 = *(v1 + 232);
  v5 = *(v1 + 184);
  sub_22635001C();
  v2(v4, v3, v5);
  v6 = sub_22635003C();
  v7 = sub_22635071C();
  v8 = os_log_type_enabled(v6, v7);
  v35 = *(v1 + 320);
  if (v8)
  {
    v9 = *(v1 + 296);
    v10 = *(v1 + 280);
    v33 = *(v1 + 248);
    v11 = *(v1 + 232);
    v12 = *(v1 + 184);
    v30 = *(v1 + 120);
    v31 = *(v1 + 168);
    v32 = *(v1 + 112);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315394;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v15 = sub_226350C1C();
    v17 = v16;
    v10(v11, v12);
    v18 = sub_226345004(v15, v17, &v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    *(v13 + 14) = CFAbsoluteTimeGetCurrent() - v9;
    _os_log_impl(&dword_2262B6000, v6, v7, "Executing open action for target %s using ToolKit. (latency = %f", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x22AA7D570](v14, -1, -1);
    MEMORY[0x22AA7D570](v13, -1, -1);

    v35(v31, v30);
    sub_2262FE61C(v32, type metadata accessor for VisualAction);
    v10(v33, v12);
  }

  else
  {
    v19 = *(v1 + 280);
    v34 = *(v1 + 248);
    v20 = *(v1 + 232);
    v21 = *(v1 + 184);
    v22 = *(v1 + 168);
    v23 = *(v1 + 120);
    v24 = *(v1 + 112);

    v19(v20, v21);
    v35(v22, v23);
    sub_2262FE61C(v24, type metadata accessor for VisualAction);
    v19(v34, v21);
  }

  v25 = *(v1 + 80);
  v26 = *MEMORY[0x277D78A48];
  v27 = sub_22634FAEC();
  (*(*(v27 - 8) + 104))(v25, v26, v27);

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_2263494F8(void *a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  v5 = *(v4 + 96);
  if (v1)
  {
    v6 = sub_226349E04;
  }

  else
  {

    v6 = sub_226349630;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226349630(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 408);
  v3 = *(v1 + 248);
  v4 = *(v1 + 216);
  v5 = *(v1 + 184);
  sub_22635001C();
  v2(v4, v3, v5);
  v6 = sub_22635003C();
  v7 = sub_22635071C();
  v8 = os_log_type_enabled(v6, v7);
  v33 = *(v1 + 424);
  if (v8)
  {
    v9 = *(v1 + 296);
    v10 = *(v1 + 280);
    v32 = *(v1 + 248);
    v11 = *(v1 + 216);
    v12 = *(v1 + 184);
    v30 = *(v1 + 120);
    v31 = *(v1 + 152);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315394;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v15 = sub_226350C1C();
    v17 = v16;
    v10(v11, v12);
    v18 = sub_226345004(v15, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    *(v13 + 14) = CFAbsoluteTimeGetCurrent() - v9;
    _os_log_impl(&dword_2262B6000, v6, v7, "Executing open action for target %s using LinkServices. (latency = %f", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x22AA7D570](v14, -1, -1);
    MEMORY[0x22AA7D570](v13, -1, -1);

    v33(v31, v30);
    v10(v32, v12);
  }

  else
  {
    v19 = *(v1 + 280);
    v20 = *(v1 + 248);
    v21 = *(v1 + 216);
    v22 = *(v1 + 184);
    v23 = *(v1 + 152);
    v24 = *(v1 + 120);

    v19(v21, v22);
    v33(v23, v24);
    v19(v20, v22);
  }

  v25 = *(v1 + 80);
  v26 = *MEMORY[0x277D78A48];
  v27 = sub_22634FAEC();
  (*(*(v27 - 8) + 104))(v25, v26, v27);

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_2263499B0()
{
  v41 = v0;
  sub_2262FE61C(v0[14], type metadata accessor for VisualAction);
  v1 = v0[50];
  v2 = v0[38];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[23];
  sub_22635001C();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22635003C();
  v8 = sub_22635073C();

  if (os_log_type_enabled(v7, v8))
  {
    v37 = v0[40];
    v38 = v0[35];
    v9 = v0[26];
    v10 = v0[23];
    v35 = v0[18];
    v36 = v0[31];
    v34 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315394;
    swift_getErrorValue();
    v13 = sub_226350C9C();
    v15 = sub_226345004(v13, v14, &v40);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v16 = sub_226350C1C();
    v18 = v17;
    v38(v9, v10);
    v19 = sub_226345004(v16, v18, &v40);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2262B6000, v7, v8, "Error %s occurred while executing open action for target %s using ToolKit.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v12, -1, -1);
    MEMORY[0x22AA7D570](v11, -1, -1);

    v37(v35, v34);
    v38(v36, v10);
  }

  else
  {
    v39 = v0[40];
    v20 = v7;
    v21 = v0[35];
    v22 = v0[31];
    v23 = v0[26];
    v24 = v0[23];
    v25 = v0[18];
    v26 = v0[15];

    v21(v23, v24);
    v39(v25, v26);
    v21(v22, v24);
  }

  v27 = v0[10];
  v28 = *MEMORY[0x277D78AB8];
  v29 = sub_22634FB9C();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  v30 = *MEMORY[0x277D78A40];
  v31 = sub_22634FAEC();
  (*(*(v31 - 8) + 104))(v27, v30, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_226349E04(uint64_t a1)
{
  v44 = v1;
  v2 = v1[55];
  v3 = v1[51];
  v4 = v1[31];
  v5 = v1[25];
  v6 = v1[23];
  sub_22635001C();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22635003C();
  v9 = sub_22635073C();

  if (os_log_type_enabled(v8, v9))
  {
    v36 = v1[35];
    v37 = v1[55];
    v40 = v1[31];
    v41 = v1[53];
    v10 = v1[25];
    v11 = v1[23];
    v38 = v1[15];
    v39 = v1[17];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136315394;
    swift_getErrorValue();
    v14 = sub_226350C9C();
    v16 = sub_226345004(v14, v15, &v43);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v17 = sub_226350C1C();
    v19 = v18;
    v36(v10, v11);
    v20 = sub_226345004(v17, v19, &v43);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2262B6000, v8, v9, "Error %s occurred while executing open action for target %s using LinkServices.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v13, -1, -1);
    MEMORY[0x22AA7D570](v12, -1, -1);

    v41(v39, v38);
    v36(v40, v11);
  }

  else
  {
    v21 = v1[55];
    v42 = v1[53];
    v22 = v8;
    v23 = v1[35];
    v24 = v1[31];
    v25 = v1[25];
    v26 = v1[23];
    v27 = v1[17];
    v28 = v1[15];

    v23(v25, v26);
    v42(v27, v28);
    v23(v24, v26);
  }

  v29 = v1[10];
  v30 = *MEMORY[0x277D78AE0];
  v31 = sub_22634FB9C();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  v32 = *MEMORY[0x277D78A40];
  v33 = sub_22634FAEC();
  (*(*(v33 - 8) + 104))(v29, v32, v33);

  v34 = v1[1];

  return v34();
}

BOOL sub_22634A238(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v5 + 20), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = sub_22634FBEC();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  else
  {
    sub_2262FE61C(v4, type metadata accessor for VisualAction.Kind);
  }

  return EnumCaseMultiPayload == 3;
}

uint64_t sub_22634A340(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_226348180(a1, a2);
}

uint64_t sub_22634A3E8(uint64_t a1)
{
  result = sub_22634A440(&qword_28137E7E0, type metadata accessor for OpenEntityExecutor, &unk_226355D44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22634A440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22634A488()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357FD0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  return 10;
}

uint64_t sub_22634A558()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0x6769654E4E78616DLL, 0xED000073726F6268), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  return 3;
}

uint64_t sub_22634A630()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357FB0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  return 3;
}

double sub_22634A700()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000023, 0x8000000226357F60), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 1.0;
}

double sub_22634A7D0()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000017, 0x8000000226357F90), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634A8A4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0x6563655279726576, 0xEF7961636544746ELL), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.693;
}

double sub_22634A980()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0x44796144656D6173, 0xEC00000079616365), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.115;
}

double sub_22634AA58()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0x6B656557656D6173, 0xED00007961636544), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.01;
}

double sub_22634AB34()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0x6365447265646C6FLL, 0xEA00000000007961), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.001;
}

double sub_22634AC08()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357F40), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 10.0;
}

double sub_22634ACD8()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357F20), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634ADAC()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357F00), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634AE80()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ALL, 0x8000000226357EE0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634AF54()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000019, 0x8000000226356A30), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.16;
}

double sub_22634B028()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000019, 0x8000000226356A50), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.12;
}

double sub_22634B0FC()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000015, 0x8000000226357EC0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.08;
}

double sub_22634B1D0()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000017, 0x8000000226357EA0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B2A4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000017, 0x8000000226357E80), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B378()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000013, 0x8000000226357E60), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B44C()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357E40), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.12;
}

double sub_22634B520()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357E20), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.08;
}

double sub_22634B5F4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD00000000000001ALL, 0x8000000226357E00), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B6C8()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000014, 0x8000000226357DE0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634B79C()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000017, 0x8000000226357DC0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634B870()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  sub_2262F78BC(v0);
  v2 = v1;

  if (*(v2 + 16) && (v3 = sub_22633941C(0xD000000000000017, 0x8000000226357DA0), (v4 & 1) != 0))
  {
    sub_2262FB40C(*(v2 + 56) + 32 * v3, v8);

    sub_2262FB4D0(v8, &v6);
    if (swift_dynamicCast())
    {
      return v7[0];
    }
  }

  else
  {
  }

  return 0.5;
}

uint64_t sub_22634B940(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v151 = a2;
  v153 = a8;
  v162 = a6;
  v160 = a5;
  v12 = sub_22635004C();
  v158 = *(v12 - 8);
  v159 = v12;
  MEMORY[0x28223BE20](v12);
  v157 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v14 - 8);
  v152 = &v144 - v15;
  v149 = type metadata accessor for VisualAction.Kind(0);
  v16 = MEMORY[0x28223BE20](v149);
  v148 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v144 - v18;
  v150 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C8, &unk_226353200);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_226355DD0;
  *(v20 + 32) = 0x6E496E6F69746361;
  v156 = v20 + 32;
  *(v20 + 40) = 0xEB00000000786564;
  *(v20 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v20 + 56) = 0x6449656C646E7562;
  *(v20 + 64) = 0xE800000000000000;
  v161 = a1;
  v21 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v22 = sub_22635045C();
  v23 = [v21 initWithString_];

  *(v20 + 72) = v23;
  strcpy((v20 + 80), "executionType");
  *(v20 + 94) = -4864;
  *(v20 + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((v20 + 104), "groundingLabel");
  *(v20 + 119) = -18;
  if (a7)
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v25 = v162;
    v26 = sub_22635045C();
    v27 = [v24 initWithString_];

    v28 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    a7 = v28 != 0;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  *(v20 + 120) = v27;
  *(v20 + 128) = 0xD000000000000011;
  v154 = 0xD000000000000011;
  *(v20 + 136) = 0x8000000226356B70;
  *(v20 + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v20 + 152) = 0xD000000000000018;
  *(v20 + 160) = 0x8000000226356B90;
  v29 = sub_22634F47C();
  v144 = *(v29 - 8);
  v145 = v29;
  v30 = *(v144 + 48);
  v146 = v144 + 48;
  v147 = v30;
  *(v20 + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v20 + 176) = 0xD000000000000013;
  v155 = 0xD000000000000013;
  *(v20 + 184) = 0x8000000226358030;
  v31 = v161;
  *(v20 + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v20 + 200) = 0xD000000000000010;
  *(v20 + 208) = 0x8000000226358050;
  v32 = type metadata accessor for RankedVisualAction(0);
  *(v20 + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((v20 + 224), "isCustomAction");
  *(v20 + 239) = -18;
  v33 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v31 + v33, v19);
  v34 = swift_getEnumCaseMultiPayload() == 2;
  sub_226325C38(v19);
  *(v20 + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v20 + 248) = 0xD000000000000014;
  v162 = 0xD000000000000014;
  *(v20 + 256) = 0x8000000226358070;
  v35 = v148;
  sub_2262D76C0(v31 + v33, v148);
  v36 = swift_getEnumCaseMultiPayload() == 4;
  sub_226325C38(v35);
  *(v20 + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v20 + 272) = 1684957547;
  *(v20 + 280) = 0xE400000000000000;
  sub_2262DC4AC();
  v37 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v38 = sub_22635045C();
  v39 = [v37 initWithString_];

  *(v20 + 288) = v39;
  *(v20 + 296) = 0x656D6F6374756FLL;
  *(v20 + 304) = 0xE700000000000000;
  v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *(v20 + 312) = [v40 initWithInteger_];
  *(v20 + 320) = 0x5574736575716572;
  *(v20 + 328) = 0xEB00000000444955;
  sub_22634EEDC();
  v41 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v42 = sub_22635045C();
  v43 = [v41 initWithString_];

  *(v20 + 336) = v43;
  *(v20 + 344) = 0x65726F6373;
  *(v20 + 352) = 0xE500000000000000;
  v151 = v32;
  *(v20 + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v20 + 368) = 0x556E6F6973736573;
  *(v20 + 376) = 0xEB00000000444955;
  v44 = v145;
  sub_22634EEDC();
  v45 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v46 = sub_22635045C();
  v47 = [v45 initWithString_];

  *(v20 + 384) = v47;
  *(v20 + 392) = 0xD000000000000015;
  *(v20 + 400) = 0x8000000226356BD0;
  v48 = v152;
  sub_22632C3D4(v160, v152);
  if (v147(v48, 1, v44) == 1)
  {
    sub_22634D3A4(v48);
    v49 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v50 = &off_27858F000;
  }

  else
  {
    v51 = sub_22634F44C();
    (*(v144 + 8))(v48, v44);
    v50 = &off_27858F000;
    v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(v20 + 408) = v49;
  *(v20 + 416) = 0x776F6C666B726F77;
  *(v20 + 424) = 0xE800000000000000;
  *(v20 + 432) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v50[146]];
  *(v20 + 440) = 0xD000000000000018;
  *(v20 + 448) = 0x8000000226358090;
  v52 = v161 + *(v151 + 20);
  v53 = *(v52 + 7);
  v249[6] = *(v52 + 6);
  v249[7] = v53;
  v250 = v52[128];
  v54 = *(v52 + 3);
  v249[2] = *(v52 + 2);
  v249[3] = v54;
  v55 = *(v52 + 5);
  v249[4] = *(v52 + 4);
  v249[5] = v55;
  v56 = *(v52 + 1);
  v249[0] = *v52;
  v249[1] = v56;
  v57 = sub_2262D66D8(v249);
  v58 = v154;
  if (v57 == 1)
  {
    v59 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v60 = v155;
  *(v20 + 456) = v59;
  *(v20 + 464) = 0xD000000000000018;
  *(v20 + 472) = 0x80000002263580B0;
  v61 = *(v52 + 7);
  v247[6] = *(v52 + 6);
  v247[7] = v61;
  v248 = v52[128];
  v62 = *(v52 + 3);
  v247[2] = *(v52 + 2);
  v247[3] = v62;
  v63 = *(v52 + 4);
  v247[5] = *(v52 + 5);
  v247[4] = v63;
  v64 = *v52;
  v247[1] = *(v52 + 1);
  v247[0] = v64;
  if (sub_2262D66D8(v247) == 1)
  {
    v65 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v66 = v162;
  *(v20 + 480) = v65;
  *(v20 + 488) = v66;
  *(v20 + 496) = 0x80000002263580D0;
  v67 = *(v52 + 7);
  v244 = *(v52 + 6);
  v245 = v67;
  v246 = v52[128];
  v68 = *(v52 + 3);
  v240 = *(v52 + 2);
  v241 = v68;
  v69 = *(v52 + 4);
  v243 = *(v52 + 5);
  v242 = v69;
  v70 = *v52;
  v239 = *(v52 + 1);
  v238 = v70;
  if (sub_2262D66D8(&v238) == 1)
  {
    v71 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 504) = v71;
  *(v20 + 512) = v60;
  *(v20 + 520) = 0x80000002263580F0;
  v72 = *(v52 + 7);
  v235 = *(v52 + 6);
  v236 = v72;
  v237 = v52[128];
  v73 = *(v52 + 3);
  v231 = *(v52 + 2);
  v232 = v73;
  v74 = *(v52 + 4);
  v234 = *(v52 + 5);
  v233 = v74;
  v75 = *v52;
  v230 = *(v52 + 1);
  v229 = v75;
  if (sub_2262D66D8(&v229) == 1)
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 528) = v76;
  *(v20 + 536) = v60;
  *(v20 + 544) = 0x8000000226358110;
  v77 = *(v52 + 7);
  v226 = *(v52 + 6);
  v227 = v77;
  v228 = v52[128];
  v78 = *(v52 + 3);
  v222 = *(v52 + 2);
  v223 = v78;
  v79 = *(v52 + 4);
  v225 = *(v52 + 5);
  v224 = v79;
  v80 = *v52;
  v221[1] = *(v52 + 1);
  v221[0] = v80;
  if (sub_2262D66D8(v221) == 1)
  {
    v81 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 552) = v81;
  *(v20 + 560) = 0x72466C61626F6C67;
  *(v20 + 568) = 0xEF79636E65757165;
  v82 = *(v52 + 7);
  v218 = *(v52 + 6);
  v219 = v82;
  v220 = v52[128];
  v83 = *(v52 + 3);
  v214 = *(v52 + 2);
  v215 = v83;
  v84 = *(v52 + 4);
  v217 = *(v52 + 5);
  v216 = v84;
  v85 = *v52;
  v213[1] = *(v52 + 1);
  v213[0] = v85;
  if (sub_2262D66D8(v213) == 1)
  {
    v86 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 576) = v86;
  *(v20 + 584) = v58;
  *(v20 + 592) = 0x8000000226358130;
  v87 = *(v52 + 7);
  v210 = *(v52 + 6);
  v211 = v87;
  v212 = v52[128];
  v88 = *(v52 + 3);
  v206[2] = *(v52 + 2);
  v207 = v88;
  v89 = *(v52 + 4);
  v209 = *(v52 + 5);
  v208 = v89;
  v90 = *v52;
  v206[1] = *(v52 + 1);
  v206[0] = v90;
  if (sub_2262D66D8(v206) == 1)
  {
    v91 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 600) = v91;
  *(v20 + 608) = v58;
  *(v20 + 616) = 0x8000000226358150;
  v92 = *(v52 + 7);
  v203 = *(v52 + 6);
  v204 = v92;
  v205 = v52[128];
  v93 = *(v52 + 3);
  v199[2] = *(v52 + 2);
  v200 = v93;
  v94 = *(v52 + 4);
  v202 = *(v52 + 5);
  v201 = v94;
  v95 = *v52;
  v199[1] = *(v52 + 1);
  v199[0] = v95;
  if (sub_2262D66D8(v199) == 1)
  {
    v96 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v96 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 624) = v96;
  strcpy((v20 + 632), "globalRecency");
  *(v20 + 646) = -4864;
  v97 = *(v52 + 7);
  v196 = *(v52 + 6);
  v197 = v97;
  v198 = v52[128];
  v98 = *(v52 + 3);
  v193[2] = *(v52 + 2);
  v193[3] = v98;
  v99 = *(v52 + 4);
  v195 = *(v52 + 5);
  v194 = v99;
  v100 = *v52;
  v193[1] = *(v52 + 1);
  v193[0] = v100;
  if (sub_2262D66D8(v193) == 1)
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 648) = v101;
  *(v20 + 656) = 0xD000000000000018;
  *(v20 + 664) = 0x8000000226358170;
  v102 = *(v52 + 7);
  v190 = *(v52 + 6);
  v191 = v102;
  v192 = v52[128];
  v103 = *(v52 + 3);
  v187[2] = *(v52 + 2);
  v187[3] = v103;
  v104 = *(v52 + 4);
  v189 = *(v52 + 5);
  v188 = v104;
  v105 = *v52;
  v187[1] = *(v52 + 1);
  v187[0] = v105;
  if (sub_2262D66D8(v187) == 1)
  {
    v106 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v106 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 672) = v106;
  *(v20 + 680) = 0xD000000000000018;
  *(v20 + 688) = 0x8000000226358190;
  v107 = *(v52 + 7);
  v184 = *(v52 + 6);
  v185 = v107;
  v186 = v52[128];
  v108 = *(v52 + 3);
  v182[2] = *(v52 + 2);
  v182[3] = v108;
  v109 = *(v52 + 5);
  v182[4] = *(v52 + 4);
  v183 = v109;
  v110 = *(v52 + 1);
  v182[0] = *v52;
  v182[1] = v110;
  if (sub_2262D66D8(v182) == 1)
  {
    v111 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 696) = v111;
  *(v20 + 704) = v162;
  *(v20 + 712) = 0x80000002263581B0;
  v112 = *(v52 + 7);
  v179 = *(v52 + 6);
  v180 = v112;
  v181 = v52[128];
  v113 = *(v52 + 3);
  v177[2] = *(v52 + 2);
  v177[3] = v113;
  v114 = *(v52 + 5);
  v177[4] = *(v52 + 4);
  v178 = v114;
  v115 = *(v52 + 1);
  v177[0] = *v52;
  v177[1] = v115;
  if (sub_2262D66D8(v177) == 1)
  {
    v116 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v116 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 720) = v116;
  strcpy((v20 + 728), "embeddingScore");
  *(v20 + 743) = -18;
  v117 = *(v52 + 7);
  v174 = *(v52 + 6);
  v175 = v117;
  v176 = v52[128];
  v118 = *(v52 + 3);
  v173[2] = *(v52 + 2);
  v173[3] = v118;
  v119 = *(v52 + 5);
  v173[4] = *(v52 + 4);
  v173[5] = v119;
  v120 = *(v52 + 1);
  v173[0] = *v52;
  v173[1] = v120;
  if (sub_2262D66D8(v173) == 1)
  {
    v121 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v121 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 744) = v121;
  *(v20 + 752) = v58;
  *(v20 + 760) = 0x80000002263581D0;
  v122 = *(v52 + 7);
  v170 = *(v52 + 6);
  v171 = v122;
  v172 = v52[128];
  v123 = *(v52 + 3);
  v169[2] = *(v52 + 2);
  v169[3] = v123;
  v124 = *(v52 + 5);
  v169[4] = *(v52 + 4);
  v169[5] = v124;
  v125 = *(v52 + 1);
  v169[0] = *v52;
  v169[1] = v125;
  if (sub_2262D66D8(v169) == 1)
  {
    v126 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v126 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v20 + 768) = v126;
  *(v20 + 776) = v60;
  *(v20 + 784) = 0x8000000226357690;
  v127 = *(v52 + 7);
  v166[6] = *(v52 + 6);
  v167 = v127;
  v168 = v52[128];
  v128 = *(v52 + 3);
  v166[2] = *(v52 + 2);
  v166[3] = v128;
  v129 = *(v52 + 5);
  v166[4] = *(v52 + 4);
  v166[5] = v129;
  v130 = *(v52 + 1);
  v166[0] = *v52;
  v166[1] = v130;
  if (sub_2262D66D8(v166) == 1)
  {
    v131 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v50[146]];
  }

  *(v20 + 792) = v131;
  *(v20 + 800) = 0xD000000000000018;
  *(v20 + 808) = 0x8000000226357670;
  v132 = *(v52 + 7);
  v163[6] = *(v52 + 6);
  v164 = v132;
  v165 = v52[128];
  v133 = *(v52 + 3);
  v163[2] = *(v52 + 2);
  v163[3] = v133;
  v134 = *(v52 + 5);
  v163[4] = *(v52 + 4);
  v163[5] = v134;
  v135 = *(v52 + 1);
  v163[0] = *v52;
  v163[1] = v135;
  if (sub_2262D66D8(v163) == 1)
  {
    v136 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v136 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v50[146]];
  }

  *(v20 + 816) = v136;
  sub_2262FE32C(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D0, &qword_226355E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v137 = sub_22635045C();
  sub_2262DA244();
  v138 = sub_2263503DC();

  AnalyticsSendEvent();

  v139 = v157;
  sub_22635000C();
  v140 = sub_22635003C();
  v141 = sub_22635072C();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&dword_2262B6000, v140, v141, "DataHarvester: Finished logging", v142, 2u);
    MEMORY[0x22AA7D570](v142, -1, -1);
  }

  return (*(v158 + 8))(v139, v159);
}

uint64_t sub_22634CC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22634CCBC(uint64_t a1)
{
  v2 = sub_22634D30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22634CCF8(uint64_t a1)
{
  v2 = sub_22634D30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22634CD34()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID;
  v2 = sub_22634EEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataHarvester(uint64_t a1)
{
  result = qword_27D793E30;
  if (!qword_27D793E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634CE24(uint64_t a1)
{
  result = sub_22634EEFC();
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

uint64_t *sub_22634CEB4(void *a1)
{
  v15 = *v1;
  v3 = sub_22634EEFC();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v14 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E40, &qword_226355E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22634D30C();
  v9 = v16;
  sub_226350D1C();
  if (v9)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13;
    sub_22634D360(&qword_27D793460, MEMORY[0x277CC9618]);
    sub_226350B3C();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID, v14, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t *sub_22634D140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_22634CEB4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22634D198(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E50, &qword_226355E68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22634D30C();
  sub_226350D2C();
  sub_22634EEFC();
  sub_22634D360(&qword_27D793498, MEMORY[0x277CC95F8]);
  sub_226350BEC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_22634D30C()
{
  result = qword_27D793E48;
  if (!qword_27D793E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E48);
  }

  return result;
}

uint64_t sub_22634D360(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22634EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22634D3A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22634D420()
{
  result = qword_27D793E58;
  if (!qword_27D793E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E58);
  }

  return result;
}

unint64_t sub_22634D478()
{
  result = qword_27D793E60;
  if (!qword_27D793E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E60);
  }

  return result;
}

unint64_t sub_22634D4D0()
{
  result = qword_27D793E68;
  if (!qword_27D793E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E68);
  }

  return result;
}

uint64_t type metadata accessor for AppProtectionMonitor(uint64_t a1)
{
  result = qword_28137E6F0;
  if (!qword_28137E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634D6A0(unint64_t a1)
{
  v30 = sub_22634FD8C();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v23 - v4;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_226350A6C();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA7CA30](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v24 = v1;
    v12 = [v11 bundleIdentifier];
    v13 = sub_22635046C();
    v23 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2262DCFC4(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_2262DCFC4((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    v18 = v23;
    v1 = v24;
    *(v17 + 4) = v13;
    *(v17 + 5) = v18;
  }

  while (v6 != v5);
LABEL_23:
  v20 = v29;
  v19 = v30;
  *v29 = v7;
  (*(v27 + 104))(v20, *MEMORY[0x277D78CB0], v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  v21 = v25;
  sub_22635067C();
  return (*(v26 + 8))(v21, v28);
}

uint64_t sub_22634D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226316434;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_22634DAF0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = type metadata accessor for VisualAction(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = sub_22635004C();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_22634FF9C();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22634DCB8, v2, 0);
}

uint64_t sub_22634DCB8(uint64_t a1)
{
  v2 = v1[6];
  v3 = *v2;
  v1[27] = *v2;
  v4 = v2[1];
  v1[28] = v4;
  if (v3 == sub_22634FFAC() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_226350C4C();

    if ((v7 & 1) == 0)
    {
      v8 = *(v1[8] + 112);
      v1[29] = v8;

      return MEMORY[0x2822009F8](sub_22634DE68, v8, 0);
    }
  }

  v9 = v1[1];

  return v9(1);
}

uint64_t sub_22634DE68()
{
  sub_22632F498(v0[27], v0[28], v0[25]);
  v0[30] = 0;
  v1 = v0[8];

  return MEMORY[0x2822009F8](sub_22634DEFC, v1, 0);
}

uint64_t sub_22634DEFC()
{
  v84 = v0;
  (*(v0[21] + 32))(v0[26], v0[25], v0[20]);
  v1 = sub_22634FE4C();
  v2 = v0[26];
  if (v1)
  {
    if (sub_22634FE3C() & 1) == 0 || (sub_22634FCCC() & 1) != 0 || (sub_22634F5CC())
    {
      (*(v0[21] + 8))(v0[26], v0[20]);
      v80 = 1;
      goto LABEL_10;
    }

    v36 = v0[26];
    v37 = v0[24];
    v38 = v0[20];
    v39 = v0[21];
    v40 = v0[14];
    v41 = v0[6];
    sub_22634FFBC();
    sub_22634EAC4(v41, v40);
    v42 = *(v39 + 16);
    v42(v37, v36, v38);
    v43 = sub_22635003C();
    v44 = sub_22635072C();
    v45 = os_log_type_enabled(v43, v44);
    v82 = v0[26];
    v46 = v0[24];
    if (v45)
    {
      v71 = v0[21];
      v67 = v0[23];
      v69 = v0[20];
      v75 = v0[16];
      v77 = v0[15];
      v79 = v0[19];
      v47 = v0[13];
      v48 = v0[14];
      v49 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83 = v73;
      *v49 = 136315394;
      sub_22634EAC4(v48, v47);
      v50 = sub_2263504CC();
      v52 = v51;
      sub_22634EB28(v48);
      v53 = sub_226345004(v50, v52, &v83);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v42(v67, v46, v69);
      v54 = sub_2263504CC();
      v56 = v55;
      v57 = *(v71 + 8);
      v57(v46, v69);
      v58 = sub_226345004(v54, v56, &v83);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_2262B6000, v43, v44, "Excluding candidate action %s because app %s is internal.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v73, -1, -1);
      MEMORY[0x22AA7D570](v49, -1, -1);

      (*(v75 + 8))(v79, v77);
      v57(v82, v69);
    }

    else
    {
      v59 = v0[20];
      v60 = v0[21];
      v61 = v0[19];
      v62 = v0[15];
      v63 = v0[16];
      v64 = v0[14];

      v65 = *(v60 + 8);
      v65(v46, v59);
      sub_22634EB28(v64);
      (*(v63 + 8))(v61, v62);
      v65(v82, v59);
    }
  }

  else
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = v0[12];
    v7 = v0[6];
    sub_22634FFBC();
    sub_22634EAC4(v7, v6);
    v8 = *(v4 + 16);
    v8(v3, v2, v5);
    v9 = sub_22635003C();
    v10 = sub_22635072C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[26];
    if (v11)
    {
      v13 = v0[23];
      v68 = v0[22];
      v70 = v0[21];
      v66 = v0[20];
      v74 = v0[16];
      v76 = v0[15];
      v78 = v0[18];
      v14 = v0[12];
      v15 = v0[13];
      v81 = v0[26];
      v16 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v83 = v72;
      *v16 = 136315394;
      sub_22634EAC4(v14, v15);
      v17 = sub_2263504CC();
      v19 = v18;
      sub_22634EB28(v14);
      v20 = sub_226345004(v17, v19, &v83);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v8(v13, v68, v66);
      v21 = sub_2263504CC();
      v23 = v22;
      v24 = *(v70 + 8);
      v24(v68, v66);
      v25 = sub_226345004(v21, v23, &v83);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_2262B6000, v9, v10, "Excluding action %s because app %s is not launchable.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v72, -1, -1);
      MEMORY[0x22AA7D570](v16, -1, -1);

      (*(v74 + 8))(v78, v76);
      v24(v81, v66);
    }

    else
    {
      v27 = v0[21];
      v26 = v0[22];
      v28 = v0[20];
      v29 = v0[18];
      v30 = v0[15];
      v31 = v0[16];
      v32 = v0[12];

      v33 = *(v27 + 8);
      v33(v26, v28);
      sub_22634EB28(v32);
      (*(v31 + 8))(v29, v30);
      v33(v12, v28);
    }
  }

  v80 = 0;
LABEL_10:

  v34 = v0[1];

  return v34(v80);
}

uint64_t sub_22634E588(uint64_t a1)
{
  v37 = v1;
  v2 = v1[30];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[6];
  sub_22634FFBC();
  sub_22634EAC4(v5, v3);
  sub_22634EAC4(v5, v4);
  v6 = v2;
  v7 = sub_22635003C();
  v8 = sub_22635073C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[30];
    v33 = v1[16];
    v34 = v1[15];
    v35 = v1[17];
    v10 = v1[13];
    v12 = v1[10];
    v11 = v1[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315650;
    sub_22634EAC4(v11, v10);
    v15 = sub_2263504CC();
    v17 = v16;
    sub_22634EB28(v11);
    v18 = sub_226345004(v15, v17, &v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_226350C9C();
    v21 = sub_226345004(v19, v20, &v36);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = *v12;
    v23 = v12[1];

    sub_22634EB28(v12);
    v24 = sub_226345004(v22, v23, &v36);

    *(v13 + 24) = v24;
    _os_log_impl(&dword_2262B6000, v7, v8, "Excluding action %s because an error %s occured while retrieving app record for its bundle identifier '%s'.", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v14, -1, -1);
    MEMORY[0x22AA7D570](v13, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v25 = v1[30];
    v27 = v1[16];
    v26 = v1[17];
    v28 = v1[15];
    v30 = v1[10];
    v29 = v1[11];

    sub_22634EB28(v30);
    sub_22634EB28(v29);
    (*(v27 + 8))(v26, v28);
  }

  v31 = v1[1];

  return v31(0);
}

uint64_t sub_22634E8C8()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore24ActionEligibilityChecker_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for ActionEligibilityChecker(uint64_t a1)
{
  result = qword_28137F330;
  if (!qword_28137F330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634E99C(uint64_t a1)
{
  result = sub_22634FCDC();
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

unint64_t sub_22634EA44(uint64_t a1)
{
  result = sub_22634EA6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22634EA6C()
{
  result = qword_28137F350;
  if (!qword_28137F350)
  {
    type metadata accessor for ActionEligibilityChecker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137F350);
  }

  return result;
}

uint64_t sub_22634EAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22634EB28(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22634EB84()
{
  sub_22634FA3C();
  v0 = sub_22634FA2C();
  v1 = sub_22634FE0C();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = sub_22633941C(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:
    v12 = 0;
LABEL_16:

    return v12;
  }

  v6 = *(*(v0 + 56) + 8 * v3);

  v7 = sub_22634F46C();
  if (*(v6 + 16))
  {
    v9 = sub_22633941C(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v6 + 56) + 8 * v9);
      if (v12 <= 3)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

  if (!*(v6 + 16) || (v13 = sub_22633941C(0x746C7561666564, 0xE700000000000000), (v14 & 1) == 0))
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = *(*(v6 + 56) + 8 * v13);

  if (v12 >= 4)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}