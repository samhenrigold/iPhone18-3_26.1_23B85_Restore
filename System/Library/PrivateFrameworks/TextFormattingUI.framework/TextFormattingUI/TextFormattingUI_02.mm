uint64_t sub_26D357370(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26D35755C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_26D3A1488();
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

  v15 = sub_26D3A1488();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26D357740(result, 1);
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

char *sub_26D357654(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_26D33EC78(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D357740(uint64_t a1, char a2)
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

  sub_26D3A1488();
LABEL_9:
  result = sub_26D3A13E8();
  *v2 = result;
  return result;
}

uint64_t sub_26D3577E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0358();
  *a1 = result;
  return result;
}

uint64_t sub_26D357838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0478();
  *a1 = result;
  return result;
}

uint64_t sub_26D357890(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D33F2EC(a2, a3);
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
      sub_26D340250(v16, a4 & 1);
      v11 = sub_26D33F2EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26D3A1548();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26D33FA28();
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

_OWORD *sub_26D357A08(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26D33F3DC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_26D33FB94();
      v8 = v16;
      goto LABEL_8;
    }

    sub_26D3404F4(v13, a3 & 1);
    v8 = sub_26D33F3DC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_26D3A1548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_26D34855C(a1, v19);
  }

  else
  {
    sub_26D357B48(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_26D357B48(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26D34855C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26D357BB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26D3A1488();
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
      result = sub_26D3A1488();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26D3484AC(&qword_2804FB6F8, &qword_2804FB618, &unk_26D3A3650, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618, &unk_26D3A3650);
            v9 = sub_26D357F18(v13, i, a3);
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
        sub_26D345E5C(0, &qword_2804FAEE0, 0x277D75FA0);
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

uint64_t sub_26D357D64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26D3A1488();
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
      result = sub_26D3A1488();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26D3484AC(&qword_2804FB708, &qword_2804FB640, &qword_26D3A3668, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB640, &qword_26D3A3668);
            v9 = sub_26D357FA0(v13, i, a3);
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
        sub_26D345E5C(0, &qword_2804FAEE8, 0x277D76368);
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

void (*sub_26D357F18(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_26D33E7D8(a2, a3);
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
    return sub_26D357F98;
  }

  __break(1u);
  return result;
}

void (*sub_26D357FA0(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_26D33E800(a2, a3);
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
    return sub_26D359984;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D358020(unint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t), SEL *a4)
{
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v17 = a3;
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = v17(i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = [v7 *a4];
        v11 = sub_26D3A0F98();
        v13 = v12;

        LOBYTE(v13) = sub_26D34256C(&v19, v11, v13);

        if (v13)
        {
          sub_26D3A1408();
          sub_26D3A1438();
          sub_26D3A1448();
          sub_26D3A1418();
        }

        else
        {
        }

        if (v9 == v5)
        {
          return v20;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v15 = a3;
      v16 = sub_26D3A1488();
      a3 = v15;
      v5 = v16;
    }

    while (v16);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_26D3581C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF00, &unk_26D3A3870);
    v3 = sub_26D3A14D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26D33F2EC(v5, v6);
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

uint64_t sub_26D3582C8()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D358300()
{
  swift_unownedRetainStrong();
  sub_26D34FA44();
}

unint64_t sub_26D3583A0()
{
  result = qword_2804FB700;
  if (!qword_2804FB700)
  {
    sub_26D345E5C(255, &qword_2804FAEE0, 0x277D75FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB700);
  }

  return result;
}

uint64_t sub_26D358428@<X0>(uint64_t *a1@<X8>)
{
  sub_26D39FDC8();
  result = sub_26D39FDB8();
  *a1 = result;
  return result;
}

uint64_t sub_26D358458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D3584BC()
{
  result = qword_2804FB720;
  if (!qword_2804FB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB720);
  }

  return result;
}

uint64_t sub_26D358560()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D3585A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D358654;

  return sub_26D353A38(a1, v4, v5, v6);
}

uint64_t sub_26D358654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D358748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D358780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D359988;

  return sub_26D356B0C(a1, v4);
}

uint64_t sub_26D358838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D358654;

  return sub_26D356B0C(a1, v4);
}

uint64_t sub_26D3588F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0358();
  *a1 = result;
  return result;
}

uint64_t sub_26D358948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0478();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TFListStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TFListStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D358B10()
{
  result = qword_2804FB740;
  if (!qword_2804FB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB740);
  }

  return result;
}

unint64_t sub_26D358BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB308, &qword_26D3A3110);
    v3 = sub_26D3A14D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D34856C(v4, &v11, &qword_2804FC9E0, &unk_26D3A3DE0);
      v5 = v11;
      result = sub_26D33F3DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26D34855C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_26D358CD4(uint64_t a1)
{
  v2 = sub_26D3A12F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26D345E5C(0, &unk_2804FC9D0, 0x277D75348);

  v7 = sub_26D3A1338();
  v8 = *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v5 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x277D74F68], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 40) = v7;
  v11 = v7;

  v12 = v10;
  v13 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
  v8(v5, v13);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26D358ECC(void *a1)
{
  v2 = sub_26D3A0F98();
  v4 = v3;
  if (v2 == sub_26D3A0F98() && v4 == v5)
  {

    return 0;
  }

  v7 = sub_26D3A1518();

  if (v7)
  {

    return 0;
  }

  v9 = sub_26D3A0F98();
  v11 = v10;
  if (v9 == sub_26D3A0F98() && v11 == v12)
  {

    return 1;
  }

  else
  {
    v14 = sub_26D3A1518();

    if (v14)
    {

      return 1;
    }

    else
    {
      v15 = sub_26D3A0F98();
      v17 = v16;
      if (v15 == sub_26D3A0F98() && v17 == v18)
      {

        return 2;
      }

      else
      {
        v19 = sub_26D3A1518();

        if (v19)
        {

          return 2;
        }

        else
        {
          v20 = sub_26D3A0F98();
          v22 = v21;
          if (v20 == sub_26D3A0F98() && v22 == v23)
          {

            return 3;
          }

          else
          {
            v24 = sub_26D3A1518();

            if (v24)
            {
              return 3;
            }

            else
            {
              return 4;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26D359118()
{
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (sub_26D34862C())
  {
    if (qword_2804FABA0 != -1)
    {
      swift_once();
    }

    v1 = qword_2804FFC40;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v0 = v8;
  }

  if (sub_26D34862C())
  {
    if (qword_2804FABA8 != -1)
    {
      swift_once();
    }

    v2 = qword_2804FFC48;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v0 = v8;
  }

  if (sub_26D34862C())
  {
    if (qword_2804FABB0 != -1)
    {
      swift_once();
    }

    v3 = qword_2804FFC50;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v0 = v8;
  }

  if (sub_26D34862C())
  {
    if (qword_2804FABB8 != -1)
    {
      swift_once();
    }

    v4 = qword_2804FFC58;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v0 = v8;
  }

  if (sub_26D34862C())
  {
    if (qword_2804FABC0 != -1)
    {
      swift_once();
    }

    v5 = qword_2804FFC60;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v0 = v8;
  }

  if (sub_26D34862C())
  {
    if (qword_2804FABC8 != -1)
    {
      swift_once();
    }

    v6 = qword_2804FFC68;
    MEMORY[0x26D6BD840]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    return v8;
  }

  return v0;
}

void sub_26D359560(void *a1)
{
  if (a1)
  {
    v1 = [a1 styleKey];
    if (!v1)
    {
      sub_26D3A0F98();
      v1 = sub_26D3A0F68();
    }

    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_26D3A0F68();
    [v2 setObject:v1 forKey:v3];
  }
}

unint64_t sub_26D359648(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D3A14F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D359694(char a1, double a2)
{
  if (qword_2804FAB90 != -1)
  {
    swift_once();
  }

  v4 = qword_2804FB548;
  sub_26D345E5C(0, &qword_2804FB768, 0x277CCABB0);
  v5 = sub_26D3A1348();
  v6 = [v4 stringFromNumber_];

  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770, &qword_26D3A3DF0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26D3A35F0;
    *(v12 + 56) = MEMORY[0x277D85048];
    *(v12 + 64) = sub_26D359898();
    *(v12 + 32) = a2;
    v7 = sub_26D3A0FA8();
    v9 = v13;
    if (a1)
    {
      goto LABEL_5;
    }

    return v7;
  }

  v7 = sub_26D3A0F98();
  v9 = v8;

  if ((a1 & 1) == 0)
  {
    return v7;
  }

LABEL_5:
  if (qword_2804FAC38 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770, &qword_26D3A3DF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D3A35F0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_26D3598EC();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  return sub_26D3A0FA8();
}

unint64_t sub_26D359898()
{
  result = qword_2804FB778;
  if (!qword_2804FB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB778);
  }

  return result;
}

unint64_t sub_26D3598EC()
{
  result = qword_2804FB780;
  if (!qword_2804FB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB780);
  }

  return result;
}

uint64_t sub_26D359940()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D35999C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_26D33E800(v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_26D3A1488();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26D359AC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA98, &qword_26D3A5368);
  MEMORY[0x28223BE20](v139);
  v4 = &v120 - v3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAA0, &qword_26D3A5370);
  MEMORY[0x28223BE20](v138);
  v6 = &v120 - v5;
  v130 = sub_26D3A0778();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAA8, &qword_26D3A5378);
  MEMORY[0x28223BE20](v131);
  v132 = &v120 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAB0, &qword_26D3A5380);
  MEMORY[0x28223BE20](v133);
  v10 = &v120 - v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAB8, &qword_26D3A5388);
  v123 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v122 = &v120 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAC0, &qword_26D3A5390);
  v125 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v124 = &v120 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAC8, &qword_26D3A5398);
  v127 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v126 = &v120 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAD0, &qword_26D3A53A0);
  MEMORY[0x28223BE20](v143);
  v137 = &v120 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAD8, &qword_26D3A53A8);
  MEMORY[0x28223BE20](v141);
  v142 = &v120 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAE0, &qword_26D3A53B0);
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAE8, &qword_26D3A53B8);
  MEMORY[0x28223BE20](v19);
  v21 = &v120 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF0, &qword_26D3A53C0);
  v22 = MEMORY[0x28223BE20](v140);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v120 - v25;
  v27 = sub_26D33CED8(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8));
  if ((v28 & 1) != 0 || v27 > 2)
  {
    v33 = sub_26D33D0B8(*(v2 + 32), *(v2 + 40));
    v121 = v6;
    if (v33)
    {
      v34 = sub_26D33CD0C(*(v2 + 48), *(v2 + 56));
      v36 = *v2;
      if (!*v2)
      {
        goto LABEL_17;
      }

      if (*(v36 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
      {
        v37 = 0;
      }

      else
      {
        v37 = *(v36 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
      }

      sub_26D39C058(v37 & 1, *(v36 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics), v34, v35);
      v92 = v91;
      v94 = v93;
      v95 = sub_26D3A0868();
      MEMORY[0x28223BE20](v95);
      *(&v120 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF8, &qword_26D3A53C8);
      v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBB00, &qword_26D3A53D0);
      v97 = sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00, &qword_26D3A53D0, MEMORY[0x277CE1138]);
      v145 = v96;
      v146 = v97;
      swift_getOpaqueTypeConformance2();
      v98 = v132;
      sub_26D39FFE8();
      v147 = *(v2 + 80);
      v148 = *(v2 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10, &qword_26D3A53D8);
      sub_26D3A0D78();
      sub_26D37F20C();
      sub_26D3A0AB8();

      sub_26D3481A4(v98, &qword_2804FBAA8, &qword_26D3A5378);
      v99 = swift_allocObject();
      v100 = *(v2 + 80);
      *(v99 + 80) = *(v2 + 64);
      *(v99 + 96) = v100;
      *(v99 + 112) = *(v2 + 96);
      v101 = *(v2 + 16);
      *(v99 + 16) = *v2;
      *(v99 + 32) = v101;
      v102 = *(v2 + 48);
      *(v99 + 48) = *(v2 + 32);
      *(v99 + 64) = v102;
      v103 = v133;
      v104 = &v10[*(v133 + 36)];
      *v104 = sub_26D383390;
      *(v104 + 1) = v99;
      *(v104 + 2) = 0;
      *(v104 + 3) = 0;
      sub_26D3482B4(v2, &v145);
      v105 = sub_26D37F2D4();
      v106 = v122;
      sub_26D3A0B18();
      sub_26D3481A4(v10, &qword_2804FBAB0, &qword_26D3A5380);
      v107 = sub_26D3A08B8();
      v108 = v128;
      sub_26D3A0768();
      v145 = v103;
      v146 = v105;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v110 = v124;
      v111 = v134;
      MEMORY[0x26D6BD2B0](v107, v92, 0, v108, v134, OpaqueTypeConformance2);
      v133 = *(v129 + 8);
      v112 = v130;
      (v133)(v108, v130);
      (*(v123 + 8))(v106, v111);
      v113 = sub_26D3A08C8();
      sub_26D3A0768();
      v145 = v111;
      v146 = OpaqueTypeConformance2;
      v114 = swift_getOpaqueTypeConformance2();
      v115 = v126;
      v116 = v135;
      MEMORY[0x26D6BD2B0](v113, v94, 0, v108, v135, v114);
      (v133)(v108, v112);
      (*(v125 + 8))(v110, v116);
      v117 = v127;
      v118 = v136;
      (*(v127 + 16))(v121, v115, v136);
      swift_storeEnumTagMultiPayload();
      v145 = v116;
      v146 = v114;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98, &qword_26D3A5368, &unk_26D3A6540);
      v60 = v137;
      sub_26D3A0718();
      (*(v117 + 8))(v115, v118);
    }

    else
    {
      v38 = v139;
      v39 = *(v139 + 48);
      v40 = sub_26D3A0078();
      (*(*(v40 - 8) + 56))(&v4[v39], 1, 1, v40);
      *v4 = 0;
      v4[8] = 1;
      *(v4 + 9) = 257;
      v4[11] = 0;
      v130 = &v4[v38[13]];
      v41 = sub_26D3A0868();
      MEMORY[0x28223BE20](v41);
      *(&v120 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF8, &qword_26D3A53C8);
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBB00, &qword_26D3A53D0);
      v43 = sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00, &qword_26D3A53D0, MEMORY[0x277CE1138]);
      v145 = v42;
      v146 = v43;
      swift_getOpaqueTypeConformance2();
      v44 = v132;
      sub_26D39FFE8();
      v147 = *(v2 + 80);
      v148 = *(v2 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10, &qword_26D3A53D8);
      sub_26D3A0D78();
      sub_26D37F20C();
      v45 = v130;
      sub_26D3A0AB8();

      sub_26D3481A4(v44, &qword_2804FBAA8, &qword_26D3A5378);
      v46 = swift_allocObject();
      v47 = *(v2 + 80);
      *(v46 + 80) = *(v2 + 64);
      *(v46 + 96) = v47;
      *(v46 + 112) = *(v2 + 96);
      v48 = *(v2 + 16);
      *(v46 + 16) = *v2;
      *(v46 + 32) = v48;
      v49 = *(v2 + 48);
      *(v46 + 48) = *(v2 + 32);
      *(v46 + 64) = v49;
      v50 = v133;
      v51 = (v45 + *(v133 + 36));
      *v51 = sub_26D37F2CC;
      v51[1] = v46;
      v51[2] = 0;
      v51[3] = 0;
      v52 = &v4[v38[14]];
      *v52 = swift_getKeyPath();
      v52[8] = 0;
      v53 = &v4[v38[15]];
      *v53 = swift_getKeyPath();
      v53[8] = 0;
      v54 = &v4[v38[16]];
      *v54 = swift_getKeyPath();
      v54[8] = 0;
      v55 = &v4[v38[17]];
      LOBYTE(v147) = 0;
      sub_26D3482B4(v2, &v145);
      sub_26D3A0D48();
      v56 = v146;
      *v55 = v145;
      *(v55 + 1) = v56;
      sub_26D34856C(v4, v121, &qword_2804FBA98, &qword_26D3A5368);
      swift_storeEnumTagMultiPayload();
      v57 = sub_26D37F2D4();
      v145 = v50;
      v146 = v57;
      v58 = swift_getOpaqueTypeConformance2();
      v145 = v134;
      v146 = v58;
      v59 = swift_getOpaqueTypeConformance2();
      v145 = v135;
      v146 = v59;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98, &qword_26D3A5368, &unk_26D3A6540);
      v60 = v137;
      sub_26D3A0718();
      sub_26D3481A4(v4, &qword_2804FBA98, &qword_26D3A5368);
    }

    sub_26D34856C(v60, v142, &qword_2804FBAD0, &qword_26D3A53A0);
    swift_storeEnumTagMultiPayload();
    sub_26D37F3B0();
    sub_26D37F4F4();
    sub_26D3A0718();
    v88 = v60;
    v89 = &qword_2804FBAD0;
    v90 = &qword_26D3A53A0;
    return sub_26D3481A4(v88, v89, v90);
  }

  v29 = sub_26D33CD0C(*(v2 + 48), *(v2 + 56));
  v31 = *v2;
  if (*v2)
  {
    if (*(v31 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v31 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
    }

    sub_26D39C058(v32 & 1, *(v31 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics), v29, v30);
    v61 = v16[12];
    v62 = sub_26D3A0078();
    (*(*(v62 - 8) + 56))(&v18[v61], 1, 1, v62);
    *v18 = 0;
    v18[8] = 1;
    *(v18 + 9) = 257;
    v18[11] = 0;
    sub_26D35AE68(v2, &v18[v16[13]]);
    v63 = &v18[v16[14]];
    *v63 = swift_getKeyPath();
    v63[8] = 0;
    v64 = &v18[v16[15]];
    *v64 = swift_getKeyPath();
    v64[8] = 0;
    v65 = &v18[v16[16]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    v66 = &v18[v16[17]];
    LOBYTE(v147) = 0;
    sub_26D3A0D48();
    v67 = v146;
    *v66 = v145;
    *(v66 + 1) = v67;
    LOBYTE(v66) = sub_26D3A08B8();
    v68 = *(v2 + 32);
    v69 = *(v2 + 40);
    sub_26D33D0B8(v68, v69);
    sub_26D39FFD8();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_26D347238(v18, v21, &qword_2804FBAE0, &qword_26D3A53B0);
    v78 = &v21[*(v19 + 36)];
    *v78 = v66;
    *(v78 + 1) = v71;
    *(v78 + 2) = v73;
    *(v78 + 3) = v75;
    *(v78 + 4) = v77;
    v78[40] = 0;
    LOBYTE(v66) = sub_26D3A08C8();
    sub_26D33D0B8(v68, v69);
    sub_26D39FFD8();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    sub_26D347238(v21, v24, &qword_2804FBAE8, &qword_26D3A53B8);
    v87 = &v24[*(v140 + 36)];
    *v87 = v66;
    *(v87 + 1) = v80;
    *(v87 + 2) = v82;
    *(v87 + 3) = v84;
    *(v87 + 4) = v86;
    v87[40] = 0;
    sub_26D347238(v24, v26, &qword_2804FBAF0, &qword_26D3A53C0);
    sub_26D34856C(v26, v142, &qword_2804FBAF0, &qword_26D3A53C0);
    swift_storeEnumTagMultiPayload();
    sub_26D37F3B0();
    sub_26D37F4F4();
    sub_26D3A0718();
    v88 = v26;
    v89 = &qword_2804FBAF0;
    v90 = &qword_26D3A53C0;
    return sub_26D3481A4(v88, v89, v90);
  }

LABEL_17:
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D35AE68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB60, &qword_26D3A53E8);
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB68, &qword_26D3A53F0);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB78, &qword_26D3A5400);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
  sub_26D37F664(&qword_2804FBB88, &qword_2804FBB78, &qword_26D3A5400);
  sub_26D3A0958();
  v27 = 0;
  sub_26D3A0D48();
  v9 = v24;
  v10 = v25;
  LOBYTE(v24) = 0;
  LOBYTE(v25) = v9;
  v26 = v10;
  sub_26D3484AC(&qword_2804FBBA0, &qword_2804FBB60, &qword_26D3A53E8, MEMORY[0x277CDE5B0]);
  sub_26D37E178();
  v11 = v19;
  sub_26D3A0C08();

  (*(v3 + 8))(v5, v11);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v12 = *(v24 + 16);

    if (v12)
    {
      v13 = sub_26D33D0B8(a1[8], *(a1 + 72)) ^ 1;
    }

    else
    {
      v13 = 1;
    }

    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = v13 & 1;
    v16 = v22;
    (*(v20 + 32))(v22, v8, v21);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBA8, &qword_26D3A5458);
    v18 = (v16 + *(result + 36));
    *v18 = KeyPath;
    v18[1] = sub_26D3834C0;
    v18[2] = v15;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B284(uint64_t a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v7[13] = v7[0];
    swift_getKeyPath();
    v2 = swift_allocObject();
    v3 = *(a1 + 80);
    *(v2 + 80) = *(a1 + 64);
    *(v2 + 96) = v3;
    *(v2 + 112) = *(a1 + 96);
    v4 = *(a1 + 16);
    *(v2 + 16) = *a1;
    *(v2 + 32) = v4;
    v5 = *(a1 + 48);
    *(v2 + 48) = *(a1 + 32);
    *(v2 + 64) = v5;
    sub_26D3482B4(a1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB630, &qword_26D3A3660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98, &qword_26D3A5408);
    sub_26D3484AC(&qword_2804FBBB0, &qword_2804FB630, &qword_26D3A3660, MEMORY[0x277D83980]);
    sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98, &qword_26D3A5408, MEMORY[0x277CDF068]);
    return sub_26D3A0E58();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A12C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D35B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  v23 = sub_26D3A12D8();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22[1] = v6;
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v5 + 16);
  v24(v7, a1);
  sub_26D3A10C8();
  sub_26D3482B4(a2, &v28);
  v8 = sub_26D3A10B8();
  v9 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  v12 = *(a2 + 80);
  *(v10 + 96) = *(a2 + 64);
  *(v10 + 112) = v12;
  *(v10 + 128) = *(a2 + 96);
  v13 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v13;
  v14 = *(a2 + 48);
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = v14;
  v22[0] = *(v5 + 32);
  v15 = v23;
  (v22[0])(v10 + v9, v7, v23);
  (v24)(v7, v26, v15);
  sub_26D3482B4(a2, &v28);
  v16 = sub_26D3A10B8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = MEMORY[0x277D85700];
  v18 = *(a2 + 80);
  *(v17 + 96) = *(a2 + 64);
  *(v17 + 112) = v18;
  *(v17 + 128) = *(a2 + 96);
  v19 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v19;
  v20 = *(a2 + 48);
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 80) = v20;
  (v22[0])(v17 + v9, v7, v15);
  sub_26D3A0E28();
  v27 = v26;
  return sub_26D3A0DC8();
}

