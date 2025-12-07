uint64_t sub_22F079828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
  v33 = v4;
  result = sub_22F0D170C();
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
        sub_22EFE6B9C(v24, v34);
      }

      else
      {
        sub_22EFFFB40(v24, v34);
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22EFE6B9C(v34, *(v7 + 56) + 40 * v15);
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22F079AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A8, &qword_22F0D9180);
  result = sub_22F0D170C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_22F0D198C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    result = sub_22F0D00CC();
    v3 = v31;
  }

  else
  {
    result = sub_22F0D00CC();
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22F079D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A0, &qword_22F0D8488);
  v39 = v4;
  result = sub_22F0D170C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v39 & 1) == 0)
      {
        sub_22F0CFF1C();
        v28 = v26;
        sub_22F00AC04(v25, v27);
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v26;
      v17[1] = v25;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07A034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  result = sub_22F0D170C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      if ((v4 & 1) == 0)
      {
        sub_22F0CFF1C();
      }

      result = sub_22F0D198C();
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

    if ((v4 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07A2A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  v34 = v4;
  result = sub_22F0D170C();
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
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07A54C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
  v37 = v4;
  result = sub_22F0D170C();
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
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07A80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ResolvedFamily(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1990, &unk_22F0D9170);
  v37 = v4;
  result = sub_22F0D170C();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_22F07E9E0(v25, v7, type metadata accessor for ResolvedFamily);
      }

      else
      {
        sub_22F06158C(v25, v7, type metadata accessor for ResolvedFamily);
      }

      result = sub_22F0D198C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_22F07E9E0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ResolvedFamily);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22F07AB54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
  v34 = v4;
  result = sub_22F0D170C();
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
        sub_22F0CFF1C();
        swift_unknownObjectRetain();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07ADFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
  result = sub_22F0D170C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        sub_22F0CFF1C();
      }

      result = sub_22F0D12EC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v4 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07B06C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
  v33 = v4;
  result = sub_22F0D170C();
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
        sub_22EFFFA24(v24, v34);
      }

      else
      {
        sub_22F003598(v24, v34);
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22EFFFA24(v34, (*(v7 + 56) + 32 * v15));
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07B324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22F0D05BC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1980, &qword_22F0D8480);
  v42 = v4;
  result = sub_22F0D170C();
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22F07B6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PeopleLocation(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
  v40 = v4;
  result = sub_22F0D170C();
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
        sub_22F07E9E0(v28, v41, type metadata accessor for PeopleLocation);
      }

      else
      {
        sub_22F06158C(v28, v41, type metadata accessor for PeopleLocation);
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22F07E9E0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for PeopleLocation);
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22F07BA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1978, &qword_22F0D9140);
  result = sub_22F0D170C();
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
      v21 = *(*(v5 + 56) + v19);
      result = sub_22F0D198C();
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

    result = sub_22F0D00CC();
    v3 = v31;
  }

  else
  {
    result = sub_22F0D00CC();
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22F07BC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1968, &unk_22F0D9130);
  v34 = v4;
  result = sub_22F0D170C();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      *(*(v7 + 56) + v15) = v24;
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F07BF34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for LocationItem(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
  v40 = v4;
  result = sub_22F0D170C();
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
        sub_22F07E9E0(v28, v41, type metadata accessor for LocationItem);
      }

      else
      {
        sub_22F06158C(v28, v41, type metadata accessor for LocationItem);
        sub_22F0CFF1C();
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
      result = sub_22F07E9E0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for LocationItem);
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
      result = sub_22F0D00CC();
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

  result = sub_22F0D00CC();
LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22F07C2C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_22F0D170C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
        sub_22F0CFF1C();
        v27 = v26;
      }

      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
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
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
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

  result = sub_22F0D00CC();
LABEL_33:
  *v5 = v9;
  return result;
}

void sub_22F07C55C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F0BFBE8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_22F07C5C8(v4);
  *a1 = v2;
}

void sub_22F07C5C8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F0D182C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22F0D0FCC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_22F07C790(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F07C6C0(0, v2, 1, a1);
  }
}

uint64_t sub_22F07C6C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22F0D188C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F07C790(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_22F0BE90C(v8);
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
        sub_22F07CD6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
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
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_22F0D188C();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_22F0D188C()))
          {
            goto LABEL_23;
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F03C658(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_22F03C658((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
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
        sub_22F07CD6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_22F0BE880(v44);
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
    if (v37 || (sub_22F0D188C() & 1) == 0)
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
}

uint64_t sub_22F07CD6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22F0D188C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22F0D188C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_22F07CF94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
    v3 = sub_22F0D171C();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22EFFD904(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D074()
{
  result = qword_27DAA1CF8;
  if (!qword_27DAA1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1CF8);
  }

  return result;
}

uint64_t sub_22F07D0C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1D00, &qword_22F0D8CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F07D138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D78, &qword_22F0D9148);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v5 = *i;
      v13[0] = *(i - 16);
      v14 = v6;
      v15 = v5;
      sub_22F0CFF1C();
      result = sub_22EFFD970(v13);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v13[0];
      v9 = (v3[7] + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        sub_22F0D00CC();
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

unint64_t sub_22F07D244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D80, &unk_22F0D9150);
    v3 = sub_22F0D171C();
    v4 = (a1 + 32);
    sub_22F0CFFAC();
    while (1)
    {
      v5 = *v4;
      v6 = sub_22F0CFF1C();
      result = sub_22EFFDA00(v6);
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v9 = *(v3 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v11;
      ++v4;
      if (!--v1)
      {
        sub_22F0D00CC();
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

unint64_t sub_22F07D320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, &v13, &qword_27DAA14D0, &qword_22F0D8880);
      v5 = v13;
      v6 = v14;
      result = sub_22EFFDA80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EFE6B9C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {
        sub_22F0D00CC();
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

unint64_t sub_22F07D454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, &v13, &qword_27DAA1198, &qword_22F0D5AF8);
      v5 = v13;
      v6 = v14;
      result = sub_22EFFDA80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EFFFA24(&v15, (v3[7] + 32 * result));
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
        sub_22F0D00CC();
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

unint64_t sub_22F07D584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      result = sub_22EFFDA80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
        sub_22F0D00CC();
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

void *sub_22F07D698(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  v3 = sub_22F0D171C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_22EFFDADC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_22F0CFF1C();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    sub_22F0CFF1C();
    v8 = sub_22EFFDADC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F07D7A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      result = sub_22EFFDA80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
        sub_22F0D00CC();
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

unint64_t sub_22F07D8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      swift_unknownObjectRetain();
      result = sub_22EFFDA80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
        sub_22F0D00CC();
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

unint64_t sub_22F07D9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D78, &qword_22F0D9148);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;
      sub_22F0CFF1C();
      result = sub_22EFFDB20(v5);
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
        sub_22F0D00CC();
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

unint64_t sub_22F07DAA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      sub_22F0CFF1C();
      result = sub_22EFFDBAC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
        sub_22F0D00CC();
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

unint64_t sub_22F07DB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D58, &qword_22F0D90B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
    v7 = sub_22F0D171C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v9, v5, &qword_27DAA1D58, &qword_22F0D90B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22EFFDA80(*v5, v12);
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
      v18 = type metadata accessor for LocationItem(0);
      result = sub_22F07E9E0(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for LocationItem);
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
        sub_22F0D00CC();
        return v7;
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

unint64_t sub_22F07DD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D70, &unk_22F0D9110);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      v8 = v7;
      result = sub_22EFFDA80(v5, v6);
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
        sub_22F0D00CC();
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

unint64_t sub_22F07DE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11B0, &qword_22F0D5C28);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, v13, &qword_27DAA1D68, &unk_22F0D9100);
      result = sub_22EFFDA98(v13);
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
      result = sub_22EFFFA24(&v15, (v3[7] + 32 * result));
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
        sub_22F0D00CC();
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

unint64_t sub_22F07DFC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
    v7 = sub_22F0D171C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v9, v5, &qword_27DAA1D60, &qword_22F0D90C8);
      result = sub_22EFFDA80(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      v15 = v5[1];
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for PeopleLocation(0);
      result = sub_22F07E9E0(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PeopleLocation);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {
        sub_22F0D00CC();
        return v7;
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

uint64_t sub_22F07E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  v28[3] = &type metadata for FeatureFlagsProvider.Key;
  v28[4] = sub_22F07E98C();
  v12 = swift_allocObject();
  v28[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v9;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = v6;
  v13 = sub_22F0D070C();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (qword_280CBEF00 != -1)
  {
    swift_once();
  }

  v14 = sub_22F0D0A1C();
  __swift_project_value_buffer(v14, qword_280CBEF08);
  v15 = sub_22F0D09FC();
  v16 = sub_22F0D124C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v13;
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136315650;
    v19 = sub_22F0D153C();
    v21 = sub_22F00A560(v19, v20, v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_22F0D153C();
    v24 = sub_22F00A560(v22, v23, v28);

    *(v17 + 14) = v24;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v27 & 1;
    _os_log_impl(&dword_22EFE1000, v15, v16, "%s:%s is enabled: %{BOOL}d", v17, 0x1Cu);
    swift_arrayDestroy();
    v25 = v18;
    v13 = v27;
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v17, -1, -1);
  }

  return v13 & 1;
}

unint64_t sub_22F07E3D0()
{
  result = qword_280CBEC58;
  if (!qword_280CBEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC58);
  }

  return result;
}

unint64_t sub_22F07E46C()
{
  result = qword_27DAA1D30;
  if (!qword_27DAA1D30)
  {
    type metadata accessor for FeatureFlagsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeopleFeatureFlagNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PeopleFeatureFlagNames(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F07E830()
{
  result = qword_27DAA1D38;
  if (!qword_27DAA1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D38);
  }

  return result;
}

unint64_t sub_22F07E888()
{
  result = qword_27DAA1D40;
  if (!qword_27DAA1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D40);
  }

  return result;
}

unint64_t sub_22F07E8E0()
{
  result = qword_27DAA1D48;
  if (!qword_27DAA1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D48);
  }

  return result;
}

unint64_t sub_22F07E938()
{
  result = qword_27DAA1D50;
  if (!qword_27DAA1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D50);
  }

  return result;
}

unint64_t sub_22F07E98C()
{
  result = qword_280CBF030;
  if (!qword_280CBF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBF030);
  }

  return result;
}

uint64_t sub_22F07E9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F07EA48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F07EA68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t PersonTypeAppEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEC30;
  a1[3] = type metadata accessor for ContactFetcher();
  a1[4] = &protocol witness table for ContactFetcher;
  *a1 = v2;

  return sub_22F0CFFAC();
}

char *sub_22F07EB60()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = MEMORY[0x277D84F90];
  v5 = (*(v3 + 56))(10, MEMORY[0x277D84F90], v2, v3);
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_22F0D143C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v39[0] = v4;
  result = sub_22EFFC4E8(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v38 = v0;
  v9 = 0;
  v10 = v39[0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FDAB0](v9, v6);
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 identifier];
    v14 = sub_22F0D0CAC();
    v16 = v15;

    v39[0] = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_22EFFC4E8((v17 > 1), v18 + 1, 1);
      v10 = v39[0];
    }

    ++v9;
    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v7 != v9);

  v4 = MEMORY[0x277D84F90];
  v1 = v38;
