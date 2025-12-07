uint64_t sub_22C9F9AE0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_22C9F9B28(uint64_t a1, uint64_t a2)
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

  sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_22C9F9BA4(uint64_t a1, uint64_t a2)
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

  sub_22C9D02E4(&qword_27D9E4F58, &unk_22CA24D80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

uint64_t sub_22C9F9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22CA21360() & 1;
  }
}

BOOL sub_22C9F9CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_22CA21360() & 1;
    }

    return 1;
  }

  return v4;
}

void sub_22C9F9D1C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9E6DA0();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318BAD10](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_22C9F9E10(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_22C9F9EC0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

void sub_22C9F9F74(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      sub_22C9D02E4(&qword_27D9E4F68, &qword_22CA23E98);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v6;
      v8[3] = (2 * ((v9 - 32) / 8)) | 1;
    }

    if (v5 != a4)
    {
      type metadata accessor for MSPlayMediaAppIntent();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C9FA050(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C9D02E4(&qword_27D9E4F68, &qword_22CA23E98);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for MSSuggestion(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_22C9FA12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22C9F9BA4(*(a1 + 16), 0);
  sub_22C9FA960(&v8, v3 + 4, v1, a1);
  v5 = v4;
  v6 = v8;

  sub_22C9E297C(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22C9FA1FC(uint64_t a1, char a2)
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

  sub_22CA21290();
LABEL_9:
  result = sub_22CA211D0();
  *v2 = result;
  return result;
}

uint64_t sub_22C9FA29C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22CA20940();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318BA4A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318BA4B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22C9FA314(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20970();

  return v3;
}

void (*sub_22C9FA378(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_22C9FB064(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318BAD10](v5, v4);
  }

  *v3 = v7;
  return sub_22C9FAEE0;
}

void (*sub_22C9FA3E0(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_22C9FB064(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318BAD10](v5, v4);
  }

  *v3 = v7;
  return sub_22C9FA448;
}

uint64_t sub_22C9FA554(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_22C9FA5A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_22CA21290();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C9FA5F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22CA21290();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22C9E6DA0();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MSPlayMediaAppIntent();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22C9FADFC(&qword_27D9E4F78, &qword_27D9E4DA8, &qword_22CA232F0, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_22C9D02E4(&qword_27D9E4DA8, &qword_22CA232F0);
          v9 = sub_22C9FA3E0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9FA780(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22CA21290();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22C9E6DA0();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MSSuggestion(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22C9FADFC(&qword_27D9E4F60, &unk_27D9E47C0, &qword_22CA23E90, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_22C9D02E4(&unk_27D9E47C0, &qword_22CA23E90);
          v9 = sub_22C9FA378(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C9FA960(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
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
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C9FAB40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22C9FAB54(a1, a2);
  }

  return a1;
}

uint64_t sub_22C9FAB54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_22C9FABAC(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
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
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C9FAD40()
{

  sub_22C9FB03C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C9FAD88(void (*a1)(void))
{
  a1(*(v1 + 16));

  sub_22C9FB018();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C9FADFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22C9D0584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C9FAFC4(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  return result;
}

unint64_t sub_22C9FB064(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_22C9CC3A0(a3);

  return sub_22C9CC3AC(a2, v5, a3);
}

id MSWorkoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *MSWorkoutManager.healthStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore);
  v2 = v1;
  return v1;
}

id MSWorkoutManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *&v0[OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MSWorkoutManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_22C9FB214(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 176) = a2;
  *(v4 + 336) = a1;
  v5 = sub_22C9D02E4(&qword_27D9E4F98, &qword_22CA23EC8);
  *(v4 + 200) = v5;
  sub_22C9FC4C0(v5);
  *(v4 + 208) = v6;
  *(v4 + 216) = swift_task_alloc();
  v7 = sub_22CA209F0();
  *(v4 + 224) = v7;
  sub_22C9FC4C0(v7);
  *(v4 + 232) = v8;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v9 = sub_22CA20AB0();
  *(v4 + 264) = v9;
  sub_22C9FC4C0(v9);
  *(v4 + 272) = v10;
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C9FB3A0, 0, 0);
}

uint64_t sub_22C9FB3A0(id a1, uint64_t a2)
{
  v3 = *(*(v2 + 192) + OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore);
  *(v2 + 288) = v3;
  if (v3)
  {
    v4 = *(v2 + 336);
    if (__OFSUB__(84, v4))
    {
      __break(1u);
    }

    else
    {
      if (v4 == 84)
      {
        v4 = 3000;
        goto LABEL_9;
      }

      if ((v4 & 0x80000000) == 0)
      {
LABEL_9:
        *(v2 + 296) = v4;
        v7 = v3;
        sub_22CA20A80();
        sub_22CA20A60();
        v8 = objc_opt_self();
        v9 = sub_22CA209A0();
        v10 = sub_22CA209A0();
        v11 = [v8 predicateForSamplesWithStartDate:v9 endDate:v10 options:1];
        *(v2 + 304) = v11;

        sub_22C9D02E4(&qword_27D9E4FA0, &qword_22CA23ED0);
        v12 = sub_22C9D02E4(&qword_27D9E4FA8, &qword_22CA23ED8);
        sub_22C9FC4C0(v12);
        *(swift_allocObject() + 16) = xmmword_22CA22F90;
        sub_22C9FBF58();
        v13 = v11;
        sub_22CA20D70();

        sub_22C9D02E4(&qword_27D9E4FB8, &qword_22CA23EE0);
        v14 = sub_22C9D02E4(&unk_27D9E4FC0, &unk_22CA23EE8);
        sub_22C9FC4C0(v14);
        *(swift_allocObject() + 16) = xmmword_22CA22F90;
        KeyPath = swift_getKeyPath();
        MEMORY[0x2318BA460](KeyPath, 1);
        sub_22CA20D80();
        v16 = swift_task_alloc();
        *(v2 + 312) = v16;
        *v16 = v2;
        v16[1] = sub_22C9FB718;
        a2 = *(v2 + 200);
        a1 = v7;

        return MEMORY[0x282120380](a1, a2);
      }
    }

    __break(1u);
    return MEMORY[0x282120380](a1, a2);
  }

  v5 = *(v2 + 8);

  return v5(0);
}

uint64_t sub_22C9FB718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_22C9FBD70;
  }

  else
  {
    v4 = sub_22C9FB82C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_22C9FB82C()
{
  v1 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  result = sub_22C9E6DA0();
  if (!result)
  {
LABEL_43:
    v52 = *(v0 + 304);
    v53 = *(v0 + 288);

    v55 = *(v0 + 272);
    v54 = *(v0 + 280);
    v57 = *(v0 + 256);
    v56 = *(v0 + 264);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v59 + 8))(v57, v58);
    (*(v55 + 8))(v54, v56);

    v60 = *(v0 + 8);

    return v60(v1);
  }

  v3 = result;
  if (result < 1)
  {
    goto LABEL_47;
  }

  v4 = 0;
  v5 = *(v0 + 320);
  v6 = v5 & 0xC000000000000001;
  v61 = v5 + 32;
  while (1)
  {
    if (v6)
    {
      v7 = MEMORY[0x2318BAD10](v4, *(v0 + 320));
    }

    else
    {
      v7 = *(v61 + 8 * v4);
    }

    v8 = v7;
    v9 = *(v0 + 336);
    result = [v7 workoutActivityType];
    v10 = result;
    if (v9 != 84)
    {
      if (result == *(v0 + 296))
      {
        v23 = v8;
        v24 = sub_22C9FC1D8(v23);
        if (!v24)
        {

          goto LABEL_40;
        }

        v25 = v24;
        v26 = 0.0;
        if (*(v24 + 16))
        {
          v27 = sub_22C9FC50C();
          v29 = sub_22C9FBFA8(v27, v28);
          if (v30)
          {
            sub_22C9D66FC(*(v25 + 56) + 32 * v29, v0 + 16);
            if (swift_dynamicCast())
            {
              v26 = *(v0 + 152);
            }
          }
        }

        if (*(v25 + 16) && (v31 = sub_22C9FC4D0(), v33 = sub_22C9FBFA8(v31, v32), (v34 & 1) != 0))
        {
          sub_22C9D66FC(*(v25 + 56) + 32 * v33, v0 + 48);

          if (swift_dynamicCast())
          {
            v35 = *(v0 + 144);
            goto LABEL_36;
          }
        }

        else
        {
        }

        v35 = 0.0;
LABEL_36:
        v45 = *(v0 + 240);
        v44 = *(v0 + 248);
        v46 = *(v0 + 336);
        v47 = v23;
        v48 = [v47 startDate];
        sub_22CA209D0();

        v49 = [v47 endDate];
        sub_22CA209D0();

        v50 = objc_allocWithZone(type metadata accessor for MSWorkoutItem(0));
        v51 = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v46, v44, v45, v26, v35);
        MEMORY[0x2318BA9F0]();
        sub_22C9FC520();
        if (v43)
        {
          sub_22C9FC4E8();
        }

        sub_22CA20F00();

LABEL_39:
        v1 = v62;
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    if (result >> 31)
    {
      break;
    }

    v8 = v8;
    v11 = sub_22C9FC1D8(v8);
    if (v11)
    {
      v12 = v11;
      v13 = 0.0;
      if (*(v11 + 16))
      {
        v14 = sub_22C9FC50C();
        v16 = sub_22C9FBFA8(v14, v15);
        if (v17)
        {
          sub_22C9D66FC(*(v12 + 56) + 32 * v16, v0 + 80);
          if (swift_dynamicCast())
          {
            v13 = *(v0 + 168);
          }
        }
      }

      if (*(v12 + 16) && (v18 = sub_22C9FC4D0(), v20 = sub_22C9FBFA8(v18, v19), (v21 & 1) != 0))
      {
        sub_22C9D66FC(*(v12 + 56) + 32 * v20, v0 + 112);

        if (swift_dynamicCast())
        {
          v22 = *(v0 + 160);
LABEL_31:
          v37 = *(v0 + 240);
          v36 = *(v0 + 248);
          v38 = v8;
          v39 = [v38 startDate];
          sub_22CA209D0();

          v40 = [v38 endDate];
          sub_22CA209D0();

          v41 = objc_allocWithZone(type metadata accessor for MSWorkoutItem(0));
          v42 = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v10, v36, v37, v13, v22);
          MEMORY[0x2318BA9F0]();
          sub_22C9FC520();
          if (v43)
          {
            sub_22C9FC4E8();
          }

          sub_22CA20F00();

          goto LABEL_39;
        }
      }

      else
      {
      }

      v22 = 0.0;
      goto LABEL_31;
    }

LABEL_28:

LABEL_40:
    if (v3 == ++v4)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_22C9FBD70()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v12 = *(v0 + 264);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

void sub_22C9FBE88(id *a1)
{
  v1 = [*a1 endDate];
  sub_22CA209D0();
}

BOOL sub_22C9FBEE8(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

id MSWorkoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22C9FBF58()
{
  result = qword_27D9E4FB0;
  if (!qword_27D9E4FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4FB0);
  }

  return result;
}

unint64_t sub_22C9FBFA8(uint64_t a1, uint64_t a2)
{
  sub_22CA21440();
  sub_22CA20E60();
  v4 = sub_22CA21490();

  return sub_22C9FC064(a1, a2, v4);
}

unint64_t sub_22C9FC020(uint64_t a1)
{
  v2 = sub_22CA210C0();

  return sub_22C9FC118(a1, v2);
}

unint64_t sub_22C9FC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22CA21360() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C9FC118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for MSWorkoutItem(0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_22CA210D0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22C9FC1D8(void *a1)
{
  v2 = [a1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22CA20DB0();

  return v3;
}

uint64_t dispatch thunk of MSWorkoutManager.workouts(of:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C9FC3B0;

  return v11(a1, a2, a3);
}

uint64_t sub_22C9FC3B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22C9FC4E8()
{

  return sub_22CA20EE0();
}

void *sub_22C9FC5D4()
{
  v1 = *(v0 + OBJC_IVAR___MSFeedbackAction_suggestion);
  v2 = v1;
  return v1;
}

uint64_t sub_22C9FC6CC()
{
  v1 = *(v0 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);

  return v1;
}

uint64_t sub_22C9FC788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);
  *v3 = a1;
  v3[1] = a2;
}

id sub_22C9FC7A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR___MSFeedbackAction_suggestion;
  *(v4 + OBJC_IVAR___MSFeedbackAction_suggestion) = 0;
  v6 = (v4 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);
  *v6 = 0;
  v6[1] = 0;
  *(v4 + OBJC_IVAR___MSFeedbackAction_type) = a1;
  *(v4 + v5) = a2;
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = MSFeedbackAction;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t MSFeedbackAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 type];
  v4 = [v1 suggestion];
  v5 = sub_22C9FD3A0(v1);
  v7 = v6;
  v8 = objc_allocWithZone(MSFeedbackAction);
  v9 = sub_22C9FD318(v3, v4, v5, v7);
  result = type metadata accessor for MSFeedbackAction();
  a1[3] = result;
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall MSFeedbackAction.encode(with:)(NSCoder with)
{
  v3 = [v1 type];
  v4 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeInt32:v3 forKey:v4];

  v5 = [v1 suggestion];
  v6 = sub_22C9FD448();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  sub_22C9FD3A0(v1);
  if (v7)
  {
    v8 = sub_22CA20E10();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22C9FD470();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id MSFeedbackAction.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = OBJC_IVAR___MSFeedbackAction_suggestion;
  *&v1[OBJC_IVAR___MSFeedbackAction_suggestion] = 0;
  v4 = &v1[OBJC_IVAR___MSFeedbackAction_suggestionBundleID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = sub_22C9FD448();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

LABEL_15:
    sub_22C9D027C(&v32);
    goto LABEL_16;
  }

  v7 = type metadata accessor for MSSuggestion(0);
  if ((sub_22C9FD490(v7, v8, v9, v7, v10, v11) & 1) == 0)
  {

LABEL_16:

    type metadata accessor for MSFeedbackAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v28;
  v13 = sub_22C9FD470();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_22CA21130();
    v15 = swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {

    goto LABEL_15;
  }

  if ((sub_22C9FD490(v15, v16, v17, MEMORY[0x277D837D0], v18, v19) & 1) == 0)
  {

    goto LABEL_16;
  }

  v20 = v28;
  v21 = v29;
  v22 = sub_22CA20E10();
  v23 = [a1 decodeInt32ForKey_];

  *&v1[OBJC_IVAR___MSFeedbackAction_type] = v23;
  v24 = *&v1[v3];
  *&v1[v3] = v12;

  *v4 = v20;
  *(v4 + 1) = v21;

  v27.receiver = v1;
  v27.super_class = MSFeedbackAction;
  v25 = objc_msgSendSuper2(&v27, sel_init);

  return v25;
}

uint64_t MSFeedbackAction.isEqual(_:)(uint64_t a1)
{
  sub_22C9D032C(a1, v16);
  if (!v17)
  {
    sub_22C9D027C(v16);
    goto LABEL_23;
  }

  type metadata accessor for MSFeedbackAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v13 = 0;
    return v13 & 1;
  }

  v2 = [v1 type];
  if (v2 != [v15 type])
  {
LABEL_22:

    goto LABEL_23;
  }

  v3 = sub_22C9FD3A0(v1);
  v5 = v4;
  v6 = sub_22C9FD3A0(v15);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_14:

    goto LABEL_23;
  }

  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_22CA21360();

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  v10 = [v1 suggestion];
  v11 = [v15 suggestion];
  v12 = v11;
  if (!v10)
  {

    if (!v12)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_23;
  }

  if (!v11)
  {

    goto LABEL_22;
  }

  type metadata accessor for MSSuggestion(0);
  v13 = sub_22CA210D0();

  return v13 & 1;
}

id MSFeedbackAction.hash.getter()
{
  result = [v0 suggestion];
  if (result)
  {
    v2 = result;
    v3 = sub_22CA210F0();

    return v3;
  }

  return result;
}

id MSFeedbackAction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22C9FD318(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_22CA20E10();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithType:a1 suggestion:a2 suggestionBundleID:v7];

  return v8;
}

uint64_t sub_22C9FD3A0(void *a1)
{
  v1 = [a1 suggestionBundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20E20();

  return v3;
}

unint64_t type metadata accessor for MSFeedbackAction()
{
  result = qword_27D9E4FF0;
  if (!qword_27D9E4FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4FF0);
  }

  return result;
}

uint64_t sub_22C9FD448()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9FD470()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9FD490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_22C9FD4B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22C9FD538(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C9FD610(char a1)
{
  result = 0x636E657571657266;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F63536C616E6966;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 13:
      sub_22C9FE4BC();
      result = v12 + 7;
      break;
    case 5:
      sub_22C9FE4BC();
      result = v10 + 20;
      break;
    case 6:
      sub_22C9FE4BC();
      result = v13 | 4;
      break;
    case 7:
      sub_22C9FE4BC();
      result = v8 + 11;
      break;
    case 8:
    case 23:
      sub_22C9FE4BC();
      result = v16 + 24;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x6144664F656D6974;
      break;
    case 11:
      sub_22C9FE4BC();
      result = v5 - 1;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x7974697669746361;
      break;
    case 16:
      sub_22C9FE4BC();
      result = v4 | 6;
      break;
    case 17:
      sub_22C9FE4BC();
      result = v9 + 13;
      break;
    case 18:
      sub_22C9FE4BC();
      result = v14 + 26;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 20:
    case 22:
      sub_22C9FE4BC();
      result = v15 + 17;
      break;
    case 21:
      sub_22C9FE4BC();
      result = v11 + 30;
      break;
    case 24:
      sub_22C9FE4BC();
      result = v7 + 37;
      break;
    case 25:
      sub_22C9FE4BC();
      result = v6 + 1;
      break;
    case 27:
      sub_22C9FE4BC();
      result = v3 + 5;
      break;
    default:
      sub_22C9FE4BC();
      result = v17 | 2;
      break;
  }

  return result;
}

uint64_t sub_22C9FD970(char a1)
{
  sub_22CA21440();
  sub_22C9FD610(a1);
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FD9E0(uint64_t a1, char a2)
{
  sub_22C9FD610(a2);
  sub_22CA20E60();
}

uint64_t sub_22C9FDA34(uint64_t a1, char a2)
{
  sub_22CA20E60();
}

uint64_t sub_22C9FDAB8(uint64_t a1, char a2)
{
  sub_22CA21440();
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FDB50(uint64_t a1, char a2)
{
  sub_22CA21440();
  sub_22C9FD610(a2);
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FDBB0(char a1)
{
  if (a1)
  {
    return 0x6574736567677573;
  }

  else
  {
    return 0x64656D75736E6F63;
  }
}

id sub_22C9FDC00()
{
  v0 = sub_22CA20A90();
  sub_22C9DAE90();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C9E05D0();
  v6 = v5 - v4;
  v7 = sub_22CA20AB0();
  sub_22C9DAE90();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C9E05D0();
  v13 = v12 - v11;
  v14 = sub_22CA209F0();
  sub_22C9DAE90();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C9E05D0();
  v20 = v19 - v18;
  sub_22CA20980();
  sub_22CA20A80();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9980], v0);
  v21 = sub_22CA20AA0();
  (*(v2 + 8))(v6, v0);
  if ((v21 - 6) > 5)
  {
    if ((v21 - 12) > 4)
    {
      v23 = objc_opt_self();
      if ((v21 - 17) > 3)
      {
        v22 = [v23 featureValueWithDouble_];
      }

      else
      {
        v22 = [v23 featureValueWithDouble_];
      }
    }

    else
    {
      v22 = [objc_opt_self() featureValueWithDouble_];
    }
  }

  else
  {
    v22 = [objc_opt_self() featureValueWithDouble_];
  }

  v24 = v22;
  (*(v9 + 8))(v13, v7);
  (*(v16 + 8))(v20, v14);
  return v24;
}

id sub_22C9FDEC0(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 8:
    case 9:
    case 11:
    case 16:
    case 18:
    case 23:
    case 25:
    case 27:
    case 28:
    case 36:
    case 37:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 49:
    case 51:
    case 54:
    case 55:
    case 56:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 68:
    case 71:
    case 77:
    case 81:
    case 82:
    case 83:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
    case 2:
    case 7:
    case 12:
    case 19:
    case 21:
    case 29:
    case 33:
    case 38:
    case 52:
    case 57:
    case 58:
    case 62:
    case 66:
    case 72:
    case 78:
    case 80:
      v2 = objc_opt_self();
      v3 = [v2 featureValueWithDouble_];
      v1 = [v2 featureValueWithDouble_];

      break;
    case 4:
    case 5:
    case 10:
    case 13:
    case 14:
    case 15:
    case 17:
    case 20:
    case 22:
    case 24:
    case 26:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 39:
    case 40:
    case 42:
    case 47:
    case 48:
    case 50:
    case 53:
    case 59:
    case 67:
    case 69:
    case 70:
    case 73:
    case 74:
    case 75:
    case 76:
    case 79:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
    default:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
  }

  return v1;
}

unint64_t sub_22C9FE028(uint64_t a1, uint64_t a2)
{
  v2 = sub_22CA21380();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22C9FE0A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C9FE028(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C9FE0D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9FD610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22C9FE100()
{
  result = qword_27D9E4FF8;
  if (!qword_27D9E4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4FF8);
  }

  return result;
}

uint64_t sub_22C9FE154(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22C9FE1DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C9FE2C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22CA21320();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C9FE338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C9FE2C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C9FE368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9FDBB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22C9FE398()
{
  result = qword_27D9E5000;
  if (!qword_27D9E5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5000);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MSSuggestionError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22C9FE418(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C9FE458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_22C9FE518()
{
  sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  *(inited + 32) = 0x6144664F656D6974;
  *(inited + 40) = 0xE900000000000079;
  [*(v0 + 16) doubleValue];
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 featureValueWithDouble_];
  v6 = sub_22C9EED80();
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000022CA25C10;
  [*v0 doubleValue];
  *(inited + 96) = [v4 featureValueWithDouble_];
  *(inited + 120) = v6;
  strcpy((inited + 128), "activityType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v7 = [v4 featureValueWithInt64_];
  *(inited + 168) = v6;
  *(inited + 144) = v7;
  sub_22CA20DD0();
  v8 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v9 = sub_22CA04300();
  return sub_22CA17474(v9);
}

void sub_22C9FEA28(uint64_t a1)
{
  sub_22CA0467C();
  v5 = v2;
  v183 = v6;
  v182 = sub_22CA20AB0();
  sub_22C9DAE90();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22CA0431C();
  v181 = v10;
  sub_22CA045EC();
  v180 = sub_22CA20900();
  sub_22C9DAE90();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C9E05C0();
  v167 = (v14 - v15);
  sub_22CA045E0();
  MEMORY[0x28223BE20](v16);
  sub_22CA045D4();
  v169 = v17;
  sub_22CA045EC();
  v179 = sub_22CA209F0();
  sub_22C9DAE90();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C9E05C0();
  v170 = v21 - v22;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v23);
  v178 = &v159 - v24;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v25);
  sub_22CA045D4();
  v186 = v26;
  sub_22C9FAFE8();
  swift_beginAccess();
  v184 = v1;
  v27 = *(v1 + 16) + 64;
  sub_22CA0435C();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v177 = *MEMORY[0x277CC9968];
  v175 = v8 + 8;
  v176 = v19 + 8;
  v174 = v12 + 8;

  v34 = 0;
  v173 = xmmword_22CA22F90;
  v35 = 0.0;
  v165 = v33;
  v160 = v32;
  v161 = v27;
  if (v30)
  {
    while (1)
    {
      v189 = v5;
      v36 = v34;
LABEL_7:
      v162 = v36;
      v163 = (v30 - 1) & v30;
      v37 = __clz(__rbit64(v30)) | (v36 << 6);
      v38 = *(v33 + 56);
      v39 = (*(v33 + 48) + 16 * v37);
      v40 = v39[1];
      v164 = *v39;
      v41 = (v38 + 72 * v37);
      v42 = *v41;
      v43 = v41[1];
      v171 = *(*v41 + 2);
      v166 = v40;

      v168 = v43;

      v44 = 0.0;
      v172 = v42;
      v45 = v42 + 64;
      v46 = 0.0;
      v47 = 0.0;
      while (v171 != *&v44)
      {
        if (*&v44 >= *(v172 + 2))
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_22CA0437C();
        v49 = sub_22CA04468(v48);
        v50 = v42;
        v51 = v189;
        sub_22C9FE518();
        if (v51)
        {
LABEL_36:

LABEL_53:
          sub_22CA04654();
          return;
        }

        sub_22CA046A4();
        v188 = v49;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22CA046E4();
        sub_22CA04564();
        v47 = v47 + v3;
        sub_22CA20980();
        sub_22CA20A80();
        sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
        v52 = sub_22CA20A90();
        sub_22C9DAE90();
        v54 = v53;
        v55 = ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v56 = swift_allocObject();
        *(v56 + 16) = v173;
        (*(v54 + 104))(&v55[v56], v177, v52);
        v57 = sub_22CA02080(v56);
        sub_22CA046C4(v57);
        v58 = v169;
        sub_22CA0451C();

        v59 = sub_22CA044B4();
        (v55)(v59);
        v60 = sub_22CA045AC();
        v61(v60);
        v42 = v58;
        v62 = sub_22CA208E0();
        if (v63)
        {
          v4 = 0.0;
        }

        else
        {
          v4 = v62;
        }

        v64 = *(v184 + 24);

        exp(-0.693147181 / v64 * v4);
        v65 = sub_22CA04490();
        v66(v65);
        (v55)(v186, v52);
        v44 = v185;
        v46 = v46 + v3;
        v45 += 40;
      }

      v159 = v35;
      v67 = 0.0;
      v68 = v168;
      v171 = *(v168 + 2);
      v69 = v168 + 64;
      v70 = 0.0;
      v71 = 0.0;
      while (v171 != *&v67)
      {
        v72 = v189;
        if (*&v67 >= *(v68 + 2))
        {
          goto LABEL_55;
        }

        sub_22CA0437C();
        v212 = v42;
        v213 = v73;
        v214 = v74;
        v215 = v75;
        v216 = v76;
        v217 = v4;
        v49 = v75;
        v50 = v42;
        sub_22C9FE518();
        if (v72)
        {
          goto LABEL_36;
        }

        sub_22CA046A4();
        v188 = v49;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22CA046E4();
        sub_22CA04564();
        v71 = v71 + v3;
        sub_22CA20980();
        sub_22CA20A80();
        sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
        v77 = sub_22CA20A90();
        sub_22C9DAE90();
        v79 = v78;
        v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v81 = swift_allocObject();
        *(v81 + 16) = v173;
        v83 = *(v79 + 104);
        v82 = (v79 + 104);
        v83(v81 + v80, v177, v77);
        v84 = sub_22CA02080(v81);
        sub_22CA046C4(v84);
        v85 = v167;
        sub_22CA0451C();

        v86 = sub_22CA044B4();
        v82(v86);
        v87 = sub_22CA045AC();
        v88(v87);
        v42 = v85;
        v89 = sub_22CA208E0();
        if (v90)
        {
          v4 = 0.0;
        }

        else
        {
          v4 = v89;
        }

        v91 = *(v184 + 24);

        exp(-0.693147181 / v91 * v4);
        v92 = sub_22CA04490();
        v93(v92);
        (v82)(v170, v77);
        v67 = v185;
        v70 = v70 + v3;
        v69 += 40;
        v68 = v168;
      }

      v94 = v184;
      sub_22CA04310();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v218 = *(v94 + 16);
      sub_22CA04724();
      sub_22CA04264();
      if (__OFADD__(v97, v98))
      {
        break;
      }

      v99 = v96;
      v100 = v95;
      v101 = sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
      v102 = sub_22CA21250();
      v187 = v101;
      if (v102)
      {
        sub_22C9FBFA8(v164, v166);
        sub_22CA04244();
        if (!v103)
        {
          goto LABEL_64;
        }
      }

      if ((v99 & 1) == 0)
      {
        goto LABEL_62;
      }

      sub_22CA04458();
      if (!v100)
      {
        goto LABEL_62;
      }

      v106 = v105[7];
      v188 = v105[8];
      v108 = v105[4];
      v107 = v105[5];
      v110 = v105[2];
      v109 = v105[3];
      v111 = v105[1];
      v203 = v100;
      v204 = v111;
      v205 = v110;
      v206 = v109;
      v207 = v108;
      v208 = v107;
      v209 = v47 / v71;
      v210 = v106;
      v211 = *&v188;
      sub_22CA04704(v104);
      v194 = v100;
      v195 = v111;
      v196 = v110;
      v197 = v109;
      v198 = v108;
      v199 = v107;
      v200 = v47 / v71;
      v201 = v106;
      v202 = *&v188;
      sub_22CA03FFC(&v203, v193);
      sub_22CA0406C(&v194);
      v112 = v184;
      *(v184 + 16) = v218;
      swift_endAccess();
      sub_22CA04310();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v192 = *(v112 + 16);
      sub_22CA04724();
      v114 = v113;
      sub_22CA04264();
      if (__OFADD__(v115, v116))
      {
        goto LABEL_60;
      }

      if (sub_22CA21250())
      {
        sub_22C9FBFA8(v164, v166);
        sub_22CA04244();
        if (!v103)
        {
          goto LABEL_64;
        }
      }

      if ((v114 & 1) == 0)
      {
        goto LABEL_63;
      }

      v117 = v192;
      sub_22CA04458();
      v3 = v46 / v70;
      v188 = v118[8];
      v120 = v118[5];
      v119 = v118[6];
      v122 = v118[3];
      v121 = v118[4];
      v123 = v118[1];
      v124 = v118[2];
      v193[0] = v100;
      v193[1] = v123;
      v193[2] = v124;
      v193[3] = v122;
      v193[4] = v121;
      v193[5] = v120;
      v193[6] = v119;
      *&v193[7] = v46 / v70;
      v193[8] = v188;
      memmove((*(v117 + 56) + v125 * v126), v193, 0x48uLL);
      v191[0] = v100;
      v191[1] = v123;
      v191[2] = v124;
      v191[3] = v122;
      v191[4] = v121;
      v191[5] = v120;
      v191[6] = v119;
      *&v191[7] = v46 / v70;
      v191[8] = v188;
      sub_22CA03FFC(v193, v190);
      sub_22CA0406C(v191);
      *(v184 + 16) = v117;
      swift_endAccess();

      v35 = v159 + v46 / v70;
      v27 = v161;
      v34 = v162;
      v5 = v189;
      v33 = v165;
      v32 = v160;
      v30 = v163;
      if (!v163)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_3:
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v36 >= v32)
      {
        break;
      }

      v30 = *(v27 + 8 * v36);
      ++v34;
      if (v30)
      {
        v189 = v5;
        goto LABEL_7;
      }
    }

    v189 = v5;

    v127 = *(v184 + 16) + 64;
    sub_22CA0435C();
    v130 = v129 & v128;
    v132 = (v131 + 63) >> 6;

    v134 = 0;
    v181 = v133;
    while (v130)
    {
      v135 = v130;
LABEL_44:
      v130 = (v135 - 1) & v135;
      if (v35 != 0.0)
      {
        v187 = ((v135 - 1) & v135);
        v137 = __clz(__rbit64(v135)) | (v134 << 6);
        v138 = (*(v133 + 48) + 16 * v137);
        v140 = *v138;
        v139 = v138[1];
        v141 = *(*(v133 + 56) + 72 * v137 + 56);
        v142 = v184;
        sub_22CA04310();
        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v190[0] = *(v142 + 16);
        *(v142 + 16) = 0x8000000000000000;
        v143 = v140;
        v188 = v139;
        sub_22C9FBFA8(v140, v139);
        sub_22CA04264();
        v148 = v146 + v147;
        if (__OFADD__(v146, v147))
        {
          goto LABEL_58;
        }

        v149 = v145;
        v186 = v144;
        sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
        if (sub_22CA21250())
        {
          sub_22C9FBFA8(v143, v188);
          sub_22CA04244();
          if (!v103)
          {
            goto LABEL_64;
          }
        }

        if ((v149 & 1) == 0)
        {
          goto LABEL_61;
        }

        v150 = v190[0];
        sub_22CA04458();
        if (!v148)
        {
          goto LABEL_61;
        }

        v153 = *(v152 + 7);
        v185 = v152[6];
        v186 = v153;
        v154 = *(v152 + 5);
        v182 = *(v152 + 4);
        v183 = v154;
        v156 = *(v152 + 2);
        v155 = *(v152 + 3);
        v157 = *(v152 + 1);
        v158 = v141 / v35;
        v203 = v148;
        v204 = v157;
        v205 = v156;
        v206 = v155;
        v207 = v182;
        v208 = v154;
        v209 = v185;
        v210 = v153;
        v211 = v158;
        sub_22CA04704(v151);
        v194 = v148;
        v195 = v157;
        v196 = v156;
        v197 = v155;
        v198 = v182;
        v199 = v183;
        v200 = v185;
        v201 = v186;
        v202 = v158;
        sub_22CA03FFC(&v203, v193);
        sub_22CA0406C(&v194);
        *(v184 + 16) = v150;
        swift_endAccess();

        v133 = v181;
        v130 = v187;
      }
    }

    while (1)
    {
      v136 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      if (v136 >= v132)
      {

        goto LABEL_53;
      }

      v135 = *(v127 + 8 * v136);
      ++v134;
      if (v135)
      {
        v134 = v136;
        goto LABEL_44;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_22CA213C0();
  __break(1u);
}

uint64_t (*sub_22C9FF600(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_22CA03F30(0x28uLL);
  *a1 = v6;
  v6[4] = sub_22CA029B4(v6, a2, a3);
  return sub_22C9FF674;
}

void sub_22C9FF674(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22C9FF6C0()
{
  v1 = v0;
  sub_22CA04340();
  sub_22C9FAFE8();
  swift_beginAccess();
  sub_22CA045F8();
  if (v2)
  {

    v3 = sub_22CA04764();
    if (v4)
    {
      v5 = (*(v0 + 56) + 72 * v3);
      v6 = v5[6];
      v7 = v5[7];
      v8 = v5[8];

      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22CA22F80;
      *(inited + 32) = sub_22C9FD610(v1[32]);
      *(inited + 40) = v10;
      *(inited + 48) = v6;
      *(inited + 56) = sub_22C9FD610(v1[33]);
      *(inited + 64) = v11;
      *(inited + 72) = v7;
      *(inited + 80) = sub_22C9FD610(v1[34]);
      *(inited + 88) = v12;
      *(inited + 96) = v8;
      return sub_22CA20DD0();
    }
  }

  return 0;
}

void sub_22C9FF7D0(void *a1)
{
  sub_22C9DDEC8(a1, &selRef_intentIdentifier);
  if (v2)
  {
    sub_22CA043A4();

    sub_22CA04580();
    v3 = sub_22CA04274();
    sub_22C9FE6CC(v3);
  }

  sub_22C9DDEC8(a1, &selRef_bundleID);
  if (v4)
  {
    sub_22CA043A4();

    sub_22CA04580();
    v5 = sub_22CA04274();
    sub_22C9FE6CC(v5);
  }

  if ([a1 subtype] == 1 && sub_22CA0477C() - 1 <= 1)
  {
    type metadata accessor for MSSuggesterUtils();

    v6 = sub_22CA0477C();
    sub_22CA167EC(v6);
    sub_22CA04580();
    sub_22CA04744();

    sub_22CA044CC();
  }

  else
  {
    sub_22CA044CC();
  }
}

void sub_22C9FF998(void *a1)
{
  sub_22C9DDEC8(a1, &selRef_intentIdentifier);
  if (v2)
  {
    sub_22CA043A4();

    sub_22CA04580();
    v3 = sub_22CA04274();
    sub_22C9FE880(v3);
  }

  sub_22C9DDEC8(a1, &selRef_bundleID);
  if (v4)
  {
    sub_22CA043A4();

    sub_22CA04580();
    v5 = sub_22CA04274();
    sub_22C9FE880(v5);
  }

  if (sub_22CA0477C() - 1 > 1)
  {
    sub_22CA044CC();
  }

  else
  {
    type metadata accessor for MSSuggesterUtils();

    v6 = sub_22CA0477C();
    sub_22CA167EC(v6);
    sub_22CA04580();
    sub_22CA04744();

    sub_22CA044CC();
  }
}

uint64_t sub_22C9FFB48(uint64_t a1)
{

  sub_22C9FEA28(a1);

  if (!v1)
  {

    sub_22C9FEA28(a1);

    sub_22C9FEA28(a1);
  }

  return result;
}

id sub_22C9FFBE8(void *a1)
{
  v2 = v1;
  v4 = sub_22CA20DD0();
  sub_22C9DDEBC(a1);
  if (v5)
  {

    v6 = sub_22C9FF6C0();

    if (v6)
    {

      v4 = v6;
    }
  }

  v7 = [a1 bundleID];
  sub_22CA20E20();

  v8 = sub_22C9FF6C0();

  if (v8)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v33 = v4;
    sub_22CA041E0();
    sub_22CA02DAC(v8, v9, 0, v10, &v33);
    v4 = v33;
  }

  v11 = [a1 bundleID];
  v12 = sub_22CA20E20();
  v14 = v13;

  if (v12 == 0xD000000000000012 && 0x800000022CA25AB0 == v14)
  {
  }

  else
  {
    v16 = sub_22CA21360();

    if ((v16 & 1) == 0)
    {
      v17 = [a1 suggestionSource] == 0;
      v18 = 0.75;
      v19 = 0.25;
      goto LABEL_14;
    }
  }

  v17 = [a1 suggestionSource] == 0;
  v18 = 0.0;
  v19 = 1.0;
LABEL_14:
  if (v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  v22 = *(v2 + 24);
  *(inited + 32) = sub_22C9FD610(v22[32]);
  *(inited + 40) = v23;
  *(inited + 48) = v20;
  *(inited + 56) = sub_22C9FD610(v22[33]);
  *(inited + 64) = v24;
  *(inited + 72) = v20;
  *(inited + 80) = sub_22C9FD610(v22[34]);
  *(inited + 88) = v25;
  *(inited + 96) = v20;
  v26 = sub_22CA20DD0();
  swift_isUniquelyReferenced_nonNull_native();
  v33 = v4;
  sub_22CA041E0();
  sub_22CA02DAC(v26, v27, 0, v28, &v33);
  sub_22CA0DD9C(v33);
  v29 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v30 = sub_22CA04300();
  v31 = sub_22CA17474(v30);

  return v31;
}

void *sub_22C9FFF08()
{

  return v0;
}

uint64_t sub_22C9FFF38()
{
  sub_22C9FFF08();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_22C9FFF6C()
{
  v1 = v0;
  type metadata accessor for MSSuggestionItemAttributeFeedbackRewardFeatureStore();
  sub_22CA04398();
  v2 = swift_allocObject();
  sub_22CA00074(16, 17, 18, &unk_283FCE0D8, 7.0);
  v1[2] = v2;
  sub_22CA04398();
  v3 = swift_allocObject();
  sub_22CA00074(22, 23, 24, &unk_283FCE0D8, 7.0);
  v1[3] = v3;
  sub_22CA04398();
  v4 = swift_allocObject();
  sub_22CA00074(19, 20, 21, &unk_283FCE0D8, 7.0);
  v1[4] = v4;
  return v1;
}

uint64_t (*sub_22CA00028(uint64_t a1, __n128 a2))(uint64_t a1)
{
  sub_22CA04310();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22CA00074(char a1, char a2, char a3, uint64_t a4, double a5)
{
  *(v5 + 16) = sub_22CA20DD0();
  *(v5 + 24) = a5;
  *(v5 + 32) = a1;
  *(v5 + 33) = a2;
  *(v5 + 34) = a3;
  return v5;
}

uint64_t sub_22CA000EC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = v4;
  sub_22C9FAFE8();
  swift_beginAccess();
  v12 = *(v7 + 16);

  v34 = a1;
  sub_22C9EEE1C(a1, a2, v12, v36);
  v13 = v36[0];
  v14 = v36[1];
  v16 = *&v36[2];
  v15 = *&v36[3];
  v18 = *&v36[4];
  v17 = *&v36[5];

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_22C9FDEC0(a3);
  v22 = v21;
  v23 = sub_22C9FDC00();
  v25 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v23;
    v6 = v24;
    v33 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }
  }

  sub_22CA04428();
  sub_22CA11940();
  v19 = v31;
LABEL_6:
  v27 = *(v19 + 16);
  v26 = *(v19 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_22CA042C4(v26);
    sub_22CA11940();
    v19 = v32;
  }

  *(v19 + 16) = v27 + 1;
  v28 = v19 + 40 * v27;
  *(v28 + 32) = v20;
  if (v16 >= a4)
  {
    v29 = v16;
  }

  else
  {
    v29 = a4;
  }

  *(v28 + 40) = v22;
  *(v28 + 44) = a3;
  *(v28 + 48) = v5;
  *(v28 + 56) = v6;
  *(v28 + 64) = a4;
  v37[0] = v19;
  v37[1] = v25;
  *&v37[2] = v29;
  *&v37[3] = v15;
  *&v37[4] = v18;
  *&v37[5] = v17;
  sub_22CA04310();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v7 + 16);
  sub_22C9EE334(v37, v34, v33);
  *(v7 + 16) = v35;
  return swift_endAccess();
}

void sub_22CA002C4(uint64_t a1)
{
  sub_22CA0467C();
  v4 = v2;
  v103 = v5;
  v102 = sub_22CA20AB0();
  sub_22C9DAE90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22CA0431C();
  v101 = v9;
  sub_22CA045EC();
  v100 = sub_22CA20900();
  sub_22C9DAE90();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22CA0431C();
  v99 = v13;
  sub_22CA045EC();
  v98 = sub_22CA209F0();
  sub_22C9DAE90();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C9E05C0();
  v97 = v17 - v18;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v19);
  sub_22CA045D4();
  v96 = v20;
  sub_22C9FAFE8();
  swift_beginAccess();
  v106 = v1;
  v21 = *(v1 + 16) + 64;
  sub_22CA04228();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v95 = *MEMORY[0x277CC9968];
  v94 = (v15 + 8);
  v93 = (v7 + 8);
  v92 = (v11 + 8);

  v28 = 0;
  v29 = 0.0;
  v86 = v21;
  v85 = v26;
  v90 = v27;
  if (v24)
  {
LABEL_2:
    v109 = v4;
    v30 = v28;
LABEL_7:
    v88 = (v24 - 1) & v24;
    v87 = v30;
    v31 = __clz(__rbit64(v24)) | (v30 << 6);
    v32 = (*(v27 + 48) + 16 * v31);
    v89 = *v32;
    v33 = *(*(v27 + 56) + 48 * v31);
    v104 = *(v33 + 16);
    v91 = v32[1];

    v34 = 0;
    v105 = v33;
    v35 = v33 + 64;
    v36 = 0.0;
    v37 = 0.0;
    while (1)
    {
      if (v104 == v34)
      {

        v56 = sub_22CA044E4(v55);
        sub_22C9FF600(v108, v89, v91);
        v4 = v109;
        if (*v57)
        {
          *(v57 + 24) = v37;
        }

        v58 = sub_22CA04438();
        v59(v58);
        v60 = sub_22CA04448();
        v61.n128_f64[0] = (v56)(v60);
        v62 = sub_22CA044E4(v61);
        sub_22C9FF600(v108, v89, v91);
        if (*v63)
        {
          *(v63 + 32) = v36;
        }

        v64 = sub_22CA04438();
        v65(v64);

        v66 = sub_22CA04448();
        v62(v66);
        v29 = v29 + v36;
        v67 = *(v106 + 16);
        sub_22CA04228();
        v70 = v69 & v68;
        v72 = (v71 + 63) >> 6;

        v73 = 0;
        if (v70)
        {
          while (1)
          {
            v74 = v73;
LABEL_24:
            v75 = __clz(__rbit64(v70));
            v70 &= v70 - 1;
            v76 = v75 | (v74 << 6);
            v77 = (*(v67 + 48) + 16 * v76);
            v78 = *v77;
            v79 = v77[1];
            v3 = *(*(v67 + 56) + 48 * v76 + 32);

            v110 = sub_22CA044E4(v80);
            sub_22C9FF600(v108, v78, v79);
            if (*v81)
            {
              *(v81 + 40) = v3 / v29;
            }

            v82 = sub_22CA04438();
            v83(v82);

            v84 = sub_22CA04448();
            v110(v84);
            v73 = v74;
            if (!v70)
            {
              goto LABEL_21;
            }
          }
        }

        while (1)
        {
LABEL_21:
          v74 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v74 >= v72)
          {
            break;
          }

          v70 = *(v67 + 64 + 8 * v74);
          ++v73;
          if (v70)
          {
            goto LABEL_24;
          }
        }

        v28 = v87;
        v27 = v90;
        v21 = v86;
        v26 = v85;
        v24 = v88;
        if (!v88)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      if (v34 >= *(v105 + 16))
      {
        break;
      }

      v38 = *(v35 - 32);
      v39 = sub_22CA04468(*(v35 - 24));
      v40 = v38;
      v41 = sub_22C9FE518();
      if (v109)
      {

        goto LABEL_31;
      }

      v42 = v41;
      v109 = 0;
      ++v34;
      v107 = v39;
      v43 = type metadata accessor for MSSuggestionFeatureStore();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22CA039F4(v103, v42, v43, ObjectType);
      sub_22CA04564();
      v37 = v37 + v3;
      sub_22CA20980();
      sub_22CA20A80();
      sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
      v45 = sub_22CA20A90();
      sub_22C9DAE90();
      v47 = v46;
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_22CA22F90;
      (*(v47 + 104))(v49 + v48, v95, v45);
      sub_22CA02080(v49);
      sub_22CA209E0();
      sub_22CA20A70();

      v50 = *v94;
      (*v94)(v97, v98);
      (*v93)(v101, v102);
      v51 = sub_22CA208E0();
      if (v52)
      {
        v53 = 0.0;
      }

      else
      {
        v53 = v51;
      }

      v54 = *(v106 + 24);

      v3 = v3 * exp(-0.693147181 / v54 * v53);
      (*v92)(v99, v100);
      v50(v96, v98);
      v36 = v36 + v3;
      v35 += 40;
    }

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
LABEL_31:

        sub_22CA04654();
        return;
      }

      v24 = *(v21 + 8 * v30);
      ++v28;
      if (v24)
      {
        v109 = v4;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22CA00A94()
{
  v1 = v0;
  sub_22CA04340();
  sub_22C9FAFE8();
  swift_beginAccess();
  sub_22CA045F8();
  if (v2)
  {

    sub_22CA04764();
    if (v3)
    {
      sub_22CA0441C();
      v7 = (v5 + v4 * v6);
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[5];

      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22CA22F80;
      *(inited + 32) = sub_22C9FD610(v1[32]);
      *(inited + 40) = v12;
      *(inited + 48) = v8;
      *(inited + 56) = sub_22C9FD610(v1[33]);
      *(inited + 64) = v13;
      *(inited + 72) = v9;
      *(inited + 80) = sub_22C9FD610(v1[34]);
      *(inited + 88) = v14;
      *(inited + 96) = v10;
      return sub_22CA20DD0();
    }
  }

  return 0;
}

uint64_t MSItemAttributePlaybackFeatureStore.__deallocating_deinit()
{

  sub_22CA04398();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22CA00C9C(void *a1, int a2, double a3)
{
  sub_22C9DDEBC(a1);
  if (v8)
  {
    sub_22CA043A4();

    sub_22CA000EC(v3, v4, a2, a3);
  }

  v9 = [a1 bundleID];
  v10 = sub_22CA20E20();
  v12 = v11;

  sub_22CA000EC(v10, v12, a2, a3);
}

uint64_t sub_22CA00D88(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2822009F8](sub_22CA00DA8, 0, 0);
}

uint64_t sub_22CA00DA8()
{
  v1 = v0[17];

  sub_22CA002C4(v1);
  v0[19] = 0;

  type metadata accessor for MSSuggester();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_22CA00EB4;

  return static MSSuggester.availableBundleIDs()();
}

uint64_t sub_22CA00EB4(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22CA00FB4, 0, 0);
}

void sub_22CA00FB4()
{
  v228 = v0;
  v1 = v0[18];
  v2 = *(v1 + 24);
  sub_22C9FAFE8();
  swift_beginAccess();
  v225 = v0;
  v226 = v1;
  if (!*(*(v2 + 16) + 16))
  {
    v5 = v0[21];
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 1.0 / v6;
      v9 = (v5 + 40);
      v220 = *(v5 + 16);
      v223 = v0[21];
      while (v7 < *(v5 + 16))
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v12 = *(v1 + 24);
        sub_22CA04310();
        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v227 = *(v12 + 16);
        *(v12 + 16) = 0x8000000000000000;
        v13 = sub_22CA04350();
        sub_22C9FBFA8(v13, v14);
        sub_22CA04264();
        if (__OFADD__(v17, v18))
        {
          goto LABEL_136;
        }

        v19 = v15;
        v20 = v16;
        sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v21 = sub_22CA04350();
          sub_22C9FBFA8(v21, v22);
          sub_22CA04330();
          if (!v24)
          {
LABEL_132:
            sub_22CA043DC();

            sub_22CA213C0();
            return;
          }

          v19 = v23;
        }

        if (v20)
        {

          v25 = v227;
          sub_22CA0441C();
          v28 = v26 + v19 * v27;
          *(v28 + 16) = 0;
          *v28 = MEMORY[0x277D84F90];
          *(v28 + 8) = 0;
          *(v28 + 24) = v8;
          *(v28 + 32) = v8;
          *(v28 + 40) = v8;
        }

        else
        {
          v25 = v227;
          sub_22CA041C8(&v227[v19 >> 6]);
          v29 = (v227[6] + 16 * v19);
          *v29 = v11;
          v29[1] = v10;
          sub_22CA0441C();
          v32 = v30 + v19 * v31;
          *v32 = MEMORY[0x277D84F90];
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
          *(v32 + 24) = v8;
          *(v32 + 32) = v8;
          *(v32 + 40) = v8;
          v33 = v25[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_137;
          }

          v25[2] = v35;
        }

        ++v7;
        *(v12 + 16) = v25;
        swift_endAccess();

        v9 += 2;
        v5 = v223;
        v1 = v226;
        if (v220 == v7)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

LABEL_48:

LABEL_49:
    sub_22CA043DC();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[19];
  v4 = v0[17];

  sub_22CA002C4(v4);
  if (v3)
  {

    goto LABEL_49;
  }

  v36 = *(v1 + 24);
  sub_22C9FAFE8();
  swift_beginAccess();
  v37 = *(*(v36 + 16) + 16);
  v38 = v0[21];
  if (v37 > 9)
  {
    goto LABEL_48;
  }

  v221 = v0[21];
  v224 = *(v38 + 16);
  if (v224)
  {
    v39 = 0;
    v40 = MEMORY[0x277D84F98];
    v41 = v38 + 40;
    while (1)
    {
      if (v39 >= *(v38 + 16))
      {
        goto LABEL_138;
      }

      sub_22CA04350();
      v42 = sub_22CA00A94();

      if (v42)
      {
        v43 = sub_22C9FD610(*(*(v1 + 24) + 34));
        if (*(v42 + 16))
        {
          v45 = sub_22C9FBFA8(v43, v44);
          v47 = v46;

          v48 = 0;
          if (v47)
          {
            v48 = *(*(v42 + 56) + 8 * v45);
          }
        }

        else
        {

          v48 = 0;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v227 = v40;
        v60 = sub_22CA04350();
        sub_22C9FBFA8(v60, v61);
        sub_22CA042B8();
        if (__OFADD__(v64, v65))
        {
          goto LABEL_139;
        }

        v66 = v62;
        v67 = v63;
        sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v68 = sub_22CA04350();
          sub_22C9FBFA8(v68, v69);
          sub_22CA04244();
          v1 = v226;
          if (!v24)
          {
            goto LABEL_132;
          }

          v66 = v70;
          if ((v67 & 1) == 0)
          {
LABEL_39:
            v40 = v227;
            sub_22CA041C8(&v227[v66 >> 6]);
            sub_22CA045C0();
            *(v71 + 8 * v66) = v48;
            v72 = v40[2];
            v34 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v34)
            {
              goto LABEL_145;
            }

LABEL_45:
            v40[2] = v73;
            goto LABEL_46;
          }
        }

        else
        {
          v1 = v226;
          if ((v67 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v40 = v227;
        *(v227[7] + 8 * v66) = v48;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v227 = v40;
        v49 = sub_22CA04350();
        sub_22C9FBFA8(v49, v50);
        sub_22CA042B8();
        if (__OFADD__(v53, v54))
        {
          goto LABEL_144;
        }

        v55 = v51;
        v56 = v52;
        sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v57 = sub_22CA04350();
          sub_22C9FBFA8(v57, v58);
          sub_22CA04244();
          if (!v24)
          {
            goto LABEL_132;
          }

          v55 = v59;
        }

        if ((v56 & 1) == 0)
        {
          v40 = v227;
          sub_22CA041C8(&v227[v55 >> 6]);
          sub_22CA045C0();
          *(v74 + 8 * v55) = 0;
          v75 = v40[2];
          v34 = __OFADD__(v75, 1);
          v73 = v75 + 1;
          if (v34)
          {
            goto LABEL_147;
          }

          goto LABEL_45;
        }

        v40 = v227;
        *(v227[7] + 8 * v55) = 0;
      }

LABEL_46:
      v38 = v221;
      ++v39;
      v41 += 16;
      if (v224 == v39)
      {
        goto LABEL_53;
      }
    }
  }

  v40 = MEMORY[0x277D84F98];
LABEL_53:
  v227 = sub_22C9FA12C(v40);
  sub_22CA03010(&v227);
  v78 = v227;
  v79 = v227[2];
  v210 = v227;
  if (v79)
  {
    v227 = MEMORY[0x277D84F90];
    sub_22CA0CB14(0, v79, 0);
    v80 = v227;
    v81 = v227[2];
    v82 = 2 * v81;
    v83 = v78 + 5;
    do
    {
      v84 = v81;
      v86 = *(v83 - 1);
      v85 = *v83;
      v227 = v80;
      v87 = v80;
      v88 = v80[3];
      ++v81;

      if (v84 >= v88 >> 1)
      {
        sub_22CA0CB14(v88 > 1, v81, 1);
        v87 = v227;
      }

      v87[2] = v81;
      v89 = &v87[v82];
      v89[4] = v86;
      v89[5] = v85;
      v82 += 2;
      v83 += 3;
      --v79;
      v80 = v87;
    }

    while (v79);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
    v81 = *(MEMORY[0x277D84F90] + 16);
  }

  v90 = 0;
  v91 = MEMORY[0x277D84F98];
  v92 = v80 + 5;
  v213 = v81;
  v217 = v40;
  while (v81 != v90)
  {
    if (v90 >= v80[2])
    {
      goto LABEL_140;
    }

    v94 = *(v92 - 1);
    v93 = *v92;
    v95 = v92;

    swift_isUniquelyReferenced_nonNull_native();
    v227 = v91;
    v96 = sub_22CA044A8();
    sub_22C9FBFA8(v96, v97);
    sub_22CA042B8();
    if (__OFADD__(v100, v101))
    {
      goto LABEL_141;
    }

    v102 = v98;
    v103 = v99;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    if (sub_22CA21250())
    {
      v104 = sub_22CA044A8();
      sub_22C9FBFA8(v104, v105);
      sub_22CA04244();
      if (!v24)
      {
        goto LABEL_132;
      }

      v102 = v106;
    }

    v107 = v90 * 0.1;
    if (v103)
    {

      v91 = v227;
      *(v227[7] + 8 * v102) = v107;
    }

    else
    {
      v91 = v227;
      sub_22CA041C8(&v227[v102 >> 6]);
      v108 = (v91[6] + 16 * v102);
      *v108 = v94;
      v108[1] = v93;
      *(v91[7] + 8 * v102) = v107;
      v109 = v91[2];
      v34 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v34)
      {
        goto LABEL_146;
      }

      v91[2] = v110;
    }

    v92 = v95 + 2;
    ++v90;
    v81 = v213;
    v40 = v217;
  }

  v111 = v91 + 8;
  sub_22CA04400();
  v114 = v113 & v112;
  v116 = (63 - v115) >> 6;

  v117 = 0;
  v118 = 0.0;
  v119 = v225;
  for (i = v116; ; v116 = i)
  {
    v120 = v226;
    if (!v114)
    {
      break;
    }

    v121 = v117;
LABEL_79:
    v122 = __clz(__rbit64(v114)) | (v121 << 6);
    v123 = (v91[6] + 16 * v122);
    v125 = *v123;
    v124 = v123[1];
    v126 = *(v91[7] + 8 * v122);
    v218 = *(v221 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    v227 = v40;
    v127 = sub_22CA044A8();
    sub_22C9FBFA8(v127, v128);
    sub_22CA042B8();
    if (__OFADD__(v131, v132))
    {
      goto LABEL_156;
    }

    v133 = v129;
    v134 = v130;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    v135 = sub_22CA21250();
    v40 = v227;
    if (v135)
    {
      v136 = sub_22CA044A8();
      sub_22C9FBFA8(v136, v137);
      sub_22CA04330();
      if (!v24)
      {
        goto LABEL_132;
      }

      v133 = v138;
    }

    if (v134)
    {
      *(v40[7] + 8 * v133) = v126 + 1.0 / v218;
      v139 = v40[2];
    }

    else
    {
      sub_22CA041C8(&v40[v133 >> 6]);
      v140 = (v40[6] + 16 * v133);
      *v140 = v125;
      v140[1] = v124;
      *(v40[7] + 8 * v133) = v141;
      v142 = v40[2];
      v139 = v142 + 1;
      if (__OFADD__(v142, 1))
      {
        goto LABEL_160;
      }

      v40[2] = v139;
    }

    v119 = v225;
    if (!v139)
    {
      goto LABEL_157;
    }

    v143 = sub_22CA044A8();
    v145 = sub_22C9FBFA8(v143, v144);
    v147 = v146;

    if ((v147 & 1) == 0)
    {
      goto LABEL_158;
    }

    v114 &= v114 - 1;
    v118 = v118 + *(v40[7] + 8 * v145);
    v117 = v121;
    v111 = v91 + 8;
  }

  while (1)
  {
    v121 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_142;
    }

    if (v121 >= v116)
    {
      break;
    }

    v114 = v111[v121];
    ++v117;
    if (v114)
    {
      goto LABEL_79;
    }
  }

  v148 = v40 + 8;
  sub_22CA04400();
  v151 = v150 & v149;
  v153 = (63 - v152) >> 6;

  v154 = 0;
  v155 = v40;
  v214 = v153;
  if (v151)
  {
    goto LABEL_96;
  }

  do
  {
LABEL_92:
    v156 = v154 + 1;
    if (__OFADD__(v154, 1))
    {
      goto LABEL_143;
    }

    if (v156 >= v153)
    {

      if (v224)
      {
        v173 = (v119[21] + 40);
        v212 = v91;
        do
        {
          v174 = *(v173 - 1);
          v175 = *v173;
          v176 = *(v120 + 24);
          sub_22C9FAFE8();
          swift_beginAccess();
          v177 = *(*(v176 + 16) + 16);

          if (v177)
          {

            sub_22C9FBFA8(v174, v175);
            if (v178)
            {
              sub_22CA0441C();
              v182 = (v180 + v179 * v181);
              v183 = *v182;
              v177 = v182[1];
            }

            else
            {
              v177 = 0;
              v183 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v183 = MEMORY[0x277D84F90];
          }

          if (!v155[2])
          {
            goto LABEL_148;
          }

          sub_22CA04500();
          if ((v184 & 1) == 0)
          {
            goto LABEL_149;
          }

          if (!v155[2])
          {
            goto LABEL_150;
          }

          sub_22CA04500();
          if ((v185 & 1) == 0)
          {
            goto LABEL_151;
          }

          if (!v155[2])
          {
            goto LABEL_152;
          }

          v219 = v183;
          v222 = v177;
          v215 = v173;
          sub_22CA04500();
          if ((v186 & 1) == 0)
          {
            goto LABEL_153;
          }

          v187 = v155;
          v188 = *(v120 + 24);
          sub_22CA04310();
          swift_beginAccess();

          swift_isUniquelyReferenced_nonNull_native();
          v227 = *(v188 + 16);
          *(v188 + 16) = 0x8000000000000000;
          v189 = v174;
          v190 = v175;
          sub_22C9FBFA8(v174, v175);
          sub_22CA04264();
          if (__OFADD__(v193, v194))
          {
            goto LABEL_154;
          }

          v195 = v191;
          v196 = v192;
          sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
          v197 = sub_22CA21250();
          v198 = v227;
          if (v197)
          {
            v199 = v189;
            v200 = sub_22C9FBFA8(v189, v190);
            v120 = v226;
            if ((v196 & 1) != (v201 & 1))
            {
              goto LABEL_132;
            }

            v195 = v200;
          }

          else
          {
            v120 = v226;
            v199 = v189;
          }

          v155 = v187;
          if (v196)
          {
            sub_22CA0441C();
            sub_22CA04598((v202 + v195 * v203), v210, i, v212, v215, v219, v222);
          }

          else
          {
            sub_22CA042D8();
            *v204 = v199;
            v204[1] = v190;
            sub_22CA0441C();
            sub_22CA04598((v205 + v195 * v206), v210, i, v212, v215, v219, v222);
            v207 = v198[2];
            v34 = __OFADD__(v207, 1);
            v208 = v207 + 1;
            if (v34)
            {
              goto LABEL_155;
            }

            v198[2] = v208;
          }

          *(v188 + 16) = v198;
          swift_endAccess();

          v173 = (v216 + 16);
        }

        while (--v224);
      }

      goto LABEL_48;
    }

    v151 = v148[v156];
    ++v154;
  }

  while (!v151);
  v154 = v156;
LABEL_96:
  while (1)
  {
    v157 = __clz(__rbit64(v151)) | (v154 << 6);
    v158 = (v40[6] + 16 * v157);
    v160 = *v158;
    v159 = v158[1];
    v161 = *(v40[7] + 8 * v157);

    swift_isUniquelyReferenced_nonNull_native();
    v227 = v155;
    sub_22C9FBFA8(v160, v159);
    sub_22CA042B8();
    if (__OFADD__(v164, v165))
    {
      break;
    }

    v166 = v162;
    v167 = v163;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    if (sub_22CA21250())
    {
      sub_22C9FBFA8(v160, v159);
      sub_22CA04330();
      if (!v24)
      {
        goto LABEL_132;
      }

      v166 = v168;
    }

    v169 = v161 / v118;
    if (v167)
    {

      v155 = v227;
      *(v227[7] + 8 * v166) = v169;
    }

    else
    {
      v155 = v227;
      sub_22CA041C8(&v227[v166 >> 6]);
      v170 = (v155[6] + 16 * v166);
      *v170 = v160;
      v170[1] = v159;
      *(v155[7] + 8 * v166) = v169;
      v171 = v155[2];
      v34 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v34)
      {
        goto LABEL_161;
      }

      v155[2] = v172;
    }

    v119 = v225;
    v120 = v226;
    v153 = v214;
    v148 = v40 + 8;
    v151 &= v151 - 1;
    if (!v151)
    {
      goto LABEL_92;
    }
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

id sub_22CA01CE0(void *a1)
{
  v2 = sub_22CA20DD0();
  sub_22C9DDEBC(a1);
  if (v3)
  {
    sub_22CA043A4();

    v4 = sub_22CA00A94();

    if (v4)
    {

      v2 = v4;
    }
  }

  v5 = [a1 bundleID];
  sub_22CA20E20();

  v6 = sub_22CA00A94();

  if (v6)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13 = v2;
    sub_22CA041E0();
    sub_22CA02DAC(v6, v7, 0, v8, &v13);
    v2 = v13;
  }

  sub_22CA0DD9C(v2);
  v9 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v10 = sub_22CA04300();
  v11 = sub_22CA17474(v10);

  return v11;
}

__n128 sub_22CA01EA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22CA01EB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CA01EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CA01F54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CA01F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CA01FF0()
{
  v1 = v0;
  type metadata accessor for MSItemAttributePlaybackFeatureStore();
  sub_22CA04398();
  v2 = swift_allocObject();
  sub_22CA00074(3, 4, 5, &unk_283FCE048, 7.0);
  *(v1 + 16) = v2;
  sub_22CA04398();
  v3 = swift_allocObject();
  sub_22CA00074(6, 7, 8, &unk_283FCE048, 7.0);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_22CA02080(uint64_t a1)
{
  v2 = sub_22CA20A90();
  sub_22C9DAE90();
  v31 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_22CA045D4();
  v34 = v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_22C9D02E4(&qword_27D9E5028, &qword_22CA243E8);
  sub_22CA04300();
  result = sub_22CA21180();
  v11 = result;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v33 = result + 56;
  v28 = a1;
  v29 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v13 = (v31 + 8);
  while (v12 < *(a1 + 16))
  {
    v14 = *(v31 + 72);
    v32 = v12 + 1;
    v15 = *(v31 + 16);
    v15(v34, v29 + v14 * v12, v2);
    sub_22CA03FB8(&qword_27D9E5030, MEMORY[0x277CC99D8]);
    v16 = sub_22CA20DE0();
    v17 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v33 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v11;
      v15(v7, *(v11 + 48) + v18 * v14, v2);
      sub_22CA03FB8(&qword_27D9E5038, MEMORY[0x277CC99E0]);
      v23 = sub_22CA20E00();
      v24 = *v13;
      (*v13)(v7, v2);
      if (v23)
      {
        result = (v24)(v34, v2);
        v11 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v11 = v22;
    }

    *(v33 + 8 * v19) = v21 | v20;
    result = (*(v31 + 32))(*(v11 + 48) + v18 * v14, v34, v2);
    v25 = *(v11 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v27;
LABEL_12:
    v12 = v32;
    a1 = v28;
    if (v32 == v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_22CA0237C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22C9D02E4(&qword_27D9E4F30, &qword_22CA23D50);
  v6 = sub_22CA212F0();
  if (!*(v5 + 16))
  {

LABEL_29:
    *v3 = v6;
    return;
  }

  v33 = v2;
  v7 = 0;
  v8 = (v5 + 64);
  sub_22CA04228();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        sub_22CA15E14(0, (v32 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v8 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    v23 = sub_22CA210C0();
    v24 = -1 << *(v6 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v6 + 48) + 8 * v27) = v19;
    *(*(v6 + 56) + 8 * v27) = v20;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_22CA025CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22C9D02E4(&qword_27D9E5010, &unk_22CA243C0);
  v33 = v4;
  result = sub_22CA212F0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_22CA15E14(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v33 & 1) == 0)
    {
    }

    sub_22CA21440();
    sub_22CA20E60();
    result = sub_22CA21490();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_22CA0286C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22CA028B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22CA041F8(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v13;
  }

  return result;
}

unint64_t sub_22CA028F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22CA041F8(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

_OWORD *sub_22CA02924(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_22CA041F8(a1, a2, a3, a4, a5);
  result = sub_22C9E9818(v9, (v8 + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void *sub_22CA02968(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_22CA041F8(a1, a2, a3, a4, a5);
  result = memcpy((v8 + 72 * v7), v9, 0x48uLL);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void (*sub_22CA029B4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_22CA03F30(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_22CA02D40(v6);
  v6[9] = sub_22CA02AAC(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22CA02A4C;
}

void sub_22CA02A4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22CA02AAC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  v9 = sub_22CA03F30(0xB8uLL);
  *a1 = v9;
  *(v9 + 19) = a3;
  *(v9 + 20) = v4;
  *(v9 + 18) = a2;
  v10 = *v4;
  v11 = sub_22C9FBFA8(a2, a3);
  v9[176] = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
  if (sub_22CA21250())
  {
    v15 = sub_22C9FBFA8(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22CA213C0();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v9 + 21) = v13;
  if (v14)
  {
    v17 = *(*v5 + 56) + 48 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 24);
    v21 = *(v17 + 40);
  }

  else
  {
    v18 = 0;
    v21 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *(v9 + 12) = v18;
  *(v9 + 104) = v19;
  *(v9 + 120) = v20;
  *(v9 + 17) = v21;
  return sub_22CA02C18;
}

void sub_22CA02C18(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v7 = *(*a1 + 120);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 136);
  v9 = *(*a1 + 176);
  if (a2)
  {
    if (v3)
    {
      v10 = *(v2 + 168);
      v11 = **(v2 + 160);
      if ((v9 & 1) == 0)
      {
        v12 = *(v2 + 144);
        v13 = *(v2 + 152);
        *v2 = v3;
        *(v2 + 8) = v5;
        *(v2 + 16) = v4;
        *(v2 + 24) = v7;
        *(v2 + 32) = v6;
        *(v2 + 40) = v8;
        v14 = v13;
        v15 = v2;
LABEL_11:
        sub_22CA028B0(v10, v12, v14, v15, v11);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v10 = *(v2 + 168);
    v11 = **(v2 + 160);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 144);
      v17 = *(v2 + 152);
      *(v2 + 48) = v3;
      *(v2 + 56) = v5;
      *(v2 + 64) = v4;
      *(v2 + 72) = v7;
      *(v2 + 80) = v6;
      *(v2 + 88) = v8;
      v15 = v2 + 48;
      v14 = v17;
      goto LABEL_11;
    }

LABEL_7:
    v16 = (*(v11 + 56) + 48 * v10);
    *v16 = v3;
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v7;
    v16[4] = v6;
    v16[5] = v8;
    goto LABEL_12;
  }

  if (*(*a1 + 176))
  {
    sub_22CA03F64(*(**(v2 + 160) + 48) + 16 * *(v2 + 168));
    sub_22CA21270();
  }

LABEL_12:

  free(v2);
}

uint64_t (*sub_22CA02D40(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22CA02D68;
}

uint64_t sub_22CA02D74(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_22CA02DAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_22CA03EF4(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v34 = v42[5];
  v35 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v35 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v35 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;

      v34(&v38, v41);

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = *a5;
      v20 = sub_22C9FBFA8(v38, v39);
      sub_22CA04264();
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v21;
      if (*(v19 + 24) >= v24)
      {
        if ((v36 & 1) == 0)
        {
          sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
          sub_22CA21260();
        }
      }

      else
      {
        sub_22CA025CC(v24, v36 & 1);
        sub_22C9FBFA8(v16, v17);
        sub_22CA04330();
        if (!v27)
        {
          goto LABEL_25;
        }

        v20 = v26;
      }

      v8 &= v8 - 1;
      v28 = *a5;
      if (v25)
      {

        *(*(v28 + 56) + 8 * v20) = v18;
      }

      else
      {
        sub_22CA042D8();
        *v29 = v16;
        v29[1] = v17;
        *(*(v28 + 56) + 8 * v20) = v18;
        v30 = *(v28 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_24;
        }

        *(v28 + 16) = v32;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C9E297C(v35);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22CA213C0();
  __break(1u);
  return result;
}

uint64_t sub_22CA03010(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22CA14030(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22CA0307C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22CA0307C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22CA21330();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C9D02E4(&qword_27D9E5018, &qword_22CA243D0);
        v6 = sub_22CA20EF0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22CA03200(v7, v8, a1, v4);
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
    return sub_22CA03180(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22CA03180(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22CA03200(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 - 1))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22CA11D94();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22CA11D94();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22CA0384C((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_22CA03714(&v89, *result, a3);
LABEL_89:
}

uint64_t sub_22CA03714(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22CA13E30(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_22CA0384C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_22CA0384C(double *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22CA11F90(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_22CA11F90(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void sub_22CA039F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22CA20E10();
  v7 = [a1 featureValueForName_];

  if (!v7)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
  }

  swift_getObjectType();
  v8 = sub_22CA20E10();
  v9 = [a2 featureValueForName_];

  if (!v9)
  {
    v9 = [objc_opt_self() featureValueWithDouble_];
  }

  [v7 doubleValue];
  [v9 doubleValue];
  v10 = sub_22CA20E10();
  v26 = a1;
  v11 = [a1 featureValueForName_];

  if (!v11)
  {
    v11 = [objc_opt_self() featureValueWithInt64_];
  }

  v12 = sub_22CA20E10();
  v13 = [a2 0x27872B578];

  if (!v13)
  {
    v13 = [objc_opt_self() featureValueWithInt64_];
  }

  v14 = [v11 int64Value];
  v15 = [v13 int64Value];
  v16 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v16 < 0 && __OFSUB__(0, v16))
  {
    goto LABEL_26;
  }

  sub_22CA0DD90();
  v17 = sub_22CA21040();
  v19 = v18;

  if (v17 == 0x6574736567677573 && v19 == 0xEE00616964654D64)
  {

    goto LABEL_19;
  }

  v21 = sub_22CA21360();

  if (v21)
  {

LABEL_19:
    return;
  }

  v22 = sub_22CA20E10();
  v23 = [v26 featureValueForName_];

  if (!v23)
  {
    v23 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v23 doubleValue];

  v24 = sub_22CA20E10();
  v25 = [a2 featureValueForName_];

  if (!v25)
  {
    v25 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v25 doubleValue];
}

double sub_22CA03EB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_22CA02D74(&v6, *a1, *(a1 + 8), *(a1 + 16));
  result = v6;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_22CA03EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_22CA03F30(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22CA03FB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22CA20A90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CA03FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&qword_27D9E5040, qword_22CA24400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CA0406C(uint64_t a1)
{
  v2 = sub_22C9D02E4(&qword_27D9E5040, qword_22CA24400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22CA04118(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CA0412C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 40))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CA0416C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_22CA041F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_22CA04288()
{
  *(v0 + 16) = v7;
  v9 = v0 + 40 * v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 44) = v1;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
}

void sub_22CA043B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  sub_22C9EE614(&a27, a12, v27);
}

id sub_22CA04468@<X0>(char a1@<W8>)
{
  *(v5 - 192) = v4;
  *(v5 - 184) = a1;
  *(v5 - 180) = v1;
  *(v5 - 176) = v2;
  *(v5 - 168) = v3;
  *(v5 - 160) = v7;

  return v2;
}

uint64_t (*sub_22CA044E4(__n128 a1))(uint64_t a1)
{

  return sub_22CA00028(v1 - 248, a1);
}

unint64_t sub_22CA04500()
{

  return sub_22C9FBFA8(v0, v1);
}

uint64_t sub_22CA0451C()
{

  return sub_22CA20A70();
}

void *sub_22CA04540(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  v28 = (*(v26 + 56) + 72 * a1);

  return memcpy(va, v28, 0x48uLL);
}

uint64_t sub_22CA04564()
{

  return swift_unknownObjectRelease_n();
}

id sub_22CA04580()
{

  return [v0 (v1 + 3858)];
}

void sub_22CA04598(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a6;
  a1[1] = a7;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
}

void sub_22CA045C0()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t sub_22CA046A4()
{
  *(v0 + 256) = v1;
  *(v0 + 224) = v2 + 1;

  return type metadata accessor for MSSuggestionFeatureStore();
}

uint64_t sub_22CA046C4(uint64_t a1)
{
  *(v1 + 240) = v2;

  return sub_22CA209E0();
}

void sub_22CA046E4()
{
  v5 = *(v0 + 208);

  sub_22CA039F4(v5, v1, v3, v2);
}

void *sub_22CA04704(uint64_t a1)
{
  v5 = (*(v3 + 56) + a1 * v1);

  return memmove(v5, (v2 + 584), 0x48uLL);
}

unint64_t sub_22CA04724()
{
  *(v1 + 16) = 0x8000000000000000;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);

  return sub_22C9FBFA8(v3, v4);
}

uint64_t sub_22CA04744()
{

  return sub_22C9FE6CC(v0);
}

unint64_t sub_22CA04764()
{

  return sub_22C9FBFA8(v1, v0);
}

id sub_22CA0477C()
{

  return [v0 (v1 + 3320)];
}

void *sub_22CA04794()
{
  v1 = v0;
  v0[2] = 0;
  sub_22CA20CF0();
  swift_allocObject();
  v0[3] = sub_22CA20CE0();
  type metadata accessor for MSSuggestionPlaybackRewardFeatureStore();
  swift_allocObject();
  v0[9] = sub_22CA01FF0();
  sub_22C9D02E4(&qword_27D9E4C68, &qword_22CA23280);
  v2 = swift_allocObject();
  sub_22C9D86B0(v2, xmmword_22CA22FA0);
  v3 = type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline();
  swift_allocObject();

  v5 = sub_22CA187F4(v4);
  v2[3].n128_u64[1] = v3;
  v2[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4C80, 255, type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline, &unk_22CA25548);
  v2[2].n128_u64[0] = v5;
  v6 = type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline();
  swift_allocObject();

  v8 = sub_22CA14214(v7);
  v2[6].n128_u64[0] = v6;
  v2[6].n128_u64[1] = sub_22CA05338(&qword_27D9E4C78, 255, type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline, &unk_22CA24F48);
  v2[4].n128_u64[1] = v8;
  v1[6] = v2;
  v9 = sub_22C9D02E4(&qword_27D9E4C88, &qword_22CA23288);
  v10 = sub_22C9D86BC(v9);
  sub_22C9D86B0(v10, xmmword_22CA22F90);
  v11 = type metadata accessor for MSSuggestionRewardScorerPipeline();
  swift_allocObject();
  v12 = sub_22CA0E6E8();
  v10[3].n128_u64[1] = v11;
  v10[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4C90, 255, type metadata accessor for MSSuggestionRewardScorerPipeline, &unk_22CA249F8);
  v10[2].n128_u64[0] = v12;
  v1[8] = v10;
  v13 = sub_22C9D02E4(&qword_27D9E4C98, &qword_22CA23290);
  v14 = sub_22C9D86BC(v13);
  sub_22C9D86B0(v14, xmmword_22CA22F90);
  v15 = type metadata accessor for MSSuggestionRewardRankingPipeline();
  swift_allocObject();
  v16 = sub_22CA114C8();
  v14[3].n128_u64[1] = v15;
  v14[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4CA0, 255, type metadata accessor for MSSuggestionRewardRankingPipeline, &unk_22CA24C98);
  v14[2].n128_u64[0] = v16;
  v1[7] = v14;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  sub_22CA05338(&qword_27D9E50C0, 255, MEMORY[0x277CE9B50], MEMORY[0x277CE9B08]);

  v17 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v17);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA265E0);
  v18 = v1[6];

  v19 = sub_22C9D02E4(&qword_27D9E4CA8, &qword_22CA23298);
  v20 = MEMORY[0x2318BAA20](v18, v19);
  v22 = v21;

  MEMORY[0x2318BA9C0](v20, v22);

  MEMORY[0x2318BA9C0](0xD000000000000015, 0x800000022CA26600);
  v23 = v1[7];

  v24 = sub_22C9D02E4(&unk_27D9E4CB0, &qword_22CA232A0);
  v25 = MEMORY[0x2318BAA20](v23, v24);
  v27 = v26;

  MEMORY[0x2318BA9C0](v25, v27);

  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_22CA20E10();
  LOBYTE(v27) = [v28 BOOLForKey_];

  *(v1 + 80) = v27;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v30 = sub_22CA20B10();
  sub_22C9D0494(v30, &unk_28143A4E0);

  v31 = sub_22CA20AF0();
  v32 = sub_22CA21010();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = *(v1 + 80);

    _os_log_impl(&dword_22C9CA000, v31, v32, "checkpointingEnabled is set to %{BOOL}d", v33, 8u);
    MEMORY[0x2318BB680](v33, -1, -1);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22CA04DB0()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C58, &qword_22CA23278);
  v1 = sub_22C9D86BC(v0);
  sub_22C9D86B0(v1, xmmword_22CA22F90);
  v2 = type metadata accessor for MSSuggestionContextFeatureProvider();
  swift_allocObject();
  sub_22C9EE934();
  v1[3].n128_u64[1] = v2;
  v3 = sub_22CA05338(&qword_27D9E4C60, 255, type metadata accessor for MSSuggestionContextFeatureProvider, &unk_22CA23E00);
  return sub_22C9D86A0(v3);
}

uint64_t sub_22CA04E5C()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C48, qword_22CA23238);
  v1 = sub_22C9D86BC(v0);
  *(v1 + 16) = xmmword_22CA22F90;
  v2 = type metadata accessor for MSBatchCandidateFeatureProvider();
  swift_allocObject();

  sub_22CA16A80(v3);
  *(v1 + 56) = v2;
  v4 = sub_22CA05338(&qword_27D9E4C50, 255, type metadata accessor for MSBatchCandidateFeatureProvider, &unk_22CA252B8);
  return sub_22C9D86A0(v4);
}

uint64_t sub_22CA04F1C()
{
  v0 = sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v1 = sub_22C9D86BC(v0);
  sub_22C9D86B0(v1, xmmword_22CA22F90);
  v2 = type metadata accessor for MSDropDuplicateSuggestions();
  swift_allocObject();
  sub_22C9ECBB8();
  v1[3].n128_u64[1] = v2;
  v3 = sub_22CA05338(&qword_27D9E4C40, 255, type metadata accessor for MSDropDuplicateSuggestions, &unk_22CA23C60);
  return sub_22C9D86A0(v3);
}

uint64_t sub_22CA04FC8(void *a1)
{
  v2 = sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v3 = sub_22C9D86BC(v2);
  *(v3 + 16) = xmmword_22CA22F90;
  [a1 maxSuggestions];
  v4 = sub_22C9D02E4(&qword_27D9E4C20, &unk_22CA231D0);
  swift_allocObject();
  v5 = sub_22CA20CC0();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_22C9D85A0();
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_22CA0512C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline();
  v7 = sub_22CA05338(&qword_27D9E5068, v6, type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline, &unk_22CA24770);
  *v4 = v2;
  v4[1] = sub_22C9D8320;

  return MEMORY[0x28213B5F0](a2, v5, v7);
}

uint64_t sub_22CA05338(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CA05380(char a1, char a2)
{
  v3 = sub_22C9FD610(a1);
  v5 = v4;
  if (v3 == sub_22C9FD610(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22CA21360();
  }

  return v8 & 1;
}

uint64_t sub_22CA05404(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574736567677573;
  }

  else
  {
    v3 = 0x64656D75736E6F63;
  }

  if (v2)
  {
    v4 = 0xED0000616964654DLL;
  }

  else
  {
    v4 = 0xEE00616964654D64;
  }

  if (a2)
  {
    v5 = 0x6574736567677573;
  }

  else
  {
    v5 = 0x64656D75736E6F63;
  }

  if (a2)
  {
    v6 = 0xEE00616964654D64;
  }

  else
  {
    v6 = 0xED0000616964654DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22CA21360();
  }

  return v8 & 1;
}

void *sub_22CA054BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22C9F9B28(*(a1 + 16), 0);
  sub_22C9FABAC(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_22C9E297C(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22CA05640(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSRankedSuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
}

id MSRankedSuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSRankedSuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = MSRankedSuggester;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22CA056D4()
{
  sub_22CA20A20();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v2);
  sub_22CA0D7E4();
  sub_22CA20A10();
  sub_22CA20A00();
  v3 = sub_22CA0D71C();
  v4(v3);
  _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(v0, v1);
  return swift_dynamicCastUnknownClassUnconditional();
}

id _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9D7254();
  v4 = sub_22CA20E10();

  v5 = [v2 initWithRequestIdentifier_];

  return v5;
}

uint64_t MSRankedSuggester.description.getter()
{
  sub_22CA211A0();

  swift_getObjectType();
  v1 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v1);

  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA27F20);
  v2 = [v0 requestIdentifier];
  v3 = sub_22CA20E20();
  v5 = v4;

  MEMORY[0x2318BA9C0](v3, v5);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 60;
}

id MSRankedSuggester.copy(with:)@<X0>(void *a1@<X8>)
{
  sub_22CA20A20();
  sub_22C9DAE90();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22CA0D7E4();
  sub_22CA20A10();
  sub_22CA20A00();
  v6 = sub_22CA0D71C();
  v7(v6);
  result = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(v1, v2);
  a1[3] = v5;
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MSRankedSuggester()
{
  result = qword_28143A290;
  if (!qword_28143A290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A290);
  }

  return result;
}

Swift::Void __swiftcall MSRankedSuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 requestIdentifier];
  if (!v3)
  {
    sub_22CA20E20();
    sub_22CA20E10();
    sub_22C9D7254();
  }

  v4 = sub_22C9D07A8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id MSRankedSuggester.init(coder:)()
{
  sub_22CA0D74C();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v1;
}

id MSRankedSuggester.init(coder:)(void *a1)
{
  v3 = sub_22C9D07A8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_22C9DF60C(v14, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_9:
    type metadata accessor for MSRankedSuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v11;
  v6 = &v1[OBJC_IVAR___MSRankedSuggester_requestIdentifier];
  *v6 = v10;
  *(v6 + 1) = v5;
  v9.receiver = v1;
  v9.super_class = MSRankedSuggester;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t MSRankedSuggester.suggestions(with:)()
{
  sub_22C9D6F3C();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_22C9D70A8(v2);
  *v3 = v4;
  v3[1] = sub_22CA05E78;

  return sub_22CA05F64(v1, 0);
}

uint64_t sub_22CA05E78()
{
  sub_22C9D6F3C();
  v3 = v2;
  sub_22C9D70B4();
  v4 = *v1;
  sub_22C9D6EA4();
  *v5 = v4;

  sub_22C9E6EBC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22CA05F64(uint64_t a1, char a2)
{
  *(v3 + 344) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = sub_22C9D02E4(&qword_27D9E50A8, &qword_22CA24870);
  *(v3 + 168) = swift_task_alloc();
  sub_22C9D02E4(&unk_27D9E50B0, &qword_22CA24878);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v5 = sub_22CA20D60();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA06128, 0, 0);
}

uint64_t sub_22CA07298()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22CA07380()
{
  v166 = v1;
  v5 = v1;
  v6 = *(v1 + 112);
  KeyPath = MEMORY[0x277D837D0];
  sub_22CA20EB0();
  sub_22CA0D74C();

  [v6 setAllowedBundleIdentifiers_];

  v8 = [*(v5 + 112) allowedBundleIdentifiers];
  v9 = sub_22CA20EC0();

  v10 = *(v9 + 16);

  v164 = v5;
  if (v10)
  {
    v11 = [*(v5 + 112) suggestionType];
    v12 = *(v5 + 112);
    if (v11 == 1)
    {
      v13 = type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline();
      sub_22CA0D5B0(v13);
      v14 = sub_22CA04794();
      *(v5 + 280) = v14;
      v15 = v12;
      sub_22CA0DD60();
      v16 = sub_22CA20AF0();
      sub_22CA21010();
      sub_22CA0DCA0();

      if (sub_22CA0DC70())
      {
        sub_22CA0D248();
        sub_22CA0D13C();
        v17 = sub_22CA0D120();
        sub_22CA0D9C0(v17);
        sub_22CA0D354(4.8151e-34);
        *(v19 + 104) = v18;
        sub_22CA20CF0();
        sub_22CA0CE8C();
        sub_22CA0CE3C(v20, v21, MEMORY[0x277CE9B08]);
        sub_22CA0D8D0();
        v22 = sub_22CA21340();
        sub_22CA0D634(v22, v23);
        sub_22CA0D528();
        sub_22CA0D0D4();
        sub_22CA0D228(&dword_22C9CA000, v24, v25, "Calling %s with context: %@");
        sub_22C9DF60C(v4, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v3);
        sub_22CA0D364();
        sub_22C9D6FFC();
      }

      sub_22CA0D6F8();
      v26 = swift_task_alloc();
      *(v5 + 288) = v26;
      sub_22CA0D1AC();
      sub_22CA0CE3C(v27, v28, &unk_22CA24770);
      sub_22CA0D3D4();
      *v26 = v29;
      sub_22CA0D174();
    }

    else
    {
      v81 = type metadata accessor for MSSuggestionsWorkoutRecommendationPipeline();
      sub_22CA0D5B0(v81);
      v14 = sub_22C9D739C();
      *(v5 + 312) = v14;
      v82 = v12;
      sub_22CA0DD60();
      v83 = sub_22CA20AF0();
      sub_22CA21010();
      sub_22CA0DCA0();

      if (sub_22CA0DC70())
      {
        sub_22CA0D248();
        sub_22CA0D13C();
        v84 = sub_22CA0D120();
        sub_22CA0D9C0(v84);
        sub_22CA0D354(4.8151e-34);
        *(v86 + 72) = v85;
        sub_22CA20CF0();
        sub_22CA0CE8C();
        sub_22CA0CE3C(v87, v88, MEMORY[0x277CE9B08]);
        sub_22CA0D8D0();
        v89 = sub_22CA21340();
        sub_22CA0D634(v89, v90);
        sub_22CA0D528();
        sub_22CA0D0D4();
        sub_22CA0D228(&dword_22C9CA000, v91, v92, "Calling %s with context: %@");
        sub_22C9DF60C(v4, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v3);
        sub_22CA0D364();
        sub_22C9D6FFC();
      }

      sub_22CA0D6E0();
      v26 = swift_task_alloc();
      *(v5 + 320) = v26;
      sub_22CA0D1C4();
      sub_22CA0CE3C(v93, v94, &unk_22CA23110);
      sub_22CA0D3D4();
      *v26 = v95;
      sub_22CA0D190();
    }

    v26[1] = v31;

    return MEMORY[0x28213B5F0](v14, v0, v30);
  }

  else
  {
    v32 = sub_22CA20AF0();
    v33 = sub_22CA21010();
    if (os_log_type_enabled(v32, v33))
    {
      v0 = swift_slowAlloc();
      *v0 = 0;
      sub_22CA0D9B4();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_22CA0D158();
    }

    v39 = MEMORY[0x277D84F90];
    v155 = *(v5 + 112) + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v40 = *(v5 + 136);
    v41 = (v40 + 16);
    v153 = (v40 + 32);
    v42 = (v40 + 8);
    sub_22CA0D8E8();
    v45 = *(v39 + 16);
    v159 = v41;
    v154 = v42;
    for (i = v45; ; v45 = i)
    {
      if (v44 == v45)
      {
        v46 = 1;
        KeyPath = v45;
      }

      else
      {
        sub_22CA0D8DC();
        if (v47)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        sub_22CA0D328();
        v48 = sub_22CA0CEC4();
        v49(v48);
        v50 = sub_22CA0D21C();
        v43 = sub_22CA0CDE0(v50, v51, &qword_27D9E50A8, &qword_22CA24870);
        v46 = 0;
      }

      v52 = sub_22CA0CFDC(v43, v46);
      sub_22CA0CDE0(v52, v53, &unk_27D9E50B0, &qword_22CA24878);
      sub_22CA0D288();
      if (v54)
      {
        break;
      }

      v162 = KeyPath;
      v33 = *(v5 + 256);
      v55 = *(v5 + 184);
      v0 = *(v5 + 128);
      v56 = *(v5 + 112);
      v57 = *v55;
      (*v153)(*(v5 + 152), v55 + v158[12], v0);
      sub_22CA20B90();
      v58 = *(v5 + 56);
      v59 = sub_22CA20B80();
      swift_getObjectType();
      sub_22CA0DFD8();
      sub_22CA0CF6C();
      sub_22CA21030();
      v156 = sub_22CA20F90();
      v61 = v60;
      v62 = v56;
      v63 = v58;
      v64 = sub_22CA20AF0();
      KeyPath = sub_22CA21010();

      if (sub_22C9D72E0())
      {
        v33 = sub_22C9D71CC();
        sub_22CA0D434();
        v65 = sub_22CA0D120();
        v165[0] = v65;
        *v33 = 136315650;
        v0 = *(v155 + 8);

        v66 = sub_22CA0D95C();
        v5 = sub_22C9D60B0(v66, v0, v67);

        sub_22CA0D788();
        sub_22CA0DAB8();
        _os_log_impl(&dword_22C9CA000, v64, KeyPath, "<requestID: %s Ranked Candidate #%ld: %@", v33, 0x20u);
        sub_22C9DF60C(v57, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v65);
        sub_22C9D6FC4();
        sub_22CA0D0F8();
      }

      v32 = *(v5 + 256);
      v4 = v63;

      swift_unknownObjectRetain();
      v68 = sub_22CA20AF0();
      v69 = sub_22CA20FF0();

      swift_unknownObjectRelease();
      os_log_type_enabled(v68, v69);
      sub_22CA0D500();
      if (v70)
      {
        KeyPath = sub_22C9D71CC();
        v5 = sub_22CA0D434();
        v151 = v33;
        v33 = sub_22C9E29F4();
        v165[0] = v33;
        v150 = sub_22CA0D850(5.7781e-34);
        v4 = v32;
        v71 = sub_22C9D60B0(v156, v61, v165);

        *(KeyPath + 14) = v71;
        *(KeyPath + 22) = v0;
        v32 = v59;
        v72 = sub_22CA21020();
        sub_22CA0D634(v72, v73);
        sub_22CA0D74C();

        *(KeyPath + 24) = v0;
        sub_22CA0DD00(&dword_22C9CA000, v68, v69, "Candidate: %@ finalScore: %s features: %s");
        sub_22C9DF60C(v5, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D034();
        swift_arrayDestroy();
        sub_22CA0D0F8();
        sub_22CA0D3B8();

        swift_unknownObjectRelease();
        v42 = v154;
        v43 = (*v154)(v4, v151);
      }

      else
      {

        swift_unknownObjectRelease();

        v42 = v154;
        v74 = sub_22CA0D2AC();
        v43 = v76(v74, v75);
      }

      v41 = v159;
      v44 = v162;
      v39 = MEMORY[0x277D84F90];
    }

    v0 = [*(v5 + 112) maxSuggestions];
    KeyPath = swift_getKeyPath();
    v33 = *(v39 + 16);
    if (v33)
    {
      sub_22CA0DB18();
      sub_22CA0D00C();
      sub_22CA0D994();
      do
      {
        v77 = sub_22CA0D734();
        (v4)(v77);
        sub_22CA0D968();
        swift_getAtKeyPath();
        v78 = sub_22CA0D77C();
        v80 = v79(v78);
        sub_22CA0DCE8(v80);
        sub_22CA0D55C();
        sub_22CA0D5E4();
        sub_22CA21200();
        v42 = (v42 + v45);
        --v33;
      }

      while (v33);

      v32 = v165[0];
      v0 = v162;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v96 = sub_22C9E3C08();
    sub_22C9F21E0(v96, v97);
    sub_22CA0D068();
    if (KeyPath)
    {
      sub_22CA21370();
      sub_22CA0D50C();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      sub_22CA0D924();
      if (!v101)
      {
        sub_22CA0D9D8();
        if (v54)
        {
          swift_dynamicCastClass();
          sub_22CA0DD48();
          if (v45)
          {
            goto LABEL_41;
          }

          v45 = MEMORY[0x277D84F90];
          goto LABEL_40;
        }

        goto LABEL_79;
      }

      goto LABEL_78;
    }

    while (1)
    {
      v98 = sub_22CA0D2AC();
      sub_22CA0DBE0(v98, v99);
      v45 = v100;
LABEL_40:
      swift_unknownObjectRelease();
LABEL_41:
      sub_22C9E6DA0();
      sub_22CA0D38C();
      v160 = v102;
      v163 = v45;
      while (v0 != v42)
      {
        if (KeyPath)
        {
          sub_22CA0D6BC();
        }

        else
        {
          sub_22CA0D918();
          if (v47)
          {
            goto LABEL_73;
          }

          sub_22CA0D6A4();
        }

        sub_22CA0D428();
        if (v101)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v41 = sub_22CA0D61C();
        v33 = v33;
        v32 = sub_22CA20AF0();
        sub_22CA21010();

        if (sub_22CA0DC58())
        {
          v5 = sub_22C9D71CC();
          sub_22CA0D434();
          v103 = sub_22CA0D39C();
          sub_22CA0D5D8(v103);
          *v5 = 136315650;
          v104 = KeyPath;
          v105 = *(v155 + 8);

          v106 = sub_22CA0D950();
          v4 = sub_22C9D60B0(v106, v105, v107);
          KeyPath = v104;

          *(v5 + 4) = v4;
          sub_22CA0CF34();
          *v45 = v33;
          v108 = v33;
          sub_22CA0D930();
          sub_22CA0DC28(&dword_22C9CA000, v32, v109, "<requestID: %s Final Ranked Candidate #%ld before deep loading: %@");
          sub_22C9DF60C(v45, &unk_27D9E5090, &qword_22CA22E00);
          v0 = v160;
          v45 = v163;
          sub_22C9D70C0();
          sub_22C9D6F60();
          sub_22CA0D034();
        }

        else
        {
        }

        v42 = (v42 + 1);
      }

      sub_22CA0DC10(v102);
      v110 = sub_22CA20D40();
      v111 = sub_22CA0DD18(v110);
      if (v0 >= v111)
      {
        break;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_unknownObjectRelease();
    }

    sub_22CA0D900(v0 - v111);
    if ((v112 & 1) == 0)
    {
      type metadata accessor for MSBiomeMediaReader();
      swift_initStackObject();
      sub_22CA0D41C();
      sub_22C9F2EA4();
      sub_22CA0D41C();

      v45 = v32;
    }

    v33 = MEMORY[0x277D837D0];
    v113 = sub_22C9E6DA0();
    sub_22CA0D594(v113);
    while (v0 != v42)
    {
      if (v41)
      {
        sub_22CA0D6BC();
      }

      else
      {
        sub_22CA0D8F4();
        if (v47)
        {
          goto LABEL_75;
        }

        sub_22CA0D6A4();
      }

      sub_22CA0D428();
      if (v101)
      {
        goto LABEL_74;
      }

      KeyPath = sub_22CA0D61C();
      v114 = v33;
      v32 = sub_22CA20AF0();
      sub_22CA21010();

      if (sub_22CA0DC58())
      {
        v5 = sub_22C9D71CC();
        KeyPath = sub_22CA0D434();
        v115 = sub_22C9D71CC();
        sub_22CA0D5D8(v115);
        *v5 = 136315650;
        sub_22CA0DBF8();
        sub_22CA0D540();
        sub_22CA0D5CC();

        *(v5 + 4) = v45;
        v45 = v163;
        sub_22CA0CF34();
        *KeyPath = v114;
        v116 = v114;
        sub_22CA0D930();
        sub_22CA0DC28(&dword_22C9CA000, v32, v117, "<requestID: %s Final Ranked Candidate #%ld after deep loading: %@");
        sub_22C9DF60C(KeyPath, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D3B8();
        sub_22C9D04CC(v41);
        v41 = v158;
        v0 = v160;
        sub_22C9D70C0();
        sub_22CA0D034();
      }

      else
      {
      }

      v42 = (v42 + 1);
      v33 = MEMORY[0x277D837D0];
    }

    v118 = *(v5 + 248);
    v161 = *(v5 + 256);
    v120 = *(v5 + 112);
    v119 = *(v5 + 120);
    sub_22CA21070();
    v121 = sub_22C9D7254();
    v122 = sub_22CA0D64C(v121);
    *(v122 + 16) = xmmword_22CA22FA0;
    v123 = [v120 bundleId];
    sub_22CA20E20();
    sub_22CA0D710();

    *(v122 + 56) = v33;
    *(v122 + 64) = v118;
    *(v122 + 32) = v4;
    *(v122 + 40) = v5;
    v124 = [v119 requestIdentifier];
    sub_22CA20E20();
    sub_22CA0D710();

    *(v122 + 96) = v33;
    *(v122 + 104) = v118;
    *(v122 + 72) = v4;
    *(v122 + 80) = v5;
    sub_22CA0D07C();
    sub_22CA0D4E0(v32, &dword_22C9CA000, v125, "(Framework) Suggestions Fetch");

    v126 = v120;
    sub_22CA0DCB8();
    v127 = v119;
    v128 = v161;
    v129 = sub_22CA20AF0();
    v130 = sub_22CA21010();

    v131 = os_log_type_enabled(v129, v130);
    v133 = v164[26];
    v132 = v164[27];
    v134 = v164[24];
    if (v131)
    {
      sub_22CA0D1FC();
      v135 = sub_22CA0D434();
      v136 = sub_22C9D71CC();
      sub_22CA0D318(v136);
      v137 = sub_22CA0DBB0(3.8523e-34);
      sub_22CA0DB98(v137);
      sub_22CA0D988();
      v138 = [v161 requestIdentifier];
      v157 = v132;
      v139 = sub_22CA20E20();
      v128 = v140;

      sub_22C9D60B0(v139, v128, v165);
      sub_22CA0D528();
      sub_22CA0CF88();
      sub_22CA0DA78(&dword_22C9CA000, v141, v142, "MediaSuggestions: Returning %ld candidates for %s with options: %@, took %fs");
      sub_22C9DF60C(v135, &unk_27D9E5090, &qword_22CA22E00);
      sub_22CA0D2B8();
      sub_22C9D04CC(v133);
      sub_22CA0D0B8();
      sub_22CA0D268();

      v143 = sub_22CA0D2F8();
      v128(v143);
      v144 = v157;
      v145 = v129;
    }

    else
    {

      v146 = sub_22CA0D308();
      v161(v146);
      v144 = v132;
      v145 = v134;
    }

    (v128)(v144, v145);
    sub_22CA0D1DC();

    v147 = sub_22CA0D054();

    return v148(v147);
  }
}

uint64_t sub_22CA081F8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v4;
  *(v2 + 304) = v0;

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22CA08DE8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v4;
  *(v2 + 336) = v0;

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22CA099D8()
{
  (*(v0[25] + 8))(v0[27], v0[24]);

  sub_22CA0DA38();

  sub_22C9D7050();

  return v1();
}

uint64_t sub_22CA09AA0()
{
  (*(v0[25] + 8))(v0[27], v0[24]);

  sub_22CA0DA38();

  sub_22C9D7050();

  return v1();
}

uint64_t sub_22CA09BF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22CA09CB4;

  return MSRankedSuggester.suggestions(with:)();
}

uint64_t sub_22CA09CB4()
{
  sub_22CA0D6D4();
  v2 = v0;
  sub_22C9D70B4();
  v4 = v3;
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  sub_22C9D6EA4();
  *v9 = v8;

  if (v0)
  {
    if (v5)
    {
      v10 = v4[4];
      v11 = sub_22CA20920();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v13 = v4[4];
      type metadata accessor for MSSuggestion(0);
      v11 = sub_22CA20EB0();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_22C9D7050();

  return v14();
}

uint64_t sub_22CA09EBC()
{
  sub_22C9D6F3C();
  *(v0 + 16) = sub_22CA20F50();
  *(v0 + 24) = sub_22CA20F40();
  v2 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22CA09F50, v2, v1);
}

uint64_t sub_22CA09F50()
{
  sub_22C9D6F3C();

  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_22CA09FE0()
{
  sub_22C9D6F3C();
  *(v0 + 32) = sub_22CA20F40();
  v2 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22CA0A068, v2, v1);
}

uint64_t sub_22CA0A068()
{
  sub_22C9D6F3C();

  *(v0 + 40) = qword_28143A0D8;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22CA0A11C;

  return sub_22C9E5930(0xD000000000000012, 0x800000022CA27F60);
}

uint64_t sub_22CA0A11C()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22CA0A204()
{
  v50 = v0;
  v4 = v0[7];
  if (*(v4 + 16))
  {
LABEL_2:
    if (qword_28143A320 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v5 = sub_22CA20B10();
      sub_22C9D0494(v5, &unk_28143A4E0);
      v6 = sub_22CA20AF0();
      v7 = sub_22CA21010();
      if (sub_22CA0D874(v7))
      {
        v8 = sub_22C9D7164();
        sub_22C9D71CC();
        sub_22CA0D9CC();
        *v8 = 136315138;

        MEMORY[0x2318BAA20](v9, MEMORY[0x277D837D0]);
        sub_22CA0D758();

        sub_22C9D60B0(v2, v3, &v49);
        sub_22CA0D5CC();

        *(v8 + 4) = v2;
        sub_22CA0D578(&dword_22C9CA000, v10, v1, "allowed bundleIDs before filtering: %s");
        sub_22C9D6F60();
        sub_22C9D6FFC();
      }

      v3 = *(v4 + 16);

      v11 = 0;
      v1 = MEMORY[0x277D84F90];
LABEL_6:
      for (i = v4 + 40 + 16 * v11; ; i += 16)
      {
        if (v3 == v11)
        {

          v17 = sub_22CA20AF0();
          v18 = sub_22CA21010();

          if (sub_22C9D72E0())
          {
            v19 = sub_22C9D7164();
            sub_22C9D71CC();
            sub_22CA0D9CC();
            *v19 = 136315138;
            v20 = MEMORY[0x2318BAA20](v1, MEMORY[0x277D837D0]);
            v22 = sub_22C9D60B0(v20, v21, &v49);

            *(v19 + 4) = v22;
            sub_22CA0D578(&dword_22C9CA000, v23, v18, "allowed bundleIDs after filtering: %s");
            sub_22C9D6F60();
            sub_22C9D6FFC();
          }

          sub_22C9E6EBC();
          sub_22C9D722C();

          __asm { BRAA            X2, X16 }
        }

        if (v11 >= *(v4 + 16))
        {
          break;
        }

        v13 = sub_22CA20E10();
        v2 = sub_22CA0CAB8(v13);

        if (v2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CA0D890();
            v1 = v49;
          }

          v16 = *(v1 + 16);
          v15 = *(v1 + 24);
          v2 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_22CA0D82C(v15);
            v1 = v49;
          }

          sub_22CA0D9E4();
          goto LABEL_6;
        }

        ++v11;
      }

      __break(1u);
LABEL_31:
      sub_22CA0CEA4(&qword_28143A320);
    }
  }

  v26 = [objc_opt_self() availablebundleIDsForMediaSuggestions];
  v27 = sub_22CA20EC0();
  v0[8] = v27;

  if (!*(v27 + 16))
  {
    v4 = v27;
    goto LABEL_2;
  }

  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4(&qword_28143A320);
  }

  v28 = sub_22CA20B10();
  sub_22C9D0494(v28, &unk_28143A4E0);
  v29 = sub_22CA20AF0();
  v30 = sub_22CA21010();
  if (sub_22CA0D874(v30))
  {
    v31 = sub_22C9D7164();
    v32 = sub_22C9D71CC();
    v49 = v32;
    *v31 = 136315138;

    v34 = MEMORY[0x2318BAA20](v33, MEMORY[0x277D837D0]);
    v36 = v35;

    v37 = sub_22C9D60B0(v34, v36, &v49);

    *(v31 + 4) = v37;
    sub_22CA0D9B4();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_22C9D04CC(v32);
    sub_22C9D6FFC();
    sub_22CA0D158();
  }

  v43 = swift_task_alloc();
  v0[9] = v43;
  *v43 = v0;
  v43[1] = sub_22CA0A67C;
  sub_22C9D722C();

  return MSMediaAppIntentsCacheManager.saveBundleIDsToCache(_:usecase:)(v44, v45, v46);
}

uint64_t sub_22CA0A67C()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  v3 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_22CA0A77C()
{
  v4 = *(v0 + 64);
  if (qword_28143A320 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_28143A4E0);
    v6 = sub_22CA20AF0();
    v7 = sub_22CA21010();
    if (sub_22CA0D874(v7))
    {
      v8 = sub_22C9D7164();
      sub_22C9D71CC();
      sub_22CA0D9CC();
      *v8 = 136315138;

      MEMORY[0x2318BAA20](v9, MEMORY[0x277D837D0]);
      sub_22CA0D758();

      sub_22C9D60B0(v2, v3, &v26);
      sub_22CA0D5CC();

      *(v8 + 4) = v2;
      sub_22CA0D578(&dword_22C9CA000, v10, v1, "allowed bundleIDs before filtering: %s");
      sub_22C9D6F60();
      sub_22C9D6FFC();
    }

    v3 = *(v4 + 16);

    v11 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_5:
    for (i = v4 + 40 + 16 * v11; ; i += 16)
    {
      if (v3 == v11)
      {

        v17 = sub_22CA20AF0();
        v18 = sub_22CA21010();

        if (sub_22C9D72E0())
        {
          v19 = sub_22C9D7164();
          sub_22C9D71CC();
          sub_22CA0D9CC();
          *v19 = 136315138;
          v20 = MEMORY[0x2318BAA20](v1, MEMORY[0x277D837D0]);
          v22 = sub_22C9D60B0(v20, v21, &v26);

          *(v19 + 4) = v22;
          sub_22CA0D578(&dword_22C9CA000, v23, v18, "allowed bundleIDs after filtering: %s");
          sub_22C9D6F60();
          sub_22C9D6FFC();
        }

        sub_22C9E6EBC();
        sub_22C9D722C();

        __asm { BRAA            X2, X16 }
      }

      if (v11 >= *(v4 + 16))
      {
        break;
      }

      v13 = sub_22CA20E10();
      v2 = sub_22CA0CAB8(v13);

      if (v2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CA0D890();
          v1 = v26;
        }

        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        v2 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          sub_22CA0D82C(v15);
          v1 = v26;
        }

        sub_22CA0D9E4();
        goto LABEL_5;
      }

      ++v11;
    }

    __break(1u);
LABEL_21:
    sub_22CA0CEA4(&qword_28143A320);
  }
}

void *sub_22CA0AA1C@<X0>(void *a1@<X8>)
{
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  result = sub_22CA20B90();
  *a1 = v3;
  return result;
}

uint64_t sub_22CA0AA6C(id *a1)
{
  v1 = *a1;
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  return sub_22CA20BA0();
}

void *static MSRankedSuggester.availablebundleIDsForMediaSuggestions()()
{
  v0 = sub_22CA209F0();
  sub_22C9DAE90();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14(&qword_28143A1E8);
  }

  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4(&qword_28143A1F0);
  }

  v9 = sub_22CA20AE0();
  sub_22C9D0494(v9, qword_28143A4C0);
  sub_22CA0D114();
  sub_22CA20AC0();
  sub_22CA209E0();
  sub_22CA209B0();
  v10 = *(v2 + 8);
  v10(v6, v0);
  sub_22CA209E0();
  v18[3] = MEMORY[0x277D84FA0];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  sub_22C9F81A4();
  v12 = v11;
  sub_22C9F8EBC();
  v14 = v13;
  sub_22CA0AD88(v12);

  sub_22CA0AD88(v14);

  sub_22CA21070();
  sub_22CA0D114();
  sub_22CA20AC0();

  v16 = sub_22CA054BC(v15);
  v10(v6, v0);
  v10(v8, v0);

  return v16;
}

uint64_t sub_22CA0AD88(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    swift_bridgeObjectRetain_n();
    sub_22CA15904(&v5, v4, v3);

    i += 2;
  }

  return result;
}

uint64_t static MSRankedSuggester.availableBundleIDs(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_22CA20F70();
  sub_22C9D0B98(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_22C9D1034(0, 0, v7, &unk_22CA24830, v9);
}

uint64_t sub_22CA0AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22CA0AFEC;

  return static MSRankedSuggester.availableBundleIDs()();
}

uint64_t sub_22CA0AFEC()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22CA0B0D4()
{
  sub_22C9D6F3C();
  (*(v0 + 16))(*(v0 + 40));

  sub_22C9D7050();

  return v1();
}

uint64_t sub_22CA0B1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_22CA20F70();
  sub_22C9D0B98(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  sub_22C9D1034(0, 0, v9, &unk_22CA24850, v11);
}

uint64_t sub_22CA0B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return MEMORY[0x2822009F8](sub_22CA0B2F4, 0, 0);
}

uint64_t sub_22CA0B2F4()
{
  sub_22CA0D6D4();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22CA0B418;
  v3 = swift_continuation_init();
  v0[17] = sub_22C9D02E4(&qword_27D9E5110, &qword_22CA24858);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22CA0ECEC;
  v0[13] = &unk_283FCE210;
  v0[14] = v3;
  [v2 suggestionsWithOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22CA0B418()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22CA0B514()
{
  sub_22C9D6F3C();
  (*(v0 + 168))(*(v0 + 144), 0);

  sub_22C9D7050();

  return v1();
}

uint64_t sub_22CA0B584()
{
  sub_22CA0D6D4();
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  swift_willThrow();
  v3 = v1;
  v2(0, v1);

  sub_22C9D7050();

  return v4();
}

uint64_t MSRankedSuggester.candidates(for:)(void *a1)
{
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22CA0D4A0(v4, v45);
  v6 = MEMORY[0x28223BE20](v5);
  v47 = &v45 - v7;
  MEMORY[0x28223BE20](v6);
  sub_22CA0D93C();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14(&qword_28143A1E8);
  }

  v45 = v1;
  v46 = v10;
  v11 = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4(&qword_28143A1F0);
  }

  v12 = sub_22CA20AE0();
  sub_22C9D0494(v12, qword_28143A4C0);
  v50 = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v13 = sub_22CA0D64C(v50);
  v49 = xmmword_22CA22FA0;
  *(v13 + 16) = xmmword_22CA22FA0;
  v14 = [a1 bundleId];
  v15 = sub_22CA20E20();
  v17 = v16;

  v18 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22CA0CBDC();
  *(v13 + 64) = v19;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v20 = [v52 requestIdentifier];
  v21 = sub_22CA20E20();
  v23 = v22;

  *(v13 + 96) = v18;
  *(v13 + 104) = v19;
  *(v13 + 72) = v21;
  *(v13 + 80) = v23;
  sub_22CA0D114();
  sub_22CA0D664(v24, &dword_22C9CA000, v25, "(Framework) Candidates Fetch");

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v53 = MEMORY[0x277D84F90];
  v26 = sub_22CA0D68C();
  v51 = v11;
  if (v26 != 1 && sub_22CA0D68C() != 2)
  {
    sub_22CA209F0();
    v27 = v46;
    sub_22CA0D338(v46);
    v28 = v45;
    v29 = sub_22CA0D090(v45, 1);
    sub_22C9F0A1C(v29, v30, v31, v28);
    v11 = &unk_27D9E4F00;
    sub_22CA0DB78();
    sub_22C9DF60C(v27, &unk_27D9E4F00, &unk_22CA232D0);

    sub_22CA0DBC8(v32);
  }

  if (sub_22CA0D68C() == 1 || sub_22CA0D68C() == 2)
  {
    sub_22CA209F0();
    v33 = v47;
    sub_22CA0D338(v47);
    v11 = v48;
    v34 = sub_22CA0D090(v48, 1);
    sub_22C9F7EA0(v34);
    v35 = sub_22CA0D21C();
    sub_22C9DF60C(v35, v36, &unk_22CA232D0);
    sub_22C9DF60C(v33, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22CA0DBC8(v37);
  }

  sub_22CA21070();
  v38 = sub_22CA0D64C(v50);
  *(v38 + 16) = v49;
  v39 = [a1 bundleId];
  sub_22CA20E20();
  sub_22CA0DCD0();
  v40 = MEMORY[0x277D837D0];
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = v19;
  *(v38 + 32) = v11;
  *(v38 + 40) = a1;
  v41 = [v52 requestIdentifier];
  sub_22CA20E20();
  sub_22CA0DCD0();
  *(v38 + 96) = v40;
  *(v38 + 104) = v19;
  *(v38 + 72) = v11;
  *(v38 + 80) = a1;
  sub_22CA0D114();
  sub_22CA0D9F8(v42, &dword_22C9CA000, v43, "(Framework) Candidates Fetch");

  return v53;
}

uint64_t MSRankedSuggester.candidates(for:from:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v5 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22CA0D4A0(v6, v50);
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  sub_22CA0D93C();
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14(&qword_28143A1E8);
  }

  v50 = v3;
  v51 = v12;
  v13 = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4(&qword_28143A1F0);
  }

  v14 = sub_22CA20AE0();
  sub_22C9D0494(v14, qword_28143A4C0);
  v57 = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v15 = sub_22CA0D64C(v57);
  v56 = xmmword_22CA22FA0;
  *(v15 + 16) = xmmword_22CA22FA0;
  v16 = [a1 bundleId];
  v17 = sub_22CA20E20();
  v19 = v18;

  v20 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22CA0CBDC();
  *(v15 + 64) = v21;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v22 = [v59 requestIdentifier];
  v23 = sub_22CA20E20();
  v25 = v24;

  *(v15 + 96) = v20;
  *(v15 + 104) = v21;
  *(v15 + 72) = v23;
  *(v15 + 80) = v25;
  sub_22CA0D114();
  sub_22CA0D664(v26, &dword_22C9CA000, v27, "(Framework) Candidates Fetch");

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v60 = MEMORY[0x277D84F90];
  v28 = sub_22CA0D68C();
  v58 = v13;
  if (v28 != 1 && sub_22CA0D68C() != 2)
  {
    sub_22CA209F0();
    v29 = v51;
    sub_22CA0D338(v51);
    v30 = v50;
    v31 = sub_22CA0D090(v50, 1);
    sub_22C9F0A1C(v31, v32, v33, v30);
    v13 = &unk_27D9E4F00;
    sub_22CA0DB78();
    sub_22C9DF60C(v29, &unk_27D9E4F00, &unk_22CA232D0);

    sub_22CA0DBC8(v34);
  }

  if (sub_22CA0D68C() == 1 || sub_22CA0D68C() == 2)
  {
    v35 = sub_22CA209F0();
    sub_22C9E054C();
    v37 = *(v36 + 16);
    v38 = v52;
    v37(v52, v53, v35);
    sub_22C9D0B98(v38, 0, 1, v35);
    v13 = v55;
    v37(v55, v54, v35);
    v39 = sub_22CA0D090(v13, 0);
    sub_22C9F7EA0(v39);
    v40 = sub_22CA0D21C();
    sub_22C9DF60C(v40, v41, &unk_22CA232D0);
    sub_22C9DF60C(v38, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22CA0DBC8(v42);
  }

  sub_22CA21070();
  v43 = sub_22CA0D64C(v57);
  *(v43 + 16) = v56;
  v44 = [a1 bundleId];
  sub_22CA20E20();
  sub_22CA0DCD0();
  v45 = MEMORY[0x277D837D0];
  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = v21;
  *(v43 + 32) = v13;
  *(v43 + 40) = a1;
  v46 = [v59 requestIdentifier];
  sub_22CA20E20();
  sub_22CA0DCD0();
  *(v43 + 96) = v45;
  *(v43 + 104) = v21;
  *(v43 + 72) = v13;
  *(v43 + 80) = a1;
  sub_22CA0D114();
  sub_22CA0D9F8(v47, &dword_22C9CA000, v48, "(Framework) Candidates Fetch");

  return v60;
}

uint64_t static MSRankedSuggester.candidateCount(for:)()
{
  sub_22C9D6F3C();
  v0[2] = v1;
  v2 = sub_22CA20A20();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v3 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22CA0C408(uint64_t a1)
{
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14(&qword_28143A1E8);
  }

  v1[6] = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4(&qword_28143A1F0);
  }

  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[2];
  v16 = v1[3];
  v7 = sub_22CA20AE0();
  v1[7] = sub_22C9D0494(v7, qword_28143A4C0);
  v1[8] = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22CA22F90;
  v9 = [v6 bundleId];
  sub_22CA20E20();
  sub_22CA0D710();

  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_22CA0CBDC();
  v1[9] = v10;
  *(v8 + 64) = v10;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  sub_22CA0D114();
  sub_22CA20AC0();

  type metadata accessor for MSRankedSuggester();
  sub_22CA20A10();
  sub_22CA20A00();
  (*(v5 + 8))(v4, v16);
  v11 = sub_22CA0D77C();
  v1[10] = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0(v11, v12);
  v13 = swift_task_alloc();
  v1[11] = v13;
  *v13 = v1;
  v13[1] = sub_22CA0C648;
  v14 = v1[2];

  return sub_22CA05F64(v14, 1);
}

uint64_t sub_22CA0C648(uint64_t a1)
{
  sub_22C9D70B4();
  v5 = v4;
  v6 = *v2;
  sub_22C9D6EA4();
  *v7 = v6;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22CA0C760(uint64_t a1)
{
  v4 = v1[9];
  v11 = v1[10];
  v5 = v1[7];
  v6 = v1[2];
  sub_22CA21070();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22CA22F90;
  v8 = [v6 bundleId];
  sub_22CA20E20();
  sub_22CA0D758();

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  sub_22CA0D114();
  sub_22CA20AC0();

  sub_22C9E6DA0();
  sub_22CA0D74C();

  sub_22C9E6EBC();

  return v9(v5);
}

uint64_t sub_22CA0C8B8()
{
  sub_22CA0D6D4();
  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4(&qword_28143A320);
  }

  v1 = *(v0 + 96);
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  v6 = sub_22C9D72E0();
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  if (v6)
  {
    v9 = sub_22C9D7164();
    v10 = sub_22CA0D434();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22C9CA000, v4, v5, "Candidate count fetch (shallowLoading), error: %@", v9, 0xCu);
    sub_22C9DF60C(v10, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  else
  {
  }

  sub_22C9E6EBC();

  return v13(0);
}

id MSRankedSuggester.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22CA0CAB8(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t sub_22CA0CB34()
{
  sub_22CA0D6D4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22C9D70A8(v2);
  *v3 = v4;
  v5 = sub_22CA0D480(v3);

  return sub_22CA0AF5C(v5, v6, v7, v8, v9, v1);
}

unint64_t sub_22CA0CBDC()
{
  result = qword_27D9E5088;
  if (!qword_27D9E5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5088);
  }

  return result;
}

uint64_t sub_22CA0CC38()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22C9D70A8(v3);
  *v4 = v5;
  v6 = sub_22CA0D480(v4);

  return sub_22CA0B2D0(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22CA0CD08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C9D70A8(v4);
  *v5 = v6;
  v5[1] = sub_22C9D6E54;

  return sub_22CA09BF0(v1, v2, v3);
}

uint64_t sub_22CA0CDE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C9D02E4(a3, a4);
  sub_22C9E054C();
  v5 = sub_22C9E3C08();
  v6(v5);
  return a2;
}

uint64_t sub_22CA0CE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CA0CEA4(uint64_t a1)
{

  return swift_once();
}

char *sub_22CA0CEC4()
{
  v3 = *(*(v2 - 128) + 48);
  *v1 = v0;
  return v1 + v3;
}

uint64_t sub_22CA0CEF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22CA0CF14(uint64_t a1)
{

  return swift_once();
}

void sub_22CA0CF34()
{
  *(v2 + 12) = 2048;
  *(v2 + 14) = v1;
  *(v2 + 22) = 2112;
  *(v2 + 24) = v0;
}

void sub_22CA0CF50()
{
  *(v1 + 12) = 2048;
  *(v1 + 14) = v0;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v2;
}

id sub_22CA0CF88()
{
  *(v2 + 14) = v0;
  *(v2 + 22) = 2112;
  *(v2 + 24) = v1;
  *v3 = v1;
  *(v2 + 32) = 2048;
  *(v2 + 34) = v5;

  return v1;
}

uint64_t sub_22CA0CFDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  sub_22C9D0B98(v3, a2, 1, *(v2 + 160));
  return v3;
}

__n128 sub_22CA0D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  *(v25 - 96) = a1;
  result = a24;
  *v24 = a24.n128_u32[0];
  return result;
}

void sub_22CA0D034()
{

  JUMPOUT(0x2318BB680);
}

void sub_22CA0D0B8()
{

  JUMPOUT(0x2318BB680);
}

id sub_22CA0D0D4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  *v2 = v3;

  return v3;
}

void sub_22CA0D0F8()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D120()
{

  return swift_slowAlloc();
}

uint64_t sub_22CA0D13C()
{

  return swift_slowAlloc();
}

void sub_22CA0D158()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D1DC()
{
}

uint64_t sub_22CA0D1FC()
{
  *(v1 - 120) = v0;

  return swift_slowAlloc();
}

void sub_22CA0D228(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22CA0D248()
{

  return swift_slowAlloc();
}

void sub_22CA0D268()
{

  JUMPOUT(0x2318BB680);
}

void sub_22CA0D2B8()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D318(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 96) = result;
  return result;
}

uint64_t sub_22CA0D338(uint64_t a1)
{

  return sub_22C9D0B98(a1, 1, 1, v1);
}

void sub_22CA0D364()
{

  JUMPOUT(0x2318BB680);
}

uint64_t sub_22CA0D39C()
{

  return swift_slowAlloc();
}

void sub_22CA0D3B8()
{

  JUMPOUT(0x2318BB680);
}

id sub_22CA0D3E4()
{
  *(v0 + 4) = v4;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2112;
  *(v0 + 24) = v1;
  *v3 = v1;

  return v1;
}

uint64_t sub_22CA0D434()
{

  return swift_slowAlloc();
}

id sub_22CA0D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v16 - 96) = a1;
  *v13 = a13;
  *(v13 + 4) = v14;
  *v15 = v14;
  *(v13 + 12) = 2080;

  return v14;
}

uint64_t sub_22CA0D4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22CA20AC0();
}

uint64_t sub_22CA0D50C()
{

  return swift_unknownObjectRetain_n();
}

uint64_t sub_22CA0D528()
{
}

uint64_t sub_22CA0D540()
{

  return sub_22C9D60B0(v0, v1, (v2 - 96));
}

uint64_t sub_22CA0D55C()
{

  return sub_22CA21220();
}

void sub_22CA0D578(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22CA0D594(uint64_t result)
{
  *(v2 - 120) = result;
  *(v2 - 112) = v1;
  *(v2 - 128) = v1 & 0xC000000000000001;
  return result;
}

uint64_t sub_22CA0D5B0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22CA0D5E4()
{

  return sub_22CA21230();
}

uint64_t sub_22CA0D600(uint64_t result)
{
  *(v2 - 120) = result;
  *(v2 - 112) = v1;
  *(v2 - 128) = v1 & 0xC000000000000001;
  return result;
}

id sub_22CA0D61C()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_22CA0D634(uint64_t a1, unint64_t a2)
{

  return sub_22C9D60B0(a1, a2, (v2 - 96));
}

uint64_t sub_22CA0D64C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22CA0D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 136) = v4;

  return sub_22CA20AC0();
}

id sub_22CA0D68C()
{

  return [v0 (v1 + 3004)];
}

id sub_22CA0D6A4()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void sub_22CA0D6BC()
{

  JUMPOUT(0x2318BAD10);
}

void sub_22CA0D6E0()
{
  v2 = v1[14];
  v1[4] = v0;
  v1[5] = v2;
}

void sub_22CA0D6F8()
{
  v2 = v1[14];
  v1[10] = v0;
  v1[11] = v2;
}

void sub_22CA0D788()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v1;
}

uint64_t sub_22CA0D7C0(uint64_t a1)
{
  v4 = *(v1 + 256);
  *(v2 - 128) = *(v1 + 232);
  *(v2 - 120) = v4;

  return sub_22CA21070();
}

unint64_t sub_22CA0D7E4()
{

  return type metadata accessor for MSRankedSuggester();
}

id sub_22CA0D808()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v3;
  *v2 = v3;

  return v3;
}

void sub_22CA0D82C(unint64_t a1@<X8>)
{

  sub_22CA0CB14(a1 > 1, v1, 1);
}

id sub_22CA0D850(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

BOOL sub_22CA0D874(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22CA0D890()
{
  v2 = *(v0 + 16) + 1;

  sub_22CA0CB14(0, v2, 1);
}

uint64_t sub_22CA0D8B4(uint64_t a1)
{
  *(v2 - 136) = v1;

  return sub_22CA21030();
}

void sub_22CA0D9E4()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

uint64_t sub_22CA0D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22CA20AC0();
}

void sub_22CA0DA18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22CA0DA38()
{
}

void sub_22CA0DA58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void sub_22CA0DA78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x2Au);
}

void sub_22CA0DA98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x2Au);
}

id sub_22CA0DAB8()
{
  *(v0 + 22) = 2112;
  *(v0 + 24) = v1;
  *v2 = v1;

  return v1;
}

uint64_t sub_22CA0DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return sub_22C9D60B0(a27, v27, (v28 - 96));
}

double sub_22CA0DAF8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *v27 = a1;

  return result;
}

uint64_t sub_22CA0DB18()
{
  *(v2 - 112) = v0;
  *(v2 - 96) = v1;

  return sub_22CA21210();
}

uint64_t sub_22CA0DB38(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
}

uint64_t sub_22CA0DB58()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = v2;

  return sub_22CA21020();
}

uint64_t sub_22CA0DB78()
{

  return sub_22C9DF60C(v2, v1, v0);
}

uint64_t sub_22CA0DB98(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t sub_22CA0DBB0(float a1)
{
  *v1 = a1;

  return sub_22C9E6DA0();
}

uint64_t sub_22CA0DBC8(__n128 a1)
{

  return sub_22C9F7A58(v1, a1);
}

void sub_22CA0DBE0(uint64_t a1, uint64_t a2)
{

  sub_22C9FA050(a1, a2, v2, v3);
}

double sub_22CA0DBF8()
{

  return result;
}

uint64_t sub_22CA0DC10(uint64_t a1)
{

  return sub_22CA20D50();
}

void sub_22CA0DC28(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

void sub_22CA0DC40(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

BOOL sub_22CA0DC58()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22CA0DC70()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22CA0DC88()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22CA0DCA0()
{
}

double sub_22CA0DCB8()
{

  return result;
}

void sub_22CA0DCD0()
{
}

uint64_t sub_22CA0DCE8(uint64_t a1)
{

  return sub_22CA211F0();
}

void sub_22CA0DD00(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_22CA0DD18(uint64_t a1)
{

  return sub_22CA20D40();
}

void sub_22CA0DD30()
{
}

uint64_t sub_22CA0DD48()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22CA0DD60()
{
}

uint64_t sub_22CA0DD78(uint64_t a1)
{

  return sub_22C9DF60C(a1, v1, v2);
}

void sub_22CA0DD9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C9D02E4(&qword_27D9E50F8, &qword_22CA24AD0);
    v2 = sub_22CA21310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_22C9E9818(&v22, v24);
    sub_22C9E9818(v24, v25);
    sub_22C9E9818(v25, &v23);
    v13 = sub_22C9FBFA8(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      v17 = (v2[7] + 32 * v14);
      sub_22C9D04CC(v17);
      sub_22C9E9818(&v23, v17);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v12;
      v18[1] = v11;
      sub_22C9E9818(&v23, (v2[7] + 32 * v13));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_22CA0DFE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  v4 = MEMORY[0x28223BE20](v3);
  v7 = v51 - v6;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v57 = v7;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = v4;
    v12 = *(v5 + 72);
    v13 = &selRef_setIntent_;
    v14 = v10;
    v15 = v8;
    v55 = v5;
    v56 = v12;
    do
    {
      v16 = sub_22CA20B80();
      v17 = sub_22CA20E10();
      v18 = [v16 v13[11]];

      swift_unknownObjectRelease();
      [v18 int64Value];

      v13 = &selRef_setIntent_;
      v14 += v56;
      --v15;
    }

    while (v15);
    v53 = *(v55 + 16);
    v54 = "mostRecentPlayback";
    v51[2] = "itemFeedbackRewardScoreDecayed";
    v51[1] = "itemPlaybackScoreDecayed";
    v51[3] = "candidateSourceType";
    v55 += 16;
    v19 = (v55 - 8);
    v20 = MEMORY[0x277D84F90];
    v52 = xmmword_22CA22F90;
    v21 = v57;
    v22 = v11;
    while (1)
    {
      v53(v21, v10, v11);
      sub_22CA20B80();
      swift_getObjectType();
      v23 = sub_22CA21040();
      v25 = v24;

      swift_unknownObjectRelease();
      if (v23 == 0x6574736567677573 && v25 == 0xEE00616964654D64)
      {
      }

      else
      {
        v27 = sub_22CA21360();

        if ((v27 & 1) == 0)
        {
          sub_22CA20B80();
          v28 = sub_22CA20E10();
          v29 = sub_22CA0EB28(v28);

          swift_unknownObjectRelease();
          if (v29)
          {
            [v29 doubleValue];
            v31 = v30;

            v32 = v31 * 10.0;
          }

          else
          {
            v32 = 0.0;
          }

          sub_22CA20B80();
          v38 = sub_22CA20E10();
          v39 = sub_22CA0EB28(v38);

          swift_unknownObjectRelease();
          if (v39)
          {
            [v39 doubleValue];
            v41 = v40;

            v32 = v32 + v41;
          }

          goto LABEL_14;
        }
      }

      sub_22CA20B80();
      swift_getObjectType();
      sub_22CA21030();
      v32 = v33;
      swift_unknownObjectRelease();
LABEL_14:
      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = v52;
      *(inited + 32) = 0x6F63536C616E6966;
      *(inited + 40) = 0xEA00000000006572;
      *(inited + 48) = v32;
      v35 = sub_22CA20DD0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22CA11E70();
        v20 = v42;
      }

      v36 = *(v20 + 16);
      v37 = v36 + 1;
      if (v36 >= *(v20 + 24) >> 1)
      {
        sub_22CA11E70();
        v20 = v43;
      }

      v21 = v57;
      v11 = v22;
      (*v19)(v57, v22);
      *(v20 + 16) = v37;
      *(v20 + 8 * v36 + 32) = v35;
      v10 += v56;
      if (!--v8)
      {
        v9 = MEMORY[0x277D84F90];
LABEL_25:
        v58 = v9;
        sub_22CA21210();
        v44 = 0;
        while (v44 < *(v20 + 16))
        {

          sub_22CA0DD9C(v45);
          v47 = v46;
          v48 = objc_allocWithZone(MEMORY[0x277CBFED0]);
          sub_22CA17474(v47);
          ++v44;

          sub_22CA211F0();
          sub_22CA21220();
          sub_22CA21230();
          sub_22CA21200();
          if (v37 == v44)
          {

            v49 = v58;
            goto LABEL_29;
          }
        }

        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }
  }

  v37 = *(MEMORY[0x277D84F90] + 16);
  if (v37)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v49 = MEMORY[0x277D84F90];

LABEL_29:
  sub_22C9E28F0();
  return sub_22CA169F0(v49);
}