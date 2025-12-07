uint64_t sub_265CE463C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF78, &qword_265D5B1B0);
  result = sub_265D5A2D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_265D5A460();
      sub_265D59EF0();

      result = sub_265D5A4A0();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
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
        goto LABEL_16;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_265CE4990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF60, &qword_265D5B180);
  result = sub_265D5A2D0();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_265C033C4(v21, v31);
      }

      else
      {
        sub_265C97624(v21, v31);
      }

      sub_265D5A460();
      v22 = sub_265D584C0();
      MEMORY[0x266770530](v22);
      result = sub_265D5A4A0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_265C033C4(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_265CE4C34(int64_t a1, uint64_t a2)
{
  v40 = sub_265D58330();
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
    v12 = sub_265D5A130();
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
      sub_265CE68FC(&qword_28003E380, MEMORY[0x277D51510], MEMORY[0x277D51520]);
      v23 = sub_265D59E60();
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

unint64_t sub_265CE4F54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265D5A130() + 1) & ~v5;
    while (1)
    {
      sub_265D5A460();
      v9 = sub_265D584C0();
      MEMORY[0x266770530](v9);
      result = sub_265D5A4A0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_265D59BA0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_265CE5120(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265D5A130() + 1) & ~v5;
    do
    {
      sub_265D5A460();
      v11 = sub_265D584C0();
      MEMORY[0x266770530](v11);
      result = sub_265D5A4A0();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

  return result;
}

uint64_t sub_265CE52C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_265D58330();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_265CE2A20(a2);
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
      sub_265CE5B68();
      goto LABEL_7;
    }

    sub_265CE3508(v17, a3 & 1);
    v22 = sub_265CE2A20(a2);
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
      return sub_265CE5998(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_265D5A3F0();
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

uint64_t sub_265CE5490(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_265CE2890(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_265CE5DE8();
      goto LABEL_7;
    }

    sub_265CE38E4(v13, a3 & 1);
    v24 = sub_265CE2890(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_265D5A3F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_265D59BA0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_265CE5A50(v10, a2, a1, v16);
}

unint64_t sub_265CE55F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265CE2B6C(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
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

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_265CE61BC();
    result = v17;
    goto LABEL_8;
  }

  sub_265CE3EF0(v14, a3 & 1);
  result = sub_265CE2B6C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_265D5A3F0();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_265CE5740(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_265CE2900(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_265CE658C();
    result = v17;
    goto LABEL_8;
  }

  sub_265CE463C(v14, a2 & 1);
  result = sub_265CE2900(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_265D5A3F0();
  __break(1u);
  return result;
}

uint64_t sub_265CE5868(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_265CE2890(a2);
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
      sub_265CE66D8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_265CE4990(v14, a3 & 1);
    v9 = sub_265CE2890(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_265D5A3F0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_265C033C4(a1, v20);
  }

  else
  {

    return sub_265CE5AFC(v9, a2, a1, v19);
  }
}

uint64_t sub_265CE5998(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_265D58330();
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

uint64_t sub_265CE5A50(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_265D59BA0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_265CE5AFC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_265C033C4(a3, a4[7] + 40 * a1);
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

char *sub_265CE5B68()
{
  v1 = v0;
  v33 = sub_265D58330();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF58, &qword_265D5B178);
  v3 = *v0;
  v4 = sub_265D5A2C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_265CE5DE8()
{
  v1 = v0;
  v29 = sub_265D59BA0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF88, &qword_265D5B1C0);
  v3 = *v0;
  v4 = sub_265D5A2C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
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

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_265CE6050()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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

id sub_265CE61BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE80, &qword_265D5B0B8);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_265CE6318()
{
  v1 = v0;
  v29 = sub_265D57E30();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  v3 = *v0;
  v4 = sub_265D5A2C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
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

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_265CE658C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF78, &qword_265D5B1B0);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_265CE66D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF60, &qword_265D5B180);
  v2 = *v0;
  v3 = sub_265D5A2C0();
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
        sub_265C97624(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_265C033C4(v19, *(v4 + 56) + 40 * v17);
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

uint64_t sub_265CE68FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265CE6954()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_265D585C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D580E0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_265CE6D1C(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_265D585B0();
  if (v12)
  {
    v13 = sub_265D587C0();
    v15 = v14;
    if (v13 == sub_265D587C0() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_265D5A3C0();

      if ((v18 & 1) == 0)
      {
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = *(v1 + 16);
    if (*(v19 + 120))
    {
      v20 = sub_265D58CA0();
      MEMORY[0x28223BE20](v20);
      *&v21[-32] = v19;
      v21[-24] = 2;
      *&v21[-16] = 0;
      sub_265D58CA0();
    }

    return (*(v6 + 8))(v8, v5);
  }

  sub_265C037E8(v10, v11, 0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_265CE6BE8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265CE6D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CE6DB4(uint64_t a1, uint64_t a2)
{
  v21 = sub_265D59DE0();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D581A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58AC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58F20();
  sub_265D58A10();
  (*(v10 + 8))(v12, v9);
  v13 = sub_265D58190();
  v15 = v14;
  LOBYTE(v12) = v16;
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 72) = v13;
    }
  }

  else
  {
    sub_265C037E8(v13, v15, 0);
    sub_265D595F0();
    v18 = sub_265D59DD0();
    v19 = sub_265D5A070();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_265C01000, v18, v19, "Unrecognized media type, failing to activate SessionAppForegrounder", v20, 2u);
      MEMORY[0x266770CF0](v20, -1, -1);
    }

    return (*(v2 + 8))(v4, v21);
  }

  return result;
}

uint64_t sub_265CE7090(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 72) = 4;
  }

  return result;
}

uint64_t sub_265CE70E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionAppForegrounder.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
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

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
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

uint64_t storeEnumTagSinglePayload for SessionAppForegrounder.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_265CE729C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_265CE72B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_265CE72D0(uint64_t a1, uint64_t a2)
{
  v232 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  MEMORY[0x28223BE20](v4 - 8);
  v203 = &v190 - v5;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v204 = &v190 - v6;
  v202 = sub_265D58130();
  v216 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v215 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59DE0();
  v234 = *(v8 - 8);
  v235 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v229 = &v190 - v13;
  MEMORY[0x28223BE20](v12);
  v207 = &v190 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F0, &qword_265D5CCA0);
  v16 = *(v15 - 8);
  v230 = v15;
  v231 = v16;
  MEMORY[0x28223BE20](v15);
  v211 = &v190 - v17;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F8, &unk_265D5CCA8);
  v18 = MEMORY[0x28223BE20](v221);
  v20 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v217 = &v190 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v209 = &v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v214 = &v190 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E700, &qword_265D5CCB8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v210 = &v190 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v218 = &v190 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v212 = &v190 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v220 = &v190 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v219 = &v190 - v36;
  MEMORY[0x28223BE20](v35);
  v222 = &v190 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v208 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v190 - v41;
  v43 = sub_265D59650();
  v227 = *(v43 - 8);
  v228 = v43;
  MEMORY[0x28223BE20](v43);
  v226 = &v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v225 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v190 - v48;
  v50 = sub_265D58B10();
  v223 = *(v50 - 8);
  v224 = v50;
  v51 = MEMORY[0x28223BE20](v50);
  v213 = &v190 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v190 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v56 = MEMORY[0x28223BE20](v55);
  v57 = MEMORY[0x28223BE20](v56);
  v58 = MEMORY[0x28223BE20](v57);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v190 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v67 = &v190 - v63;
  v233 = v2;
  if (*(v2 + 72) == 4)
  {
    sub_265D595F0();
    v68 = sub_265D59DD0();
    v69 = sub_265D5A070();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_265C01000, v68, v69, "SessionAppForegrounder received session update while inactive, ignoring", v70, 2u);
      MEMORY[0x266770CF0](v70, -1, -1);
    }

    return (*(v234 + 8))(v11, v235);
  }

  v193 = v66;
  v196 = v42;
  v194 = v65;
  v190 = v62;
  v191 = v64;
  v195 = v20;
  v201 = a1;
  v72 = v232;
  sub_265C97870(v232, &v190 - v63, &qword_28003E708, &unk_265D5CCC0);
  v73 = sub_265D58AC0();
  v74 = *(v73 - 8);
  v75 = *(v74 + 48);
  v199 = v74 + 48;
  v198 = v75;
  v76 = v75(v67, 1, v73);
  v200 = v73;
  v197 = v74;
  if (v76 == 1)
  {
    sub_265CA4AE8(v67, &qword_28003E708, &unk_265D5CCC0);
    v77 = v233;
    v78 = sub_265D58B50();
    v80 = v79;
  }

  else
  {
    v78 = sub_265D58A50();
    v81 = v67;
    v80 = v82;
    (*(v74 + 8))(v81, v73);
    v77 = v233;
  }

  __swift_project_boxed_opaque_existential_1((v77 + 16), *(v77 + 40));
  v192 = v78;
  sub_265D59960();
  if (sub_265D59980())
  {
    sub_265C97870(v72, v61, &qword_28003E708, &unk_265D5CCC0);
    v83 = v200;
    if (v198(v61, 1, v200) == 1)
    {
      sub_265CA4AE8(v61, &qword_28003E708, &unk_265D5CCC0);
      v85 = v223;
      v84 = v224;
      (*(v223 + 56))(v49, 1, 1, v224);
      v86 = v225;
    }

    else
    {
      sub_265D58A90();
      (*(v197 + 8))(v61, v83);
      v85 = v223;
      v84 = v224;
      v91 = (*(v223 + 48))(v49, 1, v224);
      v86 = v225;
      if (v91 != 1)
      {
        (*(v85 + 32))(v54, v49, v84);
        v93 = sub_265D58B00();
        (*(v85 + 8))(v54, v84);
        if ((v93 & 0x100000000) != 0)
        {
          v92 = v93;
        }

        else
        {
          v92 = 5;
        }

        goto LABEL_19;
      }
    }

    sub_265CA4AE8(v49, &qword_28003E340, &unk_265D5D0C0);
    v92 = 5;
LABEL_19:
    sub_265D58100();
    if ((*(v85 + 48))(v86, 1, v84) == 1)
    {
      sub_265CA4AE8(v86, &qword_28003E340, &unk_265D5D0C0);
      v94 = 5;
    }

    else
    {
      v95 = v213;
      (*(v85 + 32))(v213, v86, v84);
      v96 = sub_265D58B00();
      (*(v85 + 8))(v95, v84);
      if ((v96 & 0x100000000) != 0)
      {
        v94 = v96;
      }

      else
      {
        v94 = 5;
      }
    }

    LODWORD(v229) = v94;
    v97 = *(v233 + 56);
    v98 = sub_265D58B30();
    v99 = v226;
    v100 = v227;
    v101 = v228;
    (*(v227 + 104))(v226, *MEMORY[0x277D4F890], v228);
    v102 = sub_265CA7344(v99, v98);

    (*(v100 + 8))(v99, v101);
    if ((v102 & 1) == 0)
    {
    }

    LODWORD(v224) = v97;
    LODWORD(v225) = v92;
    v227 = v80;
    v103 = v196;
    sub_265D580E0();
    v104 = sub_265D585C0();
    v105 = *(v104 - 8);
    v106 = *(v105 + 48);
    if (v106(v103, 1, v104) == 1)
    {
      sub_265CA4AE8(v103, &qword_28003E560, &unk_265D5CC10);
      v107 = v193;
      sub_265C97870(v72, v193, &qword_28003E708, &unk_265D5CCC0);
      v108 = v200;
      if (v198(v107, 1, v200) == 1)
      {
        v109 = &qword_28003E708;
        v110 = &unk_265D5CCC0;
        v111 = v107;
LABEL_31:
        sub_265CA4AE8(v111, v109, v110);
        v112 = 0;
        v226 = 0;
        v113 = 255;
        goto LABEL_33;
      }

      v103 = v208;
      sub_265D58A60();
      (*(v197 + 8))(v107, v108);
      if (v106(v103, 1, v104) == 1)
      {
        v109 = &qword_28003E560;
        v110 = &unk_265D5CC10;
        v111 = v103;
        goto LABEL_31;
      }
    }

    v112 = sub_265D585B0();
    v226 = v114;
    v116 = v115;
    (*(v105 + 8))(v103, v104);
    v113 = v116 & 1;
LABEL_33:
    v117 = v214;
    sub_265D58110();
    v118 = sub_265D58BB0();
    v119 = *(v118 - 8);
    v120 = *(v119 + 48);
    if (v120(v117, 1, v118) != 1)
    {
      v128 = v219;
      sub_265D58B80();
      (*(v119 + 8))(v117, v118);
      v129 = v230;
      v130 = *(v231 + 56);
      v130(v128, 0, 1, v230);
      v131 = v222;
      sub_265CE8FFC(v128, v222);
      v228 = v130;
      v130(v131, 0, 1, v129);
      v124 = v220;
      goto LABEL_43;
    }

    v223 = v112;
    sub_265CA4AE8(v117, &qword_28003E568, &unk_265D5C010);
    v228 = *(v231 + 56);
    v228(v219, 1, 1, v230);
    v121 = v194;
    sub_265C97870(v232, v194, &qword_28003E708, &unk_265D5CCC0);
    v122 = v200;
    v123 = v198(v121, 1, v200);
    v124 = v220;
    if (v123 == 1)
    {
      v125 = &qword_28003E708;
      v126 = &unk_265D5CCC0;
      v127 = v121;
    }

    else
    {
      v132 = v209;
      sub_265D58AB0();
      (*(v197 + 8))(v121, v122);
      if (v120(v132, 1, v118) != 1)
      {
        sub_265D58B80();
        (*(v119 + 8))(v132, v118);
        v133 = 0;
LABEL_41:
        v134 = v219;
        v131 = v222;
        v112 = v223;
        v135 = v230;
        v228(v222, v133, 1, v230);
        v129 = v135;
        if ((*(v231 + 48))(v134, 1, v135) != 1)
        {
          sub_265CA4AE8(v134, &qword_28003E700, &qword_265D5CCB8);
        }

LABEL_43:
        if (v113 == 255)
        {
          LODWORD(v226) = 0;
        }

        else
        {
          v238 = v112;
          v239 = v226;
          v240 = v113;
          v236 = xmmword_265D5CC20;
          v237 = 1;
          sub_265CE90B4();
          sub_265CE9108();
          LODWORD(v226) = sub_265D57F90();
          sub_265C037E8(v238, v239, v240);
        }

        v136 = *MEMORY[0x277D53C10];
        v137 = sub_265D58B70();
        v223 = *(*(v137 - 8) + 104);
        (v223)(v124, v136, v137);
        swift_storeEnumTagMultiPayload();
        v228(v124, 0, 1, v129);
        v138 = *(v221 + 48);
        v139 = v217;
        sub_265C97870(v131, v217, &qword_28003E700, &qword_265D5CCB8);
        v140 = v139;
        v141 = v231;
        sub_265C97870(v124, v139 + v138, &qword_28003E700, &qword_265D5CCB8);
        v142 = *(v141 + 48);
        v143 = v142(v140, 1, v129);
        v231 = v141 + 48;
        if (v143 == 1)
        {
          sub_265CA4AE8(v124, &qword_28003E700, &qword_265D5CCB8);
          if (v142(v140 + v138, 1, v129) == 1)
          {
            sub_265CA4AE8(v140, &qword_28003E700, &qword_265D5CCB8);
            LODWORD(v219) = 1;
            goto LABEL_53;
          }
        }

        else
        {
          v144 = v212;
          sub_265C97870(v140, v212, &qword_28003E700, &qword_265D5CCB8);
          if (v142(v140 + v138, 1, v129) != 1)
          {
            v145 = v211;
            sub_265CE8FFC(v140 + v138, v211);
            v146 = MEMORY[0x277D53C20];
            sub_265CE906C(&qword_28003E710, MEMORY[0x277D53C20], MEMORY[0x277D53C28]);
            sub_265CE906C(&qword_28003E718, v146, MEMORY[0x277D53C30]);
            LODWORD(v219) = sub_265D57F90();
            sub_265CA4AE8(v145, &qword_28003E6F0, &qword_265D5CCA0);
            sub_265CA4AE8(v220, &qword_28003E700, &qword_265D5CCB8);
            sub_265CA4AE8(v144, &qword_28003E6F0, &qword_265D5CCA0);
            v129 = v230;
            v131 = v222;
            sub_265CA4AE8(v217, &qword_28003E700, &qword_265D5CCB8);
LABEL_53:
            v147 = v218;
            v148 = sub_265D58B60();
            if (v148 != sub_265D58B60())
            {
              v149 = sub_265D58B60();
              LODWORD(v226) = (v149 == sub_265D58B60()) & v226;
            }

            v150 = sub_265D58B60();
            if (v150 == sub_265D58B60())
            {
              v151 = 0;
              v152 = v216;
              v153 = v215;
              v154 = v201;
LABEL_57:
              v155 = v225;
              v156 = v229;
              goto LABEL_65;
            }

            (v223)(v147, *MEMORY[0x277D53C08], v137);
            swift_storeEnumTagMultiPayload();
            v228(v147, 0, 1, v129);
            v157 = *(v221 + 48);
            v158 = v195;
            sub_265C97870(v131, v195, &qword_28003E700, &qword_265D5CCB8);
            v159 = v158;
            v160 = v230;
            sub_265C97870(v147, v158 + v157, &qword_28003E700, &qword_265D5CCB8);
            if (v142(v158, 1, v160) == 1)
            {
              sub_265CA4AE8(v147, &qword_28003E700, &qword_265D5CCB8);
              v161 = v142(v158 + v157, 1, v160);
              v152 = v216;
              v153 = v215;
              v154 = v201;
              v156 = v229;
              if (v161 == 1)
              {
                sub_265CA4AE8(v158, &qword_28003E700, &qword_265D5CCB8);
                v151 = 1;
LABEL_64:
                v155 = v225;
LABEL_65:
                if (v155 != 5 && (v164 = sub_265D58AF0(), v164 == sub_265D58AF0()) || v156 == 5 || (v165 = sub_265D58AF0(), v165 != sub_265D58AF0()) || ((v219 | v226) & 1) != 0 || (v151 & 1) != 0)
                {
                  sub_265CA4AE8(v131, &qword_28003E700, &qword_265D5CCB8);
                }

                else
                {
                  v168 = v207;
                  sub_265D595E0();
                  v169 = v154;
                  v170 = v202;
                  (*(v152 + 16))(v153, v169, v202);
                  v171 = v191;
                  sub_265C97870(v232, v191, &qword_28003E708, &unk_265D5CCC0);
                  v172 = sub_265D59DD0();
                  v173 = sub_265D5A080();
                  if (os_log_type_enabled(v172, v173))
                  {
                    v174 = swift_slowAlloc();
                    v175 = swift_slowAlloc();
                    v238 = v175;
                    *v174 = 136446466;
                    sub_265CE906C(&qword_28003E4B8, MEMORY[0x277D506A0], MEMORY[0x277D506A8]);
                    v176 = sub_265D5A3B0();
                    v178 = v177;
                    (*(v152 + 8))(v153, v170);
                    v179 = sub_265CF4FFC(v176, v178, &v238);

                    *(v174 + 4) = v179;
                    *(v174 + 12) = 2082;
                    v180 = sub_265D5A0E0();
                    v182 = v181;
                    sub_265CA4AE8(v171, &qword_28003E708, &unk_265D5CCC0);
                    v183 = sub_265CF4FFC(v180, v182, &v238);

                    *(v174 + 14) = v183;
                    _os_log_impl(&dword_265C01000, v172, v173, "[SessionForegrounder] received update: %{public}s, priorSession: %{public}s", v174, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x266770CF0](v175, -1, -1);
                    MEMORY[0x266770CF0](v174, -1, -1);

                    v131 = v222;
                    (*(v234 + 8))(v207, v235);
                  }

                  else
                  {

                    sub_265CA4AE8(v171, &qword_28003E708, &unk_265D5CCC0);
                    (*(v152 + 8))(v153, v170);
                    (*(v234 + 8))(v168, v235);
                  }

                  __swift_project_boxed_opaque_existential_1((v233 + 16), *(v233 + 40));
                  v184 = sub_265D57DA0();
                  v185 = v203;
                  (*(*(v184 - 8) + 56))(v203, 1, 1, v184);
                  v186 = v204;
                  sub_265D59970();

                  sub_265CA4AE8(v185, &qword_28003E480, &qword_265D5B940);
                  v187 = v206;
                  v188 = sub_265D58960();
                  v189 = swift_allocObject();
                  *(v189 + 16) = nullsub_9;
                  *(v189 + 24) = 0;
                  v188(sub_265CA442C, v189);

                  (*(v205 + 8))(v186, v187);
                  return sub_265CA4AE8(v131, &qword_28003E700, &qword_265D5CCB8);
                }
              }
            }

            else
            {
              v162 = v210;
              sub_265C97870(v158, v210, &qword_28003E700, &qword_265D5CCB8);
              v163 = v142(v158 + v157, 1, v160);
              v153 = v215;
              v154 = v201;
              if (v163 != 1)
              {
                v166 = v211;
                sub_265CE8FFC(v159 + v157, v211);
                v167 = MEMORY[0x277D53C20];
                sub_265CE906C(&qword_28003E710, MEMORY[0x277D53C20], MEMORY[0x277D53C28]);
                sub_265CE906C(&qword_28003E718, v167, MEMORY[0x277D53C30]);
                v151 = sub_265D57F90();
                sub_265CA4AE8(v166, &qword_28003E6F0, &qword_265D5CCA0);
                sub_265CA4AE8(v218, &qword_28003E700, &qword_265D5CCB8);
                sub_265CA4AE8(v162, &qword_28003E6F0, &qword_265D5CCA0);
                v131 = v222;
                sub_265CA4AE8(v159, &qword_28003E700, &qword_265D5CCB8);
                v152 = v216;
                goto LABEL_57;
              }

              sub_265CA4AE8(v218, &qword_28003E700, &qword_265D5CCB8);
              sub_265CA4AE8(v162, &qword_28003E6F0, &qword_265D5CCA0);
              v152 = v216;
              v156 = v229;
            }

            sub_265CA4AE8(v158, &qword_28003E6F8, &unk_265D5CCA8);
            v151 = 0;
            goto LABEL_64;
          }

          sub_265CA4AE8(v220, &qword_28003E700, &qword_265D5CCB8);
          sub_265CA4AE8(v144, &qword_28003E6F0, &qword_265D5CCA0);
        }

        sub_265CA4AE8(v140, &qword_28003E6F8, &unk_265D5CCA8);
        LODWORD(v219) = 0;
        goto LABEL_53;
      }

      v125 = &qword_28003E568;
      v126 = &unk_265D5C010;
      v127 = v132;
    }

    sub_265CA4AE8(v127, v125, v126);
    v133 = 1;
    goto LABEL_41;
  }

  v87 = v229;
  sub_265D595F0();
  v88 = sub_265D59DD0();
  v89 = sub_265D5A070();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_265C01000, v88, v89, "SessionAppForegrounder trying to foreground a foregrounded app, ignoring", v90, 2u);
    MEMORY[0x266770CF0](v90, -1, -1);
  }

  return (*(v234 + 8))(v87, v235);
}