uint64_t sub_26D35B78C@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v7 = sub_26D3A1298();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      result = sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
      v9 = 0;
    }

    else
    {
      v10 = sub_26D3A1238();
      v12 = v11;
      result = sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
      if (v12)
      {
        if (v10 == sub_26D3A12C8() && v12 == v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = sub_26D3A1518();
        }

        v9 = v15 & 1;
      }

      else
      {
        v9 = 0;
      }
    }

    *a2 = v9;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B9AC(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26D39FDE8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    if (*a4)
    {
      v12 = *(*a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

      *v11 = sub_26D3A12C8();
      v11[1] = v13;
      (*(v8 + 104))(v11, *MEMORY[0x277D74EE8], v7);
      sub_26D3A12A8();
      v14 = sub_26D3A0F38();
      v12(v11, v14);

      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26D35BBB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D39FE08();
  MEMORY[0x28223BE20](v2 - 8);
  sub_26D3A12B8();
  result = sub_26D3A09B8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_26D35BC58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB00, &qword_26D3A53D0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v14 - v3);
  v5 = sub_26D3A0548();
  v6 = sub_26D33D0B8(*(a1 + 32), *(a1 + 40));
  v7 = 0.0;
  if (v6)
  {
    goto LABEL_21;
  }

  v8 = sub_26D33CD0C(*(a1 + 48), *(a1 + 56));
  if (v8 > 1)
  {
    if (v8 == 2 || v8 != 3)
    {
      v7 = 10.0;
      goto LABEL_21;
    }

    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v10 = byte_2804FFF98 == 0;
    v7 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v7 = 8.0;
  if (!v8)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v7 = 16.0;
    if ((byte_2804FFF98 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      v7 = 14.0;
      if (byte_2804FFF99 == 1)
      {
        v10 = _UISolariumEnabled() == 0;
        v7 = 8.0;
        v11 = 10.0;
LABEL_19:
        if (!v10)
        {
          v7 = v11;
        }
      }
    }
  }

LABEL_21:
  *v4 = v5;
  v4[1] = v7;
  *(v4 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBB8, &qword_26D3A5498);
  sub_26D35BEA4(a1, v4 + *(v12 + 44));
  sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00, &qword_26D3A53D0, MEMORY[0x277CE1138]);
  sub_26D3A0B28();
  return sub_26D3481A4(v4, &qword_2804FBB00, &qword_26D3A53D0);
}

uint64_t sub_26D35BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_26D3A12D8();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v10 = sub_26D3A1298();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      sub_26D3481A4(v9, &qword_2804FB398, &qword_26D3A33C0);
      v11 = -1;
LABEL_18:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26D39FF68();

      v33[13] = v33[0];
      swift_getKeyPath();
      v21 = swift_allocObject();
      v22 = *(a1 + 80);
      *(v21 + 80) = *(a1 + 64);
      *(v21 + 96) = v22;
      v23 = *(a1 + 96);
      v24 = *(a1 + 16);
      *(v21 + 16) = *a1;
      *(v21 + 32) = v24;
      v25 = *(a1 + 48);
      *(v21 + 48) = *(a1 + 32);
      *(v21 + 64) = v25;
      *(v21 + 112) = v23;
      *(v21 + 120) = v11;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_26D37F9D4;
      *(v26 + 24) = v21;
      sub_26D3482B4(a1, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC0, &qword_26D3A54D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC8, &qword_26D3A54E0);
      sub_26D37FA80();
      sub_26D37FB30();
      return sub_26D3A0E58();
    }

    v29 = a1;
    v12 = sub_26D3A1238();
    v14 = v13;
    sub_26D3481A4(v9, &qword_2804FB398, &qword_26D3A33C0);
    if (v14)
    {
      v28 = a2;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_26D39FF68();

      v15 = v33[0];
      v30 = *(v33[0] + 16);
      if (v30)
      {
        v11 = 0;
        v31 = v4 + 16;
        v16 = (v4 + 8);
        while (v11 < *(v15 + 16))
        {
          (*(v4 + 16))(v6, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v32);
          if (sub_26D3A12C8() == v12 && v14 == v17)
          {

            (*v16)(v6, v32);

LABEL_16:
            swift_bridgeObjectRelease_n();
            goto LABEL_17;
          }

          v18 = v12;
          v19 = v14;
          v20 = sub_26D3A1518();

          (*v16)(v6, v32);
          if (v20)
          {

            goto LABEL_16;
          }

          ++v11;
          v14 = v19;
          v12 = v18;
          if (v30 == v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_12:

      swift_bridgeObjectRelease_n();
      v11 = -1;
    }

    else
    {

      v11 = -1;
    }

LABEL_17:
    a1 = v29;
    goto LABEL_18;
  }

LABEL_20:
  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D35C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v47 = a1;
  v46 = a5;
  v7 = sub_26D39FE08();
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D3A12D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBF0, &qword_26D3A54F0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v38 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC10, &qword_26D3A5500);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v15 = &v38 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBE8, &qword_26D3A54E8);
  MEMORY[0x28223BE20](v41);
  v17 = &v38 - v16;
  (*(v10 + 16))(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v18 = (*(v10 + 80) + 120) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = *(a3 + 80);
  *(v19 + 80) = *(a3 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a3 + 96);
  v21 = *(a3 + 16);
  *(v19 + 16) = *a3;
  *(v19 + 32) = v21;
  v22 = *(a3 + 48);
  *(v19 + 48) = *(a3 + 32);
  *(v19 + 64) = v22;
  (*(v10 + 32))(v19 + v18, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v45 = a2;
  v48 = a2;
  v49 = a3;
  sub_26D3482B4(a3, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC18, &qword_26D3A5508);
  sub_26D37FEC4();
  sub_26D3A0D88();
  LOBYTE(v11) = sub_26D33D0B8(*(a3 + 32), *(a3 + 40));
  *&v50 = -1;
  sub_26D3A0D48();
  v23 = v54[0];
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v58 = 0;
  v56 = 0;
  *&v50 = v47;
  v26 = v40;
  *(&v50 + 1) = v40;
  v51[0] = (v11 & 1) == 0;
  *&v51[1] = *v59;
  *&v51[4] = *&v59[3];
  *&v51[8] = v23;
  *&v51[24] = KeyPath;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v57;
  DWORD1(v52) = *&v57[3];
  *(&v52 + 1) = v25;
  v53 = 0;
  sub_26D3484AC(&qword_2804FBBF8, &qword_2804FBBF0, &qword_26D3A54F0, MEMORY[0x277CDF028]);
  sub_26D37FCFC();
  v27 = v38;
  sub_26D3A0A08();
  v54[2] = *&v51[16];
  v54[3] = v52;
  v55 = v53;
  v54[0] = v50;
  v54[1] = *v51;
  sub_26D37FFD4(v54);
  (*(v39 + 8))(v13, v27);
  v28 = sub_26D33CD0C(*(a3 + 48), *(a3 + 56));
  v29 = *a3;
  if (*a3)
  {
    v30 = v28;

    v31 = sub_26D3A0F68();
    sub_26D39CBFC(v31, v29, v30);

    sub_26D3A0EA8();
    sub_26D3A00C8();
    (*(v42 + 32))(v17, v15, v43);
    v32 = &v17[*(v41 + 36)];
    v33 = *v51;
    *v32 = v50;
    *(v32 + 1) = v33;
    *(v32 + 2) = *&v51[16];
    v34 = v47 == v26;
    sub_26D3A12B8();
    v35 = sub_26D3A0FB8();
    sub_26D35D178(v34, 0, v35, v36, v46);

    return sub_26D3481A4(v17, &qword_2804FBBE8, &qword_26D3A54E8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35CAD4(void *a1, uint64_t a2)
{
  v4 = sub_26D39FDE8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26D3A12F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v9 = *(*a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

    *v8 = sub_26D3A12C8();
    v8[1] = v10;
    (*(v6 + 104))(v8, *MEMORY[0x277D74EE8], v5);
    sub_26D3A12A8();
    v11 = sub_26D3A0F38();
    v9(v8, v11);

    (*(v6 + 8))(v8, v5);
    MEMORY[0x26D6BD6F0](0.5, 1.0, 0.0);
    sub_26D3A0EC8();

    MEMORY[0x28223BE20](v12);
    *&v14[-16] = a1;
    *&v14[-8] = a2;
    sub_26D3A0198();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35CD68(uint64_t a1)
{
  sub_26D3A12C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10, &qword_26D3A53D8);
  return sub_26D3A0D68();
}

uint64_t sub_26D35CDE0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB710, &qword_26D3A5510);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = sub_26D39FDE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D39FE08();
  MEMORY[0x28223BE20](v11 - 8);
  sub_26D3A12B8();
  v12 = sub_26D3A0FB8();
  v24 = v13;
  v25 = v12;
  KeyPath = swift_getKeyPath();
  sub_26D3A12A8();
  swift_getKeyPath();
  sub_26D39FDB8();
  sub_26D37E044(&qword_2804FB718, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
  sub_26D39FDD8();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  sub_26D3584BC();
  sub_26D39FE18();

  (*(v4 + 8))(v6, v3);
  if (*v26)
  {
    v15 = v27;
    v16 = *v26 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_largestFontSizeInFormattingStyles;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = sub_26D3A0928();
    v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC18, &qword_26D3A5508) + 36);
    *v20 = v15;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0x4044000000000000;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18;
    v21 = *(type metadata accessor for TFFontModifier(0) + 32);
    *(v20 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC30, &qword_26D3A55A8);
    result = swift_storeEnumTagMultiPayload();
    v23 = v24;
    *a2 = v25;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = KeyPath;
    *(a2 + 32) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35D178@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v41 = a5;
  v8 = sub_26D3A0608();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC8, &qword_26D3A54E0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v38 - v26;
  MEMORY[0x28223BE20](v25);
  v44 = &v38 - v28;
  v45 = a3;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBE8, &qword_26D3A54E8);
  sub_26D37FBEC();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v29 = v17;
  v30 = *(v42 + 8);
  v30(v29, v8);
  sub_26D3481A4(v21, &qword_2804FBBC8, &qword_26D3A54E0);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v30(v15, v8);
  sub_26D3481A4(v24, &qword_2804FBBC8, &qword_26D3A54E0);
  v31 = MEMORY[0x277D84F90];
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v32;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v33 = v39;
  sub_26D3A1388();
  sub_26D3A0228();
  v30(v33, v8);
  sub_26D3481A4(v27, &qword_2804FBBC8, &qword_26D3A54E0);
  if (v43)
  {
    v45 = v31;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v34;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v35 = v40;
  sub_26D3A1388();
  v36 = v44;
  sub_26D3A0238();
  v30(v35, v8);
  return sub_26D3481A4(v36, &qword_2804FBBC8, &qword_26D3A54E0);
}

uint64_t sub_26D35D710@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v41 = a5;
  v8 = sub_26D3A0608();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80, &qword_26D3A5658);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v38 - v26;
  MEMORY[0x28223BE20](v25);
  v44 = &v38 - v28;
  v45 = a3;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  sub_26D37EAD4();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v29 = v17;
  v30 = *(v42 + 8);
  v30(v29, v8);
  sub_26D3481A4(v21, &qword_2804FBC80, &qword_26D3A5658);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v30(v15, v8);
  sub_26D3481A4(v24, &qword_2804FBC80, &qword_26D3A5658);
  v31 = MEMORY[0x277D84F90];
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v32;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v33 = v39;
  sub_26D3A1388();
  sub_26D3A0228();
  v30(v33, v8);
  sub_26D3481A4(v27, &qword_2804FBC80, &qword_26D3A5658);
  if (v43)
  {
    v45 = v31;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v34;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v35 = v40;
  sub_26D3A1388();
  v36 = v44;
  sub_26D3A0238();
  v30(v35, v8);
  return sub_26D3481A4(v36, &qword_2804FBC80, &qword_26D3A5658);
}

uint64_t sub_26D35DCA8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v39 = a5;
  v8 = sub_26D3A0608();
  v40 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v36 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v36 - v26;
  MEMORY[0x28223BE20](v25);
  v42 = &v36 - v28;
  v44 = a3;
  v45 = a4;
  type metadata accessor for TFToggle(0);
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v43 = *(v40 + 8);
  v43(v17, v8);
  sub_26D3481A4(v21, &qword_2804FB820, &qword_26D3A4F60);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v43(v15, v8);
  sub_26D3481A4(v24, &qword_2804FB820, &qword_26D3A4F60);
  v29 = MEMORY[0x277D84F90];
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v30;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v31 = v37;
  sub_26D3A1388();
  sub_26D3A0228();
  v43(v31, v8);
  sub_26D3481A4(v27, &qword_2804FB820, &qword_26D3A4F60);
  if (v41)
  {
    v44 = v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v32;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v33 = v38;
  sub_26D3A1388();
  v34 = v42;
  sub_26D3A0238();
  v43(v33, v8);
  return sub_26D3481A4(v34, &qword_2804FB820, &qword_26D3A4F60);
}

uint64_t sub_26D35E264@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v39 = a5;
  v8 = sub_26D3A0608();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v36 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC288, &qword_26D3A5D98);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v40 = &v36 - v26;
  MEMORY[0x28223BE20](v25);
  v37 = &v36 - v27;
  v44 = a3;
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC280, &qword_26D3A5D90);
  sub_26D3484AC(&qword_2804FC290, &qword_2804FC280, &qword_26D3A5D90, &unk_26D3A6540);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v43 = *(v41 + 8);
  v43(v17, v8);
  sub_26D3481A4(v21, &qword_2804FC288, &qword_26D3A5D98);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v43(v15, v8);
  sub_26D3481A4(v24, &qword_2804FC288, &qword_26D3A5D98);
  v28 = MEMORY[0x277D84F90];
  if (v42)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v29;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v30 = v36;
  sub_26D3A1388();
  v31 = v37;
  v32 = v40;
  sub_26D3A0228();
  v43(v30, v8);
  sub_26D3481A4(v32, &qword_2804FC288, &qword_26D3A5D98);
  if (v42)
  {
    v44 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v33;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v34 = v38;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v34, v8);
  return sub_26D3481A4(v31, &qword_2804FC288, &qword_26D3A5D98);
}

uint64_t sub_26D35E830@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a1;
  v41 = a5;
  v8 = sub_26D3A0608();
  v42 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB988, &qword_26D3A5190);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v38 - v26;
  MEMORY[0x28223BE20](v25);
  v44 = &v38 - v28;
  v45 = a3;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9B0, &qword_26D3A51A0);
  sub_26D37EA48();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v29 = v17;
  v30 = *(v42 + 8);
  v30(v29, v8);
  sub_26D3481A4(v21, &qword_2804FB988, &qword_26D3A5190);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v30(v15, v8);
  sub_26D3481A4(v24, &qword_2804FB988, &qword_26D3A5190);
  v31 = MEMORY[0x277D84F90];
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v32;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v33 = v39;
  sub_26D3A1388();
  sub_26D3A0228();
  v30(v33, v8);
  sub_26D3481A4(v27, &qword_2804FB988, &qword_26D3A5190);
  if (v43)
  {
    v45 = v31;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v45 = v34;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v35 = v40;
  sub_26D3A1388();
  v36 = v44;
  sub_26D3A0238();
  v30(v35, v8);
  return sub_26D3481A4(v36, &qword_2804FB988, &qword_26D3A5190);
}

uint64_t sub_26D35EDC8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v39 = a5;
  v8 = sub_26D3A0608();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v36 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB818, &unk_26D3A4F50);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v40 = &v36 - v26;
  MEMORY[0x28223BE20](v25);
  v37 = &v36 - v27;
  v44 = a3;
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB810, &qword_26D3A4F48);
  sub_26D3484AC(&qword_2804FB858, &qword_2804FB810, &qword_26D3A4F48, &unk_26D3A64F0);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v43 = *(v41 + 8);
  v43(v17, v8);
  sub_26D3481A4(v21, &qword_2804FB818, &unk_26D3A4F50);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v43(v15, v8);
  sub_26D3481A4(v24, &qword_2804FB818, &unk_26D3A4F50);
  v28 = MEMORY[0x277D84F90];
  if (v42)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v29;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v30 = v36;
  sub_26D3A1388();
  v31 = v37;
  v32 = v40;
  sub_26D3A0228();
  v43(v30, v8);
  sub_26D3481A4(v32, &qword_2804FB818, &unk_26D3A4F50);
  if (v42)
  {
    v44 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v44 = v33;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  v34 = v38;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v34, v8);
  return sub_26D3481A4(v31, &qword_2804FB818, &unk_26D3A4F50);
}

