unint64_t sub_265BE3898(uint64_t a1)
{
  v2 = sub_265BF35E0();

  return sub_265BE39F8(a1, v2);
}

unint64_t sub_265BE38DC(uint64_t a1, uint64_t a2)
{
  sub_265BF37B0();
  sub_265BF3390();
  v4 = sub_265BF37E0();

  return sub_265BE3AC0(a1, a2, v4);
}

double sub_265BE3954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_265BE38DC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265BE4DD0();
      v10 = v12;
    }

    sub_265BB87C8((*(v10 + 56) + 32 * v8), a3);
    sub_265BE43CC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_265BE39F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_265BE5EC8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26676D400](v9, a1);
      sub_265BE5F24(v9);
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

unint64_t sub_265BE3AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265BF36E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_265BE3B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
  v33 = v4;
  result = sub_265BF36B0();
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
        sub_265BB87C8(v24, v34);
      }

      else
      {
        sub_265BB08F0(v24, v34);
      }

      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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
      result = sub_265BB87C8(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_265BE3E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D8, &unk_265BF59A0);
  v35 = v4;
  result = sub_265BF36B0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_265BE40D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D0, &qword_265BF5998);
  v38 = v4;
  result = sub_265BF36B0();
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 40 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v26 = v24[2];
      v40 = v24[3];
      v27 = v24[4];
      if ((v38 & 1) == 0)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
      }

      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v26;
      v17[3] = v40;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
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
        v39 = (v20 - 1) & v20;
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

uint64_t sub_265BE43CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      sub_265BF37B0();

      sub_265BF3390();
      v10 = sub_265BF37E0();

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

uint64_t sub_265BE457C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      sub_265BF37B0();

      sub_265BF3390();
      v9 = sub_265BF37E0();

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

uint64_t sub_265BE472C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      sub_265BF37B0();

      sub_265BF3390();
      v11 = sub_265BF37E0();

      v12 = v11 & v7;
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
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
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

_OWORD *sub_265BE48E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
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
      sub_265BE4DD0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_265BE3B78(v16, a4 & 1);
    v11 = sub_265BE38DC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_265BF36F0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_265BB87C8(a1, v22);
  }

  else
  {
    sub_265BE4D64(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_265BE4A38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
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
      sub_265BE3E30(v16, a4 & 1);
      v11 = sub_265BE38DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_265BF36F0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_265BE4F74();
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

uint64_t sub_265BE4BB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
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
      sub_265BE40D4(v16, a4 & 1);
      v11 = sub_265BE38DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_265BF36F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_265BE50E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v21[7] + 40 * v11;
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a1 + 32);
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

_OWORD *sub_265BE4D64(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_265BB87C8(a4, (a5[7] + 32 * a1));
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

void *sub_265BE4DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
  v2 = *v0;
  v3 = sub_265BF36A0();
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
        sub_265BB08F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_265BB87C8(v25, (*(v4 + 56) + v22));
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

id sub_265BE4F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D8, &unk_265BF59A0);
  v2 = *v0;
  v3 = sub_265BF36A0();
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

void *sub_265BE50E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D0, &qword_265BF5998);
  v2 = *v0;
  v3 = sub_265BF36A0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v26 = v22[2];
        v25 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v26;
        v29[3] = v25;
        v29[4] = v27;
        swift_unknownObjectRetain();

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

unint64_t sub_265BE5320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
    v3 = sub_265BF36C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265BE7900(v4, &v13, &qword_28003C5C8, &qword_265BF5990);
      v5 = v13;
      v6 = v14;
      result = sub_265BE38DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265BB87C8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265BE5478(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_265BF36C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_265BE38DC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265BE5574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C578, &qword_265BF5968);
    v3 = sub_265BF36C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265BE7900(v4, v13, &qword_28003C548, &unk_265BF5D20);
      result = sub_265BE3898(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_265BB87C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_265BE56B0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265BF2FD0() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_265BE0100(a1, a2, v6, v7);
}

uint64_t sub_265BE573C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BB10A8(a1, a2, v2 + v6, *v7, v7[1], &unk_28003C470, &qword_265BF4740, &unk_287776700, sub_265BE7418);
}

uint64_t sub_265BE5828(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = (*(*(v5 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_265BF2FD0() - 8);
  v10 = *(v2 + v8);
  v11 = (v2 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80)));

  return sub_265BE0C04(a1, a2, v2 + v7, v10, v11, v5, v6);
}

uint64_t sub_265BE5930(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD1070(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BE59E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_265BF2FD0() - 8);
  v9 = v2[5];
  v10 = (v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80)));

  return sub_265BE1094(a1, a2, v9, v10, v5, v6, v7);
}

uint64_t sub_265BE5A88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v10 = (*(*(v5 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_265BF2FD0() - 8);
  return sub_265BE165C(a1, a2, v2 + v9, *(v2 + v10), (v2 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80))), v5, v6, v7, v13, *(&v13 + 1), v8);
}

uint64_t objectdestroy_25Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t type metadata accessor for DeviceConnection(uint64_t a1)
{
  result = qword_281068BD8;
  if (!qword_281068BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BE5D48(uint64_t a1)
{
  result = type metadata accessor for DeviceConnectionCompression(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265BE5E5C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  v2(&v7);
  return v3(&v7);
}

uint64_t sub_265BE5FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265BE6028()
{
  result = qword_28003C588;
  if (!qword_28003C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C588);
  }

  return result;
}

void sub_265BE607C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(sub_265BF2FD0() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_265BDC4D0(a1, *(v3 + 16), v3 + v7, *(v3 + v8), a3, *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 24));
}

uint64_t sub_265BE6140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportRequestAnalyticsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BE61A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BE61EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_265BF2C30() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BE315C(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), v3);
}

