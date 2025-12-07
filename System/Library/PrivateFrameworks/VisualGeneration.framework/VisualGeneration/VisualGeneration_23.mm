void sub_19A4E5F54(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_79;
  }

  if (a3)
  {
    sub_19A4E58D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_19A4E655C();
      goto LABEL_79;
    }

    sub_19A4E6808(v5 + 1);
  }

  v7 = *v3;
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(a1);
  sub_19A572E4C();

  v8 = sub_19A57410C();
  v40 = v7 + 56;
  v41 = v7;
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v39 = ~v9;
    v10 = 0xEC0000006E6F6974;
    v11 = 0x800000019A5965C0;
    do
    {
      v12 = *(*(v41 + 48) + a2);
      if (v12 <= 4)
      {
        if (v12 == 3)
        {
          v15 = 0xD000000000000012;
        }

        else
        {
          v15 = 0x61727473756C6C69;
        }

        if (v12 == 3)
        {
          v16 = v11;
        }

        else
        {
          v16 = v10;
        }

        if (v12 == 2)
        {
          v15 = 0x696A6F6D65;
          v16 = 0xE500000000000000;
        }

        v17 = 0xD000000000000016;
        if (*(*(v41 + 48) + a2))
        {
          v18 = 0x800000019A5965E0;
        }

        else
        {
          v17 = 0x6F6974616D696E61;
          v18 = 0xE90000000000006ELL;
        }

        v14 = *(*(v41 + 48) + a2) <= 1u ? v17 : v15;
        v13 = *(*(v41 + 48) + a2) <= 1u ? v18 : v16;
      }

      else if (*(*(v41 + 48) + a2) > 7u)
      {
        if (v12 == 8)
        {
          v14 = 0x63735F656C797473;
          v13 = 0xEE00656C62626972;
        }

        else if (v12 == 9)
        {
          v14 = 0xD00000000000001BLL;
          v13 = 0x800000019A596560;
        }

        else
        {
          v14 = 0xD000000000000014;
          v13 = 0x800000019A596540;
        }
      }

      else if (v12 == 5)
      {
        v14 = 0xD000000000000019;
        v13 = 0x800000019A5965A0;
      }

      else if (v12 == 6)
      {
        v13 = 0xE600000000000000;
        v14 = 0x686374656B73;
      }

      else
      {
        v14 = 0xD000000000000013;
        v13 = 0x800000019A596580;
      }

      v19 = 0xD00000000000001BLL;
      if (a1 != 9)
      {
        v19 = 0xD000000000000014;
      }

      v20 = 0x800000019A596540;
      if (a1 == 9)
      {
        v20 = 0x800000019A596560;
      }

      if (a1 == 8)
      {
        v19 = 0x63735F656C797473;
        v20 = 0xEE00656C62626972;
      }

      v21 = 0xD000000000000019;
      v22 = 0x686374656B73;
      if (a1 != 6)
      {
        v22 = 0xD000000000000013;
      }

      v23 = 0x800000019A596580;
      if (a1 == 6)
      {
        v23 = 0xE600000000000000;
      }

      if (a1 != 5)
      {
        v21 = v22;
      }

      v24 = 0x800000019A5965A0;
      if (a1 != 5)
      {
        v24 = v23;
      }

      if (a1 <= 7u)
      {
        v19 = v21;
        v20 = v24;
      }

      if (a1 == 3)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = 0x61727473756C6C69;
      }

      v26 = v10;
      v27 = v11;
      if (a1 == 3)
      {
        v28 = v11;
      }

      else
      {
        v28 = v10;
      }

      if (a1 == 2)
      {
        v25 = 0x696A6F6D65;
        v28 = 0xE500000000000000;
      }

      v29 = 0xD000000000000016;
      if (a1)
      {
        v30 = 0x800000019A5965E0;
      }

      else
      {
        v29 = 0x6F6974616D696E61;
        v30 = 0xE90000000000006ELL;
      }

      if (a1 <= 1u)
      {
        v25 = v29;
        v28 = v30;
      }

      v31 = a1 <= 4u ? v25 : v19;
      v32 = a1 <= 4u ? v28 : v20;
      if (v14 == v31 && v13 == v32)
      {
        goto LABEL_82;
      }

      v33 = sub_19A573F1C();

      if (v33)
      {
        goto LABEL_83;
      }

      a2 = (a2 + 1) & v39;
      v10 = v26;
      v11 = v27;
    }

    while (((*(v40 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_79:
  v34 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v34 + 48) + a2) = a1;
  v35 = *(v34 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 16) = v37;
    return;
  }

  __break(1u);
LABEL_82:

LABEL_83:
  sub_19A57403C();
  __break(1u);
}

uint64_t sub_19A4E6390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_19A4E5CD0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_19A4E669C();
      goto LABEL_22;
    }

    sub_19A4E6BD8(v12 + 1);
  }

  v14 = *v6;
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  result = sub_19A57410C();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_19A573F1C(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_19A573F1C();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_19A57403C();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_19A4E655C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F10, &qword_19A58F810);
  v2 = *v0;
  v3 = sub_19A5738FC();
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

void *sub_19A4E669C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68, &unk_19A58F7A8);
  v2 = *v0;
  v3 = sub_19A5738FC();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_19A4E6808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F10, &qword_19A58F810);
  result = sub_19A57390C();
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
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
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

uint64_t sub_19A4E6BD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68, &unk_19A58F7A8);
  result = sub_19A57390C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_19A5740BC();

      sub_19A572E4C();
      sub_19A572E4C();
      result = sub_19A57410C();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

double sub_19A4E6E3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 4);
  *(a2 + 4) = result;
  return result;
}

float sub_19A4E6E50@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = *a1;
  *(a2 + 4) = result;
  return result;
}

unint64_t _s13DiffusionBase05AppleA8PipelineV10IPASettingO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A57400C();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A4E6F10(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_19A4E6F34()
{
  result = qword_1EAF9EFC8;
  if (!qword_1EAF9EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EFC8);
  }

  return result;
}

double sub_19A4E6F88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_19A4E6FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F98, &unk_19A58F880);
    v3 = sub_19A573BEC();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_19A3200C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E70BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F90, &qword_19A58F878);
    v3 = sub_19A573BEC();

    for (i = (a1 + 36); ; i = (i + 12))
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_19A3200C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19A4E71A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A4E7208(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19A4E7220(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v1 = sub_19A5723FC();
    __swift_project_value_buffer(v1, qword_1ED82BD48);
    v2 = sub_19A5723DC();
    v3 = sub_19A57355C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19A2DE000, v2, v3, "Error in IPA conditioning scale array: unexpected format", v4, 2u);
      MEMORY[0x19A902C50](v4, -1, -1);
    }

    sub_19A4E6F34();
    swift_allocError();
    *v5 = xmmword_19A577090;
    *(v5 + 16) = 5;
    return swift_willThrow();
  }

  return result;
}

void sub_19A4E7350(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08, &unk_19A58F1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = 4;
  sub_19A4E7220(*(a1 + 8));
  if (v1)
  {
    swift_setDeallocating();
    return;
  }

  *(inited + 36) = v4;
  *(inited + 40) = v5;
  *(inited + 44) = 5;
  sub_19A4E7220(*(a1 + 24));
  *(inited + 48) = v6;
  *(inited + 52) = v7;
  sub_19A4E70BC(inited);
  swift_setDeallocating();
  v8 = *(a1 + 40);
  if (v8)
  {
    sub_19A4E7220(v8);
    v10 = v9;
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(6, isUniquelyReferenced_nonNull_native, v10, v12);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    sub_19A4E7220(v14);
    v16 = v15;
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(7, v19, v16, v18);
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    sub_19A4E7220(v20);
    v22 = v21;
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(8, v25, v22, v24);
  }

  v26 = *(a1 + 96);
  if (v26)
  {
    sub_19A4E7220(v26);
    v28 = v27;
    v30 = v29;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(12, v31, v28, v30);
  }

  v32 = *(a1 + 128);
  if (v32)
  {
    sub_19A4E7220(v32);
    v34 = v33;
    v36 = v35;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(16, v37, v34, v36);
  }

  v38 = *(a1 + 80);
  if (v38)
  {
    sub_19A4E7220(v38);
    v40 = v39;
    v42 = v41;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(10, v43, v40, v42);
  }

  v44 = *(a1 + 112);
  if (v44)
  {
    sub_19A4E7220(v44);
    v46 = v45;
    v48 = v47;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(14, v49, v46, v48);
  }

  v50 = *(a1 + 144);
  if (v50)
  {
    sub_19A4E7220(v50);
    v52 = v51;
    v54 = v53;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(18, v55, v52, v54);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F80, &qword_19A58F868);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_19A576E20;
  *(v56 + 32) = 0;
  *(v56 + 36) = *(a1 + 4);
  *(v56 + 40) = 1;
  *(v56 + 44) = *(a1 + 16);
  sub_19A4E6FD0(v56);
  swift_setDeallocating();
  if (*(a1 + 36))
  {
    if (*(a1 + 52))
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_19A5499D8(*(a1 + 32), 2);
    if (*(a1 + 52))
    {
LABEL_22:
      if (*(a1 + 76))
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  sub_19A5499D8(*(a1 + 48), 3);
  if (*(a1 + 76))
  {
LABEL_23:
    if (*(a1 + 108))
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_19A5499D8(*(a1 + 72), 9);
  if (*(a1 + 108))
  {
LABEL_24:
    if (*(a1 + 140))
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_19A5499D8(*(a1 + 104), 13);
  if (*(a1 + 140))
  {
LABEL_25:
    if (*(a1 + 92))
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_19A5499D8(*(a1 + 136), 17);
  if (*(a1 + 92))
  {
LABEL_26:
    if (*(a1 + 124))
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_19A5499D8(*(a1 + 88), 11);
  if (*(a1 + 124))
  {
LABEL_27:
    if (*(a1 + 156))
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_36:
  sub_19A5499D8(*(a1 + 120), 15);
  if (*(a1 + 156))
  {
    return;
  }

LABEL_28:
  sub_19A5499D8(*(a1 + 152), 19);
}

double sub_19A4E788C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_19A4E78A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A4E7944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EC8, &qword_19A58F7E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2ED0, &unk_19A58F7F0);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2EC8, &qword_19A58F7E8);
      v12 = *v5;
      v11 = v5[1];
      result = sub_19A31F6BC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F60, &qword_19A58F848);
    v3 = sub_19A573BEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A33546C(v4, &v13, &qword_1EAFA2F68, &unk_19A58F850);
      v5 = v13;
      v6 = v14;
      result = sub_19A31F6BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19A2E10E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08, &qword_19A590D00);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A31F6BC(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2D00, &qword_19A58F6C0);
    v3 = sub_19A573BEC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_19A2EA56C(v7);
      result = sub_19A4F38B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D20, &qword_19A58F6D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D28, &qword_19A58F6D8);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2D20, &qword_19A58F6D0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_19A31F6BC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_19A570EAC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E807C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2DE0, &qword_19A58F730);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A4F38B8(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E8180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E38, &qword_19A58F778);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E40, &unk_19A58F780);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2E38, &qword_19A58F778);
      v11 = *v5;
      result = sub_19A31FBD4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_19A570EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E837C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D30, &qword_19A58F6E0);
    v3 = sub_19A573BEC();

    for (i = (a1 + 34); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_19A31FCAC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 2 * result);
      *v10 = v6;
      v10[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_19A4E849C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E20, &qword_19A58F760);
  v3 = sub_19A573BEC();

  memcpy(__dst, a1 + 4, 0x170uLL);
  v4 = __dst[0];
  sub_19A33546C(__dst, v13, &qword_1EAFA2E28, &qword_19A58F768);
  v5 = sub_19A31FBD4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = a1 + 50;
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + v5) = v4;
    result = memcpy((v3[7] + 360 * v5), &__dst[8], 0x168uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, 0x170uLL);
    v4 = __dst[0];
    sub_19A33546C(__dst, v13, &qword_1EAFA2E28, &qword_19A58F768);
    v5 = sub_19A31FBD4(v4);
    v7 += 46;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A4E861C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E10, &qword_19A58F750);
    v3 = sub_19A573BEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_19A31FCAC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_19A4E8710(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E00, &qword_19A58F740);
  v3 = sub_19A573BEC();

  memcpy(__dst, a1 + 4, 0x170uLL);
  v4 = __dst[0];
  sub_19A33546C(__dst, v13, &qword_1EAFA2E08, &qword_19A58F748);
  v5 = sub_19A31FCAC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = a1 + 50;
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + v5) = v4;
    result = memcpy((v3[7] + 360 * v5), &__dst[8], 0x168uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, 0x170uLL);
    v4 = __dst[0];
    sub_19A33546C(__dst, v13, &qword_1EAFA2E08, &qword_19A58F748);
    v5 = sub_19A31FCAC(v4);
    v7 += 46;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A4E88B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_19A573BEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E89AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E18, &qword_19A58F758);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_19A31FDEC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E8AA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_19A31F6BC(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19A4E8BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4E8C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A4E8C7C()
{
  result = qword_1EAF9EFC0;
  if (!qword_1EAF9EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EFC0);
  }

  return result;
}

unint64_t sub_19A4E8CD4()
{
  result = qword_1EAFA2CD8;
  if (!qword_1EAFA2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2CD8);
  }

  return result;
}

