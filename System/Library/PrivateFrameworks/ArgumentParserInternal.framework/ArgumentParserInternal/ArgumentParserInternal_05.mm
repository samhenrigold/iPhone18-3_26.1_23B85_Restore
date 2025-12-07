uint64_t sub_241024894(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
LABEL_48:
      v20 = v7;
      goto LABEL_50;
    }

    while ((v6[17] & 1) == 0)
    {
      if ((v4[17] & 1) == 0 && *v6 >= *v4)
      {
        if (*v6 != *v4)
        {
          break;
        }

        if (v6[16])
        {
          if (v4[16])
          {
            break;
          }
        }

        else if ((v4[16] & 1) != 0 || *(v6 + 1) >= *(v4 + 1))
        {
          break;
        }
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_48;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_10;
  }

  v17 = 24 * v11;
  if (a4 != __dst || &__dst[v17] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 < 24 || v6 <= v7)
  {
LABEL_49:
    v20 = v6;
    goto LABEL_50;
  }

  do
  {
    v18 = 0;
    v19 = v13;
    v20 = v6 - 24;
    while (1)
    {
      v21 = &v19[v18];
      v22 = *&v19[v18 - 24];
      if (v19[v18 - 7])
      {
        goto LABEL_41;
      }

      if (*(v6 - 7))
      {
        break;
      }

      v23 = *(v6 - 3);
      if (v22 < v23)
      {
        break;
      }

      if (v22 == v23)
      {
        if (*(v21 - 8))
        {
          if ((*(v6 - 8) & 1) == 0)
          {
            break;
          }
        }

        else if ((*(v6 - 8) & 1) == 0 && *(v21 - 2) < *(v6 - 2))
        {
          break;
        }
      }

LABEL_41:
      if ((v5 + v18) != v21)
      {
        v24 = v5 + v18 - 24;
        v25 = *&v19[v18 - 24];
        *(v24 + 16) = *&v19[v18 - 8];
        *v24 = v25;
      }

      v18 -= 24;
      v13 = &v19[v18];
      if (&v19[v18] <= v4)
      {
        goto LABEL_49;
      }
    }

    v26 = (v5 + v18);
    v5 = v5 + v18 - 24;
    if (v26 != v6)
    {
      v27 = *v20;
      *(v5 + 16) = *(v6 - 1);
      *v5 = v27;
    }

    v13 = &v19[v18];
    if (&v19[v18] <= v4)
    {
      break;
    }

    v6 -= 24;
  }

  while (v20 > v7);
  v13 = &v19[v18];
LABEL_50:
  v28 = 24 * ((v13 - v4) / 24);
  if (v20 != v4 || v20 >= &v4[v28])
  {
    memmove(v20, v4, v28);
  }

  return 1;
}

uint64_t sub_241024B5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_241024BE8(v3);
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

void *sub_241024BFC(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!__dst)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = __dst;
      v11 = 0;
      v12 = (a4 + 32);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = v12[9];
        v21[8] = v12[8];
        v21[9] = v14;
        v15 = v12[11];
        v21[10] = v12[10];
        v21[11] = v15;
        v16 = v12[5];
        v21[4] = v12[4];
        v21[5] = v16;
        v17 = v12[7];
        v21[6] = v12[6];
        v21[7] = v17;
        v18 = v12[1];
        v21[0] = *v12;
        v21[1] = v18;
        v19 = v12[3];
        v21[2] = v12[2];
        v21[3] = v19;
        memmove(v10, v12, 0xC0uLL);
        if (v13 == v11)
        {
          sub_240FE0990(v21, v20);
          goto LABEL_12;
        }

        v10 += 192;
        result = sub_240FE0990(v21, v20);
        ++v11;
        v12 += 12;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_241024D18(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 24 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = (63 - v6) >> 6;
    }

    v9 = v19 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_241024E68(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_241024ED4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = a6[1];
  v13 = a6[2];
  v12 = a6[3];
  v31 = a6[4];
  v32 = a6[5];
  v14 = *(a6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_241047BF0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  if (v11)
  {
    v30 = v14;
    v28 = v13;
    v29 = v10;
    if (v32)
    {

      v27 = v12;

      v26 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v11 = 0xE000000000000000;
    v12 = 0xE000000000000000;
  }

  v26 = v11;
  v27 = v12;

  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_7:
  v25 = a5 != 2;
  if (a5)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0;
  }

  if (a5)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_241018548(a1, a2);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_241047BF0;
  *(v22 + 32) = v18;
  *(v22 + 40) = v25;
  *(v22 + 48) = v17;
  *(v22 + 56) = v16;
  v23 = MEMORY[0x277D84F90];
  *(v22 + 64) = v15;
  *(v22 + 72) = v23;
  *(v22 + 80) = 0;
  *(v22 + 88) = v29;
  *(v22 + 96) = v26;
  *(v22 + 104) = v28;
  *(v22 + 112) = v27;
  *(v22 + 120) = v31;
  *(v22 + 128) = v32;
  *(v22 + 136) = v30;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0xE000000000000000;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 176) = 4;
  *(v22 + 184) = sub_24102564C;
  *(v22 + 192) = v19;
  *(v22 + 200) = 0;
  *(v22 + 208) = sub_24102566C;
  *(v22 + 216) = v21;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v22);
}

uint64_t sub_241025174(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v8 = a5[1];
  v10 = a5[3];
  v24 = a5[2];
  v11 = a5[4];
  v12 = a5[5];
  v13 = *(a5 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_241047BF0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  if (v8)
  {
    v23 = v13;
    v22 = v9;
    if (v12)
    {

      v21 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v8 = 0xE000000000000000;
    v10 = 0xE000000000000000;
  }

  v21 = 0;
  v12 = 0xE000000000000000;
LABEL_7:
  v15 = sub_241018548(a1, a2);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241047BF0;
  *(v18 + 32) = v15;
  *(v18 + 40) = 3;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v18 + 64) = v14;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0;
  *(v18 + 88) = v22;
  *(v18 + 96) = v8;
  *(v18 + 104) = v24;
  *(v18 + 112) = v10;
  *(v18 + 120) = v21;
  *(v18 + 128) = v12;
  *(v18 + 136) = v23;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0xE000000000000000;
  *(v18 + 160) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 4;
  *(v18 + 184) = sub_2410255CC;
  *(v18 + 192) = v16;
  *(v18 + 200) = 0;
  *(v18 + 208) = sub_2410255EC;
  *(v18 + 216) = v17;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v18);
}

uint64_t sub_2410253D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v1, 0);
    v3 = v14;
    v4 = a1 + 32;
    do
    {
      v5 = sub_24102C4F4();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_240FE41A0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 192;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
  v12 = sub_241046AA8();

  return v12;
}

uint64_t sub_24102555C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_241025748()
{
  result = qword_280CC1E38;
  if (!qword_280CC1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E38);
  }

  return result;
}

uint64_t sub_24102579C(uint64_t *a1, int a2)
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

