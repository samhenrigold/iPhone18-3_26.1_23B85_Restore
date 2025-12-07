uint64_t sub_22268B030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F8, &unk_2227425F0);
  v35 = v4;
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_22273919C();
      sub_222739C5C();
      sub_22273924C();
      v24 = sub_222739C8C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

uint64_t sub_22268B2F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2227397DC() + 1) & ~v5;
    do
    {
      sub_222739C5C();

      sub_22273924C();
      v9 = sub_222739C8C();

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

uint64_t sub_22268B4A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2227397DC() + 1) & ~v5;
    do
    {
      sub_222739C5C();

      sub_22273924C();
      v10 = sub_222739C8C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

  return result;
}

void sub_22268B658(int64_t a1, uint64_t a2)
{
  v4 = sub_222737C2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2227397DC();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v21 = sub_22273911C();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_22273793C() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_22268B99C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2227397DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_222739C4C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

  return result;
}

uint64_t sub_22268BB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_222688818(a3, a4);
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
      sub_222689324(v18, a5 & 1);
      v13 = sub_222688818(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22268C598();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_22268BC94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222688818(a2, a3);
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
      sub_22268C710();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2226895E4(v16, a4 & 1);
    v11 = sub_222688818(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_222739B8C();
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

    return sub_22269457C(a1, v22);
  }

  else
  {
    sub_22268C438(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22268BDE4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222688818(a2, a3);
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
      sub_22268989C(v16, a4 & 1);
      v11 = sub_222688818(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22268C8B4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_22269463C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_22268BF74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222737C2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2226888D4(a2);
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
      sub_22268CA68();
      goto LABEL_7;
    }

    sub_222689B6C(v17, a3 & 1);
    v28 = sub_2226888D4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22268C4A4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_222739B8C();
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
  v21 = v20[7];
  v22 = sub_22273793C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_22268C178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_222688818(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22268A8AC(v18, a5 & 1);
      result = sub_222688818(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22268D094();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_22268C2EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2226889B4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22268AB58(v14, a3 & 1);
      result = sub_2226889B4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22268D1FC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_22268C438(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22269457C(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22268C4A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222737C2C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22273793C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_22268C598()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
  v2 = *v0;
  v3 = sub_222739A3C();
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

void *sub_22268C710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
  v2 = *v0;
  v3 = sub_222739A3C();
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
        sub_22262BF70(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22269457C(v25, (*(v4 + 56) + v22));
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

void *sub_22268C8B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
  v2 = *v0;
  v3 = sub_222739A3C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        sub_22269458C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

char *sub_22268CA68()
{
  v1 = v0;
  v41 = sub_22273793C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_222737C2C();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013500, &qword_222742578);
  v4 = *v0;
  v5 = sub_222739A3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22268CDBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013630, &qword_222742620);
  v2 = *v0;
  v3 = sub_222739A3C();
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

void *sub_22268CF2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013538, &qword_2227425A0);
  v2 = *v0;
  v3 = sub_222739A3C();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_22268D094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F0, &qword_2227425E8);
  v2 = *v0;
  v3 = sub_222739A3C();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_22268D1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013628, &qword_222742618);
  v2 = *v0;
  v3 = sub_222739A3C();
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

id sub_22268D358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013610, &qword_222742608);
  v2 = *v0;
  v3 = sub_222739A3C();
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
        result = v19;
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

void *sub_22268D4B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F8, &unk_2227425F0);
  v2 = *v0;
  v3 = sub_222739A3C();
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

uint64_t sub_22268D61C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222737C2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  v33 = a2;
  v11 = sub_22273911C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
      v21 = sub_22273915C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22269044C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22268D8FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2227377BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2226946C0(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
  v33 = a2;
  v11 = sub_22273911C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2226946C0(&qword_27D013570, MEMORY[0x277CEC000], MEMORY[0x277CEC010]);
      v21 = sub_22273915C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_222690714(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22268DC00(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_222739C5C();
  sub_22273924C();
  v8 = sub_222739C8C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_222739B4C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2226909DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22268DD50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222738A8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2226946C0(&qword_27D013650, MEMORY[0x277D22300], MEMORY[0x277D22308]);
  v33 = a2;
  v11 = sub_22273911C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2226946C0(&qword_27D013658, MEMORY[0x277D22300], MEMORY[0x277D22310]);
      v21 = sub_22273915C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_222690B5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22268E030(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222738ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2226946C0(&qword_27D013668, MEMORY[0x277D22320], MEMORY[0x277D22328]);
  v33 = a2;
  v11 = sub_22273911C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2226946C0(&qword_27D013670, MEMORY[0x277D22320], MEMORY[0x277D22330]);
      v21 = sub_22273915C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_222690E24(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22268E310(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22273919C();
  sub_222739C5C();
  sub_22273924C();
  v7 = sub_222739C8C();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_22273919C();
      v13 = v12;
      if (v11 == sub_22273919C() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_222739B4C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_2226910EC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_22268E4BC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_222739C4C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2226912D4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22268E5C0(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22273985C();

    if (v17)
    {

      sub_22262E364(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22273984C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22268E914(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22268FF84(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2226903C8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22262E364(0, a3, a4);
    v19 = sub_2227396BC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2227396CC();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2226913F4(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22268E834(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_222739C4C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_222691584(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22268E914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2227398FC();
    v23 = v10;
    sub_22273980C();
    if (sub_22273987C())
    {
      sub_22262E364(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22268FF84(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_2227396BC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22273987C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22268EB14(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222737C2C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013518, &qword_222742588);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22268EE70(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2227377BC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013578, &qword_2227425D0);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2226946C0(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22268F1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
  result = sub_2227398EC();
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
      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
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

uint64_t sub_22268F42C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222738A8C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013660, &qword_222742638);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2226946C0(&qword_27D013650, MEMORY[0x277D22300], MEMORY[0x277D22308]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22268F788(uint64_t a1)
{
  v2 = v1;
  v36 = sub_222738ABC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013678, &qword_222742640);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2226946C0(&qword_27D013668, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22268FAE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013648, &qword_222742630);
  result = sub_2227398EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      sub_22273919C();
      sub_222739C5C();
      sub_22273924C();
      v18 = sub_222739C8C();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22268FD60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013560, &qword_2227425C8);
  result = sub_2227398EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_222739C4C();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22268FF84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2227396BC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_2226901A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013608, &qword_222742600);
  result = sub_2227398EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_222739C4C();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2226903C8(uint64_t a1, uint64_t a2)
{
  sub_2227396BC();
  result = sub_2227397EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22269044C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_222737C2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22268EB14(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222691810(MEMORY[0x277CEC160], &qword_27D013518, &qword_222742588);
      goto LABEL_12;
    }

    sub_222691F58(v11 + 1);
  }

  v13 = *v3;
  sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  v14 = sub_22273911C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
      v22 = sub_22273915C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_222690714(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2227377BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22268EE70(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222691810(MEMORY[0x277CEC000], &unk_27D013578, &qword_2227425D0);
      goto LABEL_12;
    }

    sub_222692274(v11 + 1);
  }

  v13 = *v3;
  sub_2226946C0(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
  v14 = sub_22273911C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2226946C0(&qword_27D013570, MEMORY[0x277CEC000], MEMORY[0x277CEC010]);
      v22 = sub_22273915C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_2226909DC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22268F1CC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2226916B4();
      goto LABEL_16;
    }

    sub_222692590(v8 + 1);
  }

  v10 = *v4;
  sub_222739C5C();
  sub_22273924C();
  result = sub_222739C8C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_222739B4C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_222690B5C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_222738A8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22268F42C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222691810(MEMORY[0x277D22300], &qword_27D013660, &qword_222742638);
      goto LABEL_12;
    }

    sub_2226927C8(v11 + 1);
  }

  v13 = *v3;
  sub_2226946C0(&qword_27D013650, MEMORY[0x277D22300], MEMORY[0x277D22308]);
  v14 = sub_22273911C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2226946C0(&qword_27D013658, MEMORY[0x277D22300], MEMORY[0x277D22310]);
      v22 = sub_22273915C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_222690E24(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_222738ABC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22268F788(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_222691810(MEMORY[0x277D22320], &qword_27D013678, &qword_222742640);
      goto LABEL_12;
    }

    sub_222692AE4(v11 + 1);
  }

  v13 = *v3;
  sub_2226946C0(&qword_27D013668, MEMORY[0x277D22320], MEMORY[0x277D22328]);
  v14 = sub_22273911C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_2226946C0(&qword_27D013670, MEMORY[0x277D22320], MEMORY[0x277D22330]);
      v22 = sub_22273915C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_2226910EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22268FAE4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_222691A48();
      goto LABEL_16;
    }

    sub_222692E00(v7 + 1);
  }

  v9 = *v3;
  sub_22273919C();
  sub_222739C5C();
  sub_22273924C();
  v10 = sub_222739C8C();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ASCMetricsInvocationPoint(0);
    do
    {
      v13 = sub_22273919C();
      v15 = v14;
      if (v13 == sub_22273919C() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_222739B4C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_222739B7C();
  __break(1u);
  return result;
}

uint64_t sub_2226912D4(uint64_t result, unint64_t a2, char a3)
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
    sub_22268FD60(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_222691B98();
      a2 = v7;
      goto LABEL_12;
    }

    sub_222693054(v5 + 1);
  }

  v8 = *v3;
  result = sub_222739C4C();
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
  result = sub_222739B7C();
  __break(1u);
  return result;
}

void sub_2226913F4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22268FF84(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_222691CD8(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_222693244(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_2227396BC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22262E364(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2227396CC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_222739B7C();
  __break(1u);
}

void sub_222691584(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2226901A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_222691E18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_222693450(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_222739C4C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ASCSignpostTag(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_222739B7C();
  __break(1u);
}

void *sub_2226916B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
  v2 = *v0;
  v3 = sub_2227398DC();
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

  return result;
}

void *sub_222691810(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2227398DC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_222691A48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013648, &qword_222742630);
  v2 = *v0;
  v3 = sub_2227398DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_222691B98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013560, &qword_2227425C8);
  v2 = *v0;
  v3 = sub_2227398DC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

id sub_222691CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2227398DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_222691E18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013608, &qword_222742600);
  v2 = *v0;
  v3 = sub_2227398DC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_222691F58(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222737C2C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013518, &qword_222742588);
  v7 = sub_2227398EC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222692274(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2227377BC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013578, &qword_2227425D0);
  v7 = sub_2227398EC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2226946C0(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222692590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
  result = sub_2227398EC();
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
      sub_222739C5C();

      sub_22273924C();
      result = sub_222739C8C();
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

uint64_t sub_2226927C8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222738A8C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013660, &qword_222742638);
  v7 = sub_2227398EC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2226946C0(&qword_27D013650, MEMORY[0x277D22300], MEMORY[0x277D22308]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222692AE4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_222738ABC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013678, &qword_222742640);
  v7 = sub_2227398EC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2226946C0(&qword_27D013668, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      result = sub_22273911C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_222692E00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013648, &qword_222742630);
  result = sub_2227398EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22273919C();
      sub_222739C5C();
      v18 = v17;
      sub_22273924C();
      v19 = sub_222739C8C();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_222693054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013560, &qword_2227425C8);
  result = sub_2227398EC();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_222739C4C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_222693244(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2227398EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2227396BC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_222693450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013608, &qword_222742600);
  result = sub_2227398EC();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_222739C4C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void *sub_222693640(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_222693894(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_2226936D0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_222693894((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_222693640(v12, v6, a2, a1);

    MEMORY[0x223DBFCA0](v12, -1, -1);
  }

  return v10;
}

void sub_222693894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_222737C2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  MEMORY[0x28223BE20](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x28223BE20](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        sub_222693F7C(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
          v55 = sub_22273911C();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
              v59 = sub_22273915C();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
          v34 = sub_22273911C();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
              v40 = sub_22273915C();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_222693F7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_222737C2C();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013518, &qword_222742588);
  result = sub_22273990C();
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
    sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
    result = sub_22273911C();
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

uint64_t sub_2226942A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
  result = sub_22273990C();
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
    sub_222739C5C();

    sub_22273924C();
    result = sub_222739C8C();
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

void *sub_2226944C8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22269450C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0134F0, &qword_222742570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_22269457C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2226946C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222694714()
{
  v1 = sub_22273789C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && v0 && (v15 = v14, ObjectType = swift_getObjectType(), v31 = v4, v32 = v7, v17 = v2, v18 = v1, v30 = v13, v19 = ObjectType, v20 = *(v15 + 8), swift_unknownObjectRetain(), v21 = v17, v22 = v31, v23 = v32, v24 = v20(v19, v15), swift_unknownObjectRelease(), v24))
  {
    v25 = [v24 flags];
    sub_22273787C();
    if ((v25 & 0x200) != 0)
    {
      sub_22273788C();
      sub_2226949F8(v23, v22);
      v26 = *(v21 + 8);
      v26(v22, v18);
      v26(v23, v18);
    }

    (*(v21 + 32))(v30, v10, v18);
    v27 = [v24 baseBuyParams];
    sub_22273919C();

    v28 = [v24 metricsBuyParams];
    sub_22273919C();

    sub_2227378AC();
  }

  else
  {
    sub_22273787C();
    sub_2227378AC();
  }
}

uint64_t sub_2226949F8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136E0, &qword_222742648);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_22273789C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = *(v10 + 16);
  v26 = v2;
  v17(v12, v2, v9, v14);
  v24 = sub_222694CD0(&qword_27D0136E8, MEMORY[0x277CEC080]);
  sub_22273978C();
  sub_222694CD0(&qword_27D0136F0, MEMORY[0x277CEC078]);
  v25 = a2;
  v18 = sub_22273915C();
  v28 = v4;
  v19 = *(v4 + 48);
  *v8 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v10 + 32))(&v8[v19], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = v25;
    (v17)(&v8[v19], v25, v9);
    (v17)(v12, v20, v9);
    sub_22273979C();
  }

  v21 = v27;
  sub_222694D14(v8, v27);
  v22 = *v21;
  (*(v10 + 32))(v29, &v21[*(v28 + 48)], v9);
  return v22;
}

uint64_t sub_222694CD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22273789C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222694D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136E0, &qword_222742648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_222694D84(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2226951F8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013710, &unk_2227426A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_222694EC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22269501C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2226951F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013700, &qword_222742678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013710, &unk_2227426A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222695340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013738, &qword_2227426E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22269544C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013730, &qword_2227426C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141C0, &unk_2227426D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222695580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013720, &qword_2227426B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226956A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013728, &qword_2227426C0);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2226957A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA0, &qword_222742EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AMSMediaTaskPlatform(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226958CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013718, &qword_2227426B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2226959D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_222695A54(uint64_t a1)
{
  v49 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v60 = sub_22273763C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v58 = &v46 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - v4;
  v48 = sub_222738BBC();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2227378DC();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227376DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222737B7C();
  v14 = sub_222737B6C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013700, &qword_222742678);
  v15 = swift_allocObject();
  v52 = xmmword_2227413C0;
  *(v15 + 16) = xmmword_2227413C0;
  v16 = sub_22273775C();
  swift_allocObject();
  v17 = sub_22273774C();
  v18 = MEMORY[0x277CEBFC8];
  *(v15 + 56) = v16;
  *(v15 + 64) = v18;
  *(v15 + 32) = v17;
  v19 = sub_22273771C();
  (*(v10 + 104))(v12, *MEMORY[0x277CEBF90], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_22273858C();
  sub_222738C9C();
  v63 = v13;
  v64 = MEMORY[0x277CEC140];
  v56 = v13;
  v62 = v14;
  (*(v6 + 104))(v8, *MEMORY[0x277CEC088], v46);
  v20 = v14;

  v21 = sub_22273770C();
  v22 = MEMORY[0x277CEBFB8];
  *(v15 + 96) = v19;
  *(v15 + 104) = v22;
  *(v15 + 72) = v21;
  v61 = v15;
  v23 = v47;
  v24 = v48;
  sub_22273850C();
  v25 = sub_22273916C();
  v26 = v51;
  sub_222738B0C();

  (*(v50 + 8))(v23, v24);
  v27 = v54;
  sub_222738B3C();
  (*(v55 + 8))(v26, v27);
  if (v65 == 1)
  {
    *&v65 = 0;
    os_eligibility_get_domain_answer();
    if (v65 == 4)
    {
      v28 = type metadata accessor for AppDistributionDeviceAppStateDataSource();
      swift_allocObject();
      v29 = sub_222684F1C();
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        v15 = sub_2226951F8((v30 > 1), v31 + 1, 1, v15);
      }

      v66 = v28;
      v67 = sub_222696260();
      *&v65 = v29;
      *(v15 + 16) = v31 + 1;
      sub_222634290(&v65, v15 + 40 * v31 + 32);
      v61 = v15;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = v52;
  v33 = sub_22273768C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
  sub_222738C9C();
  v34 = sub_22273767C();
  v35 = MEMORY[0x277CEBF60];
  *(inited + 56) = v33;
  *(inited + 64) = v35;
  *(inited + 32) = v34;
  v36 = sub_22273773C();
  swift_allocObject();
  v37 = sub_22273772C();
  v38 = MEMORY[0x277CEBFC0];
  *(inited + 96) = v36;
  *(inited + 104) = v38;
  *(inited + 72) = v37;
  sub_222694D84(inited);
  v66 = v56;
  v67 = MEMORY[0x277CEC140];
  *&v65 = v20;

  v39 = v57;
  sub_22273761C();
  v40 = v58;
  sub_22273762C();

  v41 = v59;
  v42 = *(v59 + 8);
  v43 = v60;
  v42(v39, v60);
  sub_22273766C();
  (*(v41 + 16))(v39, v40, v43);
  v44 = sub_22273765C();

  v42(v40, v43);
  return v44;
}

unint64_t sub_222696260()
{
  result = qword_27D013708;
  if (!qword_27D013708)
  {
    type metadata accessor for AppDistributionDeviceAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013708);
  }

  return result;
}

uint64_t sub_222696310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2227387CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v9 = v3 + qword_281313EB8;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = v3 + qword_281313EB0;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = v3 + qword_281313EA8;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = v3 + qword_281313EC0;
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  (*(v6 + 16))(v8, a3, v5);
  v13 = sub_22273852C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

  sub_22273857C();
  v14 = qword_281313EB8;
  swift_beginAccess();
  sub_222696770(v20, v13 + v14, &unk_27D013120, &unk_222741980);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
  sub_22273857C();
  v15 = qword_281313EB0;
  swift_beginAccess();
  sub_222696770(v20, v13 + v15, &qword_27D013070, &qword_222742730);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22273857C();
  v16 = qword_281313EA8;
  swift_beginAccess();
  sub_222696770(v20, v13 + v16, &qword_27D013740, &qword_222742738);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137C0, &qword_222742750);
  sub_22273857C();
  (*(v6 + 8))(a3, v5);
  v17 = qword_281313EC0;
  swift_beginAccess();
  sub_222696770(v20, v13 + v17, &unk_27D014820, &unk_222742740);
  swift_endAccess();

  return v13;
}

uint64_t sub_222696608()
{
  sub_222660468(v0 + qword_281313EB8, &unk_27D013120, &unk_222741980);
  sub_222660468(v0 + qword_281313EB0, &qword_27D013070, &qword_222742730);
  sub_222660468(v0 + qword_281313EA8, &qword_27D013740, &qword_222742738);
  return sub_222660468(v0 + qword_281313EC0, &unk_27D014820, &unk_222742740);
}

uint64_t sub_22269669C()
{
  v0 = sub_22273859C();
  v1 = qword_281313EB8;

  sub_222660468(v2 + v1, &unk_27D013120, &unk_222741980);
  sub_222660468(v0 + qword_281313EB0, &qword_27D013070, &qword_222742730);
  sub_222660468(v0 + qword_281313EA8, &qword_27D013740, &qword_222742738);
  sub_222660468(v0 + qword_281313EC0, &unk_27D014820, &unk_222742740);

  return swift_deallocClassInstance();
}

uint64_t sub_222696770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2226967D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F726665726F7473 && a2 == 0xEC0000004449746ELL;
  if (v6 || (sub_222739B4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002227490C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222739B4C();

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

uint64_t sub_2226968D8(uint64_t a1)
{
  v2 = sub_22262C284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222696914(uint64_t a1)
{
  v2 = sub_22262C284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222696950(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013758, &qword_2227428E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22262C284();
  sub_222739CFC();
  v14 = 0;
  sub_222739ACC();
  if (!v4)
  {
    v13 = 1;
    sub_222739ADC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_222696AE4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_222739B4C() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_222696B70()
{
  v1 = *v0;
  sub_222739C5C();
  MEMORY[0x223DBEFB0](v1);
  return sub_222739C8C();
}

uint64_t sub_222696BB8()
{
  v1 = *v0;
  sub_222739C5C();
  MEMORY[0x223DBEFB0](v1);
  return sub_222739C8C();
}

uint64_t sub_222696BFC()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return sub_222737F8C();
}

uint64_t sub_222696D5C()
{
  [*(v0 + 24) removeObserver_];
  ASCUnregisterForRebootstrapQANotification(*(v0 + 76));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_222696DC0()
{
  sub_222696D5C();

  return swift_deallocClassInstance();
}

uint64_t sub_222696DF4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  if (v6)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    if (v5 != a1 || v6 != a2)
    {
      v9 = a3;
      v10 = sub_222739B4C();
      a3 = v9;
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (a2)
  {
LABEL_14:
    swift_getObjectType();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013760, &unk_2227428F0);
    sub_22262BED4(qword_281313478, &qword_27D013760, &unk_2227428F0, &unk_222745408);
    sub_2227382EC();
  }

  if ((v7 ^ a3))
  {
    goto LABEL_14;
  }
}

uint64_t sub_222696F6C()
{
  sub_222737F8C();
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();
}

id sub_2226970C0()
{
  v1 = *(v0 + 48);
  [v1 lock];
  v2 = sub_222697664(*(v0 + 16));
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (v5)
  {
    if (v3)
    {
      v7 = *(v0 + 56) == v2 && v5 == v3;
      if (v7 || (v8 = v2, v9 = v3, v10 = v4, v11 = sub_222739B4C(), v4 = v10, v3 = v9, v12 = v11, v2 = v8, (v12 & 1) != 0))
      {
LABEL_8:
        v13 = v4 ^ v6;
        sub_222696DF4(v2, v3, v4 & 1);
        result = [v1 unlock];
        if ((v13 & 1) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  sub_222696DF4(v2, v3, v4 & 1);
  [v1 unlock];
LABEL_12:
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v15 = sub_222738F6C();
  __swift_project_value_buffer(v15, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  return sub_222737F8C();
}

unint64_t sub_222697610()
{
  result = qword_27D013748;
  if (!qword_27D013748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013748);
  }

  return result;
}

uint64_t sub_222697664(void *a1)
{
  v2 = [a1 ams_localiTunesAccount];
  if (v2 && (v3 = v2, v4 = [v2 ams_storefront], v3, v4))
  {
    v5 = sub_22273919C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 ams_activeiTunesAccount];
  if (v6)
  {
    v7 = v6;
    [v6 ams_isManagedAppleID];
  }

  return v5;
}

unint64_t sub_222697744()
{
  result = qword_281312FF0;
  if (!qword_281312FF0)
  {
    sub_222737C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312FF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_222697830()
{
  result = qword_27D013768;
  if (!qword_27D013768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013768);
  }

  return result;
}

id sub_2226978A0()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v2 = *(v0 + 48);
  [v2 lock];
  if (*(v0 + 56))
  {

    sub_222737CFC();
  }

  *(v0 + 56) = 0;

  return [v2 unlock];
}

uint64_t sub_222697A48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222697A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22266110C(a3, v25 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2227393FC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22273921C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_222697DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22266110C(a3, v25 - v10, &unk_27D013050, &qword_222741370);
  v12 = sub_22273946C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_222660468(v11, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2227393FC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22273921C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2226980AC(void *a2@<X8>)
{
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v3 = [objc_opt_self() ams:v4 sharedAccountStoreForClient:?];

  *a2 = v3;
}

uint64_t sub_222698158@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  v4 = MEMORY[0x277D225B8];
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  sub_22273858C();
  return sub_222738C9C();
}

uint64_t sub_2226981D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B8, &qword_222742B70);

  v5 = sub_222738F2C();
  v6 = sub_22273946C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = &unk_222742B68;
  v7[5] = a1;
  v7[6] = v5;

  sub_2226D4E54(0, 0, v4, &unk_222742B78, v7);

  return v5;
}

uint64_t sub_222698338(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v2[10] = swift_task_alloc();
  v3 = sub_222738BAC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222698424, 0, 0);
}

uint64_t sub_222698424()
{
  v1 = v0[10];
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v2 = v0[7];
  sub_222738B7C();
  sub_222738B8C();
  sub_222738B9C();
  v3 = v2;
  v4 = sub_22273916C();

  v5 = sub_22273916C();

  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5 processInfo:v3];

  v7 = v3;
  v8 = v6;
  sub_2226CBE6C(v1);
  type metadata accessor for JSJetPackFetcher(0);
  swift_allocObject();
  v9 = sub_2226CD4E4(v8, v7, v1);
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384FC();
  v14 = sub_22273872C();
  v15 = MEMORY[0x277D21FB0];
  v0[5] = v14;
  v0[6] = v15;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22273871C();
  sub_222737DAC();
  sub_222738E6C();

  (*(v10 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v13 = v9;

  v16 = v0[1];

  return v16();
}

uint64_t sub_222698704(uint64_t a1)
{
  v1 = sub_222738BAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v5 = v9[1];
  sub_222738B7C();
  v6 = v5;
  v7 = sub_222738AEC();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_22269885C@<X0>(uint64_t a2@<X8>)
{
  v13[0] = a2;
  v2 = sub_222737F7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &unk_281312D90, 0x277CEE6F0);
  sub_22273858C();
  sub_222738C9C();
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_222738C9C();
  v10 = v13[3];
  (*(v3 + 104))(v5, *MEMORY[0x277D21A90], v2);
  v11 = sub_22273950C();

  (*(v3 + 8))(v5, v2);
  result = (*(v7 + 8))(v9, v6);
  *v13[0] = v11;
  return result;
}

uint64_t sub_222698A84@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_222738BBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  sub_22273850C();
  v9 = v16[1];
  sub_22273850C();
  v10 = v9;
  v11 = sub_222738ADC();
  sub_22273944C();
  v12 = sub_22273946C();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v13[5] = v11;
  v14 = v10;
  swift_unknownObjectRetain();
  sub_222699674(0, 0, v4, &unk_222742B58, v13);

  result = (*(v6 + 8))(v8, v5);
  *a1 = v14;
  a1[1] = v11;
  return result;
}

uint64_t sub_222698CB0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_222737BCC();

  result = sub_222737BBC();
  v5 = MEMORY[0x277CEC150];
  a2[3] = v3;
  a2[4] = v5;
  *a2 = result;
  return result;
}

void *sub_222698D28@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ASDContingentPricingSubscriptionManager();
  swift_allocObject();
  result = sub_2226F8074();
  a1[3] = v2;
  a1[4] = &off_2835CAB00;
  *a1 = result;
  return result;
}

uint64_t sub_222698D88@<X0>(uint64_t *a1@<X8>)
{
  v5[3] = sub_222737ACC();
  v5[4] = MEMORY[0x277CEC108];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_222737ABC();
  v2 = sub_22273777C();
  v3 = MEMORY[0x277CEBFD8];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22273776C();
}

uint64_t sub_222698E74@<X0>(void *a1@<X1>, SEL *a2@<X2>, unint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = [objc_opt_self() *a2];
  result = sub_22262E364(0, a3, a1);
  a5[3] = result;
  a5[4] = a4;
  *a5 = v9;
  return result;
}

uint64_t sub_222698EF0@<X0>(uint64_t *a2@<X8>)
{
  v30 = a2;
  v2 = type metadata accessor for MetricsTopicProvider(0);
  v29 = *(v2 - 8);
  v26[1] = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = sub_222738BBC();
  v28 = *(v7 - 8);
  v8 = v28;
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  sub_22273850C();
  (*(v8 + 16))(v6, v13, v7);
  v14 = sub_22273895C();
  sub_22273858C();
  sub_222738C9C();
  v15 = MetricsTopicProvider.currentMetricsTopic.getter();
  v17 = v16;
  v18 = sub_2226DD5A8(&unk_2835C7210);
  sub_22269E384(&unk_2835C7230);
  MEMORY[0x223DBDC90](v10, v15, v17, v18);
  v19 = v27;
  sub_22269E3D8(v6, v27, type metadata accessor for MetricsTopicProvider);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_22269E440(v19, v21 + v20, type metadata accessor for MetricsTopicProvider);
  v22 = sub_22273893C();

  v23 = MEMORY[0x277D221A8];
  v24 = v30;
  v30[3] = v14;
  v24[4] = v23;
  *v24 = v22;
  sub_22269E520(v6, type metadata accessor for MetricsTopicProvider);
  return (*(v28 + 8))(v13, v7);
}

uint64_t sub_2226991E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_222738C1C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_222738BBC();
  MEMORY[0x28223BE20](v4);
  sub_22273858C();
  sub_222738C9C();
  sub_222738C0C();
  v5 = sub_222737B3C();
  v6 = MEMORY[0x277CEC130];
  a2[3] = v5;
  a2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_222737B2C();
}

id sub_22269930C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() daemonDefaults];
  *a1 = result;
  return result;
}

uint64_t sub_222699358@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_222737B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273858C();
  sub_222738C9C();
  result = sub_222737B4C();
  v5 = MEMORY[0x277CEC138];
  a2[3] = v3;
  a2[4] = v5;
  *a2 = result;
  return result;
}

void *sub_2226993FC@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_22273858C();
  sub_222738C9C();
  v3 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
  swift_allocObject();
  result = sub_2226F77B8(v5);
  a2[3] = v3;
  a2[4] = &off_2835CAA40;
  *a2 = result;
  return result;
}

uint64_t sub_2226994A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_222695A54(a1);
  v8 = sub_22273946C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_22269994C(0, 0, v6, &unk_222742B40, v9);

  result = sub_22273766C();
  v11 = MEMORY[0x277CEBF58];
  a2[3] = result;
  a2[4] = v11;
  *a2 = v7;
  return result;
}

uint64_t sub_2226995E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222660228;

  return MEMORY[0x28213E1C0]();
}

uint64_t sub_222699674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22266110C(a3, v22 - v9, &unk_27D013050, &qword_222741370);
  v11 = sub_22273946C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_222660468(v10, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2227393FC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_22273921C() + 32;
      sub_22262E364(0, &qword_281312C18, 0x277CEE5B8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  sub_22262E364(0, &qword_281312C18, 0x277CEE5B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22269994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22266110C(a3, v22 - v9, &unk_27D013050, &qword_222741370);
  v11 = sub_22273946C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_222660468(v10, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2227393FC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22273921C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_222699BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22266110C(a3, v22 - v9, &unk_27D013050, &qword_222741370);
  v11 = sub_22273946C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_222660468(v10, &unk_27D013050, &qword_222741370);
  }

  else
  {
    sub_22273945C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2227393FC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22273921C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_222660468(a3, &unk_27D013050, &qword_222741370);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138B0, &qword_222742B50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_222699EB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() defaultCenter];
  type metadata accessor for JSStackManager(0);
  swift_allocObject();

  result = sub_2226D65D8(v4, v3);
  *a2 = result;
  return result;
}

uint64_t sub_222699F3C(uint64_t a1)
{
  type metadata accessor for JSStackManager(0);
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
  v3[3] = sub_22273872C();
  v3[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  v1 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_22269A060@<X0>(char *a1@<X8>)
{
  v107 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013880, &qword_222742B18);
  v2 = *(v1 - 8);
  v105 = v1;
  v106 = v2;
  MEMORY[0x28223BE20](v1);
  v104 = v84 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013888, &qword_222742B20);
  v103 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013890, &qword_222742B28);
  v6 = *(v5 - 8);
  v96 = v5;
  v97 = v6;
  MEMORY[0x28223BE20](v5);
  v93 = v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v84 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v84 - v16;
  MEMORY[0x28223BE20](v18);
  v85 = v84 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = v84 - v21;
  MEMORY[0x28223BE20](v22);
  v87 = v84 - v23;
  MEMORY[0x28223BE20](v24);
  v88 = v84 - v25;
  MEMORY[0x28223BE20](v26);
  v89 = v84 - v27;
  MEMORY[0x28223BE20](v28);
  v90 = v84 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = v84 - v31;
  MEMORY[0x28223BE20](v33);
  v111 = v84 - v34;
  MEMORY[0x28223BE20](v35);
  v91 = v84 - v36;
  MEMORY[0x28223BE20](v37);
  v92 = v84 - v38;
  MEMORY[0x28223BE20](v39);
  v94 = v84 - v40;
  MEMORY[0x28223BE20](v41);
  v95 = v84 - v42;
  MEMORY[0x28223BE20](v43);
  v98 = v84 - v44;
  MEMORY[0x28223BE20](v45);
  v100 = v84 - v46;
  MEMORY[0x28223BE20](v47);
  v102 = v84 - v48;
  v109 = type metadata accessor for ObjectGraph(0);
  sub_22273863C();
  v49 = *(v9 + 16);
  v49(v14, v11, v8);
  v50 = v49;
  sub_22269DE08();
  sub_22273860C();
  v51 = v9 + 8;
  v52 = *(v9 + 8);
  v52(v11, v8);
  v53 = v51;
  v50(v17, v14, v8);
  sub_22269DE5C();
  sub_22273860C();
  v52(v14, v8);
  v54 = v85;
  v50(v85, v17, v8);
  sub_22269DEB0();
  sub_22273860C();
  v52(v17, v8);
  v55 = v86;
  v50(v86, v54, v8);
  sub_22269DF04();
  sub_22273860C();
  v52(v54, v8);
  v56 = v87;
  v50(v87, v55, v8);
  sub_22269DF58();
  sub_22273860C();
  v52(v55, v8);
  v57 = v53;
  v58 = v88;
  v50(v88, v56, v8);
  sub_22266BE40();
  sub_22273860C();
  v52(v56, v8);
  v59 = v89;
  v50(v89, v58, v8);
  sub_22269DFAC();
  sub_22273860C();
  v52(v58, v8);
  v60 = v90;
  v50(v90, v59, v8);
  sub_22269E000();
  sub_22273860C();
  v108 = v52;
  v52(v59, v8);
  v84[1] = v57;
  v50(v32, v60, v8);
  v84[0] = v50;
  sub_22269E054();
  sub_22273860C();
  v52(v60, v8);
  v110[3] = sub_22273872C();
  v110[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v110);
  sub_22273871C();
  v61 = v93;
  sub_222738A4C();
  v62 = v111;
  v50(v111, v32, v8);
  sub_22262BED4(&unk_281312EE0, &unk_27D013890, &qword_222742B28, MEMORY[0x277D222C0]);
  v63 = v61;
  v64 = v96;
  sub_22273860C();
  (*(v97 + 8))(v63, v64);
  v65 = v108;
  v108(v32, v8);
  v66 = v99;
  sub_222738A5C();
  v67 = v91;
  v68 = v62;
  v69 = v84[0];
  (v84[0])(v91, v68, v8);
  sub_22262BED4(&qword_281312ED8, &qword_27D013888, &qword_222742B20, MEMORY[0x277D222E0]);
  v70 = v101;
  sub_22273860C();
  (*(v103 + 8))(v66, v70);
  v65(v111, v8);
  v71 = v104;
  sub_222738A3C();
  v72 = v92;
  v69(v92, v67, v8);
  sub_22262BED4(&unk_281312EF0, &qword_27D013880, &qword_222742B18, MEMORY[0x277D22250]);
  v73 = v105;
  sub_22273860C();
  (*(v106 + 8))(v71, v73);
  v74 = v108;
  v108(v67, v8);
  v75 = v94;
  v69(v94, v72, v8);
  v76 = v69;
  sub_22269E0A8();
  sub_22273860C();
  v74(v72, v8);
  v77 = v74;
  v78 = v95;
  v69(v95, v75, v8);
  sub_22269E0FC();
  sub_22273860C();
  v77(v75, v8);
  v79 = v98;
  v69(v98, v78, v8);
  sub_22269E150();
  sub_22273860C();
  v77(v78, v8);
  v110[0] = sub_22262E364(0, &unk_281312DA0, 0x277CCB038);
  v80 = v100;
  v76(v100, v79, v8);
  sub_22269E1A4();
  sub_22273860C();
  v77(v79, v8);
  v81 = [objc_opt_self() sharedWorkspace];
  v110[0] = v81;
  v82 = v102;
  v76(v102, v80, v8);
  sub_22269E1F8();
  sub_22273860C();
  v77(v80, v8);

  v110[0] = sub_22267FB70;
  v110[1] = 0;
  v76(v107, v82, v8);
  sub_22269E24C();
  sub_22273860C();
  return (v77)(v82, v8);
}

uint64_t sub_22269AD24@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for JSStackManager(0);
  sub_22273858C();
  result = sub_222738C9C();
  a4[3] = a2;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

uint64_t sub_22269ADA8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSStackManager(0);
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  a2[3] = &type metadata for JSMetricsService;
  a2[4] = &off_2835CAE18;
  v3 = swift_allocObject();
  *a2 = v3;
  sub_222738C9C();
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  result = sub_222738C9C();
  *(v3 + 16) = v6;
  *(v3 + 64) = v5;
  return result;
}

uint64_t sub_22269AEC0(uint64_t a1)
{
  v2 = sub_2227389FC();
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for JSStackManager(0);
  sub_22273858C();
  sub_222738C9C();
  sub_22269DD60();
  sub_2226D9C20(a1);
  sub_22269DDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);

  sub_222738C9C();
  sub_2227385CC();
}

uint64_t sub_22269B010@<X0>(void *a2@<X8>)
{
  v46 = a2;
  v2 = sub_222738BBC();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AMSMediaFetcher(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v7 = v60[0];
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  *v6 = v7;
  v8 = (v6 + *(v4 + 28));
  *v8 = 0;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137E0, &unk_222742AE0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  sub_222738C9C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_222738C9C();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v58 = v4;
  v59 = &off_2835C9178;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  v42 = type metadata accessor for AMSMediaFetcher;
  sub_22269E3D8(v6, boxed_opaque_existential_1, type metadata accessor for AMSMediaFetcher);
  v55 = &type metadata for JSLockupService;
  v56 = &off_2835CACE0;
  v54[0] = v14;
  v52 = &type metadata for DeviceAppDistribution;
  v53 = &off_2835C9118;
  v51[0] = swift_allocObject();
  sub_22269DCB0(v60, v51[0] + 16);
  v43 = type metadata accessor for LockupFetcherClient(0);
  v16 = objc_allocWithZone(v43);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = *v25;
  v50[3] = v4;
  v50[4] = &off_2835C9178;
  v33 = __swift_allocate_boxed_opaque_existential_1(v50);
  v34 = v42;
  sub_22269E440(v20, v33, v42);
  v49[4] = &off_2835CACE0;
  v49[3] = &type metadata for JSLockupService;
  v49[0] = v32;
  v48[3] = &type metadata for DeviceAppDistribution;
  v48[4] = &off_2835C9118;
  v35 = swift_allocObject();
  v48[0] = v35;
  v36 = v30[3];
  v35[3] = v30[2];
  v35[4] = v36;
  v35[5] = v30[4];
  v37 = v30[1];
  v35[1] = *v30;
  v35[2] = v37;
  sub_22266BCCC(v50, v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher);
  sub_22266BCCC(v49, v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service);
  sub_22266BCCC(v61, v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController);
  v39 = v44;
  v38 = v45;
  (*(v45 + 16))(v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_bag, v44, v2);
  sub_22266BCCC(v48, v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution);
  v47.receiver = v16;
  v47.super_class = v43;
  v40 = objc_msgSendSuper2(&v47, sel_init);
  sub_22269DD0C(v60);
  (*(v38 + 8))(v39, v2);
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_22269E520(v6, v34);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  result = __swift_destroy_boxed_opaque_existential_1(v62);
  *v46 = v40;
  return result;
}

uint64_t sub_22269B724@<X0>(void *a2@<X8>)
{
  v42 = a2;
  v41 = sub_22273952C();
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222737C9C();
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22273954C();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273842C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2227385FC();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222738BBC();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v43 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273858C();
  v45 = v10;
  sub_222738C9C();
  v12 = v8;
  v34 = v8;
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_222738C9C();
  sub_22269DC68(&qword_281312F80, MEMORY[0x277D21CE0], &protocol conformance descriptor for MetricsLogger.Configuration);
  sub_222738C8C();
  v13 = sub_22273844C();
  swift_allocObject();
  v14 = sub_22273840C();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v58, v58[3]);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v56 = &type metadata for JSMetricsService;
  v57 = &off_2835CAE18;
  v20 = swift_allocObject();
  v55[0] = v20;
  v21 = *(v18 + 1);
  *(v20 + 16) = *v18;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v18 + 2);
  *(v20 + 64) = *(v18 + 6);
  v54[3] = v13;
  v54[4] = MEMORY[0x277D21CE8];
  v54[0] = v14;
  v52 = &type metadata for OSSignpostExtractor;
  v53 = &off_2835C93F8;
  v35 = type metadata accessor for MetricsClient(0);
  v22 = objc_allocWithZone(v35);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v50[3] = &type metadata for JSMetricsService;
  v50[4] = &off_2835CAE18;
  v28 = swift_allocObject();
  v49[4] = &off_2835C93F8;
  v50[0] = v28;
  v29 = *(v26 + 1);
  *(v28 + 16) = *v26;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(v26 + 2);
  *(v28 + 64) = *(v26 + 6);
  v49[3] = &type metadata for OSSignpostExtractor;
  (*(v46 + 16))(&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_bag], v43, v45);
  (*(v47 + 16))(&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsPipeline], v44, v12);
  sub_22266BCCC(v50, &v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsService]);
  sub_22266BCCC(v54, &v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_metricsLogger]);
  sub_22266BCCC(v49, &v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_signpostExtractor]);
  v30 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v33[0] = "appstorecomponentsd";
  v33[1] = v30;
  (*(v37 + 104))(v36, *MEMORY[0x277D85268], v38);

  sub_222737C7C();
  v58[7] = MEMORY[0x277D84F90];
  sub_22269DC68(&qword_281312CD0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70, MEMORY[0x277D83970]);
  sub_2227397BC();
  *&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit13MetricsClient_collectionQueue] = sub_22273958C();
  v48.receiver = v22;
  v48.super_class = v35;
  v31 = objc_msgSendSuper2(&v48, sel_init);

  (*(v47 + 8))(v44, v34);
  (*(v46 + 8))(v43, v45);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v55);
  result = __swift_destroy_boxed_opaque_existential_1(v58);
  *v42 = v31;
  return result;
}

