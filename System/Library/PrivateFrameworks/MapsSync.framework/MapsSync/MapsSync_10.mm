uint64_t sub_1B638DA08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      sub_1B63BF434();

      sub_1B63BEC24();
      v9 = sub_1B63BF494();

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

_OWORD *sub_1B638DBB8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6380EF4(a2, a3);
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
      sub_1B638E350();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B638CE9C(v16, a4 & 1);
    v11 = sub_1B6380EF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B63BF3D4();
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

    return sub_1B628E928(a1, v22);
  }

  else
  {
    sub_1B638DECC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1B638DD08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6380EF4(a2, a3);
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
      sub_1B638D154(v16, a4 & 1);
      v11 = sub_1B6380EF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1B63BF3D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B638E4F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1B638DE84(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
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

_OWORD *sub_1B638DECC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B628E928(a4, (a5[7] + 32 * a1));
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

void *sub_1B638DF38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943530, &unk_1B63C6500);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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

void *sub_1B638E094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C8, &unk_1B63C64F0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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

id sub_1B638E1F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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

void *sub_1B638E350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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
        sub_1B629E3F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B628E928(v25, (*(v4 + 56) + v22));
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

void *sub_1B638E4F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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

void *sub_1B638E664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943598, &qword_1B63C64C0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
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

unint64_t *sub_1B638E7CC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B638E92C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1B638EB18(v8, v4, v2);
  result = MEMORY[0x1B8C93430](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1B638E92C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_1B629E3F0(*(a3 + 56) + 32 * v13, v21);
    sub_1B629E3F0(v21, &v20);
    swift_bridgeObjectRetain_n();

    if (swift_dynamicCast())
    {

      if ((v19 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v14 = *v18 & 0xFFFFFFFFFFFFLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);

      if (v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);

LABEL_18:
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1B638EB90(v17, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1B638EB90(v17, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B638EB18(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B638E92C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B638EB90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  result = sub_1B63BF304();
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
  v31 = v4;
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
    sub_1B629E3F0(v17 + 32 * v16, v33);
    sub_1B628E928(v33, v32);
    sub_1B63BF434();

    sub_1B63BEC24();
    result = sub_1B63BF494();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1B628E928(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

void sub_1B638EDE0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8C92750](a1, a2, v7);
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
    if (sub_1B63BF024() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B63BF034();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1B63BEF14();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1B63BEF24();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_1B638F004(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B63BEC34();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B63BEC64();
}

uint64_t sub_1B638F0B4(uint64_t a1)
{
  *(v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B638F144, 0, 0);
}

uint64_t sub_1B638F144()
{
  v1 = objc_opt_self();
  v2 = sub_1B63BE884();
  v0[4] = 0;
  v3 = [v1 cachedModelForPersistentStoreWithURL:v2 options:0 error:v0 + 4];
  v0[6] = v3;

  v4 = v0[4];
  if (v3)
  {
    v5 = v4;
    sub_1B63BE874();
    v6 = objc_allocWithZone(MEMORY[0x1E695D688]);
    v7 = v3;
    v8 = sub_1B63BEBC4();

    v9 = [v6 initWithName:v8 managedObjectModel:v7];
    v0[7] = v9;

    v10 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v11 = sub_1B63BE884();
    v12 = [v10 initWithURL_];
    v0[8] = v12;

    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    v13 = sub_1B63BEEF4();
    [v12 setOption:v13 forKey:*MEMORY[0x1E695D3C0]];

    v14 = sub_1B63BEEF4();
    [v12 setOption:v14 forKey:*MEMORY[0x1E695D430]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B63C3D70;
    *(v15 + 32) = v12;
    sub_1B6281C60(0, &qword_1EDB0F630, 0x1E695D6C8);
    v16 = v12;
    v17 = sub_1B63BEC94();

    [v9 setPersistentStoreDescriptions_];

    v18 = swift_task_alloc();
    v0[9] = v18;
    *(v18 + 16) = v9;
    *(v18 + 24) = v7;
    v19 = swift_task_alloc();
    v0[10] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B8, &qword_1B63C64E0);
    *v19 = v0;
    v19[1] = sub_1B638F4F4;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001B63CBA00, sub_1B6393B1C, v18, v20);
  }

  else
  {
    v21 = v4;
    sub_1B63BE824();

    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1B638F4F4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B638F6EC;
  }

  else
  {

    v2 = sub_1B638F644;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B638F644()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1B638F6EC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.exportDatabase(url:entityName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B628FBFC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.importDatabase(url:dictionary:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B628CAA0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.getCounts(url:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B629DD18;

  return v7(a1);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.purgeDatabase(url:entityName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B628CAA0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.deleteObject(url:identifier:managedObjectId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B628E340;

  return v11(a1, a2, a3);
}

uint64_t sub_1B638FE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B638FF08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B638B6B8(v2, v3, v4);
}

uint64_t sub_1B638FFBC(uint64_t a1, uint64_t *a2)
{
  v246 = a1;
  v228 = sub_1B63BE8E4();
  v3 = MEMORY[0x1EEE9AC00](v228);
  v226 = &v212 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v219 = &v212 - v6;
  v7 = *a2;
  v8 = *a2 + 64;
  v9 = 1 << *(*a2 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(*a2 + 64);
  v12 = (v9 + 63) >> 6;
  v225 = "yyyy-MM-dd HH:mm:ss Z";
  v227 = (v5 + 8);

  v13 = 0;
  v223 = 0;
  v14 = v7;
  v245 = v7;
  v230 = v8;
  v229 = v12;
  v231 = a2;
LABEL_5:
  v236 = v14;
LABEL_8:
  if (v11)
  {
    v15 = v11;
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v15 = *(v8 + 8 * v16);
    ++v13;
    if (v15)
    {
      v13 = v16;
LABEL_14:
      v11 = (v15 - 1) & v15;
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }

      v17 = (*(v7 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v15)))));
      v19 = *v17;
      v18 = v17[1];

      v20 = sub_1B6380EF4(v19, v18);
      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }

      v240 = v11;
      v22 = *(*(v14 + 56) + 8 * v20);
      v23 = objc_opt_self();

      v24 = sub_1B638F004(2uLL, v19, v18);
      v26 = v25;
      v28 = v27;
      v29 = v18;
      v31 = v30;
      v239 = v29;

      MEMORY[0x1B8C92300](v24, v26, v28, v31);

      v32 = sub_1B63BEBC4();

      v33 = [v23 entityForName:v32 inManagedObjectContext:v246];

      if (!v33)
      {

        v11 = v240;
        v14 = v236;
        v7 = v245;
LABEL_7:

        goto LABEL_8;
      }

      v214 = v23;
      v217 = v33;
      v216 = v19;
      v237 = v22;
      v215 = v22[2];
      if (v215)
      {
        v34 = 0;
        v35 = v231;
        v7 = v245;
        while (1)
        {
          if (v34 >= v237[2])
          {
            goto LABEL_156;
          }

          v38 = v223;
          v249 = sub_1B638E7CC(v37);
          v223 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v237 = sub_1B638C8B0(v237);
          }

          v39 = v237;
          if (v34 >= v237[2])
          {
            goto LABEL_157;
          }

          v40 = &v237[v34 + 4];
          *v40 = v249;

          if (v34 >= v39[2])
          {
            goto LABEL_158;
          }

          v238 = v40;
          v41 = *v40;
          if ((*v40)[2])
          {

            v42 = sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
            if (v43)
            {
              sub_1B629E3F0(v41[7] + 32 * v42, &v257);

              goto LABEL_30;
            }
          }

          v257 = 0u;
          v258 = 0u;
LABEL_30:
          if (v34 >= v237[2])
          {
            goto LABEL_159;
          }

          v218 = v34 + 1;
          sub_1B63846A0(&v257, 0x44497463656A626FLL, 0xE800000000000000);
          v44 = [v217 relationshipsByName];
          sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
          v45 = sub_1B63BEB74();

          v46 = 0;
          v48 = v45 + 64;
          v47 = *(v45 + 64);
          v224 = v45;
          v49 = 1 << *(v45 + 32);
          if (v49 < 64)
          {
            v50 = ~(-1 << v49);
          }

          else
          {
            v50 = -1;
          }

          v51 = v50 & v47;
          v52 = (v49 + 63) >> 6;
          v242 = v34;
          v222 = v45 + 64;
          v221 = v52;
          if (v51)
          {
            while (1)
            {
LABEL_39:
              v54 = v237;
              v55 = v238;
              if (v34 >= v237[2])
              {
                goto LABEL_154;
              }

              v235 = (v51 - 1) & v51;
              v56 = __clz(__rbit64(v51)) | (v46 << 6);
              v57 = *(v224 + 56);
              v58 = (*(v224 + 48) + 16 * v56);
              v59 = v58[1];
              v243 = *v58;
              v60 = *(v57 + 8 * v56);
              v61 = *v238;
              v62 = (*v238)[2];
              v247 = v59;

              v241 = v60;
              if (v62)
              {
                break;
              }

LABEL_52:
              if (v242 >= v54[2])
              {
                goto LABEL_155;
              }

              v73 = *v55;
              if (!(*v55)[2])
              {
                goto LABEL_58;
              }

              v74 = sub_1B6380EF4(0x6F6974616C65725FLL, 0xEE0073706968736ELL);
              if ((v75 & 1) == 0)
              {

LABEL_58:
                v76 = MEMORY[0x1E69E7CC0];
                goto LABEL_59;
              }

              sub_1B629E3F0(v73[7] + 32 * v74, &v257);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_58;
              }

              v76 = v255;
LABEL_59:
              v249 = *(v76 + 16);
              if (v249)
              {
                v77 = 0;
                v248 = v76 + 32;
                do
                {
                  if (v77 >= *(v76 + 16))
                  {
                    goto LABEL_152;
                  }

                  v78 = *(v248 + 8 * v77);
                  if (*(v78 + 16))
                  {

                    v79 = sub_1B6380EF4(0x655368637465665FLL, 0xEE00726F7463656CLL);
                    if (v80)
                    {
                      sub_1B629E3F0(*(v78 + 56) + 32 * v79, &v257);
                      if (swift_dynamicCast())
                      {
                        v81 = sub_1B63BEBF4();
                        v83 = v82;

                        *&v257 = v81;
                        *(&v257 + 1) = v83;
                        *&v255 = sub_1B63BEBF4();
                        *(&v255 + 1) = v84;
                        sub_1B6349C74();
                        LOBYTE(v81) = sub_1B63BEF74();

                        if (v81)
                        {
                          if (*(v78 + 16) && (v85 = sub_1B6380EF4(0x6669746E6564695FLL, 0xEC00000073726569), (v86 & 1) != 0) && (sub_1B629E3F0(*(v78 + 56) + 32 * v85, &v257), v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0), (swift_dynamicCast() & 1) != 0))
                          {

                            *(&v258 + 1) = v87;
                            *&v257 = v255;
                            v88 = v237[2];
                            v89 = v247;

                            if (v242 >= v88)
                            {
                              goto LABEL_160;
                            }

                            sub_1B628E928(&v257, &v255);
                            v90 = v238;
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *&v253 = *v90;
                            v92 = v253;
                            *v90 = 0x8000000000000000;
                            v93 = sub_1B6380EF4(v243, v89);
                            v95 = *(v92 + 16);
                            v96 = (v94 & 1) == 0;
                            v97 = __OFADD__(v95, v96);
                            v98 = v95 + v96;
                            if (v97)
                            {
                              goto LABEL_161;
                            }

                            v99 = v94;
                            if (*(v92 + 24) >= v98)
                            {
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                v155 = v93;
                                sub_1B638E350();
                                v93 = v155;
                              }
                            }

                            else
                            {
                              sub_1B638CE9C(v98, isUniquelyReferenced_nonNull_native);
                              v93 = sub_1B6380EF4(v243, v247);
                              if ((v99 & 1) != (v100 & 1))
                              {
                                goto LABEL_168;
                              }
                            }

                            v133 = v243;
                            v134 = v253;
                            if (v99)
                            {
                              v135 = (*(v253 + 56) + 32 * v93);
                              __swift_destroy_boxed_opaque_existential_1(v135);
                              sub_1B628E928(&v255, v135);
                            }

                            else
                            {
                              *(v253 + 8 * (v93 >> 6) + 64) |= 1 << v93;
                              v136 = (v134[6] + 16 * v93);
                              v137 = v247;
                              *v136 = v133;
                              v136[1] = v137;
                              sub_1B628E928(&v255, (v134[7] + 32 * v93));
                              v138 = v134[2];
                              v97 = __OFADD__(v138, 1);
                              v139 = v138 + 1;
                              if (v97)
                              {
                                goto LABEL_162;
                              }

                              v134[2] = v139;
                            }

                            *v238 = v134;
                          }

                          else if (*(v78 + 16))
                          {
                            v101 = sub_1B6380EF4(0x737463656A626F5FLL, 0xE800000000000000);
                            if (v102)
                            {
                              sub_1B629E3F0(*(v78 + 56) + 32 * v101, &v257);

                              v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
                              if ((swift_dynamicCast() & 1) == 0)
                              {
                                goto LABEL_62;
                              }

                              v104 = v255;
                              v105 = [v241 inverseRelationship];
                              if (v105)
                              {
                                v106 = v105;
                                v107 = [v105 entity];

                                v108 = [v107 name];
                                if (v108)
                                {
                                  v109 = [v214 entityForName:v108 inManagedObjectContext:v246];

                                  v220 = v109;
                                  if (v109)
                                  {
                                    v213 = v103;
                                    v110 = *(v104 + 16);
                                    v212 = v104;
                                    if (v110)
                                    {
                                      v111 = (v104 + 40);
                                      v244 = MEMORY[0x1E69E7CC0];
                                      do
                                      {
                                        v234 = v110;
                                        v113 = *(v111 - 1);
                                        v112 = *v111;
                                        v114 = objc_allocWithZone(MEMORY[0x1E695D620]);

                                        v233 = [v114 initWithEntity:v220 insertIntoManagedObjectContext:{v246, v212}];
                                        *(&v256 + 1) = MEMORY[0x1E69E6158];
                                        *&v255 = v113;
                                        *(&v255 + 1) = v112;
                                        sub_1B638BA00(&v255, 700, &v257);
                                        sub_1B6284EAC(&v255, &unk_1EB943740, &qword_1B63C5030);
                                        sub_1B628C510(&v257, &v255, &unk_1EB943740, &qword_1B63C5030);
                                        v115 = *(&v256 + 1);
                                        if (*(&v256 + 1))
                                        {
                                          v116 = __swift_project_boxed_opaque_existential_0(&v255, *(&v256 + 1));
                                          v117 = *(v115 - 8);
                                          MEMORY[0x1EEE9AC00](v116);
                                          v119 = &v212 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
                                          (*(v117 + 16))(v119);
                                          v120 = sub_1B63BF354();
                                          (*(v117 + 8))(v119, v115);
                                          __swift_destroy_boxed_opaque_existential_1(&v255);
                                        }

                                        else
                                        {
                                          v120 = 0;
                                        }

                                        v121 = sub_1B63BEBC4();
                                        v122 = v233;
                                        [v233 setValue:v120 forKey:v121];
                                        swift_unknownObjectRelease();

                                        v123 = [v122 objectID];
                                        v124 = [v123 URIRepresentation];

                                        v125 = v226;
                                        sub_1B63BE8B4();

                                        v126 = sub_1B63BE854();
                                        v232 = v127;
                                        (*v227)(v125, v228);
                                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                        {
                                          v244 = sub_1B62B23B4(0, *(v244 + 2) + 1, 1, v244);
                                        }

                                        v129 = *(v244 + 2);
                                        v128 = *(v244 + 3);
                                        if (v129 >= v128 >> 1)
                                        {
                                          v244 = sub_1B62B23B4((v128 > 1), v129 + 1, 1, v244);
                                        }

                                        sub_1B6284EAC(&v257, &unk_1EB943740, &qword_1B63C5030);
                                        v130 = v244;
                                        *(v244 + 2) = v129 + 1;
                                        v131 = &v130[16 * v129];
                                        v132 = v232;
                                        *(v131 + 4) = v126;
                                        *(v131 + 5) = v132;
                                        v111 += 2;
                                        v110 = v234 - 1;
                                      }

                                      while (v234 != 1);
                                    }

                                    else
                                    {
                                      v244 = MEMORY[0x1E69E7CC0];
                                    }

                                    *(&v258 + 1) = v213;
                                    *&v257 = v244;
                                    v140 = v237[2];
                                    v141 = v247;

                                    if (v242 >= v140)
                                    {
                                      goto LABEL_163;
                                    }

                                    sub_1B628E928(&v257, &v255);
                                    v142 = v238;
                                    v143 = swift_isUniquelyReferenced_nonNull_native();
                                    *&v253 = *v142;
                                    v144 = v253;
                                    *v142 = 0x8000000000000000;
                                    v145 = v243;
                                    v146 = sub_1B6380EF4(v243, v141);
                                    v148 = *(v144 + 16);
                                    v149 = (v147 & 1) == 0;
                                    v97 = __OFADD__(v148, v149);
                                    v150 = v148 + v149;
                                    if (v97)
                                    {
                                      goto LABEL_164;
                                    }

                                    v151 = v147;
                                    if (*(v144 + 24) >= v150)
                                    {
                                      if (v143)
                                      {
                                        goto LABEL_109;
                                      }

                                      v156 = v146;
                                      sub_1B638E350();
                                      v146 = v156;
                                      v153 = v253;
                                      if ((v151 & 1) == 0)
                                      {
                                        goto LABEL_112;
                                      }

LABEL_110:
                                      v154 = (v153[7] + 32 * v146);
                                      __swift_destroy_boxed_opaque_existential_1(v154);
                                      sub_1B628E928(&v255, v154);
                                    }

                                    else
                                    {
                                      sub_1B638CE9C(v150, v143);
                                      v146 = sub_1B6380EF4(v145, v141);
                                      if ((v151 & 1) != (v152 & 1))
                                      {
                                        goto LABEL_168;
                                      }

LABEL_109:
                                      v153 = v253;
                                      if (v151)
                                      {
                                        goto LABEL_110;
                                      }

LABEL_112:
                                      v153[(v146 >> 6) + 8] |= 1 << v146;
                                      v157 = (v153[6] + 16 * v146);
                                      v158 = v247;
                                      *v157 = v145;
                                      v157[1] = v158;
                                      sub_1B628E928(&v255, (v153[7] + 32 * v146));
                                      v159 = v153[2];
                                      v97 = __OFADD__(v159, 1);
                                      v160 = v159 + 1;
                                      if (v97)
                                      {
                                        goto LABEL_165;
                                      }

                                      v153[2] = v160;
                                    }

                                    *v238 = v153;

                                    goto LABEL_62;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_62:
                  v77 = v77 + 1;
                }

                while (v77 != v249);
              }

              v35 = v231;
              v7 = v245;
              v8 = v230;
              v12 = v229;
              v48 = v222;
              v52 = v221;
              v51 = v235;
LABEL_116:
              v34 = v242;
              if (!v51)
              {
                goto LABEL_35;
              }
            }

            v63 = sub_1B6380EF4(0xD000000000000010, v225 | 0x8000000000000000);
            if ((v64 & 1) == 0)
            {
              goto LABEL_51;
            }

            sub_1B629E3F0(v61[7] + 32 * v63, &v257);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_52;
            }

            v65 = v255;
            v66 = [v241 inverseRelationship];
            if (!v66 || (v67 = v66, v68 = [v66 entity], v67, v69 = objc_msgSend(v68, sel_name), v68, !v69))
            {
LABEL_51:

              goto LABEL_52;
            }

            if (sub_1B63BEBD4() == 0x70614D6E6978694DLL && v70 == 0xEC0000006D657449)
            {
            }

            else
            {
              v72 = sub_1B63BF364();

              if ((v72 & 1) == 0)
              {

LABEL_137:
                v55 = v238;
                goto LABEL_52;
              }
            }

            v161 = [v214 entityForName:v69 inManagedObjectContext:{v246, v212}];

            if (!v161)
            {

              goto LABEL_137;
            }

            v254 = MEMORY[0x1E69E6158];
            v253 = v65;
            sub_1B628C510(&v253, &v250, &unk_1EB943740, &qword_1B63C5030);
            if (v251)
            {
              sub_1B628E928(&v250, &v252);
              sub_1B629E3F0(&v252, &v250);
              if (swift_dynamicCast())
              {
                v162 = sub_1B63BE8F4();
                v164 = v163;

                if (v164 >> 60 == 15)
                {
                  __swift_destroy_boxed_opaque_existential_1(&v252);
                  v255 = 0u;
                  v256 = 0u;
                }

                else
                {
                  *(&v256 + 1) = MEMORY[0x1E6969080];
                  *&v255 = v162;
                  *(&v255 + 1) = v164;
                  __swift_destroy_boxed_opaque_existential_1(&v252);
                }

                goto LABEL_130;
              }

              __swift_destroy_boxed_opaque_existential_1(&v252);
            }

            else
            {
              sub_1B6284EAC(&v250, &unk_1EB943740, &qword_1B63C5030);
            }

            v255 = 0u;
            v256 = 0u;
LABEL_130:
            sub_1B6284EAC(&v253, &unk_1EB943740, &qword_1B63C5030);
            if (*(&v256 + 1))
            {
              sub_1B628E928(&v255, &v257);
              v165 = objc_allocWithZone(MEMORY[0x1E695D620]);
              v166 = [v165 initWithEntity:v161 insertIntoManagedObjectContext:v246];
              __swift_project_boxed_opaque_existential_0(&v257, *(&v258 + 1));
              v167 = sub_1B63BF354();
              v168 = sub_1B63BEBC4();
              [v166 setValue:v167 forKey:v168];
              swift_unknownObjectRelease();

              v169 = v247;

              v249 = v166;
              v170 = [v166 objectID];
              v171 = [v170 URIRepresentation];

              v172 = v219;
              sub_1B63BE8B4();

              v173 = sub_1B63BE854();
              v175 = v174;
              (*v227)(v172, v228);
              *(&v256 + 1) = MEMORY[0x1E69E6158];
              *&v255 = v173;
              *(&v255 + 1) = v175;
              if (v242 >= v54[2])
              {
                goto LABEL_166;
              }

              v176 = v161;
              sub_1B628E928(&v255, &v253);
              v177 = v238;
              v178 = swift_isUniquelyReferenced_nonNull_native();
              *&v252 = *v177;
              v179 = v252;
              *v177 = 0x8000000000000000;
              v180 = v243;
              v181 = sub_1B6380EF4(v243, v169);
              v183 = *(v179 + 16);
              v184 = (v182 & 1) == 0;
              v97 = __OFADD__(v183, v184);
              v185 = v183 + v184;
              if (v97)
              {
                goto LABEL_167;
              }

              v186 = v182;
              v187 = v241;
              if (*(v179 + 24) >= v185)
              {
                if ((v178 & 1) == 0)
                {
                  v192 = v181;
                  sub_1B638E350();
                  v181 = v192;
                  v180 = v243;
                }
              }

              else
              {
                sub_1B638CE9C(v185, v178);
                v181 = sub_1B6380EF4(v180, v247);
                if ((v186 & 1) != (v188 & 1))
                {
                  goto LABEL_168;
                }
              }

              v189 = v245;
              v8 = v230;
              v190 = v252;
              if (v186)
              {
                v191 = (*(v252 + 56) + 32 * v181);
                __swift_destroy_boxed_opaque_existential_1(v191);
                sub_1B628E928(&v253, v191);
              }

              else
              {
                sub_1B638DECC(v181, v180, v247, &v253, v252);
              }

              v7 = v189;
              *v238 = v190;

              __swift_destroy_boxed_opaque_existential_1(&v257);
              v12 = v229;
              v48 = v222;
              v52 = v221;
              v51 = v235;
              v35 = v231;
              goto LABEL_116;
            }

            sub_1B6284EAC(&v255, &unk_1EB943740, &qword_1B63C5030);
            goto LABEL_137;
          }

          while (1)
          {
LABEL_35:
            v53 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              goto LABEL_153;
            }

            if (v53 >= v52)
            {
              break;
            }

            v51 = *(v48 + 8 * v53);
            ++v46;
            if (v51)
            {
              v46 = v53;
              goto LABEL_39;
            }
          }

          v34 = v218;
          v36 = v216;
          if (v218 == v215)
          {
            goto LABEL_145;
          }
        }
      }

      v36 = v216;
      v35 = v231;
      v7 = v245;
LABEL_145:
      v193 = v239;

      v194 = sub_1B6380EF4(v36, v193);
      v196 = v195;

      if (v196)
      {
        v197 = swift_isUniquelyReferenced_nonNull_native();
        v198 = *v35;
        *&v257 = *v35;
        if (!v197)
        {
          sub_1B638E4F4();
          v198 = v257;
        }

        sub_1B638DA08(v194, v198);
        *v35 = v198;
      }

      v199 = sub_1B638F004(2uLL, v36, v193);
      v201 = v200;
      v203 = v202;
      v205 = v204;

      v206 = MEMORY[0x1B8C92300](v199, v201, v203, v205);
      v208 = v207;

      v209 = v237;

      v210 = swift_isUniquelyReferenced_nonNull_native();
      *&v257 = *v35;
      sub_1B638DD08(v209, v206, v208, v210);

      v14 = v257;
      *v35 = v257;
      v11 = v240;
      goto LABEL_5;
    }
  }

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
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

uint64_t sub_1B63918F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v172 = a4;
  *&v182 = a2;
  *(&v182 + 1) = a1;
  v5 = sub_1B63BE8E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 objectID];
  v10 = [v9 URIRepresentation];

  sub_1B63BE8B4();
  v181 = sub_1B63BE854();
  v183 = v11;
  (*(v6 + 8))(v8, v5);
  v12 = [a3 entity];
  v13 = [v12 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v14 = sub_1B63BEB74();

  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v174 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v20 = v19;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
    v19 = v20;
LABEL_9:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = *(*(v14 + 56) + ((v19 << 9) | (8 * v21)));
    v23 = [v22 inverseRelationship];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 name];

      v26 = sub_1B63BEBD4();
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_1B62B23B4(0, *(v174 + 2) + 1, 1, v174);
      }

      v30 = *(v174 + 2);
      v29 = *(v174 + 3);
      if (v30 >= v29 >> 1)
      {
        v174 = sub_1B62B23B4((v29 > 1), v30 + 1, 1, v174);
      }

      v31 = v174;
      *(v174 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      *(v32 + 4) = v26;
      *(v32 + 5) = v28;
      goto LABEL_4;
    }

    v20 = v19;
  }

  while (v17);
LABEL_6:
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v33 = *v172;
      v34 = *v172 + 64;
      v35 = 1 << *(*v172 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(*v172 + 64);
      v38 = (v35 + 63) >> 6;
      v39 = v174;
      v180 = v174 + 32;

      v40 = v37;
      v41 = 0;
      v42 = v33;
      while (1)
      {
        while (1)
        {
          if (v40)
          {
            v43 = v40;
            goto LABEL_26;
          }

          do
          {
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_151;
            }

            if (v44 >= v38)
            {
            }

            v43 = *(v34 + 8 * v44);
            ++v41;
          }

          while (!v43);
          v41 = v44;
LABEL_26:
          v40 = (v43 - 1) & v43;
          if (!v42[2])
          {
            continue;
          }

          v176 = (v43 - 1) & v43;
          v45 = (v33[6] + ((v41 << 10) | (16 * __clz(__rbit64(v43)))));
          v46 = *v45;
          v47 = v45[1];

          v48 = sub_1B6380EF4(v46, v47);
          if (v49)
          {
            break;
          }

          v40 = v176;
        }

        v168 = v46;
        v167 = v33;
        v50 = *(v42[7] + 8 * v48);
        v170 = v50[2];
        if (v170)
        {
          break;
        }

LABEL_138:

        v150 = v172;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v187 = *v150;
        v152 = v187;
        v153 = sub_1B6380EF4(v168, v47);
        v155 = *(v152 + 16);
        v156 = (v154 & 1) == 0;
        v99 = __OFADD__(v155, v156);
        v157 = v155 + v156;
        if (v99)
        {
          goto LABEL_165;
        }

        v158 = v154;
        v33 = v167;
        if (*(v152 + 24) >= v157)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v164 = v153;
            sub_1B638E4F4();
            v153 = v164;
          }
        }

        else
        {
          sub_1B638D154(v157, isUniquelyReferenced_nonNull_native);
          v153 = sub_1B6380EF4(v168, v47);
          if ((v158 & 1) != (v159 & 1))
          {
            goto LABEL_169;
          }
        }

        v160 = v168;
        v42 = v187;
        if (v158)
        {
          *(*(v187 + 56) + 8 * v153) = v50;
        }

        else
        {
          *(v187 + 8 * (v153 >> 6) + 64) |= 1 << v153;
          v161 = (v42[6] + 16 * v153);
          *v161 = v160;
          v161[1] = v47;
          *(v42[7] + 8 * v153) = v50;
          v162 = v42[2];
          v99 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v99)
          {
            goto LABEL_167;
          }

          v42[2] = v163;
        }

        *v172 = v42;
        v40 = v176;
      }

      v179 = *(v39 + 2);

      v51 = 0;
      v169 = v34;
      v173 = v38;
      v177 = v47;
      while (2)
      {
        if (v51 >= v50[2])
        {
          goto LABEL_161;
        }

        v52 = v50[v51 + 4];
        v53 = *(v52 + 16);
        v178 = v51;
        if (v53)
        {

          v54 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
          if (v55)
          {
            sub_1B629E3F0(*(v52 + 56) + 32 * v54, &v187);

            if (swift_dynamicCast())
            {
              if (__PAIR128__(v185, *(&v185 + 1)) == v182)
              {

                goto LABEL_117;
              }

              v126 = sub_1B63BF364();

              if (v126)
              {
LABEL_117:
                v188 = MEMORY[0x1E69E6158];
                *&v187 = v181;
                *(&v187 + 1) = v183;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v50 = sub_1B638C8B0(v50);
                }

                if (v51 >= v50[2])
                {
                  goto LABEL_164;
                }

                v127 = v50 + 4;
                if (v188)
                {
                  v128 = v51;
                  v129 = v50;
                  sub_1B628E928(&v187, &v185);
                  v130 = swift_isUniquelyReferenced_nonNull_native();
                  v184 = v127[v128];
                  v131 = v184;
                  v127[v128] = 0x8000000000000000;
                  v132 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                  v134 = v131[2];
                  v135 = (v133 & 1) == 0;
                  v99 = __OFADD__(v134, v135);
                  v136 = v134 + v135;
                  if (v99)
                  {
                    goto LABEL_166;
                  }

                  v137 = v133;
                  if (v131[3] >= v136)
                  {
                    if ((v130 & 1) == 0)
                    {
                      v149 = v132;
                      sub_1B638E350();
                      v132 = v149;
                    }
                  }

                  else
                  {
                    sub_1B638CE9C(v136, v130);
                    v132 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                    if ((v137 & 1) != (v138 & 1))
                    {
                      goto LABEL_169;
                    }
                  }

                  v50 = v129;
                  v144 = v184;
                  v51 = v178;
                  if (v137)
                  {
                    v145 = (v184[7] + 32 * v132);
                    __swift_destroy_boxed_opaque_existential_1(v145);
                    sub_1B628E928(&v185, v145);
                    v127[v51] = v144;
                  }

                  else
                  {
                    v184[(v132 >> 6) + 8] |= 1 << v132;
                    v146 = (v144[6] + 16 * v132);
                    *v146 = 0x44497463656A626FLL;
                    v146[1] = 0xE800000000000000;
                    sub_1B628E928(&v185, (v144[7] + 32 * v132));
                    v147 = v144[2];
                    v99 = __OFADD__(v147, 1);
                    v148 = v147 + 1;
                    if (v99)
                    {
                      goto LABEL_168;
                    }

                    v144[2] = v148;
                    v127[v51] = v144;
                  }
                }

                else
                {
                  sub_1B6284EAC(&v187, &unk_1EB943740, &qword_1B63C5030);
                  v139 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                  if (v140)
                  {
                    v141 = v139;
                    v142 = swift_isUniquelyReferenced_nonNull_native();
                    v184 = v127[v51];
                    v127[v51] = 0x8000000000000000;
                    if ((v142 & 1) == 0)
                    {
                      sub_1B638E350();
                    }

                    v143 = v184;

                    sub_1B628E928((*(v143 + 56) + 32 * v141), &v185);
                    sub_1B638D858(v141, v143);
                    v127[v51] = v143;
                  }

                  else
                  {
                    v185 = 0u;
                    v186 = 0u;
                  }

                  sub_1B6284EAC(&v185, &unk_1EB943740, &qword_1B63C5030);
                }
              }
            }
          }

          else
          {
          }
        }

        if (!v179)
        {
LABEL_31:
          ++v51;
          v34 = v169;
          if (v51 == v170)
          {
            goto LABEL_138;
          }

          continue;
        }

        break;
      }

      v56 = 0;
      while (2)
      {
        if (v56 >= *(v39 + 2))
        {
          goto LABEL_154;
        }

        if (v51 >= v50[2])
        {
          goto LABEL_155;
        }

        v57 = &v180[16 * v56];
        v59 = *v57;
        v58 = v57[1];
        v60 = v51;
        v61 = v50;
        v62 = v50 + 4;
        v63 = v50[v60 + 4];
        v64 = *(v63 + 16);

        if (v64)
        {

          v65 = sub_1B6380EF4(v59, v58);
          if (v66)
          {
            sub_1B629E3F0(*(v63 + 56) + 32 * v65, &v187);

            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
            if (swift_dynamicCast())
            {
              v68 = v185;
              v69 = *(v185 + 16);
              if (v69)
              {
                v70 = 0;
                v71 = 0;
                while (v71 < *(v68 + 2))
                {
                  v74 = *&v68[v70 + 32] == *(&v182 + 1) && *&v68[v70 + 40] == v182;
                  if (v74 || (sub_1B63BF364() & 1) != 0)
                  {

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v68 = sub_1B638C8C4(v68);
                    }

                    if (v71 >= *(v68 + 2))
                    {
                      goto LABEL_153;
                    }

                    v72 = &v68[v70];
                    v73 = v183;
                    *(v72 + 4) = v181;
                    *(v72 + 5) = v73;
                  }

                  ++v71;
                  v70 += 16;
                  if (v69 == v71)
                  {
                    goto LABEL_70;
                  }
                }

                goto LABEL_152;
              }

LABEL_70:
              v188 = v67;
              *&v187 = v68;

              v79 = v61;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v79 = sub_1B638C8B0(v61);
              }

              v51 = v178;
              if (v178 >= v79[2])
              {
                goto LABEL_157;
              }

              v175 = v79;
              v80 = v79 + 4;
              if (!v188)
              {
                sub_1B6284EAC(&v187, &unk_1EB943740, &qword_1B63C5030);
                v103 = sub_1B6380EF4(v59, v58);
                v105 = v104;

                if (v105)
                {
                  v106 = swift_isUniquelyReferenced_nonNull_native();
                  v184 = v80[v51];
                  v80[v51] = 0x8000000000000000;
                  v107 = v80;
                  v39 = v174;
                  v47 = v177;
                  if (!v106)
                  {
                    sub_1B638E350();
                  }

                  v108 = v184;

                  sub_1B628E928((*(v108 + 56) + 32 * v103), &v185);
                  sub_1B638D858(v103, v108);
                  v107[v51] = v108;
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                  v39 = v174;
                  v47 = v177;
                }

                sub_1B6284EAC(&v185, &unk_1EB943740, &qword_1B63C5030);
                goto LABEL_110;
              }

              sub_1B628E928(&v187, &v185);
              v81 = swift_isUniquelyReferenced_nonNull_native();
              v184 = v80[v51];
              v82 = v184;
              v171 = v80;
              v80[v51] = 0x8000000000000000;
              v84 = sub_1B6380EF4(v59, v58);
              v85 = v82[2];
              v86 = (v83 & 1) == 0;
              v87 = v85 + v86;
              if (__OFADD__(v85, v86))
              {
                goto LABEL_159;
              }

              v88 = v83;
              if (v82[3] >= v87)
              {
                if (v81)
                {
                  if ((v83 & 1) == 0)
                  {
                    goto LABEL_107;
                  }
                }

                else
                {
                  sub_1B638E350();
                  if ((v88 & 1) == 0)
                  {
                    goto LABEL_107;
                  }
                }
              }

              else
              {
                sub_1B638CE9C(v87, v81);
                v89 = sub_1B6380EF4(v59, v58);
                if ((v88 & 1) != (v90 & 1))
                {
                  goto LABEL_169;
                }

                v84 = v89;
                if ((v88 & 1) == 0)
                {
LABEL_107:
                  v109 = v184;
                  v184[(v84 >> 6) + 8] |= 1 << v84;
                  v119 = (v109[6] + 16 * v84);
                  *v119 = v59;
                  v119[1] = v58;
                  sub_1B628E928(&v185, (v109[7] + 32 * v84));
                  v120 = v109[2];
                  v99 = __OFADD__(v120, 1);
                  v121 = v120 + 1;
                  if (v99)
                  {
                    goto LABEL_162;
                  }

                  v109[2] = v121;
LABEL_109:
                  v171[v51] = v109;

                  v39 = v174;
                  v47 = v177;
LABEL_110:
                  v50 = v175;

                  v38 = v173;
LABEL_43:
                  if (++v56 == v179)
                  {
                    goto LABEL_31;
                  }

                  continue;
                }
              }

              v109 = v184;
              v110 = (v184[7] + 32 * v84);
              __swift_destroy_boxed_opaque_existential_1(v110);
              sub_1B628E928(&v185, v110);
              goto LABEL_109;
            }
          }

          else
          {
          }
        }

        break;
      }

      v50 = v61;
      v75 = v61[2];
      v51 = v178;
      if (v178 >= v75)
      {
        goto LABEL_156;
      }

      v76 = v62[v178];
      if (*(v76 + 16))
      {

        v77 = sub_1B6380EF4(v59, v58);
        if (v78)
        {
          sub_1B629E3F0(*(v76 + 56) + 32 * v77, &v187);

          if (swift_dynamicCast())
          {
            if (__PAIR128__(v185, *(&v185 + 1)) == v182)
            {

              goto LABEL_80;
            }

            v91 = sub_1B63BF364();

            if (v91)
            {
LABEL_80:
              v188 = MEMORY[0x1E69E6158];
              *&v187 = v181;
              *(&v187 + 1) = v183;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_1B638C8B0(v50);
              }

              if (v51 >= v50[2])
              {
                goto LABEL_158;
              }

              v175 = v50;
              v92 = v50 + 4;
              if (v188)
              {
                sub_1B628E928(&v187, &v185);
                v93 = swift_isUniquelyReferenced_nonNull_native();
                v184 = v92[v51];
                v94 = v184;
                v92[v51] = 0x8000000000000000;
                v95 = sub_1B6380EF4(v59, v58);
                v97 = v94[2];
                v98 = (v96 & 1) == 0;
                v99 = __OFADD__(v97, v98);
                v100 = v97 + v98;
                if (v99)
                {
                  goto LABEL_160;
                }

                v101 = v96;
                if (v94[3] >= v100)
                {
                  if (v93)
                  {
                    goto LABEL_100;
                  }

                  v122 = v95;
                  sub_1B638E350();
                  v95 = v122;
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_112;
                  }

LABEL_101:
                  v116 = v95;

                  v117 = v184;
                  v118 = (v184[7] + 32 * v116);
                  __swift_destroy_boxed_opaque_existential_1(v118);
                  sub_1B628E928(&v185, v118);
                }

                else
                {
                  sub_1B638CE9C(v100, v93);
                  v95 = sub_1B6380EF4(v59, v58);
                  if ((v101 & 1) != (v102 & 1))
                  {
                    goto LABEL_169;
                  }

LABEL_100:
                  if (v101)
                  {
                    goto LABEL_101;
                  }

LABEL_112:
                  v117 = v184;
                  v184[(v95 >> 6) + 8] |= 1 << v95;
                  v123 = (v117[6] + 16 * v95);
                  *v123 = v59;
                  v123[1] = v58;
                  sub_1B628E928(&v185, (v117[7] + 32 * v95));
                  v124 = v117[2];
                  v99 = __OFADD__(v124, 1);
                  v125 = v124 + 1;
                  if (v99)
                  {
                    goto LABEL_163;
                  }

                  v117[2] = v125;
                }

                v92[v51] = v117;

                v38 = v173;
                v47 = v177;
              }

              else
              {
                sub_1B6284EAC(&v187, &unk_1EB943740, &qword_1B63C5030);
                v111 = sub_1B6380EF4(v59, v58);
                v113 = v112;

                if (v113)
                {
                  v114 = swift_isUniquelyReferenced_nonNull_native();
                  v184 = v92[v51];
                  v92[v51] = 0x8000000000000000;
                  v47 = v177;
                  if (!v114)
                  {
                    sub_1B638E350();
                  }

                  v115 = v184;

                  sub_1B628E928((*(v115 + 56) + 32 * v111), &v185);
                  sub_1B638D858(v111, v115);
                  v92[v51] = v115;
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                  v47 = v177;
                }

                sub_1B6284EAC(&v185, &unk_1EB943740, &qword_1B63C5030);
                v38 = v173;
              }

              v50 = v175;
              goto LABEL_43;
            }
          }
        }

        else
        {
        }
      }

      v47 = v177;
      goto LABEL_43;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_9;
    }
  }

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
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