LABEL_14:
  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  v22 = (*(v21 + 48))(500, 0, v20, v21);
  v23 = v22;
  v40 = v4;
  if (v22 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v25 = 0;
    v37 = v23 & 0xFFFFFFFFFFFFFF8;
    v38 = v23 & 0xC000000000000001;
    v36 = v23;
    while (1)
    {
      if (v38)
      {
        v26 = MEMORY[0x2318FDAB0](v25, v23);
      }

      else
      {
        if (v25 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = i;
      v30 = [v26 identifier];
      v31 = sub_22F0D0CAC();
      v33 = v32;

      v39[0] = v31;
      v39[1] = v33;
      MEMORY[0x28223BE20](v34);
      v35[2] = v39;
      LOBYTE(v30) = sub_22F051C9C(sub_22F034BF4, v35, v10);

      if (v30)
      {
      }

      else
      {
        sub_22F0D15EC();
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      i = v29;
      v23 = v36;
      ++v25;
      if (v28 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return v40;
}

uint64_t sub_22F07EEC8@<X0>(uint64_t a1@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  v11 = (*(v10 + 56))(10, MEMORY[0x277D84F90], v9, v10);
  v27 = v1;
  v12 = sub_22F052050(sub_22F0825E0, v26, v11);

  v13 = sub_22F07EB60();
  v25 = v1;
  v14 = sub_22F052050(sub_22F0825E0, v24, v13);

  v15 = sub_22F0D036C();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  sub_22F034988();
  v23 = a1;
  sub_22F0CFF3C();
  if (*(v12 + 2))
  {
    v17 = (v16)(v8, 1, 1, v15);
    MEMORY[0x28223BE20](v17);
    *(&v22 - 2) = v12;
    *(&v22 - 1) = v14;
    sub_22F0CFF3C();
  }

  else
  {

    v18 = (v16)(v8, 1, 1, v15);
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = v14;
    sub_22F0CFF3C();
  }

  v20 = v22;
  v19 = v23;
  (*(v3 + 8))(v23, v22);
  return (*(v3 + 32))(v19, v5, v20);
}

uint64_t PersonTypeAppEntityQuery.buildPersonType(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_22F0D036C();
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 identifier];
  v6 = sub_22F0D0CAC();
  v8 = v7;

  v52 = v6;
  v53 = v8;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_22F0D031C();
  v14 = v13;

  v15 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v15 setStyle_];
  v49 = v12;
  object = v14;
  v51 = v15;
  v16 = ContactFormatter.displayName(for:includePhone:)(a1, 1);
  countAndFlagsBits = v16._countAndFlagsBits;

  v17 = [v10 bundleForClass_];
  v18 = sub_22F0D031C();
  v20 = v19;

  v21 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v21 setStyle_];
  v49 = v18;
  object = v20;
  v51 = v21;
  v22 = ContactFormatter.displayName(for:includePhone:)(a1, 1);

  if (qword_280CBDFD0 != -1)
  {
    swift_once();
  }

  v23 = sub_22F00ED5C(v22._countAndFlagsBits, v22._object);
  v25 = v24;

  if (v25)
  {
    v49 = 124;
    object = 0xE100000000000000;
    MEMORY[0x2318FD2C0](v23, v25);

    MEMORY[0x2318FD2C0](v49, object);
  }

  v26 = countAndFlagsBits;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v27 = sub_22F0D0A1C();
  __swift_project_value_buffer(v27, qword_280CBDB30);
  v29 = v52;
  v28 = v53;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v30 = a1;
  v31 = sub_22F0D09FC();
  v32 = sub_22F0D122C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49 = v34;
    *v33 = 136315906;
    *(v33 + 4) = sub_22F00A560(0xD000000000000015, 0x800000022F0DEE80, &v49);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_22F00A560(v29, v28, &v49);
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_22F00A560(v26, v16._object, &v49);
    *(v33 + 32) = 2080;
    v35 = [v30 description];
    v36 = sub_22F0D0CAC();
    v37 = v29;
    v39 = v38;

    v40 = v36;
    v26 = countAndFlagsBits;
    v41 = sub_22F00A560(v40, v39, &v49);
    v29 = v37;

    *(v33 + 34) = v41;
    _os_log_impl(&dword_22EFE1000, v31, v32, "PersonTypeAppEntity: %s id: %s, displayString: %s, contact: %s", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v34, -1, -1);
    MEMORY[0x2318FE8B0](v33, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
  sub_22F0D034C();
  v42 = sub_22F0CFE4C();
  sub_22F0D034C();
  v43 = sub_22F0CFE4C();
  v49 = v29;
  object = v28;
  sub_22F0CFE1C();
  v49 = v26;
  object = v16._object;
  result = sub_22F0CFE1C();
  v45 = v47;
  *v47 = v42;
  v45[1] = v43;
  return result;
}

uint64_t sub_22F07F7BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F0D036C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_22F0D034C();
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  sub_22F0D034C();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v11 = *(v4 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F0D6710;
  v14 = v13 + v12;
  v15 = *(v5 + 16);
  v15(v14, v10, v3);
  v15(v14 + v11, v8, v3);
  v16 = sub_22F0CFF1C();

  v17 = *(v5 + 8);
  v17(v8, v3);
  v17(v10, v3);
  return v16;
}

uint64_t sub_22F07FA54(uint64_t a1)
{
  v1 = sub_22F0D036C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  sub_22F0D034C();
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F0D2BF0;
  (*(v3 + 16))(v7 + v6, v5, v2);
  v8 = sub_22F0CFF1C();

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t PersonTypeAppEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F07FC68, 0, 0);
}

uint64_t sub_22F07FC68()
{
  v17 = v0;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB30);
  sub_22F0CFF1C();
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_22F00A560(0x7365697469746E65, 0xEE00293A726F6628, v16);
    *(v5 + 12) = 2080;
    v7 = MEMORY[0x2318FD490](v4, MEMORY[0x277D837D0]);
    v9 = sub_22F00A560(v7, v8, v16);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_22EFE1000, v2, v3, "PersonTypeAppEntity: %s IDs: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  v10 = v0[2];
  v11 = v0[3];
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  v13 = sub_22F052218(sub_22F082394, v12, v10);

  v14 = v0[1];

  return v14(v13);
}

void PersonTypeAppEntityQuery.queryPersonType(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22F0D036C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(a1, a2);
  if (v9 && (v10 = v8, v11 = v9, v12 = v3[3], v13 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v12), v14 = (*(v13 + 24))(v10, v11, 0, v12, v13), , v14))
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_22F0D031C();
    v19 = v18;

    v20 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v20 setStyle_];
    v52 = v17;
    v53 = v19;
    v54 = v20;
    v21 = ContactFormatter.displayName(for:includePhone:)(v14, 1);

    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = v21._countAndFlagsBits;
    v23 = sub_22F0D0A1C();
    __swift_project_value_buffer(v23, qword_280CBDB30);
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    v24 = v14;
    v25 = sub_22F0D09FC();
    v26 = sub_22F0D122C();

    if (os_log_type_enabled(v25, v26))
    {
      v51 = a3;
      v27 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v27 = 136315906;
      *(v27 + 4) = sub_22F00A560(0xD000000000000015, 0x800000022F0DEEA0, &v52);
      v49 = v26;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_22F00A560(a1, a2, &v52);
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_22F00A560(v21._countAndFlagsBits, v21._object, &v52);
      *(v27 + 32) = 2080;
      v28 = [v24 description];
      v29 = v24;
      v30 = sub_22F0D0CAC();
      v48 = v25;
      v31 = a1;
      v33 = v32;

      v34 = v30;
      v24 = v29;
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;
      v36 = v31;
      v37 = sub_22F00A560(v34, v33, &v52);

      *(v27 + 34) = v37;
      _os_log_impl(&dword_22EFE1000, v48, v49, "Returning existing PersonTypeAppEntity: %s id: %s, displayString: %s, contact: %s", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v50, -1, -1);
      v38 = v27;
      a3 = v51;
      MEMORY[0x2318FE8B0](v38, -1, -1);
    }

    else
    {

      object = v21._object;
      v36 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
    sub_22F0D034C();
    v46 = sub_22F0CFE4C();
    sub_22F0D034C();
    v47 = sub_22F0CFE4C();
    v52 = v36;
    v53 = a2;
    sub_22F0CFF1C();
    sub_22F0CFE1C();
    v52 = countAndFlagsBits;
    v53 = object;
    sub_22F0CFE1C();

    *a3 = v46;
    a3[1] = v47;
  }

  else
  {
    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    v39 = sub_22F0D0A1C();
    __swift_project_value_buffer(v39, qword_280CBDB30);
    sub_22F0CFF1C();
    v40 = sub_22F0D09FC();
    v41 = sub_22F0D123C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = a1;
      v45 = v43;
      v52 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_22F00A560(v44, a2, &v52);
      _os_log_impl(&dword_22EFE1000, v40, v41, "PersonTypeAppEntity: Could not find contact for id: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318FE8B0](v45, -1, -1);
      MEMORY[0x2318FE8B0](v42, -1, -1);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t PersonTypeAppEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v4[42] = swift_task_alloc();
  v5 = sub_22F0D01DC();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F080528, 0, 0);
}

uint64_t sub_22F080528()
{
  v122 = v0;
  if (qword_280CBDB28 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v1 = sub_22F0D0A1C();
    __swift_project_value_buffer(v1, qword_280CBDB30);
    v2 = sub_22F0D09FC();
    v3 = sub_22F0D124C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v121 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEEC0, &v121);
      _os_log_impl(&dword_22EFE1000, v2, v3, "PersonTypeAppEntity: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x2318FE8B0](v5, -1, -1);
      MEMORY[0x2318FE8B0](v4, -1, -1);
    }

    v6 = String.trimToNil()();
    object = v0[20].value._object;
    if (!v6.value._object)
    {
      sub_22F07EEC8(v0[19].value._countAndFlagsBits);
      goto LABEL_76;
    }

    v8 = object[3];
    v9 = object[4];
    __swift_project_boxed_opaque_existential_1(object, v8);
    v10 = (*(v9 + 48))(0, 1, v8, v9);
    v11 = v10;
    v121 = MEMORY[0x277D84F90];
    if (!(v10 >> 62))
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        break;
      }

      goto LABEL_7;
    }

    v12 = sub_22F0D143C();
    if (!v12)
    {
      break;
    }

