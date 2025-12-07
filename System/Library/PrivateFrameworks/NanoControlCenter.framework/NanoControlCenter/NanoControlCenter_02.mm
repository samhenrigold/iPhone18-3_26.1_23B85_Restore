uint64_t sub_25AF35C44(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_25AF37DC0(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF37B18();
    sub_25B004224();
  }
}

uint64_t sub_25AF35D5C()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  v1[5] = swift_task_alloc();
  v1[6] = sub_25B005B34();
  v1[7] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_25AF35E30, v3, v2);
}

uint64_t sub_25AF35E30()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v2);
  }

  else
  {
    v6 = *(v1 + 64);
    v0[10] = v6;
    if (v6)
    {

      v7 = swift_task_alloc();
      v0[11] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098, &qword_25B00AF90);
      *v7 = v0;
      v7[1] = sub_25AF36084;
      v9 = v0 + 3;
    }

    else
    {
      v10 = v0[5];
      v11 = sub_25B005B64();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

      v12 = sub_25B005B24();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v1;
      v6 = sub_25AF6CAE8(0, 0, v10, &unk_25B00AF88, v13);
      v0[12] = v6;
      *(v1 + 64) = v6;

      v15 = swift_task_alloc();
      v0[13] = v15;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098, &qword_25B00AF90);
      *v15 = v0;
      v15[1] = sub_25AF36220;
      v9 = v0 + 2;
    }

    return MEMORY[0x282200460](v9, v6, v8);
  }
}

uint64_t sub_25AF36084()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF361A4, v3, v2);
}

uint64_t sub_25AF361A4()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF36220()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF36340, v3, v2);
}

uint64_t sub_25AF36340()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF363BC(uint64_t a1)
{
  v2 = v1;
  if (*v1 >> 62)
  {
    v4 = sub_25B005EA4();
  }

  else
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_25AF381E4(v4, 1);
  v5 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = *(v6 + 0x10);
  v8 = (*(v6 + 0x18) >> 1) - v7;
  v9 = sub_25AF1647C(&v17, (v6 + 8 * v7 + 32), v8, a1);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = *(v6 + 16);
      v11 = __OFADD__(v10, v9);
      v12 = (v10 + v9);
      if (v11)
      {
        __break(1u);
LABEL_23:
        *(v6 + 16) = a1;
        goto LABEL_8;
      }

      *(v6 + 16) = v12;
    }

    if (v9 != v8)
    {
      goto LABEL_8;
    }
  }

  a1 = *(v6 + 16);
  v14 = sub_25AF385B4();
  if (v14)
  {
    while (1)
    {
      if (a1 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = v14;
        sub_25B005A64();
        v14 = v16;
      }

      v5 = *v2;
      v6 = *v2 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(v6 + 0x18) >> 1)
      {
        v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v15 = a1;
      }

      while (v15 != a1)
      {
        *(v6 + 32 + 8 * a1++) = v14;
        v14 = sub_25AF385B4();
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      *(v6 + 16) = v15;
      a1 = v15;
    }
  }

LABEL_8:
  sub_25AF18700(v17);

  *v2 = v5;
  return result;
}

uint64_t sub_25AF3653C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_25B005EA4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_25B005EA4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25AF381E4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25AF36634(uint64_t result)
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

  result = sub_25AFCD13C(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_25AF36720(uint64_t result)
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

  result = sub_25AFCD450(result, v10, 1, v3);
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

uint64_t sub_25AF36818()
{
  swift_getKeyPath();
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
}

uint64_t sub_25AF368A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25AF3695C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

unint64_t sub_25AF369C4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x25F85DD30](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v6 = [v4 localExtensions];
      sub_25AF18BD4(0, &qword_27FA23AB0, 0x277CFA3A8);
      v7 = sub_25B005A44();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_25B005EA4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_25B005EA4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v9;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (v5)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_25B005EA4();
        goto LABEL_23;
      }

      if (v10)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_25B005F44();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v30 = v3;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_25B005EA4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_44;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            sub_25AF387CC(&qword_27FA24230, &qword_27FA24228, &qword_25B00AF68);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24228, &qword_25B00AF68);
              v18 = sub_25AF379E0(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_28;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_25B005EA4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25AF36DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a1;
  v4[24] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24238, &qword_25B00AF98);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_25B005B34();
  v4[28] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_25AF36EA8, v7, v6);
}

uint64_t sub_25AF36EA8()
{
  v18 = v0;
  v1 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 168) = v1;
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    if (!sub_25B005EA4())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x25F85DD30](0, v2);

    *(v0 + 248) = v3;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v2 + 32);
    *(v0 + 248) = v3;
    if (v3)
    {
LABEL_6:
      v5 = *(v0 + 208);
      v4 = *(v0 + 216);
      v6 = *(v0 + 200);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 176;
      *(v0 + 24) = sub_25AF372D0;
      swift_continuation_init();
      *(v0 + 136) = v6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      sub_25B005C84();
      v8 = v3;
      sub_25B005AF4();
      (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_25AF374DC;
      *(v0 + 104) = &block_descriptor;
      [v8 getWidgetIconWithCompletion_];
      (*(v5 + 8))(boxed_opaque_existential_0, v6);

      return MEMORY[0x282200938](v0 + 16);
    }
  }

LABEL_12:

  if (qword_27FA23800 != -1)
  {
LABEL_19:
    swift_once();
  }

  v9 = sub_25B0044C4();
  __swift_project_value_buffer(v9, qword_27FA30C28);

  v10 = sub_25B0044B4();
  v11 = sub_25B005CB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(1852793705, 0xE400000000000000, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25AF8E7DC(*(v12 + 16), *(v12 + 24), &v17);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  **(v0 + 184) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25AF372D0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_25AF373D8, v2, v1);
}

uint64_t sub_25AF373D8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);

  v3 = *(v0 + 176);

  v4 = [v3 image];
  [v3 scale];
  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v4 scale:0 orientation:v5];

  v7 = *(v2 + 56);
  *(v2 + 56) = v6;
  v8 = v6;

  **(v0 + 184) = v6;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25AF374DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24238, &qword_25B00AF98);
  return sub_25B005B04();
}

uint64_t sub_25AF3753C()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter20_ControlsSourceModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _ControlsSourceModel(uint64_t a1)
{
  result = qword_27FA241F8;
  if (!qword_27FA241F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF37654(uint64_t a1)
{
  result = sub_25B004274();
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

void sub_25AF3770C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = v3;
  v5 = [v4 extensionIdentity];
  v6 = [v4 kind];
  if (!v6)
  {
    sub_25B005934();
    v6 = sub_25B005924();
  }

  v7 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v8 = [v4 defaultIntentReference];
  v9 = [v7 initWithExtensionIdentity:v5 kind:v6 intentReference:v8];

  [v4 controlType];
  if (qword_27FA23700 != -1)
  {
    swift_once();
  }

  if (sub_25AFA0C7C())
  {
    v10 = [v4 controlType];
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = 0;
  a2[3] = 0;
}

void sub_25AF378E8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 orderedControlDescriptors];
  if (v4)
  {
    v5 = v4;
    sub_25AF18BD4(0, &qword_27FA24220, 0x277CFA210);
    v6 = sub_25B005A44();
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a2 = v6;
}

void (*sub_25AF379E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85DD30](a2, a3);
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
    return sub_25AF37A60;
  }

  __break(1u);
  return result;
}

void (*sub_25AF37A68(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85DD30](a2, a3);
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
    return sub_25AF389EC;
  }

  __break(1u);
  return result;
}

unint64_t sub_25AF37B18()
{
  result = qword_27FA23AA0;
  if (!qword_27FA23AA0)
  {
    type metadata accessor for _ControlsSourceModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23AA0);
  }

  return result;
}

uint64_t sub_25AF37B70(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25AF18BD4(0, &qword_27FA24218, 0x277D75348);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F85DD30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x25F85DD30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_25B005DE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_25B005DE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25B005EA4();
  }

  result = sub_25B005EA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25AF37DC0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25B005DC4();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F85DD30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x25F85DD30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_25B005DE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_25B005DE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25B005EA4();
  }

  result = sub_25B005EA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25AF38000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 1);
        v7 = *(v4 - 3);
        v8 = *(v3 - 4);
        v9 = *(v3 - 3);
        v10 = *(v3 - 2);
        v11 = *(v3 - 1);
        v12 = *v4;
        v13 = *v3;
        v21 = *(v4 - 4);
        v22 = v7;
        v23 = v5;
        v24 = v6;
        v25 = v12;
        v16 = v8;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        v20 = v13;
        sub_25AF181DC(v21, v7, v5, v6, v12);
        sub_25AF181DC(v8, v9, v10, v11, v13);
        v14 = sub_25AFD33F0(&v21, &v16);
        sub_25AF18128(v16, v17, v18, v19, v20);
        sub_25AF18128(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_25AF38114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_25B006174() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_25B006174() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25AF381E4(uint64_t a1, char a2)
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

  sub_25B005EA4();
LABEL_9:
  result = sub_25B005F44();
  *v2 = result;
  return result;
}

uint64_t sub_25AF38284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B005EA4();
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
      result = sub_25B005EA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25AF387CC(&qword_27FA24230, &qword_27FA24228, &qword_25B00AF68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24228, &qword_25B00AF68);
            v9 = sub_25AF379E0(v13, i, a3);
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
        sub_25AF18BD4(0, &qword_27FA23AB0, 0x277CFA3A8);
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

uint64_t sub_25AF38424(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B005EA4();
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
      result = sub_25B005EA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25AF387CC(&qword_27FA24210, &qword_27FA24208, &qword_25B00AF60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24208, &qword_25B00AF60);
            v9 = sub_25AF37A68(v13, i, a3);
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
        sub_25B005DC4();
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

id sub_25AF385B4()
{
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v2 >> 62)
  {
    result = sub_25B005EA4();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v0[6];
  if (v1 != result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
LABEL_24:
      result = MEMORY[0x25F85DD30](v1, v2);
      v10 = (v1 + 1);
      if (!__OFADD__(v1, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:
        __break(1u);
        return result;
      }

      result = *(v2 + 8 * v1 + 32);
      v10 = (v1 + 1);
      if (!__OFADD__(v1, 1))
      {
LABEL_22:
        v0[6] = v10;
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_5:
  while (1)
  {
    v4 = v0[3];
    v5 = v0[4];
    if (!v5)
    {
      break;
    }

    v6 = v0[3];
LABEL_11:
    v2 = *(*(*v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    v0[3] = v6;
    v0[4] = (v5 - 1) & v5;
    v1 = v0[5];

    v0[5] = v2;
    v0[6] = 0;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v7 = (v0[2] + 64) >> 6;
  v8 = v0[3];
  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v6 >= v7)
    {
      break;
    }

    v5 = *(v0[1] + 8 * v6);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  if (v7 <= v4 + 1)
  {
    v9 = v4 + 1;
  }

  else
  {
    v9 = (v0[2] + 64) >> 6;
  }

  v0[3] = v9 - 1;
  v0[4] = 0;
  return result;
}

char *sub_25AF38718@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(result + 3);
    *a2 = v2;
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = v3;
    v4 = v2;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF387CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25AF38820()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF38860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF36DA8(a1, v4, v5, v6);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25AF38988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AF38A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240, &unk_25B00AFA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF38AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240, &unk_25B00AFA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF38BA4(uint64_t a1)
{
  sub_25AF3E4EC(319, &qword_27FA24258, &qword_27FA23D78, &qword_25B009D80, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA24260, &type metadata for GlanceButtonModel.AddRemoveStyle, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SelectControlModel(319);
      if (v3 <= 0x3F)
      {
        sub_25AF3F6AC(319, &qword_27FA24268, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_25AF3E4EC(319, &qword_27FA24270, &qword_27FA24278, qword_25B00AFD0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25AF38D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AF3DDF4(&qword_27FA24280, &unk_25B012DB0, MEMORY[0x277CDFAA0], &v8[*(v9 + 28)]);
  *v8 = 0;
  sub_25AF3E90C(v8, a2, type metadata accessor for ButtonAndLabel.ParentState);
  v10 = *v2;
  v11 = sub_25AF3D658(*&v4[*(a1 + 44)], v4[*(a1 + 44) + 8]);
  sub_25AF3D7C4(v8);
  LOBYTE(a1) = v4[1];
  LOBYTE(v8) = v4[2];
  v12 = *(v4 + 11);
  v13 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  *(a2 + v13[5]) = v10;
  *(a2 + v13[6]) = v11;
  *(a2 + v13[7]) = a1;
  *(a2 + v13[8]) = v8;
  *(a2 + v13[9]) = v12;
}

__n128 sub_25AF38E9C@<Q0>(uint64_t a1@<X8>)
{
  sub_25AF38F70(a1);
  v3 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  v4 = *(v1 + v3[5]);
  v5 = *(v1 + v3[7]);
  v6 = *(v1 + v3[8]);
  v7 = *(v1 + v3[9]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A0, &qword_25B00B0B8);
  sub_25B005484();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A8, &qword_25B00B0C0) + 36));
  v8->n128_u8[0] = v4;
  v8->n128_u8[1] = v5;
  v8->n128_u8[2] = v6;
  v8->n128_u64[1] = v7;
  result = v10;
  v8[1] = v10;
  v8[2].n128_u64[0] = v11;
  return result;
}

uint64_t sub_25AF38F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for TopLevelGridSection(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242B0, &qword_25B00B0C8);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  v19 = *(v2 + v18[8]);
  v58 = v17;
  if (v19 == 1)
  {
    sub_25AF3E90C(v2, v6 + v3[5], type metadata accessor for ButtonAndLabel.ParentState);
    v20 = *(v2 + v18[6]);
    *v6 = 2;
    *(v6 + v3[6]) = v20;
    v21 = v6 + v3[7];
    v61 = 0;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C8, &qword_25B00B0D8);
    sub_25B005484();
    v22 = v65;
    *v21 = v64;
    *(v21 + 2) = v22;
    v23 = v3[8];
    v61 = 0;
    type metadata accessor for CHSControlVisibility(0);
    sub_25B005484();
    *(v6 + v23) = v64;
    sub_25AF3E89C(v6, v17, type metadata accessor for TopLevelGridSection);
    v24 = *(v4 + 56);
    v25 = v24(v17, 0, 1, v3);
  }

  else
  {
    v24 = *(v4 + 56);
    v25 = v24(v17, 1, 1, v3);
  }

  v66 = &type metadata for ControlCenterFlags;
  v28 = sub_25AF1935C(v25, v26, v27);
  v67 = v28;
  LOBYTE(v64) = 4;
  v29 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  if (v29)
  {
    v30 = *(v2 + v18[7]) | ((*(v2 + v18[5]) != 2) << 8);
    sub_25AF3E90C(v2, v6 + v3[5], type metadata accessor for ButtonAndLabel.ParentState);
    v31 = *(v2 + v18[6]);
    *v6 = v30;
    *(v6 + v3[6]) = v31;
    v32 = v6 + v3[7];
    v61 = 0;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C8, &qword_25B00B0D8);
    sub_25B005484();
    v33 = v65;
    *v32 = v64;
    *(v32 + 2) = v33;
    v34 = v3[8];
    v61 = 0;
    type metadata accessor for CHSControlVisibility(0);
    sub_25B005484();
    *(v6 + v34) = v64;
    sub_25AF3E89C(v6, v14, type metadata accessor for TopLevelGridSection);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v24(v14, v35, 1, v3);
  v66 = &type metadata for ControlCenterFlags;
  v67 = v28;
  LOBYTE(v64) = 4;
  v36 = sub_25B004284();
  v37 = __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  v40 = *(v2 + v18[7]);
  v41 = *(v2 + v18[9]);
  v42 = v40 == 0;
  if (v36)
  {
    v43 = 256;
    if (v42)
    {
      v43 = 0;
    }

    v61 = v43;
    v62 = v41;
    v63 = 0;
  }

  else
  {
    v44 = 257;
    if (v42)
    {
      v44 = 1;
    }

    v61 = v44;
    v62 = v41;
    v63 = 1;
  }

  sub_25AF3DB88(v37, v38, v39);
  swift_retain_n();
  sub_25B004C74();
  v45 = v64;
  v46 = v65;
  v47 = v58;
  sub_25AF25FC4(v58, v11, &qword_27FA242B0, &qword_25B00B0C8);
  v48 = v59;
  sub_25AF25FC4(v14, v59, &qword_27FA242B0, &qword_25B00B0C8);
  v49 = v11;
  v56 = v14;
  v57 = v11;
  v50 = v48;
  v51 = v60;
  sub_25AF25FC4(v49, v60, &qword_27FA242B0, &qword_25B00B0C8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C0, &qword_25B00B0D0);
  sub_25AF25FC4(v50, v51 + v52[12], &qword_27FA242B0, &qword_25B00B0C8);
  v53 = v51 + v52[16];
  *v53 = v45;
  *(v53 + 16) = v46;
  v54 = v51 + v52[20];
  *v54 = 2;
  *(v54 + 8) = v41;
  sub_25AF3DBDC(v45, *(&v45 + 1));

  sub_25AF2602C(v56, &qword_27FA242B0, &qword_25B00B0C8);
  sub_25AF2602C(v47, &qword_27FA242B0, &qword_25B00B0C8);

  sub_25AF3DBE4(v45, *(&v45 + 1));
  sub_25AF2602C(v50, &qword_27FA242B0, &qword_25B00B0C8);
  return sub_25AF2602C(v57, &qword_27FA242B0, &qword_25B00B0C8);
}

uint64_t sub_25AF39514@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v10 = v2[2];
  v11 = v2[1];
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24370, &qword_25B00B370);
  sub_25B0054B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24378, &qword_25B00B378);
  sub_25AF0F274(&qword_27FA24380, &qword_27FA24378, &qword_25B00B378, MEMORY[0x277CE04B0]);
  sub_25B005034();
  sub_25B0054B4();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24388, &qword_25B00B380) + 36);
  *v6 = v5;
  *(v6 + 8) = v12;
  *(v6 + 24) = v13;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24390, &qword_25B00B388) + 36);
  *v7 = 2;
  *(v7 + 8) = 1;
  *(v7 + 16) = 1;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24398, &qword_25B00B390) + 36));
  *v8 = v4 != 2;
  v8[1] = v11;
  v8[2] = v10;
}

uint64_t sub_25AF396F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24378, &qword_25B00B378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_25AF397E4(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  if ((v3 ^ v2))
  {
    return 0;
  }

  return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
}

void *sub_25AF39840()
{
  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8, &qword_25B00B3A0);
  sub_25B005494();
  if (v3)
  {
    v0 = v4;

    sub_25AF3EA04(v3, v4);
  }

  else
  {
    v1 = sub_25AF39E3C();
    v0 = sub_25AFC30E4(v1);
  }

  return v0;
}