uint64_t sub_1B63929BC(uint64_t a1, void *a2, int a3)
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v89 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v89 - v12;
  v14 = sub_1B63BE8E4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v110 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v89 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = v89 - v22;
  if (!*(a1 + 16))
  {
    return result;
  }

  result = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
  if ((v24 & 1) == 0)
  {
    return result;
  }

  sub_1B629E3F0(*(a1 + 56) + 32 * result, &v113);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_1B63BE8D4();

  v107 = *(v15 + 48);
  v108 = v15 + 48;
  if (v107(v13, 1, v14) == 1)
  {
    return sub_1B6284EAC(v13, &qword_1EB9433E8, &qword_1B63C63D0);
  }

  v105 = *(v15 + 32);
  v106 = v15 + 32;
  v105(v23, v13, v14);
  v25 = sub_1B63BE8C4();
  if (!v26)
  {
    return (*(v15 + 8))(v23, v14);
  }

  if (v25 != 0x616465726F632D78 || v26 != 0xEA00000000006174)
  {
    v27 = sub_1B63BF364();

    if (v27)
    {
      goto LABEL_11;
    }

    return (*(v15 + 8))(v23, v14);
  }

LABEL_11:
  v101 = a3;
  v28 = [a2 persistentStoreCoordinator];
  if (!v28)
  {
    return (*(v15 + 8))(v23, v14);
  }

  v29 = v28;
  v30 = sub_1B63BE884();
  v31 = [v29 managedObjectIDForURIRepresentation_];

  if (!v31)
  {
    return (*(v15 + 8))(v23, v14);
  }

  *&v113 = 0;
  v32 = [a2 existingObjectWithID:v31 error:&v113];
  if (!v32)
  {
    v87 = v113;
    v88 = sub_1B63BE824();

    swift_willThrow();
    return (*(v15 + 8))(v23, v14);
  }

  v91 = v31;
  v99 = a2;
  v33 = v32;
  v34 = v113;
  v96 = v33;
  v35 = [v33 entity];
  v36 = [v35 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v37 = sub_1B63BEB74();

  v38 = 0;
  v90 = 0;
  v40 = v37 + 64;
  v39 = *(v37 + 64);
  v100 = v37;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v103 = (v15 + 8);
  v98 = v37 + 64;
  v97 = v44;
  if (v43)
  {
LABEL_21:
    while (1)
    {
      v102 = (v43 - 1) & v43;
      v46 = __clz(__rbit64(v43)) | (v38 << 6);
      v47 = (*(v100 + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      v50 = *(*(v100 + 56) + 8 * v46);
      v51 = *(a1 + 16);

      v104 = v50;
      if (!v51)
      {
        break;
      }

      v52 = sub_1B6380EF4(v49, v48);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v93 = v49;
      v94 = v48;
      sub_1B629E3F0(*(a1 + 56) + 32 * v52, v112);
      sub_1B628E928(v112, &v113);
      if ([v104 isToMany])
      {
        v54 = sub_1B63BEBC4();
        v92 = [v96 mutableSetValueForKey_];

        sub_1B629E3F0(&v113, v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
        v55 = swift_dynamicCast();
        v56 = v111;
        if (!v55)
        {
          v56 = MEMORY[0x1E69E7CC0];
        }

        v57 = *(v56 + 16);
        v89[1] = v56;
        if (v57)
        {
          v58 = v56 + 40;
          while (1)
          {

            sub_1B63BE8D4();

            if (v107(v11, 1, v14) != 1)
            {
              break;
            }

            sub_1B6284EAC(v11, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_29:
            v58 += 16;
            if (!--v57)
            {
              goto LABEL_49;
            }
          }

          v105(v20, v11, v14);
          v59 = sub_1B63BE8C4();
          if (v60)
          {
            if (v59 == 0x616465726F632D78 && v60 == 0xEA00000000006174)
            {

              goto LABEL_36;
            }

            v61 = sub_1B63BF364();

            if (v61)
            {
LABEL_36:
              v62 = [v99 persistentStoreCoordinator];
              if (v62)
              {
                v63 = v62;
                v95 = sub_1B63BE884();
                v64 = [v63 managedObjectIDForURIRepresentation_];

                v95 = v64;
                if (v64)
                {
                  *&v112[0] = 0;
                  v65 = [v99 existingObjectWithID:v95 error:v112];
                  if (!v65)
                  {
                    v90 = *&v112[0];
                    v69 = sub_1B63BE824();

                    swift_willThrow();
                    (*v103)(v20, v14);
                    v90 = 0;
                    goto LABEL_29;
                  }

                  v66 = v65;
                  v67 = *&v112[0];
                  v68 = v66;
                  [v92 addObject_];
                }
              }
            }
          }

          (*v103)(v20, v14);
          goto LABEL_29;
        }

LABEL_49:

        v72 = v92;
        v73 = sub_1B63BEBC4();

        [v96 setValue:v72 forKey:v73];

        goto LABEL_50;
      }

      sub_1B629E3F0(&v113, v112);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v113);
LABEL_44:

        goto LABEL_45;
      }

      v71 = v109;
      sub_1B63BE8D4();

      if (v107(v71, 1, v14) != 1)
      {
        v105(v110, v71, v14);
        v74 = sub_1B63BE8C4();
        if (v75)
        {
          if (v74 == 0x616465726F632D78 && v75 == 0xEA00000000006174)
          {

LABEL_59:
            v77 = [v99 persistentStoreCoordinator];
            if (v77 && (v78 = v77, v95 = sub_1B63BE884(), v79 = [v78 managedObjectIDForURIRepresentation_], v78, v95, (v95 = v79) != 0))
            {
              *&v112[0] = 0;
              v80 = [v99 existingObjectWithID:v95 error:v112];
              if (!v80)
              {
                v85 = *&v112[0];

                v86 = sub_1B63BE824();

                swift_willThrow();
                (*v103)(v110, v14);
                __swift_destroy_boxed_opaque_existential_1(&v113);
                v90 = 0;
                goto LABEL_51;
              }

              v81 = v80;
              v82 = *&v112[0];
              v83 = v81;
              v84 = sub_1B63BEBC4();

              [v96 setValue:v83 forKey:v84];
            }

            else
            {
            }

LABEL_66:
            (*v103)(v110, v14);
LABEL_50:
            __swift_destroy_boxed_opaque_existential_1(&v113);
            goto LABEL_51;
          }

          v76 = sub_1B63BF364();

          if (v76)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_66;
      }

      __swift_destroy_boxed_opaque_existential_1(&v113);

      sub_1B6284EAC(v71, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_51:
      v40 = v98;
      v44 = v97;
      v43 = v102;
      if (!v102)
      {
        goto LABEL_17;
      }
    }

    if ((v101 & 1) == 0)
    {
      goto LABEL_44;
    }

    v70 = sub_1B63BEBC4();

    [v96 setValue:0 forKey:v70];

LABEL_45:
    goto LABEL_51;
  }

  while (1)
  {
LABEL_17:
    v45 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
    }

    if (v45 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v45);
    ++v38;
    if (v43)
    {
      v38 = v45;
      goto LABEL_21;
    }
  }

  return (*v103)(v23, v14);
}

uint64_t sub_1B63936A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B63895F8(v2, v3, v4, v5, v6);
}

uint64_t sub_1B6393790()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B6388064(v2, v3, v5, v4);
}

uint64_t sub_1B6393850()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B6387394(v2, v3, v4);
}

