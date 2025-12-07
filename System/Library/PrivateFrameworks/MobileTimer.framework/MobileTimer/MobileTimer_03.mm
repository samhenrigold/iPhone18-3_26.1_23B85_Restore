uint64_t sub_1B20941E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B2094270(v3);
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

void *sub_1B2094284(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1B20A9DE4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B2091528(v3, 0);
  sub_1B2094318((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B2094318(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B20A9DE4();
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
      result = sub_1B20A9DE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B209849C(&qword_1EB79CE48, &qword_1EB79F540, &qword_1B20B9538, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F540, &qword_1B20B9538);
            v9 = sub_1B20944CC(v13, i, a3);
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
        sub_1B20982AC(0, &qword_1EB79CE30, off_1E7B0BB68);
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

void (*sub_1B20944CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B27403C0](a2, a3);
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
    return sub_1B209454C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2094588()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B206BEF4(v2, v3, v5, v4);
}

unint64_t sub_1B2094634()
{
  result = qword_1EB79CDD8;
  if (!qword_1EB79CDD8)
  {
    sub_1B20982AC(255, &qword_1EB79CDE0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79CDD8);
  }

  return result;
}

uint64_t sub_1B20946BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B206DD60(v2, v3, v5, v4);
}

uint64_t sub_1B2094768()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B206F70C(v2, v3, v4);
}

uint64_t sub_1B2094850()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B2070894(v2, v3, v4);
}

void sub_1B20948F8(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  type metadata accessor for MTCDAlarm();
  v5 = static MTCDAlarm.fetchRequest()();
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  v7 = sub_1B20A9B54();
  *(v6 + 56) = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  *(v6 + 64) = sub_1B2094634();
  *(v6 + 32) = v7;
  v8 = sub_1B20A9C64();
  [v5 setPredicate_];

  v9 = [*(v4 + 112) viewContext];
  v10 = sub_1B20A9D44();
  if (v2)
  {
  }

  else
  {
    v11 = v10;

    *a1 = v11;
  }
}

uint64_t sub_1B2094A6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B2071970(v2, v3, v4);
}

uint64_t sub_1B2094B14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B207276C(v2, v3, v5, v4);
}

id sub_1B2094BC0()
{
  v1 = *(v0 + 16);
  v18 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
  {
    v16 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = v1 & 0xC000000000000001;
    v3 = 4;
    v15 = v1;
    while (1)
    {
      v4 = v3 - 4;
      if (v17)
      {
        v5 = MEMORY[0x1B27403C0](v3 - 4, v1);
      }

      else
      {
        if (v4 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3);
      }

      v6 = v5;
      v7 = v3 - 3;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for MTCDTimer();
      v8 = i;
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x50))(v6);
      type metadata accessor for MTCDSound();
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v12 = [v6 sound];
      (*((*v10 & *v11) + 0x50))();

      [v9 setSound_];
      i = v8;
      v1 = v15;

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v19 = 0;
  if ([v18 save_])
  {
    return v19;
  }

  v14 = v19;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B2094DF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B2073F38(v2, v3, v5, v4);
}

char *sub_1B2094E9C(unint64_t a1, SEL *a2)
{
  v17 = a2;
  if (a1 >> 62)
  {
    v3 = sub_1B20A9DE4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_12:
    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B20B8E70;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
    *(v16 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
    *(v16 + 32) = v4;
    return sub_1B20A9C64();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1B2091C38(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B27403C0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 *v17];
      v10 = sub_1B20A9A74();
      v12 = v11;

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B2091C38((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B20950CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B2075908(v2, v3, v5, v4);
}

uint64_t sub_1B2095178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B20772C8(v2, v3, v4);
}

uint64_t sub_1B2095220()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B2078218(v2, v3, v4);
}

void sub_1B2095308(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v8 = [*(v3 + 112) viewContext];
  a1(0);
  v9 = a2();
  v10 = sub_1B20A9D44();

  if (!v4)
  {
    *a3 = v10;
  }
}

uint64_t sub_1B20953A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B2098894;

  return sub_1B2079530(v2, v3, v4, v6, v5);
}

void sub_1B2095464()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B20B8E70;
  v7 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  v8 = sub_1B20A9D64();
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_1B2094634();
  *(v6 + 32) = v8;
  v9 = sub_1B20A9C64();
  v10 = type metadata accessor for MTCDTimerDuration();
  v11 = static MTCDTimerDuration.fetchRequest()();
  [v11 setPredicate_];
  v12 = v3;
  v13 = sub_1B20A9D44();
  if (v1)
  {

    return;
  }

  v41 = v3;
  if (v13 >> 62)
  {
    v14 = v5;
    v17 = v13;
    v18 = sub_1B20A9DE4();
    v13 = v17;
    v40 = v4;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_13:

    v4 = 0;
    goto LABEL_14;
  }

  v14 = v5;
  v40 = v4;
  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B27403C0](0);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v4 = v16;
  if ([v4 validRecent])
  {
    [v4 setLatest_];
  }

  else
  {
    [v41 deleteObject_];
  }

LABEL_14:
  v33 = v11;
  v34 = v9;

  v43 = sub_1B2094284(v19);
  sub_1B2092F60(&v43);
  v12 = v43;
  v2 = v41;
  if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v40 = *(v43 + 16);
  if (!v40)
  {
LABEL_35:

    v43 = 0;
    if ([v2 save_])
    {
      v31 = v43;
    }

    else
    {
      v32 = v43;
      sub_1B20A9754();

      swift_willThrow();
    }

    return;
  }

  while (1)
  {
    v20 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      MEMORY[0x1B27403C0]();
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v38 = v40 - 1;
    v39 = v12 & 0xC000000000000001;
    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_41;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v12 + 16))
    {
      goto LABEL_43;
    }

LABEL_21:
    v21 = 0;
    v22 = MEMORY[0x1E69E7D40];
    v36 = v12;
    v37 = v4;
    v35 = v10;
    while (1)
    {
      if (v39)
      {
        v26 = MEMORY[0x1B27403C0](v21, v12);
      }

      else
      {
        if (v21 >= *(v12 + 16))
        {
          goto LABEL_33;
        }

        v26 = *(v12 + 8 * v21 + 32);
      }

      v24 = v26;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v42 = (v21 + 1);
      v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v28 = v14;
      (*((*v22 & *v27) + 0x50))(v24, v14);
      type metadata accessor for MTCDSound();
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v29 = [v24 sound];
      if (!v29)
      {
        goto LABEL_44;
      }

      v30 = v29;
      (*((*v22 & *v25) + 0x50))();

      [v27 setSound_];
      if (v38 == v21)
      {
        [v27 setLatest_];
        v23 = v27;
      }

      else
      {
        v23 = v24;
        v24 = v25;
        v25 = v27;
      }

      ++v21;
      v14 = v28;
      v10 = v35;
      v12 = v36;
      v4 = v37;
      if (v42 == v40)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v40 = sub_1B20A9DE4();
    if (!v40)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);

  __break(1u);
}

uint64_t sub_1B209596C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B207ACB8(v2, v3, v4);
}

uint64_t sub_1B2095A14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B207BCE8(v2, v3, v4);
}

uint64_t sub_1B2095ABC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B207D018(v2, v3, v4);
}

uint64_t sub_1B2095B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B207DEBC(v2, v3, v4);
}

uint64_t sub_1B2095C0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B2098894;

  return sub_1B207EF34(v2, v3, v4, v6, v5);
}

unint64_t sub_1B2095CC8()
{
  v2 = *(v0 + 16);
  type metadata accessor for MTCDTimerDuration();
  result = sub_1B20A9D44();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      result = sub_1B20A9DE4();
      v5 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1B27403C0](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          if ([v7 latest])
          {
            [v8 setValidRecent_];
          }

          else
          {
            [v2 deleteObject_];
          }
        }
      }
    }

    v10 = 0;
    if ([v2 save_])
    {
      return v10;
    }

    else
    {
      v9 = v10;
      sub_1B20A9754();

      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1B2095E48()
{
  result = qword_1EB79F4F8;
  if (!qword_1EB79F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F4F8);
  }

  return result;
}

