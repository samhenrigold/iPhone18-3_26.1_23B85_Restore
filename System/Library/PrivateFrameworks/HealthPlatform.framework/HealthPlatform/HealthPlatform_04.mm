void sub_2284438D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_22844C284(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_2284439F4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22855DB4C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_228407958(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

unint64_t sub_228443AB4(uint64_t a1)
{
  v1 = a1;
  sub_22855E22C();
  sub_22855D20C();

  v2 = sub_22855E27C();

  return sub_228443EE0(v1, v2);
}

unint64_t sub_228443C14(uint64_t a1)
{
  v2 = sub_22855DBCC();

  return sub_228444064(a1, v2);
}

unint64_t sub_228443C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  v8 = sub_22855E27C();

  return sub_22844412C(a1, a2, a3, a4, v8);
}

unint64_t sub_228443CF8(uint64_t a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1);
  v2 = sub_22855E27C();
  return sub_22844422C(a1, v2);
}

unint64_t sub_228443D60(uint64_t a1)
{
  v2 = sub_22855E21C();

  return sub_22844422C(a1, v2);
}

unint64_t sub_228443DF4(uint64_t a1)
{
  sub_22855C5CC();
  sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8], MEMORY[0x277D11BB0]);
  v2 = sub_22855D13C();

  return sub_228444298(a1, v2);
}

unint64_t sub_228443EE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73646E657274;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE700000000000000;
          v8 = 0x73657461647075;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v8 != 0x737472656C61)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x737472656C61;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73646E657274;
      }

      else
      {
        v10 = 0x73657461647075;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_22855E15C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_228444064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22844BB04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAB9C50](v9, a1);
      sub_22842D0B4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22844412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      if (v18 || (sub_22855E15C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22855E15C() & 1) != 0)
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

unint64_t sub_22844422C(uint64_t a1, uint64_t a2)
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

unint64_t sub_228444298(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22855C5CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22840A300(&qword_280DE9F30, 255, MEMORY[0x277D11BA8], MEMORY[0x277D11BB8]);
      v15 = sub_22855D16C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_22844445C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844BB60();
  v33 = v4;
  result = sub_22855DF4C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_228400400(v24, v34);
      }

      else
      {
        sub_2283F6E48(v24, v34);
      }

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_228400400(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228444708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844BA34(0);
  v38 = v4;
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v40 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_22855E22C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
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
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v12 = v39;
      v16[2] = v40;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_2284449D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844C4C8(0);
  result = sub_22855DF4C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v20);
      result = sub_22855E27C();
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

LABEL_33:
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_228444C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844C468();
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      result = sub_22855E21C();
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

LABEL_33:
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
        goto LABEL_33;
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_228444EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v44 = sub_22855C37C();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_22844B984(0, &qword_280DE9080, MEMORY[0x277D11290]);
  v40 = v4;
  result = sub_22855DF4C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = v2;
    v37 = (v5 + 16);
    v41 = (v5 + 32);
    v16 = result + 64;
    v17 = v5;
    v38 = v5;
    v39 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v42 = *(v17 + 72);
      v25 = v23 + v42 * v22;
      if (v40)
      {
        (*v41)(v43, v25, v44);
      }

      else
      {
        (*v37)(v43, v25, v44);
        v26 = v24;
      }

      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v27 = sub_22855E27C();

      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v41)(*(v9 + 56) + v42 * v18, v43, v44);
      ++*(v9 + 16);
      v17 = v38;
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_228445250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844B984(0, &qword_280DE9078, sub_22844C2D4);
  v34 = v4;
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 16 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
        swift_unknownObjectRetain();
      }

      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v23 = sub_22855E27C();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228445528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844C028();
  v33 = v4;
  result = sub_22855DF4C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_22842B3E0(v34, *(&v34 + 1));
      }

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2284457D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844B88C(0);
  v35 = v4;
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v35 & 1) == 0)
      {
        v25 = v21;
        sub_22844B978(v23, v24);
      }

      result = sub_22855D99C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_228445A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844B820(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
  v34 = v4;
  result = sub_22855DF4C();
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

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_228445D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2284002A8(0, &qword_280DE90A0, sub_22844C220);
  v34 = v4;
  result = sub_22855DF4C();
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

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_228446018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844BFB0(0);
  v33 = v4;
  result = sub_22855DF4C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_2283FAB3C(v24, v34);
      }

      else
      {
        sub_2283F9B10(v24, v34);
      }

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2283FAB3C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2284462D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844B794(0);
  v34 = v4;
  result = sub_22855DF4C();
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

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_228446584(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  result = sub_22855DF4C();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v5 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_22855D99C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v5 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2284467EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844BE84();
  v37 = v4;
  result = sub_22855DF4C();
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

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_228446AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22855C5CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_22844B638(0);
  v39 = v4;
  result = sub_22855DF4C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8], MEMORY[0x277D11BB0]);
      result = sub_22855D13C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_228446E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844BDCC(0);
  result = sub_22855DF4C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