uint64_t sub_26D35F394(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v5 = sub_26D3A1298();
    v6 = 0;
    v7 = 0;
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {
      v6 = sub_26D3A1238();
      v7 = v8;
    }

    sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
    v11 = *(a1 + 5);
    v12 = a1[12];
    v10[0] = v6;
    v10[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10, &qword_26D3A53D8);
    return sub_26D3A0D68();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0, &unk_26D3A6590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC340, &qword_26D3A5EE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC348, &qword_26D3A5EE8);
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC350, &qword_26D3A5EF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_26D33D0B8(*(v3 + 40), *(v3 + 48));
  if (*(v3 + 16))
  {
    v18 = sub_26D3A0078();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  else
  {
    if (*v3 == *(v3 + 8))
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v19 = sub_26D3A0078();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  }

  *v10 = 0;
  *(v10 + 4) = 257;
  v10[10] = (v17 & 1) == 0;
  v10[11] = 0;
  sub_26D347238(v7, &v10[v8[12]], &qword_2804FC6F0, &unk_26D3A6590);
  sub_26D35FA20(a1, v3, &v10[v8[13]]);
  v20 = &v10[v8[14]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v10[v8[15]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v10[v8[16]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v10[v8[17]];
  LOBYTE(v37) = 0;
  sub_26D3A0D48();
  v24 = v36;
  *v23 = v35[0];
  *(v23 + 1) = v24;
  v37 = *(v3 + 8);
  v25 = swift_allocObject();
  v26 = *(v3 + 48);
  *(v25 + 48) = *(v3 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(v3 + 64);
  v27 = *(v3 + 16);
  *(v25 + 16) = *v3;
  *(v25 + 32) = v27;
  sub_26D3831E0(v3, v35);
  sub_26D3484AC(&qword_2804FC358, &qword_2804FC340, &qword_26D3A5EE0, &unk_26D3A6540);
  sub_26D3A0BD8();

  sub_26D3481A4(v10, &qword_2804FC340, &qword_26D3A5EE0);
  v28 = swift_allocObject();
  v29 = *(v3 + 48);
  *(v28 + 48) = *(v3 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(v3 + 64);
  v30 = *(v3 + 16);
  *(v28 + 16) = *v3;
  *(v28 + 32) = v30;
  (*(v11 + 32))(v16, v13, v33);
  v31 = &v16[*(v14 + 36)];
  *v31 = sub_26D383268;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  sub_26D347238(v16, v34, &qword_2804FC350, &qword_26D3A5EF0);
  return sub_26D3831E0(v3, v35);
}

uint64_t sub_26D35FA20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v88 = sub_26D3A0258();
  MEMORY[0x28223BE20](v88);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_26D3A0808();
  v6 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC368, &qword_26D3A5F00);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC370, &qword_26D3A5F08);
  MEMORY[0x28223BE20](v75);
  v74 = &v74 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC378, &qword_26D3A5F10);
  MEMORY[0x28223BE20](v76);
  v79 = &v74 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC380, &qword_26D3A5F18);
  MEMORY[0x28223BE20](v78);
  v82 = &v74 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC388, &qword_26D3A5F20);
  MEMORY[0x28223BE20](v81);
  v80 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC390, &qword_26D3A5F28);
  MEMORY[0x28223BE20](v16 - 8);
  v84 = &v74 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC398, &qword_26D3A5F30);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - v18;
  v86 = a1;
  sub_26D3A0818();
  v19 = *a2;
  v90 = a2[1];
  v20 = v19;
  if (v19 == v90)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF98 == 1)
    {
      v21 = sub_26D3A0C38();
    }

    else
    {
      v21 = sub_26D3A0C58();
    }
  }

  else
  {
    v21 = sub_26D3A0C78();
  }

  v22 = v21;
  KeyPath = swift_getKeyPath();
  (*(v6 + 32))(v11, v8, v77);
  v24 = &v11[*(v9 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_26D3A0878();
  v26 = a2[7];
  LODWORD(v77) = *(a2 + 64);
  v27 = sub_26D33CD0C(v26, v77);
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  v29 = v79;
  v30 = v90;
  if (byte_2804FFF98)
  {
    goto LABEL_11;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if ((byte_2804FFF99 & 1) == 0)
  {
    v31 = _UISolariumEnabled();
    v28 = 12.0;
    if (v31)
    {
LABEL_11:
      sub_26D39CDDC(0, v27, v28);
    }
  }

  sub_26D39FFD8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v11;
  v41 = v74;
  sub_26D347238(v40, v74, &qword_2804FC368, &qword_26D3A5F00);
  v42 = v41 + *(v75 + 36);
  *v42 = v25;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D347238(v41, v29, &qword_2804FC370, &qword_26D3A5F08);
  v43 = (v29 + *(v76 + 36));
  v44 = v98;
  v43[4] = v97;
  v43[5] = v44;
  v43[6] = v99;
  v45 = v94;
  *v43 = v93;
  v43[1] = v45;
  v46 = v96;
  v43[2] = v95;
  v43[3] = v46;
  v47 = (v20 != v30) & (*(a2 + 16) ^ 1);
  v48 = sub_26D33D0B8(a2[5], *(a2 + 48));
  v92 = *(a2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC360, &qword_26D3A5EF8);
  sub_26D3A0D58();
  if (v91 == -1)
  {
    sub_26D3A0108();
    sub_26D3A0118();
    sub_26D3A0128();

    v30 = v90;
  }

  else
  {
    v92 = *(a2 + 3);
    sub_26D3A0D58();
    sub_26D3A00F8();
  }

  sub_26D3A0108();
  sub_26D3A0118();
  sub_26D3A0128();

  v49 = sub_26D3A00E8();

  v50 = v82;
  v51 = sub_26D347238(v29, v82, &qword_2804FC378, &qword_26D3A5F10);
  v52 = v50 + *(v78 + 36);
  *v52 = v47;
  *(v52 + 1) = v20 == v30;
  *(v52 + 2) = 0;
  *(v52 + 3) = v48 & 1;
  *(v52 + 8) = v49;
  v53 = MEMORY[0x26D6BD6F0](v51, 0.15, 0.85, 0.25);
  v54 = v50;
  v55 = v80;
  sub_26D347238(v54, v80, &qword_2804FC380, &qword_26D3A5F18);
  v56 = v55 + *(v81 + 36);
  *v56 = v53;
  *(v56 + 8) = v20 == v30;
  v57 = v84;
  sub_26D347238(v55, v84, &qword_2804FC388, &qword_26D3A5F20);
  v58 = sub_26D3A0828();
  v59 = 1.0;
  v60 = v77;
  if (v58)
  {
    if ((sub_26D33CD0C(v26, v77) - 2) >= 3u)
    {
      v59 = 0.7;
    }

    else
    {
      v59 = 0.5;
    }
  }

  v61 = v85;
  sub_26D347238(v57, v85, &qword_2804FC390, &qword_26D3A5F28);
  *(v61 + *(v83 + 36)) = v59;
  v62 = sub_26D33CD0C(v26, v60);
  sub_26D39CDDC(0, v62, v63);
  v65 = v64;
  v66 = *(v88 + 20);
  v67 = *MEMORY[0x277CE0118];
  v68 = sub_26D3A05C8();
  v69 = v87;
  (*(*(v68 - 8) + 104))(&v87[v66], v67, v68);
  *v69 = v65;
  v69[1] = v65;
  sub_26D37E044(&qword_2804FC3A0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v70 = sub_26D3A0E78();
  v71 = v89;
  sub_26D347238(v61, v89, &qword_2804FC398, &qword_26D3A5F30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3A8, &unk_26D3A5F68);
  v73 = v71 + *(result + 36);
  *v73 = v70;
  *(v73 + 8) = 0;
  return result;
}

uint64_t sub_26D3604D4()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC38, &qword_26D3A55B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC40, &qword_26D3A55B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC48, &qword_26D3A55C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-v10];
  if (*v2)
  {
    if (*(*v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI))
    {
      sub_26D33CD0C(*(v2 + 32), *(v2 + 40));
      *v11 = sub_26D3A0548();
      *(v11 + 1) = 0x4008000000000000;
      v11[16] = 0;
      v12 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC60, &qword_26D3A55C8) + 44)];
      sub_26D36097C(v2, v12);
      KeyPath = swift_getKeyPath();
      v14 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC68, &qword_26D3A55D0) + 36);
      *v14 = KeyPath;
      *(v14 + 8) = 1;
      sub_26D34856C(v11, v8, &qword_2804FBC48, &qword_26D3A55C0);
      swift_storeEnumTagMultiPayload();
      sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48, &qword_26D3A55C0, MEMORY[0x277CE1138]);
      sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38, &qword_26D3A55B0, &unk_26D3A6540);
      sub_26D3A0718();
      return sub_26D3481A4(v11, &qword_2804FBC48, &qword_26D3A55C0);
    }

    else
    {
      v16 = v3[12];
      v17 = sub_26D3A0078();
      (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 9) = 257;
      v5[11] = 0;
      sub_26D36327C(v2, &v5[v3[13]]);
      v18 = &v5[v3[14]];
      *v18 = swift_getKeyPath();
      v18[8] = 0;
      v19 = &v5[v3[15]];
      *v19 = swift_getKeyPath();
      v19[8] = 0;
      v20 = &v5[v3[16]];
      *v20 = swift_getKeyPath();
      v20[8] = 0;
      v21 = &v5[v3[17]];
      v23[15] = 0;
      sub_26D3A0D48();
      v22 = v24;
      *v21 = v23[16];
      *(v21 + 1) = v22;
      sub_26D34856C(v5, v8, &qword_2804FBC38, &qword_26D3A55B0);
      swift_storeEnumTagMultiPayload();
      sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48, &qword_26D3A55C0, MEMORY[0x277CE1138]);
      sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38, &qword_26D3A55B0, &unk_26D3A6540);
      sub_26D3A0718();
      return sub_26D3481A4(v5, &qword_2804FBC38, &qword_26D3A55B0);
    }
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36097C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v98 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0, &unk_26D3A6590);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v103 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v98 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v98 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC70, &qword_26D3A55D8);
  v17 = MEMORY[0x28223BE20](v16);
  v107 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v105 = &v98 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v111 = &v98 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v104 = &v98 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v98 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v110 = &v98 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v98 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v109 = &v98 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v98 - v41;
  MEMORY[0x28223BE20](v40);
  v114 = &v98 - v43;
  v44 = sub_26D33CD0C(a1[4], *(a1 + 40));
  v115 = a1;
  v45 = *a1;
  if (*a1)
  {
    v46 = v44;
    v47 = *MEMORY[0x277D770E0];
    swift_retain_n();
    sub_26D39CBFC(v47, v45, v46);
    v49 = v48;
    v50 = sub_26D34CD84();
    v51 = [v50 fontDescriptor];
    v52 = [v51 symbolicTraits];

    if ((v52 & 2) != 0)
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v53 = sub_26D3A0078();
    v54 = *(v53 - 8);
    v55 = *(v54 + 56);
    v112 = v54 + 56;
    v113 = v55;
    v55(v15, 0, 1, v53);
    *v42 = v49;
    v42[8] = 0;
    *(v42 + 9) = 257;
    v42[11] = 0;
    sub_26D347238(v15, &v42[v16[12]], &qword_2804FC6F0, &unk_26D3A6590);
    sub_26D361630(0, &v42[v16[13]]);
    v56 = &v42[v16[14]];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    v57 = &v42[v16[15]];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    v58 = &v42[v16[16]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = &v42[v16[17]];
    v116 = 0;
    sub_26D3A0D48();
    v60 = v118;
    *v59 = v117;
    *(v59 + 1) = v60;
    sub_26D347238(v42, v114, &qword_2804FBC70, &qword_26D3A55D8);
    v61 = sub_26D34CD84();
    v62 = [v61 fontDescriptor];
    v63 = [v62 symbolicTraits];

    v64 = v99;
    if (v63)
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v113(v64, 0, 1, v53);
    *v37 = v49;
    v37[8] = 0;
    *(v37 + 9) = 257;
    v37[11] = 0;
    sub_26D347238(v64, &v37[v16[12]], &qword_2804FC6F0, &unk_26D3A6590);
    sub_26D361C7C(0, &v37[v16[13]]);
    v65 = &v37[v16[14]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    v66 = &v37[v16[15]];
    *v66 = swift_getKeyPath();
    v66[8] = 0;
    v67 = &v37[v16[16]];
    *v67 = swift_getKeyPath();
    v67[8] = 0;
    v68 = &v37[v16[17]];
    v116 = 0;
    sub_26D3A0D48();
    v69 = v118;
    *v68 = v117;
    *(v68 + 1) = v69;
    sub_26D347238(v37, v109, &qword_2804FBC70, &qword_26D3A55D8);
    swift_getKeyPath();
    swift_getKeyPath();
    v70 = v100;
    sub_26D39FF68();

    v71 = sub_26D3A1298();
    v72 = *(*(v71 - 8) + 48);
    if (v72(v70, 1, v71))
    {

      sub_26D3481A4(v70, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      v73 = sub_26D3A1218();

      sub_26D3481A4(v70, &qword_2804FB398, &qword_26D3A33C0);
      if (v73)
      {
        v74 = v101;
        sub_26D3A0048();
        goto LABEL_13;
      }
    }

    v74 = v101;
    sub_26D3A0068();
LABEL_13:
    v113(v74, 0, 1, v53);
    *v32 = v49;
    v32[8] = 0;
    *(v32 + 9) = 257;
    v32[11] = 0;
    sub_26D347238(v74, &v32[v16[12]], &qword_2804FC6F0, &unk_26D3A6590);
    sub_26D362274(0, &v32[v16[13]]);
    v75 = &v32[v16[14]];
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    v76 = &v32[v16[15]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v32[v16[16]];
    *v77 = swift_getKeyPath();
    v77[8] = 0;
    v78 = &v32[v16[17]];
    v116 = 0;
    sub_26D3A0D48();
    v79 = v118;
    *v78 = v117;
    *(v78 + 1) = v79;
    sub_26D347238(v32, v110, &qword_2804FBC70, &qword_26D3A55D8);
    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v102;
    sub_26D39FF68();

    if (v72(v80, 1, v71))
    {

      sub_26D3481A4(v80, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      v81 = sub_26D3A1258();

      sub_26D3481A4(v80, &qword_2804FB398, &qword_26D3A33C0);
      if (v81)
      {
        v82 = v103;
        sub_26D3A0048();
LABEL_18:
        v113(v82, 0, 1, v53);
        *v27 = v49;
        v27[8] = 0;
        *(v27 + 9) = 257;
        v27[11] = 0;
        sub_26D347238(v82, &v27[v16[12]], &qword_2804FC6F0, &unk_26D3A6590);
        sub_26D362AD8(0, &v27[v16[13]]);
        v83 = &v27[v16[14]];
        *v83 = swift_getKeyPath();
        v83[8] = 0;
        v84 = &v27[v16[15]];
        *v84 = swift_getKeyPath();
        v84[8] = 0;
        v85 = &v27[v16[16]];
        *v85 = swift_getKeyPath();
        v85[8] = 0;
        v86 = &v27[v16[17]];
        v116 = 0;
        sub_26D3A0D48();
        v87 = v118;
        *v86 = v117;
        *(v86 + 1) = v87;
        v88 = v104;
        sub_26D347238(v27, v104, &qword_2804FBC70, &qword_26D3A55D8);
        v89 = v111;
        sub_26D34856C(v114, v111, &qword_2804FBC70, &qword_26D3A55D8);
        v90 = v109;
        v91 = v105;
        sub_26D34856C(v109, v105, &qword_2804FBC70, &qword_26D3A55D8);
        v92 = v110;
        v93 = v106;
        sub_26D34856C(v110, v106, &qword_2804FBC70, &qword_26D3A55D8);
        v94 = v107;
        sub_26D34856C(v88, v107, &qword_2804FBC70, &qword_26D3A55D8);
        v95 = v108;
        sub_26D34856C(v89, v108, &qword_2804FBC70, &qword_26D3A55D8);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC78, &qword_26D3A55E0);
        sub_26D34856C(v91, v95 + v96[12], &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D34856C(v93, v95 + v96[16], &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D34856C(v94, v95 + v96[20], &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v88, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v92, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v90, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v114, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v94, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v93, &qword_2804FBC70, &qword_26D3A55D8);
        sub_26D3481A4(v91, &qword_2804FBC70, &qword_26D3A55D8);
        return sub_26D3481A4(v111, &qword_2804FBC70, &qword_26D3A55D8);
      }
    }

    v82 = v103;
    sub_26D3A0068();
    goto LABEL_18;
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

void sub_26D3615C4(BOOL *a1@<X8>)
{
  v2 = sub_26D34CD84();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = (v4 & 2) != 0;
}

uint64_t sub_26D361630@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v62 = a2;
  v4 = sub_26D3A0648();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v56);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - v9;
  v55 = v6;
  sub_26D3A0628();
  v10 = v3[2];
  v11 = *(v3 + 24);
  v12 = *(v3 + 25);
  v13 = sub_26D33CED8(v10, v11 | (v12 << 8));
  v14 = 0;
  v53 = v8;
  v15 = 0;
  if ((v16 & 1) == 0 && v13 == 1)
  {
    if (qword_2804FAC40 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFDB0;
    v15 = *algn_2804FFDB8;
  }

  v52 = v15;
  v54 = v14;
  KeyPath = swift_getKeyPath();
  v18 = *v3;
  v50 = v3[1];
  v51 = v18;
  v65 = v3[4];
  v66 = *(v3 + 40);
  v19 = v3[6];
  v20 = *(v3 + 56);
  sub_26D3A10C8();

  sub_26D37DF24(v10, v11, v12);
  sub_26D34856C(&v65, v63, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v19, v20);
  v21 = v11;
  v22 = v10;
  v23 = sub_26D3A10B8();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = v20;
  v27 = *(v3 + 1);
  *(v24 + 32) = *v3;
  *(v24 + 48) = v27;
  *(v24 + 64) = *(v3 + 2);
  *(v24 + 73) = *(v3 + 41);
  *(v24 + 96) = KeyPath;

  v28 = v51;

  sub_26D37DF24(v22, v21, v12);
  sub_26D34856C(&v65, v63, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v19, v26);
  v29 = sub_26D3A10B8();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  v31 = *(v3 + 1);
  *(v30 + 32) = *v3;
  *(v30 + 48) = v31;
  *(v30 + 64) = *(v3 + 2);
  *(v30 + 73) = *(v3 + 41);
  *(v30 + 96) = KeyPath;
  sub_26D3A0E28();

  v32 = v63[0];
  v33 = v63[1];
  LOBYTE(v22) = v64;
  v34 = v53;
  *v53 = xmmword_26D3A3E20;
  v35 = v56;
  (*(v57 + 32))(&v34[*(v56 + 20)], v55, v58);
  v36 = &v34[v35[6]];
  v37 = v52;
  *v36 = v54;
  v36[1] = v37;
  v34[v35[7]] = v59 & 1;
  v38 = &v34[v35[8]];
  *v38 = v32;
  *(v38 + 1) = v33;
  v38[16] = v22;
  v39 = &v34[v35[9]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (v28)
  {

    if (sub_26D350238())
    {
      v40 = sub_26D33D0B8(v19, v26) ^ 1;
    }

    else
    {
      v40 = 1;
    }

    v41 = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = v40 & 1;
    v43 = v34;
    v44 = v61;
    sub_26D3814AC(v43, v61, type metadata accessor for TFToggle);
    v45 = (v44 + *(v60 + 36));
    *v45 = v41;
    v45[1] = sub_26D3834C0;
    v45[2] = v42;
    v46 = sub_26D34CD84();
    v47 = [v46 fontDescriptor];
    v48 = [v47 symbolicTraits];

    if (qword_2804FAC40 != -1)
    {
      swift_once();
    }

    sub_26D35D710((v48 >> 1) & 1, 0, qword_2804FFDB0, *algn_2804FFDB8, v62);
    return sub_26D3481A4(v44, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void sub_26D361C10(_BYTE *a1@<X8>)
{
  v2 = sub_26D34CD84();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = v4 & 1;
}

uint64_t sub_26D361C7C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v62 = a2;
  v4 = sub_26D3A0648();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v56);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - v9;
  v55 = v6;
  sub_26D3A0628();
  v10 = v3[2];
  v11 = *(v3 + 24);
  v12 = *(v3 + 25);
  v13 = sub_26D33CED8(v10, v11 | (v12 << 8));
  v14 = 0;
  v53 = v8;
  v15 = 0;
  if ((v16 & 1) == 0 && v13 == 1)
  {
    if (qword_2804FAC48 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFDC0;
    v15 = *algn_2804FFDC8;
  }

  v52 = v15;
  v54 = v14;
  KeyPath = swift_getKeyPath();
  v18 = *v3;
  v50 = v3[1];
  v51 = v18;
  v65 = v3[4];
  v66 = *(v3 + 40);
  v19 = v3[6];
  v20 = *(v3 + 56);
  sub_26D3A10C8();

  sub_26D37DF24(v10, v11, v12);
  sub_26D34856C(&v65, v63, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v19, v20);
  v21 = v11;
  v22 = v10;
  v23 = sub_26D3A10B8();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = v20;
  v27 = *(v3 + 1);
  *(v24 + 32) = *v3;
  *(v24 + 48) = v27;
  *(v24 + 64) = *(v3 + 2);
  *(v24 + 73) = *(v3 + 41);
  *(v24 + 96) = KeyPath;

  v28 = v51;

  sub_26D37DF24(v22, v21, v12);
  sub_26D34856C(&v65, v63, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v19, v26);
  v29 = sub_26D3A10B8();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  v31 = *(v3 + 1);
  *(v30 + 32) = *v3;
  *(v30 + 48) = v31;
  *(v30 + 64) = *(v3 + 2);
  *(v30 + 73) = *(v3 + 41);
  *(v30 + 96) = KeyPath;
  sub_26D3A0E28();

  v32 = v63[0];
  v33 = v63[1];
  LOBYTE(v22) = v64;
  v34 = v53;
  *v53 = xmmword_26D3A3E30;
  v35 = v56;
  (*(v57 + 32))(&v34[*(v56 + 20)], v55, v58);
  v36 = &v34[v35[6]];
  v37 = v52;
  *v36 = v54;
  v36[1] = v37;
  v34[v35[7]] = v59 & 1;
  v38 = &v34[v35[8]];
  *v38 = v32;
  *(v38 + 1) = v33;
  v38[16] = v22;
  v39 = &v34[v35[9]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (v28)
  {

    if (sub_26D350504())
    {
      v40 = sub_26D33D0B8(v19, v26) ^ 1;
    }

    else
    {
      v40 = 1;
    }

    v41 = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = v40 & 1;
    v43 = v34;
    v44 = v61;
    sub_26D3814AC(v43, v61, type metadata accessor for TFToggle);
    v45 = (v44 + *(v60 + 36));
    *v45 = v41;
    v45[1] = sub_26D3834C0;
    v45[2] = v42;
    v46 = sub_26D34CD84();
    v47 = [v46 fontDescriptor];
    v48 = [v47 symbolicTraits];

    if (qword_2804FAC48 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v48 & 1, 0, qword_2804FFDC0, *algn_2804FFDC8, v62);
    return sub_26D3481A4(v44, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D362274@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a1;
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v54 - v5;
  v7 = sub_26D3A0648();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v59);
  v65 = (v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v64);
  v66 = v54 - v11;
  v60 = v9;
  sub_26D3A0628();
  v12 = v3[2];
  v13 = *(v3 + 25);
  v57 = *(v3 + 24);
  v14 = v13;
  v15 = v12;
  v16 = sub_26D33CED8(v12, v57 | (v13 << 8));
  v17 = 0;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_2804FAC50 != -1)
    {
      swift_once();
    }

    v17 = qword_2804FFDD0;
    v18 = *algn_2804FFDD8;
  }

  v56 = v18;
  v58 = v17;
  v67 = v6;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v54[1] = v3[1];
  v71 = v3[4];
  v72 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  v55 = v23;
  sub_26D3A10C8();

  v24 = v57;
  sub_26D37DF24(v15, v57, v14);
  sub_26D34856C(&v71, v69, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v22, v23);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  v28 = v22;
  v29 = v27;
  v30 = *(v3 + 1);
  *(v26 + 32) = *v3;
  *(v26 + 48) = v30;
  *(v26 + 64) = *(v3 + 2);
  *(v26 + 73) = *(v3 + 41);
  *(v26 + 96) = KeyPath;

  v31 = v14;
  v32 = v55;
  sub_26D37DF24(v15, v24, v31);
  sub_26D34856C(&v71, v69, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v28, v32);
  v33 = sub_26D3A10B8();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v29;
  v35 = *(v3 + 1);
  *(v34 + 32) = *v3;
  *(v34 + 48) = v35;
  *(v34 + 64) = *(v3 + 2);
  *(v34 + 73) = *(v3 + 41);
  *(v34 + 96) = KeyPath;
  sub_26D3A0E28();

  v36 = v69[0];
  v37 = v69[1];
  LOBYTE(v24) = v70;
  v38 = v65;
  *v65 = xmmword_26D3A3E40;
  v39 = v59;
  (*(v61 + 32))(v38 + *(v59 + 20), v60, v62);
  v40 = (v38 + v39[6]);
  v41 = v56;
  *v40 = v58;
  v40[1] = v41;
  *(v38 + v39[7]) = v63 & 1;
  v42 = v38 + v39[8];
  *v42 = v36;
  *(v42 + 8) = v37;
  *(v42 + 16) = v24;
  v43 = v38 + v39[9];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v44 = sub_26D34862C();

    v45 = v66;
    if (v44)
    {
      v46 = 1;
    }

    else
    {
      v46 = sub_26D33D0B8(v28, v32) ^ 1;
    }

    v47 = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46 & 1;
    sub_26D3814AC(v38, v45, type metadata accessor for TFToggle);
    v49 = (v45 + *(v64 + 36));
    *v49 = v47;
    v49[1] = sub_26D3834C0;
    v49[2] = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v67;
    sub_26D39FF68();

    v51 = sub_26D3A1298();
    if ((*(*(v51 - 8) + 48))(v50, 1, v51))
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_26D3A1218();
    }

    sub_26D3481A4(v50, &qword_2804FB398, &qword_26D3A33C0);
    if (qword_2804FAC50 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v52 & 1, 0, qword_2804FFDD0, *algn_2804FFDD8, v68);
    return sub_26D3481A4(v45, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D362994@<X0>(uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v8 = sub_26D3A1298();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = a2();
  }

  result = sub_26D3481A4(v7, &qword_2804FB398, &qword_26D3A33C0);
  *a3 = v9 & 1;
  return result;
}

uint64_t sub_26D362AD8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a1;
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v54 - v5;
  v7 = sub_26D3A0648();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v59);
  v65 = (v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v64);
  v66 = v54 - v11;
  v60 = v9;
  sub_26D3A0628();
  v12 = v3[2];
  v13 = *(v3 + 25);
  v57 = *(v3 + 24);
  v14 = v13;
  v15 = v12;
  v16 = sub_26D33CED8(v12, v57 | (v13 << 8));
  v17 = 0;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_2804FAC58 != -1)
    {
      swift_once();
    }

    v17 = qword_2804FFDE0;
    v18 = *algn_2804FFDE8;
  }

  v56 = v18;
  v58 = v17;
  v67 = v6;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v54[1] = v3[1];
  v71 = v3[4];
  v72 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  v55 = v23;
  sub_26D3A10C8();

  v24 = v57;
  sub_26D37DF24(v15, v57, v14);
  sub_26D34856C(&v71, v69, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v22, v23);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  v28 = v22;
  v29 = v27;
  v30 = *(v3 + 1);
  *(v26 + 32) = *v3;
  *(v26 + 48) = v30;
  *(v26 + 64) = *(v3 + 2);
  *(v26 + 73) = *(v3 + 41);
  *(v26 + 96) = KeyPath;

  v31 = v14;
  v32 = v55;
  sub_26D37DF24(v15, v24, v31);
  sub_26D34856C(&v71, v69, &qword_2804FB848, &qword_26D3A4F88);
  sub_26D381CA8(v28, v32);
  v33 = sub_26D3A10B8();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v29;
  v35 = *(v3 + 1);
  *(v34 + 32) = *v3;
  *(v34 + 48) = v35;
  *(v34 + 64) = *(v3 + 2);
  *(v34 + 73) = *(v3 + 41);
  *(v34 + 96) = KeyPath;
  sub_26D3A0E28();

  v36 = v69[0];
  v37 = v69[1];
  LOBYTE(v24) = v70;
  v38 = v65;
  *v65 = xmmword_26D3A3E50;
  v39 = v59;
  (*(v61 + 32))(v38 + *(v59 + 20), v60, v62);
  v40 = (v38 + v39[6]);
  v41 = v56;
  *v40 = v58;
  v40[1] = v41;
  *(v38 + v39[7]) = v63 & 1;
  v42 = v38 + v39[8];
  *v42 = v36;
  *(v42 + 8) = v37;
  *(v42 + 16) = v24;
  v43 = v38 + v39[9];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v44 = sub_26D34862C();

    v45 = v66;
    if (v44)
    {
      v46 = 1;
    }

    else
    {
      v46 = sub_26D33D0B8(v28, v32) ^ 1;
    }

    v47 = swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = v46 & 1;
    sub_26D3814AC(v38, v45, type metadata accessor for TFToggle);
    v49 = (v45 + *(v64 + 36));
    *v49 = v47;
    v49[1] = sub_26D3834C0;
    v49[2] = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v67;
    sub_26D39FF68();

    v51 = sub_26D3A1298();
    if ((*(*(v51 - 8) + 48))(v50, 1, v51))
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_26D3A1258();
    }

    sub_26D3481A4(v50, &qword_2804FB398, &qword_26D3A33C0);
    if (qword_2804FAC58 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v52 & 1, 0, qword_2804FFDE0, *algn_2804FFDE8, v68);
    return sub_26D3481A4(v45, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void *sub_26D3631E0@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37DED0();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D36327C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC88, &qword_26D3A56D8);
  MEMORY[0x28223BE20](v100);
  v4 = &v80 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC90, &qword_26D3A56E0);
  MEMORY[0x28223BE20](v96);
  v98 = &v80 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC98, &qword_26D3A56E8);
  MEMORY[0x28223BE20](v103);
  v99 = &v80 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCA0, &qword_26D3A56F0);
  MEMORY[0x28223BE20](v97);
  v86 = &v80 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCA8, &qword_26D3A56F8);
  MEMORY[0x28223BE20](v92);
  v85 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80, &qword_26D3A5658);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v80 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v80 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v80 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v106 = &v80 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v80 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v80 - v30;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCB0, &qword_26D3A5700);
  MEMORY[0x28223BE20](v101);
  v105 = &v80 - v32;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCB8, &qword_26D3A5708);
  MEMORY[0x28223BE20](v89);
  v91 = &v80 - v33;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCC0, &qword_26D3A5710);
  MEMORY[0x28223BE20](v102);
  v35 = &v80 - v34;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCC8, &qword_26D3A5718);
  v82 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v80 - v36;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD0, &qword_26D3A5720);
  v84 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v83 = &v80 - v37;
  v38 = sub_26D33CED8(*(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v39 & 1) == 0)
  {
    v80 = v35;
    v47 = v4;
    v48 = v26;
    v49 = v31;
    v51 = v105;
    v50 = v106;
    if (v38 == 3)
    {
      v73 = v49;
      v94 = v49;
      sub_26D361630(0, v49);
      v95 = v29;
      sub_26D361C7C(0, v29);
      v74 = v48;
      v93 = v48;
      sub_26D362274(0, v48);
      v75 = v50;
      sub_26D34856C(v73, v50, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v29, v21, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v74, v18, &qword_2804FBC80, &qword_26D3A5658);
      v76 = v86;
      sub_26D34856C(v50, v86, &qword_2804FBC80, &qword_26D3A5658);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD10, &qword_26D3A5730);
      sub_26D34856C(v21, v76 + *(v77 + 48), &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v18, v76 + *(v77 + 64), &qword_2804FBC80, &qword_26D3A5658);
      sub_26D3481A4(v18, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D3481A4(v21, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D3481A4(v75, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v76, v98, &qword_2804FBCA0, &qword_26D3A56F0);
      swift_storeEnumTagMultiPayload();
      v78 = MEMORY[0x277CE14C0];
      sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0, &qword_26D3A56F0, MEMORY[0x277CE14C0]);
      sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88, &qword_26D3A56D8, v78);
      v79 = v99;
      sub_26D3A0718();
      sub_26D34856C(v79, v51, &qword_2804FBC98, &qword_26D3A56E8);
      swift_storeEnumTagMultiPayload();
      sub_26D3801C8();
      sub_26D380304();
      sub_26D3A0718();
      sub_26D3481A4(v79, &qword_2804FBC98, &qword_26D3A56E8);
      sub_26D3481A4(v76, &qword_2804FBCA0, &qword_26D3A56F0);
      v70 = v93;
      v71 = &qword_2804FBC80;
      v72 = &qword_26D3A5658;
    }

    else
    {
      if (v38 != 2)
      {
        v31 = v49;
        v4 = v47;
        v52 = v80;
        if (v38 == 1)
        {
          MEMORY[0x28223BE20](1);
          *(&v80 - 2) = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
          sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
          v53 = MEMORY[0x277CE14C0];
          sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88, &qword_26D3A56D8, MEMORY[0x277CE14C0]);
          v54 = v81;
          sub_26D3A0958();
          v107 = 0;
          sub_26D3A0D48();
          v55 = v108;
          v56 = v109;
          LOBYTE(v108) = 0;
          LOBYTE(v109) = v55;
          v110 = v56;
          v57 = sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8, &qword_26D3A5718, MEMORY[0x277CDE5B0]);
          v58 = sub_26D37E178();
          v59 = v83;
          v60 = v88;
          sub_26D3A0C08();
          (*(v82 + 8))(v54, v60);

          v61 = v84;
          v62 = v90;
          (*(v84 + 16))(v91, v59, v90);
          swift_storeEnumTagMultiPayload();
          v108 = v60;
          v109 = &type metadata for TFMenuStyle;
          v110 = v57;
          v111 = v58;
          swift_getOpaqueTypeConformance2();
          sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8, &qword_26D3A56F8, v53);
          sub_26D3A0718();
          sub_26D34856C(v52, v105, &qword_2804FBCC0, &qword_26D3A5710);
          swift_storeEnumTagMultiPayload();
          sub_26D3801C8();
          sub_26D380304();
          sub_26D3A0718();
          sub_26D3481A4(v52, &qword_2804FBCC0, &qword_26D3A5710);
          return (*(v61 + 8))(v59, v62);
        }

        goto LABEL_2;
      }

      v64 = v49;
      v94 = v49;
      sub_26D361630(0, v49);
      v95 = v29;
      sub_26D361C7C(0, v29);
      sub_26D34856C(v64, v26, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v29, v50, &qword_2804FBC80, &qword_26D3A5658);
      v65 = v85;
      sub_26D34856C(v26, v85, &qword_2804FBC80, &qword_26D3A5658);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD18, &qword_26D3A5738);
      sub_26D34856C(v50, v65 + *(v66 + 48), &qword_2804FBC80, &qword_26D3A5658);
      sub_26D3481A4(v50, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D3481A4(v26, &qword_2804FBC80, &qword_26D3A5658);
      sub_26D34856C(v65, v91, &qword_2804FBCA8, &qword_26D3A56F8);
      swift_storeEnumTagMultiPayload();
      v67 = sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8, &qword_26D3A5718, MEMORY[0x277CDE5B0]);
      v68 = sub_26D37E178();
      v108 = v88;
      v109 = &type metadata for TFMenuStyle;
      v110 = v67;
      v111 = v68;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8, &qword_26D3A56F8, MEMORY[0x277CE14C0]);
      v69 = v80;
      sub_26D3A0718();
      sub_26D34856C(v69, v51, &qword_2804FBCC0, &qword_26D3A5710);
      swift_storeEnumTagMultiPayload();
      sub_26D3801C8();
      sub_26D380304();
      sub_26D3A0718();
      sub_26D3481A4(v69, &qword_2804FBCC0, &qword_26D3A5710);
      v70 = v65;
      v71 = &qword_2804FBCA8;
      v72 = &qword_26D3A56F8;
    }

    sub_26D3481A4(v70, v71, v72);
    sub_26D3481A4(v95, &qword_2804FBC80, &qword_26D3A5658);
    v46 = v94;
    return sub_26D3481A4(v46, &qword_2804FBC80, &qword_26D3A5658);
  }

