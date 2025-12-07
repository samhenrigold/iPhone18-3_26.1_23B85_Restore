uint64_t sub_18E70BA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D8, &qword_18E730EB0);
  v34 = v4;
  result = sub_18E72B728();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_18E72B888();
      MEMORY[0x193AD1DF0](v21);
      result = sub_18E72B8E8();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

uint64_t sub_18E70BCD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
      v21 = *(v5 + 56) + 16 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8);
      v24 = *v21;
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v22);
      result = sub_18E72B8E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70BF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F8, &qword_18E730ED8);
  result = sub_18E72B728();
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
      }

      result = sub_18E72B878();
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18E70C1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E8, &qword_18E730EC8);
  v35 = v4;
  result = sub_18E72B728();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v36 = *(*(v5 + 48) + 8 * v20);
      v21 = (*(v5 + 56) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      if ((v35 & 1) == 0)
      {

        sub_18E68CB70(v23, v24);
      }

      sub_18E72B888();
      MEMORY[0x193AD1DF0](v36);
      result = sub_18E72B8E8();
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
      *(*(v7 + 48) + 8 * v15) = v36;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v22;
      v16[1] = v23;
      v16[2] = v24;
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

uint64_t sub_18E70C4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v34 = v4;
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_18E72B878();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

void *sub_18E70C724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C0, &qword_18E730E80);
  v2 = *v0;
  v3 = sub_18E72B718();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

void *sub_18E70C874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B8, &qword_18E730E78);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        v18 = (*(v2 + 48) + 3 * v17);
        v19 = *v18;
        v20 = v18[1];
        LOBYTE(v18) = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 3 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_18E70C9EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F0, &qword_18E730ED0);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 40);
        v21 = *(v20 + 48);
        v23 = *(*(v2 + 56) + v17);
        v24 = *(v4 + 48) + v19;
        v25 = *(v20 + 8);
        v26 = *(v20 + 24);
        *v24 = *v20;
        *(v24 + 8) = v25;
        *(v24 + 24) = v26;
        *(v24 + 40) = v22;
        *(v24 + 48) = v21;
        *(*(v4 + 56) + v17) = v23;
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

void *sub_18E70CB74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C8, &qword_18E730E88);
  v2 = *v0;
  v3 = sub_18E72B718();
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

void *sub_18E70CCD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        sub_18E69F7B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_18E68A8E4(v25, (*(v4 + 56) + v22));
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

void *sub_18E70CE7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
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

void *sub_18E70CFD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        v18 = *(v2 + 56) + 56 * v17;
        v19 = *v18;
        v20 = *(v18 + 40);
        v21 = *(v18 + 48);
        v22 = *(v18 + 8);
        v23 = *(v18 + 24);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        v24 = *(v4 + 56) + 56 * v17;
        *v24 = v19;
        *(v24 + 8) = v22;
        *(v24 + 24) = v23;
        *(v24 + 40) = v20;
        *(v24 + 48) = v21;
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

void *sub_18E70D188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D8, &qword_18E730EB0);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_18E70D2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
  v2 = *v0;
  v3 = sub_18E72B718();
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
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v19 = *(v4 + 56) + 16 * v14;
      *v19 = v18;
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

void *sub_18E70D450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F8, &qword_18E730ED8);
  v2 = *v0;
  v3 = sub_18E72B718();
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

void *sub_18E70D5AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E8, &qword_18E730EC8);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;

        result = sub_18E68CB70(v20, v21);
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

void *sub_18E70D734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v2 = *v0;
  v3 = sub_18E72B718();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

uint64_t sub_18E70D89C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v28 = v6;
  v29 = v2;
LABEL_6:
  if (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 8 * v11);
    v13 = (*(a2 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];

    if (!v14)
    {
LABEL_31:

      return MEMORY[0x193AD1DF0](v8);
    }

    v5 &= v5 - 1;
    MEMORY[0x193AD1DF0](v12);
    result = MEMORY[0x193AD1DF0](v15);
    v16 = 0;
    v17 = 0;
    v18 = 1 << *(v14 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v14 + 64);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_23:
      v23 = __clz(__rbit64(v20)) | (v17 << 6);
      v24 = *(v14 + 56) + 16 * v23;
      v25 = *(v24 + 8);
      if (v25 == 255)
      {
LABEL_5:

        MEMORY[0x193AD1DF0](v16);
        swift_bridgeObjectRelease_n();
        result = sub_18E72B8E8();
        v8 ^= result;
        v6 = v28;
        v2 = v29;
        goto LABEL_6;
      }

      v31 = v16;
      v26 = *v24;
      MEMORY[0x193AD1DF0](*(*(v14 + 48) + 8 * v23));
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x193AD1DF0](1);
          MEMORY[0x193AD1DF0](v26);
        }

        else
        {
          MEMORY[0x193AD1DF0](2);
          if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          MEMORY[0x193AD1E30](v27);
        }
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8A8();
      }

      v20 &= v20 - 1;
      result = sub_18E72B8E8();
      v16 = result ^ v31;
    }

    while (1)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        goto LABEL_5;
      }

      v20 = *(v14 + 64 + 8 * v22);
      ++v17;
      if (v20)
      {
        v17 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_31;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E70DB2C(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(a2 + 56) + 16 * v11;
    v13 = *(v12 + 8);
    if (v13 == 255)
    {
      return MEMORY[0x193AD1DF0](v3);
    }

    v14 = *v12;
    MEMORY[0x193AD1DF0](*(*(a2 + 48) + 8 * v11));
    if (v13)
    {
      if (v13 == 1)
      {
        MEMORY[0x193AD1DF0](1);
        MEMORY[0x193AD1DF0](v14);
      }

      else
      {
        MEMORY[0x193AD1DF0](2);
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        MEMORY[0x193AD1E30](v15);
      }
    }

    else
    {
      MEMORY[0x193AD1DF0](0);
      sub_18E72B8A8();
    }

    v8 &= v8 - 1;
    result = sub_18E72B8E8();
    v3 ^= result;
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return MEMORY[0x193AD1DF0](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E70DCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

BOOL _s8Gestures12GestureTraitV14AttributeValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    LOBYTE(v4) = 0;
  }

  v6 = v3 == 1 && *a1 == *&v2;
  v7 = *a1 == v2;
  if (v3 != 2)
  {
    v7 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    v7 = v6;
  }

  if (!*(a1 + 8))
  {
    return v4;
  }

  return v7;
}

void sub_18E70DD50(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 64);
  v5 = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

unint64_t sub_18E70DD90()
{
  result = qword_1EAC8F550;
  if (!qword_1EAC8F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F550);
  }

  return result;
}

unint64_t sub_18E70DDE8()
{
  result = qword_1EAC8F558;
  if (!qword_1EAC8F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F558);
  }

  return result;
}

unint64_t sub_18E70DE40()
{
  result = qword_1EAC8F560;
  if (!qword_1EAC8F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F560);
  }

  return result;
}

unint64_t sub_18E70DE98()
{
  result = qword_1EAC8F568;
  if (!qword_1EAC8F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F568);
  }

  return result;
}

unint64_t sub_18E70DEF0()
{
  result = qword_1EAC8F570;
  if (!qword_1EAC8F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8F578, &qword_18E730B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F570);
  }

  return result;
}

unint64_t sub_18E70DF58()
{
  result = qword_1EAC8F580;
  if (!qword_1EAC8F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F580);
  }

  return result;
}

unint64_t sub_18E70DFB0()
{
  result = qword_1EAC8F588;
  if (!qword_1EAC8F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F588);
  }

  return result;
}

unint64_t sub_18E70E030()
{
  result = qword_1EAC8F590;
  if (!qword_1EAC8F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F590);
  }

  return result;
}

unint64_t sub_18E70E084()
{
  result = qword_1EAC8F598;
  if (!qword_1EAC8F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F598);
  }

  return result;
}

uint64_t sub_18E70E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E70E140()
{
  result = qword_1EAC8F5A0;
  if (!qword_1EAC8F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F5A0);
  }

  return result;
}