void sub_25AF398EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TopLevelGridSection(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B0, &unk_25B00B3D0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  if (*(a1 + 16))
  {
    v28 = v7;
    v29 = v12;
    v30 = v11;
    v31 = a2;
    if (qword_27FA30B10)
    {
      v16 = swift_beginAccess();
      v17 = MEMORY[0x28223BE20](v16);
      *(&v28 - 4) = a1;
      *(&v28 - 3) = v17;
      *(&v28 - 2) = v3;
      sub_25AF3AFE4(v3, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750, &qword_25B00AB00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B8, &qword_25B00B3E0);
      sub_25AF3135C();
      sub_25AF3EE7C();
      sub_25B0055B4();
      v32[0] = sub_25B0053F4();
      v18 = sub_25B005504();
      *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243F8, &qword_25B00B400) + 36)] = v18;
      sub_25AF3E90C(v3, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
      v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      sub_25AF3E89C(v9, v21 + v19, type metadata accessor for TopLevelGridSection);
      *(v21 + v20) = a1;
      v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24400, &qword_25B00B408) + 36)];
      *v22 = sub_25AF3F128;
      v22[1] = v21;
      v22[2] = 0;
      v22[3] = 0;
      sub_25AF3E90C(v3, v9, type metadata accessor for TopLevelGridSection);
      v23 = swift_allocObject();
      sub_25AF3E89C(v9, v23 + v19, type metadata accessor for TopLevelGridSection);
      *(v23 + v20) = a1;
      v24 = v30;
      v25 = &v15[*(v30 + 36)];
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = sub_25AF3F1D4;
      *(v25 + 3) = v23;
      v26 = v31;
      sub_25AF25B0C(v15, v31, &qword_27FA243B0, &unk_25B00B3D0);
      (*(v29 + 56))(v26, 0, 1, v24);
      swift_bridgeObjectRetain_n();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v27 = *(v12 + 56);

    v27(a2, 1, 1, v13);
  }
}

uint64_t sub_25AF39D10(uint64_t a1, uint64_t a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8, &qword_25B00B3A0);
  sub_25B005494();
  if (v3)
  {
    sub_25AF3EA04(v3, v4);
  }

  else
  {
    sub_25AF39E3C();

    sub_25B0054A4();
  }
}

void *sub_25AF39E3C()
{
  v1 = v0;
  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8, &qword_25B00B3A0);
  result = sub_25B005494();
  v3 = v6;
  if (v6)
  {

    return v3;
  }

  if (*v1 != 2)
  {
    return sub_25AF3A0E8(*v1 & 1, HIBYTE(*v1) & 1);
  }

  v4 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    sub_25AF3E6CC(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v5 = v4;
    sub_25B004234();

    v3 = *&v5[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF39F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_25AF39840();
  sub_25AF398EC(v6, a2);
  sub_25AF3E90C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AF3E89C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TopLevelGridSection);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A0, &qword_25B00B398);
  v10 = (a2 + *(result + 36));
  *v10 = sub_25AF3E978;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_25AF3A0E8(uint64_t result, char a2)
{
  if (result)
  {
    if (!qword_27FA30B10)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    sub_25AFEC4BC();
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (!qword_27FA30B10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = sub_25AF29950(v4, a2 & 1);

  if ((a2 & 1) == 0)
  {

    return v34;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_38;
  }

  sub_25AFEC930();
  v6 = v5;

  result = v34;
  v33 = *(v34 + 16);
  if (v33)
  {
    v7 = 0;
    v32 = (v6 + 64);
    v8 = MEMORY[0x277D84F90];
    v37 = v6;
    while (1)
    {
      v35 = v8;
LABEL_11:
      if (v7 >= *(result + 16))
      {
        break;
      }

      v9 = v34 + 32 + 40 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v14 = *(v9 + 32);
      sub_25B005B34();
      v40 = v11;
      v41 = v10;
      v42 = v13;
      v43 = v12;
      v44 = v14;
      sub_25AF181DC(v11, v10, v13, v12, v14);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = qword_286C4C100;
      v15 = off_286C4C108;
      v17 = qword_286C4C110;
      v18 = off_286C4C118;
      v38 = byte_286C4C120;
      sub_25AF181DC(qword_286C4C100, off_286C4C108, qword_286C4C110, off_286C4C118, byte_286C4C120);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v36 = v7 + 1;
      v50 = v16;
      v51 = v15;
      v52 = v17;
      v53 = v18;
      v54 = v38;
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v48 = v12;
      v49 = v14;
      v19 = sub_25AFD19C4(&v45);
      sub_25AF18128(v16, v15, v17, v18, v38);

      if (v19)
      {
        v39 = -*(v6 + 16);
        v20 = -1;
        v21 = v32;
        while (v39 + v20 != -1)
        {
          if (++v20 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v23 = *(v21 - 4);
          v24 = *(v21 - 3);
          v25 = *(v21 - 2);
          v26 = *(v21 - 1);
          v27 = *v21;
          sub_25AF181DC(v23, v24, v25, v26, *v21);
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v21 += 40;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v53 = v26;
          v54 = v27;
          v45 = v40;
          v46 = v41;
          v47 = v42;
          v48 = v43;
          v49 = v14;
          v22 = sub_25AFD19C4(&v45);
          sub_25AF18128(v23, v24, v25, v26, v27);

          v6 = v37;
          if (v22)
          {

            sub_25AF18128(v40, v41, v42, v43, v14);
            result = v34;
            v7 = v36;
            v8 = v35;
            if (v36 != v33)
            {
              goto LABEL_11;
            }

            goto LABEL_33;
          }
        }
      }

      v8 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25AF98A50(0, *(v35 + 16) + 1, 1);
        v8 = v55;
      }

      v30 = *(v8 + 16);
      v29 = *(v8 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_25AF98A50((v29 > 1), v30 + 1, 1);
        v8 = v55;
      }

      *(v8 + 16) = v30 + 1;
      v31 = v8 + 40 * v30;
      *(v31 + 32) = v40;
      *(v31 + 40) = v41;
      *(v31 + 48) = v42;
      *(v31 + 56) = v43;
      *(v31 + 64) = v44;
      result = v34;
      v7 = v36;
      if (v36 == v33)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_33:

  return v8;
}

uint64_t sub_25AF3A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v17[0] = a3;
  v7 = type metadata accessor for TopLevelGridSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[1] = sub_25AF4B750(2, a1);
  swift_getKeyPath();
  sub_25AF3E90C(a2, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  sub_25AF3E89C(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TopLevelGridSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24410, &qword_25B00B438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243E0, &qword_25B00B3F0);
  sub_25AF0F274(&qword_27FA24418, &qword_27FA24410, &qword_25B00B438, MEMORY[0x277D83980]);
  sub_25AF3F394();
  sub_25AF0F274(&qword_27FA243D8, &qword_27FA243E0, &qword_25B00B3F0, MEMORY[0x277CE1138]);
  v12 = v17[0];
  sub_25B005574();
  v13 = sub_25B005704();
  v14 = sub_25AF39E3C();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B8, &qword_25B00B3E0);
  v16 = (v12 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_25AF3A8A4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_25B004B44();
  *(a3 + 8) = a4;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24438, &qword_25B00B448);
  sub_25AF3A98C(v7, a2, a3 + *(v8 + 44));
}

uint64_t sub_25AF3A98C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24440, &qword_25B00B450);
  MEMORY[0x28223BE20](v78);
  v79 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24448, &qword_25B00B458);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450, &qword_25B00B460);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  sub_25B005B34();
  v18 = sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v20 = a1[2];
  if (v20)
  {
    v72 = v12;
    v73 = v18;
    v74 = v11;
    v75 = v8;
    v76 = a3;
    v22 = a1[4];
    v21 = a1[5];
    v23 = a1 + 4;
    v84 = v21;
    v85 = v22;
    v25 = v23[2];
    v24 = v23[3];
    v26 = *(v23 + 32);
    v67 = v23[6];
    v68 = v14;
    v28 = v23[9];
    v27 = v23[10];
    v80 = v24;
    v81 = v27;
    v29 = v23[12];
    v82 = v23[11];
    v83 = *(v23 + 104);
    LODWORD(v66) = *(v23 + 105);
    v30 = v20;
    v31 = type metadata accessor for TopLevelGridSection(0);
    v32 = v77[*(v31 + 24)];
    v33 = &v77[*(v31 + 20)];
    v34 = type metadata accessor for ButtonAndLabel(0);
    v35 = &v17[*(v34 + 36)];
    v65 = v33;
    sub_25AF3E90C(v33, v35, type metadata accessor for ButtonAndLabel.ParentState);
    v36 = v84;
    *v17 = v85;
    *(v17 + 1) = v36;
    v70 = v25;
    v71 = v29;
    v37 = v80;
    v38 = v81;
    *(v17 + 2) = v25;
    *(v17 + 3) = v37;
    v69 = v26;
    v17[32] = v26;
    v77 = v28;
    *(v17 + 5) = v28;
    *(v17 + 6) = v38;
    *(v17 + 7) = v82;
    *(v17 + 8) = v29;
    v17[72] = v83;
    v17[73] = v66;
    *(v17 + 10) = v67;
    LODWORD(v67) = v32;
    v17[88] = v32;
    v17[*(v34 + 40)] = 1;
    if (v30 == 1)
    {
      v39 = v79;
      *v79 = 0;
      *(v39 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_25AF181DC(v85, v84, v70, v80, v69);
      sub_25AF1D7EC(v77, v81, v82, v71, v83);
      sub_25AF0F274(&qword_27FA24458, &qword_27FA24450, &qword_25B00B460, MEMORY[0x277CDD870]);
      v40 = v74;
      sub_25B004C74();
      v41 = v68;
    }

    else
    {
      v42 = v34;
      v43 = &v23[14 * v30];
      v60 = *(v43 - 7);
      v44 = *(v43 - 3);
      v66 = *(v43 - 2);
      v64 = v44;
      v45 = *(v43 - 5);
      v46 = *(v43 - 4);
      v59 = *(v43 - 8);
      v47 = *(v43 - 11);
      v63 = *(v43 - 12);
      v48 = v63;
      v50 = *(v43 - 14);
      v62 = *(v43 - 13);
      v49 = v62;
      v61 = v50;
      v58 = v42;
      v51 = *(v43 - 80);
      v52 = *(v43 - 8);
      v41 = v68;
      sub_25AF3E90C(v65, &v68[*(v42 + 36)], type metadata accessor for ButtonAndLabel.ParentState);
      *v41 = v50;
      *(v41 + 8) = v49;
      *(v41 + 16) = v48;
      *(v41 + 24) = v47;
      *(v41 + 32) = v51;
      *(v41 + 40) = v45;
      *(v41 + 48) = v46;
      v53 = v66;
      *(v41 + 56) = v64;
      *(v41 + 64) = v53;
      *(v41 + 72) = v52;
      *(v41 + 73) = v60;
      *(v41 + 80) = v59;
      *(v41 + 88) = v67;
      *(v41 + *(v58 + 40)) = 1;
      sub_25AF25FC4(v41, v79, &qword_27FA24450, &qword_25B00B460);
      swift_storeEnumTagMultiPayload();
      sub_25AF181DC(v85, v84, v70, v80, v69);
      sub_25AF1D7EC(v77, v81, v82, v71, v83);
      sub_25AF181DC(v61, v62, v63, v47, v51);
      sub_25AF1D7EC(v45, v46, v64, v66, v52);
      sub_25AF0F274(&qword_27FA24458, &qword_27FA24450, &qword_25B00B460, MEMORY[0x277CDD870]);
      v40 = v74;
      sub_25B004C74();
      sub_25AF2602C(v41, &qword_27FA24450, &qword_25B00B460);
    }

    sub_25AF25FC4(v17, v41, &qword_27FA24450, &qword_25B00B460);
    v54 = v75;
    sub_25AF25FC4(v40, v75, &qword_27FA24448, &qword_25B00B458);
    v55 = v76;
    sub_25AF25FC4(v41, v76, &qword_27FA24450, &qword_25B00B460);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24460, &qword_25B00B468);
    sub_25AF25FC4(v54, v55 + *(v56 + 48), &qword_27FA24448, &qword_25B00B458);
    sub_25AF2602C(v40, &qword_27FA24448, &qword_25B00B458);
    sub_25AF2602C(v17, &qword_27FA24450, &qword_25B00B460);
    sub_25AF2602C(v54, &qword_27FA24448, &qword_25B00B458);
    sub_25AF2602C(v41, &qword_27FA24450, &qword_25B00B460);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_25AF3AFE4@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 == 2)
  {
    sub_25B004BC4();
    if (qword_27FA23728 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v4 = qword_27FA30B00;
  sub_25B005094();
  sub_25B004C74();

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_25AF3B234(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = a2 + 104;
  v25 = result;
  v27 = *(a2 + 16);
  v24 = a2 + 104;
  do
  {
    v26 = v5;
    v7 = v6 + 112 * v4;
    v8 = v4;
    while (1)
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      v33 = v8 + 1;
      v10 = *(v7 - 72);
      v9 = *(v7 - 64);
      v12 = *(v7 - 56);
      v11 = *(v7 - 48);
      v13 = *(v7 - 40);
      v14 = *v7;
      v30 = *(v7 + 8);
      v15 = *(v7 + 24);
      v28 = v8;
      v29 = *(v7 + 16);
      v16 = *(v7 + 32);
      sub_25B005B34();
      v34 = v10;
      v32 = v11;
      v31 = v13;
      sub_25AF181DC(v10, v9, v12, v11, v13);
      sub_25AF1D7EC(v14, v30, v29, v15, v16);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25AF181DC(v10, v9, v12, v11, v13);
      sub_25AF18128(v10, v9, v12, v11, v13);
      sub_25AF231D0(v14, v30, v29, v15, v16);
      v3 = v27;
      v4 = v33;
      if (v31 >> 6)
      {
        break;
      }

LABEL_4:

      v8 = v28 + 1;
      v7 += 112;
      if (v33 == v27)
      {
        v2 = v25;
        v5 = v26;
        goto LABEL_20;
      }
    }

    if (v31 >> 6 == 2)
    {
      sub_25AF18128(v34, v9, v12, v11, v31);
      goto LABEL_4;
    }

    v5 = v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25AFCD46C(0, *(v26 + 16) + 1, 1, v26);
      v5 = result;
    }

    v2 = v25;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_25AFCD46C((v17 > 1), v18 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v18 + 1;
    v19 = (v5 + 32 * v18);
    v19[4] = v34;
    v19[5] = v9;
    v19[6] = v12;
    v19[7] = v32;
    v6 = v24;
  }

  while (v33 != v27);
LABEL_20:
  if (qword_27FA30B10)
  {
    v20 = qword_27FA30B10;
    v23 = sub_25AF9B3D0(v5, v21, v22);

    sub_25AF72400(v2, 0, v23, 1);

    type metadata accessor for TopLevelGridSection(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408, &unk_25B00B410);
    return sub_25B0054A4();
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF3B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AF3B234(a4, a2);
}

uint64_t sub_25AF3B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24590, &qword_25B00B710);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v9 = *(v2 + 16);
  v24 = *(v2 + 8);
  v8 = v24;
  v23 = *(v2 + 24);
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v3 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24598, &qword_25B00B718);
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  v13 = &v7[*(v5 + 36)];
  *v13 = sub_25AF4022C;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  v20 = v8;
  v21 = v9;
  v22 = *(v3 + 24);

  sub_25AF40234(&v24, v19);

  sub_25AF25FC4(&v23, v19, &qword_27FA242A0, &qword_25B00B0B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0, &qword_25B00B720);
  MEMORY[0x25F85D310](v19, v14);
  v20 = v19[0];
  v21 = v19[1];
  v15 = swift_allocObject();
  v16 = *(v3 + 16);
  *(v15 + 16) = *v3;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v3 + 32);

  sub_25AF40234(&v24, v19);

  sub_25AF25FC4(&v23, v19, &qword_27FA242A0, &qword_25B00B0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A0, &qword_25B00B0B8);
  sub_25AF402EC();
  sub_25AF403A4();
  sub_25B005374();

  return sub_25AF2602C(v7, &qword_27FA24590, &qword_25B00B710);
}

uint64_t sub_25AF3B8B8(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0, &qword_25B00B720);
  sub_25B005524();
}

void sub_25AF3B980(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 24);
  v34[0] = *(a1 + 8);
  v34[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0, &qword_25B00B720);
  MEMORY[0x25F85D310](&v32, v3);
  v4 = v33;
  if (!v33)
  {
LABEL_34:

    return;
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    return;
  }

  v31 = v32;
  v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  swift_getKeyPath();
  *&v34[0] = v5;
  sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);

  sub_25B004234();

  v27 = v5;
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);

  v28 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 56);
    while (v8 < *(v6 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *v9;
      v30 = *(v9 - 1);

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v10 == v31 && v4 == v11)
      {
LABEL_31:
        v10 = v31;

        goto LABEL_33;
      }

      v13 = sub_25B006174();

      if (v13)
      {

LABEL_33:

        sub_25AFC8154(v10, v11, v30, v12, v26);

        goto LABEL_34;
      }

      ++v8;

      v9 += 4;
      if (v28 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_14:

  swift_getKeyPath();
  *&v34[0] = v27;
  sub_25B004234();

  v14 = *(v27 + 24);
  v15 = *(v14 + 16);

  v29 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 56);
    while (v16 < *(v14 + 16))
    {
      v18 = *(v17 - 3);
      v11 = *(v17 - 2);
      v12 = *v17;
      v30 = *(v17 - 1);

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v18 == v31 && v4 == v11)
      {
        goto LABEL_31;
      }

      v19 = sub_25B006174();

      if (v19)
      {

        v10 = v18;
        goto LABEL_33;
      }

      ++v16;

      v17 += 4;
      if (v29 == v16)
      {
        goto LABEL_23;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:

  if (qword_27FA23800 != -1)
  {
LABEL_37:
    swift_once();
  }

  v20 = sub_25B0044C4();
  __swift_project_value_buffer(v20, qword_27FA30C28);

  v21 = sub_25B0044B4();
  v22 = sub_25B005CB4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v34[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, v34);
    *(v23 + 12) = 2080;
    v25 = sub_25AF8E7DC(v31, v4, v34);

    *(v23 + 14) = v25;
    _os_log_impl(&dword_25AF0B000, v21, v22, "%s Couldn't find section with bundle ID: %s. This indicates programmer error.", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v24, -1, -1);
    MEMORY[0x25F85EC30](v23, -1, -1);
  }

  else
  {
  }
}

void sub_25AF3BFAC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24318, &qword_25B00B310);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24320, &qword_25B00B318);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v45 - v9;
  v10 = sub_25B004204();
  MEMORY[0x28223BE20](v10 - 8);
  v52 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B005904();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25B0040A4();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  MEMORY[0x28223BE20](v18);
  v56 = v45 - v19;
  v55 = sub_25B004094();
  v20 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (v45 - v24);
  if (qword_27FA30B10)
  {
    v50 = v5;
    v51 = a3;
    v26 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
    v47 = v7;
    v46 = a1;
    if (a1 == 2)
    {
      swift_getKeyPath();
      v59 = v26;
      sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);

      sub_25B004234();

      v27 = *(v26 + 24);
    }

    else
    {

      v27 = sub_25AF29594(0, a1 & 1);
    }

    *v25 = type metadata accessor for GlanceModel(0);
    v28 = v55;
    (*(v20 + 104))(v25, *MEMORY[0x277CC9120], v55);
    v29 = v58;
    sub_25B0058F4();
    (*(v20 + 16))(v22, v25, v28);
    sub_25B0041F4();
    sub_25B0040B4();
    v30 = v56;
    v31 = v57;
    v32 = (*(v57 + 32))(v56, v17, v29);
    if (*(v27 + 16))
    {
      v45[1] = v45;
      MEMORY[0x28223BE20](v32);
      v52 = v27;
      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = v56;
      (*(v31 + 16))(v48, v56, v29);
      v33 = sub_25B0050A4();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v59 = v33;
      v60 = v35;
      v61 = v37 & 1;
      v62 = v39;
      v31 = v57;
      v29 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24328, &qword_25B00B348);
      sub_25AF3E724();
      v40 = v47;
      sub_25B0055B4();

      (*(v20 + 8))(v25, v55);
      v42 = v53;
      v41 = v54;
      v43 = v50;
      (*(v54 + 32))(v53, v40, v50);
      v44 = 0;
    }

    else
    {
      (*(v20 + 8))(v25, v28);

      v44 = 1;
      v43 = v50;
      v42 = v53;
      v41 = v54;
    }

    (*(v41 + 56))(v42, v44, 1, v43);
    sub_25AF25B0C(v42, v51, &qword_27FA24320, &qword_25B00B318);
    (*(v31 + 8))(v30, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF3C74C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24340, &unk_25B00B350);
  v10 = type metadata accessor for ControlProvidingAppView(0);
  v11 = sub_25AF0F274(&qword_27FA24348, &qword_27FA24340, &unk_25B00B350, MEMORY[0x277D83980]);
  v12 = sub_25AF3E6CC(&qword_27FA24338, type metadata accessor for ControlProvidingAppView, &unk_25B00B620);
  v15 = sub_25AF3E848(v12, v13, v14);
  sub_25B005584(&v17, sub_25AF3E838, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v15);
}