uint64_t sub_228447148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  result = sub_22855DF4C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v5 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_22855D99C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v5)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2284473A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22844B820(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  v34 = v4;
  result = sub_22855DF4C();
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

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
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

uint64_t sub_22844767C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PluginFeedItem(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2284002A8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem);
  v40 = v4;
  result = sub_22855DF4C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22844BC28(v28, v41);
      }

      else
      {
        sub_22844BBC4(v28, v41);
      }

      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22844BC28(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2284479C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22842D2A0();
  result = sub_22855DF4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_228400400((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_22844BB04(v23, &v36);
        sub_2283F6E48(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_22855DBCC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_228400400(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_228447C74()
{
  v1 = v0;
  sub_22844BB60();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_2283F6E48(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_228400400(v25, (*(v4 + 56) + v22));
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

id sub_228447E0C()
{
  v1 = v0;
  sub_22844BA34(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

void *sub_228447F84()
{
  v1 = v0;
  sub_22844C4C8(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_2284480C4()
{
  v1 = v0;
  sub_22844C468();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

id sub_228448204()
{
  v1 = v0;
  v29 = sub_22855C37C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844B984(0, &qword_280DE9080, MEMORY[0x277D11290]);
  v3 = *v0;
  v4 = sub_22855DF3C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
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

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_228448480()
{
  v1 = v0;
  sub_22844B984(0, &qword_280DE9078, sub_22844C2D4);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

void *sub_228448608()
{
  v1 = v0;
  sub_22844C028();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22842B3E0(v22, *(&v22 + 1));
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

void *sub_228448780()
{
  v1 = v0;
  sub_22844B88C(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_22844B978(v20, v21);
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

void *sub_2284488F8()
{
  v1 = v0;
  sub_22844B820(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_228448A94()
{
  v1 = v0;
  sub_2284002A8(0, &qword_280DE90A0, sub_22844C220);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

id sub_228448C2C()
{
  v1 = v0;
  sub_22844C088(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_228448D80()
{
  v1 = v0;
  sub_2284033AC(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_2283F9B10(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2283FAB3C(v19, *(v4 + 56) + 40 * v17);
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

void *sub_228448EF4()
{
  v1 = v0;
  sub_22844BFB0(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_2283F9B10(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2283FAB3C(v25, *(v4 + 56) + v22);
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

void *sub_228449090()
{
  v1 = v0;
  sub_22844B794(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_22844920C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_22855DF3C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_22844936C()
{
  v1 = v0;
  sub_22844BE84();
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_2284494D8()
{
  v1 = v0;
  v31 = sub_22855C5CC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844B638(0);
  v3 = *v0;
  v4 = sub_22855DF3C();
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
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_228449744()
{
  v1 = v0;
  sub_22844BDCC(0);
  v2 = *v0;
  v3 = sub_22855DF3C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_228449884()
{
  v1 = v0;
  sub_22844B820(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  v2 = *v0;
  v3 = sub_22855DF3C();
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

void *sub_228449A20()
{
  v1 = v0;
  v2 = type metadata accessor for PluginFeedItem(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284002A8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem);
  v4 = *v0;
  v5 = sub_22855DF3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22844BBC4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22844BC28(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_228449C60()
{
  v1 = v0;
  sub_22842D2A0();
  v2 = *v0;
  v3 = sub_22855DF3C();
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
        sub_22844BB04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2283F6E48(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_228400400(v22, (*(v4 + 56) + v17));
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

void sub_228449DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_22855DB4C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_22855DB9C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_228449EF8(__int128 *a1, uint64_t a2)
{
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_22855D1AC();
    sub_22855E22C();
    v12 = v11;
    sub_22855D20C();
    v13 = sub_22855E27C();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x22AABA2B0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22844A09C(__int128 *a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  sub_22855E27C();
  v23 = a3;
  v24 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_22855DAFC();
    sub_2283EF310(0, a3, a4);
    sub_22844B928(a5, a3, a4);
    sub_22855D56C();
    a2 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
    v12 = v30;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v9 = a2 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a2 + 56);

    v11 = 0;
  }

  v16 = 0;
  v17 = (v10 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_22855DB8C())
    {
LABEL_20:
      sub_228407958(a2);
      MEMORY[0x22AABA2B0](v16);
      return;
    }

    sub_2283EF310(0, v23, v24);
    swift_dynamicCast();
    v20 = v25;
LABEL_10:
    v21 = sub_22855D99C();

    v16 ^= v21;
  }

  if (v12)
  {
    v18 = v11;
LABEL_9:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v25 = *(*(a2 + 48) + ((v18 << 9) | (8 * v19)));
    v20 = v25;
    goto LABEL_10;
  }

  v22 = v11;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      goto LABEL_20;
    }

    v12 = *(v9 + 8 * v18);
    ++v22;
    if (v12)
    {
      v11 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22844A2BC(__int128 *a1, uint64_t a2)
{
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v5 &= v5 - 1;
    sub_22855E22C();
    sub_22855D20C();

    result = sub_22855E27C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AABA2B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844A6B8(__int128 *a1, uint64_t a2)
{
  sub_22855E27C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AABA2B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_22855E22C();

        sub_22855D20C();
        v11 = sub_22855E27C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void *sub_22844A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v22 = a8;
  v23 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  v18 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9118, &type metadata for DatabaseChangesQueryInputSignal.State);
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = v18;
  a7[12] = v19;
  sub_2283FAB3C(&v21, (a7 + 7));
  a7[2] = a5;
  a7[3] = a1;
  a7[4] = a2;
  a7[5] = a3;
  a7[6] = a4;
  return a7;
}

void sub_22844A90C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_22855DE0C();
      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_22855DE3C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_22855DE4C();
  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
  swift_dynamicCast();
  v5 = sub_228443B74(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

void *sub_22844AA9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for DatabaseChangesQueryInputSignal.QueryObserver();
  v13 = swift_allocObject();
  sub_2283FA00C(0, &qword_280DE9120, &type metadata for DatabaseChangesQueryInputSignal.QueryObserver.State);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v13[2] = v14;
  v13[3] = a4;
  v15 = sub_22844ABA8(a1, a2, a3, a4, v13, a6, a7);
  v16 = a4;
  return v15;
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

void *sub_22844ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  type metadata accessor for DatabaseChangesQueryInputSignal();
  v14 = swift_allocObject();
  v14[10] = v13;
  v14[11] = &off_283B81820;
  v14[7] = a5;
  v15 = sub_22847C878(MEMORY[0x277D84F90]);
  sub_2283FA00C(0, &qword_280DE9118, &type metadata for DatabaseChangesQueryInputSignal.State);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  v14[12] = v16;
  v14[2] = a4;
  v14[3] = a1;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a3;
  return v14;
}

void *sub_22844AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a5;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a6, a8);
  return sub_22844A814(a1, a2, a3, a4, v21, v17, v18, a8, a9);
}

unint64_t sub_22844ADBC()
{
  result = qword_280DEAA40;
  if (!qword_280DEAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA40);
  }

  return result;
}

unint64_t sub_22844AE10()
{
  result = qword_280DEEC80;
  if (!qword_280DEEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC80);
  }

  return result;
}

void sub_22844AE64()
{
  if (!qword_280DE96C0)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96C0);
    }
  }
}

void sub_22844AEC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22844ADBC();
    v7 = a3(a1, &type metadata for DatabaseChangesQueryInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22844AF28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22844AE64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22844AF8C()
{
  result = qword_280DEE790;
  if (!qword_280DEE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE790);
  }

  return result;
}

void sub_22844AFFC(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

unint64_t sub_22844B044()
{
  result = qword_280DEAA10;
  if (!qword_280DEAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA10);
  }

  return result;
}

unint64_t sub_22844B09C()
{
  result = qword_280DEAA20;
  if (!qword_280DEAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA20);
  }

  return result;
}

unint64_t sub_22844B0F4()
{
  result = qword_280DEAA18;
  if (!qword_280DEAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA18);
  }

  return result;
}

unint64_t sub_22844B14C()
{
  result = qword_27D83F550;
  if (!qword_27D83F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F550);
  }

  return result;
}

unint64_t sub_22844B1A4()
{
  result = qword_280DEAA50;
  if (!qword_280DEAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA50);
  }

  return result;
}

unint64_t sub_22844B1FC()
{
  result = qword_280DEAA48;
  if (!qword_280DEAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA48);
  }

  return result;
}

unint64_t sub_22844B29C()
{
  result = qword_280DEAA28;
  if (!qword_280DEAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA28);
  }

  return result;
}

uint64_t sub_22844B378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22844B3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22844B40C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22844B468(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22844B4C8(uint64_t a1, int a2)
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

unint64_t sub_22844B534()
{
  result = qword_27D83F558;
  if (!qword_27D83F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F558);
  }

  return result;
}

unint64_t sub_22844B58C()
{
  result = qword_280DEAA30;
  if (!qword_280DEAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA30);
  }

  return result;
}

unint64_t sub_22844B5E4()
{
  result = qword_280DEAA38;
  if (!qword_280DEAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEAA38);
  }

  return result;
}

void sub_22844B638(uint64_t a1)
{
  if (!qword_280DE90B8)
  {
    sub_22855C5CC();
    sub_22855C80C();
    sub_22840A300(&qword_280DE9F38, 255, MEMORY[0x277D11BA8], MEMORY[0x277D11BB0]);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90B8);
    }
  }
}

void sub_22844B6E8(void **a1)
{
  v3 = *a1;
  if (*a1)
  {
    [*(v1 + 24) stopQuery_];
  }

  *a1 = 0;
}

void sub_22844B794(uint64_t a1)
{
  if (!qword_27D83F560)
  {
    sub_22844C284(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F560);
    }
  }
}

void sub_22844B820(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2283F0D04(255, a3, a4, a5);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22844B88C(uint64_t a1)
{
  if (!qword_280DE9070)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9070);
    }
  }
}

uint64_t sub_22844B928(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22844B978(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_22844B984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    a3(255);
    sub_22840A300(&unk_280DE9370, 255, type metadata accessor for HKFeatureIdentifier, &unk_22855FE04);
    v5 = sub_22855DF7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22844BA34(uint64_t a1)
{
  if (!qword_280DE90C0)
  {
    sub_2283EF310(255, &qword_280DE9490, 0x277CCD928);
    sub_22844BAB0();
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90C0);
    }
  }
}

unint64_t sub_22844BAB0()
{
  result = qword_280DEA338[0];
  if (!qword_280DEA338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEA338);
  }

  return result;
}

void sub_22844BB60()
{
  if (!qword_280DED050)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED050);
    }
  }
}

uint64_t sub_22844BBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844BC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginFeedItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22844BC8C(uint64_t a1)
{
  if (!qword_27D83F590)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_22855BE1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D83F590);
    }
  }
}

void sub_22844BD10(uint64_t a1)
{
  if (!qword_27D83F5A0)
  {
    sub_2283EF310(255, &qword_280DE94C8, 0x277CCD830);
    sub_2283EF310(255, &unk_280DE9238, 0x277CCDAB0);
    sub_22844B928(&qword_280DE94C0, &qword_280DE94C8, 0x277CCD830);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F5A0);
    }
  }
}

void sub_22844BDCC(uint64_t a1)
{
  if (!qword_27D83F5A8)
  {
    sub_22844BE30();
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F5A8);
    }
  }
}

unint64_t sub_22844BE30()
{
  result = qword_27D83F5B0;
  if (!qword_27D83F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F5B0);
  }

  return result;
}

void sub_22844BE84()
{
  if (!qword_280DE90B0)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90B0);
    }
  }
}

void sub_22844BEE0(uint64_t a1)
{
  if (!qword_27D83F5B8)
  {
    sub_2283EF310(255, &qword_280DE94D8, 0x277CCD4D8);
    sub_22844C284(255, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
    sub_22844B928(&qword_27D83F5C0, &qword_280DE94D8, 0x277CCD4D8);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F5B8);
    }
  }
}

void sub_22844BFB0(uint64_t a1)
{
  if (!qword_27D83F5C8)
  {
    sub_2283F9B94(255, &qword_27D83F440, &protocol descriptor for CoalescingNotification);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F5C8);
    }
  }
}