id sub_22269BF28@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UtilityClient()) init];
  *a1 = result;
  return result;
}

uint64_t sub_22269BF6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObjectGraph(0);

  v3 = sub_2227385AC();

  sub_22273853C();

  *a2 = v3;
  return result;
}

uint64_t sub_22269BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v40 = sub_222738BBC();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22273743C();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = qword_281313EB0;
  swift_beginAccess();
  sub_22266110C(a1 + v13, &v45, &qword_27D013070, &qword_222742730);
  if (v46)
  {
    sub_222634290(&v45, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
    type metadata accessor for ObjectGraph(0);
    sub_222738C9C();
    v14 = sub_22273946C();
    v15 = *(*(v14 - 8) + 56);
    v15(v12, 1, 1, v14);
    sub_22266BCCC(v47, &v43);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_222634290(&v43, v16 + 32);
    sub_222697DAC(0, 0, v12, &unk_222742A90, v16);

    v15(v12, 1, 1, v14);
    sub_22266BCCC(&v45, &v43);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_222634290(&v43, v17 + 32);
    sub_222697DAC(0, 0, v12, &unk_222742AA0, v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
    sub_222738C9C();
    sub_22262E364(0, &qword_281312DB0, off_2784B0638);
    sub_222738C9C();
    v18 = v41;
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_22273906C();
    sub_22273740C();
    (*(v33 + 8))(v9, v34);
    v19 = sub_22273916C();

    [*&v18 setStorefrontLocaleID_];

    v20 = v35;
    sub_222738C9C();
    v21 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v22 = *(v36 + 8);
    v22(v6, v4);
    v23 = 0;
    if ((v42 & 1) == 0)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v18 setOverlaysRateLimitRequestsPerSecond_];

    v24 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v22(v6, v4);
    if (v42)
    {
      v25 = 0;
    }

    else
    {
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v18 setOverlaysRateLimitTimeWindow_];

    v26 = sub_22273916C();
    sub_222738B5C();

    sub_222738B2C();
    v22(v6, v4);
    if (v42)
    {
      v27 = 0;
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    [*&v18 setOverlaysLoadTimeout_];

    v28 = objc_opt_self();
    if (qword_281313008 != -1)
    {
      swift_once();
    }

    v29 = qword_281315B68;
    v30 = sub_22273916C();
    [v28 launchCorrelationKeyWithTag:v29 withString:v30];

    [v28 bootstrapDidEndWithTag_];
    (*(v37 + 8))(v20, v40);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  else
  {
    sub_222660468(&v45, &qword_27D013070, &qword_222742730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
    result = sub_22273851C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22269C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_2227381BC();
  v4[11] = swift_task_alloc();
  v5 = sub_222737BDC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_2227376CC();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22269C928, 0, 0);
}

uint64_t sub_22269C928()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *v1 = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277CEC158], v3);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_22269CA24;
  v8 = v0[17];
  v9 = v0[14];

  return MEMORY[0x28213E540](v8, v9, v5, v6);
}