uint64_t sub_265CE8FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6F0, &qword_265D5CCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CE906C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_265CE90B4()
{
  result = qword_28003E720;
  if (!qword_28003E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E720);
  }

  return result;
}

unint64_t sub_265CE9108()
{
  result = qword_28003E728;
  if (!qword_28003E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E728);
  }

  return result;
}

uint64_t sub_265CE915C(uint64_t a1, uint64_t a2)
{
  v180 = a1;
  v3 = sub_265D59DE0();
  v176 = *(v3 - 8);
  v177 = v3;
  MEMORY[0x28223BE20](v3);
  v175 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D581A0();
  v155 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v154 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v168 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v152 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v159 = &v152 - v15;
  MEMORY[0x28223BE20](v14);
  v164 = &v152 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v172 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v165 = &v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v157 = &v152 - v23;
  MEMORY[0x28223BE20](v22);
  v163 = &v152 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v174 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v173 = &v152 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v152 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v170 = &v152 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v156 = &v152 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v152 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v167 = &v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v166 = &v152 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v161 = &v152 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v160 = &v152 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v158 = &v152 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v162 = &v152 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v152 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v152 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v152 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v62 = &v152 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v64 = &v152 - v63;
  v183 = a2;
  sub_265C97870(a2, v58, &qword_28003E708, &unk_265D5CCC0);
  v65 = sub_265D58AC0();
  v66 = *(v65 - 8);
  v181 = *(v66 + 48);
  v182 = v66 + 48;
  v67 = v181(v58, 1, v65);
  v178 = v66;
  v179 = v65;
  if (v67 == 1)
  {
    v152 = v5;
    sub_265CA4AE8(v58, &qword_28003E708, &unk_265D5CCC0);
    v68 = sub_265D57ED0();
    (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
  }

  else
  {
    sub_265D589F0();
    (*(v66 + 8))(v58, v65);
    v68 = sub_265D57ED0();
    if ((*(*(v68 - 8) + 48))(v64, 1, v68) != 1)
    {
      sub_265CA4AE8(v64, &qword_28003E840, &unk_265D5D0D0);
      goto LABEL_9;
    }

    v152 = v5;
  }

  sub_265CA4AE8(v64, &qword_28003E840, &unk_265D5D0D0);
  sub_265D58080();
  sub_265D57ED0();
  v69 = (*(*(v68 - 8) + 48))(v62, 1, v68);
  sub_265CA4AE8(v62, &qword_28003E840, &unk_265D5D0D0);
  if (v69 == 1)
  {
    sub_265C97870(v183, v56, &qword_28003E708, &unk_265D5CCC0);
    v70 = v179;
    if (v181(v56, 1, v179) == 1)
    {
      sub_265CA4AE8(v56, &qword_28003E708, &unk_265D5CCC0);
      v71 = sub_265D58B10();
      (*(*(v71 - 8) + 56))(v37, 1, 1, v71);
      v72 = v178;
      v73 = v173;
      v74 = v164;
      v75 = v163;
    }

    else
    {
      sub_265D58A90();
      v72 = v178;
      (*(v178 + 8))(v56, v70);
      v71 = sub_265D58B10();
      v81 = 1;
      v82 = (*(*(v71 - 8) + 48))(v37, 1, v71);
      v73 = v173;
      v75 = v163;
      if (v82 != 1)
      {
        v74 = v164;
LABEL_16:
        LODWORD(v176) = v81;
        sub_265CA4AE8(v37, &qword_28003E340, &unk_265D5D0C0);
        sub_265C97870(v183, v53, &qword_28003E708, &unk_265D5CCC0);
        if (v181(v53, 1, v70) == 1)
        {
          sub_265CA4AE8(v53, &qword_28003E708, &unk_265D5CCC0);
          v83 = sub_265D58BB0();
          (*(*(v83 - 8) + 56))(v75, 1, 1, v83);
        }

        else
        {
          sub_265D58AB0();
          (*(v72 + 8))(v53, v70);
          v83 = sub_265D58BB0();
          if ((*(*(v83 - 8) + 48))(v75, 1, v83) != 1)
          {
            v84 = 1;
LABEL_21:
            LODWORD(v177) = v84;
            sub_265CA4AE8(v75, &qword_28003E568, &unk_265D5C010);
            v85 = v162;
            sub_265C97870(v183, v162, &qword_28003E708, &unk_265D5CCC0);
            if (v181(v85, 1, v70) == 1)
            {
              sub_265CA4AE8(v85, &qword_28003E708, &unk_265D5CCC0);
              v86 = sub_265D57E80();
              (*(*(v86 - 8) + 56))(v74, 1, 1, v86);
            }

            else
            {
              sub_265D589E0();
              (*(v72 + 8))(v85, v70);
              v86 = sub_265D57E80();
              if ((*(*(v86 - 8) + 48))(v74, 1, v86) != 1)
              {
                v87 = 1;
LABEL_26:
                LODWORD(v175) = v87;
                sub_265CA4AE8(v74, &qword_28003E590, &unk_265D5C030);
                v88 = v165;
                sub_265D58110();
                v89 = sub_265D58BB0();
                v90 = *(v89 - 8);
                v91 = *(v90 + 48);
                if (v91(v88, 1, v89) == 1)
                {
                  sub_265CA4AE8(v88, &qword_28003E568, &unk_265D5C010);
                  v92 = v170;
                }

                else
                {
                  v93 = sub_265D58BA0();
                  v94 = v88;
                  v95 = v93;
                  (*(v90 + 8))(v94, v89);
                  v187 = BYTE4(v95) & 1;
                  v186 = v95;
                  v184 = 3;
                  LODWORD(v180) = 1;
                  v185 = 1;
                  sub_265CEB2F0();
                  sub_265CEB344();
                  v96 = sub_265D57F90();
                  v92 = v170;
                  if (v96)
                  {
                    goto LABEL_35;
                  }
                }

                v97 = v158;
                sub_265C97870(v183, v158, &qword_28003E708, &unk_265D5CCC0);
                if (v181(v97, 1, v70) == 1)
                {
                  sub_265CA4AE8(v97, &qword_28003E708, &unk_265D5CCC0);
                  LODWORD(v180) = 0;
                }

                else
                {
                  sub_265D58AB0();
                  v98 = v172;
                  (*(v178 + 8))(v97, v70);
                  if (v91(v98, 1, v89) == 1)
                  {
                    sub_265CA4AE8(v98, &qword_28003E568, &unk_265D5C010);
                    LODWORD(v180) = 0;
                  }

                  else
                  {
                    v99 = sub_265D58BA0();
                    (*(v90 + 8))(v98, v89);
                    v187 = BYTE4(v99) & 1;
                    v186 = v99;
                    v184 = 3;
                    v185 = 1;
                    sub_265CEB2F0();
                    sub_265CEB344();
                    v92 = v170;
                    LODWORD(v180) = sub_265D57F90();
                  }

                  v73 = v173;
                }

LABEL_35:
                sub_265D58100();
                v100 = sub_265D58B10();
                v101 = *(v100 - 8);
                v102 = *(v101 + 48);
                v103 = 1;
                if (v102(v92, 1, v100) == 1)
                {
                  sub_265CA4AE8(v92, &qword_28003E340, &unk_265D5D0C0);
                }

                else
                {
                  v104 = sub_265D58B00();
                  v105 = v92;
                  v106 = v104;
                  (*(v101 + 8))(v105, v100);
                  v187 = BYTE4(v106) & 1;
                  v186 = v106;
                  v184 = 3;
                  v185 = 1;
                  sub_265CEB248();
                  sub_265CEB29C();
                  if (sub_265D57F90())
                  {
                    goto LABEL_44;
                  }
                }

                v107 = v160;
                sub_265C97870(v183, v160, &qword_28003E708, &unk_265D5CCC0);
                if (v181(v107, 1, v70) == 1)
                {
                  v108 = &qword_28003E708;
                  v109 = &unk_265D5CCC0;
                }

                else
                {
                  v110 = v153;
                  sub_265D58A90();
                  v111 = v107;
                  v107 = v110;
                  (*(v178 + 8))(v111, v70);
                  if (v102(v110, 1, v100) != 1)
                  {
                    v112 = sub_265D58B00();
                    (*(v101 + 8))(v107, v100);
                    v187 = BYTE4(v112) & 1;
                    v186 = v112;
                    v184 = 3;
                    v185 = 1;
                    sub_265CEB248();
                    sub_265CEB29C();
                    v103 = sub_265D57F90();
LABEL_44:
                    sub_265D58100();
                    if (v102(v73, 1, v100) == 1)
                    {
                      sub_265CA4AE8(v73, &qword_28003E340, &unk_265D5D0C0);
                      v113 = v171;
                    }

                    else
                    {
                      v114 = sub_265D58B00();
                      (*(v101 + 8))(v73, v100);
                      v187 = BYTE4(v114) & 1;
                      v186 = v114;
                      v184 = 4;
                      v185 = 1;
                      sub_265CEB248();
                      sub_265CEB29C();
                      v115 = sub_265D57F90();
                      v113 = v171;
                      if (v115)
                      {
                        goto LABEL_54;
                      }
                    }

                    v116 = v161;
                    sub_265C97870(v183, v161, &qword_28003E708, &unk_265D5CCC0);
                    v117 = v179;
                    if (v181(v116, 1, v179) == 1)
                    {
                      sub_265CA4AE8(v116, &qword_28003E708, &unk_265D5CCC0);
                      if (v103)
                      {
                        goto LABEL_54;
                      }

LABEL_52:
                      v119 = 0;
                      goto LABEL_55;
                    }

                    sub_265D58A90();
                    v118 = v174;
                    (*(v178 + 8))(v116, v117);
                    if (v102(v118, 1, v100) == 1)
                    {
                      sub_265CA4AE8(v118, &qword_28003E340, &unk_265D5D0C0);
                      if ((v103 & 1) == 0)
                      {
                        goto LABEL_52;
                      }
                    }

                    else
                    {
                      v120 = sub_265D58B00();
                      (*(v101 + 8))(v118, v100);
                      v187 = BYTE4(v120) & 1;
                      v186 = v120;
                      v184 = 4;
                      v185 = 1;
                      sub_265CEB248();
                      sub_265CEB29C();
                      v113 = v171;
                      v121 = sub_265D57F90();
                      if ((v103 & 1) == 0)
                      {
                        v119 = v121;
LABEL_55:
                        sub_265D58070();
                        v122 = sub_265D57E80();
                        v123 = *(v122 - 8);
                        v124 = *(v123 + 48);
                        v125 = 1;
                        if (v124(v113, 1, v122) == 1)
                        {
                          sub_265CA4AE8(v113, &qword_28003E590, &unk_265D5C030);
                          v126 = v168;
                          v127 = v166;
                        }

                        else
                        {
                          v128 = sub_265D57E70();
                          v129 = v113;
                          v130 = v128;
                          (*(v123 + 8))(v129, v122);
                          v187 = BYTE4(v130) & 1;
                          v186 = v130;
                          v184 = 2;
                          v185 = 1;
                          sub_265CEB1A0();
                          sub_265CEB1F4();
                          v131 = sub_265D57F90();
                          v126 = v168;
                          v127 = v166;
                          if (v131)
                          {
                            goto LABEL_64;
                          }
                        }

                        sub_265C97870(v183, v127, &qword_28003E708, &unk_265D5CCC0);
                        v132 = v179;
                        if (v181(v127, 1, v179) == 1)
                        {
                          v133 = &qword_28003E708;
                          v134 = &unk_265D5CCC0;
                          v135 = v127;
                        }

                        else
                        {
                          sub_265D589E0();
                          (*(v178 + 8))(v127, v132);
                          if (v124(v126, 1, v122) != 1)
                          {
                            v136 = sub_265D57E70();
                            v137 = v126;
                            v138 = v136;
                            (*(v123 + 8))(v137, v122);
                            v187 = BYTE4(v138) & 1;
                            v186 = v138;
                            v184 = 2;
                            v185 = 1;
                            sub_265CEB1A0();
                            sub_265CEB1F4();
                            v125 = sub_265D57F90();
LABEL_64:
                            v139 = v169;
                            v140 = v183;
                            sub_265CEAA08(v183, v169);
                            v141 = sub_265CEAF3C(v139);
                            v142 = v167;
                            sub_265C97870(v140, v167, &qword_28003E708, &unk_265D5CCC0);
                            v143 = v179;
                            if (v181(v142, 1, v179) == 1)
                            {
                              sub_265CA4AE8(v142, &qword_28003E708, &unk_265D5CCC0);
                              if ((v141 & 1) == 0)
                              {
                                goto LABEL_75;
                              }
                            }

                            else
                            {
                              v144 = v154;
                              sub_265D58A10();
                              (*(v178 + 8))(v142, v143);
                              v145 = sub_265D58190();
                              v147 = v146;
                              v149 = v148;
                              (*(v155 + 8))(v144, v152);
                              if (v149)
                              {
                                if (v141)
                                {
                                  v150 = v119 | v125 | ((v145 & 0xFE) == 0);
                                  if ((v180 & 1) == 0)
                                  {
                                    goto LABEL_80;
                                  }

                                  goto LABEL_76;
                                }

LABEL_75:
                                v150 = v119 | v125;
                                if ((v180 & 1) == 0)
                                {
                                  goto LABEL_80;
                                }

LABEL_76:
                                if ((v150 & 1) != 0 || (v176 & 1) == 0 && (v175 & 1) == 0)
                                {
                                  goto LABEL_81;
                                }

                                v150 = v119 | v125;
LABEL_80:
                                if (!(v177 & 1 | ((v150 & 1) == 0)))
                                {
                                  goto LABEL_81;
                                }

                                return sub_265CA4AE8(v139, &qword_28003E2F8, &qword_265D5B680);
                              }

                              sub_265C037E8(v145, v147, 0);
                              if ((v141 & 1) == 0)
                              {
                                goto LABEL_75;
                              }
                            }

                            v151 = (v119 | v125) ^ 1;
                            if ((v180 & 1) == 0)
                            {
                              if ((v151 | v177))
                              {
                                return sub_265CA4AE8(v139, &qword_28003E2F8, &qword_265D5B680);
                              }

                              goto LABEL_81;
                            }

                            if ((v151 & (v176 | v175) & 1) == 0)
                            {
LABEL_81:
                              sub_265CEACA4();
                            }

                            return sub_265CA4AE8(v139, &qword_28003E2F8, &qword_265D5B680);
                          }

                          v133 = &qword_28003E590;
                          v134 = &unk_265D5C030;
                          v135 = v126;
                        }

                        sub_265CA4AE8(v135, v133, v134);
                        v125 = 0;
                        goto LABEL_64;
                      }
                    }

LABEL_54:
                    v119 = 1;
                    goto LABEL_55;
                  }

                  v108 = &qword_28003E340;
                  v109 = &unk_265D5D0C0;
                }

                sub_265CA4AE8(v107, v108, v109);
                v103 = 0;
                goto LABEL_44;
              }
            }

            sub_265CA4AE8(v74, &qword_28003E590, &unk_265D5C030);
            v74 = v159;
            sub_265D58070();
            sub_265D57E80();
            v87 = (*(*(v86 - 8) + 48))(v74, 1, v86) != 1;
            goto LABEL_26;
          }
        }

        sub_265CA4AE8(v75, &qword_28003E568, &unk_265D5C010);
        v75 = v157;
        sub_265D58110();
        sub_265D58BB0();
        v84 = (*(*(v83 - 8) + 48))(v75, 1, v83) != 1;
        goto LABEL_21;
      }

      v74 = v164;
    }

    sub_265CA4AE8(v37, &qword_28003E340, &unk_265D5D0C0);
    v37 = v156;
    sub_265D58100();
    sub_265D58B10();
    v81 = (*(*(v71 - 8) + 48))(v37, 1, v71) != 1;
    goto LABEL_16;
  }

LABEL_9:
  v76 = v175;
  sub_265D595F0();
  v77 = sub_265D59DD0();
  v78 = sub_265D5A080();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_265C01000, v77, v78, "Termination already on session, skipping completion evaluation", v79, 2u);
    MEMORY[0x266770CF0](v79, -1, -1);
  }

  return (*(v176 + 8))(v76, v177);
}