uint64_t sub_2410257E4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_241025868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 81))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 80);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2410258B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24102590C(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    *result = a2 - 15;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 15;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal0C10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
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

uint64_t sub_24102597C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2410259C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_241025A14(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_241025A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_241025AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241025B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_2410286A8(a1, *v2);

  v34 = sub_241037C74(v7);
  v35 = v8;
  v36 = v9;
  sub_2410278A8(&v34, v4, v5, v6);
  sub_241027058(&v34);
  v10 = *v2;
  sub_241026790(v34, v35, v36, v2[2], v21, v2[1]);

  sub_240FEDBC4(v21, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  if (!swift_dynamicCast())
  {
    result = sub_240FDDF54(v21, a2);
    goto LABEL_5;
  }

  v11 = v29;
  v12 = v30;
  v13 = v31;
  v20[0] = *v32;
  *(v20 + 15) = *&v32[15];
  if ((v31 & 1) == 0)
  {
    v14 = v33;
    sub_241029D68(v29, v30, 0);
    v15 = sub_2410299E0(v11, v10);
    sub_240FDEE54(v11, v12, 0);

    *&v22 = v11;
    *(&v22 + 1) = v12;
    v23[0] = v13;
    *&v23[1] = v20[0];
    *&v23[16] = *(v20 + 15);
    *&v23[32] = v15;
    v23[40] = v14;
    *(a2 + 24) = &type metadata for HelpCommand;
    *(a2 + 32) = sub_240FF0C78();
    v16 = swift_allocObject();
    *a2 = v16;
    v17 = *v23;
    v16[1] = v22;
    v16[2] = v17;
    v16[3] = *&v23[16];
    *(v16 + 57) = *&v23[25];
    sub_241029D78(&v22, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v24[0] = v11;
    v24[1] = v12;
    v25 = v13;
    *v26 = v20[0];
    *&v26[15] = *(v20 + 15);
    v27 = v15;
    v28 = v14;
    result = sub_240FFC280(v24);
LABEL_5:
    *(a2 + 89) = 0;
    return result;
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_2410261E8(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x245CD7240](v2);
  if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_241046D28();
  }

  sub_241046D58();
  swift_endAccess();
  return swift_weakAssign();
}

uint64_t sub_24102629C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v45 = a5[5];
  v9 = *(a4 + 16);
  v10 = MEMORY[0x277D84F90];
  v41 = a5[2];
  v44 = a5[3];
  *&v42[4] = a5[4];
  v42[0] = *(a5 + 48);
  if (v9)
  {
    v11 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v11;
    v12 = (a4 + 48);
    while (1)
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      if (!(v15 >> 6))
      {
        break;
      }

      if (v15 >> 6 == 1)
      {
        v16 = v15 & 1 | 0x40;
LABEL_11:
        v17 = *(v12 - 2);
        v18 = *(v12 - 1);
        goto LABEL_12;
      }

      if (v14 | v13 || v15 != 128)
      {
        if (!v46)
        {
          sub_241047058();
          MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
          MEMORY[0x245CD70E0](a1, a2);
          MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
          result = sub_2410471B8();
          __break(1u);
          return result;
        }

        v17 = sub_241046C48();
        v18 = v23;
        sub_240FE0E3C(1, 0, 128);
        v16 = 64;
      }

      else
      {
        v17 = sub_240FE58B8(45, 0xE100000000000000, a1, a2);
        v18 = v22;
        sub_240FE0E3C(0, 0, 128);
        v16 = 0;
      }

LABEL_12:
      sub_240FE0E2C(v13, v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_240FE30A8(0, *(v10 + 2) + 1, 1, v10);
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v10 = sub_240FE30A8((v19 > 1), v20 + 1, 1, v10);
      }

      v12 += 24;
      *(v10 + 2) = v20 + 1;
      v21 = &v10[24 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v21[48] = v16;
      if (!--v9)
      {
        goto LABEL_23;
      }
    }

    if (v15)
    {
      v16 = 0x80;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_11;
  }

LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_241047BF0;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  v25 = a3;
  *(v24 + 48) = a3;
  v26 = a5[1];
  if (!v26)
  {
    v41 = 0;
    v35 = 0xE000000000000000;
    v36 = 0;
    v44 = 0xE000000000000000;
    v28 = a8;
    v27 = a7;
LABEL_28:
    sub_240FFBA9C(v27, v28, a9);

    if (v26)
    {
      *&v42[8] = 0;
      *v42 = *(a5 + 48);
    }

    else
    {
      *&v42[4] = 0;
      v42[0] = 0;
    }

    v45 = 0xE000000000000000;
    v25 = a3;
    goto LABEL_32;
  }

  v36 = *a5;
  v50[0] = *a5;
  v50[1] = v26;
  v28 = a8;
  v27 = a7;
  if (!v45)
  {
    sub_240FFBB48(v50, v49);

    v35 = v26;
    goto LABEL_28;
  }

  sub_240FFBB48(v50, v49);

  sub_240FFBA9C(a7, a8, a9);

  v35 = v26;
LABEL_32:
  if (a9 == 255)
  {
    v29 = 4;
  }

  else
  {
    v29 = a9;
  }

  if (a9 == 255)
  {
    v28 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  v31 = swift_allocObject();
  v31[2] = sub_240FFB8E4;
  v31[3] = 0;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = v25;
  v32 = swift_allocObject();
  v32[2] = v10;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = a1;
  v32[6] = a2;
  v32[7] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241047BF0;
  *(v33 + 32) = v10;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = v24;
  *(v33 + 72) = MEMORY[0x277D84F90];
  *(v33 + 80) = 0;
  *(v33 + 88) = v36;
  *(v33 + 96) = v35;
  *(v33 + 104) = v41;
  *(v33 + 112) = v44;
  *(v33 + 120) = *&v42[4];
  *(v33 + 128) = v45;
  *(v33 + 136) = v42[0];
  *(v33 + 144) = 0;
  *(v33 + 152) = 0xE000000000000000;
  *(v33 + 160) = v30;
  *(v33 + 168) = v28;
  *(v33 + 176) = v29;
  *(v33 + 177) = a6;
  *(v33 + 184) = sub_24102A4C8;
  *(v33 + 192) = v31;
  *(v33 + 200) = 1;
  *(v33 + 208) = sub_24102A4FC;
  *(v33 + 216) = v32;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v33);
}

uint64_t sub_241026790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  result = sub_2410293F8(a1, a2, a3, 0, a6, a4);
  if (v6)
  {
    return result;
  }

  result = sub_241038084(a1, a2);
  if (result)
  {
    v13 = *(a1 + 16);
    if (v13 < a2)
    {
LABEL_30:
      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = v13 + 1;
      v15 = a1 + (a2 << 6) + 8;
      while (a2 != --v14)
      {
        v16 = v15 + 64;
        v17 = *(v15 + 40);
        v15 += 64;
        if ((v17 & 0x6000000000000000) == 0)
        {
          v18 = *(v16 - 40);
          v19 = *(v16 - 32);
          v20 = *v16;
          v21 = *(v16 + 8);
          v22 = *(v16 + 16);
          LOBYTE(v41) = 0;
          sub_240FDEE00();
          swift_allocError();
          *v23 = v20;
          *(v23 + 8) = v21;
          *(v23 + 16) = v22;
          *(v23 + 17) = v41;
          *(v23 + 24) = v18;
          *(v23 + 32) = v19;
          v24 = *&v36[16];
          *(v23 + 41) = *v36;
          *(v23 + 40) = v17;
          *(v23 + 57) = v24;
          *(v23 + 72) = *&v36[31];
          *(v23 + 80) = 4;
          swift_willThrow();
          return sub_240FF0D90(v18, v19, v17);
        }
      }

      v30 = sub_241035220(a1, a2, a3);
      sub_240FDEE00();
      swift_allocError();
      *v31 = v30;
      *(v31 + 8) = *v36;
      v32 = *&v36[16];
      v33 = *&v36[32];
      v34 = v37;
      *(v31 + 72) = v38;
      *(v31 + 56) = v34;
      *(v31 + 40) = v33;
      *(v31 + 24) = v32;
      *(v31 + 80) = 9;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_32;
  }

  v25 = *(a4 + 16);
  v44 = a4;

  if (!v25)
  {
LABEL_24:
    memset(v36, 0, 40);
LABEL_25:

    if (*&v36[24])
    {
      return sub_240FDDF54(v36, a5);
    }

    sub_240FE07E8(v36, &qword_27E51F840, &qword_24104AF08);
    sub_240FDEE00();
    swift_allocError();
    *v35 = 3;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    *(v35 + 72) = 0;
    *(v35 + 80) = 15;
    return swift_willThrow();
  }

  v26 = v44 + 48;
  v27 = v25;
  while (1)
  {
    sub_240FEDBC4(v26, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F838, &qword_24104AF00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_12:
    sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    v26 += 56;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_12;
  }

  sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
  v28 = v25 - 1;
  v29 = v44 + 56 * v25 - 8;
  while (1)
  {
    sub_240FEDBC4(v29, &v39);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_17:
    result = sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    --v28;
    v29 -= 56;
    if (v28 >= v25)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_17;
  }

  sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
  sub_240FEDBC4(v29, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  result = sub_241029DD4(&v41, &v39);
  if (v40)
  {
    sub_240FDDF54(&v39, v36);
    sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_241026BE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = *(v5 + 8);
  LOBYTE(v39) = 2;

  v10 = sub_240FDF86C(v4, v9, &v39, 0, 0, 0);
  v46 = v4;
  v47 = v5;
  v48 = v10;
  v49 = v11;
  v50 = v7;
  v51 = v6;
  v52 = v8;
  sub_24102313C(&v53);
  if (v38)
  {
  }

  else
  {

    if (sub_240FE6AB8(*(v3 + 16), *(v3 + 24)))
    {
      sub_2410293F8(v54, *(&v54 + 1), v55, 0, v3, *(v37 + 16));
    }

    v13 = *(v37 + 16);
    v14 = type metadata accessor for ArgumentDecoder();
    v15 = swift_allocObject();
    *(v15 + 64) = 0;
    v16 = MEMORY[0x277D84F90];
    *(v15 + 72) = MEMORY[0x277D84F90];
    *(v15 + 80) = v16;

    *(v15 + 88) = sub_240FFC33C(v16);
    v17 = v54;
    *(v15 + 16) = v53;
    *(v15 + 32) = v17;
    *(v15 + 48) = v55;
    swift_beginAccess();
    *(v15 + 72) = v13;

    *(v15 + 56) = MEMORY[0x277D84FA0];
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    v44 = v14;
    v45 = sub_24102A040();
    v43 = v15;
    *(&v40 + 1) = v19;
    *&v41 = v18;
    __swift_allocate_boxed_opaque_existential_1Tm(&v39);

    sub_241046DC8();
    sub_240FDDF54(&v39, a2);
    swift_beginAccess();

    sub_24102AB88(v20);

    v22 = sub_241029820(v21, v37);

    sub_240FE2154(v22);
    v23 = *(v3 + 16);
    v24 = *(*(v3 + 24) + 8);
    v25 = a2[3];
    v26 = a2[4];
    v27 = __swift_project_boxed_opaque_existential_1(a2, v25);
    *(&v41 + 1) = v25;
    v42 = *(v26 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v40);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v27, v25);
    *&v39 = v23;
    *(&v39 + 1) = v24;
    v29 = *(v37 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_240FE35EC(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_240FE35EC((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[56 * v31];
    v33 = v39;
    v34 = v40;
    v35 = v41;
    *(v32 + 10) = v42;
    *(v32 + 3) = v34;
    *(v32 + 4) = v35;
    *(v32 + 2) = v33;
    *(v37 + 16) = v29;
  }

  return result;
}

uint64_t sub_241027058(uint64_t *a1)
{
  v3 = v1;
  v4 = a1;
  result = sub_241026BE0(a1, v98);
  v6 = v2;
  if (!v2)
  {
    v72 = v1;
    v73 = v4;
    while (1)
    {
      v8 = v99;
      v7 = v100;
      __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
      result = (*(*(v7 + 8) + 24))(v8);
      v9 = v6;
      if (v6)
      {
        break;
      }

      v10 = *(v3 + 16);
      if (!*(v10 + 2))
      {
        goto LABEL_68;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_69;
        }
      }

      else
      {
        result = sub_24103F1F0(v10);
        v10 = result;
        v11 = *(result + 16);
        if (!v11)
        {
          goto LABEL_69;
        }
      }

      *(v10 + 2) = v11 - 1;
      v12 = &v10[56 * v11];
      v13 = *(v12 - 24);
      v14 = *(v12 - 8);
      v15 = *(v12 + 8);
      *&v91 = *(v12 + 3);
      v89 = v14;
      v90 = v15;
      v88 = v13;
      v16 = v99;
      v17 = v100;
      v18 = __swift_project_boxed_opaque_existential_1(v98, v99);
      *(&v79 + 1) = v16;
      *&v80 = *(v17 + 8);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v78);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      sub_240FDDF54(&v78, &v89);
      sub_241029F90(&v88, &v78);
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        v10 = sub_240FE35EC((v20 > 1), v21 + 1, 1, v10);
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[56 * v21];
      v23 = v78;
      v24 = v79;
      v25 = v80;
      *(v22 + 10) = v81;
      *(v22 + 3) = v24;
      *(v22 + 4) = v25;
      *(v22 + 2) = v23;
      *(v3 + 16) = v10;
      sub_241029FEC(&v88);
      v26 = *(v3 + 8);
      v27 = *v4;
      v28 = v4[1];
      v29 = v4[2];
      sub_241037F98(*v4, v28, v101);
      v105 = v26;
      if ((v103 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
      {
        goto LABEL_35;
      }

      if ((v103 & 0x6000000000000000) != 0x2000000000000000)
      {
        sub_240FE07E8(v101, &qword_27E51F850, &qword_24104AF10);
        goto LABEL_35;
      }

      v74 = v28;
      v75 = v27;
      v30 = v101[0];
      v31 = v102;
      result = sub_240FE07E8(v101, &qword_27E51F850, &qword_24104AF10);
      if (v31)
      {
        v28 = v74;
        v27 = v75;
        goto LABEL_35;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v30 >= *(v29 + 16))
      {
LABEL_73:
        __break(1u);
        return result;
      }

      v32 = v29 + 16 * v30;
      v34 = *(v32 + 32);
      v33 = *(v32 + 40);
      v69 = v34;
      v70 = v33;
      swift_beginAccess();
      v68 = *(v26 + 40);
      v35 = v68;
      if (v68 >> 62)
      {
        v55 = sub_241046F88();
        v35 = v68;
        v71 = v55;
      }

      else
      {
        v71 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v74;
      v27 = v75;
      v65 = v29;
      v36 = v70;

      if (!v71)
      {
LABEL_34:

        v29 = v65;
LABEL_35:
        sub_2410293F8(v27, v28, v29, 1, v26, v10);
        (*(*(v26 + 24) + 16))(&v78);
        v94 = v84;
        v95 = v85;
        v96 = v86;
        v97 = v87;
        v90 = v80;
        v91 = v81;
        v92 = v82;
        v93 = v83;
        v88 = v78;
        v89 = v79;
        sub_240FE724C(&v88);
        v49 = *(&v95 + 1);
        if (*(&v95 + 1))
        {
          swift_beginAccess();
          v50 = *(v26 + 40);
          v76 = 0;
          if (v50 >> 62)
          {
            v51 = sub_241046F88();
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v51)
          {
            v52 = 0;
            do
            {
              if ((v50 & 0xC000000000000001) != 0)
              {
                result = MEMORY[0x245CD75C0](v52, v50);
                v53 = result;
                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_67;
                }

                v53 = *(v50 + 8 * v52 + 32);

                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
LABEL_66:
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
                  __break(1u);
LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }
              }

              if (*(v53 + 16) == v49)
              {

                v3 = v72;
                *(v72 + 8) = v53;
                __swift_destroy_boxed_opaque_existential_1Tm(v98);
                v9 = v76;
                v4 = v73;
                goto LABEL_50;
              }

              ++v52;
            }

            while (v54 != v51);
          }

          sub_240FDEE00();
          swift_allocError();
          *v56 = 3;
          *(v56 + 8) = 0u;
          *(v56 + 24) = 0u;
          *(v56 + 40) = 0u;
          *(v56 + 56) = 0u;
          *(v56 + 72) = 0;
          *(v56 + 80) = 15;
LABEL_62:
          swift_willThrow();
        }

        return __swift_destroy_boxed_opaque_existential_1Tm(v98);
      }

      v37 = 0;
      v66 = v35 & 0xFFFFFFFFFFFFFF8;
      v67 = v35 & 0xC000000000000001;
      while (1)
      {
        if (v67)
        {
          result = MEMORY[0x245CD75C0](v37, v35);
          v39 = result;
          v38 = v69;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v38 = v69;
          if (v37 >= *(v66 + 16))
          {
            goto LABEL_71;
          }

          v39 = *(v35 + 8 * v37 + 32);

          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_70;
          }
        }

        v76 = v40;
        if ((*(*(v39 + 24) + 24))() == v38 && v41 == v36)
        {

          goto LABEL_55;
        }

        v43 = v9;
        v44 = v36;
        v45 = sub_241047428();

        if (v45)
        {

          v9 = v43;
          goto LABEL_56;
        }

        (*(*(v39 + 24) + 16))(&v78);
        v94 = v84;
        v95 = v85;
        v96 = v86;
        v97 = v87;
        v90 = v80;
        v91 = v81;
        v92 = v82;
        v93 = v83;
        v88 = v78;
        v89 = v79;
        v46 = v87;

        v47 = sub_240FE724C(&v88);
        v77[0] = v38;
        v77[1] = v44;
        MEMORY[0x28223BE20](v47);
        v64[2] = v77;
        v48 = sub_241009A78(sub_240FF4830, v64, v46);
        v9 = v43;

        if (v48)
        {
          break;
        }

        ++v37;
        v36 = v70;
        v27 = v75;
        v26 = v105;
        v28 = v74;
        v35 = v68;
        if (v76 == v71)
        {
          goto LABEL_34;
        }
      }

LABEL_55:

LABEL_56:
      v4 = v73;
      sub_241035148(v104);
      sub_240FE07E8(v104, &qword_27E51F858, &qword_24104AF18);

      v3 = v72;
      *(v72 + 8) = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
LABEL_50:
      result = sub_241026BE0(v4, v98);
      v6 = v9;
      if (v9)
      {
        return result;
      }
    }

    v57 = *(v3 + 8);
    v58 = *(v3 + 16);
    sub_2410293F8(*v4, v4[1], v4[2], 0, v57, v58);
    v59 = sub_241029108(v57, v58);
    sub_240FE71F8();
    swift_allocError();
    *v60 = v59;
    *(v60 + 8) = v6;
    v61 = v92;
    v62 = v91;
    *(v60 + 48) = v90;
    *(v60 + 64) = v62;
    *(v60 + 80) = v61;
    v63 = v89;
    *(v60 + 16) = v88;
    *(v60 + 32) = v63;
    *(v60 + 88) = 13;
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_2410278A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 + 24) + 16))(v45);
  v8 = v45[3];

  sub_240FE724C(v45);
  if (v8)
  {
  }

  v9 = sub_24102A0E8();
  v42 = sub_241028388(&type metadata for GenerateCompletions, v9);
  v43 = v10;
  v44 = v11;
  sub_241026BE0(a1, &v32);
  if (v4)
  {
    MEMORY[0x245CD7E80](v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
    if (swift_dynamicCast())
    {
      v12 = v39;
      v13 = v40;
      v14 = v41;
      v15 = sub_241029108(a3, a4);
      if ((v14 & 1) == 0)
      {
        v16 = v15;
        sub_240FE71F8();
        swift_allocError();
        *v17 = v16;
        *(v17 + 8) = v12;
        *(v17 + 16) = v13;
        v18 = v35;
        v19 = v34;
        v20 = v32;
        *(v17 + 40) = v33;
        *(v17 + 24) = v20;
        *(v17 + 56) = v19;
        *(v17 + 72) = v18;
        *(v17 + 88) = 1;
        swift_willThrow();
      }

      goto LABEL_14;
    }
  }

  v21 = sub_24102A13C();
  v39 = sub_241028388(&type metadata for AutodetectedGenerateCompletions, v21);
  v40 = v22;
  v41 = v23;
  sub_241026BE0(a1, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
  }

  if ((v38 & 1) == 0)
  {
    v24 = v36;
    v25 = v37;
    if (v36)
    {
      v26 = sub_241029108(a3, a4);
      sub_240FE71F8();
      swift_allocError();
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *v27 = v26;
      v28 = v35;
      v29 = v34;
      v30 = v33;
      *(v27 + 24) = v32;
      *(v27 + 56) = v29;
      *(v27 + 40) = v30;
      *(v27 + 72) = v28;
      *(v27 + 88) = 1;
      swift_willThrow();
    }

    sub_240FDEE64(v24, v25, 0);
    goto LABEL_12;
  }

LABEL_14:
  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241027C50@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F878, &qword_24104B190);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *&v11 = MEMORY[0x277D84FA0];
  sub_240FE0C08(&unk_2852DA4E0);
  sub_240FE0DB0(&unk_2852DA500);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24102A520();
  sub_241047628();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F880, &qword_24104B198);
    sub_240FF0D48(&qword_280CC1EF8, &qword_27E51F880, &qword_24104B198, &protocol conformance descriptor for Option<A>);
    sub_2410472B8();
    (*(v5 + 8))(v7, v4);

    v8 = v12;
    v9 = v13;
    *v13 = v11;
    *(v9 + 16) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_241027E5C(uint64_t a1)
{
  v2 = sub_24102A520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241027E98(uint64_t a1)
{
  v2 = sub_24102A520();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_241027ED4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA420);
  sub_240FE0DB0(&unk_2852DA440);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = -1;
  *a1 = sub_24102A490;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_241027FA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F868, &qword_24104B180);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *&v11 = MEMORY[0x277D84FA0];
  sub_240FE0C08(&unk_2852DA518);
  sub_240FE0DB0(&unk_2852DA538);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24102A43C();
  sub_241047628();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F870, &qword_24104B188);
    sub_240FF0D48(qword_280CC1F08, &qword_27E51F870, &qword_24104B188, &protocol conformance descriptor for Flag<A>);
    sub_2410472B8();
    (*(v5 + 8))(v7, v4);

    v8 = v12;
    v9 = v13;
    *v13 = v11;
    *(v9 + 16) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2410281B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000024104F4A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_241047428();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_241028248(uint64_t a1)
{
  v2 = sub_24102A43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241028284(uint64_t a1)
{
  v2 = sub_24102A43C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2410282C0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA458);
  sub_240FE0DB0(&unk_2852DA478);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *a1 = sub_240FFBA08;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

void *sub_241028388(uint64_t a1, uint64_t a2)
{
  v2 = sub_24100B168(a1, a2);
  swift_beginAccess();
  v3 = v2[5];
  if (v3 >> 62)
  {
    if (sub_241046F88())
    {
      goto LABEL_3;
    }

LABEL_5:

    return v2;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = sub_240FF0C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = &type metadata for HelpCommand;
  v5[3] = v4;
  swift_weakAssign();
  v5[5] = MEMORY[0x277D84F90];

  sub_2410261E8(v5);

  return v2;
}

void *sub_2410286A8(void *result, uint64_t a2)
{
  v4 = result[2];
  if (!v4)
  {
    return result;
  }

  v6 = result + 4;
  if (result[4] != 0x6C706D6F632D2D2DLL || result[5] != 0xED00006E6F697465)
  {
    v8 = result;
    v9 = sub_241047428();
    result = v8;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v125 = v2;
  v121 = result;
  v122 = v6;
  v123 = 1;
  v124 = (2 * v4) | 1;

  v10 = &v121;
  v11 = sub_241034A24();
  if (!v12)
  {
LABEL_41:
    v3 = a2;
    goto LABEL_42;
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v13 == 11565 && v14 == 0xE200000000000000;
    if (v15 || (sub_241047428() & 1) != 0)
    {

      goto LABEL_41;
    }

    swift_beginAccess();
    v16 = *(a2 + 40);
    v80[4] = a2;
    if (v16 >> 62)
    {
      v17 = sub_241046F88();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
LABEL_39:

      sub_240FDEE00();
      swift_allocError();
      *v27 = 3;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0;
      *(v27 + 80) = 15;
      swift_willThrow();
      goto LABEL_73;
    }

    v18 = 0;
    v83 = v16 & 0xFFFFFFFFFFFFFF8;
    v84 = v16 & 0xC000000000000001;
    v81 = v17;
    v82 = v16;
    while (1)
    {
      if (v84)
      {
        v3 = MEMORY[0x245CD75C0](v18, v16);
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v18 >= *(v83 + 16))
        {
          goto LABEL_77;
        }

        v3 = *(v16 + 8 * v18 + 32);

        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }
      }

      if ((*(*(v3 + 24) + 24))(*(v3 + 16)) == v13 && v14 == v20)
      {

LABEL_34:

        goto LABEL_36;
      }

      v22 = sub_241047428();

      if (v22)
      {

        goto LABEL_34;
      }

      (*(*(v3 + 24) + 16))(&v97);
      v115 = v103;
      v116 = v104;
      v117 = v105;
      *&v118 = v106;
      v111 = v99;
      v112 = v100;
      v113 = v101;
      v114 = v102;
      v109 = v97;
      v110 = v98;
      v10 = v106;

      v23 = sub_240FE724C(&v109);
      *&v85 = v13;
      *(&v85 + 1) = v14;
      MEMORY[0x28223BE20](v23);
      v80[2] = &v85;
      v24 = v125;
      v25 = sub_241009A78(sub_240FF4830, v80, v10);
      v125 = v24;

      if (v25)
      {
        break;
      }

      ++v18;
      v17 = v81;
      v16 = v82;
      if (v19 == v81)
      {
        goto LABEL_39;
      }
    }

LABEL_36:

    v10 = &v121;
    v13 = sub_241034A24();
    v14 = v26;
    a2 = v3;
  }

  while (v26);
LABEL_42:
  v28 = sub_241034A24();
  if (!v29)
  {
    goto LABEL_72;
  }

  v18 = v28;
  v13 = v29;
  v84 = v3;
  v10 = v121;
  v16 = v122;
  v3 = v123;
  v17 = v124;
  if (v124)
  {
    sub_241047458();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (__OFSUB__(v17 >> 1, v3))
    {
      goto LABEL_79;
    }

    if (v32 != (v17 >> 1) - v3)
    {
      goto LABEL_80;
    }

    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    goto LABEL_52;
  }

  while (1)
  {
    sub_240FE6EA4(v10, v16, v3, v17);
    v16 = v30;
LABEL_52:
    v33 = *(v84 + 16);
    v34 = *(*(v84 + 24) + 8);
    LOBYTE(v109) = 2;
    v35 = sub_240FDF86C(v33, v34, &v109, 0, 0, 0);
    v10 = v36;
    v37 = v125;
    v38 = sub_241035A0C(v18, v13, 0);
    if (v37)
    {
      goto LABEL_84;
    }

    v39 = v38;
    if (!*(v38 + 16))
    {
      goto LABEL_83;
    }

    v125 = v16;

    if (v39[2])
    {
      break;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_unknownObjectRelease();
  }

  v40 = v39[4];
  v41 = v39[5];
  v42 = v39[6];
  v43 = v39[7];
  v44 = v39[8];
  sub_241029EB8(v40, v41, v42, v43, v44);

  v45 = (v42 >> 61) & 3;
  if (v45)
  {
    if (v45 == 1)
    {
      v46 = sub_241039240(v40, v41);
      v49 = v125;
      if (v47)
      {
        sub_24101FDD4(v46, v47, v48, v35, v10, &v85);

        v105 = v93;
        v106 = v94;
        v107 = v95;
        v108 = v96;
        v101 = v89;
        v102 = v90;
        v103 = v91;
        v104 = v92;
        v97 = v85;
        v98 = v86;
        v99 = v87;
        v100 = v88;
        v117 = v93;
        v118 = v94;
        v119 = v95;
        v120 = v96;
        v113 = v89;
        v114 = v90;
        v115 = v91;
        v116 = v92;
        v109 = v85;
        v110 = v86;
        v111 = v87;
        v112 = v88;
        if (sub_240FE5818(&v109) != 1)
        {
          v51 = *(&v117 + 1);
          v50 = v117;
          v52 = v118;
          sub_240FFBAB0(v117, *(&v117 + 1), v118);
          sub_240FE07E8(&v97, &qword_27E51F460, &unk_24104AF30);
          if (v52 != 3)
          {
            sub_240FFB9C4(v50, v51, v52);

            goto LABEL_72;
          }

          goto LABEL_67;
        }
      }

      else
      {
      }

      goto LABEL_72;
    }

    sub_240FDEE00();
    swift_allocError();
    *v78 = 3;
    *(v78 + 8) = 0u;
    *(v78 + 24) = 0u;
    *(v78 + 40) = 0u;
    *(v78 + 56) = 0u;
    *(v78 + 72) = 0;
    *(v78 + 80) = 15;
    swift_willThrow();
LABEL_73:

    return swift_unknownObjectRelease();
  }

  else
  {
    if (!v10[2] || (v53 = sub_24102FC34(v40, v41, v42), (v54 & 1) == 0))
    {

      sub_241029F24(v40, v41, v42, v43, v44);
      goto LABEL_72;
    }

    v55 = v10[7][v53];
    if ((v55 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v55 < *(v35 + 16))
    {
      v56 = (v35 + 192 * v55);
      v57 = v56[2];
      v58 = v56[3];
      v59 = v56[5];
      v111 = v56[4];
      v112 = v59;
      v109 = v57;
      v110 = v58;
      v60 = v56[6];
      v61 = v56[7];
      v62 = v56[9];
      v115 = v56[8];
      v116 = v62;
      v113 = v60;
      v114 = v61;
      v63 = v56[10];
      v64 = v56[11];
      v65 = v56[13];
      v119 = v56[12];
      v120 = v65;
      v117 = v63;
      v118 = v64;
      v82 = *(&v63 + 1);
      v83 = v63;
      v66 = v64;
      sub_240FE0990(&v109, &v97);

      v67 = v40;
      v68 = v42;
      v69 = v82;
      v50 = v83;
      sub_241029F24(v67, v41, v68, v43, v44);
      sub_240FFBAB0(v50, v69, v66);
      sub_240FF0CCC(&v109);
      if (v66 == 3)
      {
        v49 = v125;
LABEL_67:

        v70 = v50(v49);

        *&v109 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080, MEMORY[0x277D83958]);
        v71 = sub_241046AA8();
        v73 = v72;

        sub_240FDEE00();
        swift_allocError();
        *v74 = v71;
        *(v74 + 8) = v73;
        v76 = v111;
        v75 = v112;
        v77 = v110;
        *(v74 + 16) = v109;
        *(v74 + 32) = v77;
        *(v74 + 48) = v76;
        *(v74 + 64) = v75;
        *(v74 + 80) = 2;
        swift_willThrow();

        goto LABEL_73;
      }

      sub_240FFB9C4(v50, v69, v66);

LABEL_72:
      sub_240FDEE00();
      swift_allocError();
      *v79 = 3;
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      *(v79 + 40) = 0u;
      *(v79 + 56) = 0u;
      *(v79 + 72) = 0;
      *(v79 + 80) = 15;
      swift_willThrow();
      goto LABEL_73;
    }

    __break(1u);
LABEL_83:

    __break(1u);
LABEL_84:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

char *sub_241029108(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_241029F90(v4, v17);
      v7 = v17[0];
      sub_241029FEC(v17);
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_240FE2D64(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_240FE2D64((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v6 = &v5[16 * v12];
        *(v6 + 4) = v7;
        *(v6 + 5) = v10;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 2);
  if (!v13 || *(a1 + 16) != *&v5[16 * v13 + 16])
  {
    v16 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = v16;
    v17[0] = v5;
    sub_240FE1E80(inited);
    return v17[0];
  }

  return v5;
}

uint64_t sub_241029288(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v3 = *(a2 + 16);
  if (v3 < a3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  if (a3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 != a3)
  {
    v5 = (a2 + (a3 << 6) + 64);
    while (v4 < v3)
    {
      v6 = *(v5 - 2);
      if ((v6 & 0x6000000000000000) == 0)
      {
        v13[1] = v13;
        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = *(v5 - 3);
        v14[0] = *(v5 - 4);
        v10 = v14[0];
        v14[1] = v9;
        v15 = v6;
        MEMORY[0x28223BE20](result);
        v12[2] = v14;
        sub_241029EB8(v10, v9, v6, v8, v7);
        sub_240FF0D90(v10, v9, v6);
        v11 = sub_241009BE8(sub_241029E98, v12, v13[0]);
        sub_240FF0D30(v10, v9, v6);
        result = sub_241029F24(v10, v9, v6, v8, v7);
        if (v11)
        {
          return 1;
        }
      }

      ++v4;
      v5 += 8;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_2410293F8(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v9 = result;
  if ((a4 & 1) == 0 || *(a3 + 16) == 1)
  {
    v10 = sub_241029108(a5, a6);
    v11 = sub_240FF7000(0, v10);

    v12 = sub_241029288(v11, v9, a2);

    if (v12)
    {
      sub_241029E44();
      swift_allocError();
      *v13 = 0;
      return swift_willThrow();
    }

    v14 = sub_241029108(a5, v6);
    v15 = sub_240FF7000(1, v14);

    v16 = sub_241029288(v15, v9, a2);

    if (v16)
    {
      sub_241029E44();
      swift_allocError();
      *v17 = 1;
      return swift_willThrow();
    }

    v18 = *(v9 + 16);
    if (v18 < a2)
    {
      goto LABEL_46;
    }

    v35 = v9;
    v44 = a5;
    if (a2 < 0)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    if (v18 != a2)
    {
LABEL_18:
      v26 = (v35 + (a2 << 6) + 48);
      v27 = a2;
      while (v27 < v18)
      {
        if ((*v26 & 0x60000000000000C0) == 0)
        {
          v28 = *(v26 - 2) == 0xD000000000000016 && *(v26 - 1) == 0x800000024104F3A0;
          if (v28 || (result = sub_241047428(), (result & 1) != 0))
          {
            v29 = sub_241029108(v44, v6);
            sub_240FE71F8();
            swift_allocError();
            *v30 = v29;
            *(v30 + 8) = 1;
            *(v30 + 16) = 0u;
            *(v30 + 32) = 0u;
            *(v30 + 48) = 0u;
            *(v30 + 64) = 0u;
            *(v30 + 80) = 0;
            goto LABEL_28;
          }
        }

        ++v27;
        v26 += 8;
        if (v18 == v27)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_10:
    v19 = sub_241029108(v44, v6);
    v20 = v19;
    v21 = *(v19 + 2);
    if (!v21)
    {
    }

    v34 = v6;
    v6 = 0;
    v22 = v19 + 40;
    v23 = v21 - 1;
    while (1)
    {
      (*(*v22 + 16))(v36);
      v42[6] = v38;
      v42[7] = v39;
      v42[8] = v40;
      v43 = v41;
      v42[2] = v36[2];
      v42[3] = v36[3];
      v42[4] = v36[4];
      v42[5] = v37;
      v42[0] = v36[0];
      v42[1] = v36[1];
      v24 = v37;

      sub_240FE724C(v42);

      v25 = HIBYTE(*(&v24 + 1)) & 0xFLL;
      if ((*(&v24 + 1) & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        break;
      }

      if (v23 == v6)
      {
      }

      ++v6;
      v22 += 16;
      if (v6 >= *(v20 + 2))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    if (v18 != a2)
    {
      v31 = (v35 + (a2 << 6) + 48);
      while (a2 < v18)
      {
        if ((*v31 & 0x60000000000000C0) == 0)
        {
          v32 = *(v31 - 2) == 0x6E6F6973726576 && *(v31 - 1) == 0xE700000000000000;
          if (v32 || (result = sub_241047428(), (result & 1) != 0))
          {
            v33 = sub_241029108(v44, v34);
            sub_240FE71F8();
            swift_allocError();
            *v30 = v33;
            *(v30 + 8) = 0u;
            *(v30 + 24) = 0u;
            *(v30 + 40) = 0u;
            *(v30 + 56) = 0u;
            *(v30 + 72) = 0u;
LABEL_28:
            *(v30 + 88) = 15;
            return swift_willThrow();
          }
        }

        ++a2;
        v31 += 8;
        if (v18 == a2)
        {
          return result;
        }
      }

      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_241029820(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v20 = a1 + 32;
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    v12 = v20 + 56 * v4++;
    sub_241029F90(v12, v25);
    v13 = *(a2 + 16);
    v14 = *(v13 + 16);

    result = v13 + 32;
    v16 = -1;
    while (1)
    {
      if (v16 - v14 == -1)
      {

        v21 = v25[0];
        v22 = v25[1];
        v23 = v25[2];
        v24 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE41E0(0, *(v5 + 16) + 1, 1);
          v5 = v27;
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_240FE41E0((v6 > 1), v7 + 1, 1);
          v5 = v27;
        }

        *(v5 + 16) = v7 + 1;
        v8 = v5 + 56 * v7;
        v9 = v21;
        v10 = v22;
        v11 = v23;
        *(v8 + 80) = v24;
        *(v8 + 48) = v10;
        *(v8 + 64) = v11;
        *(v8 + 32) = v9;
LABEL_6:
        if (v4 == v2)
        {
          return v5;
        }

        goto LABEL_7;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v17 = result + 56;
      sub_241029F90(result, &v21);
      v18 = v21;
      sub_241029FEC(&v21);
      result = v17;
      if (v18 == *&v25[0])
      {

        sub_241029FEC(v25);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_2410299E0(uint64_t a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v4 = swift_allocObject();
  v5 = *(a2 + 1);
  *(v4 + 1) = xmmword_241047BF0;
  *(v4 + 2) = v5;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + 32;

    v6 = 0;
    while (1)
    {
      v28 = v4;
      v29 = v6;
      v7 = (v26 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      swift_beginAccess();
      v10 = *(a2 + 5);
      v27 = a2;
      v11 = v10 >> 62 ? sub_241046F88() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v11)
      {
        break;
      }

      v13 = 0;
      ++v29;
      v30 = v11;
      v32 = v10 & 0xFFFFFFFFFFFFFF8;
      *&v33 = v10 & 0xC000000000000001;
      v31 = v10;
      while (1)
      {
        if (v33)
        {
          result = MEMORY[0x245CD75C0](v13, v10);
          v14 = result;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v13 >= *(v32 + 16))
          {
            goto LABEL_31;
          }

          v14 = *(v10 + 8 * v13 + 32);

          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return result;
          }
        }

        if ((*(*(v14 + 3) + 24))() == v9 && v16 == v8)
        {

          goto LABEL_23;
        }

        v18 = sub_241047428();

        if (v18)
        {
          break;
        }

        (*(*(v14 + 3) + 16))(v35);
        v37[6] = v35[6];
        v37[7] = v35[7];
        v37[8] = v35[8];
        v38 = v36;
        v37[2] = v35[2];
        v37[3] = v35[3];
        v37[4] = v35[4];
        v37[5] = v35[5];
        v37[0] = v35[0];
        v37[1] = v35[1];
        v19 = v36;

        v20 = sub_240FE724C(v37);
        v34[0] = v9;
        v34[1] = v8;
        MEMORY[0x28223BE20](v20);
        v24[2] = v34;
        v21 = sub_241009A78(sub_240FF466C, v24, v19);

        if (v21)
        {
          break;
        }

        ++v13;
        v10 = v31;
        if (v15 == v30)
        {
          goto LABEL_28;
        }
      }

LABEL_23:

      v33 = *(v14 + 1);
      v4 = v28;
      v6 = v29;
      v23 = *(v28 + 2);
      v22 = *(v28 + 3);
      if (v23 >= v22 >> 1)
      {
        v4 = sub_240FE2D64((v22 > 1), v23 + 1, 1, v28);
      }

      *(v4 + 2) = v23 + 1;
      *&v4[16 * v23 + 32] = v33;
      a2 = v14;
      if (v6 == v25)
      {

        return v4;
      }
    }

LABEL_28:

    return v28;
  }

  return v4;
}

uint64_t sub_241029D68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_241029DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F840, &qword_24104AF08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_241029E44()
{
  result = qword_27E51F848;
  if (!qword_27E51F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F848);
  }

  return result;
}

uint64_t sub_241029EB8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> 61) & 3;
  if (v5 == 1)
  {
  }

  if (!v5)
  {
    return sub_241029ED8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_241029ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    sub_240FF0D90(a1, a2, a3);
  }

  else
  {

    return sub_240FF0D90(a1, a2, a3);
  }
}

uint64_t sub_241029F24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> 61) & 3;
  if (v5 == 1)
  {
  }

  if (!v5)
  {
    return sub_241029F44(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_241029F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    sub_240FF0D30(a1, a2, a3);
  }

  else
  {

    return sub_240FF0D30(a1, a2, a3);
  }
}

unint64_t sub_24102A040()
{
  result = qword_280CC2088[0];
  if (!qword_280CC2088[0])
  {
    type metadata accessor for ArgumentDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC2088);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245CD8030);
  }

  return result;
}

unint64_t sub_24102A0E8()
{
  result = qword_280CC2048;
  if (!qword_280CC2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2048);
  }

  return result;
}

unint64_t sub_24102A13C()
{
  result = qword_280CC1F98;
  if (!qword_280CC1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1F98);
  }

  return result;
}

uint64_t sub_24102A1A0(uint64_t a1, unsigned int a2)
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

uint64_t sub_24102A1E8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24102A24C(uint64_t a1)
{
  result = sub_24102A274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A274()
{
  result = qword_280CC2050;
  if (!qword_280CC2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2050);
  }

  return result;
}

unint64_t sub_24102A2C8(uint64_t a1)
{
  result = sub_24102A2F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A2F0()
{
  result = qword_280CC1FA0;
  if (!qword_280CC1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FA0);
  }

  return result;
}

unint64_t sub_24102A344(uint64_t a1)
{
  result = sub_24102A36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A36C()
{
  result = qword_280CC1F90;
  if (!qword_280CC1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1F90);
  }

  return result;
}

unint64_t sub_24102A3C0(uint64_t a1)
{
  result = sub_24102A3E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A3E8()
{
  result = qword_280CC2040;
  if (!qword_280CC2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2040);
  }

  return result;
}

unint64_t sub_24102A43C()
{
  result = qword_280CC1FB8[0];
  if (!qword_280CC1FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC1FB8);
  }

  return result;
}

unint64_t sub_24102A520()
{
  result = qword_280CC2068;
  if (!qword_280CC2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2068);
  }

  return result;
}

unint64_t sub_24102A598()
{
  result = qword_27E51F888;
  if (!qword_27E51F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F888);
  }

  return result;
}

unint64_t sub_24102A5F0()
{
  result = qword_27E51F890;
  if (!qword_27E51F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F890);
  }

  return result;
}

unint64_t sub_24102A648()
{
  result = qword_280CC2058;
  if (!qword_280CC2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2058);
  }

  return result;
}

unint64_t sub_24102A6A0()
{
  result = qword_280CC2060;
  if (!qword_280CC2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2060);
  }

  return result;
}

unint64_t sub_24102A6F8()
{
  result = qword_280CC1FA8;
  if (!qword_280CC1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FA8);
  }

  return result;
}

unint64_t sub_24102A750()
{
  result = qword_280CC1FB0;
  if (!qword_280CC1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FB0);
  }

  return result;
}

BOOL sub_24102A7E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (*(a2 + 17))
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) == 0;
  }

  return (*(a2 + 16) & 1) == 0 && *(a1 + 8) < *(a2 + 8);
}

uint64_t sub_24102A86C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0x100) == 0)
  {
    if ((a3 & 0x100) != 0 || a4 < a1)
    {
      return 0;
    }

    if (a4 == a1)
    {
      if (a6)
      {
        if ((a3 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 1) == 0 && a5 < a2)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_24102A8FC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) != 0 || a1 < a4)
    {
      return 0;
    }

    if (a1 == a4)
    {
      if (a3)
      {
        if ((a6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a6 & 1) == 0 && a2 < a5)
      {
        return 0;
      }
    }
  }

  return 1;
}

