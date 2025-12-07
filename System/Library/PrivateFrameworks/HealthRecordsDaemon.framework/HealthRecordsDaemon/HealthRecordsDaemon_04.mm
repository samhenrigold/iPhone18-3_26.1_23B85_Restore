uint64_t sub_251ACD160(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_251AC8AFC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_251ACE804(sub_251ACF760);
      goto LABEL_7;
    }

    sub_251ACA9B8(v17, a3 & 1, sub_251ACF760);
    v22 = sub_251AC8AFC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_251ACD87C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_251C71A14();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_251ACD354(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_251AC8E74(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_251ACEA78();
      goto LABEL_7;
    }

    sub_251ACAD90(v13, a3 & 1);
    v19 = sub_251AC8E74(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_251ACFAF8(a2, v21);
      return sub_251ACD934(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_251C71A14();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_251ACFB54(a1, v17);
}

_OWORD *sub_251ACD4A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251AC8C58(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_251ACEC34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_251ACB318(v16, a4 & 1);
    v11 = sub_251AC8C58(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_251C71A14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_251ACFB54(a1, v22);
  }

  else
  {
    sub_251ACD9B0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_251ACD5F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_251AC8DE8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_251ACB5E8(v16, a4 & 1);
      result = sub_251AC8DE8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_251ACEDF0();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

_OWORD *sub_251ACD750(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_251AC8DE8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_251ACEF5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_251ACBA24(v14, a3 & 1);
    v9 = sub_251AC8DE8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_251C71A14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_251ACFB54(a1, v20);
  }

  else
  {

    return sub_251ACDA1C(v9, a2, a1, v19);
  }
}

uint64_t sub_251ACD87C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_251C70074();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_251ACD934(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_251ACFB54(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_251ACD9B0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_251ACFB54(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_251ACDA1C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_251ACFB54(a3, (a4[7] + 32 * a1));
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

unint64_t sub_251ACDA84(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

void *sub_251ACDAC8()
{
  v1 = v0;
  sub_251ACE2EC(0, &qword_27F479670, &qword_27F4792D0, MEMORY[0x277D834F8], sub_251ACE358);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_251ACDC64()
{
  v1 = v0;
  sub_251ACE358(0, &qword_27F479678, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_251ACDDFC()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_27F4796E8, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_251ACDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_251ACDFE8()
{
  result = qword_27F479658;
  if (!qword_27F479658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479658);
  }

  return result;
}

unint64_t sub_251ACE040()
{
  result = qword_27F479660;
  if (!qword_27F479660)
  {
    sub_251ACFBB8(255, &qword_27F479668, &type metadata for ContentVariables, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentVariables(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentVariables(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SchemaSubstitutions(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SchemaSubstitutions(_WORD *result, int a2, int a3)
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

void sub_251ACE2EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71834();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251ACE358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_251ACFBB8(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251ACE3EC(uint64_t a1)
{
  if (!qword_27F479688)
  {
    sub_251A8223C(255, &qword_27F479680, 0x277CCD720);
    sub_251ACE4A8(255, &qword_27F479690, MEMORY[0x277CC88A8], MEMORY[0x277D83940]);
    sub_251ACE50C();
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479688);
    }
  }
}

void sub_251ACE4A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251ACE50C()
{
  result = qword_27F479698;
  if (!qword_27F479698)
  {
    sub_251A8223C(255, &qword_27F479680, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479698);
  }

  return result;
}

void *sub_251ACE574()
{
  v1 = v0;
  v35 = sub_251C70014();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACF9F4(0);
  v3 = *v0;
  v4 = sub_251C71804();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v31, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v15 = v34;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = *(v3 + 48) + 16 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = v37;
        v25 = *(v37 + 72) * v19;
        v26 = v35;
        (*(v37 + 16))(v15, *(v3 + 56) + v25, v35);
        v27 = v36;
        v28 = *(v36 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        result = (*(v24 + 32))(*(v27 + 56) + v25, v15, v26);
        v13 = v38;
      }

      while (v38);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_21;
      }

      v18 = *(v31 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_251ACE804(void (*a1)(void))
{
  v3 = v1;
  v33 = sub_251C70074();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  v5 = *v1;
  v6 = sub_251C71804();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

void *sub_251ACEA78()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_2813E1CB0, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = 40 * v17;
        sub_251ACFAF8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_251A83384(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_251ACFB54(v22, (*(v4 + 56) + v17));
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

void *sub_251ACEC34()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_2813E1CB8, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, MEMORY[0x277D837E0]);
  v2 = *v0;
  v3 = sub_251C71804();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_251A83384(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251ACFB54(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_251ACEDF0()
{
  v1 = v0;
  sub_251ACFDE4(0, &qword_27F4796E0, MEMORY[0x277D837D0]);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_251ACEF5C()
{
  v1 = v0;
  sub_251ACFDE4(0, &qword_27F4796C8, MEMORY[0x277D84F70] + 8);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = *(*(v2 + 48) + v17);
        sub_251A83384(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_251ACFB54(v19, (*(v4 + 56) + 32 * v17));
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

id sub_251ACF0E0()
{
  v1 = v0;
  v31 = sub_251C70074();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACFC5C(0);
  v3 = *v0;
  v4 = sub_251C71804();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v23 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v21, v31);
        v24 = *(*(v3 + 56) + 8 * v19);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        *(*(v15 + 56) + 8 * v19) = v24;
        result = v24;
        v13 = v34;
      }

      while (v34);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v18 = *(v27 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_251ACF348()
{
  v1 = v0;
  sub_251ACFD18(0);
  v2 = *v0;
  v3 = sub_251C71804();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_251A823B4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251A7E8D8(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_251ACF4E4()
{
  v1 = v0;
  sub_251ACE3EC(0);
  v2 = *v0;
  v3 = sub_251C71804();
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

uint64_t sub_251ACF63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251ACF684(uint64_t a1)
{
  if (!qword_27F4796A8)
  {
    sub_251C70074();
    sub_251ACE4A8(255, &qword_2813E1F58, MEMORY[0x277D11300], MEMORY[0x277D83940]);
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796A8);
    }
  }
}

void sub_251ACF760(uint64_t a1)
{
  if (!qword_27F4796B0)
  {
    sub_251C70074();
    sub_251ACF80C();
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796B0);
    }
  }
}

void sub_251ACF80C()
{
  if (!qword_2813E1DE8)
  {
    v0 = sub_251C71294();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DE8);
    }
  }
}

id sub_251ACF864()
{
  v1 = v0;
  sub_251ACE2EC(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
  v2 = *v0;
  v3 = sub_251C71804();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void sub_251ACF9F4(uint64_t a1)
{
  if (!qword_27F4796B8)
  {
    sub_251C70014();
    sub_251ABA664();
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796B8);
    }
  }
}

void sub_251ACFA60(uint64_t a1)
{
  if (!qword_27F4796C0)
  {
    sub_251ACE4A8(255, &qword_27F479588, type metadata accessor for ClinicalSharingDataNodeInfo, MEMORY[0x277D83940]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796C0);
    }
  }
}

_OWORD *sub_251ACFB54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_251ACFBB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251ACFC08()
{
  result = qword_27F4796D0;
  if (!qword_27F4796D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4796D0);
  }

  return result;
}

void sub_251ACFC5C(uint64_t a1)
{
  if (!qword_27F4796D8)
  {
    sub_251C70074();
    sub_251A8223C(255, &qword_2813E1DB8, 0x277D12450);
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796D8);
    }
  }
}

void sub_251ACFD18(uint64_t a1)
{
  if (!qword_2813E1CD0)
  {
    sub_251ACFD80();
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1CD0);
    }
  }
}

unint64_t sub_251ACFD80()
{
  result = qword_2813E7078[0];
  if (!qword_2813E7078[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813E7078);
  }

  return result;
}

void sub_251ACFDE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_251ACFC08();
    v4 = sub_251C71834();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251ACFE48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_251C71834();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251ACFE9C(uint64_t a1)
{
  if (!qword_27F4796F0)
  {
    sub_251C70014();
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4796F0);
    }
  }
}

void sub_251ACFF60(uint64_t a1)
{
  if (!qword_27F479710)
  {
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    v1 = sub_251C71834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479710);
    }
  }
}

unint64_t sub_251ACFFE4()
{
  result = qword_2813E2F30;
  if (!qword_2813E2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2F30);
  }

  return result;
}

uint64_t sub_251AD0038(uint64_t a1, uint64_t a2)
{
  sub_251AD1194(0);
  v49 = v4;
  result = MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v42 = a2 + 32;
    v9 = a1 + 64;
    v43 = MEMORY[0x277D84F90];
    v44 = a1;
    v41 = v7;
    while (v8 < v7)
    {
      if (__OFADD__(v8, 1))
      {
        goto LABEL_37;
      }

      v10 = (v42 + 32 * v8);
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v47 = v8 + 1;
      v48 = v8 + 1;
      v15 = 1 << *(a1 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(a1 + 64);

      v45 = v14;
      v46 = v13;
      sub_251A858C4(v14, v13);
      v18 = (v15 + 63) >> 6;

      v19 = 0;
      if (v17)
      {
        while (1)
        {
LABEL_15:
          v21 = __clz(__rbit64(v17)) | (v19 << 6);
          v22 = *(a1 + 48);
          v23 = sub_251C70074();
          v24 = *(v23 - 8);
          v25 = v22 + *(v24 + 72) * v21;
          v26 = v50;
          (*(v24 + 16))(v50, v25, v23);
          v27 = *(*(a1 + 56) + 8 * v21);
          *(v26 + *(v49 + 48)) = v27;
          if (*(v27 + 16))
          {
            sub_251C71AA4();

            sub_251C70FB4();
            v28 = sub_251C71AD4();
            v29 = -1 << *(v27 + 32);
            v30 = v28 & ~v29;
            if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
            {
              v31 = ~v29;
              while (1)
              {
                v32 = (*(v27 + 48) + 16 * v30);
                v33 = *v32 == v12 && v32[1] == v11;
                if (v33 || (sub_251C719D4() & 1) != 0)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              a1 = v44;

              sub_251A83028(v45, v46);

              result = sub_251AD1208(v50);
              goto LABEL_4;
            }

LABEL_24:

            a1 = v44;
          }

          else
          {
          }

          v17 &= v17 - 1;
          result = sub_251AD1208(v50);
          if (!v17)
          {
            goto LABEL_11;
          }
        }
      }

      while (1)
      {
LABEL_11:
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v20 >= v18)
        {
          break;
        }

        v17 = *(v9 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_15;
        }
      }

      v34 = v43;
      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = v34;
      v51 = v34;
      if ((result & 1) == 0)
      {
        result = sub_251C0B80C(0, *(v34 + 16) + 1, 1);
        v35 = v51;
      }

      v37 = *(v35 + 16);
      v36 = *(v35 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_251C0B80C((v36 > 1), v37 + 1, 1);
        v35 = v51;
      }

      *(v35 + 16) = v37 + 1;
      v43 = v35;
      v38 = (v35 + 32 * v37);
      v38[4] = v12;
      v38[5] = v11;
      v39 = v46;
      v38[6] = v45;
      v38[7] = v39;
LABEL_4:
      v7 = v41;
      v8 = v48;
      if (v47 == v41)
      {
        return v43;
      }
    }

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

void *sub_251AD03C0(unint64_t a1, void *a2, __int128 *a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a3;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v60 = a1 + 32;
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v55 = (v7 + 16);
    v62 = (v7 + 8);
    v63 = a1 & 0xC000000000000001;

    v10 = 0;
    v11 = &off_2796E0000;
    v54 = xmmword_251C74800;
    v59 = i;
    v56 = v7;
    while (1)
    {
      if (v63)
      {
        v12 = MEMORY[0x25308D460](v10, a1);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v10 >= *(v61 + 16))
      {
        goto LABEL_50;
      }

      v12 = *(v60 + 8 * v10);

      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        break;
      }

LABEL_10:
      v14 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      v15 = [*(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus];
      v64 = v12;
      if (v15 == 1 && [*(v12 + v14) v11[453]] == 2 && (objc_msgSend(*(v12 + v14), sel_multiDeviceStatus) != 2 && objc_msgSend(*(v12 + v14), sel_multiDeviceStatus) != 4 && ((v22 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8)) == 0 || (*(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v23 = v22 == *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v23 = 0), v23 || (sub_251C719D4() & 1) != 0)) || objc_msgSend(*(v12 + v14), sel_multiDeviceStatus) == 3) && !*(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) && (v25 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16), v67 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode), v68 = v25, v27 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48), v26 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64), v28 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32), v72 = *(v12 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80), v70 = v27, v71 = v26, v69 = v28, v67))
      {
        v57 = *(&v69 + 1);
        v29 = v69;
        v31 = *(&v68 + 1);
        v30 = v68;
        v66 = v67;
        sub_251AD1A50(&v67, &v65);

        sub_251BFF6E0(v32);
        v33 = v66;
        sub_251AD2388(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v54;
        *(inited + 32) = v30;
        *(inited + 40) = v31;
        v35 = v57;
        *(inited + 48) = v29;
        *(inited + 56) = v35;
        v65 = v33;

        sub_251A858C4(v29, v35);
        sub_251BFF6E0(inited);
        v36 = v65;
        (*v55)(v58, v64 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
        v37 = *(v36 + 16);
        if (v37)
        {
          v52 = v6;
          v53 = a2;
          v57 = a1;
          v65 = MEMORY[0x277D84F90];
          sub_251C0B6AC(0, v37, 0);
          v38 = v65;
          v51 = v36;
          v39 = (v36 + 40);
          do
          {
            v41 = *(v39 - 1);
            v40 = *v39;
            v65 = v38;
            v42 = *(v38 + 16);
            v43 = *(v38 + 24);

            if (v42 >= v43 >> 1)
            {
              sub_251C0B6AC((v43 > 1), v42 + 1, 1);
              v38 = v65;
            }

            *(v38 + 16) = v42 + 1;
            v44 = v38 + 16 * v42;
            *(v44 + 32) = v41;
            *(v44 + 40) = v40;
            v39 += 4;
            --v37;
          }

          while (v37);
          a1 = v57;
          v6 = v52;
          a2 = v53;
          v36 = v51;
        }

        else
        {
          v38 = MEMORY[0x277D84F90];
        }

        v45 = sub_251BFBECC(v38);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = a2;
        v47 = v45;
        v48 = v58;
        sub_251ACD160(v47, v58, isUniquelyReferenced_nonNull_native);
        (*v62)(v48, v6);
        a2 = v65;
        sub_251BFF6E0(v36);

        sub_251AD1AD8(&v67);
        v7 = v56;
        i = v59;
LABEL_26:
        v11 = &off_2796E0000;
        if (v10 == i)
        {
          return a2;
        }
      }

      else
      {
        v16 = *(v12 + v14);
        if ([v16 v11[453]] == 3 || objc_msgSend(v16, v11[453]) == 4 || objc_msgSend(v16, v11[453]) == 5 || objc_msgSend(v16, sel_featureStatus) == 4)
        {

          v17 = v64;
LABEL_21:
          v18 = sub_251AC8AFC(v17 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID);
          if (v19)
          {
            v20 = v18;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            *&v67 = a2;
            if (!v21)
            {
              sub_251ACE7EC();
              a2 = v67;
            }

            (*(v7 + 8))(a2[6] + *(v7 + 72) * v20, v6);

            sub_251AD1414(v20, a2);
          }

          goto LABEL_26;
        }

        v24 = [v16 featureStatus];

        v23 = v24 == 2;
        i = v59;
        v17 = v64;
        if (v23 || [*(v64 + v14) multiDeviceStatus] == 2)
        {
          goto LABEL_21;
        }

        if (v10 == i)
        {
          return a2;
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return a2;
}

uint64_t sub_251AD0A10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
  }

  v4 = result;
  v5 = 0;
  v29 = a3 + 32;
  v6 = result + 56;
  v7 = MEMORY[0x277D84F90];
  v30 = *(a3 + 16);
  while (v5 < v3)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }

    v9 = (v29 + 32 * v5);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    ++v5;
    if (!*(v4 + 16))
    {

      sub_251A858C4(v12, v13);
      goto LABEL_16;
    }

    v14 = v7;
    sub_251C71AA4();

    v15 = v12;
    v16 = v12;
    v17 = v13;
    sub_251A858C4(v16, v13);

    sub_251C70FB4();
    v18 = sub_251C71AD4();
    v19 = -1 << *(v4 + 32);
    v20 = v18 & ~v19;
    if ((*(v6 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22 == v11 && v22[1] == v10;
        if (v23 || (sub_251C719D4() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v6 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_bridgeObjectRelease_n();
      result = sub_251A83028(v15, v17);
      v3 = v30;
      v5 = v8;
      v7 = v14;
      if (v8 == v30)
      {
      }
    }

    else
    {
LABEL_15:

      v7 = v14;
      v13 = v17;
      v12 = v15;
      v5 = v8;
LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      if ((result & 1) == 0)
      {
        result = sub_251C0B80C(0, *(v7 + 16) + 1, 1);
      }

      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_251C0B80C((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
      }

      *(v7 + 16) = v27;
      v28 = (v7 + 32 * v26);
      v28[4] = v11;
      v28[5] = v10;
      v28[6] = v12;
      v28[7] = v24;
      v3 = v30;
      if (v8 == v30)
      {
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_251AD0C6C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_251AD26A0(0, &qword_2813E1C88, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AD21DC();
  sub_251C71B14();
  v15 = a2;
  v14 = 0;
  sub_251AD2230(0);
  sub_251AD22C8();
  sub_251C71964();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    sub_251AD2388(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    sub_251AD2868(&qword_2813E1E78, sub_251AD23D8, MEMORY[0x277D83948]);
    sub_251C71964();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_251AD0E78()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x5079427365646F6ELL;
  }
}

uint64_t sub_251AD0EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5079427365646F6ELL && a2 == 0xEF72656469766F72;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000251C8A570 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_251AD0FB0(uint64_t a1)
{
  v2 = sub_251AD21DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AD0FEC(uint64_t a1)
{
  v2 = sub_251AD21DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AD1028@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_251AD242C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_251AD1070(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_251B5BDFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_251A94860(v2, v3);
}

uint64_t sub_251AD10CC()
{
  sub_251C71AA4();
  MEMORY[0x25308D860](0);
  return sub_251C71AD4();
}

uint64_t sub_251AD1138(uint64_t a1)
{
  sub_251C71AA4();
  MEMORY[0x25308D860](0);
  return sub_251C71AD4();
}

void sub_251AD1194(uint64_t a1)
{
  if (!qword_2813E74F0)
  {
    sub_251C70074();
    sub_251ACF80C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E74F0);
    }
  }
}

uint64_t sub_251AD1208(uint64_t a1)
{
  sub_251AD1194(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD1264(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_251C71604() + 1) & ~v5;
    do
    {
      sub_251C71AA4();

      sub_251C70FB4();
      v9 = sub_251C71AD4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_251AD1414(int64_t a1, uint64_t a2)
{
  v40 = sub_251C70074();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_251C71604();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_251AD27C4(&qword_2813E74E0, MEMORY[0x277CC9600]);
      v23 = sub_251C70E84();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_251AD171C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_251C71604() + 1) & ~v5;
    do
    {
      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_251AD1A50(uint64_t a1, uint64_t a2)
{
  sub_251AD2388(0, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AD1AD8(uint64_t a1)
{
  sub_251AD2388(0, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD1B58(unint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v7 = 0;
    v8 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v60 = a1 + 32;
    v53 = (v3 + 2);
    v59 = MEMORY[0x277D84F98];
    v52 = xmmword_251C74800;
    v51 = (v3 + 1);
    v57 = v5;
    v58 = v2;
    v55 = a1 & 0xC000000000000001;
    v56 = i;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v8)
    {
      v10 = MEMORY[0x25308D460](v7, a1);
      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
        goto LABEL_35;
      }

LABEL_10:
      v3 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      if ([*(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] == 1 && objc_msgSend(*(v3 + v10), sel_userStatus) == 2 && ((v12 = objc_msgSend(*(v3 + v10), sel_multiDeviceStatus), v61 = v10, v12 != 2) && (v13 = objc_msgSend(*(v3 + v10), sel_multiDeviceStatus), v10 = v61, v13 != 4) && ((v15 = *(v61 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8)) == 0 || (*(v61 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v61 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v16 = v15 == *(v61 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v16 = 0), v16 || (v17 = sub_251C719D4(), v10 = v61, (v17 & 1) != 0))) || (v14 = objc_msgSend(*(v3 + v10), sel_multiDeviceStatus), v10 = v61, v14 == 3)) && !*(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) && (v18 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16), v64 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode), v65 = v18, v20 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48), v19 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64), v21 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32), v69 = *(v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80), v67 = v20, v68 = v19, v66 = v21, (v3 = v64) != 0))
      {
        v22 = *(&v66 + 1);
        v23 = v66;
        v25 = *(&v65 + 1);
        v24 = v65;
        v63 = v64;
        sub_251AD1A50(&v64, v62);

        sub_251BFF6E0(v26);
        v27 = v63;
        sub_251AD2388(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v52;
        *(inited + 32) = v24;
        *(inited + 40) = v25;
        *(inited + 48) = v23;
        *(inited + 56) = v22;
        v62[0] = v27;
        v5 = v57;
        v2 = v58;

        sub_251A858C4(v23, v22);
        sub_251BFF6E0(inited);
        v29 = v62[0];
        (*v53)(v5, v10 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v2);
        v30 = *(v29 + 16);
        if (v30)
        {
          v50 = a1;
          v62[0] = MEMORY[0x277D84F90];
          sub_251C0B6AC(0, v30, 0);
          v31 = v62[0];
          v49 = v29;
          v32 = (v29 + 40);
          do
          {
            v33 = *(v32 - 1);
            v34 = *v32;
            v62[0] = v31;
            v35 = *(v31 + 16);
            v36 = *(v31 + 24);

            if (v35 >= v36 >> 1)
            {
              sub_251C0B6AC((v36 > 1), v35 + 1, 1);
              v31 = v62[0];
            }

            *(v31 + 16) = v35 + 1;
            v37 = v31 + 16 * v35;
            *(v37 + 32) = v33;
            *(v37 + 40) = v34;
            v32 += 4;
            --v30;
          }

          while (v30);
          v29 = v49;
          a1 = v50;
          v2 = v58;
          v38 = v59;
          v5 = v57;
        }

        else
        {
          v31 = MEMORY[0x277D84F90];
          v38 = v59;
        }

        v39 = sub_251BFBECC(v31);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62[0] = v38;
        sub_251ACD160(v39, v5, isUniquelyReferenced_nonNull_native);
        (*v51)(v5, v2);
        v59 = v62[0];
        v3 = &v70;
        sub_251BFF6E0(v29);

        sub_251AD1AD8(&v64);
        v8 = v55;
        i = v56;
        v9 = v54;
        if (v7 == v56)
        {
LABEL_34:

          v41 = v70;
          v42 = v59;
          goto LABEL_39;
        }
      }

      else
      {

        if (v7 == i)
        {
          goto LABEL_34;
        }
      }
    }

    if (v7 >= *(v9 + 16))
    {
      goto LABEL_36;
    }

    v10 = *(v60 + 8 * v7);

    v11 = __OFADD__(v7++, 1);
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v42 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F90];
LABEL_39:
  v43 = sub_251BFBE04(v41);

  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_42;
  }

  v45 = sub_251C39E40(*(v43 + 16), 0);
  v46 = sub_251C0A41C(&v64, v45 + 4, v44, v43);
  sub_251AD20D8(v64);
  if (v46 != v44)
  {
    __break(1u);
LABEL_42:
  }

  return v42;
}

uint64_t sub_251AD20E0(uint64_t *a1, int a2)
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

uint64_t sub_251AD2128(uint64_t result, int a2, int a3)
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

unint64_t sub_251AD2188()
{
  result = qword_27F479728;
  if (!qword_27F479728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479728);
  }

  return result;
}

unint64_t sub_251AD21DC()
{
  result = qword_2813E37A8;
  if (!qword_2813E37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37A8);
  }

  return result;
}

void sub_251AD2230(uint64_t a1)
{
  if (!qword_2813E1FB8)
  {
    sub_251C70074();
    sub_251ACF80C();
    sub_251AD27C4(&qword_2813E74E0, MEMORY[0x277CC9600]);
    v1 = sub_251C70E74();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1FB8);
    }
  }
}

unint64_t sub_251AD22C8()
{
  result = qword_2813E1FB0;
  if (!qword_2813E1FB0)
  {
    sub_251AD2230(255);
    sub_251AD27C4(&qword_2813E74E8, MEMORY[0x277CC95F8]);
    sub_251AD2808(&qword_2813E1DE0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FB0);
  }

  return result;
}

void sub_251AD2388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251AD23D8()
{
  result = qword_2813E37C8;
  if (!qword_2813E37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37C8);
  }

  return result;
}

uint64_t sub_251AD242C(void *a1)
{
  sub_251AD26A0(0, &qword_2813E1CA0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_251AD21DC();
  sub_251C71B04();
  if (!v1)
  {
    sub_251AD2230(0);
    HIBYTE(v10) = 0;
    sub_251AD2704();
    sub_251C718D4();
    v8 = v11;
    sub_251AD2388(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    HIBYTE(v10) = 1;
    sub_251AD2868(&qword_2813E1E70, sub_251AD28F8, MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_251AD26A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251AD21DC();
    v7 = a3(a1, &type metadata for ClinicalSharingGraphMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251AD2704()
{
  result = qword_2813E1FA8;
  if (!qword_2813E1FA8)
  {
    sub_251AD2230(255);
    sub_251AD27C4(&qword_2813E74D8, MEMORY[0x277CC9618]);
    sub_251AD2808(&qword_2813E1DD8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FA8);
  }

  return result;
}

uint64_t sub_251AD27C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251C70074();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AD2808(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251ACF80C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AD2868(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251AD2388(255, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251AD28F8()
{
  result = qword_2813E37B0;
  if (!qword_2813E37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37B0);
  }

  return result;
}

unint64_t sub_251AD2960()
{
  result = qword_27F479730;
  if (!qword_27F479730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479730);
  }

  return result;
}

unint64_t sub_251AD29B8()
{
  result = qword_2813E3798;
  if (!qword_2813E3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3798);
  }

  return result;
}

unint64_t sub_251AD2A10()
{
  result = qword_2813E37A0;
  if (!qword_2813E37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37A0);
  }

  return result;
}

uint64_t sub_251AD2A74(uint64_t a1)
{
  sub_251AD5420(0);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x28223BE20](v2);
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD5750(0);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v22 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v8 = off_2863FD748(&type metadata for ClinicalSharingQueryDefaultDataProvider, &off_2863FD718);
  sub_251A823B4(a1 + 16, v29);
  v9 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  __swift_project_boxed_opaque_existential_1(v9 + 3, v9[6]);
  v10 = off_2863F67E8[0]();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v11 = (off_2863FD7A0)();
  v28 = v8;
  v29[0] = v10;
  v20[1] = v10;
  v20[2] = v8;
  v27 = v11;
  sub_251AD55D4(0, &qword_2813E2110, sub_251AC5BAC);
  v20[0] = v12;
  sub_251AD556C(0);
  sub_251AD55D4(0, &qword_27F479748, sub_251AD5648);
  sub_251AD5700(&qword_2813E2118, &qword_2813E2110, sub_251AC5BAC);
  sub_251AD5A40(&qword_27F479758, sub_251AD556C, MEMORY[0x277CBCD90]);
  sub_251AD5700(&qword_27F479760, &qword_27F479748, sub_251AD5648);

  v13 = v21;
  sub_251C70844();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_251AD5A88;
  *(v14 + 24) = a1;

  sub_251C70964();
  sub_251AD58F8(0);
  sub_251AD5A40(&qword_27F4797A0, sub_251AD5420, MEMORY[0x277CBCC30]);
  sub_251AD5A40(&qword_27F479790, sub_251AD58F8, MEMORY[0x277CBCD18]);
  v15 = v22;
  v16 = v23;
  sub_251C70B84();

  (*(v24 + 8))(v13, v16);
  sub_251AD5A40(&qword_27F4797A8, sub_251AD5750, MEMORY[0x277CBCCE0]);
  v17 = v25;
  v18 = sub_251C70A94();

  (*(v26 + 8))(v15, v17);
  return v18;
}

uint64_t sub_251AD2F48(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_251AD2FE4(a1, a2 & 1, a3, a4, a5, a6, a7);
  sub_251AD59A8(0);
  sub_251AD5A40(&qword_27F479788, sub_251AD59A8, MEMORY[0x277D83970]);
  sub_251C710D4();
}

void *sub_251AD2FE4(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v163 = a6;
  v162 = a5;
  v161 = a4;
  v160 = a3;
  v159 = a2;
  v141 = a1;
  v188[5] = *MEMORY[0x277D85DE8];
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v169 = *(Output - 8);
  MEMORY[0x28223BE20](Output);
  v144 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD5C38(0);
  v10 = v9;
  v145 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v167 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v140 - v13;
  v15 = type metadata accessor for PBPatientMeta(0);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_251C70014();
  v152 = *(v155 - 8);
  v17 = MEMORY[0x28223BE20](v155);
  v151 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v150 = &v140 - v19;
  sub_251AD5C6C(0);
  MEMORY[0x28223BE20](v20 - 8);
  v154 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for PBDateRange(0);
  v156 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v153 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v149);
  v157 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_251C70074();
  v165 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v182 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v181 = &v140 - v28;
  MEMORY[0x28223BE20](v27);
  v184 = &v140 - v29;
  v30 = sub_251C702E4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v172 = (&v140 - v35);
  v164 = a7;
  v36 = *(a7 + 56);
  v37 = sub_251C5DDD8(v36);
  v38 = v37;
  v39 = *(v37 + 32);
  v40 = ((1 << v39) + 63) >> 6;
  v41 = 8 * v40;
  v180 = v36;
  v146 = v10;
  v166 = v14;
  if ((v39 & 0x3Fu) > 0xD)
  {
LABEL_63:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_66;
    }
  }

  v143 = v40;
  v179 = v34;
  v142 = &v140;
  MEMORY[0x28223BE20](v37);
  v147 = &v140 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v147, v41);
  v148 = 0;
  v34 = 0;
  v183 = v38;
  v43 = *(v38 + 56);
  v38 += 56;
  v42 = v43;
  v44 = 1 << *(v38 - 24);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42;
  v40 = (v44 + 63) >> 6;
  v176 = (v31 + 88);
  v177 = (v31 + 16);
  v175 = *MEMORY[0x277D112F0];
  v170 = (v31 + 96);
  v41 = v31;
  v178 = v31;
  v174 = v31 + 8;
  while (2)
  {
    v47 = v172;
    while (1)
    {
      if (!v46)
      {
        v50 = v34;
        v36 = v180;
        while (1)
        {
          v34 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v34 >= v40)
          {
            goto LABEL_21;
          }

          v51 = *(v38 + 8 * v34);
          ++v50;
          if (v51)
          {
            v49 = __clz(__rbit64(v51));
            v185 = ((v51 - 1) & v51);
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      v49 = __clz(__rbit64(v46));
      v185 = ((v46 - 1) & v46);
LABEL_15:
      v52 = v49 | (v34 << 6);
      v53 = *(v183 + 48);
      v54 = *(v41 + 72);
      v173 = v52;
      v55 = *(v41 + 16);
      v55(v47, v53 + v54 * v52, v30);
      v56 = v179;
      v55(v179, v47, v30);
      v57 = (*(v41 + 88))(v56, v30);
      if (v57 != v175)
      {
        v48 = *v174;
        v31 = v174 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v174)(v56, v30);
        goto LABEL_7;
      }

      (*v170)(v56, v30);
      v58 = *v56;
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();

      v36 = v174;
      v48 = *v174;
      if (v31)
      {
        break;
      }

      v31 = v174 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47 = v172;
LABEL_7:
      v46 = v185;
      v48(v47, v30);
      v41 = v178;
    }

    v48(v172, v30);
    *&v147[(v173 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v173;
    v59 = __OFADD__(v148++, 1);
    v41 = v178;
    v46 = v185;
    if (!v59)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v185 = sub_251AD5F90(v147, v143, v148, v183);
  while (2)
  {
    v186 = MEMORY[0x277D84FA0];
    v187 = MEMORY[0x277D84FA0];
    v60 = *(v36 + 16);
    if (!v60)
    {
      v61 = MEMORY[0x277D84F90];
      v64 = *(MEMORY[0x277D84F90] + 16);
      if (!v64)
      {
        goto LABEL_40;
      }

LABEL_25:
      v65 = *(v165 + 16);
      v66 = *(v165 + 80);
      v179 = v61;
      v67 = v61 + ((v66 + 32) & ~v66);
      v183 = *(v165 + 72);
      v68 = (v165 + 8);
      v69 = v184;
      v65(v184, v67, v24);
      while (1)
      {
        if (*(v36 + 16) && (v74 = sub_251AC8AFC(v69), (v75 & 1) != 0))
        {
          v76 = *(*(v36 + 56) + 8 * v74);
        }

        else
        {
          v76 = MEMORY[0x277D84FA0];
        }

        if (sub_251AD45A8(v185, v76))
        {
          break;
        }

        v77 = v76[2];

        if (v77)
        {
          v78 = v24;
          v79 = v182;
          v69 = v184;
          v65(v182, v184, v78);
          v80 = v181;
          v81 = v79;
          v24 = v78;
          v36 = v180;
          sub_251BF5298(v181, v81);
          v72 = *v68;
          (*v68)(v80, v24);
          goto LABEL_27;
        }

        v69 = v184;
        (*v68)(v184, v24);
LABEL_28:
        v67 += v183;
        if (!--v64)
        {

          v82 = v187;
          goto LABEL_41;
        }

        v65(v69, v67, v24);
      }

      v70 = v182;
      v65(v182, v69, v24);
      v71 = v181;
      sub_251BF5298(v181, v70);
      v72 = *v68;
      v73 = v71;
      v69 = v184;
      (*v68)(v73, v24);
LABEL_27:
      v72(v69, v24);
      goto LABEL_28;
    }

    v61 = sub_251C39C90(*(v36 + 16), 0);
    v62 = sub_251C0A08C(v188, v61 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v60, v36);
    v63 = v188[0];
    v40 = v188[1];
    v38 = v188[2];

    sub_251AD20D8(v63);
    if (v62 != v60)
    {
      __break(1u);
LABEL_66:
      v139 = swift_slowAlloc();
      v185 = sub_251AD5CA0(v139, v40, v38, sub_251AD5AD0);

      MEMORY[0x25308E2B0](v139, -1, -1);
      continue;
    }

    break;
  }

  v64 = v61[2];
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_40:

  v82 = MEMORY[0x277D84FA0];
LABEL_41:
  v185 = v82;
  sub_251AD59DC(0, &qword_27F4797B8, sub_251AD5C38, MEMORY[0x277D84560]);
  v83 = *(v145 + 72);
  v84 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v85 = swift_allocObject();
  v182 = v85;
  v86 = v85 + v84;
  v87 = v82[2];
  v183 = v85 + v84;
  if (v87)
  {
    v88 = v149;
    v89 = *(v149 + 20);
    v178 = v89;
    v179 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v90 = *(v179 - 1);
    v180 = *(v90 + 56);
    v181 = v90 + 56;
    v91 = v157;
    v180(&v89[v157], 1, 1, v179);
    sub_251C703A4();
    v92 = *(v88 + 28);
    v184 = v83;
    v177 = *(v156 + 56);
    v177(v91 + v92, 1, 1, v171);
    *v91 = 112;
    *(v91 + 8) = 1;
    v93 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v94 = *(v152 + 16);
    v95 = v164;
    v96 = v155;
    v94(v150, v164 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v155);
    v94(v151, v95 + v93, v96);
    v97 = v154;
    sub_251C6FA94();
    v98 = sub_251C6FAE4();
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    v99 = v153;
    sub_251BFC468();
    sub_251AD62AC(v97, sub_251AD5C6C);
    sub_251AD62AC(v91 + v92, sub_251AC0EAC);
    v100 = v99;
    v86 = v183;
    sub_251AD630C(v100, v91 + v92, type metadata accessor for PBDateRange);
    v177(v91 + v92, 0, 1, v171);
    v83 = v184;
    v101 = v185;
    v102 = v158;
    sub_251AD4968(MEMORY[0x277D84F90], v159 & 1, v160, v161, v162, v163, v95, v158);
    v103 = v178;
    sub_251AD62AC(&v178[v91], sub_251ABCD08);
    sub_251AD630C(v102, &v103[v91], type metadata accessor for PBPatientMeta);
    v104 = v179;
    swift_storeEnumTagMultiPayload();
    v180(&v103[v91], 0, 1, v104);
    sub_251AD630C(v91, v86, type metadata accessor for PBTypedData);
    v105 = Output;
    *(v86 + *(Output + 20)) = v101;
    v106 = (v86 + *(v105 + 24));
    *v106 = 0;
    v106[1] = 0;
    v107 = v169;
    v108 = *(v169 + 56);
    (v108)(v86, 0, 1, v105);
  }

  else
  {
    v107 = v169;
    v108 = *(v169 + 56);
    v105 = Output;
    (v108)(v85 + v84, 1, 1, Output);
  }

  v109 = v186;
  v110 = *(v186 + 16);
  v184 = (v86 + v83);
  if (v110)
  {
    v111 = v149;
    v112 = *(v149 + 20);
    v177 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v113 = *(v177 - 1);
    v179 = *(v113 + 56);
    v180 = (v113 + 56);
    v114 = v157;
    (v179)(v157 + v112, 1, 1, v177);
    sub_251C703A4();
    v115 = *(v111 + 28);
    v181 = v109;
    v176 = *(v156 + 56);
    v176(v114 + v115, 1, 1, v171);
    *v114 = 112;
    *(v114 + 8) = 1;
    v116 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v117 = *(v152 + 16);
    v118 = v164;
    v178 = v108;
    v119 = v155;
    v117(v150, v164 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v155);
    v117(v151, v118 + v116, v119);
    v120 = v154;
    v86 = v183;
    sub_251C6FA94();
    v121 = sub_251C6FAE4();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v122 = v153;
    sub_251BFC468();
    sub_251AD62AC(v120, sub_251AD5C6C);
    sub_251AD62AC(v114 + v115, sub_251AC0EAC);
    sub_251AD630C(v122, v114 + v115, type metadata accessor for PBDateRange);
    v123 = v114 + v115;
    v107 = v169;
    v176(v123, 0, 1, v171);
    v124 = v181;
    v125 = v158;
    sub_251AD4968(v141, v159 & 1, v160, v161, v162, v163, v118, v158);
    sub_251AD62AC(v114 + v112, sub_251ABCD08);
    sub_251AD630C(v125, v114 + v112, type metadata accessor for PBPatientMeta);
    v126 = v177;
    swift_storeEnumTagMultiPayload();
    (v179)(v114 + v112, 0, 1, v126);
    v105 = Output;
    v127 = v184;
    sub_251AD630C(v114, v184, type metadata accessor for PBTypedData);
    *(v127 + *(v105 + 20)) = v124;
    v128 = (v127 + *(v105 + 24));
    *v128 = 0;
    v128[1] = 0;
    (v178)(v127, 0, 1, v105);
  }

  else
  {
    v108();
  }

  v129 = v144;
  v130 = v166;
  sub_251AD6390(v86, v166, sub_251AD5C38);
  v131 = v167;
  sub_251AD630C(v130, v167, sub_251AD5C38);
  v132 = *(v107 + 48);
  if (v132(v131, 1, v105) == 1)
  {
    sub_251AD62AC(v131, sub_251AD5C38);
    v133 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_251AD630C(v131, v129, type metadata accessor for ClinicalSharingQueryOutput);
    v133 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_251C390E0(0, v133[2] + 1, 1, v133);
    }

    v135 = v133[2];
    v134 = v133[3];
    if (v135 >= v134 >> 1)
    {
      v133 = sub_251C390E0((v134 > 1), v135 + 1, 1, v133);
    }

    v133[2] = v135 + 1;
    sub_251AD630C(v129, v133 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v135, type metadata accessor for ClinicalSharingQueryOutput);
    v131 = v167;
    v130 = v166;
  }

  sub_251AD6390(v184, v130, sub_251AD5C38);
  sub_251AD630C(v130, v131, sub_251AD5C38);
  if (v132(v131, 1, v105) == 1)
  {
    sub_251AD62AC(v131, sub_251AD5C38);
  }

  else
  {
    sub_251AD630C(v131, v129, type metadata accessor for ClinicalSharingQueryOutput);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_251C390E0(0, v133[2] + 1, 1, v133);
    }

    v137 = v133[2];
    v136 = v133[3];
    if (v137 >= v136 >> 1)
    {
      v133 = sub_251C390E0((v136 > 1), v137 + 1, 1, v133);
    }

    v133[2] = v137 + 1;
    sub_251AD630C(v129, v133 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v137, type metadata accessor for ClinicalSharingQueryOutput);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v133;
}

uint64_t sub_251AD45A8(void *a1, void *a2)
{
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v45 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v11;
  v12 = a2[2];
  if (!v12)
  {
    return 1;
  }

  v13 = a1[2];
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 7;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14[7];
  v19 = (v16 + 63) >> 6;
  v43 = v5 + 16;
  v38 = v5 + 32;
  v39 = v14;
  v41 = a2 + 7;
  v20 = (v5 + 8);

  v44 = a2;

  v22 = 0;
  v35 = v19;
  v36 = v15;
  v37 = v5;
  while (v18)
  {
LABEL_18:
    v24 = v40;
    v25 = v39[6];
    v42 = *(v5 + 72);
    v26 = *(v5 + 16);
    v26(v40, v25 + v42 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
    (*(v5 + 32))(v45, v24, v4);
    if (v44[2])
    {
      v27 = v44;
      sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
      v28 = sub_251C70E84();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v26(v8, v44[6] + v30 * v42, v4);
          sub_251AD5A40(&qword_27F4797C8, MEMORY[0x277D11300], MEMORY[0x277D11310]);
          v32 = sub_251C70ED4();
          v33 = *v20;
          (*v20)(v8, v4);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v45, v4);
        return 0;
      }
    }

LABEL_12:
    v18 &= v18 - 1;
    result = (*v20)(v45, v4);
    v15 = v36;
    v5 = v37;
    v19 = v35;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = v15[v23];
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251AD4968@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v110 = a7;
  v103 = a6;
  v95 = a5;
  v102 = a4;
  v94 = a3;
  LODWORD(v111) = a2;
  v115 = a1;
  v9 = type metadata accessor for PBPatientMeta.CHRMeta(0);
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v114 = &v92 - v13;
  v14 = type metadata accessor for PBPatientMeta.HumanName(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = (&v92 - v18);
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_251C70014();
  v105 = *(v109 - 8);
  v21 = MEMORY[0x28223BE20](v109);
  v108 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v92 - v24;
  MEMORY[0x28223BE20](v23);
  v93 = &v92 - v25;
  v106 = sub_251C702E4();
  v26 = *(v106 - 1);
  MEMORY[0x28223BE20](v106);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_251C70244();
  v29 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a8 + 8) = MEMORY[0x277D84F90];
  *(a8 + 32) = 0;
  *(a8 + 40) = 0xE000000000000000;
  *(a8 + 48) = 0;
  *(a8 + 56) = 0xE000000000000000;
  v32 = type metadata accessor for PBPatientMeta(0);
  sub_251C703A4();
  v33 = *(v32 + 40);
  v34 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  (*(*(v34 - 8) + 56))(a8 + v33, 1, 1, v34);
  v35 = *(v15 + 56);
  v97 = *(v32 + 44);
  v101 = v14;
  v98 = v35;
  v35(a8 + v97, 1, 1, v14);
  v36 = v110;
  sub_251C701A4();
  v37 = sub_251C701F4();
  v39 = v38;
  (*(v29 + 8))(v31, v104);
  v40 = v105;
  *(a8 + 16) = v37;
  *(a8 + 24) = v39;
  *a8 = v111 & 1;
  v41 = *(v36 + 56);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  *v28 = MEMORY[0x25308D1E0](*MEMORY[0x277CCCC98]);
  v42 = v106;
  (*(v26 + 104))(v28, *MEMORY[0x277D112F0], v106);
  v117 = v28;
  v43 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v116, v41) + 16);

  result = (*(v26 + 8))(v28, v42);
  v45 = v109;
  if (!v43)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1((v110 + 16), *(v110 + 40));
  v46 = v96;
  sub_251C2AB20(v96);
  if ((v40[6])(v46, 1, v45) != 1)
  {
    v28 = v93;
    (v40[4])(v93, v46, v45);
    v47 = v103;
    if (qword_27F478930 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_5;
  }

  sub_251AD62AC(v46, sub_251ABCCD4);
  v47 = v103;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v110 + 16), *(v110 + 40));
    v54 = sub_251C2A8D0();
    v57 = v100;
    v56 = v101;
    if (v55)
    {
      *(a8 + 32) = v54;
      *(a8 + 40) = v55;
    }

    *v57 = 0;
    v57[1] = 0xE000000000000000;
    v57[2] = 0;
    v57[3] = 0xE000000000000000;
    sub_251C703A4();
    v58 = v102;
    if (v102)
    {
      *v57 = v94;
      v57[1] = v58;
    }

    if (v47)
    {
      v57[2] = v95;
      v57[3] = v47;
    }

    v28 = v99;
    sub_251AD6390(v57, v99, type metadata accessor for PBPatientMeta.HumanName);

    v59 = v97;
    sub_251AD62AC(a8 + v97, sub_251AD63F8);
    sub_251AD630C(v28, a8 + v59, type metadata accessor for PBPatientMeta.HumanName);
    v98(a8 + v59, 0, 1, v56);
    result = sub_251AD62AC(v57, type metadata accessor for PBPatientMeta.HumanName);
LABEL_13:
    v47 = v115;
    if (v115 >> 62)
    {
      result = sub_251C717F4();
      if (!result)
      {
        return result;
      }

      result = sub_251C717F4();
      v60 = result;
      if (!result)
      {
        v103 = a8;
        v62 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

    else
    {
      v60 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        return result;
      }
    }

    v118 = MEMORY[0x277D84F90];
    sub_251C0B82C(0, v60 & ~(v60 >> 63), 0);
    if ((v60 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
LABEL_5:
    v48 = qword_27F4A2878;
    v49 = sub_251C6FF94();
    v50 = [v48 stringFromDate_];

    v51 = sub_251C70F14();
    v53 = v52;

    v40[1](v28, v45);
    *(a8 + 48) = v51;
    *(a8 + 56) = v53;
  }

  v103 = a8;
  v61 = 0;
  v62 = v118;
  v63 = v47;
  v111 = v47 & 0xC000000000000001;
  v105 = v40 + 1;
  v106 = (v40 + 4);
  v104 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  do
  {
    if (v111)
    {
      v64 = MEMORY[0x25308D460](v61, v63);
    }

    else
    {
      v64 = *(v63 + 8 * v61 + 32);
    }

    v65 = v64;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v12[4] = 0;
    v12[5] = 0xE000000000000000;
    sub_251C703A4();
    v66 = [v65 title];
    v67 = sub_251C70F14();
    v69 = v68;

    *v12 = v67;
    v12[1] = v69;
    v70 = [v65 gateway];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 externalID];

      v73 = sub_251C70F14();
      v75 = v74;

      v12[4] = v73;
      v12[5] = v75;
    }

    v76 = [v65 lastFetchDate];
    if (v76)
    {
      v77 = v108;
      v78 = v76;
      sub_251C6FFE4();

      v79 = v107;
      v80 = v60;
      v81 = v109;
      (*v106)(v107, v77, v109);
      v82 = *(v110 + v104);
      v83 = sub_251C6FF94();
      v84 = [v82 stringFromDate_];

      v85 = sub_251C70F14();
      v87 = v86;

      v88 = v81;
      v60 = v80;
      (*v105)(v79, v88);
      v12[2] = v85;
      v12[3] = v87;
    }

    v89 = v114;
    sub_251AD630C(v12, v114, type metadata accessor for PBPatientMeta.CHRMeta);

    v118 = v62;
    v91 = *(v62 + 16);
    v90 = *(v62 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_251C0B82C((v90 > 1), v91 + 1, 1);
      v89 = v114;
      v62 = v118;
    }

    ++v61;
    *(v62 + 16) = v91 + 1;
    result = sub_251AD630C(v89, v62 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v91, type metadata accessor for PBPatientMeta.CHRMeta);
    v63 = v115;
  }

  while (v60 != v61);
LABEL_31:
  *(v103 + 8) = v62;
  return result;
}

void sub_251AD5420(uint64_t a1)
{
  if (!qword_27F479738)
  {
    sub_251AD55D4(255, &qword_2813E2110, sub_251AC5BAC);
    sub_251AD556C(255);
    sub_251AD55D4(255, &qword_27F479748, sub_251AD5648);
    sub_251AD5700(&qword_2813E2118, &qword_2813E2110, sub_251AC5BAC);
    sub_251AD5A40(&qword_27F479758, sub_251AD556C, MEMORY[0x277CBCD90]);
    sub_251AD5700(&qword_27F479760, &qword_27F479748, sub_251AD5648);
    v1 = sub_251C70834();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479738);
    }
  }
}

void sub_251AD556C(uint64_t a1)
{
  if (!qword_27F479740)
  {
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479740);
    }
  }
}

void sub_251AD55D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251AD5648(uint64_t a1)
{
  if (!qword_27F479750)
  {
    sub_251AD56B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479750);
    }
  }
}

void sub_251AD56B0()
{
  if (!qword_2813E1FA0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1FA0);
    }
  }
}

uint64_t sub_251AD5700(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AD55D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AD5750(uint64_t a1)
{
  if (!qword_27F479768)
  {
    sub_251AD583C(255);
    sub_251AD5420(255);
    sub_251AD5A40(&qword_27F479798, sub_251AD583C, MEMORY[0x277CBCBA0]);
    sub_251AD5A40(&qword_27F4797A0, sub_251AD5420, MEMORY[0x277CBCC30]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479768);
    }
  }
}

void sub_251AD583C(uint64_t a1)
{
  if (!qword_27F479770)
  {
    sub_251AD58F8(255);
    sub_251A82284();
    sub_251AD5A40(&qword_27F479790, sub_251AD58F8, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479770);
    }
  }
}

void sub_251AD58F8(uint64_t a1)
{
  if (!qword_27F479778)
  {
    sub_251AD59A8(255);
    sub_251AD5A40(&qword_27F479788, sub_251AD59A8, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479778);
    }
  }
}

void sub_251AD59DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251AD5A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_251AD5AD0(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D112F0])
  {
    (*(v3 + 96))(v5, v2);
    v6 = *v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v7;
}