uint64_t sub_265CEAA08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_265D580F0();
  v10 = sub_265D58600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_265C97870(a1, v6, &qword_28003E708, &unk_265D5CCC0);
    v13 = sub_265D58AC0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
      sub_265CA4AE8(v6, &qword_28003E708, &unk_265D5CCC0);
      (*(v11 + 56))(a2, 1, 1, v10);
    }

    else
    {
      sub_265D58A70();
      (*(v14 + 8))(v6, v13);
    }

    result = v12(v9, 1, v10);
    if (result != 1)
    {
      return sub_265CA4AE8(v9, &qword_28003E2F8, &qword_265D5B680);
    }
  }

  else
  {
    (*(v11 + 32))(a2, v9, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_265CEACA4()
{
  v0 = sub_265D57ED0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_265D58FD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v6 + 8))(v8, v5);
  swift_getObjectType();
  sub_265D5A030();
  v10[12] = 1;
  sub_265D57EB0();
  sub_265D58FC0();
  sub_265D58ED0();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_265CEAEE0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CEAF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_265D58600();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265C97870(a1, v4, &qword_28003E2F8, &qword_265D5B680);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_265CA4AE8(v4, &qword_28003E2F8, &qword_265D5B680);
LABEL_6:
    v16 = 0;
    return v16 & 1;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = sub_265D585E0();
  v11 = v10;
  v20 = v9;
  v21 = v10;
  v13 = v12 & 1;
  v22 = v12 & 1;
  v19 = 3;
  sub_265CA48E8();
  sub_265CA493C();
  v14 = sub_265D57FA0();
  sub_265C037E8(v9, v11, v13);
  if ((v14 & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v20 = sub_265D585F0();
  LOBYTE(v21) = v15 & 1;
  v19 = 1;
  sub_265CEB398();
  sub_265CEB3EC();
  v16 = sub_265D57FA0();
  (*(v6 + 8))(v8, v5);
  return v16 & 1;
}

unint64_t sub_265CEB1A0()
{
  result = qword_28003E730;
  if (!qword_28003E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E730);
  }

  return result;
}

unint64_t sub_265CEB1F4()
{
  result = qword_28003E738;
  if (!qword_28003E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E738);
  }

  return result;
}

unint64_t sub_265CEB248()
{
  result = qword_28003E740;
  if (!qword_28003E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E740);
  }

  return result;
}

unint64_t sub_265CEB29C()
{
  result = qword_28003E748;
  if (!qword_28003E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E748);
  }

  return result;
}

unint64_t sub_265CEB2F0()
{
  result = qword_28003E750;
  if (!qword_28003E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E750);
  }

  return result;
}

unint64_t sub_265CEB344()
{
  result = qword_28003E970;
  if (!qword_28003E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E970);
  }

  return result;
}

unint64_t sub_265CEB398()
{
  result = qword_28003E758;
  if (!qword_28003E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E758);
  }

  return result;
}

unint64_t sub_265CEB3EC()
{
  result = qword_28003E760;
  if (!qword_28003E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E760);
  }

  return result;
}