void sub_22844C028()
{
  if (!qword_280DEE7A8)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7A8);
    }
  }
}

void sub_22844C088(uint64_t a1)
{
  if (!qword_280DE9060)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_2283EF310(255, &qword_280DE9258, 0x277CCD2B8);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9060);
    }
  }
}

void sub_22844C144(uint64_t a1)
{
  if (!qword_280DE9068)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    sub_2283F0D04(255, &qword_280DE9588, sub_2283FBB5C, MEMORY[0x277D83940]);
    sub_22844B928(&qword_280DE9330, &qword_280DEE7B0, 0x277CCD7C8);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9068);
    }
  }
}

void sub_22844C220()
{
  if (!qword_280DE9680)
  {
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9680);
    }
  }
}

void sub_22844C284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22844C2D4()
{
  result = qword_280DE9F78;
  if (!qword_280DE9F78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9F78);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22844C3AC(uint64_t a1)
{
  if (!qword_280DE96F0)
  {
    sub_2283EF310(255, &qword_280DE94F8, 0x277CCD8D8);
    sub_2283EF310(255, &qword_280DE93E8, 0x277CCD8E0);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v1 = sub_22855D11C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE96F0);
    }
  }
}

void sub_22844C468()
{
  if (!qword_280DE9090)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9090);
    }
  }
}

void sub_22844C4C8(uint64_t a1)
{
  if (!qword_280DE9088)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_22840A300(&unk_280DE9450, 255, type metadata accessor for _HKDataTypeCode, &unk_22855FD6C);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9088);
    }
  }
}

uint64_t static InputSignalSet.LookupKey.featureStatus.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for FeatureStatusInputSignal();
  return sub_22855C61C();
}

uint64_t sub_22844C658()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DEBA60);
  __swift_project_value_buffer(v0, qword_280DEBA60);
  return sub_22855C84C();
}

void *FeatureStatusInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22844F228(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *FeatureStatusInputSignal.__allocating_init(context:observer:makeFeatureStatusManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_22844F2E4(a1, a3, a4, a5, a6, v12, ObjectType, a2);
}

void *FeatureStatusInputSignal.init(context:observer:makeFeatureStatusManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22844F2E4(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

id sub_22844C86C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = [*(*(v3 + 56) + ((v10 << 10) | (16 * v11))) unregisterObserver_])
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v12 = sub_22847CB84(MEMORY[0x277D84F90]);

      *(a1 + 8) = v12;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844C970(uint64_t a1, void *a2)
{
  v91 = sub_22855CABC();
  v4 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22855C37C();
  v7 = MEMORY[0x28223BE20](v85);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v81 - v10;
  v11 = *a2;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v90 = (v4 + 8);
  v83 = (v9 + 32);
  v82 = v9;
  v81 = v9 + 40;
  v86 = v11;

  v17 = 0;
  v98 = 0;
  *&v18 = 136315394;
  v87 = v18;
  v93 = a1 + 56;
  v94 = a1;
  v96 = v6;
  v92 = v16;
LABEL_5:
  v19 = v17;
  if (!v15)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v17 = v19;
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(a2[1] + 16);
    v22 = *(*(a1 + 48) + ((v17 << 9) | (8 * v20)));
    v23 = v22;
    if (v21)
    {
      sub_22844C56C(v22);
      if (v24)
      {

        goto LABEL_5;
      }
    }

    v25 = v97;
    v26 = (*(v97 + 24))(v23);
    v28 = v27;
    swift_getObjectType();
    [v26 registerObserver_];
    v29 = v23;
    v30 = v26;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = a2[1];
    v32 = v100;
    v33 = sub_22844C56C(v29);
    v35 = *(v32 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (*(v32 + 24) >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = v33;
        sub_228448480();
        v33 = v65;
      }
    }

    else
    {
      sub_228445250(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_22844C56C(v29);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_45;
      }
    }

    v41 = v30;
    v42 = v100;
    if (v39)
    {
      v43 = (v100[7] + 16 * v33);
      *v43 = v41;
      v43[1] = v28;

      swift_unknownObjectRelease();
    }

    else
    {
      v100[(v33 >> 6) + 8] |= 1 << v33;
      *(v42[6] + 8 * v33) = v29;
      v44 = (v42[7] + 16 * v33);
      *v44 = v41;
      v44[1] = v28;
      v45 = v42[2];
      v37 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v37)
      {
        goto LABEL_42;
      }

      v42[2] = v46;
    }

    a2[1] = v42;
    v100 = v41;
    v47 = v98;
    sub_22855C3DC();
    if (!v47)
    {
      v98 = 0;
      v66 = *v83;
      (*v83)(v84, v95, v85);
      v67 = v86;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v67;
      v69 = sub_22844C56C(v29);
      v71 = *(v67 + 16);
      v72 = (v70 & 1) == 0;
      v37 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      a1 = v94;
      if (v37)
      {
        goto LABEL_43;
      }

      v74 = v70;
      if (*(v67 + 24) >= v73)
      {
        if ((v68 & 1) == 0)
        {
          v79 = v69;
          sub_228448204();
          v69 = v79;
          a1 = v94;
        }
      }

      else
      {
        sub_228444EA0(v73, v68);
        v69 = sub_22844C56C(v29);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_45;
        }
      }

      v86 = v100;
      if (v74)
      {
        (*(v82 + 40))(v100[7] + *(v82 + 72) * v69, v84, v85);

        swift_unknownObjectRelease();
      }

      else
      {
        v100[(v69 >> 6) + 8] |= 1 << v69;
        v76 = v85;
        *(v86[6] + 8 * v69) = v29;
        v66((v86[7] + *(v82 + 72) * v69), v84, v76);
        swift_unknownObjectRelease();
        v77 = v86[2];
        v37 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v37)
        {
          goto LABEL_44;
        }

        v86[2] = v78;
      }

      v16 = v92;
      v12 = v93;

      goto LABEL_5;
    }

    swift_getObjectType();
    v48 = v96;
    sub_22855C59C();
    v49 = v29;
    v50 = v47;
    v51 = sub_22855CA8C();
    v52 = sub_22855D68C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v89 = v41;
      v55 = v54;
      v88 = swift_slowAlloc();
      v100 = v88;
      *v53 = v87;
      v99[0] = v49;
      type metadata accessor for HKFeatureIdentifier(0);
      v98 = v47;
      v56 = v49;
      v57 = sub_22855D1BC();
      v59 = sub_2283F8938(v57, v58, &v100);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2112;
      v60 = v98;
      v61 = v98;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v62;
      *v55 = v62;
      _os_log_impl(&dword_2283ED000, v51, v52, "Error retrieving initial feature status for %s: %@", v53, 0x16u);
      sub_22844FE44(v55, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v55, -1, -1);
      v63 = v88;
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x22AABAD40](v63, -1, -1);
      v64 = v53;
      v48 = v96;
      MEMORY[0x22AABAD40](v64, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*v90)(v48, v91);
    v98 = 0;
    v19 = v17;
    v12 = v93;
    a1 = v94;
    v16 = v92;
    if (!v15)
    {
LABEL_7:
      while (1)
      {
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          *a2 = v86;
          return result;
        }

        v15 = *(v12 + 8 * v17);
        ++v19;
        if (v15)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  type metadata accessor for HKFeatureIdentifier(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_22844D0E8()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock((v1 + 32));
  sub_22844FDA8((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 32));
  v2 = v5;
  swift_getObjectType();
  v5 = v2;
  sub_22844F98C(&unk_280DEB9D0, v3, type metadata accessor for FeatureStatusInputSignal, &protocol conformance descriptor for FeatureStatusInputSignal);
  sub_22855C78C();
}

double sub_22844D1F4@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_22855C37C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_2284D1CF0(v10, a2);
  *a4 = *a1;

  return result;
}