uint64_t sub_22269CA24()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22269CC2C;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v6 = sub_22269CBB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22269CBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22269CC2C()
{
  if (qword_27D0129B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v6 = v0[1];

  return v6();
}

uint64_t sub_22269CE78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22269C7E0(a1, v4, v5, v1 + 32);
}

uint64_t sub_22269CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a4;
  sub_2227381BC();
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22269CFB8, 0, 0);
}

uint64_t sub_22269CFB8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_22269D054;

  return sub_2226F88B8();
}

uint64_t sub_22269D054(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22269D1B0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22269D1B0()
{
  if (qword_27D0129B8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v6 = v0[1];

  return v6();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22269D424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22269CF28(a1, v4, v5, v1 + 32);
}

uint64_t sub_22269D4D4(uint64_t a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  swift_beginAccess();
  v3 = *(a1 + 56);
  if (v3)
  {
  }

  else
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v4 = sub_222738F6C();
    __swift_project_value_buffer(v4, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    sub_22273817C();
    sub_22273819C();
    sub_2227381CC();
    sub_222738C5C();

    (*(a1 + 24))(&v7, v5);
    v3 = v7;
    *(a1 + 56) = v7;

    *(a1 + 72) = os_transaction_create();
    swift_unknownObjectRelease();
  }

  sub_2226D8754();
  return v3;
}

uint64_t sub_22269D720(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22269D818;

  return v6(a1);
}

uint64_t sub_22269D818()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22269D910(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_22269D720(a1, v4);
}

uint64_t sub_22269D9C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22269D4D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22269D9F4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22269DAE8;

  return v5(v2 + 16);
}

uint64_t sub_22269DAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22269DC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22269DD60()
{
  result = qword_2813131F8;
  if (!qword_2813131F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131F8);
  }

  return result;
}