uint64_t sub_25AF3C910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for ControlProvidingAppView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v11 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);

    v12 = v11;
    sub_25AF2DB64(v6, v7, v8, v9);

    *v5 = v6;
    v5[1] = v7;
    v5[2] = v8;
    v5[3] = v9;
    type metadata accessor for _ControlsAvailableModel.LoadingModel(0);
    sub_25AF3E6CC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel, &unk_25B00A73C);
    sub_25B0055E4();
    sub_25AF3E89C(v5, v14, type metadata accessor for ControlProvidingAppView);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF3CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24540, &qword_25B00B680);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ControlProvidingAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468, &unk_25B00B470);
  sub_25B0055D4();
  v10 = v18;
  swift_getKeyPath();
  v18 = v10;
  sub_25AF3E6CC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel, &unk_25B00A73C);
  sub_25B004234();

  v11 = *(v10 + 16);
  v11;

  if (!v11)
  {
    sub_25B0055D4();

    if (qword_27FA23710 != -1)
    {
      swift_once();
    }

    v12 = qword_27FA30AF8;
  }

  v18 = sub_25B005444();
  sub_25B005294();

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_25AF25FC4(v9, v6, &qword_27FA24540, &qword_25B00B680);
  sub_25AF25FC4(v6, a2, &qword_27FA24540, &qword_25B00B680);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24548, &qword_25B00B6B0) + 48);
  *v15 = v13;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  *(v15 + 24) = MEMORY[0x277D84F90];

  sub_25AF25F20(v13, v14, 0);

  sub_25AF2602C(v9, &qword_27FA24540, &qword_25B00B680);
  sub_25AF25F30(v13, v14, 0);

  sub_25AF2602C(v6, &qword_27FA24540, &qword_25B00B680);
}

uint64_t sub_25AF3CE28()
{
  v1 = sub_25B004E14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24528, &qword_25B00B670);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_25B004B44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24530, &qword_25B00B678);
  sub_25AF3CAFC(v0, &v7[*(v8 + 44)]);
  sub_25B004E04();
  sub_25AF0F274(&qword_27FA24538, &qword_27FA24528, &qword_25B00B670, MEMORY[0x277CE1138]);
  sub_25B0052E4();
  (*(v2 + 8))(v4, v1);
  return sub_25AF2602C(v7, &qword_27FA24528, &qword_25B00B670);
}

void sub_25AF3CFE8(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v18[0] = a1;
  v18[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24550, &qword_25B00B6B8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24558, &qword_25B00B6C0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  if (qword_27FA30B10)
  {
    v10 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);

    sub_25AFEC4BC();

    swift_getKeyPath();
    v19 = v10;
    sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel, &unk_25B00A758);
    sub_25B004234();

    v12 = sub_25AF3EA44(v11, 2u, v10);

    v13 = sub_25AF174DC(v12);

    if ((a2 & 0x100) != 0)
    {
      v19 = MEMORY[0x277D84F90];
      sub_25AF36720(v13);
      v13 = v19;
    }

    if (v13[2])
    {
      v14 = sub_25AF29238(v13, a2 & 1);

      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24560, &qword_25B00B6F0);
        (*(*(v16 - 8) + 16))(v6, v18[0], v16);
        swift_storeEnumTagMultiPayload();
        sub_25AF0F274(&qword_27FA24568, &qword_27FA24558, &qword_25B00B6C0, MEMORY[0x277CE1138]);
        sub_25AF0F274(&qword_27FA24570, &qword_27FA24560, &qword_25B00B6F0, MEMORY[0x277CE04B0]);
        sub_25B004C74();

        return;
      }
    }

    else
    {
    }

    *v9 = sub_25B004B44();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24578, &qword_25B00B6F8);
    sub_25AF3D440(&v9[*(v17 + 44)]);
    sub_25AF25FC4(v9, v6, &qword_27FA24558, &qword_25B00B6C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24560, &qword_25B00B6F0);
    sub_25AF0F274(&qword_27FA24568, &qword_27FA24558, &qword_25B00B6C0, MEMORY[0x277CE1138]);
    sub_25AF0F274(&qword_27FA24570, &qword_27FA24560, &qword_25B00B6F0, MEMORY[0x277CE04B0]);
    sub_25B004C74();

    sub_25AF2602C(v9, &qword_27FA24558, &qword_25B00B6C0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF3D440@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24580, &qword_25B00B700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0045F4();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24588, &qword_25B00B708);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = a1 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = *(v3 + 8);
  v12(v8, v2);
  v12(v5, v2);
}

void sub_25AF3D628(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_25AF3CFE8(a1, v3 | *v2, a2);
}

uint64_t sub_25AF3D658(uint64_t a1, char a2)
{
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_25B005CC4();
    v8 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[15];
  }

  return a1;
}

uint64_t sub_25AF3D7C4(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAndLabel.ParentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF3D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AF3D924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_25AF3D9DC(uint64_t a1)
{
  type metadata accessor for ButtonAndLabel.ParentState(319);
  if (v1 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA23B98, &type metadata for PreviewingMode, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SelectControlModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AF3DAB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_25AF3DB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA242B8;
  if (!qword_27FA242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA242B8);
  }

  return result;
}

uint64_t sub_25AF3DBEC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24360, &qword_25B00B360);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25AF25FC4(v2, &v13 - v9, &qword_27FA24360, &qword_25B00B360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25AF25B0C(v10, a1, &qword_27FA24368, &qword_25B00B368);
  }

  sub_25B005CC4();
  v12 = sub_25B004F24();
  sub_25B0044A4();

  sub_25B004B04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25AF3DDF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_25B004B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_25AF25FC4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_25B005CC4();
    v19 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_25AF3E01C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AF3E064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_25AF3E0C4(uint64_t a1, int a2)
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

uint64_t sub_25AF3E10C(uint64_t result, int a2, int a3)
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

uint64_t sub_25AF3E164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AF3E1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF3E20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25AF3E2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_25AF3E3A8(uint64_t a1)
{
  type metadata accessor for ButtonAndLabel.ParentState(319);
  if (v1 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA23B98, &type metadata for PreviewingMode, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25AF3E4EC(319, &qword_27FA242E8, &qword_27FA242C8, &qword_25B00B0D8, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_25AF3F6AC(319, &qword_27FA242F0, type metadata accessor for CHSControlVisibility, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AF3E4EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_25AF3E564()
{
  result = qword_27FA242F8;
  if (!qword_27FA242F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A8, &qword_25B00B0C0);
    v3 = sub_25AF0F274(&qword_27FA24300, &qword_27FA24308, qword_25B00B1D0, MEMORY[0x277CE14C0]);
    sub_25AF3E61C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA242F8);
  }

  return result;
}

unint64_t sub_25AF3E61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24310;
  if (!qword_27FA24310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24310);
  }

  return result;
}

uint64_t sub_25AF3E6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25AF3E724()
{
  result = qword_27FA24330;
  if (!qword_27FA24330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24328, &qword_25B00B348);
    sub_25AF3E6CC(&qword_27FA24338, type metadata accessor for ControlProvidingAppView, &unk_25B00B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24330);
  }

  return result;
}

uint64_t sub_25AF3E7F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25AF3E848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24350;
  if (!qword_27FA24350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24350);
  }

  return result;
}

uint64_t sub_25AF3E89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF3E90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF3E978()
{
  v1 = *(type metadata accessor for TopLevelGridSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25AF39D10(v0 + v2, v3);
}

uint64_t sub_25AF3EA04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AF3EA44(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_25AF98A70(0, v3, 0);
    v6 = v49;
    v7 = v5 + 64;
    v8 = sub_25B005E64();
    result = sub_25B005B34();
    v10 = 0;
    v35 = v5 + 72;
    v36 = v5 + 64;
    v37 = v3;
    v38 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_34;
      }

      v42 = 1 << v8;
      v43 = v8 >> 6;
      v44 = v6;
      v45 = *(v5 + 36);
      v46 = v8;

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v41 = v10;
      v12 = *(a3 + 48);
      v13 = *(a3 + 56);
      sub_25AF2EBC4(v12, v13);
      sub_25AF34F34(a2, v12, v13, &v48);
      sub_25AF1895C(v12, v13);
      v14 = v48;
      v15 = *(v48 + 16);
      if (v15)
      {
        sub_25AF98A50(0, v15, 0);
        v16 = v4;
        v17 = (v14 + 56);
        do
        {
          v18 = *(v17 - 3);
          v19 = *(v17 - 2);
          v20 = *v17;
          v47 = *(v17 - 1);

          v21 = v18;
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_25AF98A50((v22 > 1), v23 + 1, 1);
          }

          v17 += 4;
          *(v16 + 16) = v23 + 1;
          v24 = v16 + 40 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v19;
          *(v24 + 48) = v47;
          *(v24 + 56) = v20;
          *(v24 + 64) = 64;
          --v15;
        }

        while (v15);

        v4 = MEMORY[0x277D84F90];
        v3 = v37;
        v5 = v38;
        v7 = v36;
      }

      else
      {

        v16 = v4;
      }

      v6 = v44;
      v25 = v45;
      v49 = v44;
      v27 = *(v44 + 16);
      v26 = *(v44 + 24);
      result = v46;
      if (v27 >= v26 >> 1)
      {
        sub_25AF98A70((v26 > 1), v27 + 1, 1);
        v25 = v45;
        result = v46;
        v6 = v49;
      }

      *(v6 + 16) = v27 + 1;
      *(v6 + 8 * v27 + 32) = v16;
      v8 = 1 << *(v5 + 32);
      if (result >= v8)
      {
        goto LABEL_35;
      }

      v28 = *(v7 + 8 * v43);
      if ((v28 & v42) == 0)
      {
        goto LABEL_36;
      }

      if (v25 != *(v5 + 36))
      {
        goto LABEL_37;
      }

      v29 = v28 & (-2 << (result & 0x3F));
      if (v29)
      {
        v8 = __clz(__rbit64(v29)) | result & 0x7FFFFFFFFFFFFFC0;
        v11 = v41;
      }

      else
      {
        v30 = v43 << 6;
        v31 = v43 + 1;
        v32 = (v35 + 8 * v43);
        v11 = v41;
        while (v31 < (v8 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_25AF40220(result, v25, 0);
            v8 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_25AF40220(result, v25, 0);
      }

LABEL_4:
      v10 = v11 + 1;
      if (v10 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_25AF3EE7C()
{
  result = qword_27FA243C0;
  if (!qword_27FA243C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243B8, &qword_25B00B3E0);
    sub_25AF3EF34();
    sub_25AF0F274(&qword_27FA243E8, &qword_27FA243F0, &qword_25B00B3F8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA243C0);
  }

  return result;
}

unint64_t sub_25AF3EF34()
{
  result = qword_27FA243C8;
  if (!qword_27FA243C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243D0, &qword_25B00B3E8);
    sub_25AF0F274(&qword_27FA243D8, &qword_27FA243E0, &qword_25B00B3F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA243C8);
  }

  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for TopLevelGridSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = v5 + *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25AF3F134(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopLevelGridSection(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_25AF3B560(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_25AF3F1E0()
{
  v1 = type metadata accessor for TopLevelGridSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = v5 + *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF3F310@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TopLevelGridSection(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_25AF3A8A4(a1, v7, a2, v6);
}

unint64_t sub_25AF3F394()
{
  result = qword_27FA24420;
  if (!qword_27FA24420)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24428, &qword_25B00B440);
    sub_25AF3F418(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24420);
  }

  return result;
}

unint64_t sub_25AF3F418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24430;
  if (!qword_27FA24430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24430);
  }

  return result;
}

uint64_t sub_25AF3F480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468, &unk_25B00B470);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF3F550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468, &unk_25B00B470);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF3F600(uint64_t a1)
{
  sub_25AF3F6AC(319, &qword_27FA24480, type metadata accessor for _ControlsAvailableModel.LoadingModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF3F6AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReplaceAvailableControlsIfEmptyEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplaceAvailableControlsIfEmptyEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_25AF3F840(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AF3F888(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25AF3F8E4(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_25AF3F998(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AF3FA50(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_25AF3FA70(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_25AF3FAE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AF3FB64()
{
  result = qword_27FA24490;
  if (!qword_27FA24490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24318, &qword_25B00B310);
    sub_25AF3E724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24490);
  }

  return result;
}

unint64_t sub_25AF3FC00()
{
  result = qword_27FA24498;
  if (!qword_27FA24498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24398, &qword_25B00B390);
    v3 = sub_25AF3FC8C();
    sub_25AF3FE78(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24498);
  }

  return result;
}

unint64_t sub_25AF3FC8C()
{
  result = qword_27FA244A0;
  if (!qword_27FA244A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24390, &qword_25B00B388);
    v3 = sub_25AF3FD18();
    sub_25AF3FE24(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244A0);
  }

  return result;
}

unint64_t sub_25AF3FD18()
{
  result = qword_27FA244A8;
  if (!qword_27FA244A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24388, &qword_25B00B380);
    v3 = sub_25AF0F274(&qword_27FA244B0, &qword_27FA244B8, &qword_25B00B540, MEMORY[0x277CDE5A0]);
    sub_25AF3FDD0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244A8);
  }

  return result;
}

unint64_t sub_25AF3FDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA244C0;
  if (!qword_27FA244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244C0);
  }

  return result;
}

unint64_t sub_25AF3FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA244C8;
  if (!qword_27FA244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244C8);
  }

  return result;
}

unint64_t sub_25AF3FE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA244D0;
  if (!qword_27FA244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244D0);
  }

  return result;
}

unint64_t sub_25AF3FED0()
{
  result = qword_27FA244D8;
  if (!qword_27FA244D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243A0, &qword_25B00B398);
    sub_25AF3FAE8(&qword_27FA244E0, &qword_27FA244E8, &qword_25B00B548, sub_25AF3FF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244D8);
  }

  return result;
}

uint64_t sub_25AF3FFB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AF4006C()
{
  result = qword_27FA24500;
  if (!qword_27FA24500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243F8, &qword_25B00B400);
    sub_25AF40124();
    sub_25AF0F274(&qword_27FA24518, &qword_27FA24520, &qword_25B0122B0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24500);
  }

  return result;
}

unint64_t sub_25AF40124()
{
  result = qword_27FA24508;
  if (!qword_27FA24508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24510, &unk_25B00B550);
    sub_25AF3135C();
    sub_25AF3EE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24508);
  }

  return result;
}

uint64_t sub_25AF40220(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t objectdestroy_98Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_25AF402EC()
{
  result = qword_27FA245A8;
  if (!qword_27FA245A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24590, &qword_25B00B710);
    sub_25AF0F274(&qword_27FA245B0, &qword_27FA24598, &qword_25B00B718, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245A8);
  }

  return result;
}

unint64_t sub_25AF403A4()
{
  result = qword_27FA245B8;
  if (!qword_27FA245B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A0, &qword_25B00B0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245B8);
  }

  return result;
}

uint64_t sub_25AF40428()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24528, &qword_25B00B670);
  sub_25AF0F274(&qword_27FA24538, &qword_27FA24528, &qword_25B00B670, MEMORY[0x277CE1138]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AF404C4()
{
  result = qword_27FA245C0;
  if (!qword_27FA245C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA245C8, &unk_25B00B750);
    sub_25AF0F274(&qword_27FA24568, &qword_27FA24558, &qword_25B00B6C0, MEMORY[0x277CE1138]);
    sub_25AF0F274(&qword_27FA24570, &qword_27FA24560, &qword_25B00B6F0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245C0);
  }

  return result;
}

uint64_t sub_25AF405A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24590, &qword_25B00B710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A0, &qword_25B00B0B8);
  sub_25AF402EC();
  sub_25AF403A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF40654@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630, &qword_25B00BAD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24650, &qword_25B00BAD8);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v6 + 36)] = v9;
  sub_25AF446D4(v8, a3);
}

uint64_t sub_25AF407E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a1;
  v19 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  (*(*(v16 - 8) + 16))(v14, v18, v16);
  *&v14[*(v12 + 36)] = v15;
  sub_25AF25B0C(v14, v19, a3, a4);
}

void sub_25AF40960(uint64_t a1, void *a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    sub_25AF40B00(v4);
  }

  else
  {
  }
}

uint64_t sub_25AF40A74()
{
  v1 = *v0;
  v2 = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_25AF44214, v3, v2);
}

void sub_25AF40B00(void *a1)
{
  v2 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v5 setGeometryFlipped_];
    [v1 addSublayer_];
  }
}