LABEL_7:
    v13 = 0;
    v115 = v11 & 0xFFFFFFFFFFFFFF8;
    v116 = v11 & 0xC000000000000001;
    v120 = (v0[22].value._countAndFlagsBits + 8);
    v14 = MEMORY[0x277D837D0];
    v113 = v12;
    v114 = v11;
    while (1)
    {
      if (v116)
      {
        v15 = MEMORY[0x2318FDAB0](v13, v11);
      }

      else
      {
        if (v13 >= *(v115 + 16))
        {
          goto LABEL_54;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v117 = v13 + 1;
      v17 = v0[22].value._object;
      v18 = v0[21].value._object;
      v19 = [v15 givenName];
      v20 = sub_22F0D0CAC();
      v22 = v21;

      v0[1].value._countAndFlagsBits = v20;
      v0[1].value._object = v22;
      sub_22F0D01CC();
      sub_22F00901C();
      v23 = sub_22F0D136C();
      v25 = v24;
      v119 = *v120;
      (*v120)(v17, v18);

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v0[2].value._countAndFlagsBits = v23;
        v0[2].value._object = v25;
        v0[3] = v6;
        v27 = sub_22F0D13AC();

        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v28 = v0[22].value._object;
      v29 = v0[21].value._object;
      v118 = v16;
      v30 = [v16 middleName];
      v31 = sub_22F0D0CAC();
      v32 = v14;
      v34 = v33;

      v0[4].value._countAndFlagsBits = v31;
      v0[4].value._object = v34;
      sub_22F0D01CC();
      v35 = sub_22F0D136C();
      v37 = v36;
      v119(v28, v29);

      v38 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v0[5].value._countAndFlagsBits = v35;
        v0[5].value._object = v37;
        v0[6] = v6;
        v39 = sub_22F0D13AC();

        v14 = v32;
        v40 = v118;
        if (v39)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v14 = v32;
        v40 = v118;
      }

      v41 = v0[22].value._object;
      v42 = v0[21].value._object;
      v43 = [v40 familyName];
      v44 = sub_22F0D0CAC();
      v45 = v14;
      v47 = v46;

      v0[7].value._countAndFlagsBits = v44;
      v0[7].value._object = v47;
      sub_22F0D01CC();
      v48 = sub_22F0D136C();
      v50 = v49;
      v119(v41, v42);

      v51 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v51 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {
        v0[8].value._countAndFlagsBits = v48;
        v0[8].value._object = v50;
        v0[9] = v6;
        v52 = sub_22F0D13AC();

        v14 = v45;
        v53 = v118;
        if (v52)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v14 = v45;
        v53 = v118;
      }

      v54 = v0[22].value._object;
      v55 = v0[21].value._object;
      v56 = [v53 phoneticGivenName];
      v57 = sub_22F0D0CAC();
      v58 = v14;
      v60 = v59;

      v0[10].value._countAndFlagsBits = v57;
      v0[10].value._object = v60;
      sub_22F0D01CC();
      v61 = sub_22F0D136C();
      v63 = v62;
      v119(v54, v55);

      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {
        v0[11].value._countAndFlagsBits = v61;
        v0[11].value._object = v63;
        v0[12] = v6;
        v65 = sub_22F0D13AC();

        v14 = v58;
        v66 = v118;
        if (v65)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v14 = v58;
        v66 = v118;
      }

      v67 = v0[22].value._object;
      v68 = v0[21].value._object;
      v69 = [v66 phoneticMiddleName];
      v70 = sub_22F0D0CAC();
      v71 = v14;
      v73 = v72;

      v0[13].value._countAndFlagsBits = v70;
      v0[13].value._object = v73;
      sub_22F0D01CC();
      v74 = sub_22F0D136C();
      v76 = v75;
      v119(v67, v68);

      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v77)
      {
        v0[14].value._countAndFlagsBits = v74;
        v0[14].value._object = v76;
        v0[15] = v6;
        v78 = sub_22F0D13AC();

        v14 = v71;
        v79 = v118;
        if (v78)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v14 = v71;
        v79 = v118;
      }

      v80 = v0[22].value._object;
      v81 = v79;
      v82 = v0[21].value._object;
      v83 = [v81 phoneticFamilyName];
      v84 = sub_22F0D0CAC();
      v85 = v14;
      v87 = v86;

      v0[16].value._countAndFlagsBits = v84;
      v0[16].value._object = v87;
      sub_22F0D01CC();
      v88 = sub_22F0D136C();
      v90 = v89;
      v119(v80, v82);

      v91 = HIBYTE(v90) & 0xF;
      if ((v90 & 0x2000000000000000) == 0)
      {
        v91 = v88 & 0xFFFFFFFFFFFFLL;
      }

      if (!v91)
      {

        v14 = v85;
        goto LABEL_9;
      }

      v0[17].value._countAndFlagsBits = v88;
      v0[17].value._object = v90;
      v0[18] = v6;
      v92 = sub_22F0D13AC();

      v14 = v85;
      if ((v92 & 1) == 0)
      {

        goto LABEL_9;
      }

LABEL_8:
      sub_22F0D15EC();
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
LABEL_9:
      ++v13;
      v11 = v114;
      if (v117 == v113)
      {
        v93 = v121;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v93 = MEMORY[0x277D84F90];
LABEL_58:

  v94 = v93 < 0 || (v93 & 0x4000000000000000) != 0;
  if (!v94)
  {
    result = *(v93 + 16);
    if (result >= 0x1F4)
    {
      v96 = 500;
    }

    else
    {
      v96 = *(v93 + 16);
    }

    if (result >= v96)
    {
      goto LABEL_66;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v111 = sub_22F0D143C();
  result = sub_22F0D143C();
  if (result < 0)
  {
    goto LABEL_88;
  }

  if (v111 >= 0x1F4)
  {
    v112 = 500;
  }

  else
  {
    v112 = v111;
  }

  if (v111 >= 0)
  {
    v96 = v112;
  }

  else
  {
    v96 = 500;
  }

  result = sub_22F0D143C();
  if (result < v96)
  {
    goto LABEL_87;
  }

LABEL_66:
  if ((v93 & 0xC000000000000001) != 0)
  {
    sub_22F0CFF1C();
    if (v96)
    {
      sub_22F0459DC();
      v97 = 0;
      do
      {
        v98 = v97 + 1;
        sub_22F0D155C();
        v97 = v98;
      }

      while (v96 != v98);
    }
  }

  else
  {
    sub_22F0CFF1C();
  }

  sub_22F0D00CC();
  if (v94)
  {
    sub_22F0D16EC();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    sub_22F0D00CC();
  }

  else
  {
    v102 = 0;
    v100 = v93 + 32;
    v104 = (2 * v96) | 1;
  }

  v106 = v0[20].value._object;
  countAndFlagsBits = v0[21].value._countAndFlagsBits;
  v107 = swift_task_alloc();
  *(v107 + 16) = v106;
  v108 = sub_22F058F38(sub_22F0823C8, v107, v100, v102, v104);
  swift_unknownObjectRelease();

  v109 = sub_22F0D036C();
  (*(*(v109 - 8) + 56))(countAndFlagsBits, 1, 1, v109);
  *(swift_task_alloc() + 16) = v108;
  sub_22F034988();
  sub_22F0CFF3C();

LABEL_76:

  v110 = v0->value._object;

  return v110();
}

uint64_t sub_22F080FA8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  PersonTypeAppEntityQuery.buildPersonType(for:)(*a1, &v5);
  sub_22F034988();
  sub_22F0CFDBC();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1700, &qword_22F0D7718);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_22F081054(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFEFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F0D2BF0;
  (*(v2 + 16))(v6 + v5, v4, v1);
  v7 = sub_22F0CFF1C();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t PersonTypeAppEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_22F0D036C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F08134C, 0, 0);
}

uint64_t sub_22F08134C()
{
  v41 = v0;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB30);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEEE0, &v40);
    _os_log_impl(&dword_22EFE1000, v2, v3, "PersonTypeAppEntity: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  v6 = v0[19];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = (*(v11 + 56))(10, MEMORY[0x277D84F90], v10, v11);
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  v14 = sub_22F052050(sub_22F0825E0, v13, v12);

  (*(v7 + 56))(v6, 1, 1, v8);
  sub_22F034988();
  sub_22F0CFF3C();
  if (*(v14 + 2))
  {
    sub_22F0D034C();
    sub_22F0CFF2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
    v15 = sub_22F0CFF4C();
    v17 = v16;
    v18 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_22F03D470(0, v18[2] + 1, 1, v18);
      *v17 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_22F03D470((v20 > 1), v21 + 1, 1, v18);
      *v17 = v18;
    }

    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    v18[2] = v21 + 1;
    (*(v24 + 32))(v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v22, v23);
    v15(v0 + 2, 0);
  }

  else
  {
  }

  v25 = v0[11];
  sub_22F0D034C();
  v26 = sub_22F07EB60();
  v27 = swift_task_alloc();
  *(v27 + 16) = v25;
  sub_22F052050(sub_22F0823EC, v27, v26);

  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
  v28 = sub_22F0CFF4C();
  v30 = v29;
  v31 = *v29;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_22F03D470(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_22F03D470((v33 > 1), v34 + 1, 1, v31);
    *v30 = v31;
  }

  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[15];
  v31[2] = v34 + 1;
  (*(v35 + 32))(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v36, v37);
  v28(v0 + 6, 0);

  v38 = v0[1];

  return v38();
}

uint64_t PersonTypeAppEntityQuery.defaultResult()(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_22F0818C4, 0, 0);
}

uint64_t sub_22F0818C4()
{
  v47 = v0;
  v1 = v0[25];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = (*(v3 + 56))(1, MEMORY[0x277D84F90], v2, v3);
  if (v5 >> 62)
  {
    v4 = v5;
    v22 = sub_22F0D143C();
    v5 = v4;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318FDAB0](0);
      goto LABEL_6;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
LABEL_6:
      v7 = v6;

      if (qword_280CBDB28 != -1)
      {
        swift_once();
      }

      v8 = sub_22F0D0A1C();
      __swift_project_value_buffer(v8, qword_280CBDB30);
      v9 = v7;
      v10 = sub_22F0D09FC();
      v11 = sub_22F0D124C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v46 = v13;
        *v12 = 136315138;
        v14 = [v9 debugDescription];
        v15 = sub_22F0D0CAC();
        v17 = v16;

        v18 = sub_22F00A560(v15, v17, &v46);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_22EFE1000, v10, v11, "PersonTypeAppEntity: Default contact for is from recommendations list: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x2318FE8B0](v13, -1, -1);
        MEMORY[0x2318FE8B0](v12, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v19 = v0[24];
      LOBYTE(v46) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0xD000000000000012;
      v21 = inited + 32;
      *(inited + 40) = 0x800000022F0DEF00;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = 1;
LABEL_21:
      v38 = sub_22F07D320(inited);
      swift_setDeallocating();
      sub_22F069CDC(v21);
      sub_22F08FCF8(&v46, v38);

      PersonTypeAppEntityQuery.buildPersonType(for:)(v9, &v46);

      *v19 = v46;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_32;
  }

  v23 = v0[25];

  v25 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v23, v25);
  v26 = (*(v24 + 8))(v25, v24);
  if (v26)
  {
    v4 = v26;
    if (qword_280CBDB28 == -1)
    {
LABEL_16:
      v27 = sub_22F0D0A1C();
      __swift_project_value_buffer(v27, qword_280CBDB30);
      v9 = v4;
      v28 = sub_22F0D09FC();
      v29 = sub_22F0D124C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v46 = v31;
        *v30 = 136315138;
        v32 = [v9 debugDescription];
        v33 = sub_22F0D0CAC();
        v35 = v34;

        v36 = sub_22F00A560(v33, v35, &v46);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_22EFE1000, v28, v29, "PersonTypeAppEntity: Default contact for is from contacts list: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2318FE8B0](v31, -1, -1);
        MEMORY[0x2318FE8B0](v30, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v19 = v0[24];
      LOBYTE(v46) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0xD000000000000012;
      v21 = inited + 32;
      v37 = MEMORY[0x277D839B0];
      *(inited + 40) = 0x800000022F0DEF00;
      *(inited + 72) = v37;
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = 0;
      goto LABEL_21;
    }

LABEL_32:
    swift_once();
    goto LABEL_16;
  }

  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v41 = sub_22F0D0A1C();
  __swift_project_value_buffer(v41, qword_280CBDB30);
  v42 = sub_22F0D09FC();
  v43 = sub_22F0D124C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22EFE1000, v42, v43, "PersonTypeAppEntity: No default found, 0 recommendations 0 contacts", v44, 2u);
    MEMORY[0x2318FE8B0](v44, -1, -1);
  }

  v45 = v0[24];

  *v45 = 0;
  v45[1] = 0;
LABEL_22:
  v39 = v0[1];

  return v39();
}

uint64_t sub_22F081F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F00CD54;

  return PersonTypeAppEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_22F081FD4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEC30;
  a1[3] = type metadata accessor for ContactFetcher();
  a1[4] = &protocol witness table for ContactFetcher;
  *a1 = v2;

  return sub_22F0CFFAC();
}

uint64_t sub_22F082058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F06574C;

  return PersonTypeAppEntityQuery.entities(for:)(a1);
}

uint64_t sub_22F0820EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CF60;

  return PersonTypeAppEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_22F082184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F015708;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22F082244(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22F03487C();
  *v5 = v2;
  v5[1] = sub_22F00CF60;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_22F0822F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CD54;

  return PersonTypeAppEntityQuery.defaultResult()(a1);
}

unint64_t sub_22F082408()
{
  result = qword_280CBDDB0;
  if (!qword_280CBDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDB0);
  }

  return result;
}

unint64_t sub_22F082460()
{
  result = qword_280CBDDA8;
  if (!qword_280CBDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDA8);
  }

  return result;
}

unint64_t sub_22F0824BC()
{
  result = qword_280CBDDC0;
  if (!qword_280CBDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDC0);
  }

  return result;
}

unint64_t sub_22F082518()
{
  result = qword_27DAA1D98;
  if (!qword_27DAA1D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1D90, &qword_22F0D9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D98);
  }

  return result;
}

double sub_22F08258C@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  PersonTypeAppEntityQuery.buildPersonType(for:)(*a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_22F0825FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_22F0D13FC();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);
      sub_22F0CFF1C();
      if (v10 >= v11 >> 1)
      {
        sub_22EFFC4E8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_22F0097CC(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_22F0097CC(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t static MessageDeviceCapabilityLookup.sharedInstance.getter()
{
  if (qword_27DAA0590 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

BOOL DiscoveredHandles.allMembersMeetRequirements.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  sub_22F0CFF1C();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * v8)));
      if (!*(v9 + 16))
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    sub_22F0CFF1C();
    v27 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22EFFC6AC(0, *(v7 + 16) + 1, 1);
      v7 = v27;
    }

    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
    v13 = v11 + 1;
    if (v11 >= v12 >> 1)
    {
      v14 = v11 + 1;
      v26 = v11;
      sub_22EFFC6AC((v12 > 1), v11 + 1, 1);
      v13 = v14;
      v11 = v26;
      v7 = v27;
    }

    *(v7 + 16) = v13;
    *(v7 + 8 * v11 + 32) = v9;
  }

  while (v4);
  while (1)
  {
LABEL_7:
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_5;
    }
  }

  sub_22F0D00CC();
  if (qword_27DAA0570 == -1)
  {
    goto LABEL_18;
  }