id sub_265CEB440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v36 = MEMORY[0x277D84F90];
  sub_265CF572C(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  result = sub_265D5A120();
  v2 = v36;
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v30 = a1 + 72;
  v31 = v1;
  v32 = a1 + 64;
  v33 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_34;
    }

    v12 = *(*(v4 + 48) + v7);
    v34 = v8;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v35 = 0x74616E696D726574;
        v13 = 0xEB000000006E6F69;
      }

      else if (v12 == 4)
      {
        v35 = 0x6E6F436863746177;
        v13 = 0xEF6E6F697463656ELL;
      }

      else
      {
        v35 = 0xD000000000000018;
        v13 = 0x8000000265D5FBB0;
      }
    }

    else if (*(*(v4 + 48) + v7))
    {
      if (v12 == 1)
      {
        v35 = 0xD000000000000010;
        v13 = 0x8000000265D5FB50;
      }

      else
      {
        v35 = 0xD000000000000017;
        v13 = 0x8000000265D5FB70;
      }
    }

    else
    {
      v35 = 0x656C7069746C756DLL;
      v13 = 0xED000065646F4D78;
    }

    v14 = *(*(v4 + 56) + 8 * v7);
    v37 = v2;
    v15 = v4;
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    v18 = v2;
    result = v14;
    v2 = v18;
    if (v16 >= v17 >> 1)
    {
      v29 = result;
      sub_265CF572C((v17 > 1), v16 + 1, 1);
      result = v29;
      v2 = v37;
    }

    *(v2 + 16) = v16 + 1;
    v19 = (v2 + 24 * v16);
    v19[4] = v35;
    v19[5] = v13;
    v19[6] = result;
    v10 = 1 << *(v15 + 32);
    v9 = v33;
    if (v7 >= v10)
    {
      goto LABEL_35;
    }

    v5 = v32;
    v20 = *(v32 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_36;
    }

    v4 = v15;
    if (v33 != *(v15 + 36))
    {
      goto LABEL_37;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v30 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          v27 = v2;
          result = sub_265CB9728(v7, v33, 0);
          v2 = v27;
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      v28 = v2;
      result = sub_265CB9728(v7, v33, 0);
      v2 = v28;
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v10;
    if (v34 + 1 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_265CEB7CC(unsigned __int8 a1)
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265CEB914(uint64_t a1)
{
  sub_265D59EF0();
}

unint64_t sub_265CEBA38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_265CECF3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_265CEBA68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000065646F4D78;
  v4 = 0x656C7069746C756DLL;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74616E696D726574;
  v7 = 0xEF6E6F697463656ELL;
  v8 = 0x6E6F436863746177;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x8000000265D5FBB0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000265D5FB50;
  if (v2 != 1)
  {
    v9 = 0xD000000000000017;
    v10 = 0x8000000265D5FB70;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_265CEBB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v1 - 8);
  v90 = &v79 - v2;
  v3 = sub_265D58630();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v79 - v6;
  v89 = sub_265D58600();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v79 - v9;
  v10 = sub_265D57ED0();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v79 - v13;
  v15 = sub_265D585C0();
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  v79 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v79 - v18;
  v20 = sub_265D582A0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_265C96AD4(MEMORY[0x277D84F90]);
  v96 = 0;
  v97 = 0xE000000000000000;
  LOBYTE(v99) = *v0;
  sub_265D5A290();
  v25 = sub_265D59E90();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v24;
  sub_265CE55F8(v25, 0, isUniquelyReferenced_nonNull_native);
  v27 = v96;
  v28 = type metadata accessor for SessionCompletionAnalyticsEvent(0);
  sub_265C97870(&v0[v28[5]], v19, &qword_28003E5A8, &unk_265D5D120);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_265CA4AE8(v19, &qword_28003E5A8, &unk_265D5D120);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    v29 = sub_265D58290();
    LODWORD(v96) = v29;
    BYTE4(v96) = BYTE4(v29) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E788, &unk_265D5CD88);
    sub_265CECB5C();
    sub_265D57FB0();
    v30 = sub_265D59E90();

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v27;
    sub_265CE55F8(v30, 1, v31);
    v27 = v96;
    (*(v21 + 8))(v23, v20);
  }

  v32 = v0;
  sub_265C97870(&v0[v28[6]], v14, &qword_28003E560, &unk_265D5CC10);
  v34 = v83;
  v33 = v84;
  v35 = (*(v83 + 48))(v14, 1, v84);
  v36 = v93;
  v37 = v86;
  if (v35 == 1)
  {
    sub_265CA4AE8(v14, &qword_28003E560, &unk_265D5CC10);
  }

  else
  {
    v38 = v79;
    (*(v34 + 32))(v79, v14, v33);
    v99 = 0;
    v100 = 0xE000000000000000;
    v39 = sub_265D585B0();
    v41 = v40;
    v96 = v39;
    v97 = v40;
    v43 = v42 & 1;
    v98 = v42 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E780, &qword_265D5CD80);
    sub_265D5A290();
    sub_265C037E8(v39, v41, v43);
    v44 = sub_265D59E90();

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v27;
    sub_265CE55F8(v44, 2, v45);
    v27 = v96;
    v46 = v38;
    v36 = v93;
    (*(v34 + 8))(v46, v33);
  }

  v47 = v89;
  v48 = v87;
  v49 = v85;
  sub_265C97870(&v32[v28[7]], v85, &qword_28003E840, &unk_265D5D0D0);
  if ((*(v37 + 48))(v49, 1, v48) == 1)
  {
    sub_265CA4AE8(v49, &qword_28003E840, &unk_265D5D0D0);
  }

  else
  {
    v50 = v80;
    (*(v37 + 32))(v80, v49, v48);
    v96 = 0;
    v97 = 0xE000000000000000;
    v51 = sub_265D57EC0();
    LODWORD(v99) = v51;
    BYTE4(v99) = BYTE4(v51) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E778, &qword_265D5CD78);
    sub_265D5A290();
    v52 = sub_265D59E90();

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v27;
    sub_265CE55F8(v52, 3, v53);
    v27 = v96;
    (*(v37 + 8))(v50, v48);
  }

  v54 = v88;
  sub_265C97870(&v32[v28[8]], v88, &qword_28003E2F8, &qword_265D5B680);
  if ((*(v36 + 48))(v54, 1, v47) == 1)
  {
    sub_265CA4AE8(v54, &qword_28003E2F8, &qword_265D5B680);
  }

  else
  {
    v55 = v81;
    (*(v36 + 32))(v81, v54, v47);
    v56 = sub_265D585E0();
    v58 = v57;
    v96 = v56;
    v97 = v57;
    v60 = v59 & 1;
    v98 = v59 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E770, &qword_265D5CD70);
    sub_265D57F60();
    sub_265C037E8(v56, v58, v60);
    v99 = v94;
    v100 = v95;
    MEMORY[0x26676FFC0](46, 0xE100000000000000);
    v61 = sub_265D59E90();

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v27;
    sub_265CE55F8(v61, 4, v62);
    v27 = v96;
    (*(v36 + 8))(v55, v47);
  }

  v64 = v91;
  v63 = v92;
  v65 = &v32[v28[9]];
  v66 = v90;
  sub_265C97870(v65, v90, &qword_28003E540, &qword_265D5BFE0);
  if ((*(v64 + 48))(v66, 1, v63) == 1)
  {
    sub_265CA4AE8(v66, &qword_28003E540, &qword_265D5BFE0);
  }

  else
  {
    v67 = v82;
    (*(v64 + 32))(v82, v66, v63);
    v99 = 0;
    v100 = 0xE000000000000000;
    v68 = sub_265D58620();
    v70 = v69;
    v96 = v68;
    v97 = v69;
    v72 = v71 & 1;
    v98 = v71 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E768, &qword_265D5CD68);
    sub_265D5A290();
    sub_265C037E8(v68, v70, v72);
    v73 = sub_265D59E90();

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v27;
    sub_265CE55F8(v73, 5, v74);
    v27 = v96;
    (*(v64 + 8))(v67, v63);
  }

  v75 = sub_265CEB440(v27);

  if (v75[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE88, &qword_265D5B0C0);
    v76 = sub_265D5A2E0();
  }

  else
  {
    v76 = MEMORY[0x277D84F98];
  }

  v96 = v76;

  sub_265CEC780(v77, 1, &v96);

  return v96;
}