uint64_t sub_22844D330(void *a1, void *a2)
{
  v4 = sub_22855C37C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = a2;
    sub_22855C38C();
    v10 = [a1 featureIdentifier];
    sub_22844D0E8();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

id sub_22844D538()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeatureStatusInputSignal.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeatureStatusInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22844D660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000022856EAF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22844D6F4(uint64_t a1)
{
  v2 = sub_22844F3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22844D730(uint64_t a1)
{
  v2 = sub_22844F3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeatureStatusInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_22844F5A4(0, &qword_280DE8FF8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844F3B8();

  sub_22855E31C();
  v10[1] = v8;
  sub_22844F40C(0);
  sub_22844F4BC();
  sub_22855E0CC();

  return (*(v5 + 8))(v7, v4);
}

uint64_t FeatureStatusInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22844F5A4(0, &qword_280DE9040, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844F3B8();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844F40C(0);
    sub_22844F608();
    sub_22855E03C();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FeatureStatusInputSignal.Configuration.featureIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FeatureStatusInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_228449EF8(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_22844DB94()
{
  v1 = *v0;
  sub_22855E22C();
  sub_228449EF8(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_22844DBE4(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  sub_228449EF8(v4, v2);
  return sub_22855E27C();
}

uint64_t sub_22844DC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEBA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEBA60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall FeatureStatusInputSignal.stopObservation()()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 8);
  sub_22844F6F0(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t FeatureStatusInputSignal.beginObservation(from:configurations:)()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock((v1 + 32));
  sub_22844F718((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 32));
  v2 = v5;
  swift_getObjectType();
  v5 = v2;
  sub_22844F98C(&unk_280DEB9D0, v3, type metadata accessor for FeatureStatusInputSignal, &protocol conformance descriptor for FeatureStatusInputSignal);
  sub_22855C78C();
}

void sub_22844DE40(unint64_t *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  sub_22844C86C(a1);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_22847C948(MEMORY[0x277D84F90]);
  }

  *a1 = v8;
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = a3 + 32;
    v11 = MEMORY[0x277D84FA0];
    do
    {
      v10 += 8;

      sub_2284E2230(v12, v11);
      v11 = v13;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  sub_22844C970(v11, a1);

  *a4 = *a1;
}

void sub_22844DF74()
{
  v1 = *(*v0 + 72);
  os_unfair_lock_lock(v1 + 8);
  sub_22844FFB0(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_22844DFD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22844F98C(&unk_280DEB9D0, a2, type metadata accessor for FeatureStatusInputSignal, &protocol conformance descriptor for FeatureStatusInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_22844E03C(uint64_t a1, uint64_t *a2)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v99 - v5;
  v120 = sub_22855C37C();
  v6 = *(v120 - 8);
  v7 = MEMORY[0x28223BE20](v120);
  v102 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v115 = &v99 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v103 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v99 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v108 = &v99 - v17;
  sub_22844FEA0(0, &qword_280DE9388, sub_228409D54);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v113 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v112 = (&v99 - v21);
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v104 = (v23 + 63) >> 6;
  v117 = (v6 + 16);
  v118 = (v6 + 32);
  v110 = (v6 + 8);
  v100 = (v6 + 56);
  v116 = v6;
  v105 = (v6 + 40);
  v109 = a1;

  v26 = 0;
  v114 = a2;
  v111 = a1 + 64;
  while (v25)
  {
    v28 = a2;
    v29 = v26;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v108;
    v35 = *(*(v109 + 48) + 8 * v33);
    v36 = v116;
    v37 = v120;
    (*(v116 + 16))(v108, *(v109 + 56) + *(v116 + 72) * v33, v120);
    sub_228409D54(0);
    v39 = v38;
    v40 = *(v38 + 48);
    v41 = v113;
    *v113 = v35;
    (*(v36 + 32))(v41 + v40, v34, v37);
    (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
    v42 = v35;
LABEL_16:
    v43 = v112;
    sub_22844FDC4(v41, v112);
    sub_228409D54(0);
    if ((*(*(v39 - 8) + 48))(v43, 1, v39) == 1)
    {
    }

    v44 = *v43;
    v45 = *v118;
    (*v118)(v119, v43 + *(v39 + 48), v120);
    v46 = *v28;
    if (*(*v28 + 16))
    {
      v47 = sub_22844C56C(v44);
      v48 = *v117;
      if ((v49 & 1) == 0)
      {
        goto LABEL_25;
      }

      v50 = v46[7];
      v106 = *(v116 + 72);
      v51 = v103;
      v52 = v120;
      v48(v103, v50 + v106 * v47, v120);
      v53 = v107;
      v45(v107, v51, v52);
      sub_22844F98C(&qword_280DE9FA0, 255, MEMORY[0x277D11290], MEMORY[0x277D112A0]);
      if (sub_22855D16C())
      {
        v48(v102, v53, v52);
        v54 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = *v54;
        v56 = v121;
        v57 = sub_22844C56C(v44);
        v59 = v56[2];
        v60 = (v58 & 1) == 0;
        v61 = __OFADD__(v59, v60);
        v62 = v59 + v60;
        if (v61)
        {
          goto LABEL_52;
        }

        v63 = v58;
        if (v56[3] >= v62)
        {
          v22 = v111;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v97 = v57;
            sub_228448204();
            v57 = v97;
          }
        }

        else
        {
          sub_228444EA0(v62, isUniquelyReferenced_nonNull_native);
          v57 = sub_22844C56C(v44);
          v22 = v111;
          if ((v63 & 1) != (v64 & 1))
          {
            goto LABEL_54;
          }
        }

        v91 = v107;
        v92 = v121;
        if (v63)
        {
          (*v105)(v121[7] + v57 * v106, v102, v52);

          v93 = *v110;
          (*v110)(v91, v52);
          v93(v119, v52);
        }

        else
        {
          v121[(v57 >> 6) + 8] |= 1 << v57;
          *(v92[6] + 8 * v57) = v44;
          v45((v92[7] + v57 * v106), v102, v52);
          v94 = *v110;
          (*v110)(v91, v52);
          v94(v119, v52);
          v95 = v92[2];
          v61 = __OFADD__(v95, 1);
          v96 = v95 + 1;
          if (v61)
          {
            goto LABEL_53;
          }

          v92[2] = v96;
        }

        a2 = v114;
        *v114 = v92;
      }

      else
      {
        v81 = sub_22844C56C(v44);
        if (v82)
        {
          v83 = v81;
          v84 = v114;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v86 = *v84;
          v121 = v86;
          v22 = v111;
          if ((v85 & 1) == 0)
          {
            sub_228448204();
            v86 = v121;
          }

          v87 = v101;
          v45(v101, (*(v86 + 56) + v83 * v106), v52);
          sub_2284D2684(v83, v86);

          v88 = *v110;
          (*v110)(v107, v52);
          v88(v119, v52);
          v89 = 0;
          a2 = v114;
          *v114 = v86;
        }

        else
        {

          v90 = *v110;
          (*v110)(v107, v52);
          v90(v119, v52);
          v89 = 1;
          a2 = v114;
          v87 = v101;
          v22 = v111;
        }

        (*v100)(v87, v89, 1, v52);
        sub_22844FE44(v87, &qword_280DE9F90, MEMORY[0x277D11290]);
      }
    }

    else
    {
      v48 = *v117;
LABEL_25:
      v48(v115, v119, v120);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *v28;
      v66 = v121;
      v68 = sub_22844C56C(v44);
      v69 = v66[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_50;
      }

      v72 = v67;
      if (v66[3] >= v71)
      {
        v22 = v111;
        v75 = v120;
        if ((v65 & 1) == 0)
        {
          sub_228448204();
        }
      }

      else
      {
        sub_228444EA0(v71, v65);
        v73 = sub_22844C56C(v44);
        v22 = v111;
        v75 = v120;
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_54;
        }

        v68 = v73;
      }

      a2 = v114;
      v76 = v121;
      if (v72)
      {
        v27 = v116;
        (*(v116 + 40))(v121[7] + *(v116 + 72) * v68, v115, v75);

        (*(v27 + 8))(v119, v75);
        *a2 = v76;
      }

      else
      {
        v121[(v68 >> 6) + 8] |= 1 << v68;
        *(v76[6] + 8 * v68) = v44;
        v77 = v116;
        v45((v76[7] + *(v116 + 72) * v68), v115, v75);
        (*(v77 + 8))(v119, v75);
        v78 = v76[2];
        v61 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v61)
        {
          goto LABEL_51;
        }

        v76[2] = v79;
        *a2 = v76;
      }
    }
  }

  if (v104 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v104;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v104)
    {
      v28 = a2;
      sub_228409D54(0);
      v39 = v80;
      v41 = v113;
      (*(*(v80 - 8) + 56))(v113, 1, 1, v80);
      v25 = 0;
      v26 = v31;
      goto LABEL_16;
    }

    v25 = *(v22 + 8 * v29);
    ++v26;
    if (v25)
    {
      v28 = a2;
      v26 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  type metadata accessor for HKFeatureIdentifier(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t FeatureStatusInputSignal.Anchor.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DEBA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C85C();
  v3 = __swift_project_value_buffer(v2, qword_280DEBA60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FeatureStatusInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = sub_22844E03C(v4, &v6);
  *a2 = v6;
  return result;
}

void FeatureStatusInputSignal.Anchor.hasDifference(from:for:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_22855C37C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844F738(0);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v62 = &v49 - v15;
  v16 = *a1;
  v17 = *a2;
  v18 = *a2 + 56;
  v19 = 1 << *(*a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(*a2 + 56);
  v64 = *v2;
  v65 = (v6 + 56);
  v54 = v6 + 16;
  v55 = v6;
  v58 = (v6 + 48);
  v49 = (v19 + 63) >> 6;
  v50 = (v6 + 32);
  v52 = (v6 + 8);
  v60 = v17;

  v22 = 0;
  v57 = v16;
  while (v21)
  {
    v24 = v62;
    v23 = v63;
LABEL_11:
    v26 = *(*(v60 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (*(v64 + 16))
    {
      v27 = sub_22844C56C(v26);
      if (v28)
      {
        v29 = v55;
        (*(v55 + 16))(v24, *(v64 + 56) + *(v55 + 72) * v27, v5);
        v30 = *(v29 + 56);
        v30(v24, 0, 1, v5);
      }

      else
      {
        v30 = *v65;
        (*v65)(v24, 1, 1, v5);
      }

      v61 = v26;
      if (!v16)
      {
LABEL_21:
        v34 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v30 = *v65;
      (*v65)(v24, 1, 1, v5);
      v31 = v26;
      v61 = v26;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    if (!*(v16 + 16))
    {
      goto LABEL_21;
    }

    v32 = sub_22844C56C(v26);
    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    (*(v55 + 16))(v23, *(v16 + 56) + *(v55 + 72) * v32, v5);
    v34 = 0;
LABEL_22:
    v21 &= v21 - 1;
    v30(v23, v34, 1, v5);
    v35 = *(v59 + 48);
    v36 = v66;
    sub_22844F7B8(v24, v66);
    sub_22844F7B8(v23, v36 + v35);
    v37 = v24;
    v38 = v23;
    v39 = *v58;
    if ((*v58)(v36, 1, v5) == 1)
    {

      v40 = MEMORY[0x277D11290];
      sub_22844FE44(v38, &qword_280DE9F90, MEMORY[0x277D11290]);
      sub_22844FE44(v37, &qword_280DE9F90, v40);
      if (v39(v66 + v35, 1, v5) != 1)
      {
        goto LABEL_29;
      }

      sub_22844FE44(v66, &qword_280DE9F90, MEMORY[0x277D11290]);
      v16 = v57;
    }

    else
    {
      v41 = v66;
      v42 = v5;
      v43 = v53;
      sub_22844F7B8(v66, v53);
      if (v39(v41 + v35, 1, v42) == 1)
      {

        v48 = MEMORY[0x277D11290];
        sub_22844FE44(v63, &qword_280DE9F90, MEMORY[0x277D11290]);
        sub_22844FE44(v62, &qword_280DE9F90, v48);
        (*v52)(v43, v42);
LABEL_29:
        sub_22844F838(v66);
LABEL_27:

        return;
      }

      v44 = v41 + v35;
      v45 = v51;
      (*v50)(v51, v44, v42);
      sub_22844F98C(&qword_280DE9FA0, 255, MEMORY[0x277D11290], MEMORY[0x277D112A0]);
      v56 = sub_22855D16C();

      v46 = *v52;
      (*v52)(v45, v42);
      v47 = MEMORY[0x277D11290];
      sub_22844FE44(v63, &qword_280DE9F90, MEMORY[0x277D11290]);
      sub_22844FE44(v62, &qword_280DE9F90, v47);
      v46(v43, v42);
      sub_22844FE44(v41, &qword_280DE9F90, v47);
      v5 = v42;
      v16 = v57;
      if ((v56 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  v24 = v62;
  v23 = v63;
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v49)
    {
      goto LABEL_27;
    }

    v21 = *(v18 + 8 * v25);
    ++v22;
    if (v21)
    {
      v22 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22844F1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  result = sub_22844E03C(v4, &v6);
  *a2 = v6;
  return result;
}

void *sub_22844F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();

  return sub_22844F2E4(a1, a2, a3, sub_22844FF54, v13, v14, a6, a7);
}

void *sub_22844F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x277D84F90];
  v16 = sub_22847C948(MEMORY[0x277D84F90]);
  v17 = sub_22847CB84(v15);
  sub_22844FEF4(0);
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  a6[8] = a3;
  a6[9] = v18;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = a1;
  a6[6] = a8;
  a6[7] = a2;
  a6[2] = [objc_allocWithZone(type metadata accessor for FeatureStatusInputSignal.FeatureStatusObserver()) init];
  swift_weakAssign();
  return a6;
}

unint64_t sub_22844F3B8()
{
  result = qword_280DEBA30;
  if (!qword_280DEBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA30);
  }

  return result;
}

void sub_22844F40C(uint64_t a1)
{
  if (!qword_280DE96A8)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22855C37C();
    sub_22844F98C(&unk_280DE9370, 255, type metadata accessor for HKFeatureIdentifier, &unk_22855FE04);
    v1 = sub_22855D12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE96A8);
    }
  }
}

unint64_t sub_22844F4BC()
{
  result = qword_280DE9698;
  if (!qword_280DE9698)
  {
    sub_22844F40C(255);
    sub_22844F98C(&qword_280DE9380, 255, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277CCB700]);
    sub_22844F98C(&qword_280DE9FA8, 255, MEMORY[0x277D11290], MEMORY[0x277D11298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9698);
  }

  return result;
}

void sub_22844F5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22844F3B8();
    v7 = a3(a1, &type metadata for FeatureStatusInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22844F608()
{
  result = qword_280DE9688;
  if (!qword_280DE9688)
  {
    sub_22844F40C(255);
    sub_22844F98C(&unk_280DE9350, 255, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277CCB708]);
    sub_22844F98C(&qword_280DE9F98, 255, MEMORY[0x277D11290], MEMORY[0x277D112A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9688);
  }

  return result;
}

void sub_22844F738(uint64_t a1)
{
  if (!qword_280DE9F88)
  {
    sub_22844FEA0(255, &qword_280DE9F90, MEMORY[0x277D11290]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9F88);
    }
  }
}

uint64_t sub_22844F7B8(uint64_t a1, uint64_t a2)
{
  sub_22844FEA0(0, &qword_280DE9F90, MEMORY[0x277D11290]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844F838(uint64_t a1)
{
  sub_22844F738(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22844F898()
{
  result = qword_280DEBA40;
  if (!qword_280DEBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA40);
  }

  return result;
}

unint64_t sub_22844F8F0()
{
  result = qword_280DEBA38;
  if (!qword_280DEBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA38);
  }

  return result;
}

uint64_t sub_22844F98C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22844F9D8()
{
  result = qword_280DEBA08;
  if (!qword_280DEBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA08);
  }

  return result;
}

unint64_t sub_22844FA30()
{
  result = qword_280DEB9E0;
  if (!qword_280DEB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9E0);
  }

  return result;
}

unint64_t sub_22844FA88()
{
  result = qword_280DEB9F8;
  if (!qword_280DEB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9F8);
  }

  return result;
}

unint64_t sub_22844FAE0()
{
  result = qword_280DEB9F0;
  if (!qword_280DEB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB9F0);
  }

  return result;
}

unint64_t sub_22844FB38()
{
  result = qword_27D83F5D8;
  if (!qword_27D83F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F5D8);
  }

  return result;
}

uint64_t sub_22844FBFC(uint64_t *a1, int a2)
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

uint64_t sub_22844FC44(uint64_t result, int a2, int a3)
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

unint64_t sub_22844FCA4()
{
  result = qword_27D83F6B0;
  if (!qword_27D83F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F6B0);
  }

  return result;
}

unint64_t sub_22844FCFC()
{
  result = qword_280DEBA18;
  if (!qword_280DEBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA18);
  }

  return result;
}

unint64_t sub_22844FD54()
{
  result = qword_280DEBA20;
  if (!qword_280DEBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBA20);
  }

  return result;
}

uint64_t sub_22844FDC4(uint64_t a1, uint64_t a2)
{
  sub_22844FEA0(0, &qword_280DE9388, sub_228409D54);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22844FE44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22844FEA0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22844FEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22844FEF4(uint64_t a1)
{
  if (!qword_280DE9178)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9178);
    }
  }
}

uint64_t NSOrderedSet.asLazyArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  sub_228450300(0);
  sub_2284503E0(&qword_280DE91D8, sub_228450300, MEMORY[0x277D840E0]);
  v3 = v2;
  sub_22855DF9C();

  return v5;
}

uint64_t sub_2284500C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22855DA2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_2283F6E48(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    return (*(v12 + 32))(a3, v9, a2);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000038, 0x800000022856EB40);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v14 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v14);

    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void sub_228450300(uint64_t a1)
{
  if (!qword_280DE91D0)
  {
    sub_228450394();
    sub_2284503E0(&qword_280DE94E8, sub_228450394, MEMORY[0x277CC9CF0]);
    v1 = sub_22855DC8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91D0);
    }
  }
}