uint64_t sub_1B2095E9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B20805E8(v2, v3, v4);
}

unint64_t sub_1B2095F5C()
{
  result = qword_1EB79CE60;
  if (!qword_1EB79CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79CE60);
  }

  return result;
}

uint64_t sub_1B2096010@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  a1(0);
  result = sub_1B20A9D44();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1B209606C(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v18 = *(v1 + 24);
  type metadata accessor for MTCDTimerDuration();
  v3 = static MTCDTimerDuration.fetchRequest()();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B20B8E70;
  v5 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  v6 = sub_1B20A9D64();
  *(v4 + 56) = v5;
  v7 = sub_1B2094634();
  *(v4 + 64) = v7;
  *(v4 + 32) = v6;
  sub_1B20A9C64();
  MEMORY[0x1B2740000]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B20A9B24();
  }

  sub_1B20A9B44();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B20B8E70;
  v9 = sub_1B20A9D64();
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  sub_1B20A9C64();
  MEMORY[0x1B2740000]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B20A9B24();
  }

  sub_1B20A9B44();
  if (v2 != 2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B20B8E70;
    v11 = sub_1B20A9B54();
    *(v10 + 56) = v5;
    *(v10 + 64) = v7;
    *(v10 + 32) = v11;
    sub_1B20A9C64();
    MEMORY[0x1B2740000]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B20A9B24();
    }

    sub_1B20A9B44();
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696AB28]);
  v13 = sub_1B20A9AF4();

  v14 = [v12 initWithType:2 subpredicates:v13];

  [v3 setPredicate_];
  v15 = [*(v18 + 112) viewContext];
  v16 = sub_1B20A9D44();

  if (!v19)
  {
    *a1 = v16;
  }
}

uint64_t sub_1B20963F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208737C(v2, v3, v5, v4);
}

