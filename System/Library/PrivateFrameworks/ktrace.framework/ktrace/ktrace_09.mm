uint64_t sub_22EE02DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95628, &unk_22EE43560);
  result = sub_22EE3C824();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EE03040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956F8, &qword_22EE435E8);
  result = sub_22EE3C824();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_22EE3CC74();
      sub_22EE3C1C4();

      result = sub_22EE3CCC4();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

uint64_t sub_22EE03464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95600, &qword_22EE43530);
  result = sub_22EE3C824();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 328 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      memcpy(__src, v18 + 2, sizeof(__src));
      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 328 * v13);
      *v14 = v19;
      v14[1] = v20;
      result = memcpy(v14 + 2, __src, 0x131uLL);
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_22EE036F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22EE02DE0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22EE03E98();
      goto LABEL_16;
    }

    sub_22EE042BC(v8 + 1);
  }

  v10 = *v4;
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v11 = sub_22EE3CCC4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22EE3CBA4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22EE3CBD4();
  __break(1u);
}

uint64_t sub_22EE03870(uint64_t result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_79;
  }

  if (a3)
  {
    sub_22EE03040(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22EE03FF4();
      goto LABEL_79;
    }

    sub_22EE044F4(v5 + 1);
  }

  v7 = *v3;
  sub_22EE3CC74();
  sub_22EDF6268(v35);
  sub_22EE3C1C4();

  result = sub_22EE3CCC4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      if (v9 <= 4)
      {
        v12 = 0xD000000000000014;
        if (v9 == 3)
        {
          v12 = 0x735F646165726874;
          v13 = 0xEF746F687370616ELL;
        }

        else
        {
          v13 = 0x800000022EE48DC0;
        }

        if (v9 == 2)
        {
          v12 = 0x695F646165726874;
          v13 = 0xEB000000006F666ELL;
        }

        v14 = *(*(v7 + 48) + a2) ? 0xD000000000000011 : 0x6C61635F72657375;
        v15 = *(*(v7 + 48) + a2) ? 0x800000022EE48D90 : 0xEF6B636174735F6CLL;
        v10 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
        v11 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v9 == 8)
        {
          v10 = 0xD000000000000010;
          v11 = 0x800000022EE48E20;
        }

        else if (v9 == 9)
        {
          v10 = 0x6D5F6D6574737973;
          v11 = 0xED000079726F6D65;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x800000022EE48E40;
        }
      }

      else if (v9 == 5)
      {
        v10 = 0xD00000000000001ALL;
        v11 = 0x800000022EE48DE0;
      }

      else if (v9 == 6)
      {
        v10 = 0x666E695F6B736174;
        v11 = 0xE90000000000006FLL;
      }

      else
      {
        v10 = 0x616E735F6B736174;
        v11 = 0xED0000746F687370;
      }

      v16 = 0xD000000000000012;
      if (v35 == 9)
      {
        v16 = 0x6D5F6D6574737973;
      }

      v17 = 0xED000079726F6D65;
      if (v35 != 9)
      {
        v17 = 0x800000022EE48E40;
      }

      if (v35 == 8)
      {
        v16 = 0xD000000000000010;
        v17 = 0x800000022EE48E20;
      }

      v18 = 0xD00000000000001ALL;
      v19 = 0x666E695F6B736174;
      if (v35 != 6)
      {
        v19 = 0x616E735F6B736174;
      }

      v20 = 0xED0000746F687370;
      if (v35 == 6)
      {
        v20 = 0xE90000000000006FLL;
      }

      if (v35 != 5)
      {
        v18 = v19;
      }

      v21 = 0x800000022EE48DE0;
      if (v35 != 5)
      {
        v21 = v20;
      }

      if (v35 <= 7u)
      {
        v16 = v18;
        v17 = v21;
      }

      v22 = 0xD000000000000014;
      if (v35 == 3)
      {
        v22 = 0x735F646165726874;
        v23 = 0xEF746F687370616ELL;
      }

      else
      {
        v23 = 0x800000022EE48DC0;
      }

      if (v35 == 2)
      {
        v22 = 0x695F646165726874;
        v23 = 0xEB000000006F666ELL;
      }

      if (v35)
      {
        v24 = 0xD000000000000011;
      }

      else
      {
        v24 = 0x6C61635F72657375;
      }

      if (v35)
      {
        v25 = 0x800000022EE48D90;
      }

      else
      {
        v25 = 0xEF6B636174735F6CLL;
      }

      if (v35 <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      v26 = v35 <= 4u ? v22 : v16;
      v27 = v35 <= 4u ? v23 : v17;
      if (v10 == v26 && v11 == v27)
      {
        goto LABEL_82;
      }

      v28 = sub_22EE3CBA4();

      if (v28)
      {
        goto LABEL_83;
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_79:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_82:

LABEL_83:
  result = sub_22EE3CBD4();
  __break(1u);
  return result;
}

void *sub_22EE03D00(uint64_t *__src, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22EE03464(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_22EE04134();
      goto LABEL_16;
    }

    sub_22EE048E8(v7 + 1);
  }

  v9 = *v3;
  sub_22EE3CC74();
  v10 = *__src;
  v11 = __src[1];
  sub_22EE3C1C4();
  v12 = sub_22EE3CCC4();
  v13 = -1 << *(v9 + 32);
  a2 = v12 & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v9 + 48) + 328 * a2);
      v16 = *v15 == v10 && v15[1] == v11;
      if (v16 || (sub_22EE3CBA4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v17 + 48) + 328 * a2), __src, 0x141uLL);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22EE3CBD4();
  __break(1u);
  return result;
}

void sub_22EE03E98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95628, &unk_22EE43560);
  v2 = *v0;
  v3 = sub_22EE3C814();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void *sub_22EE03FF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956F8, &qword_22EE435E8);
  v2 = *v0;
  v3 = sub_22EE3C814();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

void *sub_22EE04134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95600, &qword_22EE43530);
  v2 = *v0;
  v3 = sub_22EE3C814();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_22ED80E90(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 328 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x141uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x141uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_22EE042BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95628, &unk_22EE43560);
  result = sub_22EE3C824();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22EE3CC74();

      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_22EE044F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956F8, &qword_22EE435E8);
  result = sub_22EE3C824();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_22EE3CC74();
      sub_22EE3C1C4();

      result = sub_22EE3CCC4();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EE048E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95600, &qword_22EE43530);
  result = sub_22EE3C824();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      memcpy(__src, (*(v3 + 48) + 328 * (v13 | (v6 << 6))), 0x141uLL);
      sub_22EE3CC74();
      sub_22ED80E90(__src, v23);
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = memcpy((*(v5 + 48) + 328 * v12), __src, 0x141uLL);
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_22EE04B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956E8, &qword_22EE435D8);
  v37 = v4;
  result = sub_22EE3C9C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22EE04E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95648, &qword_22EE43588);
  v47 = v4;
  result = sub_22EE3C9C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v2;
    v46 = v5;
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
      v18 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v67 = v19;
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 200 * v22;
      if (v47)
      {
        v66 = *v26;
        v54 = *(v26 + 16);
        v51 = *(v26 + 24);
        v48 = *(v26 + 32);
        v27 = *(v26 + 40);
        v49 = *(v26 + 48);
        v50 = *(v26 + 64);
        v53 = *(v26 + 80);
        v55 = *(v26 + 104);
        v52 = *(v26 + 88);
        v57 = *(v26 + 120);
        v58 = *(v26 + 128);
        v56 = *(v26 + 144);
        v60 = *(v26 + 136);
        v61 = *(v26 + 160);
        v59 = *(v26 + 168);
        v64 = *(v26 + 184);
        v65 = *(v26 + 152);
        v62 = *(v26 + 176);
        v63 = *(v26 + 192);
      }

      else
      {
        v69 = *v26;
        v28 = *(v26 + 64);
        v30 = *(v26 + 16);
        v29 = *(v26 + 32);
        v72 = *(v26 + 48);
        v73 = v28;
        v70 = v30;
        v71 = v29;
        v31 = *(v26 + 128);
        v33 = *(v26 + 80);
        v32 = *(v26 + 96);
        *&v74[32] = *(v26 + 112);
        v75 = v31;
        *v74 = v33;
        *&v74[16] = v32;
        v35 = *(v26 + 160);
        v34 = *(v26 + 176);
        v36 = *(v26 + 144);
        v79 = *(v26 + 192);
        v77 = v35;
        v78 = v34;
        v76 = v36;
        v66 = v69;
        v63 = v79;
        v64 = *(&v34 + 1);
        v65 = *(&v36 + 1);
        v61 = v35;
        v62 = v34;
        v59 = BYTE8(v35);
        v60 = *(&v75 + 1);
        v56 = v36;
        v57 = *&v74[40];
        v58 = v75;
        v55 = *&v74[24];
        v52 = *&v74[8];
        v53 = v33;
        v49 = v72;
        v50 = v73;
        v51 = *(&v70 + 1);
        v54 = v70;
        v48 = v71;
        v27 = BYTE8(v71);

        sub_22EE0C808(&v69, v68);
      }

      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v69) = v27;
      v68[0] = v56;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 200 * v15;
      *v17 = v66;
      *(v17 + 16) = v54;
      *(v17 + 24) = v51;
      *(v17 + 32) = v48;
      *(v17 + 40) = v27;
      *(v17 + 48) = v49;
      *(v17 + 64) = v50;
      *(v17 + 80) = v53;
      *(v17 + 104) = v55;
      *(v17 + 88) = v52;
      *(v17 + 120) = v57;
      *(v17 + 128) = v58;
      *(v17 + 136) = v60;
      *(v17 + 144) = v56;
      *(v17 + 152) = v65;
      *(v17 + 160) = v61;
      *(v17 + 168) = v59;
      *(v17 + 176) = v62;
      *(v17 + 184) = v64;
      *(v17 + 192) = v63;
      ++*(v7 + 16);
      v5 = v46;
      v12 = v67;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22EE052A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95650, &unk_22EE43B80);
  v34 = v4;
  result = sub_22EE3C9C4();
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

      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
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