unint64_t sub_22269DDB4()
{
  result = qword_281313470;
  if (!qword_281313470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313470);
  }

  return result;
}

unint64_t sub_22269DE08()
{
  result = qword_2813132A8;
  if (!qword_2813132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813132A8);
  }

  return result;
}

unint64_t sub_22269DE5C()
{
  result = qword_2813131C0;
  if (!qword_2813131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131C0);
  }

  return result;
}

unint64_t sub_22269DEB0()
{
  result = qword_2813140E8;
  if (!qword_2813140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140E8);
  }

  return result;
}

unint64_t sub_22269DF04()
{
  result = qword_2813140F0;
  if (!qword_2813140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140F0);
  }

  return result;
}

unint64_t sub_22269DF58()
{
  result = qword_281314108[0];
  if (!qword_281314108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281314108);
  }

  return result;
}

unint64_t sub_22269DFAC()
{
  result = qword_281313118[0];
  if (!qword_281313118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281313118);
  }

  return result;
}

unint64_t sub_22269E000()
{
  result = qword_281313010;
  if (!qword_281313010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313010);
  }

  return result;
}

unint64_t sub_22269E054()
{
  result = qword_2813130E8;
  if (!qword_2813130E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813130E8);
  }

  return result;
}

unint64_t sub_22269E0A8()
{
  result = qword_281314488;
  if (!qword_281314488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281314488);
  }

  return result;
}

unint64_t sub_22269E0FC()
{
  result = qword_281313110;
  if (!qword_281313110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313110);
  }

  return result;
}