uint64_t sub_265BE62C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = sub_265BF3240();
  v76 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v71 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  v21 = swift_allocObject();
  v72 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v77 = 7431538;
  v78 = 0xE300000000000000;

  sub_265BF3600();
  if (!*(a1 + 16) || (v22 = sub_265BE3898(&v79), (v23 & 1) == 0))
  {
    sub_265BE5F24(&v79);
    goto LABEL_12;
  }

  v69 = v16;
  v75 = v21;
  sub_265BB08F0(*(a1 + 56) + 32 * v22, &v81);
  sub_265BE5F24(&v79);
  if (!swift_dynamicCast())
  {
    v21 = v75;
    v16 = v69;
LABEL_12:
    sub_265BF3150();

    v30 = sub_265BF3230();
    v31 = sub_265BF34D0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v81 = v33;
      *v32 = 136446466;
      v79 = a2;
      v34 = sub_265BF3350();
      v75 = v21;
      v35 = v16;
      v36 = v34;
      v38 = v37;
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_265BF3620();

      v79 = 0xD000000000000011;
      v80 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v36, v38);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v39 = sub_265BB064C(v79, v80, &v81);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2082;
      v40 = sub_265BF3300();
      v42 = sub_265BB064C(v40, v41, &v81);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_265BAD000, v30, v31, "%{public}s Request missing from rapport dictionary: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v33, -1, -1);
      MEMORY[0x26676DCA0](v32, -1, -1);

      (*(v76 + 8))(v20, v35);
    }

    else
    {

      (*(v76 + 8))(v20, v16);
    }
  }

  v66 = v77;
  Current = CFAbsoluteTimeGetCurrent();
  v81 = 0x64616F6C796170;
  v82 = 0xE700000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v25 = sub_265BE3898(&v79), (v26 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v25, &v81);
    sub_265BE5F24(&v79);
    v27 = swift_dynamicCast();
    v28 = v77;
    if (!v27)
    {
      v28 = 0;
    }

    v68 = v28;
    v29 = 0xF000000000000000;
    if (v27)
    {
      v29 = v78;
    }
  }

  else
  {
    sub_265BE5F24(&v79);
    v68 = 0;
    v29 = 0xF000000000000000;
  }

  v70 = v29;
  v43 = v15;
  v81 = 8024434;
  v82 = 0xE300000000000000;
  sub_265BF3600();
  v44 = v13;
  if (*(a1 + 16) && (v45 = sub_265BE3898(&v79), (v46 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v45, &v81);
    sub_265BE5F24(&v79);
    swift_dynamicCast();
  }

  else
  {
    sub_265BE5F24(&v79);
  }

  v47 = v68;
  sub_265BF2CD0();
  v81 = 8024946;
  v82 = 0xE300000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v48 = sub_265BE3898(&v79), (v49 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v48, &v81);
    sub_265BE5F24(&v79);
    swift_dynamicCast();
  }

  else
  {
    sub_265BE5F24(&v79);
  }

  v50 = sub_265BF2CD0();
  v51 = MEMORY[0x26676D6B0](v50);
  v52 = v70;
  v53 = v47;
  v54 = v70;
  v55 = v47;
  v67 = v43;
  if (v70 >> 60 != 15)
  {
    v56 = v51;
    v53 = sub_265BF2BC0();
    v54 = v57;
    v51 = v56;
    v52 = v70;
  }

  v70 = v52;
  v58 = v53;
  objc_autoreleasePoolPop(v51);
  v59 = v74;
  sub_265BE7900(v44, v74, &qword_28003C550, &qword_265BF5D30);
  v60 = (*(v73 + 80) + 24) & ~*(v73 + 80);
  v76 = v44;
  v61 = (v9 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = Current;
  sub_265BE5FB4(v59, v62 + v60);
  *(v62 + v61) = a2;
  v63 = (v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
  v64 = v75;
  *v63 = sub_265BE7824;
  v63[1] = v64;

  sub_265BF30B0();

  sub_265BBC0A4(v58, v54);
  sub_265BBC0A4(v55, v70);
  sub_265BB0750(v76, &qword_28003C550, &qword_265BF5D30);
  sub_265BB0750(v67, &qword_28003C550, &qword_265BF5D30);
}

uint64_t sub_265BE6D78(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v67 = a8;
  v69 = a2;
  v70 = a3;
  v73 = a1;
  v13 = sub_265BF2FD0();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v72 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v71 = sub_265BF3240();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v23 = swift_allocObject();
  v24 = v23;
  v23[2] = a5;
  v23[3] = a6;
  v74 = a6;
  if (*(v22 + 56) == 2)
  {
    v72 = a5;
    v73 = v23;

    sub_265BF3150();

    v25 = sub_265BF3230();
    v26 = sub_265BF34D0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v77 = v28;
      *v27 = 136446466;
      v75 = v22;
      v29 = sub_265BF3350();
      v31 = v30;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_265BF3620();

      v75 = 0xD000000000000011;
      v76 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v29, v31);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v32 = sub_265BB064C(v75, v76, &v77);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      LOBYTE(v75) = 2;
      v33 = sub_265BE6028();
      v34 = MEMORY[0x26676CC90](&type metadata for DeviceConnectionDestination, v33);
      v36 = sub_265BB064C(v34, v35, &v77);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_265BAD000, v25, v26, "%{public}s Destination does not support outgoing requests: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v28, -1, -1);
      MEMORY[0x26676DCA0](v27, -1, -1);
    }

    (*(v68 + 8))(v21, v71);
    v37 = sub_265BF2C50();
    sub_265BE61A4(&qword_28003C580, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D50910], v37);
    v77 = v38;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3800();
    v41 = v75;
    v42 = v76;
    (v72)(v75, v76);
    sub_265BB85E0(v41, v42);
  }

  else
  {
    v71 = a10;
    v62 = a9;
    v43 = (v22 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    v44 = *(type metadata accessor for DeviceConnectionCompression(0) + 20);
    v68 = v44;
    v61 = v22;
    v63 = v43;
    sub_265BE7900(v43, v19, &qword_28003C550, &qword_265BF5D30);
    v45 = v65;
    v46 = *(v65 + 16);
    v60 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v66;
    v46(v60, v73, v66);
    sub_265BE7900(v43 + v44, v72, &qword_28003C550, &qword_265BF5D30);
    v48 = *(v64 + 80);
    v49 = (v48 + 32) & ~v48;
    v50 = (v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (*(v45 + 80) + v50 + 8) & ~*(v45 + 80);
    v52 = (v14 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v48 + v52 + 16) & ~v48;
    v54 = swift_allocObject();
    *(v54 + 16) = v62;
    *(v54 + 24) = v24;
    sub_265BE5FB4(v19, v54 + v49);
    v55 = v60;
    *(v54 + v50) = v61;
    (*(v45 + 32))(v54 + v51, v55, v47);
    v56 = (v54 + v52);
    v58 = v69;
    v57 = v70;
    *v56 = v69;
    v56[1] = v57;
    sub_265BE5FB4(v72, v54 + v53);

    sub_265BBB4BC(v58, v57);
    sub_265BDB48C(v73, v58, v57, v63, v63 + v68, v71, v54);
  }
}

uint64_t sub_265BE7418(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v15 = *(v1 + 64);
  v13 = sub_265BF2FD0();
  v4 = *(v13 - 8);
  v14 = *(v4 + 80);
  v5 = (((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = sub_265BF2CF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v10 = (v2 + v6 + 16) & ~v2;

  (*(v4 + 8))(v0 + v5, v13);
  v11 = *(v0 + v6 + 8);
  if (v11 >> 60 != 15)
  {
    sub_265BBB1D0(*(v0 + v6), v11);
  }

  if (!v9(v0 + v10, 1, v7))
  {
    (*(v8 + 8))(v0 + v10, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v15, v2 | v14 | 7);
}

void sub_265BE76C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_265BF2FD0() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_265BDE1A4(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v9), *(v3 + v10), (v3 + v12), *(v3 + v13), *(v3 + v13 + 8), v3 + ((v8 + v13 + 16) & ~v8));
}

void sub_265BE782C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_265BDEC80(a1, a2, a3, v3 + v8, v10, v13, v14, v11);
}

uint64_t sub_265BE7900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_265BE79C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF59B0;
  *(inited + 32) = 0x74616E6974736564;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_265BF3670();
  v1 = sub_265BF3330();

  *(inited + 48) = v1;
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0x6D6F44726F727265;
  *(inited + 88) = 0xEB000000006E6961;
  *(inited + 96) = sub_265BF3330();
  *(inited + 104) = 0x4974736575716572;
  *(inited + 112) = 0xE900000000000044;
  type metadata accessor for TransportRequestAnalyticsEvent(0);
  sub_265BF2FD0();
  sub_265BF3670();
  v2 = sub_265BF3330();

  *(inited + 120) = v2;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000265BFA450;
  *(inited + 144) = sub_265BF34A0();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000265BFA470;
  *(inited + 168) = sub_265BF34A0();
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000265BFA490;
  *(inited + 192) = sub_265BF3440();
  strcpy((inited + 200), "roundTripTime");
  *(inited + 214) = -4864;
  *(inited + 216) = sub_265BF3440();
  *(inited + 224) = 0x65636976726573;
  *(inited + 232) = 0xE700000000000000;
  sub_265BF3670();
  v3 = sub_265BF3330();

  *(inited + 240) = v3;
  *(inited + 248) = 0x6369706F74;
  *(inited + 256) = 0xE500000000000000;
  sub_265BF3670();
  v4 = sub_265BF3330();

  *(inited + 264) = v4;
  v5 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v5;
}

uint64_t type metadata accessor for TransportRequestAnalyticsEvent(uint64_t a1)
{
  result = qword_28003C5E0;
  if (!qword_28003C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BE7DAC(uint64_t a1)
{
  result = sub_265BF2FD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DeviceConnectionAuthentication.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BE7EF0()
{
  result = qword_28003C5F0;
  if (!qword_28003C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C5F0);
  }

  return result;
}

unint64_t sub_265BE7F54(unint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF5AB0;
  *(inited + 32) = 0x74616E6974736564;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_265BF3340();
  v6 = sub_265BF3330();

  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BFA4D0;
  sub_265BE84C0();
  *(inited + 72) = sub_265BF3580();
  *(inited + 80) = 0x6369706F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_265BF3580();
  strcpy((inited + 104), "authentication");
  *(inited + 119) = -18;
  *(inited + 120) = sub_265BF3580();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000265BFA3A0;
  *(inited + 144) = sub_265BF3580();
  *(inited + 152) = 0x656D69747075;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_265BF3440();
  strcpy((inited + 176), "retryInterval");
  *(inited + 190) = -4864;
  *(inited + 192) = sub_265BF3440();
  *(inited + 200) = 0x646F43726F727265;
  *(inited + 208) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_265BF3750();
    v7 = sub_265BF3330();

    *(inited + 216) = v7;
    *(inited + 224) = 0x6D6F44726F727265;
    *(inited + 232) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_265BF3760();
  }

  else
  {
    v8 = sub_265BF3330();

    *(inited + 216) = v8;
    *(inited + 224) = 0x6D6F44726F727265;
    *(inited + 232) = 0xEB000000006E6961;
  }

  v9 = sub_265BF3330();

  *(inited + 240) = v9;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265BFA530;
  if (a2)
  {
    swift_getErrorValue();
    v10 = sub_265BF3700();
    if (v10)
    {
      v11 = v10;
      swift_getErrorValue();
      sub_265BF3750();
    }

    v13 = sub_265BF3330();

    *(inited + 264) = v13;
    *(inited + 272) = 0xD000000000000015;
    *(inited + 280) = 0x8000000265BFA550;
    swift_getErrorValue();
    v14 = sub_265BF3700();
    if (v14)
    {
      v15 = v14;
      swift_getErrorValue();
      sub_265BF3760();
    }
  }

  else
  {
    v12 = sub_265BF3330();

    *(inited + 264) = v12;
    *(inited + 272) = 0xD000000000000015;
    *(inited + 280) = 0x8000000265BFA550;
  }

  v16 = sub_265BF3330();

  *(inited + 288) = v16;
  v17 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_265BE8458()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v4 = 0;
  }

  return sub_265BE7F54(*v0 | (v0[4] << 32) | v1 | v2 | v3 | v4, *(v0 + 3), *(v0 + 1), *(v0 + 2));
}

unint64_t sub_265BE84C0()
{
  result = qword_28003C5F8;
  if (!qword_28003C5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C5F8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265BE8518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_265BE8574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_265BE85EC()
{
  result = qword_28003C600;
  if (!qword_28003C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C600);
  }

  return result;
}

unint64_t sub_265BE8644()
{
  result = qword_28003C608;
  if (!qword_28003C608)
  {
    sub_265BF31D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C608);
  }

  return result;
}

uint64_t sub_265BE86A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);

  sub_265BEC238(v0[16]);
  sub_265BB060C(v0[19], v0[20]);

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore22DeviceConnectionBrokerC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265BE8754(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
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

uint64_t sub_265BE87A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_265BE8808(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_265BE883C()
{
  v1 = *v0;
  sub_265BF3620();

  MEMORY[0x26676D1B0](*(v1 + 56), *(v1 + 64));
  return 0xD000000000000017;
}

void sub_265BE88AC(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, int a8, unsigned __int8 a9)
{
  v86 = a8;
  v89 = a7;
  v15 = sub_265BF3240();
  v92 = *(v15 - 8);
  v93 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  v24 = swift_allocObject();
  v87 = a2;
  v88 = a1;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = a3[14];

  sub_265BF2EA0();
  v91 = v95;
  v90 = v96;
  if (aBlock)
  {
    v26 = aBlock;

    sub_265BF3150();

    v27 = sub_265BF3230();
    v28 = sub_265BF34D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = a3;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v100[0] = v31;
      *v30 = 136446210;
      aBlock = 0;
      v95 = 0xE000000000000000;
      sub_265BF3620();

      aBlock = 0xD000000000000017;
      v95 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](v29[7], v29[8]);
      v32 = sub_265BB064C(aBlock, v95, v100);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_265BAD000, v27, v28, "%{public}s: Invalid state for initiating connection", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x26676DCA0](v31, -1, -1);
      MEMORY[0x26676DCA0](v30, -1, -1);
    }

    (*(v92 + 8))(v23, v93);
    sub_265BEC1CC();
    v38 = swift_allocError();
    *v39 = 1;
    v95 = 0;
    v96 = 0;
    aBlock = v38;
    LOBYTE(v97) = 1;
    (v88)(&aBlock);
    sub_265BEC238(v26);
  }

  else
  {
    v79 = v18;
    v82 = 0;
    v83 = v25;
    v81 = v24;
    v87 = a3;
    v84 = a5;
    v85 = a6;
    v33 = [a4 flags];
    v34 = [a4 statusFlags];
    v35 = [a4 statusFlags];
    v88 = 1;
    if (v33)
    {
      v36 = v87;
      v37 = v21;
    }

    else
    {
      v36 = v87;
      v37 = v21;
      if ((v34 & 0x1000) == 0)
      {
        v88 = (v35 >> 27) & 1;
      }
    }

    sub_265BF3150();

    v40 = a4;
    v41 = sub_265BF3230();
    v42 = sub_265BF34E0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v100[0] = v80;
      *v43 = 136446722;
      aBlock = 0;
      v95 = 0xE000000000000000;
      sub_265BF3620();

      aBlock = 0xD000000000000017;
      v95 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](v36[7], v36[8]);
      v45 = sub_265BB064C(aBlock, v95, v100);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2114;
      *(v43 + 14) = v40;
      *v44 = v40;
      *(v43 + 22) = 1026;
      *(v43 + 24) = v88;
      v46 = v40;
      _os_log_impl(&dword_265BAD000, v41, v42, "%{public}s: Connecting to device (%{public}@), requires authentication=%{BOOL,public}d", v43, 0x1Cu);
      sub_265BB0750(v44, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v44, -1, -1);
      v47 = v80;
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x26676DCA0](v47, -1, -1);
      MEMORY[0x26676DCA0](v43, -1, -1);
    }

    v48 = v37;
    v49 = *(v92 + 8);
    v49(v48, v93);
    v50 = v36[12];
    v51 = v36[13];
    __swift_project_boxed_opaque_existential_1(v36 + 9, v50);
    v52 = (*(v51 + 16))(v50, v51);
    v54 = v53;
    ObjectType = swift_getObjectType();
    v56 = *(v54 + 104);
    v80 = v40;
    v56(v40, ObjectType, v54);
    v57 = sub_265BF3330();

    [v52 setServiceType_];

    if (v85)
    {
      v58 = 0x1000000100;
    }

    else
    {
      v58 = 0;
    }

    v59 = *(v54 + 40);
    v59(v58, ObjectType, v54);
    v60 = v89;
    if (v89 == 1)
    {
      v61 = v79;
      sub_265BF3150();
      v62 = sub_265BF3230();
      v63 = sub_265BF34E0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_265BAD000, v62, v63, "Authentication set to use previous pairing, attaching control flag to find PIN pairing record", v64, 2u);
        v65 = v64;
        v61 = v79;
        MEMORY[0x26676DCA0](v65, -1, -1);
      }

      v49(v61, v93);
      v66 = (*(v54 + 32))(ObjectType, v54);
      v59(v66 | 0x8000000000, ObjectType, v54);
    }

    LODWORD(v93) = a9;
    v67 = v88 ^ 1;
    if (v60 == 2)
    {
      v67 = 0;
    }

    if ((v67 & 1) == 0)
    {
      (*(v54 + 16))(1, ObjectType, v54);
      v68 = (*(v54 + 32))(ObjectType, v54);
      v59(v68 | 0x8000000400, ObjectType, v54);
      [v52 setPasswordType_];
      v69 = swift_allocObject();
      swift_weakInit();
      v98 = sub_265BEC398;
      v99 = v69;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v96 = sub_265BE964C;
      v97 = &block_descriptor_30;
      v70 = _Block_copy(&aBlock);

      [v52 setPromptForPasswordHandler_];
      _Block_release(v70);
    }

    v71 = v87;
    v98 = sub_265BEC2D8;
    v99 = v87;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_265BD5854;
    v97 = &block_descriptor_9;
    v72 = _Block_copy(&aBlock);

    [v52 setAuthCompletionHandler_];
    _Block_release(v72);
    MEMORY[0x28223BE20](v73);
    *(&v79 - 4) = v71;
    *(&v79 - 3) = v52;
    *(&v79 - 2) = v54;
    *(&v79 - 8) = v88;
    sub_265BF2EA0();
    v74 = swift_allocObject();
    v76 = v80;
    v75 = v81;
    *(v74 + 16) = v71;
    *(v74 + 24) = v76;
    *(v74 + 32) = v52;
    *(v74 + 40) = v54;
    *(v74 + 48) = sub_265BEC294;
    *(v74 + 56) = v75;
    *(v74 + 64) = v89;
    *(v74 + 65) = v86;
    *(v74 + 66) = v93 & 1;
    *(v74 + 67) = v84 & 1;
    *(v74 + 68) = v85 & 1;
    v77 = *(v54 + 264);

    v78 = v76;
    swift_unknownObjectRetain();
    v77(sub_265BEC348, v74, ObjectType, v54);
    swift_unknownObjectRelease();

    sub_265BEC238(0);
  }
}