void *sub_251AD5CA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_251AD5D30(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_251AD5D30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_251C702E4();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_251AD5F90(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251AD5F90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_251C702E4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_251AD642C(0);
  result = sub_251C71674();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
    result = sub_251C70E84();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_251AD62AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AD630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD6390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AD642C(uint64_t a1)
{
  if (!qword_27F4797D0)
  {
    sub_251C702E4();
    sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
    v1 = sub_251C71684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4797D0);
    }
  }
}

uint64_t sub_251AD64C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251AD6508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251AD6558(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = a3;
  sub_251AD8484(0, &qword_27F4797D8, type metadata accessor for PBTypedData);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  sub_251AD8464(0);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v34 = off_2863FD7A8(&type metadata for ClinicalSharingQueryDefaultDataProvider);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_251AD8530;
  *(v16 + 24) = v15;
  sub_251AD838C(0);
  type metadata accessor for PBTypedData(0);
  sub_251AD85B8(&qword_27F4797F8, sub_251AD838C, MEMORY[0x277CBCD90]);

  v17 = a2;
  v18 = a4;
  sub_251C70AA4();

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v17;
  v19[4] = v28;
  v19[5] = v18;
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v20 = v17;
  v21 = v18;
  v23 = v29;
  v22 = v30;
  sub_251C70774();

  (*(v31 + 8))(v11, v22);
  sub_251AD85B8(&qword_27F479808, sub_251AD8464, MEMORY[0x277CBCB10]);
  v24 = v32;
  v25 = sub_251C70A94();
  (*(v33 + 8))(v23, v24);
  return v25;
}