void sub_22EE05548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956E8, &qword_22EE435D8);
  v2 = *v0;
  v3 = sub_22EE3C9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_22EE056C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95648, &qword_22EE43588);
  v2 = *v0;
  v3 = sub_22EE3C9B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_22EE0C808(&v43, v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 200;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v46 = *(v21 + 48);
      v47 = v24;
      v25 = *(v21 + 128);
      v27 = *(v21 + 80);
      v26 = *(v21 + 96);
      v50 = *(v21 + 112);
      v51 = v25;
      v48 = v27;
      v49 = v26;
      v29 = *(v21 + 160);
      v28 = *(v21 + 176);
      v30 = *(v21 + 144);
      v55 = *(v21 + 192);
      v53 = v29;
      v54 = v28;
      v52 = v30;
      v43 = *v21;
      v44 = v23;
      v45 = v22;
      v31 = (*(v4 + 48) + v17);
      *v31 = v20;
      v31[1] = v19;
      v32 = *(v4 + 56) + v16;
      *v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      *(v32 + 48) = v46;
      *(v32 + 64) = v35;
      *(v32 + 16) = v33;
      *(v32 + 32) = v34;
      v36 = v48;
      v37 = v49;
      v38 = v51;
      *(v32 + 112) = v50;
      *(v32 + 128) = v38;
      *(v32 + 80) = v36;
      *(v32 + 96) = v37;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      *(v32 + 192) = v55;
      *(v32 + 160) = v40;
      *(v32 + 176) = v41;
      *(v32 + 144) = v39;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_22EE058D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95650, &unk_22EE43B80);
  v2 = *v0;
  v3 = sub_22EE3C9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

char *sub_22EE05ADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95460, &qword_22EE41F28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE05BFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956E0, &qword_22EE435D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE05D08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95640, &qword_22EE43580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EE05E14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95660, &qword_22EE435A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[27 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 216 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95668, &qword_22EE435B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EE05F64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95630, &qword_22EE43570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95638, &qword_22EE43578);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE06098(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_22EE06194(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95618, &qword_22EE43550);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22EE06384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95610, &unk_22EE43540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 328);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[328 * v8])
    {
      memmove(v12, v13, 328 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EE064A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA956F0, &qword_22EE435E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22EE0651C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95610, &unk_22EE43540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x63E7063E7063E707) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 7) + (v7 >> 63));
  return result;
}

void (*sub_22EE065B4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_22EE06BDC(v7);
  v7[9] = sub_22EE066C0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22EE06660;
}