LABEL_2:
  v87 = v4;
  sub_26D361630(0, v31);
  v95 = v29;
  sub_26D361C7C(0, v29);
  v93 = v26;
  sub_26D362274(0, v26);
  v94 = v31;
  v40 = v15;
  v41 = v106;
  sub_26D362AD8(0, v106);
  sub_26D34856C(v31, v21, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v29, v18, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v26, v40, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v41, v12, &qword_2804FBC80, &qword_26D3A5658);
  v42 = v87;
  sub_26D34856C(v21, v87, &qword_2804FBC80, &qword_26D3A5658);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD8, &qword_26D3A5728);
  sub_26D34856C(v18, v42 + v43[12], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v40, v42 + v43[16], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v12, v42 + v43[20], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v12, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v40, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v18, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v21, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v42, v98, &qword_2804FBC88, &qword_26D3A56D8);
  swift_storeEnumTagMultiPayload();
  v44 = MEMORY[0x277CE14C0];
  sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0, &qword_26D3A56F0, MEMORY[0x277CE14C0]);
  sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88, &qword_26D3A56D8, v44);
  v45 = v99;
  sub_26D3A0718();
  sub_26D34856C(v45, v105, &qword_2804FBC98, &qword_26D3A56E8);
  swift_storeEnumTagMultiPayload();
  sub_26D3801C8();
  sub_26D380304();
  sub_26D3A0718();
  sub_26D3481A4(v45, &qword_2804FBC98, &qword_26D3A56E8);
  sub_26D3481A4(v42, &qword_2804FBC88, &qword_26D3A56D8);
  sub_26D3481A4(v106, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v93, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v95, &qword_2804FBC80, &qword_26D3A5658);
  v46 = v94;
  return sub_26D3481A4(v46, &qword_2804FBC80, &qword_26D3A5658);
}

uint64_t sub_26D3642C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80, &qword_26D3A5658);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v31 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  sub_26D361630(1, &v31 - v22);
  v31 = v21;
  sub_26D361C7C(1, v21);
  sub_26D362274(1, v18);
  sub_26D362AD8(1, v15);
  v24 = v12;
  v33 = v12;
  sub_26D34856C(v23, v12, &qword_2804FBC80, &qword_26D3A5658);
  v25 = v21;
  v26 = v9;
  sub_26D34856C(v25, v9, &qword_2804FBC80, &qword_26D3A5658);
  v27 = v32;
  sub_26D34856C(v18, v32, &qword_2804FBC80, &qword_26D3A5658);
  v28 = v34;
  sub_26D34856C(v15, v34, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v24, a1, &qword_2804FBC80, &qword_26D3A5658);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD8, &qword_26D3A5728);
  sub_26D34856C(v26, a1 + v29[12], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v27, a1 + v29[16], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v28, a1 + v29[20], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v15, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v18, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v31, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v23, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v28, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v27, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v26, &qword_2804FBC80, &qword_26D3A5658);
  return sub_26D3481A4(v33, &qword_2804FBC80, &qword_26D3A5658);
}

uint64_t sub_26D3645E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TFSymbol(0);
  sub_26D3A0628();
  v3 = sub_26D3A0928();
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x800000026D3A8120;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = 1;
  v4 = a1 + v2[11];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[12];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  v7 = a1 + v6[9];
  sub_26D3A0D48();
  *v7 = v12;
  *(v7 + 8) = v13;
  v8 = a1 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v6[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[12];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_26D36473C@<X0>(uint64_t *a1@<X2>, _BYTE *a3@<X8>)
{
  if (*a1)
  {
    v8 = *a1;

    v4 = swift_readAtKeyPath();
    *a3 = *v5;
    v4(v7, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36481C(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*a4)
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D364918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD58, &qword_26D3A5758);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD60, &qword_26D3A5760);
  MEMORY[0x28223BE20](v46);
  v8 = &v39 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD40, &qword_26D3A5750);
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD68, &qword_26D3A5768);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  if (qword_2804FAD48 != -1)
  {
    v14 = swift_once();
  }

  if (byte_2804FFF99 == 1)
  {
    v39 = &v39;
    v17 = MEMORY[0x28223BE20](v14);
    *(&v39 - 2) = a1;
    MEMORY[0x28223BE20](v17);
    v42 = v12;
    v43 = v13;
    *(&v39 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70, &qword_26D3A5770);
    v44 = a2;
    v45 = v4;
    v41 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD78, &qword_26D3A5778);
    v40 = v16;
    v18 = v9;
    sub_26D3484AC(&qword_2804FBD80, &qword_2804FBD70, &qword_26D3A5770, &unk_26D3A6418);
    sub_26D3484AC(&qword_2804FBD88, &qword_2804FBD78, &qword_26D3A5778, MEMORY[0x277CE14C0]);
    sub_26D3A0958();
    v52 = 0;
    sub_26D3A0D48();
    v19 = v48;
    v20 = v49;
    LOBYTE(v48) = 0;
    LOBYTE(v49) = v19;
    v50 = v20;
    v21 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40, &qword_26D3A5750, MEMORY[0x277CDE5B0]);
    v22 = sub_26D37E178();
    v23 = v40;
    v24 = v47;
    sub_26D3A0C08();

    (*(v18 + 8))(v11, v24);
    v25 = v43;
    v26 = v23;
    v27 = v23;
    v28 = v42;
    (*(v43 + 16))(v41, v26, v42);
    swift_storeEnumTagMultiPayload();
    v48 = v24;
    v49 = &type metadata for TFMenuStyle;
    v50 = v21;
    v51 = v22;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58, &qword_26D3A5758, &unk_26D3A6540);
    sub_26D3A0718();
    return (*(v25 + 8))(v27, v28);
  }

  else
  {
    v30 = v4[12];
    v31 = sub_26D3A0078();
    (*(*(v31 - 8) + 56))(&v6[v30], 1, 1, v31);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 9) = 257;
    v6[11] = 0;
    sub_26D365008(a1, &v6[v4[13]]);
    v32 = &v6[v4[14]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v6[v4[15]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = &v6[v4[16]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v6[v4[17]];
    v52 = 0;
    sub_26D3A0D48();
    v36 = v49;
    *v35 = v48;
    *(v35 + 1) = v36;
    sub_26D34856C(v6, v8, &qword_2804FBD58, &qword_26D3A5758);
    swift_storeEnumTagMultiPayload();
    v37 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40, &qword_26D3A5750, MEMORY[0x277CDE5B0]);
    v38 = sub_26D37E178();
    v48 = v47;
    v49 = &type metadata for TFMenuStyle;
    v50 = v37;
    v51 = v38;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58, &qword_26D3A5758, &unk_26D3A6540);
    sub_26D3A0718();
    return sub_26D3481A4(v6, &qword_2804FBD58, &qword_26D3A5758);
  }
}

uint64_t sub_26D365008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD40, &qword_26D3A5750);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD68, &qword_26D3A5768);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE38, &qword_26D3A5920);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE40, &qword_26D3A5928);
  MEMORY[0x28223BE20](v10);
  v12 = (&v37 - v11);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v49 >> 62)
    {
      v13 = sub_26D3A1488();
    }

    else
    {
      v13 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v7;
    if (v13)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26D39FF68();

      if ((v49 & 1) == 0)
      {
        v54 = a1[2];
        v55 = *(a1 + 12);
        v52 = a1[4];
        v53 = *(a1 + 40);
        v25 = swift_allocObject();
        v26 = *(a1 + 1);
        v25[1] = *a1;
        v25[2] = v26;
        *(v25 + 41) = *(a1 + 25);
        *v12 = 16842752;
        v27 = v10;
        v28 = *(v10 + 48);

        sub_26D34856C(&v54, &v49, &qword_2804FB888, &qword_26D3A4FD8);
        sub_26D34856C(&v52, &v49, &qword_2804FBE00, &unk_26D3A58B0);
        sub_26D365868(v12 + v28);
        v29 = (v12 + v27[13]);
        *v29 = sub_26D380B3C;
        v29[1] = v25;
        v30 = v12 + v27[14];
        v47 = 0;
        v48 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
        sub_26D3A0D48();
        v31 = BYTE8(v49);
        v32 = v50;
        *v30 = v49;
        v30[8] = v31;
        *(v30 + 2) = v32;
        v33 = v27[15];
        v47 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
        sub_26D3A0D48();
        *(v12 + v33) = v49;
        v34 = v12 + v27[16];
        *v34 = swift_getKeyPath();
        v34[8] = 0;
        sub_26D34856C(v12, v9, &qword_2804FBE40, &qword_26D3A5928);
        swift_storeEnumTagMultiPayload();
        sub_26D3484AC(&qword_2804FBE48, &qword_2804FBE40, &qword_26D3A5928, &unk_26D3A64F0);
        v35 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40, &qword_26D3A5750, MEMORY[0x277CDE5B0]);
        v36 = sub_26D37E178();
        *&v49 = v3;
        *(&v49 + 1) = &type metadata for TFMenuStyle;
        v50 = v35;
        v51 = v36;
        swift_getOpaqueTypeConformance2();
        sub_26D3A0718();
        return sub_26D3481A4(v12, &qword_2804FBE40, &qword_26D3A5928);
      }
    }

    v40 = v10;
    v15 = MEMORY[0x28223BE20](v14);
    *(&v37 - 2) = a1;
    MEMORY[0x28223BE20](v15);
    *(&v37 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70, &qword_26D3A5770);
    v39 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD78, &qword_26D3A5778);
    v38 = v9;
    sub_26D3484AC(&qword_2804FBD80, &qword_2804FBD70, &qword_26D3A5770, &unk_26D3A6418);
    sub_26D3484AC(&qword_2804FBD88, &qword_2804FBD78, &qword_26D3A5778, MEMORY[0x277CE14C0]);
    v16 = v41;
    sub_26D3A0958();
    LOBYTE(v54) = 0;
    sub_26D3A0D48();
    v17 = v49;
    v18 = *(&v49 + 1);
    LOBYTE(v49) = 0;
    BYTE8(v49) = v17;
    v50 = v18;
    v19 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40, &qword_26D3A5750, MEMORY[0x277CDE5B0]);
    v20 = sub_26D37E178();
    v21 = v43;
    sub_26D3A0C08();

    (*(v42 + 8))(v16, v3);
    v22 = v44;
    v23 = v39;
    (*(v44 + 16))(v38, v21, v39);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE48, &qword_2804FBE40, &qword_26D3A5928, &unk_26D3A64F0);
    *&v49 = v3;
    *(&v49 + 1) = &type metadata for TFMenuStyle;
    v50 = v19;
    v51 = v20;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();
    return (*(v22 + 8))(v21, v23);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D365868@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD90, &qword_26D3A5780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD98, &qword_26D3A5788);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDA0, &qword_26D3A5790);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  sub_26D366D0C(v2, v6);
  sub_26D3A0EB8();
  sub_26D3A0268();
  sub_26D347238(v6, v10, &qword_2804FBD90, &qword_26D3A5780);
  v15 = &v10[*(v8 + 44)];
  v16 = v24[5];
  *(v15 + 4) = v24[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v24[6];
  v17 = v24[1];
  *v15 = v24[0];
  *(v15 + 1) = v17;
  v18 = v24[3];
  *(v15 + 2) = v24[2];
  *(v15 + 3) = v18;
  KeyPath = swift_getKeyPath();
  sub_26D347238(v10, v14, &qword_2804FBD98, &qword_26D3A5788);
  v20 = &v14[*(v12 + 44)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  sub_26D347238(v14, a1, &qword_2804FBDA0, &qword_26D3A5790);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDA8, &qword_26D3A57F8);
  v23 = (a1 + *(result + 36));
  *v23 = v21;
  v23[1] = 0x3FE6666666666666;
  return result;
}