uint64_t sub_265BE9328(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_265BF2DC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_265BF3240();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();

  v11 = sub_265BF3230();
  v12 = sub_265BF34E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = v4;
    v28 = v15;
    v34[0] = v15;
    *v14 = 136446210;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v29 = a2;
    v33 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C618, &unk_265BF5CF8);
    v17 = sub_265BF3590();
    v18 = v5;
    v20 = v19;

    v21 = sub_265BB064C(v17, v20, v34);
    v5 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_265BAD000, v11, v12, "%{public}s: Password challenge handler fired", v14, 0xCu);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v4 = v31;
    MEMORY[0x26676DCA0](v22, -1, -1);
    v23 = v14;
    v7 = v30;
    MEMORY[0x26676DCA0](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v32);
  sub_265BF2DB0();
  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v26 = *(v24 + 152);
    v25 = *(v24 + 160);
    sub_265BB2BC4(v26, v25);

    if (v26)
    {
      v26(v7);
      sub_265BB060C(v26, v25);
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_265BE964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_265BE96AC(void *a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = a1;
    sub_265BF3150();
    v12 = a1;

    v13 = sub_265BF3230();
    v14 = sub_265BF34E0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v28 = 0;
      v29 = 0xE000000000000000;
      v30 = v16;
      sub_265BF3620();

      v28 = 0xD000000000000017;
      v29 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v17 = sub_265BB064C(v28, v29, &v30);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v18 = MEMORY[0x26676D550](v27[2], v27[3]);
      v20 = sub_265BB064C(v18, v19, &v30);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_265BAD000, v13, v14, "%{public}s: Authentication failed with error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v16, -1, -1);
      MEMORY[0x26676DCA0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_265BF3150();

    v21 = sub_265BF3230();
    v22 = sub_265BF34E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136446210;
      v28 = 0;
      v29 = 0xE000000000000000;
      v30 = v24;
      sub_265BF3620();

      v28 = 0xD000000000000017;
      v29 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v25 = sub_265BB064C(v28, v29, &v30);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_265BAD000, v21, v22, "%{public}s: Authentication success", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x26676DCA0](v24, -1, -1);
      MEMORY[0x26676DCA0](v23, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_265BE9A70(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, void, void, uint64_t), uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12)
{
  LODWORD(v240) = a8;
  v247 = a7;
  v248 = a4;
  v249 = a5;
  v250 = a6;
  v244 = a3;
  LODWORD(v235) = a12;
  LODWORD(v236) = a11;
  LODWORD(v237) = a10;
  LODWORD(v238) = a9;
  v233 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v233);
  v232 = (&v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_265BF2FE0();
  v230 = *(v15 - 8);
  v231 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DeviceConnectionCompression(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = &v203 - v22;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v220 = *(v229 - 8);
  v24 = MEMORY[0x28223BE20](v229);
  v212 = v25;
  v213 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v227 = &v203 - v26;
  v228 = sub_265BF2C30();
  v219 = *(v228 - 8);
  v27 = MEMORY[0x28223BE20](v228);
  v214 = v28;
  v215 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v234 = &v203 - v29;
  v30 = sub_265BF3210();
  v207 = *(v30 - 8);
  v208 = v30;
  MEMORY[0x28223BE20](v30);
  v209 = &v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_265BF31F0();
  MEMORY[0x28223BE20](v32 - 8);
  v206 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_265BF2F60();
  v216 = *(v34 - 8);
  v217 = v34;
  MEMORY[0x28223BE20](v34);
  v224 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v225 = *(v36 - 8);
  v226 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v222 = &v203 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v211 = &v203 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v223 = &v203 - v42;
  v210 = v43;
  MEMORY[0x28223BE20](v41);
  v218 = &v203 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C620, &qword_265BF5D08);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v203 - v46;
  v48 = sub_265BF2D20();
  v242 = *(v48 - 8);
  v243 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v221 = &v203 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v241 = &v203 - v51;
  v52 = sub_265BF3240();
  v245 = *(v52 - 8);
  v246 = v52;
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v203 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53);
  v205 = &v203 - v57;
  MEMORY[0x28223BE20](v56);
  v59 = &v203 - v58;
  v60 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  sub_265BEC238(v60);
  v239 = a2;
  if (a1)
  {
    v61 = v250;
    v62 = a1;
    sub_265BF3150();
    v63 = a1;

    v64 = v244;
    v65 = sub_265BF3230();
    v66 = sub_265BF34D0();

    v67 = os_log_type_enabled(v65, v66);
    v68 = a1;
    v244 = v64;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v231 = v70;
      v233 = swift_slowAlloc();
      v262[0] = v233;
      *v69 = 136446722;
      v253 = 0;
      v254 = 0xE000000000000000;
      LODWORD(v232) = v66;
      sub_265BF3620();

      v253 = 0xD000000000000017;
      v254 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v71 = sub_265BB064C(v253, v254, v262);

      *(v69 + 4) = v71;
      *(v69 + 12) = 2114;
      *(v69 + 14) = v64;
      *v70 = v64;
      *(v69 + 22) = 2082;
      swift_getErrorValue();
      v72 = v251;
      v73 = v68;
      v74 = v252;
      v75 = v64;
      v76 = MEMORY[0x26676D550](v72, v74);
      v78 = sub_265BB064C(v76, v77, v262);

      *(v69 + 24) = v78;
      v68 = v73;
      _os_log_impl(&dword_265BAD000, v65, v232, "%{public}s: Error activating device (%{public}@) connection link: %{public}s", v69, 0x20u);
      v79 = v231;
      sub_265BB0750(v231, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v79, -1, -1);
      v80 = v233;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v80, -1, -1);
      v81 = v69;
      v61 = v250;
      MEMORY[0x26676DCA0](v81, -1, -1);
    }

    v82 = v246;
    v83 = *(v245 + 1);
    v83(v59, v246);
    v84 = v243;
    ObjectType = swift_getObjectType();
    (*(v249 + 272))(ObjectType);
    v86 = v68;
    RemoteParticipantError.init(error:)(v68, v47);
    v87 = v242;
    if ((v242[6])(v47, 1, v84) == 1)
    {
      sub_265BB0750(v47, &qword_28003C620, &qword_265BF5D08);
      v88 = v68;
      v61(v68, 0, 0, 1);
    }

    else
    {
      v249 = v83;
      (*(v87 + 32))(v241, v47, v84);
      v111 = v221;
      (*(v87 + 104))(v221, *MEMORY[0x277D52630], v84);
      v112 = sub_265BF2D10();
      v115 = *(v87 + 8);
      v113 = v87 + 8;
      v114 = v115;
      v115(v111, v84);
      if ((v112 & 1) == 0 || v240)
      {
        sub_265BEC444(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
        v200 = swift_allocError();
        v201 = v241;
        v242[2](v202, v241, v84);
        v250(v200, 0, 0, 1);

        v114(v201, v84);
      }

      else
      {
        v245 = v114;
        v246 = v113;
        v248 = v68;
        v116 = v205;
        sub_265BF3150();
        v117 = sub_265BF3230();
        v118 = sub_265BF34E0();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_265BAD000, v117, v118, "Cloud pairing keys not found, connecting again looking for pairing record", v119, 2u);
          MEMORY[0x26676DCA0](v119, -1, -1);
        }

        (v249)(v116, v82);
        v120 = swift_allocObject();
        v121 = v244;
        *(v120 + 16) = v239;
        *(v120 + 24) = v121;
        *(v120 + 32) = v236 & 1;
        *(v120 + 33) = v235 & 1;
        *(v120 + 34) = 1;
        *(v120 + 35) = v238;
        *(v120 + 36) = v237 & 1;

        v122 = v121;
        v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
        v123 = v223;
        sub_265BF2DF0();
        sub_265BF3180();
        sub_265BF2F30();
        swift_allocObject();
        v124 = sub_265BF2F00();
        v125 = v209;
        sub_265BF2F50();

        sub_265BF3200();
        sub_265BF31E0();
        (*(v207 + 8))(v125, v208);
        sub_265BF2F50();
        sub_265BF31C0();
        swift_allocObject();
        v126 = sub_265BF3190();
        v242 = v126;
        v253 = v124;
        v127 = sub_265BF3350();
        v240 = v127;
        v129 = v128;
        sub_265BF2C20();
        v130 = swift_allocObject();
        v244 = v124;
        *(v130 + 16) = v124;
        *(v130 + 24) = v126;
        *(v130 + 32) = v127;
        *(v130 + 40) = v129;
        v239 = v129;
        *(v130 + 48) = "DeviceConnection.connect";
        *(v130 + 56) = 24;
        *(v130 + 64) = 2;

        v131 = v227;
        sub_265BF2DF0();
        v132 = v225;
        v133 = *(v225 + 16);
        v232 = (v225 + 16);
        v238 = v133;
        v134 = v222;
        v135 = v123;
        v136 = v226;
        v133(v222, v135, v226);
        v137 = *(v132 + 80);
        v138 = v132;
        v233 = ((v137 + 16) & ~v137) + v210;
        v139 = (v137 + 16) & ~v137;
        v236 = v139;
        v237 = v137;
        v140 = swift_allocObject();
        v141 = *(v138 + 32);
        v231 = (v138 + 32);
        v235 = v141;
        v141(v140 + v139, v134, v136);
        v142 = v220;
        v143 = v213;
        v144 = v229;
        (*(v220 + 16))(v213, v131, v229);
        v145 = (*(v142 + 80) + 16) & ~*(v142 + 80);
        v146 = (v212 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
        v147 = swift_allocObject();
        (*(v142 + 32))(v147 + v145, v143, v144);
        v148 = (v147 + v146);
        *v148 = sub_265BEC48C;
        v148[1] = v140;
        v149 = v211;
        sub_265BF2DF0();
        v150 = v219;
        v151 = v215;
        v152 = v228;
        (*(v219 + 16))(v215, v234, v228);
        v153 = (*(v150 + 80) + 49) & ~*(v150 + 80);
        v154 = (v214 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
        v155 = swift_allocObject();
        v156 = v239;
        *(v155 + 16) = v240;
        *(v155 + 24) = v156;
        *(v155 + 32) = "DeviceConnection.connect";
        *(v155 + 40) = 24;
        *(v155 + 48) = 2;
        (*(v150 + 32))(v155 + v153, v151, v152);
        *(v155 + v154) = v242;
        *(v155 + ((v154 + 15) & 0xFFFFFFFFFFFFFFF8)) = v244;
        v157 = v222;
        v158 = v226;
        v238(v222, v149, v226);
        v159 = (v233 + 7) & 0xFFFFFFFFFFFFFFF8;
        v160 = swift_allocObject();
        v235(v160 + v236, v157, v158);
        v161 = (v160 + v159);
        *v161 = sub_265BEC540;
        v161[1] = v155;

        v162 = v218;
        sub_265BF2DF0();
        v163 = *(v225 + 8);
        v163(v149, v158);
        (*(v142 + 8))(v227, v229);
        (*(v150 + 8))(v234, v228);
        (*(v216 + 8))(v224, v217);
        v163(v223, v158);

        v164 = swift_allocObject();
        *(v164 + 16) = v250;
        *(v164 + 24) = v247;

        v165 = sub_265BF2E40();
        v166 = swift_allocObject();
        *(v166 + 16) = sub_265BD227C;
        *(v166 + 24) = v164;

        v165(sub_265BEC6E4, v166);

        v163(v162, v158);
        v245(v241, v243);
      }
    }
  }

  else
  {
    v89 = v18;
    v90 = v230;
    v91 = v231;
    v241 = v17;
    v242 = v21;
    v243 = v23;
    v204 = v55;
    sub_265BB9CAC(a2 + 16, v262);
    sub_265BB9CAC(a2 + 72, v261);
    v92 = *(a2 + 120);
    if (qword_281068AD8 != -1)
    {
      swift_once();
    }

    v93 = __swift_project_value_buffer(v89, qword_281068AE0);
    v94 = v243;
    sub_265BD9C50(v93, v243);
    sub_265BC3598();
    v95 = sub_265BF3520();
    v234 = v95;
    type metadata accessor for UnstableDeviceConnection(0);
    v96 = swift_allocObject();
    (*(v90 + 104))(v241, *MEMORY[0x277D4EE68], v91);
    LOBYTE(v253) = 0;
    sub_265BF2EF0();
    sub_265BB9CAC(v262, v96 + 16);
    *(v96 + 56) = v240;
    v97 = v238;
    *(v96 + 57) = v238;
    LODWORD(v240) = v97;
    v98 = v244;
    *(v96 + 64) = v244;
    *(v96 + 72) = v235 & 1;
    sub_265BB9CAC(v261, v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider);
    *(v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority) = v92;
    *(v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue) = v95;
    v99 = v236 & 1;
    *(v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service) = v236 & 1;
    v100 = v237 & 1;
    *(v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic) = v237 & 1;
    sub_265BD9C50(v94, v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression);
    sub_265BB9CAC(v262, v260);
    LOBYTE(v95) = v92;
    v101 = v242;
    sub_265BD9C50(v94, v242);
    type metadata accessor for DeviceConnection(0);
    v102 = swift_allocObject();
    *(v102 + 88) = 0;
    *(v102 + 96) = 0;
    sub_265BB9CAC(v260, v102 + 16);
    *(v102 + 56) = v97;
    v103 = v249;
    *(v102 + 64) = v248;
    *(v102 + 72) = v103;
    sub_265BD9C50(v101, v102 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    *(v102 + 59) = v95;
    *(v102 + 58) = v99;
    *(v102 + 57) = v100;
    v253 = 0;
    v254 = 0xE000000000000000;
    v104 = v234;
    v244 = v98;
    v105 = v104;
    swift_unknownObjectRetain();
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
    v259 = v100;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v259 = v99;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v259 = v97;
    sub_265BF3670();
    sub_265BF30D0();
    swift_allocObject();
    v241 = v105;
    *(v102 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
    sub_265BF2EC0();
    swift_allocObject();
    *(v102 + 80) = sub_265BF2EB0();
    sub_265BD9CB4();
    v106 = sub_265BF3330();

    if (v240 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265BF5780;
      v253 = sub_265BF3340();
      v254 = v108;
      sub_265BF3600();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_265BE5574(inited);
      swift_setDeallocating();
      sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
      v109 = sub_265BF32E0();

      v257 = nullsub_1;
      v258 = 0;
      v253 = MEMORY[0x277D85DD0];
      v254 = 1107296256;
      v255 = sub_265BDAB80;
      v256 = &block_descriptor_47_0;
      v110 = _Block_copy(&v253);
      [v248 registerEventID:v106 options:v109 handler:v110];
      _Block_release(v110);
    }

    else
    {
      v167 = swift_allocObject();
      swift_weakInit();
      v257 = sub_265BD9E58;
      v258 = v167;
      v253 = MEMORY[0x277D85DD0];
      v254 = 1107296256;
      v255 = sub_265BD9EF4;
      v256 = &block_descriptor_36;
      v168 = _Block_copy(&v253);

      v169 = v248;
      [v248 registerRequestID:v106 options:0 handler:v168];
      _Block_release(v168);

      sub_265BD9CB4();
      v109 = sub_265BF3330();

      v170 = swift_allocObject();
      swift_weakInit();

      v257 = sub_265BDA150;
      v258 = v170;
      v253 = MEMORY[0x277D85DD0];
      v254 = 1107296256;
      v255 = sub_265BDAB80;
      v256 = &block_descriptor_40_0;
      v171 = _Block_copy(&v253);

      [v169 registerEventID:v109 options:0 handler:v171];
      _Block_release(v171);
    }

    v172 = swift_getObjectType();
    v173 = swift_allocObject();
    swift_weakInit();
    v174 = v249;
    v175 = *(v249 + 248);

    v175(sub_265BDAFC0, v173, v172, v174);
    v176 = v241;

    sub_265BDAFC8(v242);
    __swift_destroy_boxed_opaque_existential_0Tm(v260);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10);
    v177 = v232;
    *v232 = v102;

    sub_265BF2C20();

    sub_265BDAFC8(v243);
    __swift_destroy_boxed_opaque_existential_0Tm(v261);
    __swift_destroy_boxed_opaque_existential_0Tm(v262);
    swift_storeEnumTagMultiPayload();
    sub_265BEC3D8(v177, v96 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state);
    v178 = swift_allocObject();
    swift_weakInit();
    v179 = *(v102 + 88);
    v180 = *(v102 + 96);
    *(v102 + 88) = sub_265BEC43C;
    *(v102 + 96) = v178;
    sub_265BB060C(v179, v180);

    v181 = v204;
    sub_265BF3150();
    v182 = v239;

    v183 = v244;

    v184 = sub_265BF3230();
    v185 = sub_265BF34E0();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v188 = v182;
      v189 = swift_slowAlloc();
      v262[0] = v189;
      *v186 = 136446722;
      v253 = 0;
      v254 = 0xE000000000000000;
      sub_265BF3620();

      v253 = 0xD000000000000017;
      v254 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(v188 + 56), *(v188 + 64));
      v190 = sub_265BB064C(v253, v254, v262);

      *(v186 + 4) = v190;
      *(v186 + 12) = 2114;
      *(v186 + 14) = v183;
      *v187 = v183;
      *(v186 + 22) = 2082;
      v191 = v183;

      v192 = sub_265BF1288();
      v194 = v193;

      v195 = sub_265BB064C(v192, v194, v262);

      *(v186 + 24) = v195;
      _os_log_impl(&dword_265BAD000, v184, v185, "%{public}s: Activating device (%{public}@) connection link successful: %{public}s", v186, 0x20u);
      sub_265BB0750(v187, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v187, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v189, -1, -1);
      MEMORY[0x26676DCA0](v186, -1, -1);

      (*(v245 + 1))(v204, v246);
    }

    else
    {

      (*(v245 + 1))(v181, v246);
    }

    v196 = v250;
    v197 = sub_265BEC444(&qword_28003C630, type metadata accessor for UnstableDeviceConnection, &unk_265BF6090);
    v198 = sub_265BEC444(&qword_28003C638, type metadata accessor for UnstableDeviceConnection, &unk_265BF6068);

    v196(v199, v197, v198, 0);
  }
}