LABEL_23:
  swift_once();
LABEL_18:
  v15 = sub_22F0D0A1C();
  __swift_project_value_buffer(v15, qword_27DAA1A28);
  sub_22F0CFFAC();
  v16 = sub_22F0D09FC();
  v17 = sub_22F0D124C();
  sub_22F0D00CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
    v21 = MEMORY[0x2318FD490](v7, v20);
    v23 = sub_22F00A560(v21, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22EFE1000, v16, v17, "DevCaps: noGoodHandles is [%s]", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2318FE8B0](v19, -1, -1);
    MEMORY[0x2318FE8B0](v18, -1, -1);
  }

  v24 = *(v7 + 16);
  sub_22F0D00CC();
  return v24 == 0;
}

unint64_t static DiscoveredHandles.emptyFamily.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F07DAA0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t DiscoveredHandles.description.getter()
{
  sub_22F0D152C();

  v0 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v0);

  MEMORY[0x2318FD2C0](0x73656C646E616820, 0xE900000000000020);
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](0xD00000000000001DLL, 0x800000022F0DEF40);
  v1 = DiscoveredHandles.allMembersMeetRequirements.getter();
  v2 = !v1;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x2318FD2C0](v3, v4);

  return 0xD000000000000012;
}

uint64_t DiscoveredHandles.iMessageHandles.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * v10)));
      if (v11[2])
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v11[4];
    v13 = v11[5];
    sub_22F0CFF1C();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C784(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v9;
      v20 = *(v9 + 16);
      result = sub_22F03C784((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v9 = result;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {
      sub_22F0D00CC();

      return v9;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void *sub_22F082E44()
{
  v1 = sub_22F0D126C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_22F0D0A6C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22F0D127C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0x5F7061636F6E5F5FLL;
  v0[3] = 0xE90000000000005FLL;
  sub_22F01B924(0, &qword_280CBEC70, 0x277D85C78);
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_22F0D0A5C();
  v8[1] = MEMORY[0x277D84F90];
  sub_22F03329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F0332F4();
  sub_22F0D13EC();
  v0[4] = sub_22F0D129C();
  return v0;
}

void *sub_22F08307C(uint64_t a1)
{
  type metadata accessor for MessageDeviceCapabilityLookup();
  swift_allocObject();
  result = sub_22F082E44();
  off_27DAA1DA0 = result;
  return result;
}

uint64_t sub_22F0830B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0830DC, 0, 0);
}

uint64_t sub_22F0830DC()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22F08318C;
  v5 = v0[3];
  v6 = v0[2];

  return sub_22F0834D8(v6, v5, v3, v2);
}

uint64_t sub_22F08318C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F083280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0832A8, 0, 0);
}

uint64_t sub_22F0832A8()
{
  v1 = String.trimToNil()();
  v0[7] = v1.value._object;
  if (v1.value._object)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22F0833C8;
    v3 = v0[2];
    v4 = v0[3];

    return sub_22F0834D8(v3, v4, v1.value._countAndFlagsBits, v1.value._object);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEF60, 500);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22F0833C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F0834D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F083500, 0, 0);
}