uint64_t sub_26D365ACC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = sub_26D3A0E48();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDF8, &qword_26D3A5828);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v82 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v59 - v11;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v107 = v123;
    swift_getKeyPath();
    v139 = a1[2];
    v140 = *(a1 + 12);
    v137 = a1[4];
    v138 = *(a1 + 40);
    v12 = swift_allocObject();
    v13 = *(a1 + 1);
    v12[1] = *a1;
    v12[2] = v13;
    *(v12 + 41) = *(a1 + 25);

    sub_26D34856C(&v139, &v123, &qword_2804FB888, &qword_26D3A4FD8);
    sub_26D34856C(&v137, &v123, &qword_2804FBE00, &unk_26D3A58B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618, &unk_26D3A3650);
    type metadata accessor for TFToggle(0);
    sub_26D3484AC(&qword_2804FBE08, &qword_2804FB618, &unk_26D3A3650, MEMORY[0x277D83980]);
    sub_26D3809CC();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
    sub_26D3A0E58();
    sub_26D3A0E38();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    KeyPath = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v123)
    {
      v18 = swift_allocObject();
      v24 = *(a1 + 1);
      v18[1] = *a1;
      v18[2] = v24;
      *(v18 + 41) = *(a1 + 25);

      sub_26D34856C(&v139, &v123, &qword_2804FB888, &qword_26D3A4FD8);
      sub_26D34856C(&v137, &v123, &qword_2804FBE00, &unk_26D3A58B0);
      if (qword_2804FAC88 != -1)
      {
        swift_once();
      }

      v123 = qword_2804FFE40;
      v124 = *algn_2804FFE48;
      sub_26D37E6A4();

      v14 = sub_26D3A09C8();
      v15 = v25;
      v16 = v26;
      LOBYTE(v101) = v27 & 1;
      v107 = 0;
      LOBYTE(v108) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
      sub_26D3A0D48();
      v19 = v123;
      v88 = v125;
      LOBYTE(v95) = v124;
      v107 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
      sub_26D3A0D48();
      v86 = v124;
      v87 = v123;
      KeyPath = swift_getKeyPath();
      LOBYTE(v123) = 0;
      v22 = v101;
      v21 = v95;
      v17 = sub_26D380A3C;
      v23 = 0x10000;
    }

    v72 = v23;
    v73 = v22;
    v74 = v17;
    v75 = v21;
    v76 = KeyPath;
    v77 = v19;
    v78 = v16;
    v79 = v15;
    v80 = v14;
    v81 = v18;
    v28 = swift_allocObject();
    v29 = *(a1 + 1);
    v28[1] = *a1;
    v28[2] = v29;
    v30 = *(a1 + 25);
    v62 = v28;
    *(v28 + 41) = v30;

    sub_26D34856C(&v139, &v123, &qword_2804FB888, &qword_26D3A4FD8);
    sub_26D34856C(&v137, &v123, &qword_2804FBE00, &unk_26D3A58B0);
    if (qword_2804FAC80 != -1)
    {
      swift_once();
    }

    v123 = qword_2804FFE30;
    v124 = *algn_2804FFE38;
    sub_26D37E6A4();

    v70 = sub_26D3A09C8();
    v61 = v31;
    v64 = v32;
    LOBYTE(v101) = v33 & 1;
    v107 = 0;
    LOBYTE(v108) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
    sub_26D3A0D48();
    v71 = v123;
    v60 = v125;
    LOBYTE(v95) = v124;
    v107 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
    sub_26D3A0D48();
    v68 = v124;
    v69 = v123;
    v67 = swift_getKeyPath();
    LOBYTE(v123) = 0;
    v65 = v101;
    v66 = v95;
    v34 = v82;
    v35 = *(v83 + 16);
    v36 = v84;
    v35(v82, v89, v84);
    v37 = *(v92 + 16);
    v38 = v85;
    v37(v85, v90, v91);
    v39 = v63;
    v35(v63, v34, v36);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE20, &qword_26D3A5908);
    v41 = v38;
    v42 = v91;
    v37(&v39[v40[12]], v41, v91);
    v43 = &v39[v40[16]];
    *&v95 = v72;
    *(&v95 + 1) = v80;
    *&v96 = v79;
    *(&v96 + 1) = v73;
    *&v97 = v78;
    *(&v97 + 1) = v74;
    *&v98 = v81;
    *(&v98 + 1) = v77;
    *&v99 = v75;
    *(&v99 + 1) = v88;
    *&v100[0] = v87;
    *(&v100[0] + 1) = v86;
    *&v100[1] = v76;
    BYTE8(v100[1]) = 0;
    v44 = v96;
    *v43 = v95;
    *(v43 + 1) = v44;
    v45 = v98;
    *(v43 + 2) = v97;
    *(v43 + 3) = v45;
    v46 = v100[0];
    *(v43 + 4) = v99;
    *(v43 + 5) = v46;
    *(v43 + 89) = *(v100 + 9);
    v47 = &v39[v40[20]];
    LODWORD(v101) = 0x10000;
    v48 = v61;
    v49 = v62;
    *(&v101 + 1) = v70;
    *&v102 = v61;
    BYTE8(v102) = v65;
    HIDWORD(v102) = *&v94[3];
    *(&v102 + 9) = *v94;
    *&v103 = v64;
    *(&v103 + 1) = sub_26D383394;
    *&v104 = v62;
    *(&v104 + 1) = v71;
    LOBYTE(v105) = v66;
    DWORD1(v105) = *&v93[3];
    *(&v105 + 1) = *v93;
    v50 = v60;
    *(&v105 + 1) = v60;
    *&v106[0] = v69;
    *(&v106[0] + 1) = v68;
    *&v106[1] = v67;
    BYTE8(v106[1]) = 0;
    sub_26D34856C(&v95, &v123, &qword_2804FBE28, &qword_26D3A5910);
    sub_26D34856C(&v101, &v123, &qword_2804FBE30, &qword_26D3A5918);
    v51 = *(v92 + 8);
    v92 += 8;
    v63 = v51;
    (v51)(v90, v42);
    v52 = v84;
    v53 = *(v83 + 8);
    v53(v89, v84);
    v54 = v104;
    v55 = v106[0];
    *(v47 + 4) = v105;
    *(v47 + 5) = v55;
    *(v47 + 89) = *(v106 + 9);
    v56 = v102;
    v57 = v103;
    *v47 = v101;
    *(v47 + 1) = v56;
    *(v47 + 2) = v57;
    *(v47 + 3) = v54;
    LODWORD(v107) = 0x10000;
    v108 = v70;
    v109 = v48;
    v110 = v65;
    *&v111[3] = *&v94[3];
    *v111 = *v94;
    v112 = v64;
    v113 = sub_26D383394;
    v114 = v49;
    v115 = v71;
    v116 = v66;
    *v117 = *v93;
    *&v117[3] = *&v93[3];
    v118 = v50;
    v119 = v69;
    v120 = v68;
    v121 = v67;
    v122 = 0;
    sub_26D3481A4(&v107, &qword_2804FBE30, &qword_26D3A5918);
    v123 = v72;
    v124 = v80;
    v125 = v79;
    v126 = v73;
    v127 = v78;
    v128 = v74;
    v129 = v81;
    v130 = v77;
    v131 = v75;
    v132 = v88;
    v133 = v87;
    v134 = v86;
    v135 = v76;
    v136 = 0;
    sub_26D3481A4(&v123, &qword_2804FBE28, &qword_26D3A5910);
    (v63)(v85, v91);
    return (v53)(v82, v52);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3665A8@<X0>(void **a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v33 = *a2;
  v31 = *(a2 + 2);
  v32 = *(a2 + 12);
  v29 = *(a2 + 4);
  v30 = *(a2 + 40);
  sub_26D3A10C8();
  sub_26D34856C(&v33, v27, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v31, v27, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v29, v27, &qword_2804FBE00, &unk_26D3A58B0);
  v6 = v5;
  v7 = sub_26D3A10B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v10;
  *(v8 + 57) = *(a2 + 25);
  *(v8 + 80) = v6;
  sub_26D34856C(&v33, v27, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D34856C(&v31, v27, &qword_2804FB888, &qword_26D3A4FD8);
  sub_26D34856C(&v29, v27, &qword_2804FBE00, &unk_26D3A58B0);
  v11 = v6;
  v12 = sub_26D3A10B8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v14 = a2[1];
  *(v13 + 32) = *a2;
  *(v13 + 48) = v14;
  *(v13 + 57) = *(a2 + 25);
  *(v13 + 80) = v11;
  sub_26D3A0E28();
  v15 = v27[0];
  v16 = v27[1];
  v17 = v28;
  v18 = [v11 localizedFullName];
  v19 = sub_26D3A0F98();
  v21 = v20;

  v22 = type metadata accessor for TFToggle(0);
  sub_26D3A0638();
  *a3 = 0;
  a3[1] = 0;
  v23 = (a3 + v22[6]);
  *v23 = v19;
  v23[1] = v21;
  *(a3 + v22[7]) = 1;
  v24 = a3 + v22[8];
  *v24 = v15;
  *(v24 + 1) = v16;
  v24[16] = v17;
  v25 = a3 + v22[9];
  result = swift_getKeyPath();
  *v25 = result;
  v25[8] = 0;
  return result;
}

uint64_t sub_26D36682C@<X0>(void *a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*a1)
  {

    v4 = sub_26D34CA00();

    v19 = a3;
    if (v4 >> 62)
    {
LABEL_18:
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = sub_26D3A1488();
    }

    else
    {
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v7 = v5;
      if (v22 == v5)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_26D33E7C4(v5, v4);
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v4 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v10 = [v8 familyName];
      v11 = sub_26D3A0F98();
      v13 = v12;

      v14 = [a2 familyName];
      v15 = sub_26D3A0F98();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

        break;
      }

      v6 = sub_26D3A1518();

      v5 = v7 + 1;
    }

    while ((v6 & 1) == 0);

    *v19 = v22 != v7;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366A68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*a4)
  {

    v6 = [a5 fontDescriptor];
    v7 = sub_26D34CD84();
    [v7 pointSize];
    v9 = v8;

    v10 = [objc_opt_self() fontWithDescriptor:v6 size:v9];
    sub_26D34FD44(v10);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366B88(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + *a2);

    v2(v3);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366C38@<X0>(uint64_t a1@<X8>)
{
  sub_26D365868(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70, &qword_26D3A5770);
  v3 = a1 + v2[9];
  sub_26D3A0D48();
  *v3 = v8;
  *(v3 + 8) = v9;
  v4 = a1 + v2[10];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[12];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_26D366D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB0, &qword_26D3A5800);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D33CED8(a1[2], *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v11 & 1) != 0 || v10 != 1)
  {
    if (*a1)
    {

      v45 = *(sub_26D34FB90() + 2);

      v16 = sub_26D34CD84();

      v17 = sub_26D39D0C0();
      v19 = v18;

      v49 = v17;
      v50 = v19;
      sub_26D37E6A4();
      v20 = sub_26D3A09C8();
      v22 = v21;
      v24 = v23;
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      v47 = v7;
      v48 = a2;
      v46 = v4;
      if (byte_2804FFF98 == 1)
      {
        LODWORD(v49) = sub_26D3A0798();
      }

      else
      {
        v49 = sub_26D3A0C78();
      }

      v49 = sub_26D3A00D8();
      v25 = sub_26D3A0998();
      v41 = v26;
      v42 = v25;
      v27 = v26;
      v29 = v28;
      v43 = v28;
      v44 = v30;
      sub_26D37EDCC(v20, v22, v24 & 1);

      sub_26D367280(v45, v25, v27, v29 & 1, &v49);
      v32 = v49;
      v31 = v50;
      v34 = v51;
      v33 = v52;
      v35 = v53;
      v36 = v54;
      v37 = v55;
      v38 = sub_26D33D0B8(a1[4], *(a1 + 40));
      v39 = 0.5;
      LOBYTE(v49) = v37;
      if (v38)
      {
        v39 = 1.0;
      }

      *v6 = v32;
      *(v6 + 1) = v31;
      *(v6 + 2) = v34;
      *(v6 + 3) = v33;
      *(v6 + 4) = v35;
      *(v6 + 5) = v36;
      v6[48] = v37;
      *(v6 + 7) = v39;
      swift_storeEnumTagMultiPayload();
      sub_26D380674(v32, v31, v34, v33, v35, v36, v37);
      sub_26D380674(v32, v31, v34, v33, v35, v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB8, &qword_26D3A5808);
      sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
      sub_26D3806F8();
      sub_26D3A0718();
      sub_26D37EDCC(v42, v41, v43 & 1);

      sub_26D380918(v32, v31, v34, v33, v35, v36, v37);
      return sub_26D380918(v32, v31, v34, v33, v35, v36, v37);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  else
  {
    v12 = sub_26D3A0928();
    sub_26D3A0638();
    *v9 = xmmword_26D3A3E60;
    v9[16] = 0;
    *(v9 + 3) = v12;
    *(v9 + 4) = 0;
    v9[v7[9]] = 1;
    v9[v7[10]] = 1;
    v13 = &v9[v7[11]];
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    v14 = &v9[v7[12]];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    sub_26D381440(v9, v6, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB8, &qword_26D3A5808);
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3806F8();
    sub_26D3A0718();
    return sub_26D37EEEC(v9, type metadata accessor for TFSymbol);
  }

  return result;
}

double sub_26D367280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X8>)
{
  v11 = sub_26D3A0598();
  MEMORY[0x28223BE20](v11 - 8);
  if (a1 < 2)
  {
    sub_26D3806E8(a2, a3, a4 & 1);
  }

  else
  {
    sub_26D3A0588();
    sub_26D3A0578();
    sub_26D3A0568();
    sub_26D3A0578();
    sub_26D3A0558();
    sub_26D3A0578();
    sub_26D3A05B8();
    if (qword_2804FABD8 != -1)
    {
      swift_once();
    }

    v12 = qword_2804FFCE8;
    v13 = sub_26D3A09A8();
    v15 = v14;
    v17 = v16;
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF98 == 1)
    {
      sub_26D3A07A8();
    }

    else
    {
      sub_26D3A0C88();
    }

    *&v19 = sub_26D3A00D8();
    sub_26D3A0998();
    sub_26D37EDCC(v13, v15, v17 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDF0, &qword_26D3A5820);
  sub_26D380894();
  sub_26D3A0718();
  result = *&v19;
  *a6 = v19;
  *(a6 + 16) = v20;
  *(a6 + 32) = v21;
  *(a6 + 48) = v22;
  return result;
}

uint64_t sub_26D3675FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD20, &qword_26D3A5740);
  MEMORY[0x28223BE20](v1);
  v3 = v11 - v2;
  v4 = v0[1];
  v12 = *v0;
  v13[0] = v4;
  *(v13 + 9) = *(v0 + 25);
  sub_26D364918(&v12, (v11 - v2));
  if (qword_2804FABF8 != -1)
  {
    swift_once();
  }

  v11[2] = qword_2804FFD20;
  v11[3] = *algn_2804FFD28;
  sub_26D37E6A4();

  v5 = sub_26D3A09C8();
  v7 = v6;
  v9 = v8;
  sub_26D3803EC();
  sub_26D3A0AE8();
  sub_26D37EDCC(v5, v7, v9 & 1);

  return sub_26D3481A4(v3, &qword_2804FBD20, &qword_26D3A5740);
}

uint64_t sub_26D367778@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE50, &qword_26D3A5930);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE58, &qword_26D3A5938);
  MEMORY[0x28223BE20](v57);
  v58 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE60, &qword_26D3A5940);
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE68, &qword_26D3A5948);
  MEMORY[0x28223BE20](v13);
  v15 = v53 - v14;
  v16 = sub_26D33CED8(*(v1 + 24), *(v1 + 32) | (*(v1 + 33) << 8));
  if ((v17 & 1) != 0 || ((*v1 & 1) == 0 ? (v18 = 1) : (v18 = 2), v18 < v16))
  {
    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    v19 = 1;
    if ((byte_2804FFF99 & 1) == 0)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98 == 1 && (*v1 & 1) != 0 && (v20 = *(v1 + 56), v21 = *(v1 + 64), v22 = sub_26D33D278(v20, v21), v23 = sub_26D33CD0C(*(v1 + 72), *(v1 + 80)), sub_26D39C90C(v23, v24), v25 < v22))
      {
        v26 = sub_26D33D278(*(v1 + 40), *(v1 + 48));
        v27 = sub_26D33D278(v20, v21);
        v19 = sub_26D33D278(v20, v21) < v26 - (v27 + v27) + -2.0;
      }

      else
      {
        v19 = 0;
      }
    }

    v28 = v3[12];
    v29 = sub_26D3A0078();
    (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 9) = 257;
    v6[11] = v19;
    sub_26D3691F8(v1, &v6[v3[13]]);
    v30 = &v6[v3[14]];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = &v6[v3[15]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = &v6[v3[16]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v6[v3[17]];
    v62 = 0;
    sub_26D3A0D48();
    v34 = v60;
    *v33 = v59;
    *(v33 + 1) = v34;
    v35 = &qword_2804FBE50;
    v36 = &qword_26D3A5930;
    sub_26D347238(v6, v8, &qword_2804FBE50, &qword_26D3A5930);
    sub_26D34856C(v8, v58, &qword_2804FBE50, &qword_26D3A5930);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68, &qword_26D3A5948, &unk_26D3A6540);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50, &qword_26D3A5930, &unk_26D3A6540);
    sub_26D3A0718();
    v37 = v8;
  }

  else
  {
    v38 = v13;
    v39 = *(v13 + 48);
    v40 = v38;
    v54 = v38;
    v41 = sub_26D3A0078();
    v42 = (*(*(v41 - 8) + 56))(&v15[v39], 1, 1, v41);
    v53[1] = v53;
    *v15 = 0;
    v15[8] = 1;
    *(v15 + 9) = 257;
    v15[11] = 0;
    v53[2] = *(v40 + 52);
    v43 = MEMORY[0x28223BE20](v42);
    v53[-2] = v1;
    MEMORY[0x28223BE20](v43);
    v53[-2] = v1;
    v53[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE80, &qword_26D3A5950);
    v55 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE88, &qword_26D3A5958);
    sub_26D380B70();
    sub_26D3484AC(&qword_2804FBEE0, &qword_2804FBE88, &qword_26D3A5958, MEMORY[0x277CE14C0]);
    sub_26D3A0958();
    v62 = 0;
    sub_26D3A0D48();
    v44 = v59;
    v45 = v60;
    LOBYTE(v59) = 0;
    LOBYTE(v60) = v44;
    v61 = v45;
    sub_26D3484AC(&qword_2804FBEE8, &qword_2804FBE60, &qword_26D3A5940, MEMORY[0x277CDE5B0]);
    sub_26D37E178();
    sub_26D3A0C08();

    (*(v56 + 8))(v12, v10);
    v46 = v54;
    v47 = &v15[v54[14]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v15[v46[15]];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = &v15[v46[16]];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = &v15[v46[17]];
    v62 = 0;
    sub_26D3A0D48();
    v51 = v60;
    *v50 = v59;
    *(v50 + 1) = v51;
    v35 = &qword_2804FBE68;
    v36 = &qword_26D3A5948;
    sub_26D34856C(v15, v58, &qword_2804FBE68, &qword_26D3A5948);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68, &qword_26D3A5948, &unk_26D3A6540);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50, &qword_26D3A5930, &unk_26D3A6540);
    sub_26D3A0718();
    v37 = v15;
  }

  return sub_26D3481A4(v37, v35, v36);
}

uint64_t sub_26D367FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEF8, &qword_26D3A59F8);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v76 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF00, &qword_26D3A5A00);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v76 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF08, &qword_26D3A5A08);
  v84 = *(v78 - 8);
  v5 = MEMORY[0x28223BE20](v78);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v76 - v7;
  v82 = sub_26D3A0E48();
  v80 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF10, &qword_26D3A5A10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF18, &qword_26D3A5A18);
  v16 = (v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v76 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v76 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v76 - v24);
  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = *(a1 + 80);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  *v25 = 0x10000;
  v99 = a1;
  sub_26D348204(a1, &v102);
  sub_26D3A0CD8();
  v29 = (v25 + v16[15]);
  *v29 = sub_26D380F70;
  v29[1] = v26;
  v30 = v25 + v16[16];
  v100 = 0;
  v31 = 1;
  v101 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
  sub_26D3A0D48();
  v32 = BYTE8(v102);
  v33 = v103;
  *v30 = v102;
  v30[8] = v32;
  *(v30 + 2) = v33;
  v34 = v16[17];
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
  sub_26D3A0D48();
  *(v25 + v34) = v102;
  v35 = v16[18];
  v87 = v25;
  v36 = v25 + v35;
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = swift_allocObject();
  v38 = *(a1 + 48);
  *(v37 + 48) = *(a1 + 32);
  *(v37 + 64) = v38;
  *(v37 + 80) = *(a1 + 64);
  *(v37 + 96) = *(a1 + 80);
  v39 = *(a1 + 16);
  *(v37 + 16) = *a1;
  *(v37 + 32) = v39;
  *v23 = 0x10000;
  v98 = a1;
  sub_26D348204(a1, &v102);
  sub_26D3A0CD8();
  v40 = (v23 + v16[15]);
  *v40 = sub_26D380FCC;
  v40[1] = v37;
  v41 = v23 + v16[16];
  v100 = 0;
  v101 = 1;
  sub_26D3A0D48();
  v42 = BYTE8(v102);
  v43 = v103;
  *v41 = v102;
  v41[8] = v42;
  *(v41 + 2) = v43;
  v44 = v16[17];
  v100 = 0;
  sub_26D3A0D48();
  *(v23 + v44) = v102;
  v45 = v16[18];
  v89 = v23;
  v46 = v23 + v45;
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  if (*a1)
  {
    v47 = sub_26D3A0E38();
    v48 = MEMORY[0x28223BE20](v47);
    *(&v76 - 2) = a1;
    MEMORY[0x28223BE20](v48);
    *(&v76 - 2) = a1;
    *(&v76 - 4) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF28, &qword_26D3A5A28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30, &unk_26D3A5A30);
    sub_26D38103C();
    sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30, &unk_26D3A5A30);
    v49 = v77;
    sub_26D3A0958();
    LOBYTE(v100) = 0;
    sub_26D3A0D48();
    v50 = v102;
    v51 = *(&v102 + 1);
    LOBYTE(v102) = 1;
    BYTE8(v102) = v50;
    v103 = v51;
    sub_26D3484AC(&qword_2804FBF50, &qword_2804FBF00, &qword_26D3A5A00, MEMORY[0x277CDE5B0]);
    sub_26D37E178();
    v52 = v86;
    v53 = v81;
    sub_26D3A0C08();

    (*(v79 + 8))(v49, v53);
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v85;
    v57 = v82;
    v55(v85, v96, v82);
    v58 = v84;
    v59 = *(v84 + 16);
    v60 = v83;
    v61 = v52;
    v62 = v78;
    v59(v83, v61, v78);
    v55(v92, v56, v57);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF58, &unk_26D3A5A40);
    v64 = v92;
    v59(&v92[*(v63 + 48)], v60, v62);
    v65 = *(v58 + 8);
    v65(v86, v62);
    v66 = *(v54 + 8);
    v66(v96, v57);
    v65(v60, v62);
    v66(v85, v57);
    sub_26D347238(v64, v97, &qword_2804FBEF8, &qword_26D3A59F8);
    v31 = 0;
  }

  v67 = v97;
  (*(v93 + 56))(v97, v31, 1, v94);
  v68 = v87;
  v69 = v88;
  sub_26D34856C(v87, v88, &qword_2804FBF18, &qword_26D3A5A18);
  v70 = v89;
  v71 = v90;
  sub_26D34856C(v89, v90, &qword_2804FBF18, &qword_26D3A5A18);
  v72 = v91;
  sub_26D34856C(v67, v91, &qword_2804FBF10, &qword_26D3A5A10);
  v73 = v95;
  sub_26D34856C(v69, v95, &qword_2804FBF18, &qword_26D3A5A18);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF20, &qword_26D3A5A20);
  sub_26D34856C(v71, v73 + *(v74 + 48), &qword_2804FBF18, &qword_26D3A5A18);
  sub_26D34856C(v72, v73 + *(v74 + 64), &qword_2804FBF10, &qword_26D3A5A10);
  sub_26D3481A4(v67, &qword_2804FBF10, &qword_26D3A5A10);
  sub_26D3481A4(v70, &qword_2804FBF18, &qword_26D3A5A18);
  sub_26D3481A4(v68, &qword_2804FBF18, &qword_26D3A5A18);
  sub_26D3481A4(v72, &qword_2804FBF10, &qword_26D3A5A10);
  sub_26D3481A4(v71, &qword_2804FBF18, &qword_26D3A5A18);
  return sub_26D3481A4(v69, &qword_2804FBF18, &qword_26D3A5A18);
}