unint64_t sub_18E70E194()
{
  result = qword_1EAC8F5A8;
  if (!qword_1EAC8F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureTrait.AttributeValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureTrait.AttributeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureTraitCollection(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GestureTraitCollection(uint64_t result, int a2, int a3)
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

uint64_t sub_18E70E37C(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
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
  v38 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    v18 = (*(a1 + 56) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v42[0] = v17;
    v42[1] = v20;
    v42[2] = v19;

    a2(v43, v42);

    v21 = v44;
    if (!v44)
    {
LABEL_22:
      sub_18E687EE8(a1);
    }

    v22 = v43[0];
    v41 = v43[1];
    v23 = *v45;
    v25 = sub_18E6EBF14();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_18E70D188();
      }
    }

    else
    {
      sub_18E70BA38(v28, a4 & 1);
      v30 = sub_18E6EBF14();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v32 = *v45;
    if (v29)
    {
      v12 = (v32[7] + 16 * v25);
      *v12 = v41;
      v12[1] = v21;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + 8 * v25) = v22;
      v33 = (v32[7] + 16 * v25);
      *v33 = v41;
      v33[1] = v21;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
    v9 = (v13 - 1) & v13;
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
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E70E5F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCC8, &qword_18E72CD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18E70E658@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_18E70E724(void *a1)
{
}

uint64_t *sub_18E70E760(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *sub_18E70E798(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *sub_18E70E7F8(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

void sub_18E70E854(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Swift::Void __swiftcall CompositeGestureComponent.reset()()
{
  v1 = (*(v0 + 48))(v5);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 24);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  v1(v5, 0);
}

Gestures::GestureTraitCollection_optional sub_18E70E990(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

Gestures::GestureTraitCollection_optional __swiftcall CompositeGestureComponent.traits()()
{
  v1 = (*(v0 + 48))(v6);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 32);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  return v1(v6, 0);
}

uint64_t sub_18E70EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t CompositeGestureComponent.capacity<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a4 + 48))(v14);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 40);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, a3, a5, v11, AssociatedConformanceWitness);
  v8(v14, 0);
  return v12;
}

uint64_t CompositeGestureComponent<>.reset()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16[-v7];
  v9 = (*(a2 + 48))(v16, a1, a2);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 24);
  v12 = swift_checkMetadataState();
  v11(v12, AssociatedConformanceWitness);
  v9(v16, 0);
  v13 = swift_getAssociatedConformanceWitness();
  (*(v13 + 8))(AssociatedTypeWitness, v13);
  return (*(a3 + 40))(v8, a1, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70EE5C(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t CompositeGestureComponent.update(context:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v13[2] = *(a1 + 32);
  v14 = v6;
  v8 = (*(a3 + 48))(v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  GestureComponent.tracingUpdate(context:)(v13, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
  return v8(v12, v4 != 0);
}

void sub_18E70F0AC(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F1A8(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F2C4(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70F318(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F45C(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F558(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F69C(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F798(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F8A4(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E70F984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();

  return CompositeGestureComponent<>.reset()(a1, WitnessTable, v3);
}

Gestures::GestureTraitCollection_optional sub_18E70FA04(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70FB10(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FBF0(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FC44(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FD24(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FD78(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70FE84(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FF64(uint64_t a1)
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FFB8(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E71001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E7100C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();

  return CompositeGestureComponent<>.reset()(a1, WitnessTable, v6);
}

Gestures::GestureTraitCollection_optional sub_18E710128(uint64_t a1)
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E71018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E710208(uint64_t a1)
{
  result = sub_18E7102C4(&qword_1EAC8F688, MEMORY[0x1E695EFC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E71024C(uint64_t a1)
{
  result = sub_18E7102C4(qword_1EAC8F690, &unk_18E730F74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E7102C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E710308(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E7103B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  return v3;
}

uint64_t sub_18E7104AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E710530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E7105B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E710638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E7106BC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_18E710808(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_18E7109F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v6, a1);
  (*(v13 + 32))(a5, v15, a1);
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  result = type metadata accessor for MovementGate(0, v17);
  *(a5 + *(result + 52)) = a6;
  *(a5 + *(result + 56)) = 1;
  return result;
}

uint64_t sub_18E710B54(char a1)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1 & 1);
  return sub_18E72B8E8();
}

uint64_t sub_18E710BDC(uint64_t a1)
{
  sub_18E72B888();
  sub_18E710B2C(v3, *v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E710C28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v10 = *(a4 + 24);
  v11 = type metadata accessor for TrackedValue(0, v10, a3, a4);
  v12 = *(a4 + 40);
  v13 = sub_18E6F70A4(v11, v12);
  v17 = hypot(fabs(v13), fabs(v14));
  v18 = *(v6 + *(a4 + 52));
  if (*(v6 + *(a4 + 56)))
  {
    if (v17 > v18)
    {
      v19 = *(a4 + 32);
      *&v22 = *(a4 + 16);
      *(&v22 + 1) = v10;
      *&v23 = v19;
      *(&v23 + 1) = v12;
      type metadata accessor for MovementGate.Failure(0, &v22);
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else if (v18 > v17)
  {
    *a5 = 1;
    v21 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = MEMORY[0x1E69E7CC0];
    *(a5 + 16) = v21;
    *(a5 + 24) = 0xD000000000000013;
    *(a5 + 32) = 0x800000018E73ACA0;
    type metadata accessor for GestureOutput(0, v11, v15, v16);
    return swift_storeEnumTagMultiPayload();
  }

  v22 = 0u;
  v23 = 0u;
  return sub_18E6FEC1C(a1, &v22, v11, a5);
}

uint64_t sub_18E710DBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E710DF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E710E4C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_18E710EDC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E711040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v79 = a4;
  v72 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v8, v9);
  v73 = *(v80 - 8);
  v10 = MEMORY[0x1EEE9AC00](v80);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - v12;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v77 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v63 - v16;
  v78 = v17;
  v75 = type metadata accessor for GestureOutput(0, v17, v18, v19);
  MEMORY[0x1EEE9AC00](v75);
  v21 = &v63 - v20;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v26 = a1[4];
  v25 = a1[5];
  v27 = a1[6];
  v68 = *a1;
  v84 = v68;
  v85 = v22;
  v69 = v22;
  v70 = v23;
  v86 = v23;
  v87 = v24;
  v88 = v26;
  v89 = v25;
  v90 = v27;
  v28 = *(v6 + 48);
  v71 = a2;
  v29 = v28(v83, a2, v6);
  v30 = swift_checkMetadataState();
  v31 = v82;
  GestureComponent.tracingUpdate(context:)(&v84, v30, AssociatedConformanceWitness, v21);
  if (v31)
  {
    return v29(v83, 1);
  }

  v64 = v24;
  v65 = v26;
  AssociatedConformanceWitness = v25;
  v82 = v27;
  v33 = v74;
  v35 = v76;
  v34 = v77;
  v36 = v78;
  v29(v83, 0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v38 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v40 = *v38;
      v39 = v38[1];
      v42 = v38[2];
      v41 = v38[3];
      v75 = v39;
      v76 = v42;
      v67 = v41;
      (*(v34 + 32))(v33, v21, v36);
      v84 = v68;
      v85 = v69;
      v86 = v70;
      v87 = v64;
      v88 = v65;
      v89 = AssociatedConformanceWitness;
      v90 = v82;
      v43 = v66;
      (*(v72 + 16))(v33, 0, &v84, v71);
      v44 = v73;
      v53 = MEMORY[0x1E69E7CC0];
      v54 = v67;
      if (!v40)
      {
        v54 = 0;
      }

      v55 = v75;
      if (v40)
      {
        v53 = v40;
      }

      else
      {
        v55 = MEMORY[0x1E69E7CC0];
      }

      v84 = v53;
      v85 = v55;
      v56 = v76;
      if (!v40)
      {
        v56 = 0;
      }

      v86 = v56;
      v87 = v54;
      v57 = v80;
      sub_18E6FF750(&v84, v80, v79);

      (*(v44 + 8))(v43, v57);
      return (*(v34 + 8))(v33, v36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v46 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v48 = *v46;
      v47 = v46[1];
      v49 = v46[2];
      v74 = v46[3];
      v75 = v47;
      v50 = v35;
      (*(v34 + 32))(v35, v21, v36);
      v84 = v68;
      v85 = v69;
      v86 = v70;
      v87 = v64;
      v88 = v65;
      v89 = AssociatedConformanceWitness;
      v90 = v82;
      v51 = v67;
      (*(v72 + 16))(v35, 1, &v84, v71);
      v52 = v73;
      v58 = MEMORY[0x1E69E7CC0];
      v59 = v74;
      v60 = v75;
      if (v48)
      {
        v58 = v48;
      }

      else
      {
        v59 = 0;
        v60 = MEMORY[0x1E69E7CC0];
      }

      v84 = v58;
      v85 = v60;
      if (v48)
      {
        v61 = v49;
      }

      else
      {
        v61 = 0;
      }

      v86 = v61;
      v87 = v59;
      v62 = v80;
      sub_18E6FF750(&v84, v80, v79);

      (*(v52 + 8))(v51, v62);
      return (*(v34 + 8))(v50, v36);
    }
  }

  else
  {
    v45 = v79;
    *v79 = *v21;
    *(v45 + 8) = *(v21 + 8);
    *(v45 + 24) = *(v21 + 24);
    return swift_storeEnumTagMultiPayload();
  }
}

void static GestureNodeMatcher.any.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

BOOL sub_18E711B58(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  if (a6 == 1)
  {
    return 0;
  }

  v7 = a1 != 0;
  if (a6 != 3)
  {
    v7 = 0;
  }

  if (a3 != 3)
  {
    v7 = 0;
  }

  if (a6 == 2)
  {
    v7 = 0;
    v8 = a2 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (a3 != 2)
  {
    v8 = v7;
  }

  return a3 == 1 || v8;
}

BOOL sub_18E711BD4(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  if (!a3)
  {
    return 0;
  }

  if (!a6)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  v7 = a4 != 0;
  if (a6 != 3)
  {
    v7 = 0;
  }

  if (a3 != 3)
  {
    v7 = 0;
  }

  if (a3 == 2)
  {
    v7 = 0;
    v8 = a5 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (a6 != 2)
  {
    v8 = v7;
  }

  return a6 == 1 || v8;
}

BOOL sub_18E711C50(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  if (a6 == 1)
  {
    return 1;
  }

  v7 = a1 == 0;
  if (a6 != 3)
  {
    v7 = 1;
  }

  v8 = a3 != 3 || v7;
  if (a6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = a6 == 2 && a2 == 0;
  if (a3 != 2)
  {
    v10 = v9;
  }

  return a3 != 1 && v10;
}

uint64_t GestureNodeMatcher.RelativePosition.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E711D54(uint64_t a1, uint64_t a2)
{
  result = *v2;
  v5 = *(v2 + 8);
  if (*(v2 + 16) <= 1u)
  {
    if (!*(v2 + 16))
    {
      return *(a1 + 16) == result;
    }

LABEL_13:
    v9 = *(a1 + 32);
    if (v9)
    {
      if (result != *(a1 + 24) || v5 != v9)
      {

        return sub_18E72B7C8();
      }

      return 1;
    }

    return 0;
  }

  if (*(v2 + 16) != 2)
  {
    if (*v2)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      return 0;
    }

    if (!*v2)
    {
      return 1;
    }

    if (*v2 == 1)
    {
      if (a2)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (a2)
    {
LABEL_36:
      v12 = a2;

      v13 = _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(v12, a1);

      return v13 & 1;
    }

    __break(1u);
LABEL_35:
    if (a2)
    {
      goto LABEL_36;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = a2;
  v14[0] = *v2;
  v14[1] = v6;

  v8 = GestureTraitCollection.containsSubtraits(from:)(v14);

  if (!v8)
  {
    return 0;
  }

  a2 = v7;
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    goto LABEL_35;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_28:

  return _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_18E711EE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if ((~*a1 & 9) != 0)
  {
    *a1 |= 9uLL;
  }

  *(a1 + 8) = xmmword_18E72CA30;

  *(a1 + 24) = xmmword_18E72CA30;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      sub_18E6A65D8(v3, 0, 0);
      v9 = v4;
    }

    else
    {
      sub_18E6A647C(7958113, 0xE300000000000000, 0, 0);
      v9 = v3;
    }

    return sub_18E6A6950(v9, 0x6E6F697469736F70, 0xE800000000000000);
  }

  else if (v5)
  {
    MEMORY[0x193AD15C0](v3, v4);
    MEMORY[0x193AD15C0](34, 0xE100000000000000);
    sub_18E6A647C(34, 0xE100000000000000, 0, 0);
  }

  else
  {
    v6 = sub_18E72B778();
    sub_18E6A647C(v6, v7, 0, 0);
  }
}

Gestures::GestureTraitCollection static GestureNodeMatcher.trait(_:position:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v5;
  *(inited + 40) = v4;

  result._traits._rawValue = GestureTraitCollection.init(traits:)(inited)._traits._rawValue;
  *a3 = v9;
  *(a3 + 8) = v6;
  *(a3 + 16) = 2;
  return result;
}

uint64_t GestureNodeMatcher.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(a1, v4);
      v8 = v5;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v8 = v4;
    }

    return MEMORY[0x193AD1DF0](v8);
  }

  else if (v6)
  {
    MEMORY[0x193AD1DF0](1);

    return _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8C8();
  }
}

uint64_t GestureNodeMatcher.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18E72B888();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v6, v1);
      v4 = v2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v4 = v1;
    }

    MEMORY[0x193AD1DF0](v4);
  }

  else if (v3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E7122B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18E72B888();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v6, v1);
      v4 = v2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v4 = v1;
    }

    MEMORY[0x193AD1DF0](v4);
  }

  else if (v3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E712380(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(a1, v4);
      v8 = v5;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v8 = v4;
    }

    return MEMORY[0x193AD1DF0](v8);
  }

  else if (v6)
  {
    MEMORY[0x193AD1DF0](1);

    return _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8C8();
  }
}

uint64_t sub_18E71243C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_18E72B888();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v7, v2);
      v5 = v3;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v5 = v2;
    }

    MEMORY[0x193AD1DF0](v5);
  }

  else if (v4)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

BOOL _s8Gestures18GestureNodeMatcherO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 == 3)
      {
        sub_18E682A3C(*a1, v3, 3);
        sub_18E682A3C(v6, v5, 3);
        return v6 == v2;
      }

      goto LABEL_19;
    }

    if (v7 == 2)
    {
      sub_18E67EEC4(*a2, *(a2 + 8), 2);
      sub_18E67EEC4(v2, v3, 2);
      sub_18E67EEC4(v6, v5, 2);
      sub_18E67EEC4(v2, v3, 2);
      v9 = sub_18E7098C0(v2, v6);
      sub_18E682A3C(v2, v3, 2);
      sub_18E682A3C(v6, v5, 2);
      sub_18E682A3C(v6, v5, 2);
      sub_18E682A3C(v2, v3, 2);
      return (v9 & 1) != 0 && v5 == v3;
    }

LABEL_18:

LABEL_19:
    sub_18E67EEC4(v6, v5, v7);
    sub_18E682A3C(v2, v3, v4);
    sub_18E682A3C(v6, v5, v7);
    return 0;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_18E682A3C(*a1, v3, 0);
      sub_18E682A3C(v6, v5, 0);
      return v2 == v6;
    }

    goto LABEL_19;
  }

  if (v7 != 1)
  {
    goto LABEL_18;
  }

  if (v2 == v6 && v3 == v5)
  {
    sub_18E67EEC4(v2, v3, 1);
    sub_18E67EEC4(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    return 1;
  }

  else
  {
    v11 = sub_18E72B7C8();
    sub_18E67EEC4(v6, v5, 1);
    sub_18E67EEC4(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    sub_18E682A3C(v6, v5, 1);
    return v11 & 1;
  }
}

unint64_t sub_18E712830()
{
  result = qword_1EAC8F818;
  if (!qword_1EAC8F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F818);
  }

  return result;
}

unint64_t sub_18E712884()
{
  result = qword_1EAC8F820;
  if (!qword_1EAC8F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F820);
  }

  return result;
}

unint64_t sub_18E7128D8(uint64_t a1)
{
  *(a1 + 8) = sub_18E712908();
  result = sub_18E71295C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E712908()
{
  result = qword_1EAC8F828;
  if (!qword_1EAC8F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F828);
  }

  return result;
}

unint64_t sub_18E71295C()
{
  result = qword_1EAC8F830[0];
  if (!qword_1EAC8F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F830);
  }

  return result;
}

uint64_t sub_18E7129B0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_18E67EEC4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for GestureNodeMatcher(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_18E67EEC4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_18E682A3C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for GestureNodeMatcher(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_18E682A3C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureNodeMatcher(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureNodeMatcher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_18E712B50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E712BEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t sub_18E712CE0(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_18E712D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_18E712DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_18E712E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E712EE0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_18E71301C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_18E7131EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  sub_18E7132A4(sub_18E7138F4, v12, a3, a4, a5, a6);
}

uint64_t sub_18E7132A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v6);
  (*(v13 + 32))(a6, v15, a3);
  v16 = (a6 + *(type metadata accessor for MapComponent(0, a3, a4, a5) + 44));
  *v16 = a1;
  v16[1] = a2;
}

uint64_t sub_18E7133C8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a2;
  v36 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v10, v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v32 - v17;
  v20 = *(v19 + 16);
  v35 = a1;
  v20(v15, a1, v12);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = a5;
    v34 = a4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v23 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
    v28 = v40[5];
    v38(v18);
    if (v28)
    {
      sub_18E6AF804(v25, v24, v26, v27);
      return (*(v16 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      (*(v16 + 8))(v18, AssociatedTypeWitness);
      GestureOutput.isFinal.getter(v12);
      v40[0] = v25;
      v40[1] = v24;
      v40[2] = v26;
      v40[3] = v27;
      v30 = v34;
      v31 = v39;
      sub_18E6FEC1C(v39, v40, v34, v33);
      (*(v36 + 8))(v31, v30);
      return sub_18E6AF804(v25, v24, v26, v27);
    }
  }

  else
  {
    *a5 = *v15;
    *(a5 + 8) = *(v15 + 8);
    *(a5 + 24) = *(v15 + 24);
    type metadata accessor for GestureOutput(0, a4, v21, v22);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_18E71373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v7 = *(a2 + 32);
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  v16 = *(a1 + 48);
  v17 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v17;
  v19[2] = *(a1 + 32);
  v20 = v16;
  result = GestureComponent.tracingUpdate(context:)(v19, v8, v7, v15);
  if (!v4)
  {
    (*(v3 + *(a2 + 44)))(v15);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t sub_18E7138A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E713918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v26 = a5;
  v11 = type metadata accessor for ThresholdComponent.State(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v25 = &v25 - v12;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v25 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v6, a2);
  (*(v14 + 16))(v17, a1, AssociatedTypeWitness);
  v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  (*(v14 + 32))(&v22[v21], v17, AssociatedTypeWitness);
  v23 = v25;
  sub_18E714068(a2, a3, a4, v25);
  return sub_18E713EB8(v19, v23, sub_18E71825C, v22, a2, a3, a4, v26);
}

uint64_t sub_18E713BB8(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    v7 = hypot(fabs(a2), fabs(a3));
    if (v7 >= a1)
    {
      v9 = a1 / v7;
      v10 = v3[1] - v9 * a3;
      *v3 = *v3 - v9 * a2;
      v3[1] = v10;
      *&result = v9 * a2;
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_18E713C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v7 = *(a3 + 8);
  if (a5 <= 0.0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(*(AssociatedTypeWitness - 8) + 56);
    v16 = AssociatedTypeWitness;
    v15 = a4;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = *(AssociatedConformanceWitness + 16);
    v12 = swift_checkMetadataState();
    v13 = v11(v12, AssociatedConformanceWitness);
    if (v13 >= a5)
    {
      (*(AssociatedConformanceWitness + 24))(a1, v12, AssociatedConformanceWitness, a5 / v13);
      v19 = (*(v7 + 40))(v21, a2, v7);
      (*(*(AssociatedConformanceWitness + 8) + 48))(v20, a4, v12);
      v19(v21, 0);
      return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
    }

    v14 = *(*(v12 - 8) + 56);
    v15 = a4;
    v16 = v12;
  }

  return v14(v15, 1, 1, v16);
}

uint64_t sub_18E713EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v15 = type metadata accessor for ThresholdComponent(0, a5, a6, a7);
  v16 = *(v15 + 44);
  v17 = type metadata accessor for ThresholdComponent.State(0, a5, a6, a7);
  result = (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  v19 = (a8 + *(v15 + 48));
  *v19 = a3;
  v19[1] = a4;
  return result;
}

uint64_t sub_18E713FB4@<X0>(uint64_t a1@<X2>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a5, a1, AssociatedTypeWitness);
}

uint64_t sub_18E714068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
  v9 = *(type metadata accessor for ThresholdComponent.State(0, a1, a2, a3) + 44);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t sub_18E714188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E7141DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E714230@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v104 = a4;
  v106 = a2;
  v113 = a1;
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v110 = *(a3 + 16);
  v111 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v90 - v8;
  v116 = v7;
  v103 = *(v7 + 8);
  v9 = swift_getAssociatedTypeWitness();
  v112 = sub_18E72B438();
  v115 = *(v112 - 8);
  v10 = MEMORY[0x1EEE9AC00](v112);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v90 - v13;
  v121 = v9;
  v114 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v92 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v90 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v90 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v90 - v22;
  v23 = swift_checkMetadataState();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v99 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v90 - v29;
  v30 = sub_18E72B438();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v109 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v90 - v34;
  v94 = a3;
  v36 = *(a3 + 44);
  v95 = v4;
  v37 = v4 + v36;
  v108 = *(v31 + 16);
  v108(&v90 - v34, v4 + v36, v30);
  v117 = v24;
  v107 = *(v24 + 48);
  v38 = v107(v35, 1, v23);
  v39 = *(v31 + 8);
  v39(v35, v30);
  v40 = v38 == 1;
  v41 = v37;
  if (v40)
  {
    v39(v37, v30);
    v42 = v117;
    (*(v117 + 16))(v37, v113, v23);
    (*(v42 + 56))(v37, 0, 1, v23);
  }

  v43 = v109;
  v108(v109, v41, v30);
  result = v107(v43, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v45 = v117;
    (*(v117 + 32))(v118, v43, v23);
    v46 = type metadata accessor for ThresholdComponent.State(0, v110, v111, v116);
    v47 = v115;
    v48 = *(v115 + 16);
    v108 = *(v46 + 44);
    v49 = v23;
    v50 = v105;
    v51 = v112;
    v48(v105, v108 + v41, v112);
    v52 = v114;
    v53 = v121;
    v109 = v114[6];
    if ((v109)(v50, 1, v121) == 1)
    {
      v54 = v49;
      v57 = *(v47 + 8);
      v55 = v47 + 8;
      v56 = v57;
      v57(v50, v51);
      if (v106)
      {
        type metadata accessor for ThresholdComponent.Failure(0, v110, v111, v116);
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v45 + 8))(v118, v54);
      }

      else
      {
        v110 = v41;
        v111 = v56;
        v115 = v55;
        v65 = *(v45 + 16);
        v66 = v113;
        v67 = v54;
        v65(v102, v113, v54);
        (*(v95 + *(v94 + 48)))(v66, v118);
        v68 = v103;
        v69 = *(v103 + 24);
        v70 = v91;
        v69(v54, v103);
        v71 = v92;
        v69(v54, v68);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v73 = v93;
        (*(*(AssociatedConformanceWitness + 8) + 40))(v70, v71, v121);
        v74 = v114[1];
        v74(v71, v121);
        v74(v70, v121);
        v75 = v96;
        v76 = v101;
        (*(v116 + 24))(v101, v73, v54);
        v74(v73, v121);
        v77 = v121;
        (*(v97 + 8))(v76, AssociatedTypeWitness);
        if ((v109)(v75, 1, v77) == 1)
        {
          v111(v75, v112);
          v78 = *(v117 + 8);
          v78(v102, v67);
          v78(v118, v67);
          v79 = MEMORY[0x1E69E7CC0];
          v80 = v104;
          *v104 = 1;
          v80[1] = v79;
          v80[2] = v79;
          v80[3] = 0xD000000000000013;
          v80[4] = 0x800000018E73ACA0;
          type metadata accessor for GestureOutput(0, v67, v81, v82);
          return swift_storeEnumTagMultiPayload();
        }

        else
        {
          v117 = *(v117 + 8);
          (v117)(v118, v67);
          v83 = v67;
          v84 = v114;
          v85 = v114[4];
          v86 = v90;
          v85(v90, v75, v77);
          v87 = v110;
          v88 = v108;
          v111(v108 + v110, v112);
          v85(v88 + v87, v86, v77);
          (v84[7])(v88 + v87, 0, 1, v77);
          v119 = 0u;
          v120 = 0u;
          v89 = v102;
          sub_18E6FEC1C(v102, &v119, v83, v104);
          return (v117)(v89, v83);
        }
      }
    }

    else
    {
      v58 = v100;
      (v52[4])(v100, v50, v53);
      v59 = v99;
      (*(v45 + 16))(v99, v113, v49);
      v60 = (*(v103 + 40))(&v119, v49, v103);
      v62 = v61;
      v63 = swift_getAssociatedConformanceWitness();
      (*(*(v63 + 8) + 48))(v62, v58, v53);
      v60(&v119, 0);
      (v52[1])(v58, v53);
      v64 = *(v45 + 8);
      v64(v118, v49);
      v119 = 0u;
      v120 = 0u;
      sub_18E6FEC1C(v59, &v119, v49, v104);
      return (v64)(v59, v49);
    }
  }

  return result;
}

uint64_t sub_18E714DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for ThresholdComponent.State(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18E714E54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for ThresholdComponent.State(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double *sub_18E714ED4@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = 0.0;
  if (*result > 0.0 && (v6 = fabs(*a2), v4 <= v6))
  {
    v7 = 0;
    v5 = *a2 * (v4 / v6);
    *v3 = *v3 - v5;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_18E714F20(uint64_t a1)
{
  result = sub_18E715008(&qword_1EAC8F8B8, type metadata accessor for CGVector, &unk_18E730FAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E714F78@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_18E713BB8(*a1, *a2, a2[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_18E714FB0(uint64_t a1)
{
  result = sub_18E715008(qword_1EAC8F8C0, type metadata accessor for CGPoint, &unk_18E72E2D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E715008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E715050(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ThresholdComponent.State(319, result, *(a1 + 24), *(a1 + 32));
    if (v4 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E715130(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a3[2];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v35 = swift_getAssociatedTypeWitness();
  v10 = *(v35 - 8);
  v11 = *(v10 + 80);
  v12 = (*(v10 + 80) | v9);
  v13 = v5 + v12;
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = v14 + v11;
  if (*(v10 + 84))
  {
    v16 = *(*(v35 - 8) + 64);
  }

  else
  {
    v16 = *(*(v35 - 8) + 64) + 1;
  }

  v17 = v12 | *(v4 + 80) & 0xF8;
  if (v17 > 7 || ((*(v4 + 80) | *(v10 + 80) | v9) & 0x100000) != 0 || ((((v14 + v11) & ~v11) + v16 + (v13 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = (v20 + (((v17 | 7) + 16) & ~(v17 | 7)));
  }

  else
  {
    __n = v14;
    v32 = v16;
    v22 = ~v12;
    v33 = ~v11;
    v34 = ((v14 + v11) & ~v11) + v16;
    (*(v4 + 16))(a1, a2, v3);
    v23 = ((a1 + v13) & v22);
    v24 = ((a2 + v13) & v22);
    if ((*(v8 + 48))(v24, 1, AssociatedTypeWitness))
    {
      memcpy(v23, v24, __n);
    }

    else
    {
      (*(v8 + 16))(v23, v24, AssociatedTypeWitness);
      (*(v8 + 56))(v23, 0, 1, AssociatedTypeWitness);
    }

    v25 = &v23[v15];
    v26 = &v24[v15];
    if ((*(v10 + 48))(v26 & v33, 1, v35))
    {
      memcpy((v25 & v33), (v26 & v33), v32);
    }

    else
    {
      (*(v10 + 16))(v25 & v33, v26 & v33, v35);
      (*(v10 + 56))(v25 & v33, 0, 1, v35);
    }

    v27 = (&v24[v34 + 7] & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[1];
    v29 = (&v23[v34 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v27;
    v29[1] = v28;
    v21 = a1;
  }

  return v21;
}

uint64_t sub_18E715498(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)(a1, a2[2]);
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 80) | v7;
  v12 = (v4 + v11) & ~v11;
  if (!(*(v6 + 48))(v12, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v12, AssociatedTypeWitness);
  }

  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v12 + v10 + v13;
  if (!(*(v9 + 48))(v14 & ~v10, 1, v8))
  {
    (*(v9 + 8))(v14 & ~v10, v8);
  }
}

uint64_t sub_18E71569C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) | v9;
  v14 = ((v6 + v13 + a1) & ~v13);
  v15 = ((v6 + v13 + a2) & ~v13);
  if ((*(v8 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v8 + 16))(v14, v15, AssociatedTypeWitness);
    v20 = *(v8 + 56);
    v19 = v8 + 56;
    v20(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = &v14[v12 + v21];
  v23 = &v15[v12 + v21];
  if ((*(v11 + 48))(v23 & ~v12, 1, v10))
  {
    v24 = *(v11 + 84);
    v25 = *(v11 + 64);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy((v22 & ~v12), (v23 & ~v12), v26);
  }

  else
  {
    (*(v11 + 16))(v22 & ~v12, v23 & ~v12, v10);
    v28 = *(v11 + 56);
    v27 = v11 + 56;
    v28(v22 & ~v12, 0, 1, v10);
    v24 = *(v27 + 28);
    v25 = *(v27 + 8);
  }

  v29 = v25 + ((v21 + v12) & ~v12);
  if (!v24)
  {
    ++v29;
  }

  v30 = &v14[v29 + 7];
  v31 = (&v15[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
  v33 = *v31;
  v32 = v31[1];
  v34 = (v30 & 0xFFFFFFFFFFFFFFF8);
  *v34 = v33;
  v34[1] = v32;

  return a1;
}

uint64_t sub_18E71594C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(a3[2] - 8) + 24;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v34 = v4;
  v35 = swift_getAssociatedTypeWitness();
  v10 = *(v35 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v9;
  v13 = ((v6 + v12 + v4) & ~v12);
  v14 = ((v6 + v12 + a2) & ~v12);
  v15 = *(v8 + 48);
  LODWORD(v4) = v15(v13, 1, AssociatedTypeWitness);
  v16 = v15(v14, 1, AssociatedTypeWitness);
  if (v4)
  {
    if (!v16)
    {
      (*(v8 + 16))(v13, v14, AssociatedTypeWitness);
      (*(v8 + 56))(v13, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v8 + 24))(v13, v14, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v13, AssociatedTypeWitness);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v8 + 84))
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = &v13[v11 + v20];
  v22 = &v14[v11 + v20];
  v23 = *(v10 + 48);
  v24 = v23(v21 & ~v11, 1, v35);
  v25 = v23(v22 & ~v11, 1, v35);
  if (v24)
  {
    if (v25)
    {
      v26 = *(v10 + 84);
      v27 = *(v10 + 64);
LABEL_20:
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 + 1;
      }

      memcpy((v21 & ~v11), (v22 & ~v11), v28);
      goto LABEL_26;
    }

    (*(v10 + 16))(v21 & ~v11, v22 & ~v11, v35);
    (*(v10 + 56))(v21 & ~v11, 0, 1, v35);
  }

  else
  {
    if (v25)
    {
      (*(v10 + 8))(v21 & ~v11, v35);
      v26 = *(v10 + 84);
      v27 = *(v10 + 64);
      goto LABEL_20;
    }

    (*(v10 + 24))(v21 & ~v11, v22 & ~v11, v35);
  }

LABEL_26:
  v29 = *(v10 + 64) + ((v20 + v11) & ~v11);
  if (!*(v10 + 84))
  {
    ++v29;
  }

  v30 = (&v13[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
  v31 = (&v14[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
  v32 = v31[1];
  *v30 = *v31;
  v30[1] = v32;

  return v34;
}

uint64_t sub_18E715D08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 32;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) | v9;
  v14 = ((v6 + v13 + a1) & ~v13);
  v15 = ((v6 + v13 + a2) & ~v13);
  if ((*(v8 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v8 + 32))(v14, v15, AssociatedTypeWitness);
    v20 = *(v8 + 56);
    v19 = v8 + 56;
    v20(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = &v14[v12 + v21];
  v23 = &v15[v12 + v21];
  if ((*(v11 + 48))(v23 & ~v12, 1, v10))
  {
    v24 = *(v11 + 84);
    v25 = *(v11 + 64);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy((v22 & ~v12), (v23 & ~v12), v26);
  }

  else
  {
    (*(v11 + 32))(v22 & ~v12, v23 & ~v12, v10);
    v28 = *(v11 + 56);
    v27 = v11 + 56;
    v28(v22 & ~v12, 0, 1, v10);
    v24 = *(v27 + 28);
    v25 = *(v27 + 8);
  }

  v29 = v25 + ((v21 + v12) & ~v12);
  if (!v24)
  {
    ++v29;
  }

  *(&v14[v29 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v15[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E715FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(a3[2] - 8) + 40;
  (*v5)(a1, a2, a3[2]);
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v31 = v4;
  v32 = swift_getAssociatedTypeWitness();
  v10 = *(v32 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 80) | v9;
  v13 = ((v6 + v12 + v4) & ~v12);
  v14 = ((v6 + v12 + a2) & ~v12);
  v15 = *(v8 + 48);
  LODWORD(v4) = v15(v13, 1, AssociatedTypeWitness);
  v16 = v15(v14, 1, AssociatedTypeWitness);
  if (v4)
  {
    if (!v16)
    {
      (*(v8 + 32))(v13, v14, AssociatedTypeWitness);
      (*(v8 + 56))(v13, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v8 + 40))(v13, v14, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v13, AssociatedTypeWitness);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v13, v14, v19);
LABEL_12:
  if (*(v8 + 84))
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = &v13[v11 + v20];
  v22 = &v14[v11 + v20];
  v23 = *(v10 + 48);
  v24 = v23(v21 & ~v11, 1, v32);
  v25 = v23(v22 & ~v11, 1, v32);
  if (v24)
  {
    if (v25)
    {
      v26 = *(v10 + 84);
      v27 = *(v10 + 64);
LABEL_20:
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 + 1;
      }

      memcpy((v21 & ~v11), (v22 & ~v11), v28);
      goto LABEL_26;
    }

    (*(v10 + 32))(v21 & ~v11, v22 & ~v11, v32);
    (*(v10 + 56))(v21 & ~v11, 0, 1, v32);
  }

  else
  {
    if (v25)
    {
      (*(v10 + 8))(v21 & ~v11, v32);
      v26 = *(v10 + 84);
      v27 = *(v10 + 64);
      goto LABEL_20;
    }

    (*(v10 + 40))(v21 & ~v11, v22 & ~v11, v32);
  }

LABEL_26:
  v29 = *(v10 + 64) + ((v20 + v11) & ~v11);
  if (!*(v10 + 84))
  {
    ++v29;
  }

  *(&v13[v29 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v14[v29 + 7] & 0xFFFFFFFFFFFFFFF8);

  return v31;
}

uint64_t sub_18E716368(_DWORD *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v39 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = AssociatedTypeWitness;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = *(v8 + 64);
  if (!v9)
  {
    ++v18;
  }

  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v19;
  v23 = v19 | *(v8 + 80);
  v24 = *(v5 + 64) + v23;
  v25 = v18 + v19;
  v26 = v21 + (v25 & ~v19);
  if (v17 >= a2)
  {
    goto LABEL_43;
  }

  v27 = ((v26 + (v24 & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v28 = 2;
  }

  else
  {
    v28 = a2 - v17 + 1;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v31 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v31 = *(a1 + v27);
      if (!v31)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    v33 = v31 - 1;
    if ((v27 & 0xFFFFFFF8) != 0)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v17 + (v34 | v33) + 1;
  }

  if (v30)
  {
    v31 = *(a1 + v27);
    if (*(a1 + v27))
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  if (v6 == v17)
  {
    v35 = *(v5 + 48);

    return v35(a1, v6, v39);
  }

  else
  {
    v36 = (a1 + v24) & ~v23;
    if (v16 == v17)
    {
      if (v10 >= v15)
      {
        v37 = (*(v8 + 48))(v36, v9, v11);
      }

      else
      {
        v37 = (*(v13 + 48))((v25 + v36) & ~v22);
      }

      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v38 = *((v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v38 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      return (v38 + 1);
    }
  }
}

void sub_18E7166C4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v47 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v46 = AssociatedTypeWitness;
  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v5 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  if (v9)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = *(v12 + 80);
  v20 = *(v12 + 80) | *(v8 + 80);
  v21 = v14 + v20;
  v22 = (v14 + v20) & ~v20;
  v23 = v18 + v19;
  if (v13)
  {
    v24 = *(v12 + 64);
  }

  else
  {
    v24 = *(v12 + 64) + 1;
  }

  v25 = (v23 & ~*(v12 + 80)) + v24;
  v26 = ((v25 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 < a3)
  {
    if (((v25 + v22 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a3 - v17 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v17)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v17;
    }

    if (v26)
    {
      v30 = ~v17 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v11)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  v31 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v26) = 0;
  }

  else if (v11)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v6 == v17)
  {
    v32 = v47;
    v33 = *(v5 + 56);
    v34 = a2;
    v35 = v6;

LABEL_54:
    v33(v31, v34, v35, v32);
    return;
  }

  v36 = (a1 + v21) & ~v20;
  if (v16 != v17)
  {
    v41 = ((v36 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v41 = a2 & 0x7FFFFFFF;
      v41[1] = 0;
    }

    else
    {
      *v41 = a2 - 1;
    }

    return;
  }

  if (v10 >= v15)
  {
    if (v10 >= a2)
    {
      v33 = *(v8 + 56);
      v34 = a2 + 1;
      v31 = ((a1 + v21) & ~v20);
      v35 = v9;
      v32 = v46;

      goto LABEL_54;
    }

    if (v18 <= 3)
    {
      v42 = ~(-1 << (8 * v18));
    }

    else
    {
      v42 = -1;
    }

    if (v18)
    {
      v43 = v42 & (~v10 + a2);
      if (v18 <= 3)
      {
        v44 = v18;
      }

      else
      {
        v44 = 4;
      }

      bzero(((a1 + v21) & ~v20), v18);
      if (v44 > 2)
      {
        if (v44 == 3)
        {
          *v36 = v43;
          *(v36 + 2) = BYTE2(v43);
        }

        else
        {
          *v36 = v43;
        }
      }

      else if (v44 == 1)
      {
        *v36 = v43;
      }

      else
      {
        *v36 = v43;
      }
    }
  }

  else
  {
    v37 = ((v23 + v36) & ~v19);
    if (v15 >= a2)
    {
      v45 = *(v12 + 56);

      v45((v23 + v36) & ~v19, a2 + 1);
    }

    else
    {
      if (v24 <= 3)
      {
        v38 = ~(-1 << (8 * v24));
      }

      else
      {
        v38 = -1;
      }

      if (v24)
      {
        v39 = v38 & (~v15 + a2);
        if (v24 <= 3)
        {
          v40 = v24;
        }

        else
        {
          v40 = 4;
        }

        bzero(v37, v24);
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            *v37 = v39;
            v37[2] = BYTE2(v39);
          }

          else
          {
            *v37 = v39;
          }
        }

        else if (v40 == 1)
        {
          *v37 = v39;
        }

        else
        {
          *v37 = v39;
        }
      }
    }
  }
}

uint64_t sub_18E716BE0(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_18E72B438();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_18E72B438();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E716CF4(uint64_t *a1, uint64_t *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  if (*(v9 + 84))
  {
    v12 = *(v9 + 64);
  }

  else
  {
    v12 = *(v9 + 64) + 1;
  }

  v13 = (*(v6 + 80) | *(v9 + 80));
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v7 + v10) & ~v10) + v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v13 + 16) & ~v13));
  }

  else
  {
    v17 = v8;
    v18 = ~v10;
    if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v19 = a1 + v11;
    v20 = a2 + v11;
    if ((*(v9 + 48))(v20 & v18, 1, v17))
    {
      memcpy((v19 & v18), (v20 & v18), v12);
    }

    else
    {
      (*(v9 + 16))(v19 & v18, v20 & v18, v17);
      (*(v9 + 56))(v19 & v18, 0, 1, v17);
    }
  }

  return a1;
}

uint64_t sub_18E716F70(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(a1, AssociatedTypeWitness);
  }

  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + a1;
  if (!v5)
  {
    ++v10;
  }

  v11 = v10 + v9;
  v14 = *(v7 - 8);
  result = (*(v8 + 48))((v10 + v9) & ~v9, 1, v7);
  if (!result)
  {
    v13 = *(v14 + 8);

    return v13(v11 & ~v9, v7);
  }

  return result;
}

char *sub_18E717108(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, AssociatedTypeWitness);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  if ((*(v14 + 48))(v18 & ~v15, 1, v13))
  {
    if (*(v14 + 84))
    {
      v19 = *(v14 + 64);
    }

    else
    {
      v19 = *(v14 + 64) + 1;
    }

    memcpy((v17 & ~v15), (v18 & ~v15), v19);
  }

  else
  {
    (*(v14 + 16))(v17 & ~v15, v18 & ~v15, v13);
    (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
  }

  return a1;
}

char *sub_18E717304(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16;
  v18 = &a1[v13 + v16];
  v19 = &a2[v17];
  v20 = *(v15 + 48);
  v21 = v20(v18 & ~v16, 1, v14);
  v22 = v20(v19 & ~v16, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 16))(v18 & ~v16, v19 & ~v16, v14);
      (*(v15 + 56))(v18 & ~v16, 0, 1, v14);
      return a1;
    }

    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v15 + 24))(v18 & ~v16, v19 & ~v16, v14);
      return a1;
    }

    v26 = *(v15 + 8);
    v25 = v15 + 8;
    v26(v18 & ~v16, v14);
    v23 = *(v25 + 76);
    v24 = *(v25 + 56);
  }

  if (v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 + 1;
  }

  memcpy((v18 & ~v16), (v19 & ~v16), v27);
  return a1;
}

char *sub_18E7175EC(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, AssociatedTypeWitness);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  if ((*(v14 + 48))(v18 & ~v15, 1, v13))
  {
    if (*(v14 + 84))
    {
      v19 = *(v14 + 64);
    }

    else
    {
      v19 = *(v14 + 64) + 1;
    }

    memcpy((v17 & ~v15), (v18 & ~v15), v19);
  }

  else
  {
    (*(v14 + 32))(v17 & ~v15, v18 & ~v15, v13);
    (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
  }

  return a1;
}

char *sub_18E7177E8(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16;
  v18 = &a1[v13 + v16];
  v19 = &a2[v17];
  v20 = *(v15 + 48);
  v21 = v20(v18 & ~v16, 1, v14);
  v22 = v20(v19 & ~v16, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 32))(v18 & ~v16, v19 & ~v16, v14);
      (*(v15 + 56))(v18 & ~v16, 0, 1, v14);
      return a1;
    }

    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v15 + 40))(v18 & ~v16, v19 & ~v16, v14);
      return a1;
    }

    v26 = *(v15 + 8);
    v25 = v15 + 8;
    v26(v18 & ~v16, v14);
    v23 = *(v25 + 76);
    v24 = *(v25 + 56);
  }

  if (v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 + 1;
  }

  memcpy((v18 & ~v16), (v19 & ~v16), v27);
  return a1;
}

uint64_t sub_18E717AD0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + v15;
  if (a2 <= v13)
  {
LABEL_40:
    if (v8 >= v12)
    {
      v26 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
    }

    else
    {
      v26 = (*(v10 + 48))((a1 + v18) & ~v15);
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = v17 + (v18 & ~v15);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_39:
      if (v13)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_18E717D60(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v16 + v17) & ~v17) + v18;
  if (a3 <= v15)
  {
LABEL_29:
    if (v15 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_29;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v8 + 56);

      v30(a1, a2 + 1, v9, AssociatedTypeWitness);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29(a1, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_48:
            *a1 = v25;
            return;
          }

LABEL_64:
          *a1 = v25;
          return;
        }

LABEL_83:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

uint64_t sub_18E71819C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E718208(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E71825C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_18E713FB4(v4, a1);
}

void *sub_18E718364(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v17 = v10;
  v11 = v5;
  v12 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_18E72B548() || (type metadata accessor for AnyGestureNode(), swift_dynamicCast(), v5 = v11, v6 = v12, !v18))
      {
LABEL_22:
        sub_18E687EE8(v1);
        return v17;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v5 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v6 = (v14 - 1) & v14;
    v15 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    Strong = swift_unknownObjectUnownedLoadStrong();

    v11 = v5;
    v12 = v6;
    if (Strong)
    {
      MEMORY[0x193AD16B0](result);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18E72B1B8();
      }

      result = sub_18E72B218();
      v10 = v24;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v5);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_18E718768(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_18E6EB030;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_18E71897C(void *a1)
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))();
  v2 = sub_18E6F0548(v1);

  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_18E72B518();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v6 = v4;
        while ((v2 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = v6 + 1;
          Strong = swift_unknownObjectUnownedLoadStrong();
          if (Strong)
          {
            goto LABEL_13;
          }

LABEL_9:
          v6 = v4;
          if (v4 == v3)
          {
            goto LABEL_21;
          }
        }

        result = MEMORY[0x193AD1B60](v6, v2);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          return result;
        }

        v9 = swift_unknownObjectUnownedLoadStrong();
        Strong = swift_unknownObjectRelease();
        if (!v9)
        {
          goto LABEL_9;
        }

LABEL_13:
        MEMORY[0x193AD16B0](Strong);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18E72B1B8();
        }

        sub_18E72B218();
        v5 = v10;
        if (v4 == v3)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v5;
}

id sub_18E718BF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E718CC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16)
{
  v125 = a6;
  v126 = a7;
  v122 = a4;
  v120 = a3;
  v130 = a1;
  v131 = a2;
  v132 = a8;
  v129 = a12;
  v123 = a11;
  v124 = a5;
  v117 = a13;
  v118 = a14;
  v115 = *(a16 + 8);
  v18 = type metadata accessor for EventSource(255, a15, v115, a3);
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for DynamicCombinerComponent(0, v18, WitnessTable, v19);
  v119 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v111 = (&v88 - v21);
  v22 = swift_getWitnessTable();
  v121 = v20;
  v116 = v22;
  v24 = type metadata accessor for TimeoutComponent(255, v20, v22, v23);
  v25 = swift_getWitnessTable();
  v26 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v26, v27, v28);
  v29 = swift_getWitnessTable();
  v30 = type metadata accessor for ExpirationComponent(0, v24, v25, v29);
  v113 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v88 - v31;
  v32 = swift_getWitnessTable();
  v114 = v30;
  v108 = v32;
  v34 = type metadata accessor for DurationGate(255, v30, v32, v33);
  v35 = swift_getWitnessTable();
  v36 = type metadata accessor for ExpirationComponent(0, v34, v35, v29);
  v106 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v104 = &v88 - v37;
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v128 = a16;
  v40 = *(a16 + 16);
  v107 = v36;
  v135 = v36;
  v136 = v38;
  v102 = v38;
  v100 = v39;
  v137 = v39;
  v138 = v40;
  v99 = v40;
  v41 = type metadata accessor for SeparationDistanceGate(0, &v135);
  v103 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v88 - v42;
  type metadata accessor for CGPoint(255);
  v45 = v44;
  v46 = swift_getWitnessTable();
  v105 = v41;
  v97 = v46;
  v47 = type metadata accessor for MapComponent(0, v41, v45, v46);
  v98 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v88 - v48;
  v50 = swift_getWitnessTable();
  v101 = v47;
  v95 = v50;
  v51 = type metadata accessor for ValueTracker(0, v47, v45, v50);
  v96 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v94 = &v88 - v52;
  v53 = swift_getWitnessTable();
  v135 = v51;
  v136 = v45;
  v109 = v45;
  v92 = v53;
  v137 = v53;
  v138 = &protocol witness table for CGPoint;
  v54 = type metadata accessor for MovementGate(0, &v135);
  v93 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v91 = &v88 - v55;
  v89 = swift_getWitnessTable();
  v57 = type metadata accessor for RepeatComponent(255, v54, v89, v56);
  v58 = swift_getWitnessTable();
  v59 = sub_18E6B04D4();
  v60 = type metadata accessor for ExpirationComponent(0, v57, v58, v59);
  v90 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v88 - v61;
  v127 = a15;
  sub_18E6BCAE4(&v135);
  v133 = v135;
  v134 = v136;
  v63 = WitnessTable;
  v64 = sub_18E6CD8A4(v18, WitnessTable);
  v86 = v18;
  v87 = v63;
  v65 = v111;
  v66 = v117;
  sub_18E6D7C3C(&v133, v117, 0, 1, 0, v118, v64, v67, v111, v86, v87);

  v68 = v120;
  v69 = v122;
  if (v66 <= 1)
  {
    v68 = sub_18E72B958();
  }

  v70 = v110;
  v71 = v121;
  sub_18E721B58(v68, v69, 0xD000000000000013, 0x800000018E73A710, v121, v116, v110);
  (*(v119 + 8))(v65, v71);
  v72 = v104;
  v73 = v114;
  v74 = sub_18E6BDAD4(v124, v125, v126, v123, v114, v104);
  (*(v113 + 8))(v70, v73, v74);
  v75 = v107;
  sub_18E71D170(v107, v102, v100, v99, v43, a10);
  (*(v106 + 8))(v72, v75);
  v76 = swift_allocObject();
  v77 = v128;
  *(v76 + 16) = v127;
  *(v76 + 24) = v77;
  v78 = v105;
  v79 = v109;
  sub_18E7131EC(sub_18E71981C, v76, v105, v109, v97, v49);

  (*(v103 + 8))(v43, v78);
  v80 = v94;
  v81 = v101;
  sub_18E6F6028(v101, v95, v94);
  (*(v98 + 8))(v49, v81);
  v82 = v91;
  sub_18E7109F0(v51, v79, v92, &protocol witness table for CGPoint, v91, a9);
  (*(v96 + 8))(v80, v51);
  v83 = sub_18E6FB128(v129, v130, v131, v54, v89, v62);
  (*(v93 + 8))(v82, v54, v83);
  v84 = swift_getWitnessTable();
  sub_18E7131EC(sub_18E719838, 0, v60, v79, v84, v132);
  return (*(v90 + 8))(v62, v60);
}

uint64_t sub_18E719798@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  result = sub_18E6F2370(v5, WitnessTable, *(a2 + 16));
  *a3 = v8;
  a3[1] = v9;
  return result;
}

__n128 sub_18E719838@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18E719844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = *(*a1 + 368);
  v5 = type metadata accessor for GesturePhase(255, v119, a3, a4);
  v6 = sub_18E72B438();
  v108 = *(v6 - 8);
  v109 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v117 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v102 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v110 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v102 - v13;
  v16 = type metadata accessor for RingBuffer(0, v5, v14, v15);
  v120 = *(v16 - 8);
  v121 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v115 = &v102 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v102 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v102 - v25;
  v27 = *(v5 - 8);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v113 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v112 = &v102 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v116 = &v102 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v114 = &v102 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v107 = &v102 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v106 = &v102 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v102 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v104 = &v102 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v102 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v102 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v102 - v51;
  v53 = a1;
  GestureNode.phase.getter(v54, v55, &v102 - v51);
  v122 = v27;
  v123 = *(v27 + 32);
  v124 = v27 + 32;
  v123(v50, v52, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v122 + 8))(v50, v5);
      goto LABEL_11;
    }

    v59 = v118;
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_12;
    }

    sub_18E67DBC8(v26, v57, v58);
    v60 = v103;
    v61 = v121;
    sub_18E67DE08(v121, v103);
    v120 = *(v120 + 8);
    (v120)(v26, v61);
    v62 = *(v122 + 48);
    if (v62(v60, 1, v5) == 1)
    {
      GestureNode.phase.getter(v63, v64, v47);
      v65 = v62(v60, 1, v5) == 1;
      v66 = v60;
      v67 = v117;
      v68 = v104;
      if (!v65)
      {
        (*(v108 + 8))(v66, v109);
      }
    }

    else
    {
      v123(v47, v60, v5);
      v67 = v117;
      v68 = v104;
    }

    v123(v68, v47, v5);
    v81 = swift_getEnumCaseMultiPayload();
    v82 = v105;
    v59 = v118;
    if (v81 >= 3)
    {
      if (v81 - 4 >= 2)
      {
        (*(v122 + 8))(v68, v5);
LABEL_34:
        *(v82 + 41) = 1;
        goto LABEL_35;
      }
    }

    else
    {
      (*(*(v119 - 8) + 8))(v68);
    }

    if (sub_18E6959C4(v53))
    {
      *(v82 + 40) = 0;
    }

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(*(v119 - 8) + 8))(v50);
LABEL_11:
    v59 = v118;
    goto LABEL_12;
  }

  v59 = v118;
  (*(*(v119 - 8) + 8))(v50);
LABEL_12:
  sub_18E67DBC8(v23, v57, v58);
  v69 = v110;
  v70 = v121;
  sub_18E67DE08(v121, v110);
  v120 = *(v120 + 8);
  (v120)(v23, v70);
  v62 = *(v122 + 48);
  if (v62(v69, 1, v5) == 1)
  {
    GestureNode.phase.getter(v71, v72, v42);
    if (v62(v69, 1, v5) != 1)
    {
      (*(v108 + 8))(v69, v109);
    }
  }

  else
  {
    v123(v42, v69, v5);
  }

  v73 = swift_getEnumCaseMultiPayload();
  v61 = v121;
  if (v73 == 3)
  {
    if (!(*v42 >> 62))
    {
      v67 = v117;
      goto LABEL_35;
    }

    sub_18E683B98(*v42);
  }

  else
  {
    (*(v122 + 8))(v42, v5);
  }

  v67 = v117;
  v78 = v106;
  GestureNode.phase.getter(v76, v77, v106);
  v79 = v107;
  v123(v107, v78, v5);
  v80 = swift_getEnumCaseMultiPayload();
  if (v80 > 2)
  {
    if (v80 == 3)
    {
      (*(v122 + 8))(v79, v5);
    }

    else if (v80 != 4)
    {
      *(v105 + 41) = 1;
    }
  }

  else
  {
    (*(*(v119 - 8) + 8))(v79);
  }

LABEL_35:
  v83 = v115;
  sub_18E67DBC8(v115, v74, v75);
  sub_18E67DE08(v61, v59);
  (v120)(v83, v61);
  if (v62(v59, 1, v5) == 1)
  {
    v86 = v114;
    GestureNode.phase.getter(v84, v85, v114);
    v87 = v62(v59, 1, v5);
    v88 = v116;
    if (v87 != 1)
    {
      (*(v108 + 8))(v59, v109);
    }
  }

  else
  {
    v86 = v114;
    v123(v114, v59, v5);
    v88 = v116;
  }

  v123(v88, v86, v5);
  v89 = swift_getEnumCaseMultiPayload();
  if (v89 >= 3)
  {
    if (v89 - 4 >= 2)
    {
      (*(v122 + 8))(v88, v5);
LABEL_52:
      v99 = v105;
      sub_18E68E9DC(v53);

      v100 = *(v99 + 48);
      if (v100)
      {
        v101 = *(v53 + 16);

        sub_18E68EB58((v100 + 16), v101);
        sub_18E68EB58((v100 + 24), v101);
      }

      return result;
    }
  }

  else
  {
    (*(*(v119 - 8) + 8))(v88);
  }

  v92 = v111;
  sub_18E67DBC8(v111, v90, v91);
  sub_18E67DE08(v61, v67);
  (v120)(v92, v61);
  if (v62(v67, 1, v5) == 1)
  {
    v95 = v112;
    GestureNode.phase.getter(v93, v94, v112);
    v96 = v62(v67, 1, v5);
    v97 = v113;
    if (v96 != 1)
    {
      (*(v108 + 8))(v67, v109);
    }
  }

  else
  {
    v95 = v112;
    v123(v112, v67, v5);
    v97 = v113;
  }

  v123(v97, v95, v5);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    return (*(*(v119 - 8) + 8))(v97);
  }

  if (result == 3)
  {
    return (*(v122 + 8))(v97);
  }

  if (result == 4)
  {
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_18E71A39C()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_18E71A3F4(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t))
{
  if (*v1)
  {
    v3 = *(*v1 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x193AD1330](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = a1(v4, v8, 0, v3);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_18E71A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    return sub_18E71A670(a1, a3);
  }

  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = a3;
    v10 = MEMORY[0x193AD1310](*(v7 + 16) & 0x3FLL);
    a3 = v9;
    if (v6 <= v10)
    {
LABEL_16:
      sub_18E71A670(a1, a3);
      return sub_18E71A3F4(sub_18E7265DC);
    }
  }

  v11 = a3;
  result = swift_isUniquelyReferenced_native();
  v13 = *v3;
  if ((result & 1) == 0)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = sub_18E72ADC8();

    *v3 = v14;
    v13 = v14;
  }

  if (v13)
  {

    result = sub_18E71A708(a2, (v13 + 16), v13 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_18E71A984(a1, a1 + 1, v5, (v13 + 16), v13 + 32);

      a3 = v11;
      return sub_18E71A670(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18E71A5EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E726554(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18E71A670@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E7264E4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_18E71A708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v23 = a1;
  *(&v23 + 1) = sub_18E72AD38();
  *&v24 = v7;
  *(&v24 + 1) = v8;
  v25 = 0;
  sub_18E72AD98();
  if (*(&v23 + 1))
  {
    v9 = sub_18E72AD48();
    do
    {
      v30 = v22;
      v31 = v23;
      v32 = v24;
      v33 = v25;
      result = sub_18E72AD78();
      if (v11)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(a4 + 8);
      if (result >= *(v12 + 16))
      {
        goto LABEL_26;
      }

      v13 = v12 + 24 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      sub_18E72B888();
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          MEMORY[0x193AD1DF0](2);

          sub_18E70D89C(&v21, v14);
          v17 = v15;
        }

        else
        {
          MEMORY[0x193AD1DF0](3);
          v17 = v14;
        }

        MEMORY[0x193AD1DF0](v17);
      }

      else if (v16)
      {
        MEMORY[0x193AD1DF0](1);

        _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8C8();
      }

      v18 = sub_18E72B8E8();
      result = sub_18E682A3C(v14, v15, v16);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_27;
      }

      v20 = (v19 - 1) & v18;
      if (v6 >= v9)
      {
        if (v20 < v9)
        {
          goto LABEL_3;
        }
      }

      else if (v20 >= v9)
      {
        goto LABEL_21;
      }

      if (v6 >= v20)
      {
LABEL_21:
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        sub_18E72AD78();
        v6 = v27;
        sub_18E72AD58();
      }

LABEL_3:
      sub_18E72AD98();
    }

    while (*(&v23 + 1));
  }

  return sub_18E72AD58();
}

uint64_t sub_18E71A984(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_74;
  }

  if (v6 >= 1)
  {
    v10 = result;
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      result = MEMORY[0x193AD1300](*a4 & 0x3FLL);
      if (result / 3 > v10)
      {
        if (v10 < 0)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v11 < v10)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v10)
        {
          v12 = 0;
          v13 = a3 + 32;
          while (1)
          {
            v14 = v13 + 24 * v12;
            v15 = *v14;
            v16 = *(v14 + 8);
            v17 = *(v14 + 16);
            sub_18E72B888();
            if (v17 > 1)
            {
              if (v17 == 2)
              {
                MEMORY[0x193AD1DF0](2);

                sub_18E70D89C(&v54, v15);
                v18 = v16;
              }

              else
              {
                MEMORY[0x193AD1DF0](3);
                v18 = v15;
              }

              MEMORY[0x193AD1DF0](v18);
            }

            else if (v17)
            {
              MEMORY[0x193AD1DF0](1);

              _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
            }

            else
            {
              MEMORY[0x193AD1DF0](0);
              sub_18E72B8C8();
            }

            result = sub_18E72B8E8();
            v19 = 1 << *a4;
            v20 = __OFSUB__(v19, 1);
            v21 = v19 - 1;
            if (v20)
            {
              break;
            }

            v22 = v21 & result;
            v23 = sub_18E72AD38();
            *&v54 = a4;
            *(&v54 + 1) = a5;
            *&v55 = v22;
            *(&v55 + 1) = v23;
            *&v56 = v24;
            *(&v56 + 1) = v25;
            v57 = 0;
            while (*(&v55 + 1))
            {
              v58 = v54;
              v59 = v55;
              v60 = v56;
              v61 = v57;
              v26 = sub_18E72AD78();
              if ((v27 & 1) == 0 && v26 == v12)
              {
                break;
              }

              sub_18E72AD98();
            }

            result = v12 + v6;
            if (__OFADD__(v12, v6))
            {
              goto LABEL_71;
            }

            ++v12;
            sub_18E72AD88();
            sub_18E682A3C(v15, v16, v17);
            if (v12 == v10)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_25:

        goto LABEL_26;
      }

      *&v58 = a4;
      *(&v58 + 1) = a5;
      *&v59 = 0;
      *(&v59 + 1) = sub_18E72AD38();
      *&v60 = v33;
      *(&v60 + 1) = v34;
      v61 = 0;
      v54 = v58;
      v55 = v59;
      v56 = v60;
      v57 = v61;
      v35 = sub_18E72AD78();
      if ((v36 & 1) != 0 || v35 >= v10)
      {
LABEL_41:
        result = sub_18E72AD98();
LABEL_26:
        v28 = a4[1];
        if (__OFSUB__(v28 >> 6, v6))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v29 = 1 << *a4;
        v20 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v20)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v31 = (v30 & (((v28 >> 6) - v6) >> 63)) + (v28 >> 6) - v6;
        if (v31 < v30)
        {
          v30 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v31 - v30) << 6);
        return result;
      }

      if (!__OFADD__(v35, v6))
      {
        sub_18E72AD88();
        goto LABEL_41;
      }

      __break(1u);
LABEL_47:
      *&v58 = a4;
      *(&v58 + 1) = a5;
      *&v59 = 0;
      *(&v59 + 1) = sub_18E72AD38();
      *&v60 = v37;
      *(&v60 + 1) = v38;
      v61 = 0;
      v54 = v58;
      v55 = v59;
      v56 = v60;
      v57 = v61;
      v39 = sub_18E72AD78();
      if ((v40 & 1) == 0 && v39 >= v5)
      {
        v20 = __OFSUB__(v39, v6);
        result = v39 - v6;
        if (v20)
        {
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        sub_18E72AD88();
      }

      return sub_18E72AD98();
    }

    v5 = a2;
    v32 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    result = MEMORY[0x193AD1300](*a4 & 0x3FLL);
    if (v32 >= result / 3)
    {
      goto LABEL_47;
    }

    if (v11 < v5)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v5 < 0)
    {
LABEL_81:
      __break(1u);
      return result;
    }

    if (v11 != v5)
    {
      do
      {
        v41 = a3 + 32 + 24 * v5;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        sub_18E72B888();
        if (v44 > 1)
        {
          if (v44 == 2)
          {
            MEMORY[0x193AD1DF0](2);

            sub_18E70D89C(&v54, v42);
            v45 = v43;
          }

          else
          {
            MEMORY[0x193AD1DF0](3);
            v45 = v42;
          }

          MEMORY[0x193AD1DF0](v45);
        }

        else if (v44)
        {
          MEMORY[0x193AD1DF0](1);

          _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          MEMORY[0x193AD1DF0](0);
          sub_18E72B8C8();
        }

        result = sub_18E72B8E8();
        v46 = 1 << *a4;
        v20 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v20)
        {
          goto LABEL_73;
        }

        v48 = v47 & result;
        v49 = sub_18E72AD38();
        *&v54 = a4;
        *(&v54 + 1) = a5;
        *&v55 = v48;
        *(&v55 + 1) = v49;
        *&v56 = v50;
        *(&v56 + 1) = v51;
        v57 = 0;
        while (*(&v55 + 1))
        {
          v58 = v54;
          v59 = v55;
          v60 = v56;
          v61 = v57;
          v52 = sub_18E72AD78();
          if ((v53 & 1) == 0 && v52 == v5)
          {
            break;
          }

          sub_18E72AD98();
        }

        sub_18E72AD88();
        sub_18E682A3C(v42, v43, v44);
      }

      while (++v5 != v11);
    }
  }

  return result;
}