BOOL sub_24102A938(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 != *a1)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    return (*(a1 + 16) & 1) == 0;
  }

  return (*(a1 + 16) & 1) == 0 && *(a2 + 8) < *(a1 + 8);
}

uint64_t sub_24102A9A8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_2410475A8();
  if (v4 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_24102AA34()
{
  if (*(v0 + 17) & 1) != 0 || (v1 = *(v0 + 16), v3 = *v0, v2 = v0[1], MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v3), (v1))
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  return MEMORY[0x245CD7AE0](v2);
}

uint64_t sub_24102AA9C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  sub_2410475A8();
  if (v5 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v3), (v4))
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v2);
  return sub_2410475E8();
}

BOOL sub_24102AB24(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return (*(a2 + 17) & 1) != 0;
  }

  if (*(a2 + 17))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24102AB88(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v8 << 6));
    if ((*(v11 + 17) & 1) == 0)
    {
      result = sub_241037010(*v11, *(v11 + 8), *(v11 + 16) & 1);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24102AC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24102AECC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24102ACC0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v26 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 17);
    sub_2410475A8();
    if (v16 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v14), (v15))
    {
      v17 = 0;
    }

    else
    {
      MEMORY[0x245CD7AE0](1);
      v17 = v26;
    }

    MEMORY[0x245CD7AE0](v17);
    v18 = sub_2410475E8();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = *(a2 + 48) + 24 * v20;
      if (*(v22 + 17))
      {
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (*v22 == v14)
      {
        v23 = v16;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_20;
      }

      if ((*(v22 + 16) & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_31;
      }

LABEL_20:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }
    }

    if ((v15 & 1) != 0 || *(v22 + 8) != v26)
    {
      goto LABEL_20;
    }