void sub_22EE06660(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_22EE066C0(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x5A0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[177] = v4;
  v10[176] = a3;
  v10[175] = a2;
  v12 = *v4;
  v13 = sub_22EDE1B04(a2, a3);
  *(v11 + 1432) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22EE056C0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22EE04E00(v18, a4 & 1);
    v13 = sub_22EDE1B04(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22EE3CBE4();
    __break(1u);
    return result;
  }

LABEL_11:
  v23 = v11 + 50;
  v11[178] = v13;
  if (v19)
  {
    v24 = v11 + 75;
    memmove(v24, (*(*v5 + 56) + 200 * v13), 0xC8uLL);
    nullsub_1();
    v25 = v24[11];
    *(v23 + 10) = v24[10];
    *(v23 + 11) = v25;
    v23[24] = *(v24 + 24);
    v26 = v24[7];
    *(v23 + 6) = v24[6];
    *(v23 + 7) = v26;
    v27 = v24[9];
    *(v23 + 8) = v24[8];
    *(v23 + 9) = v27;
    v28 = v24[3];
    *(v23 + 2) = v24[2];
    *(v23 + 3) = v28;
    v29 = v24[5];
    *(v23 + 4) = v24[4];
    *(v23 + 5) = v29;
    v30 = v24[1];
    *v23 = *v24;
    *(v23 + 1) = v30;
  }

  else
  {
    sub_22EE0F5D8((v11 + 50));
  }

  return sub_22EE06874;
}

void sub_22EE06874(void *a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 600);
  v5 = *(v3 + 34);
  v7 = *(v3 + 35);
  v6 = *(v3 + 36);
  *(v3 + 60) = v7;
  *(v3 + 61) = v6;
  v8 = *(v3 + 30);
  v10 = *(v3 + 31);
  v9 = *(v3 + 32);
  *(v3 + 56) = v10;
  *(v3 + 57) = v9;
  v11 = *(v3 + 32);
  v13 = *(v3 + 33);
  v12 = *(v3 + 34);
  *(v3 + 58) = v13;
  *(v3 + 59) = v12;
  v14 = *(v3 + 26);
  v16 = *(v3 + 27);
  v15 = *(v3 + 28);
  *(v3 + 52) = v16;
  *(v3 + 53) = v15;
  v17 = *(v3 + 28);
  v19 = *(v3 + 29);
  v18 = *(v3 + 30);
  *(v3 + 54) = v19;
  *(v3 + 55) = v18;
  v20 = *(v3 + 26);
  v21 = *(v3 + 25);
  *(v3 + 50) = v21;
  *(v3 + 51) = v20;
  v22 = *(v3 + 36);
  v4[10] = v7;
  v4[11] = v22;
  v4[6] = v10;
  v4[7] = v11;
  v4[8] = v13;
  v4[9] = v5;
  v4[2] = v16;
  v4[3] = v17;
  v4[4] = v19;
  v4[5] = v8;
  v23 = v3 + 800;
  *(v3 + 124) = *(v3 + 74);
  *(v3 + 99) = *(v3 + 74);
  *v4 = v21;
  v4[1] = v14;
  v24 = sub_22EE0C894(v4);
  if ((a2 & 1) == 0)
  {
    if (v24 != 1)
    {
      v30 = *(v3 + 178);
      v31 = *(v3 + 177);
      if (v3[1432])
      {
        v27 = (*(*v31 + 56) + 200 * v30);
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_6:
    if (v3[1432])
    {
      v28 = *(v3 + 178);
      v29 = **(v3 + 177);
      sub_22EDE37CC(*(v29 + 48) + 16 * v28);
      sub_22EE06C10(v28, v29);
    }

    goto LABEL_16;
  }

  if (v24 == 1)
  {
    goto LABEL_6;
  }

  v25 = *(v3 + 178);
  v26 = *(v3 + 177);
  if ((v3[1432] & 1) == 0)
  {
    v32 = *(v3 + 176);
    v33 = *(v3 + 175);
    v34 = *v26;
    v35 = *(v3 + 61);
    *(v3 + 10) = *(v3 + 60);
    *(v3 + 11) = v35;
    *(v3 + 24) = *(v3 + 124);
    v36 = *(v3 + 57);
    *(v3 + 6) = *(v3 + 56);
    *(v3 + 7) = v36;
    v37 = *(v3 + 59);
    *(v3 + 8) = *(v3 + 58);
    *(v3 + 9) = v37;
    v38 = *(v3 + 53);
    *(v3 + 2) = *(v3 + 52);
    *(v3 + 3) = v38;
    v39 = *(v3 + 55);
    *(v3 + 4) = *(v3 + 54);
    *(v3 + 5) = v39;
    v40 = *(v3 + 51);
    *v3 = *v23;
    *(v3 + 1) = v40;
    v34[(v25 >> 6) + 8] |= 1 << v25;
    v41 = (v34[6] + 16 * v25);
    *v41 = v33;
    v41[1] = v32;
    v31 = 200;
    v42 = v34[7] + 200 * v25;
    *v42 = *v3;
    v43 = *(v3 + 1);
    v44 = *(v3 + 2);
    v45 = *(v3 + 4);
    *(v42 + 48) = *(v3 + 3);
    *(v42 + 64) = v45;
    *(v42 + 16) = v43;
    *(v42 + 32) = v44;
    v46 = *(v3 + 5);
    v47 = *(v3 + 6);
    v48 = *(v3 + 8);
    *(v42 + 112) = *(v3 + 7);
    *(v42 + 128) = v48;
    *(v42 + 80) = v46;
    *(v42 + 96) = v47;
    v49 = *(v3 + 9);
    v50 = *(v3 + 10);
    v51 = *(v3 + 11);
    v30 = *(v3 + 24);
    *(v42 + 192) = v30;
    *(v42 + 160) = v50;
    *(v42 + 176) = v51;
    *(v42 + 144) = v49;
    v52 = v34[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (!v53)
    {
LABEL_15:
      v34[2] = v54;

      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v55 = *(v3 + 176);
    v56 = *(v3 + 175);
    v34 = *v31;
    v57 = *(v3 + 61);
    *(v3 + 360) = *(v3 + 60);
    *(v3 + 376) = v57;
    *(v3 + 49) = *(v3 + 124);
    v58 = *(v3 + 57);
    *(v3 + 296) = *(v3 + 56);
    *(v3 + 312) = v58;
    v59 = *(v3 + 59);
    *(v3 + 328) = *(v3 + 58);
    *(v3 + 344) = v59;
    v60 = *(v3 + 53);
    *(v3 + 232) = *(v3 + 52);
    *(v3 + 248) = v60;
    v61 = *(v3 + 55);
    *(v3 + 264) = *(v3 + 54);
    *(v3 + 280) = v61;
    v62 = *(v3 + 51);
    *(v3 + 200) = *v23;
    *(v3 + 216) = v62;
    v34[(v30 >> 6) + 8] |= 1 << v30;
    v63 = (v34[6] + 16 * v30);
    *v63 = v56;
    v63[1] = v55;
    v64 = v34[7] + 200 * v30;
    *v64 = *(v3 + 200);
    v65 = *(v3 + 216);
    v66 = *(v3 + 232);
    v67 = *(v3 + 264);
    *(v64 + 48) = *(v3 + 248);
    *(v64 + 64) = v67;
    *(v64 + 16) = v65;
    *(v64 + 32) = v66;
    v68 = *(v3 + 280);
    v69 = *(v3 + 296);
    v70 = *(v3 + 328);
    *(v64 + 112) = *(v3 + 312);
    *(v64 + 128) = v70;
    *(v64 + 80) = v68;
    *(v64 + 96) = v69;
    v71 = *(v3 + 344);
    v72 = *(v3 + 360);
    v73 = *(v3 + 376);
    *(v64 + 192) = *(v3 + 49);
    *(v64 + 160) = v72;
    *(v64 + 176) = v73;
    *(v64 + 144) = v71;
    v74 = v34[2];
    v53 = __OFADD__(v74, 1);
    v54 = v74 + 1;
    if (v53)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v27 = (*(*v26 + 56) + 200 * v25);
LABEL_10:
  memmove(v27, v3 + 800, 0xC8uLL);
LABEL_16:
  v75 = *(v3 + 36);
  *(v3 + 1160) = *(v3 + 35);
  *(v3 + 1176) = v75;
  *(v3 + 149) = *(v3 + 74);
  v76 = *(v3 + 32);
  *(v3 + 1096) = *(v3 + 31);
  *(v3 + 1112) = v76;
  v77 = *(v3 + 34);
  *(v3 + 1128) = *(v3 + 33);
  *(v3 + 1144) = v77;
  v78 = *(v3 + 28);
  *(v3 + 1032) = *(v3 + 27);
  *(v3 + 1048) = v78;
  v79 = *(v3 + 30);
  *(v3 + 1064) = *(v3 + 29);
  *(v3 + 1080) = v79;
  v80 = *(v3 + 26);
  *(v3 + 1000) = *(v3 + 25);
  *(v3 + 1016) = v80;
  sub_22EDDB6E8((v3 + 800), (v3 + 1200), &qword_27DA95658, &qword_22EE435A0);
  sub_22EDDBA48((v3 + 1000), &qword_27DA95658, &qword_22EE435A0);

  free(v3);
}

uint64_t (*sub_22EE06BDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22EE06C04;
}

char *sub_22EE06C10(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22EE3C7D4() + 1) & ~v5;
    do
    {
      sub_22EE3CC74();

      sub_22EE3C1C4();
      v9 = sub_22EE3CCC4();

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
        result = (v14 + 200 * v3);
        v15 = (v14 + 200 * v6);
        if (v3 != v6 || result >= v15 + 200)
        {
          result = memmove(result, v15, 0xC8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22EE06DC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22EE3C7D4() + 1) & ~v5;
    do
    {
      sub_22EE3CC74();

      sub_22EE3C1C4();
      v9 = sub_22EE3CCC4();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

void sub_22EE06F74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22EDE1B04(a2, a3);
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
      sub_22EE052A0(v16, a4 & 1);
      v11 = sub_22EDE1B04(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22EE3CBE4();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22EE058D0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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

void sub_22EE070F0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22EE07C38(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_22EE0721C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22EE3CC74();

    sub_22EE3C1C4();
    v23 = sub_22EE3CCC4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22EE3CBA4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22EE08190(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22EE3CC74();

            sub_22EE3C1C4();
            v41 = sub_22EE3CCC4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22EE3CBA4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_22EE07D74(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x2318F8320](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22ED97F20(v13);
    return v5;
  }

  result = MEMORY[0x2318F8320](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_22EE0778C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_22EE3CC74();

    sub_22EE3C1C4();
    v11 = sub_22EE3CCC4();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_22EE3CBA4() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_22EE08190(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_22EE3CC74();

        sub_22EE3C1C4();
        v33 = sub_22EE3CCC4();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_22EE3CBA4() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_22EE07FAC(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x2318F8320](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x2318F8320](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22EE07C38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v6 = sub_22EE3CCC4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22EE3CBA4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22EE03E98();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22EE083B4(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_22EE07D74(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_22EE08190(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22EE3CC74();

        sub_22EE3C1C4();
        v19 = sub_22EE3CCC4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22EE3CBA4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_22EE07FAC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_22EE08190(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_22EE3CC74();

        sub_22EE3C1C4();
        v16 = sub_22EE3CCC4();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_22EE3CBA4() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22EE08190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95628, &unk_22EE43560);
  result = sub_22EE3C834();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22EE3CC74();

    sub_22EE3C1C4();
    result = sub_22EE3CCC4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22EE083B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22EE3C7D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22EE3CC74();

        sub_22EE3C1C4();
        v10 = sub_22EE3CCC4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_22EE08578(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22EE0CF1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22EE08630(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95648, &qword_22EE43588);
  result = sub_22EE3C9D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v51 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 200 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    v56 = v21[3];
    v57 = v24;
    v55 = v23;
    v25 = v21[8];
    v27 = v21[5];
    v26 = v21[6];
    v60 = v21[7];
    v61 = v25;
    v58 = v27;
    v59 = v26;
    v29 = v21[10];
    v28 = v21[11];
    v30 = v21[9];
    v65 = *(v21 + 24);
    v63 = v29;
    v64 = v28;
    v62 = v30;
    v53 = *v21;
    v54 = v22;
    sub_22EE3CC74();

    sub_22EE0C808(&v53, v52);
    sub_22EE3C1C4();
    result = sub_22EE3CCC4();
    v31 = -1 << *(v9 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v12 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v9 + 48) + 16 * v34);
    *v39 = v19;
    v39[1] = v20;
    v40 = *(v9 + 56) + 200 * v34;
    *v40 = v53;
    v41 = v54;
    v42 = v55;
    v43 = v57;
    *(v40 + 48) = v56;
    *(v40 + 64) = v43;
    *(v40 + 16) = v41;
    *(v40 + 32) = v42;
    v44 = v58;
    v45 = v59;
    v46 = v61;
    *(v40 + 112) = v60;
    *(v40 + 128) = v46;
    *(v40 + 80) = v44;
    *(v40 + 96) = v45;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    *(v40 + 192) = v65;
    *(v40 + 160) = v48;
    *(v40 + 176) = v49;
    *(v40 + 144) = v47;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v51;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_22EE088F8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_22EE08994(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_22EE08994(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_22EE3CB64();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_22EE3C404();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_22EE08AA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 328 * a3 - 328;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = v10[41];
      v11 = result == *v10 && v10[42] == v10[1];
      if (v11 || (result = sub_22EE3CBA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 328;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      memcpy(__dst, v10 + 41, sizeof(__dst));
      memcpy(v10 + 41, v10, 0x148uLL);
      result = memcpy(v10, __dst, 0x141uLL);
      v10 -= 41;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22EE08B9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22EDF39AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EE06098(0, *(v8 + 2) + 1, 1, v8, &qword_27DA95008, &unk_22EE41EC0);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22EE06098((v39 > 1), v40 + 1, 1, v8, &qword_27DA95008, &unk_22EE41EC0);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22EDF39AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22EDE2708(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_22EE09198(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v91 = *v91;
    if (!v91)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v92 = v5;
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v81 = v8 + 16;
    v82 = *(v8 + 2);
    if (v82 >= 2)
    {
      while (*v92)
      {
        v83 = &v8[16 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_22EE097DC((*v92 + 328 * *v83), (*v92 + 328 * *v85), (*v92 + 328 * v86), v91);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_130;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_131;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_132;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 328 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 328 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 328 * v9);
        do
        {
          result = v16[82];
          if (result == v16[41] && v16[83] == v16[42])
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 += 41;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = v5;
          v19 = 328 * v7 - 328;
          v20 = v9;
          v21 = 328 * v9;
          v22 = v7;
          v88 = v20;
          do
          {
            if (v20 != --v22)
            {
              v23 = *v18;
              if (!*v18)
              {
                goto LABEL_141;
              }

              memcpy(__dst, (v23 + v21), sizeof(__dst));
              memmove((v23 + v21), (v23 + v19), 0x148uLL);
              result = memcpy((v23 + v19), __dst, 0x141uLL);
            }

            ++v20;
            v19 -= 328;
            v21 += 328;
          }

          while (v20 < v22);
          v5 = v18;
          v9 = v88;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EE06098(0, *(v8 + 2) + 1, 1, v8, &qword_27DA95008, &unk_22EE41EC0);
      v8 = result;
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_22EE06098((v34 > 1), v35 + 1, 1, v8, &qword_27DA95008, &unk_22EE41EC0);
      v8 = result;
    }

    *(v8 + 2) = v36;
    v37 = &v8[16 * v35];
    *(v37 + 4) = v9;
    *(v37 + 5) = v7;
    v38 = *v91;
    if (!*v91)
    {
      goto LABEL_143;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_75:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v8[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v8[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v66 = &v8[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_89:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v8[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_96:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v78 = *&v8[16 * v77 + 32];
        v79 = *&v8[16 * v39 + 40];
        sub_22EE097DC((*v5 + 328 * v78), (*v5 + 328 * *&v8[16 * v39 + 32]), (*v5 + 328 * v79), v38);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v77 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v80 = &v8[16 * v77];
        *(v80 + 4) = v78;
        *(v80 + 5) = v79;
        v94 = v8;
        result = sub_22EDE2708(v39);
        v8 = v94;
        v36 = *(v94 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v8[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v8[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v8[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v92 = v5;
  v26 = v9;
  v27 = *v5;
  v28 = *v5 + 328 * v7 - 328;
  v89 = v26;
  v29 = v26 - v7;
LABEL_44:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = v31[41] == *v31 && v31[42] == v31[1];
    if (v32 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v28 += 328;
      --v29;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = v92;
      v9 = v89;
      goto LABEL_55;
    }

    if (!v27)
    {
      break;
    }

    memcpy(__dst, v31 + 41, sizeof(__dst));
    memcpy(v31 + 41, v31, 0x148uLL);
    memcpy(v31, __dst, 0x141uLL);
    v31 -= 41;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_22EE097DC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 328;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 328;
  if (v9 >= v11)
  {
    v17 = 328 * v11;
    if (__dst != a2 || &a2[v17] <= __dst)
    {
      memmove(__dst, a2, 328 * v11);
    }

    v13 = &v4[v17];
    if (v10 < 328 || v6 <= v7)
    {
      v16 = v6;
      goto LABEL_42;
    }

    while (1)
    {
      v16 = v6 - 328;
      v18 = v13 - 328;
      v5 -= 328;
      while (1)
      {
        v21 = *v18 == *v16 && *(v18 + 1) == *(v6 - 40);
        if (!v21 && (sub_22EE3CBA4() & 1) != 0)
        {
          break;
        }

        if (v5 + 328 != v18 + 328)
        {
          memmove(v5, v18, 0x148uLL);
        }

        v19 = v18 - 328;
        v5 -= 328;
        v20 = v18 > v4;
        v18 -= 328;
        if (!v20)
        {
          v13 = v19 + 328;
          v16 = v6;
          goto LABEL_42;
        }
      }

      if (v5 + 328 != v6)
      {
        memmove(v5, v6 - 328, 0x148uLL);
      }

      v13 = v18 + 328;
      if (v18 + 328 > v4)
      {
        v6 -= 328;
        if (v16 > v7)
        {
          continue;
        }
      }

      v13 = v18 + 328;
      goto LABEL_42;
    }
  }

  v12 = 328 * v9;
  if (__dst != __src || &__src[v12] <= __dst)
  {
    memmove(__dst, __src, v12);
  }

  v13 = &v4[v12];
  if (v8 < 328 || v6 >= v5)
  {
    v16 = v7;
    goto LABEL_42;
  }

  do
  {
    v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
    if (!v14 && (sub_22EE3CBA4() & 1) != 0)
    {
      v15 = v6;
      v14 = v7 == v6;
      v6 += 328;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_16:
      memmove(v7, v15, 0x148uLL);
      goto LABEL_17;
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 328;
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_17:
    v7 += 328;
  }

  while (v4 < v13 && v6 < v5);
  v16 = v7;
LABEL_42:
  v22 = 328 * ((v13 - v4) / 328);
  if (v16 != v4 || v16 >= &v4[v22])
  {
    memmove(v16, v4, v22);
  }

  return 1;
}

void sub_22EE09A88(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *v3;
  sub_22EE3CC74();
  v7 = *a1;
  v8 = a1[1];
  sub_22EE3C1C4();
  v9 = sub_22EE3CCC4();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v6 + 48) + 328 * v11);
      v14 = *v13 == v7 && v13[1] == v8;
      if (v14 || (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v15 = 1;
        v16 = 1;
        goto LABEL_12;
      }
    }

    v16 = 0;
    v15 = 0;
  }

  else
  {
    v16 = 1;
    v15 = 1;
  }

LABEL_12:
  v17 = *(v6 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = *(v6 + 24);
  if (v19 < v18 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_22EE03464(v18);
    }

    else
    {
      if (v19 >= v18)
      {
        sub_22EE04134();
        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

      sub_22EE048E8(v18);
    }

    v32 = v16;
    v21 = *v3;
    sub_22EE3CC74();
    sub_22EE3C1C4();
    v22 = sub_22EE3CCC4();
    v23 = -1 << *(v21 + 32);
    v11 = v22 & ~v23;
    if ((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v24 = ~v23;
      while (1)
      {
        v20 = 328 * v11;
        v25 = (*(v21 + 48) + 328 * v11);
        v26 = *v25 == v7 && v25[1] == v8;
        if (v26 || (sub_22EE3CBA4() & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & v24;
        if (((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_31:
      if (v32)
      {
LABEL_32:
        v27 = *v3;
        *(*v3 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        memcpy((*(v27 + 48) + 328 * v11), a1, 0x141uLL);
        v28 = *(v27 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          *(v27 + 16) = v30;
          sub_22EE0F5A4(__src);
          memcpy(a3, __src, 0x141uLL);
          return;
        }

        goto LABEL_39;
      }
    }

LABEL_40:
    sub_22EE3CBD4();
    __break(1u);
    return;
  }

  if (v16)
  {
    goto LABEL_32;
  }

LABEL_16:
  v20 = 328 * v11;
LABEL_35:
  v31 = *(*v3 + 48);
  memmove(a3, (v31 + v20), 0x141uLL);
  memcpy((v31 + v20), a1, 0x141uLL);

  nullsub_1();
}

void *sub_22EE09D84(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_22EE09E18(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
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
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22EE09F14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22EE0A06C(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 328 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x141uLL);
      memmove(v11, v18, 0x141uLL);
      if (v14 == v10)
      {
        sub_22ED80E90(__dst, v22);
        goto LABEL_23;
      }

      v11 += 328;
      sub_22ED80E90(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22EE0A210(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95760, &qword_22EE43628);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF61C4();
  sub_22EE3CCD4();
  v10 = 0;
  sub_22EE3CA64();
  v9 = 1;
  v6 = sub_22EE3CA74();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_22EE0A3BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22EE3CA04();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22EE0A408()
{
  result = qword_27DA983F8;
  if (!qword_27DA983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA983F8);
  }

  return result;
}

unint64_t sub_22EE0A45C()
{
  result = qword_27DA95418;
  if (!qword_27DA95418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95410, &qword_22EE41EF0);
    sub_22EE0A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95418);
  }

  return result;
}

unint64_t sub_22EE0A4E0()
{
  result = qword_27DA95420;
  if (!qword_27DA95420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95420);
  }

  return result;
}

void *sub_22EE0A534(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95740, &qword_22EE43618);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A408();
  sub_22EE3CCD4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95410, &qword_22EE41EF0);
    sub_22EE0FB6C();
    sub_22EE3CA84();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_22EE0A6B8()
{
  result = qword_27DA98400;
  if (!qword_27DA98400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98400);
  }

  return result;
}

unint64_t sub_22EE0A70C()
{
  result = qword_27DA98408;
  if (!qword_27DA98408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98408);
  }

  return result;
}

uint64_t sub_22EE0A760(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95730, &qword_22EE43608);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_22EE0A70C();
  sub_22EE3CCD4();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_22EE3CA74();
    v9[14] = 1;
    sub_22EE3CA44();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_22EE0A90C()
{
  result = qword_27DA98410;
  if (!qword_27DA98410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98410);
  }

  return result;
}

unint64_t sub_22EE0A960()
{
  result = qword_27DA95440;
  if (!qword_27DA95440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95440);
  }

  return result;
}

uint64_t sub_22EE0A9B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95720, &qword_22EE43600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A90C();
  sub_22EE3CCD4();
  v8[14] = 0;
  sub_22EE0FB18();
  sub_22EE3CA84();
  v6 = v8[15];
  v8[13] = 1;
  sub_22EE3CA74();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_22EE0AB74()
{
  result = qword_27DA98418;
  if (!qword_27DA98418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98418);
  }

  return result;
}

uint64_t sub_22EE0ABC8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22EE3CCD4();
  v10 = v14;
  v16 = 0;
  v11 = sub_22EE3CA74();
  v15 = 1;
  sub_22EE3CA74();
  (*(v10 + 8))(v9, v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_22EE0AD80()
{
  result = qword_27DA98420;
  if (!qword_27DA98420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98420);
  }

  return result;
}

uint64_t sub_22EE0ADD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22EE0AEEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95708, &qword_22EE435F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0AD80();
  sub_22EE3CCD4();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_22EE3CA44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FD8, qword_22EE400D0);
    v11 = 1;
    sub_22EE0FAAC(&qword_27DA95710, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_22EE3CA84();
    v10 = 2;
    v9 = 0;
    sub_22EE3CA54();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_22EE0B17C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22EE3CA04();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22EE0B1C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318F5B30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22EE026C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22EE0B260(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22EE0B2B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22EE0FA58();
  result = MEMORY[0x2318F5B30](v2, &type metadata for PlanSettings.KPerfSampler, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_22EE02814(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_22EE0B328()
{
  result = qword_27DA95470;
  if (!qword_27DA95470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95470);
  }

  return result;
}

unint64_t sub_22EE0B37C()
{
  result = qword_27DA95478;
  if (!qword_27DA95478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95478);
  }

  return result;
}

unint64_t sub_22EE0B3D0()
{
  result = qword_27DA95488;
  if (!qword_27DA95488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95480, &qword_22EE41F38);
    sub_22EE0B454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95488);
  }

  return result;
}

unint64_t sub_22EE0B454()
{
  result = qword_27DA95490;
  if (!qword_27DA95490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95490);
  }

  return result;
}

unint64_t sub_22EE0B4A8()
{
  result = qword_27DA954A0;
  if (!qword_27DA954A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95498, &qword_22EE41F40);
    sub_22EE0B52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954A0);
  }

  return result;
}

unint64_t sub_22EE0B52C()
{
  result = qword_27DA954A8;
  if (!qword_27DA954A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954A8);
  }

  return result;
}

unint64_t sub_22EE0B580()
{
  result = qword_27DA954B0;
  if (!qword_27DA954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954B0);
  }

  return result;
}

unint64_t sub_22EE0B5D4()
{
  result = qword_27DA954C0;
  if (!qword_27DA954C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA954B8, &qword_22EE41F48);
    sub_22EE0B658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954C0);
  }

  return result;
}

unint64_t sub_22EE0B658()
{
  result = qword_27DA954C8;
  if (!qword_27DA954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954C8);
  }

  return result;
}

unint64_t sub_22EE0B6AC()
{
  result = qword_27DA954D0;
  if (!qword_27DA954D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954D0);
  }

  return result;
}

unint64_t sub_22EE0B700()
{
  result = qword_27DA954E0;
  if (!qword_27DA954E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA954D8, &qword_22EE41F50);
    sub_22EE0B784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954E0);
  }

  return result;
}

unint64_t sub_22EE0B784()
{
  result = qword_27DA954E8;
  if (!qword_27DA954E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA954E8);
  }

  return result;
}

uint64_t sub_22EE0B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_22EE3CBA4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_22EE0B878@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95678, &qword_22EE435C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v98 = 1;
  v95 = 1;
  v93 = 1;
  *&v56 = sub_22EDD1210();
  *(&v56 + 1) = v9;
  v10 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_22EE0B328();
  sub_22EE3CCD4();
  if (v2)
  {
    v99 = v2;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v55 = 2uLL;
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v18 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v48);
    *&v70 = v14;
    *(&v70 + 1) = v13;
    v71 = v98;
    *v72 = *v97;
    *&v72[3] = *&v97[3];
    v73 = v12;
    v74 = v11;
    v75 = v49;
    v76 = v50;
    v77 = v18;
    *v78 = *v96;
    *&v78[3] = *&v96[3];
    *&v79 = v17;
    *(&v79 + 1) = v16;
    v80 = v55;
    v81 = v15;
    v82 = v52;
    v83 = v54;
    v84 = v95;
    *v85 = *v94;
    *&v85[3] = *&v94[3];
    v86 = v51;
    v87 = v53;
    v88 = v93;
    *v89 = *v92;
    *&v89[3] = *&v92[3];
    v90 = 0;
    v91 = v56;
    return sub_22EE0C29C(&v70);
  }

  LOBYTE(v57) = 0;
  sub_22EE0F5FC();
  sub_22EE3CA34();
  v47 = v70;
  v98 = v71;
  LOBYTE(v70) = 1;
  v45 = sub_22EE3CA14();
  v46 = v20;
  LOBYTE(v70) = 2;
  v49 = sub_22EE3CA14();
  v50 = v21;
  LOBYTE(v70) = 3;
  v44 = sub_22EE3CA24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95480, &qword_22EE41F38);
  LOBYTE(v57) = 4;
  sub_22EE0F650();
  sub_22EE3CA34();
  v22 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95498, &qword_22EE41F40);
  LOBYTE(v57) = 5;
  sub_22EE0F728();
  sub_22EE3CA34();
  *(&v43 + 1) = v70;
  LOBYTE(v57) = 6;
  sub_22EE0F800();
  sub_22EE3CA34();
  *&v43 = v22;
  v23 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954B8, &qword_22EE41F48);
  LOBYTE(v57) = 7;
  sub_22EE0F854();
  sub_22EE3CA34();
  v55 = v23;
  v42 = v70;
  LOBYTE(v57) = 8;
  sub_22EE0F92C();
  sub_22EE3CA34();
  v99 = 0;
  v41 = a2;
  v54 = *(&v70 + 1);
  v52 = v70;
  v95 = v71;
  LOBYTE(v57) = 9;
  sub_22EE3CA34();
  v99 = 0;
  v53 = *(&v70 + 1);
  v51 = v70;
  v93 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954D8, &qword_22EE41F50);
  v68 = 10;
  sub_22EE0F980();
  v24 = v99;
  sub_22EE3CA34();
  v99 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    v13 = *(&v47 + 1);
    v14 = v47;
    v12 = v45;
    v11 = v46;
    v18 = v44;
    v16 = *(&v43 + 1);
    v17 = v43;
    v15 = v42;
    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  v40 = v69;
  v25 = v47;
  v57 = v47;
  v26 = v98;
  LOBYTE(v58) = v98;
  v27 = v45;
  *(&v58 + 1) = v45;
  *&v59 = v46;
  v29 = v49;
  v28 = v50;
  *(&v59 + 1) = v49;
  *&v60 = v50;
  v30 = v44;
  BYTE8(v60) = v44;
  v61 = v43;
  v62 = v55;
  v31 = v42;
  *&v63 = v42;
  *(&v63 + 1) = v52;
  *&v64 = v54;
  v38 = v95;
  BYTE8(v64) = v95;
  *&v65 = v51;
  *(&v65 + 1) = v53;
  v39 = v93;
  LOBYTE(v66) = v93;
  *(&v66 + 1) = v69;
  v67 = v56;
  sub_22EE0C1BC(&v57, &v70);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v70 = v25;
  v71 = v26;
  *v72 = *v97;
  *&v72[3] = *&v97[3];
  v73 = v27;
  v74 = v46;
  v75 = v29;
  v76 = v28;
  v77 = v30;
  *v78 = *v96;
  *&v78[3] = *&v96[3];
  v79 = v43;
  v80 = v55;
  v81 = v31;
  v82 = v52;
  v83 = v54;
  v84 = v38;
  *v85 = *v94;
  *&v85[3] = *&v94[3];
  v86 = v51;
  v87 = v53;
  v88 = v39;
  *v89 = *v92;
  *&v89[3] = *&v92[3];
  v90 = v40;
  v91 = v56;
  result = sub_22EE0C29C(&v70);
  v32 = v66;
  v33 = v41;
  v41[8] = v65;
  v33[9] = v32;
  v33[10] = v67;
  v34 = v62;
  v33[4] = v61;
  v33[5] = v34;
  v35 = v64;
  v33[6] = v63;
  v33[7] = v35;
  v36 = v58;
  *v33 = v57;
  v33[1] = v36;
  v37 = v60;
  v33[2] = v59;
  v33[3] = v37;
  return result;
}

unint64_t sub_22EE0C1F4()
{
  result = qword_27DA98428[0];
  if (!qword_27DA98428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98428);
  }

  return result;
}

unint64_t sub_22EE0C248()
{
  result = qword_27DA95500;
  if (!qword_27DA95500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95500);
  }

  return result;
}

uint64_t sub_22EE0C2CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73657361696C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22EE0C3E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95670, &qword_22EE435B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_22EE0C1F4();
  sub_22EE3CCD4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    LOBYTE(v26) = 0;
    sub_22EE0DA88(&qword_27DA95560, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22EE3CA34();
    v10 = v28[0];
    LOBYTE(v28[0]) = 1;
    v11 = sub_22EE3CA44();
    v13 = v12;
    v24 = v11;
    v40 = 2;
    sub_22EE0DAF4();
    sub_22EE3CA84();
    (*(v6 + 8))(v8, v5);
    v60 = v49;
    v61 = v50;
    v62 = v51;
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v55 = v44;
    *&v27[120] = v48;
    *&v27[136] = v49;
    *&v27[152] = v50;
    *&v27[168] = v51;
    *&v27[56] = v44;
    *&v27[72] = v45;
    *&v27[88] = v46;
    *&v27[104] = v47;
    *&v27[8] = v41;
    *&v27[24] = v42;
    v14 = v24;
    *&v26 = v10;
    *(&v26 + 1) = v24;
    *v27 = v13;
    *&v27[40] = v43;
    sub_22EE0C808(&v26, v28);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v39 = v62;
    v32 = v55;
    v33 = v56;
    v34 = v57;
    v35 = v58;
    v29 = v52;
    v30 = v53;
    v28[0] = v10;
    v28[1] = v14;
    v28[2] = v13;
    v31 = v54;
    result = sub_22EE0D460(v28);
    v16 = *&v27[160];
    v17 = v25;
    *(v25 + 160) = *&v27[144];
    *(v17 + 176) = v16;
    *(v17 + 192) = *&v27[176];
    v18 = *&v27[96];
    *(v17 + 96) = *&v27[80];
    *(v17 + 112) = v18;
    v19 = *&v27[128];
    *(v17 + 128) = *&v27[112];
    *(v17 + 144) = v19;
    v20 = *&v27[32];
    *(v17 + 32) = *&v27[16];
    *(v17 + 48) = v20;
    v21 = *&v27[64];
    *(v17 + 64) = *&v27[48];
    *(v17 + 80) = v21;
    v22 = *v27;
    *v17 = v26;
    *(v17 + 16) = v22;
  }

  return result;
}

unint64_t sub_22EE0C7BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22EE3CA04();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22EE0C840()
{
  result = qword_27DA95508;
  if (!qword_27DA95508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95508);
  }

  return result;
}

uint64_t sub_22EE0C894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22EE0C8AC(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v81 - v11);
  v97 = a1;
  sub_22EDDD3B0(a1, a2, a3, (&v81 - v11));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22EDDBA48(v12, &qword_27DA94F50, &qword_22EE400B0);
    return 0;
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
    v16 = *a4;
    if (*(*a4 + 16) && (v17 = sub_22EDE1B04(v14, v15), (v18 & 1) != 0))
    {
      v83 = v12;
      v19 = v14;
      v20 = *(*(v16 + 56) + 8 * v17);

      v81 = v19;
      v82 = v15;
      v21 = sub_22EDFCB68(0, v19, v15);
      v22 = 0;
      v24 = v20 + 56;
      v23 = *(v20 + 56);
      v88 = v20;
      v25 = 1 << *(v20 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v23;
      v28 = (v25 + 63) >> 6;
      v29 = MEMORY[0x277D84F98];
      v86 = v20 + 56;
      v87 = a2;
      v85 = v28;
      if (v27)
      {
        while (1)
        {
          v30 = v22;
LABEL_12:
          v31 = (*(v88 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v27)))));
          v33 = *v31;
          v32 = v31[1];
          v95 = 61;
          v96 = 0xE100000000000000;
          MEMORY[0x28223BE20](v21);
          *(&v81 - 2) = &v95;
          swift_bridgeObjectRetain_n();
          v35 = sub_22EDD1FA0(1, 1, sub_22EDD4544, (&v81 - 4), v33, v32, v34);
          if (!v35[2])
          {
            break;
          }

          v36 = v35[2];
          if (!v36)
          {
            goto LABEL_35;
          }

          v38 = v35[4];
          v37 = v35[5];
          v39 = v35[7];
          v93 = v35[6];
          v94 = v37;
          v89 = v5;
          if (v36 == 1)
          {

            v40 = sub_22EE3C644();
            v44 = v43;
          }

          else
          {
            v92 = v35[8];
            v45 = v38;
            v46 = v35[9];
            v47 = v35[10];
            v44 = v35[11];

            v42 = v47;
            v41 = v46;
            v38 = v45;
            v40 = v92;
          }

          v48 = MEMORY[0x2318F5880](v40, v41, v42, v44);
          v92 = v49;

          v84 = v38;
          v91 = v39;
          v50 = MEMORY[0x2318F5880](v38, v94, v93, v39);
          v52 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v29;
          v55 = sub_22EDE1B04(v50, v52);
          v56 = v29[2];
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_36;
          }

          v59 = v54;
          if (v29[3] >= v58)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v29 = v95;
              if (v54)
              {
                goto LABEL_28;
              }
            }

            else
            {
              sub_22EE05548();
              v29 = v95;
              if (v59)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_22EE04B40(v58, isUniquelyReferenced_nonNull_native);
            v60 = sub_22EDE1B04(v50, v52);
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_38;
            }

            v55 = v60;
            v29 = v95;
            if (v59)
            {
LABEL_28:
              v68 = (v29[7] + 16 * v55);
              v69 = v92;
              *v68 = v48;
              v68[1] = v69;

              type metadata accessor for KTraceRecordError(0);
              sub_22EDD45F0();
              swift_allocError();
              v71 = v70;
              v72 = MEMORY[0x2318F5880](v84, v94, v93, v91);
              v74 = v73;

              *v71 = v72;
              v71[1] = v74;
              goto LABEL_33;
            }
          }

          v29[(v55 >> 6) + 8] |= 1 << v55;
          v62 = (v29[6] + 16 * v55);
          *v62 = v50;
          v62[1] = v52;
          v63 = (v29[7] + 16 * v55);
          v64 = v92;
          *v63 = v48;
          v63[1] = v64;
          v65 = v29[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_37;
          }

          v27 &= v27 - 1;
          v29[2] = v67;

          v22 = v30;
          v5 = v89;
          v24 = v86;
          v28 = v85;
          if (!v27)
          {
            goto LABEL_9;
          }
        }

        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        v78 = v77;
        v95 = v81;
        v96 = v82;
        MEMORY[0x2318F58F0](58, 0xE100000000000000);
        MEMORY[0x2318F58F0](v33, v32);

        v79 = v96;
        *v78 = v95;
        *(v78 + 8) = v79;
        *(v78 + 16) = 0;
LABEL_33:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v80 = sub_22EE3BCB4();
        return (*(*(v80 - 8) + 8))(v83 + v90, v80);
      }

      else
      {
LABEL_9:
        while (1)
        {
          v30 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v30 >= v28)
          {

            v12 = v83;
            goto LABEL_31;
          }

          v27 = *(v24 + 8 * v30);
          ++v22;
          if (v27)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_22EE3CBE4();
        __break(1u);
      }
    }

    else
    {
LABEL_31:

      v75 = sub_22EE3BCB4();
      v76 = *(*(v75 - 8) + 8);

      v76(v12 + v90, v75);
      return v97;
    }
  }

  return result;
}

unint64_t *sub_22EE0CF1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v43 = result;
  v44 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v52 = a4 + 56;
  v47 = a5 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_13:
    v16 = v13 | (v7 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 56) + 200 * v16;
    v50[0] = *v20;
    v21 = *(v20 + 64);
    v23 = *(v20 + 16);
    v22 = *(v20 + 32);
    v50[3] = *(v20 + 48);
    v50[4] = v21;
    v50[1] = v23;
    v50[2] = v22;
    v24 = *(v20 + 128);
    v26 = *(v20 + 80);
    v25 = *(v20 + 96);
    v50[7] = *(v20 + 112);
    v50[8] = v24;
    v50[5] = v26;
    v50[6] = v25;
    v28 = *(v20 + 160);
    v27 = *(v20 + 176);
    v29 = *(v20 + 144);
    v51 = *(v20 + 192);
    v50[10] = v28;
    v50[11] = v27;
    v50[9] = v29;
    if (*(a4 + 16))
    {
      v45 = v16;
      sub_22EE3CC74();

      sub_22EE0C808(v50, v49);
      sub_22EE3C1C4();
      v30 = sub_22EE3CCC4();
      v31 = -1 << *(a4 + 32);
      v32 = v30 & ~v31;
      if (((*(v52 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_5;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v18 && v34[1] == v19;
        if (v35 || (sub_22EE3CBA4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v52 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (*(a5 + 16) && (sub_22EE3CC74(), sub_22EE3C1C4(), v36 = sub_22EE3CCC4(), v37 = -1 << *(a5 + 32), v38 = v36 & ~v37, ((*(v47 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (1)
        {
          v40 = (*(a5 + 48) + 16 * v38);
          v41 = *v40 == v18 && v40[1] == v19;
          if (v41 || (sub_22EE3CBA4() & 1) != 0)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          if (((*(v47 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_5:
        sub_22EE0D460(v50);

        v6 = a3;
      }

      else
      {
LABEL_32:
        sub_22EE0D460(v50);

        *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_36;
        }

        ++v44;
        v6 = a3;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_22EE08630(v43, a2, v44, v6);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t *sub_22EE0D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_22EE08578(v14, v9, a1, a2, a3);
      MEMORY[0x2318F8320](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_22EE0CF1C((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v12;
}

unint64_t sub_22EE0D490(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  v14 = 32 * v12;
  v15 = v13 + 32 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_22EE0D550(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95630, &qword_22EE43570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EE3F500;
  v5 = MEMORY[0x277D84F90];
  *(inited + 32) = a2;
  *(inited + 40) = v5;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v11 = *(v7 - 1);
      v10 = *v7;
      v13 = (inited + 16);
      v12 = *(inited + 16);

      if (!v12)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v14 = v13[2 * v12];

      v15 = sub_22EE3C1D4();

      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_36;
      }

      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_37;
      }

      if (v18 < 81)
      {
        v24 = *v13;
        v25 = sub_22EE3C1D4();
        v26 = v25 + 2;
        if (__OFADD__(v25, 2))
        {
          goto LABEL_39;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!v24)
          {
            goto LABEL_40;
          }
        }

        else
        {
          inited = sub_22EE05AB4(inited);
          if (!v24)
          {
            goto LABEL_40;
          }
        }

        v27 = *(inited + 16);
        if (v24 > v27)
        {
          goto LABEL_41;
        }

        v28 = inited + 32 + 16 * v24;
        v29 = *(v28 - 16);
        v17 = __OFADD__(v29, v26);
        v30 = v29 + v26;
        if (v17)
        {
          goto LABEL_42;
        }

        *(v28 - 16) = v30;
        v31 = inited + 32 + 16 * v27;
        v32 = *(v31 - 8);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 - 8) = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_22EDDA224(0, *(v32 + 2) + 1, 1, v32);
          *(v31 - 8) = v32;
        }

        v35 = *(v32 + 2);
        v34 = *(v32 + 3);
        if (v35 >= v34 >> 1)
        {
          v32 = sub_22EDDA224((v34 > 1), v35 + 1, 1, v32);
          *(v31 - 8) = v32;
        }

        *(v32 + 2) = v35 + 1;
        v36 = &v32[16 * v35];
        *(v36 + 4) = v11;
        v9 = v36 + 32;
        v21 = v10;
      }

      else
      {
        v19 = sub_22EE3C1D4();
        v20 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          goto LABEL_38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_22EE3F500;
        *(v21 + 32) = v11;
        *(v21 + 40) = v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_22EE05F64(0, *(inited + 16) + 1, 1, inited);
        }

        v23 = *(inited + 16);
        v22 = *(inited + 24);
        if (v23 >= v22 >> 1)
        {
          inited = sub_22EE05F64((v22 > 1), v23 + 1, 1, inited);
        }

        *(inited + 16) = v23 + 1;
        v8 = inited + 16 * v23;
        *(v8 + 32) = v20;
        v9 = (v8 + 32);
      }

      *(v9 + 1) = v21;

      v7 += 2;
      --v6;
    }

    while (v6);
    v37 = *(inited + 16);
    if (!v37)
    {
      goto LABEL_33;
    }

    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = 1;
  }

  v45 = v5;
  sub_22EDD2DD4(0, v37, 0);
  v38 = 40;
  do
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
    v39 = sub_22EE3C0B4();
    v41 = v40;

    v43 = *(v45 + 16);
    v42 = *(v45 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_22EDD2DD4((v42 > 1), v43 + 1, 1);
    }

    *(v45 + 16) = v43 + 1;
    v44 = v45 + 16 * v43;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    v38 += 16;
    --v37;
  }

  while (v37);
LABEL_33:
}

uint64_t sub_22EE0D944(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_22EE0D98C()
{
  result = qword_27DA95528;
  if (!qword_27DA95528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95528);
  }

  return result;
}

unint64_t sub_22EE0D9E0()
{
  result = qword_27DA95538;
  if (!qword_27DA95538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95538);
  }

  return result;
}

unint64_t sub_22EE0DA34()
{
  result = qword_27DA95550;
  if (!qword_27DA95550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95550);
  }

  return result;
}

uint64_t sub_22EE0DA88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA94D48, &qword_22EE41F60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22EE0DAF4()
{
  result = qword_27DA95568;
  if (!qword_27DA95568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95568);
  }

  return result;
}

unint64_t sub_22EE0DB48()
{
  result = qword_27DA95578;
  if (!qword_27DA95578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95578);
  }

  return result;
}

uint64_t sub_22EE0DB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22EE0DC0C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 328 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 328 * v7;
  a2 = (v9 + 32 + 328 * v8);
  a3 = 328 * v14;
  v15 = &a2[328 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x141uLL);
  a3 = &qword_27DA95608;
  a4 = &qword_22EE43538;
  a2 = v19;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_22EDDB6E8(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_22EDDB6E8(v6, v19, &qword_27DA95608, &qword_22EE43538);
}

uint64_t sub_22EE0DD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTraceRecordError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE0DD90(uint64_t a1)
{
  v2 = type metadata accessor for KTraceRecordError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22EE0DDF0()
{
  result = qword_27DA95598;
  if (!qword_27DA95598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95598);
  }

  return result;
}

unint64_t sub_22EE0DE48()
{
  result = qword_27DA955A0;
  if (!qword_27DA955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955A0);
  }

  return result;
}

unint64_t sub_22EE0DEA0()
{
  result = qword_27DA955A8;
  if (!qword_27DA955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955A8);
  }

  return result;
}

unint64_t sub_22EE0DEF8()
{
  result = qword_27DA955B0;
  if (!qword_27DA955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955B0);
  }

  return result;
}

unint64_t sub_22EE0DF50()
{
  result = qword_27DA955B8;
  if (!qword_27DA955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955B8);
  }

  return result;
}

unint64_t sub_22EE0DFA8()
{
  result = qword_27DA955C0;
  if (!qword_27DA955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955C0);
  }

  return result;
}

unint64_t sub_22EE0E000()
{
  result = qword_27DA955C8;
  if (!qword_27DA955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955C8);
  }

  return result;
}

unint64_t sub_22EE0E058()
{
  result = qword_27DA955D0;
  if (!qword_27DA955D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955D0);
  }

  return result;
}

unint64_t sub_22EE0E0B0()
{
  result = qword_27DA955D8;
  if (!qword_27DA955D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955D8);
  }

  return result;
}

unint64_t sub_22EE0E108()
{
  result = qword_27DA955E0;
  if (!qword_27DA955E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955E0);
  }

  return result;
}