void *sub_251AD68E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  v8 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8600(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for PBDateRange(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBTypedData(0);
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v20 = MEMORY[0x28223BE20](v58);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v25 = &v50 - v24;
  v26 = a1 >> 62;
  v69 = v23;
  if (v26)
  {
    goto LABEL_20;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v54 = v14;
      v27 = a6;
      v51 = v22;
      v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v29 = sub_251C70EE4();
      v64 = v28;
      [v28 setDateFormat_];

      v55 = v19;
      v56 = v17;
      v60 = v25;
      v52 = v13;
      v53 = v15;
      if (v26)
      {
        v19 = sub_251C717F4();
      }

      else
      {
        v19 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = MEMORY[0x277D84F90];
      v57 = v27;
      if (!v19)
      {
LABEL_17:
        v34 = v60;
        sub_251C703A4();
        *v34 = v13;
        v36 = v55;
        v35 = v56;
        *v55 = 0;
        *(v36 + 8) = 1;
        v37 = *(v35 + 20);
        v38 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v39 = *(v38 - 8);
        v63 = *(v39 + 56);
        v69 = v39 + 56;
        (v63)(v36 + v37, 1, 1, v38);
        sub_251C703A4();
        v40 = *(v35 + 28);
        v41 = v54;
        v42 = *(v53 + 56);
        v42(v36 + v40, 1, 1, v54);
        v43 = sub_251C6FAE4();
        v44 = v52;
        (*(*(v43 - 8) + 56))(v52, 1, 1, v43);
        v45 = v59;
        sub_251A7BAA0();

        sub_251AD86BC(v44, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251AD86BC(v36 + v40, qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251AD8654(v45, v36 + v40, type metadata accessor for PBDateRange);
        v42(v36 + v40, 0, 1, v41);
        *v36 = 129;
        *(v36 + 8) = 1;
        v46 = v60;
        v47 = v51;
        sub_251AD8718(v60, v51, type metadata accessor for PBMedicationTrackingSchedules);
        sub_251AD86BC(v36 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251AD8654(v47, v36 + v37, type metadata accessor for PBMedicationTrackingSchedules);
        swift_storeEnumTagMultiPayload();
        (v63)(v36 + v37, 0, 1, v38);
        v48 = v57;
        sub_251AD8654(v36, v57, type metadata accessor for PBTypedData);
        (*(v61 + 56))(v48, 0, 1, v35);
        return sub_251AD8780(v46, type metadata accessor for PBMedicationTrackingSchedules);
      }

      v71[0] = MEMORY[0x277D84F90];
      v22 = v71;
      result = sub_251C0B874(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        break;
      }

      v14 = 0;
      a6 = 0;
      v13 = v71[0];
      v31 = v69;
      v26 = v69 & 0xC000000000000001;
      v62 = v69 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v25 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v26)
        {
          v32 = MEMORY[0x25308D460](v14);
        }

        else
        {
          if (v14 >= *(v62 + 16))
          {
            goto LABEL_19;
          }

          v32 = *(v31 + 8 * v14 + 32);
        }

        v22 = v32;
        v70 = v32;
        sub_251AD7274(&v70, v65, v64, v10);

        v71[0] = v13;
        v17 = *(v13 + 2);
        v33 = *(v13 + 3);
        v15 = v17 + 1;
        if (v17 >= v33 >> 1)
        {
          v22 = v71;
          sub_251C0B874((v33 > 1), v17 + 1, 1);
          v13 = v71[0];
        }

        *(v13 + 2) = v15;
        sub_251AD8654(v10, &v13[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v17], type metadata accessor for PBMedicationTrackingSchedule);
        ++v14;
        v31 = v69;
        if (v25 == v19)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      if (!sub_251C717F4())
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v49 = *(v61 + 56);

    return v49(a6, 1, 1, v17);
  }

  return result;
}

uint64_t sub_251AD7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + 56);
  (*(v7 + 104))(v9, *MEMORY[0x277D112F8], v6);
  v18 = v9;
  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);
  (*(v7 + 8))(v9, v6);
  if (*(v11 + 16))
  {
    sub_251AD8718(a1, a3, type metadata accessor for PBTypedData);
    v12 = sub_251BFAE40(v11);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v12;
    v14 = (a3 + *(Output + 24));
    *v14 = 0;
    v14[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v16 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_251AD7274@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  v153 = a3;
  v167 = a2;
  v144 = a4;
  v165 = sub_251C6FC94();
  v151 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8600(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v163 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v169 = &v138 - v9;
  v178 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v139 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v11 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v166 = &v138 - v16;
  v17 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v142 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v146 = &v138 - v21;
  v168 = sub_251C70014();
  v170 = *(v168 - 8);
  v22 = MEMORY[0x28223BE20](v168);
  v152 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v155 = (&v138 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v156 = &v138 - v27;
  MEMORY[0x28223BE20](v26);
  v171 = &v138 - v28;
  v29 = sub_251C70244();
  v159 = *(v29 - 1);
  v160 = v29;
  MEMORY[0x28223BE20](v29);
  v158 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_251C70074();
  v31 = *(v157 - 1);
  MEMORY[0x28223BE20](v157);
  v33 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v37 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  *(v37 + 8) = 0;
  *(v37 + 9) = 0xE000000000000000;
  sub_251C703A4();
  v39 = *(v18 + 56);
  v140 = *(v35 + 64);
  v147 = v17;
  v143 = v18 + 56;
  v141 = v39;
  v39(&v37[v140], 1, 1, v17);
  v40 = [v38 UUID];
  sub_251C70054();

  v41 = sub_251C70024();
  v43 = v42;
  (*(v31 + 8))(v33, v157);
  *v37 = v41;
  *(v37 + 1) = v43;
  v148 = v38;
  v44 = [v38 medicationIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = sub_251C70F14();
    v48 = v47;

    v176 = v46;
    v177 = v48;
    v174 = sub_251C70F14();
    v175 = v49;
    v172 = 124;
    v173 = 0xE100000000000000;
    sub_251AD87E0();
    v50 = sub_251C715A4();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  *(v37 + 2) = v50;
  *(v37 + 3) = v52;
  v53 = [v148 note];
  v54 = v170;
  if (v53)
  {
    v55 = v53;
    v56 = sub_251C70F14();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xE000000000000000;
  }

  *(v37 + 10) = v56;
  *(v37 + 11) = v58;
  v59 = v148;
  v60 = [v148 frequencyType];
  if (v60 >= 5)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  *(v37 + 13) = v61;
  v37[112] = 1;
  v62 = [v59 createdUTCOffset];
  v63 = v158;
  sub_251C70224();

  v64 = v171;
  sub_251C70004();
  v65 = sub_251C70204();
  v67 = v66;
  v69 = *(v54 + 1);
  v68 = v54 + 8;
  v154 = v69;
  v70 = v168;
  v69(v64, v168);
  (*(v159 + 8))(v63, v160);
  if (v67)
  {
    v71 = v65;
  }

  else
  {
    v71 = 0;
  }

  v72 = 0xE000000000000000;
  if (v67)
  {
    v72 = v67;
  }

  v73 = v70;
  *(v37 + 4) = v71;
  *(v37 + 5) = v72;
  v74 = [v148 startDateTime];
  sub_251C6FFE4();

  v75 = *(v167 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v76 = sub_251C6FF94();
  v160 = v75;
  v77 = [v75 stringFromDate_];

  v78 = sub_251C70F14();
  v80 = v79;

  v154(v64, v73);
  *(v37 + 6) = v78;
  *(v37 + 7) = v80;
  v81 = v68;
  v82 = [v148 endDateTime];
  if (v82)
  {
    v83 = v155;
    v84 = v82;
    sub_251C6FFE4();

    v85 = v156;
    v86 = v168;
    (*(v170 + 4))(v156, v83, v168);
    v87 = sub_251C6FF94();
    v88 = [v160 stringFromDate_];

    v89 = sub_251C70F14();
    v91 = v90;

    v154(v85, v86);
    *(v37 + 8) = v89;
    *(v37 + 9) = v91;
  }

  v92 = [v148 timeIntervals];
  sub_251A8223C(0, &qword_27F479810, 0x277D11580);
  v93 = sub_251C71154();

  if (v93 >> 62)
  {
    goto LABEL_63;
  }

  v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v145 = v37;
  if (v94)
  {
    v176 = MEMORY[0x277D84F90];
    result = sub_251C0B8BC(0, v94 & ~(v94 >> 63), 0);
    if ((v94 & 0x8000000000000000) == 0)
    {
      v96 = 0;
      v97 = v93;
      v160 = (v93 & 0xC000000000000001);
      v149 = v93 & 0xFFFFFFFFFFFFFF8;
      v37 = v176;
      v171 = (v139 + 56);
      v157 = (v151 + 1);
      v156 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
      v155 = (v170 + 48);
      v151 = (v170 + 32);
      v158 = v94;
      v159 = v93;
      v150 = v15;
      while (1)
      {
        v170 = v37;
        if (v160)
        {
          v98 = MEMORY[0x25308D460](v96, v97);
        }

        else
        {
          if ((v96 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            v94 = sub_251C717F4();
            goto LABEL_19;
          }

          if (v96 >= *(v149 + 16))
          {
            goto LABEL_62;
          }

          v98 = *(v97 + 8 * v96 + 32);
        }

        v99 = v98;
        *v15 = 0;
        *(v15 + 2) = 0;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0xE000000000000000;
        v100 = v162;
        sub_251C703A4();
        v101 = *(v100 + 36);
        v102 = *v171;
        (*v171)(&v15[v101], 1, 1, v178);
        v103 = [v99 daysOfWeek];
        *v11 = 0;
        *(v11 + 3) = 0;
        sub_251C703A4();
        if (v103)
        {
          v11[1] = 1;
          if ((v103 & 2) == 0)
          {
LABEL_29:
            v104 = v168;
            if ((v103 & 4) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_45;
          }
        }

        else if ((v103 & 2) == 0)
        {
          goto LABEL_29;
        }

        v11[2] = 1;
        v104 = v168;
        if ((v103 & 4) == 0)
        {
LABEL_30:
          if ((v103 & 8) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_46;
        }

LABEL_45:
        v11[3] = 1;
        if ((v103 & 8) == 0)
        {
LABEL_31:
          if ((v103 & 0x10) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_47;
        }

LABEL_46:
        v11[4] = 1;
        if ((v103 & 0x10) == 0)
        {
LABEL_32:
          if ((v103 & 0x20) != 0)
          {
            goto LABEL_48;
          }

          goto LABEL_33;
        }

LABEL_47:
        v11[5] = 1;
        if ((v103 & 0x20) != 0)
        {
LABEL_48:
          v11[6] = 1;
          if ((v103 & 0x40) == 0)
          {
            goto LABEL_35;
          }

LABEL_34:
          *v11 = 1;
          goto LABEL_35;
        }

LABEL_33:
        if ((v103 & 0x40) != 0)
        {
          goto LABEL_34;
        }

LABEL_35:
        sub_251AD86BC(&v15[v101], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
        sub_251AD8654(v11, &v15[v101], type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
        v102(&v15[v101], 0, 1, v178);
        v105 = [v99 cycleIndex];
        if (!v105)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v105 = sub_251C71514();
        }

        v106 = v105;
        v107 = sub_251C71A94();

        *v15 = v107;
        v108 = [v99 cycleIntervalDays];
        if (!v108)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v108 = sub_251C71514();
        }

        v109 = v108;
        v110 = sub_251C71A94();

        *(v15 + 1) = v110;
        v111 = [v99 dose];
        if (!v111)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v111 = sub_251C71514();
        }

        v112 = v111;
        v113 = sub_251C71A94();

        *(v15 + 2) = v113;
        v114 = [v99 startTimeComponent];
        v115 = v164;
        sub_251C6FBD4();

        v116 = v169;
        sub_251C70134();
        (*v157)(v115, v165);
        v117 = v163;
        sub_251AC553C(v116, v163);
        if ((*v155)(v117, 1, v104) == 1)
        {
          v118 = MEMORY[0x277CC9578];
          sub_251AD86BC(v116, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251AD86BC(v117, &qword_2813E7500, v118);
        }

        else
        {
          v119 = v81;
          v120 = v11;
          v121 = v152;
          (*v151)(v152, v117, v104);
          v122 = sub_251C6FF94();
          v123 = [v153 stringFromDate_];

          v124 = sub_251C70F14();
          v126 = v125;

          v127 = v121;
          v11 = v120;
          v81 = v119;
          v15 = v150;
          v154(v127, v104);
          sub_251AD86BC(v169, &qword_2813E7500, MEMORY[0x277CC9578]);
          *(v15 + 2) = v124;
          *(v15 + 3) = v126;
        }

        v128 = v166;
        sub_251AD8718(v15, v166, type metadata accessor for PBHKMedicationScheduleIntervalData);
        sub_251AD8780(v15, type metadata accessor for PBHKMedicationScheduleIntervalData);

        v37 = v170;
        v176 = v170;
        v93 = *(v170 + 2);
        v129 = *(v170 + 3);
        if (v93 >= v129 >> 1)
        {
          sub_251C0B8BC((v129 > 1), v93 + 1, 1);
          v128 = v166;
          v37 = v176;
        }

        ++v96;
        *(v37 + 2) = v93 + 1;
        sub_251AD8654(v128, &v37[((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v93], type metadata accessor for PBHKMedicationScheduleIntervalData);
        v97 = v159;
        if (v158 == v96)
        {

          goto LABEL_56;
        }
      }
    }

    goto LABEL_68;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_56:
  v130 = v145;
  *(v145 + 12) = v37;
  v131 = v148;
  *(v130 + 113) = [v148 isUnavailable];
  v132 = v147;
  v133 = v146;
  sub_251C703A4();
  result = [v131 compatibilityRange];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *v133 = result;
  result = [v148 compatibilityRange];
  if (v134 >= 0xFFFFFFFF80000000)
  {
    if (v134 <= 0x7FFFFFFF)
    {
      v133[1] = v134;
      v135 = v133;
      v136 = v142;
      sub_251AD8654(v135, v142, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      v137 = v140;
      sub_251AD86BC(v130 + v140, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      sub_251AD8654(v136, v130 + v137, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      v141(v130 + v137, 0, 1, v132);
      sub_251AD8718(v130, v144, type metadata accessor for PBMedicationTrackingSchedule);
      return sub_251AD8780(v130, type metadata accessor for PBMedicationTrackingSchedule);
    }

    goto LABEL_67;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void sub_251AD838C(uint64_t a1)
{
  if (!qword_27F4797E0)
  {
    sub_251AD83FC(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4797E0);
    }
  }
}

void sub_251AD83FC(uint64_t a1)
{
  if (!qword_27F4797E8)
  {
    sub_251A8223C(255, &qword_27F4797F0, 0x277D11570);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4797E8);
    }
  }
}

void sub_251AD8484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251AD838C(255);
    a3(255);
    sub_251AD85B8(&qword_27F4797F8, sub_251AD838C, MEMORY[0x277CBCD90]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251AD85B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AD8600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AD8654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD86BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AD8600(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AD8718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD8780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AD87E0()
{
  result = qword_2813E1FC8;
  if (!qword_2813E1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataError(uint64_t result, int a2, int a3)
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

unint64_t sub_251AD888C()
{
  sub_251C716A4();

  v0 = sub_251C719A4();
  MEMORY[0x25308CDA0](v0);

  return 0xD000000000000020;
}

uint64_t sub_251AD892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v40 = a1;
  sub_251AD8DBC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70014();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPlainText(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v17 = *(v14 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *&v16[v17] = qword_27F4794E0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *&v16[v17];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v19 = sub_251AB6604(v19);
    *&v16[v17] = v19;
  }

  swift_beginAccess();
  *(v19 + 16) = 3;
  *(v19 + 24) = 1;
  if (a3)
  {
    v20 = a4;
    v21 = v38;
  }

  else
  {
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v22 = qword_27F4A2878;
    sub_251C70004();
    v23 = sub_251C6FF94();
    (*(v37 + 8))(v13, v11);
    v24 = [v22 stringFromDate_];

    v21 = sub_251C70F14();
    a3 = v25;

    v20 = a4;
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *&v16[v17];
  if ((v26 & 1) == 0)
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();
    v27 = sub_251AB6604(v27);
    *&v16[v17] = v27;
  }

  swift_beginAccess();
  *(v27 + 64) = v21;
  *(v27 + 72) = a3;

  sub_251AD8ED4(v16, v20, type metadata accessor for PBPlainText);
  v29 = v39;
  v28 = v40;
  sub_251AD8E14(v40, v39);
  v30 = *(v14 + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_251AD8E78(v28);
    v31 = *(v20 + v30);
  }

  else
  {
    type metadata accessor for PBPlainText._StorageClass(0);
    swift_allocObject();

    v31 = sub_251AB6604(v32);
    sub_251AD8E78(v28);

    *(v20 + v30) = v31;
  }

  sub_251AD8ED4(v29, v8, type metadata accessor for PBTypedData);
  v33 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9B14(v8, v31 + v34);
  return swift_endAccess();
}

void sub_251AD8DBC(uint64_t a1)
{
  if (!qword_27F479500)
  {
    type metadata accessor for PBPlainText.OneOf_Plaintext(255);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479500);
    }
  }
}

uint64_t sub_251AD8E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTypedData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AD8E78(uint64_t a1)
{
  v2 = type metadata accessor for PBTypedData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD8ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_251AD8F3C()
{
  sub_251AD9288(0, &qword_27F479818, sub_251AD9254, MEMORY[0x277CBCE78]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  sub_251AD9338(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v12 = result;
    v13 = [result hksp_supportsSleepDaemon];

    if (v13)
    {
      *(swift_allocObject() + 16) = v0;
      sub_251AD95D8(0);
      swift_allocObject();
      v14 = v0;
      v17 = sub_251C70A64();
      sub_251AD9670(&qword_27F479848, sub_251AD95D8, MEMORY[0x277CBCEB0]);
      v15 = sub_251C70A94();
    }

    else
    {
      v17 = 0;
      sub_251AD9254(0);
      sub_251C70A24();
      sub_251A82284();
      sub_251C709F4();
      (*(v3 + 8))(v5, v2);
      sub_251AD9670(&qword_27F479838, sub_251AD9338, MEMORY[0x277CBCF40]);
      v15 = sub_251C70A94();
      (*(v8 + 8))(v10, v7);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251AD9288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251AD92EC()
{
  result = qword_27F479828;
  if (!qword_27F479828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479828);
  }

  return result;
}

void sub_251AD9358(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_2813E26F8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    v14 = [v9 description];
    v15 = sub_251C70F14();
    v17 = v16;

    v18 = sub_251B10780(v15, v17, v22);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_251A6C000, v10, v11, "Requesting sleep schedule from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = sub_251AD96B8;
  v19[4] = v6;
  v22[4] = sub_251AD99A0;
  v22[5] = v19;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_251AD9914;
  v22[3] = &block_descriptor_1;
  v20 = _Block_copy(v22);
  v21 = v9;

  [v21 currentSleepScheduleWithCompletion_];
  _Block_release(v20);
}

void sub_251AD95F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AD9254(255);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AD9670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251AD96B8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_251AD96F8(uint64_t a1, void *a2, void *a3, void (*a4)(void, void))
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315138;
    v13 = [v9 description];
    v14 = sub_251C70F14();
    v15 = a4;
    v16 = a1;
    v18 = v17;

    v19 = sub_251B10780(v14, v18, &v22);
    a1 = v16;
    a4 = v15;

    *(v12 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "Done with sleep schedule from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  if (a2)
  {
    v20 = a2;
    a4(a2, 1);
  }

  else
  {
    a4(a1, 0);
  }
}

void sub_251AD9914(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AD99C4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251AD99DC()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_251AD9A08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_251AD9A24(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_251AD9A44(uint64_t a1, uint64_t a2)
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251AD9AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251ADA638();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251AD9AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

BOOL sub_251AD9B64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_251AD9BA0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B98);
  __swift_project_value_buffer(v0, qword_27F4A1B98);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "RV_VERSION_X";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "RV_VERSION_1";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251AD9D74()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BB0);
  __swift_project_value_buffer(v0, qword_27F4A1BB0);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251C763E0;
  v5 = v15 + v4 + *(v2 + 56);
  *(v15 + v4) = 1;
  *v5 = "rv";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v15 + v4 + v3 + *(v2 + 56);
  *(v15 + v4 + v3) = 2;
  *v9 = "rv_version";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v15 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v15 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "health_institute_id";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251AD9FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_251AB99F4();
          goto LABEL_15;
        }

        if (result == 4)
        {
          sub_251C70534();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_251C704D4();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          sub_251ADA638();
LABEL_15:
          v3 = v6;
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251ADA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v4;
  if (v3[2])
  {
    sub_251ADA638();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }

    v11 = 0;
  }

  if (v3[4])
  {
    sub_251AB99F4();
    v12 = v11;
    result = sub_251C70604();
    if (v11)
    {
      return result;
    }
  }

  else
  {
    v12 = v11;
  }

  v13 = v3[7];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v3[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_251C70674(), !v12))
  {
    type metadata accessor for PBRevocationAuthorization(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251ADA254@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251ADA2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251ADA970(&qword_27F479870, type metadata accessor for PBRevocationAuthorization, &unk_251C764A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251ADA388(uint64_t a1)
{
  v2 = sub_251ADA970(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251ADA3F4(uint64_t a1, uint64_t a2)
{
  sub_251ADA970(&qword_27F479858, type metadata accessor for PBRevocationAuthorization, &unk_251C764E0);

  return sub_251C705C4();
}

uint64_t type metadata accessor for PBRevocationAuthorization(uint64_t a1)
{
  result = qword_2813E3C30;
  if (!qword_2813E3C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ADA5E0(uint64_t a1)
{
  if (!qword_27F478F88)
  {
    sub_251A93770(255);
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478F88);
    }
  }
}

unint64_t sub_251ADA638()
{
  result = qword_27F479878;
  if (!qword_27F479878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479878);
  }

  return result;
}

uint64_t sub_251ADA68C(uint64_t a1, uint64_t a2)
{
  if (!sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (sub_251C719D4() & 1) != 0)
  {
    type metadata accessor for PBRevocationAuthorization(0);
    sub_251C703B4();
    sub_251ADA970(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_251C70ED4() & 1;
  }

  return 0;
}

uint64_t sub_251ADA838(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_251ADA8D4()
{
  result = qword_27F479880;
  if (!qword_27F479880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479880);
  }

  return result;
}

uint64_t sub_251ADA970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251ADA9B8()
{
  if (!qword_27F479890)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479890);
    }
  }
}

unint64_t sub_251ADAA0C()
{
  result = qword_27F479898;
  if (!qword_27F479898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479898);
  }

  return result;
}

unint64_t sub_251ADAA64()
{
  result = qword_27F4798A0;
  if (!qword_27F4798A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4798A0);
  }

  return result;
}

id WebRequestResponse.response.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  sub_251A85E50(v2, v3);

  return v5;
}

uint64_t WebRequestResponseError.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebRequestResponseError(0) + 20);

  return sub_251ADAB7C(v3, a1);
}

uint64_t sub_251ADAB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t WebRequestResponseError.ErrorType.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HTTPError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_251ADAB7C(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v7;
      v16 = v25;
      v17 = v25;
      sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
      sub_251AA98B0(0, &qword_27F4798A8, MEMORY[0x277CC89C8]);
      if (swift_dynamicCast())
      {
        sub_251A7E8D8(v23, &v26);
        __swift_project_boxed_opaque_existential_1(&v26, v28);
        v15 = sub_251C6FCA4();

        __swift_destroy_boxed_opaque_existential_1(&v26);
      }

      else
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        sub_251ADB59C(v23, sub_251ADAF78);
        swift_getErrorValue();
        v15 = sub_251C71A44();
      }
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_251ADB868(v7, v4, type metadata accessor for HTTPError);
    v26 = 0x7272652050545448;
    v27 = 0xEB0000000020726FLL;
    v18 = HTTPError.errorDescription.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 0x6E776F6E6B6E757BLL;
      v20 = 0xE90000000000007DLL;
    }

    MEMORY[0x25308CDA0](v18, v20);

    v15 = v26;
    sub_251ADB59C(v4, type metadata accessor for HTTPError);
  }

  else
  {
    v9 = *v7;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_251C716A4();

    v26 = 0xD00000000000002DLL;
    v27 = 0x8000000251C8A680;
    v10 = v9;
    v11 = [v10 description];
    v12 = sub_251C70F14();
    v14 = v13;

    MEMORY[0x25308CDA0](v12, v14);

    return v26;
  }

  return v15;
}

void sub_251ADAF78(uint64_t a1)
{
  if (!qword_27F4798B0)
  {
    sub_251AA98B0(255, &qword_27F4798A8, MEMORY[0x277CC89C8]);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4798B0);
    }
  }
}

unint64_t WebRequestResponseError.localizedDescription.getter()
{
  type metadata accessor for WebRequestResponseError(0);
  result = WebRequestResponseError.ErrorType.errorDescription.getter();
  if (!v1)
  {
    type metadata accessor for WebRequestResponseError.ErrorType(0);
    sub_251ADB918(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
    return sub_251C71A44();
  }

  return result;
}

uint64_t WebRequestResponseError.completeDescription.getter()
{
  v1 = v0;
  sub_251C716A4();

  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_251C38014(v2, v3);
  MEMORY[0x25308CDA0](v4);

  MEMORY[0x25308CDA0](0x2064656C69616620, 0xEE00203A68746977);
  v5 = *(type metadata accessor for WebRequestResponseError(0) + 20);
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  sub_251ADB918(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType, &protocol conformance descriptor for WebRequestResponseError.ErrorType);
  v6 = swift_allocError();
  sub_251ADAB7C(v1 + v5, v7);
  v8 = sub_251C6FD74();
  v9 = [v8 hrs_completeDescription];

  v10 = sub_251C70F14();
  v12 = v11;

  MEMORY[0x25308CDA0](v10, v12);

  return 0x2074736575716572;
}

uint64_t WebRequestResponseError.safelyLoggableDescription.getter()
{
  v1 = v0;
  sub_251C716A4();

  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_251C382FC(v2, v3);
  MEMORY[0x25308CDA0](v4);

  MEMORY[0x25308CDA0](0x2064656C69616620, 0xEE00203A68746977);
  type metadata accessor for WebRequestResponseError(0);
  v5 = WebRequestResponseError.ErrorType.safelyLoggableDescription.getter();
  MEMORY[0x25308CDA0](v5);

  return 0x2074736575716572;
}

unint64_t WebRequestResponseError.ErrorType.safelyLoggableDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HTTPError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251ADAB7C(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v7;
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_251C716A4();

      v17 = 0xD000000000000012;
      v18 = 0x8000000251C8A6D0;
      swift_getErrorValue();
      v12 = sub_251BBFFA4(v16[3], v16[4]);
      MEMORY[0x25308CDA0](v12);

      return v17;
    }

    return 0xD000000000000014;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *v7;
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_251C716A4();

      v17 = 0xD00000000000002ELL;
      v18 = 0x8000000251C8A6F0;
      v16[1] = swift_getObjectType();
      sub_251ADB5FC();
      v10 = sub_251C70F74();
      MEMORY[0x25308CDA0](v10);

      return v17;
    }

    sub_251ADB868(v7, v4, type metadata accessor for HTTPError);
    v17 = 0x7272652050545448;
    v18 = 0xEB0000000020726FLL;
    v14 = HTTPError.safelyLoggableDescription.getter();
    MEMORY[0x25308CDA0](v14);

    v15 = v17;
    sub_251ADB59C(v4, type metadata accessor for HTTPError);
    return v15;
  }
}

uint64_t sub_251ADB59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251ADB5FC()
{
  result = qword_27F4798C0;
  if (!qword_27F4798C0)
  {
    sub_251ADB644();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4798C0);
  }

  return result;
}

unint64_t sub_251ADB644()
{
  result = qword_27F479480;
  if (!qword_27F479480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479480);
  }

  return result;
}

uint64_t WebRequestResponseError.ErrorType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_251ADB810(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a1;
  v7 = a1;
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  v8 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  if (swift_dynamicCast())
  {

    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_251ADB868(v6, a2, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    *a2 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}

void sub_251ADB810(uint64_t a1)
{
  if (!qword_27F4798C8)
  {
    type metadata accessor for WebRequestResponseError.ErrorType(255);
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4798C8);
    }
  }
}

uint64_t sub_251ADB868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ADB918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251ADBA04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_251ADBA4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251ADBAD4(uint64_t a1)
{
  result = sub_251AA98B0(319, &qword_27F4798E0, &protocol descriptor for WebRequest);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WebRequestResponseError.ErrorType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251ADBB68(uint64_t a1)
{
  result = sub_251ADB644();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HTTPError(319);
    if (v3 <= 0x3F)
    {
      result = sub_251AA98B0(319, &qword_2813E1C30, MEMORY[0x277D84948]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251ADBC1C(uint64_t a1)
{
  v3[2] = a1;
  off_281CE7B10(v3);
  if (v3[1])
  {
    v1 = sub_251C70EE4();

    return v1;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADBE84(unint64_t a1, char a2)
{
  if (a2)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {
    if (a1 >= 18)
    {
      if (a1 >= 0x14)
      {
        if (a1 <= 0x50)
        {
        }
      }
    }

    return sub_251C712A4();
  }
}

uint64_t sub_251ADBF48(uint64_t a1)
{
  v1 = sub_251C70EE4();

  return v1;
}

uint64_t sub_251ADC078(void (*a1)(void))
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(v1, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  (*(v4 + 32))(v6, v9, v3);
  a1(0);
  sub_251C6FF74();
  v12 = v11;
  result = (*(v4 + 8))(v6, v3);
  v13 = v12 / 60.0;
  if (COERCE__INT64(fabs(v12 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 9.22337204e18)
  {
    return sub_251C712A4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_251ADC27C(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v1 = sub_251C717F4();
    }

    else
    {
      v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v1 != 0;

    return MEMORY[0x28211EA78](v2);
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }
}

uint64_t sub_251ADC300()
{
  if (*v0)
  {
    v1 = sub_251C6FD74();
    v2 = [v1 domain];

    sub_251C70F14();
    v3 = sub_251C70EE4();

    return v3;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADC3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  (a3)(*v3, a2);
  if (v4)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {

    return sub_251C712A4();
  }
}

uint64_t sub_251ADC460()
{
  v1 = sub_251B2A084(*v0);
  if (v1 == 2)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {
    v3 = v1 & 1;

    return MEMORY[0x28211EA78](v3);
  }
}

uint64_t sub_251ADC51C()
{
  if (*v0)
  {
    sub_251B09A24(*v0);
  }

  return sub_251C712A4();
}

void sub_251ADC5F8()
{
  sub_251C6FF74();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_251C712A4();
}

uint64_t sub_251ADC68C()
{
  if (*(v0 + 8))
  {

    return sub_251C70EE4();
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADC728(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  if (v3)
  {
    v4 = sub_251C70EE4();

    return v4;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

unint64_t sub_251ADC79C()
{
  result = qword_27F4798F8;
  if (!qword_27F4798F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4798F8);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingSyncTask(uint64_t a1)
{
  result = qword_2813E43E0;
  if (!qword_2813E43E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ADC864(uint64_t a1)
{
  type metadata accessor for HKClinicalSharingOptions(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKClinicalSharingReason(319);
    if (v2 <= 0x3F)
    {
      sub_251C70014();
      if (v3 <= 0x3F)
      {
        sub_251AA98B0(319, qword_2813E7418, &protocol descriptor for ClinicalSharingDaemonEnvironment);
        if (v4 <= 0x3F)
        {
          sub_251C70074();
          if (v5 <= 0x3F)
          {
            sub_251A8223C(319, &qword_2813E1DB0, 0x277CCD570);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ClinicalSharingCloudStandardAPI(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ClinicalSharingDAIManager();
                if (v8 <= 0x3F)
                {
                  sub_251AE40A0(319, &qword_2813E1B80, sub_251ADC9F8, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251ADC9F8()
{
  result = qword_2813E1B88;
  if (!qword_2813E1B88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813E1B88);
  }

  return result;
}

uint64_t sub_251ADCA48()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingSyncTask(0);
  v3 = (v2 - 8);
  v36 = *(v2 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE3F70(0);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_251C70014();
  v33 = *(v42 - 8);
  v8 = *(v33 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v38 = &v32 - v11;
  sub_251C70004();
  v13 = type metadata accessor for ClinicalSharingSyncContext(0);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + v3[9]), *(v0 + v3[9] + 24));
  v15 = *(v0 + v3[15]);
  v16 = *(v0 + v3[12]);
  v17 = (v0 + v3[17]);
  v19 = *v17;
  v18 = v17[1];
  v20 = v14[2];
  v21 = sub_251AE1C24(v20, v15, v16, v19, v18, v13);
  v37 = v21;

  v43 = v21;
  v22 = v34;
  sub_251AE57A8(v1, v34, type metadata accessor for ClinicalSharingSyncTask);
  v23 = v33;
  v24 = v42;
  (*(v33 + 16))(v10, v12, v42);
  v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v26 = (v35 + *(v23 + 80) + v25) & ~*(v23 + 80);
  v27 = swift_allocObject();
  sub_251AE5BE4(v22, v27 + v25, type metadata accessor for ClinicalSharingSyncTask);
  (*(v23 + 32))(v27 + v26, v10, v24);
  sub_251C70964();
  sub_251AE7808(0, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
  sub_251AA8E98(0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE7918(0, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
  sub_251AE4104();
  v28 = v39;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E22A0, sub_251AE3F70, MEMORY[0x277CBCCE0]);
  v29 = v40;
  v30 = sub_251C70A94();
  (*(v41 + 8))(v28, v29);
  (*(v23 + 8))(v38, v42);
  return v30;
}

uint64_t sub_251ADCEE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v107 = a3;
  v115 = a4;
  v104 = sub_251C70014();
  v101 = *(v104 - 8);
  v103 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE430C(0);
  v90 = v7;
  v91 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingSyncTask(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = v9 - 8;
  v85 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v13 = MEMORY[0x277CBCB58];
  sub_251AE7A1C(0, &qword_2813E26E0, MEMORY[0x277CBCB58]);
  v87 = v14;
  v88 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  v92 = MEMORY[0x277CBCCD8];
  sub_251AE61B8(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v93 = v17;
  v94 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v84 - v18;
  sub_251AE447C(0);
  v95 = v19;
  v96 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v118 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE4530(0);
  v97 = v21;
  v98 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v120 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE46BC(0);
  v105 = v23;
  v106 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v119 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE47C8(0);
  v26 = *(v25 - 8);
  v109 = v25;
  v110 = v26;
  MEMORY[0x28223BE20](v25);
  v99 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE48FC(0);
  v29 = *(v28 - 8);
  v111 = v28;
  v112 = v29;
  MEMORY[0x28223BE20](v28);
  v102 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE4A08(0);
  v32 = *(v31 - 8);
  v113 = v31;
  v114 = v32;
  MEMORY[0x28223BE20](v31);
  v108 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_251ADDF44(*a1);
  v123 = type metadata accessor for ClinicalSharingSyncTask;
  v121 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE57A8(a2, v121, type metadata accessor for ClinicalSharingSyncTask);
  v34 = *(v10 + 80);
  v124 = ((v34 + 16) & ~v34) + v11;
  v35 = (v34 + 16) & ~v34;
  v122 = v35;
  v126 = v34 | 7;
  v36 = swift_allocObject();
  v125 = type metadata accessor for ClinicalSharingSyncTask;
  sub_251AE5BE4(&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for ClinicalSharingSyncTask);
  v127 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  sub_251C70AB4();

  v37 = *(a2 + *(v12 + 60));
  *(swift_allocObject() + 16) = v37;
  v38 = v37;
  sub_251C70964();
  v84 = type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251AE4438(&qword_2813E26E8, &qword_2813E26E0, v13, MEMORY[0x277CBCB60]);
  v39 = v86;
  v40 = v87;
  sub_251C70B94();

  v41 = MEMORY[0x277CBCCE0];
  v117 = MEMORY[0x277CBCCE0];
  sub_251AE42C4(&qword_2813E2390, sub_251AE430C, MEMORY[0x277CBCCE0]);
  v42 = v90;
  v43 = sub_251C70A94();
  (*(v91 + 8))(v39, v42);
  (*(v88 + 8))(v16, v40);
  v128 = v43;
  v44 = *(a2 + *(v85 + 64));
  v116 = a2;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_251AE4AEC;
  *(v45 + 24) = v44;

  sub_251C70964();
  v46 = v89;
  sub_251C70B94();

  sub_251AE63E0(&qword_2813E2370, &qword_2813E2368, v92, v41);
  v47 = v93;
  sub_251C70B64();
  (*(v94 + 8))(v46, v47);
  v48 = v121;
  v49 = v123;
  sub_251AE57A8(a2, v121, v123);
  v50 = swift_allocObject();
  v51 = v122;
  sub_251AE5BE4(v48, v50 + v122, v125);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_251AE4D74;
  *(v52 + 24) = v50;
  sub_251C70964();
  sub_251AE463C(0);
  sub_251AE7808(0, &qword_2813E2140, sub_251AE463C, v127);
  sub_251AE42C4(&qword_2813E2460, sub_251AE447C, MEMORY[0x277CBCCD0]);
  sub_251AE417C(&qword_2813E2148, &qword_2813E2140, sub_251AE463C);
  v53 = v95;
  v54 = v118;
  sub_251C70B94();

  (*(v96 + 8))(v54, v53);
  v55 = v121;
  sub_251AE57A8(v116, v121, v49);
  v56 = v101;
  v57 = v100;
  v58 = v104;
  (*(v101 + 16))(v100, v107, v104);
  v59 = v56;
  v60 = (v124 + *(v56 + 80)) & ~*(v56 + 80);
  v61 = swift_allocObject();
  v62 = v61 + v51;
  v63 = v125;
  sub_251AE5BE4(v55, v62, v125);
  (*(v59 + 32))(v61 + v60, v57, v58);
  sub_251C70964();
  sub_251AE406C(0);
  v107 = v64;
  sub_251AE7808(0, &qword_2813E2130, sub_251AE406C, v127);
  v104 = v65;
  sub_251AE42C4(&qword_2813E22F0, sub_251AE4530, v117);
  v118 = sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
  v66 = v97;
  v67 = v120;
  sub_251C70B94();

  (*(v98 + 8))(v67, v66);
  v68 = v116;
  v69 = v121;
  sub_251AE57A8(v116, v121, v123);
  v70 = swift_allocObject();
  sub_251AE5BE4(v69, v70 + v122, v63);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_251AE515C;
  *(v71 + 24) = v70;
  sub_251C70964();
  sub_251AE48D4(0);
  sub_251AE7808(0, &qword_2813E2150, sub_251AE48D4, v127);
  v72 = v117;
  sub_251AE42C4(&qword_2813E22D0, sub_251AE46BC, v117);
  sub_251AE417C(&qword_2813E2158, &qword_2813E2150, sub_251AE48D4);
  v73 = v99;
  v74 = v105;
  v75 = v119;
  sub_251C70B94();

  (*(v106 + 8))(v75, v74);
  sub_251AE57A8(v68, v69, v123);
  v76 = swift_allocObject();
  sub_251AE5BE4(v69, v76 + v122, v125);
  sub_251C70964();
  sub_251AE42C4(&qword_2813E2300, sub_251AE47C8, v72);
  v77 = v102;
  v78 = v109;
  sub_251C70B94();

  (*(v110 + 8))(v73, v78);
  sub_251AA8E98(0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE42C4(&qword_2813E22E0, sub_251AE48FC, v72);
  v79 = v108;
  v80 = v111;
  sub_251C70B54();
  (*(v112 + 8))(v77, v80);
  sub_251AE42C4(&qword_2813E24B0, sub_251AE4A08, MEMORY[0x277CBCCC0]);
  v81 = v113;
  v82 = sub_251C70A94();
  result = (*(v114 + 8))(v79, v81);
  *v115 = v82;
  return result;
}

uint64_t sub_251ADDF44(unint64_t a1)
{
  sub_251AE52B8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v138 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7098(0, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
  v7 = v6;
  v139 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v137 = &v112 - v8;
  sub_251AE40A0(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v136 = v9;
  v121 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v118 = &v112 - v10;
  v11 = MEMORY[0x277CBCF38];
  sub_251AE7808(0, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
  v120 = v12;
  v119 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v117 = &v112 - v13;
  sub_251AE7808(0, &qword_2813E1BF0, sub_251AE5E24, v11);
  v124 = v14;
  v123 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v145 = (&v112 - v15);
  sub_251AE5E58(0);
  v127 = v16;
  v126 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v125 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6018(0);
  v131 = *(v18 - 8);
  v132 = v18;
  MEMORY[0x28223BE20](v18);
  v146 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE60AC(0);
  v130 = v20;
  v129 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v128 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE61B8(0, &qword_2813E26F0, MEMORY[0x277CBCB38]);
  v134 = *(v22 - 8);
  v135 = v22;
  MEMORY[0x28223BE20](v22);
  v133 = &v112 - v23;
  v143 = type metadata accessor for ClinicalSharingSyncTask(0);
  v116 = *(v143 - 1);
  v24 = MEMORY[0x28223BE20](v143);
  v114 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v122 = &v112 - v27;
  v144 = v28;
  MEMORY[0x28223BE20](v26);
  v115 = &v112 - v29;
  v150 = MEMORY[0x277D84F90];
  v141 = v7;
  v142 = v3;
  v140 = v4;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v31 = a1;
  v32 = MEMORY[0x277D84F90];
  a1 = &off_2796E0000;
  v148 = v31;
  if (v30)
  {
    v33 = 0;
    v34 = v31 & 0xC000000000000001;
    v35 = v31 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x25308D460](v33, v31);
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v41 = v150;
          v32 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }
      }

      else
      {
        if (v33 >= *(v35 + 16))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v30 = sub_251C717F4();
          goto LABEL_3;
        }

        v36 = *(v31 + 8 * v33 + 32);

        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_25;
        }
      }

      v38 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      if ([*(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] == 1 && objc_msgSend(*(v36 + v38), sel_userStatus) == 2 && (objc_msgSend(*(v36 + v38), sel_multiDeviceStatus) != 2 && objc_msgSend(*(v36 + v38), sel_multiDeviceStatus) != 4 && ((v39 = *(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8)) == 0 || (*(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v40 = v39 == *(v36 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v40 = 0), v40 || (sub_251C719D4() & 1) != 0)) || objc_msgSend(*(v36 + v38), sel_multiDeviceStatus) == 3))
      {
        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
        v31 = v148;
      }

      else
      {
      }

      ++v33;
      if (v37 == v30)
      {
        goto LABEL_26;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_28:
  v42 = v41 < 0 || (v41 & 0x4000000000000000) != 0;
  if (v42)
  {
    if (sub_251C717F4())
    {
      goto LABEL_33;
    }

LABEL_73:

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v96 = sub_251C70764();
    __swift_project_value_buffer(v96, qword_2813E8130);
    v97 = v114;
    sub_251AE57A8(v147, v114, type metadata accessor for ClinicalSharingSyncTask);
    v98 = sub_251C70744();
    v99 = sub_251C713F4();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v150 = v101;
      *v100 = 136315138;
      v102 = (v97 + v143[9]);
      v103 = *v102;
      v104 = v102[1];

      sub_251AE5DC4(v97, type metadata accessor for ClinicalSharingSyncTask);
      v105 = sub_251B10780(v103, v104, &v150);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_251A6C000, v98, v99, "%s No accounts available to sync for", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x25308E2B0](v101, -1, -1);
      MEMORY[0x25308E2B0](v100, -1, -1);
    }

    else
    {

      sub_251AE5DC4(v97, type metadata accessor for ClinicalSharingSyncTask);
    }

    v107 = v141;
    v106 = v142;
    v108 = v140;
    v150 = v148;
    sub_251AE406C(0);
    sub_251AE5338();
    v109 = v138;
    sub_251C710D4();
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    v110 = v137;
    sub_251C708E4();
    (*(v108 + 8))(v109, v106);
    sub_251AE548C();
    v95 = sub_251C70A94();
    (*(v139 + 8))(v110, v107);
    return v95;
  }

  if (!*(v41 + 16))
  {
    goto LABEL_73;
  }

LABEL_33:
  v150 = v32;
  if (!v30)
  {
    goto LABEL_57;
  }

  LODWORD(v113) = v42;
  v114 = v41;
  v43 = 0;
  v44 = v31 & 0xC000000000000001;
  v45 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v44)
    {
      v46 = MEMORY[0x25308D460](v43, v31);
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      goto LABEL_40;
    }

    if (v43 >= *(v45 + 16))
    {
      goto LABEL_70;
    }

    v46 = *(v31 + 8 * v43 + 32);

    v47 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

LABEL_40:
    v48 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
    if ([*(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) *(a1 + 3616)] != 1 || objc_msgSend(*(v46 + v48), sel_userStatus) != 2)
    {
      goto LABEL_35;
    }

    if ([*(v46 + v48) multiDeviceStatus] != 2 && objc_msgSend(*(v46 + v48), sel_multiDeviceStatus) != 4)
    {
      v49 = *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
      if (!v49 || (*(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v50 = v49 == *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v50 = 0), v50 || (sub_251C719D4() & 1) != 0))
      {

        a1 = 0x2796E0000;
        goto LABEL_36;
      }
    }

    a1 = 0x2796E0000;
    if ([*(v46 + v48) multiDeviceStatus] == 3)
    {
    }

    else
    {
LABEL_35:
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v31 = v148;
    }

LABEL_36:
    ++v43;
    if (v47 == v30)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_56:
  v32 = v150;
  v41 = v114;
  v42 = v113;
LABEL_57:
  v51 = v115;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v52 = sub_251C70764();
  __swift_project_value_buffer(v52, qword_2813E8130);
  sub_251AE57A8(v147, v51, type metadata accessor for ClinicalSharingSyncTask);

  v53 = sub_251C70744();
  v54 = sub_251C713F4();
  v55 = os_log_type_enabled(v53, v54);
  v114 = v32;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v150 = v57;
    *v56 = 136315650;
    v58 = (v51 + v143[9]);
    v59 = *v58;
    v60 = v58[1];

    sub_251AE5DC4(v51, type metadata accessor for ClinicalSharingSyncTask);
    v61 = sub_251B10780(v59, v60, &v150);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2048;
    if (v42)
    {
      v62 = sub_251C717F4();
    }

    else
    {
      v62 = *(v41 + 16);
    }

    *(v56 + 14) = v62;

    *(v56 + 22) = 2048;
    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      v63 = sub_251C717F4();
    }

    else
    {
      v63 = *(v32 + 16);
    }

    *(v56 + 24) = v63;

    _os_log_impl(&dword_251A6C000, v53, v54, "%s Starting data collection and node upload for %ld accounts. %ld accounts should not sync.", v56, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x25308E2B0](v57, -1, -1);
    MEMORY[0x25308E2B0](v56, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v51, type metadata accessor for ClinicalSharingSyncTask);
  }

  v150 = v41;
  sub_251AE406C(0);
  v115 = v64;
  v65 = v118;
  sub_251C70A24();
  v113 = sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  v66 = v117;
  v67 = v136;
  sub_251C709F4();
  (*(v121 + 1))(v65, v67);
  sub_251AE5E24(0);
  v68 = v120;
  sub_251C71AE4();
  (*(v119 + 8))(v66, v68);
  v121 = type metadata accessor for ClinicalSharingSyncTask;
  v69 = v147;
  v70 = v122;
  sub_251AE57A8(v147, v122, type metadata accessor for ClinicalSharingSyncTask);
  v120 = *(v116 + 80);
  v71 = (v120 + 16) & ~v120;
  v72 = swift_allocObject();
  v136 = type metadata accessor for ClinicalSharingSyncTask;
  sub_251AE5BE4(v70, v72 + v71, type metadata accessor for ClinicalSharingSyncTask);
  sub_251C70964();
  sub_251AE5AC0(0, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
  sub_251AE5FB4(&qword_2813E1BF8, &qword_2813E1BF0, sub_251AE5E24);
  sub_251AE5F64(&qword_2813E2178, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
  v73 = v125;
  v74 = v124;
  v75 = v145;
  sub_251C70B94();

  (*(v123 + 8))(v75, v74);
  v76 = v121;
  sub_251AE57A8(v69, v70, v121);
  v77 = swift_allocObject();
  sub_251AE5BE4(v70, v77 + v71, v136);
  sub_251AE42C4(&qword_2813E2320, sub_251AE5E58, MEMORY[0x277CBCCE0]);
  v78 = v127;
  sub_251C70AB4();

  (*(v126 + 8))(v73, v78);
  sub_251AE57A8(v69, v70, v76);
  v79 = swift_allocObject();
  sub_251AE5BE4(v70, v79 + v71, v136);
  sub_251C70964();
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v145 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
  sub_251AE42C4(&qword_2813E26B0, sub_251AE6018, MEMORY[0x277CBCB60]);
  sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  v80 = v128;
  v81 = v132;
  v82 = v146;
  sub_251C70B94();

  (*(v131 + 8))(v82, v81);
  v84 = v143[11];
  v83 = v143[12];
  v85 = sub_251AE2A58(v69 + v83, v69 + v84, v80);
  (*(v129 + 8))(v80, v130);
  v86 = sub_251AE322C(v69 + v83, v69 + v84, v85);

  v87 = sub_251AE39BC(v69 + v83, v69 + v84, v148, v86);

  v149 = v114;
  v150 = v87;
  sub_251AE5338();
  v88 = v138;
  sub_251C710D4();

  v89 = v137;
  v90 = v142;
  sub_251C708E4();
  (*(v140 + 8))(v88, v90);
  sub_251AE548C();
  v91 = v141;
  v92 = sub_251C70A94();
  (*(v139 + 8))(v89, v91);
  v149 = v92;
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v145);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v93 = v133;
  sub_251C70B44();

  sub_251AE63E0(&qword_27F479900, &qword_2813E26F0, MEMORY[0x277CBCB38], MEMORY[0x277CBCB40]);
  v94 = v135;
  v95 = sub_251C70A94();
  (*(v134 + 8))(v93, v94);
  return v95;
}

void sub_251ADF460(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for ClinicalSharingSyncTask(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v6 = sub_251C70764();
  __swift_project_value_buffer(v6, qword_2813E8130);
  sub_251AE57A8(a2, v5, type metadata accessor for ClinicalSharingSyncTask);

  v7 = sub_251C70744();
  v8 = sub_251C713F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = &v5[*(v3 + 36)];
    v12 = *v11;
    v13 = v11[1];

    sub_251AE5DC4(v5, type metadata accessor for ClinicalSharingSyncTask);
    v14 = sub_251B10780(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_251C70074();
    sub_251AE42C4(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_251C719A4();
    v17 = sub_251B10780(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s will now attempt to update DocumentReference for account %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v5, type metadata accessor for ClinicalSharingSyncTask);
  }
}

uint64_t sub_251ADF710(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5C58(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalSharingSyncTask(0);
  sub_251C70004();
  v11 = sub_251C3B940(v5);
  (*(v3 + 8))(v5, v2);
  v14[1] = v11;
  *(swift_allocObject() + 16) = a1;
  sub_251AE591C(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
  sub_251AE463C(0);
  sub_251AE5D00();

  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E2630, sub_251AE5C58, MEMORY[0x277CBCC08]);
  v12 = sub_251C70A94();
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_251ADF9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a1;
  sub_251AE5884(0);
  v52 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5A2C(0);
  v54 = v20;
  v51 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v48 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5B38(0);
  v53 = v22;
  v50 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v47 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ClinicalSharingSyncTask(0);
  sub_251A823B4(v4 + *(v24 + 28), &v56);
  v46 = *(v4 + 8);
  sub_251C70004();
  if (a2 && (v25 = *(a2 + 16), v26 = v25 >= 2, v27 = v25 - 2, v26))
  {
    (*(v14 + 16))(v12, a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v27, v13);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v14 + 56))(v12, v28, 1, v13);
  (*(v14 + 16))(&v19[v17[10]], a3, v13);
  v29 = *__swift_project_boxed_opaque_existential_1(&v56, v57);
  v30 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v31 = v29;
  v32 = sub_251C70EE4();
  v33 = [v30 initWithCategory:3 domainName:v32 healthStore:v31];

  *&v19[v17[6]] = v33;
  (*(v14 + 32))(&v19[v17[5]], v16, v13);
  v34 = v55;
  *&v19[v17[7]] = v55;
  sub_251AE5BE4(v12, &v19[v17[9]], sub_251ABCCD4);
  *&v19[v17[8]] = v46;
  sub_251A7E8D8(&v56, v19);

  *&v56 = sub_251B18034();
  sub_251AE591C(0, &qword_2813E21F0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
  sub_251AE59A8();
  v35 = MEMORY[0x277D839B0];
  sub_251C70AE4();

  v36 = MEMORY[0x277CBCC08];
  sub_251AE42C4(&qword_2813E2668, sub_251AE5884, MEMORY[0x277CBCC08]);
  v37 = v52;
  v38 = sub_251C70A94();
  (*(v49 + 8))(v9, v37);
  sub_251AE5DC4(v19, type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask);
  *&v56 = v38;
  sub_251AE5AC0(0, &qword_2813E20D0, v35);
  sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0, v35);
  v39 = v48;
  sub_251C70B64();

  *(swift_allocObject() + 16) = v34;
  sub_251AE406C(0);
  sub_251AE42C4(&qword_2813E2480, sub_251AE5A2C, MEMORY[0x277CBCCD0]);

  v40 = v47;
  v41 = v54;
  sub_251C70AE4();

  (*(v51 + 8))(v39, v41);
  sub_251AE42C4(&qword_2813E2540, sub_251AE5B38, v36);
  v42 = v53;
  v43 = sub_251C70A94();
  (*(v50 + 8))(v40, v42);
  return v43;
}

uint64_t sub_251AE0098(uint64_t a1)
{
  v2 = v1;
  sub_251AE55F0(0);
  v38 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE40A0(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_251AE7808(0, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
  v34 = v12;
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_251AE56FC(0);
  v37 = v15;
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  *&v41[0] = a1;
  sub_251AE406C(0);

  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C709F4();
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for ClinicalSharingSyncTask(0);
  v19 = *(v2 + v18[10]);
  v20 = v18[12];
  v44[3] = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v44[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  sub_251AE57A8(v2 + v20, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  v22 = v18[11];
  sub_251A823B4(v44, v43);
  sub_251AE5810(v2 + v22, v41);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_251A7E8D8(v43, v23 + 24);
  v24 = v41[3];
  *(v23 + 96) = v41[2];
  *(v23 + 112) = v24;
  *(v23 + 128) = v41[4];
  *(v23 + 144) = v42;
  v25 = v41[1];
  *(v23 + 64) = v41[0];
  *(v23 + 80) = v25;
  v26 = v19;
  sub_251C70964();
  sub_251AE5AC0(0, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
  sub_251AE5FB4(&qword_2813E1BE8, &qword_2813E1BE0, sub_251AE406C);
  sub_251AE5F64(&qword_2813E2188, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata);
  v27 = v34;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E2330, sub_251AE55F0, MEMORY[0x277CBCCE0]);
  v28 = v38;
  v29 = sub_251C70A94();
  (*(v40 + 8))(v6, v28);
  (*(v36 + 8))(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *&v41[0] = v29;
  *(swift_allocObject() + 16) = v35;
  sub_251AE48D4(0);

  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E2610, sub_251AE56FC, MEMORY[0x277CBCC08]);
  v30 = v37;
  v31 = sub_251C70A94();
  (*(v39 + 8))(v17, v30);
  return v31;
}

uint64_t sub_251AE06A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251AE52B8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7098(0, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  sub_251AE536C(0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5528(0);
  v20 = *(v19 - 8);
  v34 = v19;
  v35 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_251AE406C(0);
  sub_251AE5338();
  sub_251C710D4();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C708E4();
  (*(v8 + 8))(v10, v7);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
  sub_251AE548C();
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v24 = v30;
  sub_251C70B94();

  (*(v31 + 8))(v14, v24);
  sub_251AE42C4(&qword_2813E2380, sub_251AE536C, MEMORY[0x277CBCCE0]);
  v25 = v32;
  sub_251C70B64();
  (*(v33 + 8))(v18, v25);
  sub_251AE42C4(&qword_2813E2470, sub_251AE5528, MEMORY[0x277CBCCD0]);
  v26 = v34;
  v27 = sub_251C70A94();
  (*(v35 + 8))(v22, v26);
  return v27;
}

uint64_t sub_251AE0B50@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = sub_251C70074();
  v5 = *(v39 - 8);
  result = MEMORY[0x28223BE20](v39);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1 >> 62)
  {
    result = sub_251C717F4();
    v9 = result;
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_20:
    *a2 = v10;
    return result;
  }

  v62 = MEMORY[0x277D84F90];
  result = sub_251C71764();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v35[0] = a2;
    v35[1] = v2;
    v11 = 0;
    v40 = v8 & 0xC000000000000001;
    v36 = (v5 + 8);
    v37 = (v5 + 16);
    v38 = v9;
    do
    {
      if (v40)
      {
        v20 = MEMORY[0x25308D460](v11, v8);
      }

      else
      {
        v20 = *(v8 + 8 * v11 + 32);
      }

      v21 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
      if (v21)
      {
        swift_getErrorValue();
        v12 = v42;
        v13 = v8;
        v14 = v43;
        v15 = v21;
        v16 = sub_251BC0124(v12, v14);
        v17 = objc_allocWithZone(MEMORY[0x277D12438]);
        v18 = sub_251C70034();
        v19 = sub_251C6FD74();
        [v17 initWithAccountID:v18 error:v19];

        v8 = v13;
        v9 = v38;
      }

      else
      {
        (*v37)(v41, v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v39);
        v22 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
        v58[0] = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
        v58[1] = v22;
        v24 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
        v23 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
        v25 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
        v61 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
        v59 = v24;
        v60 = v23;
        v58[2] = v25;
        v26 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8);
        v27 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24);
        v57 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40);
        v55 = v26;
        v56 = v27;
        v28 = *&v58[0];
        v29 = *(&v59 + 1);
        v30 = v59;
        v31 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
        v54 = *(v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
        v53 = v31;
        if (*&v58[0])
        {

          v32 = v29;
        }

        else
        {
          v32 = 0;
        }

        v46 = v55;
        v47 = v56;
        v48 = v57;
        v45 = v28;
        v49 = v30;
        v50 = v29;
        v51 = v53;
        v52 = v54;
        sub_251AD1A50(v58, &v44);
        sub_251AD1AD8(&v45);
        v33 = sub_251C70034();
        if (v32)
        {
          v34 = sub_251C70EE4();
        }

        else
        {
          v34 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277D12438]) initWithAccountID:v33 lookupInfo:v34];

        (*v36)(v41, v39);
      }

      ++v11;
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      result = sub_251C71744();
    }

    while (v9 != v11);
    v10 = v62;
    a2 = v35[0];
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AE0F2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = a2;
  a3[1] = v3;
  a3[2] = v4;
}

uint64_t sub_251AE0F78@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = v28 - v10;
  v12 = *a1;
  if (*a1 >> 62)
  {
    v27 = *a1;
    result = sub_251C717F4();
    v12 = v27;
    v13 = result;
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_16:
    *a2 = v14;
    return result;
  }

  v15 = v12;
  v30 = MEMORY[0x277D84F90];
  result = sub_251C0B5E4(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v28[0] = a2;
    v14 = v30;
    v16 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v28[1] = v5 + 32;
      v29 = (v5 + 16);
      do
      {
        v18 = v16;
        v19 = MEMORY[0x25308D460](v17);
        (*v29)(v11, v19 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v4);
        swift_unknownObjectRelease();
        v30 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_251C0B5E4((v20 > 1), v21 + 1, 1);
          v14 = v30;
        }

        ++v17;
        *(v14 + 16) = v21 + 1;
        result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v11, v4);
        v16 = v18;
      }

      while (v13 != v17);
    }

    else
    {
      v22 = (v15 + 32);
      v23 = *(v5 + 16);
      v29 = (v5 + 32);
      do
      {
        v23(v8, *v22 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v4);
        v30 = v14;
        v24 = v4;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_251C0B5E4((v25 > 1), v26 + 1, 1);
          v14 = v30;
        }

        *(v14 + 16) = v26 + 1;
        result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, v8, v24);
        ++v22;
        --v13;
        v4 = v24;
      }

      while (v13);
    }

    a2 = v28[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AE1278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ClinicalSharingSyncTask(0);
  v7 = *__swift_project_boxed_opaque_existential_1((a2 + *(v6 + 28)), *(a2 + *(v6 + 28) + 24));
  sub_251C5D708(v5);

  sub_251AE5AC0(0, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
  sub_251AE5F64(&qword_2813E2178, &qword_2813E2170, &type metadata for ClinicalSharingAuthorizations);
  v8 = sub_251C70A94();

  *a3 = v8;
  return result;
}

void sub_251AE1348(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSyncTask(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  sub_251AE57A8(a2, v6, type metadata accessor for ClinicalSharingSyncTask);

  v9 = sub_251C70744();
  v10 = sub_251C713F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    v13 = &v6[*(v4 + 36)];
    v14 = *v13;
    v15 = v13[1];

    sub_251AE5DC4(v6, type metadata accessor for ClinicalSharingSyncTask);
    v16 = sub_251B10780(v14, v15, &v19);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    v17 = *(sub_251C5DDD8(v7) + 16);

    *(v11 + 14) = v17;

    _os_log_impl(&dword_251A6C000, v9, v10, "%s %ld authorized sharing identifiers", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v6, type metadata accessor for ClinicalSharingSyncTask);
  }
}

uint64_t sub_251AE1590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251AA8A58(0);
  v7 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C701E4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = type metadata accessor for ClinicalSharingSyncTask(0);
  v19 = __swift_project_boxed_opaque_existential_1((a2 + *(v18 + 28)), *(a2 + *(v18 + 28) + 24));
  sub_251AA1810((v19 + 3), v29);
  (*(v14 + 16))(v16, a2 + *(v18 + 24), v13);

  sub_251C70184();
  sub_251AA1810(v29, v28);
  v20 = sub_251AA7C78(v17, v28, v12, v16);
  v22 = v21;
  sub_251AE717C(v29);
  result = sub_251BFE2FC(v20, v22);
  v29[0] = result;
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251AA8C10(0);
    sub_251AE7808(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    v26 = a3;
    sub_251AE7148();
    sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C70BD4();

    sub_251AE42C4(&qword_27F479200, sub_251AA8A58, MEMORY[0x277CBCCE0]);
    v24 = sub_251C70A94();
    (*(v27 + 8))(v9, v7);
    v25 = sub_251BFECFC(v24, v20, v22);

    *v26 = v25;
  }

  return result;
}

uint64_t sub_251AE18FC()
{
  sub_251C716A4();

  type metadata accessor for ClinicalSharingSyncTask(0);
  sub_251AE1BDC();
  v1 = sub_251C70F74();
  MEMORY[0x25308CDA0](v1);

  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v2 = sub_251C70024();
  v4 = sub_251AE3EAC(8, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x25308CD40](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x25308CDA0](v11, v13);

  MEMORY[0x25308CDA0](0x3A6E6F7361657220, 0xE900000000000020);
  v14 = *(v0 + 8);
  if (v14 > 3)
  {
    switch(v14)
    {
      case 4:
        v15 = 0xE700000000000000;
        v16 = 0x676E6974736574;
        goto LABEL_15;
      case 5:
        v15 = 0xEE00646574616974;
        v16 = 0x696E692D72657375;
        goto LABEL_15;
      case 6:
        v15 = 0x8000000251C8A720;
        v16 = 0xD000000000000010;
        goto LABEL_15;
    }

LABEL_12:
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    goto LABEL_15;
  }

  if (v14 == 1)
  {
    v15 = 0xED00006E6F697461;
    v16 = 0x7A69726F68747561;
    goto LABEL_15;
  }

  if (v14 == 2)
  {
    v15 = 0xE800000000000000;
    v16 = 0x617461642D77656ELL;
    goto LABEL_15;
  }

  if (v14 != 3)
  {
    goto LABEL_12;
  }

  v15 = 0xEA0000000000646ELL;
  v16 = 0x756F72676B636162;
LABEL_15:
  MEMORY[0x25308CDA0](v16, v15);

  MEMORY[0x25308CDA0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v17 = sub_251B24874();
  v19 = v18;
  sub_251AE5DC4(&unk_2863F2D90, sub_251AE3F48);
  MEMORY[0x25308CDA0](v17, v19);

  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return 60;
}

unint64_t sub_251AE1BDC()
{
  result = qword_2813E4330[0];
  if (!qword_2813E4330[0])
  {
    type metadata accessor for ClinicalSharingSyncTask(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2813E4330);
  }

  return result;
}

uint64_t sub_251AE1C24(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a5;
  v74 = a4;
  v85 = a3;
  v101 = a2;
  sub_251AE71D0(0);
  v9 = *(v8 - 8);
  v102 = v8;
  v103 = v9;
  MEMORY[0x28223BE20](v8);
  v100 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8D3C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7894(0);
  v79 = v16;
  v80 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE76FC(0);
  v82 = v18;
  v84 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v78 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7528(0);
  v87 = v20;
  v88 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE747C(0);
  v90 = v22;
  v91 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v83 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7370(0);
  v92 = v24;
  v93 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v86 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE72DC(0);
  v94 = v26;
  v96 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v89 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x277CBCCC8];
  sub_251AE7A1C(0, &qword_2813E2488, MEMORY[0x277CBCCC8]);
  v29 = *(v28 - 8);
  v98 = v28;
  v99 = v29;
  MEMORY[0x28223BE20](v28);
  v95 = &v72 - v30;
  v106[3] = &type metadata for ClinicalSharingAccountStore;
  v106[4] = &off_2863F67B8;
  v106[0] = a1;
  *&v104 = a6;
  swift_getMetatypeMetadata();
  v31 = a1;
  v32 = sub_251C70F74();
  v77 = v32;
  v34 = v33;
  *&v104 = *__swift_project_boxed_opaque_existential_1(v106, &type metadata for ClinicalSharingAccountStore);
  v105 = off_2863F67E8[0]();
  sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AE79A4();
  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E25B0, sub_251AA8D3C, MEMORY[0x277CBCC08]);
  v35 = sub_251C70A94();
  (*(v13 + 8))(v15, v12);
  *&v104 = v35;
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = v34;
  v76 = v34;
  v37 = v74;
  v38 = v75;
  v36[4] = v74;
  v36[5] = v38;

  sub_251A7E910(v37, v38);
  v39 = v73;
  sub_251C70AB4();

  sub_251A823B4(v106, &v104);
  v40 = swift_allocObject();
  sub_251A7E8D8(&v104, v40 + 16);
  sub_251C70964();
  sub_251AE76C8(0);
  v41 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E20F0, sub_251AE76C8, MEMORY[0x277CBCD88]);
  v75 = MEMORY[0x277CBCB60];
  sub_251AE42C4(&qword_2813E26D8, sub_251AE7894, MEMORY[0x277CBCB60]);
  sub_251AE417C(&qword_2813E20F8, &qword_2813E20F0, sub_251AE76C8);
  v42 = v78;
  v43 = v79;
  sub_251C70B94();

  (*(v80 + 8))(v39, v43);
  v44 = swift_allocObject();
  v45 = v85;
  *(v44 + 16) = v85;
  v46 = v45;
  sub_251C70964();
  sub_251AE7634(0);
  sub_251AE7808(0, &qword_2813E2100, sub_251AE7634, v41);
  v47 = MEMORY[0x277CBCCE0];
  sub_251AE42C4(&qword_2813E22B0, sub_251AE76FC, MEMORY[0x277CBCCE0]);
  sub_251AE417C(&qword_2813E2108, &qword_2813E2100, sub_251AE7634);
  v48 = v81;
  v49 = v82;
  sub_251C70B94();

  (*(v84 + 8))(v42, v49);
  sub_251A823B4(v106, &v104);
  v50 = swift_allocObject();
  sub_251A7E8D8(&v104, v50 + 16);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_251AE7AF4;
  *(v51 + 24) = v50;
  sub_251AE406C(0);
  sub_251AE42C4(&qword_2813E22C0, sub_251AE7528, v47);
  v52 = v83;
  v53 = v87;
  sub_251C70B54();

  (*(v88 + 8))(v48, v53);
  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v41);
  sub_251AE42C4(&qword_2813E24A0, sub_251AE747C, MEMORY[0x277CBCCC0]);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v54 = v86;
  v55 = v90;
  sub_251C70B94();
  (*(v91 + 8))(v52, v55);
  v56 = swift_allocObject();
  v57 = v76;
  *(v56 + 16) = v77;
  *(v56 + 24) = v57;
  sub_251AE42C4(&qword_2813E23B0, sub_251AE7370, v47);
  v58 = v92;
  v59 = v89;
  sub_251C70AB4();

  (*(v93 + 8))(v54, v58);
  v60 = swift_allocObject();
  v61 = v101;
  *(v60 + 16) = v101;
  v62 = v61;
  sub_251C70964();
  sub_251AE42C4(&qword_2813E26C0, sub_251AE72DC, v75);
  v63 = v100;
  v64 = v94;
  v65 = v59;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E23A0, sub_251AE71D0, v47);
  v66 = v102;
  v67 = sub_251C70A94();
  (*(v103 + 8))(v63, v66);
  (*(v96 + 8))(v65, v64);
  *&v104 = v67;
  v68 = v95;
  sub_251C70B64();

  sub_251AE4438(&qword_2813E2490, &qword_2813E2488, v97, MEMORY[0x277CBCCD0]);
  v69 = v98;
  v70 = sub_251C70A94();
  (*(v99 + 8))(v68, v69);
  __swift_destroy_boxed_opaque_existential_1(v106);
  return v70;
}

uint64_t sub_251AE2A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v39 = a2;
  sub_251AE6C64(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6894(0, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
  v44 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_251AE6D44(0);
  v46 = v13;
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6ED0(0);
  v48 = v16;
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6F64(0);
  v49 = v18;
  v51 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v43 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v61 = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  sub_251AE5810(a2, &v53);
  v21 = swift_allocObject();
  v22 = v56;
  *(v21 + 48) = v55;
  *(v21 + 64) = v22;
  *(v21 + 80) = v57;
  *(v21 + 96) = v58;
  v23 = v54;
  *(v21 + 16) = v53;
  *(v21 + 32) = v23;
  sub_251AE60AC(0);
  sub_251AE6D10(0);
  v40 = MEMORY[0x277CBCCE0];
  sub_251AE42C4(&qword_27F4799F0, sub_251AE60AC, MEMORY[0x277CBCCE0]);
  sub_251C70B54();

  sub_251AE42C4(&qword_27F479A40, sub_251AE6C64, MEMORY[0x277CBCCC0]);
  v24 = sub_251C70A94();
  (*(v7 + 8))(v9, v6);
  *&v53 = v24;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v25 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479A00, sub_251AE6D10, MEMORY[0x277CBCD88]);
  sub_251AE417C(&qword_27F479A08, &qword_27F479A00, sub_251AE6D10);
  sub_251C70B74();

  sub_251A823B4(v59, v52);
  sub_251AE5810(v39, &v53);
  v26 = swift_allocObject();
  sub_251A7E8D8(v52, v26 + 16);
  v27 = v56;
  *(v26 + 88) = v55;
  *(v26 + 104) = v27;
  *(v26 + 120) = v57;
  *(v26 + 136) = v58;
  v28 = v54;
  *(v26 + 56) = v53;
  *(v26 + 72) = v28;
  sub_251C70964();
  sub_251ABA5A0(0);
  sub_251AE7808(0, &qword_27F479970, sub_251ABA5A0, v25);
  sub_251AE6E4C();
  sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
  v29 = v44;
  sub_251C70B94();

  (*(v45 + 8))(v12, v29);
  v30 = v40;
  sub_251AE42C4(&qword_27F479A28, sub_251AE6D44, v40);
  v31 = v42;
  v32 = v46;
  sub_251C70B64();
  (*(v47 + 8))(v15, v32);
  sub_251C70964();
  sub_251AE42C4(&qword_27F479A38, sub_251AE6ED0, MEMORY[0x277CBCCD0]);
  v33 = v43;
  v34 = v48;
  sub_251C70B94();
  (*(v50 + 8))(v31, v34);
  sub_251AE42C4(&qword_27F479A48, sub_251AE6F64, v30);
  v35 = v49;
  v36 = sub_251C70A94();
  (*(v51 + 8))(v33, v35);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v36;
}

uint64_t sub_251AE322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  sub_251AE6718(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6894(0, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
  v40 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v11;
  sub_251AE6934(0);
  v42 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6AC0(0);
  v44 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6B54(0);
  v46 = v16;
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v53 = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  *&v48[0] = a3;
  v19 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
  sub_251AE67E4(0);
  sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
  sub_251C70B54();
  sub_251AE42C4(&qword_27F4799D0, sub_251AE6718, MEMORY[0x277CBCCC0]);
  v20 = sub_251C70A94();
  (*(v7 + 8))(v9, v6);
  *&v48[0] = v20;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_251AE7808(0, &qword_27F479990, sub_251AE67E4, v19);
  sub_251AE417C(&qword_27F479998, &qword_27F479990, sub_251AE67E4);
  v21 = v35;
  sub_251C70B74();

  sub_251A823B4(v51, v50);
  sub_251AE5810(v37, v48);
  v22 = swift_allocObject();
  sub_251A7E8D8(v50, v22 + 16);
  v23 = v48[3];
  *(v22 + 88) = v48[2];
  *(v22 + 104) = v23;
  *(v22 + 120) = v48[4];
  *(v22 + 136) = v49;
  v24 = v48[1];
  *(v22 + 56) = v48[0];
  *(v22 + 72) = v24;
  sub_251C70964();
  sub_251AE64F0(0);
  sub_251AE7808(0, &qword_27F479910, sub_251AE64F0, v19);
  sub_251AE6A3C();
  sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
  v25 = v36;
  v26 = v40;
  sub_251C70B94();

  (*(v41 + 8))(v21, v26);
  sub_251AE42C4(&qword_27F4799B8, sub_251AE6934, MEMORY[0x277CBCCE0]);
  v27 = v38;
  v28 = v42;
  sub_251C70B64();
  (*(v43 + 8))(v25, v28);
  sub_251AE42C4(&qword_27F4799C8, sub_251AE6AC0, MEMORY[0x277CBCCD0]);
  v29 = v39;
  v30 = v44;
  sub_251C70AE4();
  (*(v45 + 8))(v27, v30);
  sub_251AE42C4(&qword_27F4799D8, sub_251AE6B54, MEMORY[0x277CBCC08]);
  v31 = v46;
  v32 = sub_251C70A94();
  (*(v47 + 8))(v29, v31);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v32;
}

uint64_t sub_251AE39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  sub_251AE6424(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE65E0(0);
  v31 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v30 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
  v41[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  *&v33[0] = a4;
  sub_251AE5810(a2, &v35);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = v38;
  *(v16 + 56) = v37;
  *(v16 + 72) = v17;
  *(v16 + 88) = v39;
  *(v16 + 104) = v40;
  v18 = v36;
  *(v16 + 24) = v35;
  *(v16 + 40) = v18;
  v19 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
  sub_251AE6524(0);
  sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);

  sub_251C70AE4();

  sub_251AE42C4(&qword_27F479958, sub_251AE6424, MEMORY[0x277CBCC08]);
  v20 = sub_251C70A94();
  (*(v10 + 8))(v12, v9);
  v34 = v20;
  sub_251A823B4(v41, v33);
  sub_251AE5810(v29, &v35);
  v21 = swift_allocObject();
  sub_251A7E8D8(v33, v21 + 16);
  v22 = v38;
  *(v21 + 88) = v37;
  *(v21 + 104) = v22;
  *(v21 + 120) = v39;
  *(v21 + 136) = v40;
  v23 = v36;
  *(v21 + 56) = v35;
  *(v21 + 72) = v23;
  sub_251C70964();
  sub_251AE7808(0, &qword_27F479948, sub_251AE6524, v19);
  type metadata accessor for ClinicalSharingSyncContext(0);
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v19);
  sub_251AE417C(&qword_27F479950, &qword_27F479948, sub_251AE6524);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v24 = v30;
  sub_251C70B94();

  sub_251AE42C4(&qword_27F479960, sub_251AE65E0, MEMORY[0x277CBCCE0]);
  v25 = v31;
  v26 = sub_251C70A94();
  (*(v32 + 8))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v26;
}

uint64_t sub_251AE3EAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251C70FD4();

    return sub_251C710A4();
  }

  return result;
}

void sub_251AE3F70(uint64_t a1)
{
  if (!qword_2813E2298)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE4104();
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2298);
    }
  }
}

void sub_251AE40A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251AE4104()
{
  result = qword_2813E20E8;
  if (!qword_2813E20E8)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20E8);
  }

  return result;
}

uint64_t sub_251AE417C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AE7808(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}