uint64_t sub_26D368B80@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_26D37E6A4();

  result = sub_26D3A09C8();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

void *sub_26D368C18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEF0, &unk_26D3A5988);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  if (*a1)
  {
    if (*(a1 + 8))
    {

      v10 = sub_26D34CD84();

      [v10 pointSize];
      v12 = v11;

      if (qword_2804FAB90 != -1)
      {
        swift_once();
      }

      v34 = a2;
      v13 = qword_2804FB548;
      sub_26D345E5C(0, &qword_2804FB768, 0x277CCABB0);
      v14 = sub_26D3A1348();
      v15 = [v13 stringFromNumber_];

      if (v15)
      {
        v33 = sub_26D3A0F98();
        v17 = v16;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770, &qword_26D3A3DF0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_26D3A35F0;
        *(v22 + 56) = MEMORY[0x277D85048];
        *(v22 + 64) = sub_26D359898();
        *(v22 + 32) = v12;
        v33 = sub_26D3A0FA8();
        v17 = v23;
      }

      KeyPath = swift_getKeyPath();
      sub_26D3A08E8();
      v25 = sub_26D3A08D8();

      v26 = swift_getKeyPath();
      v27 = swift_getKeyPath();
      v35 = 0;
      v28 = swift_getKeyPath();
      sub_26D3A0EA8();
      sub_26D3A0268();
      *&v36[55] = v40;
      *&v36[71] = v41;
      *&v36[87] = v42;
      *&v36[103] = v43;
      *&v36[7] = v37;
      *&v36[23] = v38;
      *&v36[39] = v39;
      v29 = *&v36[80];
      *(v9 + 145) = *&v36[64];
      *(v9 + 161) = v29;
      *(v9 + 177) = *&v36[96];
      v30 = *&v36[16];
      *(v9 + 81) = *v36;
      *(v9 + 97) = v30;
      v31 = *&v36[48];
      *(v9 + 113) = *&v36[32];
      *v9 = v33;
      *(v9 + 1) = v17;
      v9[16] = 0;
      *(v9 + 3) = KeyPath;
      v9[32] = 0;
      *(v9 + 5) = v26;
      *(v9 + 6) = v25;
      *(v9 + 7) = v27;
      *(v9 + 8) = 0x3FE999999999999ALL;
      *(v9 + 9) = v28;
      v9[80] = 1;
      *(v9 + 24) = *&v36[111];
      *(v9 + 129) = v31;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEA0, &qword_26D3A5960);
      sub_26D380C2C();
      sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
      return sub_26D3A0718();
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  else
  {
    v18 = sub_26D3A0928();
    sub_26D3A0638();
    *v6 = xmmword_26D3A3E70;
    v6[16] = 0;
    *(v6 + 3) = v18;
    *(v6 + 4) = 0;
    v6[v4[9]] = 1;
    v6[v4[10]] = 1;
    v19 = &v6[v4[11]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v6[v4[12]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    sub_26D381440(v6, v9, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEA0, &qword_26D3A5960);
    sub_26D380C2C();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol, &unk_26D3A62F0);
    sub_26D3A0718();
    return sub_26D37EEEC(v6, type metadata accessor for TFSymbol);
  }

  return result;
}

uint64_t sub_26D3691F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF00, &qword_26D3A5A00);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v99 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF08, &qword_26D3A5A08);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v99 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF70, &qword_26D3A5A70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v115 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF78, &qword_26D3A5A78);
  MEMORY[0x28223BE20](v9);
  v11 = (&v99 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF80, &qword_26D3A5A80);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v113 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v99 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v99 - v18;
  MEMORY[0x28223BE20](v17);
  v119 = &v99 - v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  *v11 = 0x10000;
  v23 = v11 + v9[12];
  sub_26D348204(a1, &v122);
  v24 = sub_26D3A0928();
  v25 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *v23 = xmmword_26D3A3E80;
  v23[16] = 0;
  *(v23 + 3) = v24;
  *(v23 + 4) = 0;
  v23[v25[9]] = 0;
  v23[v25[10]] = 1;
  v26 = &v23[v25[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v110 = v25;
  v27 = &v23[v25[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = (v11 + v9[13]);
  *v28 = sub_26D383398;
  v28[1] = v20;
  v29 = v11 + v9[14];
  v120 = 0;
  v121 = 1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
  sub_26D3A0D48();
  v30 = BYTE8(v122);
  v31 = v123;
  *v29 = v122;
  v29[8] = v30;
  *(v29 + 2) = v31;
  v32 = v9[15];
  v120 = 0;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
  sub_26D3A0D48();
  *(v11 + v32) = v122;
  v33 = v11 + v9[16];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_2804FAC30 != -1)
  {
    swift_once();
  }

  v122 = xmmword_2804FFD90;
  v34 = sub_26D37E6A4();

  v117 = v34;
  v35 = sub_26D3A09C8();
  v37 = v36;
  v39 = v38;
  v40 = sub_26D3484AC(&qword_2804FBF88, &qword_2804FBF78, &qword_26D3A5A78, &unk_26D3A64F0);
  v111 = v9;
  v107 = v40;
  sub_26D3A0AE8();
  sub_26D37EDCC(v35, v37, v39 & 1);

  sub_26D3481A4(v11, &qword_2804FBF78, &qword_26D3A5A78);
  v41 = 1;
  v42 = v118;
  v43 = v11;
  if (*a1)
  {
    v44 = *(a1 + 56);
    v45 = *(a1 + 64);
    v46 = sub_26D33D278(v44, v45);
    v47 = sub_26D33CD0C(*(a1 + 72), *(a1 + 80));
    sub_26D39C90C(v47, v48);
    if (v49 >= v46)
    {
      v41 = 1;
    }

    else
    {
      v50 = sub_26D33D278(*(a1 + 40), *(a1 + 48));
      v51 = sub_26D33D278(v44, v45);
      v52 = v50 - (v51 + v51) + -2.0;
      v54 = sub_26D33D278(v44, v45);
      v41 = 1;
      if (v54 < v52)
      {
        v100 = v11;
        v55 = MEMORY[0x28223BE20](v53);
        *(&v99 - 2) = a1;
        MEMORY[0x28223BE20](v55);
        *(&v99 - 2) = a1;
        *(&v99 - 4) = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF28, &qword_26D3A5A28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30, &unk_26D3A5A30);
        sub_26D38103C();
        sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30, &unk_26D3A5A30);
        v56 = v101;
        sub_26D3A0958();
        LOBYTE(v120) = 0;
        sub_26D3A0D48();
        v57 = v122;
        v58 = *(&v122 + 1);
        LOBYTE(v122) = 1;
        BYTE8(v122) = v57;
        v123 = v58;
        v59 = sub_26D3484AC(&qword_2804FBF50, &qword_2804FBF00, &qword_26D3A5A00, MEMORY[0x277CDE5B0]);
        v60 = sub_26D37E178();
        v61 = v104;
        v62 = v103;
        sub_26D3A0C08();

        (*(v102 + 8))(v56, v62);
        if (qword_2804FAC00 != -1)
        {
          swift_once();
        }

        v122 = xmmword_2804FFD30;

        v63 = sub_26D3A09C8();
        v65 = v64;
        v67 = v66;
        *&v122 = v62;
        *(&v122 + 1) = &type metadata for TFMenuStyle;
        v123 = v59;
        v124 = v60;
        swift_getOpaqueTypeConformance2();
        v42 = v118;
        v68 = v106;
        sub_26D3A0AE8();
        sub_26D37EDCC(v63, v65, v67 & 1);

        (*(v105 + 8))(v61, v68);
        v41 = 0;
        v43 = v100;
      }
    }
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF90, &qword_26D3A5A88);
  (*(*(v69 - 8) + 56))(v42, v41, 1, v69);
  v70 = swift_allocObject();
  v71 = *(a1 + 48);
  *(v70 + 48) = *(a1 + 32);
  *(v70 + 64) = v71;
  *(v70 + 80) = *(a1 + 64);
  *(v70 + 96) = *(a1 + 80);
  v72 = *(a1 + 16);
  *(v70 + 16) = *a1;
  *(v70 + 32) = v72;
  *v43 = 0x10000;
  v73 = v111;
  v74 = v43 + v111[12];
  sub_26D348204(a1, &v122);
  v75 = sub_26D3A0928();
  v76 = v110;
  sub_26D3A0638();
  *v74 = xmmword_26D3A3E90;
  v74[16] = 0;
  *(v74 + 3) = v75;
  *(v74 + 4) = 0;
  v74[v76[9]] = 0;
  v74[v76[10]] = 1;
  v77 = &v74[v76[11]];
  *v77 = swift_getKeyPath();
  v77[8] = 0;
  v78 = &v74[v76[12]];
  *v78 = swift_getKeyPath();
  v78[8] = 0;
  v79 = (v43 + v73[13]);
  *v79 = sub_26D38339C;
  v79[1] = v70;
  v80 = v43 + v73[14];
  v120 = 0;
  v121 = 1;
  sub_26D3A0D48();
  v81 = BYTE8(v122);
  v82 = v123;
  *v80 = v122;
  v80[8] = v81;
  *(v80 + 2) = v82;
  v83 = v73[15];
  v120 = 0;
  sub_26D3A0D48();
  *(v43 + v83) = v122;
  v84 = v43 + v73[16];
  *v84 = swift_getKeyPath();
  v84[8] = 0;
  if (qword_2804FAC28 != -1)
  {
    swift_once();
  }

  v122 = xmmword_2804FFD80;

  v85 = sub_26D3A09C8();
  v87 = v86;
  v89 = v88;
  v90 = v112;
  sub_26D3A0AE8();
  sub_26D37EDCC(v85, v87, v89 & 1);

  sub_26D3481A4(v43, &qword_2804FBF78, &qword_26D3A5A78);
  v91 = v119;
  v92 = v114;
  sub_26D34856C(v119, v114, &qword_2804FBF80, &qword_26D3A5A80);
  v93 = v115;
  sub_26D34856C(v42, v115, &qword_2804FBF70, &qword_26D3A5A70);
  v94 = v42;
  v95 = v113;
  sub_26D34856C(v90, v113, &qword_2804FBF80, &qword_26D3A5A80);
  v96 = v116;
  sub_26D34856C(v92, v116, &qword_2804FBF80, &qword_26D3A5A80);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF98, &qword_26D3A5A90);
  sub_26D34856C(v93, v96 + *(v97 + 48), &qword_2804FBF70, &qword_26D3A5A70);
  sub_26D34856C(v95, v96 + *(v97 + 64), &qword_2804FBF80, &qword_26D3A5A80);
  sub_26D3481A4(v90, &qword_2804FBF80, &qword_26D3A5A80);
  sub_26D3481A4(v94, &qword_2804FBF70, &qword_26D3A5A70);
  sub_26D3481A4(v91, &qword_2804FBF80, &qword_26D3A5A80);
  sub_26D3481A4(v95, &qword_2804FBF80, &qword_26D3A5A80);
  sub_26D3481A4(v93, &qword_2804FBF70, &qword_26D3A5A70);
  return sub_26D3481A4(v92, &qword_2804FBF80, &qword_26D3A5A80);
}

uint64_t sub_26D369EF0(uint64_t a1, unsigned int *a2)
{
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    (*(v5 + 104))(v7, *a2, v4);

    v9(v7, 0);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A074(uint64_t a1, double a2)
{
  if (qword_2804FAB80 != -1)
  {
    swift_once();
  }

  v8 = qword_2804FFC28;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;

  sub_26D348204(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF60, &qword_26D3A5A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98, &qword_26D3A5408);
  sub_26D3484AC(&qword_2804FBF68, &qword_2804FBF60, &qword_26D3A5A68, MEMORY[0x277D83980]);
  sub_26D346004();
  sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98, &qword_26D3A5408, MEMORY[0x277CDF068]);
  return sub_26D3A0E58();
}

void *sub_26D36A230@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {

    v8 = sub_26D34CD84();

    [v8 pointSize];
    v10 = v9;

    v11 = sub_26D359694(a2 & 1, v10);
    v19 = v12;
    KeyPath = swift_getKeyPath();
    sub_26D3A08E8();
    v18 = sub_26D3A08D8();

    v14 = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v16 = swift_getKeyPath();
    if (a3)
    {
      sub_26D33D278(*(a1 + 40), *(a1 + 48));
      sub_26D33D278(*(a1 + 56), *(a1 + 64));
    }

    sub_26D3A0EA8();
    result = sub_26D3A0268();
    *&v20[55] = v24;
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27;
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *(a4 + 145) = *&v20[64];
    *(a4 + 161) = *&v20[80];
    *(a4 + 177) = *&v20[96];
    *(a4 + 81) = *v20;
    *(a4 + 97) = *&v20[16];
    *(a4 + 113) = *&v20[32];
    *a4 = v11;
    *(a4 + 8) = v19;
    *(a4 + 16) = 0;
    *(a4 + 24) = KeyPath;
    *(a4 + 32) = 0;
    *(a4 + 40) = v14;
    *(a4 + 48) = v18;
    *(a4 + 56) = v15;
    *(a4 + 64) = 0x3FE999999999999ALL;
    *(a4 + 72) = v16;
    *(a4 + 80) = 1;
    *(a4 + 192) = *(&v27 + 1);
    *(a4 + 129) = *&v20[48];
    *(a4 + 200) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A54C(double *a1, uint64_t a2)
{
  v3 = *a1;
  sub_26D3A10C8();
  sub_26D348204(a2, v15);
  v4 = sub_26D3A10B8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(a2 + 48);
  *(v5 + 64) = *(a2 + 32);
  *(v5 + 80) = v7;
  *(v5 + 96) = *(a2 + 64);
  *(v5 + 112) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v5 + 32) = *a2;
  *(v5 + 48) = v8;
  *(v5 + 120) = v3;
  sub_26D348204(a2, v15);
  v9 = sub_26D3A10B8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v6;
  v11 = *(a2 + 48);
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 64);
  *(v10 + 112) = *(a2 + 80);
  v12 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v12;
  *(v10 + 120) = v3;
  sub_26D3A0E28();
  v15[0] = sub_26D359694(1, v3);
  v15[1] = v13;
  sub_26D37E6A4();
  return sub_26D3A0DD8();
}

uint64_t sub_26D36A6CC@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 8))
  {

    v5 = sub_26D34CA00();

    if (v5 >> 62)
    {
LABEL_16:
      v6 = sub_26D3A1488();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    do
    {
      v8 = v7;
      if (v6 == v7)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_26D33E7C4(v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      [v9 pointSize];
      v12 = v11;

      v7 = v8 + 1;
    }

    while (v12 != a3);

    *a2 = v6 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A844(_BYTE *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26D3A12F8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v13 = *(a5 + 8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      *v12 = a2;
      (*(v9 + 104))(v12, *MEMORY[0x277D74F50], v8);

      v14(v12, 0);

      return (*(v9 + 8))(v12, v8);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

void *sub_26D36AA34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFA0, &qword_26D3A5A98);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D36AB78(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = sub_26D3A0D48();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_26D36AB78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v94 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFA8, &qword_26D3A5AA0);
  MEMORY[0x28223BE20](v93);
  v88 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB0, &qword_26D3A5AA8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v76 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB8, &qword_26D3A5AB0);
  MEMORY[0x28223BE20](v98);
  v97 = &v76 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80, &qword_26D3A5658);
  v85 = *(v100 - 8);
  v11 = MEMORY[0x28223BE20](v100);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v76 - v14;
  v15 = sub_26D3A0208();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFC0, &qword_26D3A5AB8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v86 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v87 = &v76 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  MEMORY[0x28223BE20](v26);
  v101 = &v76 - v29;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFC8, &qword_26D3A5AC0);
  MEMORY[0x28223BE20](v90);
  v92 = &v76 - v30;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFD0, &qword_26D3A5AC8);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v32 = &v76 - v31;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFD8, &qword_26D3A5AD0);
  MEMORY[0x28223BE20](v89);
  v80 = &v76 - v33;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFE0, &qword_26D3A5AD8);
  v83 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v82 = &v76 - v34;
  v35 = a1;
  v36 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if (v37)
  {
    goto LABEL_5;
  }

  v38 = 2;
  if (*a1)
  {
    v38 = 3;
  }

  if (v38 < v36)
  {
LABEL_5:
    v82 = v28;
    v83 = v7;
    v95 = v9;
    v79 = *(type metadata accessor for TFTextAlignmentControl(0) + 28);
    sub_26D33D444(v20);
    v39 = v16;
    v40 = *(v16 + 104);
    v41 = v96;
    LODWORD(v78) = *MEMORY[0x277CDFA88];
    v77 = v40;
    v40(v96);
    v42 = sub_26D3A01F8();
    v43 = *(v39 + 8);
    v43(v41, v15);
    v80 = (v39 + 8);
    v43(v20, v15);
    v99 = v13;
    v81 = v15;
    v44 = v84;
    if (v42)
    {
      sub_26D36BE0C(0, v84);
    }

    else
    {
      sub_26D36C81C(0, v84);
    }

    sub_26D34856C(v44, v97, &qword_2804FBC80, &qword_26D3A5658);
    swift_storeEnumTagMultiPayload();
    sub_26D38126C();
    sub_26D3A0718();
    sub_26D3481A4(v44, &qword_2804FBC80, &qword_26D3A5658);
    sub_26D36C308(0, v99);
    sub_26D33D444(v20);
    v45 = v96;
    v46 = v81;
    v77(v96, v78, v81);
    v47 = sub_26D3A01F8();
    v43(v45, v46);
    v43(v20, v46);
    if (v47)
    {
      sub_26D36C81C(0, v44);
    }

    else
    {
      sub_26D36BE0C(0, v44);
    }

    v48 = v95;
    v49 = v82;
    sub_26D34856C(v44, v97, &qword_2804FBC80, &qword_26D3A5658);
    swift_storeEnumTagMultiPayload();
    sub_26D3A0718();
    sub_26D3481A4(v44, &qword_2804FBC80, &qword_26D3A5658);
    if (*v35 == 1)
    {
      sub_26D36CD18(0, v44);
      sub_26D347238(v44, v48, &qword_2804FBC80, &qword_26D3A5658);
      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    (*(v85 + 56))(v48, v50, 1, v100);
    v51 = v87;
    sub_26D34856C(v101, v87, &qword_2804FBFC0, &qword_26D3A5AB8);
    sub_26D34856C(v99, v44, &qword_2804FBC80, &qword_26D3A5658);
    v52 = v86;
    sub_26D34856C(v49, v86, &qword_2804FBFC0, &qword_26D3A5AB8);
    v53 = v48;
    v54 = v83;
    sub_26D34856C(v53, v83, &qword_2804FBFB0, &qword_26D3A5AA8);
    v55 = v88;
    sub_26D34856C(v51, v88, &qword_2804FBFC0, &qword_26D3A5AB8);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFF0, &qword_26D3A5AE0);
    sub_26D34856C(v44, v55 + v56[12], &qword_2804FBC80, &qword_26D3A5658);
    sub_26D34856C(v52, v55 + v56[16], &qword_2804FBFC0, &qword_26D3A5AB8);
    sub_26D34856C(v54, v55 + v56[20], &qword_2804FBFB0, &qword_26D3A5AA8);
    sub_26D3481A4(v54, &qword_2804FBFB0, &qword_26D3A5AA8);
    sub_26D3481A4(v52, &qword_2804FBFC0, &qword_26D3A5AB8);
    sub_26D3481A4(v44, &qword_2804FBC80, &qword_26D3A5658);
    sub_26D3481A4(v51, &qword_2804FBFC0, &qword_26D3A5AB8);
    sub_26D34856C(v55, v92, &qword_2804FBFA8, &qword_26D3A5AA0);
    swift_storeEnumTagMultiPayload();
    v57 = sub_26D381328();
    v58 = sub_26D37E178();
    v103 = v89;
    v104 = &type metadata for TFMenuStyle;
    v105 = v57;
    v106 = v58;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC008, &qword_2804FBFA8, &qword_26D3A5AA0, MEMORY[0x277CE14C0]);
    sub_26D3A0718();
    sub_26D3481A4(v55, &qword_2804FBFA8, &qword_26D3A5AA0);
    sub_26D3481A4(v95, &qword_2804FBFB0, &qword_26D3A5AA8);
    sub_26D3481A4(v49, &qword_2804FBFC0, &qword_26D3A5AB8);
    sub_26D3481A4(v99, &qword_2804FBC80, &qword_26D3A5658);
    return sub_26D3481A4(v101, &qword_2804FBFC0, &qword_26D3A5AB8);
  }

  else
  {
    v60 = MEMORY[0x28223BE20](v36);
    *(&v76 - 2) = a1;
    MEMORY[0x28223BE20](v60);
    *(&v76 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC010, &qword_26D3A5AE8);
    sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
    sub_26D3484AC(&qword_2804FC018, &qword_2804FC010, &qword_26D3A5AE8, MEMORY[0x277CE14C0]);
    sub_26D3A0958();
    if (qword_2804FACE8 != -1)
    {
      swift_once();
    }

    v103 = qword_2804FFF00;
    v104 = *algn_2804FFF08;
    sub_26D37E6A4();

    v61 = sub_26D3A09C8();
    v63 = v62;
    v65 = v64;
    sub_26D3484AC(&qword_2804FC000, &qword_2804FBFD0, &qword_26D3A5AC8, MEMORY[0x277CDE5B0]);
    v66 = v80;
    v67 = v79;
    sub_26D3A0AE8();
    sub_26D37EDCC(v61, v63, v65 & 1);

    (*(v78 + 8))(v32, v67);
    v102[0] = 0;
    sub_26D3A0D48();
    v68 = v103;
    v69 = v104;
    LOBYTE(v103) = 0;
    LOBYTE(v104) = v68;
    v105 = v69;
    v70 = sub_26D381328();
    v71 = sub_26D37E178();
    v72 = v82;
    v73 = v89;
    sub_26D3A0C08();

    sub_26D3481A4(v66, &qword_2804FBFD8, &qword_26D3A5AD0);
    v74 = v83;
    v75 = v91;
    v83[2](v92, v72, v91);
    swift_storeEnumTagMultiPayload();
    v103 = v73;
    v104 = &type metadata for TFMenuStyle;
    v105 = v70;
    v106 = v71;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC008, &qword_2804FBFA8, &qword_26D3A5AA0, MEMORY[0x277CE14C0]);
    sub_26D3A0718();
    return (*(v74 + 8))(v72, v75);
  }
}