unint64_t sub_22EE0E160()
{
  result = qword_27DA955E8;
  if (!qword_27DA955E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlanSource(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_22EE0E348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22EE0E3A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanSettings.KPerfTimer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlanSettings.KPerfTimer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22EE0E4AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22EE0E4F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanSettings.KPerfPET(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanSettings.KPerfPET(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22EE0E608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22EE0E650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_22EE0E700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22EE0E748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE0E7D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 321))
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

uint64_t sub_22EE0E818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
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

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6ktrace12PlanSettingsV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6ktrace12PlanSettingsV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanSettings.KPerfAction.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlanSettings.KPerfAction.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t _s6ktrace12PlanSettingsV10KPerfTimerV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6ktrace12PlanSettingsV10KPerfTimerV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22EE0ECC0()
{
  result = qword_27DA99DB0[0];
  if (!qword_27DA99DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA99DB0);
  }

  return result;
}

unint64_t sub_22EE0ED18()
{
  result = qword_27DA99FC0[0];
  if (!qword_27DA99FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA99FC0);
  }

  return result;
}

unint64_t sub_22EE0ED70()
{
  result = qword_27DA9A1D0[0];
  if (!qword_27DA9A1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A1D0);
  }

  return result;
}

unint64_t sub_22EE0EDC8()
{
  result = qword_27DA9A3E0[0];
  if (!qword_27DA9A3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A3E0);
  }

  return result;
}