uint64_t sub_1B6393904()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B63866D0(v2, v3, v5, v4);
}

uint64_t objectdestroy_47Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6393A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B6385690(v2, v3, v5, v4);
}

uint64_t sub_1B6393B24(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B638B484(a1, a2, v2 + v6, v8, v9);
}

id sub_1B6393CB8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCachedUserReview();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B6394008()
{
  v0 = sub_1B63BE994();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB942F98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB942FA0;
  v5 = sub_1B63BEBC4();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v9 = v12[1];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = sub_1B6284EAC(v15, &unk_1EB943740, &qword_1B63C5030);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_11:
  sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  v10 = sub_1B63BEF04();
  v11 = sub_1B63BEF24();

  if (v11)
  {
    sub_1B63BE934();
  }

  else
  {
    sub_1B63BE984();
    [v9 doubleValue];
    sub_1B63BE944();

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1B6394370(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncManagedVisit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata fetchRequest];
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B63C3D50;
  sub_1B6394008();
  v10 = sub_1B63BE954();
  (*(v4 + 8))(v6, v3);
  *(v9 + 56) = sub_1B6281C60(0, &qword_1EDB0E6D0, 0x1E695DF00);
  *(v9 + 64) = sub_1B62B03CC(&qword_1EDB0E6C8, &qword_1EDB0E6D0, 0x1E695DF00);
  *(v9 + 32) = v10;
  v11 = sub_1B63BED94();
  [v8 setPredicate_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v12 setResultType_];
  *&v40 = 0;
  v13 = [a2 executeRequest:v12 error:&v40];
  v14 = v40;
  if (!v13)
  {
    v18 = v40;
    sub_1B63BE824();

    swift_willThrow();
LABEL_18:

    return;
  }

  v15 = v13;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  v17 = v14;
  if (!v16)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_11:
    sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_12;
  }

  if ([v16 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v37 = v38;
    goto LABEL_13;
  }

LABEL_12:
  v37 = 0;
LABEL_13:
  v19 = [ObjCClassFromMetadata fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B63C3D70;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1B63BEBC4();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v24 = sub_1B63BEC94();

  [v19 setSortDescriptors_];

  [v19 setFetchOffset_];
  v27 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v27 setResultType_];
  *&v40 = 0;
  v28 = [a2 executeRequest:v27 error:&v40];
  v29 = v40;
  if (!v28)
  {
    v33 = v40;
    sub_1B63BE824();

    swift_willThrow();
    v12 = v16;
    goto LABEL_18;
  }

  v30 = v28;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = v29;
  if (!v31)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_24:
    sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_25;
  }

  if ([v31 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_24;
  }

  if (!swift_dynamicCast())
  {
LABEL_25:
    v34 = 0;
    goto LABEL_26;
  }

  v34 = v38;
LABEL_26:
  v35 = v37 + v34;
  if (__OFADD__(v37, v34))
  {
    __break(1u);
  }

  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v40 = 0x2064656E757250;
  *(&v40 + 1) = 0xE700000000000000;
  *&v38 = v35;
  v36 = sub_1B63BF344();
  MEMORY[0x1B8C92330](v36);

  MEMORY[0x1B8C92330](0x73746973697620, 0xE700000000000000);
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v40, *(&v40 + 1));
}