uint64_t sub_26D36BA08@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB0, &qword_26D3A5AA8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80, &qword_26D3A5658);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v38 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v38 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = 1;
  v25 = &v38 - v24;
  sub_26D36BE0C(1, &v38 - v24);
  v26 = v22;
  sub_26D36C308(1, v22);
  v27 = v19;
  sub_26D36C81C(1, v19);
  if (*a1 == 1)
  {
    sub_26D36CD18(1, v16);
    sub_26D347238(v16, v43, &qword_2804FBC80, &qword_26D3A5658);
    v23 = 0;
  }

  v28 = v16;
  v29 = v43;
  (*(v9 + 56))(v43, v23, 1, v8);
  v38 = v28;
  v39 = v25;
  v30 = v28;
  sub_26D34856C(v25, v28, &qword_2804FBC80, &qword_26D3A5658);
  v31 = v40;
  sub_26D34856C(v26, v40, &qword_2804FBC80, &qword_26D3A5658);
  v32 = v27;
  v33 = v41;
  sub_26D34856C(v27, v41, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v29, v6, &qword_2804FBFB0, &qword_26D3A5AA8);
  v34 = v42;
  sub_26D34856C(v30, v42, &qword_2804FBC80, &qword_26D3A5658);
  v35 = v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC020, &qword_26D3A5AF0);
  sub_26D34856C(v31, v34 + v36[12], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v33, v34 + v36[16], &qword_2804FBC80, &qword_26D3A5658);
  sub_26D34856C(v35, v34 + v36[20], &qword_2804FBFB0, &qword_26D3A5AA8);
  sub_26D3481A4(v29, &qword_2804FBFB0, &qword_26D3A5AA8);
  sub_26D3481A4(v32, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v26, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v39, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v35, &qword_2804FBFB0, &qword_26D3A5AA8);
  sub_26D3481A4(v33, &qword_2804FBC80, &qword_26D3A5658);
  sub_26D3481A4(v31, &qword_2804FBC80, &qword_26D3A5658);
  return sub_26D3481A4(v38, &qword_2804FBC80, &qword_26D3A5658);
}

uint64_t sub_26D36BE0C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v34);
  v36 = &v33 - v10;
  v11 = 0;
  v12 = 0;
  if (a1)
  {
    if (qword_2804FAC08 != -1)
    {
      swift_once();
    }

    v11 = qword_2804FFD40;
    v12 = *algn_2804FFD48;
  }

  v35 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_26D36D914(KeyPath);
  v16 = v15;
  v18 = v17;

  sub_26D3A0638();
  *v9 = xmmword_26D3A3EA0;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = a1 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v22 = sub_26D34862C();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_26D33D0B8(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v36;
    sub_26D3814AC(v9, v36, type metadata accessor for TFToggle);
    v28 = (v27 + *(v34 + 36));
    *v28 = v25;
    v28[1] = sub_26D3834C0;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v35;
    sub_26D39FF68();

    v30 = sub_26D3A1298();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = 0;
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = sub_26D34862C();
    }

    if (qword_2804FAC08 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v31 & 1, 0, qword_2804FFD40, *algn_2804FFD48, v37);
    return sub_26D3481A4(v27, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36C308@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v7 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v35);
  v37 = &v33[-v10];
  v11 = 0;
  v12 = 0;
  v34 = a1;
  if (a1)
  {
    if (qword_2804FAC10 != -1)
    {
      swift_once();
    }

    v11 = qword_2804FFD50;
    v12 = *algn_2804FFD58;
  }

  v36 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_26D36D914(KeyPath);
  v16 = v15;
  v18 = v17;

  sub_26D3A0638();
  *v9 = 0xD000000000000010;
  v9[1] = 0x800000026D3A8190;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = v34 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v22 = sub_26D34862C();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_26D33D0B8(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v37;
    sub_26D3814AC(v9, v37, type metadata accessor for TFToggle);
    v28 = &v27[*(v35 + 36)];
    *v28 = v25;
    v28[1] = sub_26D3834C0;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v36;
    sub_26D39FF68();

    v30 = sub_26D3A1298();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = 0;
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = sub_26D34862C();
    }

    if (qword_2804FAC10 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v31 & 1, 0, qword_2804FFD50, *algn_2804FFD58, v38);
    return sub_26D3481A4(v27, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36C81C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v34);
  v36 = &v33 - v10;
  v11 = 0;
  v12 = 0;
  if (a1)
  {
    if (qword_2804FAC18 != -1)
    {
      swift_once();
    }

    v11 = qword_2804FFD60;
    v12 = *algn_2804FFD68;
  }

  v35 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_26D36D914(KeyPath);
  v16 = v15;
  v18 = v17;

  sub_26D3A0638();
  *v9 = xmmword_26D3A3EB0;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = a1 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v22 = sub_26D34862C();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_26D33D0B8(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v36;
    sub_26D3814AC(v9, v36, type metadata accessor for TFToggle);
    v28 = (v27 + *(v34 + 36));
    *v28 = v25;
    v28[1] = sub_26D3834C0;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v35;
    sub_26D39FF68();

    v30 = sub_26D3A1298();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = 0;
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = sub_26D34862C();
    }

    if (qword_2804FAC18 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v31 & 1, 0, qword_2804FFD60, *algn_2804FFD68, v37);
    return sub_26D3481A4(v27, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36CD18@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v7 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0, &unk_26D3A51A8);
  MEMORY[0x28223BE20](v35);
  v37 = &v33[-v10];
  v11 = 0;
  v12 = 0;
  v34 = a1;
  if (a1)
  {
    if (qword_2804FAC20 != -1)
    {
      swift_once();
    }

    v11 = qword_2804FFD70;
    v12 = *algn_2804FFD78;
  }

  v36 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_26D36D914(KeyPath);
  v16 = v15;
  v18 = v17;

  sub_26D3A0638();
  *v9 = 0xD000000000000014;
  v9[1] = 0x800000026D3A8170;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = v34 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v22 = sub_26D34862C();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_26D33D0B8(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v37;
    sub_26D3814AC(v9, v37, type metadata accessor for TFToggle);
    v28 = &v27[*(v35 + 36)];
    *v28 = v25;
    v28[1] = sub_26D3834C0;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v36;
    sub_26D39FF68();

    v30 = sub_26D3A1298();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = 0;
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v29, &qword_2804FB398, &qword_26D3A33C0);
      v31 = sub_26D34862C();
    }

    if (qword_2804FAC20 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v31 & 1, 0, qword_2804FFD70, *algn_2804FFD78, v38);
    return sub_26D3481A4(v27, &qword_2804FB9C0, &unk_26D3A51A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36D22C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D36D388();
  v4 = v3;
  v5 = sub_26D3A0928();
  v6 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + v6[9]) = 1;
  *(a1 + v6[10]) = 1;
  v7 = a1 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v6[12];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  v10 = a1 + v9[9];
  sub_26D3A0D48();
  *v10 = v15;
  *(v10 + 8) = v16;
  v11 = a1 + v9[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v9[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a1 + v9[12];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_26D36D388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v21 = v0;
  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v13 = sub_26D3A1298();
    v14 = *(*(v13 - 8) + 48);
    if (v14(v12, 1, v13))
    {

      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
      v15 = sub_26D34862C();

      if (v15)
      {
        return 0x696C612E74786574;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v14(v10, 1, v13))
    {

      sub_26D3481A4(v10, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      sub_26D3A11F8();
      sub_26D3481A4(v10, &qword_2804FB398, &qword_26D3A33C0);
      v16 = sub_26D34862C();

      if (v16)
      {
        return 0xD000000000000010;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v14(v7, 1, v13))
    {

      sub_26D3481A4(v7, &qword_2804FB398, &qword_26D3A33C0);
      goto LABEL_12;
    }

    sub_26D3A11F8();
    sub_26D3481A4(v7, &qword_2804FB398, &qword_26D3A33C0);
    v18 = sub_26D34862C();

    if ((v18 & 1) == 0)
    {
LABEL_12:
      swift_getKeyPath();
      swift_getKeyPath();

      sub_26D39FF68();

      if (v14(v4, 1, v13))
      {

        sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
      }

      else
      {
        sub_26D3A11F8();
        sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
        v19 = sub_26D34862C();

        if ((v19 & 1) != 0 && *v21 == 1)
        {
          return 0xD000000000000014;
        }
      }
    }

    return 0x696C612E74786574;
  }

  type metadata accessor for TextFormattingState(0);
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D36D914(uint64_t a1)
{
  v3 = type metadata accessor for TFTextAlignmentControl(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D381440(v1, v6, type metadata accessor for TFTextAlignmentControl);
  sub_26D3A10C8();

  v7 = sub_26D3A10B8();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  v12 = v11;
  sub_26D3814AC(v6, v10 + v8, type metadata accessor for TFTextAlignmentControl);
  *(v10 + v9) = a1;
  sub_26D381440(v17[0], v6, type metadata accessor for TFTextAlignmentControl);
  v13 = a1;

  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  sub_26D3814AC(v6, v15 + v8, type metadata accessor for TFTextAlignmentControl);
  *(v15 + v9) = v13;
  sub_26D3A0E28();
  return v17[1];
}

uint64_t sub_26D36DB20@<X0>(_BYTE *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v6 = sub_26D3A1298();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    result = sub_26D3481A4(v5, &qword_2804FB398, &qword_26D3A33C0);
    v8 = 0;
  }

  else
  {
    sub_26D3A11F8();
    sub_26D3481A4(v5, &qword_2804FB398, &qword_26D3A33C0);
    v8 = sub_26D34862C();
  }

  *a2 = v8 & 1;
  return result;
}

uint64_t sub_26D36DCA8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    v11 = *a5;
  }

  else
  {
    v11 = *MEMORY[0x277D771B8];
  }

  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D74EE0], v7);
  sub_26D350AB4(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26D36DDCC@<X0>(uint64_t a1@<X2>, _BYTE *a3@<X8>)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 8);

    v4 = swift_readAtKeyPath();
    *a3 = *v5;
    v4(v7, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36DEAC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 8))
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36DF68@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = sub_26D3A0608();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v9 = MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_2804FACA0 != -1)
    {
      swift_once();
    }

    v18 = qword_2804FFE70;
    v19 = *algn_2804FFE78;
  }

  sub_26D3A10C8();
  v20 = sub_26D3A10B8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = v45;

  v24 = v47;
  sub_26D37DF24(v47, a5, BYTE1(a5) & 1);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = v46;
  *(v26 + 32) = v23;
  *(v26 + 40) = v27;
  *(v26 + 48) = v24;
  *(v26 + 56) = a5;
  *(v26 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v28 = v58;
  v29 = v59;
  LOBYTE(v22) = v60;
  v30 = v57;
  sub_26D3A0638();
  *v30 = xmmword_26D3A3EC0;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v28;
  *(v32 + 1) = v29;
  v32[16] = v22;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_2804FACA0 != -1)
  {
    swift_once();
  }

  v58 = qword_2804FFE70;
  v59 = *algn_2804FFE78;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
  sub_26D37E6A4();
  v34 = v49;
  sub_26D3A0AF8();
  v35 = v44;
  sub_26D3A05F8();
  v36 = v50;
  sub_26D3A0238();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_26D3481A4(v34, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3A05E8();
  v39 = v52;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v36, &qword_2804FB820, &qword_26D3A4F60);
  v58 = MEMORY[0x277D84F90];
  v55 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  sub_26D3A1388();
  v40 = v54;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v39, &qword_2804FB820, &qword_26D3A4F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v58 = v41;
  sub_26D3A1388();
  sub_26D3A0238();
  v37(v35, v38);
  sub_26D3481A4(v40, &qword_2804FB820, &qword_26D3A4F60);
  return sub_26D37EEEC(v57, type metadata accessor for TFToggle);
}

uint64_t sub_26D36E5F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = sub_26D3A0608();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v9 = MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_2804FAC98 != -1)
    {
      swift_once();
    }

    v18 = qword_2804FFE60;
    v19 = *algn_2804FFE68;
  }

  sub_26D3A10C8();
  v20 = sub_26D3A10B8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = v45;

  v24 = v47;
  sub_26D37DF24(v47, a5, BYTE1(a5) & 1);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = v46;
  *(v26 + 32) = v23;
  *(v26 + 40) = v27;
  *(v26 + 48) = v24;
  *(v26 + 56) = a5;
  *(v26 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v28 = v58;
  v29 = v59;
  LOBYTE(v22) = v60;
  v30 = v57;
  sub_26D3A0638();
  *v30 = xmmword_26D3A3ED0;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v28;
  *(v32 + 1) = v29;
  v32[16] = v22;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_2804FAC98 != -1)
  {
    swift_once();
  }

  v58 = qword_2804FFE60;
  v59 = *algn_2804FFE68;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle, &unk_26D3A64A0);
  sub_26D37E6A4();
  v34 = v49;
  sub_26D3A0AF8();
  v35 = v44;
  sub_26D3A05F8();
  v36 = v50;
  sub_26D3A0238();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_26D3481A4(v34, &qword_2804FB820, &qword_26D3A4F60);
  sub_26D3A05E8();
  v39 = v52;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v36, &qword_2804FB820, &qword_26D3A4F60);
  v58 = MEMORY[0x277D84F90];
  v55 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918, &qword_26D3A66F0);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918, &qword_26D3A66F0, MEMORY[0x277D83970]);
  sub_26D3A1388();
  v40 = v54;
  sub_26D3A0228();
  v37(v35, v38);
  sub_26D3481A4(v39, &qword_2804FB820, &qword_26D3A4F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920, &qword_26D3A50A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v58 = v41;
  sub_26D3A1388();
  sub_26D3A0238();
  v37(v35, v38);
  sub_26D3481A4(v40, &qword_2804FB820, &qword_26D3A4F60);
  return sub_26D37EEEC(v57, type metadata accessor for TFToggle);
}

uint64_t sub_26D36EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {

    sub_26D3534B0(a8 & 1);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC068, &qword_26D3A5BD0);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC070, &qword_26D3A5BD8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = *(v13 + 48);
  v17 = sub_26D3A0078();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *v15 = 0;
  v15[8] = 1;
  *(v15 + 9) = 257;
  v15[11] = 0;
  v32[1] = v12[13];
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4 & 0x1FF;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30, &unk_26D3A5A30);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
  sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30, &unk_26D3A5A30);
  sub_26D3A0958();
  v42 = 0;
  sub_26D3A0D48();
  v18 = v39;
  v19 = v40;
  LOBYTE(v39) = 0;
  LOBYTE(v40) = v18;
  v41 = v19;
  sub_26D3484AC(&qword_2804FC078, &qword_2804FC068, &qword_26D3A5BD0, MEMORY[0x277CDE5B0]);
  sub_26D37E178();
  v20 = v33;
  sub_26D3A0C08();

  (*(v9 + 8))(v11, v20);
  v21 = &v15[v12[14]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v15[v12[15]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v15[v12[16]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v15[v12[17]];
  v42 = 0;
  sub_26D3A0D48();
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  if (qword_2804FACF0 != -1)
  {
    swift_once();
  }

  v39 = qword_2804FFF10;
  v40 = *algn_2804FFF18;
  sub_26D37E6A4();

  v26 = sub_26D3A09C8();
  v28 = v27;
  v30 = v29;
  sub_26D3484AC(&qword_2804FC080, &qword_2804FC070, &qword_26D3A5BD8, &unk_26D3A6540);
  sub_26D3A0AE8();
  sub_26D37EDCC(v26, v28, v30 & 1);

  return sub_26D3481A4(v15, &qword_2804FC070, &qword_26D3A5BD8);
}

uint64_t sub_26D36F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_2804FAB88 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 41) = BYTE1(a4) & 1;

  sub_26D37DF24(a3, a4, BYTE1(a4) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF60, &qword_26D3A5A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98, &qword_26D3A5408);
  sub_26D3484AC(&qword_2804FBF68, &qword_2804FBF60, &qword_26D3A5A68, MEMORY[0x277D83980]);
  sub_26D346004();
  sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98, &qword_26D3A5408, MEMORY[0x277CDF068]);
  return sub_26D3A0E58();
}

uint64_t sub_26D36F3D8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26D3A0928();
  v4 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a2 = 0xD000000000000021;
  *(a2 + 8) = 0x800000026D3A81B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + v4[9]) = 1;
  *(a2 + v4[10]) = 1;
  v5 = a2 + v4[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  v8 = a2 + v7[9];
  sub_26D3A0D48();
  *v8 = v13;
  *(v8 + 8) = v14;
  v9 = a2 + v7[10];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a2 + v7[11];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v7[12];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_26D36F534(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a5 >> 8) & 1;
  v10 = *a1;
  sub_26D3A10C8();

  sub_26D37DF24(a4, a5, v9);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 57) = v9;
  *(v12 + 64) = v10;

  sub_26D37DF24(a4, a5, v9);
  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 57) = v9;
  *(v15 + 64) = v10;
  sub_26D3A0E28();
  sub_26D359694(1, v10);
  sub_26D37E6A4();
  return sub_26D3A0DD8();
}

uint64_t sub_26D36F6CC@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>, double a4@<D0>)
{
  if (a1)
  {

    v6 = COERCE_DOUBLE(sub_26D351C28());
    v8 = v7;

    v10 = v6 == a4;
    if (v8)
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

_BYTE *sub_26D36F79C(_BYTE *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*result == 1)
  {
    if (a5)
    {

      sub_26D351EAC(*&a2, 0);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

void *sub_26D36F878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC088, &qword_26D3A5BE0);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D36F9BC(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = sub_26D3A0D48();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_26D36F9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC090, &qword_26D3A5BE8);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC098, &qword_26D3A5BF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0A0, &qword_26D3A5BF8);
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v29 - v10;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 33);
  v15 = sub_26D33CED8(v12, v13 | (v14 << 8));
  if ((v16 & 1) == 0 && (v15 == 1 || v15 == 2 && (*a1 & 1) == 0))
  {
    sub_26D36FEDC(v11);
    v25 = v30;
    (*(v9 + 16))(v8, v11, v30);
    swift_storeEnumTagMultiPayload();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8, &qword_26D3A5C08);
    v27 = sub_26D381A14();
    v28 = sub_26D37E178();
    v33 = v26;
    v34 = &type metadata for TFMenuStyle;
    v35 = v27;
    v36 = v28;
    swift_getOpaqueTypeConformance2();
    sub_26D381AFC(&qword_2804FC0D8, &qword_2804FC090, &qword_26D3A5BE8, sub_26D37E08C);
    sub_26D3A0718();
    return (*(v9 + 8))(v11, v25);
  }

  else
  {
    if (*a1)
    {
      v17 = &unk_287EB6170;
    }

    else
    {
      if (qword_2804FAB78 != -1)
      {
        swift_once();
      }
    }

    v37 = v17;
    v38 = *(a1 + 8);
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    sub_26D34856C(&v38, &v33, &qword_2804FB8D8, &qword_26D3A5070);
    sub_26D37DF24(v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB750, &qword_26D3A5C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
    sub_26D3484AC(&qword_2804FC0A8, &qword_2804FB750, &qword_26D3A5C00, MEMORY[0x277D83980]);
    sub_26D37E08C();
    sub_26D3819C0();
    sub_26D3A0E68();
    v20 = v32;
    (*(v3 + 16))(v8, v5, v32);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8, &qword_26D3A5C08);
    v22 = sub_26D381A14();
    v23 = sub_26D37E178();
    v33 = v21;
    v34 = &type metadata for TFMenuStyle;
    v35 = v22;
    v36 = v23;
    swift_getOpaqueTypeConformance2();
    sub_26D381AFC(&qword_2804FC0D8, &qword_2804FC090, &qword_26D3A5BE8, sub_26D37E08C);
    sub_26D3A0718();
    return (*(v3 + 8))(v5, v20);
  }
}

uint64_t sub_26D36FEDC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0D0, &qword_26D3A5C10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0B8, &qword_26D3A5C08);
  MEMORY[0x28223BE20](v16[0]);
  v7 = v16 - v6;
  v18 = v1;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0E0, &qword_26D3A5C18);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70, &qword_26D3A53F8, &unk_26D3A6418);
  sub_26D3484AC(&qword_2804FC0E8, &qword_2804FC0E0, &qword_26D3A5C18, MEMORY[0x277CE14C0]);
  sub_26D3A0958();
  if (qword_2804FACF8 != -1)
  {
    swift_once();
  }

  v19 = qword_2804FFF20;
  v20 = *algn_2804FFF28;
  sub_26D37E6A4();

  v8 = sub_26D3A09C8();
  v10 = v9;
  v12 = v11;
  sub_26D3484AC(&qword_2804FC0C8, &qword_2804FC0D0, &qword_26D3A5C10, MEMORY[0x277CDE5B0]);
  sub_26D3A0AE8();
  sub_26D37EDCC(v8, v10, v12 & 1);

  (*(v3 + 8))(v5, v2);
  v22[0] = 0;
  sub_26D3A0D48();
  v13 = v19;
  v14 = v20;
  LOBYTE(v19) = 0;
  LOBYTE(v20) = v13;
  v21 = v14;
  sub_26D381A14();
  sub_26D37E178();
  sub_26D3A0C08();

  return sub_26D3481A4(v7, &qword_2804FC0B8, &qword_26D3A5C08);
}