LABEL_31:
    result = v24;
    v7 = v25;
  }

  while (v25);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24102AECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_241025748();
  result = MEMORY[0x245CD7300](v2, &type metadata for InputOrigin.Element, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 49);
    do
    {
      v6 = *(v5 - 17);
      v7 = *(v5 - 9);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 24;
      sub_241031F0C(v10, v6, v7, v8 | (v9 << 8));
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputOrigin.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_24102AFB4(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24102AFD0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

unint64_t sub_24102B004()
{
  result = qword_280CC1E30;
  if (!qword_280CC1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E30);
  }

  return result;
}

uint64_t sub_24102B084(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24102B114();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24102B114()
{
  result = qword_280CC2358;
  if (!qword_280CC2358)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280CC2358);
  }

  return result;
}

uint64_t sub_24102B164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v48 = a3;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for Parsed(0, AssociatedTypeWitness, v6, v7);
  MEMORY[0x28223BE20](v31);
  v9 = &v29 - v8;
  v10 = sub_241046E58();
  v30 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  sub_240FEDBC4(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v29 = a1;
    v46[1] = v38;
    v46[2] = v39;
    v46[3] = v40;
    v47 = v41;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46[0] = v37;
    sub_240FE088C(v46, &v34, &qword_27E51F898, &unk_24104B580);
    if (*(&v34 + 1))
    {
      sub_240FE088C(&v35 + 8, v42, &qword_27E51F328, &qword_241048720);
      sub_240FFBF78(&v34);
    }

    else
    {
      sub_240FE07E8(&v34, &qword_27E51F898, &unk_24104B580);
      memset(v42, 0, 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
    v19 = swift_dynamicCast();
    v20 = *(v14 + 56);
    v21 = v29;
    if (v19)
    {
      v20(v13, 0, 1, AssociatedTypeWitness);
      (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
      (*(v14 + 16))(v9, v16, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      (*(v48 + 40))(v9, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      (*(v14 + 8))(v16, AssociatedTypeWitness);
    }

    else
    {
      v20(v13, 1, 1, AssociatedTypeWitness);
      (*(v30 + 8))(v13, v10);
      sub_240FE088C(v46, &v34, &qword_27E51F898, &unk_24104B580);
      v22 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        v23 = v34;
        v24 = v35;

        sub_240FFBF78(&v34);
      }

      else
      {
        sub_240FE07E8(&v34, &qword_27E51F898, &unk_24104B580);
        v23 = *(&v44 + 1);
        v24 = *(&v45 + 1);
        v22 = v45;
      }

      sub_240FDEE00();
      swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      v26 = v37;
      v27 = v36;
      v28 = v34;
      *(v25 + 40) = v35;
      *(v25 + 24) = v28;
      *(v25 + 56) = v27;
      *(v25 + 72) = v26;
      *(v25 + 80) = 11;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    return sub_2410153E0(&v43);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    sub_240FE07E8(&v34, &qword_27E51F740, &qword_241049698);
    sub_240FDEE00();
    swift_allocError();
    *v17 = 3;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = 15;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_24102B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Parsed(0, AssociatedTypeWitness, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v18 - v14);
  (*(a5 + 32))(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = (*v15)(a1, a2, a3);

    return v16;
  }

  else
  {
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24102B87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for Parsed(0, a3, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24102B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102B944@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v28 = a5;
  v42 = a3;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_241046E58();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v25 = &v23 - v9;
  v27 = type metadata accessor for Parsed(0, AssociatedTypeWitness, v10, v11);
  v12 = MEMORY[0x28223BE20](v27);
  v26 = &v23 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  sub_240FEDBC4(a1, v39);
  sub_241046DC8();
  if (!v5)
  {
    (*(v14 + 32))(v19, v17, AssociatedTypeWitness);
LABEL_10:
    v21 = v26;
    (*(v14 + 16))(v26, v19, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 40))(v21, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v14 + 8))(v19, AssociatedTypeWitness);
  }

  sub_240FEDBC4(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v40[1] = v34;
    v40[2] = v35;
    v40[3] = v36;
    v41 = v37;
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v32;
    v40[0] = v33;
    sub_240FE088C(v40, &v30, &qword_27E51F898, &unk_24104B580);
    sub_2410153E0(v39);
    if (*(&v30 + 1))
    {
      sub_240FE088C(&v31 + 8, v38, &qword_27E51F328, &qword_241048720);
      sub_240FFBF78(&v30);
    }

    else
    {
      sub_240FE07E8(&v30, &qword_27E51F898, &unk_24104B580);
      memset(v38, 0, 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
    v20 = v25;
    if (swift_dynamicCast())
    {
      MEMORY[0x245CD7E80](v5);
      (*(v14 + 56))(v20, 0, 1, AssociatedTypeWitness);
      (*(v14 + 32))(v19, v20, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v14 + 56))(v20, 1, 1, AssociatedTypeWitness);
    (*(v23 + 8))(v20, v24);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    sub_240FE07E8(&v30, &qword_27E51F740, &qword_241049698);
  }

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_24102BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102BED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = v1 + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2 >> 6;
    v2 += 24;
    if (v5 != 1)
    {
      v6 = *(v4 - 5);

      return v6;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  sub_240FF0D90(v6, *(a1 + 40), *(a1 + 48));
  return v6;
}

double sub_24102BF70@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, __int128 *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v54 = a4;
  v55 = a7;
  v50 = a6;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v13 = *(a11 + 8);
  swift_getAssociatedTypeWitness();
  v45 = sub_241046E58();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v15 = &v39 - v14;
  v16 = *(a5 + 4);
  v48 = *(a5 + 5);
  v49 = v13;
  LODWORD(v46) = *(a5 + 48);
  v17 = *a9;
  v39 = a9[1];
  v40 = v17;
  v43 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 24);
  v21 = a5[1];
  v44 = *a5;
  v41 = v21;
  v47 = v20(AssociatedTypeWitness, AssociatedConformanceWitness);
  v61[0] = v44;
  v61[1] = v41;
  v62 = v16;
  v22 = v55;
  v63 = v48;
  v64 = v46;
  v23 = (*(a11 + 24))(v55, a10, a11);
  v24 = v42;
  v46 = v23;
  *&v44 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = a11;
  v27 = v45;
  v28 = *(v24 + 16);
  v48 = v15;
  v28(v15, v22, v45);
  v29 = v43;
  if (v43 == 255)
  {
    (*(AssociatedConformanceWitness + 32))(&v58, AssociatedTypeWitness, AssociatedConformanceWitness);
    v30 = v58;
    v31 = v59;
    v29 = v60;
  }

  else
  {
    v31 = v39;
    v30 = v40;
    v58 = v40;
    v59 = v39;
    v60 = v43;
  }

  v56[0] = v30;
  v56[1] = v31;
  v57 = v29;
  sub_24102CDB0(v51, v52, v53, v54, v47, v61, v46, v65, v44, v50, sub_24102E538, v26, v48, v56, a10, v49);
  (*(v24 + 8))(v55, v27);
  v32 = v73;
  a8[8] = v72;
  a8[9] = v32;
  v33 = v75;
  a8[10] = v74;
  a8[11] = v33;
  v34 = v69;
  a8[4] = v68;
  a8[5] = v34;
  v35 = v71;
  a8[6] = v70;
  a8[7] = v35;
  v36 = v65[1];
  *a8 = v65[0];
  a8[1] = v36;
  result = *&v66;
  v38 = v67;
  a8[2] = v66;
  a8[3] = v38;
  return result;
}

double sub_24102C2B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v38 = a7;
  v39 = a6;
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v37 = a10;
  v36 = a9;
  swift_getAssociatedTypeWitness();
  v15 = sub_241046E58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  LOBYTE(v17) = *(a5 + 48);
  v19 = a11[1];
  v35 = *a11;
  v34 = *(a11 + 16);
  v20 = *(a5 + 16);
  v46[0] = *a5;
  v46[1] = v20;
  v46[2] = *(a5 + 32);
  v47 = v17;
  v21 = swift_allocObject();
  v21[2] = a12;
  v21[3] = a13;
  v22 = v37;
  v23 = v36;
  v21[4] = v38;
  v21[5] = v23;
  (*(v16 + 16))(v18, v22, v15);
  v44[0] = v35;
  v44[1] = v19;
  v45 = v34;
  sub_24102CDB0(v40, v41, v42, v43, MEMORY[0x277D84F90], v46, 0, v48, 0, v39, sub_24102E3D4, v21, v18, v44, a12, a13);
  (*(v16 + 8))(v22, v15);
  v24 = v56;
  v25 = v57;
  v26 = v54;
  a8[8] = v55;
  a8[9] = v24;
  v27 = v58;
  a8[10] = v25;
  a8[11] = v27;
  v28 = v52;
  v29 = v53;
  v30 = v50;
  a8[4] = v51;
  a8[5] = v28;
  a8[6] = v29;
  a8[7] = v26;
  v31 = v48[1];
  *a8 = v48[0];
  a8[1] = v31;
  result = *&v49;
  a8[2] = v49;
  a8[3] = v30;
  return result;
}

uint64_t sub_24102C4F4()
{
  v1 = v0[9];
  v51 = v0[8];
  v52 = v1;
  v2 = v0[11];
  v53 = v0[10];
  v54 = v2;
  v3 = v0[5];
  v47[4] = v0[4];
  v48 = v3;
  v4 = v0[7];
  v49 = v0[6];
  v50 = v4;
  v5 = v0[1];
  v47[0] = *v0;
  v47[1] = v5;
  v6 = v0[3];
  v47[2] = v0[2];
  v47[3] = v6;
  if (*&v47[0])
  {
    if (*&v47[0] == 1)
    {
      return 0;
    }

    v11 = *(*&v47[0] + 16);
    v12 = MEMORY[0x277D84F90];
    if (BYTE8(v53))
    {
      if (v11)
      {
        v43 = MEMORY[0x277D84F90];
        sub_240FE41A0(0, v11, 0);
        v13 = v43;
        v14 = (*&v47[0] + 48);
        while (1)
        {
          v16 = *(v14 - 2);
          v15 = *(v14 - 1);
          v17 = *v14;
          if (!(v17 >> 6))
          {
            break;
          }

          if (v17 >> 6 != 1)
          {
            v45 = 45;
            v18 = 0xE100000000000000;
            goto LABEL_16;
          }

          v45 = 0;
          v46 = 0xE000000000000000;

          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
LABEL_17:
          sub_240FF0D30(v16, v15, v17);
          v19 = v45;
          v20 = v46;
          v43 = v13;
          v22 = *(v13 + 16);
          v21 = *(v13 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_240FE41A0((v21 > 1), v22 + 1, 1);
            v13 = v43;
          }

          v14 += 24;
          *(v13 + 16) = v22 + 1;
          v23 = v13 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v20;
          if (!--v11)
          {
            goto LABEL_33;
          }
        }

        v45 = 11565;
        v18 = 0xE200000000000000;
LABEL_16:
        v46 = v18;
        sub_240FF0D90(v16, v15, v17);
        MEMORY[0x245CD70E0](v16, v15);
        goto LABEL_17;
      }

LABEL_33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v34 = sub_241046AA8();
      v36 = v35;

      v45 = 15392;
      v46 = 0xE200000000000000;
      v38 = *(&v48 + 1);
      v37 = v49;
      v39 = BYTE7(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v39 = *(&v48 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
      }

      else
      {
        sub_24102CC00(v47, &v43);
        v38 = v43;
        v37 = v44;
      }

      MEMORY[0x245CD70E0](v38, v37);

      MEMORY[0x245CD70E0](62, 0xE100000000000000);
      v41 = v45;
      v42 = v46;
      v45 = v34;
      v46 = v36;

      MEMORY[0x245CD70E0](v41, v42);

      return v45;
    }

    if (!v11)
    {
LABEL_37:
      v45 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v40 = sub_241046AA8();

      return v40;
    }

    v43 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v11, 0);
    v12 = v43;
    v24 = (*&v47[0] + 48);
    while (1)
    {
      v26 = *(v24 - 2);
      v25 = *(v24 - 1);
      v27 = *v24;
      if (!(v27 >> 6))
      {
        break;
      }

      if (v27 >> 6 != 1)
      {
        v45 = 45;
        v28 = 0xE100000000000000;
        goto LABEL_28;
      }

      v45 = 0;
      v46 = 0xE000000000000000;

      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_29:
      sub_240FF0D30(v26, v25, v27);
      v29 = v45;
      v30 = v46;
      v43 = v12;
      v32 = *(v12 + 16);
      v31 = *(v12 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_240FE41A0((v31 > 1), v32 + 1, 1);
        v12 = v43;
      }

      v24 += 24;
      *(v12 + 16) = v32 + 1;
      v33 = v12 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      if (!--v11)
      {
        goto LABEL_37;
      }
    }

    v45 = 11565;
    v28 = 0xE200000000000000;
LABEL_28:
    v46 = v28;
    sub_240FF0D90(v26, v25, v27);
    MEMORY[0x245CD70E0](v26, v25);
    goto LABEL_29;
  }

  v45 = 60;
  v46 = 0xE100000000000000;
  v9 = *(&v48 + 1);
  v8 = v49;
  v10 = BYTE7(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v10 = *(&v48 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
  }

  else
  {
    sub_24102CC00(v47, &v43);
    v9 = v43;
    v8 = v44;
  }

  MEMORY[0x245CD70E0](v9, v8);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v45;
}

uint64_t sub_24102C994()
{
  if (*v0 >= 2uLL)
  {

    v2 = *(v1 + 16);
    if (!v2)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = (v1 + 48);
  while (1)
  {
    v5 = *v3;
    v3 += 24;
    v4 = v5;
    if (v5 & 0xC0) == 0x40 && (v4)
    {
      break;
    }

    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

BOOL sub_24102CA5C(void *a1, uint64_t *a2)
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

void *sub_24102CA8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24102CAB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24102CB90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24102CBC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24102E8D4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24102CC00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*a1 >= 2)
  {
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_24102BED8(v4);
  v7 = v6;
  v9 = v8;

  if (v9 > 0xFD)
  {
    v11 = a1[4];
    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];

      v5 = sub_240FE58B8(45, 0xE100000000000000, v12, v13);
      v7 = v14;
    }

    else
    {
      v7 = 0xE500000000000000;
      v5 = 0x65756C6176;
    }
  }

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_24102CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a7;
  sub_240FDEE00();
  swift_allocError();
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = a6;
  *(v16 + 24) = v9;
  *(v16 + 32) = a8;
  *(v16 + 40) = a9;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = 12;
  swift_willThrow();

  sub_24102E3C0(a5, a6, v9);
}

uint64_t sub_24102CDB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  v80 = a7;
  v81 = a5;
  v90 = a4;
  v85 = a1;
  v75 = a11;
  v76 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_241046E58();
  v86 = *(v21 - 8);
  v87 = v21;
  v70 = v86[8];
  MEMORY[0x28223BE20](v21);
  v72 = &v63 - v22;
  v23 = a6[1];
  v89 = *a6;
  v24 = a6[3];
  v83 = a6[2];
  v65 = v24;
  v25 = a6[5];
  v84 = a6[4];
  v64 = v25;
  v82 = *(a6 + 48);
  v26 = a3;
  v27 = *a14;
  v77 = a14[1];
  v78 = v27;
  v74 = *(a14 + 16);
  v28 = *(a16 + 24);
  v79 = a15;
  v29 = a2;
  v73 = v28(a15, a16);
  v30 = *(*(AssociatedTypeWitness - 8) + 48);
  v88 = a13;
  v69 = v30(a13, 1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_241047BF0;
  v32 = v85;
  *(v31 + 32) = v85;
  *(v31 + 40) = a2;
  v33 = v26;
  v71 = v31;
  *(v31 + 48) = v26;
  if (v23)
  {
    v34 = v64;
    if (v64)
    {

      v35 = v65;

      v68 = v23;
      v67 = v35;
      v66 = v34;
      v36 = v89;
LABEL_8:
      v89 = v36;

      goto LABEL_10;
    }

    v37 = v65;

    v68 = v23;
    v67 = v37;
    v36 = v89;
  }

  else
  {
    v36 = 0;
    v83 = 0;
    v68 = 0xE000000000000000;
    v67 = 0xE000000000000000;
  }

  if (v23)
  {
    v84 = 0;
    v66 = 0xE000000000000000;
    goto LABEL_8;
  }

  v89 = v36;
  v84 = 0;
  v82 = 0;
  v66 = 0xE000000000000000;
LABEL_10:
  LODWORD(v65) = a10;
  v64 = a9;
  v38 = swift_allocObject();
  v39 = v79;
  v38[2] = v79;
  v38[3] = a16;
  v40 = v76;
  v38[4] = v75;
  v38[5] = v40;
  v38[6] = v32;
  v38[7] = a2;
  v63 = v33;
  v38[8] = v33;
  v42 = v86;
  v41 = v87;
  v43 = v86[2];
  v76 = v29;
  v44 = v72;
  v43(v72, v88, v87);
  v45 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = v39;
  *(v47 + 3) = a16;
  v48 = v90;
  *(v47 + 4) = v90;
  (v42[4])(&v47[v45], v44, v41);
  v49 = &v47[v46];
  v50 = v63;
  v51 = v76;
  *v49 = v85;
  v49[1] = v51;
  v49[2] = v50;
  if (v48)
  {
    sub_240FF0D20(v90);
  }

  if (v74 == 255)
  {
    v52 = 4;
  }

  else
  {
    v52 = v74;
  }

  LODWORD(v85) = v52;
  if (v74 == 255)
  {
    v53 = 0;
  }

  else
  {
    v53 = v77;
  }

  if (v74 == 255)
  {
    v54 = 0;
  }

  else
  {
    v54 = v78;
  }

  v55 = v73 | (v69 != 1);
  v93 = 1;
  v56 = v86[1];

  result = v56(v88, v87);
  *a8 = v90;
  *(a8 + 8) = v55;
  v58 = v64;
  *(a8 + 16) = v80;
  *(a8 + 24) = v58;
  v59 = v81;
  *(a8 + 32) = v71;
  *(a8 + 40) = v59;
  *(a8 + 48) = 0;
  v60 = v68;
  *(a8 + 56) = v89;
  *(a8 + 64) = v60;
  v61 = v67;
  *(a8 + 72) = v83;
  *(a8 + 80) = v61;
  v62 = v66;
  *(a8 + 88) = v84;
  *(a8 + 96) = v62;
  *(a8 + 104) = v82;
  *(a8 + 112) = 0;
  *(a8 + 120) = 0xE000000000000000;
  *(a8 + 128) = v54;
  *(a8 + 136) = v53;
  *(a8 + 144) = v85;
  *(a8 + 145) = v65;
  *(a8 + 146) = *&v91[7];
  *(a8 + 150) = v92;
  *(a8 + 152) = sub_24102E40C;
  *(a8 + 160) = v38;
  *(a8 + 168) = 1;
  *(a8 + 169) = *v91;
  *(a8 + 172) = *&v91[3];
  *(a8 + 176) = sub_24102E444;
  *(a8 + 184) = v47;
  return result;
}

uint64_t sub_24102D334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v31 = a5;
  v32 = a6;
  v29 = a1;
  v30 = a4;
  v35 = a3;
  v33 = a2;
  v28 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_241046E58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 8);

  v19(a8, a10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v17, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 32))(v28, v17, AssociatedTypeWitness);
  }

  (*(v15 + 8))(v17, v14);
  sub_240FDEE00();
  swift_allocError();
  v21 = v31;
  *v22 = v30;
  *(v22 + 8) = v21;
  v24 = v32;
  v23 = v33;
  *(v22 + 16) = v32;
  v25 = v34;
  *(v22 + 24) = v34;
  *(v22 + 32) = a8;
  *(v22 + 40) = a10;
  *(v22 + 48) = v29;
  *(v22 + 56) = v23;
  *(v22 + 64) = v35;
  *(v22 + 72) = 0;
  *(v22 + 80) = 12;
  swift_willThrow();

  sub_24102E3C0(v21, v24, v25);
}

uint64_t sub_24102D5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  v12 = a7;
  result = a10(a8, a9);
  if (v10)
  {
    sub_240FDEE00();
    swift_allocError();
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 16) = a6;
    *(v19 + 24) = v12;
    *(v19 + 32) = a8;
    *(v19 + 40) = a9;
    *(v19 + 48) = a1;
    *(v19 + 56) = a2;
    *(v19 + 64) = a3;
    *(v19 + 72) = v10;
    *(v19 + 80) = 12;
    swift_willThrow();

    sub_24102E3C0(a5, a6, v12);
  }

  return result;
}