uint64_t sub_22F083500()
{
  v75 = v0;
  v1 = v0[3];
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v70 = i;
    if (!i)
    {
      v42 = v0;
      v43 = 0x800000022F0DF050;
      v44 = 0xD000000000000011;
      goto LABEL_48;
    }

    v3 = [objc_opt_self() sharedInstance];
    v0[7] = v3;
    if (!v3)
    {
      break;
    }

    v68 = v3;
    v69 = v0;
    v4 = 0;
    v5 = v0[3];
    v73 = v1 & 0xC000000000000001;
    v74[0] = MEMORY[0x277D84F98];
    v72 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v5 + 32;
    v0 = v70;
    while (1)
    {
      if (v73)
      {
        v8 = MEMORY[0x2318FDAB0](v4, v69[3]);
      }

      else
      {
        if (v4 >= *(v72 + 16))
        {
          goto LABEL_57;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      v10 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v11 = [v8 appleID];
      if (v11 && (v12 = v11, sub_22F0D0CAC(), v12, v13 = String.trimToNil()(), , v13.value._object))
      {
        v1 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        if (v15 >= v14 >> 1)
        {
          v1 = sub_22F03C784((v14 > 1), v15 + 1, 1, v1);
        }

        *(v1 + 16) = v15 + 1;
        *(v1 + 16 * v15 + 32) = v13;
        v0 = v70;
      }

      else
      {
        v1 = MEMORY[0x277D84F90];
      }

      v7 = v9;
      sub_22F085D00(v1, v74, v7);

      ++v4;
      if (v10 == v0)
      {
        v1 = v74[0];
        v69[8] = v74[0];
        v16 = sub_22F0CFF1C();
        sub_22F0825FC(v16);
        v18 = v17;
        v69[9] = v17;

        if (qword_27DAA0570 != -1)
        {
          swift_once();
        }

        v19 = sub_22F0D0A1C();
        __swift_project_value_buffer(v19, qword_27DAA1A28);
        sub_22F0CFF1C();
        v20 = sub_22F0D09FC();
        v21 = sub_22F0D124C();

        v71 = v1;
        v67 = v18;
        if (os_log_type_enabled(v20, v21))
        {
          v1 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v74[0] = v22;
          *v1 = 136315138;
          v23 = MEMORY[0x2318FD490](v18, MEMORY[0x277D837D0]);
          v25 = sub_22F00A560(v23, v24, v74);

          *(v1 + 4) = v25;
          _os_log_impl(&dword_22EFE1000, v20, v21, "IDS handles for dev cap lookup %s", v1, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          MEMORY[0x2318FE8B0](v22, -1, -1);
          MEMORY[0x2318FE8B0](v1, -1, -1);
        }

        v26 = 0;
        v27 = MEMORY[0x277D84F98];
        while (1)
        {
          if (v73)
          {
            v28 = MEMORY[0x2318FDAB0](v26, v69[3]);
          }

          else
          {
            if (v26 >= *(v72 + 16))
            {
              goto LABEL_59;
            }

            v28 = *(v6 + 8 * v26);
          }

          v29 = v28;
          v30 = (v26 + 1);
          if (__OFADD__(v26, 1))
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74[0] = v27;
          v33 = sub_22EFFDBAC(v29);
          v34 = v27[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_60;
          }

          v1 = v32;
          if (v27[3] >= v36)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v32 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              sub_22F060614();
              v27 = v74[0];
              if ((v1 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            sub_22F07ADFC(v36, isUniquelyReferenced_nonNull_native);
            v27 = v74[0];
            v37 = sub_22EFFDBAC(v29);
            if ((v1 & 1) != (v38 & 1))
            {
              sub_22F01B924(0, &qword_280CBD148, 0x277D08268);

              return sub_22F0D191C();
            }

            v33 = v37;
            if ((v1 & 1) == 0)
            {
LABEL_36:
              v27[(v33 >> 6) + 8] |= 1 << v33;
              *(v27[6] + 8 * v33) = v29;
              *(v27[7] + 8 * v33) = MEMORY[0x277D84F90];
              v39 = v27[2];
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (v40)
              {
                goto LABEL_61;
              }

              v27[2] = v41;
              goto LABEL_24;
            }
          }

          *(v27[7] + 8 * v33) = MEMORY[0x277D84F90];

LABEL_24:
          ++v26;
          if (v30 == v0)
          {
            v45 = swift_allocObject();
            v69[10] = v45;
            *(v45 + 16) = v27;
            sub_22F0CFF1C();
            sub_22F0CFF1C();
            v46 = sub_22F0D09FC();
            v47 = sub_22F0D124C();

            if (os_log_type_enabled(v46, v47))
            {
              v49 = v69[4];
              v48 = v69[5];
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v74[0] = v51;
              *v50 = 136315394;
              *(v50 + 4) = sub_22F00A560(v49, v48, v74);
              *(v50 + 12) = 2080;
              v52 = MEMORY[0x2318FD490](v18, MEMORY[0x277D837D0]);
              v54 = sub_22F00A560(v52, v53, v74);

              *(v50 + 14) = v54;
              _os_log_impl(&dword_22EFE1000, v46, v47, "Checking for %s with %s", v50, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2318FE8B0](v51, -1, -1);
              MEMORY[0x2318FE8B0](v50, -1, -1);
            }

            v55 = v69[5];
            v56 = v69[6];
            v57 = v69[4];
            v58 = [objc_opt_self() refreshIDInfo];
            v69[11] = v58;
            [v58 setForceRefresh_];
            v59 = swift_task_alloc();
            v69[12] = v59;
            v59[2] = v68;
            v59[3] = v67;
            v59[4] = 1;
            v59[5] = v58;
            v59[6] = v56;
            v59[7] = v45;
            v59[8] = v57;
            v59[9] = v55;
            v59[10] = v71;
            v60 = swift_task_alloc();
            v69[13] = v60;
            *v60 = v69;
            v60[1] = sub_22F083D8C;
            v61 = v69[2];

            return MEMORY[0x2822007B8](v61, 0, 0, 0xD000000000000024, 0x800000022F0DF020, sub_22F0865EC, v59, &type metadata for DiscoveredHandles);
          }
        }
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v42 = v0;
  v44 = 0xD000000000000029;
  v43 = 0x800000022F0DEFD0;
LABEL_48:
  v62 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v44, v43, 500);
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v63 = sub_22F0D0A1C();
  __swift_project_value_buffer(v63, qword_27DAA1A28);
  v64 = v62;
  Logger.ifError(_:message:)(v62, 0xD000000000000017, 0x800000022F0DF000);

  swift_willThrow();
  v65 = v42[1];

  return v65();
}

uint64_t sub_22F083D8C()
{

  return MEMORY[0x2822009F8](sub_22F083EE4, 0, 0);
}

uint64_t sub_22F083EE4()
{
  v1 = *(v0 + 56);

  sub_22F0D00CC();
  v2 = *(v0 + 8);

  return v2();
}

void sub_22F083F58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v34 = a10;
  v35 = a7;
  v32 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_22F0190C4(a3);
  v38 = sub_22F0D0F2C();

  v36 = sub_22F0D0C7C();
  v31 = sub_22F0D0C7C();
  v33 = *(a6 + 32);
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v18, v17, v13);
  v23 = v34;
  *(v22 + v19) = v35;
  *(v22 + v20) = a6;
  v24 = (v22 + v21);
  v25 = v32;
  *v24 = v37;
  v24[1] = v25;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_22F086624;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F04CEB4;
  aBlock[3] = &block_descriptor_7;
  v26 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0D00CC();
  v27 = v38;
  v28 = v36;
  v29 = v31;
  [v39 idInfoForDestinations:v38 service:v36 infoTypes:v40 options:v41 listenerID:v31 queue:v33 completionBlock:v26];
  _Block_release(v26);
}

void sub_22F084230(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = a2;
    v10 = a2;
    if (qword_27DAA0570 == -1)
    {
LABEL_3:
      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_27DAA1A28);
      v12 = v9;
      Logger.ifError(_:message:)(v9, 0xD000000000000023, 0x800000022F0DF090);

      swift_beginAccess();
      v55 = *(a4 + 16);
      sub_22F0CFF1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
      sub_22F0D108C();

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  if (a1 && *(a1 + 16))
  {
    v18 = qword_27DAA0570;
    sub_22F0CFF1C();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_22F0D0A1C();
    __swift_project_value_buffer(v19, qword_27DAA1A28);
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    v20 = sub_22F0D09FC();
    v21 = sub_22F0D124C();
    sub_22F0D00CC();

    v53 = a6;
    if (os_log_type_enabled(v20, v21))
    {
      buf = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *buf = 136315138;
      sub_22F0CFFAC();
      v9 = 0;
      v22 = sub_22F085994(a1);
      sub_22F0D00CC();
      log = v20;
      v23 = MEMORY[0x2318FD490](v22, MEMORY[0x277D837D0]);
      v24 = v21;
      v26 = v25;

      v27 = sub_22F00A560(v23, v26, v54);

      *(buf + 4) = v27;
      _os_log_impl(&dword_22EFE1000, log, v24, "DevCaps: checking %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x2318FE8B0](v52, -1, -1);
      MEMORY[0x2318FE8B0](buf, -1, -1);
    }

    else
    {

      v9 = 0;
    }

    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 64);
    v36 = (v33 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    sub_22F0CFFAC();
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    v37 = 0;
    while (v35)
    {
      v38 = v37;
LABEL_25:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      sub_22F003428(*(a1 + 48) + 40 * (v39 | (v38 << 6)), v54);
      sub_22F08489C(v54, a1, v53, a7, a5, a8, (a4 + 16));
      sub_22F003484(v54);
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        sub_22F0D00CC();

        sub_22F0D00CC();
        swift_bridgeObjectRelease_n();
        goto LABEL_27;
      }

      v35 = *(a1 + 64 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v28 = sub_22F0D0A1C();
  __swift_project_value_buffer(v28, qword_27DAA1A28);
  sub_22F0CFF1C();
  v29 = sub_22F0D09FC();
  v30 = sub_22F0D124C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_22F00A560(a6, a7, v54);
    _os_log_impl(&dword_22EFE1000, v29, v30, "DevCaps: no results for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2318FE8B0](v32, -1, -1);
    MEMORY[0x2318FE8B0](v31, -1, -1);
  }

LABEL_27:
  swift_beginAccess();
  v40 = *(a4 + 16);
  v41 = qword_27DAA0570;
  sub_22F0CFF1C();
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = sub_22F0D0A1C();
  __swift_project_value_buffer(v42, qword_27DAA1A28);
  sub_22F0CFF1C();
  v43 = sub_22F0D09FC();
  v44 = sub_22F0D124C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v45 = 136315138;
    v54[5] = v40;
    v47 = DiscoveredHandles.description.getter();
    v49 = sub_22F00A560(v47, v48, &v55);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_22EFE1000, v43, v44, "DevCaps: Done with %s\n\n", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x2318FE8B0](v46, -1, -1);
    MEMORY[0x2318FE8B0](v45, -1, -1);
  }

  v55 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
  sub_22F0D108C();
}

void sub_22F08489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, id *a7)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  sub_22F003428(a1, v122);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D122C();
  if (os_log_type_enabled(v11, v12))
  {
    v110 = a2;
    v13 = swift_slowAlloc();
    v113 = a5;
    v14 = swift_slowAlloc();
    v120 = v14;
    *v13 = 136315138;
    v15 = sub_22F0D146C();
    v16 = v10;
    v18 = v17;
    sub_22F003484(v122);
    v19 = sub_22F00A560(v15, v18, &v120);
    v10 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_22EFE1000, v11, v12, "DevCaps: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v20 = v14;
    a5 = v113;
    MEMORY[0x2318FE8B0](v20, -1, -1);
    v21 = v13;
    a2 = v110;
    MEMORY[0x2318FE8B0](v21, -1, -1);

    if (!*(v110 + 16))
    {
      goto LABEL_80;
    }
  }

  else
  {

    sub_22F003484(v122);
    if (!*(a2 + 16))
    {
      goto LABEL_80;
    }
  }

  v22 = sub_22EFFDA98(a1);
  if ((v23 & 1) == 0 || (sub_22F003598(*(a2 + 56) + 32 * v22, v122), sub_22F01B924(0, &qword_27DAA1DB0, 0x277D189D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_80:
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27DAA1A28);
    sub_22F003428(a1, v122);
    v98 = sub_22F0D09FC();
    v99 = sub_22F0D124C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v120 = v101;
      *v100 = 136315138;
      v102 = sub_22F0D146C();
      v104 = v103;
      sub_22F003484(v122);
      v105 = sub_22F00A560(v102, v104, &v120);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_22EFE1000, v98, v99, "DevCaps: '%s' did not resolve to any ids endpoints", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x2318FE8B0](v101, -1, -1);
      MEMORY[0x2318FE8B0](v100, -1, -1);

      return;
    }

    goto LABEL_85;
  }

  v108 = v10;
  v24 = v120;
  v25 = [v120 endpoints];
  if (!v25)
  {

LABEL_79:
    v10 = v108;
    goto LABEL_80;
  }

  v26 = v25;
  sub_22F01B924(0, &qword_27DAA1DB8, 0x277D189C0);
  v27 = sub_22F0D0F4C();

  v107 = v27 >> 62;
  if (v27 >> 62)
  {
    goto LABEL_77;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_78:

    goto LABEL_79;
  }

  while (1)
  {
    v114 = v27;
    v106 = v24;
    if (a5[2] == a3 && a5[3] == a4)
    {
      break;
    }

    if (sub_22F0D188C())
    {
      break;
    }

    v24 = 0;
    v122[0] = MEMORY[0x277D84F90];
    v109 = v27 & 0xFFFFFFFFFFFFFF8;
    v111 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v111)
      {
        v30 = MEMORY[0x2318FDAB0](v24, v27);
      }

      else
      {
        if (v24 >= *(v109 + 16))
        {
          goto LABEL_76;
        }

        v30 = *(v27 + 8 * v24 + 32);
      }

      v31 = v30;
      v32 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v33 = [v30 capabilities];
      v34 = sub_22F0D0C7C();
      a5 = [v33 valueForCapability_];

      if (a5)
      {
        sub_22F0D15EC();
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      else
      {
      }

      v27 = v114;
      ++v24;
      if (v32 == v28)
      {
        v29 = v122[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v28 = sub_22F0D143C();
    if (!v28)
    {
      goto LABEL_78;
    }
  }

  sub_22F0CFF1C();
  v29 = v27;
LABEL_28:
  v35 = v29 >> 62;
  if (v29 >> 62)
  {
    v36 = sub_22F0D143C();
  }

  else
  {
    v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v107)
  {
    v37 = sub_22F0D143C();
  }

  else
  {
    v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F003428(a1, v122);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v38 = sub_22F0D09FC();
  v39 = sub_22F0D124C();
  if (os_log_type_enabled(v38, v39))
  {
    v112 = v37;
    v118 = v36;
    v40 = v29;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v120 = v42;
    *v41 = 136315650;
    v43 = sub_22F0D146C();
    v45 = v44;
    sub_22F003484(v122);
    v46 = sub_22F00A560(v43, v45, &v120);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    if (v35)
    {
      v47 = sub_22F0D143C();
    }

    else
    {
      v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 14) = v47;

    *(v41 + 22) = 2048;
    if (v107)
    {
      v48 = sub_22F0D143C();
    }

    else
    {
      v48 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 24) = v48;

    _os_log_impl(&dword_22EFE1000, v38, v39, "'%s' matched %ld of %ld\n", v41, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x2318FE8B0](v42, -1, -1);
    MEMORY[0x2318FE8B0](v41, -1, -1);

    v36 = v118;
    v37 = v112;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_22F003484(v122);
  }

  if (v36 != v37)
  {

    v71 = v108;
    if (qword_27DAA0570 != -1)
    {
      swift_once();
      v71 = v108;
    }

    __swift_project_value_buffer(v71, qword_27DAA1A28);
    sub_22F003428(a1, v122);
    v72 = sub_22F0D09FC();
    v73 = sub_22F0D124C();
    if (!os_log_type_enabled(v72, v73))
    {

LABEL_85:
      sub_22F003484(v122);
      return;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v120 = v75;
    *v74 = 136315138;
    v76 = sub_22F0D146C();
    v78 = v77;
    sub_22F003484(v122);
    v79 = sub_22F00A560(v76, v78, &v120);

    *(v74 + 4) = v79;
    _os_log_impl(&dword_22EFE1000, v72, v73, "'%s' not all endpoints match", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x2318FE8B0](v75, -1, -1);
    v80 = v74;
LABEL_59:
    MEMORY[0x2318FE8B0](v80, -1, -1);
    goto LABEL_72;
  }

  v122[3] = MEMORY[0x277D84030];
  v122[0] = swift_allocObject();
  sub_22F003428(a1, v122[0] + 16);
  sub_22F003598(v122, &v120);
  v120 = sub_22F0D0CFC();
  v121 = v49;
  v50 = 0xE000000000000000;
  sub_22F00901C();
  v51 = sub_22F0D137C();
  v53 = v52;

  v120 = v51;
  v121 = v53;
  v54 = sub_22F0D137C();
  v56 = v55;

  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  if (!*(a6 + 16) || (v57 = sub_22EFFDA80(v54, v56), (v58 & 1) == 0))
  {

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v108, qword_27DAA1A28);
    sub_22F0CFF1C();
    v72 = sub_22F0D09FC();
    v81 = sub_22F0D123C();

    if (!os_log_type_enabled(v72, v81))
    {

      goto LABEL_72;
    }

    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v122[0] = v83;
    *v82 = 136315138;
    v84 = sub_22F00A560(v54, v56, v122);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_22EFE1000, v72, v81, "%s can't locate person!", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x2318FE8B0](v83, -1, -1);
    v80 = v82;
    goto LABEL_59;
  }

  v59 = *(*(a6 + 56) + 8 * v57);
  swift_beginAccess();
  v60 = v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = *a7;
  v62 = v120;
  *a7 = 0x8000000000000000;
  v64 = sub_22EFFDBAC(v60);
  v65 = v62[2];
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
    __break(1u);
    goto LABEL_88;
  }

  v68 = v63;
  if (v62[3] >= v67)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a7 = v62;
      if (v63)
      {
        goto LABEL_65;
      }
    }

    else
    {
      sub_22F060614();
      v62 = v120;
      *a7 = v120;
      if (v68)
      {
LABEL_65:
        v50 = v62[7];
        v62 = *(v50 + 8 * v64);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        *(v50 + 8 * v64) = v62;
        if (v86)
        {
LABEL_66:
          v88 = v62[2];
          v87 = v62[3];
          if (v88 >= v87 >> 1)
          {
            v62 = sub_22F03C784((v87 > 1), v88 + 1, 1, v62);
            *(v50 + 8 * v64) = v62;
          }

          v62[2] = v88 + 1;
          v89 = &v62[2 * v88];
          v89[4] = v54;
          v89[5] = v56;
          swift_endAccess();
          sub_22F0CFF1C();

          if (qword_27DAA0570 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v108, qword_27DAA1A28);
          v72 = v60;
          sub_22F0CFF1C();
          v90 = sub_22F0D09FC();
          v91 = sub_22F0D122C();

          if (!os_log_type_enabled(v90, v91))
          {

            goto LABEL_73;
          }

          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v122[0] = v93;
          *v92 = 136315394;
          v94 = FAFamilyMember.displayNameWithFallback.getter();
          v96 = sub_22F00A560(v94, v95, v122);

          *(v92 + 4) = v96;
          *(v92 + 12) = 2080;
          v97 = sub_22F00A560(v54, v56, v122);

          *(v92 + 14) = v97;
          _os_log_impl(&dword_22EFE1000, v90, v91, "%s += %s", v92, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318FE8B0](v93, -1, -1);
          MEMORY[0x2318FE8B0](v92, -1, -1);

LABEL_72:
LABEL_73:

          return;
        }

LABEL_88:
        v62 = sub_22F03C784(0, v62[2] + 1, 1, v62);
        *(v50 + 8 * v64) = v62;
        goto LABEL_66;
      }
    }

LABEL_64:
    sub_22F018620(v64, v60, MEMORY[0x277D84F90], v62);
    v85 = v60;
    goto LABEL_65;
  }

  sub_22F07ADFC(v67, isUniquelyReferenced_nonNull_native);
  v62 = v120;
  v69 = sub_22EFFDBAC(v60);
  if ((v68 & 1) == (v70 & 1))
  {
    v64 = v69;
    *a7 = v62;
    if (v68)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  sub_22F01B924(0, &qword_280CBD148, 0x277D08268);
  sub_22F0D191C();
  __break(1u);
}

uint64_t MessageDeviceCapabilityLookup.deinit()
{

  return v0;
}

uint64_t MessageDeviceCapabilityLookup.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F085770(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22F085798, 0, 0);
}