void sub_1B6394A84(void *a1, void *a2)
{
  v20 = a2;
  v5 = sub_1B63BEE84();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe(v5, v6))
    {
      v7 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
      v8 = type metadata accessor for VisitedLocation(0);
      *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
      v9 = type metadata accessor for MapsSyncRequest();
      v19.receiver = v7;
      v19.super_class = v9;
      v10 = a1;
      v11 = objc_msgSendSuper2(&v19, sel_init);
      v12 = a2;
      sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v12, MEMORY[0x1E69E7CC0], v11, v12);

      v13 = objc_allocWithZone(type metadata accessor for VisitRequest());
      v14 = type metadata accessor for Visit(0);
      *&v13[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v10;
      *&v13[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v14;
      v18.receiver = v13;
      v18.super_class = v9;
      v15 = v10;
      v16 = objc_msgSendSuper2(&v18, sel_init);
      v17 = v12;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v17, MEMORY[0x1E69E7CC0], v16, v17);
    }
  }
}

Swift::Void __swiftcall Visit.removeVisit()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  sub_1B633AEA4(1);
  v3 = sub_1B63BE994();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1B633B878(v2);
  sub_1B633D0DC(0);
  sub_1B633C204(4);
}

void sub_1B6394EB8(void *a1, void *a2)
{
  v5 = sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe(v5, v6))
    {
      sub_1B635072C(a1, a2);
      v7 = objc_allocWithZone(type metadata accessor for VisitRequest());
      v8 = type metadata accessor for Visit(0);
      *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
      v12.receiver = v7;
      v12.super_class = type metadata accessor for MapsSyncRequest();
      v9 = a1;
      v10 = objc_msgSendSuper2(&v12, sel_init);
      v11 = a2;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v11, MEMORY[0x1E69E7CC0], v10, v11);
    }
  }
}

uint64_t sub_1B6394FC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B63BD8C4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B639503C(v6);
  return sub_1B63BF174();
}

void sub_1B639503C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for MapsSyncManagedVisit();
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B6395238(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1B6395140(0, v2, 1, a1);
  }
}

void sub_1B6395140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 visitClassification];
      v13 = [v11 visitClassification];

      if ((v12 & 4) == 0 || (v13 & 4) != 0)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B6395238(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v92 = v5;
      v93 = *(v10 + 16);
      if (v93 >= 2)
      {
        while (*v6)
        {
          v5 = v93 - 1;
          v94 = *(v10 + 16 * v93);
          v95 = *(v10 + 16 * (v93 - 1) + 40);
          sub_1B63958FC((*v6 + 8 * v94), (*v6 + 8 * *(v10 + 16 * (v93 - 1) + 32)), (*v6 + 8 * v95), v9);
          if (v92)
          {
            goto LABEL_103;
          }

          if (v95 < v94)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B63BCE9C(v10);
          }

          if (v93 - 2 >= *(v10 + 16))
          {
            goto LABEL_120;
          }

          v96 = (v10 + 16 * v93);
          *v96 = v94;
          v96[1] = v95;
          sub_1B63BCE10(v93 - 1);
          v93 = *(v10 + 16);
          if (v93 <= 1)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_130;
      }

LABEL_103:

      return;
    }

LABEL_126:
    v10 = sub_1B63BCE9C(v10);
    goto LABEL_95;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  v104 = v9;
  if (v8 + 1 >= v7)
  {
    goto LABEL_24;
  }

  v12 = *v6;
  v13 = *(*v6 + 8 * v8);
  v14 = *(*v6 + 8 * v11);
  v100 = v10;
  v15 = v13;
  v16 = [v14 visitClassification];
  v17 = [v15 visitClassification];

  v10 = v100;
  v105 = ((v17 & 4) == 0) & (v16 >> 2);
  v11 = v100 + 2;
  if (v100 + 2 >= v7)
  {
    v6 = a3;
    if (v105)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v18 = (v12 + 8 * v100 + 16);
  while (1)
  {
    v19 = v11;
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = v20;
    v23 = [v21 visitClassification];
    v24 = [v22 visitClassification];

    if ((v23 & 4) == 0)
    {
      v9 = v104;
      if (v105)
      {
        v6 = a3;
        v10 = v100;
        v11 = v19;
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v9 = v104;
    if (v105 == (v24 & 4) >> 2)
    {
      break;
    }

LABEL_8:
    v11 = v19 + 1;
    ++v18;
    if (v7 == v19 + 1)
    {
      v11 = v7;
      v6 = a3;
      goto LABEL_16;
    }
  }

  v6 = a3;
  v11 = v19;
LABEL_16:
  v10 = v100;
  if (v105)
  {
LABEL_17:
    if (v11 < v10)
    {
      goto LABEL_123;
    }

    if (v10 < v11)
    {
      v25 = 8 * v11 - 8;
      v26 = 8 * v10;
      v27 = v11;
      v28 = v10;
      do
      {
        if (v28 != --v27)
        {
          v29 = *v6;
          if (!*v6)
          {
            goto LABEL_129;
          }

          v30 = *(v29 + v26);
          *(v29 + v26) = *(v29 + v25);
          *(v29 + v25) = v30;
        }

        ++v28;
        v25 -= 8;
        v26 += 8;
      }

      while (v28 < v27);
    }
  }

LABEL_24:
  v31 = v6[1];
  if (v11 >= v31)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_122;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_42;
  }

  v32 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_124;
  }

  if (v32 >= v31)
  {
    v32 = v6[1];
  }

  if (v32 < v10)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v11 == v32)
  {
    goto LABEL_42;
  }

  v97 = v5;
  v33 = *v6;
  v34 = *v6 + 8 * v11 - 8;
  v101 = v10;
  v35 = v10 - v11;
  v103 = v32;