uint64_t sub_24102D6AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = a5;
  v30 = a8;
  v25 = a7;
  v26 = a3;
  v27 = a4;
  v24 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v22 - v18;
  v20 = v29;
  result = v30(a10, a11, a12, a1, a2, v26, v27, v28, a6);
  if (!v20)
  {
    (*(v24 + 32))(v25, v19, a10, a11, a12, a1, a13);
    return (*(v22 + 8))(v19, v23);
  }

  return result;
}

uint64_t sub_24102D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a5;
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_241046E58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (a3 == 1)
  {
    a1 = sub_24102AECC(&unk_2852DA8B8);
  }

  else
  {
  }

  (*(v16 + 16))(v18, a4, v15);
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v28);
    (*(v19 + 32))(boxed_opaque_existential_1Tm, v18, AssociatedTypeWitness);
  }

  sub_24102555C(&v28, v26);
  v25[0] = v23;
  v25[1] = a6;
  v25[2] = a7;
  v26[4] = a1;
  v27 = 1;

  sub_24102F0DC(v25);
  sub_240FFBF78(v25);
  return sub_24101D60C(&v28);
}

uint64_t sub_24102DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a7);
  sub_24102555C(v18, v16);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16[4] = a6;
  v17 = 1;

  sub_24102F0DC(v15);
  sub_240FFBF78(v15);
  return sub_24101D60C(v18);
}