uint64_t sub_265CEC6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_265D59100();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_265CEC780(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_265CE2AF4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_265CE3C4C(v16, v5 & 1);
    v11 = sub_265CE2AF4(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_265D5A3F0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_265CE6050();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_265D5A200();
    MEMORY[0x26676FFC0](0xD00000000000001BLL, 0x8000000265D61080);
    sub_265D5A290();
    MEMORY[0x26676FFC0](39, 0xE100000000000000);
    sub_265D5A2A0();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_265CE2AF4(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_265CE3C4C(v33, 1);
        v29 = sub_265CE2AF4(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t type metadata accessor for SessionCompletionAnalyticsEvent(uint64_t a1)
{
  result = qword_28003E798;
  if (!qword_28003E798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_265CECB5C()
{
  result = qword_28003E790;
  if (!qword_28003E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionCompletionAnalyticsEvent.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionCompletionAnalyticsEvent.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_265CECD28(uint64_t a1)
{
  sub_265CECE90(319, &qword_28003E7A8, MEMORY[0x277D50E70]);
  if (v1 <= 0x3F)
  {
    sub_265CECE90(319, &qword_28003E7B0, MEMORY[0x277D52940]);
    if (v2 <= 0x3F)
    {
      sub_265CECE90(319, &qword_28003E7B8, MEMORY[0x277D50140]);
      if (v3 <= 0x3F)
      {
        sub_265CECE90(319, &qword_2813B9008, MEMORY[0x277D529D8]);
        if (v4 <= 0x3F)
        {
          sub_265CECE90(319, &qword_28003E7C0, MEMORY[0x277D52CA0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_265CECE90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_265D5A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_265CECEE8()
{
  result = qword_28003E7C8;
  if (!qword_28003E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E7C8);
  }

  return result;
}

unint64_t sub_265CECF3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D5A2F0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_265CECF90(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CED0AC, 0, 0);
}

uint64_t sub_265CED0AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59450();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionEventPublisher(0);
    v4 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher, &unk_265D5CFE8);
    *v2 = v0;
    v2[1] = sub_265CED21C;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CED21C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CED404, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CED404(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265CED5EC(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CED708, 0, 0);
}

uint64_t sub_265CED708()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionEventPublisher(0);
    v4 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher, &unk_265D5CFE8);
    *v2 = v0;
    v2[1] = sub_265CED878;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CED878()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CEDA60, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CEDA60(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265CEDC48(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CEDD64, 0, 0);
}

uint64_t sub_265CEDD64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionEventPublisher(0);
    v4 = sub_265CF2404(&qword_28003E7F0, type metadata accessor for DistributedSessionEventPublisher, &unk_265D5CFE8);
    *v2 = v0;
    v2[1] = sub_265CEDED4;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CEDED4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CEE0BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CEE0BC(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265CEE2A4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v2[23] = swift_task_alloc();
  v4 = sub_265D58280();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v2[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v2[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  sub_265D58130();
  v2[52] = swift_task_alloc();
  v5 = sub_265D59090();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[59] = v6;
  v2[60] = *(v6 - 8);
  v2[61] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v2[62] = v7;
  v2[63] = *(v7 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CEEB3C, v1, 0);
}

uint64_t sub_265CEEB3C(uint64_t a1)
{
  v33 = v1;
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = v1[17];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[67];
  v11 = v1[62];
  v10 = v1[63];
  v13 = v1[60];
  v12 = v1[61];
  v14 = v1[59];
  if (v8)
  {
    v31 = v1[62];
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    sub_265CF2404(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v17 = sub_265D5A3B0();
    v30 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_265CF4FFC(v17, v19, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v29, "DistributedSessionEventPublisher - starting %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v30, v31);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v1[68] = v21;
  v22 = v1[18];
  v23 = v22[20];
  v24 = v22[21];
  __swift_project_boxed_opaque_existential_1(v22 + 17, v23);
  v25 = swift_task_alloc();
  v1[69] = v25;
  v26 = *(v24 + 8);
  *v25 = v1;
  v25[1] = sub_265CEEDD0;
  v27 = v1[57];

  return MEMORY[0x2821AED80](v27, v23, v26);
}

uint64_t sub_265CEEDD0()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_265CEFF24;
  }

  else
  {
    v4 = sub_265CEEEFC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CEEEFC()
{
  v86 = v0;
  v1 = v0[57];
  v2 = v0[58];
  v3 = sub_265D58240();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_265CF2394(v1, v2);
  v4 = v0[70];
  __swift_project_boxed_opaque_existential_1((v0[18] + 136), *(v0[18] + 160));
  sub_265D59520();
  if (v4)
  {
    sub_265D595E0();
    v5 = v4;
    v6 = sub_265D59DD0();
    v7 = sub_265D5A080();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[68];
    v10 = v0[65];
    v11 = v0[62];
    if (v8)
    {
      v84 = v0[65];
      v12 = swift_slowAlloc();
      v83 = v11;
      v13 = swift_slowAlloc();
      v85[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_265D5A400();
      v16 = sub_265CF4FFC(v14, v15, v85);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_265C01000, v6, v7, "Unable to fetch fitness mode with error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266770CF0](v13, -1, -1);
      MEMORY[0x266770CF0](v12, -1, -1);

      v9(v84, v83);
    }

    else
    {

      v9(v10, v11);
    }
  }

  __swift_project_boxed_opaque_existential_1((v0[18] + 136), *(v0[18] + 160));
  sub_265D59540();
  v81 = v0[56];
  v82 = v0[58];
  v17 = v0[51];
  v19 = v0[48];
  v18 = v0[49];
  v21 = v0[46];
  v20 = v0[47];
  v23 = v0[44];
  v22 = v0[45];
  v24 = v0[43];
  v65 = v0[42];
  v66 = v0[41];
  v67 = v0[40];
  v69 = v0[39];
  v70 = v0[38];
  v71 = v0[37];
  v72 = v0[36];
  v73 = v0[35];
  v74 = v0[34];
  v75 = v0[33];
  v76 = v0[32];
  v77 = v0[31];
  v78 = v0[30];
  v79 = v0[29];
  v80 = v0[28];
  sub_265D5A4C0();
  sub_265D589C0();
  sub_265D58CF0();

  v25 = sub_265D58020();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_265D58410();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = sub_265D58590();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = sub_265D58050();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_265D58200();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  v30 = sub_265D58BC0();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  v31 = sub_265D583E0();
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  v32 = sub_265D581B0();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  v33 = sub_265D57F50();
  (*(*(v33 - 8) + 56))(v65, 1, 1, v33);
  v34 = sub_265D582A0();
  (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
  v35 = sub_265D58680();
  (*(*(v35 - 8) + 56))(v67, 1, 1, v35);
  v36 = sub_265D58210();
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  v37 = sub_265D57E80();
  (*(*(v37 - 8) + 56))(v70, 1, 1, v37);
  v38 = sub_265D58430();
  (*(*(v38 - 8) + 56))(v71, 1, 1, v38);
  v39 = sub_265D58300();
  (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
  v40 = sub_265D586F0();
  (*(*(v40 - 8) + 56))(v73, 1, 1, v40);
  v41 = sub_265D57E90();
  (*(*(v41 - 8) + 56))(v74, 1, 1, v41);
  v42 = sub_265D581C0();
  (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
  v43 = sub_265D58BB0();
  (*(*(v43 - 8) + 56))(v76, 1, 1, v43);
  v44 = sub_265D585C0();
  (*(*(v44 - 8) + 56))(v77, 1, 1, v44);
  v45 = sub_265D57EA0();
  (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
  v46 = sub_265D57ED0();
  (*(*(v46 - 8) + 56))(v79, 1, 1, v46);
  sub_265CF2324(v82, v81);
  v47 = sub_265D58400();
  (*(*(v47 - 8) + 56))(v80, 1, 1, v47);
  v64 = v0[58];
  v48 = v0[54];
  v61 = v0[53];
  v59 = v0[55];
  v49 = v0[27];
  v50 = v0[23];
  v68 = v0[22];
  v51 = v0[20];
  v60 = v0[21];
  v62 = v0[19];
  v63 = v0[18];
  swift_getObjectType();
  sub_265D5A030();
  sub_265D585D0();
  v52 = sub_265D58600();
  (*(*(v52 - 8) + 56))(v49, 0, 1, v52);
  v53 = sub_265D58630();
  (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
  v54 = sub_265D58B10();
  (*(*(v54 - 8) + 56))(v68, 1, 1, v54);
  sub_265D5A030();
  sub_265D580B0();
  sub_265D59080();
  sub_265D58ED0();
  (*(v48 + 8))(v59, v61);
  v55 = sub_265D589C0();
  sub_265CA4AE8(v64, &qword_28003E550, &unk_265D5BFF0);
  *v60 = v55;
  (*(v51 + 104))(v60, *MEMORY[0x277D4F250], v62);
  v56 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v51 + 40))(v63 + v56, v60, v62);
  swift_endAccess();

  v57 = v0[1];

  return v57();
}

uint64_t sub_265CEFF24(uint64_t a1)
{
  v87 = v1;
  v2 = *(v1 + 560);
  sub_265D595E0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 560);
    v84 = *(v1 + 528);
    v85 = *(v1 + 544);
    v7 = *(v1 + 496);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v86[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_265D5A400();
    v12 = sub_265CF4FFC(v10, v11, v86);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v4, v5, "Unable to fetch unit preferences with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    v85(v84, v7);
  }

  else
  {
    v13 = *(v1 + 544);
    v14 = *(v1 + 528);
    v15 = *(v1 + 496);

    v13(v14, v15);
  }

  v16 = *(v1 + 464);
  v17 = sub_265D58240();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  __swift_project_boxed_opaque_existential_1((*(v1 + 144) + 136), *(*(v1 + 144) + 160));
  sub_265D59520();
  __swift_project_boxed_opaque_existential_1((*(v1 + 144) + 136), *(*(v1 + 144) + 160));
  sub_265D59540();
  v82 = *(v1 + 448);
  v83 = *(v1 + 464);
  v18 = *(v1 + 408);
  v20 = *(v1 + 384);
  v19 = *(v1 + 392);
  v22 = *(v1 + 368);
  v21 = *(v1 + 376);
  v24 = *(v1 + 352);
  v23 = *(v1 + 360);
  v25 = *(v1 + 344);
  v66 = *(v1 + 336);
  v67 = *(v1 + 328);
  v68 = *(v1 + 320);
  v70 = *(v1 + 312);
  v71 = *(v1 + 304);
  v72 = *(v1 + 296);
  v73 = *(v1 + 288);
  v74 = *(v1 + 280);
  v75 = *(v1 + 272);
  v76 = *(v1 + 264);
  v77 = *(v1 + 256);
  v78 = *(v1 + 248);
  v79 = *(v1 + 240);
  v80 = *(v1 + 232);
  v81 = *(v1 + 224);
  sub_265D5A4C0();
  sub_265D589C0();
  sub_265D58CF0();

  v26 = sub_265D58020();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = sub_265D58410();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = sub_265D58590();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_265D58050();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  v30 = sub_265D58200();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  v31 = sub_265D58BC0();
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  v32 = sub_265D583E0();
  (*(*(v32 - 8) + 56))(v24, 1, 1, v32);
  v33 = sub_265D581B0();
  (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
  v34 = sub_265D57F50();
  (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
  v35 = sub_265D582A0();
  (*(*(v35 - 8) + 56))(v67, 1, 1, v35);
  v36 = sub_265D58680();
  (*(*(v36 - 8) + 56))(v68, 1, 1, v36);
  v37 = sub_265D58210();
  (*(*(v37 - 8) + 56))(v70, 1, 1, v37);
  v38 = sub_265D57E80();
  (*(*(v38 - 8) + 56))(v71, 1, 1, v38);
  v39 = sub_265D58430();
  (*(*(v39 - 8) + 56))(v72, 1, 1, v39);
  v40 = sub_265D58300();
  (*(*(v40 - 8) + 56))(v73, 1, 1, v40);
  v41 = sub_265D586F0();
  (*(*(v41 - 8) + 56))(v74, 1, 1, v41);
  v42 = sub_265D57E90();
  (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
  v43 = sub_265D581C0();
  (*(*(v43 - 8) + 56))(v76, 1, 1, v43);
  v44 = sub_265D58BB0();
  (*(*(v44 - 8) + 56))(v77, 1, 1, v44);
  v45 = sub_265D585C0();
  (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
  v46 = sub_265D57EA0();
  (*(*(v46 - 8) + 56))(v79, 1, 1, v46);
  v47 = sub_265D57ED0();
  (*(*(v47 - 8) + 56))(v80, 1, 1, v47);
  sub_265CF2324(v83, v82);
  v48 = sub_265D58400();
  (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
  v65 = *(v1 + 464);
  v49 = *(v1 + 432);
  v62 = *(v1 + 424);
  v60 = *(v1 + 440);
  v50 = *(v1 + 216);
  v51 = *(v1 + 184);
  v69 = *(v1 + 176);
  v52 = *(v1 + 160);
  v61 = *(v1 + 168);
  v63 = *(v1 + 152);
  v64 = *(v1 + 144);
  swift_getObjectType();
  sub_265D5A030();
  sub_265D585D0();
  v53 = sub_265D58600();
  (*(*(v53 - 8) + 56))(v50, 0, 1, v53);
  v54 = sub_265D58630();
  (*(*(v54 - 8) + 56))(v51, 1, 1, v54);
  v55 = sub_265D58B10();
  (*(*(v55 - 8) + 56))(v69, 1, 1, v55);
  sub_265D5A030();
  sub_265D580B0();
  sub_265D59080();
  sub_265D58ED0();
  (*(v49 + 8))(v60, v62);
  v56 = sub_265D589C0();
  sub_265CA4AE8(v65, &qword_28003E550, &unk_265D5BFF0);
  *v61 = v56;
  (*(v52 + 104))(v61, *MEMORY[0x277D4F250], v63);
  v57 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v52 + 40))(v64 + v57, v61, v63);
  swift_endAccess();

  v58 = *(v1 + 8);

  return v58();
}

uint64_t sub_265CF10A0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DistributedSessionEventPublisher(uint64_t a1)
{
  result = qword_2813B8CB0;
  if (!qword_2813B8CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CF11D0(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265CF12D0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CF12D0()
{
  if (!qword_2813B8FE0)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FE0);
    }
  }
}

uint64_t sub_265CF1378@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CF140C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CF150C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CEE2A4(a1);
}

uint64_t sub_265CF15A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265CF1668(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C96620;

  return sub_265CF1EE4(a1);
}

uint64_t sub_265CF1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CF17DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CF18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CF196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265CF1A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265CF1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionEventPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265CF1B94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CF1C1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CF1D58()
{
  result = qword_28003E7E0;
  if (!qword_28003E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E7E0);
  }

  return result;
}

uint64_t sub_265CF1DAC()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionEventPublisher - shouldStartSession - true", v6, 2u);
    MEMORY[0x266770CF0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_265CF1EE4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF18, &qword_265D5B120);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF2068, v1, 0);
}

uint64_t sub_265CF2068(uint64_t a1)
{
  v32 = v1;
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[14];
  v9 = v1[15];
  v11 = v1[12];
  v12 = v1[13];
  v14 = v1[10];
  v13 = v1[11];
  if (v8)
  {
    v30 = v1[13];
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    sub_265CF2404(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v17 = sub_265D5A3B0();
    v29 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v28, "DistributedSessionEventPublisher - Ending %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v29, v30);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v1[8];
  v21 = v1[9];
  v24 = v1[6];
  v23 = v1[7];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v23);
  v25 = OBJC_IVAR____TtC22SeymourSessionServices32DistributedSessionEventPublisher_state;
  swift_beginAccess();
  (*(v22 + 40))(v24 + v25, v21, v23);
  swift_endAccess();

  v26 = v1[1];

  return v26();
}

uint64_t sub_265CF2324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF2394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF2404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265CF244C(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_265D59DE0();
  result = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 120);
  if (v9)
  {
    v36 = v6;
    v37 = result;
    v39 = *(a1 + 112);

    MEMORY[0x28223BE20](v10);
    *(&v29 - 16) = a2;
    *(&v29 - 1) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    sub_265D58CA0();
    v12 = v38[0];
    v34 = v38[2];
    v35 = v38[1];
    v13 = sub_265CF2808(v38[0]);
    if (v13)
    {
      v14 = v13;
      sub_265D595F0();
      v15 = sub_265D59DD0();
      v33 = sub_265D5A080();
      if (os_log_type_enabled(v15, v33))
      {
        v32 = v14;
        v16 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38[0] = v30;
        v17 = 0xEB00000000656369;
        v18 = 0x7665446C61636F6CLL;
        v31 = v16;
        *v16 = 136446210;
        v19 = 0x8000000265D5FC00;
        v20 = 0x8000000265D5FC20;
        v21 = 0xD000000000000018;
        if (a2 != 3)
        {
          v21 = 0xD000000000000010;
          v20 = 0x8000000265D5FC40;
        }

        if (a2 == 2)
        {
          v21 = 0xD000000000000014;
        }

        else
        {
          v19 = v20;
        }

        if (a2)
        {
          v18 = 0xD000000000000016;
          v17 = 0x8000000265D5FBE0;
        }

        if (a2 <= 1u)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        if (a2 <= 1u)
        {
          v23 = v17;
        }

        else
        {
          v23 = v19;
        }

        v24 = sub_265CF4FFC(v22, v23, v38);

        v25 = v31;
        *(v31 + 1) = v24;
        _os_log_impl(&dword_265C01000, v15, v33, "Heartbeat coordinator resetting timeout for %{public}s", v25, 0xCu);
        v26 = v30;
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x266770CF0](v26, -1, -1);
        MEMORY[0x266770CF0](v25, -1, -1);

        (*(v36 + 8))(v8, v37);
      }

      else
      {

        (*(v36 + 8))(v8, v37);
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_265D5A0B0();
      swift_unknownObjectRelease();
      v28 = v34;
      v27 = v35;
      sub_265CF28BC(v12);
      sub_265CF2A24(v12, v27, v28, v39, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CF2808(uint64_t a1)
{
  sub_265D58C90();
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 4;
    if (v6 == a1)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return a1;
    }
  }

  return 0;
}

uint64_t sub_265CF28BC(uint64_t a1)
{
  v2 = v1;
  sub_265D58C90();
  swift_beginAccess();
  v4 = *(v1 + 104);
  v5 = *(v4 + 16);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v4 + 24 + 32 * v7;
  while (1)
  {
    if (v5 == v7)
    {

      *(v2 + 104) = v8;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    v10 = (v9 + 32);
    ++v7;
    v11 = *(v9 + 8);
    v9 += 32;
    if (v11 != a1)
    {
      v16 = *(v10 - 1);
      v12 = *v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265CF574C(0, *(v8 + 16) + 1, 1);
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_265CF574C((v13 > 1), v14 + 1, 1);
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 32 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v16;
      *(v15 + 56) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265CF2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = a4;
  v42 = a5;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  swift_unknownObjectRetain();
  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();
  swift_unknownObjectRelease();
  v16 = os_log_type_enabled(v14, v15);
  v39 = a3;
  v40 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = v10;
    v19 = v18;
    v43[0] = v18;
    v43[1] = a1;
    *v17 = 136446210;
    v43[2] = a2;
    v43[3] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v20 = sub_265D59EC0();
    v22 = sub_265CF4FFC(v20, v21, v43);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_265C01000, v14, v15, "Heartbeat coordinator creating expectation for %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v17, -1, -1);

    (*(v11 + 8))(v13, v38);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  sub_265D58C90();
  v23 = v6[11];
  v38 = v6[12];
  __swift_project_boxed_opaque_existential_1(v6 + 8, v23);
  sub_265CD77F0();
  v24 = sub_265D5A090();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a1;
  v27 = v39;
  v28 = v40;
  v26[4] = v40;
  v26[5] = v27;
  v29 = v42;
  v26[6] = v41;
  v26[7] = v29;
  swift_unknownObjectRetain();

  v30 = sub_265D592D0();

  swift_beginAccess();
  v31 = v6[13];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[13] = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_265D468F4(0, *(v31 + 2) + 1, 1, v31);
    v6[13] = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_265D468F4((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[32 * v34];
  *(v35 + 4) = a1;
  *(v35 + 5) = v28;
  *(v35 + 6) = v27;
  *(v35 + 7) = v30;
  v6[13] = v31;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_265CF2DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a2;
  v73 = sub_265D58130();
  v67 = *(v73 - 8);
  v5 = MEMORY[0x28223BE20](v73);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = sub_265D59DE0();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v62 - v24;
  v26 = *(v2 + 48);
  v72 = v3;
  v69 = v26;
  sub_265D58CA0();
  v68 = 0;
  v27 = v75;
  if (v75)
  {
    v28 = v74;
    v29 = v76;
    sub_265D58080();
    v30 = sub_265D57ED0();
    if ((*(*(v30 - 8) + 48))(v20, 1, v30) == 1)
    {
      sub_265CF4FB8(v28, v27, v29);
      sub_265CA4AE8(v20, &qword_28003E840, &unk_265D5D0D0);
    }

    else
    {
      v63 = v28;
      v66 = v29;
      sub_265CA4AE8(v20, &qword_28003E840, &unk_265D5D0D0);
      v35 = v65;
      sub_265D595F0();
      v36 = v67;
      v37 = v64;
      v38 = v73;
      (*(v67 + 16))(v64, a1, v73);
      v39 = sub_265D59DD0();
      v40 = sub_265D5A080();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v74 = v42;
        *v41 = 136446210;
        v43 = sub_265D580D0();
        v45 = v44;
        (*(v36 + 8))(v37, v73);
        v46 = sub_265CF4FFC(v43, v45, &v74);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_265C01000, v39, v40, "Heartbeat coordinator stopping due to termination on session: %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x266770CF0](v42, -1, -1);
        MEMORY[0x266770CF0](v41, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v37, v38);
      }

      (*(v70 + 8))(v35, v71);
      sub_265D58CA0();
      sub_265CF4FB8(v63, v27, v66);
    }
  }

  else
  {
    v65 = v8;
    v31 = a1;
    sub_265CF5E0C(v66, v16);
    v32 = sub_265D58AC0();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v16, 1, v32) == 1)
    {
      sub_265CA4AE8(v16, &qword_28003E708, &unk_265D5CCC0);
      v34 = sub_265D57ED0();
      (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
    }

    else
    {
      sub_265D589F0();
      (*(v33 + 8))(v16, v32);
      v34 = sub_265D57ED0();
      if ((*(*(v34 - 8) + 48))(v25, 1, v34) != 1)
      {
        sub_265CA4AE8(v25, &qword_28003E840, &unk_265D5D0D0);
        return;
      }
    }

    sub_265CA4AE8(v25, &qword_28003E840, &unk_265D5D0D0);
    sub_265D58080();
    sub_265D57ED0();
    v47 = (*(*(v34 - 8) + 48))(v23, 1, v34);
    sub_265CA4AE8(v23, &qword_28003E840, &unk_265D5D0D0);
    if (v47 == 1)
    {
      v48 = v13;
      sub_265D595F0();
      v49 = v67;
      v50 = v65;
      v51 = v73;
      (*(v67 + 16))(v65, v31, v73);
      v52 = sub_265D59DD0();
      v53 = sub_265D5A080();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v74 = v55;
        *v54 = 136446210;
        v56 = sub_265D580D0();
        v57 = v50;
        v59 = v58;
        (*(v49 + 8))(v57, v51);
        v60 = sub_265CF4FFC(v56, v59, &v74);

        *(v54 + 4) = v60;
        _os_log_impl(&dword_265C01000, v52, v53, "Heartbeat coordinator starting for session %{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x266770CF0](v55, -1, -1);
        MEMORY[0x266770CF0](v54, -1, -1);
      }

      else
      {

        (*(v49 + 8))(v50, v51);
      }

      v61 = (*(v70 + 8))(v48, v71);
      MEMORY[0x28223BE20](v61);
      *(&v62 - 2) = v72;
      *(&v62 - 1) = v31;
      sub_265D58CA0();
    }
  }
}

void sub_265CF3638(void *a1, uint64_t a2)
{
  v4 = sub_265D58130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_265D580D0();
  v22 = v8;
  v23 = v7;
  v9 = a1[12];
  v20 = a1[11];
  v21 = v9;
  v19[1] = __swift_project_boxed_opaque_existential_1(a1 + 8, v20);
  sub_265CD77F0();
  v10 = sub_265D5A090();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  v14 = sub_265D592D0();

  v15 = a1[14];
  v16 = a1[15];
  v17 = a1[16];
  v18 = v22;
  a1[14] = v23;
  a1[15] = v18;
  a1[16] = v14;
  sub_265CF4FB8(v15, v16, v17);
}

uint64_t sub_265CF3824(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_265D580D0();
    MEMORY[0x28223BE20](v2);
    sub_265D58CA0();
  }

  return result;
}

void sub_265CF38F8(void *a1)
{
  v3 = sub_265D59DE0();
  v4 = MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[14];
  v8 = a1[15];
  if (v8)
  {
    v29 = v5;
    v31 = v4;
    v10 = a1[16];

    swift_unknownObjectRetain();
    sub_265D595F0();

    v11 = sub_265D59DD0();
    v12 = sub_265D5A080();

    v13 = os_log_type_enabled(v11, v12);
    v27 = a1 + 14;
    v28 = v1;
    v26[1] = v10;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30[0] = v15;
      *v14 = 136446210;
      v16 = sub_265CF4FFC(v9, v8, v30);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_265C01000, v11, v12, "Deactivating heartbeat coordinator for %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x266770CF0](v15, -1, -1);
      MEMORY[0x266770CF0](v14, -1, -1);
    }

    else
    {
    }

    (*(v29 + 8))(v7, v31);
    swift_beginAccess();
    v31 = a1;
    v17 = a1[13];
    v18 = *(v17 + 16);

    if (v18)
    {
      v19 = 0;
      v20 = v17 + 56;
      while (v19 < *(v17 + 16))
      {
        ++v19;
        __swift_project_boxed_opaque_existential_1(v31 + 8, v31[11]);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_265D592E0();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v20 += 32;
        if (v18 == v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      v21 = v31;
      v31[13] = MEMORY[0x277D84F90];

      __swift_project_boxed_opaque_existential_1(v21 + 8, v21[11]);
      sub_265D592E0();
      swift_unknownObjectRelease();
      v22 = v21[14];
      v23 = v21[15];
      v24 = v21[16];
      v25 = v27;
      *v27 = 0;
      v25[1] = 0;
      v25[2] = 0;
      sub_265CF4FB8(v22, v23, v24);
    }
  }
}

void sub_265CF3BFC(void *a1, uint64_t a2, unint64_t a3)
{
  v82 = sub_265D58EB0();
  v7 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_265D59DE0();
  v9 = *(v84 - 8);
  v10 = MEMORY[0x28223BE20](v84);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v74 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = a1[15];
  if (v17)
  {
    v72 = v3;
    v18 = a1[14];

    v71 = a2;
    if (v18 == a2 && v17 == a3 || (sub_265D5A3C0() & 1) != 0)
    {
      v70 = a3;

      v80 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
      v19 = v72;
      sub_265D58CA0();
      v20 = v87;
      sub_265D58CA0();
      v72 = v19;
      v85 = v87;
      v83 = v20;
      v22 = v74;
      v79 = *(v20 + 16);
      if (v79)
      {
        v23 = 0;
        v24 = (v9 + 8);
        v78 = *MEMORY[0x277D4E060];
        v76 = (v7 + 8);
        v77 = (v7 + 104);
        v25 = (v83 + 40);
        *&v21 = 136446210;
        v73 = v21;
        while (v23 < *(v83 + 16))
        {
          v28 = *(v25 - 1);
          v86 = *v25;
          sub_265D595F0();
          swift_unknownObjectRetain();
          v29 = sub_265D59DD0();
          v30 = sub_265D5A080();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v89 = v75;
            *v31 = v73;
            v87 = v28;
            v88 = v86;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
            v32 = sub_265D59EC0();
            v34 = v24;
            v35 = sub_265CF4FFC(v32, v33, &v89);

            *(v31 + 4) = v35;
            v24 = v34;
            _os_log_impl(&dword_265C01000, v29, v30, "Heartbeat coordinator sending heartbeat on connection: %{public}s", v31, 0xCu);
            v36 = v75;
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            MEMORY[0x266770CF0](v36, -1, -1);
            v37 = v31;
            v22 = v74;
            MEMORY[0x266770CF0](v37, -1, -1);

            (*v34)(v22, v84);
          }

          else
          {

            (*v24)(v22, v84);
          }

          ++v23;
          swift_getObjectType();
          v27 = v81;
          v26 = v82;
          (*v77)(v81, v78, v82);
          sub_265D58C80();
          (*v76)(v27, v26);
          v25 = (v25 + 24);
          if (v79 == v23)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v38 = *(v85 + 16);
        v39 = v70;
        v40 = v71;
        if (!v38)
        {
LABEL_19:

          v51 = v80;
          v52 = v80[11];
          *&v86 = v80[12];
          __swift_project_boxed_opaque_existential_1(v80 + 8, v52);
          sub_265CD77F0();

          v53 = sub_265D5A090();
          v54 = swift_allocObject();
          swift_weakInit();
          v55 = swift_allocObject();
          v55[2] = v54;
          v55[3] = v40;
          v55[4] = v39;

          v56 = sub_265D592D0();

          v57 = v51[14];
          v58 = v51[15];
          v59 = v51[16];
          v51[14] = v40;
          v51[15] = v39;
          v51[16] = v56;
          sub_265CF4FB8(v57, v58, v59);
          return;
        }

        v41 = 0;
        v42 = (v85 + 48);
        while (v41 < *(v85 + 16))
        {
          v43 = *(v42 - 2);
          v44 = *(v42 - 1);
          v45 = *v42;
          v46 = swift_unknownObjectRetain();
          v47 = sub_265CF2808(v46);
          if (v47)
          {
            sub_265CF5F38(v47, v48, v49, v50);
          }

          else
          {
            sub_265CF2A24(v43, v44, v45, v40, v39);
          }

          ++v41;
          swift_unknownObjectRelease();
          v42 += 3;
          if (v38 == v41)
          {
            goto LABEL_19;
          }
        }
      }

      __break(1u);
    }

    else
    {
      sub_265D595F0();

      v63 = sub_265D59DD0();
      v64 = sub_265D5A080();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = a3;
        v67 = swift_slowAlloc();
        v87 = v67;
        *v65 = 136446466;
        v68 = sub_265CF4FFC(v18, v17, &v87);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2082;
        *(v65 + 14) = sub_265CF4FFC(v71, v66, &v87);
        _os_log_impl(&dword_265C01000, v63, v64, "Heartbeat coordinator is active but scheduled heartbeat is for the wrong session identifier %{public}s != %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v67, -1, -1);
        MEMORY[0x266770CF0](v65, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v84);
    }
  }

  else
  {
    sub_265D595F0();
    v60 = sub_265D59DD0();
    v61 = sub_265D5A080();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_265C01000, v60, v61, "Heartbeat coordinator is inactive yet we have a scheduled heartbeat", v62, 2u);
      MEMORY[0x266770CF0](v62, -1, -1);
    }

    (*(v9 + 8))(v16, v84);
  }
}

uint64_t sub_265CF4414(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_265D58CA0();
  }

  return result;
}

uint64_t sub_265CF44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v68 = a2;
  v69 = a3;
  v8 = sub_265D57ED0();
  MEMORY[0x28223BE20](v8 - 8);
  v65[1] = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D58FD0();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v65[0] = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v65 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v65 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v65 - v23;
  sub_265D58CA0();
  v25 = v74;
  v70 = v76;
  if (v75)
  {

    v27 = v26;
    if (v25 == a4 && v26 == a5 || (sub_265D5A3C0() & 1) != 0)
    {
      v28 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
      sub_265D58CA0();
      v29 = *(v74 + 16) + 1;
      v30 = 32;
      while (--v29)
      {
        v31 = *(v74 + v30);
        v30 += 24;
        if (v31 == a1)
        {

          sub_265D595F0();
          swift_unknownObjectRetain();
          v32 = sub_265D59DD0();
          v33 = sub_265D5A080();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v73[0] = v35;
            *v34 = 136446210;
            v74 = a1;
            v75 = v68;
            v76 = v69;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
            v36 = sub_265D59EC0();
            v38 = v27;
            v39 = sub_265CF4FFC(v36, v37, v73);

            *(v34 + 4) = v39;
            v27 = v38;
            _os_log_impl(&dword_265C01000, v32, v33, "Heartbeat coordinator expectation timer fired for %{public}s, terminating session", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v35);
            MEMORY[0x266770CF0](v35, -1, -1);
            MEMORY[0x266770CF0](v34, -1, -1);
          }

          (*(v72 + 8))(v24, v71);
          swift_getObjectType();
          sub_265D5A030();
          LOBYTE(v74) = 1;
          sub_265D57EB0();
          v40 = v65[0];
          sub_265D58FC0();
          v41 = v67;
          sub_265D58ED0();
          sub_265CF4FB8(v28, v27, v70);
          return (*(v66 + 8))(v40, v41);
        }
      }

      sub_265D595F0();
      swift_unknownObjectRetain();
      v47 = sub_265D59DD0();
      v48 = sub_265D5A080();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v73[0] = v50;
        *v49 = 136446210;
        v74 = a1;
        v75 = v68;
        v76 = v69;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
        v51 = sub_265D59EC0();
        v53 = v27;
        v54 = sub_265CF4FFC(v51, v52, v73);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_265C01000, v47, v48, "Heartbeat coordinator expectation timer fired for connection no longer active: %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x266770CF0](v50, -1, -1);
        MEMORY[0x266770CF0](v49, -1, -1);

        sub_265CF4FB8(v28, v53, v70);
      }

      else
      {
        sub_265CF4FB8(v28, v27, v70);
      }

      v55 = *(v72 + 8);
      v56 = v22;
    }

    else
    {
      v57 = v25;
      sub_265D595F0();

      v58 = sub_265D59DD0();
      v59 = sub_265D5A080();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v74 = v61;
        *v60 = 136446466;
        v62 = v27;
        v63 = v57;
        v64 = sub_265CF4FFC(v57, v62, &v74);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_265CF4FFC(a4, a5, &v74);
        _os_log_impl(&dword_265C01000, v58, v59, "Heartbeat expectation session identifier mismatch %{public}s != %{public}s", v60, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v61, -1, -1);
        MEMORY[0x266770CF0](v60, -1, -1);

        sub_265CF4FB8(v63, v62, v70);
      }

      else
      {
        sub_265CF4FB8(v57, v27, v70);
      }

      v55 = *(v72 + 8);
      v56 = v19;
    }
  }

  else
  {
    v43 = v74;
    sub_265D595F0();
    v44 = sub_265D59DD0();
    v45 = sub_265D5A080();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_265C01000, v44, v45, "Heartbeat expectation when the heartbeat coordinator is inactive", v46, 2u);
      MEMORY[0x266770CF0](v46, -1, -1);

      sub_265CF4FB8(v43, 0, v70);
    }

    else
    {
    }

    v55 = *(v72 + 8);
    v56 = v16;
  }

  return v55(v56, v71);
}

uint64_t sub_265CF4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CF44DC(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_265CF4D5C()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  sub_265CF4FB8(v0[14], v0[15], v0[16]);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B20HeartbeatCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_265CF4DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265CF4E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_265CF4EA4(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_265CF4FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_265CF4FFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265CF50C8(v11, 0, 0, 1, a1, a2);
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
    sub_265CF51D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_265CF50C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265CF5230(a5, a6);
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
    result = sub_265D5A230();
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

uint64_t sub_265CF51D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_265CF5230(uint64_t a1, unint64_t a2)
{
  v3 = sub_265CF527C(a1, a2);
  sub_265CF53AC(&unk_28777A720);
  return v3;
}

void *sub_265CF527C(uint64_t a1, unint64_t a2)
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

  v6 = sub_265CF5498(v5, 0);
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

  result = sub_265D5A230();
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
        v10 = sub_265D59F10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265CF5498(v10, 0);
        result = sub_265D5A1F0();
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

uint64_t sub_265CF53AC(uint64_t result)
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

  result = sub_265CF550C(result, v11, 1, v3);
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

void *sub_265CF5498(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E7F8, &unk_265D5D268);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265CF550C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E7F8, &unk_265D5D268);
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

void sub_265CF5684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }
}

void *sub_265CF56C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265CF57B4(a1, a2, a3, *v3, &unk_28003E830, &qword_265D5D298, MEMORY[0x277D51550]);
  *v3 = result;
  return result;
}

void *sub_265CF570C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265CF5990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265CF572C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265CF5B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265CF574C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265CF5CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265CF576C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265CF5F84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265CF57B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_265CF5990(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E848, &unk_265D5D2A0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
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

void *sub_265CF5B80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E820, &qword_265D5D288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E828, &qword_265D5D290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265CF5CC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E818, &qword_265D5D280);
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

void sub_265CF5DD4(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_265CF5684(v2, v3, v4);
}

uint64_t sub_265CF5E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF5E98()
{
  sub_265D58130();
  v1 = *(v0 + 16);

  return sub_265CF3824(v1);
}

uint64_t sub_265CF5F38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_265CF5F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E858, &qword_265D5D2B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E860, &qword_265D5D2B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265CF613C()
{
  sub_265D5A460();
  MEMORY[0x266770530](0);
  return sub_265D5A4A0();
}

uint64_t sub_265CF61A8(uint64_t a1)
{
  sub_265D5A460();
  MEMORY[0x266770530](0);
  return sub_265D5A4A0();
}

uint64_t sub_265CF61E8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6304, 0, 0);
}

uint64_t sub_265CF6304()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58F20();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SensorDataRelayCoordinator(0);
    v4 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D458);
    *v2 = v0;
    v2[1] = sub_265CF6474;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CF6474()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF665C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CF665C()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595C0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "Failed to start session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_265CF6844(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6960, 0, 0);
}

uint64_t sub_265CF6960()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SensorDataRelayCoordinator(0);
    v4 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D458);
    *v2 = v0;
    v2[1] = sub_265CF6AD0;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CF6AD0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF6CB8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CF6CB8()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595C0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "Failed to end session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_265CF6EA0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6FBC, 0, 0);
}

uint64_t sub_265CF6FBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SensorDataRelayCoordinator(0);
    v4 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D458);
    *v2 = v0;
    v2[1] = sub_265CF712C;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265CF712C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF7314, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265CF7314()
{
  v20 = v0;
  v1 = *(v0 + 152);
  sub_265D595C0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A080();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v18 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v12 = sub_265CF4FFC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v3, v4, "Failed to update session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

void *sub_265CF74FC()
{
  v60 = sub_265D58870();
  v46 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_265D59BA0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - v12;
  sub_265D58CA0();
  v47 = v1;
  v13 = qword_279BBBC98[v57[0]];
  v14 = *__swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v58 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v59 = &off_28777D8A8;
  v52 = v58;
  *v57 = v14;
  sub_265C97624(v57, v56);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v57);
  v16 = *(v13 + 16);
  v49 = v7;
  v51 = v16;
  if (v16)
  {
    v17 = 0;
    v50 = (v13 + 32);
    v18 = (v7 + 48);
    v19 = (v7 + 32);
    v20 = MEMORY[0x277D84F90];
    while (v17 < *(v13 + 16))
    {
      v21 = *(v50 + v17);
      v22 = __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      v23 = v21;
      v14 = v22;
      (off_28777D8C8[0])(v23, v52, &off_28777D8A8);
      if ((*v18)(v5, 1, v6) == 1)
      {
        result = sub_265CA4AE8(v5, &qword_28003E6C8, &unk_265D5C9D0);
      }

      else
      {
        v24 = *v19;
        v25 = v48;
        (*v19)(v48, v5, v6);
        v24(v53, v25, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_265D46B0C(0, v20[2] + 1, 1, v20);
        }

        v26 = v20;
        v27 = v20[2];
        v28 = v26;
        v29 = v26[3];
        v14 = (v27 + 1);
        if (v27 >= v29 >> 1)
        {
          v28 = sub_265D46B0C((v29 > 1), v27 + 1, 1, v28);
        }

        v28[2] = v14;
        v30 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v27;
        v20 = v28;
        result = (v24)(v30, v53, v6);
      }

      if (v51 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v56);

    v31 = v20[2];
    if (v31)
    {
      v32 = v49 + 16;
      v52 = *(v49 + 16);
      v53 = v6;
      v33 = v20 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v34 = *(v49 + 72);
      v50 = (v46 + 8);
      v51 = v34;
      v48 = v20;
      v49 += 8;
      v35 = MEMORY[0x277D84F90];
      do
      {
        v38 = v53;
        v37 = v54;
        v39 = v32;
        v52(v54, v33, v53);
        v40 = v55;
        sub_265D59B70();
        v14 = sub_265D58840();
        v42 = v41;
        (*v50)(v40, v60);
        (*v49)(v37, v38);
        if (v42)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_265D46A00(0, *(v35 + 2) + 1, 1, v35);
          }

          v44 = *(v35 + 2);
          v43 = *(v35 + 3);
          if (v44 >= v43 >> 1)
          {
            v35 = sub_265D46A00((v43 > 1), v44 + 1, 1, v35);
          }

          *(v35 + 2) = v44 + 1;
          v36 = &v35[16 * v44];
          *(v36 + 4) = v14;
          *(v36 + 5) = v42;
        }

        v33 += v51;
        --v31;
        v32 = v39;
      }

      while (v31);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    if (*(v35 + 2))
    {
      v14 = *(v35 + 4);
    }

    else
    {

      sub_265CFD3D4();
      swift_allocError();
      swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_265CF7AE0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v2[12] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF7C9C, v1, 0);
}

uint64_t sub_265CF7C9C()
{
  v27 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  sub_265D595C0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v13 = v0[13];
  v12 = v0[14];
  if (v7)
  {
    v25 = v0[16];
    v14 = swift_slowAlloc();
    v23 = v6;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v16 = sub_265D589D0();
    v24 = v8;
    v18 = v17;
    (*(v12 + 8))(v10, v13);
    v19 = sub_265CF4FFC(v16, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_265C01000, v5, v23, "Starting Session: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266770CF0](v15, -1, -1);
    MEMORY[0x266770CF0](v14, -1, -1);

    (*(v9 + 8))(v24, v25);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v9 + 8))(v8, v11);
  }

  v0[5] = sub_265CF74FC();
  v0[6] = v20;
  v0[19] = v20;
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_265CF7F44;

  return sub_265CF8314();
}

uint64_t sub_265CF7F44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = sub_265CF8280;
  }

  else
  {
    v7 = v4[5];
    v5 = v4[8];
    v4[22] = a1;
    v4[23] = v7;
    v6 = sub_265CF8074;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CF8074()
{
  v1 = v0[22];
  v15 = v0[19];
  v16 = v0[23];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = sub_265D59FA0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D4F8);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v6;
  swift_retain_n();
  v10 = sub_265CF9B7C(0, 0, v3, &unk_265D5D550, v9);
  v11 = sub_265D589C0();
  *v2 = v1;
  *(v2 + 8) = v10;
  *(v2 + 16) = v16;
  *(v2 + 24) = v15;
  *(v2 + 32) = 0;
  *(v2 + 40) = v11;
  (*(v4 + 104))(v2, *MEMORY[0x277D4F250], v5);
  v12 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v4 + 40))(v6 + v12, v2, v5);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_265CF8280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CF8314()
{
  v1[34] = v0;
  v2 = sub_265D59DE0();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF83EC, v0, 0);
}

uint64_t sub_265CF83EC()
{
  v1 = v0[34];
  v2 = [objc_allocWithZone(MEMORY[0x277D04420]) init];
  v0[40] = v2;
  v0[22] = sub_265CFD578;
  v0[23] = v1;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_265D4BEAC;
  v0[21] = &block_descriptor_45;
  v3 = _Block_copy(v0 + 18);

  [v2 setInvalidationHandler_];
  _Block_release(v3);
  v0[28] = sub_265CFD1D8;
  v0[29] = 0;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_265D4BEAC;
  v0[27] = &block_descriptor_48;
  v4 = _Block_copy(v0 + 24);
  [v2 setInterruptionHandler_];
  _Block_release(v4);
  sub_265D595C0();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "Activating DataRelayServiceClient...", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  v8 = v0[39];
  v9 = v0[35];
  v10 = v0[36];

  v11 = *(v10 + 8);
  v0[41] = v11;
  v11(v8, v9);
  v0[2] = v0;
  v0[3] = sub_265CF86CC;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265CFD30C;
  v0[13] = &block_descriptor_51;
  v0[14] = v12;
  [v2 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265CF86CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_265CF891C;
  }

  else
  {
    v4 = sub_265CF87EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CF87EC()
{
  sub_265D595C0();
  v1 = sub_265D59DD0();
  v2 = sub_265D5A080();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_265C01000, v1, v2, "DataRelayServiceClient activated.", v3, 2u);
    MEMORY[0x266770CF0](v3, -1, -1);
  }

  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[35];

  v4(v5, v6);

  v7 = v0[1];
  v8 = v0[40];

  return v7(v8);
}

uint64_t sub_265CF891C(uint64_t a1)
{
  v21 = v1;
  v2 = v1[42];
  swift_willThrow();
  sub_265D595C0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v1[41];
    v6 = v1[37];
    v7 = v1[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](v1[31], v1[32]);
    v12 = sub_265CF4FFC(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to activate DataRelayServiceClient: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    v19(v6, v7);
  }

  else
  {
    v13 = v1[41];
    v14 = v1[37];
    v15 = v1[35];

    v13(v14, v15);
  }

  v16 = v1[40];
  [v16 invalidate];
  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_265CF8B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E898, &qword_265D5D558);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8A0, &qword_265D5D560);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8A8, &qword_265D5D568);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF8CCC, a4, 0);
}