id sub_1B20964A4()
{
  v17 = *(v0 + 16);
  if (v17 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
  {
    v1 = 4;
    while (1)
    {
      v2 = v1 - 4;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1B27403C0](v1 - 4, v17);
      }

      else
      {
        if (v2 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v3 = *(v17 + 8 * v1);
      }

      v4 = v3;
      v5 = v1 - 3;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      type metadata accessor for AKCDAlarm();
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v7 = [v4 attributes];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1B20A97D4();
        v11 = v10;

        type metadata accessor for AKCDAttributes();
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        v13 = sub_1B20A97C4();
        [v12 setData_];

        [v6 setAttributes_];
        sub_1B2062A04(v9, v11);
      }

      (*((*MEMORY[0x1E69E7D40] & *v6) + 0x50))(v4);

      ++v1;
      if (v5 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v19 = 0;
  if ([v18 save_])
  {
    return v19;
  }

  v15 = v19;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B2096704()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B20882F4(v2, v3, v5, v4);
}

uint64_t sub_1B20967B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B2740170](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B2092270(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

char *sub_1B2096848(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B20A9DE4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_12:
    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B20B8E70;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
    *(v15 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
    *(v15 + 32) = v3;
    return sub_1B20A9C64();
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1B2091C38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B27403C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      v9 = sub_1B20A9A74();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B2091C38((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2096A4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for AKCDAlarm();
  result = sub_1B20A9D44();
  if (!v1)
  {
    v5 = result;
    if (result >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
    {
      v31 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v33 = sub_1B20A9DE4();
      }

      else
      {
        v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      v28 = v2;
      v29 = v5 & 0xC000000000000001;
      v24 = v5 + 32;
      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      v32 = v3 & 0xC000000000000001;
      v26 = i;
      v27 = v5;
      while (1)
      {
        if (v29)
        {
          v9 = MEMORY[0x1B27403C0](v7, v5);
        }

        else
        {
          if (v7 >= *(v25 + 16))
          {
            goto LABEL_35;
          }

          v9 = *(v24 + 8 * v7);
        }

        v34 = v9;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        if (v33)
        {
          v30 = v7;
          v11 = 4;
          while (1)
          {
            v5 = v11 - 4;
            if (v32)
            {
              v12 = MEMORY[0x1B27403C0](v11 - 4, v3);
            }

            else
            {
              if (v5 >= *(v31 + 16))
              {
                goto LABEL_33;
              }

              v12 = *(v3 + 8 * v11);
            }

            v8 = v12;
            v13 = v11 - 3;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            v2 = [v12 identifier];
            v14 = sub_1B20A9A74();
            v16 = v15;

            v17 = [v34 identifier];
            if (v17)
            {
              v2 = v17;
              v18 = v3;
              v19 = sub_1B20A9A74();
              v21 = v20;

              if (v14 == v19 && v16 == v21)
              {

                v3 = v18;
LABEL_30:
                (*((*MEMORY[0x1E69E7D40] & *v34) + 0x50))(v8);

LABEL_31:
                v5 = v27;
                v2 = v28;
                i = v26;
                v7 = v30;
                goto LABEL_8;
              }

              v22 = sub_1B20A9F84();

              v3 = v18;
              if (v22)
              {
                goto LABEL_30;
              }
            }

            else
            {
            }

            ++v11;
            if (v13 == v33)
            {
              v8 = v34;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

        v8 = v9;
LABEL_8:

        if (v7 == i)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_37:

    v35 = 0;
    if ([v2 save_])
    {
      return v35;
    }

    else
    {
      v23 = v35;
      sub_1B20A9754();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B2096D84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B20893BC(v2, v3, v5, v4);
}

uint64_t sub_1B2096E30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208A050(v2, v3, v5, v4);
}

uint64_t sub_1B2096EE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B2098894;

  return sub_1B208B0AC(v2, v3, v4, v6, v5);
}

void sub_1B2096F9C(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  type metadata accessor for AKCDAlarm();
  v7 = static AKCDAlarm.fetchRequest()();
  v8 = v7;
  if (v4)
  {
    [v7 setPredicate_];
  }

  [v8 setIncludesSubentities_];
  v9 = [*(v6 + 112) viewContext];
  v10 = sub_1B20A9D44();
  if (v2)
  {
  }

  else
  {
    v11 = v10;

    *a1 = v11;
  }
}

uint64_t sub_1B209707C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208C3D8(v2, v3, v5, v4);
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B2097168()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
  {
    v4 = 4;
    while (1)
    {
      v5 = v4 - 4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B27403C0](v4 - 4, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v2 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 - 3;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for AKCDAuthorization();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x50))(v7);

      ++v4;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v12 = 0;
  if ([v1 save_])
  {
    return v12;
  }

  v11 = v12;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B20972EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208D350(v2, v3, v5, v4);
}

char *sub_1B2097398(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B20A9DE4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_12:
    sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B20B8E70;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F510, &qword_1B20B91C8);
    *(v15 + 64) = sub_1B209849C(&qword_1EB79CE50, &qword_1EB79F510, &qword_1B20B91C8, MEMORY[0x1E6969E28]);
    *(v15 + 32) = v3;
    return sub_1B20A9C64();
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1B2091C38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B27403C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleID];
      v9 = sub_1B20A9A74();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B2091C38((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_69Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1B20975E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for AKCDAuthorization();
  result = sub_1B20A9D44();
  if (!v1)
  {
    v5 = result;
    if (result >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B20A9DE4())
    {
      v31 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v33 = sub_1B20A9DE4();
      }

      else
      {
        v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      v28 = v2;
      v29 = v5 & 0xC000000000000001;
      v24 = v5 + 32;
      v25 = v5 & 0xFFFFFFFFFFFFFF8;
      v32 = v3 & 0xC000000000000001;
      v26 = i;
      v27 = v5;
      while (1)
      {
        if (v29)
        {
          v9 = MEMORY[0x1B27403C0](v7, v5);
        }

        else
        {
          if (v7 >= *(v25 + 16))
          {
            goto LABEL_35;
          }

          v9 = *(v24 + 8 * v7);
        }

        v34 = v9;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        if (v33)
        {
          v30 = v7;
          v11 = 4;
          while (1)
          {
            v5 = v11 - 4;
            if (v32)
            {
              v12 = MEMORY[0x1B27403C0](v11 - 4, v3);
            }

            else
            {
              if (v5 >= *(v31 + 16))
              {
                goto LABEL_33;
              }

              v12 = *(v3 + 8 * v11);
            }

            v8 = v12;
            v13 = v11 - 3;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            v2 = [v12 bundleID];
            v14 = sub_1B20A9A74();
            v16 = v15;

            v17 = [v34 bundleID];
            if (v17)
            {
              v2 = v17;
              v18 = v3;
              v19 = sub_1B20A9A74();
              v21 = v20;

              if (v14 == v19 && v16 == v21)
              {

                v3 = v18;
LABEL_30:
                (*((*MEMORY[0x1E69E7D40] & *v34) + 0x50))(v8);

LABEL_31:
                v5 = v27;
                v2 = v28;
                i = v26;
                v7 = v30;
                goto LABEL_8;
              }

              v22 = sub_1B20A9F84();

              v3 = v18;
              if (v22)
              {
                goto LABEL_30;
              }
            }

            else
            {
            }

            ++v11;
            if (v13 == v33)
            {
              v8 = v34;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

        v8 = v9;
LABEL_8:

        if (v7 == i)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_37:

    v35 = 0;
    if ([v2 save_])
    {
      return v35;
    }

    else
    {
      v23 = v35;
      sub_1B20A9754();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B209791C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208E418(v2, v3, v5, v4);
}

id sub_1B20979C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v10 = 0;
  v3 = [v2 executeRequest:v1 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = v3;
    v6 = v10;

    v10 = 0;
    v7 = [v2 save_];
    v4 = v10;
    if (v7)
    {
      return v10;
    }
  }

  v9 = v4;
  sub_1B20A9754();

  return swift_willThrow();
}

uint64_t sub_1B2097A80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B2098894;

  return sub_1B208F194(v2, v3, v4);
}

uint64_t sub_1B2097B28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B2098894;

  return sub_1B208FEDC(v2, v3, v5, v4);
}

uint64_t objectdestroy_228Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

void sub_1B2097C30(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  type metadata accessor for AKCDAuthorization();
  v6 = static AKCDAuthorization.fetchRequest()();
  v7 = v6;
  if (v4)
  {
    [v6 setPredicate_];
  }

  v8 = [*(v5 + 112) viewContext];
  v9 = sub_1B20A9D44();
  if (v2)
  {
  }

  else
  {
    v10 = v9;

    *a1 = v10;
  }
}

unint64_t sub_1B2097CF0()
{
  result = qword_1EB79F528;
  if (!qword_1EB79F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MTCDError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MTCDError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B2097EDC(uint64_t a1, int a2)
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

uint64_t sub_1B2097EFC(uint64_t result, int a2, int a3)
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
  if (!qword_1EB79CE20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB79CE20);
    }
  }
}

uint64_t objectdestroy_414Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_362Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_354Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_321Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_263Tm()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_215Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_189Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_110Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B20982AC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_38Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B2098344(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B2082D50(a1, a2, v2 + v6, v7);
}

uint64_t sub_1B20983FC(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;
  }

  return result;
}

void sub_1B2098448(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1B209849C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1B20984E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B2098894;

  return sub_1B20683EC(a1, v4);
}

uint64_t sub_1B20985B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B2098614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B2098894;

  return sub_1B2090FF4(a1, v4);
}

uint64_t sub_1B20986CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B20684D4;

  return sub_1B2090FF4(a1, v4);
}

uint64_t sub_1B209878C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B0, &qword_1B20B95E0);

  return sub_1B2068164();
}

uint64_t sub_1B20987F8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher);
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_1B1FA6834(v2, v3);
}

void sub_1B209898C(void *a1)
{
  v2 = v1;
  v4 = sub_1B20A9834();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v64 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - v9;
  v11 = sub_1B20A97B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B20A9874();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 timerID];
  sub_1B20A9864();

  v20 = sub_1B20A9854();
  (*(v16 + 8))(v18, v15);
  [v2 setMtid_];

  v21 = [a1 timerURL];
  sub_1B20A9794();

  v22 = sub_1B20A9784();
  (*(v12 + 8))(v14, v11);
  [v2 setTimerURL_];

  v23 = [a1 state];
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v2 setState_];
    [a1 duration];
    [v2 setDuration_];
    v24 = [a1 firedDate];
    if (v24)
    {
      v25 = v24;
      sub_1B20A9804();

      v26 = sub_1B20A97E4();
      v28 = v66;
      v27 = v67;
      (*(v66 + 8))(v10, v67);
    }

    else
    {
      v26 = 0;
      v28 = v66;
      v27 = v67;
    }

    [v2 setFiredDate_];

    v29 = [a1 title];
    [v2 setTitle_];

    v30 = [a1 lastModifiedDate];
    if (v30)
    {
      v31 = v64;
      v32 = v30;
      sub_1B20A9804();

      v33 = sub_1B20A97E4();
      (*(v28 + 8))(v31, v27);
    }

    else
    {
      v33 = 0;
    }

    [v2 setLastModifiedDate_];

    v34 = [a1 dismissedDate];
    if (v34)
    {
      v35 = v65;
      v36 = v34;
      sub_1B20A9804();

      v37 = sub_1B20A97E4();
      (*(v28 + 8))(v35, v27);
    }

    else
    {
      v37 = 0;
    }

    [v2 setDismissedDate_];

    if ([a1 fireTime])
    {
      swift_unknownObjectRelease();
      v38 = objc_opt_self();
      v68 = [a1 fireTime];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F620, &qword_1B20B95F8);
      v39 = sub_1B20A9D74();
      swift_unknownObjectRelease();
      v40 = [v38 archivedDataWithRootObject_];
      swift_unknownObjectRelease();
      v41 = sub_1B20A97D4();
      v43 = v42;

      v44 = sub_1B20A97C4();
      sub_1B2062A04(v41, v43);
      [v2 setFireTime_];
    }

    else
    {
      [v2 setFireTime_];
    }

    v45 = [a1 siriContext];
    if (v45)
    {
      v46 = v45;
      sub_1B20A9A34();

      v47 = objc_opt_self();
      v48 = sub_1B20A9A14();

      v49 = [v47 archivedDataWithRootObject_];

      v50 = sub_1B20A97D4();
      v52 = v51;

      v53 = sub_1B20A97C4();
      sub_1B2062A04(v50, v52);
      [v2 setSiriContext_];
    }

    v54 = [a1 timerContext];
    if (v54)
    {
      v55 = v54;
      sub_1B20A9A34();

      v56 = objc_opt_self();
      v57 = sub_1B20A9A14();

      v58 = [v56 archivedDataWithRootObject_];

      v59 = sub_1B20A97D4();
      v61 = v60;

      v62 = sub_1B20A97C4();
      sub_1B2062A04(v59, v61);
      [v2 setTimerContext_];
    }
  }
}

id sub_1B20990EC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_1B2099164()
{
  result = qword_1EB79F630;
  if (!qword_1EB79F630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB79F630);
  }

  return result;
}

id sub_1B2099200(SEL *a1)
{
  result = [v1 *a1];
  if (result)
  {
    v3 = result;
    v4 = sub_1B20A97D4();
    v6 = v5;

    v7 = objc_opt_self();
    v8 = sub_1B20A97C4();
    v9 = [v7 unarchiveObjectWithData_];

    if (v9)
    {
      sub_1B20A9D94();
      sub_1B2062A04(v4, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B2062A04(v4, v6);
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_1B2099164();
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B20985B4(v13, &qword_1EB79F628, &qword_1B20B9600);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B20993E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1B20A9E84();
  MEMORY[0x1B273FFD0](0xD00000000000001CLL, 0x80000001B20D3AA0);
  v14 = [v0 mtid];
  if (v14)
  {
    v15 = v14;
    sub_1B20A9864();

    v16 = sub_1B20A9874();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  }

  else
  {
    v17 = sub_1B20A9874();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  sub_1B20A9F14();
  sub_1B20985B4(v13, &unk_1EB79F640, &qword_1B20B8D08);
  MEMORY[0x1B273FFD0](0x697409200A202020, 0xED0000203A656C74);
  v18 = [v1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1B20A9A74();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v56 = v20;
  v57 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](0xD00000000000002FLL, 0x80000001B20D3AC0);
  v56 = [v1 state];
  v23 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v23);

  MEMORY[0x1B273FFD0](0xD000000000000017, 0x80000001B20D3AF0);
  [v1 duration];
  sub_1B20A9C34();
  MEMORY[0x1B273FFD0](0xD000000000000011, 0x80000001B20D3B10);
  v24 = [v1 firedDate];
  if (v24)
  {
    v25 = v24;
    sub_1B20A9804();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_1B20A9834();
  v28 = *(*(v27 - 8) + 56);
  v28(v10, v26, 1, v27);
  v29 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v29);

  MEMORY[0x1B273FFD0](0x72696609200A2020, 0xEF203A656D695465);
  v30 = [v1 fireTime];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1B20A97D4();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xF000000000000000;
  }

  v56 = v32;
  v57 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F650, &qword_1B20B9608);
  v35 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v35);

  MEMORY[0x1B273FFD0](0xD000000000000017, 0x80000001B20D3B30);
  v36 = [v1 lastModifiedDate];
  if (v36)
  {
    v37 = v36;
    sub_1B20A9804();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = 1;
  v28(v8, v38, 1, v27);
  v40 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v40);

  MEMORY[0x1B273FFD0](0xD000000000000015, 0x80000001B20D3B50);
  v41 = [v1 dismissedDate];
  if (v41)
  {
    v42 = v41;
    sub_1B20A9804();

    v39 = 0;
  }

  v28(v5, v39, 1, v27);
  v43 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v43);

  MEMORY[0x1B273FFD0](0xD000000000000013, 0x80000001B20D3B70);
  v44 = [v1 siriContext];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B20A97D4();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xF000000000000000;
  }

  v56 = v46;
  v57 = v48;
  sub_1B20A9F14();
  sub_1B2062FD8(v46, v48);
  MEMORY[0x1B273FFD0](0xD000000000000014, 0x80000001B20D3B90);
  v49 = [v1 timerContext];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1B20A97D4();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  v56 = v51;
  v57 = v53;
  sub_1B20A9F14();
  sub_1B2062FD8(v51, v53);
  MEMORY[0x1B273FFD0](0x646E756F7309200ALL, 0xEA0000000000203ALL);
  v54 = [v1 sound];
  v56 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F410, qword_1B20B8D68);
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](663562, 0xE300000000000000);
  return v58;
}