unint64_t sub_265BEB774@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_265BF3240();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  sub_265BF3150();
  sub_265BF3220();
  v43 = *(v7 + 8);
  v44 = v6;
  v43(v15, v6);
  sub_265BF2EA0();
  v17 = v46;
  v16 = v47;
  v18 = v48;
  if (v46 >= 2)
  {
    swift_unknownObjectRetain();
    if (v18)
    {
      v28 = sub_265BF3330();
      [v17 tryPassword_];

      sub_265BF2E50();
      v29 = v17;
    }

    else
    {
      v41 = v18;
      v42 = v16;
      sub_265BF3150();

      v30 = sub_265BF3230();
      v31 = sub_265BF34D0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = a3;
        v34 = v33;
        v45[0] = v33;
        *v32 = 136446210;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_265BF3620();

        v46 = 0xD000000000000017;
        v47 = 0x8000000265BFA650;
        MEMORY[0x26676D1B0](*(v4 + 56), *(v4 + 64));
        v35 = sub_265BB064C(v46, v47, v45);

        *(v32 + 4) = v35;
        _os_log_impl(&dword_265BAD000, v30, v31, "%{public}s: password attempt for link that doesn't require authentication", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x26676DCA0](v34, -1, -1);
        MEMORY[0x26676DCA0](v32, -1, -1);
      }

      v43(v13, v44);
      v36 = sub_265BF2D20();
      sub_265BEC444(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
      v37 = swift_allocError();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D52640], v36);
      *(swift_allocObject() + 16) = v37;
      sub_265BF2E00();
      v29 = v17;
    }

    sub_265BEC238(v29);
  }

  else
  {
    v41 = v48;
    v42 = v47;
    sub_265BF3150();

    v19 = sub_265BF3230();
    v20 = sub_265BF34D0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = a3;
      v23 = v22;
      v45[0] = v22;
      *v21 = 136446210;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_265BF3620();

      v46 = 0xD000000000000017;
      v47 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(v4 + 56), *(v4 + 64));
      v24 = sub_265BB064C(v46, v47, v45);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_265BAD000, v19, v20, "%{public}s: Provided a password while connection was not in progress", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x26676DCA0](v23, -1, -1);
      MEMORY[0x26676DCA0](v21, -1, -1);
    }

    v43(v10, v44);
    v25 = sub_265BF2D20();
    sub_265BEC444(&qword_281068900, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D52628], v25);
    *(swift_allocObject() + 16) = v26;
    sub_265BF2E00();
  }

  return sub_265BEC238(v17);
}