uint64_t sub_22F085798()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22F08671C;
  v5 = v0[3];
  v6 = v0[2];

  return sub_22F0834D8(v6, v5, v3, v2);
}

uint64_t sub_22F085848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_22F085874, 0, 0);
}

uint64_t sub_22F085874()
{
  v1 = String.trimToNil()();
  v0[7] = v1.value._object;
  if (v1.value._object)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_22F086720;
    v3 = v0[2];
    v4 = v0[3];

    return sub_22F0834D8(v3, v4, v1.value._countAndFlagsBits, v1.value._object);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEF60, 500);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22F085994(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v2, 0);
    v33 = v38;
    v4 = v1 + 64;
    result = sub_22F0D13FC();
    v5 = result;
    v6 = 0;
    v27 = v1 + 72;
    v28 = v2;
    v29 = v1 + 64;
    v30 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      v31 = v6;
      v32 = *(v1 + 36);
      sub_22F003428(*(v1 + 48) + 40 * v5, v37);
      v36[3] = MEMORY[0x277D84030];
      v36[0] = swift_allocObject();
      sub_22F003428(v37, v36[0] + 16);
      sub_22F003598(v36, &v34);
      v34 = sub_22F0D0CFC();
      v35 = v9;
      sub_22F00901C();
      v10 = sub_22F0D137C();
      v12 = v11;

      v34 = v10;
      v35 = v12;
      v13 = sub_22F0D137C();
      v15 = v14;

      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      result = sub_22F003484(v37);
      v16 = v33;
      v38 = v33;
      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22EFFC4E8((v17 > 1), v18 + 1, 1);
        v16 = v38;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v1 = v30;
      v7 = 1 << *(v30 + 32);
      if (v5 >= v7)
      {
        goto LABEL_23;
      }

      v4 = v29;
      v20 = *(v29 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v33 = v16;
      if (v32 != *(v30 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (v27 + 8 * v8);
        while (v23 < (v7 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22F0097CC(v5, v32, 0);
            v7 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22F0097CC(v5, v32, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v7;
      if (v31 + 1 == v28)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_22F085D00(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 40); ; i += 2)
  {
    v37 = v3;
    v6 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *a2;
    v10 = v39;
    *a2 = 0x8000000000000000;
    v11 = sub_22EFFDA80(v6, v7);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      sub_22F07BF20(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_22EFFDA80(v6, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      v19 = v39;
      if (v17)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v22 = v11;
    sub_22F0611A8();
    v11 = v22;
    v19 = v39;
    if (v17)
    {
LABEL_10:
      v20 = v19[7];
      v21 = *(v20 + 8 * v11);
      *(v20 + 8 * v11) = v8;

      goto LABEL_14;
    }

LABEL_12:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v19[6] + 16 * v11);
    *v23 = v6;
    v23[1] = v7;
    *(v19[7] + 8 * v11) = v8;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v19[2] = v25;
LABEL_14:
    *a2 = v19;
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v26 = sub_22F0D0A1C();
    __swift_project_value_buffer(v26, qword_27DAA1A28);
    sub_22F0CFF1C();
    v27 = v8;
    v28 = sub_22F0D09FC();
    v29 = sub_22F0D124C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315394;
      v32 = FAFamilyMember.displayNameWithFallback.getter();
      v34 = sub_22F00A560(v32, v33, &v39);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_22F00A560(v6, v7, &v39);
      _os_log_impl(&dword_22EFE1000, v28, v29, "Checking IDS for %s with registered %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v31, -1, -1);
      v35 = v30;
      v4 = a3;
      MEMORY[0x2318FE8B0](v35, -1, -1);
    }

    v3 = v37 - 1;
    if (v37 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F08602C(uint64_t *a1, int a2)
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

uint64_t sub_22F086074(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of MessageDeviceCapabilityLookupProvider.buildIMessageCompatibilityList(people:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F00CF60;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookupProvider.buildCompatibilityList(people:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22F00CF60;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookup.buildIMessageCompatibilityList(people:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22F00CF60;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookup.buildCompatibilityList(people:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22F00CD54;

  return v12(a1, a2, a3, a4);
}

void sub_22F086624(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *(v2 + v9 + 8);
  v14 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_22F084230(a1, a2, v2 + v6, v10, v11, v12, v13, v14);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

id sub_22F086724()
{
  result = sub_22F086850(0xD000000000000018, 0x800000022F0DF190, 407);
  qword_27DAACEC8 = result;
  return result;
}

id sub_22F086760()
{
  result = sub_22F086850(0xD00000000000002ALL, 0x800000022F0DF130, 502);
  qword_27DAACED0 = result;
  return result;
}

id sub_22F08679C()
{
  result = sub_22F086850(0xD000000000000027, 0x800000022F0DF160, 420);
  qword_27DAACED8 = result;
  return result;
}

id sub_22F0867D8()
{
  result = sub_22F086850(0xD00000000000002CLL, 0x800000022F0DF0E0, 420);
  qword_27DAACEE0 = result;
  return result;
}

id sub_22F086814()
{
  result = sub_22F086850(0xD000000000000020, 0x800000022F0DF1B0, 500);
  qword_27DAACEE8 = result;
  return result;
}

id sub_22F086850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC0, &qword_22F0D94F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = sub_22F0D0CAC();
  *(inited + 40) = v6;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v18 = a2;
  v9 = sub_22F0D031C();
  v11 = v10;

  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = sub_22F07D584(inited);
  swift_setDeallocating();
  sub_22F086A04(inited + 32);
  sub_22F00DD94(v12);

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_22F0D0C7C();
  v15 = sub_22F0D0AEC();

  v16 = [v13 initWithDomain:v14 code:a3 userInfo:{v15, v18}];

  return v16;
}

uint64_t sub_22F086A04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC8, &qword_22F0D9500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL LocationItem.expired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocationItem(0);
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v15;
  sub_22F0D05AC();
  v40 = v2;
  if (qword_27DAA0658 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27DAA2228);
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v5 + 8))(v7, v4);
  sub_22F0D054C();
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v17 = sub_22F0D0A1C();
  __swift_project_value_buffer(v17, qword_280CBDB50);
  v18 = v42;
  sub_22F08A2D4(v1, v42);
  v19 = *(v9 + 16);
  v20 = v41;
  v44 = v14;
  v19(v41, v14, v8);
  v21 = sub_22F0D09FC();
  v22 = sub_22F0D122C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v23 = 136315394;
    sub_22F08A338(&qword_27DAA1670, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v24 = sub_22F0D183C();
    v26 = v25;
    sub_22F08A380(v18, type metadata accessor for LocationItem);
    v27 = sub_22F00A560(v24, v26, &v45);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_22F0D183C();
    v30 = v29;
    v31 = *(v9 + 8);
    v31(v20, v8);
    v32 = sub_22F00A560(v28, v30, &v45);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_22EFE1000, v21, v22, "LocationItem from %s expires %s", v23, 0x16u);
    v33 = v39;
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v33, -1, -1);
    MEMORY[0x2318FE8B0](v23, -1, -1);
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v20, v8);
    sub_22F08A380(v18, type metadata accessor for LocationItem);
  }

  sub_22F08A338(&qword_27DAA13D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v35 = v43;
  v34 = v44;
  v36 = sub_22F0D0BBC();
  v31(v34, v8);
  v31(v35, v8);
  return (v36 & 1) == 0;
}

uint64_t LocationItem.description.getter()
{
  v1 = *(v0 + 16);
  sub_22F0CFF1C();
  return v1;
}

id LocationItem.init(with:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_22F0D01DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for LocationItem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA0, &qword_22F0D4F80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F0D6710;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v25 = v12;
  *(a4 + v12) = v13;
  *a4 = a2;
  a4[1] = a3;
  if (a1[1])
  {
    v14 = *a1;
    v15 = a1[1];
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v26 = v14;
  v27 = v15;
  sub_22F0CFF1C();
  sub_22F0D01CC();
  sub_22F00901C();
  v16 = sub_22F0D136C();
  v18 = v17;
  (*(v9 + 8))(v11, v8);

  a4[2] = v16;
  a4[3] = v18;
  sub_22F0D05AC();
  v19 = *(a1 + *(type metadata accessor for PeopleLocation(0) + 32));
  result = [v19 coordinate];
  if (*(v13 + 16))
  {
    *(v13 + 32) = v21;
    [v19 coordinate];
    v23 = v22;
    result = sub_22F08A380(a1, type metadata accessor for PeopleLocation);
    if (*(v13 + 16) >= 2uLL)
    {
      *(v13 + 40) = v23;
      *(a4 + v25) = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static LocationItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_22F0D188C(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_22F0D188C();
    }
  }

  return result;
}

void LocationItem.hasMoved(from:)(uint64_t a1)
{
  v3 = type metadata accessor for LocationItem(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v55 - v11);
  v13 = *(a1 + *(v10 + 28));
  v14 = *(v13 + 16);
  if (!v14)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v14 == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v13 + 32) longitude:*(v13 + 40)];
  [v15 coordinate];
  v17 = v16;

  if (v17 == 0.0)
  {
    goto LABEL_7;
  }

  v18 = *(v13 + 16);
  if (!v18)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v18 == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v13 + 32) longitude:*(v13 + 40)];
  [v19 coordinate];
  v17 = v20;

  if (v17 != 0.0)
  {
    v26 = *(v1 + *(v3 + 28));
    v27 = *(v26 + 16);
    if (v27)
    {
      if (v27 != 1)
      {
        v17 = *(v26 + 32);
        v28 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v17 longitude:*(v26 + 40)];
        v29 = *(v13 + 16);
        if (v29)
        {
          if (v29 != 1)
          {
            v30 = v28;
            v31 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v13 + 32) longitude:*(v13 + 40)];
            [v30 distanceFromLocation_];
            v17 = v32;

            if (qword_27DAA04D8 == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          swift_once();
LABEL_16:
          v33 = *(off_27DAA1450 + 9);
          v58 = v33 <= v17;
          if (qword_280CBDB48 != -1)
          {
            swift_once();
          }

          v34 = sub_22F0D0A1C();
          __swift_project_value_buffer(v34, qword_280CBDB50);
          sub_22F08A2D4(v1, v12);
          sub_22F08A2D4(v1, v9);
          sub_22F08A2D4(a1, v6);
          v35 = sub_22F0D09FC();
          v36 = sub_22F0D124C();
          if (!os_log_type_enabled(v35, v36))
          {

            sub_22F08A380(v12, type metadata accessor for LocationItem);
            sub_22F08A380(v6, type metadata accessor for LocationItem);
            sub_22F08A380(v9, type metadata accessor for LocationItem);
            return;
          }

          v57 = v36;
          v37 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v61 = v56;
          *v37 = 136316418;
          *(v37 + 4) = sub_22F00A560(0x6465766F4D736168, 0xEF293A6D6F726628, &v61);
          *(v37 + 12) = 2080;
          v38 = *v12;
          v39 = v12[1];
          sub_22F0CFF1C();
          sub_22F08A380(v12, type metadata accessor for LocationItem);
          v40 = sub_22F00A560(v38, v39, &v61);

          *(v37 + 14) = v40;
          *(v37 + 22) = 2080;
          v41 = *&v9[*(v3 + 28)];
          v42 = *(v41 + 16);
          if (v42)
          {
            v55 = v35;
            if (v42 != 1)
            {
              v43 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v41 + 32) longitude:*(v41 + 40)];
              v59 = 0;
              v60 = 0xE000000000000000;
              [v43 coordinate];
              sub_22F0D111C();
              MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
              [v43 &protocolRef_NSCopying];
              sub_22F0D111C();

              v44 = v59;
              v45 = v60;
              sub_22F08A380(v9, type metadata accessor for LocationItem);
              v46 = sub_22F00A560(v44, v45, &v61);

              *(v37 + 24) = v46;
              *(v37 + 32) = 2080;
              v47 = *&v6[*(v3 + 28)];
              v48 = *(v47 + 16);
              if (v48)
              {
                if (v48 != 1)
                {
                  v49 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v47 + 32) longitude:*(v47 + 40)];
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  [v49 coordinate];
                  sub_22F0D111C();
                  MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
                  [v49 coordinate];
                  sub_22F0D111C();

                  v50 = v59;
                  v51 = v60;
                  sub_22F08A380(v6, type metadata accessor for LocationItem);
                  v52 = sub_22F00A560(v50, v51, &v61);

                  *(v37 + 34) = v52;
                  *(v37 + 42) = 2048;
                  *(v37 + 44) = v17;
                  *(v37 + 52) = 1024;
                  *(v37 + 54) = v33 <= v17;
                  v53 = v55;
                  _os_log_impl(&dword_22EFE1000, v55, v57, "%s %s [%s] vs [%s] is %f apart, moved: %{BOOL}d", v37, 0x3Au);
                  v54 = v56;
                  swift_arrayDestroy();
                  MEMORY[0x2318FE8B0](v54, -1, -1);
                  MEMORY[0x2318FE8B0](v37, -1, -1);

                  return;
                }

                goto LABEL_38;
              }

LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_7:
  if (qword_280CBDB48 != -1)
  {
LABEL_27:
    swift_once();
  }

  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBDB50);
  v22 = sub_22F0D09FC();
  v23 = sub_22F0D124C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22F00A560(0x6465766F4D736168, 0xEF293A6D6F726628, &v59);
    _os_log_impl(&dword_22EFE1000, v22, v23, "%s incoming coord is nullIsland, returning changed", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v24, -1, -1);
  }
}

uint64_t sub_22F087A7C()
{
  v1 = 0x656C646E6168;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x676E6C74616C5FLL;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F087AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F08AA44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F087B14(uint64_t a1)
{
  v2 = sub_22F08A3E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F087B50(uint64_t a1)
{
  v2 = sub_22F08A3E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DD0, &qword_22F0D9510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F08A3E0();
  sub_22F0D19FC();
  v15 = 0;
  sub_22F0D17CC();
  if (!v2)
  {
    v14 = 1;
    sub_22F0D17CC();
    v10 = type metadata accessor for LocationItem(0);
    v13 = 2;
    sub_22F0D05BC();
    sub_22F08A338(&qword_280CBDC10, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22F0D180C();
    v12 = *(v3 + *(v10 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DE0, &qword_22F0D9518);
    sub_22F08A434(&qword_27DAA1DE8, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
    sub_22F0D180C();
  }

  return (*(v6 + 8))(v8, v5);
}

void LocationItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_22F0D05BC();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DF0, &qword_22F0D9520);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LocationItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F08A3E0();
  v22 = v8;
  v12 = v23;
  sub_22F0D19EC();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = v20;
    v28 = 0;
    *v11 = sub_22F0D177C();
    v11[1] = v14;
    v23 = v14;
    v27 = 1;
    v11[2] = sub_22F0D177C();
    v11[3] = v15;
    v26 = 2;
    sub_22F08A338(&unk_280CBDC00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v17 = 0;
    sub_22F0D17BC();
    (*(v19 + 32))(v11 + *(v9 + 24), v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DE0, &qword_22F0D9518);
    v25 = 3;
    sub_22F08A434(&qword_27DAA1DF8, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    sub_22F0D17BC();
    v16 = *(v9 + 28);
    (*(v13 + 8))(v22, v21);
    *(v11 + v16) = v24;
    sub_22F08A2D4(v11, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_22F08A380(v11, type metadata accessor for LocationItem);
  }
}

uint64_t sub_22F0882AC(uint64_t *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_22F0D188C(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_22F0D188C();
    }
  }

  return result;
}

uint64_t sub_22F088334()
{
  type metadata accessor for LocalLocationCache(0);
  v0 = swift_allocObject();
  result = sub_22F0885FC();
  qword_280CBD628 = v0;
  return result;
}

uint64_t static LocalLocationCache.shared.getter()
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F0CFFAC();
}

uint64_t static LocalLocationCache.shared.setter(uint64_t a1)
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CBD628 = a1;
  return sub_22F0D00CC();
}

uint64_t (*static LocalLocationCache.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F0884F4@<X0>(void *a1@<X8>)
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280CBD628;
  return sub_22F0CFFAC();
}

uint64_t sub_22F088574(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280CBD620;
  sub_22F0CFFAC();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CBD628 = v1;
  return sub_22F0D00CC();
}

uint64_t sub_22F0885FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v82 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v75 - v5;
  v6 = sub_22F0D043C();
  v7 = MEMORY[0x28223BE20](v6);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v75 - v9;
  v84 = v11;
  v85 = v10;
  v12 = *(v11 + 56);
  v86 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  v79 = v12;
  v80 = v11 + 56;
  (v12)(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, 1, 1);
  v13 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  v14 = sub_22F07DB98(MEMORY[0x277D84F90]);
  v87 = v13;
  *(v1 + v13) = v14;
  if (qword_280CBEF20 != -1)
  {
LABEL_38:
    swift_once();
  }

  v15 = [qword_280CBEF28 dictionaryRepresentation];
  v16 = sub_22F0D0AFC();

  v17 = 0;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v17;
    if (!v20)
    {
      break;
    }

LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (*(v16 + 48) + ((v17 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    sub_22F0CFF1C();
    if (sub_22F088E74(1684957542, 0xE400000000000000, v27, v26))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22EFFC4E8(0, *(v22 + 16) + 1, 1);
        v22 = v89[0];
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v77 = v30 + 1;
        v76 = v30;
        sub_22EFFC4E8((v29 > 1), v30 + 1, 1);
        v31 = v77;
        v30 = v76;
        v22 = v89[0];
      }

      *(v22 + 16) = v31;
      v32 = v22 + 16 * v30;
      *(v32 + 32) = v27;
      *(v32 + 40) = v26;
    }

    else
    {
    }
  }

  while (1)
  {
    v17 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v17 >= v21)
    {
      break;
    }

    v20 = *(v16 + 64 + 8 * v17);
    ++v23;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  sub_22F0D00CC();
  v33 = *(v22 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = v22 + 40;
    while (v34 < *(v22 + 16))
    {
      ++v34;
      v36 = qword_280CBEF28;
      sub_22F0CFF1C();
      v37 = v36;
      v38 = sub_22F0D0C7C();
      [v37 removeObjectForKey_];

      v35 += 16;
      if (v33 == v34)
      {
        sub_22F0D00CC();
        [qword_280CBEF28 synchronize];
        goto LABEL_22;
      }
    }

    goto LABEL_37;
  }

  sub_22F0D00CC();
LABEL_22:
  v39 = v83;
  static PeopleSharedDirectory.cacheFolder(create:)(1, v83);
  v40 = v84;
  v41 = v85;
  v42 = *(v84 + 48);
  if (v42(v39, 1, v85) == 1)
  {
    sub_22F003A4C(v39, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v43 = sub_22F0D0A1C();
    __swift_project_value_buffer(v43, qword_280CBEC40);
    v44 = sub_22F0D09FC();
    v45 = sub_22F0D123C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v89[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_22F00A560(0x292874696E69, 0xE600000000000000, v89);
      _os_log_impl(&dword_22EFE1000, v44, v45, "%s failed to create cache file", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2318FE8B0](v47, -1, -1);
      v48 = v46;
      v41 = v85;
      MEMORY[0x2318FE8B0](v48, -1, -1);
    }
  }

  else
  {
    v49 = v81;
    (*(v40 + 32))(v81, v39, v41);
    v50 = v82;
    sub_22F0D03BC();
    v79(v50, 0, 1, v41);
    v51 = v86;
    swift_beginAccess();
    sub_22F08AD1C(v50, v1 + v51);
    swift_endAccess();
    v52 = sub_22F089400();
    (*(v40 + 8))(v49, v41);
    v53 = v87;
    swift_beginAccess();
    *(v1 + v53) = v52;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v54 = sub_22F0D0A1C();
  __swift_project_value_buffer(v54, qword_280CBEC40);
  sub_22F0CFFAC();
  v55 = sub_22F0D09FC();
  v56 = sub_22F0D122C();
  sub_22F0D00CC();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v86;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v88 = v60;
    *v59 = 136315394;
    *(v59 + 4) = sub_22F00A560(0x292874696E69, 0xE600000000000000, &v88);
    *(v59 + 12) = 2080;
    swift_beginAccess();
    v61 = v42(v1 + v58, 1, v41);
    v62 = 0;
    v63 = v58;
    v64 = v41;
    v65 = 0;
    if (!v61)
    {
      v66 = v84;
      v67 = v78;
      (*(v84 + 16))(v78, v1 + v63, v64);
      v62 = sub_22F0D038C();
      v65 = v68;
      (*(v66 + 8))(v67, v64);
    }

    v89[0] = v62;
    v89[1] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D8, &unk_22F0D6A00);
    v69 = sub_22F0D0CFC();
    v71 = sub_22F00A560(v69, v70, &v88);

    *(v59 + 14) = v71;
    _os_log_impl(&dword_22EFE1000, v55, v56, "%s path %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v60, -1, -1);
    MEMORY[0x2318FE8B0](v59, -1, -1);
  }

  v72 = sub_22F089400();
  v73 = v87;
  swift_beginAccess();
  *(v1 + v73) = v72;

  return v1;
}

uint64_t sub_22F088E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v4 = sub_22F0D0D9C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_22F0D0D9C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_22F0D188C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_22F0D0D9C();
      v7 = v9;
    }

    while (v9);
  }

  sub_22F0D0D9C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_22F088FD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = sub_22F0D043C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  swift_beginAccess();
  sub_22F036154(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22F003A4C(v4, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_280CBEC40);
    v11 = sub_22F0D09FC();
    v12 = sub_22F0D123C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22F00A560(0x292865766173, 0xE600000000000000, v20);
      _os_log_impl(&dword_22EFE1000, v11, v12, "%s failed to get directory", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318FE8B0](v14, -1, -1);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_22F0D016C();
    swift_allocObject();
    sub_22F0D015C();
    v15 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
    swift_beginAccess();
    v19[1] = *(v1 + v15);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08AC60();
    v16 = sub_22F0D014C();
    v18 = v17;
    sub_22F0D00CC();

    sub_22F0D04AC();
    (*(v6 + 8))(v8, v5);
    sub_22F00AB5C(v16, v18);
  }
}

void *sub_22F089400()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_22F0D043C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  swift_beginAccess();
  sub_22F036154(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22F003A4C(v3, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v9 = sub_22F0D0A1C();
    __swift_project_value_buffer(v9, qword_280CBEC40);
    v10 = sub_22F0D09FC();
    v11 = sub_22F0D123C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22F00A560(0x292864616F6CLL, 0xE600000000000000, &v25);
      _os_log_impl(&dword_22EFE1000, v10, v11, "%s failed to get directory", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }

    return sub_22F07DB98(MEMORY[0x277D84F90]);
  }

  (*(v5 + 32))(v7, v3, v4);
  v15 = sub_22F0D044C();
  v17 = v15;
  v18 = v16;
  v19 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v19 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v19)
  {
    if ((v16 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    sub_22F0D013C();
    swift_allocObject();
    sub_22F0D012C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08ABA4();
    sub_22F0D011C();
    (*(v5 + 8))(v7, v4);
    sub_22F00AB5C(v17, v18);
    sub_22F0D00CC();
    return v25;
  }

  if (v15 != v15 >> 32)
  {
    goto LABEL_13;
  }

LABEL_15:
  v20 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DF260, 500);
  swift_willThrow();
  sub_22F00AB5C(v17, v18);
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBEC40);
  v22 = v20;
  Logger.ifError(_:message:)(v20, 0xD00000000000001DLL, 0x800000022F0DF220);

  v23 = sub_22F07DB98(MEMORY[0x277D84F90]);
  (*(v5 + 8))(v7, v4);
  return v23;
}

void sub_22F0898A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocationItem(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = (&v35 - v9);
  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_15:
    sub_22F088FD0();
    return;
  }

  v11 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    v36 = v10;
    v16 = v35;
    sub_22F08A2D4(v12, v35);
    v18 = *v16;
    v17 = v16[1];
    swift_beginAccess();
    v19 = v7;
    sub_22F08A4A0(v16, v7);
    sub_22F0CFF1C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v2 + v11);
    v21 = v37;
    v22 = v2;
    *(v2 + v11) = 0x8000000000000000;
    v23 = sub_22EFFDA80(v18, v17);
    v25 = v21[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v21[3] < v28)
    {
      sub_22F07BF34(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22EFFDA80(v18, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v7 = v19;
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v34 = v23;
    sub_22F0611BC();
    v23 = v34;
    v7 = v19;
    if (v29)
    {
LABEL_3:
      v14 = v23;

      v15 = v37;
      sub_22F08A504(v7, v37[7] + v14 * v13);
      goto LABEL_4;
    }

LABEL_11:
    v15 = v37;
    v37[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v15[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v17;
    sub_22F08A4A0(v7, v15[7] + v23 * v13);
    v32 = v15[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v15[2] = v33;
LABEL_4:
    v2 = v22;
    *(v22 + v11) = v15;

    swift_endAccess();
    v12 += v13;
    v10 = v36 - 1;
    if (v36 == 1)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F089B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22F0D01DC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_22F0D05BC();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for LocationItem(0);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_22F0D10AC();
  v4[20] = sub_22F0D109C();
  v9 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F089D08, v9, v8);
}

id sub_22F089D08()
{
  v1 = v0[10];
  sub_22F0D00CC();
  v2 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
LABEL_5:
    v10 = v0[17];
    v31 = v10;
    v32 = v0[16];
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v33 = v0[11];
    v34 = v0[14];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];
    v17 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
    sub_22F0D04EC();
    v18 = *(v10 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA0, &qword_22F0D4F80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22F0D6710;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
    *&v16[v18] = v19;
    *v16 = v15;
    *(v16 + 1) = v14;
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_22F0CFF1C();
    sub_22F0D01CC();
    sub_22F00901C();
    v20 = sub_22F0D136C();
    v22 = v21;
    (*(v12 + 8))(v13, v33);
    *(v16 + 2) = v20;
    *(v16 + 3) = v22;
    (*(v11 + 16))(&v16[*(v31 + 24)], v32, v34);
    result = [v17 coordinate];
    if (*(v19 + 16))
    {
      v26 = v0[15];
      v25 = v0[16];
      v27 = v0[14];
      *(v19 + 32) = v24;
      [v17 coordinate];
      v29 = v28;

      result = (*(v26 + 8))(v25, v27);
      if (*(v19 + 16) >= 2uLL)
      {
        *(v19 + 40) = v29;
        *&v16[v18] = v19;
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v5 = v0[8];
  v4 = v0[9];
  sub_22F0CFF1C();
  v6 = sub_22EFFDA80(v5, v4);
  if ((v7 & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = v0[19];
  v9 = v0[7];
  sub_22F08A2D4(*(v3 + 56) + *(v0[18] + 72) * v6, v8);

  sub_22F08A4A0(v8, v9);
LABEL_8:

  v30 = v0[1];

  return v30();
}

void sub_22F089FAC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E00, &unk_22F0D9530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
    v9 = (a1 + 40);
    v23 = &v22 - v5;
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      swift_beginAccess();
      sub_22F0CFF1C();
      v13 = sub_22EFFDA80(v12, v11);
      if (v14)
      {
        v15 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v2 + v8);
        v24 = v17;
        *(v2 + v8) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22F0611BC();
          v17 = v24;
        }

        v18 = *(v17 + 56);
        v19 = type metadata accessor for LocationItem(0);
        v20 = *(v19 - 8);
        v21 = v18 + *(v20 + 72) * v15;
        v6 = v23;
        sub_22F08A4A0(v21, v23);
        sub_22F05F634(v15, v17);
        *(v2 + v8) = v17;

        (*(v20 + 56))(v6, 0, 1, v19);
      }

      else
      {
        v10 = type metadata accessor for LocationItem(0);
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      }

      sub_22F003A4C(v6, &qword_27DAA1E00, &unk_22F0D9530);
      swift_endAccess();

      v9 += 2;
      --v7;
    }

    while (v7);
  }

  sub_22F088FD0();
}

uint64_t LocalLocationCache.deinit()
{
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, &qword_27DAA10F8, &qword_22F0D5320);

  return v0;
}

uint64_t LocalLocationCache.__deallocating_deinit()
{
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, &qword_27DAA10F8, &qword_22F0D5320);

  return swift_deallocClassInstance();
}

uint64_t sub_22F08A2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F08A338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F08A380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F08A3E0()
{
  result = qword_27DAA1DD8;
  if (!qword_27DAA1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1DD8);
  }

  return result;
}

uint64_t sub_22F08A434(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1DE0, &qword_22F0D9518);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F08A4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F08A504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F08A590(uint64_t a1)
{
  sub_22F0D05BC();
  if (v1 <= 0x3F)
  {
    sub_22F08A624();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F08A624()
{
  if (!qword_280CBD160)
  {
    v0 = sub_22F0D103C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBD160);
    }
  }
}

void sub_22F08A69C(uint64_t a1)
{
  sub_22F08A8D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LocalLocationCache.load(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22F00CD54;

  return v10(a1, a2, a3);
}

void sub_22F08A8D4(uint64_t a1)
{
  if (!qword_280CBDC18)
  {
    sub_22F0D043C();
    v1 = sub_22F0D132C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CBDC18);
    }
  }
}