id MTCDTimer.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCDTimer.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCDTimer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCDTimer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCDTimer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B2099D68(void *a1)
{
  v2 = v1;
  v57 = sub_1B20A9834();
  v4 = *(v57 - 8);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v54 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = sub_1B20A9874();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setHour_];
  [v2 setMinute_];
  v21 = [a1 alarmID];
  sub_1B20A9864();

  v22 = sub_1B20A9854();
  (*(v18 + 8))(v20, v17);
  [v2 setMtid_];

  v23 = [a1 title];
  [v2 setTitle_];

  [v2 setEnabled_];
  [v2 setDay_];
  [v2 setMonth_];
  [v2 setYear_];
  v24 = [a1 repeatSchedule];
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v2 setRepeatSchedule_];
  v25 = [a1 silentModeOptions];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  [v2 setSilentModeOptions_];
  [v2 setSleepAlarm_];
  [v2 setAllowsSnooze_];
  [v2 setSleepSchedule_];
  [v2 setSnoozeDuration_];
  v26 = [a1 snoozeFireDate];
  if (v26)
  {
    v27 = v26;
    sub_1B20A9804();

    v28 = sub_1B20A97E4();
    v29 = v57;
    (*(v4 + 8))(v16, v57);
  }

  else
  {
    v28 = 0;
    v29 = v57;
  }

  [v2 setSnoozeFireDate_];

  v30 = [a1 firedDate];
  if (v30)
  {
    v31 = v30;
    sub_1B20A9804();

    v32 = sub_1B20A97E4();
    (*(v4 + 8))(v14, v29);
  }

  else
  {
    v32 = 0;
  }

  [v2 setFiredDate_];

  v33 = [a1 dismissedDate];
  if (v33)
  {
    v34 = v33;
    sub_1B20A9804();

    v35 = sub_1B20A97E4();
    (*(v4 + 8))(v11, v29);
  }

  else
  {
    v35 = 0;
  }

  [v2 setDismissedDate_];

  v36 = [a1 dismissedAction];
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  [v2 setDismissedAction_];
  v37 = [a1 lastModifiedDate];
  if (v37)
  {
    v38 = v55;
    v39 = v37;
    sub_1B20A9804();

    v40 = sub_1B20A97E4();
    (*(v4 + 8))(v38, v29);
  }

  else
  {
    v40 = 0;
  }

  [v2 setLastModifiedDate_];

  v41 = [a1 keepOffUntilDate];
  if (v41)
  {
    v42 = v56;
    v43 = v41;
    sub_1B20A9804();

    v44 = sub_1B20A97E4();
    (*(v4 + 8))(v42, v29);
  }

  else
  {
    v44 = 0;
  }

  [v2 setKeepOffUntilDate_];

  v45 = [a1 siriContext];
  if (v45)
  {
    v46 = v45;
    sub_1B20A9A34();

    v47 = objc_opt_self();
    v48 = sub_1B20A9A14();

    v49 = [v47 archivedDataWithRootObject_];

    v50 = sub_1B20A97D4();
    v52 = v51;

    v53 = sub_1B20A97C4();
    sub_1B2062A04(v50, v52);
    [v2 setSiriContext_];
  }
}