LABEL_34:
  v106 = v11;
  v36 = *(v33 + 8 * v11);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = [v40 visitClassification];
    v43 = [v41 visitClassification];

    if ((v42 & 4) == 0 || (v43 & 4) != 0)
    {
LABEL_33:
      v11 = v106 + 1;
      v34 += 8;
      --v35;
      if (v106 + 1 == v103)
      {
        v11 = v103;
        v5 = v97;
        v6 = a3;
        v10 = v101;
        v9 = v104;
LABEL_42:
        if (v11 < v10)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B62B24E4(0, *(v9 + 2) + 1, 1, v9);
        }

        v47 = *(v9 + 2);
        v46 = *(v9 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v9 = sub_1B62B24E4((v46 > 1), v47 + 1, 1, v9);
        }

        *(v9 + 2) = v48;
        v49 = &v9[16 * v47];
        *(v49 + 4) = v10;
        *(v49 + 5) = v11;
        v107 = v11;
        v50 = *a1;
        if (!*a1)
        {
          goto LABEL_131;
        }

        if (!v47)
        {
LABEL_3:
          v7 = v6[1];
          v8 = v107;
          if (v107 >= v7)
          {
            goto LABEL_93;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v10 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v9 + 4);
            v52 = *(v9 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_62:
            if (v54)
            {
              goto LABEL_110;
            }

            v67 = &v9[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = &v9[16 * v10 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_117;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v10 = v48 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v77 = &v9[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_76:
          if (v72)
          {
            goto LABEL_112;
          }

          v80 = &v9[16 * v10];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_83:
          v88 = v10 - 1;
          if (v10 - 1 >= v48)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_125;
          }

          if (!*v6)
          {
            goto LABEL_128;
          }

          v89 = *&v9[16 * v88 + 32];
          v90 = *&v9[16 * v10 + 40];
          sub_1B63958FC((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v10 + 32]), (*v6 + 8 * v90), v50);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v90 < v89)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B63BCE9C(v9);
          }

          if (v88 >= *(v9 + 2))
          {
            goto LABEL_107;
          }

          v91 = &v9[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          sub_1B63BCE10(v10);
          v48 = *(v9 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v9[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = &v9[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v66 >= v58)
        {
          v84 = &v9[16 * v10 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v87)
          {
            v10 = v48 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

      goto LABEL_34;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_33;
    }
  }

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
}

uint64_t sub_1B63958FC(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v33 = v4;
LABEL_27:
      v35 = v6;
      v23 = v6 - 1;
      --v5;
      v24 = v14;
      do
      {
        v25 = *--v24;
        v26 = v23;
        v27 = *v23;
        v28 = v25;
        v29 = v27;
        v30 = [v28 visitClassification];
        v31 = [v29 visitClassification];

        if ((v30 & 4) != 0 && (v31 & 4) == 0)
        {
          if (v5 + 1 != v35)
          {
            *v5 = *v26;
          }

          v4 = v33;
          if (v14 <= v33 || (v6 = v26, v26 <= v7))
          {
            v6 = v26;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v24;
        }

        --v5;
        v14 = v24;
        v4 = v33;
        v23 = v26;
      }

      while (v24 > v33);
      v14 = v24;
      v6 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v34 = v14;
      while (1)
      {
        v15 = v6;
        v16 = v4;
        v17 = *v4;
        v18 = *v6;
        v19 = v17;
        v20 = [v18 visitClassification];
        v21 = [v19 visitClassification];

        if ((v20 & 4) == 0 || (v21 & 4) != 0)
        {
          break;
        }

        v22 = v15;
        v6 = v15 + 1;
        v4 = v16;
        if (v7 != v15)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v7;
        v14 = v34;
        if (v4 >= v34 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v22 = v16;
      v4 = v16 + 1;
      v6 = v15;
      if (v7 == v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void sub_1B6395BBC(void *a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_1B63BEA04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = 0x696669746E656469;
  *(&v56 + 1) = 0xEA00000000007265;
  v10 = MEMORY[0x1E69E6158];
  v11 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {
    sub_1B6284EAC(v58, &unk_1EB943740, &qword_1B63C5030);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_9;
  }

  v12 = swift_dynamicCast();
  (*(v8 + 56))(v6, v12 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_9:
    sub_1B6284EAC(v6, &unk_1EB943680, qword_1B63C4070);
    return;
  }

  v13 = *(v8 + 32);
  v53 = a2;
  v14 = v54;
  v13(v54, v6, v7);
  v15 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v16 = sub_1B63BEBC4();
  v17 = [v15 initWithEntityName_];

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B63C3D80;
  *(v18 + 56) = v10;
  *(v18 + 64) = sub_1B6281318();
  *(v18 + 32) = 0x696669746E656469;
  *(v18 + 40) = 0xEA00000000007265;
  v19 = sub_1B63BE9C4();
  v20 = 0x1E696AFB0uLL;
  *(v18 + 96) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
  *(v18 + 104) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
  *(v18 + 72) = v19;
  v21 = v53;
  v22 = v17;
  v23 = sub_1B63BED94();
  [v17 setPredicate_];

  type metadata accessor for MapsSyncManagedVisit();
  v24 = v55;
  v25 = sub_1B63BEEA4();
  if (v24)
  {
    (*(v8 + 8))(v14, v7);

    return;
  }

  v26 = v25;

  *&v58[0] = sub_1B63BCFB8(v27);
  sub_1B6394FC0(v58);
  v51 = v17;
  v52 = v26;
  v55 = 0;
  v28 = *&v58[0];
  v29 = (*&v58[0] >> 62) & 1;
  if (*&v58[0] < 0)
  {
    LODWORD(v29) = 1;
  }

  v30 = v29;
  if (v29 != 1)
  {
    v14 = v21;
    v22 = *(*&v58[0] + 16);
    v20 = v22 != 0;
    if (v22 >= v20)
    {
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = sub_1B63BF044();
  if (v49 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v22 = v49;
    v20 = v49 != 0;
    if (sub_1B63BF044() < v20)
    {
      goto LABEL_37;
    }

    if (sub_1B63BF044() < v22)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v14 = v21;
LABEL_14:
  if ((v28 & 0xC000000000000001) != 0)
  {

    if (v22 >= 2)
    {
      v31 = v20;
      do
      {
        v32 = v31 + 1;
        sub_1B63BF134();
        v31 = v32;
      }

      while (v22 != v32);
    }
  }

  else
  {
  }

  if (v30)
  {
    sub_1B63BF2C4();
    v34 = v33;
    v20 = v35;
    v37 = v36;

    v37 >>= 1;
    v38 = __OFSUB__(v37, v20);
    v40 = v37 - v20;
    v39 = (v40 < 0) ^ v38 | (v40 == 0);
    if (!v40)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v28 + 32;
    v38 = __OFSUB__(v22, v20);
    v40 = v22 - v20;
    v39 = (v40 < 0) ^ v38 | (v40 == 0);
    if (!v40)
    {
      goto LABEL_27;
    }
  }

  if (v39)
  {
    goto LABEL_40;
  }

  v41 = (v34 + 8 * v20);
  do
  {
    v42 = *v41++;
    [v14 deleteObject_];
    --v40;
  }

  while (v40);
LABEL_27:
  swift_unknownObjectRelease();
  *&v58[0] = 0;
  *(&v58[0] + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v58[0] = 0x20646567727550;
  *(&v58[0] + 1) = 0xE700000000000000;
  if (!(v52 >> 62))
  {
    v43 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_29;
  }

LABEL_38:
  v43 = sub_1B63BF044();
LABEL_29:
  v44 = v54;

  if (__OFSUB__(v43, 1))
  {
    __break(1u);
LABEL_40:
    __break(1u);
  }

  *&v56 = v43 - 1;
  v45 = sub_1B63BF344();
  MEMORY[0x1B8C92330](v45);

  MEMORY[0x1B8C92330](0xD000000000000011, 0x80000001B63CBA60);
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v58[0], *(&v58[0] + 1));

  *&v58[0] = 0;
  if ([v14 save_])
  {
    v46 = *(v8 + 8);
    v47 = *&v58[0];
    v46(v44, v7);
  }

  else
  {
    v48 = *&v58[0];
    sub_1B63BE824();

    swift_willThrow();
    (*(v8 + 8))(v44, v7);
  }
}

uint64_t sub_1B6396304@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCachedUserReview();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B63963A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B6396450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6396484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedFavoriteItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1B63964CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16) != 0;
  [v1 unlock];
  return v3;
}

void (*sub_1B63965B0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943680, qword_1B63C4070);
  [v9 unlock];
  return sub_1B63966F0;
}

id sub_1B6396718(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  if (a2)
  {
    [*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  }

  sub_1B628C510(a1, v11, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B6282DFC(v11, v2 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v9, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v9, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v16 = *(v2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
    *(v2 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = sub_1B639A630;
  v20[5] = v14;
  *(v2 + v15) = v16;
  result = swift_endAccess();
  if (a2)
  {
    return [*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) unlock];
  }

  return result;
}

id sub_1B63969A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = *a1;
  swift_beginAccess();
  sub_1B628C510(v4 + v10, a4, a2, a3);
  return [v9 unlock];
}

void (*sub_1B6396A84(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943210, &unk_1B63C3F50);
  [v9 unlock];
  return sub_1B6396BC4;
}

void (*sub_1B6396C70(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943210, &unk_1B63C3F50);
  [v9 unlock];
  return sub_1B6396DB0;
}

void sub_1B6396DD8(uint64_t a1, char a2, void (*a3)(void *, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = *(*a1 + 40);
  if (a2)
  {
    sub_1B628C510(v10, v9, a4, a5);
    a3(v9, 1);
    sub_1B6284EAC(v9, a4, a5);
  }

  else
  {
    a3(v10, 1);
  }

  sub_1B6284EAC(v10, a4, a5);
  free(v10);
  free(v9);

  free(v8);
}

id sub_1B6396EC8(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a2)
  {
    [*(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  }

  sub_1B628C510(a1, v15, &unk_1EB943210, &unk_1B63C3F50);
  v16 = *a3;
  swift_beginAccess();
  sub_1B6282DFC(v15, v5 + v16, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v13, &unk_1EB943210, &unk_1B63C3F50);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_1B628A128(v13, v18 + v17, &unk_1EB943210, &unk_1B63C3F50);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v20 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v19) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
    *(v5 + v19) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1B629A8E8((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = v27;
  v24[5] = v18;
  *(v5 + v19) = v20;
  result = swift_endAccess();
  if (v28)
  {
    return [*(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) unlock];
  }

  return result;
}

uint64_t sub_1B639713C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v32 - v3;
  v4 = sub_1B63BEA04();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MapsSyncHashing(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(&v1[v18], v10, &qword_1EB9435F0, &qword_1B63C6610);
  v33 = v12;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B6284EAC(v10, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v10, v17);
    v19 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
    [v19 lock];
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v21 = *(*&v1[v20] + 16);
    [v19 unlock];
    if (!v21)
    {
      v15 = v17;
      return sub_1B639A148(v15, v38);
    }

    sub_1B639A0EC(v17);
  }

  v22 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v22 &selRef_setTitleLocale_];
  v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  v24 = v34;
  sub_1B628C510(&v1[v23], v34, &unk_1EB943680, qword_1B63C4070);
  [v22 property descriptor for VisitedLocation.hidden];
  v26 = v36;
  v25 = v37;
  if ((*(v36 + 48))(v24, 1, v37) == 1)
  {
    sub_1B6284EAC(v24, &unk_1EB943680, qword_1B63C4070);
    *v15 = v1;
    swift_storeEnumTagMultiPayload();
    v27 = v1;
  }

  else
  {
    v28 = *(v26 + 32);
    v29 = v32;
    v28(v32, v24, v25);
    v28(v15, v29, v25);
    swift_storeEnumTagMultiPayload();
  }

  v30 = v35;
  sub_1B639A52C(v15, v35);
  (*(v33 + 56))(v30, 0, 1, v11);
  swift_beginAccess();
  sub_1B6282DFC(v30, &v1[v18], &qword_1EB9435F0, &qword_1B63C6610);
  swift_endAccess();
  return sub_1B639A148(v15, v38);
}

uint64_t sub_1B63975D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for MapsSyncHashing(0);
  v40 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  *&v45 = v2;
  type metadata accessor for MapsSyncObject(0);
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F8, &qword_1B63C6618);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    sub_1B6284EAC(&v48, &qword_1EB943600, &qword_1B63C6620);
    goto LABEL_15;
  }

  sub_1B62AA870(&v48, v51);
  sub_1B628C510(a1, v43, &unk_1EB943740, &qword_1B63C5030);
  if (!v44)
  {
    sub_1B6284EAC(v43, &unk_1EB943740, &qword_1B63C5030);
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
LABEL_13:
    sub_1B6284EAC(&v45, &qword_1EB943600, &qword_1B63C6620);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v51);
    goto LABEL_15;
  }

  if (!*(&v46 + 1))
  {
    goto LABEL_13;
  }

  sub_1B62AA870(&v45, &v48);
  v39 = a1;
  v22 = v52;
  v23 = v53;
  __swift_project_boxed_opaque_existential_0(v51, v52);
  v24 = (*(v23 + 8))(v22, v23);
  __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
  DynamicType = swift_getDynamicType();
  a1 = v39;
  v26 = *(v24 + 16);
  v27 = 32;
  do
  {
    if (!v26)
    {

      __swift_destroy_boxed_opaque_existential_1(&v48);
      goto LABEL_14;
    }

    v28 = *(v24 + v27);
    v27 += 8;
    --v26;
  }

  while (DynamicType != v28);

  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_0(v51, v52);
  (*(v30 + 16))(v29, v30);
  v31 = v40 + 48;
  v32 = *(v40 + 48);
  if (v32(v9, 1, v10) == 1)
  {
    v33 = v9;
  }

  else
  {
    sub_1B639A148(v9, v21);
    v40 = v31;
    v37 = *(&v49 + 1);
    v38 = v50;
    __swift_project_boxed_opaque_existential_0(&v48, *(&v49 + 1));
    (*(v38 + 16))(v37, v38);
    if (v32(v7, 1, v10) != 1)
    {
      sub_1B639A148(v7, v19);
      v35 = sub_1B63AA5D4(v21, v19);
      sub_1B639A0EC(v19);
      sub_1B639A0EC(v21);
      __swift_destroy_boxed_opaque_existential_1(&v48);
      __swift_destroy_boxed_opaque_existential_1(v51);
      return v35 & 1;
    }

    sub_1B639A0EC(v21);
    v33 = v7;
  }

  sub_1B6284EAC(v33, &qword_1EB9435F0, &qword_1B63C6610);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  a1 = v39;
LABEL_15:
  sub_1B628C510(a1, v51, &unk_1EB943740, &qword_1B63C5030);
  if (!v52)
  {
    sub_1B6284EAC(v51, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v35 = 0;
    return v35 & 1;
  }

  v34 = v48;
  sub_1B639713C(v16);
  sub_1B639713C(v13);
  v35 = sub_1B63AA5D4(v16, v13);

  sub_1B639A0EC(v13);
  sub_1B639A0EC(v16);
  return v35 & 1;
}

uint64_t sub_1B6397B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  result = sub_1B63BEF24();
  if (result)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v10 = *(v4 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B629A8E8(0, v10[2] + 1, 1, v10);
      *(v4 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B629A8E8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1B62B8188;
    v14[5] = v8;
    *(v4 + v9) = v10;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B6397CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v63 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v72 = &v63 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v20 = sub_1B63BE994();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  result = sub_1B63BEF24();
  if (result)
  {
    v68 = v7;
    v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000001CLL, 0x80000001B63CBCB0);
    sub_1B63BE984();
    v25 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v3 + v25, v19, &unk_1EB943210, &unk_1B63C3F50);
    v26 = (*(v21 + 48))(v19, 1, v20);
    v27 = v21;
    v28 = v26;
    v29 = v19;
    v30 = v27;
    sub_1B6284EAC(v29, &unk_1EB943210, &unk_1B63C3F50);
    v31 = *(v30 + 16);
    v69 = v23;
    if (v28 == 1)
    {
      v32 = v70;
      v64 = v31;
      v31(v70, v23, v20);
      (*(v30 + 56))(v32, 0, 1, v20);
      v65 = v30;
      v33 = v72;
      sub_1B628C510(v32, v72, &unk_1EB943210, &unk_1B63C3F50);
      swift_beginAccess();
      sub_1B6282DFC(v33, v3 + v25, &unk_1EB943210, &unk_1B63C3F50);
      swift_endAccess();
      v34 = v67;
      sub_1B628C510(v32, v67, &unk_1EB943210, &unk_1B63C3F50);
      v35 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v63 = swift_allocObject();
      sub_1B628A128(v34, v63 + v35, &unk_1EB943210, &unk_1B63C3F50);
      v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
      swift_beginAccess();
      v37 = *(v3 + v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v36) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1B629A8E8(0, v37[2] + 1, 1, v37);
        *(v3 + v36) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1B629A8E8((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v41 = &v37[2 * v40];
      v42 = v63;
      v41[4] = sub_1B639A4DC;
      v41[5] = v42;
      *(v3 + v36) = v37;
      swift_endAccess();
      sub_1B6284EAC(v70, &unk_1EB943210, &unk_1B63C3F50);
      v31 = v64;
      v30 = v65;
      v23 = v69;
    }

    v43 = v73;
    v31(v73, v23, v20);
    (*(v30 + 56))(v43, 0, 1, v20);
    v44 = v30;
    v45 = v72;
    sub_1B628C510(v43, v72, &unk_1EB943210, &unk_1B63C3F50);
    v46 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime;
    swift_beginAccess();
    sub_1B6282DFC(v45, v4 + v46, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v47 = v66;
    sub_1B628C510(v43, v66, &unk_1EB943210, &unk_1B63C3F50);
    v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v49 = swift_allocObject();
    sub_1B628A128(v47, v49 + v48, &unk_1EB943210, &unk_1B63C3F50);
    v50 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v51 = *(v4 + v50);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v50) = v51;
    v53 = v20;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1B629A8E8(0, v51[2] + 1, 1, v51);
      *(v4 + v50) = v51;
    }

    v54 = v71;
    v56 = v51[2];
    v55 = v51[3];
    if (v56 >= v55 >> 1)
    {
      v51 = sub_1B629A8E8((v55 > 1), v56 + 1, 1, v51);
    }

    v51[2] = v56 + 1;
    v57 = &v51[2 * v56];
    v57[4] = sub_1B639A504;
    v57[5] = v49;
    *(v4 + v50) = v51;
    swift_endAccess();
    v58 = sub_1B6284EAC(v73, &unk_1EB943210, &unk_1B63C3F50);
    v59 = *(v4 + v50);
    v60 = *(v59 + 16);
    if (v60)
    {

      v61 = v59 + 40;
      do
      {
        v62 = *(v61 - 8);
        v74 = a2;
        v75[0] = v54;

        v62(v75, &v74);

        v61 += 16;
        --v60;
      }

      while (v60);
    }

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))(v58);
    return (*(v44 + 8))(v69, v53);
  }

  return result;
}

void *sub_1B63983D0(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v50;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
  v23 = v51;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v24 = type metadata accessor for MapsSyncObject(0);
  v52.receiver = v4;
  v52.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  v27 = v26;
  if (v22)
  {
    v28 = v26;
    v29 = [v22 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v22, v23 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v17(v32, 0, 1, v16);
    v33 = v45;
    sub_1B628C510(v32, v45, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v47;
    sub_1B628C510(v32, v47, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B639A630;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

id MapsSyncObject.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithObject:0 store:v1 lazyLoad:0 parent:1];
}

id MapsSyncObject.__allocating_init(store:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithObject:0 store:a1 lazyLoad:0 parent:1];

  return v3;
}

id MapsSyncObject.init(store:)(void *a1)
{
  v3 = [v1 initWithObject:0 store:a1 lazyLoad:0 parent:1];

  return v3;
}

void *sub_1B6398A0C(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  v49 = a4;
  v50 = a3;
  v51 = a2;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  v12 = objc_allocWithZone(v4);
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v12[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v12[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v21(&v12[v19], 1, 1, v20);
  v21(&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v22 = v50;
  v23 = v51;
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v51;
  v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v53.receiver = v12;
  v53.super_class = v5;
  v24 = v52;
  v25 = v23;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v24)
  {
    v28 = v26;
    v29 = [v24 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v24, v22 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v18(v32, 0, 1, v17);
    v33 = v45;
    sub_1B628C510(v32, v45, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v47;
    sub_1B628C510(v32, v47, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B639A49C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

void sub_1B63993C8(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = *a2;
  sub_1B628C510(a3, &v13 - v6, &unk_1EB943680, qword_1B63C4070);
  v9 = sub_1B63BEA04();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B63BE9C4();
    (*(v10 + 8))(v7, v9);
  }

  v12 = sub_1B63BEBC4();
  [v8 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();
}

uint64_t sub_1B6399548(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1B63BE974();
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B63BE994();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9, 1);

  return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
}

id sub_1B6399680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  v11 = *a2;
  swift_beginAccess();
  sub_1B628C510(v9 + v11, a5, a3, a4);
  return [*(v9 + v10) unlock];
}

void sub_1B639971C(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = *a2;
  sub_1B628C510(a3, &v13 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B63BE954();
    (*(v10 + 8))(v7, v9);
  }

  v12 = sub_1B63BEBC4();
  [v8 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();
}

id sub_1B6399890(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v9 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v10 = a1;
  [v9 lock];
  v11 = *a3;
  swift_beginAccess();
  sub_1B628C510(&v10[v11], v7, &unk_1EB943210, &unk_1B63C3F50);
  [*&a1[v8] unlock];

  v12 = sub_1B63BE994();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1B63BE954();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

uint64_t sub_1B6399A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(char *, uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B628C510(a1, &v15 - v12, a5, a6);
  a7(v13, 1);
  return sub_1B6284EAC(v13, a5, a6);
}

void sub_1B6399AFC(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = *a2;
  sub_1B628C510(a3, &v13 - v6, &unk_1EB943210, &unk_1B63C3F50);
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B63BE954();
    (*(v10 + 8))(v7, v9);
  }

  v12 = sub_1B63BEBC4();
  [v8 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();
}

id MapsSyncObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncObject(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B639A0EC(uint64_t a1)
{
  v2 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B639A148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B639A52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B639A590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

id sub_1B639A694(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B639A744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B639A890@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B639A92C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedContactHandle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B639A9DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedVisit();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id static MapsSyncManagedCachedMapItemStorage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B63BEBC4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1B639AAA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 customName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B639AB08(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B63BEBC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCustomName_];
}

void sub_1B639AB78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B628C510(a1, &v11 - v5, &unk_1EB943680, qword_1B63C4070);
  v7 = *a2;
  v8 = sub_1B63BEA04();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B63BE9C4();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setIdentifier_];
}

void sub_1B639ACB4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mapItemStorage];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B639AD1C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B63BE904();
  }

  v4 = v3;
  [v2 setMapItemStorage_];
}

uint64_t sub_1B639ADC8@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B639AE8C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B628C510(a1, &v15 - v9, &unk_1EB943210, &unk_1B63C3F50);
  v11 = *a2;
  v12 = sub_1B63BE994();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B63BE954();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1B639AFC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B639B06C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B639B0B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B639B14C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedVisitedLocation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id MapsSyncQueryOptions.__allocating_init(predicate:sortDescriptors:range:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B62895F4(a1, a2, a3);

  return v8;
}

id MapsSyncDictionaryQueryOptions.__allocating_init(propertiesToFetch:groupBy:expression:)(char *a1, uint64_t a2, char *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B639EA7C(a1, a2, a3);

  return v8;
}

id MapsSyncRange.__allocating_init(offset:limit:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t MapsSyncDateRange.init(startDate:endDate:)(char *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943628, &unk_1B63C6860);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = sub_1B63BE994();
  sub_1B639EBAC();
  result = sub_1B63BEBA4();
  if (result)
  {
    v17 = *(v15 - 8);
    v29 = v3;
    v18 = v17;
    v26 = v12;
    v19 = *(v17 + 16);
    v19(v11, a1, v15);
    v19(&v11[*(v6 + 48)], a2, v15);
    sub_1B628C510(v11, v9, &qword_1EB943628, &unk_1B63C6860);
    v20 = *(v6 + 48);
    v27 = a2;
    v28 = a1;
    v21 = *(v18 + 32);
    v21(v14, v9, v15);
    v22 = *(v18 + 8);
    v22(&v9[v20], v15);
    sub_1B639EC04(v11, v9);
    v21(&v14[*(v26 + 36)], &v9[*(v6 + 48)], v15);
    v22(v9, v15);
    v23 = type metadata accessor for MapsSyncDateRange(0);
    v24 = objc_allocWithZone(v23);
    sub_1B628C510(v14, v24 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
    v30.receiver = v24;
    v30.super_class = v23;
    v25 = objc_msgSendSuper2(&v30, sel_init);
    v22(v27, v15);
    v22(v28, v15);
    sub_1B6284EAC(v14, &qword_1EB943630, &qword_1B63C3E10);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MapsSyncDateRange.__allocating_init(range:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B628C510(a1, v3 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B6284EAC(a1, &qword_1EB943630, &qword_1B63C3E10);
  return v4;
}

id MapsSyncDateRange.init(range:)(uint64_t a1)
{
  sub_1B628C510(a1, v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncDateRange(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1B6284EAC(a1, &qword_1EB943630, &qword_1B63C3E10);
  return v3;
}

void *sub_1B639BC80()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B639BCD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1B639BDDC()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B639BE34(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1B639BE90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B639BEE8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_1B639C114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B639C16C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1B639C29C()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B639C334(char a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MapsSyncQueryOptions.__allocating_init(options:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B628DD60(a1);

  return v4;
}

id MapsSyncQueryOptions.init(options:)(void *a1)
{
  v2 = sub_1B628DD60(a1);

  return v2;
}

char *sub_1B639C48C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1B62B1E6C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B639C584(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1B62B23B4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall MapsSyncQueryAttribute.string()()
{
  if (v0 <= 2)
  {
    v1 = 0xEA0000000000656DLL;
    switch(v0)
    {
      case 0:
        v1 = 0xEA00000000007265;
        v2 = 0x696669746E656469;
        goto LABEL_17;
      case 1:
        v2 = 0xD000000000000010;
        v1 = 0x80000001B63C7D10;
        goto LABEL_17;
      case 2:
        v2 = 0x6954657461657263;
        goto LABEL_17;
    }

LABEL_16:
    v2 = sub_1B63BF3A4();
    __break(1u);
    goto LABEL_17;
  }

  if (v0 > 4)
  {
    if (v0 == 5)
    {
      v1 = 0xE400000000000000;
      v2 = 1684632941;
      goto LABEL_17;
    }

    if (v0 == 6)
    {
      v1 = 0x80000001B63C9040;
      v2 = 0xD000000000000011;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v0 == 3)
  {
    v1 = 0xED00007865646E49;
    v2 = 0x6E6F697469736F70;
  }

  else
  {
    v1 = 0x80000001B63C7C80;
    v2 = 0xD00000000000001BLL;
  }

LABEL_17:
  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t sub_1B639C8FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B639ECC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MapsSyncQueryPredicate.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MapsSyncQueryPredicate.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1B639CA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B628E790(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B628E790((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B628E928(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1B639CB54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B63BF044();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1B628E790(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8C92830](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B628E790((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B628E928(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1B628E790((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_1B628E928(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B639CD4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B639E81C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1B629E3F0(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B639E81C((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 8 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id MapsSyncQueryPredicate.__allocating_init(not:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D70;
  *(v4 + 32) = a1;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v5 = a1;
  v6 = sub_1B63BEC94();

  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithType_subpredicates_, 0, v6);

  return v7;
}

id MapsSyncQueryPredicate.init(not:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C3D70;
  *(v3 + 32) = a1;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v4 = a1;
  v5 = sub_1B63BEC94();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v6 = objc_msgSendSuper2(&v8, sel_initWithType_subpredicates_, 0, v5);

  return v6;
}

id MapsSyncQueryPredicate.__allocating_init(centerLatitude:centerLongitude:squareSideLengthMeters:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B62A0D18(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B63C3D70;
  *(v9 + 32) = v8;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v10 = v8;
  v11 = sub_1B63BEC94();

  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_initWithType_subpredicates_, 1, v11);

  return v12;
}

id MapsSyncQueryPredicate.init(centerLatitude:centerLongitude:squareSideLengthMeters:)(double a1, double a2, double a3)
{
  v4 = sub_1B62A0D18(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D70;
  *(v5 + 32) = v4;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v6 = v4;
  v7 = sub_1B63BEC94();

  v10.receiver = v3;
  v10.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v8 = objc_msgSendSuper2(&v10, sel_initWithType_subpredicates_, 1, v7);

  return v8;
}

id static MapsSyncQueryPredicate.queryPredicate(format:argumentArray:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());

  return sub_1B6299B9C(a1, a2, a3);
}

id sub_1B639D3A8()
{
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v2 = objc_allocWithZone(Predicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C3D70;
  *(v3 + 32) = v0;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v4 = v0;
  v5 = sub_1B63BEC94();

  v8.receiver = v2;
  v8.super_class = Predicate;
  v6 = objc_msgSendSuper2(&v8, sel_initWithType_subpredicates_, 0, v5);

  return v6;
}

id MapsSyncQueryPredicate.init(mapItem:customName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v51 - v9;
  v11 = sub_1B63BEA04();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B63C3D60;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v16 = swift_allocObject();
    v52 = xmmword_1B63C3D50;
    *(v16 + 16) = xmmword_1B63C3D50;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B6281318();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v15 + 32) = sub_1B63BED94();
    v17 = swift_allocObject();
    *(v17 + 16) = v52;
    [a1 coordinate];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v20 = a1;
    v21 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(v17 + 56) = v21;
    v22 = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
    *(v17 + 64) = v22;
    *(v17 + 32) = v19;
    *(v15 + 40) = sub_1B63BED94();
    v23 = swift_allocObject();
    *(v23 + 16) = v52;
    [v20 coordinate];
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(v23 + 56) = v21;
    *(v23 + 64) = v22;
    *(v23 + 32) = v25;
    *(v15 + 48) = sub_1B63BED94();
    v26 = sub_1B63BEC94();

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v53.receiver = v3;
    v53.super_class = Predicate;
    v28 = objc_msgSendSuper2(&v53, sel_initWithType_subpredicates_, 1, v26);

LABEL_17:
    swift_unknownObjectRelease();
    return v28;
  }

  v56 = MEMORY[0x1E69E7CC0];
  if ([a1 _hasMUID])
  {
    *&v52 = v3;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B63C3D50;
    v30 = [a1 _muid];
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(v29 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(v29 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
    *(v29 + 32) = v31;
    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v4 = v52;
  }

  else
  {
    [a1 coordinate];
    v33 = v32;
    [a1 coordinate];
    sub_1B62A0D18(v33, v34, *MEMORY[0x1E69A1670]);
    MEMORY[0x1B8C92370]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
  }

  v35 = [a1 _clientAttributes];
  if (!v35 || (v36 = v35, v37 = [v35 mapsSyncAttributes], v36, !v37) || (v38 = objc_msgSend(v37, sel_mapsSyncIdentifier), v37, !v38))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_16;
  }

  sub_1B63BEBD4();

  sub_1B63BE9A4();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_16:
    sub_1B6284EAC(v10, &unk_1EB943680, qword_1B63C4070);
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v48 = sub_1B63BEC94();

    v49 = type metadata accessor for MapsSyncQueryPredicate();
    v55.receiver = v4;
    v55.super_class = v49;
    v28 = objc_msgSendSuper2(&v55, sel_initWithType_subpredicates_, 1, v48);

    goto LABEL_17;
  }

  (*(v12 + 32))(v14, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B63C4B90;
  v51[0] = sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v40 = swift_allocObject();
  *&v52 = v4;
  v41 = v40;
  *(v40 + 16) = xmmword_1B63C3D50;
  v42 = sub_1B63BE9C4();
  v51[1] = a1;
  v41[7] = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
  v41[8] = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
  v41[4] = v42;
  *(v39 + 32) = sub_1B63BED94();
  v43 = objc_allocWithZone(MEMORY[0x1E696AB28]);
  v44 = sub_1B63BEC94();

  v45 = [v43 initWithType:1 subpredicates:v44];

  *(v39 + 40) = v45;
  v46 = sub_1B63BEC94();

  v47 = type metadata accessor for MapsSyncQueryPredicate();
  v54.receiver = v52;
  v54.super_class = v47;
  v28 = objc_msgSendSuper2(&v54, sel_initWithType_subpredicates_, 2, v46);
  swift_unknownObjectRelease();

  (*(v12 + 8))(v14, v11);
  return v28;
}

uint64_t sub_1B639DF10(unint64_t a1)
{
  if (a1 < 0x10)
  {
    return qword_1B63C6B38[a1];
  }

  result = sub_1B63BF3A4();
  __break(1u);
  return result;
}

uint64_t sub_1B639DF7C()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

uint64_t sub_1B639DFC4(uint64_t a1)
{
  v2 = *v1;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v2);
  return sub_1B63BF494();
}

unint64_t sub_1B639E008@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B639ECD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MapsSyncExpression.__allocating_init(expression:key:returnType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v8 setExpression_];
  v9 = v8;
  v10 = sub_1B63BEBC4();

  [v9 setName_];

  [v9 setExpressionResultType_];
  *&v7[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression] = v9;
  v13.receiver = v7;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id MapsSyncExpression.init(expression:key:returnType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1B639ECE0(a1, a2, a3, a4);

  return v5;
}

id MapsSyncExpression.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)(char *a1, uint64_t a2, char *a3)
{
  v4 = sub_1B639EA7C(a1, a2, a3);

  return v4;
}

uint64_t sub_1B639E494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = v4;
  v7 = v4;

  v8 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;
  v12 = v9;

  v13 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  *(v1 + v15) = v14;

  *(v1 + OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_notifyOnLoad) = *(a1 + OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_notifyOnLoad);
  v16 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v16);
  v17 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  result = swift_beginAccess();
  *(v1 + v17) = a1;
  return result;
}

uint64_t sub_1B639E720()
{
}

id sub_1B639E778(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1B639E7FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B639E83C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B639E81C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B639E948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B639E83C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B639E948(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9430B0, &unk_1B63C3EC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1B639EA7C(char *a1, uint64_t a2, char *a3)
{
  v6 = OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy;
  *(v3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy) = 0;
  if (a3)
  {
    v7 = *&a3[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression];
    v15 = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
    *&v14 = v7;
    v9 = a3;
    v10 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1B62B1E6C(0, *(a1 + 2) + 1, 1, a1);
    }

    v12 = *(a1 + 2);
    v11 = *(a1 + 3);
    if (v12 >= v11 >> 1)
    {
      a1 = sub_1B62B1E6C((v11 > 1), v12 + 1, 1, a1);
    }

    *(a1 + 2) = v12 + 1;
    sub_1B628E928(&v14, &a1[32 * v12 + 32]);
  }

  *(v3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch) = a1;
  *(v3 + v6) = a2;

  return sub_1B62895F4(0, 0, 0);
}

unint64_t sub_1B639EBAC()
{
  result = qword_1EB943638;
  if (!qword_1EB943638)
  {
    sub_1B63BE994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943638);
  }

  return result;
}

uint64_t sub_1B639EC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943628, &unk_1B63C6860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MapsSyncDateRange(uint64_t a1)
{
  result = qword_1EB9436B0;
  if (!qword_1EB9436B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B639ECC0(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B639ECD0(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

id sub_1B639ECE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v7 setExpression_];
  v8 = v7;
  v9 = sub_1B63BEBC4();

  [v8 setName_];

  [v8 setExpressionResultType_];
  *&v4[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression] = v8;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MapsSyncExpression();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1B639EE1C()
{
  result = qword_1EB9436A0;
  if (!qword_1EB9436A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9436A0);
  }

  return result;
}

unint64_t sub_1B639EE74()
{
  result = qword_1EB9436A8;
  if (!qword_1EB9436A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9436A8);
  }

  return result;
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_1B639EFC8(uint64_t a1)
{
  sub_1B639F084(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B639F084(uint64_t a1)
{
  if (!qword_1EB9436C0)
  {
    sub_1B63BE994();
    sub_1B639EBAC();
    v1 = sub_1B63BED84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB9436C0);
    }
  }
}

void sub_1B639F524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v51 = MEMORY[0x1E69E7CC0];
  *&v52 = a2;
  *(&v52 + 1) = a3;

  v12 = MEMORY[0x1E69E6158];
  v13 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v54 = 0u;
  }

  v55 = v52;
  v56 = v54;
  if (!*(&v54 + 1))
  {
    sub_1B62B0364(&v55);
    return;
  }

  v14 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B63C3D80;
    *(v15 + 56) = v12;
    v47 = sub_1B6281318();
    *(v15 + 64) = v47;
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    *(v15 + 96) = v14;
    v16 = sub_1B634E7B8();
    *(v15 + 104) = v16;
    *(v15 + 72) = v50;

    v48 = v50;
    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    *&v53 = a4;
    *(&v53 + 1) = a5;

    v17 = MEMORY[0x1E69E6158];
    v18 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v19 = v6;
    v55 = v53;
    v56 = v54;
    if (!*(&v54 + 1))
    {
      sub_1B62B0364(&v55);
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B63C3D80;
    *(v20 + 56) = v17;
    *(v20 + 64) = v47;
    *(v20 + 32) = a4;
    *(v20 + 40) = a5;
    *(v20 + 96) = v14;
    *(v20 + 104) = v16;
    *(v20 + 72) = v50;

    v21 = v50;
    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      sub_1B63BECE4();

LABEL_17:
      v22 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
      v23 = sub_1B63BEBC4();
      v24 = [v22 initWithEntityName_];

      v25 = sub_1B63BEC94();

      v26 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v24 setPredicate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1B63C3D70;
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      swift_getKeyPath();
      *(v27 + 32) = sub_1B63BEDE4();
      v28 = sub_1B63BEC94();

      [v24 setSortDescriptors_];

      type metadata accessor for MapsSyncManagedCachedMapItemStorage();
      v29 = sub_1B63BEEA4();
      if (v19)
      {
        goto LABEL_38;
      }

      v19 = v29;
      v30 = v29 >> 62;
      if (v29 >> 62)
      {
        v46 = sub_1B63BF044();
        if (v46 < 0)
        {
          __break(1u);
          return;
        }

        v31 = v46;
        v21 = v46 != 0;
        if (sub_1B63BF044() < v21)
        {
          goto LABEL_46;
        }

        if (sub_1B63BF044() < v31)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v31 != 0;
        if (v31 < v21)
        {
          goto LABEL_46;
        }
      }

      if ((v19 & 0xC000000000000001) != 0)
      {

        if (v31 >= 2)
        {
          v32 = v21;
          do
          {
            v33 = v32 + 1;
            sub_1B63BF134();
            v32 = v33;
          }

          while (v31 != v33);
        }

        if (!v30)
        {
LABEL_25:
          v34 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
          v35 = __OFSUB__(v31, v21);
          v37 = v31 - v21;
          v36 = (v37 < 0) ^ v35 | (v37 == 0);
          if (!v37)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }
      }

      else
      {

        if (!v30)
        {
          goto LABEL_25;
        }
      }

      sub_1B63BF2C4();
      v21 = v38;
      v37 = (v39 >> 1) - v38;
      v36 = (v39 >> 1) <= v38;
      if (v39 >> 1 == v38)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v36)
      {
        __break(1u);
      }

      v40 = (v34 + 8 * v21);
      do
      {
        v41 = *v40++;
        [a6 deleteObject_];
        --v37;
      }

      while (v37);
LABEL_32:
      swift_unknownObjectRelease();
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      sub_1B63BF114();

      *&v55 = 0x20646567727550;
      *(&v55 + 1) = 0xE700000000000000;
      if (v30)
      {
        v21 = sub_1B63BF044();
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!__OFSUB__(v21, 1))
      {
        v42 = sub_1B63BF344();
        MEMORY[0x1B8C92330](v42);

        MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CC370);
        _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v55, *(&v55 + 1));

        *&v55 = 0;
        if ([a6 save_])
        {
          v43 = v55;
LABEL_38:
          v44 = v48;
        }

        else
        {
          v45 = v55;
          sub_1B63BE824();

          swift_willThrow();
          v44 = v24;
          v24 = v48;
        }

        return;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      sub_1B63BECC4();
    }
  }
}

void sub_1B639FCD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *&v56 = a6;
  *(&v56 + 1) = a7;
  v66 = *MEMORY[0x1E69E9840];
  v59 = MEMORY[0x1E69E7CC0];
  *&v60 = a2;
  *(&v60 + 1) = a3;

  v15 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v63 = 0u;
  }

  v64 = v60;
  v65 = v63;
  if (!*(&v63 + 1))
  {
    sub_1B62B0364(&v64);
    return;
  }

  v16 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v55 = a8;
    *&v61 = a4;
    *(&v61 + 1) = a5;

    v17 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v17)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v63 = 0u;
    }

    v64 = v61;
    v65 = v63;
    if (!*(&v63 + 1))
    {

      sub_1B62B0364(&v64);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B63C5270;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1B6281318();
    *(v18 + 64) = v19;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 96) = v16;
    v20 = sub_1B634E7B8();
    *(v18 + 72) = v57;
    *(v18 + 136) = MEMORY[0x1E69E6158];
    *(v18 + 144) = v19;
    *(v18 + 104) = v20;
    *(v18 + 112) = a4;
    *(v18 + 120) = a5;
    *(v18 + 176) = v16;
    *(v18 + 184) = v20;
    *(v18 + 152) = v57;

    v54 = v57;
    v21 = v57;
    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v62 = v56;

    v22 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (!*(&v63 + 1))
    {
      sub_1B62B0364(&v64);
      goto LABEL_24;
    }

    v23 = MEMORY[0x1E69E6158];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B63C3D80;
    *(v24 + 56) = v23;
    *(v24 + 64) = v19;
    *(v24 + 32) = v56;
    *(v24 + 96) = v23;
    *(v24 + 104) = v19;
    *(v24 + 72) = v57;
    *(v24 + 80) = v58;

    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_56;
    }

    while (1)
    {
      sub_1B63BECE4();
LABEL_24:
      v25 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
      v26 = sub_1B63BEBC4();
      v27 = [v25 initWithEntityName_];

      v28 = sub_1B63BEC94();

      v29 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v27 setPredicate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1B63C3D70;
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      swift_getKeyPath();
      *(v30 + 32) = sub_1B63BEDE4();
      v31 = sub_1B63BEC94();

      [v27 setSortDescriptors_];

      type metadata accessor for MapsSyncManagedCachedMapItemStorage();
      v32 = sub_1B63BEEA4();
      if (v8)
      {
        v33 = v54;
        v34 = v27;
LABEL_48:

        return;
      }

      v35 = v32;
      v36 = v32 >> 62;
      if (v32 >> 62)
      {
        v52 = sub_1B63BF044();
        if (v52 < 0)
        {
          __break(1u);
          return;
        }

        v37 = v52;
        v38 = v52 != 0;
        if (sub_1B63BF044() < v38)
        {
          goto LABEL_54;
        }

        if (sub_1B63BF044() < v37)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      else
      {
        v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v38 = v37 != 0;
        if (v37 < v38)
        {
          goto LABEL_54;
        }
      }

      if ((v35 & 0xC000000000000001) != 0)
      {

        if (v37 >= 2)
        {
          v39 = v38;
          do
          {
            v40 = v39 + 1;
            sub_1B63BF134();
            v39 = v40;
          }

          while (v37 != v40);
        }
      }

      else
      {
      }

      if (v36)
      {

        sub_1B63BF2C4();
        v38 = v42;
        v37 = v43 >> 1;
      }

      else
      {
        v41 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v44 = __OFSUB__(v37, v38);
      v45 = v37 - v38;
      if (v45)
      {
        if ((v45 < 0) ^ v44 | (v45 == 0))
        {
          __break(1u);
        }

        v46 = (v41 + 8 * v38);
        do
        {
          v47 = *v46++;
          [v55 deleteObject_];
          --v45;
        }

        while (v45);
      }

      swift_unknownObjectRelease();
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_1B63BF114();

      *&v64 = 0x20646567727550;
      *(&v64 + 1) = 0xE700000000000000;
      if (v36)
      {
        v48 = sub_1B63BF044();
      }

      else
      {
        v48 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v54;

      if (!__OFSUB__(v48, 1))
      {
        v49 = sub_1B63BF344();
        MEMORY[0x1B8C92330](v49);

        MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CC370);
        _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v64, *(&v64 + 1));

        *&v64 = 0;
        if ([v55 save_])
        {
          v50 = v64;

          return;
        }

        v51 = v64;
        sub_1B63BE824();

        swift_willThrow();
        v33 = v27;
        goto LABEL_48;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      sub_1B63BECC4();
    }
  }
}

uint64_t sub_1B63A064C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedMapItemStorageRequest();
  v7 = objc_allocWithZone(v6);
  v8 = type metadata accessor for CachedMapItemStorage(0);
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
  v9 = type metadata accessor for MapsSyncRequest();
  v58.receiver = v7;
  v58.super_class = v9;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v58, sel_init);
  v12 = a2;
  sub_1B63B3BCC(1684632941, 0xE400000000000000, v12, &unk_1F2DA56A8, v11, 1684632941, 0xE400000000000000, 0x5073746C75736572, 0xEF72656469766F72, v12);

  result = sub_1B63A0E84(&unk_1F2DA56C8);
  if (!v2)
  {
    v14 = objc_allocWithZone(v6);
    *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v10;
    *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
    v57.receiver = v14;
    v57.super_class = v9;
    v15 = v10;
    v52 = objc_msgSendSuper2(&v57, sel_init);
    (*(*&v52[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] + 544))();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = v12;
    v17 = [ObjCClassFromMetadata entityName];
    if (!v17)
    {
      sub_1B63BEBD4();
      v17 = sub_1B63BEBC4();
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

    [v18 setResultType_];
    v19 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) &selRef_version];
    v20 = sub_1B63BEBC4();
    [v19 setName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B63C3D50;
    v22 = sub_1B63BEBC4();
    v23 = objc_opt_self();
    v24 = [v23 expressionForKeyPath_];

    *(v21 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
    *(v21 + 32) = v24;
    v25 = sub_1B63BEBC4();
    v26 = sub_1B63BEC94();

    v27 = v23;
    v28 = 0x656475746974616CLL;
    v29 = [v27 expressionForFunction:v25 arguments:v26];

    [v19 setExpression_];
    [v19 setExpressionResultType_];
    sub_1B639C584(byte_1F2DA5718);
    sub_1B639CA54(&unk_1F2DA56D8);

    v30 = sub_1B63BEC94();

    [v18 setPropertiesToGroupBy_];

    v31 = sub_1B639CA54(&unk_1F2DA56D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D80;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 32) = 0x656475746974616CLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
    *(inited + 64) = v19;
    *&v56[0] = v31;
    v33 = v19;
    sub_1B639C48C(inited);
    v34 = sub_1B63BEC94();

    [v18 setPropertiesToFetch_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B63C3D70;
    v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v37 = sub_1B63BEBC4();
    v38 = [v36 initWithKey:v37 ascending:0];

    *(v35 + 32) = v38;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v39 = sub_1B63BEC94();

    [v18 setSortDescriptors_];

    sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
    v40 = v53;
    v41 = sub_1B63BEEA4();
    v42 = v41;
    v51 = v33;
    if (v41 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v50 = v18;
      v44 = 0;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1B8C92830](v44, v42);
        }

        else
        {
          if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v18 = v42;
        v40 = v3;
        v48 = v28;
        *&v54 = 0x746E756F63;
        *(&v54 + 1) = 0xE500000000000000;
        v49 = [v45 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v49)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        v28 = v48;
        v56[0] = v54;
        v56[1] = v55;
        v3 = v40;
        if (*(&v55 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v59 < 2)
            {

              v40 = v52;
              v18 = v51;
              v52 = v50;
              goto LABEL_28;
            }

            sub_1B639FCD8(v46, v28, 0xE800000000000000, 0x64757469676E6F6CLL, 0xE900000000000065, 0x614E6D6F74737563, 0xEA0000000000656DLL, v53);
          }
        }

        else
        {

          sub_1B62B0364(v56);
        }

        ++v44;
        if (v47 == i)
        {
          v18 = v50;
          v46 = v51;
          v40 = v53;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v46 = v51;
LABEL_28:

    return swift_arrayDestroy();
  }

  return result;
}

id sub_1B63A0F30(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedRAPRecord();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63A0F88@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B63A1024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A1058@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B63A109C()
{
  result = [objc_allocWithZone(type metadata accessor for MapsSyncKeyedStore()) init];
  qword_1EB942FA0 = result;
  return result;
}

id static MapsSyncKeyedStore.shared.getter()
{
  if (qword_1EB942F98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB942FA0;

  return v1;
}

double sub_1B63A123C@<D0>(_OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v6 = sub_1B63BEBC4();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_1B63BEF84();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_1B63A12D8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *&a1[OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store];
  v5 = a1;
  if ([v4 objectForKey_])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  v6 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v7 = __swift_project_boxed_opaque_existential_0(&v15, *(&v16 + 1));
    v8 = *(*(&v14 + 1) - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1B63BF354();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1B63A1468(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B63BEBD4();

  return v6;
}

uint64_t sub_1B63A159C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 arrayForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B63BECA4();

  return v6;
}

uint64_t sub_1B63A16D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 dictionaryForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B63BEB74();

  return v6;
}

uint64_t sub_1B63A183C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 dataForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B63BE924();

  return v6;
}

id sub_1B63A1974(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 longLongForKey_];

  return v5;
}

double sub_1B63A19DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  [v3 doubleForKey_];
  v6 = v5;

  return v6;
}

id sub_1B63A1A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 BOOLForKey_];

  return v5;
}

uint64_t sub_1B63A1B78()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) dictionaryRepresentation];
  v2 = sub_1B63BEB74();

  return v2;
}

id sub_1B63A1BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  sub_1B634C588(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B63BF354();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B63BEBC4();
  [v4 setObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  return [v4 synchronize];
}

uint64_t sub_1B63A1D60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a4;
    v7 = a1;
    swift_unknownObjectRetain();
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v8 = a4;
    v9 = a1;
  }

  v10 = sub_1B63BEBD4();
  v12 = v11;

  sub_1B63A1BE4(v14, v10, v12);

  return sub_1B62B0364(v14);
}

id sub_1B63A1E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a2)
  {
    v6 = sub_1B63BEBC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1B63BEBC4();
  [v5 setString:v6 forKey:v7];

  return [v5 synchronize];
}

id sub_1B63A1F7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1B63BE904();
  }

  v7 = sub_1B63BEBC4();
  [v5 setData:v6 forKey:v7];

  return [v5 synchronize];
}

id sub_1B63A212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a1)
  {
    v5 = sub_1B63BEC94();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B63BEBC4();
  [v4 setArray:v5 forKey:v6];

  return [v4 synchronize];
}

id sub_1B63A22B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a1)
  {
    v5 = sub_1B63BEB54();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B63BEBC4();
  [v4 setDictionary:v5 forKey:v6];

  return [v4 synchronize];
}

id sub_1B63A2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v6 = sub_1B63BEBC4();
  [v5 setLongLong:a1 forKey:v6];

  return [v5 synchronize];
}

id sub_1B63A2584(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v6 = sub_1B63BEBC4();
  [v5 setDouble:v6 forKey:a3];

  return [v5 synchronize];
}

id sub_1B63A2688(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v6 = sub_1B63BEBC4();
  [v5 setBool:a1 & 1 forKey:v6];

  return [v5 synchronize];
}

id sub_1B63A2794(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  [v3 removeObjectForKey_];

  return [v3 synchronize];
}

id MapsSyncKeyedStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncKeyedStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B63A2DE4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedHistorySearchItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B63A2E3C(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
    v2 = sub_1B63BF044();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B63BF184();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C92830](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MapsSyncManagedContactHandle();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1B63BF164();
        sub_1B63BF194();
        sub_1B63BF1A4();
        sub_1B63BF174();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1B63A2FAC(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
    v2 = sub_1B63BF044();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B63BF184();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C92830](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1B63BF164();
        sub_1B63BF194();
        sub_1B63BF1A4();
        sub_1B63BF174();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1B63A3120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B639E81C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B629E3F0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B639E81C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B63A3248(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1B63BF184();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C92830](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for MapsSyncManagedFavoriteItem();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1B63BF164();
      sub_1B63BF194();
      sub_1B63BF1A4();
      sub_1B63BF174();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
  }

  return v8;
}

uint64_t sub_1B63A33AC(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *a1;
  v17 = *a2;
  v18 = sub_1B63BEBC4();
  v19 = [v17 valueForKey_];

  if (v19)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    v35 = v13;
    v36 = v15;
    v20 = swift_dynamicCast();
    v21 = v10[7];
    v21(v8, v20 ^ 1u, 1, v9);
    v22 = v10[6];
    if (v22(v8, 1, v9) != 1)
    {
      v34 = v21;
      v23 = v8;
      v24 = v10[4];
      v24(v36, v23, v9);
      v25 = sub_1B63BEBC4();
      v26 = [v16 valueForKey_];

      if (v26)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v28 = v37;
      v40 = v38;
      v41 = v39;
      if (*(&v39 + 1))
      {
        v29 = swift_dynamicCast();
        v34(v28, v29 ^ 1u, 1, v9);
        if (v22(v28, 1, v9) != 1)
        {
          v30 = v35;
          v24(v35, v28, v9);
          v31 = v36;
          v27 = sub_1B63BE964();
          v32 = v10[1];
          v32(v30, v9);
          v32(v31, v9);
          return v27 & 1;
        }
      }

      else
      {
        sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
        v34(v28, 1, 1, v9);
      }

      (v10[1])(v36, v9);
      sub_1B6284EAC(v28, &unk_1EB943210, &unk_1B63C3F50);
      v27 = 0;
      return v27 & 1;
    }
  }

  else
  {
    sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
    (v10[7])(v8, 1, 1, v9);
  }

  sub_1B6284EAC(v8, &unk_1EB943210, &unk_1B63C3F50);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_1B63A38A0(void *a1)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = &v86 - v3;
  v4 = sub_1B63BEA04();
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B63BEBC4();
  v7 = objc_opt_self();
  v8 = [v7 expressionForKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v9 = swift_allocObject();
  v111 = xmmword_1B63C3D50;
  *(v9 + 16) = xmmword_1B63C3D50;
  *(v9 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = sub_1B63BEBC4();
  v12 = sub_1B63BEC94();

  v13 = [v7 expressionForFunction:v11 arguments:v12];

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v15 setExpression_];
  v16 = v15;
  v17 = sub_1B63BEBC4();
  [v16 setName_];

  (*(v1 + 544))([v16 setExpressionResultType_]);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [ObjCClassFromMetadata entity];
  v19 = [v18 name];

  if (!v19)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v105 = v14;
  v107 = v10;
  v101 = v4;
  v20 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v20 setReturnsObjectsAsFaults_];
  v21 = swift_allocObject();
  *(v21 + 16) = v111;
  v22 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 32) = 0x696669746E656469;
  *(v21 + 40) = 0xEA00000000007265;
  v23 = sub_1B63BEC94();

  [v20 setPropertiesToGroupBy_];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B63C3D80;
  *(v24 + 56) = v22;
  *(v24 + 32) = 0x696669746E656469;
  *(v24 + 40) = 0xEA00000000007265;
  *(v24 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v24 + 64) = v16;
  v25 = v16;
  v26 = sub_1B63BEC94();

  [v20 setPropertiesToFetch_];

  [v20 setResultType_];
  v27 = sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v28 = sub_1B63BED94();
  [v20 setPredicate_];

  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_allocObject();
  v31 = v110;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v20;

  v32 = v31;
  v33 = v20;
  v34 = 0;
  MapsSyncCatchObjC(_:)(sub_1B63A487C, v30);

  v97 = v32;
  v96 = v33;
  v98 = "per.ubiquity-kvstore-identifier";
  swift_beginAccess();
  v35 = v107;
  if (!*(v29 + 16) || (v36 = , v37 = sub_1B63A3120(v36), , !v37))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v88 = v29;
  v95 = v27;
  v89 = v25;
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + 32;
    v100 = MEMORY[0x1E69E7CC0];
    v40 = v101;
    do
    {
      v41 = *v39;
      if (*(*v39 + 16))
      {

        v42 = sub_1B6380EF4(0x746E756F63, 0xE500000000000000);
        if (v43 & 1) != 0 && (sub_1B629E3F0(*(v41 + 56) + 32 * v42, &v113), (swift_dynamicCast()) && v112 >= 2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_1B62B24C0(0, v100[2] + 1, 1, v100);
          }

          v45 = v100[2];
          v44 = v100[3];
          if (v45 >= v44 >> 1)
          {
            v100 = sub_1B62B24C0((v44 > 1), v45 + 1, 1, v100);
          }

          v46 = v100;
          v100[2] = v45 + 1;
          v46[v45 + 4] = v41;
          v40 = v101;
        }

        else
        {
        }
      }

      v39 += 8;
      --v38;
    }

    while (v38);
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
    v40 = v101;
  }

  v48 = v100;
  v110 = v100[2];
  if (v110)
  {
    v49 = 0;
    v108 = (v102 + 56);
    v109 = v100 + 4;
    v99 = (v102 + 48);
    v93 = (v102 + 32);
    v91 = (v102 + 8);
    v87 = 0x80000001B63CC540;
    v92 = xmmword_1B63C4B90;
    v94 = MEMORY[0x1E69E7CC0];
    v50 = v103;
    v51 = v104;
    while (1)
    {
      if (v49 >= v48[2])
      {
LABEL_68:
        __break(1u);
        return result;
      }

      v52 = v109[v49];
      if (!*(v52 + 16))
      {
        goto LABEL_25;
      }

      v53 = sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
      if ((v54 & 1) == 0)
      {
        break;
      }

      sub_1B629E3F0(*(v52 + 56) + 32 * v53, &v113);

      v55 = swift_dynamicCast();
      (*v108)(v51, v55 ^ 1u, 1, v40);
      if ((*v99)(v51, 1, v40) == 1)
      {
        goto LABEL_26;
      }

      (*v93)(v50, v51, v40);
      v56 = [ObjCClassFromMetadata fetchRequest];
      v102 = v34;
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v58 = swift_allocObject();
      *(v58 + 16) = v111;
      v59 = sub_1B63BE9C4();
      *(v58 + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
      *(v58 + 64) = sub_1B63A489C();
      *(v58 + 32) = v59;
      v60 = sub_1B63BED94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v61 = swift_allocObject();
      *(v61 + 16) = v92;
      v62 = v60;
      *(v61 + 32) = sub_1B63BED94();
      *(v61 + 40) = v62;
      v63 = objc_allocWithZone(MEMORY[0x1E696AB28]);
      v64 = v62;
      v65 = v50;
      v66 = sub_1B63BEC94();

      v67 = v63;
      v68 = v57;
      v69 = [v67 initWithType:1 subpredicates:v66];

      [v57 setPredicate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
      v70 = v102;
      result = sub_1B63BEEA4();
      if (!v70)
      {
        v71 = result;
        v102 = 0;
        v90 = v68;
        v72 = MEMORY[0x1E69E7CC0];
        v113 = MEMORY[0x1E69E7CC0];
        v73 = result & 0xFFFFFFFFFFFFFF8;
        if (result >> 62)
        {
          result = sub_1B63BF044();
          v74 = result;
          if (result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v74 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v74)
          {
LABEL_36:
            v75 = 0;
            do
            {
              v76 = v75;
              while (1)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  result = MEMORY[0x1B8C92830](v76, v71);
                  v75 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  if (v76 >= *(v73 + 16))
                  {
                    goto LABEL_67;
                  }

                  result = swift_unknownObjectRetain();
                  v75 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    __break(1u);
                    goto LABEL_68;
                  }
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                result = swift_unknownObjectRelease();
                ++v76;
                if (v75 == v74)
                {
                  goto LABEL_52;
                }
              }

              MEMORY[0x1B8C92370]();
              if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B63BECC4();
              }

              result = sub_1B63BECE4();
              v72 = v113;
            }

            while (v75 != v74);
          }
        }

LABEL_52:

        v51 = v104;
        if (v72 >> 62)
        {
          v77 = sub_1B63BF044();
        }

        else
        {
          v77 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v101;
        v50 = v103;
        v48 = v100;
        if (v77 >= 2)
        {
          v113 = 0;
          v114 = 0xE000000000000000;
          sub_1B63BF114();

          v113 = 0xD000000000000012;
          v114 = v87;
          v78 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
          v79 = MEMORY[0x1B8C923A0](v72, v78);
          MEMORY[0x1B8C92330](v79);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v113, v114);

          v80 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_1B62B25E8(0, v80[2] + 1, 1, v80);
          }

          v82 = v80[2];
          v81 = v80[3];
          if (v82 >= v81 >> 1)
          {
            v94 = sub_1B62B25E8((v81 > 1), v82 + 1, 1, v80);
          }

          else
          {
            v94 = v80;
          }

          v83 = v101;
          result = (*v91)(v50, v101);
          v84 = v94;
          v94[2] = v82 + 1;
          v85 = &v84[v82];
          v40 = v83;
          v85[4] = v72;
          v48 = v100;
        }

        else
        {
          (*v91)(v103, v101);
        }

        v34 = v102;
        goto LABEL_27;
      }

      result = (*v91)(v65, v40);
      v34 = 0;
      v50 = v65;
      v48 = v100;
LABEL_27:
      if (++v49 == v110)
      {
        goto LABEL_65;
      }
    }

LABEL_25:
    (*v108)(v51, 1, 1, v40);
LABEL_26:
    result = sub_1B6284EAC(v51, &unk_1EB943680, qword_1B63C4070);
    goto LABEL_27;
  }

  v94 = MEMORY[0x1E69E7CC0];
LABEL_65:

  return v94;
}

unint64_t sub_1B63A475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  result = sub_1B63BEEA4();
  if (!v3)
  {
    v6 = sub_1B639CB54(result);

    swift_beginAccess();
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1B63A489C()
{
  result = qword_1EB943730;
  if (!qword_1EB943730)
  {
    sub_1B6281C60(255, &qword_1EB943690, 0x1E696AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943730);
  }

  return result;
}

uint64_t sub_1B63A4904(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B63BD8C4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B63A4980(v6);
  return sub_1B63BF174();
}

void sub_1B63A4980(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B63A500C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1B63A4A94(0, v2, 1, a1);
  }
}

void sub_1B63A4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v37[-v11];
  v12 = sub_1B63BE994();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v37[-v16];
  v38 = a2;
  if (a3 != a2)
  {
    v50 = *a4;
    v51 = (v15 + 56);
    v48 = (v15 + 48);
    v46 = (v15 + 32);
    v43 = (v15 + 8);
    v17 = v50 + 8 * a3 - 8;
    v18 = a1 - a3;
LABEL_7:
    v41 = a3;
    v19 = *(v50 + 8 * a3);
    v39 = v18;
    v40 = v17;
    while (1)
    {
      v20 = *v17;
      v56 = v19;
      v21 = v20;
      v22 = sub_1B63BEBC4();
      v23 = [v21 valueForKey_];

      if (v23)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v54 = v52;
      v55 = v53;
      v24 = v49;
      if (!*(&v53 + 1))
      {
        break;
      }

      v25 = swift_dynamicCast();
      v26 = *v51;
      (*v51)(v24, v25 ^ 1u, 1, v12);
      v27 = *v48;
      if ((*v48)(v24, 1, v12) == 1)
      {
        goto LABEL_16;
      }

      v45 = *v46;
      v45(v47, v24, v12);
      v28 = sub_1B63BEBC4();
      v29 = [v56 valueForKey_];

      if (v29)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v30 = v44;
      v54 = v52;
      v55 = v53;
      if (!*(&v53 + 1))
      {
        sub_1B6284EAC(&v54, &unk_1EB943740, &qword_1B63C5030);
        v26(v30, 1, 1, v12);
LABEL_5:
        (*v43)(v47, v12);
        sub_1B6284EAC(v30, &unk_1EB943210, &unk_1B63C3F50);

LABEL_6:
        a3 = v41 + 1;
        v17 = v40 + 8;
        v18 = v39 - 1;
        if (v41 + 1 == v38)
        {
          return;
        }

        goto LABEL_7;
      }

      v31 = swift_dynamicCast();
      v26(v30, v31 ^ 1u, 1, v12);
      if (v27(v30, 1, v12) == 1)
      {
        goto LABEL_5;
      }

      v32 = v42;
      v45(v42, v30, v12);
      v33 = v47;
      LODWORD(v45) = sub_1B63BE964();
      v34 = *v43;
      (*v43)(v32, v12);
      v34(v33, v12);

      if ((v45 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (!v50)
      {
        __break(1u);
        return;
      }

      v35 = *v17;
      v19 = *(v17 + 8);
      *v17 = v19;
      *(v17 + 8) = v35;
      v17 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_6;
      }
    }

    sub_1B6284EAC(&v54, &unk_1EB943740, &qword_1B63C5030);
    (*v51)(v24, 1, 1, v12);
LABEL_16:
    sub_1B6284EAC(v24, &unk_1EB943210, &unk_1B63C3F50);

    goto LABEL_21;
  }
}