unint64_t sub_22F08A940()
{
  result = qword_27DAA1E08;
  if (!qword_27DAA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E08);
  }

  return result;
}

unint64_t sub_22F08A998()
{
  result = qword_27DAA1E10;
  if (!qword_27DAA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E10);
  }

  return result;
}

unint64_t sub_22F08A9F0()
{
  result = qword_27DAA1E18;
  if (!qword_27DAA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E18);
  }

  return result;
}

uint64_t sub_22F08AA44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F0D188C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_22F0D188C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F0D188C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6C74616C5FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F0D188C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_22F08ABA4()
{
  result = qword_27DAA1E28;
  if (!qword_27DAA1E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08A338(&qword_27DAA1E30, type metadata accessor for LocationItem, &protocol conformance descriptor for LocationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E28);
  }

  return result;
}

unint64_t sub_22F08AC60()
{
  result = qword_280CBD190;
  if (!qword_280CBD190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08A338(&qword_280CBD768, type metadata accessor for LocationItem, &protocol conformance descriptor for LocationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD190);
  }

  return result;
}

uint64_t sub_22F08AD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AMSBagHelper.isTrustedDomain(for:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_22F0D043C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D042C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22F003A4C(v6, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_27DAA1A28);
    sub_22F0CFF1C();
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D123C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_22F00A560(a1, a2, &v19);
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s unable to be validated", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318FE8B0](v15, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v16 = sub_22F08B03C(v10);
    (*(v8 + 8))(v10, v7);
  }

  return v16 & 1;
}