uint64_t sub_24102DB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241046E58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, a2);
    v15 = (*(a3 + 16))(a2, a3);
    (*(v11 + 8))(v13, a2);
    return v15;
  }
}

uint64_t sub_24102DD54(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24102DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_2410469F8();
  v15[2] = a7;
  v15[3] = a2;
  sub_24102EAD4(a3, a4, a5, a6, v13, sub_24102E374, v15, a7);
}

uint64_t sub_24102DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_241046DA8();
  return sub_241046D78();
}

uint64_t sub_24102DF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v9[1] = result;
    v5 = sub_241046DA8();
    swift_getWitnessTable();
    if (sub_241046E38())
    {
      return 0;
    }

    else
    {
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x245CD71D0](v9, v5, WitnessTable);
      v7 = swift_allocObject();
      *(v7 + 16) = a2;
      *(v7 + 24) = a3;
      sub_241047078();
      swift_getWitnessTable();
      sub_241047248();

      sub_241047108();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v8 = sub_241046AA8();

      return v8;
    }
  }

  return result;
}

uint64_t sub_24102E138(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal0A10DefinitionV4KindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_24102E208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24102E250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24102E2E4()
{
  result = qword_27E51F8A0;
  if (!qword_27E51F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8A0);
  }

  return result;
}