id sub_1B209A4E8()
{
  result = [v0 siriContext];
  if (result)
  {
    v2 = result;
    v3 = sub_1B20A97D4();
    v5 = v4;

    v6 = objc_opt_self();
    v7 = sub_1B20A97C4();
    v8 = [v6 unarchiveObjectWithData_];

    if (v8)
    {
      sub_1B20A9D94();
      sub_1B2062A04(v3, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B2062A04(v3, v5);
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      sub_1B2099164();
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B20985B4(v12, &qword_1EB79F628, &qword_1B20B9600);
      return 0;
    }
  }

  return result;
}

id sub_1B209A66C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B209A740()
{
  v1 = v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  v2 = MEMORY[0x1EEE9AC00](v81);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v79 = &v74 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v74 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v74 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1B20A9E84();
  MEMORY[0x1B273FFD0](0xD00000000000001CLL, 0x80000001B20D3BB0);
  v17 = [v0 mtid];
  v78 = v9;
  if (v17)
  {
    v18 = v17;
    sub_1B20A9864();

    v19 = sub_1B20A9874();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_1B20A9874();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  sub_1B20A9F14();
  sub_1B20985B4(v16, &unk_1EB79F640, &qword_1B20B8D08);
  MEMORY[0x1B273FFD0](0x3A72756F6809200ALL, 0xE900000000000020);
  v82 = [v1 hour];
  v21 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v21);

  MEMORY[0x1B273FFD0](0xD000000000000037, 0x80000001B20D3BD0);
  v82 = [v1 minute];
  v22 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v22);

  MEMORY[0x1B273FFD0](0xD000000000000034, 0x80000001B20D3C10);
  v23 = [v1 title];
  v80 = v4;
  v77 = v12;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1B20A9A74();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v82 = v25;
  v83 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](0xD000000000000016, 0x80000001B20D3C50);
  v28 = [v1 enabled];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x1B273FFD0](v30, v31);

  MEMORY[0x1B273FFD0](0xD000000000000062, 0x80000001B20D3C70);
  v82 = [v1 repeatSchedule];
  v32 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v32);

  MEMORY[0x1B273FFD0](0xD000000000000011, 0x80000001B20D3CE0);
  v82 = [v1 sound];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F410, qword_1B20B8D68);
  v33 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v33);

  v75 = 0xD000000000000036;
  MEMORY[0x1B273FFD0]();
  v82 = [v1 silentModeOptions];
  v34 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v34);

  MEMORY[0x1B273FFD0](0xD00000000000002ELL, 0x80000001B20D3D40);
  v35 = [v1 sleepAlarm];
  v36 = v35 == 0;
  if (v35)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v36)
  {
    v38 = 0xE500000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  MEMORY[0x1B273FFD0](v37, v38);

  MEMORY[0x1B273FFD0](0xD000000000000037, 0x80000001B20D3D70);
  v39 = [v1 allowsSnooze];
  v40 = v39 == 0;
  if (v39)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x1B273FFD0](v41, v42);

  MEMORY[0x1B273FFD0](0xD000000000000037, 0x80000001B20D3DB0);
  v43 = [v1 snoozeFireDate];
  if (v43)
  {
    v44 = v76;
    v45 = v43;
    sub_1B20A9804();

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v44 = v76;
  }

  v47 = v77;
  v48 = sub_1B20A9834();
  v49 = *(*(v48 - 8) + 56);
  v50 = 1;
  v49(v44, v46, 1, v48);
  v51 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v51);

  MEMORY[0x1B273FFD0](0xD000000000000030, 0x80000001B20D3DF0);
  v52 = [v1 firedDate];
  if (v52)
  {
    v53 = v52;
    sub_1B20A9804();

    v50 = 0;
  }

  v54 = 1;
  v49(v47, v50, 1, v48);
  v55 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v55);

  MEMORY[0x1B273FFD0](0xD000000000000039, 0x80000001B20D3E30);
  v56 = [v1 dismissedDate];
  v57 = v78;
  if (v56)
  {
    v58 = v56;
    sub_1B20A9804();

    v54 = 0;
  }

  v59 = 1;
  v77 = v49;
  v49(v57, v54, 1, v48);
  v60 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v60);

  MEMORY[0x1B273FFD0](0xD000000000000035, 0x80000001B20D3E70);
  v82 = [v1 snoozeDuration];
  v61 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v61);

  MEMORY[0x1B273FFD0](0xD000000000000014, 0x80000001B20D3EB0);
  v82 = [v1 dismissedAction];
  v62 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v62);

  MEMORY[0x1B273FFD0](v75, 0x80000001B20D3ED0);
  v63 = [v1 lastModifiedDate];
  v64 = v79;
  if (v63)
  {
    v65 = v63;
    sub_1B20A9804();

    v59 = 0;
  }

  v66 = 1;
  v67 = v77;
  v77(v64, v59, 1, v48);
  v68 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v68);

  MEMORY[0x1B273FFD0](0xD000000000000035, 0x80000001B20D3F10);
  v69 = [v1 keepOffUntilDate];
  v70 = v80;
  if (v69)
  {
    v71 = v69;
    sub_1B20A9804();

    v66 = 0;
  }

  v67(v70, v66, 1, v48);
  v72 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v72);

  MEMORY[0x1B273FFD0](0xD000000000000041, 0x80000001B20D3F50);
  return v84;
}

id MTCDAlarm.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCDAlarm.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCDAlarm();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCDAlarm.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCDAlarm();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static AKCDAlarm.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1B209B368(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B20A97D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B209B3D0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B20A97C4();
  }

  v4 = v3;
  [v2 setData_];
}

void sub_1B209B448(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B20A9A74();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B209B4B0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B20A9A64();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier_];
}

id sub_1B209B520@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributes];
  *a2 = result;
  return result;
}

uint64_t sub_1B209B570@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AKCDAlarm();
  result = sub_1B20A9E94();
  *a2 = result;
  return result;
}

id static MTCDTimer.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_1B209B684@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

void sub_1B209B70C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B2063BF8(a1, &v15 - v9, &qword_1EB79F408, &qword_1B20B8D58);
  v11 = *a2;
  v12 = sub_1B20A9834();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B20A97E4();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B209B8BC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B2063BF8(a1, &v11 - v5, &unk_1EB79F640, &qword_1B20B8D08);
  v7 = *a2;
  v8 = sub_1B20A9874();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B20A9854();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setMtid_];
}

id sub_1B209BA10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_1B209BAA4@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B209BB5C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F500, qword_1B20B9150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B2063BF8(a1, &v11 - v5, &qword_1EB79F500, qword_1B20B9150);
  v7 = *a2;
  v8 = sub_1B20A97B4();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B20A9784();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTimerURL_];
}

void sub_1B209BCA4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B20A97D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B209BD14(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1B20A97C4();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1B209BD8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MTCDTimer();
  result = sub_1B20A9E94();
  *a2 = result;
  return result;
}

uint64_t sub_1B209BE0C@<X0>(uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = sub_1B20A97B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v31 = 1;
  sub_1B20A9A94();
  v11 = container_system_group_path_for_identifier();

  if (v11)
  {
    v29 = a3;
    sub_1B20A9AC4();
    v12 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v13 = sub_1B20A9A64();

    v14 = [v12 initFileURLWithPath_];

    v15 = sub_1B20A9A64();
    v16 = [v14 URLByAppendingPathComponent:v15 isDirectory:1];

    if (v16)
    {
      sub_1B20A9794();

      v17 = v5;
      (*(v5 + 32))(v10, v8, v4);
      v18 = sub_1B20A9784();
      v19 = *MEMORY[0x1E695DAF8];
      v20 = *MEMORY[0x1E695DAF0];
      v30 = 0;
      v21 = [v18 setResourceValue:v19 forKey:v20 error:&v30];
      v22 = v30;
      if (v21)
      {
        v23 = v29;
        sub_1B20A9794();
        v24 = v22;

        (*(v17 + 8))(v10, v4);
        (*(v17 + 56))(v23, 0, 1, v4);
      }

      else
      {
        v28 = v30;
        sub_1B20A9754();

        swift_willThrow();
        (*(v17 + 8))(v10, v4);
      }
    }

    else
    {
      sub_1B209C1CC();
      swift_allocError();
      swift_willThrow();
    }

    return MEMORY[0x1B2741310](v11, -1, -1);
  }

  else
  {
    v25 = v31;
    sub_1B209C178();
    swift_allocError();
    *v26 = v25;
    return swift_willThrow();
  }
}

unint64_t sub_1B209C178()
{
  result = qword_1EB79F7E0;
  if (!qword_1EB79F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F7E0);
  }

  return result;
}

unint64_t sub_1B209C1CC()
{
  result = qword_1EB79F7E8;
  if (!qword_1EB79F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F7E8);
  }

  return result;
}

uint64_t sub_1B209C220@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v4 = sub_1B20A9A64();
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier_];

  if (v5)
  {
    sub_1B20A9794();

    v6 = 0;
    v3 = v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B20A97B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

BOOL sub_1B209C33C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B20A9F44();

  return v2 != 0;
}

uint64_t sub_1B209C3A8()
{
  sub_1B20AA004();
  sub_1B20A9AA4();
  return sub_1B20AA024();
}

uint64_t sub_1B209C41C(uint64_t a1)
{
  sub_1B20AA004();
  sub_1B20A9AA4();
  return sub_1B20AA024();
}