void sub_25AF40BA8()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  objc_msgSendSuper2(&v29, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v24 = v4;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v25 = v10;
    v31.size.width = v8;
    v31.size.height = v10;
    v19 = Width / CGRectGetHeight(v31);
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v16;
    v32.size.height = v18;
    v20 = CGRectGetWidth(v32);
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v33))
    {
      v36.origin.x = v24;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v25;
      Height = CGRectGetHeight(v36);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v18;
      v22 = CGRectGetHeight(v37);
    }

    else
    {
      v34.origin.x = v24;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v25;
      Height = CGRectGetWidth(v34);
      v35.origin.x = v12;
      v35.origin.y = v14;
      v35.size.width = v16;
      v35.size.height = v18;
      v22 = CGRectGetWidth(v35);
    }

    CGAffineTransformMakeScale(&v27, Height / v22, Height / v22);
    *&m.a = *&v27.m11;
    *&m.c = *&v27.m13;
    *&m.tx = *&v27.m21;
    CATransform3DMakeAffineTransform(&v27, &m);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v38);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_25AF40F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AF40FD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  sub_25B005B34();
  v5 = sub_25B005B24();
  v6 = MEMORY[0x277D85700];
  v91 = v5;
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v89 = v75;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24618, &qword_25B00BAA8);
  v87 = *(v88 - 8);
  v86 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v92 = v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24620, &qword_25B00BAB0);
  v85 = v75;
  v84 = v8;
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v75 - v9;
  sub_25AF4421C(a2, v94);
  v11 = sub_25B005B24();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  v13 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v13;
  v14 = a2[9];
  *(v12 + 160) = a2[8];
  *(v12 + 176) = v14;
  v15 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v15;
  v16 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v16;
  v17 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v17;
  v82 = sub_25B005B64();
  v18 = *(v82 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v82);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v75 - v20;
  sub_25B005B44();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v79 = sub_25B004824();
    v80 = v75;
    v78 = *(v79 - 8);
    MEMORY[0x28223BE20](v79);
    v77 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v94 = 0;
    *&v94[8] = 0xE000000000000000;
    sub_25B005F24();

    *v94 = 0xD000000000000039;
    *&v94[8] = 0x800000025B0171B0;
    *&v98 = 131;
    v23 = sub_25B006124();
    v81 = v75;
    MEMORY[0x25F85D7B0](v23);

    v76 = a1;
    v75[1] = v75;
    v25 = MEMORY[0x28223BE20](v24);
    v26 = v75 - v20;
    v27 = v75 - v20;
    v28 = v82;
    (*(v18 + 16))(v26, v27, v82, v25);
    v29 = v77;
    sub_25B004814();
    (*(v18 + 8))(v21, v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23820, &qword_25B008558);
    (*(*(v30 - 8) + 16))(v10, v76, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23828, &unk_25B008560);
    (*(v78 + 32))(&v10[*(v31 + 36)], v29, v79);
  }

  else
  {
    v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23830, &qword_25B00BB10) + 36)];
    v33 = sub_25B004754();
    (*(v18 + 32))(&v32[*(v33 + 20)], v75 - v20, v82);
    *v32 = &unk_25B00BAC0;
    *(v32 + 1) = v12;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23820, &qword_25B008558);
    (*(*(v34 - 8) + 16))(v10, a1, v34);
  }

  v98 = a2[9];
  *v94 = a2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24628, &qword_25B00BAC8);
  v35 = sub_25B005494();
  if (v93)
  {
  }

  MEMORY[0x28223BE20](v35);
  LOBYTE(v75[-2]) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630, &qword_25B00BAD0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23820, &qword_25B008558);
  v38 = sub_25AF0F274(&qword_27FA24638, &qword_27FA23820, &qword_25B008558, MEMORY[0x277CE04B0]);
  *v94 = v37;
  *&v94[8] = v38;
  swift_getOpaqueTypeConformance2();
  sub_25AF44368();
  v39 = v84;
  sub_25B005394();
  (*(v83 + 8))(v10, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24658, &qword_25B00BAE0);
  v85 = v75;
  v84 = v40;
  v83 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v82 = v41;
  v42 = v75 - v41;
  *v94 = v98;
  sub_25B005494();
  v43 = v93;
  sub_25B0057D4();
  v45 = v44;
  v47 = v46;
  *v94 = v98;
  v48 = sub_25B005494();
  if (v93)
  {
  }

  v49 = *(a2 + 128);
  *v94 = v43;
  __asm { FMOV            V0.2D, #0.5 }

  *&v94[8] = _Q0;
  v95 = v45;
  v96 = v47;
  v97 = v49;
  MEMORY[0x28223BE20](v48);
  LOBYTE(v75[-2]) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24660, &qword_25B00BAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24668, &qword_25B00BAF0);
  sub_25AF4445C();
  sub_25AF4461C();
  sub_25B005394();

  v81 = v75;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = v75 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v87;
  v78 = *(v87 + 16);
  v80 = v59;
  v61 = v42;
  v79 = v42;
  v62 = v88;
  v63 = (v78)(v59, v92, v88, v57);
  v86 = v75;
  v64 = MEMORY[0x28223BE20](v63);
  v65 = v75 - v82;
  v66 = v83;
  v67 = *(v83 + 16);
  v68 = v61;
  v69 = v84;
  v67(v75 - v82, v68, v84, v64);
  v70 = v90;
  (v78)(v90, v59, v62);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA246B0, &qword_25B00BB08);
  (v67)(v70 + *(v71 + 48), v65, v69);
  v72 = *(v66 + 8);
  v72(v79, v69);
  v73 = *(v60 + 8);
  v73(v92, v62);
  v72(v65, v69);
  v73(v80, v62);
}

uint64_t sub_25AF41B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = sub_25B005B34();
  v3[7] = sub_25B005B24();
  v5 = *(a3 + 40);
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_25AF41C00;

  return sub_25AF41DE0(v5);
}

uint64_t sub_25AF41C00(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF41D44, v3, v2);
}

uint64_t sub_25AF41D44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 144);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24628, &qword_25B00BAC8);
  sub_25B0054A4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AF41DE0(uint64_t a1)
{
  v2[99] = v1;
  v2[93] = a1;
  v3 = sub_25B004134();
  v2[105] = v3;
  v4 = *(v3 - 8);
  v2[106] = v4;
  v2[107] = *(v4 + 64);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  sub_25B005B34();
  v2[110] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v2[111] = v6;
  v2[112] = v5;

  return MEMORY[0x2822009F8](sub_25AF41EF0, v6, v5);
}

uint64_t sub_25AF41EF0()
{
  v23 = v0;
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v1 = v0[99];
  v2 = qword_27FA30B00;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_25B005924();
  v6 = sub_25B005924();
  v7 = [v2 URLForResource:v5 withExtension:v6];

  if (v7)
  {
    v8 = v0[109];
    v9 = v0[108];
    v10 = v0[106];
    v11 = v0[105];
    sub_25B004124();

    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v13 = swift_allocObject();
    (*(v10 + 32))(v13 + v12, v9, v11);
    v14 = swift_allocObject();
    v0[113] = v14;
    *(v14 + 16) = &unk_25B00BB28;
    *(v14 + 24) = v13;
    sub_25AF18BD4(0, &qword_27FA246B8, 0x277CD9F28);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_25AF422A0, v0 + 82);
  }

  else
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v15 = sub_25B0044C4();
    __swift_project_value_buffer(v15, qword_27FA30C28);

    v16 = sub_25B0044B4();
    v17 = sub_25B005CB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B017220, &v22);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_25AF8E7DC(v3, v4, &v22);
      _os_log_impl(&dword_25AF0B000, v16, v17, "%s couldn't get URL for archive with name %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v19, -1, -1);
      MEMORY[0x25F85EC30](v18, -1, -1);
    }

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_25AF422A0()
{
  v1[114] = v0;
  if (v0)
  {
    v2 = sub_25AF4277C;
  }

  else
  {
    v2 = sub_25AF422D8;
  }

  return MEMORY[0x2822009F8](v2, v1[111], v1[112]);
}

uint64_t sub_25AF422D8()
{
  v30 = v0;
  v1 = v0[87];
  v0[115] = v1;
  v2 = v1;
  v3 = [v2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277CD9FB8]);
    v6 = v4;
    v7 = [v5 initWithLayer_];
    if (v7)
    {
      v8 = v7;
      v9 = v0[99];
      v10 = v0[93];
      [v7 setInitialStatesOfLayer_];

      v11 = *(v9 + 32);
      type metadata accessor for AnimationPackageView.AnimationModel(0);
      v12 = swift_allocObject();
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v13 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
      v14 = sub_25B004194();
      (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
      *(v12 + 16) = v11;
      *(v12 + 24) = v8;
      *(v12 + 32) = v6;
      v15 = *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel);
      *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel) = v12;
      if (v15)
      {
        v16 = v12 == v15;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        v17 = v6;
        v18 = v8;

        sub_25AFB956C(0, 0);
      }

      v19 = sub_25AF425E0;
      v20 = v0 + 2;
      v21 = v0 + 87;
      v22 = v0 + 100;
      goto LABEL_15;
    }
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v23 = sub_25B0044C4();
  __swift_project_value_buffer(v23, qword_27FA30C28);
  v24 = sub_25B0044B4();
  v25 = sub_25B005CB4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B017220, &v29);
    _os_log_impl(&dword_25AF0B000, v24, v25, "%s couldn't get root layer or create state controller for package from archive", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x25F85EC30](v27, -1, -1);
    MEMORY[0x25F85EC30](v26, -1, -1);
  }

  v19 = sub_25AF426B0;
  v20 = v0 + 2;
  v21 = v0 + 87;
  v22 = v0 + 94;
LABEL_15:

  return MEMORY[0x282200920](v20, v21, v19, v22);
}

uint64_t sub_25AF425FC()
{
  v1 = v0[109];
  v2 = v0[106];
  v3 = v0[105];

  (*(v2 + 8))(v1, v3);

  v4 = v0[115];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_25AF426CC()
{
  v1 = v0[109];
  v2 = v0[106];
  v3 = v0[105];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_25AF4277C()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_25AF427E8, v0 + 704);
}

uint64_t sub_25AF42804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[7];
  v13[6] = v2[6];
  v13[7] = v5;
  v6 = v2[9];
  v13[8] = v2[8];
  v13[9] = v6;
  v7 = v2[3];
  v13[2] = v2[2];
  v13[3] = v7;
  v8 = v2[5];
  v13[4] = v2[4];
  v13[5] = v8;
  v9 = v2[1];
  v13[0] = *v2;
  v13[1] = v9;
  *a2 = sub_25B0056B4();
  a2[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24610, &qword_25B00BAA0);
  return sub_25AF40FD0(a1, v13, a2 + *(v11 + 44));
}

void sub_25AF42890(int a1, int a2, int a3)
{
  LODWORD(v89) = a3;
  LODWORD(v90) = a2;
  v5 = a1 & 1;
  v6 = sub_25B005834();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25B005854();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B005884();
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  v15 = sub_25B005824();
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_25B004194();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v28 = &v70 - v27;
  if (*(v3 + 48) != v5)
  {
    v29 = *(v3 + 16);
    v77 = v25;
    v78 = a1;
    v75 = v14;
    v74 = v17;
    v73 = v26;
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    if ((v29 & 4) != 0)
    {
      v30 = v24;
    }

    else if ((v29 & 0x10) != 0)
    {
      v30 = v24;
    }

    else
    {
      if ((v29 & 1) == 0)
      {
LABEL_6:
        v30 = v24;
        sub_25AFA67FC(v29);
        if (!v31)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v30 = v24;
    }

LABEL_11:
    v32 = *(v3 + 32);
    v33 = sub_25B005924();

    v72 = v32;
    v34 = [v32 stateWithName_];

    if (v34)
    {
      v35 = v28;
      v36 = v34;
      LODWORD(v90) = ((v29 & 4) != 0) & v90;
      v76 = v30;
      v71 = v15;
      if (v90 == 1)
      {
        v37 = *(v3 + 24);
        v38 = v34;
        if ([v37 removeAllStateChanges])
        {
          sub_25B005E34();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v93 = 0u;
        }

        sub_25AF2602C(&aBlock, &qword_27FA246D0, &unk_25B00BB50);
        [v37 cancelTimers];
      }

      else
      {
        v39 = v34;
      }

      sub_25B004184();
      v40 = v77;
      v41 = *(v77 + 16);
      v42 = v76;
      v41(v20, v35, v76);
      (*(v40 + 56))(v20, 0, 1, v42);
      v43 = v35;
      v44 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
      swift_beginAccess();
      sub_25AF44A84(v20, v3 + v44);
      swift_endAccess();
      v46 = *(v3 + 40);
      if (v46)
      {
        v47 = v36 == v46;
      }

      else
      {
        v47 = 0;
      }

      v48 = v90;
      if (!v47)
      {
        v48 = 1;
      }

      if (v48 == 1)
      {
        v49 = v43;
        v50 = v78;
        if (v89)
        {
          if (v78)
          {
            v51 = v74;
            *v74 = 30;
            (*(v86 + 104))(v51, *MEMORY[0x277D85178], v71);
            sub_25AF18BD4(0, &qword_27FA271F0, 0x277D85C78);
            v90 = v3;
            v72 = sub_25B005D34();
            v52 = v79;
            sub_25B005864();
            sub_25B005874();
            v53 = *(v88 + 8);
            v88 += 8;
            v89 = v53;
            v53(v52, v87);
            v54 = v41;
            v55 = v73;
            v56 = v76;
            v54(v73, v49, v76);
            v57 = *(v77 + 80);
            v79 = v49;
            v58 = v77;
            v59 = (v57 + 16) & ~v57;
            v60 = (v22 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
            v61 = swift_allocObject();
            (*(v58 + 32))(v61 + v59, v55, v56);
            *(v61 + v60) = v90;
            *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
            v94 = sub_25AF44BA0;
            v95 = v61;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v93 = sub_25AF43684;
            *(&v93 + 1) = &block_descriptor_0;
            v62 = _Block_copy(&aBlock);
            v63 = v36;

            v64 = v80;
            sub_25B005844();
            v91 = MEMORY[0x277D84F90];
            sub_25AF44C50(&qword_27FA246C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25690, &qword_25B00C2E0);
            sub_25AF0F274(&qword_27FA246C8, &unk_27FA25690, &qword_25B00C2E0, MEMORY[0x277D83970]);
            v65 = v82;
            v66 = v85;
            sub_25B005E54();
            v67 = v75;
            v68 = v72;
            MEMORY[0x25F85DB10](v75, v64, v65, v62);
            v3 = v90;
            _Block_release(v62);

            (*(v84 + 8))(v65, v66);
            (*(v81 + 8))(v64, v83);
            v89(v67, v87);
            (*(v86 + 8))(v74, v71);
            (*(v77 + 8))(v79, v76);

LABEL_30:
            v69 = *(v3 + 40);
            *(v3 + 40) = v36;

            *(v3 + 48) = v50 & 1;
            return;
          }

          LODWORD(v45) = 1.0;
          [*(v3 + 24) setState:v36 ofLayer:v72 transitionSpeed:v45];
        }

        else
        {
          [*(v3 + 24) setState:v36 ofLayer:v72];
        }

        (*(v77 + 8))(v49, v76);
        goto LABEL_30;
      }

      (*(v40 + 8))(v43, v42);

LABEL_29:
      v50 = v78;
      goto LABEL_30;
    }

LABEL_16:
    [*(v3 + 24) setInitialStatesOfLayer_];
    v36 = 0;
    goto LABEL_29;
  }
}

uint64_t sub_25AF43234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_25B004194();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27250, &qword_25B015B10);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_25B005B34();
  v27 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v17 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
  swift_beginAccess();
  v18 = *(v8 + 48);
  sub_25AF44C98(v16, v10);
  sub_25AF44C98(a2 + v17, &v10[v18]);
  v19 = *(v6 + 48);
  if (v19(v10, 1, v5) == 1)
  {
    sub_25AF2602C(v16, &unk_27FA271A0, &unk_25B00BB40);
    if (v19(&v10[v18], 1, v5) == 1)
    {
      sub_25AF2602C(v10, &unk_27FA271A0, &unk_25B00BB40);
LABEL_10:
      LODWORD(v20) = 1.0;
      [*(a2 + 24) setState:v26 ofLayer:*(a2 + 32) transitionSpeed:v20];
    }

    goto LABEL_8;
  }

  sub_25AF44C98(v10, v13);
  if (v19(&v10[v18], 1, v5) == 1)
  {
    sub_25AF2602C(v16, &unk_27FA271A0, &unk_25B00BB40);
    (*(v6 + 8))(v13, v5);
LABEL_8:
    sub_25AF2602C(v10, &qword_27FA27250, &qword_25B015B10);
  }

  v21 = v25;
  (*(v6 + 32))(v25, &v10[v18], v5);
  sub_25AF44C50(&qword_27FA246D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_25B0058E4();
  v23 = *(v6 + 8);
  v23(v21, v5);
  sub_25AF2602C(v16, &unk_27FA271A0, &unk_25B00BB40);
  v23(v13, v5);
  sub_25AF2602C(v10, &unk_27FA271A0, &unk_25B00BB40);
  if (v22)
  {
    goto LABEL_10;
  }
}

uint64_t sub_25AF43684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25AF436C8()
{
  sub_25AF2602C(v0 + OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate, &unk_27FA271A0, &unk_25B00BB40);

  return swift_deallocClassInstance();
}

void sub_25AF4377C(uint64_t a1)
{
  sub_25AF43840(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25AF43840(uint64_t a1)
{
  if (!qword_27FA271D0)
  {
    sub_25B004194();
    v1 = sub_25B005E04();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA271D0);
    }
  }
}

uint64_t sub_25AF43898(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25B004134();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AF43958, 0, 0);
}

uint64_t sub_25AF43958()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AF18BD4(0, &qword_27FA246B8, 0x277CD9F28);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25B005934();
  v7 = sub_25AF43A54(v1, v5, v6, 0);

  v8 = v0[1];

  return v8(v7);
}

id sub_25AF43A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25B004114();
  v7 = sub_25B005924();

  if (a4)
  {
    v8 = sub_25B0058B4();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_25B004134();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_25B004084();

    swift_willThrow();
    v15 = sub_25B004134();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_25AF43C1C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AF43D08;

  return v5();
}

uint64_t sub_25AF43D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_25AF43E18()
{

  v1 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView15ViewLoaderModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AF43EE4(uint64_t a1)
{
  result = sub_25B004274();
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

uint64_t sub_25AF43FA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25AF44000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_25AF4408C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_25AF440D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF44184(uint64_t a1)
{
  result = sub_25AF44C50(&qword_27FA24608, type metadata accessor for AnimationPackageView.ViewLoaderModel, &unk_25B00BA5C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25AF441DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF44254()
{
  swift_unknownObjectRelease();
  sub_25AF18128(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_25AF442BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF18ADC;

  return sub_25AF41B48(v2, v3, v0 + 32);
}

unint64_t sub_25AF44368()
{
  result = qword_27FA24640;
  if (!qword_27FA24640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24630, &qword_25B00BAD0);
    sub_25AF0F274(&qword_27FA24648, &qword_27FA24650, &qword_25B00BAD8, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24640);
  }

  return result;
}

unint64_t sub_25AF4445C()
{
  result = qword_27FA24670;
  if (!qword_27FA24670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24660, &qword_25B00BAE8);
    v3 = sub_25AF444E8();
    sub_25AF445C8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24670);
  }

  return result;
}

unint64_t sub_25AF444E8()
{
  result = qword_27FA24678;
  if (!qword_27FA24678)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24680, &qword_25B00BAF8);
    sub_25AF44574(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24678);
  }

  return result;
}

unint64_t sub_25AF44574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24688;
  if (!qword_27FA24688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24688);
  }

  return result;
}

unint64_t sub_25AF445C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24690;
  if (!qword_27FA24690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24690);
  }

  return result;
}

unint64_t sub_25AF4461C()
{
  result = qword_27FA24698;
  if (!qword_27FA24698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24668, &qword_25B00BAF0);
    sub_25AF0F274(&qword_27FA246A0, &qword_27FA246A8, &qword_25B00BB00, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24698);
  }

  return result;
}