unint64_t sub_228450394()
{
  result = qword_280DE94E0;
  if (!qword_280DE94E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE94E0);
  }

  return result;
}

uint64_t sub_2284503E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NSOrderedSet.asArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  NSOrderedSet.asLazyArray<A>(_:)(a1, a2);
  sub_228450394();
  sub_2284503E0(&qword_280DE94E8, sub_228450394, MEMORY[0x277CC9CF0]);
  sub_22855DDBC();
  swift_getWitnessTable();
  return sub_22855D48C();
}

double FeatureStatusFeedItemGeneratorPipeline.domain.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;

  return result;
}

uint64_t type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(uint64_t a1)
{
  result = qword_280DEA1D0;
  if (!qword_280DEA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FeatureStatusFeedItemGeneratorPipeline.feedItemPredicate.getter()
{
  v1 = v0 + *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0) + 24);
  v2 = *v1;
  sub_22845063C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v3);
  return v2;
}

id sub_22845063C(id result, void *a2, id a3, char a4, __n128 a5)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_2284506A4(result);
}

id sub_2284506A4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2284506B8()
{
  sub_2284531A0(0, &qword_280DE9818, MEMORY[0x277CBCE88]);
  v17[1] = *(v1 - 8);
  v17[2] = v1;
  MEMORY[0x28223BE20](v1);
  v17[0] = v17 - v2;
  sub_228453210(0);
  v4 = v3;
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855C37C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v20 = v0;
  (*(v0 + *(v19 + 32)))(v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v11 = sub_22855C3EC();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_22855C3DC();
  v21 = v11;
  sub_228451C98(0, &qword_280DE8F88, MEMORY[0x277D11290], MEMORY[0x277D84560]);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228560580;
  (*(v8 + 16))(v13 + v12, v10, v7);
  v14 = MEMORY[0x277CBCD88];
  sub_2284531A0(0, &qword_280DE9918, MEMORY[0x277CBCD88]);
  sub_228451FE0(&qword_280DE9920, &qword_280DE9918, v14, MEMORY[0x277CBCD90]);
  sub_22855CF3C();

  sub_228453450(&qword_280DE9D10, sub_228453210, MEMORY[0x277CBCB40]);
  v15 = sub_22855CE6C();

  (*(v18 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v15;
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.init(context:featureIdentifier:feedItemProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GeneratorContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v20 - v13);
  sub_228453070(a1, &v20 - v13, type metadata accessor for GeneratorContext);
  sub_228452894(0, &qword_280DE8FA8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_228560580;
  sub_2283F9B10(a3, v15 + 32);
  sub_228453070(a1, v12, type metadata accessor for GeneratorContext);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2284530D8(v12, v18 + v16, type metadata accessor for GeneratorContext);
  *(v18 + v17) = a2;
  sub_228450FC4(v14, v15, sub_228450FC0, v18, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return sub_228453140(a1, type metadata accessor for GeneratorContext);
}

void sub_228450F00(uint64_t a1)
{
  if (!qword_280DE8EA0)
  {
    type metadata accessor for CountryRetrievalRecord(255);
    sub_228450F6C();
    v1 = sub_22855E2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8EA0);
    }
  }
}

unint64_t sub_228450F6C()
{
  result = qword_280DEBC08;
  if (!qword_280DEBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC08);
  }

  return result;
}

double sub_228450FC4@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v7 = *a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  v42 = *a1;
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    v10 = v7;
    sub_228427430(0, v8, 0);
    v11 = v51;
    v12 = v5 + 32;
    v13 = v8;
    do
    {
      sub_2283F9B10(v12, v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v15 + 24))(&v50, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v16 = v50;
      v51 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_228427430((v17 > 1), v18 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v18 + 1;
      *(v11 + v18 + 32) = v16;
      v12 += 40;
      --v13;
    }

    while (v13);
    v5 = a2;
  }

  else
  {
    v19 = v7;
    v11 = MEMORY[0x277D84F90];
  }

  v20 = sub_228429B98(v11);

  v51 = v9;
  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = v5 + 32;
    do
    {
      sub_2283F9B10(v22, v47);
      v23 = v48;
      v24 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v25 = (*(v24 + 16))(v23, v24);
      __swift_destroy_boxed_opaque_existential_0(v47);
      sub_2284A7494(v25);
      v22 += 40;
      --v21;
    }

    while (v21);
    v9 = v51;
  }

  v26 = sub_228428BF8(v9);

  *a5 = v42;
  *(a5 + 8) = v20;
  *(a5 + 16) = v26;
  *(a5 + 24) = 0;
  v27 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  sub_228453070(a1, a5 + v27[5], type metadata accessor for GeneratorContext);
  v28 = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v8, 0);
    v28 = v51;
    v29 = v5 + 32;
    do
    {
      sub_2283F9B10(v29, v47);
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v32 = (*(v31 + 8))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0(v47);
      v51 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2284272C0((v35 > 1), v36 + 1, 1);
        v28 = v51;
      }

      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += 40;
      --v8;
    }

    while (v8);
    v5 = a2;
  }

  v38 = sub_228406280(v28);

  sub_228453140(a1, type metadata accessor for GeneratorContext);
  v39 = a5 + v27[6];
  *v39 = v38;
  *&result = 1;
  *(v39 + 8) = xmmword_228561CA0;
  *(v39 + 24) = 0;
  *(a5 + v27[7]) = v5;
  v41 = (a5 + v27[8]);
  *v41 = a3;
  v41[1] = a4;
  return result;
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.init(context:featureIdentifier:feedItemProviders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GeneratorContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - v13);
  sub_228453070(a1, &v18 - v13, type metadata accessor for GeneratorContext);
  sub_228453070(a1, v12, type metadata accessor for GeneratorContext);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_2284530D8(v12, v16 + v15, type metadata accessor for GeneratorContext);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_228450FC4(v14, a3, sub_228453498, v16, a4);
  return sub_228453140(a1, type metadata accessor for GeneratorContext);
}