uint64_t sub_1B209C470@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B20A9F44();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B209C4E4()
{
  container_get_error_description();

  return sub_1B20A9AC4();
}

unint64_t sub_1B209C510()
{
  result = qword_1EB79F7F0;
  if (!qword_1EB79F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F7F0);
  }

  return result;
}

uint64_t sub_1B209C564()
{
  container_get_error_description();

  return sub_1B20A9AC4();
}

uint64_t getEnumTagSinglePayload for ContainerError.Static(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContainerError.Static(_WORD *result, int a2, int a3)
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

void type metadata accessor for container_error_t()
{
  if (!qword_1EB79F7F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB79F7F8);
    }
  }
}

const char *MobileTimerFeatureFlags.domain.getter()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *MobileTimerFeatureFlags.feature.getter()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t MobileTimerFeatureFlags.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MobileTimerFeatureFlags;
  v4[4] = sub_1B209C7C4();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1B20A9884();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_1B209C7C4()
{
  result = qword_1EB79F800;
  if (!qword_1EB79F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F800);
  }

  return result;
}

uint64_t MobileTimerFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B20AA004();
  MEMORY[0x1B2740530](v1);
  return sub_1B20AA024();
}

unint64_t sub_1B209C8A4()
{
  result = qword_1EB79F808;
  if (!qword_1EB79F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F808);
  }

  return result;
}

const char *sub_1B209C8F8()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *sub_1B209C928()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t sub_1B209C9A8()
{
  sub_1B20AA004();
  MEMORY[0x1B2740530](0);
  return sub_1B20AA024();
}

uint64_t sub_1B209C9EC(uint64_t a1)
{
  sub_1B20AA004();
  MEMORY[0x1B2740530](0);
  return sub_1B20AA024();
}

void *sub_1B209CA2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F810, &qword_1B20B9990);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F818, &unk_1B20B9998);
  swift_allocObject();
  v1 = sub_1B20A9964();
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v0[4] = v3;
  return v0;
}

uint64_t sub_1B209CADC()
{
  v0 = swift_allocObject();
  sub_1B209F034();
  return v0;
}

uint64_t sub_1B209CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v51 = a3;
  v52 = a4;
  v41 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F828, &qword_1B20B99A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v37 - v7;
  v8 = sub_1B20A9CD4();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8A8, &qword_1B20B9B80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8B0, &qword_1B20B9B88);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8B8, &qword_1B20B9B90);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v19 = &v37 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8C0, &qword_1B20B9B98);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v38 = &v37 - v20;
  v58 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F818, &unk_1B20B9998);
  sub_1B209849C(&qword_1EB79F8C8, &qword_1EB79F818, &unk_1B20B9998, MEMORY[0x1E695BFB0]);
  v47 = sub_1B20A99B4();
  v58 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8D0, &qword_1B20B9BA0);
  sub_1B209849C(&qword_1EB79F8D8, &qword_1EB79F8D0, &qword_1B20B9BA0, MEMORY[0x1E695BDD0]);
  sub_1B20A9974();
  sub_1B209849C(&qword_1EB79F8E0, &qword_1EB79F8A8, &qword_1B20B9B80, MEMORY[0x1E695BC80]);
  sub_1B209F158();
  sub_1B20A99D4();
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  v22 = v41;
  *(v21 + 16) = v40;
  *(v21 + 24) = v22;
  sub_1B209849C(&qword_1EB79F8E8, &qword_1EB79F8B0, &qword_1B20B9B88, MEMORY[0x1E695BCF8]);

  sub_1B20A9994();

  (*(v15 + 8))(v17, v14);
  v23 = v39;
  sub_1B20A9CC4();
  sub_1B209F1AC();
  v24 = sub_1B20A9CF4();
  v58 = v24;
  v25 = sub_1B20A9CB4();
  v26 = v44;
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  sub_1B209849C(&qword_1EB79F8F0, &qword_1EB79F8B8, &qword_1B20B9B90, MEMORY[0x1E695BC90]);
  sub_1B20A0644(&qword_1EB79CE10, sub_1B209F1AC, MEMORY[0x1E69E8028]);
  v27 = v38;
  v28 = v42;
  sub_1B20A99C4();
  sub_1B209F2D0(v26);
  (*(v49 + 8))(v23, v50);
  (*(v43 + 8))(v19, v28);

  v29 = swift_allocObject();
  v30 = v51;
  v31 = v52;
  *(v29 + 16) = v51;
  *(v29 + 24) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  sub_1B209849C(&qword_1EB79F8F8, &qword_1EB79F8C0, &qword_1B20B9B98, MEMORY[0x1E695BE48]);
  swift_retain_n();
  v33 = v45;
  v34 = sub_1B20A9984();

  (*(v48 + 8))(v27, v33);
  v35 = *(v46 + 32);
  v56 = v46;
  v57 = v34;
  v53 = sub_1B20A0788;
  v54 = &v55;
  os_unfair_lock_lock(v35 + 4);
  sub_1B20A0820(&v58);
  os_unfair_lock_unlock(v35 + 4);
}

uint64_t sub_1B209D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v60 = a4;
  v73 = a2;
  v74 = a3;
  v68 = a1;
  v6 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F828, &qword_1B20B99A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v47 - v8;
  v9 = sub_1B20A9CD4();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v63 = v5;
  v58 = *(v12 - 8);
  v67 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v47 - v13;
  sub_1B20A9D84();
  sub_1B20A9944();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1B20A98F4();
  v55 = swift_getWitnessTable();
  v14 = sub_1B20A98C4();
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = swift_getWitnessTable();
  v51 = v17;
  v50 = sub_1B209F158();
  v81 = v14;
  v82 = &type metadata for ConductorStatus;
  v83 = v17;
  v84 = v50;
  v18 = sub_1B20A98E4();
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v53 = swift_getWitnessTable();
  v21 = sub_1B20A98D4();
  v62 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v47 - v22;
  v23 = sub_1B209F1AC();
  v47 = v23;
  v24 = swift_getWitnessTable();
  v54 = v24;
  v52 = sub_1B20A0644(&qword_1EB79CE10, sub_1B209F1AC, MEMORY[0x1E69E8028]);
  v81 = v21;
  v82 = v23;
  v83 = v24;
  v84 = v52;
  v61 = sub_1B20A9904();
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v49 = &v47 - v25;
  v81 = v5[2];
  WitnessTable = sub_1B20A99B4();
  v81 = WitnessTable;
  v26 = swift_allocObject();
  v27 = v60;
  *(v26 + 16) = v12;
  *(v26 + 24) = v27;
  sub_1B20A9974();

  sub_1B20A99D4();
  (*(v57 + 8))(v16, v14);
  v28 = v58;
  v29 = v65;
  (*(v58 + 16))(v65, v68, v12);
  v30 = v28;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v12;
  *(v32 + 24) = v27;
  (*(v30 + 32))(v32 + v31, v29, v12);
  v33 = v48;
  sub_1B20A9994();

  (*(v59 + 8))(v20, v18);
  v34 = v69;
  sub_1B20A9CC4();
  v35 = sub_1B20A9CF4();
  v81 = v35;
  v36 = sub_1B20A9CB4();
  v37 = v70;
  (*(*(v36 - 8) + 56))(v70, 1, 1, v36);
  v38 = v49;
  sub_1B20A99C4();
  sub_1B209F2D0(v37);

  (*(v71 + 8))(v34, v72);
  (*(v62 + 8))(v33, v21);
  v39 = swift_allocObject();
  v41 = v73;
  v40 = v74;
  *(v39 + 16) = v73;
  *(v39 + 24) = v40;
  v42 = swift_allocObject();
  v42[2] = v12;
  v42[3] = v27;
  v42[4] = v41;
  v42[5] = v40;
  swift_retain_n();
  v43 = v61;
  swift_getWitnessTable();
  v44 = sub_1B20A9984();

  (*(v64 + 8))(v38, v43);
  v45 = v63[4];
  v78 = v27;
  v79 = v63;
  v80 = v44;
  v75 = sub_1B209F3E4;
  v76 = &v77;
  os_unfair_lock_lock(v45 + 4);
  sub_1B20A02A0(&v81);
  os_unfair_lock_unlock(v45 + 4);
}