uint64_t sub_24102E338(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24102E37C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24102E3C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_240FF0D90(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24102E444(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  swift_getAssociatedTypeWitness();
  v7 = *(sub_241046E58() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24102D830(a1, a2, v2[4], v2 + v8, *v9, v9[1], v9[2], v5, v6);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24102E5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24102E618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24102E684(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24102E6D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24102E734(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_24102E778()
{
  result = qword_27E51F8A8;
  if (!qword_27E51F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8A8);
  }

  return result;
}

unint64_t sub_24102E7D0()
{
  result = qword_27E51F8B0;
  if (!qword_27E51F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8B0);
  }

  return result;
}

unint64_t sub_24102E828()
{
  result = qword_27E51F8B8;
  if (!qword_27E51F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8B8);
  }

  return result;
}

unint64_t sub_24102E880()
{
  result = qword_27E51F8C0;
  if (!qword_27E51F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8C0);
  }

  return result;
}

uint64_t sub_24102E8D4(uint64_t a1)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24102E938(uint64_t *a1, int a2)
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

uint64_t sub_24102E980(uint64_t result, int a2, int a3)
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

uint64_t sub_24102E9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v8;
    v14 = *(a1 + 64);
    v9 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    sub_241031A60(v13, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v12;
  }

  else
  {
    sub_240FE07E8(a1, &qword_27E51F898, &unk_24104B580);
    sub_2410315C4(a2, a3, a4, v13);

    return sub_240FE07E8(v13, &qword_27E51F898, &unk_24104B580);
  }

  return result;
}

uint64_t sub_24102EAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  if (*(v14 + 16) && (v15 = sub_24102FB5C(a1, a2, a3), (v16 & 1) != 0))
  {
    sub_240FFC198(*(v14 + 56) + 72 * v15, &v21);
    v27[1] = v23;
    v28 = v24;
    v29 = v25;
    v26 = v21;
    v27[0] = v22;
  }

  else
  {
    *&v26 = a1;
    *(&v26 + 1) = a2;
    *&v27[0] = a3;
    *(&v27[0] + 1) = a5;
    *&v28 = sub_241046DA8();
    *(&v28 + 1) = MEMORY[0x277D84FA0];
    v29 = 1;
  }

  sub_24102555C(v27 + 8, &v21);
  if (*(&v22 + 1))
  {
    sub_241046DA8();
    if (swift_dynamicCast())
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_240FE07E8(&v21, &qword_27E51F328, &qword_241048720);
  }

  v20 = a5;

  if (v29)
  {
LABEL_11:
    sub_241046DA8();
    sub_241046D98();
    v29 = 0;
  }

LABEL_12:
  a6(&v20);
  v17 = v20;
  *(&v22 + 1) = sub_241046DA8();
  *&v21 = v17;
  sub_240FFC128(&v21, v27 + 8);

  sub_24102EFE4(v18);
  sub_24102F0DC(&v26);
  return sub_240FFBF78(&v26);
}

uint64_t sub_24102ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v30[1] = a7;
  v31 = a6;
  v14 = sub_241046E58();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v30 - v16;
  v18 = *(a8 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v8;
  v21 = *v8;
  if (*(v21 + 16) && (v22 = sub_24102FB5C(a1, a2, a3), (v23 & 1) != 0))
  {
    sub_240FFC198(*(v21 + 56) + 72 * v22, &v32);
    v38[1] = v34;
    v39 = v35;
    v40 = v36;
    v37 = v32;
    v38[0] = v33;
  }

  else
  {
    *&v39 = a8;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 1);
    (*(v18 + 16))(boxed_opaque_existential_1Tm, a5, a8);
    *&v37 = a1;
    *(&v37 + 1) = a2;
    *&v38[0] = a3;
    *(&v39 + 1) = MEMORY[0x277D84FA0];
    v40 = 1;
  }

  sub_24102555C(v38 + 8, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  v25 = swift_dynamicCast();
  v26 = *(v18 + 56);
  if (v25)
  {
    v26(v17, 0, 1, a8);
    (*(v18 + 32))(v20, v17, a8);
  }

  else
  {
    v26(v17, 1, 1, a8);
    (*(v18 + 16))(v20, a5, a8);
  }

  v31(v20);
  *(&v33 + 1) = a8;
  v27 = __swift_allocate_boxed_opaque_existential_1Tm(&v32);
  (*(v18 + 16))(v27, v20, a8);
  sub_240FFC128(&v32, v38 + 8);

  sub_24102EFE4(v28);
  sub_24102F0DC(&v37);
  (*(v18 + 8))(v20, a8);
  return sub_240FFBF78(&v37);
}