void sub_2284514C4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + *(type metadata accessor for GeneratorContext(0) + 28));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 8))(v7, v8);
  sub_228452D3C(a1);
  if (v10)
  {
    v11 = v9;
    v12 = sub_22855D17C();
  }

  else
  {
    v13 = v9;
    v12 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:a2 healthStore:v9 currentCountryCode:v12];

  v15 = sub_228453024();
  v16 = MEMORY[0x277D113B8];
  a3[3] = v15;
  a3[4] = v16;

  *a3 = v14;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for GeneratorContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v7 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v8 = sub_22855C16C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

void sub_228451724(void *a1@<X8>)
{
  v3 = *(type metadata accessor for GeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2284514C4(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t FeatureStatusFeedItemGeneratorPipeline.makeFeedItemsPublisher(change:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_22855C37C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228451ADC(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228453070(v19, v8, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v2 + 16))(v4, v20, v1);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + *(v2 + 80) + v14) & ~*(v2 + 80);
  v16 = swift_allocObject();
  sub_2284530D8(v8, v16 + v14, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v2 + 32))(v16 + v15, v4, v1);
  sub_228451B70(0);
  sub_228453450(&qword_280DE9A68, sub_228451B70, MEMORY[0x277CBCCD0]);
  sub_22855CE2C();
  sub_228453450(&qword_280DE9778, sub_228451ADC, MEMORY[0x277CBCEB8]);
  v17 = sub_22855CE6C();
  (*(v11 + 8))(v13, v10);
  return v17;
}

void sub_228451ADC(uint64_t a1)
{
  if (!qword_280DE9770)
  {
    sub_228451B70(255);
    sub_228453450(&qword_280DE9A68, sub_228451B70, MEMORY[0x277CBCCD0]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9770);
    }
  }
}