uint64_t sub_22F08B03C(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = sub_22F0D043C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v76 - v7;
  v83 = sub_22F0D01DC();
  v9 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22F0D037C();
  v82 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D041C();
  if (!v13)
  {
    goto LABEL_31;
  }

  v84 = v6;
  v14 = sub_22F0D0D0C();
  v16 = v15;

  if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
  {

    v17 = v9;
    v18 = v8;
    goto LABEL_6;
  }

  v19 = sub_22F0D188C();

  v17 = v9;
  v18 = v8;
  v6 = v84;
  if ((v19 & 1) == 0)
  {
LABEL_31:
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v55 = sub_22F0D0A1C();
    __swift_project_value_buffer(v55, qword_27DAA1A28);
    (*(v3 + 16))(v6, a1, v2);
    v56 = sub_22F0D09FC();
    v57 = sub_22F0D123C();
    if (!os_log_type_enabled(v56, v57))
    {

      (*(v3 + 8))(v6, v2);
LABEL_45:
      v44 = 0;
      return v44 & 1;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v91 = v59;
    *v58 = 136315138;
    v60 = sub_22F0D038C();
    v62 = v61;
    (*(v3 + 8))(v6, v2);
    v63 = sub_22F00A560(v60, v62, &v91);

    *(v58 + 4) = v63;
    v64 = "%s bad scheme";
LABEL_40:
    _os_log_impl(&dword_22EFE1000, v56, v57, v64, v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x2318FE8B0](v59, -1, -1);
    MEMORY[0x2318FE8B0](v58, -1, -1);

    goto LABEL_45;
  }

LABEL_6:
  v84 = sub_22F0D03FC();
  if (!v20)
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v65 = sub_22F0D0A1C();
    __swift_project_value_buffer(v65, qword_27DAA1A28);
    (*(v3 + 16))(v18, a1, v2);
    v56 = sub_22F0D09FC();
    v57 = sub_22F0D123C();
    if (!os_log_type_enabled(v56, v57))
    {

      (*(v3 + 8))(v18, v2);
      goto LABEL_45;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v91 = v59;
    *v58 = 136315138;
    v66 = sub_22F0D038C();
    v68 = v67;
    (*(v3 + 8))(v18, v2);
    v69 = sub_22F00A560(v66, v68, &v91);

    *(v58 + 4) = v69;
    v64 = "%s can't determine host";
    goto LABEL_40;
  }

  v21 = v20;
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v22 = sub_22F0D0A1C();
  __swift_project_value_buffer(v22, qword_27DAA1A28);
  sub_22F0CFF1C();
  v23 = sub_22F0D09FC();
  v24 = sub_22F0D124C();

  v25 = os_log_type_enabled(v23, v24);
  v79 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v91 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_22F00A560(v84, v21, &v91);
    _os_log_impl(&dword_22EFE1000, v23, v24, "Validating domain: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2318FE8B0](v27, -1, -1);
    MEMORY[0x2318FE8B0](v26, -1, -1);
  }

  v28 = sub_22F0D0C7C();
  v29 = sub_22F0D0C7C();
  v30 = sub_22F0D0C7C();
  v31 = [objc_opt_self() bagForProfile:v29 profileVersion:v30];

  v32 = [v31 arrayForKey_];
  *&v91 = 0;
  v80 = v32;
  v33 = [v32 valueWithError_];
  if (!v33)
  {
    v70 = v91;

    v71 = sub_22F0D033C();

    swift_willThrow();
    v72 = sub_22F0D09FC();
    v73 = sub_22F0D123C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22EFE1000, v72, v73, "can't unpack trusted domains", v74, 2u);
      MEMORY[0x2318FE8B0](v74, -1, -1);
    }

    goto LABEL_45;
  }

  v34 = v33;
  v77 = v31;
  v78 = v28;
  v35 = v91;
  v36 = v34;
  v37 = sub_22F0D09FC();
  v38 = sub_22F0D122C();

  v39 = os_log_type_enabled(v37, v38);
  v81 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v81;
    *v41 = v34;
    v42 = v81;
    _os_log_impl(&dword_22EFE1000, v37, v38, "Domains %@", v40, 0xCu);
    sub_22F003A4C(v41, &qword_27DAA1260, &qword_22F0D5F48);
    MEMORY[0x2318FE8B0](v41, -1, -1);
    MEMORY[0x2318FE8B0](v40, -1, -1);
  }

  v43 = v21;

  sub_22F0D12BC();
  sub_22F08BB38();
  sub_22F0D134C();
  if (v92)
  {
    v44 = 0;
    v45 = (v79 + 8);
    v46 = v83;
    while (1)
    {
      sub_22EFFFA24(&v91, v90);
      sub_22F003598(v90, v89);
      if (swift_dynamicCast())
      {
        v47 = v87;
        v48 = v88;
      }

      else
      {
        v47 = 0;
        v48 = 0xE000000000000000;
      }

      v89[0] = v47;
      v89[1] = v48;
      sub_22F0D01CC();
      sub_22F00901C();
      v49 = sub_22F0D136C();
      v51 = v50;
      (*v45)(v11, v46);

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        if (sub_22F0D0DFC())
        {
          v53 = sub_22F0D0E0C();
LABEL_30:
          v54 = v53;

          __swift_destroy_boxed_opaque_existential_1Tm(v90);
          v44 |= v54;
          v46 = v83;
          goto LABEL_17;
        }

        if (v49 != v84 || v43 != v51)
        {
          v53 = sub_22F0D188C();
          goto LABEL_30;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        v44 = 1;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
      }

LABEL_17:
      sub_22F0D134C();
      if (!v92)
      {
        goto LABEL_48;
      }
    }
  }

  v44 = 0;
LABEL_48:
  (*(v82 + 8))(v85, v86);

  return v44 & 1;
}