unint64_t sub_265BEBDD0(uint64_t a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 128);
  if (v6 >= 2)
  {
    v13 = *(a1 + 136);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 272);
    swift_unknownObjectRetain();
    v15(ObjectType, v13);
    v16 = *(a1 + 128);
    *(a1 + 128) = xmmword_265BF5230;
    *(a1 + 144) = 0;
    sub_265BEC238(v16);
    sub_265BF2E50();
    return sub_265BEC238(v6);
  }

  else
  {
    sub_265BF3150();
    v7 = sub_265BF3230();
    v8 = sub_265BF34D0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_265BAD000, v7, v8, "Cannot cancel device connection, connection not in progress", v9, 2u);
      MEMORY[0x26676DCA0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_265BEC1CC();
    v10 = swift_allocError();
    *v11 = 0;
    *(swift_allocObject() + 16) = v10;
    return sub_265BF2E00();
  }
}

uint64_t sub_265BEC06C()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();
  sub_265BF3220();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  return sub_265BF2EA0();
}

unint64_t sub_265BEC1CC()
{
  result = qword_28003C610;
  if (!qword_28003C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C610);
  }

  return result;
}

unint64_t sub_265BEC238(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_265BEC248(_BYTE *a1@<X8>)
{
  if (*(v1 + 128) >= 2uLL)
  {
    *a1 = *(v1 + 144) & 1;
  }

  else
  {
    *a1 = 0;
  }
}

unint64_t sub_265BEC284(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_265BEC2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 144);
  return sub_265BEC284(v2);
}

unint64_t sub_265BEC2E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 24);
  *(v1 + 144) = v2;
  swift_unknownObjectRetain();
  return sub_265BEC238(v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265BEC3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BEC444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BEC48C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265BD1B2C(v4, a1);
}

uint64_t sub_265BEC540(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD1AD0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BEC61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265BEC760()
{
  v0 = type metadata accessor for DeviceConnectionCompression(0);
  __swift_allocate_value_buffer(v0, qword_281068AE0);
  v1 = __swift_project_value_buffer(v0, qword_281068AE0);
  v2 = sub_265BF2CF0();
  v3 = *(v2 - 8);
  v7 = *(v3 + 56);
  v7(v1, 1, 1, v2);
  v4 = *(v0 + 20);
  (*(v3 + 104))(v1 + v4, *MEMORY[0x277D51F98], v2);
  v7(v1 + v4, 0, 1, v2);
  v5 = v1 + *(v0 + 24);

  return (v7)(v5, 1, 1, v2);
}

uint64_t type metadata accessor for DeviceConnectionCompression(uint64_t a1)
{
  result = qword_281068AC8;
  if (!qword_281068AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BEC8E4()
{
  v0 = type metadata accessor for DeviceConnectionCompression(0);
  __swift_allocate_value_buffer(v0, qword_28003C640);
  v1 = __swift_project_value_buffer(v0, qword_28003C640);
  v2 = sub_265BF2CF0();
  v5 = *(*(v2 - 8) + 56);
  (v5)((v2 - 8), v1, 1, 1, v2);
  v5(v1 + *(v0 + 20), 1, 1, v2);
  v3 = v1 + *(v0 + 24);

  return (v5)(v3, 1, 1, v2);
}

uint64_t sub_265BECA00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for DeviceConnectionCompression(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_265BD9C50(v7, a4);
}

uint64_t DeviceConnectionCompression.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_265BF2CF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v20 = v2;
  sub_265BED5FC(v2, &v19 - v14);
  v16 = *(v4 + 48);
  if (v16(v15, 1, v3) == 1)
  {
    sub_265BF37D0();
  }

  else
  {
    (*(v4 + 32))(v6, v15, v3);
    sub_265BF37D0();
    sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0], MEMORY[0x277D51FA8]);
    sub_265BF3310();
    (*(v4 + 8))(v6, v3);
  }

  v17 = type metadata accessor for DeviceConnectionCompression(0);
  sub_265BED5FC(v20 + *(v17 + 20), v13);
  if (v16(v13, 1, v3) == 1)
  {
    sub_265BF37D0();
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    sub_265BF37D0();
    sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0], MEMORY[0x277D51FA8]);
    sub_265BF3310();
    (*(v4 + 8))(v6, v3);
  }

  sub_265BED5FC(v20 + *(v17 + 24), v10);
  if (v16(v10, 1, v3) == 1)
  {
    return sub_265BF37D0();
  }

  (*(v4 + 32))(v6, v10, v3);
  sub_265BF37D0();
  sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0], MEMORY[0x277D51FA8]);
  sub_265BF3310();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DeviceConnectionCompression.hashValue.getter()
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BECE80()
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BECEC4(uint64_t a1)
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)(v2);
  return sub_265BF37E0();
}