void sub_228451B70(uint64_t a1)
{
  if (!qword_280DE9A60)
  {
    sub_228451C04(255);
    sub_228453450(&qword_280DE99B0, sub_228451C04, MEMORY[0x277CBCD48]);
    v1 = sub_22855CBDC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A60);
    }
  }
}

void sub_228451C04(uint64_t a1)
{
  if (!qword_280DE99A8)
  {
    sub_22842BC38(255);
    sub_228453450(&qword_280DE9D20, sub_22842BC38, MEMORY[0x277CBCB10]);
    v1 = sub_22855CC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99A8);
    }
  }
}

void sub_228451C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228451CFC(uint64_t a1, uint64_t a2)
{
  sub_228451C04(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0) + 28));
  v12 = a1;
  v13 = a2;
  v14 = sub_2284FA3C4(sub_228452C88, v11, v9);
  sub_22842BC38(0);
  sub_228451C98(0, &qword_280DE95F8, sub_22842BC38, MEMORY[0x277D83940]);
  sub_228453450(&qword_280DE9D20, sub_22842BC38, MEMORY[0x277CBCB10]);
  sub_2284533EC(&qword_280DE95F0, &qword_280DE95F8, sub_22842BC38);
  sub_22855CC2C();
  sub_228453450(&qword_280DE99B0, sub_228451C04, MEMORY[0x277CBCD48]);
  sub_22855CF1C();
  return (*(v6 + 8))(v8, v5);
}

void sub_228451F14(void *result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_228451F7C(result);
}

void sub_228451F7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_228451FE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284531A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228452068(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284520B8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284520B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228451C98(255, a3, type metadata accessor for PluginFeedItem, a4);
    v5 = sub_22855CCCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228452130(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22842BCE4(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v16[3] = (*(v12 + 32))(a2 + *(v13 + 20), a3, v11, v12);
  v14 = MEMORY[0x277D83D88];
  sub_2284520B8(0, &qword_280DE9948, &qword_280DEE728, MEMORY[0x277D83D88]);
  sub_228452068(&qword_280DE9950, &qword_280DE9948, &qword_280DEE728, v14);
  sub_22855CEDC();

  type metadata accessor for PluginFeedItem(0);
  sub_228453450(&qword_280DE9B18, sub_22842BCE4, MEMORY[0x277CBCC58]);
  sub_22855CE7C();
  return (*(v8 + 8))(v10, v7);
}

id sub_22845238C(uint64_t a1, __n128 a2)
{
  v3 = v2 + *(a1 + 24);
  v4 = *v3;
  sub_22845063C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), a2);
  return v4;
}

uint64_t sub_2284523E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2284506B8();
  *a1 = result;
  return result;
}

uint64_t sub_228452410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a1;
  v24 = a3;
  v4 = sub_22855C37C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228451ADC(0);
  v23 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228453070(v21, v10, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v4);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_2284530D8(v10, v17 + v15, type metadata accessor for FeatureStatusFeedItemGeneratorPipeline);
  (*(v5 + 32))(v17 + v16, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_228451B70(0);
  sub_228453450(&qword_280DE9A68, sub_228451B70, MEMORY[0x277CBCCD0]);
  sub_22855CE2C();
  sub_228453450(&qword_280DE9778, sub_228451ADC, MEMORY[0x277CBCEB8]);
  v18 = v23;
  v19 = sub_22855CE6C();
  result = (*(v12 + 8))(v14, v18);
  *v24 = v19;
  return result;
}

double sub_228452740@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;

  return result;
}

void sub_2284527C4(uint64_t a1)
{
  type metadata accessor for GeneratorContext(319);
  if (v1 <= 0x3F)
  {
    sub_228452894(319, &qword_280DE9618, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2283FBB5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_228452894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2283F9B94(255, &qword_280DEAE68, &protocol descriptor for FeatureStatusFeedItemProvider);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v16 = sub_22855C37C();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v17 = v0;
  v6 = v0 + v3;

  v7 = (v0 + v3 + *(v1 + 20));

  v8 = type metadata accessor for GeneratorContext(0);
  v9 = (v7 + v8[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v10 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v11 = sub_22855C16C();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  v12 = (v3 + v14 + v5) & ~v5;
  __swift_destroy_boxed_opaque_existential_0((v7 + v8[7]));
  __swift_destroy_boxed_opaque_existential_0((v7 + v8[8]));
  sub_228451F14(*(v6 + *(v1 + 24)), *(v6 + *(v1 + 24) + 8), *(v6 + *(v1 + 24) + 16), *(v6 + *(v1 + 24) + 24));

  (*(v4 + 8))(v17 + v12, v16);

  return MEMORY[0x2821FE8E8](v17, v12 + v15, v2 | v5 | 7);
}

uint64_t sub_228452BB4()
{
  v1 = *(type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22855C37C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_228451CFC(v0 + v2, v5);
}

uint64_t sub_228452CA8(uint64_t a1, uint64_t a2)
{
  sub_228451C98(0, &qword_280DEE728, type metadata accessor for PluginFeedItem, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228452D3C(uint64_t a1)
{
  v2 = type metadata accessor for CountryRetrievalRecord(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228450F00(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for GeneratorContext(0);
  sub_228453070(a1 + *(v8 + 20), v7, sub_228450F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEBF0);
    v11 = v9;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_2283F8938(0xD000000000000026, 0x8000000228561CE0, &v23);
      *(v14 + 12) = 2082;
      v22 = v9;
      v16 = v11;
      v17 = sub_22855D1BC();
      v19 = sub_2283F8938(v17, v18, &v23);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s] Failed to get country code: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    sub_2284530D8(v7, v4, type metadata accessor for CountryRetrievalRecord);
    v20 = *v4;

    sub_228453140(v4, type metadata accessor for CountryRetrievalRecord);
  }

  return v20;
}

unint64_t sub_228453024()
{
  result = qword_280DE92E0;
  if (!qword_280DE92E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE92E0);
  }

  return result;
}

uint64_t sub_228453070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284530D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228453140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2284531A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_22855C37C();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228453210(uint64_t a1)
{
  if (!qword_280DE9D08)
  {
    sub_22845331C(255);
    v1 = MEMORY[0x277CBCD88];
    sub_2284531A0(255, &qword_280DE9918, MEMORY[0x277CBCD88]);
    sub_228453450(&qword_280DE99E8, sub_22845331C, MEMORY[0x277CBCD18]);
    sub_228451FE0(&qword_280DE9920, &qword_280DE9918, v1, MEMORY[0x277CBCD90]);
    v2 = sub_22855CB2C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9D08);
    }
  }
}

void sub_22845331C(uint64_t a1)
{
  if (!qword_280DE99E0)
  {
    v1 = MEMORY[0x277D11290];
    sub_228451C98(255, &qword_280DE9610, MEMORY[0x277D11290], MEMORY[0x277D83940]);
    sub_2284533EC(&qword_280DE9608, &qword_280DE9610, v1);
    v2 = sub_22855CC0C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE99E0);
    }
  }
}

uint64_t sub_2284533EC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228451C98(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228453450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id FeedSection.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FeedSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedSection();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FeedSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_228453590()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284535FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_228453654(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 feedItems];
  type metadata accessor for FeedItem();
  sub_2284538F4();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_2284536C4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for FeedItem();
  sub_2284538F4();
  v3 = sub_22855D50C();
  [v2 setFeedItems_];
}

id MeasureIdentifierManagedObject.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MeasureIdentifierManagedObject.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MeasureIdentifierManagedObject();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MeasureIdentifierManagedObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasureIdentifierManagedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2284538F4()
{
  result = qword_27D83F6C0[0];
  if (!qword_27D83F6C0[0])
  {
    type metadata accessor for FeedItem();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D83F6C0);
  }

  return result;
}

uint64_t Atomic.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(_:)(a1);
  return v2;
}

uint64_t Atomic.mutateAndReturn<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_228453A40(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t Atomic.mutateReturningPrevious(_:)(uint64_t a1)
{
  type metadata accessor for UnfairLock();
  sub_2283FD50C();

  sub_22855C3BC();
}

uint64_t sub_228453B88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + 88);
  swift_beginAccess();
  v8 = *(v6 + 80);
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3, &a1[v7], v8);
  swift_beginAccess();
  (*(v9 + 24))(&a1[v7], a2, v8);
  return swift_endAccess();
}