uint64_t sub_26D37024C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v42 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v42);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v43 = *a1;
  v49 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  sub_26D3A10C8();
  sub_26D34856C(&v49, &v46, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D37DF24(v8, v9, v10);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a2 + 32);
  *(v12 + 66) = v7;
  sub_26D34856C(&v49, &v46, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D37DF24(v8, v9, v10);
  v15 = sub_26D3A10B8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  v17 = *(a2 + 16);
  *(v16 + 32) = *a2;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a2 + 32);
  *(v16 + 66) = v7;
  sub_26D3A0E28();
  v19 = v46;
  v18 = v47;
  v20 = *&aListBullistDas[8 * v7];
  v21 = v48;
  v22 = v9 | (v10 << 8);
  v23 = *&aListBullistDas[8 * v7 + 32];
  v24 = sub_26D33CED8(v8, v22);
  if (v25)
  {
    v26 = v20;
    v27 = 0;
    v28 = 0;
    v29 = v43;
  }

  else
  {
    v29 = v43;
    if (v24 == 1 || v24 == 2 && (*a2 & 1) == 0)
    {
      if (v43 > 1)
      {
        if (v43 == 2)
        {
          v26 = v20;
          if (qword_2804FAC78 != -1)
          {
            swift_once();
          }

          v30 = &qword_2804FFE20;
        }

        else
        {
          v26 = v20;
          if (qword_2804FAC60 != -1)
          {
            swift_once();
          }

          v30 = &qword_2804FFDF0;
        }
      }

      else if (v43)
      {
        v26 = v20;
        if (qword_2804FAC70 != -1)
        {
          swift_once();
        }

        v30 = &qword_2804FFE10;
      }

      else
      {
        v26 = v20;
        if (qword_2804FAC68 != -1)
        {
          swift_once();
        }

        v30 = &qword_2804FFE00;
      }

      v27 = *v30;
      v28 = v30[1];
    }

    else
    {
      v26 = v20;
      v27 = 0;
      v28 = 0;
    }
  }

  v31 = v42;
  sub_26D3A0638();
  *v6 = v26;
  v6[1] = v23;
  v32 = (v6 + v31[6]);
  *v32 = v27;
  v32[1] = v28;
  *(v6 + v31[7]) = 0;
  v33 = v6 + v31[8];
  *v33 = v19;
  *(v33 + 1) = v18;
  v33[16] = v21;
  v34 = v6 + v31[9];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v46 = v19;
  v47 = v18;
  v48 = v21;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v45, v35);
  v36 = v45;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (qword_2804FAC78 != -1)
      {
        swift_once();
      }

      v37 = &qword_2804FFE20;
    }

    else
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v37 = &qword_2804FFDF0;
    }
  }

  else if (v29)
  {
    if (qword_2804FAC70 != -1)
    {
      swift_once();
    }

    v37 = &qword_2804FFE10;
  }

  else
  {
    if (qword_2804FAC68 != -1)
    {
      swift_once();
    }

    v37 = &qword_2804FFE00;
  }

  v38 = *v37;
  v39 = v37[1];

  sub_26D35DCA8(v36, 0, v38, v39, v44);

  return sub_26D37EEEC(v6, type metadata accessor for TFToggle);
}

uint64_t sub_26D37079C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0F0, &qword_26D3A5C20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v103 = &v89[-v6];
  v96 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v96);
  v97 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820, &qword_26D3A4F60);
  v9 = MEMORY[0x28223BE20](v8);
  v102 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v99 = &v89[-v11];
  v12 = sub_26D3A0E48();
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v98 = &v89[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v112 = &v89[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0F8, &qword_26D3A5C28);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v89[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC090, &qword_26D3A5BE8);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24);
  v113 = &v89[-v28];
  v90 = *a1;
  v109 = v5;
  v110 = v4;
  v107 = v27;
  v108 = v19;
  v104 = v26;
  if (v90)
  {
    v29 = &unk_287EB6170;
  }

  else
  {
    if (qword_2804FAB78 != -1)
    {
      swift_once();
    }
  }

  v105 = v21;
  v106 = v23;
  v111 = a2;
  v118 = v29;
  v30 = *(a1 + 1);
  v31 = *(a1 + 3);
  v32 = a1[32];
  v33 = a1[33];
  v34 = swift_allocObject();
  v35 = *(a1 + 1);
  *(v34 + 16) = *a1;
  *(v34 + 32) = v35;
  v95 = a1;
  *(v34 + 48) = *(a1 + 16);

  v94 = v31;
  v93 = v32;
  v92 = v33;
  sub_26D37DF24(v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB750, &qword_26D3A5C00);
  sub_26D3484AC(&qword_2804FC0A8, &qword_2804FB750, &qword_26D3A5C00, MEMORY[0x277D83980]);
  sub_26D37E08C();
  sub_26D3819C0();
  sub_26D3A0E68();
  if (v30)
  {

    v36 = sub_26D3511C4();
    v91 = v30;

    v37 = (v36 + 32);
    v38 = *(v36 + 2);
    while (1)
    {
      if (!v38)
      {

        v40 = 1;
        v41 = v110;
        v42 = v111;
        v44 = v108;
        v43 = v109;
        v46 = v106;
        v45 = v107;
        v47 = v105;
        goto LABEL_25;
      }

      if (*v37 > 2u)
      {
        break;
      }

      v39 = sub_26D3A1518();

      ++v37;
      --v38;
      if (v39)
      {
        goto LABEL_14;
      }
    }

LABEL_14:

    sub_26D3A0E38();
    sub_26D3A10C8();
    v48 = sub_26D3A10B8();
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D85700];
    *(v49 + 16) = v48;
    *(v49 + 24) = v50;

    v51 = v94;
    v52 = v93;
    v53 = v92;
    sub_26D37DF24(v94, v93, v92);
    v54 = sub_26D3A10B8();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v50;
    v56 = v95;
    v57 = *(v95 + 1);
    *(v55 + 32) = *v95;
    *(v55 + 48) = v57;
    *(v55 + 64) = *(v56 + 16);
    sub_26D3A0E28();
    v58 = v118;
    v59 = v119;
    v60 = v120;
    v61 = sub_26D33CED8(v51, v52 | (v53 << 8));
    v62 = v97;
    if ((v63 & 1) == 0 && (v61 == 1 || v61 == 2 && (v90 & 1) == 0))
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v64 = qword_2804FFDF0;
      v65 = *algn_2804FFDF8;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v66 = v96;
    sub_26D3A0638();
    *v62 = xmmword_26D3A3EE0;
    v67 = (v62 + v66[6]);
    *v67 = v64;
    v67[1] = v65;
    *(v62 + v66[7]) = 1;
    v68 = v62 + v66[8];
    *v68 = v58;
    *(v68 + 1) = v59;
    v68[16] = v60;
    v69 = v62 + v66[9];
    *v69 = swift_getKeyPath();
    v69[8] = 0;
    v115 = v58;
    v116 = v59;
    v117 = v60;

    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
    MEMORY[0x26D6BD610](&v114, v70);
    v71 = v114;
    if (qword_2804FAC60 != -1)
    {
      v88 = v114;
      swift_once();
      v71 = v88;
    }

    v72 = v99;
    sub_26D35DCA8(v71, 0, qword_2804FFDF0, *algn_2804FFDF8, v99);

    sub_26D37EEEC(v62, type metadata accessor for TFToggle);
    v74 = v100;
    v73 = v101;
    v75 = *(v100 + 16);
    v76 = v98;
    v77 = v112;
    v75(v98, v112, v101);
    v78 = v102;
    sub_26D34856C(v72, v102, &qword_2804FB820, &qword_26D3A4F60);
    v79 = v103;
    v75(v103, v76, v73);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC100, &qword_26D3A5C38);
    sub_26D34856C(v78, v79 + *(v80 + 48), &qword_2804FB820, &qword_26D3A4F60);
    sub_26D3481A4(v72, &qword_2804FB820, &qword_26D3A4F60);
    v81 = *(v74 + 8);
    v81(v77, v73);
    sub_26D3481A4(v78, &qword_2804FB820, &qword_26D3A4F60);
    v81(v76, v73);
    v47 = v105;
    sub_26D347238(v79, v105, &qword_2804FC0F0, &qword_26D3A5C20);
    v40 = 0;
    v41 = v110;
    v42 = v111;
    v44 = v108;
    v43 = v109;
    v46 = v106;
    v45 = v107;
LABEL_25:
    v82 = v104;
    (*(v43 + 56))(v47, v40, 1, v41);
    v83 = *(v46 + 16);
    v84 = v113;
    v83(v82, v113, v45);
    sub_26D34856C(v47, v44, &qword_2804FC0F8, &qword_26D3A5C28);
    v83(v42, v82, v45);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC108, &unk_26D3A5C40);
    sub_26D34856C(v44, &v42[*(v85 + 48)], &qword_2804FC0F8, &qword_26D3A5C28);
    sub_26D3481A4(v47, &qword_2804FC0F8, &qword_26D3A5C28);
    v86 = *(v46 + 8);
    v86(v84, v45);
    sub_26D3481A4(v44, &qword_2804FC0F8, &qword_26D3A5C28);
    return (v86)(v82, v45);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37127C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v42 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v42);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v43 = *a1;
  v49 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  sub_26D3A10C8();
  sub_26D34856C(&v49, &v46, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D37DF24(v8, v9, v10);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a2 + 32);
  *(v12 + 66) = v7;
  sub_26D34856C(&v49, &v46, &qword_2804FB8D8, &qword_26D3A5070);
  sub_26D37DF24(v8, v9, v10);
  v15 = sub_26D3A10B8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  v17 = *(a2 + 16);
  *(v16 + 32) = *a2;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a2 + 32);
  *(v16 + 66) = v7;
  sub_26D3A0E28();
  v19 = v46;
  v18 = v47;
  v20 = *&aListBullistDas[8 * v7];
  v21 = v48;
  v22 = v9 | (v10 << 8);
  v23 = *&aListBullistDas[8 * v7 + 32];
  v24 = sub_26D33CED8(v8, v22);
  if (v25)
  {
    v26 = v20;
    v27 = 0;
    v28 = 0;
    v29 = v43;
  }

  else
  {
    v29 = v43;
    if (v24 == 1 || v24 == 2 && (*a2 & 1) == 0)
    {
      if (v43 > 1)
      {
        if (v43 == 2)
        {
          v26 = v20;
          if (qword_2804FAC78 != -1)
          {
            swift_once();
          }

          v30 = &qword_2804FFE20;
        }

        else
        {
          v26 = v20;
          if (qword_2804FAC60 != -1)
          {
            swift_once();
          }

          v30 = &qword_2804FFDF0;
        }
      }

      else if (v43)
      {
        v26 = v20;
        if (qword_2804FAC70 != -1)
        {
          swift_once();
        }

        v30 = &qword_2804FFE10;
      }

      else
      {
        v26 = v20;
        if (qword_2804FAC68 != -1)
        {
          swift_once();
        }

        v30 = &qword_2804FFE00;
      }

      v27 = *v30;
      v28 = v30[1];
    }

    else
    {
      v26 = v20;
      v27 = 0;
      v28 = 0;
    }
  }

  v31 = v42;
  sub_26D3A0638();
  *v6 = v26;
  v6[1] = v23;
  v32 = (v6 + v31[6]);
  *v32 = v27;
  v32[1] = v28;
  *(v6 + v31[7]) = 1;
  v33 = v6 + v31[8];
  *v33 = v19;
  *(v33 + 1) = v18;
  v33[16] = v21;
  v34 = v6 + v31[9];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v46 = v19;
  v47 = v18;
  v48 = v21;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880, &qword_26D3A5C30);
  MEMORY[0x26D6BD610](&v45, v35);
  v36 = v45;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (qword_2804FAC78 != -1)
      {
        swift_once();
      }

      v37 = &qword_2804FFE20;
    }

    else
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v37 = &qword_2804FFDF0;
    }
  }

  else if (v29)
  {
    if (qword_2804FAC70 != -1)
    {
      swift_once();
    }

    v37 = &qword_2804FFE10;
  }

  else
  {
    if (qword_2804FAC68 != -1)
    {
      swift_once();
    }

    v37 = &qword_2804FFE00;
  }

  v38 = *v37;
  v39 = v37[1];

  sub_26D35DCA8(v36, 0, v38, v39, v44);

  return sub_26D37EEEC(v6, type metadata accessor for TFToggle);
}

uint64_t sub_26D3717D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {

    sub_26D351498(MEMORY[0x277D84F90]);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    v3 = sub_26D3511C4();

    if (*(v3 + 2))
    {
      v4 = v3[32];

      v5 = *&aListBullistDas[8 * v4];
      v6 = *&aListBullistDas[8 * v4 + 32];
    }

    else
    {

      v6 = 0xEB0000000074656CLL;
      v5 = 0x6C75622E7473696CLL;
    }

    v7 = sub_26D3A0928();
    v8 = type metadata accessor for TFSymbol(0);
    sub_26D3A0638();
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + v8[9]) = 1;
    *(a2 + v8[10]) = 1;
    v9 = a2 + v8[11];
    *v9 = swift_getKeyPath();
    *(v9 + 8) = 0;
    v10 = a2 + v8[12];
    *v10 = swift_getKeyPath();
    *(v10 + 8) = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70, &qword_26D3A53F8);
    v12 = a2 + v11[9];
    sub_26D3A0D48();
    *v12 = v17;
    *(v12 + 8) = v18;
    v13 = a2 + v11[10];
    *v13 = swift_getKeyPath();
    *(v13 + 8) = 0;
    v14 = a2 + v11[11];
    *v14 = swift_getKeyPath();
    *(v14 + 8) = 0;
    v15 = a2 + v11[12];
    result = swift_getKeyPath();
    *v15 = result;
    *(v15 + 8) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371A94@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v4 = sub_26D3511C4();

    v5 = v4 + 32;
    v6 = *(v4 + 2);
    v7 = a2;
    do
    {
      v9 = v6;
      if (v6-- == 0)
      {
        break;
      }

      v11 = *v5;
      if (v11 == 2)
      {
        v12 = 0x6C616D69636564;
      }

      else
      {
        v12 = 0x726568746FLL;
      }

      if (v11 == 2)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (*v5)
      {
        v14 = 0x6E6568707968;
      }

      else
      {
        v14 = 1668508004;
      }

      if (*v5)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (*v5 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (*v5 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v7 == 2)
      {
        v18 = 0x6C616D69636564;
      }

      else
      {
        v18 = 0x726568746FLL;
      }

      if (v7 == 2)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v7)
      {
        v20 = 0x6E6568707968;
      }

      else
      {
        v20 = 1668508004;
      }

      if (v7)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v7 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v7 <= 1)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v16 == v22 && v17 == v23)
      {

        break;
      }

      v8 = sub_26D3A1518();

      ++v5;
    }

    while ((v8 & 1) == 0);

    *a3 = v9 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371C7C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB300, &qword_26D3A3108);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A35F0;
      *(v6 + 32) = a5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    sub_26D351498(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC110, &qword_26D3A5C50);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D371FBC(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  sub_26D3A0D48();
  *v10 = v18;
  *(v10 + 8) = v19;
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC118, &qword_26D3A5C88) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC120, &qword_26D3A5C90) + 28);
  v14 = *MEMORY[0x277CE0558];
  v15 = sub_26D3A07D8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v12 + v13, v14, v15);
  result = (*(v16 + 56))(v12 + v13, 0, 1, v15);
  *v12 = KeyPath;
  return result;
}

uint64_t sub_26D371FBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC130, &qword_26D3A5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v72 - v4);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC138, &qword_26D3A5CA8);
  MEMORY[0x28223BE20](v78);
  v7 = (&v72 - v6);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC140, &qword_26D3A5CB0);
  MEMORY[0x28223BE20](v82);
  v77 = &v72 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC148, &qword_26D3A5CB8);
  MEMORY[0x28223BE20](v80);
  v81 = &v72 - v9;
  v10 = sub_26D3A0758();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC150, &qword_26D3A5CC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC158, &qword_26D3A5CC8);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v18 = &v72 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC160, &qword_26D3A5CD0);
  MEMORY[0x28223BE20](v79);
  v75 = &v72 - v19;
  v20 = *(a1 + 16);
  LODWORD(v19) = *(a1 + 24);
  v84 = *(a1 + 25);
  v85 = v19;
  v21 = sub_26D33CED8(v20, v19 | (v84 << 8));
  if ((v22 & 1) != 0 || v21 > 2)
  {
    v93[0] = *a1;
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    v91 = *(a1 + 48);
    v92 = *(a1 + 56);
    v40 = swift_allocObject();
    v41 = *(a1 + 48);
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 64) = v41;
    *(v40 + 80) = *(a1 + 64);
    v42 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v42;
    *v7 = 0x10000;
    sub_26D37DF24(v20, v85, v84);
    sub_26D34856C(v93, &v86, &qword_2804FB8D8, &qword_26D3A5070);
    sub_26D381CA8(v38, v39);
    sub_26D34856C(&v91, &v86, &qword_2804FBE00, &unk_26D3A58B0);
    v75 = v38;
    LODWORD(v74) = v39;
    v43 = sub_26D33CD0C(v38, v39);
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v45 = v78;
    if (byte_2804FFF98)
    {
      goto LABEL_9;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    v47 = 12.0;
    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_9:
      sub_26D39CDDC(0, v43, v44);
      v47 = v46 * 0.75;
    }

    v76 = v20;
    v48 = v45[12];
    *v5 = sub_26D3A0548();
    v5[1] = v47;
    *(v5 + 16) = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC168, &qword_26D3A5CD8);
    sub_26D373510(a1, v5 + *(v49 + 44));
    sub_26D347238(v5, v7 + v48, &qword_2804FC130, &qword_26D3A5CA0);
    v50 = (v7 + v45[13]);
    *v50 = sub_26D3833A0;
    v50[1] = v40;
    v51 = v7 + v45[14];
    v89 = 0;
    v90 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
    sub_26D3A0D48();
    v52 = BYTE8(v86);
    v53 = v87;
    *v51 = v86;
    v51[8] = v52;
    *(v51 + 2) = v53;
    v54 = v45[15];
    v89 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500, &qword_26D3A4FE8);
    sub_26D3A0D48();
    *(v7 + v54) = v86;
    v55 = v7 + v45[16];
    *v55 = swift_getKeyPath();
    v55[8] = 0;
    if (qword_2804FABF0 != -1)
    {
      swift_once();
    }

    v86 = xmmword_2804FFD10;
    sub_26D37E6A4();

    v56 = sub_26D3A09C8();
    v58 = v57;
    v60 = v59;
    sub_26D3484AC(&qword_2804FC170, &qword_2804FC138, &qword_26D3A5CA8, &unk_26D3A64F0);
    v61 = v77;
    sub_26D3A0AE8();
    sub_26D37EDCC(v56, v58, v60 & 1);

    sub_26D3481A4(v7, &qword_2804FC138, &qword_26D3A5CA8);
    v62 = swift_allocObject();
    v63 = *(a1 + 48);
    *(v62 + 48) = *(a1 + 32);
    *(v62 + 64) = v63;
    *(v62 + 80) = *(a1 + 64);
    v64 = *(a1 + 16);
    *(v62 + 16) = *a1;
    *(v62 + 32) = v64;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC178, &qword_26D3A5CE0) + 36);
    v66 = *MEMORY[0x277CDF968];
    v67 = sub_26D3A01D8();
    (*(*(v67 - 8) + 104))(v61 + v65, v66, v67);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_26D38338C;
    *(v68 + 24) = v62;
    v69 = v81;
    v70 = (v61 + *(v82 + 36));
    *v70 = sub_26D381CB4;
    v70[1] = v68;
    sub_26D34856C(v61, v69, &qword_2804FC140, &qword_26D3A5CB0);
    swift_storeEnumTagMultiPayload();
    sub_26D37DF24(v76, v85, v84);
    sub_26D34856C(v93, &v86, &qword_2804FB8D8, &qword_26D3A5070);
    sub_26D381CA8(v75, v74);
    sub_26D34856C(&v91, &v86, &qword_2804FBE00, &unk_26D3A58B0);
    sub_26D381CBC();
    sub_26D381E38();
    sub_26D3A0718();
    v35 = v61;
    v36 = &qword_2804FC140;
    v37 = &qword_26D3A5CB0;
  }

  else
  {
    v93[0] = *a1;
    v91 = *(a1 + 32);
    v92 = *(a1 + 40);
    v89 = *(a1 + 48);
    v90 = *(a1 + 56);
    v23 = swift_allocObject();
    v78 = &v72;
    v24 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(a1 + 64);
    v25 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v25;
    MEMORY[0x28223BE20](v23);
    *(&v72 - 2) = a1;
    sub_26D34856C(v93, &v86, &qword_2804FB8D8, &qword_26D3A5070);
    sub_26D37DF24(v20, v85, v84);
    sub_26D34856C(&v91, &v86, &qword_2804FB848, &qword_26D3A4F88);
    sub_26D34856C(&v89, &v86, &qword_2804FBE00, &unk_26D3A58B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1C8, &qword_26D3A5CF8);
    sub_26D3820B8();
    sub_26D3A0D88();
    sub_26D3A0748();
    v26 = sub_26D3484AC(&qword_2804FC188, &qword_2804FC150, &qword_26D3A5CC0, MEMORY[0x277CDF028]);
    v27 = sub_26D37E044(&qword_2804FC190, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    sub_26D3A09F8();
    (*(v73 + 8))(v12, v10);
    (*(v14 + 8))(v16, v13);
    if (qword_2804FABF0 != -1)
    {
      swift_once();
    }

    v86 = xmmword_2804FFD10;
    sub_26D37E6A4();

    v28 = sub_26D3A09C8();
    v30 = v29;
    v32 = v31;
    *&v86 = v13;
    *(&v86 + 1) = v10;
    v87 = v26;
    v88 = v27;
    swift_getOpaqueTypeConformance2();
    v33 = v75;
    v34 = v76;
    sub_26D3A0AE8();
    sub_26D37EDCC(v28, v30, v32 & 1);

    (*(v74 + 8))(v18, v34);
    sub_26D34856C(v33, v81, &qword_2804FC160, &qword_26D3A5CD0);
    swift_storeEnumTagMultiPayload();
    sub_26D381CBC();
    sub_26D381E38();
    sub_26D3A0718();
    v35 = v33;
    v36 = &qword_2804FC160;
    v37 = &qword_26D3A5CD0;
  }

  return sub_26D3481A4(v35, v36, v37);
}