uint64_t sub_25AF446D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630, &qword_25B00BAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF44744()
{
  v1 = sub_25B004134();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AF447CC()
{
  v2 = *(sub_25B004134() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF44898;

  return sub_25AF43898(v0 + v3);
}

uint64_t sub_25AF44898(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25AF44994()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF449CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF18ADC;

  return sub_25AF43C1C(a1, v4);
}

uint64_t sub_25AF44A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF44AF4()
{
  v1 = sub_25B004194();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25AF44BA0()
{
  v1 = *(sub_25B004194() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25AF43234(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AF44C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AF44C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0, &unk_25B00BB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Collection.ncc_chunks(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v22 - v5;
  v7 = sub_25B005E04();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_25B005AD4();
  v29 = sub_25B005A74();
  v28 = sub_25B005A74();
  (*(v10 + 16))(v13, v25, a2);
  sub_25B0059E4();
  v17 = v24;
  swift_getAssociatedConformanceWitness();
  sub_25B005E14();
  v25 = v17[6];
  if (v25(v9, 1, AssociatedTypeWitness) != 1)
  {
    v19 = v17[4];
    v23 = v9;
    v24 = v19;
    (v19)(v6, v9, AssociatedTypeWitness);
    while (1)
    {
      sub_25B005AB4();
      v20 = v28;
      if (sub_25B005AA4() >= v26)
      {
        v27 = v20;
        sub_25B005AD4();

        v9 = v23;
        sub_25B005AB4();
        sub_25B005AC4();
      }

      sub_25B005E14();
      if (v25(v9, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (v24)(v6, v9, AssociatedTypeWitness);
    }
  }

  (*(v22 + 8))(v16, v14);
  v18 = v28;
  v27 = v28;
  swift_getWitnessTable();
  if (sub_25B005C74())
  {
  }

  else
  {
    v27 = v18;
    sub_25B005AD4();
    sub_25B005AB4();
  }

  return v29;
}

id sub_25AF45208()
{
  *&v0[OBJC_IVAR____TtC17NanoControlCenter25ProfileConnectionObserver_deinitCancellable] = 0;
  swift_unknownObjectWeakInit();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    *&v0[OBJC_IVAR____TtC17NanoControlCenter25ProfileConnectionObserver_connection] = result;
    v5.receiver = v0;
    v5.super_class = type metadata accessor for ProfileConnectionObserver();
    v3 = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    [v3 registerObserver_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25AF45370()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ProfileConnectionObserver();
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF454D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_25B005B34();
  v4[4] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF45570, v6, v5);
}

uint64_t sub_25AF45570()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    GlanceModel.updateLockButtonPresence()();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF456B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v5 = sub_25B0044C4();
  __swift_project_value_buffer(v5, qword_27FA30C28);
  v6 = sub_25B0044B4();
  v7 = sub_25B005CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25AF8E7DC(0xD000000000000043, 0x800000025B0172B0, &v17);
    _os_log_impl(&dword_25AF0B000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x25F85EC30](v9, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  v10 = sub_25B005B64();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_25B005B34();
  v11 = v1;
  v12 = sub_25B005B24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_25AF6D0D4(0, 0, v4, &unk_25B00BBB0, v13);
}

uint64_t sub_25AF458F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF45934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF454D8(a1, v4, v5, v6);
}

uint64_t sub_25AF459FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0, &unk_25B00BBC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_25AF45ACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0, &unk_25B00BBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF45B9C(uint64_t a1)
{
  type metadata accessor for EditingModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GlanceScrollingModel(319);
    if (v2 <= 0x3F)
    {
      sub_25AF46ECC(319, &qword_27FA247B8, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_25AF471D4(319, &qword_27FA247C0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25AF45CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D8, &qword_25B00BC50);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E0, &qword_25B00BC58);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v34 = a1;
  v35 = v3;
  sub_25B004F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E8, &qword_25B00BC60);
  sub_25AF46938();
  sub_25B004504();
  v16 = type metadata accessor for MonitoredScrollViewEffect(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0, &unk_25B00BBC0);
  sub_25B0054B4();
  v17 = v3 + *(v16 + 28);
  v18 = v17[16];
  v19 = *(v17 + 3);
  v36 = *v17;
  v37 = v18;
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24840, &qword_25B00BC80);
  sub_25B005494();
  v20 = sub_25AF0F274(&qword_27FA24848, &qword_27FA247D8, &qword_25B00BC50, MEMORY[0x277CDD6E0]);
  sub_25B0051C4();
  sub_25AF46C20(v7);
  (*(v9 + 8))(v11, v8);
  v21 = v3[1];
  *&v36 = v8;
  *(&v36 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  v23 = v31;
  sub_25B0052A4();
  (*(v32 + 8))(v15, v23);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24850, &qword_25B00BC88) + 36);
  *v24 = 1;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24858, &qword_25B00BC90) + 36)) = v21;
  v25 = v22;
  v26 = *v3;
  v27 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24860, &qword_25B00BC98) + 36));
  *v27 = v26;
  v27[1] = v21;
  v28 = v21;
}

uint64_t sub_25AF46088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MonitoredScrollViewEffect(0);
  v5 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24810, &qword_25B00BC70) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0, &unk_25B00BBC0);
  sub_25B0054B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24840, &qword_25B00BC80);
  sub_25B0054B4();
  v6 = a2[1];
  v7 = type metadata accessor for DraggingReorderAndScrollEffect(0);
  v8 = v5 + *(v7 + 20);
  *v8 = v20;
  *(v8 + 16) = v21;
  *(v8 + 24) = v22;
  *(v8 + 32) = v23;
  *(v5 + *(v7 + 24)) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24820, &qword_25B00BC78);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E8, &qword_25B00BC60) + 36);
  v11 = v6;
  sub_25B0054B4();
  sub_25B0054B4();
  v12 = *a2;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24800, &qword_25B00BC68) + 36);
  sub_25AF46C88(a3 + v10, v13);
  v14 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v15 = v13 + v14[5];
  *v15 = v20;
  *(v15 + 16) = v21;
  *(v15 + 24) = v22;
  *(v15 + 32) = v23;
  *(v13 + v14[6]) = v12;
  v16 = v14[7];
  v17 = v11;

  *(v13 + v16) = v17;
  return result;
}

uint64_t sub_25AF46328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24938, &qword_25B00C0E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25AF463CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24920, qword_25B00C0A0);
  v0 = sub_25AF0F274(&qword_27FA24928, &qword_27FA24920, qword_25B00C0A0, MEMORY[0x277CE04B0]);
  sub_25AF496E8(v0, v1, v2);
  return sub_25B005204();
}

uint64_t sub_25AF464D4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248F8, &qword_25B00C040);
    swift_getKeyPath();
    sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v6 = v3;
    sub_25B004234();

    v7 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    v8 = v6[v7];

    swift_getKeyPath();
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
    sub_25B004234();

    LOBYTE(v7) = v8 ^ *(a2 + 16);
    *(swift_allocObject() + 16) = (v7 & 1) == 0;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24900, &qword_25B00C048);
    sub_25AF0F274(&qword_27FA24908, &qword_27FA24900, &qword_25B00C048, MEMORY[0x277CE04B0]);
    sub_25AF49170();
    sub_25B005304();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF4675C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25B0047C4();
    v5 = v4;
    sub_25B0047B4();
    v7 = v5 + v6;
    sub_25B0047A4();
    v9 = v8;
    sub_25B0047B4();
    v11 = v10;
    sub_25B0047B4();
    v13 = v12;

    v15 = v9 + v11 + v13;
  }

  else
  {

    v7 = 0.0;
    v15 = 0.0;
  }

  *a2 = v7;
  *(a2 + 8) = v15;
  *(a2 + 16) = (a1 & 1) == 0;
  return result;
}

uint64_t sub_25AF46864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v7 & 1) == 0)
  {
    sub_25AF49430(a4, v5, v6);
  }
}

unint64_t sub_25AF46938()
{
  result = qword_27FA247F0;
  if (!qword_27FA247F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247E8, &qword_25B00BC60);
    sub_25AF469F4();
    sub_25AF46B98(&qword_27FA24838, type metadata accessor for ScrollToBottomOnEditModeEffect, &unk_25B00BEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA247F0);
  }

  return result;
}

unint64_t sub_25AF469F4()
{
  result = qword_27FA247F8;
  if (!qword_27FA247F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24800, &qword_25B00BC68);
    sub_25AF46AB0();
    sub_25AF46B98(&qword_27FA24830, type metadata accessor for AnimateEditModeForAnimationsEffect, &unk_25B00BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA247F8);
  }

  return result;
}

unint64_t sub_25AF46AB0()
{
  result = qword_27FA24808;
  if (!qword_27FA24808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24810, &qword_25B00BC70);
    sub_25AF0F274(&qword_27FA24818, &qword_27FA24820, &qword_25B00BC78, MEMORY[0x277CE04B0]);
    sub_25AF46B98(&qword_27FA24828, type metadata accessor for DraggingReorderAndScrollEffect, &unk_25B00C378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24808);
  }

  return result;
}

uint64_t sub_25AF46B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25AF46C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF46C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF46D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25AF46DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25AF46E44(uint64_t a1)
{
  sub_25AF46ECC(319, &qword_27FA24878, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF46ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25B004804();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25AF46F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
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

uint64_t sub_25AF47020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
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

void sub_25AF470E8(uint64_t a1)
{
  sub_25AF46ECC(319, &qword_27FA24878, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_25AF471D4(319, &qword_27FA24890, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EditingModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GlanceScrollingModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AF471D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247C8, qword_25B00BBF0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25AF47244()
{
  result = qword_27FA24898;
  if (!qword_27FA24898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24860, &qword_25B00BC98);
    v3 = sub_25AF472D0();
    sub_25AF475D0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24898);
  }

  return result;
}

unint64_t sub_25AF472D0()
{
  result = qword_27FA248A0;
  if (!qword_27FA248A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248A8, &qword_25B00BDA8);
    v3 = sub_25AF4735C();
    sub_25AF4757C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248A0);
  }

  return result;
}

unint64_t sub_25AF4735C()
{
  result = qword_27FA248B0;
  if (!qword_27FA248B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24858, &qword_25B00BC90);
    v3 = sub_25AF473E8();
    sub_25AF47528(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248B0);
  }

  return result;
}

unint64_t sub_25AF473E8()
{
  result = qword_27FA248B8;
  if (!qword_27FA248B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24850, &qword_25B00BC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247E0, &qword_25B00BC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247D8, &qword_25B00BC50);
    sub_25AF0F274(&qword_27FA24848, &qword_27FA247D8, &qword_25B00BC50, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25AF3FE24(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248B8);
  }

  return result;
}

unint64_t sub_25AF47528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA248C0;
  if (!qword_27FA248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248C0);
  }

  return result;
}

unint64_t sub_25AF4757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA248C8;
  if (!qword_27FA248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248C8);
  }

  return result;
}

unint64_t sub_25AF475D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA248D0;
  if (!qword_27FA248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248D0);
  }

  return result;
}

void sub_25AF47694(uint64_t a1)
{
  v2 = v1;
  v11[1] = a1;
  v3 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    v13 = v6;
    sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
    v7 = v6;
    sub_25B004234();

    v8 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LOBYTE(v8) = v7[v8];

    v12 = v8;
    sub_25AF48EBC(v2, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnimateEditModeForAnimationsEffect);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    sub_25AF49024(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AnimateEditModeForAnimationsEffect);
    *(v10 + v9 + v5) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248D8, &qword_25B00BFB8);
    sub_25AF0F274(&qword_27FA248E0, &qword_27FA248D8, &qword_25B00BFB8, MEMORY[0x277CE04B0]);
    sub_25B005374();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF478F8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v21[0] = *(v4 - 8);
  v5 = *(v21[0] + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B004E34();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B005B34();
  v21[1] = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v10 = sub_25B0044C4();
  __swift_project_value_buffer(v10, qword_27FA30C28);
  v11 = sub_25B0044B4();
  v12 = sub_25B005C94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(0xD000000000000049, 0x800000025B017380, v24);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, v24);
    _os_log_impl(&dword_25AF0B000, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  if (qword_27FA237A0 != -1)
  {
    swift_once();
  }

  v15 = sub_25B004E24();
  MEMORY[0x28223BE20](v15);
  v21[-2] = a1;
  v16 = a2 & 1;
  LOBYTE(v21[-1]) = a2 & 1;
  sub_25AF48EBC(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnimateEditModeForAnimationsEffect);
  v17 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v18 = v17 + v5;
  v19 = swift_allocObject();
  sub_25AF49024(v6, v19 + v17, type metadata accessor for AnimateEditModeForAnimationsEffect);
  *(v19 + v18) = v16;
  sub_25B004764();

  (*(v22 + 8))(v9, v23);
}

uint64_t sub_25AF47D20(uint64_t a1, char a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) + 24));
  if (*(v4 + 16) == (a2 & 1))
  {
    *(v4 + 16) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
    sub_25B004224();
  }
}

uint64_t sub_25AF47EC4(uint64_t a1, char a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  v5 = sub_25B0044B4();
  v6 = sub_25B005CA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25AF8E7DC(0xD000000000000049, 0x800000025B017380, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v12);
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s.%s setting editModePostAnimationsComplete", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  v9 = *(a1 + *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) + 24));
  if (*(v9 + 17) == (a2 & 1))
  {
    *(v9 + 17) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v9;
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
    sub_25B004224();
  }
}

void sub_25AF481D8()
{
  v1 = v0;
  v2 = type metadata accessor for ScrollToBottomOnEditModeEffect(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27FA30B10)
  {
    v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    v10 = v5;
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

    sub_25B004234();

    v6 = *(v5 + 16);

    v9[7] = v6;
    sub_25AF48EBC(v1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScrollToBottomOnEditModeEffect);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_25AF49024(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for ScrollToBottomOnEditModeEffect);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248E8, &qword_25B00C010);
    sub_25AF0F274(&qword_27FA248F0, &qword_27FA248E8, &qword_25B00C010, MEMORY[0x277CE04B0]);
    sub_25B005374();
  }

  else
  {
    __break(1u);
  }
}

void sub_25AF4842C()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v0 = sub_25B0044C4();
  __swift_project_value_buffer(v0, qword_27FA30C28);
  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_25AF8E7DC(0xD000000000000045, 0x800000025B0173D0, &v14);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v14);
    _os_log_impl(&dword_25AF0B000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v4, -1, -1);
    MEMORY[0x25F85EC30](v3, -1, -1);
  }

  v5 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_getKeyPath();
  v14 = v5;
  sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel, &protocol conformance descriptor for GlanceModel);
  v6 = v5;
  sub_25B004234();

  v7 = v6[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editModeToggledStayAtBottom];

  if (!qword_27FA30B10)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v8 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
  swift_getKeyPath();
  v14 = v8;
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);

  sub_25B004234();

  v9 = *(v8 + 17);

  if (v9 == 1 && v7)
  {
    v10 = sub_25B0044B4();
    v11 = sub_25B005C94();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_25AF8E7DC(0xD000000000000045, 0x800000025B0173D0, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v14);
      _os_log_impl(&dword_25AF0B000, v10, v11, "%s.%s animating to stay at bottom", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v13, -1, -1);
      MEMORY[0x25F85EC30](v12, -1, -1);
    }

    if (qword_27FA237A0 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_27FA30BE8);
    sub_25B004774();
  }

  else
  {
  }
}

uint64_t sub_25AF48914()
{
  v0 = sub_25B004804();
  MEMORY[0x28223BE20](v0 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0047E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330);
  sub_25B005524();
}

uint64_t sub_25AF48A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
  sub_25B004234();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25AF48B50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel, &unk_25B013C30);
  sub_25B004234();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AnimateEditModeForAnimationsEffect(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330) + 32);
  v7 = sub_25B004804();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_25AF48D90(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t sub_25AF48EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF48F24()
{
  v1 = *(type metadata accessor for ScrollToBottomOnEditModeEffect(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0, &unk_25B00C330) + 32);
  v6 = sub_25B004804();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF49024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25AF4908C()
{
  type metadata accessor for ScrollToBottomOnEditModeEffect(0);

  sub_25AF4842C();
}

uint64_t sub_25AF49128()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25AF49170()
{
  result = qword_27FA24910;
  if (!qword_27FA24910)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248F8, &qword_25B00C040);
    sub_25AF491F4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24910);
  }

  return result;
}

unint64_t sub_25AF491F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24918;
  if (!qword_27FA24918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24918);
  }

  return result;
}