void sub_19A4E8D54(uint64_t a1)
{
  type metadata accessor for AppleDiffusionUnet(319);
  if (v1 <= 0x3F)
  {
    sub_19A4E9430(319, qword_1EAF9EDA8, &type metadata for Encoder, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_19A4E9430(319, &qword_1EAF9EFF0, &type metadata for AppleDiffusionLocalImageConditioner, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_19A57236C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppleDiffusionPipeline.IPASetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionPipeline.IPASetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase05AppleA8PipelineV0cA5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

void sub_19A4E9098(uint64_t a1)
{
  sub_19A4E9178();
  if (v1 <= 0x3F)
  {
    sub_19A4E91D0(319);
    if (v2 <= 0x3F)
    {
      sub_19A4E9430(319, &unk_1EAF9EFE0, &type metadata for AppleDiffusionUnet.IPAInputs, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_19A4E9234(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A4E9178()
{
  if (!qword_1ED8255D8[0])
  {
    v0 = sub_19A57265C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8255D8);
    }
  }
}

void sub_19A4E91D0(uint64_t a1)
{
  if (!qword_1EAF9E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2CF8, qword_19A58F608);
    v1 = sub_19A57378C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF9E850);
    }
  }
}

void sub_19A4E9234(uint64_t a1)
{
  if (!qword_1EAF9E8F8)
  {
    sub_19A2F1600(255, &qword_1ED823EE0, 0x1E695FED0);
    v1 = sub_19A572B1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF9E8F8);
    }
  }
}

double sub_19A4E92AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {

    v5 = a4;
  }

  return result;
}

id sub_19A4E92F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {

    return a1;
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_19A4E9344(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

void sub_19A4E9430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_19A4E94C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double TextEncoder.init(tokenizer:modelAt:configuration:)@<D0>(_OWORD *a1@<X8>, __n128 *a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>)
{
  sub_19A4EA94C(a2, a3, a4, v9);
  v5 = v9[3];
  a1[2] = v9[2];
  a1[3] = v5;
  v6 = v9[5];
  a1[4] = v9[4];
  a1[5] = v6;
  result = v9[0].n128_f64[0];
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  return result;
}

void TextEncoder.encode(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A4E9A18();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[v5 + 3];

    v7 = BPETokenizer.tokenize(input:minCount:)(a1, v6, 0);
    v9 = v8;
    v10 = v8[2];
    if (v6 >= v10)
    {
LABEL_6:

      sub_19A4EA0BC(v9, a2);

      return;
    }

    v11 = *(v7 + 2);
    v12 = __OFSUB__(v11, v6);
    v13 = v11 - v6;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      sub_19A4E9C70(v13, v7);
      if (!__OFSUB__(v10, v6))
      {
        v19 = sub_19A4E9ECC(v10 - v6, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
        sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8, &qword_19A57A790, MEMORY[0x1E69E6310]);
        sub_19A572BEC();
        v14 = MEMORY[0x1E69E6158];
        sub_19A572F8C();
        sub_19A2F4450();
        sub_19A57382C();

        sub_19A57382C();

        v18 = sub_19A57382C();
        v16 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_19A576E10;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD00000000000001ALL, 0x800000019A59CC30);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_19A573EFC();
        MEMORY[0x19A900A50](0x27206F742027, 0xE600000000000000);
        MEMORY[0x19A900A50](v18, v16);

        MEMORY[0x19A900A50](39, 0xE100000000000000);
        *(v17 + 56) = v14;
        v9 = v19;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0xE000000000000000;
        sub_19A5740AC();
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_19A4E9A18()
{
  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  sub_19A5735DC();
  v0 = [v12 multiArrayConstraint];

  if (!v0)
  {
    goto LABEL_17;
  }

  v1 = [v0 shape];

  sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
  v2 = sub_19A57308C();

  if (v2 >> 62)
  {
    v3 = sub_19A573B4C();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = MEMORY[0x1E69E7CC0];
  sub_19A3225A0(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A901520](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = v13[2];
      v9 = v13[3];
      if (v10 >= v9 >> 1)
      {
        sub_19A3225A0((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      v13[2] = v10 + 1;
      v13[v10 + 4] = v8;
    }

    while (v3 != v4);

    return v5;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_19A4E9C70(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  if (a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = a2 + 40;
      v31 = *(a2 + 16);
      v27 = v4 - 1;
      v8 = MEMORY[0x1E69E7CC0];
      v30 = MEMORY[0x1E69E7CC0];
      v28 = a2 + 40;
      do
      {
        v29 = v6;
        v9 = (v7 + 16 * v5);
        while (1)
        {
          if (v5 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_30;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = v5 + 1;
          v13 = *(v8 + 2);
          if (v13 >= a1)
          {
            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_19A322580(0, v13 + 1, 1);
          }

          v15 = *(v8 + 2);
          v14 = *(v8 + 3);
          if (v15 >= v14 >> 1)
          {
            sub_19A322580((v14 > 1), v15 + 1, 1);
          }

          *(v8 + 2) = v15 + 1;
          v16 = &v8[16 * v15];
          *(v16 + 4) = v10;
          *(v16 + 5) = v11;
          v9 += 2;
          v5 = v12;
          if (v31 == v12)
          {
            goto LABEL_27;
          }
        }

        if (v29 >= v13)
        {
          goto LABEL_31;
        }

        v17 = &v8[16 * v29];
        v18 = *(v17 + 5);
        v25 = *(v17 + 4);

        v26 = v18;

        v19 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A322580(0, *(v30 + 16) + 1, 1);
          v19 = v30;
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_19A322580((v20 > 1), v21 + 1, 1);
          v19 = v30;
        }

        *(v19 + 16) = v21 + 1;
        v30 = v19;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v25;
        *(v22 + 40) = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_19A4FF6C8(v8);
        }

        v7 = v28;
        if (v29 >= *(v8 + 2))
        {
          goto LABEL_32;
        }

        v23 = &v8[16 * v29];
        *(v23 + 4) = v10;
        *(v23 + 5) = v11;

        if ((v29 + 1) < a1)
        {
          v6 = v29 + 1;
        }

        else
        {
          v6 = 0;
        }
      }

      while (v27 != v5++);
    }

LABEL_27:
  }
}

uint64_t sub_19A4E9ECC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v7;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v17 = result;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    v11 = *(v8 + 16);
    if (v11 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19A3225A0(0, v11 + 1, 1);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_19A3225A0((v12 > 1), v13 + 1, 1);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v9;
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v4 >= v11)
    {
      break;
    }

    v14 = *(v8 + 8 * v4 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_19A3225A0(0, *(v7 + 16) + 1, 1);
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_19A3225A0((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A4FF6DC(v8);
      v8 = result;
    }

    v2 = v17;
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_29;
    }

    *(v8 + 8 * v4++ + 32) = v9;
    if (v4 < v17)
    {
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_19A4EA0BC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v40 - v9;
  v10 = *(v2 + 80);
  v11 = *(v10 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v50 = 0;
  v51 = 0;
  v49 = v10;
  v52 = sub_19A4EA81C;
  v53 = 0;
  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  sub_19A5735DC();
  if (v3)
  {
    goto LABEL_16;
  }

  v43 = 0;
  v44 = v11;
  v12 = v54;
  v13 = [v54 name];

  v42 = sub_19A572CFC();
  v46 = v14;

  v45 = sub_19A4E9A18();
  v15 = a1[2];
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v41 = v5;
    v54 = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v15, 0);
    v16 = v54;
    v17 = a1 + 4;
    v18 = v54[2];
    do
    {
      v20 = *v17++;
      v19 = v20;
      v54 = v16;
      v21 = v16[3];
      if (v18 >= v21 >> 1)
      {
        sub_19A4E44CC((v21 > 1), v18 + 1, 1);
        v16 = v54;
      }

      v16[2] = v18 + 1;
      *(v16 + v18++ + 8) = v19;
      --v15;
    }

    while (v15);
    v5 = v41;
  }

  v54 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  v22 = v47;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 32) = v42;
  *(inited + 40) = v46;
  v24 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  (*(v48 + 16))(v7, v22, v5);
  v25 = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);

  v42 = v25;
  v26 = sub_19A57351C();
  *(inited + 72) = v24;
  *(inited + 48) = v26;
  v27 = sub_19A330370(inited);
  swift_setDeallocating();
  sub_19A4EACFC(inited + 32);
  v28 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v29 = v43;
  v30 = sub_19A544CF4(v27);
  if (v29)
  {
    goto LABEL_17;
  }

  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v40[-2] = v32;
  MEMORY[0x1EEE9AC00](v32);
  v40[-4] = sub_19A4EAD64;
  v40[-3] = v33;
  v40[-2] = v10;
  MEMORY[0x1EEE9AC00](v34);
  v40[-5] = 0;
  v40[-4] = 0;
  v40[-6] = v10;
  v40[-3] = sub_19A4EAD80;
  v40[-2] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0, &unk_19A58F710);
  sub_19A5735DC();
  v36 = sub_19A56D50C(v54);

  if (v36[2])
  {
    v37 = sub_19A31F6BC(0xD000000000000011, 0x800000019A59C580);
    if (v38)
    {
      v39 = *(v36[7] + 8 * v37);
      if ([v39 multiArrayValue])
      {

        sub_19A5726AC();

        (*(v48 + 8))(v47, v5);
        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  swift_unexpectedError();
  __break(1u);
LABEL_17:
  swift_unexpectedError();
  __break(1u);
}

id sub_19A4EA764(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a1 predictionFromFeatures:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v2;
}

void sub_19A4EA81C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v5 = sub_19A572AFC();
  sub_19A506920(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_19A4EA94C@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __n128 *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_19A570EAC();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A5735CC();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v23[2] = sub_19A2F1600(0, &unk_1EAF9E7A0, 0x1E69E9610);
  v23[1] = "chedulerStep";
  sub_19A57297C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_19A4EADE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60, &qword_19A595180);
  sub_19A2F12E4(&unk_1EAF9E840, &unk_1EAFA2C60, &qword_19A595180, MEMORY[0x1E69E6328]);
  sub_19A57388C();
  (*(v24 + 104))(v10, *MEMORY[0x1E69E8090], v25);
  v13 = sub_19A5735FC();
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v36 = a1[4];
  v15 = a1[1];
  v32 = *a1;
  v33 = v15;
  v17 = v26;
  v16 = v27;
  v19 = v28;
  v18 = v29;
  (*(v27 + 16))(v26, v29, v28);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v20 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v17, v30, MEMORY[0x1E69E7CC0], "TextEncoder", 11, 2);
  (*(v16 + 8))(v18, v19);
  v21 = v35;
  a4[2] = v34;
  a4[3] = v21;
  a4[4] = v36;
  result = v33;
  *a4 = v32;
  a4[1] = result;
  a4[5].n128_u64[0] = v20;
  a4[5].n128_u64[1] = v13;
  return result;
}

uint64_t sub_19A4EACFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A4EADE8()
{
  result = qword_1EAF9E7B0;
  if (!qword_1EAF9E7B0)
  {
    sub_19A5735BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E7B0);
  }

  return result;
}

uint64_t sub_19A4EAE58(uint64_t result, int64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v5 = result;
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_19A4E456C(0, v2 & ~(v2 >> 63), 0);
  if (a2 >= v5 && (v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v3 = v11;
    while (v6 < v2)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

      result = sub_19A4EB178();
      v12 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = result;
        sub_19A4E456C((v8 > 1), v9 + 1, 1);
        result = v10;
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = vcvts_n_f32_u32(result & 0xFFFFFF, 0x18uLL);
      ++v6;
      if ((v5 - 1 + v6) >= a2)
      {
        goto LABEL_15;
      }

      if (v7 == v2)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_19A4EAF98(uint64_t a1, int64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_19A4E456C(0, v5 & ~(v5 >> 63), 0);
    v10 = a2;
    if (a2 < a1 || v5 < 0)
    {
      goto LABEL_20;
    }

    v11 = 0;
    v12 = a1 - 1;
    while (v11 < v5)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v14 = *(a3 + 24);
      if (v14)
      {
        v15 = sub_19A4EB178();
        v16 = vcvtd_n_f64_u64(sub_19A4EB178() | ((*&v15 & 0x1FFFFFLL) << 32), 0x35uLL);
        v17 = sub_19A4EB178();
        v18 = sub_19A4EB178();
        v19 = log(1.0 - vcvtd_n_f64_u64(v18 | ((*&v17 & 0x1FFFFFLL) << 32), 0x35uLL));
        v20 = sqrt(v19 * -2.0);
        v21 = __sincos_stret(v16 * 6.28318531);
        v10 = a2;
        v22 = v20 * v21.__sinval;
        v23 = v20 * v21.__cosval;
      }

      else
      {
        v23 = *(a3 + 16);
        v22 = 0.0;
      }

      *(a3 + 16) = v22;
      *(a3 + 24) = v14 ^ 1;
      v25 = *(v27 + 16);
      v24 = *(v27 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_19A4E456C((v24 > 1), v25 + 1, 1);
        v10 = a2;
      }

      *(v27 + 16) = v25 + 1;
      *(v27 + 8 * v25 + 32) = v23 * a5 + a4;
      ++v11;
      if ((v12 + v11) >= v10)
      {
        goto LABEL_18;
      }

      if (v13 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_19A4EB178()
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(*v2 + 16);
  if (v3 == v5)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v3 = *(v4 + 16);
      if (v3 < 0xE4)
      {
        break;
      }

      v5 = v4 + 32;
      v1 = *(v4 + 32);
      v7 = 397;
      if (v3 > 0x18D)
      {
        v7 = *(v4 + 16);
      }

      v0 = v7 - 397;
      if (v0 < 8)
      {
        v8 = 0;
        goto LABEL_17;
      }

LABEL_10:
      if (v0 >= 0xE2)
      {
        v0 = 226;
      }

      v9 = v0 + 1;
      v10 = v9 & 7;
      if ((v9 & 7) == 0)
      {
        v10 = 8;
      }

      v8 = v9 - v10;
      v11 = vdupq_n_s32(v1);
      v12.i64[0] = 0x100000001;
      v12.i64[1] = 0x100000001;
      v13 = vnegq_f32(v12);
      v14.i64[0] = 0x8000000080000000;
      v14.i64[1] = 0x8000000080000000;
      v15.i64[0] = 0x100000001;
      v15.i64[1] = 0x100000001;
      v16 = vdupq_n_s32(0x9908B0DF);
      v17 = v8;
      v18 = v4;
      do
      {
        v19 = *(v18 + 36);
        v20 = *(v18 + 1636);
        *(v18 + 32) = veorq_s8(veorq_s8(vbicq_s8(v16, vceqzq_s32(vandq_s8(v19, v15))), *(v18 + 1620)), vshrq_n_u32(vorrq_s8(vandq_s8(v19, v13), vandq_s8(vextq_s8(v11, v19, 0xCuLL), v14)), 1uLL));
        v18 += 32;
        v11 = *(v18 + 20);
        *(v18 + 16) = veorq_s8(veorq_s8(vbicq_s8(v16, vceqzq_s32(vandq_s8(v11, v15))), v20), vshrq_n_u32(vorrq_s8(vandq_s8(v11, v13), vandq_s8(vextq_s8(v19, v11, 0xCuLL), v14)), 1uLL));
        v17 -= 8;
      }

      while (v17);
      v1 = v11.u32[3];
      do
      {
LABEL_17:
        if (v8 + 397 >= v3)
        {
          __break(1u);
          goto LABEL_32;
        }

        v21 = (v4 + 4 * v8);
        v22 = v8 + 1;
        v23 = v1 & 0x80000000;
        v1 = v21[9];
        v21[8] = ((v1 << 31) >> 31) & 0x9908B0DF ^ ((v1 & 0x7FFFFFFE | v23) >> 1) ^ v21[405];
        v8 = v22;
      }

      while (v22 != 227);
      v25 = 395;
      if (v3 < 0x18B)
      {
        v25 = v3;
      }

      v26 = (v25 + 1) & 3;
      if (!v26)
      {
        v26 = 4;
      }

      v27 = v25 + 1 - v26;
      v24 = (v4 + 940);
      v28 = vld1q_dup_f32(v24);
      v29 = v5 + 908;
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
      v31 = vnegq_f32(v30);
      v32.i64[0] = 0x8000000080000000;
      v32.i64[1] = 0x8000000080000000;
      v33.i64[0] = 0x100000001;
      v33.i64[1] = 0x100000001;
      v34 = vdupq_n_s32(0x9908B0DF);
      do
      {
        v35 = v28;
        v28 = *(v29 + 4);
        *v29 = veorq_s8(veorq_s8(vbicq_s8(v34, vceqzq_s32(vandq_s8(v28, v33))), *(v29 - 908)), vshrq_n_u32(vorrq_s8(vandq_s8(v28, v31), vandq_s8(vextq_s8(v35, v28, 0xCuLL), v32)), 1uLL));
        v29 += 16;
        v27 -= 4;
      }

      while (v27);
      v36 = v28.i32[3];
      v37 = v25 - v26;
      v38 = 4 * v25 - 4 * v26 + 944;
      while (1)
      {
        v39 = v37 + 1;
        if (v37 + 1 >= v3)
        {
          break;
        }

        v40 = *(v4 + v38 + 4);
        *(v4 + v38) = (v40 << 31 >> 31) & 0x9908B0DF ^ ((v40 & 0x7FFFFFFE | v36 & 0x80000000) >> 1) ^ *(v4 + 4 * v37 + 36);
        v38 += 4;
        ++v37;
        v36 = v40;
        if (v39 == 395)
        {
          v3 = 0;
          *(v4 + 2524) = *(v4 + 1616) ^ ((*(v4 + 32) & 0x7FFFFFFE | *(v4 + 2524) & 0x80000000) >> 1) ^ ((*(v4 + 32) << 31) >> 31) & 0x9908B0DF;
          *v2 = v4;
          v5 = *(v4 + 16);
          goto LABEL_29;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_19A4E5268(v4);
      v4 = result;
    }

    __break(1u);
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_29:
    if (v3 >= v5)
    {
      goto LABEL_33;
    }

    v41 = v3 + 1;
    v42 = *(v4 + 4 * v3 + 32);
    v2[1] = v41;
    v43 = ((v42 ^ (v42 >> 11)) << 7) & 0x9D2C5680 ^ v42 ^ (v42 >> 11);
    return (v43 << 15) & 0xEFC60000 ^ v43 ^ (((v43 << 15) & 0xEFC60000 ^ v43) >> 18);
  }

  return result;
}

double sub_19A4EB47C(double a1, double a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = sub_19A4EB178();
    v7 = vcvtd_n_f64_u64(sub_19A4EB178() | ((*&v6 & 0x1FFFFFLL) << 32), 0x35uLL);
    v8 = sub_19A4EB178();
    v9 = sub_19A4EB178();
    v10 = log(1.0 - vcvtd_n_f64_u64(v9 | ((*&v8 & 0x1FFFFFLL) << 32), 0x35uLL));
    v11 = sqrt(v10 * -2.0);
    v12 = __sincos_stret(v7 * 6.28318531);
    v13 = v11 * v12.__sinval;
    v14 = v11 * v12.__cosval;
  }

  else
  {
    v14 = *(v2 + 16);
    v13 = 0.0;
  }

  *(v2 + 16) = v13;
  *(v2 + 24) = v5 ^ 1;
  return v14 * a2 + a1;
}

uint64_t sub_19A4EB544(int64_t a1, double a2, double a3)
{
  v7 = a1;
  if (a1 >= 16)
  {
    v4 = sub_19A4EAE58(0, a1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  else
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      sub_19A4EAF98(0, a1, v3, a2, a3);
      return v8;
    }

LABEL_37:
    __break(1u);
  }

  v4 = sub_19A4E52A4(v4);
LABEL_5:
  v9 = 0;
  v10 = (v4 + 96);
  do
  {
    v11 = 0;
    v12 = __OFADD__(v9, 16);
    v13 = v10;
    do
    {
      v14 = *(v4 + 16);
      if (v9 + v11 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v9 + v11 + 8 >= v14)
      {
        goto LABEL_32;
      }

      ++v11;
      v15 = *v13;
      v16 = log(1.0 - *(v13 - 8));
      v17 = sqrt(v16 * -2.0);
      v18 = __sincos_stret(v15 * 6.28318531);
      *(v13 - 8) = v17 * v18.__cosval * a3 + a2;
      *v13++ = v17 * v18.__sinval * a3 + a2;
    }

    while (v11 != 8);
    v19 = v9 + 16 >= v7 - 15 || v12;
    v10 += 16;
    v9 += 16;
  }

  while ((v19 & 1) == 0);
  if ((v7 & 0xF) != 0)
  {
    v20 = 16;
    v21 = v7;
    while (1)
    {
      v22 = sub_19A4EB178();
      v23 = sub_19A4EB178();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_19A4E52A4(v4);
      }

      if ((v21 - 16) >= *(v4 + 16))
      {
        goto LABEL_33;
      }

      *(v4 + 8 * v21++ - 96) = vcvtd_n_f64_u64((v22 << 32) & 0x1FFFFF00000000 | v23, 0x35uLL);
      if (!--v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_19A4E52A4(v4);
        }

        v24 = v4 + 32;
        v25 = 8;
        while (1)
        {
          v26 = *(v4 + 16);
          if (v7 - 16 >= v26)
          {
            goto LABEL_34;
          }

          v27 = v7 - 8;
          if (__OFADD__(v7 - 16, 8))
          {
            goto LABEL_35;
          }

          if (v27 >= v26)
          {
            goto LABEL_36;
          }

          v28 = v4 + 8 * v7;
          v29 = *(v24 + 8 * v27);
          v30 = log(1.0 - *(v28 - 96));
          v31 = sqrt(v30 * -2.0);
          v32 = __sincos_stret(v29 * 6.28318531);
          *(v28 - 96) = v31 * v32.__cosval * a3 + a2;
          *(v24 + 8 * v27) = v31 * v32.__sinval * a3 + a2;
          ++v7;
          if (!--v25)
          {
            return v4;
          }
        }
      }
    }
  }

  return v4;
}

int64_t sub_19A4EB800(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 1;
    while (1)
    {
      v6 = *v4++;
      result = v5 * v6;
      if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
      {
        break;
      }

      v5 = result;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    sub_19A4EB544(result, a2, a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090, &qword_19A58FC20);
    sub_19A4EB9A0();
    return sub_19A57264C();
  }

  return result;
}

void sub_19A4EB8FC(unsigned int a1)
{
  v2 = sub_19A5730DC();
  *(v2 + 16) = 624;
  bzero((v2 + 32), 0x9C0uLL);
  v3 = 0;
  while (1)
  {
    *(v2 + 4 * v3 + 32) = a1;
    v4 = v3 + 1812433253 * (a1 ^ (a1 >> 30));
    a1 = v4 + 1;
    if (v4 == -1)
    {
      break;
    }

    if (++v3 == 624)
    {
      return;
    }
  }

  __break(1u);
}

unint64_t sub_19A4EB9A0()
{
  result = qword_1EAF9E878;
  if (!qword_1EAF9E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3090, &qword_19A58FC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E878);
  }

  return result;
}

uint64_t sub_19A4EBA04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_19A4EBA4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_19A4EBAA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_21;
  }

  if (v5)
  {
    v9 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_19A4E456C(0, v5 & ~(v5 >> 63), 0);
    if (a2 < v9 || v5 < 0)
    {
      goto LABEL_22;
    }

    v24 = v5;
    v10 = 0;
    while (v10 < v5)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_19;
      }

      if (*(a3 + 24) == 1)
      {
        do
        {
          do
          {
            v12 = (sub_19A4EB178() >> 5);
            v13 = sub_19A4EB178();
            v14 = (v12 * 67108864.0 + (v13 >> 6)) * 1.11022302e-16 + (v12 * 67108864.0 + (v13 >> 6)) * 1.11022302e-16 + -1.0;
            v15 = (sub_19A4EB178() >> 5);
            v16 = sub_19A4EB178();
            v17 = (v15 * 67108864.0 + (v16 >> 6)) * 1.11022302e-16 + (v15 * 67108864.0 + (v16 >> 6)) * 1.11022302e-16 + -1.0;
            v18 = v14 * v14 + v17 * v17;
          }

          while (v18 >= 1.0);
        }

        while (v18 == 0.0);
        v19 = log(v14 * v14 + v17 * v17);
        v20 = sqrt(v19 * -2.0 / v18);
        *(a3 + 16) = v14 * v20;
        *(a3 + 24) = 0;
        v21 = v17 * v20;
      }

      else
      {
        v21 = *(a3 + 16);
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
      }

      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_19A4E456C((v22 > 1), v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      *(v26 + 8 * v23 + 32) = v21 * a5 + a4;
      if (v9 >= a2)
      {
        goto LABEL_20;
      }

      ++v9;
      v5 = v24;
      if (v10 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_19A4EBCD8()
{
  if (*(v0 + 24) == 1)
  {
    do
    {
      do
      {
        v1 = (sub_19A4EB178() >> 5);
        v2 = sub_19A4EB178();
        v3 = (v1 * 67108864.0 + (v2 >> 6)) * 1.11022302e-16 + (v1 * 67108864.0 + (v2 >> 6)) * 1.11022302e-16 + -1.0;
        v4 = (sub_19A4EB178() >> 5);
        v5 = sub_19A4EB178();
        v6 = (v4 * 67108864.0 + (v5 >> 6)) * 1.11022302e-16 + (v4 * 67108864.0 + (v5 >> 6)) * 1.11022302e-16 + -1.0;
        v7 = v3 * v3 + v6 * v6;
      }

      while (v7 >= 1.0);
    }

    while (v7 == 0.0);
    v8 = log(v3 * v3 + v6 * v6);
    *(v0 + 16) = v3 * sqrt(v8 * -2.0 / v7);
    *(v0 + 24) = 0;
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
  }
}

uint64_t sub_19A4EBDE0(uint64_t result, double a2, double a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    v6 = 1;
    do
    {
      v7 = *v5++;
      v8 = v6 * v7;
      if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
      {
        __break(1u);
        return result;
      }

      v6 = v8;
      --v4;
    }

    while (v4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v6 = 1;
LABEL_8:
  sub_19A4EBAA8(0, v6, v3, a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090, &qword_19A58FC20);
  sub_19A4EB9A0();
  return sub_19A57264C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionUnet.loadResources()()
{
  v2 = v1;
  v19 = *(v0 + 208);
  if (v19 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v4 = 0;
    v5 = &qword_1ED824000;
    v18 = i;
    while ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](v4, v19);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v20 = v6;
      if (v5[424] != -1)
      {
        swift_once();
      }

      v7 = sub_19A5723FC();
      __swift_project_value_buffer(v7, qword_1ED82BD48);

      v8 = sub_19A5723DC();
      v9 = sub_19A57354C();

      v10 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v2;
        v16 = sub_19A31F114(v13, v14, &v21);
        i = v18;

        *(v11 + 4) = v16;
        v2 = v15;
        _os_log_impl(&dword_19A2DE000, v8, v10, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v17 = v11;
        v5 = &qword_1ED824000;
        MEMORY[0x19A902C50](v17, -1, -1);
      }

      sub_19A5735DC();

      if (!v2)
      {
        ++v4;
        if (v20 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

Swift::Void __swiftcall AppleDiffusionUnet.unloadResources()()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    v2 = sub_19A573B4C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](i, v1);
      }

      else
      {
      }

      ManagedMLModel.unloadResources()();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionUnet.prewarmResources()()
{
  v2 = v1;
  v3 = *(v0 + 208);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v5 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    v21 = v3 & 0xC000000000000001;
    v6 = &qword_1ED824000;
    v19 = i;
    while (v21)
    {
      MEMORY[0x19A901520](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

LABEL_7:
      v23 = v7;
      if (v6[424] != -1)
      {
        swift_once();
      }

      v8 = sub_19A5723FC();
      __swift_project_value_buffer(v8, qword_1ED82BD48);

      v9 = sub_19A5723DC();
      v10 = sub_19A57354C();

      v22 = v10;
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v3;
        v16 = v2;
        v17 = sub_19A31F114(v13, v14, &v24);
        i = v19;

        *(v11 + 4) = v17;
        v2 = v16;
        v3 = v15;
        _os_log_impl(&dword_19A2DE000, v9, v22, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v18 = v11;
        v6 = &qword_1ED824000;
        MEMORY[0x19A902C50](v18, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {

        return;
      }

      ManagedMLModel.unloadResources()();

      ++v5;
      if (v23 == i)
      {
        return;
      }
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_20;
    }

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

_OWORD *sub_19A4EC548(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, unint64_t a7, void *a8, float a9, float a10, uint64_t a11, char *a12, unsigned __int8 a13, char *a14, unsigned __int8 a15, uint64_t a16)
{
  v244 = a8;
  v259 = a7;
  v256 = a6;
  v255 = a5;
  v248 = a4;
  v243 = a3;
  v257 = a2;
  v242 = a1;
  v254 = a11;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v253 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v240 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v250 = &v239 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v251 = &v239 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v239 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v239 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v239 - v31;
  v33 = *(type metadata accessor for AppleDiffusionUnet(0) + 24);
  v258 = v16;
  sub_19A33546C(v16 + v33, v32, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v34 = type metadata accessor for ConcreteAdapter(0);
  v35 = *(*(v34 - 8) + 48);
  if (v35(v32, 1, v34) == 1)
  {
    v36 = v32;
LABEL_12:
    sub_19A2F3FA0(v36, &unk_1EAFA2BF0, &qword_19A58F1D0);
    goto LABEL_13;
  }

  v37 = *v32;
  sub_19A4F3F68(v32);
  if (AppleDiffusionAdapter.rawValue.getter(v37) == 0xD000000000000014 && 0x800000019A596540 == v38)
  {
  }

  else
  {
    v40 = sub_19A573F1C();

    if ((v40 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_19A33546C(v258 + v33, v29, &unk_1EAFA2BF0, &qword_19A58F1D0);
  if (v35(v29, 1, v34) == 1)
  {
    v36 = v29;
    goto LABEL_12;
  }

  v51 = *&v29[*(v34 + 24) + 232];

  sub_19A4F3F68(v29);
  if (v51)
  {
    if (*(v51 + 16))
    {
      sub_19A31F6BC(3226162, 0xE300000000000000);
      v53 = v52;

      if (v53)
      {
        v241 = 0;
        v42 = v258;
        goto LABEL_44;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v41 = v258 + v33;
  v42 = v258;
  sub_19A33546C(v41, v26, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v43 = v35(v26, 1, v34);
  v44 = v254;
  if (v43 == 1)
  {
    sub_19A2F3FA0(v26, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v45 = v259;
  }

  else
  {
    v47 = *v26;
    sub_19A4F3F68(v26);
    if (AppleDiffusionAdapter.rawValue.getter(v47) == 0x63735F656C797473 && v48 == 0xEE00656C62626972)
    {

      v46 = 2;
      goto LABEL_43;
    }

    v50 = sub_19A573F1C();

    v45 = v259;
    if (v50)
    {
      goto LABEL_30;
    }
  }

  if (!v45)
  {
    goto LABEL_18;
  }

  if (!(v45 >> 62))
  {
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v46 = 2;
    goto LABEL_43;
  }

  if (sub_19A573B4C() > 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (!v44)
  {
    goto LABEL_21;
  }

  if (v44 >> 62)
  {
    if (sub_19A573B4C())
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v45)
    {
      if (v45 >> 62)
      {
        if (sub_19A573B4C())
        {
          goto LABEL_24;
        }
      }

      else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }
    }

    v46 = *(v42 + 194);
    goto LABEL_43;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_24:
  v46 = 3;
LABEL_43:
  v241 = v46;
LABEL_44:
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_19A576E20;
  *(v54 + 32) = a9;
  *(v54 + 36) = a9;
  v263 = v54;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  v55 = v251;
  v247 = v58;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0, &unk_19A58F800);
  inited = swift_initStackObject();
  inited[1] = xmmword_19A57A9D0;
  v57 = v42[3];
  *(inited + 4) = v42[2];
  v245 = (inited + 2);
  *(inited + 5) = v57;
  LOBYTE(v58) = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  v59 = *(v253 + 16);
  v60 = v250;
  v61 = v42;
  v62 = v252;
  v59(v250, v55, v252);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);

  *(inited + 6) = sub_19A57351C();
  v63 = *(v61 + 40);
  *(inited + 7) = *(v61 + 32);
  *(inited + 8) = v63;
  v59(v60, v248, v62);

  *(inited + 9) = sub_19A57351C();
  v64 = *(v61 + 56);
  *(inited + 10) = *(v61 + 48);
  *(inited + 11) = v64;
  v59(v60, v255, v62);

  *(inited + 12) = sub_19A57351C();
  v65 = *(v61 + 72);
  *(inited + 13) = *(v61 + 64);
  *(inited + 14) = v65;
  v59(v60, v256, v62);

  *(inited + 15) = sub_19A57351C();
  v66 = sub_19A4E7C6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE8, &unk_19A58FE80);
  swift_arrayDestroy();
  v265 = v66;
  v67 = v257;
  if ((v257 & 0x100000000) != 0)
  {
    v68 = v61;
  }

  else
  {
    v68 = v61;
    if (*(v61 + 192) == 1)
    {
      v69 = *(v61 + 128);
      inited = *(v61 + 136);
      v70 = v246;
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_19A576E10;
      *(v71 + 32) = v67;
      v263 = v71;
      sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6340]);

      v72 = v249;
      v73 = sub_19A57350C();
      if (v72)
      {
LABEL_55:
        (*(v253 + 8))(v251, v252);

        return inited;
      }

      v249 = 0;
      v169 = v265;
      v58 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v263 = v169;
      sub_19A5454C0(v58, v69, inited, isUniquelyReferenced_nonNull_native);

      v66 = v263;
      v265 = v263;
      goto LABEL_50;
    }
  }

  v70 = v246;
LABEL_50:
  if (*(v68 + 193) == 1)
  {
    v58 = *(v68 + 144);
    inited = *(v68 + 152);
    v74 = v243;
    if ((v243 & 0x100000000) != 0)
    {
      v263 = &unk_1F0DB57B0;
    }

    else
    {
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_19A576E10;
      *(v75 + 32) = v74;
      v263 = v75;
    }

    sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6340]);

    v76 = v249;
    v77 = sub_19A57350C();
    if (v76)
    {
      goto LABEL_55;
    }

    v249 = 0;
    v78 = v265;
    v79 = v77;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v78;
    sub_19A5454C0(v79, v58, inited, v80);

    v66 = v263;
    v265 = v263;
  }

  v81 = v259;
  if (v259)
  {
    inited = (v259 & 0xFFFFFFFFFFFFFF8);
    if (v259 >> 62)
    {
      goto LABEL_158;
    }

    v82 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:
    if (v82)
    {
      v250 = inited;
      v83 = v68;
      v68 = 0;
      v84 = *(v83 + 80);
      v256 = (v81 & 0xC000000000000001);
      v257 = v84;
      v70 = v84 + 40;
      v255 = v82;
      while (1)
      {
        if (v68 >= *(v257 + 16))
        {
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
          v82 = sub_19A573B4C();
          if (v82 < 0)
          {
            __break(1u);
            goto LABEL_160;
          }

          goto LABEL_60;
        }

        v58 = *(v70 - 8);
        inited = *v70;
        if (v256)
        {

          v87 = MEMORY[0x19A901520](v68, v81);
        }

        else
        {
          if (v68 >= *(v250 + 2))
          {
            goto LABEL_153;
          }

          v88 = *(v81 + 8 * v68 + 32);

          v87 = v88;
        }

        v89 = v87;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v263 = v66;
        v91 = sub_19A31F6BC(v58, inited);
        v92 = v66[2];
        v93 = (v90 & 1) == 0;
        v94 = v92 + v93;
        if (__OFADD__(v92, v93))
        {
          goto LABEL_149;
        }

        v95 = v90;
        if (v66[3] >= v94)
        {
          if (v81)
          {
            if ((v90 & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            sub_19A554C80();
            if ((v95 & 1) == 0)
            {
              goto LABEL_76;
            }
          }
        }

        else
        {
          sub_19A550DB0(v94, v81);
          v96 = sub_19A31F6BC(v58, inited);
          if ((v95 & 1) != (v97 & 1))
          {
            goto LABEL_214;
          }

          v91 = v96;
          if ((v95 & 1) == 0)
          {
LABEL_76:
            v66 = v263;
            v263[(v91 >> 6) + 8] |= 1 << v91;
            v98 = (v66[6] + 16 * v91);
            *v98 = v58;
            v98[1] = inited;
            *(v66[7] + 8 * v91) = v89;
            v99 = v66[2];
            v100 = __OFADD__(v99, 1);
            v101 = v99 + 1;
            if (v100)
            {
              goto LABEL_152;
            }

            v66[2] = v101;
            goto LABEL_63;
          }
        }

        v66 = v263;
        v85 = v263[7];
        v86 = *(v85 + 8 * v91);
        *(v85 + 8 * v91) = v89;

LABEL_63:
        ++v68;
        v70 += 16;
        v81 = v259;
        if (v255 == v68)
        {
          v265 = v66;
          v68 = v258;
          break;
        }
      }
    }
  }

  else
  {
    v102 = *(v68 + 176);
    v105 = *(v102 + 64);
    v104 = v102 + 64;
    v103 = v105;
    v106 = 1 << *(*(v68 + 176) + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & v103;
    v81 = (v106 + 63) >> 6;
    v259 = *(v68 + 176);

    v109 = 0;
    v257 = v104;
    while (v108)
    {
      v70 = v109;
LABEL_90:
      v113 = __clz(__rbit64(v108)) | (v70 << 6);
      v114 = (*(v259 + 48) + 16 * v113);
      v68 = *v114;
      v58 = v114[1];
      inited = *(*(v259 + 56) + 8 * v113);

      v115 = swift_isUniquelyReferenced_nonNull_native();
      v263 = v66;
      v116 = sub_19A31F6BC(v68, v58);
      v118 = v66[2];
      v119 = (v117 & 1) == 0;
      v100 = __OFADD__(v118, v119);
      v120 = v118 + v119;
      if (v100)
      {
        goto LABEL_154;
      }

      v121 = v117;
      if (v66[3] >= v120)
      {
        if ((v115 & 1) == 0)
        {
          v126 = v116;
          sub_19A554C80();
          v116 = v126;
        }
      }

      else
      {
        sub_19A550DB0(v120, v115);
        v116 = sub_19A31F6BC(v68, v58);
        if ((v121 & 1) != (v122 & 1))
        {
LABEL_214:
          sub_19A57404C();
          __break(1u);
LABEL_215:

          __break(1u);
          return result;
        }
      }

      v108 &= v108 - 1;
      if (v121)
      {
        v110 = v116;

        v111 = v263;
        v112 = v263[7];
        v58 = *(v112 + 8 * v110);
        *(v112 + 8 * v110) = inited;
        v66 = v111;
      }

      else
      {
        v66 = v263;
        v263[(v116 >> 6) + 8] |= 1 << v116;
        v123 = (v66[6] + 16 * v116);
        *v123 = v68;
        v123[1] = v58;
        *(v66[7] + 8 * v116) = inited;

        v124 = v66[2];
        v100 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v100)
        {
          goto LABEL_156;
        }

        v66[2] = v125;
      }

      v109 = v70;
      v68 = v258;
      v104 = v257;
    }

    while (1)
    {
      v70 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        goto LABEL_150;
      }

      if (v70 >= v81)
      {
        break;
      }

      v108 = *(v104 + 8 * v70);
      ++v109;
      if (v108)
      {
        goto LABEL_90;
      }
    }

    v265 = v66;
  }

  v70 = v254;
  if (!v254)
  {
    v144 = *(v68 + 184);
    v147 = *(v144 + 64);
    v146 = v144 + 64;
    v145 = v147;
    v148 = 1 << *(*(v68 + 184) + 32);
    v149 = -1;
    if (v148 < 64)
    {
      v149 = ~(-1 << v148);
    }

    v150 = v149 & v145;
    v81 = (v148 + 63) >> 6;
    v259 = *(v68 + 184);

    v151 = 0;
    v257 = v146;
    while (v150)
    {
      v70 = v151;
LABEL_121:
      v155 = __clz(__rbit64(v150)) | (v70 << 6);
      v156 = (*(v259 + 48) + 16 * v155);
      v68 = *v156;
      v58 = v156[1];
      inited = *(*(v259 + 56) + 8 * v155);

      v157 = swift_isUniquelyReferenced_nonNull_native();
      v263 = v66;
      v158 = sub_19A31F6BC(v68, v58);
      v160 = v66[2];
      v161 = (v159 & 1) == 0;
      v100 = __OFADD__(v160, v161);
      v162 = v160 + v161;
      if (v100)
      {
        goto LABEL_155;
      }

      v163 = v159;
      if (v66[3] >= v162)
      {
        if ((v157 & 1) == 0)
        {
          v168 = v158;
          sub_19A554C80();
          v158 = v168;
        }
      }

      else
      {
        sub_19A550DB0(v162, v157);
        v158 = sub_19A31F6BC(v68, v58);
        if ((v163 & 1) != (v164 & 1))
        {
          goto LABEL_214;
        }
      }

      v150 &= v150 - 1;
      if (v163)
      {
        v152 = v158;

        v153 = v263;
        v154 = v263[7];
        v58 = *(v154 + 8 * v152);
        *(v154 + 8 * v152) = inited;
        v66 = v153;
      }

      else
      {
        v66 = v263;
        v263[(v158 >> 6) + 8] |= 1 << v158;
        v165 = (v66[6] + 16 * v158);
        *v165 = v68;
        v165[1] = v58;
        *(v66[7] + 8 * v158) = inited;

        v166 = v66[2];
        v100 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v100)
        {
          goto LABEL_157;
        }

        v66[2] = v167;
      }

      v151 = v70;
      v68 = v258;
      v146 = v257;
    }

    while (1)
    {
      v70 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        goto LABEL_151;
      }

      if (v70 >= v81)
      {
        v257 = v66;
        v265 = v66;

        goto LABEL_185;
      }

      v150 = *(v146 + 8 * v70);
      ++v151;
      if (v150)
      {
        goto LABEL_121;
      }
    }
  }

  v68 = v244;
  if (!v244)
  {

    goto LABEL_142;
  }

  LOBYTE(v58) = a13;
  sub_19A4F791C(v244, v254);
  v128 = qword_1ED824D40;
  v81 = v68;
  if (v128 != -1)
  {
    goto LABEL_212;
  }

  while (1)
  {
    v129 = sub_19A5723FC();
    __swift_project_value_buffer(v129, qword_1ED82BD48);
    v130 = sub_19A5723DC();
    v131 = sub_19A57353C();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134217984;
      *(v132 + 4) = a10;
      _os_log_impl(&dword_19A2DE000, v130, v131, "Determining IPA scale. Current stepProgression: %f", v132, 0xCu);
      v133 = v132;
      v70 = v254;
      MEMORY[0x19A902C50](v133, -1, -1);
    }

    if ((v58 & 1) != 0 || (v134 = a12, *&a12 <= a10) && *(&a12 + 1) >= a10)
    {
      v135 = v258[11];
      v58 = v258[12];
      v136 = v81;

      v137 = v265;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v263 = v137;
      sub_19A5454C0(v136, v135, v58, v138);

      v265 = v263;
      v139 = v136;
      v140 = sub_19A5723DC();
      LOBYTE(v58) = sub_19A57353C();

      if (os_log_type_enabled(v140, v58))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412290;
        v143 = [v139 objectAtIndexedSubscript_];
        *(v141 + 4) = v143;
        *v142 = v143;
        _os_log_impl(&dword_19A2DE000, v140, v58, "Using scale value of %@", v141, 0xCu);
        sub_19A2F3FA0(v142, &qword_1EAF9FD28, &qword_19A577340);
        MEMORY[0x19A902C50](v142, -1, -1);
        MEMORY[0x19A902C50](v141, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v171 = v258[11];
      v58 = v258[12];
      v172 = v258[23];
      v173 = *(v172 + 16);

      if (v173 && (v174 = sub_19A31F6BC(v171, v58), (v175 & 1) != 0))
      {
        v176 = *(*(v172 + 56) + 8 * v174);
        v177 = v176;
        v178 = v176;
      }

      else
      {
        v178 = 0;
      }

      sub_19A549A94(v178, v171, v58);
      v179 = sub_19A5723DC();
      v180 = sub_19A57353C();
      if (os_log_type_enabled(v179, v180))
      {
        v58 = swift_slowAlloc();
        *v58 = 134218496;
        *(v58 + 4) = a10;
        *(v58 + 12) = 2048;
        *(v58 + 14) = *&v134;
        *(v58 + 22) = 2048;
        *(v58 + 24) = *(&v134 + 1);
        _os_log_impl(&dword_19A2DE000, v179, v180, "stepProgression %f is outside the range of [%f, %f], so using zero IPA scale", v58, 0x20u);
        MEMORY[0x19A902C50](v58, -1, -1);
      }
    }

    v68 = v244;
LABEL_142:
    v81 = v70 >> 62;
    if (v70 >> 62)
    {
LABEL_160:
      if (sub_19A573B4C() > 5)
      {
LABEL_144:

        v263 = 0;
        v264 = 0xE000000000000000;
        sub_19A57395C();
        if (v81)
        {
          v181 = sub_19A573B4C();
        }

        else
        {
          v181 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v261 = v181;
        v182 = sub_19A573EDC();
        v184 = v183;

        v263 = v182;
        v264 = v184;
        MEMORY[0x19A900A50](0xD00000000000002DLL, 0x800000019A59CCC0);
        v261 = 5;
        v185 = sub_19A573EDC();
        MEMORY[0x19A900A50](v185);

        MEMORY[0x19A900A50](46, 0xE100000000000000);
        v186 = v263;
        v187 = v264;
        sub_19A4F78C8();
        v188 = swift_allocError();
        *v189 = v186;
        *(v189 + 8) = v187;
        inited = v188;
        *(v189 + 16) = 1;
        swift_willThrow();

        (*(v253 + 8))(v251, v252);
        return inited;
      }

      a12 = sub_19A573B4C();
    }

    else
    {
      a12 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a12 > 5)
      {
        goto LABEL_144;
      }
    }

    if (a12)
    {
      v190 = 0;
      v259 = v70 & 0xC000000000000001;
      v257 = v70 & 0xFFFFFFFFFFFFFF8;
      v256 = a12;
      while (1)
      {
        if (v259)
        {
          v194 = MEMORY[0x19A901520](v190, v70);
        }

        else
        {
          if (v190 >= *(v257 + 16))
          {
            goto LABEL_208;
          }

          v194 = *(v70 + 8 * v190 + 32);
        }

        v70 = v194;
        v81 = v190 + 1;
        if (__OFADD__(v190, 1))
        {
          break;
        }

        v58 = v258[13];
        a12 = v258[14];
        v263 = v58;
        v264 = a12;
        if (v190)
        {
          v261 = 95;
          v262 = 0xE100000000000000;
          v260 = v190 + 1;

          v195 = sub_19A573EDC();
          MEMORY[0x19A900A50](v195);

          MEMORY[0x19A900A50](v261, v262);

          v58 = v263;
          a12 = v264;
        }

        else
        {
        }

        v196 = v70;
        v197 = v265;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v261 = v197;
        v199 = sub_19A31F6BC(v58, a12);
        v200 = *(v197 + 16);
        v201 = (v198 & 1) == 0;
        v202 = v200 + v201;
        if (__OFADD__(v200, v201))
        {
          goto LABEL_209;
        }

        v203 = v198;
        if (*(v197 + 24) >= v202)
        {
          if ((v70 & 1) == 0)
          {
            sub_19A554C80();
          }
        }

        else
        {
          sub_19A550DB0(v202, v70);
          v204 = sub_19A31F6BC(v58, a12);
          if ((v203 & 1) != (v205 & 1))
          {
            goto LABEL_214;
          }

          v199 = v204;
        }

        v70 = v254;
        if (v203)
        {

          v191 = v261;
          v192 = *(v261 + 56);
          v193 = *(v192 + 8 * v199);
          *(v192 + 8 * v199) = v196;
        }

        else
        {
          v191 = v261;
          *(v261 + 8 * (v199 >> 6) + 64) |= 1 << v199;
          v206 = (v191[6] + 16 * v199);
          *v206 = v58;
          v206[1] = a12;
          *(v191[7] + 8 * v199) = v196;

          v207 = v191[2];
          v100 = __OFADD__(v207, 1);
          v208 = v207 + 1;
          if (v100)
          {
            goto LABEL_210;
          }

          v191[2] = v208;
        }

        v265 = v191;
        ++v190;
        a12 = v256;
        if (v81 == v256)
        {
          goto LABEL_184;
        }
      }

      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v191 = v265;
LABEL_184:
    v257 = v191;
    swift_bridgeObjectRelease_n();

    v68 = v258;
LABEL_185:
    v209 = v257;

    if (a14)
    {
      v210 = a14;
    }

    else
    {
      v210 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
    }

    v211 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v209;
    v212 = v249;
    sub_19A4F5724(v210, sub_19A4F56D8, 0, v211, &v263);
    if (v212)
    {
      goto LABEL_215;
    }

    v213 = a15;

    v215 = v263;
    MEMORY[0x1EEE9AC00](v214);
    *(&v239 - 2) = v68;
    *(&v239 - 1) = v215;
    v216 = sub_19A4DAD74(sub_19A4F78A8, (&v239 - 4), v242);
    LOBYTE(v58) = 0;

    a12 = sub_19A4F0E00(v216, a15 & 1);

    v81 = *(a12 + 2);
    if (!v81)
    {
      break;
    }

    v263 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v217 = 0;
    v70 = 0x1E695F000uLL;
    while (v217 < *(a12 + 2))
    {

      v219 = sub_19A543CE8(v218);
      v220 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      sub_19A544CF4(v219);
      ++v217;

      sub_19A573A2C();
      v58 = v263[2];
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      if (v81 == v217)
      {

        v221 = v263;
        goto LABEL_195;
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    swift_once();
  }

  v221 = MEMORY[0x1E69E7CC0];
LABEL_195:

  if (v221 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
    sub_19A573B8C();
  }

  else
  {
    sub_19A573FEC();
  }

  v222 = objc_allocWithZone(MEMORY[0x1E695FE30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
  v223 = sub_19A57307C();

  v224 = [v222 initWithFeatureProviderArray_];

  v225 = swift_slowAlloc();
  *v225 = 0;
  v226 = sub_19A57234C();
  LOBYTE(v223) = sub_19A57361C();
  v227 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v226, v223, v227, "unet-predictions-only", "", v225, 2u);
  v230 = sub_19A4F2268(v241, v224, a16, v228);
  v259 = v224;
  v231 = sub_19A57360C();
  v232 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v226, v231, v232, "unet-predictions-only", "", v225, 2u);

  MEMORY[0x19A902C50](v225, -1, -1);
  v233 = *(v230 + 16);
  if (v233)
  {
    LODWORD(v256) = a15;
    v263 = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, v233, 0);
    v234 = 0;
    v235 = v263;
    v236 = v240;
    do
    {
      v261 = v234;
      sub_19A4F2A64(&v261, v230);
      v263 = v235;
      v238 = v235[2];
      v237 = v235[3];
      if (v238 >= v237 >> 1)
      {
        sub_19A4E436C((v237 > 1), v238 + 1, 1);
        v235 = v263;
      }

      ++v234;
      v235[2] = v238 + 1;
      (*(v253 + 32))(v235 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v238, v236, v252);
    }

    while (v233 != v234);

    v213 = v256;
  }

  else
  {

    v235 = MEMORY[0x1E69E7CC0];
  }

  inited = sub_19A4F2BF0(v235, v213 & 1);

  (*(v253 + 8))(v251, v252);
  return inited;
}

void AppleDiffusionUnet.defaultGeometricConditioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = *(v0 + 168);
  v5 = sub_19A4EF400();
  v6 = type metadata accessor for AppleDiffusionUnet(0);
  sub_19A33546C(v0 + *(v6 + 24), v3, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v7 = type metadata accessor for ConcreteAdapter(0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {

    sub_19A2F3FA0(v3, &unk_1EAFA2BF0, &qword_19A58F1D0);
LABEL_18:
    if (*(v4 + 16) >= 2uLL)
    {
      if (*(v4 + 40) == 6)
      {
        v23 = &unk_1F0DB5538;
      }

      else
      {
        v23 = &unk_1F0DB55A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
      sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
LABEL_23:
      sub_19A57264C();
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = *&v3[*(v7 + 24) + 232];

  sub_19A4F3F68(v3);
  if (!v8)
  {
    goto LABEL_17;
  }

  if (!*(v8 + 16))
  {

    goto LABEL_17;
  }

  v9 = sub_19A31F6BC(v5, 0xE300000000000000);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  v13 = v12[2];
  if (!v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v12[4];
  v14 = v12[5];
  v16 = v15 * v14;
  if ((v15 * v14) >> 64 != (v15 * v14) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v12[6];

  if ((v15 * v17) >> 64 != (v15 * v17) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v4 + 16) >= 2uLL)
  {
    v18 = v16;
    v19 = (v15 * v17);
    v20 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
    v21 = swift_allocObject();
    if (v20 == 6)
    {
      *(v21 + 16) = xmmword_19A58BFA0;
      *(v21 + 32) = v18;
      *(v21 + 36) = v19;
      *(v21 + 40) = 0;
      *(v21 + 48) = v18;
      *(v21 + 52) = v19;
    }

    else
    {
      *(v21 + 16) = xmmword_19A57A9D0;
      *(v21 + 32) = v18;
      *(v21 + 36) = v19;
      *(v21 + 40) = 0;
    }

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
    sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

void *sub_19A4EE7FC(unint64_t a1, float a2)
{
  v4 = v2;
  v6 = *(v2 + 184);
  if (*(v6 + 16))
  {
    v8 = sub_19A31F6BC(*(v4 + 88), *(v4 + 96));
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);
      v11 = [v10 shape];
      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v12 = sub_19A57308C();

      v13 = objc_allocWithZone(MEMORY[0x1E695FED0]);
      v14 = sub_19A52A8D8(v12, 65552);
      if (v3)
      {

        return v12;
      }

      v12 = v14;
      if (v14)
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v26 = a2;
        v27 = [v25 initWithFloat_];
        [v12 fillWithNumber_];
      }

      if (a1 >> 62)
      {
        goto LABEL_19;
      }

LABEL_6:
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v12 = 0;
  if (!(a1 >> 62))
  {
    goto LABEL_6;
  }

LABEL_19:
  v15 = sub_19A573B4C();
LABEL_7:
  if (!v15)
  {
    return v12;
  }

  result = sub_19A573A5C();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v28 = v12;
    v17 = objc_opt_self();
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A901520](v18, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_19A58F190;
      *(v21 + 32) = v20;
      *(v21 + 40) = v20;
      sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
      v22 = v20;
      v23 = sub_19A57307C();

      v24 = [v17 multiArrayByConcatenatingMultiArrays:v23 alongAxis:0 dataType:65552];

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
    }

    while (v15 != v18);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4EEB04(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4EEB24, 0, 0);
}

uint64_t sub_19A4EEB24()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19A4EEC40;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B8, &qword_19A58FE58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 modelDescriptionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A4EEC40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_19A4EED70;
  }

  else
  {
    v2 = sub_19A4EED50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4EED70(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  **(v1 + 152) = 0;
  v3 = *(v1 + 8);

  return v3();
}

void *sub_19A4EEDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3138, &qword_19A58FEE8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FEF8, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v15[1] = *(v7 + 16);
      sub_19A4F7D5C(v14, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      swift_willThrowTypedImpl();
    }

    else
    {
    }

    return v14;
  }

  return result;
}

void *sub_19A4EEFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B0, &qword_19A58FE40);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FE50, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v16[1] = *(v7 + 16);
      sub_19A2EA56C(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      swift_willThrowTypedImpl();
    }

    else
    {
      v15 = v14;
    }

    return v14;
  }

  return result;
}

void *sub_19A4EF1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C0, &qword_19A58FE60);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FE70, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v16[1] = *(v7 + 16);
      sub_19A2EA56C(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
      swift_willThrowTypedImpl();
    }

    else
    {
      v15 = v14;
    }

    return v14;
  }

  return result;
}

uint64_t sub_19A4EF400()
{
  v1 = 3226161;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for AppleDiffusionUnet(0) + 24);
  sub_19A33546C(v0 + v8, v7, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v9 = type metadata accessor for ConcreteAdapter(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    v11 = v7;
LABEL_12:
    sub_19A2F3FA0(v11, &unk_1EAFA2BF0, &qword_19A58F1D0);
    return v1;
  }

  v12 = *v7;
  sub_19A4F3F68(v7);
  if (AppleDiffusionAdapter.rawValue.getter(v12) == 0xD000000000000014 && 0x800000019A596540 == v13)
  {
  }

  else
  {
    v15 = sub_19A573F1C();

    if ((v15 & 1) == 0)
    {
      return v1;
    }
  }

  sub_19A33546C(v0 + v8, v4, &unk_1EAFA2BF0, &qword_19A58F1D0);
  if (v10(v4, 1, v9) == 1)
  {
    v11 = v4;
    goto LABEL_12;
  }

  v17 = *&v4[*(v9 + 24) + 232];

  sub_19A4F3F68(v4);
  if (v17)
  {
    if (*(v17 + 16))
    {
      sub_19A31F6BC(3226162, 0xE300000000000000);
      v19 = v18;

      if (v19)
      {
        return 3226162;
      }
    }

    else
    {
    }
  }

  return v1;
}

double sub_19A4EF65C@<D0>(char *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *, char *, char *)@<X8>)
{
  v136 = a5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3098, &unk_19A58FE08);
  MEMORY[0x1EEE9AC00](v149);
  v159 = (v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v148 = v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8, &qword_19A579A50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v152 = v135 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v145 = v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v135 - v17;
  v19 = sub_19A570EAC();
  v153 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v139 = v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v147 = v135 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v135 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v135 - v28;
  v137 = a2;
  [a2 copy];
  sub_19A57384C();
  swift_unknownObjectRelease();
  sub_19A2F1600(0, &qword_1EAF9E798, 0x1E695FEB0);
  swift_dynamicCast();
  v30 = v155;
  [v155 setExperimentalMLE5EngineUsage_];
  sub_19A33546C(a3, v18, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v31 = type metadata accessor for ConcreteAdapter(0);
  v32 = (*(*(v31 - 8) + 48))(v18, 1, v31);
  v150 = a1;
  v146 = a4;
  if (v32 == 1)
  {
    sub_19A2F3FA0(v18, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v33 = v153;
  }

  else
  {
    v34 = *(v31 + 20);
    v151 = v30;
    v35 = v153;
    v138 = a3;
    v36 = *(v153 + 16);
    v36(v25, &v18[v34], v19);
    sub_19A4F3F68(v18);
    (*(v35 + 32))(v29, v25, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30A0, &unk_19A58FE18);
    v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D20, &qword_19A58F6D0) - 8);
    v38 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_19A576E10;
    v40 = (v39 + v38);
    a4 = v146;
    v41 = v37[14];
    *v40 = 1634889580;
    *(v40 + 1) = 0xE400000000000000;
    v36(&v40[v41], v29, v19);
    a3 = v138;
    a1 = v150;
    sub_19A4E7E90(v39);
    swift_setDeallocating();
    sub_19A2F3FA0(v40, &qword_1EAFA2D20, &qword_19A58F6D0);
    swift_deallocClassInstance();
    v42 = sub_19A572ADC();

    v30 = v151;
    [v151 setE5rtMutableMILWeightURLs_];

    v33 = v153;
    (*(v153 + 8))(v29, v19);
  }

  v140 = *(a1 + 2);
  v43 = v152;
  if (v140)
  {
    (*(v33 + 16))(v152, &a1[(*(v33 + 80) + 32) & ~*(v33 + 80)], v19);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  (*(v33 + 56))(v43, v44, 1, v19);
  v45 = v145;
  sub_19A33546C(a3, v145, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v46 = v154;
  sub_19A4F59AC(v43, v45, v157);
  if (v46)
  {
    sub_19A2F3FA0(a3, &unk_1EAFA2BF0, &qword_19A58F1D0);

    return result;
  }

  v135[0] = 0;
  v151 = v30;
  v138 = a3;
  v48 = &unk_1F0DB5A58;
  v49 = *(a1 + 2);
  if (v49 == 1)
  {
    v48 = &unk_1F0DB5A20;
  }

  v135[1] = v48;
  v50 = *(a4 + 16);
  v152 = v19;
  if (v50)
  {
    v154 = MEMORY[0x1E69E7CC0];
    v51 = *(&v158 + 1);
    v45 = 32;
    do
    {
      if (*(v51 + 16))
      {
        v54 = sub_19A4F3A80(*(a4 + v45));
        if (v55)
        {
          v56 = (*(v51 + 56) + 16 * v54);
          v58 = *v56;
          v57 = v56[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_19A31CE20(0, *(v154 + 2) + 1, 1, v154);
          }

          v60 = *(v154 + 2);
          v59 = *(v154 + 3);
          v19 = v60 + 1;
          if (v60 >= v59 >> 1)
          {
            v154 = sub_19A31CE20((v59 > 1), v60 + 1, 1, v154);
          }

          v52 = v154;
          *(v154 + 2) = v19;
          v53 = &v52[16 * v60];
          *(v53 + 4) = v58;
          *(v53 + 5) = v57;
          a4 = v146;
        }
      }

      ++v45;
      --v50;
    }

    while (v50);

    goto LABEL_22;
  }

  v62 = *(&v158 + 1);
  if (*(*(&v158 + 1) + 16))
  {
    v81 = sub_19A4F3A80(0);
    if ((v82 & 1) == 0)
    {
      v154 = MEMORY[0x1E69E7CC0];
      v61 = v138;
      goto LABEL_44;
    }

    v83 = *(v62 + 7) + 16 * v81;
    v61 = *v83;
    v33 = *(v83 + 8);

    v154 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = *(v154 + 2);
    v84 = *(v154 + 3);
    v19 = v45 + 1;
    if (v45 < v84 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

  v154 = MEMORY[0x1E69E7CC0];
  v61 = v138;
  while (1)
  {
    v146 = *(a1 + 2);
    if (v146)
    {
      v156[0] = MEMORY[0x1E69E7CC0];

      v62 = v156;
      sub_19A573A5C();
      v63 = 0;
      v145 = *(a1 + 2);
      v144 = &a1[(*(v33 + 80) + 32) & ~*(v33 + 80)];
      v64 = &unk_1F0DB5A68;
      v65 = &unk_1F0DB5A78;
      if (v49 == 1)
      {
        v65 = &unk_1F0DB5A40;
        v64 = &unk_1F0DB5A30;
      }

      v66 = *v64;
      v143 = v33 + 16;
      v142 = v33 + 32;
      v141 = v66 & ~(v66 >> 63);
      v61 = (v65 + 16);
      while (v145 != v63)
      {
        if (v63 >= *(a1 + 2))
        {
          goto LABEL_66;
        }

        v67 = v149;
        v68 = *(v149 + 48);
        v69 = v153;
        v62 = *(v153 + 16);
        v70 = v148;
        a1 = v152;
        v45 = v143;
        v62(&v148[v68], &v144[*(v153 + 72) * v63], v152);
        *v159 = v63;
        v33 = *(v67 + 48);
        v71 = *(v69 + 32);
        v19 = v159;
        v72 = &v70[v68];
        v73 = v147;
        v71(v159 + v33, v72, a1);
        v62(v73, (v19 + v33), a1);
        if (v141 == v63)
        {
          goto LABEL_67;
        }

        ++v63;
        v74 = *(v61 - 2);
        v75 = *(v61 - 1);
        v76 = *v61;
        v61 += 24;
        type metadata accessor for ManagedMLModel(0);
        swift_allocObject();
        v77 = v154;

        v78 = v151;
        v79 = v77;
        v45 = v146;
        v80 = v75;
        a1 = v150;
        ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v73, v78, v79, v74, v80, v76);
        sub_19A2F3FA0(v19, &qword_1EAFA3098, &unk_19A58FE08);
        v62 = v156;
        sub_19A573A2C();
        v33 = *(v156[0] + 16);
        sub_19A573A6C();
        sub_19A573A7C();
        sub_19A573A3C();
        if (v45 == v63)
        {

          v33 = v156[0];
          v61 = v138;
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
LABEL_37:
      v62 = v136;
      *(v136 + 26) = v33;
      if (!(v33 >> 62))
      {
        v87 = v153;
        if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        goto LABEL_39;
      }
    }

    v119 = sub_19A573B4C();
    v87 = v153;
    if (!v119)
    {
LABEL_69:
      sub_19A4F74E0(v157);
      if (v140)
      {
        v149 = v33;
        v121 = *(v87 + 16);
        v120 = v87 + 16;
        v159 = v121;
        v122 = &a1[(*(v120 + 64) + 32) & ~*(v120 + 64)];
        v123 = *(v120 + 56);
        v124 = (v120 - 8);
        v125 = MEMORY[0x1E69E7CC0];
        do
        {
          v126 = v139;
          v127 = v152;
          v159(v139, v122, v152);
          v128 = sub_19A570E5C();
          v130 = v129;
          (*v124)(v126, v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_19A31CE20(0, *(v125 + 2) + 1, 1, v125);
          }

          v132 = *(v125 + 2);
          v131 = *(v125 + 3);
          if (v132 >= v131 >> 1)
          {
            v125 = sub_19A31CE20((v131 > 1), v132 + 1, 1, v125);
          }

          *(v125 + 2) = v132 + 1;
          v133 = &v125[16 * v132];
          *(v133 + 4) = v128;
          *(v133 + 5) = v130;
          v122 += v123;
          --v140;
        }

        while (v140);
      }

      else
      {

        v125 = MEMORY[0x1E69E7CC0];
      }

      sub_19A4E6F34();
      swift_allocError();
      *v134 = v125;
      *(v134 + 8) = 0;
      *(v134 + 16) = 2;
      swift_willThrow();

      sub_19A2F3FA0(v138, &unk_1EAFA2BF0, &qword_19A58F1D0);

      return result;
    }

LABEL_39:
    if ((v33 & 0xC000000000000001) != 0)
    {
      break;
    }

    v49 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v49)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_81:
    v154 = sub_19A31CE20((v84 > 1), v19, 1, v154);
LABEL_35:
    v85 = v154;
    *(v154 + 2) = v19;
    v86 = &v85[16 * v45];
    *(v86 + 4) = v61;
    *(v86 + 5) = v33;
    v61 = v138;
    v33 = v153;
LABEL_44:
    if (*(v62 + 2))
    {
      v95 = sub_19A4F3A80(1);
      if (v96)
      {
        v97 = (*(v62 + 7) + 16 * v95);
        v98 = *v97;
        v99 = v97[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_19A31CE20(0, *(v154 + 2) + 1, 1, v154);
        }

        v45 = *(v154 + 2);
        v100 = *(v154 + 3);
        v19 = v45 + 1;
        if (v45 >= v100 >> 1)
        {
          v154 = sub_19A31CE20((v100 > 1), v45 + 1, 1, v154);
        }

        v101 = v154;
        *(v154 + 2) = v19;
        v102 = &v101[16 * v45];
        *(v102 + 4) = v98;
        *(v102 + 5) = v99;
        v61 = v138;
        v33 = v153;
      }

      if (*(v62 + 2))
      {
        v103 = sub_19A4F3A80(2);
        if (v104)
        {
          v105 = (*(v62 + 7) + 16 * v103);
          v106 = *v105;
          v107 = v105[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v154 = sub_19A31CE20(0, *(v154 + 2) + 1, 1, v154);
          }

          v45 = *(v154 + 2);
          v108 = *(v154 + 3);
          v19 = v45 + 1;
          if (v45 >= v108 >> 1)
          {
            v154 = sub_19A31CE20((v108 > 1), v45 + 1, 1, v154);
          }

          v109 = v154;
          *(v154 + 2) = v19;
          v110 = &v109[16 * v45];
          *(v110 + 4) = v106;
          *(v110 + 5) = v107;
          v61 = v138;
          v33 = v153;
        }

        if (*(v62 + 2))
        {
          v111 = sub_19A4F3A80(3);
          if (v112)
          {
            v113 = (*(v62 + 7) + 16 * v111);
            v115 = *v113;
            v114 = v113[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v154 = sub_19A31CE20(0, *(v154 + 2) + 1, 1, v154);
            }

            v45 = *(v154 + 2);
            v116 = *(v154 + 3);
            if (v45 >= v116 >> 1)
            {
              v154 = sub_19A31CE20((v116 > 1), v45 + 1, 1, v154);
            }

            v117 = v154;
            *(v154 + 2) = v45 + 1;
            v118 = &v117[16 * v45];
            *(v118 + 4) = v115;
            *(v118 + 5) = v114;
LABEL_22:
            v61 = v138;
            v33 = v153;
            continue;
          }
        }
      }
    }
  }

  MEMORY[0x19A901520](0, v33);

  v62 = v136;
  swift_unknownObjectRelease();

LABEL_41:
  v88 = v157[11];
  *(v62 + 10) = v157[10];
  *(v62 + 11) = v88;
  *(v62 + 12) = v158;
  v89 = v157[7];
  *(v62 + 6) = v157[6];
  *(v62 + 7) = v89;
  v90 = v157[9];
  *(v62 + 8) = v157[8];
  *(v62 + 9) = v90;
  v91 = v157[3];
  *(v62 + 2) = v157[2];
  *(v62 + 3) = v91;
  v92 = v157[5];
  *(v62 + 4) = v157[4];
  *(v62 + 5) = v92;
  v93 = v157[1];
  *v62 = v157[0];
  *(v62 + 1) = v93;
  v94 = type metadata accessor for AppleDiffusionUnet(0);
  sub_19A4F7470(v61, v62 + *(v94 + 24));

  return result;
}

void sub_19A4F071C(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(char *, char *, char *)@<X8>)
{
  v35 = a1;
  v36 = a3;
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v34 = &v30 - v14;
  v15 = *(v3 + 208);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_19:
    v17 = MEMORY[0x1E69E7CC0];
    if ((v15 & 0xC000000000000001) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v26 = MEMORY[0x19A901520](0, v15);
    goto LABEL_17;
  }

  v16 = sub_19A573B4C();
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_3:
  v40 = MEMORY[0x1E69E7CC0];
  sub_19A4E432C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_22;
  }

  v32 = a2;
  v33 = v4;
  v17 = v40;
  v31 = v15 & 0xC000000000000001;
  v39 = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v38 = (v7 + 32);
    do
    {
      v19 = MEMORY[0x19A901520](v18, v39);
      (*(v7 + 16))(v12, v19 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v6);
      swift_unknownObjectRelease();
      v40 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19A4E432C((v20 > 1), v21 + 1, 1);
        v17 = v40;
      }

      ++v18;
      *(v17 + 16) = v21 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v12, v6);
    }

    while (v16 != v18);
  }

  else
  {
    v22 = (v15 + 32);
    v23 = *(v7 + 16);
    v37 = v7 + 32;
    v38 = v23;
    do
    {
      v38(v9, *v22 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v6);
      v40 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_19A4E432C((v24 > 1), v25 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v25 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v9, v6);
      ++v22;
      --v16;
    }

    while (v16);
  }

  a2 = v32;
  v15 = v39;
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v15 + 32);

LABEL_17:
    [*(v26 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_configuration) copy];
    sub_19A57384C();
    swift_unknownObjectRelease();

    sub_19A2F1600(0, &qword_1EAF9E798, 0x1E695FEB0);
    swift_dynamicCast();
    v27 = v41;
    v28 = v34;
    sub_19A4F77FC(v35, v34);
    v29 = type metadata accessor for ConcreteAdapter(0);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);

    sub_19A4EF65C(v17, v27, v28, a2, v36);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t AppleDiffusionUnet.modelBatchSize.getter()
{
  v1 = *(v0 + 160);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

void sub_19A4F0B9C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2)
    {
      bzero(a1, v2);
    }
  }
}

void sub_19A4F0BB8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8, &qword_19A58FEE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0, &unk_19A58F800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  v11 = a2[1];
  *(inited + 32) = *a2;
  *(inited + 40) = v11;
  sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  sub_19A33546C(a1, v9, &qword_1EAFA2DC8, &qword_19A58FEE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
  *(inited + 48) = sub_19A57351C();
  v12 = sub_19A4E7C6C(inited);
  swift_setDeallocating();
  sub_19A2F3FA0(inited + 32, &qword_1EAFA2EE8, &unk_19A58FE80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a3;
  v14 = v15[1];
  sub_19A4F7988(v12, sub_19A4F56D8, 0, isUniquelyReferenced_nonNull_native, &v17, sub_19A550DB0, sub_19A554C80);

  if (v14)
  {

    __break(1u);
  }

  else
  {
    *v16 = v17;
  }
}

void *sub_19A4F0E00(void *a1, int a2)
{
  v152 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30D8, &qword_19A58FE98);
  v173 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v122[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v145 = &v122[-v6];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30E0, &qword_19A58FEA0);
  v172 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v122[-v7];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30E8, &qword_19A58FEA8);
  v171 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v122[-v10];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0, &qword_19A58FEB0);
  v11 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v122[-v12];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F8, &qword_19A58FEB8);
  v13 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v122[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v122[-v16];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28, &qword_19A58FEC0);
  v17 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v122[-v18];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3100, &qword_19A58FEC8);
  v19 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v122[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v122[-v22];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3108, &unk_19A58FED0);
  v23 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v122[-v24];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110, &unk_19A5906B0);
  v25 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v122[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v122[-v28];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v29 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v122[-v30];
  v31 = *(v2 + 160);
  if (*(v31 + 16))
  {
    if (*(v31 + 32) == 2)
    {

      return a1;
    }

    v32 = a1;
    v33 = a1[2];
    if (v152)
    {
LABEL_7:
      a1 = sub_19A5147D4(0, v33, 0, MEMORY[0x1E69E7CC0]);
      v151 = v32[2];
      if (v151)
      {
        v34 = 0;
        v150 = v32 + 4;
        v132 = (v173 + 8);
        v131 = (v172 + 8);
        v130 = (v171 + 8);
        v129 = (v11 + 8);
        v128 = (v13 + 8);
        v127 = (v17 + 8);
        v126 = (v19 + 8);
        v125 = (v23 + 8);
        v124 = (v25 + 8);
        v123 = (v29 + 8);
        do
        {
          v35 = v34;
          v163 = v34 + 1;
          v164 = a1;
          v36 = MEMORY[0x1E69E7CC0];
          a1 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
          v170 = sub_19A4E7C6C(v36);
          v37 = v150[v35];
          v40 = *(v37 + 64);
          v39 = (v37 + 64);
          v38 = v40;
          v41 = 1 << *(v150[v35] + 32);
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & v38;
          v44 = (v41 + 63) >> 6;
          v168 = v150[v35];

          v45 = 0;
          v166 = v44;
          v167 = v39;
          while (v43)
          {
            v48 = v45;
LABEL_20:
            v49 = __clz(__rbit64(v43)) | (v48 << 6);
            v50 = *(v168 + 56);
            v51 = (*(v168 + 48) + 16 * v49);
            v52 = v51[1];
            v172 = *v51;
            v53 = *(v50 + 8 * v49);

            v39 = v53;
            v54 = [v39 shape];
            sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
            v55 = sub_19A57308C();

            if ((v55 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x19A901520](0, v55);
            }

            else
            {
              if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v56 = *(v55 + 32);
            }

            v57 = v56;

            v58 = [v57 integerValue];

            v173 = v52;
            if (v58 == 2)
            {
              v59 = [v39 dataType];
              v165 = a1;
              if (v59 <= 65599)
              {
                if (v59 == 65552)
                {
                  v71 = v39;
                  sub_19A57267C();
                  v149 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
                  v72 = v137;
                  sub_19A57266C();
                  v73 = v138;
                  sub_19A57268C();
                  v171 = *v126;
                  (v171)(v72, v73);
                  v148 = sub_19A2F12E4(&qword_1EAFA3130, &qword_1EAFA3100, &qword_19A58FEC8, MEMORY[0x1E695FD40]);
                  v63 = sub_19A57351C();
                  sub_19A57266C();
                  sub_19A57268C();
                  (v171)(v72, v73);
                  v64 = sub_19A57351C();
                  (*v125)(v155, v156);
                }

                else
                {
                  if (v59 != 65568)
                  {
LABEL_68:

                    sub_19A4E6F34();
                    swift_allocError();
                    *v121 = xmmword_19A583520;
                    *(v121 + 16) = 5;
                    swift_willThrow();

                    return a1;
                  }

                  v65 = v39;
                  sub_19A57267C();
                  v149 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
                  v66 = v134;
                  sub_19A57266C();
                  v67 = v135;
                  sub_19A57268C();
                  v171 = *v124;
                  (v171)(v66, v67);
                  v148 = sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110, &unk_19A5906B0, MEMORY[0x1E695FD40]);
                  v63 = sub_19A57351C();
                  sub_19A57266C();
                  sub_19A57268C();
                  (v171)(v66, v67);
                  v64 = sub_19A57351C();
                  (*v123)(v153, v154);
                }
              }

              else
              {
                switch(v59)
                {
                  case 65600:
                    v74 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
                    v75 = v140;
                    sub_19A57266C();
                    v76 = v141;
                    sub_19A57268C();
                    v171 = *v128;
                    (v171)(v75, v76);
                    v148 = sub_19A2F12E4(&qword_1EAFA3128, &qword_1EAFA30F8, &qword_19A58FEB8, MEMORY[0x1E695FD40]);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v75, v76);
                    v64 = sub_19A57351C();
                    (*v127)(v157, v158);
                    break;
                  case 131080:
                    v68 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
                    v69 = v146;
                    sub_19A57266C();
                    v70 = v147;
                    sub_19A57268C();
                    v171 = *v132;
                    (v171)(v69, v70);
                    v148 = sub_19A2F12E4(&qword_1EAFA3118, &qword_1EAFA30D8, &qword_19A58FE98, MEMORY[0x1E695FD40]);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v69, v70);
                    v64 = sub_19A57351C();
                    (*v131)(v161, v162);
                    break;
                  case 131104:
                    v60 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
                    v61 = v143;
                    sub_19A57266C();
                    v62 = v144;
                    sub_19A57268C();
                    v171 = *v130;
                    (v171)(v61, v62);
                    v148 = sub_19A2F12E4(&qword_1EAFA3120, &qword_1EAFA30E8, &qword_19A58FEA8, MEMORY[0x1E695FD40]);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v61, v62);
                    v64 = sub_19A57351C();
                    (*v129)(v159, v160);
                    break;
                  default:
                    goto LABEL_68;
                }
              }

              a1 = v165;
            }

            else
            {
              v63 = v39;
              v64 = v63;
            }

            v171 = v63;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v174 = a1;
            v78 = v172;
            v79 = sub_19A31F6BC(v172, v173);
            v81 = a1[2];
            v82 = (v80 & 1) == 0;
            v83 = __OFADD__(v81, v82);
            v84 = v81 + v82;
            if (v83)
            {
              goto LABEL_70;
            }

            v85 = v80;
            if (a1[3] >= v84)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v112 = v79;
                sub_19A554C80();
                v79 = v112;
              }

              v86 = v173;
            }

            else
            {
              sub_19A550DB0(v84, isUniquelyReferenced_nonNull_native);
              v86 = v173;
              v79 = sub_19A31F6BC(v78, v173);
              if ((v85 & 1) != (v87 & 1))
              {
                goto LABEL_76;
              }
            }

            v88 = v174;
            v169 = v39;
            if (v85)
            {
              v89 = v174;
              v90 = v174[7];
              v91 = *(v90 + 8 * v79);
              *(v90 + 8 * v79) = v171;
            }

            else
            {
              v174[(v79 >> 6) + 8] |= 1 << v79;
              v92 = (v88[6] + 16 * v79);
              *v92 = v78;
              v92[1] = v86;
              *(v88[7] + 8 * v79) = v171;
              v93 = v88[2];
              v83 = __OFADD__(v93, 1);
              v94 = v93 + 1;
              if (v83)
              {
                goto LABEL_72;
              }

              v89 = v88;
              v88[2] = v94;
            }

            v95 = v64;
            v96 = v170;
            v97 = swift_isUniquelyReferenced_nonNull_native();
            v174 = v96;
            v98 = v78;
            v99 = v86;
            v101 = sub_19A31F6BC(v98, v86);
            v102 = v96[2];
            v103 = (v100 & 1) == 0;
            v104 = v102 + v103;
            if (__OFADD__(v102, v103))
            {
              goto LABEL_71;
            }

            v105 = v100;
            if (v96[3] >= v104)
            {
              if ((v97 & 1) == 0)
              {
                sub_19A554C80();
              }
            }

            else
            {
              sub_19A550DB0(v104, v97);
              v106 = sub_19A31F6BC(v172, v99);
              if ((v105 & 1) != (v107 & 1))
              {
                goto LABEL_76;
              }

              v101 = v106;
            }

            a1 = v89;
            v43 &= v43 - 1;
            v39 = v167;
            if (v105)
            {

              v170 = v174;
              v46 = v174[7];
              v47 = *(v46 + 8 * v101);
              *(v46 + 8 * v101) = v95;
            }

            else
            {
              v108 = v174;
              v174[(v101 >> 6) + 8] |= 1 << v101;
              v109 = (v108[6] + 16 * v101);
              *v109 = v172;
              v109[1] = v99;
              *(v108[7] + 8 * v101) = v95;

              v110 = v108[2];
              v83 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v83)
              {
                goto LABEL_73;
              }

              v170 = v108;
              v108[2] = v111;
            }

            v45 = v48;
            v44 = v166;
          }

          while (1)
          {
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
              goto LABEL_68;
            }

            if (v48 >= v44)
            {
              break;
            }

            v43 = *(v39 + v48);
            ++v45;
            if (v43)
            {
              goto LABEL_20;
            }
          }

          if (v152)
          {

            a1 = v164;
            v113 = v164[2];
          }

          else
          {
            v114 = a1;
            a1 = v164;
            v116 = v164[2];
            v115 = v164[3];
            v113 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              a1 = sub_19A5147D4((v115 > 1), v116 + 1, 1, v164);
            }

            a1[2] = v113;
            a1[v116 + 4] = v114;
          }

          v34 = v163;
          v117 = v170;
          v118 = a1[3];
          if (v113 >= v118 >> 1)
          {
            v119 = sub_19A5147D4((v118 > 1), v113 + 1, 1, a1);
            v117 = v170;
            v34 = v163;
            a1 = v119;
          }

          a1[2] = v113 + 1;
          a1[v113 + 4] = v117;
        }

        while (v34 != v151);
      }

      return a1;
    }

    if (v33 + 0x4000000000000000 >= 0)
    {
      v33 *= 2;
      v32 = a1;
      goto LABEL_7;
    }
  }

  else
  {
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A4F2268(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = v5;
  v7 = v4;
  v10 = *(v4 + 200);
  if (*(v10 + 16) && (v11 = sub_19A4F3A80(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = *(v7 + 208);
  v17 = (v16 >> 62);
  v68 = v16;
  if (v16 >> 62)
  {
    goto LABEL_71;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_73;
    }

    goto LABEL_13;
  }

  do
  {
    v18 = v16 & 0xC000000000000001;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x19A901520](0, v16);
      v19 = v20;
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);

        __break(1u);
        return result;
      }

      v19 = *(v16 + 32);
    }

    MEMORY[0x1EEE9AC00](v20);
    v58 = a2;
    v59 = a3;
    sub_19A506C14(v14, v15, sub_19A4F795C, v57);
    if (v6)
    {
      goto LABEL_11;
    }

    v32 = v14;
    v14 = v21;
    v66 = v32;
    v67 = v19;
    if (v17)
    {
      v33 = v68;
      if (sub_19A573B4C() == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v33 = v68;
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_11;
      }
    }

    v62 = a3;
    swift_getObjectType();
    a3 = sub_19A5074CC();
    if (v17)
    {
      v35 = sub_19A573B4C();
      if (v35 < 0)
      {
        goto LABEL_81;
      }

      a2 = v35;
      v34 = v35 != 0;
      if (sub_19A573B4C() < v34)
      {
        goto LABEL_79;
      }

      if (sub_19A573B4C() < a2)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = a2 != 0;
      if (a2 < v34)
      {
        goto LABEL_79;
      }
    }

    v65 = v15;
    if (v18 && a2 > 1)
    {
      type metadata accessor for ManagedMLModel(0);

      v36 = v34;
      do
      {
        v37 = v36 + 1;
        sub_19A57398C();
        v36 = v37;
      }

      while (a2 != v37);
      if (!v17)
      {
LABEL_42:
        v63 = v68 & 0xFFFFFFFFFFFFFF8;
        v38 = (v68 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_45;
      }
    }

    else
    {

      if (!v17)
      {
        goto LABEL_42;
      }
    }

    v63 = sub_19A573BAC();
    v34 = v39;
    a2 = v40 >> 1;
LABEL_45:
    v41 = v65;
    if (v34 == a2)
    {
LABEL_46:

      swift_unknownObjectRelease();
LABEL_11:

      return v14;
    }

    v60 = v38;
    v61 = a2;
    while (1)
    {
      if (v34 >= a2)
      {
        goto LABEL_78;
      }

      v64 = v34;
      v42 = *(v38 + 8 * v34);
      v16 = *(v14 + 16);
      v68 = v42;
      if (v16)
      {
        break;
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v50 = v66;

      if (v49 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
        sub_19A573B8C();
      }

      else
      {
        sub_19A573FEC();
      }

      v51 = objc_allocWithZone(MEMORY[0x1E695FE30]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8, &qword_19A58FE90);
      v17 = sub_19A57307C();

      v52 = [v51 initWithFeatureProviderArray_];

      MEMORY[0x1EEE9AC00](v53);
      v58 = v52;
      v59 = v62;
      sub_19A506C14(v50, v41, sub_19A4F7E40, v57);
      v14 = v54;
      v34 = v64 + 1;

      v38 = v60;
      a2 = v61;
      if (v34 == v61)
      {
        goto LABEL_46;
      }
    }

    v70 = MEMORY[0x1E69E7CC0];

    sub_19A573A5C();
    if (*(v14 + 16) >= v16)
    {
      v43 = v16;
    }

    else
    {
      v43 = *(v14 + 16);
    }

    v15 = 4;
    while (v43)
    {
      if ((v15 - 4) >= *(v14 + 16))
      {
        goto LABEL_69;
      }

      if ((v15 - 4) >= *(a3 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v14 + 8 * v15);
      v45 = *(a3 + 8 * v15);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v44;
      sub_19A4F7988(v45, sub_19A4F56D8, 0, isUniquelyReferenced_nonNull_native, &v69, sub_19A550DC4, sub_19A554C94);
      v6 = 0;

      v47 = sub_19A543CFC(v69);

      v48 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v17 = sub_19A544CF4(v47);

      sub_19A573A2C();
      a2 = *(v70 + 16);
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v43;
      ++v15;
      if (!--v16)
      {

        v49 = v70;
        v41 = v65;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  while (sub_19A573B4C());

  v14 = sub_19A573B4C();
  if (!v14)
  {
LABEL_73:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_74:
    sub_19A4E6F34();
    swift_allocError();
    *v55 = v24;
    *(v55 + 8) = 0;
    *(v55 + 16) = 2;
    swift_willThrow();
    return v14;
  }

LABEL_13:
  v22 = 0;
  v67 = v16 & 0xC000000000000001;
  v23 = v16 & 0xFFFFFFFFFFFFFF8;
  v24 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v67)
    {
      MEMORY[0x19A901520](v22, v16);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      goto LABEL_17;
    }

    if (v22 >= *(v23 + 16))
    {
      goto LABEL_67;
    }

    v25 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
LABEL_17:
      v26 = sub_19A570E4C();
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_19A31CE20(0, *(v24 + 2) + 1, 1, v24);
      }

      a2 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (a2 >= v29 >> 1)
      {
        v24 = sub_19A31CE20((v29 > 1), a2 + 1, 1, v24);
      }

      *(v24 + 2) = a2 + 1;
      v30 = &v24[16 * a2];
      *(v30 + 4) = v26;
      *(v30 + 5) = v28;
      ++v22;
      v31 = v25 == v14;
      v16 = v68;
      if (v31)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:
  __break(1u);

  swift_unknownObjectRelease();

  return v14;
}

void sub_19A4F2A64(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(a2 + 8 * v2 + 32);

  v5 = sub_19A5069A0(v4);
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v7 = sub_19A31F6BC(v5, v6);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = [*(*(v3 + 56) + 8 * v7) multiArrayValue];
  if (v9)
  {
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A576E00;
    *(v11 + 32) = v10;
    sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
    v12 = v10;
    v13 = sub_19A57307C();

    v14 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v13 alongAxis:0 dataType:65568];

    sub_19A57267C();
    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_19A4F2BF0(void *a1, int a2)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = *(v2 + 160);
  if (!*(v13 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(v13 + 32) == 2)
  {

    return a1;
  }

  if (v49)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = a1[2];
  if ((v15 & (v14 - 1)) == 0)
  {
    if (!v15)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = 0;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v53 = v18;
    v43 = *(v17 + 64);
    v19 = (v43 + 32) & ~v43;
    v20 = a1 + v19;
    v21 = *(v17 + 56);
    v51 = v19;
    v41 = (v17 - 8);
    v42 = v19 + 2 * v21;
    v40 = (v17 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    v55 = v21;
    v39 = v14 * v21;
    v38 = xmmword_19A576E20;
    v37 = v20;
    v52 = v7;
    v47 = &v36 - v11;
    v48 = v17;
    v45 = v15;
    v46 = v14;
    v44 = v4;
    while (1)
    {
      v22 = __OFADD__(v16, v14);
      if (v16 < 0)
      {
        break;
      }

      v53(v12, v20, v4);
      v23 = v20;
      if ((v49 & 1) == 0)
      {
        if (v16 + 1 >= v15)
        {
          goto LABEL_28;
        }

        v23 = &v37[v55 * (v16 + 1)];
      }

      v50 = v22;
      v24 = a1;
      v25 = v53;
      v26 = v54;
      v53(v54, v23, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
      v27 = v25;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v51;
      v27(v28 + v51, v12, v4);
      v30 = v26;
      a1 = v24;
      v27(v29 + v55, v30, v4);
      v56 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50, &qword_19A58FFF0);
      sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50, &qword_19A58FFF0, MEMORY[0x1E69E6328]);
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
      sub_19A5725EC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_19A5147F8(0, v24[2] + 1, 1, v24);
      }

      v32 = a1[2];
      v31 = a1[3];
      v14 = v46;
      v12 = v47;
      v4 = v44;
      if (v32 >= v31 >> 1)
      {
        a1 = sub_19A5147F8((v31 > 1), v32 + 1, 1, a1);
      }

      v16 += v14;
      v33 = *v41;
      (*v41)(v54, v4);
      v33(v12, v4);
      a1[2] = v32 + 1;
      (*v40)(a1 + v51 + v32 * v55, v52, v4);
      v15 = v45;
      v34 = v50;
      if (v16 >= v45)
      {
        v34 = 1;
      }

      v20 += v39;
      if (v34)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  result = sub_19A573B7C();
  __break(1u);
  return result;
}

uint64_t sub_19A4F30B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F31A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F31A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F3330;
  }

  else
  {
    v2 = sub_19A4F32B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4F32B8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_19A4F7D68(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F3330()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_19A4F7D68(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F33B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F34A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F34A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F3630;
  }

  else
  {
    v2 = sub_19A4F35B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4F35B8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_19A2E8AF8(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F3630()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_19A2E8AF8(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F36B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F37A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F37A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F7E58;
  }

  else
  {
    v2 = sub_19A4F7E5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_19A4F38B8(uint64_t a1, uint64_t a2)
{
  sub_19A5740BC();
  sub_19A5740DC();
  if (a2)
  {
    sub_19A572E4C();
  }

  v4 = sub_19A57410C();

  return sub_19A4F3B84(a1, a2, v4);
}

unint64_t sub_19A4F394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  v8 = sub_19A57410C();

  return sub_19A4F3C50(a1, a2, a3, a4, v8);
}

unint64_t sub_19A4F39EC(uint64_t a1)
{
  sub_19A572CFC();
  sub_19A5740BC();
  sub_19A572E4C();
  v2 = sub_19A57410C();

  return sub_19A321F68(a1, v2);
}

unint64_t sub_19A4F3A80(uint64_t a1)
{
  v1 = a1;
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A4F3D50(v1, v2);
}

unint64_t sub_19A4F3B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_19A573F1C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_19A4F3C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_19A573F1C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_19A573F1C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_19A4F3D50(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x656C626269726373 : 0x636E657265666572;
      v7 = v5 == 2 ? 0xE800000000000000 : 0xEF6567616D695F65;
      v8 = *(*(v22 + 48) + v4) ? 0x746C7561666564 : 0x6B6361625F67736DLL;
      v9 = *(*(v22 + 48) + v4) ? 0xE700000000000000 : 0xEE00646E756F7267;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0x656C626269726373 : 0x636E657265666572;
      v13 = v21 == 2 ? 0xE800000000000000 : 0xEF6567616D695F65;
      v14 = v21 ? 0x746C7561666564 : 0x6B6361625F67736DLL;
      v15 = v21 ? 0xE700000000000000 : 0xEE00646E756F7267;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_19A573F1C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AppleDiffusionUnet(uint64_t a1)
{
  result = qword_1EAF9EFD0;
  if (!qword_1EAF9EFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A4F3F68(uint64_t a1)
{
  v2 = type metadata accessor for ConcreteAdapter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19A4F3FEC(uint64_t a1)
{
  sub_19A4F40E0(319, &qword_1EAF9E8E0, type metadata accessor for ManagedMLModel, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_19A4F40E0(319, &qword_1EAF9EE80, type metadata accessor for ConcreteAdapter, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4F40E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_19A4F4180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_19A4F41C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A4F425C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v4);
        v16 = (v14 + 4 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

void sub_19A4F46AC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      sub_19A5740BC();

      sub_19A572E4C();
      v10 = sub_19A57410C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_19A4F485C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

void sub_19A4F4A90(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    while (1)
    {
      sub_19A5740BC();

      sub_19A572E4C();
      v10 = sub_19A57410C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v4);
      v14 = (v12 + 16 * v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210) - 8) + 72);
      v17 = v16 * v4;
      v18 = v15 + v16 * v4;
      v19 = v16 * v7;
      v20 = v15 + v16 * v7 + v16;
      if (v17 < v19 || v18 >= v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v19)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

unint64_t sub_19A4F4C94(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    while (1)
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v10 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v4);
      v13 = (v11 + v7);
      if (v4 != v7 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_19A570EAC() - 8) + 72);
      v16 = v15 * v4;
      result = v14 + v15 * v4;
      v17 = v15 * v7;
      v18 = v14 + v15 * v7 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4F4FFC(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 360 * v4;
        v15 = (v14 + 360 * v7);
        if (v4 != v7 || result >= v15 + 360)
        {
          result = memmove(result, v15, 0x168uLL);
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_19A4F5308(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

void sub_19A4F550C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_19A5738AC() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      sub_19A5740BC();
      sub_19A5740DC();
      if (v10)
      {

        sub_19A572E4C();
      }

      v11 = sub_19A57410C();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_12;
      }

      if (v4 >= v12)
      {
LABEL_12:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v4);
        v18 = (v16 + 8 * v7);
        if (v4 != v7 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

id sub_19A4F56D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_19A4F5724(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_19A31F6BC(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_19A554C80();
      }
    }

    else
    {
      sub_19A550DB0(v29, v42 & 1);
      v31 = sub_19A31F6BC(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_19A2EA480(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

void sub_19A4F59AC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v233 = a2;
  v231 = a3;
  v281[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0, &qword_19A58F1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v228 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v229 = &v217 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8, &qword_19A579A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v217 - v9;
  v11 = sub_19A570EAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v217 - v16;
  v232 = 0x800000019A59C560;
  v18 = MEMORY[0x1E69E7CC0];
  v235 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
  v234 = sub_19A4E7C6C(v18);
  sub_19A33546C(a1, v10, &qword_1EAFA02E8, &qword_19A579A50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    sub_19A2F3FA0(a1, &qword_1EAFA02E8, &qword_19A579A50);
    sub_19A2F3FA0(v10, &qword_1EAFA02E8, &qword_19A579A50);
LABEL_10:
    v21 = 0;
    v22 = 0;
    goto LABEL_11;
  }

  v230 = a1;
  (*(v12 + 32))(v17, v10, v11);
  sub_19A2F1600(0, &qword_1ED823EE8, 0x1E695FEA8);
  (*(v12 + 16))(v14, v17, v11);
  v19 = v236;
  v20 = sub_19A549F60(v14);
  if (v19)
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v12 + 8))(v17, v11);
    v21 = 0;
    v22 = 0;
    v236 = 0;
LABEL_11:
    v27 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC8];
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  if (!v20)
  {
    v236 = 0;
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v26 = v230;
    goto LABEL_9;
  }

  v23 = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v225 = v23;
  v25 = sub_19A4EEFF8(&unk_19A58FE30, v24);
  v37 = v230;
  if (!v25)
  {
    v236 = 0;

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v26 = v37;
LABEL_9:
    sub_19A2F3FA0(v26, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v12 + 8))(v17, v11);
    goto LABEL_10;
  }

  v224 = v25;
  v38 = [v25 inputDescriptionsByName];
  v223 = sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
  v39 = sub_19A572AFC();

  v40 = *(v39 + 16);
  v221 = v12;
  v222 = v11;
  v220 = v17;
  v227 = v39;
  v236 = 0;
  if (!v40)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v219 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v41 = sub_19A31F6BC(0x746E6574616CLL, 0xE600000000000000);
  v42 = MEMORY[0x1E69E7CC0];
  v43 = v233;
  if ((v44 & 1) == 0)
  {
    goto LABEL_47;
  }

  v45 = *(*(v39 + 56) + 8 * v41);
  v226 = [v45 multiArrayConstraint];
  if (!v226)
  {

    goto LABEL_47;
  }

  v219 = v45;
  v46 = v42;
  v47 = v229;
  sub_19A33546C(v43, v229, &unk_1EAFA2BF0, &qword_19A58F1D0);
  v48 = type metadata accessor for ConcreteAdapter(0);
  v49 = *(*(v48 - 8) + 48);
  if (v49(v47, 1, v48) == 1)
  {
    goto LABEL_25;
  }

  v50 = *v47;
  sub_19A4F3F68(v47);
  if (AppleDiffusionAdapter.rawValue.getter(v50) == 0xD000000000000014 && 0x800000019A596540 == v51)
  {

    goto LABEL_24;
  }

  v53 = sub_19A573F1C();

  if (v53)
  {
LABEL_24:
    v47 = v228;
    sub_19A33546C(v233, v228, &unk_1EAFA2BF0, &qword_19A58F1D0);
    if (v49(v47, 1, v48) == 1)
    {
LABEL_25:
      sub_19A2F3FA0(v47, &unk_1EAFA2BF0, &qword_19A58F1D0);
      goto LABEL_26;
    }

    v65 = *&v47[*(v48 + 24) + 232];

    sub_19A4F3F68(v47);
    if (!v65)
    {
      goto LABEL_26;
    }

    if (!*(v65 + 16) || (v66 = sub_19A31F6BC(3226162, 0xE300000000000000), (v67 & 1) == 0))
    {

      goto LABEL_26;
    }

    v68 = *(*(v65 + 56) + 8 * v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70, &unk_19A578A20);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_19A57A9D0;
    *(v69 + 32) = 1;
    v70 = v68[2];
    if (v70)
    {
      v42 = v69;
      *(v69 + 40) = v68[4];
      v71 = v219;
      if (v70 != 1)
      {
        *(v69 + 48) = v68[5];
        if (v70 >= 3)
        {
          v72 = v68[6];

          v42[7] = v72;

          goto LABEL_47;
        }

LABEL_183:
        __break(1u);
LABEL_184:
        sub_19A57404C();
        __break(1u);
LABEL_185:
        sub_19A57404C();
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_183;
  }

LABEL_26:
  v54 = [v226 shape];
  sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
  v55 = sub_19A57308C();

  if (v55 >> 62)
  {
    v56 = sub_19A573B4C();
    if (v56)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
LABEL_28:
      v253[0] = v46;
      sub_19A3225A0(0, v56 & ~(v56 >> 63), 0);
      if (v56 < 0)
      {
        goto LABEL_178;
      }

      v57 = 0;
      v58 = v253[0];
      do
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x19A901520](v57, v55);
        }

        else
        {
          v59 = *(v55 + 8 * v57 + 32);
        }

        v60 = v59;
        v61 = [v59 integerValue];

        v62 = v58;
        v253[0] = v58;
        v64 = v58[2];
        v63 = v58[3];
        if (v64 >= v63 >> 1)
        {
          sub_19A3225A0((v63 > 1), v64 + 1, 1);
          v62 = v253[0];
        }

        ++v57;
        v62[2] = v64 + 1;
        v58 = v62;
        v62[v64 + 4] = v61;
      }

      while (v56 != v57);

      v42 = v58;
      v39 = v227;
      goto LABEL_47;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v73 = *(v39 + 16);
  v219 = v42;
  if (!v73)
  {
LABEL_62:
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v74 = sub_19A31F6BC(0xD000000000000015, v232);
  v52 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    v76 = MEMORY[0x1E69E7CC0];
    v77 = *(*(v39 + 56) + 8 * v74);
    v78 = [v77 multiArrayConstraint];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 shape];
      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      v81 = sub_19A57308C();

      if (v81 >> 62)
      {
        v82 = sub_19A573B4C();
        if (v82)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v82)
        {
LABEL_52:
          v228 = v79;
          v229 = v77;
          v253[0] = v76;
          sub_19A3225A0(0, v82 & ~(v82 >> 63), 0);
          if (v82 < 0)
          {
            goto LABEL_180;
          }

          v83 = 0;
          v84 = v253[0];
          do
          {
            v85 = v84;
            if ((v81 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x19A901520](v83, v81);
            }

            else
            {
              v86 = *(v81 + 8 * v83 + 32);
            }

            v87 = v86;
            v88 = [v86 integerValue];

            v84 = v85;
            v253[0] = v85;
            v89 = v85[2];
            v90 = v84[3];
            if (v89 >= v90 >> 1)
            {
              sub_19A3225A0((v90 > 1), v89 + 1, 1);
              v84 = v253[0];
            }

            ++v83;
            v84[2] = v89 + 1;
            v84[v89 + 4] = v88;
          }

          while (v82 != v83);
          v91 = v84;

          v52 = v91;
          goto LABEL_65;
        }
      }

      v52 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v39 = v227;
      goto LABEL_66;
    }

    goto LABEL_62;
  }

LABEL_66:
  v218 = v52;
  v92 = &off_1F0DB5990;
  v93 = 3;
  do
  {
    if (!*(v39 + 16))
    {
      goto LABEL_69;
    }

    v94 = *(v92 - 1);
    v95 = *v92;

    v96 = sub_19A31F6BC(v94, v95);
    if ((v97 & 1) == 0)
    {
      goto LABEL_68;
    }

    v98 = *(*(v39 + 56) + 8 * v96);
    v99 = [v98 multiArrayConstraint];
    if (!v99)
    {

LABEL_68:

      goto LABEL_69;
    }

    v100 = v99;
    v228 = v98;
    v229 = v94;
    v101 = [v99 shape];
    if (!v101)
    {
      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      sub_19A57308C();
      v101 = sub_19A57307C();
    }

    v102 = [v100 dataType];
    v103 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v253[0] = 0;
    v104 = [v103 initWithShape:v101 dataType:v102 error:v253];

    if (!v104)
    {
      v177 = v253[0];

      sub_19A570D1C();

      swift_willThrow();
      v176 = v222;
      v163 = v228;
      goto LABEL_126;
    }

    v226 = v100;
    v105 = v253[0];
    v106 = v236;
    sub_19A5734DC();
    v236 = v106;
    v107 = v235;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v107;
    v110 = sub_19A31F6BC(v229, v95);
    v111 = v107[2];
    v112 = (v109 & 1) == 0;
    v113 = v111 + v112;
    if (__OFADD__(v111, v112))
    {
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
    }

    v114 = v109;
    if (v107[3] >= v113)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v39 = v227;
        if (v109)
        {
          goto LABEL_84;
        }
      }

      else
      {
        sub_19A554C80();
        v39 = v227;
        if (v114)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      sub_19A550DB0(v113, isUniquelyReferenced_nonNull_native);
      v115 = sub_19A31F6BC(v229, v95);
      if ((v114 & 1) != (v116 & 1))
      {
        goto LABEL_184;
      }

      v110 = v115;
      v39 = v227;
      if (v114)
      {
LABEL_84:

        v235 = v253[0];
        v122 = *(v253[0] + 7);
        v123 = *(v122 + 8 * v110);
        *(v122 + 8 * v110) = v104;

        goto LABEL_69;
      }
    }

    v117 = v253[0];
    *(v253[0] + (v110 >> 6) + 8) |= 1 << v110;
    v118 = (v117[6] + 16 * v110);
    *v118 = v229;
    v118[1] = v95;
    *(v117[7] + 8 * v110) = v104;

    v119 = v117[2];
    v120 = __OFADD__(v119, 1);
    v121 = v119 + 1;
    if (v120)
    {
      goto LABEL_175;
    }

    v235 = v117;
    v117[2] = v121;
LABEL_69:
    v92 += 2;
    --v93;
  }

  while (v93);
  v124 = 0;
  v125 = 0;
  do
  {
    v126 = v124;
    if (!*(v39 + 16))
    {
      goto LABEL_90;
    }

    v127 = &unk_1F0DB59B8 + 16 * v125;
    v128 = *(v127 + 4);
    v129 = *(v127 + 5);

    v130 = sub_19A31F6BC(v128, v129);
    if ((v131 & 1) == 0)
    {
      goto LABEL_89;
    }

    v132 = *(*(v39 + 56) + 8 * v130);
    v133 = [v132 multiArrayConstraint];
    if (!v133)
    {

LABEL_89:

      goto LABEL_90;
    }

    v134 = v133;
    v135 = [v133 shape];
    if (!v135)
    {
      sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
      sub_19A57308C();
      v135 = sub_19A57307C();
    }

    v136 = [v134 dataType];
    v137 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v253[0] = 0;
    v138 = [v137 initWithShape:v135 dataType:v136 error:v253];

    if (!v138)
    {
      v178 = v253[0];

      sub_19A570D1C();

      swift_willThrow();
      v163 = v224;
      v176 = v222;
      goto LABEL_126;
    }

    v229 = v134;
    v139 = v132;
    v140 = v253[0];
    v141 = v236;
    sub_19A5734DC();
    v236 = v141;
    v142 = v234;
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v142;
    v144 = sub_19A31F6BC(v128, v129);
    v146 = v142[2];
    v147 = (v145 & 1) == 0;
    v120 = __OFADD__(v146, v147);
    v148 = v146 + v147;
    if (v120)
    {
      goto LABEL_174;
    }

    v149 = v145;
    if (v142[3] < v148)
    {
      sub_19A550DB0(v148, v143);
      v144 = sub_19A31F6BC(v128, v129);
      if ((v149 & 1) != (v150 & 1))
      {
        goto LABEL_184;
      }

LABEL_102:
      if (v149)
      {
        goto LABEL_103;
      }

      goto LABEL_105;
    }

    if (v143)
    {
      goto LABEL_102;
    }

    v154 = v144;
    sub_19A554C80();
    v144 = v154;
    if (v149)
    {
LABEL_103:
      v151 = v144;

      v234 = v253[0];
      v152 = *(v253[0] + 7);
      v153 = *(v152 + 8 * v151);
      *(v152 + 8 * v151) = v138;

      v39 = v227;
      goto LABEL_90;
    }

LABEL_105:
    v155 = v253[0];
    *(v253[0] + (v144 >> 6) + 8) |= 1 << v144;
    v156 = (v155[6] + 16 * v144);
    *v156 = v128;
    v156[1] = v129;
    *(v155[7] + 8 * v144) = v138;

    v157 = v155[2];
    v120 = __OFADD__(v157, 1);
    v158 = v157 + 1;
    if (v120)
    {
      goto LABEL_176;
    }

    v234 = v155;
    v155[2] = v158;
    v39 = v227;
LABEL_90:
    v124 = 1;
    v125 = 1;
  }

  while ((v126 & 1) == 0);

  v159 = [v224 inputDescriptionsByName];
  v160 = sub_19A572AFC();

  if (*(v160 + 16) && (v161 = sub_19A31F6BC(0x6C6163735F6D636CLL, 0xE900000000000065), (v162 & 1) != 0))
  {
    v163 = *(*(v160 + 56) + 8 * v161);
    v164 = v163;
  }

  else
  {
    v163 = 0;
  }

  v22 = v163 != 0;
  v165 = [v224 inputDescriptionsByName];
  v166 = sub_19A572AFC();

  if (*(v166 + 16) && (v167 = sub_19A31F6BC(0x5F6D636C5F657375, 0xEC00000073726570), (v168 & 1) != 0))
  {
    v169 = *(*(v166 + 56) + 8 * v167);
    v170 = v169;
  }

  else
  {
    v169 = 0;
  }

  v21 = v169 != 0;
  v171 = [v224 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_19A4F7860(&qword_1ED823ED0, type metadata accessor for MLModelMetadataKey, &unk_19A58FAB8);
  v172 = sub_19A572AFC();

  if (!*(v172 + 16) || (v173 = sub_19A4F39EC(*MEMORY[0x1E695FDB0]), (v174 & 1) == 0))
  {

LABEL_121:

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v221 + 8))(v220, v222);
    goto LABEL_122;
  }

  sub_19A334618(*(v172 + 56) + 32 * v173, v253);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290, &qword_19A582DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_121;
  }

  v175 = v236;
  sub_19A52E514(v238, v278);
  v176 = v222;
  v236 = v175;
  if (v175)
  {

LABEL_126:
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v221 + 8))(v220, v176);

    return;
  }

  memcpy(v279, v278, sizeof(v279));
  sub_19A33546C(v279, v253, &qword_1EAFA2510, &unk_19A58F1F0);
  sub_19A4F75E8(v278);
  memcpy(v280, v279, sizeof(v280));
  if (sub_19A489468(v280) == 1)
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v179 = v230;
    goto LABEL_172;
  }

  v281[0] = v280[44];
  sub_19A33546C(v281, v253, &qword_1EAFA30A8, &qword_19A58FE38);
  sub_19A2F3FA0(v279, &qword_1EAFA2510, &unk_19A58F1F0);
  v180 = v281[0];
  v181 = v230;
  if (!v281[0])
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
    v179 = v181;
LABEL_172:
    sub_19A2F3FA0(v179, &qword_1EAFA02E8, &qword_19A579A50);
    (*(v221 + 8))(v220, v176);
LABEL_122:
    v28 = MEMORY[0x1E69E7CC8];
    goto LABEL_123;
  }

  v223 = v169;
  v228 = v163;
  v182 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  v227 = v281[0];
  do
  {
    v184 = *(&unk_1F0DB59F8 + v182 + 32);
    v229 = v182 + 1;
    v185 = 0x656C626269726373;
    if (v184 != 2)
    {
      v185 = 0x636E657265666572;
    }

    v186 = 0xE800000000000000;
    if (v184 != 2)
    {
      v186 = 0xEF6567616D695F65;
    }

    v187 = 0x6B6361625F67736DLL;
    if (v184)
    {
      v187 = 0x746C7561666564;
    }

    v188 = 0xEE00646E756F7267;
    if (v184)
    {
      v188 = 0xE700000000000000;
    }

    if (v184 <= 1)
    {
      v189 = v187;
    }

    else
    {
      v189 = v185;
    }

    if (v184 <= 1)
    {
      v190 = v188;
    }

    else
    {
      v190 = v186;
    }

    if (*(v180 + 16))
    {
      v191 = sub_19A31F6BC(v189, v190);
      v193 = v192;

      if (v193)
      {
        v180 = v227;
        goto LABEL_156;
      }
    }

    else
    {
    }

    v180 = v227;
    if (!*(v227 + 16) || (v194 = sub_19A31F6BC(0x656C626269726373, 0xE800000000000000), (v195 & 1) == 0))
    {
      v208 = sub_19A4F3A80(v184);
      if (v209)
      {
        v210 = v208;
        v211 = swift_isUniquelyReferenced_nonNull_native();
        v253[0] = v28;
        v207 = v230;
        if (!v211)
        {
          sub_19A554F7C();
          v207 = v230;
          v28 = v253[0];
        }

        sub_19A4F485C(v210, v28, v212);
      }

      else
      {
        v207 = v230;
      }

      goto LABEL_134;
    }

    v191 = v194;
LABEL_156:
    v196 = *(v180 + 56) + 16 * v191;
    v197 = *(v196 + 8);
    v226 = *v196;
    v198 = v197;

    v199 = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v28;
    v200 = sub_19A4F3A80(v184);
    v202 = v28[2];
    v203 = (v201 & 1) == 0;
    v120 = __OFADD__(v202, v203);
    v204 = v202 + v203;
    if (v120)
    {
      goto LABEL_177;
    }

    v205 = v201;
    if (v28[3] >= v204)
    {
      v207 = v230;
      if ((v199 & 1) == 0)
      {
        v216 = v200;
        sub_19A554F7C();
        v207 = v230;
        v200 = v216;
      }
    }

    else
    {
      sub_19A551340(v204, v199);
      v200 = sub_19A4F3A80(v184);
      if ((v205 & 1) != (v206 & 1))
      {
        goto LABEL_185;
      }

      v207 = v230;
    }

    v180 = v227;
    v28 = v253[0];
    if (v205)
    {
      v183 = (*(v253[0] + 7) + 16 * v200);
      *v183 = v226;
      v183[1] = v198;
    }

    else
    {
      *(v253[0] + (v200 >> 6) + 8) |= 1 << v200;
      *(v28[6] + v200) = v184;
      v213 = (v28[7] + 16 * v200);
      *v213 = v226;
      v213[1] = v198;
      v214 = v28[2];
      v120 = __OFADD__(v214, 1);
      v215 = v214 + 1;
      if (v120)
      {
        goto LABEL_179;
      }

      v28[2] = v215;
    }

    v176 = v222;
LABEL_134:
    v182 = v229;
  }

  while (v229 != 4);

  sub_19A2F3FA0(v281, &qword_1EAFA30A8, &qword_19A58FE38);
  sub_19A2F3FA0(v233, &unk_1EAFA2BF0, &qword_19A58F1D0);
  sub_19A2F3FA0(v207, &qword_1EAFA02E8, &qword_19A579A50);
  (*(v221 + 8))(v220, v176);
LABEL_123:
  v27 = v218;
  v29 = v219;
LABEL_12:
  *&v238 = 0x746E6574616CLL;
  *(&v238 + 1) = 0xE600000000000000;
  *&v239 = 1885697139;
  *(&v239 + 1) = 0xE400000000000000;
  strcpy(&v240, "conditioning");
  BYTE13(v240) = 0;
  HIWORD(v240) = -5120;
  *&v241 = 0xD000000000000013;
  *(&v241 + 1) = 0x800000019A59C540;
  *&v242 = 0xD000000000000015;
  *(&v242 + 1) = v232;
  *&v243 = &unk_1F0DB5968;
  *(&v243 + 1) = 0xD000000000000015;
  *&v244 = 0x800000019A59C3E0;
  *(&v244 + 1) = 0xD000000000000013;
  *&v245 = 0x800000019A59C3C0;
  *(&v245 + 1) = &unk_1F0DB59B8;
  *&v246 = 0x6C6163735F6D636CLL;
  *(&v246 + 1) = 0xE900000000000065;
  strcpy(&v247, "use_lcm_pers");
  BYTE13(v247) = 0;
  HIWORD(v247) = -5120;
  *&v248 = v29;
  *(&v248 + 1) = v27;
  *&v249 = v235;
  *(&v249 + 1) = v234;
  LOBYTE(v250) = v22;
  BYTE1(v250) = v21;
  BYTE2(v250) = 1;
  BYTE7(v250) = v252;
  *(&v250 + 3) = v251;
  *(&v250 + 1) = v28;
  v253[0] = 0x746E6574616CLL;
  v253[1] = 0xE600000000000000;
  v253[2] = 1885697139;
  v253[3] = 0xE400000000000000;
  strcpy(v254, "conditioning");
  HIBYTE(v254[6]) = 0;
  v254[7] = -5120;
  v255 = 0xD000000000000013;
  v256 = 0x800000019A59C540;
  v257 = 0xD000000000000015;
  v258 = v232;
  v259 = &unk_1F0DB5968;
  v260 = 0xD000000000000015;
  v261 = 0x800000019A59C3E0;
  v262 = 0xD000000000000013;
  v263 = 0x800000019A59C3C0;
  v264 = &unk_1F0DB59B8;
  v265 = 0x6C6163735F6D636CLL;
  v266 = 0xE900000000000065;
  strcpy(v267, "use_lcm_pers");
  HIBYTE(v267[6]) = 0;
  v267[7] = -5120;
  v268 = v29;
  v269 = v27;
  v270 = v235;
  v271 = v234;
  v272 = v22;
  v273 = v21;
  v274 = 1;
  v275 = v251;
  v276 = v252;
  v277 = v28;
  sub_19A4F7510(&v238, &v237);
  sub_19A4F74E0(v253);
  v30 = v249;
  v31 = v231;
  v231[10] = v248;
  v31[11] = v30;
  v31[12] = v250;
  v32 = v245;
  v31[6] = v244;
  v31[7] = v32;
  v33 = v247;
  v31[8] = v246;
  v31[9] = v33;
  v34 = v241;
  v31[2] = v240;
  v31[3] = v34;
  v35 = v243;
  v31[4] = v242;
  v31[5] = v35;
  v36 = v239;
  *v31 = v238;
  v31[1] = v36;
}