uint64_t sub_265CF8CCC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D85778], v0[3]);
  sub_265D59FF0();
  sub_265D59FD0();
  (*(v2 + 8))(v1, v3);
  v4 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D4F8);
  v0[12] = v4;
  v5 = v0[2];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_265CF8E4C;
  v7 = v0[9];

  return MEMORY[0x2822003E8](v0 + 16, v5, v4, v7);
}

uint64_t sub_265CF8E4C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_265CF8F5C, v1, 0);
}

uint64_t sub_265CF8F5C()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_265CF9078;

    return sub_265CF92AC(v1 & 1);
  }
}

uint64_t sub_265CF9078()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_265CF9210, v3, 0);
  }

  else
  {
    v4 = v2[12];
    v5 = v2[2];
    v6 = swift_task_alloc();
    v2[13] = v6;
    *v6 = v2;
    v6[1] = sub_265CF8E4C;
    v7 = v2[9];

    return MEMORY[0x2822003E8](v2 + 16, v5, v4, v7);
  }
}

uint64_t sub_265CF9210()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_265CF92AC(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 192) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_265D59DE0();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF93FC, v1, 0);
}

uint64_t sub_265CF93FC(uint64_t a1)
{
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 192);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_265C01000, v2, v3, "HRM device route state changed: %{BOOL}d", v5, 8u);
    MEMORY[0x266770CF0](v5, -1, -1);
  }

  v6 = *(v1 + 136);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 64);

  v49 = *(v8 + 8);
  v49(v6, v7);
  v13 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v11 + 16))(v9, v12 + v13, v10);
  v14 = (*(v11 + 88))(v9, v10);
  if (v14 == *MEMORY[0x277D4F250])
  {
    v15 = v14;
    v16 = *(v1 + 96);
    v17 = *(v1 + 192);
    (*(*(v1 + 80) + 96))(v16, *(v1 + 72));
    v18 = *v16;
    *(v1 + 144) = *v16;
    v19 = *(v16 + 8);
    *(v1 + 152) = v19;
    v20 = *(v16 + 24);
    *(v1 + 160) = v20;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    *(v1 + 168) = v22;
    if (v17 != v21)
    {
      v23 = *(v1 + 88);
      v24 = *(v1 + 80);
      v25 = *(v1 + 192);
      v47 = *(v1 + 72);
      v50 = *(*(v1 + 96) + 16);
      *v23 = v18;
      *(v23 + 8) = v19;
      *(v23 + 16) = v50;
      *(v23 + 24) = v20;
      *(v23 + 32) = v25;
      *(v23 + 40) = v22;
      v26 = v20;
      (*(v24 + 104))(v23, v15);
      swift_beginAccess();
      v27 = *(v24 + 40);
      v28 = v18;

      v27(v12 + v13, v23, v47);
      swift_endAccess();
      v29 = swift_task_alloc();
      *(v1 + 176) = v29;
      *v29 = v1;
      v29[1] = sub_265CF98CC;
      v30 = *(v1 + 192);

      return sub_265CFA548(v28, v50, v26, v30);
    }

    sub_265D595C0();
    v41 = sub_265D59DD0();
    v42 = sub_265D5A080();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v1 + 128);
    v45 = *(v1 + 104);
    if (v43)
    {
      v48 = *(v1 + 128);
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_265C01000, v41, v42, "isRouted didn't change so skipping...", v46, 2u);
      MEMORY[0x266770CF0](v46, -1, -1);

      v38 = v48;
    }

    else
    {

      v38 = v44;
    }

    v39 = v45;
  }

  else
  {
    (*(*(v1 + 80) + 8))(*(v1 + 96), *(v1 + 72));
    sub_265D595C0();
    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 120);
    v36 = *(v1 + 104);
    if (v34)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_265C01000, v32, v33, "No active session to update sensor data availability.", v37, 2u);
      MEMORY[0x266770CF0](v37, -1, -1);
    }

    v38 = v35;
    v39 = v36;
  }

  v49(v38, v39);

  v40 = *(v1 + 8);

  return v40();
}