uint64_t sub_228453E64(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_228453ED4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_228454014(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t *sub_228454234(uint64_t a1, int a2)
{
  sub_2283F6B58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  sub_2283F6AF4(a1, v6);
  v7 = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v6, a2);

  sub_22848F750();

  sub_228454F54(a1);
  return v7;
}

id sub_2284542F4()
{
  result = [objc_opt_self() standardUserDefaults];
  word_280DECD38 = 257;
  qword_280DECD20 = 0xD00000000000002BLL;
  *algn_280DECD28 = 0x800000022856EC40;
  qword_280DECD30 = result;
  return result;
}

void sub_228454360()
{
  v1 = *v0;
  v2 = sub_22855D17C();
  v3 = [objc_opt_self() transactionWithName_];

  v4 = v0[4];
  os_unfair_lock_lock((v4 + 24));
  sub_228454EC4((v4 + 16), aBlock);
  os_unfair_lock_unlock((v4 + 24));
  v5 = aBlock[0];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  aBlock[4] = sub_228454EE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_4;
  v7 = _Block_copy(aBlock);
  v8 = v5;
  v9 = v3;

  [v8 performBlock_];
  _Block_release(v7);
}

id sub_228454504(void *a1, void *a2)
{
  if (qword_280DECD18 != -1)
  {
    swift_once();
  }

  v5 = qword_280DECD20;
  v4 = *algn_280DECD28;
  v6 = qword_280DECD30;
  v7 = word_280DECD38;
  if (HIBYTE(word_280DECD38) != 1)
  {

    v10 = v6;
    goto LABEL_7;
  }

  v8 = objc_opt_self();

  v9 = v6;
  if ([v8 isAppleInternalInstall])
  {
LABEL_7:
    v11 = sub_22848FB60(v5, v4, v6);

    if (v11 == 2)
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v7)
  {
LABEL_11:
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBD0);
    v14 = sub_22855CA8C();
    v15 = sub_22855D6AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2283ED000, v14, v15, "DaemonHealthExperienceStore - cleanUpManagedObjectContext - reset", v16, 2u);
      v17 = &selRef_reset;
LABEL_20:
      MEMORY[0x22AABAD40](v16, -1, -1);
      goto LABEL_23;
    }

    v17 = &selRef_reset;
    goto LABEL_23;
  }

LABEL_16:
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v18 = sub_22855CABC();
  __swift_project_value_buffer(v18, qword_280DEEBD0);
  v14 = sub_22855CA8C();
  v19 = sub_22855D6AC();
  if (os_log_type_enabled(v14, v19))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2283ED000, v14, v19, "DaemonHealthExperienceStore - cleanUpManagedObjectContext - refreshAllObjects", v16, 2u);
    v17 = &selRef_refreshAllObjects;
    goto LABEL_20;
  }

  v17 = &selRef_refreshAllObjects;
LABEL_23:

  [a1 *v17];

  return [a2 invalidate];
}

uint64_t DaemonHealthExperienceStore.deinit()
{
  sub_2284547FC();

  return v0;
}

void sub_2284547FC()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v12 = type metadata accessor for DaemonHealthExperienceStore();
    sub_228454FB0(0, qword_280DECB68, v7, type metadata accessor for DaemonHealthExperienceStore);
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] deregisterForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v11 removeObserver:v1 name:qword_280DE93C8 object:{0, v12, v13}];
}

void sub_2284549F0()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v11 = type metadata accessor for DaemonHealthExperienceStoreOracle();
    sub_228454FB0(0, &unk_280DECB48, 255, type metadata accessor for DaemonHealthExperienceStoreOracle);
    v7 = sub_22855D1BC();
    v9 = sub_2283F8938(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] deregisterForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v10 removeObserver:v1 name:qword_280DE93C8 object:{0, v11, v12}];
}

uint64_t DaemonHealthExperienceStore.__deallocating_deinit()
{
  sub_2284547FC();

  return swift_deallocClassInstance();
}

void DaemonHealthExperienceStore.debuggingInfoRequested(note:)()
{
  v1 = *v0;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v3 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    v10[1] = v1;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, oslog, v3, "[%s]: debuggingInfoRequested()", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_228454F54(uint64_t a1)
{
  sub_2283F6B58(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228454FB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ProxyPublisherDelegate.publisher.getter()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Publishers.Proxy.init(delegate:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Publishers.Proxy.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a4;
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[3];
  swift_getAssociatedConformanceWitness();
  v9 = sub_22855CC8C();
  v22 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v25[0] = a2[2];
    v25[1] = v8;
    v25[2] = v7;
    v26 = a3;
    WitnessTable = v6;
    v28 = v24;
    v18 = _s5ProxyV5InnerCMa(0, v25);
    (*(v13 + 16))(v15, v23, a3);
    swift_allocObject();
    swift_unknownObjectRetain();
    v19 = sub_2284562EC(v15, v17);
    swift_unknownObjectRelease();
    v26 = v18;
    WitnessTable = swift_getWitnessTable();
    v25[0] = v19;
    sub_22855CC5C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_22855CCEC();
    sub_22855CC5C();
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
    sub_22855CC4C();
    return (*(v22 + 8))(v12, v9);
  }
}

void sub_22845536C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 144));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 176);
  swift_beginAccess();
  if (*(v1 + v5) & 1) != 0 || (v6 = *(*v1 + 184), swift_beginAccess(), (*(v1 + v6)))
  {
    os_unfair_lock_unlock(*(v4 + 16));
    return;
  }

  v7 = *(*v1 + 168);
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_22855CCBC();
  if ((sub_22855CC9C() & 1) == 0)
  {
    sub_22855CCBC();
    v9 = sub_22855CC9C();
    v10 = sub_22855CCBC();
    if ((v9 & 1) == 0)
    {
      if ((sub_22855CC9C() & 1) == 0)
      {
        if ((v8 | a1) < 0)
        {
          __break(1u);
          goto LABEL_17;
        }

        v10 = v8 + a1;
        if (!__OFADD__(v8, a1))
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

      v10 = sub_22855CCBC();
    }

LABEL_13:
    *(v1 + v7) = v10;
  }

  swift_endAccess();
  swift_getWitnessTable();
  PendingValuesInner.lock_sendPendingValuesIfNeeded()();
  os_unfair_lock_unlock(*(v4 + 16));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v3 + 112);
    v12 = *(v11 + 32);
    v13 = *(v3 + 96);
    swift_retain_n();
    v12(a1, sub_228456B84, v1, sub_228456788, v1, v13, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2284555C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = sub_22855DA2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *(v0 + *(v1 + 144));
  os_unfair_lock_lock(*(v8 + 16));
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v9 = *(*v0 + 136);
  swift_beginAccess();
  (*(v5 + 40))(v0 + v9, v7, v4);
  swift_endAccess();
  v10 = *(*v0 + 176);
  swift_beginAccess();
  *(v0 + v10) = 1;
  os_unfair_lock_unlock(*(v8 + 16));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v2 + 112) + 40))(*(v2 + 96));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2284557C8()
{
  v1 = sub_22855E2AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228456C0C(0, &qword_27D83F748, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v13 = v0;
  sub_228456C0C(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560580;
  *(v8 + 32) = 0x65746167656C6564;
  *(v8 + 40) = 0xE800000000000000;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v8 + 72) = sub_22855DA2C();
  *(v8 + 48) = Strong;
  v10 = sub_22855E29C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 104))(v4, *MEMORY[0x277D84C38], v1);

  return sub_22855E2DC();
}

uint64_t sub_228455A50@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_22855E2AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t *sub_228455AC4()
{
  MEMORY[0x22AABAE10](v0 + 16);
  v1 = *(*v0 + 136);
  v2 = sub_22855DA2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_228455BAC()
{
  sub_228455AC4();

  return swift_deallocClassInstance();
}

uint64_t sub_228455C40@<X0>(uint64_t a2@<X8>)
{
  v4 = *(*v2 + 136);
  swift_beginAccess();
  v5 = sub_22855DA2C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_228455CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 136);
  swift_beginAccess();
  v5 = sub_22855DA2C();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

double sub_228455E08()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_228455E5C(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_228455F2C()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_228455F7C(uint64_t a1)
{
  v3 = *(*v1 + 168);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_228456044()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_228456094(char a1)
{
  v3 = *(*v1 + 184);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22845615C()
{
  v1 = *(*v0 + 176);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2284561AC(char a1)
{
  v3 = *(*v1 + 176);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}