uint64_t sub_24102EFE4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      result = sub_241031F0C(v11, *v10, *(v10 + 8), *(v10 + 16) | (*(v10 + 17) << 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24102F0DC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *v1;
  if (*(v6 + 16) && (v7 = sub_24102FB5C(*a1, v4, v5), (v8 & 1) != 0))
  {
    sub_240FFC198(*(v6 + 56) + 72 * v7, v16);
    sub_240FFC198(a1, v15);

    sub_24102EFE4(v9);
    v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    sub_240FFC198(v15, v14);

    sub_24102E9D8(v14, v10, v11, v12);
    sub_240FFBF78(v15);
    return sub_240FFBF78(v16);
  }

  else
  {
    sub_240FFC198(a1, v16);

    return sub_24102E9D8(v16, v3, v4, v5);
  }
}

uint64_t sub_24102F200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_241047428() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24102F290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    for (i = (a2 + 48); ; i += 8)
    {
      v6 = *(v3 - 16);
      v7 = *(v3 - 8);
      v9 = *v3;
      v8 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      v14 = *(i - 2);
      v15 = *(i - 1);
      v17 = *i;
      v16 = i[1];
      v18 = i[2];
      v19 = i[3];
      v20 = i[4];
      v21 = (*v3 >> 61) & 3;
      v22 = *(i + 40);
      if (v21)
      {
        if (v21 != 1)
        {
          if ((v17 & 0x6000000000000000) != 0x4000000000000000 || v17 != 0x4000000000000000 || v15 | v14 | v16 | v18)
          {
            sub_241029F24(v6, v7, *v3, *(v3 + 8), v10);
            return 0;
          }

          v30 = *(v3 + 32);
          v31 = *(v3 + 40);
          v32 = *(i + 40);
          v33 = i[4];
          sub_241029F24(v6, v7, *v3, *(v3 + 8), v10);
          v20 = v33;
          v22 = v32;
          v13 = v31;
          v12 = v30;
LABEL_33:
          if (v11 != v19)
          {
            return 0;
          }

          goto LABEL_34;
        }

        if ((v17 & 0x6000000000000000) != 0x2000000000000000)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if ((v17 & 0x6000000000000000) != 0)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v54 = *(i + 40);
        if (v9 >> 6)
        {
          v34 = v17 & 0xC0;
          if (v9 >> 6 == 1)
          {
            if (v34 != 64)
            {
              return 0;
            }

            if (v6 == v14 && v7 == v15)
            {
              if ((v9 ^ v17))
              {
                return 0;
              }
            }

            else
            {
              v51 = *(v3 + 16);
              v53 = i[4];
              v49 = *(v3 + 40);
              v47 = *(v3 + 32);
              v43 = sub_241047428();
              result = 0;
              if ((v43 & 1) == 0)
              {
                return result;
              }

              v10 = v51;
              v20 = v53;
              v12 = v47;
              v13 = v49;
              v22 = v54;
              if ((v9 ^ v17))
              {
                return result;
              }
            }

LABEL_61:
            if (v8 == v16 && v10 == v18)
            {
              goto LABEL_33;
            }

            v52 = v20;
            v44 = v13;
            v45 = v12;
            v46 = sub_241047428();
            result = 0;
            if ((v46 & 1) == 0)
            {
              return result;
            }

            v42 = v11 == v19;
            v12 = v45;
            v13 = v44;
            v22 = v54;
            goto LABEL_65;
          }

          if (v34 != 128)
          {
            return 0;
          }
        }

        else if (*i >= 0x40u)
        {
          return 0;
        }

        if (v6 != v14 || v7 != v15)
        {
          v50 = *(v3 + 16);
          v35 = *(v3 + 32);
          v48 = *(v3 + 40);
          v36 = i[4];
          v37 = sub_241047428();
          v20 = v36;
          v22 = v54;
          v13 = v48;
          v12 = v35;
          v10 = v50;
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_61;
      }

      if (v17 < 0)
      {
        return 0;
      }

      if (!(v9 >> 6))
      {
        break;
      }

      v29 = v17 & 0xC0;
      if (v9 >> 6 != 1)
      {
        if (v29 != 128)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if (v29 != 64)
      {
        return 0;
      }

      if (v6 != v14 || v7 != v15)
      {
        v52 = i[4];
        v38 = *(i + 40);
        v39 = *(v3 + 40);
        v40 = *(v3 + 32);
        v41 = sub_241047428();
        result = 0;
        if (v41 & 1) == 0 || ((v9 ^ v17))
        {
          return result;
        }

        v42 = v11 == v19;
        v12 = v40;
        v13 = v39;
        v22 = v38;
LABEL_65:
        v20 = v52;
        if (!v42)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (((v9 ^ v17) & 1) != 0 || v11 != v19)
      {
        return result;
      }

LABEL_34:
      if (v13)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v20)
        {
          v5 = v22;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i >= 0x40u)
    {
      return 0;
    }

LABEL_13:
    if (v6 == v14 && v7 == v15)
    {
      goto LABEL_33;
    }

    v23 = i[4];
    v24 = *(i + 40);
    v25 = *(v3 + 40);
    v26 = *(v3 + 32);
    v27 = sub_241047428();
    result = 0;
    if ((v27 & 1) == 0)
    {
      return result;
    }

    v12 = v26;
    v13 = v25;
    v22 = v24;
    v20 = v23;
    if (v11 != v19)
    {
      return result;
    }

    goto LABEL_34;
  }

  return 1;
}

uint64_t sub_24102F624(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_241033B5C(v27, v14);
    sub_241033B5C(v32, v14);
    v12 = static CommandInfoV0.== infix(_:_:)(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_241033BB8(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_241033BB8(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_24102F794(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_241033E34(v45, v26);
    sub_241033E34(v53, v26);
    v24 = _s22ArgumentParserInternal0A6InfoV0V2eeoiySbAC_ACtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_241033E90(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_241033E90(v63);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_24102F95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x74726F6873;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v8 == 1)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0x800000024104DDA0;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 1735290732;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x74726F6873;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (v9 == 1)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0x800000024104DDA0;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 1735290732;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v20 = sub_241047428();

        if ((v20 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_241047428();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_24102FB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2410475A8();
  sub_241046A88();
  v6 = *(a3 + 16);
  MEMORY[0x245CD7AE0](v6);
  if (v6)
  {
    v7 = a3 + 40;
    do
    {

      sub_241046A88();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v8 = sub_2410475E8();

  return sub_241031034(a1, a2, a3, v8);
}

unint64_t sub_24102FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_2410475A8();
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      MEMORY[0x245CD7AE0](1);
      sub_241046A88();
      sub_2410475C8();
      goto LABEL_7;
    }

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x245CD7AE0](v6);
  sub_241046A88();
LABEL_7:
  v7 = sub_2410475E8();

  return sub_241031180(a1, a2, v3, v7);
}

unint64_t sub_24102FD08(uint64_t a1)
{
  sub_241047168();
  v2 = sub_241046A18();

  return sub_2410312C0(a1, v2);
}

unint64_t sub_24102FD6C(uint64_t a1, uint64_t a2)
{
  sub_2410475A8();
  sub_241046A88();
  v4 = sub_2410475E8();

  return sub_241031458(a1, a2, v4);
}

unint64_t sub_24102FDE4(uint64_t a1)
{
  sub_2410475A8();
  MEMORY[0x245CD7AE0](a1);
  v2 = sub_2410475E8();

  return sub_241031510(a1, v2);
}

void *sub_24102FE50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
  v2 = *v0;
  v3 = sub_2410471F8();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_240FF0D90(v19, v20, v23);
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

void *sub_24102FFC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B8, &qword_24104BC90);
  v2 = *v0;
  v3 = sub_2410471F8();
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

void *sub_241030134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
  v2 = *v0;
  v3 = sub_2410471F8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_241030298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5D0, &qword_241048750);
  v2 = *v0;
  v3 = sub_2410471F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
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
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = 72 * v17;
        sub_240FFC198(*(v2 + 56) + 72 * v17, v31);
        v24 = (*(v30 + 48) + v18);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        v25 = *(v30 + 56) + v23;
        *v25 = v31[0];
        v26 = v31[1];
        v27 = v31[2];
        v28 = v31[3];
        *(v25 + 64) = v32;
        *(v25 + 32) = v27;
        *(v25 + 48) = v28;
        *(v25 + 16) = v26;
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

        v1 = v29;
        v4 = v30;
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

uint64_t sub_241030478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
  v36 = v4;
  result = sub_241047208();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v36 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        sub_240FF0D90(v23, v24, v25);
      }

      sub_2410475A8();
      if (v25 >> 6)
      {
        if (v25 >> 6 == 1)
        {
          MEMORY[0x245CD7AE0](1);
          sub_241046A88();
          sub_2410475C8();
          goto LABEL_23;
        }

        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x245CD7AE0](v26);
      sub_241046A88();
LABEL_23:
      result = sub_2410475E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_241030784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B8, &qword_24104BC90);
  v34 = v4;
  result = sub_241047208();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2410475A8();
      sub_241046A88();
      result = sub_2410475E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_241030A2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
  v30 = v4;
  result = sub_241047208();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2410475A8();
      MEMORY[0x245CD7AE0](v20);
      result = sub_2410475E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_241030CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5D0, &qword_241048750);
  v48 = v4;
  result = sub_241047208();
  v7 = result;
  if (*(v5 + 16))
  {
    v46 = v2;
    v47 = v5;
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
      v23 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 56);
      v28 = (*(v5 + 48) + 24 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v27 + 72 * v26;
      if (v48)
      {
        v51 = *v32;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        v55 = *(v32 + 64);
        v53 = v34;
        v54 = v35;
        v52 = v33;
      }

      else
      {
        sub_240FFC198(v32, &v51);
      }

      sub_2410475A8();
      v50 = v30;
      sub_241046A88();
      MEMORY[0x245CD7AE0](*(v31 + 16));
      v36 = *(v31 + 16);
      if (v36)
      {
        v37 = v31 + 40;
        do
        {

          sub_241046A88();

          v37 += 16;
          --v36;
        }

        while (v36);
      }

      result = sub_2410475E8();
      v38 = -1 << *(v7 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v17 = v50;
        v16 = v29;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v16 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v7 + 48) + 24 * v15);
      *v18 = v16;
      v18[1] = v17;
      v18[2] = v31;
      v19 = *(v7 + 56) + 72 * v15;
      *v19 = v51;
      v20 = v52;
      v21 = v53;
      v22 = v54;
      *(v19 + 64) = v55;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
      ++*(v7 + 16);
      v5 = v47;
      v12 = v49;
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_37;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

unint64_t sub_241031034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v21 = (a3 + 40);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_241047428() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16 == *(a3 + 16))
        {
          if (!v16 || v14 == a3)
          {
            return v7;
          }

          v17 = (v14 + 40);
          for (i = v21; ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (sub_241047428() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v7;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_241031180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a3 & 0xC0;
    do
    {
      v14 = (v12 + 24 * v7);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 16);
      if (v17 >> 6)
      {
        if (v17 >> 6 == 1)
        {
          if (v13 == 64)
          {
            v18 = v15 == a1 && v16 == a2;
            if (v18 || (sub_241047428()) && ((a3 ^ v17) & 1) == 0)
            {
              return v7;
            }
          }

          goto LABEL_4;
        }

        if (v13 != 128)
        {
          goto LABEL_4;
        }
      }

      else if (a3 >= 0x40u)
      {
        goto LABEL_4;
      }

      v19 = v15 == a1 && v16 == a2;
      if (v19 || (sub_241047428() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_2410312C0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_241047168();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_241046AB8();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_241031458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_241047428())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_241031510(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24103157C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_2410315C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_24102FB5C(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v16 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_241030298();
      v11 = v16;
    }

    v12 = *(v11 + 56) + 72 * v9;
    v13 = *(v12 + 48);
    *(a4 + 32) = *(v12 + 32);
    *(a4 + 48) = v13;
    *(a4 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a4 = *v12;
    *(a4 + 16) = v14;
    sub_241031698(v9, v11);
    *v5 = v11;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *sub_241031698(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_241046F58() + 1) & ~v5;
    v24 = v4;
    v25 = v2;
    do
    {
      v9 = v7;
      v10 = *(*(v2 + 48) + 24 * v6 + 16);
      sub_2410475A8();

      sub_241046A88();
      MEMORY[0x245CD7AE0](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 40;
        do
        {

          sub_241046A88();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      v13 = sub_2410475E8();

      v7 = v9;
      v14 = v13 & v9;
      if (v3 >= v8)
      {
        v4 = v24;
        if (v14 < v8)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v3 >= v14)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = v25;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_14:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + 24 * v6);
          if (v3 != v6 || v16 >= v17 + 24)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          result = (v19 + 72 * v3);
          v20 = (v19 + 72 * v6);
          if (72 * v3 < (72 * v6) || result >= v20 + 72 || v3 != v6)
          {
            result = memmove(result, v20, 0x48uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_2410318F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24102FDE4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_241030A2C(v14, a3 & 1);
      v9 = sub_24102FDE4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
        result = sub_241047518();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_241030134();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

uint64_t sub_241031A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24102FB5C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_241030CC4(v18, a5 & 1);
      v13 = sub_24102FB5C(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_241047518();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_241030298();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 72 * v13;

    return sub_241033B24(a1, v24);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 24 * v13);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v27 = v23[7] + 72 * v13;
  *v27 = *a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  *(v27 + 64) = *(a1 + 64);
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  *(v27 + 16) = v28;
  v31 = v23[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v32;
}

uint64_t sub_241031C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_2410475A8();
  v10 = v5 >> 6;
  if (v5 >> 6)
  {
    if (v10 != 1)
    {
      if (a3 | a2 || v5 != 128)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x245CD7AE0](v11);
      goto LABEL_11;
    }

    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
  }

  sub_2410475C8();
LABEL_11:
  v12 = sub_2410475E8();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v4;
    sub_240FE0E2C(a2, a3, v5);
    sub_241032D28(a2, a3, v5, v14, isUniquelyReferenced_nonNull_native);
    *v4 = v38;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v15 = ~v13;
  v17 = a2 != 1 || a3 != 0;
  if (v5 == 128)
  {
    v18 = (a3 | a2) != 0;
  }

  else
  {
    v17 = 1;
    v18 = 1;
  }

  v19 = v10 != 2 || v17;
  v20 = v10 != 2 || v18;
  v36 = v20;
  v37 = v19;
  while (1)
  {
    v21 = *(v9 + 48) + 24 * v14;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v24 >> 6)
    {
      break;
    }

    if (v5 >= 0x40u)
    {
      goto LABEL_29;
    }

LABEL_35:
    v25 = v22 == a2 && v23 == a3;
    if (v25 || (sub_241047428()) && ((v5 ^ v24) & 1) == 0)
    {
      v29 = a2;
      v30 = a3;
      v31 = v5;
      goto LABEL_53;
    }

LABEL_29:
    v14 = (v14 + 1) & v15;
    if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (v24 >> 6 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if (v23 | v22 || v24 != 128)
  {
    if ((v37 & 1) == 0)
    {
      sub_240FE0E3C(1, 0, 128);
      v29 = 1;
      goto LABEL_52;
    }

    v26 = 1;
    goto LABEL_47;
  }

  if (v36)
  {
    v26 = 0;
LABEL_47:
    sub_240FE0E3C(v26, 0, 128);
    goto LABEL_29;
  }

  sub_240FE0E3C(0, 0, 128);
  v29 = 0;
LABEL_52:
  v30 = 0;
  v31 = 0x80;
LABEL_53:
  sub_240FE0E3C(v29, v30, v31);
  v32 = *(v9 + 48) + 24 * v14;
  v33 = *v32;
  v34 = *(v32 + 8);
  *a1 = *v32;
  *(a1 + 8) = v34;
  v35 = *(v32 + 16);
  *(a1 + 16) = v35;
  sub_240FE0E2C(v33, v34, v35);
  return 0;
}

uint64_t sub_241031F0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = a4 >> 8;
  v11 = *v5;
  sub_2410475A8();
  if (v10 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](a2), (a4))
  {
    v12 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v12 = a3;
  }

  MEMORY[0x245CD7AE0](v12);
  v13 = sub_2410475E8();
  v14 = v11 + 56;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v11 + 48);
    do
    {
      v19 = v18 + 24 * v16;
      v20 = *(v19 + 16);
      LOBYTE(v21) = *(v19 + 17);
      if (v21)
      {
        if ((a4 & 0x100) != 0)
        {
          result = 0;
          a2 = *v19;
          a3 = *(v19 + 8);
          goto LABEL_19;
        }
      }

      else if ((a4 & 0x100) == 0 && *v19 == a2)
      {
        if (*(v19 + 16))
        {
          if (a4)
          {
            result = 0;
            a3 = *(v19 + 8);
            goto LABEL_19;
          }
        }

        else if ((a4 & 1) == 0 && *(v19 + 8) == a3)
        {
          result = 0;
          goto LABEL_19;
        }
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = (a4 >> 8) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v5;
  sub_241032FF8(a2, a3, a4 & 0x1FF, v16, isUniquelyReferenced_nonNull_native);
  *v5 = v24;
  result = 1;
  v20 = a4;
LABEL_19:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v20;
  *(a1 + 17) = v21;
  return result;
}

uint64_t sub_2410320B8(void *a1, uint64_t a2)
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

    v8 = sub_241046F98();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_241046F88();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_2410322C8(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_2410328F8(v17 + 1);
    }

    sub_241032C84(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_2410475A8();
  MEMORY[0x245CD7AE0](a2);
  v10 = sub_2410475E8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_2410331D8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
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

uint64_t sub_2410322C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
    v2 = sub_241046FF8();
    v15 = v2;
    sub_241046F78();
    for (; sub_241046FA8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_2410328F8(v9 + 1);
        v2 = v15;
      }

      sub_2410475A8();
      MEMORY[0x245CD7AE0]();
      result = sub_2410475E8();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
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
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2410324D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8D0, &qword_24104BC88);
  result = sub_241046FE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_241032B48(*v15, *(v15 + 8), *(v15 + 16), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = *(v3 + 48) + 24 * (v12 | (v6 << 6));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_241032644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8C8, &qword_24104BC68);
  result = sub_241046FE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v32 = *(v18 + 8);
      v20 = *(v18 + 16);
      v21 = *(v18 + 17);
      sub_2410475A8();
      if (v21 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v19), (v20))
      {
        v22 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v22 = v32;
      }

      MEMORY[0x245CD7AE0](v22);
      result = sub_2410475E8();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v32;
      *(v14 + 16) = v20;
      *(v14 + 17) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2410328F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
  result = sub_241046FE8();
  v5 = result;
  if (*(v3 + 16))
  {
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
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v17);
      result = sub_2410475E8();
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
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_241032B48(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  sub_2410475A8();
  if (!(a3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    goto LABEL_11;
  }

  if (a2 | a1 || a3 != 128)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x245CD7AE0](v8);
LABEL_11:
  sub_2410475E8();
  result = sub_241046F68();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_241032C84(uint64_t a1, uint64_t a2)
{
  sub_2410475A8();
  MEMORY[0x245CD7AE0](a1);
  sub_2410475E8();
  result = sub_241046F68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_241032D28(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a5)
  {
    sub_2410324D4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_241033330();
      goto LABEL_54;
    }

    sub_241033748(v10 + 1);
  }

  v12 = *v5;
  sub_2410475A8();
  v13 = a3 >> 6;
  if (a3 >> 6)
  {
    if (v13 != 1)
    {
      if (a2 | v9 || a3 != 128)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      MEMORY[0x245CD7AE0](v14);
      goto LABEL_18;
    }

    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
  }

  sub_2410475C8();
LABEL_18:
  result = sub_2410475E8();
  v15 = -1 << *(v12 + 32);
  a4 = result & ~v15;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_54;
  }

  v16 = ~v15;
  v18 = v9 != 1 || a2 != 0;
  if (a3 == 128)
  {
    v19 = (a2 | v9) != 0;
  }

  else
  {
    v18 = 1;
    v19 = 1;
  }

  v20 = v13 != 2 || v18;
  v21 = v13 != 2 || v19;
  v31 = v21;
  v32 = v20;
  while (1)
  {
    v22 = *(v12 + 48) + 24 * a4;
    result = *v22;
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    if (!(v24 >> 6))
    {
      break;
    }

    if (v24 >> 6 == 1)
    {
      if (v13 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v23 | result || v24 != 128)
    {
      result = sub_240FE0E3C(1, 0, 128);
      if ((v32 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = sub_240FE0E3C(0, 0, 128);
      if ((v31 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_36:
    a4 = (a4 + 1) & v16;
    if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (a3 >= 0x40u)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (result != v9 || v23 != a2)
  {
    result = sub_241047428();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if ((a3 ^ v24))
  {
    goto LABEL_36;
  }

LABEL_53:
  result = sub_241047508();
  __break(1u);
LABEL_54:
  v26 = *v33;
  *(*v33 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v9;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_241032FF8(uint64_t result, uint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_241032644(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_241033498();
      a4 = v11;
      goto LABEL_25;
    }

    sub_2410338A0(v9 + 1);
  }

  v12 = *v5;
  sub_2410475A8();
  if (a3 & 0x100) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v8), (a3))
  {
    v13 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v13 = a2;
  }

  MEMORY[0x245CD7AE0](v13);
  result = sub_2410475E8();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v12 + 48) + 24 * a4;
      if (*(v16 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a3 & 0x100) == 0 && *v16 == v8)
      {
        if (*(v16 + 16))
        {
          if (a3)
          {
            goto LABEL_24;
          }
        }

        else if ((a3 & 1) == 0 && *(v16 + 8) == a2)
        {
LABEL_24:
          result = sub_241047508();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v17 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v18 = *(v17 + 48) + 24 * a4;
  *v18 = v8;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3;
  *(v18 + 17) = HIBYTE(a3) & 1;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_2410331D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2410328F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2410335F8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_241033C0C(v5 + 1);
  }

  v8 = *v3;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v4);
  result = sub_2410475E8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
  result = sub_241047508();
  __break(1u);
  return result;
}

void *sub_241033330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8D0, &qword_24104BC88);
  v2 = *v0;
  v3 = sub_241046FD8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_240FE0E2C(v19, v20, v22);
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

void *sub_241033498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F8C8, &qword_24104BC68);
  v2 = *v0;
  v3 = sub_241046FD8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2410335F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
  v2 = *v0;
  v3 = sub_241046FD8();
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