uint64_t sub_265CF98CC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_265CF9AB0;
  }

  else
  {
    v4 = sub_265CF99F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CF99F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CF9AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CF9B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_265CFD508(a3, v22 - v9);
  v11 = sub_265D59FA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_265CA4AE8(v10, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_265D59F50();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_265D59EE0() + 32;

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

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

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

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_265CF9E18(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_265D58AC0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF9FA0, v2, 0);
}

uint64_t sub_265CF9FA0(uint64_t a1)
{
  v39 = v1;
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  sub_265D595C0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[15];
  v9 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v14 = v1[11];
  v13 = v1[12];
  if (v8)
  {
    v37 = v1[14];
    v15 = swift_slowAlloc();
    v35 = v7;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315138;
    v17 = sub_265D589D0();
    v36 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v35, "Ending Session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v36, v37);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v1[9];
  v21 = v1[10];
  v24 = v1[7];
  v23 = v1[8];
  v25 = v1[6];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v23);
  v26 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v22 + 40))(v24 + v26, v21, v23);
  swift_endAccess();
  if (*(v25 + 32))
  {
    v27 = v1[6];
    v28 = *v27;
    v29 = v27[2];
    v30 = v27[3];
    v31 = swift_task_alloc();
    v1[17] = v31;
    *v31 = v1;
    v31[1] = sub_265CFA310;

    return sub_265CFA548(v28, v29, v30, 0);
  }

  else
  {
    v33 = v1[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A000();
    [*v33 invalidate];

    v34 = v1[1];

    return v34();
  }
}