uint64_t sub_1B209DDA0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor);
  v5[0] = a1;
  v5[1] = a2;
  return (*(*v3 + 136))(v5);
}

id StringConductor.init()()
{
  v1 = OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F810, &qword_1B20B9990);
  v2 = swift_allocObject();
  v8 = 0;
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F818, &unk_1B20B9998);
  swift_allocObject();
  v3 = sub_1B20A9964();
  v4 = MEMORY[0x1E69E7CD0];
  v2[2] = v3;
  v2[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[4] = v5;
  *&v0[v1] = v2;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for StringConductor();
  return objc_msgSendSuper2(&v7, sel_init);
}

void *sub_1B209E06C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F830, &qword_1B20B99B0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F838, &qword_1B20B99B8);
  swift_allocObject();
  v1 = sub_1B20A9964();
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v0[4] = v3;
  return v0;
}

uint64_t sub_1B209E14C(uint64_t a1, uint64_t a2, double a3)
{
  v45 = a1;
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F828, &qword_1B20B99A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v33 - v5;
  v6 = sub_1B20A9CD4();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F848, &qword_1B20B99C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F850, &qword_1B20B99C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F858, &qword_1B20B99D0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v33 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F860, &qword_1B20B99D8);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v33 - v18;
  v52 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F838, &qword_1B20B99B8);
  sub_1B209849C(&qword_1EB79F868, &qword_1EB79F838, &qword_1B20B99B8, MEMORY[0x1E695BFB0]);
  v41 = sub_1B20A99B4();
  v52 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F870, &qword_1B20B99E0);
  sub_1B209849C(&qword_1EB79F878, &qword_1EB79F870, &qword_1B20B99E0, MEMORY[0x1E695BDD0]);
  sub_1B20A9974();
  sub_1B209849C(&qword_1EB79F880, &qword_1EB79F848, &qword_1B20B99C0, MEMORY[0x1E695BC80]);
  sub_1B209F158();
  sub_1B20A99D4();
  (*(v9 + 8))(v11, v8);
  sub_1B209849C(&qword_1EB79F888, &qword_1EB79F850, &qword_1B20B99C8, MEMORY[0x1E695BCF8]);
  sub_1B20A99A4();
  (*(v13 + 8))(v15, v12);
  v19 = v35;
  sub_1B20A9CC4();
  sub_1B209F1AC();
  v20 = sub_1B20A9CF4();
  v52 = v20;
  v21 = sub_1B20A9CB4();
  v22 = v38;
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  sub_1B209849C(&qword_1EB79F890, &qword_1EB79F858, &qword_1B20B99D0, MEMORY[0x1E695BDB8]);
  sub_1B20A0644(&qword_1EB79CE10, sub_1B209F1AC, MEMORY[0x1E69E8028]);
  v23 = v34;
  v24 = v36;
  sub_1B20A99C4();
  sub_1B209F2D0(v22);

  (*(v43 + 8))(v19, v44);
  (*(v37 + 8))(v17, v24);
  v25 = swift_allocObject();
  v26 = v45;
  v27 = v46;
  *(v25 + 16) = v45;
  *(v25 + 24) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_1B209849C(&qword_1EB79F898, &qword_1EB79F860, &qword_1B20B99D8, MEMORY[0x1E695BE48]);
  swift_retain_n();
  v29 = v39;
  v30 = sub_1B20A9984();

  (*(v42 + 8))(v23, v29);
  v31 = *(v40 + 32);
  v50 = v40;
  v51 = v30;
  v47 = sub_1B20A037C;
  v48 = &v49;
  os_unfair_lock_lock(v31 + 4);
  sub_1B20A0820(&v52);
  os_unfair_lock_unlock(v31 + 4);
}

id VoidConductor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoidConductor.init()()
{
  v1 = OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F830, &qword_1B20B99B0);
  v2 = swift_allocObject();
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F838, &qword_1B20B99B8);
  swift_allocObject();
  v3 = sub_1B20A9964();
  v4 = MEMORY[0x1E69E7CD0];
  v2[2] = v3;
  v2[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[4] = v5;
  *&v0[v1] = v2;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VoidConductor();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1B209EC74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B209ECBC(uint64_t a1)
{
  v2 = sub_1B20A9D84();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  sub_1B20A9944();
  (*(*(a1 - 8) + 56))(v4, 1, 1, a1);
  return sub_1B20A9954();
}

uint64_t sub_1B209EDE0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1B209EE78(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1B20A9D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  sub_1B20A9934();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1B209EFD0()
{

  return v0;
}

uint64_t sub_1B209F000()
{
  sub_1B209EFD0();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_1B209F034()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_1B20A9D84();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  sub_1B20A9944();
  (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
  v6 = sub_1B20A9954();
  v7 = MEMORY[0x1E69E7CD0];
  v1[2] = v6;
  v1[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v1[4] = v8;
  return v1;
}

unint64_t sub_1B209F158()
{
  result = qword_1EB79CE88;
  if (!qword_1EB79CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79CE88);
  }

  return result;
}

unint64_t sub_1B209F1AC()
{
  result = qword_1EB79CE08;
  if (!qword_1EB79CE08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB79CE08);
  }

  return result;
}

uint64_t sub_1B209F1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B20A9D84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1B209F2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F828, &qword_1B20B99A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B209F338(char *a1, uint64_t (*a2)(void))
{
  sub_1B20A0454();
  sub_1B209F158();
  result = sub_1B20A9914();
  if (result)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_1B209F3E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = (*(**(v1 + 24) + 128))(v7);

  v5 = sub_1B209F4A0(a1 + 1, v3);
  result = v4(v7, 0);
  *a1 = v5 & 1;
  return result;
}

uint64_t sub_1B209F4A0(uint64_t *a1, uint64_t a2)
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

    v8 = sub_1B20A9DF4();

    if (v8)
    {

      sub_1B20A9924();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1B20A9DE4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1B209F740(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1B209F974(v17 + 1);
    }

    sub_1B209FC08(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1B20A9924();
  sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v10 = sub_1B20A9A44();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1B209FCF0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1B20A0644(&qword_1EB79CE70, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((sub_1B20A9A54() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1B209F740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8A0, &qword_1B20B9B78);
    v2 = sub_1B20A9E64();
    v15 = v2;
    sub_1B20A9DD4();
    if (sub_1B20A9E04())
    {
      sub_1B20A9924();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B209F974(v9 + 1);
        }

        v2 = v15;
        sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        result = sub_1B20A9A44();
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

      while (sub_1B20A9E04());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B209F974(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8A0, &qword_1B20B9B78);
  result = sub_1B20A9E54();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      sub_1B20A9924();
      sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = sub_1B20A9A44();
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
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B209FC08(uint64_t a1, uint64_t a2)
{
  sub_1B20A9924();
  sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  sub_1B20A9A44();
  result = sub_1B20A9DC4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B209FCF0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B209F974(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B209FED8();
      goto LABEL_12;
    }

    sub_1B20A0028(v6 + 1);
  }

  v8 = *v3;
  sub_1B20A9924();
  sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  result = sub_1B20A9A44();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1B20A0644(&qword_1EB79CE70, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    do
    {
      result = sub_1B20A9A54();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B20A9FA4();
  __break(1u);
  return result;
}

void *sub_1B209FED8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8A0, &qword_1B20B9B78);
  v2 = *v0;
  v3 = sub_1B20A9E44();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1B20A0028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F8A0, &qword_1B20B9B78);
  result = sub_1B20A9E54();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1B20A9924();
      sub_1B20A0644(&qword_1EB79CE78, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      result = sub_1B20A9A44();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_1B20A02DC(char *a1)
{
  v2 = *(v1 + 16);
  sub_1B20A0454();
  sub_1B209F158();
  result = sub_1B20A9914();
  if (result)
  {
    return v2(0);
  }

  return result;
}

uint64_t sub_1B20A037C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 128))(v7);

  v5 = sub_1B209F4A0((a1 + 8), v3);
  result = v4(v7, 0);
  *a1 = v5 & 1;
  return result;
}

unint64_t sub_1B20A0454()
{
  result = qword_1EB79CE90;
  if (!qword_1EB79CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79CE90);
  }

  return result;
}

uint64_t sub_1B20A0644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B20A068C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1B20A0698(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B20A9F84();
  }
}

uint64_t sub_1B20A06D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 128))(v9);

  v6 = sub_1B209F4A0(&v10, a2);
  result = v5(v9, 0);
  v8 = v10;
  *a3 = v6 & 1;
  *(a3 + 8) = v8;
  return result;
}