BOOL _s19SeymourServicesCore27DeviceConnectionCompressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF2CF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C668, &unk_265BF5DD0);
  v16 = MEMORY[0x28223BE20](v15);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - v22;
  v24 = *(v21 + 48);
  v55 = a1;
  sub_265BED5FC(a1, &v48 - v22);
  v54 = a2;
  sub_265BED5FC(a2, &v23[v24]);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) == 1)
  {
    if (v25(&v23[v24], 1, v4) == 1)
    {
      v49 = v7;
      v50 = v5;
      sub_265BB0750(v23, &qword_28003C550, &qword_265BF5D30);
      goto LABEL_8;
    }

LABEL_6:
    v26 = v23;
LABEL_21:
    sub_265BB0750(v26, &qword_28003C668, &unk_265BF5DD0);
    return 0;
  }

  sub_265BED5FC(v23, v14);
  if (v25(&v23[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v23[v24], v4);
  sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0], MEMORY[0x277D51FB0]);
  v27 = sub_265BF3320();
  v50 = v5;
  v28 = *(v5 + 8);
  v49 = v7;
  v28();
  (v28)(v14, v4);
  sub_265BB0750(v23, &qword_28003C550, &qword_265BF5D30);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v29 = type metadata accessor for DeviceConnectionCompression(0);
  v30 = *(v29 + 20);
  v31 = *(v15 + 48);
  sub_265BED5FC(v55 + v30, v20);
  v32 = v54;
  sub_265BED5FC(v54 + v30, &v20[v31]);
  if (v25(v20, 1, v4) != 1)
  {
    v48 = v29;
    v33 = v53;
    sub_265BED5FC(v20, v53);
    v34 = v25(&v20[v31], 1, v4);
    v36 = v49;
    v35 = v50;
    if (v34 != 1)
    {
      (*(v50 + 32))(v49, &v20[v31], v4);
      sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0], MEMORY[0x277D51FB0]);
      v37 = sub_265BF3320();
      v38 = *(v35 + 8);
      v38(v36, v4);
      v38(v33, v4);
      sub_265BB0750(v20, &qword_28003C550, &qword_265BF5D30);
      v29 = v48;
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v50 + 8))(v33, v4);
    goto LABEL_13;
  }

  if (v25(&v20[v31], 1, v4) != 1)
  {
LABEL_13:
    v26 = v20;
    goto LABEL_21;
  }

  sub_265BB0750(v20, &qword_28003C550, &qword_265BF5D30);
LABEL_15:
  v39 = *(v29 + 24);
  v40 = *(v15 + 48);
  v41 = v52;
  sub_265BED5FC(v55 + v39, v52);
  sub_265BED5FC(v32 + v39, v41 + v40);
  if (v25(v41, 1, v4) == 1)
  {
    if (v25((v41 + v40), 1, v4) == 1)
    {
      sub_265BB0750(v41, &qword_28003C550, &qword_265BF5D30);
      return 1;
    }

    goto LABEL_20;
  }

  v42 = v51;
  sub_265BED5FC(v41, v51);
  if (v25((v41 + v40), 1, v4) == 1)
  {
    (*(v50 + 8))(v42, v4);
LABEL_20:
    v26 = v41;
    goto LABEL_21;
  }

  v45 = v49;
  v44 = v50;
  (*(v50 + 32))(v49, v41 + v40, v4);
  sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0], MEMORY[0x277D51FB0]);
  v46 = sub_265BF3320();
  v47 = *(v44 + 8);
  v47(v45, v4);
  v47(v42, v4);
  sub_265BB0750(v41, &qword_28003C550, &qword_265BF5D30);
  return (v46 & 1) != 0;
}

uint64_t sub_265BED5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_265BED6DC(uint64_t a1)
{
  sub_265BED750(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_265BED750(uint64_t a1)
{
  if (!qword_281068C98)
  {
    sub_265BF2CF0();
    v1 = sub_265BF35A0();
    if (!v2)
    {
      atomic_store(v1, &qword_281068C98);
    }
  }
}

uint64_t sub_265BED7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t DeviceConnectionTransportPriority.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BED8D8()
{
  result = qword_28003C678;
  if (!qword_28003C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C678);
  }

  return result;
}

uint64_t DeviceConnectionService.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BED9C0()
{
  result = qword_28003C680;
  if (!qword_28003C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C680);
  }

  return result;
}

uint64_t DeviceConnectionTopic.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BEDAA8()
{
  result = qword_28003C688;
  if (!qword_28003C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C688);
  }

  return result;
}

uint64_t sub_265BEDB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v35 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  sub_265BF3150();
  sub_265BF3220();
  v36 = *(v4 + 8);
  v37 = v3;
  v36(v11, v3);
  v12 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider + 24);
  v13 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider), v12);
  v14 = (*(v13 + 16))(v12, v13);
  v16 = v15;
  ObjectType = swift_getObjectType();
  v18 = *(v2 + 64);
  v19 = *(v16 + 104);
  v20 = v18;
  v19(v18, ObjectType, v16);
  v21 = sub_265BF3330();

  [v14 setServiceType_];

  if (*(v2 + 72))
  {
    v22 = 0x1000000100;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v16 + 40);
  v23(v22, ObjectType, v16);
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      v24 = v35;
      sub_265BF3150();
      v25 = sub_265BF3230();
      v26 = sub_265BF34E0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_265BAD000, v25, v26, "Authentication set to use previous pairing, attaching control flag to find PIN pairing record", v27, 2u);
        v28 = v27;
        v24 = v35;
        MEMORY[0x26676DCA0](v28, -1, -1);
      }

      v36(v24, v37);
      v29 = (*(v16 + 32))(ObjectType, v16);
      v23(v29 | 0x8000000000, ObjectType, v16);
    }

    else
    {
      sub_265BF3150();
      v30 = sub_265BF3230();
      v31 = sub_265BF34D0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_265BAD000, v30, v31, "UnstableDeviceConnection does not support forceNewPairing authentication schemes. This will be ignored.", v32, 2u);
        MEMORY[0x26676DCA0](v32, -1, -1);
      }

      v36(v7, v37);
    }
  }

  v33 = swift_allocObject();
  v33[2] = v14;
  v33[3] = v16;
  v33[4] = v2;
  type metadata accessor for DeviceConnection(0);

  return sub_265BF2DF0();
}

uint64_t sub_265BEDF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  v12[2] = sub_265BBB2F8;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v13 = *(a4 + 264);

  swift_unknownObjectRetain();

  v13(sub_265BF17E4, v12, ObjectType, a4);
}