unint64_t sub_22EE0EE20()
{
  result = qword_27DA9A5F0;
  if (!qword_27DA9A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9A5F0);
  }

  return result;
}

unint64_t sub_22EE0EE78()
{
  result = qword_27DA9A800[0];
  if (!qword_27DA9A800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A800);
  }

  return result;
}

unint64_t sub_22EE0EED0()
{
  result = qword_27DA9AA10[0];
  if (!qword_27DA9AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AA10);
  }

  return result;
}

unint64_t sub_22EE0EF28()
{
  result = qword_27DA9AC20[0];
  if (!qword_27DA9AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AC20);
  }

  return result;
}

unint64_t sub_22EE0EF80()
{
  result = qword_27DA9AD30;
  if (!qword_27DA9AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AD30);
  }

  return result;
}

unint64_t sub_22EE0EFD8()
{
  result = qword_27DA9AD38[0];
  if (!qword_27DA9AD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AD38);
  }

  return result;
}

unint64_t sub_22EE0F030()
{
  result = qword_27DA9ADC0;
  if (!qword_27DA9ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9ADC0);
  }

  return result;
}

unint64_t sub_22EE0F088()
{
  result = qword_27DA9ADC8[0];
  if (!qword_27DA9ADC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9ADC8);
  }

  return result;
}

unint64_t sub_22EE0F0E0()
{
  result = qword_27DA9AE50;
  if (!qword_27DA9AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AE50);
  }

  return result;
}

unint64_t sub_22EE0F138()
{
  result = qword_27DA9AE58[0];
  if (!qword_27DA9AE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AE58);
  }

  return result;
}

unint64_t sub_22EE0F190()
{
  result = qword_27DA9AEE0;
  if (!qword_27DA9AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AEE0);
  }

  return result;
}

unint64_t sub_22EE0F1E8()
{
  result = qword_27DA9AEE8[0];
  if (!qword_27DA9AEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AEE8);
  }

  return result;
}

unint64_t sub_22EE0F240()
{
  result = qword_27DA9AF70;
  if (!qword_27DA9AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AF70);
  }

  return result;
}

unint64_t sub_22EE0F298()
{
  result = qword_27DA9AF78;
  if (!qword_27DA9AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AF78);
  }

  return result;
}

unint64_t sub_22EE0F2F0()
{
  result = qword_27DA9B000;
  if (!qword_27DA9B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9B000);
  }

  return result;
}

unint64_t sub_22EE0F348()
{
  result = qword_27DA9B008[0];
  if (!qword_27DA9B008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9B008);
  }

  return result;
}