uint64_t sub_265CFA310()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 56);

    return MEMORY[0x2822009F8](sub_265CFA46C, v6, 0);
  }
}

uint64_t sub_265CFA46C()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A000();
  [*v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265CFA548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 464) = a4;
  *(v5 + 352) = a3;
  *(v5 + 360) = v4;
  *(v5 + 336) = a1;
  *(v5 + 344) = a2;
  v6 = sub_265D59DE0();
  *(v5 + 368) = v6;
  *(v5 + 376) = *(v6 - 8);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CFA634, v4, 0);
}

uint64_t sub_265CFA634(uint64_t a1)
{
  v33 = v1;
  if (*(v1 + 464) == 1)
  {
    sub_265D595C0();

    v2 = sub_265D59DD0();
    v3 = sub_265D5A080();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 408);
    v6 = *(v1 + 368);
    v7 = *(v1 + 376);
    if (v4)
    {
      v9 = *(v1 + 344);
      v8 = *(v1 + 352);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_265CF4FFC(v9, v8, &v32);
      _os_log_impl(&dword_265C01000, v2, v3, "Calling dataRelayClient.sensorDataAvailable(%s, dataType:)", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266770CF0](v11, -1, -1);
      MEMORY[0x266770CF0](v10, -1, -1);
    }

    v12 = *(v7 + 8);
    v12(v5, v6);
    v13 = v1 + 80;
    *(v1 + 416) = v12;
    v14 = *(v1 + 336);
    v15 = sub_265D59E90();
    *(v1 + 424) = v15;
    *(v1 + 80) = v1;
    *(v1 + 88) = sub_265CFAA38;
    v16 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v1 + 208) = MEMORY[0x277D85DD0];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_265CFD30C;
    *(v1 + 232) = &block_descriptor_34;
    *(v1 + 240) = v16;
    [v14 sensorDataAvailable:v15 dataTypes:3 completion:v1 + 208];
  }

  else
  {
    sub_265D595C0();

    v17 = sub_265D59DD0();
    v18 = sub_265D5A080();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 400);
    v21 = *(v1 + 368);
    v22 = *(v1 + 376);
    if (v19)
    {
      v24 = *(v1 + 344);
      v23 = *(v1 + 352);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_265CF4FFC(v24, v23, &v32);
      _os_log_impl(&dword_265C01000, v17, v18, "Calling dataRelayClient.sensorDataUnavailable(%s, dataType:)", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266770CF0](v26, -1, -1);
      MEMORY[0x266770CF0](v25, -1, -1);
    }

    v27 = *(v22 + 8);
    v27(v20, v21);
    v13 = v1 + 16;
    *(v1 + 440) = v27;
    v28 = *(v1 + 336);
    v29 = sub_265D59E90();
    *(v1 + 448) = v29;
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_265CFABEC;
    v30 = swift_continuation_init();
    *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_265CFD30C;
    *(v1 + 168) = &block_descriptor_2;
    *(v1 + 176) = v30;
    [v28 sensorDataUnavailable:v29 dataTypes:3 completion:v1 + 144];
  }

  return MEMORY[0x282200938](v13);
}

uint64_t sub_265CFAA38()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_265CFADA0;
  }

  else
  {
    v4 = sub_265CFAB58;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CFAB58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CFABEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_265CFAFAC;
  }

  else
  {
    v4 = sub_265CFAD0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CFAD0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265CFADA0(uint64_t a1)
{
  v21 = v1;
  v2 = v1[53];
  v3 = v1[54];
  swift_willThrow();

  sub_265D595C0();
  v4 = v3;
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v1[52];
    v7 = v1[49];
    v8 = v1[46];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](v1[38], v1[39]);
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v5, v6, "Failed to make sensor data available: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    v19(v7, v8);
  }

  else
  {
    v14 = v1[52];
    v15 = v1[49];
    v16 = v1[46];

    v14(v15, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_265CFAFAC(uint64_t a1)
{
  v21 = v1;
  v2 = v1[56];
  v3 = v1[57];
  swift_willThrow();

  sub_265D595C0();
  v4 = v3;
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v1[55];
    v7 = v1[48];
    v8 = v1[46];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](v1[35], v1[36]);
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v5, v6, "Failed to make sensor data unavailable: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    v19(v7, v8);
  }

  else
  {
    v14 = v1[55];
    v15 = v1[48];
    v16 = v1[46];

    v14(v15, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_265CFB1B8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  v1 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SensorDataRelayCoordinator(uint64_t a1)
{
  result = qword_2813B7110;
  if (!qword_2813B7110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CFB2F0(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265CFB3E8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CFB3E8()
{
  if (!qword_2813B8FC8)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FC8);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265CFB44C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_265CFB494(uint64_t result, int a2, int a3)
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

uint64_t sub_265CFB538@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CFB5CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CFB6C8()
{
  v0 = sub_265D590A0();
  v3[3] = v0;
  v3[4] = sub_265CFD68C(&qword_2813B8FE8, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  LOBYTE(v0) = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if (v0 & 1) == 0 && (os_variant_has_internal_content())
  {
    return 0;
  }

  sub_265CF74FC();

  return 1;
}

uint64_t sub_265CFB7CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CF7AE0(a1);
}

uint64_t sub_265CFB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265CFB928(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_265CFB9D0;

  return sub_265CF9E18(a1, v2 + 16);
}

uint64_t sub_265CFB9D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265CFBAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CFBB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CFBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265CFBD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265CFBDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265CFBE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SensorDataRelayCoordinator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265CFBF44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CFBFCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CFC108()
{
  result = qword_28003E880;
  if (!qword_28003E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E880);
  }

  return result;
}

uint64_t sub_265CFC15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_265D59FA0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator, &unk_265D5D4F8);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v6;
  v7[4] = a1;
  swift_retain_n();
  sub_265CF9B7C(0, 0, v4, &unk_265D5D580, v7);
}

uint64_t sub_265CFC2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C96620;

  return sub_265CFC334();
}

uint64_t sub_265CFC334()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = sub_265D59DE0();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CFC498, v0, 0);
}

uint64_t sub_265CFC498(uint64_t a1)
{
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DataRelayServiceClient invalidated!", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = *(v1 + 288);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  v9 = *(v1 + 216);
  v8 = *(v1 + 224);
  v11 = *(v1 + 200);
  v10 = *(v1 + 208);

  v12 = *(v7 + 8);
  *(v1 + 296) = v12;
  v12(v5, v6);
  v13 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v9 + 16))(v8, v11 + v13, v10);
  v14 = (*(v9 + 88))(v8, v10);
  v15 = *(v1 + 216);
  v16 = *(v1 + 224);
  v17 = *(v1 + 208);
  if (v14 == *MEMORY[0x277D4F250])
  {
    (*(v15 + 96))(*(v1 + 224), v17);
    v18 = *v16;
    *(v1 + 304) = *v16;
    *(v1 + 312) = *(v16 + 8);
    *(v1 + 320) = *(v16 + 16);
    *(v1 + 328) = *(v16 + 24);
    *(v1 + 368) = *(v16 + 32);
    *(v1 + 336) = *(v16 + 40);
    v19 = v18;
    sub_265D595C0();
    v20 = sub_265D59DD0();
    v21 = sub_265D5A080();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_265C01000, v20, v21, "Re-Activating DataRelayServiceClient...", v22, 2u);
      MEMORY[0x266770CF0](v22, -1, -1);
    }

    v23 = *(v1 + 280);
    v24 = *(v1 + 232);

    v12(v23, v24);
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_265CFC8F0;
    v25 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_265CFD30C;
    *(v1 + 104) = &block_descriptor_61;
    *(v1 + 112) = v25;
    [v19 activateWithCompletion_];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    (*(v15 + 8))(*(v1 + 224), v17);
    sub_265D595C0();
    v26 = sub_265D59DD0();
    v27 = sub_265D5A070();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 256);
    v30 = *(v1 + 232);
    if (v28)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_265C01000, v26, v27, "No active session to re-activate DataRelayServiceClient.", v31, 2u);
      MEMORY[0x266770CF0](v31, -1, -1);
    }

    v12(v29, v30);

    v32 = *(v1 + 8);

    return v32();
  }
}

uint64_t sub_265CFC8F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_265CFCE94;
  }

  else
  {
    v4 = sub_265CFCA10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CFCA10(uint64_t a1)
{
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DataRelayServiceClient re-activated.", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = *(v1 + 304);
  v6 = *(v1 + 296);
  v7 = *(v1 + 272);
  v8 = *(v1 + 232);

  v6(v7, v8);
  sub_265D595C0();
  v9 = v5;

  v10 = sub_265D59DD0();
  v11 = sub_265D5A080();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 368);
    v13 = *(v1 + 304);
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v12;

    _os_log_impl(&dword_265C01000, v10, v11, "Updating sensor data availability -- %{BOOL}d...", v14, 8u);
    MEMORY[0x266770CF0](v14, -1, -1);
  }

  else
  {

    v10 = *(v1 + 304);
  }

  v15 = *(v1 + 296);
  v16 = *(v1 + 264);
  v17 = *(v1 + 232);

  v15(v16, v17);
  v18 = swift_task_alloc();
  *(v1 + 352) = v18;
  *v18 = v1;
  v18[1] = sub_265CFCC90;
  v19 = *(v1 + 368);
  v20 = *(v1 + 320);
  v21 = *(v1 + 328);
  v22 = *(v1 + 304);

  return sub_265CFA548(v22, v20, v21, v19);
}

uint64_t sub_265CFCC90()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_265CFD0E8;
  }

  else
  {
    v4 = sub_265CFCDBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265CFCDBC()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265CFCE94(uint64_t a1)
{
  v21 = v1;
  v2 = v1[43];
  swift_willThrow();
  sub_265D595C0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v1[37];
    v6 = v1[31];
    v7 = v1[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x2667704D0](v1[22], v1[23]);
    v12 = sub_265CF4FFC(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to re-activate DataRelayServiceClient: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266770CF0](v9, -1, -1);
    MEMORY[0x266770CF0](v8, -1, -1);

    v19(v6, v7);
  }

  else
  {
    v13 = v1[37];
    v14 = v1[31];
    v15 = v1[29];

    v13(v14, v15);
  }

  swift_willThrow();
  v16 = v1[38];

  v17 = v1[1];

  return v17();
}

uint64_t sub_265CFD0E8()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265CFD1D8()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_265C01000, v4, v5, "DataRelayServiceClient interrupted!", v6, 2u);
    MEMORY[0x266770CF0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_265CFD30C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

unint64_t sub_265CFD3D4()
{
  result = qword_28003E888;
  if (!qword_28003E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E888);
  }

  return result;
}

uint64_t sub_265CFD454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CF8B2C(a1, v4, v5, v6);
}

uint64_t sub_265CFD508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265CFD5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C96620;

  return sub_265CFC2A4();
}

uint64_t sub_265CFD68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SensorDataRelayCoordinator.SensorDataRelayCoordinatorError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SensorDataRelayCoordinator.SensorDataRelayCoordinatorError(_WORD *result, int a2, int a3)
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