void sub_265BEE040(void *a1, void (*a2)(void *, uint64_t), void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v74 = sub_265BF3240();
  v12 = *(v74 - 8);
  v13 = MEMORY[0x28223BE20](v74);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  v18 = type metadata accessor for DeviceConnectionCompression(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  v73 = a5;
  if (a1)
  {
    v72 = a4;
    v21 = a1;
    sub_265BF3150();
    v22 = a1;
    v23 = sub_265BF3230();
    v24 = sub_265BF34D0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = MEMORY[0x26676D550](v76, v77);
      v29 = sub_265BB064C(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_265BAD000, v23, v24, "Error retrying connection: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x26676DCA0](v26, -1, -1);
      MEMORY[0x26676DCA0](v25, -1, -1);
    }

    (*(v12 + 8))(v15, v74);
    v30 = v73;
    v31 = a1;
    v75(a1, 1);

    ObjectType = swift_getObjectType();
    (*(v30 + 272))(ObjectType, v30);
  }

  else
  {
    v70 = v17;
    v71 = v12;
    v72 = a3;
    v33 = *(a6 + 57);
    v34 = a6;
    v35 = *(a6 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic);
    v36 = *(v34 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
    sub_265BB9CAC(v34 + 16, &v85);
    sub_265BF17F4(v34 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression, v20, type metadata accessor for DeviceConnectionCompression);
    v68 = v34;
    v37 = *(v34 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority);
    sub_265BC3598();
    v38 = sub_265BF3520();
    type metadata accessor for DeviceConnection(0);
    v39 = swift_allocObject();
    *(v39 + 88) = 0;
    *(v39 + 96) = 0;
    sub_265BB9CAC(&v85, v39 + 16);
    *(v39 + 56) = v33;
    *(v39 + 64) = a4;
    *(v39 + 72) = a5;
    v69 = v20;
    sub_265BF17F4(v20, v39 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression, type metadata accessor for DeviceConnectionCompression);
    *(v39 + 59) = v37;
    *(v39 + 58) = v36;
    *(v39 + 57) = v35;
    aBlock = 0;
    v79 = 0xE000000000000000;
    swift_unknownObjectRetain();
    v40 = v38;
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
    v84 = v35;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v84 = v36;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v84 = v33;
    sub_265BF3670();
    sub_265BF30D0();
    swift_allocObject();
    *(v39 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
    sub_265BF2EC0();
    swift_allocObject();
    *(v39 + 80) = sub_265BF2EB0();
    sub_265BD9CB4();
    v41 = sub_265BF3330();

    if (v33 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265BF5780;
      aBlock = sub_265BF3340();
      v79 = v43;
      sub_265BF3600();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_265BE5574(inited);
      swift_setDeallocating();
      sub_265BF18BC(inited + 32);
      v44 = sub_265BF32E0();

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v80 = sub_265BDAB80;
      v81 = &block_descriptor_65;
      v45 = _Block_copy(&aBlock);
      [a4 registerEventID:v41 options:v44 handler:v45];
      _Block_release(v45);
    }

    else
    {
      v46 = swift_allocObject();
      swift_weakInit();
      v82 = sub_265BD9E58;
      v83 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v80 = sub_265BD9EF4;
      v81 = &block_descriptor_56;
      v47 = _Block_copy(&aBlock);

      [a4 registerRequestID:v41 options:0 handler:v47];
      _Block_release(v47);

      sub_265BD9CB4();
      v44 = sub_265BF3330();

      v48 = swift_allocObject();
      swift_weakInit();

      v82 = sub_265BDA150;
      v83 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v80 = sub_265BDAB80;
      v81 = &block_descriptor_60;
      v49 = _Block_copy(&aBlock);

      [a4 registerEventID:v44 options:0 handler:v49];
      _Block_release(v49);
    }

    v50 = swift_getObjectType();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v73;
    v53 = *(v73 + 248);

    v53(sub_265BDAFC0, v51, v50, v52);

    sub_265BF185C(v69, type metadata accessor for DeviceConnectionCompression);
    __swift_destroy_boxed_opaque_existential_0Tm(&v85);

    v54 = swift_allocObject();
    swift_weakInit();
    v55 = *(v39 + 88);
    v56 = *(v39 + 96);
    *(v39 + 88) = sub_265BEC43C;
    *(v39 + 96) = v54;
    sub_265BBE62C(v55, v56);
    v57 = v70;
    sub_265BF3150();

    v58 = sub_265BF3230();
    v59 = sub_265BF34E0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 136446210;

      v62 = DeviceConnection.description.getter();
      v64 = v63;

      v65 = sub_265BB064C(v62, v64, &aBlock);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_265BAD000, v58, v59, "Successful retry for connection: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x26676DCA0](v61, -1, -1);
      MEMORY[0x26676DCA0](v60, -1, -1);
    }

    (*(v71 + 8))(v57, v74);
    v66 = v75;

    v66(v67, 0);
  }
}

uint64_t sub_265BEEAA8(double a1)
{
  v2 = v1;
  v4 = sub_265BF3270();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265BF32A0();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265BF32C0();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - v11;
  v12 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_265BF3240();
  v15 = *(v53 - 1);
  v16 = MEMORY[0x28223BE20](v53);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C6D0, &qword_265BF60E8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - v23;
  v25 = *(v22 + 16);
  v43 = v2;
  v25(&v42 - v23, v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection__disableReconnect, v21);
  sub_265BF2ED0();
  (*(v22 + 8))(v24, v21);
  if (aBlock[0])
  {
    sub_265BF3150();
    v26 = sub_265BF3230();
    v27 = sub_265BF34E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_265BAD000, v26, v27, "Reconnect disabled, not scheduling", v28, 2u);
      MEMORY[0x26676DCA0](v28, -1, -1);
    }

    return (*(v15 + 8))(v18, v53);
  }

  else
  {
    sub_265BF3150();
    v30 = sub_265BF3230();
    v31 = sub_265BF34E0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = a1;
      _os_log_impl(&dword_265BAD000, v30, v31, "Scheduling reconnect in %{public}f seconds", v32, 0xCu);
      MEMORY[0x26676DCA0](v32, -1, -1);
    }

    (*(v15 + 8))(v20, v53);
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v33 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
    v34 = v43;
    swift_beginAccess();
    sub_265BF1764(v14, v34 + v33);
    swift_endAccess();
    v42 = *(v34 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue);
    sub_265BF32B0();
    sub_265BF3470();
    v35 = v44;
    sub_265BF32D0();
    v36 = v46;
    v53 = *(v45 + 8);
    v53(v10, v46);
    v37 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_265BF17C8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BB5860;
    aBlock[3] = &block_descriptor_10;
    v38 = _Block_copy(aBlock);

    v39 = v47;
    sub_265BF3290();
    v54 = MEMORY[0x277D84F90];
    sub_265BB59DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C2F0, &unk_265BF46E0);
    sub_265BB5A7C();
    v40 = v49;
    v41 = v52;
    sub_265BF35C0();
    MEMORY[0x26676D310](v35, v39, v40, v38);
    _Block_release(v38);
    (*(v51 + 8))(v40, v41);
    (*(v48 + 8))(v39, v50);
    v53(v35, v36);
  }
}

uint64_t sub_265BEF184(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BEF1DC();
  }

  return result;
}

uint64_t sub_265BEF1DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C318, &unk_265BF47B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v35 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v38 = &v33 - v13;
  v34 = v0;
  sub_265BEDB0C(v7);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_265BF14C0;
  *(v15 + 24) = v14;
  (*(v2 + 16))(v5, v7, v1);
  v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v16, v5, v1);
  v18 = (v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_265BF1580;
  v18[1] = v15;
  v19 = v35;
  sub_265BF2DF0();
  (*(v2 + 8))(v7, v1);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_265BF15B0;
  *(v21 + 24) = v20;
  v23 = v36;
  v22 = v37;
  v24 = v19;
  (*(v8 + 16))(v36, v19, v37);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v23, v22);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_265BD1F7C;
  v27[1] = v21;
  v28 = v38;
  sub_265BF2DF0();
  v29 = *(v8 + 8);
  v29(v24, v22);
  v30 = sub_265BF2E40();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_265BB8654, v31);

  return (v29)(v28, v22);
}

uint64_t sub_265BEF658(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10);
    *v5 = v6;

    sub_265BF2C20();
    swift_storeEnumTagMultiPayload();
    v9 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
    swift_beginAccess();
    sub_265BF1764(v5, v8 + v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_265BEF784(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BEFDC8(a1);
  }

  return result;
}

uint64_t sub_265BEF7F8(uint64_t a1)
{
  v1 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_265BF2C30();
  v44 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - v6;
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  sub_265BF3150();
  v14 = sub_265BF3230();
  v15 = sub_265BF34E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_265BAD000, v14, v15, "Unstable link disconnected", v16, 2u);
    MEMORY[0x26676DCA0](v16, -1, -1);
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v19 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  v20 = Strong;
  swift_beginAccess();
  sub_265BF17F4(v20 + v19, v3, type metadata accessor for UnstableDeviceConnection.State);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v3, type metadata accessor for UnstableDeviceConnection.State);
LABEL_6:
    sub_265BF3150();
    v21 = sub_265BF3230();
    v22 = sub_265BF34D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_265BAD000, v21, v22, "Invalidation handler invoked while state was not connected", v23, 2u);
      MEMORY[0x26676DCA0](v23, -1, -1);
    }

    return (v17)(v11, v7);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10);
  v26 = v44;
  v27 = v43;
  v28 = v45;
  (*(v44 + 32))(v43, &v3[*(v25 + 48)], v45);
  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = v29;
    swift_beginAccess();
    v31 = swift_weakLoadStrong();
    if (v31)
    {
      sub_265BB9CAC(v31 + 16, v47);

      v41 = v47[4];
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);

      v32 = v42;
      sub_265BF2C20();
      sub_265BF2C00();
      v34 = v33;
      (*(v26 + 8))(v32, v28);
      LOBYTE(v32) = v30[57];
      v35 = v30[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic];
      v36 = v30[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service];
      v37 = v30[72];
      v38 = v30[56];
      v39 = v30[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority];

      v46[3] = &type metadata for UnstableDeviceDisconnectionAnalyticsEvent;
      v46[4] = sub_265BF146C();
      v40 = swift_allocObject();
      v46[0] = v40;
      *(v40 + 16) = v32;
      *(v40 + 17) = v37;
      v27 = v43;
      *(v40 + 18) = v35;
      v28 = v45;
      *(v40 + 19) = v36;
      v26 = v44;
      *(v40 + 20) = v38;
      *(v40 + 21) = v39;
      *(v40 + 24) = v34;
      *(v40 + 32) = 0;
      *(v40 + 40) = 0;
      sub_265BF3010();

      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_265BEEAA8(1.0);
  }

  return (*(v26 + 8))(v27, v28);
}

uint64_t sub_265BEFDC8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  sub_265BF3150();
  sub_265BF3220();
  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v2 + v15, v6, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v6;
    v17 = *(v2 + 40);
    v31[1] = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), v17);
    v18 = *(v2 + 57);
    v19 = *(v2 + 72);
    v20 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic);
    v21 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
    v22 = *(v2 + 56);
    v23 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority);
    v32[3] = &type metadata for UnstableDeviceDisconnectionAnalyticsEvent;
    v32[4] = sub_265BF146C();
    v24 = swift_allocObject();
    v32[0] = v24;
    *(v24 + 16) = v18;
    *(v24 + 17) = v19;
    *(v24 + 18) = v20;
    *(v24 + 19) = v21;
    *(v24 + 20) = v22;
    *(v24 + 21) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = v16;
    *(v24 + 40) = a1;
    v25 = a1;
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v26 = v16 + v16;
    if (v16 + v16 > 30.0)
    {
      v26 = 30.0;
    }

    return sub_265BEEAA8(v26);
  }

  else
  {
    sub_265BF185C(v6, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BF3150();
    v28 = sub_265BF3230();
    v29 = sub_265BF34D0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265BAD000, v28, v29, "Unexpected reconnection error, not in state reconnecting", v30, 2u);
      MEMORY[0x26676DCA0](v30, -1, -1);
    }

    return (v14)(v11, v7);
  }
}