void *sub_1B20A07A4@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 8) = v5;
  }

  return result;
}

id AKCDAttributes.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AKCDAttributes.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AKCDAttributes();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AKCDAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AKCDAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static AKCDAttributes.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B20A0A24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AKCDAttributes();
  result = sub_1B20A9E94();
  *a2 = result;
  return result;
}

uint64_t sub_1B20A0A68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F900, qword_1B20B9C10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B20B8E70;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001B20D4210;
  sub_1B20A9FF4();
}

id MockAlarmStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockAlarmStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockAlarmStorage();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MockAlarmStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockAlarmStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MTCDTimerDuration.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_1B20A0D58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFavorite];
  *a2 = result;
  return result;
}

uint64_t sub_1B20A0DA0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastModified];
  if (v3)
  {
    v4 = v3;
    sub_1B20A9804();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B20A9834();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B20A0E44(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B20A1074(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B20A9834();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B20A97E4();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastModified_];
}

id sub_1B20A0F70@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 validRecent];
  *a2 = result;
  return result;
}

id sub_1B20A0FB8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 latest];
  *a2 = result;
  return result;
}

uint64_t sub_1B20A1000@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MTCDTimerDuration();
  result = sub_1B20A9E94();
  *a2 = result;
  return result;
}

uint64_t sub_1B20A1074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __getAKCDaemonClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAKCDaemonClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAlarmKit.m" lineNumber:25 description:{@"Unable to find class %s", "AKCDaemon"}];

  __break(1u);
}

void __getAKCDaemonClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AlarmKitCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTAlarmKit.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getCHSWidgetConfigurationReaderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSWidgetConfigurationReaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTWidgetUtilities.m" lineNumber:12 description:{@"Unable to find class %s", "CHSWidgetConfigurationReader"}];

  __break(1u);
}

void ChronoServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTWidgetUtilities.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void __getCHSTimelineControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTWidgetUtilities.m" lineNumber:14 description:{@"Unable to find class %s", "CHSTimelineController"}];

  __break(1u);
}

void __getMTAlarmKitAdoptionManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTAlarmKitAdoptionManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAlarmKitAdoptionCoordinator.m" lineNumber:24 description:{@"Unable to find class %s", "MTAlarmKitAdoptionManager"}];

  __break(1u);
}

void __getMTAlarmKitAdoptionManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileTimerSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTAlarmKitAdoptionCoordinator.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMDiscoverabilitySignalEventClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAlarmStorage.m" lineNumber:54 description:{@"Unable to find class %s", "BMDiscoverabilitySignalEvent"}];

  __break(1u);
}

void BiomeStreamsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTAlarmStorage.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMStreamsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMStreamsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAlarmStorage.m" lineNumber:56 description:{@"Unable to find class %s", "BMStreams"}];

  __break(1u);
}

void __getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTCreateTimerIntentHandler.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchableIndexClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableIndexClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAlarmIntent.m" lineNumber:24 description:{@"Unable to find class %s", "CSSearchableIndex"}];

  __break(1u);
}

void __getCSSearchableIndexClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTAlarmIntent.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void HealthKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTTimeInBedSessionTracker.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getNPSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WorldClockManager.m" lineNumber:30 description:{@"Unable to find class %s", "NPSManager"}];

  __break(1u);
}

void __getNPSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WorldClockManager.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void getHKCategoryTypeIdentifierSleepAnalysis_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKCategoryTypeIdentifier getHKCategoryTypeIdentifierSleepAnalysis(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepSessionManager.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getHKHealthStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepSessionManager.m" lineNumber:23 description:{@"Unable to find class %s", "HKHealthStore"}];

  __break(1u);
}

void HealthKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTSleepSessionManager.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getHKObjectTypeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKObjectTypeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepSessionManager.m" lineNumber:25 description:{@"Unable to find class %s", "HKObjectType"}];

  __break(1u);
}

void __getHKCategorySampleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKCategorySampleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepSessionManager.m" lineNumber:24 description:{@"Unable to find class %s", "HKCategorySample"}];

  __break(1u);
}

void __getHKDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKDeviceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepSessionManager.m" lineNumber:26 description:{@"Unable to find class %s", "HKDevice"}];

  __break(1u);
}

void MTGetDeviceLockState_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int MTGetDeviceLockState(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"MTUtilities.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUtilities.m" lineNumber:50 description:{@"%s", *a1}];

  __break(1u);
}

void __getCARSessionStatusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCARSessionStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTUtilities.m" lineNumber:33 description:{@"Unable to find class %s", "CARSessionStatus"}];

  __break(1u);
}

void __getCARSessionStatusClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CarKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUtilities.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUtilities.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __getTUCallCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUCallCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTUserNotificationCenter.m" lineNumber:64 description:{@"Unable to find class %s", "TUCallCenter"}];

  __break(1u);
}

void __getTUCallCenterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUserNotificationCenter.m" lineNumber:63 description:{@"%s", *a1}];

  __break(1u);
}

void __getMRMediaRemoteSendCommandSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUserNotificationCenter.m" lineNumber:61 description:{@"%s", *a1}];

  __break(1u);
}

void __getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BulletinDistributorCompanionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTUserNotificationCenter_Internal.h" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getMTActivitiesManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTActivitiesManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTActivityCoordinator.m" lineNumber:31 description:{@"Unable to find class %s", "MTActivitiesManager"}];

  __break(1u);
}

void __getMTActivitiesManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileTimerSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTActivityCoordinator.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void IOKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IOKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTPowerAssertion.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getGSSendAppPreferencesChangedSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GraphicsServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTLegacyManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getMTStopwatchStorageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTStopwatchStorageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTStopwatchHeaders.h" lineNumber:15 description:{@"Unable to find class %s", "MTStopwatchStorage"}];

  __break(1u);
}

void __getMTStopwatchStorageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileTimerSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTStopwatchHeaders.h" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTDeviceListener.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getHKHealthStoreClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepManager.m" lineNumber:32 description:{@"Unable to find class %s", "HKHealthStore"}];

  __break(1u);
}

void HealthKitLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTSleepManager.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void _CFUserNotificationCallback_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ couldn't find callback for notification %{public}@", buf, 0x16u);
}

void __getMTReportsManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMTReportsManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTAnalyticsCoordinator.m" lineNumber:21 description:{@"Unable to find class %s", "MTReportsManager"}];

  __break(1u);
}

void __getMTReportsManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileTimerSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTAnalyticsCoordinator.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getSYServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSYServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MTCompanionSyncService.m" lineNumber:26 description:{@"Unable to find class %s", "SYService"}];

  __break(1u);
}

void CompanionSyncLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CompanionSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTCompanionSyncService.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getIDSSendMessageOptionBypassDuetKeySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MTCompanionSyncService.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
  sub_1B20A9744();
}