uint64_t sub_18E71AF04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_140:
      result = sub_18E7290FC(v9);
      v9 = result;
    }

    v87 = (v9 + 16);
    v88 = *(v9 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v9 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_18E71C018((*a3 + 3 * *v89), (*a3 + 3 * *v91), *a3 + 3 * v92, v5);
        if (v6)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_132;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_133;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_134;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_36;
    }

    v12 = *a3;
    v13 = *(*a3 + 3 * v11 + 2);
    v14 = 3 * v8;
    if (v13 == 2)
    {
      v15 = 0;
    }

    else
    {
      v16 = *(v12 + v14 + 2);
      if (v16 == 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = v16 ^ 1;
        if ((v13 & 1) == 0)
        {
          v15 = 0;
        }
      }
    }

    v8 += 2;
    if (v10 + 2 < v7)
    {
      v11 = v7 - 1;
      v17 = (v12 + v14 + 8);
      while (1)
      {
        v18 = v13;
        v19 = *v17;
        v17 += 3;
        LOBYTE(v13) = v19;
        if (v19 == 2 || v18 != 2 && ((v13 & 1) == 0 || (v18 & 1) != 0))
        {
          if (v15)
          {
            v11 = v8 - 1;
            if (v8 < v10)
            {
              goto LABEL_137;
            }

LABEL_28:
            if (v10 <= v11)
            {
              v20 = 3 * v8 - 3;
              v21 = v14 + 2;
              v22 = v8;
              v23 = v10;
              do
              {
                if (v23 != --v22)
                {
                  v30 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_143;
                  }

                  v24 = (v30 + v21);
                  v25 = v30 + v20;
                  v26 = *(v24 - 2);
                  v27 = *(v24 - 1);
                  v28 = *v24;
                  v29 = *(v25 + 2);
                  *(v24 - 1) = *v25;
                  *v24 = v29;
                  *v25 = v26;
                  *(v25 + 1) = v27;
                  *(v25 + 2) = v28;
                }

                ++v23;
                v20 -= 3;
                v21 += 3;
              }

              while (v23 < v22);
              v7 = a3[1];
            }

            goto LABEL_36;
          }
        }

        else if ((v15 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (v7 == ++v8)
        {
          v8 = v7;
          break;
        }
      }
    }

    if (v15)
    {
      if (v8 < v10)
      {
        goto LABEL_137;
      }

      goto LABEL_28;
    }

LABEL_36:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_138;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v41 = *(v9 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_18E6ED5B4((v41 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v42;
    v43 = v9 + 32;
    v44 = (v9 + 32 + 16 * v5);
    *v44 = v10;
    v44[1] = v8;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_145;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v9 + 32);
          v46 = *(v9 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = (v9 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v42 < 2)
        {
          goto LABEL_130;
        }

        v71 = (v9 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_126;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_128;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        if (v5 - 1 >= v42)
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        sub_18E71C018((*a3 + 3 * *v82), (*a3 + 3 * *v84), *a3 + 3 * v85, v96);
        if (v6)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v9 + 16);
        if (v5 >= v86)
        {
          goto LABEL_119;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v9 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_120;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_121;
      }

      v56 = (v9 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_123;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_131;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v94;
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v31 = *a3;
  v32 = *a3 + 3 * v8;
  v33 = v10 - v8;
LABEL_46:
  v34 = *(v31 + 3 * v8 + 2);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 == 2 || (v37 = *(v36 - 1), v37 != 2) && ((v34 ^ 1 | v37) & 1) != 0)
    {
LABEL_45:
      ++v8;
      v32 += 3;
      --v33;
      if (v8 != v7)
      {
        goto LABEL_46;
      }

      v8 = v7;
      goto LABEL_55;
    }

    if (!v31)
    {
      break;
    }

    v38 = *v36;
    v39 = v36[1];
    result = *(v36 - 3);
    *v36 = result;
    v36[2] = *(v36 - 1);
    *(v36 - 2) = v39;
    *(v36 - 1) = v34;
    *(v36 - 3) = v38;
    v36 -= 3;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_18E71B540(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v129 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_122:
    v11 = *v129;
    if (!*v129)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v122 = v9;
    }

    else
    {
LABEL_156:
      result = sub_18E7290FC(v9);
      v122 = result;
    }

    v9 = v5;
    v123 = *(v122 + 2);
    if (v123 >= 2)
    {
      while (*v6)
      {
        v124 = *&v122[16 * v123];
        v5 = *&v122[16 * v123 + 24];
        sub_18E71C254((*v6 + 8 * v124), (*v6 + 8 * *&v122[16 * v123 + 16]), (*v6 + 8 * v5), v11);
        if (v9)
        {
        }

        if (v5 < v124)
        {
          goto LABEL_149;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_18E7290FC(v122);
        }

        if (v123 - 2 >= *(v122 + 2))
        {
          goto LABEL_150;
        }

        v125 = &v122[16 * v123];
        *v125 = v124;
        *(v125 + 1) = v5;
        result = sub_18E729070(v123 - 1);
        v123 = *(v122 + 2);
        if (v123 <= 1)
        {
        }
      }

      goto LABEL_160;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    v133 = v9;
    v130 = v8;
    if (v8 + 1 >= v7)
    {
      goto LABEL_40;
    }

    v12 = v8;
    v13 = *v6;
    v14 = *(*v6 + 8 * v11);
    v15 = *(*v6 + 8 * v8);

    v145 = _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(v14, v15);

    v11 = (v12 + 2);
    if (v12 + 2 < v7)
    {
      v126 = v5;
      v16 = v13 + 8 * v12 + 16;
      v10 = v12;
      v142 = v7;
      while (1)
      {
        v136 = v11;
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = (*(**v16 + 192))(result);
        if (v20)
        {
          v22 = v20;
          v23 = v21;
          v24 = (*(*v18 + 192))();
          if (v24)
          {
            v26 = v24;
            v27 = v25;
            ObjectType = swift_getObjectType();
            v29 = ObjectType;
            if (v22 == v26)
            {
              v138 = ObjectType;
              v30 = swift_getObjectType();
              v140 = *(v23 + 8);

              v31 = v140(v19, v30, v23);
              if (v32)
              {

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                v6 = a3;
                v9 = v133;
                v11 = v136;
                goto LABEL_23;
              }

              v36 = v31;
              v37 = (*(v27 + 8))(v18, v138, v27);
              v39 = v38;

              swift_unknownObjectRelease();
              result = swift_unknownObjectRelease();
              v11 = v136;
              if (v39)
              {
                v6 = a3;
                v9 = v133;
LABEL_23:
                v10 = v130;
LABEL_24:
                v17 = v142;
                if (v145)
                {
                  v5 = v126;
                  if (v11 < v10)
                  {
LABEL_155:
                    __break(1u);
                    goto LABEL_156;
                  }

                  goto LABEL_29;
                }

                goto LABEL_8;
              }

              v35 = v36 < v37;
              v6 = a3;
              v9 = v133;
            }

            else
            {
              v141 = *(v27 + 24);

              v35 = v141(v22, v23, v19, v29, v27);

              swift_unknownObjectRelease();
              result = swift_unknownObjectRelease();
              v6 = a3;
              v9 = v133;
              v11 = v136;
            }

            v17 = v142;
            v10 = v130;
            if ((v145 ^ v35))
            {
              goto LABEL_37;
            }

            goto LABEL_8;
          }

          v33 = swift_unknownObjectRelease();
          v10 = v130;
        }

        else
        {
        }

        v34 = (*(*v18 + 192))(v33);

        v9 = v133;
        if (!v34)
        {
          v6 = a3;
          goto LABEL_24;
        }

        result = swift_unknownObjectRelease();
        v6 = a3;
        v17 = v142;
        if ((v145 & 1) == 0)
        {
          v5 = v126;
          goto LABEL_40;
        }

LABEL_8:
        ++v11;
        v16 += 8;
        if (v17 == v11)
        {
          v11 = v17;
LABEL_37:
          v5 = v126;
          if (v145)
          {
            goto LABEL_28;
          }

          goto LABEL_40;
        }
      }
    }

    v10 = v12;
    if (v145)
    {
LABEL_28:
      if (v11 < v10)
      {
        goto LABEL_155;
      }

LABEL_29:
      if (v10 < v11)
      {
        v40 = 8 * v11 - 8;
        v41 = 8 * v10;
        v42 = v11;
        v43 = v10;
        do
        {
          if (v43 != --v42)
          {
            v45 = *v6;
            if (!*v6)
            {
              goto LABEL_159;
            }

            v44 = *(v45 + v41);
            *(v45 + v41) = *(v45 + v40);
            *(v45 + v40) = v44;
          }

          ++v43;
          v40 -= 8;
          v41 += 8;
        }

        while (v43 < v42);
      }
    }

LABEL_40:
    v46 = v6[1];
    if (v11 < v46)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_152;
      }

      if (&v11[-v10] < a4)
      {
        break;
      }
    }

LABEL_69:
    if (v11 < v10)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v76 = *(v9 + 2);
    v75 = *(v9 + 3);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_18E6ED5B4((v75 > 1), v76 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v77;
    v78 = &v9[16 * v76];
    *(v78 + 4) = v10;
    *(v78 + 5) = v11;
    v79 = *v129;
    if (!*v129)
    {
      goto LABEL_161;
    }

    if (v76)
    {
      while (1)
      {
        v80 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v81 = *(v9 + 4);
          v82 = *(v9 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_89:
          if (v84)
          {
            goto LABEL_140;
          }

          v97 = &v9[16 * v77];
          v99 = *v97;
          v98 = *(v97 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_143;
          }

          v103 = &v9[16 * v80 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_147;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v80 = v77 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v107 = &v9[16 * v77];
        v109 = *v107;
        v108 = *(v107 + 1);
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_103:
        if (v102)
        {
          goto LABEL_142;
        }

        v110 = &v9[16 * v80];
        v112 = *(v110 + 4);
        v111 = *(v110 + 5);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_145;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_110:
        v118 = v80 - 1;
        if (v80 - 1 >= v77)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
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
          goto LABEL_154;
        }

        if (!*v6)
        {
          goto LABEL_158;
        }

        v119 = *&v9[16 * v118 + 32];
        v120 = *&v9[16 * v80 + 40];
        sub_18E71C254((*v6 + 8 * v119), (*v6 + 8 * *&v9[16 * v80 + 32]), (*v6 + 8 * v120), v79);
        if (v5)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_18E7290FC(v9);
        }

        if (v118 >= *(v9 + 2))
        {
          goto LABEL_137;
        }

        v121 = &v9[16 * v118];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        result = sub_18E729070(v80);
        v77 = *(v9 + 2);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = &v9[16 * v77 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_138;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_139;
      }

      v92 = &v9[16 * v77];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_141;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_144;
      }

      if (v96 >= v88)
      {
        v114 = &v9[16 * v80 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_148;
        }

        if (v83 < v117)
        {
          v80 = v77 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v11;
    if (v11 >= v7)
    {
      goto LABEL_122;
    }
  }

  v47 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_153;
  }

  if (v47 >= v46)
  {
    v47 = v6[1];
  }

  if (v47 < v10)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v11 == v47)
  {
    goto LABEL_69;
  }

  v127 = v5;
  v146 = *v6;
  v48 = *v6 + 8 * v11 - 8;
  v49 = v10 - v11;
  v131 = v47;
LABEL_51:
  v137 = v11;
  v50 = *(v146 + 8 * v11);
  v134 = v49;
  v135 = v48;
  v51 = v48;
  while (1)
  {
    v52 = *v51;
    v53 = (*(*v50 + 192))(result);
    if (!v53)
    {

LABEL_61:
      v71 = (*(*v52 + 192))(v70);

      if (!v71)
      {
        goto LABEL_50;
      }

      result = swift_unknownObjectRelease();
      goto LABEL_64;
    }

    v55 = v53;
    v56 = v54;
    v57 = (*(*v52 + 192))();
    if (!v57)
    {

      v70 = swift_unknownObjectRelease();
      goto LABEL_61;
    }

    v59 = v57;
    v60 = v58;
    v61 = swift_getObjectType();
    v62 = v61;
    if (v55 == v59)
    {
      v139 = v61;
      v63 = swift_getObjectType();
      v143 = *(v56 + 8);

      v64 = v143(v50, v63, v56);
      if (v65)
      {

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
LABEL_50:
        v11 = v137 + 1;
        v48 = v135 + 8;
        v49 = v134 - 1;
        if (v137 + 1 == v131)
        {
          v11 = v131;
          v5 = v127;
          v6 = a3;
          v9 = v133;
          v10 = v130;
          goto LABEL_69;
        }

        goto LABEL_51;
      }

      v66 = v64;
      v67 = (*(v60 + 8))(v52, v139);
      v69 = v68;

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v69 & 1) != 0 || v66 >= v67)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v144 = *(v60 + 24);

      v72 = v144(v55, v56, v50, v62, v60);

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v72 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_64:
    if (!v146)
    {
      break;
    }

    v73 = *v51;
    v50 = v51[1];
    *v51 = v50;
    v51[1] = v73;
    --v51;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}