uint64_t sub_265BF0128()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  sub_265BF185C(v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression, type metadata accessor for DeviceConnectionCompression);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider));

  sub_265BF185C(v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state, type metadata accessor for UnstableDeviceConnection.State);
  v1 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection__disableReconnect;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C6D0, &qword_265BF60E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_265BF0270(uint64_t a1)
{
  type metadata accessor for DeviceConnectionCompression(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnstableDeviceConnection.State(319);
    if (v2 <= 0x3F)
    {
      sub_265BF03D4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_265BF03D4()
{
  if (!qword_2810688F0)
  {
    v0 = sub_265BF2EE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810688F0);
    }
  }
}

void sub_265BF0434(uint64_t a1)
{
  sub_265BF04A8(319);
  if (v1 <= 0x3F)
  {
    sub_265BF051C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265BF04A8(uint64_t a1)
{
  if (!qword_28003C6B8)
  {
    type metadata accessor for DeviceConnection(255);
    sub_265BF2C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28003C6B8);
    }
  }
}

uint64_t sub_265BF051C()
{
  result = qword_28003C6C0;
  if (!qword_28003C6C0)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_28003C6C0);
  }

  return result;
}

uint64_t sub_265BF054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v2 + v8, v7, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v7, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v9 = swift_allocError();
    *v10 = 0;
    *(swift_allocObject() + 16) = v9;
    return sub_265BF2E00();
  }

  else
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v13 = sub_265BF2C30();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
    DeviceConnection.sendRequest(_:)(a1, a2);
  }
}

uint64_t sub_265BF0714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v6 + v16, v15, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v15, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v17 = swift_allocError();
    *v18 = 0;
    *(swift_allocObject() + 16) = v17;
    return sub_265BF2E00();
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v21 = sub_265BF2C30();
    (*(*(v21 - 8) + 8))(&v15[v20], v21);
    DeviceConnection.sendRequest<A>(_:payload:)(a1, a2, a3, a4, a5, a6);
  }
}

void sub_265BF090C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v5 + v14, v13, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v13, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v15 = swift_allocError();
    *v16 = 0;
    sub_265BF2E10();
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v18 = sub_265BF2C30();
    (*(*(v18 - 8) + 8))(&v13[v17], v18);
    DeviceConnection.sendRequest<A>(_:)(a1, a2, a3, a4, a5);
  }
}

void sub_265BF0ACC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a7;
  v26 = a8;
  v24 = a6;
  v16 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v9 + v19, v18, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v18, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v20 = swift_allocError();
    *v21 = 0;
    sub_265BF2E10();
  }

  else
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v23 = sub_265BF2C30();
    (*(*(v23 - 8) + 8))(&v18[v22], v23);
    DeviceConnection.sendRequest<A, B>(_:payload:)(a1, a2, a3, a4, a5, v24, v25, v26, a9);
  }
}

uint64_t sub_265BF0CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v4 + v12, v11, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265BF185C(v11, type metadata accessor for UnstableDeviceConnection.State);
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
  v15 = sub_265BF2C30();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  DeviceConnection.broadcastEvent<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_265BF0E3C(uint64_t a1)
{
  v3 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v1 + v6, v5, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265BF185C(v5, type metadata accessor for UnstableDeviceConnection.State);
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
  v9 = sub_265BF2C30();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  DeviceConnection.broadcastEvent(_:data:)(a1, 0, 0xF000000000000000);
}

uint64_t sub_265BF0FA0()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnstableDeviceConnection.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v1 + v9, v8, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v8, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BF3150();
    v10 = sub_265BF3230();
    v11 = sub_265BF34D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_265BAD000, v10, v11, "DispatchService requested while unstable connection was not connected", v12, 2u);
      MEMORY[0x26676DCA0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v13 = *(v1 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue);
    sub_265BF3370();
    sub_265BF30D0();
    swift_allocObject();
    return sub_265BF30C0();
  }

  else
  {
    v15 = *v8;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v17 = sub_265BF2C30();
    (*(*(v17 - 8) + 8))(&v8[v16], v17);
    v18 = *(v15 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);

    return v18;
  }
}

uint64_t sub_265BF1288()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = [v2 description];
  v4 = sub_265BF3340();
  v6 = v5;

  BYTE8(v8) = 0;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000023, 0x8000000265BFA770);
  sub_265BF3670();
  MEMORY[0x26676D1B0](0x636976726573202CLL, 0xEC000000203D2065);
  sub_265BF3670();
  MEMORY[0x26676D1B0](0xD000000000000010, 0x8000000265BFA7A0);
  *&v8 = *(v1 + 57);
  sub_265BF3670();
  MEMORY[0x26676D1B0](540945696, 0xE400000000000000);
  MEMORY[0x26676D1B0](v4, v6);

  MEMORY[0x26676D1B0](62, 0xE100000000000000);
  return *(&v8 + 1);
}

unint64_t sub_265BF146C()
{
  result = qword_28003C6C8;
  if (!qword_28003C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C6C8);
  }

  return result;
}

uint64_t sub_265BF14DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_265BF2DF0();
}

uint64_t sub_265BF15F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_265BF16BC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_265BB85E0(v6, 0);
}

uint64_t sub_265BF1764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BF17F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265BF185C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265BF18BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C548, &unk_265BF5D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DataProtectionUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265BF3020();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_265BF19B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265BF3020();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for DataProtectionUpdated(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataProtectionUpdated(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_265BF1BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  MEMORY[0x28223BE20](v4);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_265BF3330();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    a1 = sub_265BF3340();
    a2 = v8;
  }

  else
  {
  }

  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v10 = sub_265BF20B8(a1, a2, 0);
  v11 = [v10 applicationState];
  v12 = [v11 isInstalled];

  return v12;
}

Swift::Bool __swiftcall AppInstallStateChecker.anyApplicationBundleIsInstalled(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1._rawValue + 40);
  v7 = *(a1._rawValue + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v10 = *(v6 - 1);
    v9 = *v6;

    LOBYTE(v10) = sub_265BF1BA8(v10, v9);

    v6 = v8;
    if (v10)
    {
      return v7 != 0;
    }
  }

  sub_265BF3130();

  v11 = sub_265BF3230();
  v12 = sub_265BF34E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x26676D210](a1._rawValue, MEMORY[0x277D837D0]);
    v17 = sub_265BB064C(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_265BAD000, v11, v12, "None of the following app bundles are installed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26676DCA0](v14, -1, -1);
    MEMORY[0x26676DCA0](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v7 != 0;
}

id sub_265BF20B8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_265BF3330();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_265BF2B90();

    swift_willThrow();
  }

  return v6;
}

uint64_t AppLaunchState.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BF2254()
{
  result = qword_28003C6D8;
  if (!qword_28003C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C6D8);
  }

  return result;
}

char *sub_265BF22BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C6E0, &qword_265BF62A0);
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

uint64_t _s19SeymourServicesCore7SandboxV9bootstrapyySSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = sub_265BF3420();
  *(v14 + 16) = 1024;
  bzero((v14 + 32), 0x400uLL);
  sub_265BF3380();

  v15 = _set_user_dir_suffix();

  if (!v15)
  {
    v18 = MEMORY[0x26676D060](v16);
    if (strerror(v18))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v14 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_265BF22BC(0, *(v14 + 16), 0, v14);
  }

  if (!confstr(65537, (v14 + 32), v8))
  {
LABEL_12:
    v19 = MEMORY[0x26676D060]();
    if (strerror(v19))
    {
      v32 = sub_265BF33B0();
      v34 = v33;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_265BF3620();
      MEMORY[0x26676D1B0](0xD000000000000034, 0x8000000265BFA8C0);
      MEMORY[0x26676D1B0](a1, a2);
      v35 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
      LODWORD(v55) = MEMORY[0x26676D060](v35);
      v36 = sub_265BF36D0();
      MEMORY[0x26676D1B0](v36);

      MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
      MEMORY[0x26676D1B0](v32, v34);
      v37 = v56;
      v38 = v57;

      sub_265BF3130();

      v39 = sub_265BF3230();
      v40 = sub_265BF34D0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_265BB064C(v37, v38, &v55);
        _os_log_impl(&dword_265BAD000, v39, v40, "Sandbox bootstrap error: %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x26676DCA0](v42, -1, -1);
        MEMORY[0x26676DCA0](v41, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!mkdir((v14 + 32), 0x2BCu) && MEMORY[0x26676D060]() != 17)
  {
LABEL_14:
    v20 = MEMORY[0x26676D060]();
    if (strerror(v20))
    {
      v43 = sub_265BF33B0();
      v45 = v44;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_265BF3620();
      MEMORY[0x26676D1B0](0xD000000000000029, 0x8000000265BFA890);
      MEMORY[0x26676D1B0](a1, a2);
      v46 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
      LODWORD(v55) = MEMORY[0x26676D060](v46);
      v47 = sub_265BF36D0();
      MEMORY[0x26676D1B0](v47);

      MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
      MEMORY[0x26676D1B0](v43, v45);
      v48 = v56;
      v49 = v57;

      sub_265BF3130();

      v50 = sub_265BF3230();
      v51 = sub_265BF34D0();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v52 = 136446210;
        *(v52 + 4) = sub_265BB064C(v48, v49, &v55);
        _os_log_impl(&dword_265BAD000, v50, v51, "Sandbox bootstrap error: %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x26676DCA0](v53, -1, -1);
        MEMORY[0x26676DCA0](v52, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      goto LABEL_25;
    }

    __break(1u);
LABEL_16:
    v21 = sub_265BF33B0();
    v23 = v22;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD00000000000002DLL, 0x8000000265BFA830);
    MEMORY[0x26676D1B0](a1, a2);
    v24 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
    LODWORD(v55) = MEMORY[0x26676D060](v24);
    v25 = sub_265BF36D0();
    MEMORY[0x26676D1B0](v25);

    MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
    MEMORY[0x26676D1B0](v21, v23);
    v26 = v56;
    v27 = v57;

    sub_265BF3130();

    v28 = sub_265BF3230();
    v29 = sub_265BF34D0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_265BB064C(v26, v27, &v55);
      _os_log_impl(&dword_265BAD000, v28, v29, "Sandbox bootstrap error: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x26676DCA0](v31, -1, -1);
      MEMORY[0x26676DCA0](v30, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
LABEL_25:
    result = sub_265BF3680();
    __break(1u);
    return result;
  }
}