uint64_t sub_25AF49248(uint64_t a1, double *a2)
{
  v2 = *a2;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v4 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    swift_beginAccess();
    if (*(v6 + 96) == v2)
    {
      *(v6 + 96) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_25AF46B98(&qword_27FA23D18, type metadata accessor for ButtonLayout, &protocol conformance descriptor for ButtonLayout);

      sub_25B004224();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF49430(uint64_t result, double a2, double a3)
{
  if (qword_27FA30B10)
  {
    v3 = result;
    v6 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
    if (*(v6 + 16) == a3)
    {
      *(v6 + 16) = a3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_25AF46B98(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel, &unk_25B00E114);

      sub_25B004224();
    }

    *(v3 + OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_contentViewHeight) = a3;
    if (*(v6 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) == a2)
    {
      *(v6 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) = a2;
    }

    else
    {
      v8 = swift_getKeyPath();
      MEMORY[0x28223BE20](v8);
      sub_25AF46B98(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel, &unk_25B00E114);
      sub_25B004224();
    }

    *(v3 + OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_scrollOffset) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25AF496E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA24930;
  if (!qword_27FA24930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24930);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA01_C16Modifier_ContentVy17NanoControlCenter34AnimateEditModeForAnimationsEffect33_C68D0794524084D7CF592CFC85874B6BLLVG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_25AF0F274(a4, a2, a3, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF49850()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24900, &qword_25B00C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248F8, &qword_25B00C040);
  sub_25AF0F274(&qword_27FA24908, &qword_27FA24900, &qword_25B00C048, MEMORY[0x277CE04B0]);
  sub_25AF49170();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF4990C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24920, qword_25B00C0A0);
  v0 = sub_25AF0F274(&qword_27FA24928, &qword_27FA24920, qword_25B00C0A0, MEMORY[0x277CE04B0]);
  sub_25AF496E8(v0, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF49A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a9;
  v39 = a7;
  v48 = a6;
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v42 = *(a8 - 8);
  v43 = a1;
  v49 = a10;
  v38 = a11;
  MEMORY[0x28223BE20](a1);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25B005674();
  v13 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MaterialOrColorEffect(0, a8, a11, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = sub_25B004864();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v37 - v27;
  (*(v13 + 16))(v15, v43, v40, v26);
  v29 = v41;
  (*(v42 + 16))(v41, v44, a8);
  KeyPath = swift_getKeyPath();
  v31 = v15;
  v32 = v45;
  sub_25AF49DE4(v31, v29, v45, v46, v47, v48, KeyPath, 0, v20, a8, v38);
  sub_25AF49F2C(v32);

  v33 = v49;
  MEMORY[0x25F85D150](v20, v39, v17, v49);
  (*(v18 + 8))(v20, v17);
  WitnessTable = swift_getWitnessTable();
  v51 = v33;
  v52 = WitnessTable;
  swift_getWitnessTable();
  sub_25AFB4FC4();
  v35 = *(v22 + 8);
  v35(v24, v21);
  sub_25AFB4FC4();
  return (v35)(v28, v21);
}

uint64_t sub_25AF49DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  v20 = sub_25B005674();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v22 = type metadata accessor for MaterialOrColorEffect(0, a11, a12, v21);
  (*(*(a11 - 8) + 32))(a9 + v22[9], a2, a11);
  *(a9 + v22[10]) = a3;
  *(a9 + v22[11]) = a4;
  *(a9 + v22[12]) = a5;
  *(a9 + v22[13]) = a6;
  v23 = a9 + v22[14];
  *v23 = a7;
  *(v23 + 8) = a8 & 1;
  v24 = a9 + v22[15];
  result = swift_getKeyPath();
  *v24 = result;
  *(v24 + 8) = 0;
  return result;
}

uint64_t sub_25AF49F2C(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

void sub_25AF49F58(uint64_t a1, double a2)
{
  sub_25B005674();
  if (v2 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_25AF4A598(319);
      if (v4 <= 0x3F)
      {
        sub_25AF4A5F0(319, &qword_27FA24270, &qword_27FA24278, qword_25B00AFD0);
        if (v5 <= 0x3F)
        {
          sub_25AF4A5F0(319, &qword_27FA249D0, &qword_27FA249D8, qword_25B00C1B0);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25AF4A06C(unsigned __int8 *a1, unsigned int a2, uint64_t a3, double a4)
{
  v7 = sub_25B005674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v7 - 8) + 64) + v12;
  v15 = *(v10 + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 <= 3)
  {
    v17 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v22 = (v20 - 1) << (8 * v16);
    if (v16 <= 3)
    {
      v23 = *a1;
    }

    else
    {
      v22 = 0;
      v23 = *a1;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = a1[v16];
    if (a1[v16])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v9 == v13)
  {
    v24 = *(v8 + 48);

    return v24(a1);
  }

  else
  {
    v25 = &a1[v14] & ~v12;
    if (v11 == v13)
    {
      v26 = *(v10 + 48);

      return v26(v25, v11);
    }

    else
    {
      v27 = *((((v15 + v25) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      if ((v27 + 1) >= 2)
      {
        return v27;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_25AF4A2D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  v9 = *(sub_25B005674() - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((((((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v10 == v16)
      {
        v26 = *(v9 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = &a1[v17] & ~v14;
        if (v12 == v16)
        {
          v28 = *(v11 + 56);

          v28(v27, a2, v12);
        }

        else
        {
          v29 = ((((v19 + v27) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v29 = 0;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v29 = a2;
          }
        }
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_29:
      if (v23 == 2)
      {
        *&a1[v20] = v25;
      }

      else
      {
        *&a1[v20] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_25AF4A598(uint64_t a1)
{
  if (!qword_27FA249C8)
  {
    type metadata accessor for ControlCenterStyle.VisualsModel(255);
    v1 = sub_25B005E04();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA249C8);
    }
  }
}

void sub_25AF4A5F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25B0045A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25AF4A688(uint64_t a1)
{
  v3 = sub_25B004B14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_25B005CC4();
    v9 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

void sub_25AF4A7DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v110 = a1;
  v112 = a3;
  v6 = *(a2 + 16);
  v95 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v94 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = sub_25B005814();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getWitnessTable();
  v9 = sub_25B004D14();
  WitnessTable = swift_getWitnessTable();
  v120 = v9;
  v121 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v101 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v98 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v97 = &v80[-v14];
  v87 = sub_25B005674();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25B005694();
  v113 = *(v16 - 8);
  v114 = v16;
  MEMORY[0x28223BE20](v16);
  v92 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v104 = &v80[-v19];
  MEMORY[0x28223BE20](v20);
  v102 = &v80[-v21];
  v90 = sub_25B0054F4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v23 = &v80[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v88 = &v80[-v25];
  v26 = *(a2 + 24);
  v115 = v6;
  v116 = v9;
  v120 = v9;
  v121 = v6;
  v105 = WitnessTable;
  v122 = WitnessTable;
  v123 = v26;
  v103 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v93 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v80[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v91 = &v80[-v31];
  v106 = v32;
  v111 = OpaqueTypeMetadata2;
  v33 = sub_25B004C84();
  v108 = *(v33 - 8);
  v109 = v33;
  MEMORY[0x28223BE20](v33);
  v107 = &v80[-v34];
  v35 = sub_25B004B14();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v80[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = *(v4 + *(a2 + 40));
  if (v40 == 2)
  {
    if (!*(v4 + *(a2 + 52)))
    {
      goto LABEL_12;
    }

    v82 = v37;
    if (qword_27FA30B10)
    {
      v84 = *(v4 + *(a2 + 44));
      v83 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
      v44 = sub_25AF4A688(a2);
      v45 = v4 + *(a2 + 60);
      v46 = *v45;
      if (*(v45 + 8) == 1)
      {
        LOBYTE(v120) = *v45;
      }

      else
      {
        v81 = v44;

        sub_25B005CC4();
        v47 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v46, 0);
        (*(v36 + 8))(v39, v82);
        v44 = v81;
        LOBYTE(v46) = v120;
      }

      v117 = v46;
      v43 = sub_25AFA8BE8(v84, v83, v44, &v117);
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v41 = *(v4 + *(a2 + 40));
  if (v40 != 1)
  {
    goto LABEL_16;
  }

  v41 = *(v4 + *(a2 + 52));
  if (!v41)
  {
    goto LABEL_16;
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_25AF4A688(a2);
  if (swift_weakLoadStrong())
  {
    v42 = [objc_opt_self() systemWhiteColor];

    if (v42)
    {
      v43 = sub_25B005434();
LABEL_15:
      v41 = v43;
      goto LABEL_16;
    }
  }

LABEL_12:
  v41 = 0;
LABEL_16:
  if (*(v4 + *(a2 + 48)))
  {
    sub_25AF49F2C(v40);
    if (v41)
    {

      v48 = v85;
      sub_25B005664();
      v49 = v92;
      sub_25B005684();

      (*(v86 + 8))(v48, v87);
      v50 = v115;
      v102 = v41;
    }

    else
    {
      v49 = v92;
      sub_25B005684();
      v102 = 0;
      v50 = v115;
    }

    (*(v113 + 32))(v104, v49, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E0, &qword_25B00C228);
    sub_25B0057E4();
    *(swift_allocObject() + 16) = xmmword_25B00A900;
    v67 = v4 + *(a2 + 36);
    v68 = v50;
    (*(v95 + 16))(v94, v67, v50);
    v69 = v103;
    sub_25B0057F4();
    v70 = v96;
    sub_25B005804();
    v71 = swift_checkMetadataState();
    v72 = v98;
    v60 = v105;
    sub_25B0051B4();
    (*(v99 + 8))(v70, v100);
    v120 = v71;
    v121 = v60;
    swift_getOpaqueTypeConformance2();
    v73 = v97;
    v74 = v111;
    sub_25AFB4FC4();
    v75 = *(v101 + 8);
    v75(v72, v74);
    sub_25AFB4FC4();
    v120 = v71;
    v65 = v68;
    v66 = v69;
    v121 = v65;
    v122 = v60;
    v123 = v69;
    swift_getOpaqueTypeConformance2();
    v64 = v107;
    sub_25AFA89E0(v72, v106, v74);

    v75(v72, v74);
    v75(v73, v74);
    (*(v113 + 8))(v104, v114);
  }

  else
  {
    sub_25AF49F2C(v40);
    v51 = v102;
    sub_25B005684();
    sub_25B0054D4();
    (*(v113 + 8))(v51, v114);
    v52 = v88;
    sub_25B0054E4();
    v102 = v41;
    v53 = *(v89 + 8);
    v54 = v23;
    v55 = v90;
    v53(v54, v90);
    v56 = swift_checkMetadataState();
    v57 = v115;
    v58 = v105;
    v59 = v103;
    sub_25B005134();
    v53(v52, v55);
    v60 = v58;
    v120 = v56;
    v121 = v57;
    v122 = v58;
    v123 = v59;
    swift_getOpaqueTypeConformance2();
    v61 = v91;
    v62 = v106;
    sub_25AFB4FC4();
    v63 = *(v93 + 8);
    v63(v29, v62);
    sub_25AFB4FC4();
    v120 = v56;
    v121 = v58;
    swift_getOpaqueTypeConformance2();
    v64 = v107;
    v65 = v115;
    v66 = v59;
    sub_25AFA88E8(v29, v62);

    v63(v29, v62);
    v63(v61, v62);
  }

  v76 = v116;
  v120 = v116;
  v121 = v65;
  v122 = v60;
  v123 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v76;
  v121 = v60;
  v78 = swift_getOpaqueTypeConformance2();
  v118 = OpaqueTypeConformance2;
  v119 = v78;
  v79 = v109;
  swift_getWitnessTable();
  sub_25AFB4FC4();
  (*(v108 + 8))(v64, v79);
}

uint64_t sub_25AF4B5E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MaterialOrColorEffect(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_25B004D14();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_25B004C84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void *sub_25AF4B750(int64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    v26 = a2 + 32;
    do
    {
      v27 = v7;
      v7 = (v5 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(v7 + 5);
        v33 = *(v7 + 4);
        v34[0] = v9;
        *(v34 + 10) = *(v7 + 90);
        v10 = *(v7 + 1);
        v29 = *v7;
        v30 = v10;
        v11 = *(v7 + 3);
        v31 = *(v7 + 2);
        v32 = v11;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }

        sub_25AF50200(&v29, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25AFCD594(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          v6 = sub_25AFCD594((v12 > 1), v13 + 1, 1, v6);
        }

        *(v6 + 2) = v14;
        v15 = &v6[112 * v13];
        v16 = v29;
        v17 = v31;
        *(v15 + 3) = v30;
        *(v15 + 4) = v17;
        *(v15 + 2) = v16;
        v18 = v32;
        v19 = v33;
        v20 = v34[0];
        *(v15 + 122) = *(v34 + 10);
        *(v15 + 6) = v19;
        *(v15 + 7) = v20;
        *(v15 + 5) = v18;
        if (v14 >= a1)
        {
          break;
        }

        ++v8;
        v7 += 14;
        if (v4 == v2)
        {
          v7 = v27;
          goto LABEL_18;
        }
      }

      v7 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25AFCD6B8(0, v27[2] + 1, 1, v27);
      }

      v5 = v26;
      v22 = v7[2];
      v21 = v7[3];
      if (v22 >= v21 >> 1)
      {
        v7 = sub_25AFCD6B8((v21 > 1), v22 + 1, 1, v7);
      }

      v7[2] = v22 + 1;
      v7[v22 + 4] = v6;

      v6 = MEMORY[0x277D84F90];
    }

    while (v4 != v2);
LABEL_18:
    if (!*(v6 + 2))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_24:

      return v7;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v7 = sub_25AFCD6B8(0, v7[2] + 1, 1, v7);
  }

  v24 = v7[2];
  v23 = v7[3];
  if (v24 >= v23 >> 1)
  {
    v7 = sub_25AFCD6B8((v23 > 1), v24 + 1, 1, v7);
  }

  v7[2] = v24 + 1;
  v7[v24 + 4] = v6;
  return v7;
}

void *sub_25AF4B9E4(int64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 64;
  v6 = MEMORY[0x277D84F90];
  v22 = a2 + 64;
  v23 = MEMORY[0x277D84F90];
  v25 = v4;
LABEL_2:
  v7 = (v5 + 40 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v2 = sub_25AFCD6DC(0, v2[2] + 1, 1, v2);
      goto LABEL_18;
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_24;
    }

    v24 = v3 + 1;
    v2 = *(v7 - 4);
    v8 = *(v7 - 3);
    v9 = *(v7 - 2);
    v10 = *(v7 - 1);
    v11 = *v7;
    sub_25AF181DC(v2, v8, v9, v10, *v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_25AFCD450(0, *(v6 + 2) + 1, 1, v6);
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v6 = sub_25AFCD450((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 2) = v14;
    v15 = &v6[40 * v13];
    *(v15 + 4) = v2;
    *(v15 + 5) = v8;
    *(v15 + 6) = v9;
    *(v15 + 7) = v10;
    v15[64] = v11;
    ++v3;
    v7 += 40;
    v4 = v25;
    if (v14 >= a1)
    {

      v16 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_25AFCD6DC(0, v23[2] + 1, 1, v23);
      }

      v18 = v16[2];
      v17 = v16[3];
      v2 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_25AFCD6DC((v17 > 1), v18 + 1, 1, v16);
      }

      v16[2] = v2;
      v23 = v16;
      v16[v18 + 4] = v6;

      v3 = v24;
      v5 = v22;
      v6 = MEMORY[0x277D84F90];
      goto LABEL_2;
    }
  }

  if (!*(v6 + 2))
  {

    return v23;
  }

  v2 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v20 = v2[2];
  v19 = v2[3];
  if (v20 >= v19 >> 1)
  {
    v2 = sub_25AFCD6DC((v19 > 1), v20 + 1, 1, v2);
  }

  v2[2] = v20 + 1;
  v2[v20 + 4] = v6;
  return v2;
}

uint64_t sub_25AF4BD28()
{

  return swift_deallocClassInstance();
}

int *sub_25AF4BD84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25B004194();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  sub_25B004184();
  if ((a1 - 1) < 2)
  {
    v11 = a1 != 1;
    if (a1 == 1)
    {
      v12 = 0x4018000000000000;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == 1)
    {
      v13 = 0.5;
    }

    else
    {
      v13 = 1.75;
    }

    v14 = qword_25B00C230[a1 != 1];
    *v28 = dbl_25B00C240[a1 != 1];
    v15 = *(v5 + 32);
    v15(v7, v10, v4);
    if (a1 == 2)
    {
      v16 = 0.5;
    }

    else
    {
      v16 = 1.2;
    }

    v15(a2, v7, v4);
    v17 = 0;
    v18 = 0;
    v19 = 15.0;
    v20 = 0.0;
    v21 = 1.0;
    v22 = 1;
    v23 = 1.0;
    v24 = 0.0;
    goto LABEL_14;
  }

  if (!a1)
  {
    (*(v5 + 32))(a2, v10, v4);
    v22 = 0;
    v11 = 0;
    v12 = 0;
    v28[0] = 1.75;
    v13 = 0.5;
    v24 = 15.0;
    v18 = 0x4018000000000000;
    v20 = 1.0;
    v21 = 0.0;
    v14 = 0x3F9999999999999ALL;
    v23 = 1.2;
    v17 = 1;
    v16 = 1.0;
    v19 = 0.0;
LABEL_14:
    result = type metadata accessor for ButtonAnimator.Params(0);
    *&a2[result[5]] = a1;
    *&a2[result[6]] = 100;
    a2[result[7]] = v17;
    a2[result[8]] = v22;
    *&a2[result[9]] = v21;
    *&a2[result[10]] = v20;
    *&a2[result[11]] = v23;
    *&a2[result[12]] = v16;
    v26 = &a2[result[13]];
    *v26 = v18;
    v26[8] = v11;
    v27 = &a2[result[14]];
    *v27 = v12;
    v27[8] = v11;
    *&a2[result[15]] = v24;
    *&a2[result[16]] = v19;
    *&a2[result[17]] = v13;
    *&a2[result[18]] = v14;
    *&a2[result[19]] = v28[0];
    return result;
  }

  type metadata accessor for ButtonsTransition(0);
  v28[1] = a1;
  result = sub_25B0061E4();
  __break(1u);
  return result;
}

uint64_t sub_25AF4C064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0, &unk_25B00C2A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_25B005B64();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_25B005B34();

  v12 = sub_25B005B24();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_25AF6C7F8(0, 0, v10, &unk_25B00C320, v14);
}

uint64_t sub_25AF4C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_25B005B34();
  v5[7] = sub_25B005B24();
  v7 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF4C304, v7, v6);
}

uint64_t sub_25AF4C304()
{
  v10 = v0;
  v1 = *(v0 + 40);

  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v2 = sub_25B0044C4();
    __swift_project_value_buffer(v2, qword_27FA30C28);
    v3 = sub_25B0044B4();
    v4 = sub_25B005CB4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_25AF8E7DC(0xD000000000000062, 0x800000025B0174F0, &v9);
      _os_log_impl(&dword_25AF0B000, v3, v4, "%s continuation was never resumed. This indicates serious programmer error. Resuming continuation on sync rescue codepath.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x25F85EC30](v6, -1, -1);
      MEMORY[0x25F85EC30](v5, -1, -1);
    }

    *(v0 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0, &unk_25B00C2A0);
    sub_25B005B04();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25AF4C4CC(uint64_t a1, uint64_t a2, char a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0, &unk_25B00C2A0);
  sub_25B005B04();
}

uint64_t sub_25AF4C5B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v310 = a6;
  v296 = a2;
  v303 = a1;
  v9 = sub_25B005834();
  v281 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v279 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_25B005854();
  v278 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v277 = &v271 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B005824();
  v275 = *(v12 - 8);
  v276 = v12;
  MEMORY[0x28223BE20](v12);
  v274 = (&v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = sub_25B005884();
  v289 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v285 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v283 = &v271 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8, &qword_25B00C298);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v286 = &v271 - v21;
  MEMORY[0x28223BE20](v22);
  *&v309 = &v271 - v23;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0, &unk_25B00C2A0);
  v24 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v290 = &v271 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v287 = &v271 - v27;
  v288 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v271 - v30;
  v32 = type metadata accessor for ButtonAnimator.Params(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v271 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = -1.0;
  }

  v291 = v34;
  sub_25AF4BD84(a3, v34);
  v36 = [objc_opt_self() processInfo];
  v37 = [v36 isLowPowerModeEnabled];

  LODWORD(v307) = a4;
  if (v37)
  {
    if (a4)
    {
      v41 = v291;
      if (qword_27FA23740 != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_7;
    }

    v294 = 0;
    v295 = 0;
    v46 = v32[7];
    v43 = v291;
LABEL_31:
    v42 = *(v43 + v46);
    v49 = 0.0;
    v50 = 9;
    goto LABEL_32;
  }

  *(&v325[0] + 1) = &type metadata for ControlCenterFlags;
  *&v325[1] = sub_25AF1935C(v38, v39, v40);
  LOBYTE(v324) = 3;
  v44 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v324);
  if ((v44 & 1) == 0)
  {
    v43 = v291;
    if (v307)
    {
      if (qword_27FA23738 != -1)
      {
        swift_once();
      }

      v47 = qword_27FA23740;
      v295 = qword_27FA30B18;

      if (v47 != -1)
      {
        swift_once();
      }

      v48 = v291;
      v42 = v291[v32[8]];
      v294 = qword_27FA30B20;

      v43 = v48;
      goto LABEL_22;
    }

    v294 = 0;
    v295 = 0;
    v46 = v32[7];
    goto LABEL_31;
  }

  if (v307)
  {
    if (qword_27FA23738 != -1)
    {
      swift_once();
    }

    v45 = qword_27FA23740;
    v295 = qword_27FA30B18;

    if (v45 != -1)
    {
      swift_once();
    }

    v294 = qword_27FA30B20;
  }

  else
  {
    v294 = 0;
    v295 = 0;
  }

  v43 = v291;
  v51 = v32[14];
  v52 = &v291[v32[13]];
  v53 = 0.0;
  if (v52[8])
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *v52;
  }

  if (v291[v51 + 8] == 1)
  {
    v54 = *&v291[v32[15]];
    v55 = *&v291[v32[16]];
    if ((v307 & 1) == 0)
    {
      goto LABEL_175;
    }

LABEL_174:
    v42 = *(v43 + v32[8]);
    v50 = 10;
    v49 = v53;
    goto LABEL_33;
  }

  v54 = *&v291[v32[15]];
  v55 = *&v291[v32[16]];
  v43 = v291;
  if (v307)
  {
    v53 = *&v291[v51];
    goto LABEL_174;
  }

LABEL_175:
  v42 = *(v43 + v32[7]);
  v50 = 9;
LABEL_33:
  while (1)
  {
    v56 = *(v43 + v32[v50]);
    v57 = v42 ? 10.0 : 0.0;
    sub_25AFEC930();
    v59 = sub_25AF4B9E4(2, v58);

    v299 = v59[2];
    if (!v299)
    {
      break;
    }

    v308 = v32;
    v32 = v9;
    v302 = v59;
    v60 = v24 + 48;
    v61 = *(v24 + 48);
    v19 = v303;
    v62 = v24;
    v63 = v304;
    v64 = v61(v303, 1, v304) != 1;
    v9 = swift_allocObject();
    *(v9 + 16) = v64;
    v65 = v309;
    sub_25AF25FC4(v19, v309, &qword_27FA249E8, &qword_25B00C298);
    v300 = v61;
    v301 = v60;
    v66 = v61(v65, 1, v63);
    v271 = v32;
    v282 = v62;
    v273 = v9;
    if (v66 == 1)
    {
      sub_25AF2602C(v65, &qword_27FA249E8, &qword_25B00C298);
      v272 = 0;
    }

    else
    {
      v69 = *(v62 + 32);
      v69(v31, v65, v63);
      v32 = v287;
      (*(v62 + 16))(v287, v31, v63);
      v70 = (*(v62 + 80) + 24) & ~*(v62 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = v9;
      v69((v71 + v70), v32, v63);
      sub_25B0044E4();
      v19 = swift_allocObject();

      v272 = sub_25B0044F4();
      (*(v62 + 8))(v31, v63);
    }

    v338 = 0;
    sub_25B0045D4();
    v72 = 0;
    v73 = *&v291[*(v308 + 18)];
    v74 = -(v35 * v49);
    v75 = v307;
    v76 = v35 * v49;
    v305 = 0;
    v306 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v293 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
    v292 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
    if ((v307 & 1) == 0)
    {
      v55 = v54;
    }

    __asm { FMOV            V0.2D, #1.0 }

    v82 = v302;
    v309 = _Q0;
    do
    {
      v31 = v82[v72 + 4];
      v24 = *(v31 + 2);
      if (!v24)
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v308 = v72;
      v83 = *(v31 + 3);
      v390 = *(v31 + 2);
      v391 = v83;
      v392 = v31[64];
      v84 = v310;
      v85 = v306;
      swift_beginAccess();

      sub_25AF196CC(&v390, &v324);
      v9 = sub_25AF7EB28((v84 + v85), &v390, v84);
      swift_endAccess();
      v324 = v390;
      v325[0] = v391;
      LOBYTE(v325[1]) = v392;
      sub_25AF7EF38(&v324, v9);
      v19 = *(v9 + 48);
      if (v19 <= 0xFD && (v19 & 0xC0) == 0x40)
      {
        v297 = v24;
        v87 = *(v9 + 16);
        v86 = *(v9 + 24);
        v88 = *(v9 + 32);
        v89 = *(v9 + 40);
        v90 = v310;
        v91 = v293;
        swift_beginAccess();
        v92 = *(v90 + v91);
        v93 = *(v92 + 16);
        v298 = v19;
        sub_25AF181DC(v87, v86, v88, v89, v19);
        if (v93 && (v94 = sub_25AF8F1B4(v87, v86, v88, v89), (v95 & 1) != 0))
        {
          v96 = v88;
          v97 = v86;
          v98 = v87;
          v99 = *(*(v92 + 56) + 8 * v94);
          swift_endAccess();
          v19 = *(v99 + 16) != 0;
        }

        else
        {
          v96 = v88;
          v97 = v86;
          v98 = v87;
          swift_endAccess();
          v19 = 0;
        }

        v100 = v310;
        v101 = v292;
        swift_beginAccess();
        v102 = *(v100 + v101);
        v103 = v98;
        v104 = v97;
        v105 = v96;
        v106 = v89;
        if (*(v102 + 16) && (v107 = sub_25AF8F1B4(v103, v104, v105, v89), (v108 & 1) != 0))
        {
          v109 = *(*(v102 + 56) + 8 * v107);
          swift_endAccess();
          v110 = v298;
          if (v19)
          {
            v111 = 1;
            if (!*(v109 + 16))
            {
              v111 = 2;
            }

            goto LABEL_64;
          }

LABEL_63:
          v111 = 0;
        }

        else
        {
          swift_endAccess();
          v110 = v298;
          if (!v19)
          {
            goto LABEL_63;
          }

          v111 = 2;
        }

LABEL_64:
        v112 = *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
        *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v111;
        if (v111 != v112)
        {
          sub_25AFB9D68();
        }

        sub_25AF231D0(v103, v104, v105, v106, v110);
        v75 = v307;
        v24 = v297;
      }

      v113 = sub_25AFB6D8C();

      if (v24 == 1)
      {

        v9 = 0;
        v19 = v304;
        v32 = &qword_25B011DD0;
      }

      else
      {
        v32 = &qword_25B011DD0;
        if (v24 > *(v31 + 2))
        {
          goto LABEL_189;
        }

        v114 = &v31[40 * v24 + 32];
        v115 = *(v114 - 40);
        v116 = *(v114 - 24);
        v389 = *(v114 - 8);
        v387 = v115;
        v388 = v116;
        sub_25AF196CC(&v387, &v324);

        v117 = v310;
        v118 = v306;
        swift_beginAccess();
        v119 = sub_25AF7EB28((v117 + v118), &v387, v117);
        swift_endAccess();
        v324 = v387;
        v325[0] = v388;
        LOBYTE(v325[1]) = v389;
        sub_25AF7EF38(&v324, v119);
        v120 = *(v119 + 48);
        if (v120 <= 0xFD && (v120 & 0xC0) == 0x40)
        {
          v122 = *(v119 + 16);
          v121 = *(v119 + 24);
          v124 = *(v119 + 32);
          v123 = *(v119 + 40);
          *&v324 = v122;
          *(&v324 + 1) = v121;
          *&v325[0] = v124;
          *(&v325[0] + 1) = v123;
          sub_25AF181DC(v122, v121, v124, v123, v120);
          v125 = sub_25AF81740(&v324);
          v126 = *(v119 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
          *(v119 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v125;
          if (v125 != v126)
          {
            sub_25AFB9D68();
          }

          sub_25AF1C414(&v387);
          sub_25AF231D0(v122, v121, v124, v123, v120);
          v19 = v304;
          v32 = &qword_25B011DD0;
        }

        else
        {
          sub_25AF1C414(&v387);
          v19 = v304;
        }

        v9 = sub_25AFB6D8C();

        v75 = v307;
      }

      v127 = v308;
      v128 = v308 + 1;
      v129 = v55 * (v308 + 1);
      if (v300(v303, 1, v19) != 1)
      {
        v35 = v73 * v127;
        if (v295)
        {
          v32 = sub_25B0056D4();
          if (v294)
          {
LABEL_83:
            v137 = sub_25B0056D4();
            v138 = v296;
            if (!v296)
            {
              goto LABEL_45;
            }

            goto LABEL_89;
          }
        }

        else
        {
          v32 = 0;
          if (v294)
          {
            goto LABEL_83;
          }
        }

        v137 = 0;
        v138 = v296;
        if (!v296)
        {
LABEL_45:

LABEL_46:

          sub_25AF1C414(&v390);
          goto LABEL_47;
        }

LABEL_89:
        v308 = v137;
        v144 = *(v138 + 16);

        [v144 lock];
        v19 = *(v138 + 24);
        [v144 unlock];
        if (v19)
        {

          sub_25AF1C414(&v390);

          goto LABEL_47;
        }

        if (v75)
        {
          *&v332 = v57;
          *(&v332 + 1) = v74;
          *v333 = v129;
          *(v333 + 8) = v309;
          *(&v333[1] + 1) = 0x3FF0000000000000;
          v334 = v32;
          v351 = v332;
          v352 = v333[0];
          v353 = v333[1];
          v354 = v32;
          v145 = *(v113 + 5);
          v146 = *(v113 + 6);
          v147 = *(v113 + 8);
          v336[1] = *(v113 + 7);
          v337 = v147;
          v148 = *(v113 + 6);
          v149 = *(v113 + 7);
          v150 = *(v113 + 5);
          v335 = v145;
          v336[0] = v148;
          v314 = v150;
          v315 = v146;
          v316 = v149;
          v151 = v337;
          if (v337 == 1)
          {
            if (v32 == 1)
            {
              v152 = *(v113 + 6);
              v324 = *(v113 + 5);
              v325[0] = v152;
              v325[1] = *(v113 + 7);
              *&v326 = 1;
              *(&v326 + 1) = *(&v337 + 1);
              sub_25AF4F820(&v332, &v321);
              sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
              sub_25AF4F820(&v332, &v321);
              sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
              goto LABEL_134;
            }

LABEL_121:
            v324 = v314;
            v325[0] = v315;
            v325[1] = v316;
            v326 = v337;
            v327 = v332;
            v328 = v333[0];
            v329 = v333[1];
            v330 = v32;
            v331 = 0;
            sub_25AF4F820(&v332, &v321);
            sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF4F820(&v332, &v321);
            sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
            goto LABEL_122;
          }

          if (v32 == 1)
          {
            goto LABEL_121;
          }

          v321 = v332;
          v322[0] = v333[0];
          v322[1] = v333[1];
          v323 = v32;
          v356[0] = v332;
          v356[1] = v333[0];
          v356[2] = v333[1];
          v356[3] = v32;
          v206 = *(v113 + 5);
          v207 = *(v113 + 6);
          v355[2] = *(v113 + 7);
          v355[1] = v207;
          v355[0] = v206;
          v355[3] = v337;
          sub_25AF4F820(&v332, &v324);
          sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v332, &v324);
          v298 = sub_25AFBFC64(v355, v356);
          sub_25AF2602C(&v321, &qword_27FA249F0, &qword_25B011DD0);
          v324 = v314;
          v325[0] = v315;
          v325[1] = v316;
          v326 = v151;
          sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v335, &qword_27FA249F0, &qword_25B011DD0);
          if (v298)
          {
LABEL_134:
            v208 = *(v113 + 6);
            v324 = *(v113 + 5);
            v325[0] = v208;
            v209 = *(v113 + 8);
            v325[1] = *(v113 + 7);
            v326 = v209;
            v210 = v352;
            *(v113 + 5) = v351;
            *(v113 + 6) = v210;
            v211 = v354;
            *(v113 + 7) = v353;
            *(v113 + 8) = v211;
            goto LABEL_137;
          }

LABEL_122:
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v271 - 2) = v113;
          *(&v271 - 1) = &v351;
          *&v324 = v113;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
LABEL_126:
          v75 = v307;
          v192 = v305;
          sub_25B004224();
          v305 = v192;
          sub_25AF4F8A0(&v332);

LABEL_138:
          v19 = v308;
          *&v335 = v57;
          *(&v335 + 1) = v74;
          *v336 = v129;
          *(v336 + 8) = v309;
          *(&v336[1] + 1) = 0x3FF0000000000000;
          v337 = v32;
          sub_25AF4F8A0(&v335);
          if (!v9)
          {
            sub_25AFB6E40(v75 & 1, v19, v56);

            sub_25AF1C414(&v390);

            goto LABEL_47;
          }

          if (v75)
          {
            *&v321 = v57;
            *(&v321 + 1) = v76;
            *v322 = v129;
            *(v322 + 8) = v309;
            *(&v322[1] + 1) = 0x3FF0000000000000;
            v323 = v32;
            v339 = v321;
            v340 = v322[0];
            v341 = v322[1];
            v342 = v32;
            v217 = *(v9 + 80);
            v218 = *(v9 + 96);
            v219 = *(v9 + 128);
            v333[1] = *(v9 + 112);
            v334 = v219;
            v220 = *(v9 + 96);
            v221 = *(v9 + 112);
            v222 = *(v9 + 80);
            v332 = v217;
            v333[0] = v220;
            v318 = v222;
            v319 = v218;
            v320 = v221;
            v223 = v334;
            if (v334 == 1)
            {
              if (v32 == 1)
              {
                v224 = *(v9 + 96);
                v324 = *(v9 + 80);
                v325[0] = v224;
                v325[1] = *(v9 + 112);
                *&v326 = 1;
                *(&v326 + 1) = *(&v334 + 1);
                sub_25AF4F820(&v321, &v314);
                sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
                sub_25AF4F820(&v321, &v314);
                sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
                goto LABEL_155;
              }

LABEL_148:
              v324 = v318;
              v325[0] = v319;
              v325[1] = v320;
              v326 = v334;
              v327 = v321;
              v328 = v322[0];
              v329 = v322[1];
              v330 = v32;
              v331 = 0;
              sub_25AF4F820(&v321, &v314);
              sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
              sub_25AF4F820(&v321, &v314);
              sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
              goto LABEL_149;
            }

            if (v32 == 1)
            {
              goto LABEL_148;
            }

            v314 = v321;
            v315 = v322[0];
            v316 = v322[1];
            v317 = v32;
            v344[0] = v321;
            v344[1] = v322[0];
            v344[2] = v322[1];
            v344[3] = v32;
            v234 = *(v9 + 80);
            v235 = *(v9 + 112);
            v343[1] = *(v9 + 96);
            v343[2] = v235;
            v343[0] = v234;
            v343[3] = v334;
            sub_25AF4F820(&v321, &v324);
            sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF4F820(&v321, &v324);
            v298 = sub_25AFBFC64(v343, v344);
            sub_25AF2602C(&v314, &qword_27FA249F0, &qword_25B011DD0);
            v324 = v318;
            v325[0] = v319;
            v325[1] = v320;
            v326 = v223;
            sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF2602C(&v332, &qword_27FA249F0, &qword_25B011DD0);
            if (v298)
            {
LABEL_155:
              v236 = *(v9 + 96);
              v324 = *(v9 + 80);
              v325[0] = v236;
              v237 = *(v9 + 128);
              v325[1] = *(v9 + 112);
              v326 = v237;
              v238 = v340;
              *(v9 + 80) = v339;
              *(v9 + 96) = v238;
              v239 = v342;
              *(v9 + 112) = v341;
              *(v9 + 128) = v239;
              goto LABEL_158;
            }

LABEL_149:
            v230 = swift_getKeyPath();
            MEMORY[0x28223BE20](v230);
            *(&v271 - 2) = v9;
            *(&v271 - 1) = &v339;
            *&v324 = v9;
            sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
LABEL_153:
            v75 = v307;
            v233 = v305;
            sub_25B004224();
            v305 = v233;
            sub_25AF4F8A0(&v321);

LABEL_159:
            *&v324 = v57;
            *(&v324 + 1) = v76;
            *v325 = v129;
            *(v325 + 8) = v309;
            *(&v325[1] + 1) = 0x3FF0000000000000;
            v326 = v32;
            sub_25AF4F8A0(&v324);
            v19 = v308;
            sub_25AFB6E40(v75 & 1, v308, v56);
            sub_25AFB6E40(v75 & 1, v19, v56);

            sub_25AF1C414(&v390);

            goto LABEL_160;
          }

          *&v321 = v57;
          *(&v321 + 1) = v76;
          *v322 = v129;
          *(v322 + 8) = v309;
          *(&v322[1] + 1) = 0x3FF0000000000000;
          v323 = v32;
          v348 = v32;
          v347 = v322[1];
          v346 = v322[0];
          v345 = v321;
          v225 = *(v9 + 16);
          v226 = *(v9 + 32);
          v227 = *(v9 + 64);
          v333[1] = *(v9 + 48);
          v334 = v227;
          v332 = v225;
          v333[0] = v226;
          v228 = *(v9 + 32);
          v318 = *(v9 + 16);
          v319 = v228;
          v320 = *(v9 + 48);
          v229 = v227;
          if (v227 == 1)
          {
            if (v32 == 1)
            {
              v324 = v318;
              v325[0] = v319;
              v325[1] = v320;
              *&v326 = 1;
              *(&v326 + 1) = *(&v227 + 1);
              sub_25AF4F820(&v321, &v314);
              sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
              sub_25AF4F820(&v321, &v314);
              sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
              goto LABEL_157;
            }

LABEL_151:
            v324 = v318;
            v325[0] = v319;
            v325[1] = v320;
            v326 = v227;
            v327 = v321;
            v328 = v322[0];
            v329 = v322[1];
            v330 = v32;
            v331 = 0;
            sub_25AF4F820(&v321, &v314);
            sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF4F820(&v321, &v314);
            sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
          }

          else
          {
            v231 = *(v9 + 32);
            v311 = *(v9 + 16);
            v312 = v231;
            v313 = *(v9 + 48);
            if (v32 == 1)
            {
              goto LABEL_151;
            }

            v314 = v321;
            v315 = v322[0];
            v316 = v322[1];
            v317 = v32;
            v350[0] = v321;
            v350[1] = v322[0];
            v350[2] = v322[1];
            v350[3] = v32;
            v349[2] = v313;
            v349[1] = v312;
            v349[0] = v311;
            v349[3] = v227;
            sub_25AF4F820(&v321, &v324);
            sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF4F820(&v321, &v324);
            v298 = sub_25AFBFC64(v349, v350);
            sub_25AF2602C(&v314, &qword_27FA249F0, &qword_25B011DD0);
            v324 = v318;
            v325[0] = v319;
            v325[1] = v320;
            v326 = v229;
            sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF2602C(&v332, &qword_27FA249F0, &qword_25B011DD0);
            if (v298)
            {
LABEL_157:
              v240 = *(v9 + 16);
              v241 = *(v9 + 32);
              v242 = *(v9 + 64);
              v325[1] = *(v9 + 48);
              v326 = v242;
              v324 = v240;
              v325[0] = v241;
              v243 = v348;
              *(v9 + 48) = v347;
              *(v9 + 64) = v243;
              v244 = v346;
              *(v9 + 16) = v345;
              *(v9 + 32) = v244;
LABEL_158:
              sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
              goto LABEL_159;
            }
          }

          v232 = swift_getKeyPath();
          MEMORY[0x28223BE20](v232);
          *(&v271 - 2) = v9;
          *(&v271 - 1) = &v345;
          *&v324 = v9;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
          goto LABEL_153;
        }

        *&v332 = v57;
        *(&v332 + 1) = v74;
        *v333 = v129;
        *(v333 + 8) = v309;
        *(&v333[1] + 1) = 0x3FF0000000000000;
        v334 = v32;
        v360 = v32;
        v359 = v333[1];
        v358 = v333[0];
        v357 = v332;
        v156 = *(v113 + 1);
        v157 = *(v113 + 2);
        v158 = *(v113 + 4);
        v336[1] = *(v113 + 3);
        v337 = v158;
        v335 = v156;
        v336[0] = v157;
        v159 = *(v113 + 2);
        v314 = *(v113 + 1);
        v315 = v159;
        v316 = *(v113 + 3);
        v160 = v158;
        if (v158 == 1)
        {
          if (v32 == 1)
          {
            v324 = v314;
            v325[0] = v315;
            v325[1] = v316;
            *&v326 = 1;
            *(&v326 + 1) = *(&v158 + 1);
            sub_25AF4F820(&v332, &v321);
            sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
            sub_25AF4F820(&v332, &v321);
            sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
            goto LABEL_136;
          }

LABEL_124:
          v324 = v314;
          v325[0] = v315;
          v325[1] = v316;
          v326 = v158;
          v327 = v332;
          v328 = v333[0];
          v329 = v333[1];
          v330 = v32;
          v331 = 0;
          sub_25AF4F820(&v332, &v321);
          sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v332, &v321);
          sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
        }

        else
        {
          v190 = *(v113 + 2);
          v318 = *(v113 + 1);
          v319 = v190;
          v320 = *(v113 + 3);
          if (v32 == 1)
          {
            goto LABEL_124;
          }

          v321 = v332;
          v322[0] = v333[0];
          v322[1] = v333[1];
          v323 = v32;
          v362[0] = v332;
          v362[1] = v333[0];
          v362[2] = v333[1];
          v362[3] = v32;
          v361[2] = v320;
          v361[1] = v319;
          v361[0] = v318;
          v361[3] = v158;
          sub_25AF4F820(&v332, &v324);
          sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v332, &v324);
          v298 = sub_25AFBFC64(v361, v362);
          sub_25AF2602C(&v321, &qword_27FA249F0, &qword_25B011DD0);
          v324 = v314;
          v325[0] = v315;
          v325[1] = v316;
          v326 = v160;
          sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v335, &qword_27FA249F0, &qword_25B011DD0);
          if (v298)
          {
LABEL_136:
            v212 = *(v113 + 1);
            v213 = *(v113 + 2);
            v214 = *(v113 + 4);
            v325[1] = *(v113 + 3);
            v326 = v214;
            v324 = v212;
            v325[0] = v213;
            v215 = v360;
            *(v113 + 3) = v359;
            *(v113 + 4) = v215;
            v216 = v358;
            *(v113 + 1) = v357;
            *(v113 + 2) = v216;
LABEL_137:
            sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
            goto LABEL_138;
          }
        }

        v191 = swift_getKeyPath();
        MEMORY[0x28223BE20](v191);
        *(&v271 - 2) = v113;
        *(&v271 - 1) = &v357;
        *&v324 = v113;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
        goto LABEL_126;
      }

      if (v75)
      {
        *&v332 = v57;
        *(&v332 + 1) = v74;
        *v333 = v129;
        *(v333 + 8) = v309;
        *(&v333[1] + 1) = 0x3FF0000000000000;
        v334 = 0uLL;
        v375 = v332;
        v376 = v333[0];
        v377 = v333[1];
        v378 = 0uLL;
        v130 = *(v113 + 5);
        v131 = *(v113 + 6);
        v132 = *(v113 + 8);
        v336[1] = *(v113 + 7);
        v337 = v132;
        v133 = *(v113 + 6);
        v134 = *(v113 + 7);
        v135 = *(v113 + 5);
        v335 = v130;
        v336[0] = v133;
        v314 = v135;
        v315 = v131;
        v316 = v134;
        v19 = *(&v337 + 1);
        v136 = v337;
        if (v337 == 1)
        {
          v324 = v314;
          v325[0] = v315;
          v325[1] = v316;
          v326 = v337;
          v327 = v332;
          v328 = v333[0];
          v329 = v333[1];
          v330 = 0;
          v331 = 0;
          sub_25AF4F820(&v332, &v321);
          sub_25AF4F820(&v332, &v321);
          sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
LABEL_96:
          v153 = swift_getKeyPath();
          MEMORY[0x28223BE20](v153);
          *(&v271 - 2) = v113;
          *(&v271 - 1) = &v375;
          *&v324 = v113;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
          goto LABEL_99;
        }

        v321 = v332;
        v322[0] = v333[0];
        v322[1] = v333[1];
        v323 = 0uLL;
        v380[0] = v332;
        v380[1] = v333[0];
        v380[2] = v333[1];
        v380[3] = 0uLL;
        v161 = *(v113 + 5);
        v162 = *(v113 + 6);
        v379[2] = *(v113 + 7);
        v379[1] = v162;
        v379[0] = v161;
        v379[3] = v337;
        sub_25AF4F820(&v332, &v324);
        sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
        sub_25AF4F820(&v332, &v324);
        sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
        v163 = sub_25AFBFC64(v379, v380);
        sub_25AF2602C(&v335, &qword_27FA249F0, &qword_25B011DD0);
        sub_25AF2602C(&v321, &qword_27FA249F0, &qword_25B011DD0);
        v324 = v314;
        v325[0] = v315;
        v325[1] = v316;
        v326 = __PAIR128__(v19, v136);
        sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
        if ((v163 & 1) == 0)
        {
          goto LABEL_96;
        }

        v164 = *(v113 + 6);
        v324 = *(v113 + 5);
        v325[0] = v164;
        v165 = *(v113 + 8);
        v325[1] = *(v113 + 7);
        v326 = v165;
        v166 = v376;
        *(v113 + 5) = v375;
        *(v113 + 6) = v166;
        v167 = v378;
        *(v113 + 7) = v377;
        *(v113 + 8) = v167;
      }

      else
      {
        *&v332 = v57;
        *(&v332 + 1) = v74;
        *v333 = v129;
        *(v333 + 8) = v309;
        *(&v333[1] + 1) = 0x3FF0000000000000;
        v334 = 0uLL;
        v384 = 0uLL;
        v383 = v333[1];
        v382 = v333[0];
        v381 = v332;
        v139 = *(v113 + 1);
        v140 = *(v113 + 2);
        v141 = *(v113 + 4);
        v336[1] = *(v113 + 3);
        v337 = v141;
        v335 = v139;
        v336[0] = v140;
        v142 = *(v113 + 2);
        v314 = *(v113 + 1);
        v315 = v142;
        v316 = *(v113 + 3);
        v19 = *(&v141 + 1);
        v143 = v141;
        if (v141 == 1)
        {
          v324 = v314;
          v325[0] = v315;
          v325[1] = v316;
          v326 = v141;
          v327 = v332;
          v328 = v333[0];
          v329 = v333[1];
          v330 = 0;
          v331 = 0;
          sub_25AF4F820(&v332, &v321);
          sub_25AF4F820(&v332, &v321);
          sub_25AF25FC4(&v335, &v321, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
LABEL_98:
          v155 = swift_getKeyPath();
          MEMORY[0x28223BE20](v155);
          *(&v271 - 2) = v113;
          *(&v271 - 1) = &v381;
          *&v324 = v113;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
LABEL_99:
          v75 = v307;
          v19 = v305;
          sub_25B004224();
          v305 = v19;
          sub_25AF4F8A0(&v332);

          goto LABEL_108;
        }

        v154 = *(v113 + 2);
        v318 = *(v113 + 1);
        v319 = v154;
        v320 = *(v113 + 3);
        v321 = v332;
        v322[0] = v333[0];
        v322[1] = v333[1];
        v323 = 0uLL;
        v386[0] = v332;
        v386[1] = v333[0];
        v386[2] = v333[1];
        v386[3] = 0uLL;
        v385[2] = v320;
        v385[1] = v319;
        v385[0] = v318;
        v385[3] = v141;
        sub_25AF4F820(&v332, &v324);
        sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
        sub_25AF4F820(&v332, &v324);
        sub_25AF25FC4(&v335, &v324, &qword_27FA249F0, &qword_25B011DD0);
        v168 = sub_25AFBFC64(v385, v386);
        sub_25AF2602C(&v335, &qword_27FA249F0, &qword_25B011DD0);
        sub_25AF2602C(&v321, &qword_27FA249F0, &qword_25B011DD0);
        v324 = v314;
        v325[0] = v315;
        v325[1] = v316;
        v326 = __PAIR128__(v19, v143);
        sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
        if ((v168 & 1) == 0)
        {
          goto LABEL_98;
        }

        v169 = *(v113 + 1);
        v170 = *(v113 + 2);
        v171 = *(v113 + 4);
        v325[1] = *(v113 + 3);
        v326 = v171;
        v324 = v169;
        v325[0] = v170;
        v172 = v384;
        *(v113 + 3) = v383;
        *(v113 + 4) = v172;
        v173 = v382;
        *(v113 + 1) = v381;
        *(v113 + 2) = v173;
      }

      sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
LABEL_108:
      *&v335 = v57;
      *(&v335 + 1) = v74;
      *v336 = v129;
      *(v336 + 8) = v309;
      *(&v336[1] + 1) = 0x3FF0000000000000;
      v337 = 0uLL;
      sub_25AF4F8A0(&v335);
      if (!v9)
      {
        sub_25AFB6E40(v75 & 1, 0, v56);
        goto LABEL_46;
      }

      if (v75)
      {
        *&v321 = v57;
        *(&v321 + 1) = v76;
        *v322 = v129;
        *(v322 + 8) = v309;
        *(&v322[1] + 1) = 0x3FF0000000000000;
        v323 = 0uLL;
        v363 = v321;
        v364 = v322[0];
        v365 = v322[1];
        v366 = 0uLL;
        v174 = *(v9 + 80);
        v175 = *(v9 + 96);
        v176 = *(v9 + 128);
        v333[1] = *(v9 + 112);
        v334 = v176;
        v177 = *(v9 + 96);
        v178 = *(v9 + 112);
        v179 = *(v9 + 80);
        v332 = v174;
        v333[0] = v177;
        v318 = v179;
        v319 = v175;
        v320 = v178;
        v19 = *(&v334 + 1);
        v180 = v334;
        if (v334 == 1)
        {
          v324 = v318;
          v325[0] = v319;
          v325[1] = v320;
          v326 = v334;
          v327 = v321;
          v328 = v322[0];
          v329 = v322[1];
          v330 = 0;
          v331 = 0;
          sub_25AF4F820(&v321, &v314);
          sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v321, &v314);
          sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
        }

        else
        {
          v314 = v321;
          v315 = v322[0];
          v316 = v322[1];
          v317 = 0uLL;
          v368[0] = v321;
          v368[1] = v322[0];
          v368[2] = v322[1];
          v368[3] = 0uLL;
          v193 = *(v9 + 80);
          v194 = *(v9 + 96);
          v367[2] = *(v9 + 112);
          v367[1] = v194;
          v367[0] = v193;
          v367[3] = v334;
          sub_25AF4F820(&v321, &v324);
          sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v321, &v324);
          v195 = sub_25AFBFC64(v367, v368);
          sub_25AF2602C(&v314, &qword_27FA249F0, &qword_25B011DD0);
          v324 = v318;
          v325[0] = v319;
          v325[1] = v320;
          v326 = __PAIR128__(v19, v180);
          sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v332, &qword_27FA249F0, &qword_25B011DD0);
          if (v195)
          {
            v196 = *(v9 + 96);
            v324 = *(v9 + 80);
            v325[0] = v196;
            v197 = *(v9 + 128);
            v325[1] = *(v9 + 112);
            v326 = v197;
            v198 = v364;
            *(v9 + 80) = v363;
            *(v9 + 96) = v198;
            v199 = v366;
            *(v9 + 112) = v365;
            *(v9 + 128) = v199;
LABEL_131:
            sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
            goto LABEL_132;
          }
        }

        v186 = swift_getKeyPath();
        MEMORY[0x28223BE20](v186);
        *(&v271 - 2) = v9;
        *(&v271 - 1) = &v363;
        *&v324 = v9;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
      }

      else
      {
        *&v321 = v57;
        *(&v321 + 1) = v76;
        *v322 = v129;
        *(v322 + 8) = v309;
        *(&v322[1] + 1) = 0x3FF0000000000000;
        v323 = 0uLL;
        v372 = 0uLL;
        v371 = v322[1];
        v370 = v322[0];
        v369 = v321;
        v181 = *(v9 + 16);
        v182 = *(v9 + 32);
        v183 = *(v9 + 64);
        v333[1] = *(v9 + 48);
        v334 = v183;
        v332 = v181;
        v333[0] = v182;
        v184 = *(v9 + 32);
        v318 = *(v9 + 16);
        v319 = v184;
        v320 = *(v9 + 48);
        v19 = *(&v183 + 1);
        v185 = v183;
        if (v183 == 1)
        {
          v324 = v318;
          v325[0] = v319;
          v325[1] = v320;
          v326 = v183;
          v327 = v321;
          v328 = v322[0];
          v329 = v322[1];
          v330 = 0;
          v331 = 0;
          sub_25AF4F820(&v321, &v314);
          sub_25AF25FC4(&v332, &v314, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v321, &v314);
          sub_25AF2602C(&v324, &unk_27FA25680, &qword_25B00C2B0);
        }

        else
        {
          v187 = *(v9 + 32);
          v311 = *(v9 + 16);
          v312 = v187;
          v313 = *(v9 + 48);
          v314 = v321;
          v315 = v322[0];
          v316 = v322[1];
          v317 = 0uLL;
          v374[0] = v321;
          v374[1] = v322[0];
          v374[2] = v322[1];
          v374[3] = 0uLL;
          v373[2] = v313;
          v373[1] = v312;
          v373[0] = v311;
          v373[3] = v183;
          sub_25AF4F820(&v321, &v324);
          sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF25FC4(&v332, &v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF4F820(&v321, &v324);
          v200 = sub_25AFBFC64(v373, v374);
          sub_25AF2602C(&v314, &qword_27FA249F0, &qword_25B011DD0);
          v324 = v318;
          v325[0] = v319;
          v325[1] = v320;
          v326 = __PAIR128__(v19, v185);
          sub_25AF2602C(&v324, &qword_27FA249F0, &qword_25B011DD0);
          sub_25AF2602C(&v332, &qword_27FA249F0, &qword_25B011DD0);
          if (v200)
          {
            v201 = *(v9 + 16);
            v202 = *(v9 + 32);
            v203 = *(v9 + 64);
            v325[1] = *(v9 + 48);
            v326 = v203;
            v324 = v201;
            v325[0] = v202;
            v204 = v372;
            *(v9 + 48) = v371;
            *(v9 + 64) = v204;
            v205 = v370;
            *(v9 + 16) = v369;
            *(v9 + 32) = v205;
            goto LABEL_131;
          }
        }

        v188 = swift_getKeyPath();
        MEMORY[0x28223BE20](v188);
        *(&v271 - 2) = v9;
        *(&v271 - 1) = &v369;
        *&v324 = v9;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel, &unk_25B011B70);
      }

      v75 = v307;
      v19 = v305;
      sub_25B004224();
      v305 = v19;
      sub_25AF4F8A0(&v321);

LABEL_132:
      *&v324 = v57;
      *(&v324 + 1) = v76;
      *v325 = v129;
      *(v325 + 8) = v309;
      *(&v325[1] + 1) = 0x3FF0000000000000;
      v326 = 0uLL;
      sub_25AF4F8A0(&v324);
      sub_25AFB6E40(v75 & 1, 0, v56);
      sub_25AFB6E40(v75 & 1, 0, v56);

      sub_25AF1C414(&v390);
LABEL_160:

LABEL_47:
      v72 = v128;
      v82 = v302;
    }

    while (v299 != v128);
    v245 = v302[2];

    v32 = sub_25AFB6D8C();
    v246 = v286;
    sub_25AF25FC4(v303, v286, &qword_27FA249E8, &qword_25B00C298);
    v31 = v304;
    v247 = v300(v246, 1, v304);
    v24 = v282;
    if (v247 == 1)
    {
      sub_25AF2602C(v246, &qword_27FA249E8, &qword_25B00C298);
      v335 = 0uLL;
      *v336 = v55 * (v245 + 1);
      *(v336 + 8) = v309;
      *(&v336[1] + 1) = 0x3FF0000000000000;
      v337 = 0uLL;
      v324 = 0uLL;
      v325[0] = v336[0];
      v325[1] = v336[1];
      v326 = 0uLL;
      sub_25AF4F820(&v335, &v332);
      if (v75)
      {
        sub_25AFBF5B0(&v324);
      }

      else
      {
        sub_25AFBF280(&v324);
      }

      v335 = 0uLL;
      *v336 = v55 * (v245 + 1);
      *(v336 + 8) = v309;
      *(&v336[1] + 1) = 0x3FF0000000000000;
      v337 = 0uLL;
      sub_25AF4F8A0(&v335);
      sub_25AFB6E40(v75 & 1, 0, v56);

      sub_25AF4F8F4(v291);
    }

    v9 = v282 + 32;
    v248 = *(v282 + 32);
    v248(v290, v246, v31);
    v35 = v73 * v245;
    if (v295)
    {
      v249 = sub_25B0056D4();
      if (v294)
      {
        goto LABEL_166;
      }

LABEL_177:
      v310 = 0;
      v19 = v296;
      if (!v296)
      {
        goto LABEL_178;
      }

LABEL_167:
      v308 = v248;
      v250 = *(v19 + 16);

      [v250 lock];
      v251 = *(v19 + 24);
      [v250 unlock];
      if (v251)
      {

        v252 = 0;
        v248 = v308;
      }

      else
      {

        v19 = v307;
        v335 = 0uLL;
        *v336 = v55 * (v245 + 1);
        *(v336 + 8) = v309;
        *(&v336[1] + 1) = 0x3FF0000000000000;
        v337 = v249;
        v324 = 0uLL;
        v325[0] = v336[0];
        v325[1] = v336[1];
        v326 = v249;
        if (v307)
        {
          sub_25AF4F820(&v335, &v332);
          sub_25AFBF5B0(&v324);
        }

        else
        {
          sub_25AF4F820(&v335, &v332);
          sub_25AFBF280(&v324);
        }

        v248 = v308;
        v335 = 0uLL;
        *v336 = v55 * (v245 + 1);
        *(v336 + 8) = v309;
        *(&v336[1] + 1) = 0x3FF0000000000000;
        v337 = v249;
        sub_25AF4F8A0(&v335);
        sub_25AFB6E40(v19 & 1, v310, v56);

        v252 = 1;
      }
    }

    else
    {
      v249 = 0;
      if (!v294)
      {
        goto LABEL_177;
      }

LABEL_166:
      v310 = sub_25B0056D4();
      v19 = v296;
      if (v296)
      {
        goto LABEL_167;
      }

LABEL_178:
      v252 = 0;
    }

    sub_25B005864();
    v253 = v35 * 1000000000.0;
    if (COERCE__INT64(fabs(v35 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_190;
    }

    if (v253 <= -9.22337204e18)
    {
      goto LABEL_191;
    }

    if (v253 < 9.22337204e18)
    {
      v308 = v32;
      v255 = v274;
      v254 = v275;
      *v274 = v253;
      v256 = v276;
      (*(v254 + 104))(v255, *MEMORY[0x277D85168], v276);
      LODWORD(v305) = v252;
      v257 = v285;
      sub_25B005874();
      (*(v254 + 8))(v255, v256);
      v258 = *(v289 + 8);
      v289 += 8;
      *&v309 = v258;
      v258(v257, v284);
      sub_25AF4F950();
      v306 = sub_25B005D34();
      v307 = v249;
      v259 = v287;
      (*(v24 + 16))(v287, v290, v31);
      v260 = v31;
      v261 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v262 = v261 + v288;
      v263 = (v261 + v288) & 0xFFFFFFFFFFFFFFF8;
      v264 = swift_allocObject();
      *(v264 + 16) = v273;
      v248((v264 + v261), v259, v260);
      *(v264 + v262) = v305;
      *(v264 + v263 + 8) = v272;
      *&v336[1] = sub_25AF4FA80;
      *(&v336[1] + 1) = v264;
      *&v335 = MEMORY[0x277D85DD0];
      *(&v335 + 1) = 1107296256;
      *&v336[0] = sub_25AF43684;
      *(&v336[0] + 1) = &block_descriptor_1;
      v265 = _Block_copy(&v335);

      v266 = v277;
      sub_25B005844();
      *&v332 = MEMORY[0x277D84F90];
      sub_25AF4FB38(&qword_27FA246C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25690, &qword_25B00C2E0);
      sub_25AF4FB80();
      v267 = v279;
      v268 = v271;
      sub_25B005E54();
      v269 = v283;
      v270 = v306;
      MEMORY[0x25F85DB10](v283, v266, v267, v265);
      _Block_release(v265);

      (*(v281 + 8))(v267, v268);
      (*(v278 + 8))(v266, v280);
      (v309)(v269, v284);
      (*(v282 + 8))(v290, v304);

      sub_25AF4F8F4(v291);
    }

LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
    v41 = v291;
LABEL_7:
    v42 = *(v41 + v32[8]);
    v294 = qword_27FA30B20;

    v43 = v291;
    v295 = 0;
LABEL_22:
    v49 = 0.0;
    v50 = 10;
LABEL_32:
    v55 = 0.0;
    v54 = 0.0;
  }

  sub_25AF25FC4(v303, v19, &qword_27FA249E8, &qword_25B00C298);
  v67 = v304;
  if ((*(v24 + 48))(v19, 1, v304) == 1)
  {
    sub_25AF4F8F4(v291);

    return sub_25AF2602C(v19, &qword_27FA249E8, &qword_25B00C298);
  }

  else
  {
    LOBYTE(v324) = 1;
    sub_25B005B04();

    sub_25AF4F8F4(v291);
    return (*(v24 + 8))(v19, v67);
  }
}