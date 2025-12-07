void *sub_26BF7ABB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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

void *sub_26BF7AD14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00ABCC();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 2 * v16) = *(*(v4 + 48) + 2 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_26BF7AE44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
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

void sub_26BF7AF98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_26BE00608(v18, *(&v18 + 1));
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

void *sub_26BF7B0F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_26BF7B24C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_26BF7B38C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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

void *sub_26BF7B4CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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

void *sub_26BF7B628()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  v6 = *v0;
  v7 = sub_26C00ABCC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_26BF7F0BC(*(v6 + 48) + v21, v5, type metadata accessor for MLS.SubjectPublicKeyInfo);
        result = sub_26BF7F124(v5, *(v8 + 48) + v21, type metadata accessor for MLS.SubjectPublicKeyInfo);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_26BF7B834()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  v2 = *v0;
  v3 = sub_26C00ABCC();
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
        v17 = 56 * (v14 | (v8 << 6));
        result = sub_26BE2DB68(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
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

uint64_t sub_26BF7B9B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  result = sub_26C00ABDC();
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
      sub_26C00B05C();

      sub_26C00924C();
      result = sub_26C00B0CC();
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

        goto LABEL_28;
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

uint64_t sub_26BF7BBE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C00ABDC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = *(*(v5 + 48) + 2 * (v15 | (v8 << 6)));
      sub_26C00B05C();
      sub_26C00B08C();
      result = sub_26C00B0CC();
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
      *(*(v7 + 48) + 2 * v14) = v18;
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

        v4 = v3;
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

uint64_t sub_26BF7BDFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  result = sub_26C00ABDC();
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
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v19);
      result = sub_26C00B0CC();
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
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
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

uint64_t sub_26BF7C03C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABDC();
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
      sub_26C00B05C();
      sub_26BE00608(v18, v19);
      sub_26C00911C();
      result = sub_26C00B0CC();
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

uint64_t sub_26BF7C278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  result = sub_26C00ABDC();
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
      v19 = *v17;
      v18 = v17[1];
      sub_26C00B05C();
      sub_26C00B07C();
      if (v18)
      {

        sub_26C00A58C();
      }

      result = sub_26C00B0CC();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26BF7C4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  result = sub_26C00ABDC();
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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

uint64_t sub_26BF7C6EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  result = sub_26C00ABDC();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_26C00B05C();
      MEMORY[0x26D699B20](v16);
      result = sub_26C00B0CC();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_26BF7C90C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABDC();
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
      sub_26C00B05C();

      sub_26C00A58C();
      result = sub_26C00B0CC();
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

uint64_t sub_26BF7CB44(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  result = sub_26C00ABDC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_26BF78858(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_26BF7F0BC(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_26BF7CD10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  result = sub_26C00ABDC();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_39:
    *v2 = v5;
    return result;
  }

  v42 = v1;
  v43 = v3;
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
    v18 = __clz(__rbit64(v10));
    v44 = (v10 - 1) & v10;
LABEL_15:
    sub_26BE2DB68(*(v3 + 48) + 56 * (v18 | (v6 << 6)), &v46);
    sub_26C00B05C();
    v21 = v46;
    if ((*(&v46 + 1) & 0x2000000000000000) == 0)
    {
      MEMORY[0x26D699B20](0);
      sub_26C00911C();
      goto LABEL_26;
    }

    MEMORY[0x26D699B20](1);
    if (v21 >> 62)
    {
      v41 = sub_26C00AB8C();
      MEMORY[0x26D699B20](v41);
      result = sub_26C00AB8C();
      v22 = result;
      if (!result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = MEMORY[0x26D699B20](*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_26;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_42;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = 0;
      do
      {
        MEMORY[0x26D6996F0](v23++, v21);
        type metadata accessor for SecCertificate(0);
        sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
        sub_26C0092BC();
        swift_unknownObjectRelease();
      }

      while (v22 != v23);
    }

    else
    {
      v24 = (v21 + 32);
      type metadata accessor for SecCertificate(0);
      sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
      do
      {
        v25 = *v24++;
        v26 = v25;
        sub_26C0092BC();

        --v22;
      }

      while (v22);
    }

LABEL_26:
    v28 = *(&v48 + 1);
    v27 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(*(v27 + 8) + 24))(v45, v28);

    sub_26C00B08C();
    v30 = *(&v48 + 1);
    v29 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    v31 = (*(*(v29 + 8) + 16))(v30);
    v33 = v32;
    sub_26C00911C();
    sub_26BE00258(v31, v33);
    result = sub_26C00B0CC();
    v34 = -1 << *(v5 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v12 + 8 * (v35 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      v3 = v43;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *(v12 + 8 * v36);
        if (v40 != -1)
        {
          v13 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    v13 = __clz(__rbit64((-1 << v35) & ~*(v12 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v3 = v43;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 56 * v13;
    v15 = v46;
    v16 = v47;
    v17 = v48;
    *(v14 + 48) = v49;
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    ++*(v5 + 16);
    v10 = v44;
  }

  v19 = v6;
  while (1)
  {
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v42;
      goto LABEL_39;
    }

    v20 = *(v7 + 8 * v6);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_26BF7D18C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26BFD9590(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26BF7D6D8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BEEC164((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26BF7D6D8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_26BF7D6D8(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_26BF7D8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_26BF7D8F0, 0, 0);
}

uint64_t sub_26BF7D8F0()
{
  v1 = *(v0 + 240);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    sub_26BE2E1F0(*(v0 + 240) + 160, v0 + 96, &qword_28045FA20, &qword_26C029070);
    if (*(v0 + 120))
    {
      v2 = *(v0 + 248);
      v3 = *(v0 + 256);
      sub_26BE03890((v0 + 96), v0 + 56);
      v4 = *(v0 + 80);
      v5 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
      *(v0 + 224) = v2;
      *(v0 + 232) = v3;
      v6 = *(v5 + 8);
      sub_26BE00608(v2, v3);
      v16 = (v6 + *v6);
      v7 = swift_task_alloc();
      *(v0 + 264) = v7;
      *v7 = v0;
      v7[1] = sub_26BF7DC5C;

      return v16(v0 + 224, v4, v5);
    }

    else
    {
      sub_26BE2E258(v0 + 96, &qword_28045FA20, &qword_26C029070);
      sub_26BE01654();
      swift_allocError();
      *v14 = 0xD000000000000029;
      *(v14 + 8) = 0x800000026C02CFB0;
      *(v14 + 112) = 2;
      swift_willThrow();
      v15 = *(v0 + 8);

      return v15();
    }
  }

  else
  {
    sub_26BE038A8(*(v0 + 240) + 120, v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v17 = (*(v10 + 8) + **(v10 + 8));
    v11 = swift_task_alloc();
    *(v0 + 280) = v11;
    *v11 = v0;
    v11[1] = sub_26BF7DDE8;
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);

    return v17(v13, v12, v9, v10);
  }
}

uint64_t sub_26BF7DC5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;
  v4[34] = v2;

  sub_26BE00258(v4[28], v4[29]);
  if (v2)
  {
    v5 = sub_26BF7DF6C;
  }

  else
  {
    v5 = sub_26BF7DD80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF7DD80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26BF7DDE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[21] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;
  v4[36] = v2;

  if (v2)
  {
    v5 = sub_26BF7DFD0;
  }

  else
  {
    v5 = sub_26BF7DF04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF7DF04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_26BF7DF6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF7DFD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF7E034(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF5E158(a1, v5, v4);
}

uint64_t sub_26BF7E13C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF60E6C(a1, v5, v4);
}

uint64_t sub_26BF7E23C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF6C23C(a1, v5, v4);
}

unint64_t sub_26BF7E2EC()
{
  result = qword_28045FAD0;
  if (!qword_28045FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FAD0);
  }

  return result;
}

uint64_t sub_26BF7E340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);
}

uint64_t type metadata accessor for MLS.Group.PureSwiftGroup(uint64_t a1)
{
  result = qword_28045FAD8;
  if (!qword_28045FAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BF7E3E4(uint64_t a1)
{
  sub_26BF7EBD0(319);
  if (v1 <= 0x3F)
  {
    sub_26BF7EC34(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.currentState.getter(uint64_t a1)
{
  v6 = (*(*v1 + 1000) + **(*v1 + 1000));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.stateForEpoch(_:allowEndMLS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 1072) + **(*v3 + 1072));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorage(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 1088) + **(*v1 + 1088));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorageV1(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 1096) + **(*v1 + 1096));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.PureSwiftGroup.updateStorageV2(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 1120) + **(*v1 + 1120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

void sub_26BF7EBD0(uint64_t a1)
{
  if (!qword_28045FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E8E0, &unk_26C0204E0);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045FAE8);
    }
  }
}

void sub_26BF7EC34(uint64_t a1)
{
  if (!qword_28045FAF0)
  {
    type metadata accessor for FileInfoAndSender(255);
    v1 = sub_26C00AAAC();
    if (!v2)
    {
      atomic_store(v1, &qword_28045FAF0);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BF7EDDC()
{
  result = qword_28045FB58;
  if (!qword_28045FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FB58);
  }

  return result;
}

uint64_t sub_26BF7EE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF7EFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BF7F05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BF7F0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BF7F124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26BF7F22C(unsigned __int16 *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 52);
  v6 = *(a1 + 68);
  v46 = *(a1 + 60);
  v47 = v6;
  v26 = *(a1 + 20);
  v48 = *(a1 + 19);
  v7 = *(a1 + 20);
  v8 = *(a1 + 36);
  v42 = *(a1 + 28);
  v43 = v8;
  v44 = *(a1 + 44);
  v45 = v5;
  v40 = *(a1 + 12);
  v41 = v7;
  LOWORD(v29[0]) = 256;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  *(&v32 + 1) = MEMORY[0x277D838B0];
  *&v33 = MEMORY[0x277CC9C18];
  *&v31 = v29;
  *(&v31 + 1) = v29 + 2;
  __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  LOWORD(v29[0]) = bswap32(v2) >> 16;
  *(&v32 + 1) = v9;
  *&v33 = v10;
  *&v31 = v29;
  *(&v31 + 1) = v29 + 2;
  __swift_project_boxed_opaque_existential_1(&v31, v9);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v11 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = HIDWORD(v3) - v3;
  }

LABEL_11:
  v15 = sub_26BF30414(v12);
  if (v1)
  {
    return;
  }

  v16 = v15;
  sub_26BE11228(v3, v4);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17 + 4;
  if (__OFADD__(v17, 4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v46;
  v38 = v47;
  v39 = v48;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v31 = v40;
  v32 = v41;
  sub_26BE00758(&v40, v29);
  sub_26BE7DD28(&v31);
  v29[6] = v37;
  v29[7] = v38;
  v30 = v39;
  v29[2] = v33;
  v29[3] = v34;
  v29[4] = v35;
  v29[5] = v36;
  v29[0] = v31;
  v29[1] = v32;
  v20 = v19;
  sub_26BE00854(v29);
  v21 = __OFADD__(v18, v20);
  v22 = v18 + v20;
  if (v21)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v27 = xmmword_26C00BBD0;
  v28 = 0;
  v23 = sub_26BEEAC24(0, v26);
  v24 = v23;
  v25 = sub_26BF30414(v23);
  sub_26BF2A30C(&v27);
  sub_26BE00258(v27, *(&v27 + 1));
  if (__OFADD__(v25, v24))
  {
    goto LABEL_24;
  }

  if (__OFADD__(v22, v25 + v24))
  {
    goto LABEL_25;
  }
}

uint64_t MLS.Extension.ExtensionType.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      return 0x6163696C7070612ELL;
    }

    if (v1 == 2)
    {
      return 0x746568637461722ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return 0xD000000000000015;
      case 4u:
        return 0x616E72657478652ELL;
      case 5u:
        return 0xD000000000000010;
    }
  }

  sub_26C00AC1C();

  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26BF7F6E0()
{
  result = qword_28045FB78;
  if (!qword_28045FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FB78);
  }

  return result;
}

void sub_26BF7F748(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MLS.IdentityError(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 == 2)
  {
    v30 = &type metadata for SwiftMLSFeatureFlags;
    v31 = sub_26BE295D8();
    LOBYTE(v28) = 0;
    v13 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    if ((v13 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v14 = 0xD000000000000023;
      *(v14 + 8) = 0x800000026C02D1C0;
      *(v14 + 112) = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v12 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_26BF809AC(a1, a2, &v28);
  if (!v4)
  {
    v20 = *(&v28 + 1);
    v21 = v29;
    swift_beginAccess();
    v23 = *(v3 + 96);
    v22 = *(v3 + 104);
    v24[0] = *(v3 + 72);
    v25 = *(v3 + 80);
    v26 = v23;
    v27 = v22;

    MLS.Cryptography.Ciphersuite.importSignaturePrivateKey(_:deviceConstrained:)(v20, v21, 0, &v28);

    sub_26BE00258(v20, v21);

    sub_26BE2E410(&v28, a3);
    return;
  }

  *&v28 = v4;
  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_26BE8A6E8(v10);
    goto LABEL_16;
  }

  if (*v10 != -34018)
  {
LABEL_16:

    return;
  }

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v16 = sub_26C009A5C();
  __swift_project_value_buffer(v16, qword_280478E70);
  v17 = sub_26C009A3C();
  v18 = sub_26C00AA0C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26BDFE000, v17, v18, "Was not entitled to access keychain, gracefully falling back to default behavior", v19, 2u);
    MEMORY[0x26D69A4E0](v19, -1, -1);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t sub_26BF7FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9 == 2)
  {
    v20 = &type metadata for SwiftMLSFeatureFlags;
    v21 = sub_26BE295D8();
    LOBYTE(v19[0]) = 0;
    v10 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v11 = 0xD000000000000023;
      *(v11 + 8) = 0x800000026C02D1C0;
      *(v11 + 112) = 2;
      return swift_willThrow();
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v13 = v3;

  MLS.Cryptography.Ciphersuite.generateSignaturePrivateKey()(v19);

  if (!v4)
  {
    v15 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v16 = (*(*(v14 + 8) + 40))(v15);
    if (*(v13 + 72))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    *a3 = v18;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

void sub_26BF7FC30(__int16 *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  swift_beginAccess();
  v9 = *(v1 + 288);
  *&v45 = *(v1 + 280);
  *(&v45 + 1) = v9;

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);
  v10 = *(&v45 + 1);
  v43 = v45;
  LOWORD(v45) = v4;
  *(&v45 + 1) = v5;
  v46 = v6;
  v47 = v8;
  v48 = v7;
  swift_bridgeObjectRetain_n();

  sub_26BEE70C8();
  if (v2)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = v12;
    v42 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0125E0;
    *(inited + 32) = sub_26C00A48C();
    *(inited + 40) = v15;
    v16 = *MEMORY[0x277CDC238];
    type metadata accessor for CFString(0);
    v18 = v17;
    *(inited + 72) = v17;
    *(inited + 48) = v16;
    *(inited + 80) = sub_26C00A48C();
    *(inited + 88) = v19;
    v41 = v13;
    v20 = v8;
    v21 = MEMORY[0x277D839B0];
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = 1;
    *(inited + 128) = sub_26C00A48C();
    *(inited + 136) = v22;
    *(inited + 168) = v21;
    *(inited + 144) = 0;
    *(inited + 176) = sub_26C00A48C();
    *(inited + 184) = v23;
    v24 = *MEMORY[0x277CDBEE0];
    *(inited + 216) = v18;
    *(inited + 192) = v24;
    *(inited + 224) = sub_26C00A48C();
    *(inited + 232) = v25;
    v26 = MEMORY[0x277D837D0];
    *(inited + 264) = MEMORY[0x277D837D0];
    *(inited + 240) = v43;
    *(inited + 248) = v10;
    *(inited + 272) = sub_26C00A48C();
    *(inited + 280) = v27;
    *(inited + 312) = v26;
    *(inited + 288) = v20;
    *(inited + 296) = v7;
    *(inited + 320) = sub_26C00A48C();
    *(inited + 328) = v28;
    *(inited + 360) = MEMORY[0x277CC9318];
    *(inited + 336) = v42;
    *(inited + 344) = v41;
    v29 = v16;
    v30 = v24;
    sub_26BE00608(v42, v41);
    v31 = sub_26C0055D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
    swift_arrayDestroy();
    v32 = *(v3 + 304);
    if (v32)
    {
      v33 = *(v3 + 296);
      v34 = sub_26C00A48C();
      v36 = v35;
      v47 = MEMORY[0x277D837D0];
      *&v45 = v33;
      *(&v45 + 1) = v32;
      sub_26BE5B0F0(&v45, v44);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v31;
      sub_26BE57784(v44, v34, v36, isUniquelyReferenced_nonNull_native);
    }

    v38 = sub_26C00A37C();

    v39 = SecItemAdd(v38, 0);

    if (v39)
    {

      type metadata accessor for MLS.IdentityError(0);
      sub_26BF80E4C();
      swift_allocError();
      *v40 = v39;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    sub_26BE00258(v42, v41);
  }
}

uint64_t sub_26BF80010@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C01FEA0;
  *(inited + 32) = sub_26C00A48C();
  *(inited + 40) = v9;
  v10 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  v12 = v11;
  *(inited + 72) = v11;
  *(inited + 48) = v10;
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v15;
  v16 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  v62 = a1;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_26C00A48C();
  *(inited + 184) = v17;
  *(inited + 216) = v16;
  v63 = a3;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v18;
  *(inited + 264) = v14;
  *(inited + 240) = 0;
  *(inited + 272) = sub_26C00A48C();
  *(inited + 280) = v19;
  v20 = *MEMORY[0x277CDC438];
  *(inited + 312) = v12;
  *(inited + 288) = v20;
  *(inited + 320) = sub_26C00A48C();
  *(inited + 328) = v21;
  *(inited + 360) = v14;
  *(inited + 336) = 1;
  *(inited + 368) = sub_26C00A48C();
  *(inited + 376) = v22;
  *(inited + 408) = v14;
  *(inited + 384) = 1;
  v23 = v10;

  v24 = v20;
  v25 = sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  swift_beginAccess();
  v26 = *(v69 + 304);
  if (v26)
  {
    v27 = *(v69 + 296);
    v28 = sub_26C00A48C();
    v30 = v29;
    v73 = MEMORY[0x277D837D0];
    v71 = v27;
    *&v72 = v26;
    sub_26BE5B0F0(&v71, v70);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = v25;
    sub_26BE57784(v70, v28, v30, isUniquelyReferenced_nonNull_native);
  }

  result = 0;
  v32 = sub_26C00A37C();

  v33 = SecItemCopyMatching(v32, &result);

  if (v33 == -25300)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return swift_unknownObjectRelease();
  }

  if (v33)
  {
    type metadata accessor for MLS.IdentityError(0);
    sub_26BF80E4C();
    swift_allocError();
    *v54 = v33;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if (!result || (v71 = result, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB80, &qword_26C01FEC0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:
    type metadata accessor for MLS.IdentityError(0);
    sub_26BF80E4C();
    swift_allocError();
    goto LABEL_24;
  }

  v34 = *&v70[0];
  v35 = sub_26C00A48C();
  if (!*(v34 + 16))
  {
    goto LABEL_21;
  }

  v37 = sub_26BEBB618(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_26BE2E2EC(*(v34 + 56) + 32 * v37, &v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v40 = v70[0];
  v41 = sub_26C00A48C();
  if (!*(v34 + 16))
  {
    goto LABEL_26;
  }

  v43 = sub_26BEBB618(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_26BE2E2EC(*(v34 + 56) + 32 * v43, &v71);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26BE00258(v40, *(&v40 + 1));
    goto LABEL_23;
  }

  v47 = *(&v70[0] + 1);
  v46 = *&v70[0];
  v48 = sub_26C00A48C();
  if (!*(v34 + 16))
  {
    sub_26BE00258(v40, *(&v40 + 1));

    goto LABEL_21;
  }

  v64 = v46;
  v50 = sub_26BEBB618(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_26:
    sub_26BE00258(v40, *(&v40 + 1));
LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

  sub_26BE2E2EC(*(v34 + 56) + 32 * v50, &v71);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_26BE00258(v40, *(&v40 + 1));
    goto LABEL_22;
  }

  v53 = v70[0];
  if (v64 == v63 && v47 == a4)
  {
  }

  else
  {
    v56 = sub_26C00AF2C();

    if ((v56 & 1) == 0)
    {

      v61 = v40;
LABEL_40:
      sub_26BE00258(v61, *(&v40 + 1));
      goto LABEL_23;
    }
  }

  if (v53 == __PAIR128__(a2, v62))
  {

    goto LABEL_36;
  }

  v57 = sub_26C00AF2C();

  if ((v57 & 1) == 0)
  {
    v61 = v40;
    goto LABEL_40;
  }

LABEL_36:
  sub_26BEE71B8(v40, *(&v40 + 1), &v71);
  if (!v66)
  {
    v58 = v73;
    v59 = v74;
    v60 = v72;
    *a5 = v71;
    *(a5 + 8) = v60;
    *(a5 + 24) = v58;
    *(a5 + 32) = v59;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26BF806E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C01FEB0;
  *(inited + 32) = sub_26C00A48C();
  *(inited + 40) = v10;
  v11 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v12;
  *(inited + 48) = v11;
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v13;
  v14 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v15;
  v16 = MEMORY[0x277D837D0];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v17 = v16;
  *(inited + 176) = sub_26C00A48C();
  *(inited + 184) = v18;
  *(inited + 216) = v17;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v19;
  *(inited + 264) = v14;
  *(inited + 240) = 0;
  v20 = v11;

  v21 = sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  swift_beginAccess();
  v22 = *(v4 + 304);
  if (v22)
  {
    v23 = *(v4 + 296);
    v24 = sub_26C00A48C();
    v26 = v25;
    v35 = v17;
    *&v34 = v23;
    *(&v34 + 1) = v22;
    sub_26BE5B0F0(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v21;
    sub_26BE57784(v33, v24, v26, isUniquelyReferenced_nonNull_native);
  }

  v28 = sub_26C00A37C();

  v29 = SecItemDelete(v28);

  if (v29 == -25300)
  {
    v30 = 0;
  }

  else if (v29)
  {
    type metadata accessor for MLS.IdentityError(0);
    sub_26BF80E4C();
    swift_allocError();
    *v31 = v29;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v30 = 1;
  }

  return v30 & 1;
}

void sub_26BF809AC(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  swift_beginAccess();
  v8 = *(v3 + 288);
  v40 = *(v3 + 280);
  *&v41 = v8;

  MEMORY[0x26D699090](0x696369747261702ELL, 0xEC000000746E6170);
  v10 = v40;
  v9 = v41;

  sub_26BF80010(v40, v41, a1, a2, &v40);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v44 = a3;
    v11 = v43;
    if (v43)
    {
      v38 = v41;
      v12 = v42;
      v13 = v40;
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v14 = sub_26C009A5C();
      __swift_project_value_buffer(v14, qword_280478E70);
      v15 = sub_26C009A3C();
      v16 = sub_26C00AA1C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = v13;
        v18 = v12;
        v19 = swift_slowAlloc();
        v40 = v19;
        *v17 = 136315138;
        v20 = sub_26BE29740(v10, v9, &v40);

        *(v17 + 4) = v20;
        _os_log_impl(&dword_26BDFE000, v15, v16, "Retrieved existing participant private key and info from keychain with service = %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v21 = v19;
        v12 = v18;
        v13 = v36;
        MEMORY[0x26D69A4E0](v21, -1, -1);
        MEMORY[0x26D69A4E0](v17, -1, -1);
      }

      else
      {
      }

      v32 = v44;
      *v44 = v13;
      *(v32 + 4) = v38;
      *(v32 + 3) = v12;
      *(v32 + 4) = v11;
    }

    else
    {
      if (qword_28045DF40 != -1)
      {
        swift_once();
      }

      v22 = sub_26C009A5C();
      __swift_project_value_buffer(v22, qword_280478E70);
      v23 = sub_26C009A3C();
      v24 = sub_26C00AA1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26BDFE000, v23, v24, "Did not find existing participant private key in keychain, generating a new one", v25, 2u);
        MEMORY[0x26D69A4E0](v25, -1, -1);
      }

      sub_26BF7FA80(a1, a2, &v40);
      v35 = v40;
      v26 = v41;
      v34 = v42;
      v37 = *(&v41 + 1);
      v39 = v43;
      v27 = sub_26C009A3C();
      v28 = sub_26C00AA1C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315138;
        v31 = sub_26BE29740(v10, v9, &v40);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_26BDFE000, v27, v28, "Storing new participant private key in keychain with service = %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x26D69A4E0](v30, -1, -1);
        MEMORY[0x26D69A4E0](v29, -1, -1);
      }

      else
      {
      }

      v33 = v44;
      LOWORD(v40) = v35;
      *&v41 = v26;
      *(&v41 + 1) = v37;
      v42 = v34;
      v43 = v39;
      sub_26BF7FC30(&v40);

      *v33 = v35;
      *(v33 + 1) = v26;
      *(v33 + 2) = v37;
      *(v33 + 3) = v34;
      *(v33 + 4) = v39;
    }
  }
}

unint64_t sub_26BF80E4C()
{
  result = qword_28045EB48;
  if (!qword_28045EB48)
  {
    type metadata accessor for MLS.IdentityError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB48);
  }

  return result;
}

__int128 *sub_26BF80EA4(__int128 *a1)
{
  v2 = &v71;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[12];
  v10 = a1[10];
  v95 = a1[11];
  v96 = v9;
  v11 = a1[12];
  v97[0] = a1[13];
  *(v97 + 9) = *(a1 + 217);
  v12 = a1[7];
  v13 = a1[9];
  v92 = a1[8];
  v93 = v13;
  v14 = a1[9];
  v94 = a1[10];
  v15 = a1[3];
  v16 = a1[5];
  v88 = a1[4];
  v89 = v16;
  v17 = a1[5];
  v18 = a1[7];
  v90 = a1[6];
  v91 = v18;
  v19 = a1[1];
  v85[0] = *a1;
  v85[1] = v19;
  v20 = a1[3];
  v22 = *a1;
  v21 = a1[1];
  v86 = a1[2];
  v87 = v20;
  v82 = v95;
  v83 = v11;
  v84[0] = a1[13];
  *(v84 + 9) = *(a1 + 217);
  v79 = v92;
  v80 = v14;
  v81 = v10;
  v75 = v88;
  v76 = v17;
  v77 = v90;
  v78 = v12;
  v71 = v22;
  v72 = v21;
  v73 = v86;
  v74 = v15;
  sub_26BE2FB24(v85, &v57);
  v23 = v98;
  v24 = sub_26BEDC390(&v71);
  if (v23)
  {
    v69 = v83;
    v70[0] = v84[0];
    *(v70 + 9) = *(v84 + 9);
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    sub_26BE71494(&v57);
    return v2;
  }

  v98 = 0;
  v50 = v8;
  v51 = v5;
  v52 = v24;
  v68 = v82;
  v69 = v83;
  v70[0] = v84[0];
  *(v70 + 9) = *(v84 + 9);
  v65 = v79;
  v66 = v80;
  v67 = v81;
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v60 = v74;
  sub_26BE71494(&v57);
  v25 = a1[12];
  v55[8] = a1[11];
  v55[9] = v25;
  v56[0] = a1[13];
  *(v56 + 9) = *(a1 + 217);
  v26 = a1[8];
  v55[4] = a1[7];
  v55[5] = v26;
  v27 = a1[10];
  v55[6] = a1[9];
  v55[7] = v27;
  v28 = a1[4];
  v55[0] = a1[3];
  v55[1] = v28;
  v29 = a1[6];
  v55[2] = a1[5];
  v55[3] = v29;
  v30 = sub_26BE6917C(v55);
  if (v30)
  {
    v31 = v53;
    if (v30 == 1)
    {
      nullsub_1();
      v32 = 2;
    }

    else
    {
      nullsub_1();
      v32 = 3;
    }
  }

  else
  {
    nullsub_1();
    v32 = 1;
    v31 = v53;
  }

  v33 = type metadata accessor for MLS.PublicMessage(0);
  v34 = *(v33 + 20);
  LOBYTE(v54) = v32;
  v35 = v98;
  result = sub_26BED4DD8((a1 + v34), &v54);
  if (v35)
  {
    return v2;
  }

  v2 = (result + v52);
  if (__OFADD__(v52, result))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(a1 + 28))
  {
    return v2;
  }

  v37 = v51;
  sub_26BED5200(a1 + *(v33 + 24), v51);
  if ((*(v31 + 48))(v37, 1, v6) == 1)
  {
    sub_26BF81F80(v37);
    sub_26BE01600();
    swift_allocError();
    *v38 = 5;
    swift_willThrow();
    return v2;
  }

  v39 = v50;
  sub_26BE2FABC(v37, v50, type metadata accessor for MLS.Cryptography.MACTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v40 = sub_26BE12418(v54);
  v42 = v41;

  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    v44 = 0;
    if (v43 != 2 || (v46 = *(v40 + 16), v45 = *(v40 + 24), v44 = v45 - v46, !__OFSUB__(v45, v46)))
    {
LABEL_23:
      v98 = sub_26BF30414(v44);
      sub_26BE11228(v40, v42);
      sub_26BE00258(v40, v42);
      result = sub_26BF82058(v39, type metadata accessor for MLS.Cryptography.MACTag);
      v47 = v98 + v44;
      if (!__OFADD__(v98, v44))
      {
        v48 = __OFADD__(v2, v47);
        v2 = (v2 + v47);
        if (!v48)
        {
          return v2;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v43)
  {
    v44 = BYTE6(v42);
    goto LABEL_23;
  }

  if (!__OFSUB__(HIDWORD(v40), v40))
  {
    v44 = HIDWORD(v40) - v40;
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_26BF813DC(_OWORD *a1@<X8>)
{
  v87 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v50 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v50 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v50 - v12;
  v14 = type metadata accessor for MLS.FramedContentAuthData(0);
  MEMORY[0x28223BE20](v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEDD03C(v75);
  if (v1)
  {
    return;
  }

  v53 = v5;
  v54 = v16;
  v55 = v8;
  v17 = v87;
  v56 = 0;
  v71 = v85;
  v72[0] = v86[0];
  *(v72 + 9) = *(v86 + 9);
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v59 = v75[0];
  v60 = v75[1];
  v61 = v75[2];
  v62 = v76;
  v73[8] = v84;
  v73[9] = v85;
  v74[0] = v86[0];
  *(v74 + 9) = *(v86 + 9);
  v73[4] = v80;
  v73[5] = v81;
  v73[6] = v82;
  v73[7] = v83;
  v73[0] = v76;
  v73[1] = v77;
  v73[2] = v78;
  v73[3] = v79;
  v18 = sub_26BE6917C(v73);
  if (!v18)
  {
    nullsub_1();
    v19 = v14;
    goto LABEL_7;
  }

  v19 = v14;
  if (v18 == 1)
  {
    nullsub_1();
LABEL_7:
    v20 = v13;
    v21 = v56;
    v22 = sub_26BF2F7B0();
    if (v21)
    {
LABEL_13:
      sub_26BE71494(&v59);
      return;
    }

    v24 = v23;
    v25 = v22;
    v56 = 0;
    v26 = 1;
    goto LABEL_9;
  }

  nullsub_1();
  v42 = v56;
  v43 = sub_26BF2F7B0();
  if (v42)
  {
    goto LABEL_13;
  }

  v20 = v13;
  v24 = v44;
  v25 = v43;
  v45 = sub_26BF2F7B0();
  v56 = 0;
  v57 = v45;
  v58 = v49;
  sub_26C009C5C();
  v26 = 0;
LABEL_9:
  v27 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v28 = *(v27 - 8);
  v51 = *(v28 + 56);
  v52 = v27;
  v50[1] = v28 + 56;
  v51(v11, v26, 1);
  sub_26BF81FE8(v11, v20);
  v29 = *(v19 + 20);
  v30 = v54;
  sub_26BF81FE8(v20, v54 + v29);
  *v30 = v25;
  v30[1] = v24;
  if (BYTE12(v60))
  {
    v31 = v55;
    v32 = v53;
    v33 = 1;
LABEL_11:
    (v51)(v32, v33, 1, v52);
    sub_26BF81FE8(v32, v31);
    v34 = type metadata accessor for MLS.PublicMessage(0);
    sub_26BE2FABC(v30, v17 + *(v34 + 20), type metadata accessor for MLS.FramedContentAuthData);
    sub_26BF81FE8(v31, v17 + *(v34 + 24));
    v35 = v72[0];
    v17[12] = v71;
    v17[13] = v35;
    *(v17 + 217) = *(v72 + 9);
    v36 = v68;
    v17[8] = v67;
    v17[9] = v36;
    v37 = v70;
    v17[10] = v69;
    v17[11] = v37;
    v38 = v64;
    v17[4] = v63;
    v17[5] = v38;
    v39 = v66;
    v17[6] = v65;
    v17[7] = v39;
    v40 = v60;
    *v17 = v59;
    v17[1] = v40;
    v41 = v62;
    v17[2] = v61;
    v17[3] = v41;
    return;
  }

  v46 = v56;
  v47 = sub_26BF2F7B0();
  v56 = v46;
  v31 = v55;
  if (!v46)
  {
    v57 = v47;
    v58 = v48;
    v32 = v53;
    sub_26C009C5C();
    v33 = 0;
    goto LABEL_11;
  }

  sub_26BE71494(&v59);
  sub_26BF82058(v30, type metadata accessor for MLS.FramedContentAuthData);
}

uint64_t MLS.PublicMessage.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v35 = v1[12];
  v36[0] = v3;
  *(v36 + 9) = *(v1 + 217);
  v4 = v1[7];
  v5 = v1[9];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v7 = v1[9];
  v8 = v1[11];
  v33 = v1[10];
  v9 = v33;
  v34 = v8;
  v10 = v1[3];
  v11 = v1[5];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v13 = v1[5];
  v14 = v1[7];
  v29 = v1[6];
  v15 = v29;
  v30 = v14;
  v16 = v1[1];
  v24[0] = *v1;
  v24[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v25 = v1[2];
  v20 = v25;
  v26 = v17;
  v21 = v1[13];
  a1[12] = v35;
  a1[13] = v21;
  *(a1 + 217) = *(v1 + 217);
  a1[8] = v6;
  a1[9] = v7;
  a1[10] = v9;
  a1[11] = v2;
  a1[4] = v12;
  a1[5] = v13;
  a1[6] = v15;
  a1[7] = v4;
  *a1 = v19;
  a1[1] = v18;
  a1[2] = v20;
  a1[3] = v10;
  return sub_26BE2FB24(v24, &v23);
}

__n128 MLS.PublicMessage.content.setter(uint64_t a1)
{
  v3 = v1[13];
  v17[12] = v1[12];
  v18[0] = v3;
  *(v18 + 9) = *(v1 + 217);
  v4 = v1[9];
  v17[8] = v1[8];
  v17[9] = v4;
  v5 = v1[11];
  v17[10] = v1[10];
  v17[11] = v5;
  v6 = v1[5];
  v17[4] = v1[4];
  v17[5] = v6;
  v7 = v1[7];
  v17[6] = v1[6];
  v17[7] = v7;
  v8 = v1[1];
  v17[0] = *v1;
  v17[1] = v8;
  v9 = v1[3];
  v17[2] = v1[2];
  v17[3] = v9;
  sub_26BE71494(v17);
  v10 = *(a1 + 208);
  v1[12] = *(a1 + 192);
  v1[13] = v10;
  *(v1 + 217) = *(a1 + 217);
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  v14 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v14;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t MLS.PublicMessage.auth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage(0) + 20);

  return sub_26BF81A4C(v3, a1);
}

uint64_t type metadata accessor for MLS.PublicMessage(uint64_t a1)
{
  result = qword_28045FB88;
  if (!qword_28045FB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BF81A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PublicMessage.auth.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage(0) + 20);

  return sub_26BF81AF4(a1, v3);
}

uint64_t sub_26BF81AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PublicMessage.membershipTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage(0) + 24);

  return sub_26BED5200(v3, a1);
}

uint64_t MLS.PublicMessage.membershipTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.PublicMessage(0) + 24);

  return sub_26BED52B4(a1, v3);
}

uint64_t sub_26BF81C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 28);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MLS.FramedContentAuthData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BF81DC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 28) = -a2;
  }

  else
  {
    v8 = type metadata accessor for MLS.FramedContentAuthData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26BF81EEC(uint64_t a1)
{
  type metadata accessor for MLS.FramedContentAuthData(319);
  if (v1 <= 0x3F)
  {
    sub_26BED5830(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BF81F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BF81FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF82058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26BF820D8()
{
  v1 = *(v0 + 480);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_26C005A58(MEMORY[0x277D84F90]);
  v90 = sub_26C005ED4(v2);
  v4 = sub_26C005FE4(v2);
  sub_26C008DEC();
  swift_allocObject();
  *(v0 + 488) = sub_26C008DDC();
  swift_beginAccess();
  v5 = *(v1 + 40);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = -1;
  v10 = -1 << *(*(v1 + 40) + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6;
  v12 = (63 - v10) >> 6;
  v93 = *(v1 + 40);

  v13 = 0;
  v91 = v12;
  for (i = v7; ; v7 = i)
  {
    *(v0 + 496) = v4;
    *(v0 + 504) = v3;
    if (!v11)
    {
      break;
    }

    v20 = v13;
LABEL_11:
    v21 = __clz(__rbit64(v11)) | (v20 << 6);
    v22 = (*(v93 + 48) + 16 * v21);
    v100 = *v22;
    v102 = v22[1];
    v23 = *(*(v93 + 56) + 8 * v21);

    v99 = v23;
    sub_26BF90058(v24);
    v25 = sub_26C00909C();
    v27 = v26;
    sub_26BE00258(0, 0xC000000000000000);
    v28 = sub_26C0090EC();
    v30 = v29;
    sub_26BE00258(v25, v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE57E40(v28, v30, v100, v102, isUniquelyReferenced_nonNull_native);

    v32 = v3;
    swift_beginAccess();
    sub_26BE14FF4(v99 + 112, v0 + 16);
    sub_26BE038A8(v0 + 24, v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB98, &qword_26C01FEF8);
    type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
    swift_dynamicCast();
    *(v0 + 424) = *(v0 + 416);
    sub_26BF863B4(&qword_28045FBA0, type metadata accessor for MLS.Storage.InMemoryGroupStateStore, &protocol conformance descriptor for MLS.Storage.InMemoryGroupStateStore);
    v33 = sub_26C008DCC();
    v35 = v34;

    sub_26BF8622C(v0 + 64, v0 + 224);
    if (!*(v0 + 248))
    {
      goto LABEL_54;
    }

    sub_26BE03890((v0 + 224), v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBA8, &qword_26C01FF00);
    type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
    swift_dynamicCast();
    *(v0 + 440) = *(v0 + 432);
    sub_26BF863B4(&qword_28045FBB0, type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2, &protocol conformance descriptor for MLS.Storage.InMemoryGroupStateStoreV2);
    v95 = sub_26C008DCC();
    v96 = v36;
    v97 = v33;
    v98 = v35;

    sub_26BE038A8(v0 + 104, v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBB8, &qword_26C01FF08);
    type metadata accessor for MLS.Storage.InMemoryClientStateStore();
    swift_dynamicCast();
    *(v0 + 456) = *(v0 + 448);
    sub_26BF863B4(&qword_28045FBC0, type metadata accessor for MLS.Storage.InMemoryClientStateStore, &protocol conformance descriptor for MLS.Storage.InMemoryClientStateStore);
    v37 = sub_26C008DCC();
    v39 = v38;
    v94 = v32;

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v4;
    v42 = sub_26BEBB618(v100, v102);
    v43 = v4;
    v44 = *(v4 + 16);
    v45 = (v41 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v47 = v41;
    if (*(v43 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        sub_26BE6F574();
      }
    }

    else
    {
      sub_26BE6C784(v46, v40);
      v48 = sub_26BEBB618(v100, v102);
      if ((v47 & 1) != (v49 & 1))
      {

        sub_26C00AF8C();
        return;
      }

      v42 = v48;
    }

    v11 &= v11 - 1;
    if (v47)
    {

      v4 = v103;
      v14 = (v103[7] + 48 * v42);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];
      v101 = v14[5];
      *v14 = v97;
      v14[1] = v98;
      v14[2] = v95;
      v14[3] = v96;
      v14[4] = v37;
      v14[5] = v39;
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      sub_26BE00258(v19, v101);

      sub_26BE29538(v0 + 16);
    }

    else
    {
      v4 = v103;
      v103[(v42 >> 6) + 8] |= 1 << v42;
      v50 = (v103[6] + 16 * v42);
      *v50 = v100;
      v50[1] = v102;
      v51 = (v103[7] + 48 * v42);
      *v51 = v97;
      v51[1] = v98;
      v51[2] = v95;
      v51[3] = v96;
      v51[4] = v37;
      v51[5] = v39;

      sub_26BE29538(v0 + 16);
      v52 = v103[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_53;
      }

      v103[2] = v54;
    }

    v13 = v20;
    v3 = v94;
    v12 = v91;
  }

  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      __break(1u);
      goto LABEL_52;
    }

    if (v20 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v20);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v55 = *(v0 + 480);

  swift_beginAccess();
  v56 = *(v55 + 48);
  *(v0 + 512) = v56;
  v57 = *(v56 + 32);
  *(v0 + 624) = v57;
  v58 = 1 << v57;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & *(v56 + 64);

  v61 = 0;
  v62 = MEMORY[0x277D84F90];
  if (!v60)
  {
LABEL_26:
    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_51;
      }

      v63 = *(v0 + 512);
      if (v64 >= (((1 << *(v0 + 624)) + 63) >> 6))
      {
        v81 = *(v0 + 496);
        v80 = *(v0 + 504);

        *(v0 + 376) = v80;
        *(v0 + 384) = v90;
        *(v0 + 392) = v81;
        sub_26BF8629C();
        v82 = sub_26C008DCC();
        v84 = v83;

        v85 = *(v0 + 8);

        v85(v82, v84);
        return;
      }

      v60 = *(v63 + 8 * v64 + 64);
      ++v61;
      if (v60)
      {
        v61 = v64;
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v63 = *(v0 + 512);
LABEL_30:
    *(v0 + 528) = v61;
    *(v0 + 520) = v60;
    v65 = __clz(__rbit64(v60)) | (v61 << 6);
    v66 = (*(v63 + 48) + 16 * v65);
    v67 = *v66;
    *(v0 + 536) = *v66;
    v68 = v66[1];
    *(v0 + 544) = v68;
    v69 = *(*(v63 + 56) + 8 * v65);
    *(v0 + 552) = v69;

    v70 = sub_26C005A58(v62);

    v71 = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE57C94(v70, v67, v68, v71);

    v72 = *(v69 + 32);
    *(v0 + 625) = v72;
    v73 = -1 << v72;
    v74 = -(-1 << v72) < 64 ? ~(-1 << -v73) : -1;
    v75 = v74 & *(v69 + 64);
    *(v0 + 560) = v90;

    if (v75)
    {
      break;
    }

    v76 = 0;
    v77 = ((63 - v73) >> 6) - 1;
    v78 = *(v0 + 552);
    while (v77 != v76)
    {
      v79 = v76 + 1;
      v75 = *(v78 + 8 * v76++ + 72);
      if (v75)
      {
        goto LABEL_47;
      }
    }

    v61 = *(v0 + 528);
    v60 = (*(v0 + 520) - 1) & *(v0 + 520);
    if (!v60)
    {
      goto LABEL_26;
    }
  }

  v79 = 0;
  v78 = *(v0 + 552);
LABEL_47:
  *(v0 + 576) = v79;
  *(v0 + 568) = v75;
  v86 = __clz(__rbit64(v75)) | (v79 << 6);
  v87 = (*(v78 + 48) + 16 * v86);
  *(v0 + 584) = *v87;
  *(v0 + 592) = v87[1];
  v88 = *(*(v78 + 56) + 8 * v86);
  *(v0 + 600) = v88;

  v89 = swift_task_alloc();
  *(v0 + 608) = v89;
  *v89 = v0;
  v89[1] = sub_26BF82BA8;

  sub_26BE8FE74(v0 + 400, v88, v88);
}

uint64_t sub_26BF82BA8()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_26BF832BC;
  }

  else
  {
    v2 = sub_26BF82CBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_26BF82CBC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v6 = sub_26C0090EC();
  v8 = v7;
  sub_26BE00258(v4, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 464) = v1;
  v11 = sub_26BEBB618(v3, v2);
  v12 = *(v1 + 16);
  v13 = (v10 & 1) == 0;
  result = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v10;
  if (*(*(v0 + 560) + 24) >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_19;
    }

    if ((v10 & 1) == 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      v33 = result;
      sub_26BE6F748();
      result = v33;
      v29 = *(v0 + 592);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_8:
    while (1)
    {
      isUniquelyReferenced_nonNull_native = *(v0 + 592);
      v18 = *(v0 + 584);
      v2 = *(v0 + 464);
      v19 = *(*(v2 + 56) + 8 * v11);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 472) = v19;
      result = sub_26BEBB618(v18, isUniquelyReferenced_nonNull_native);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (!v24)
      {
        break;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_26BE6F400();
      if ((v2 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v21;
    if (*(v19 + 24) >= v25)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = *(v0 + 592);
      v27 = *(v0 + 584);
      sub_26BE6CAA8(v25, v20);
      result = sub_26BEBB618(v27, v26);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v28 & 1))
      {
        goto LABEL_11;
      }
    }

    v29 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_22:
      v34 = *(v0 + 584);
      v31 = *(v0 + 472);
      v31[(result >> 6) + 8] |= 1 << result;
      v35 = (v31[6] + 16 * result);
      *v35 = v34;
      v35[1] = v29;
      v36 = (v31[7] + 16 * result);
      *v36 = v6;
      v36[1] = v8;
      v37 = v31[2];
      v24 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v24)
      {
        goto LABEL_53;
      }

      v31[2] = v38;
LABEL_24:
      *(*(v2 + 56) + 8 * v11) = v31;

      v39 = *(v0 + 616);
      v40 = *(v0 + 576);
      v41 = *(v0 + 568);
      *(v0 + 560) = v2;
      v42 = (v41 - 1) & v41;
      if (v42)
      {
LABEL_25:
        *(v0 + 576) = v40;
        *(v0 + 568) = v42;
        v43 = *(v0 + 552);
        v44 = __clz(__rbit64(v42)) | (v40 << 6);
        v45 = (*(v43 + 48) + 16 * v44);
        *(v0 + 584) = *v45;
        *(v0 + 592) = v45[1];
        v46 = *(*(v43 + 56) + 8 * v44);
        *(v0 + 600) = v46;

        v47 = swift_task_alloc();
        *(v0 + 608) = v47;
        *v47 = v0;
        v47[1] = sub_26BF82BA8;

        return sub_26BE8FE74(v0 + 400, v46, v46);
      }

      v48 = MEMORY[0x277D84F90];
      v49 = v40;
      while (1)
      {
        while (1)
        {
          v40 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v40 >= (((1 << *(v0 + 625)) + 63) >> 6))
          {
            break;
          }

          v42 = *(*(v0 + 552) + 8 * v40 + 64);
          ++v49;
          if (v42)
          {
            goto LABEL_25;
          }
        }

        v50 = *(v0 + 528);
        v51 = (*(v0 + 520) - 1) & *(v0 + 520);
        if (!v51)
        {
          break;
        }

        result = *(v0 + 512);
LABEL_39:
        *(v0 + 528) = v50;
        *(v0 + 520) = v51;
        v53 = __clz(__rbit64(v51)) | (v50 << 6);
        v54 = (*(result + 48) + 16 * v53);
        v55 = *v54;
        *(v0 + 536) = *v54;
        v56 = v54[1];
        *(v0 + 544) = v56;
        v57 = *(*(result + 56) + 8 * v53);
        *(v0 + 552) = v57;

        v58 = sub_26C005A58(v48);

        v59 = swift_isUniquelyReferenced_nonNull_native();
        sub_26BE57C94(v58, v55, v56, v59);

        v60 = *(v57 + 32);
        *(v0 + 625) = v60;
        v61 = 1 << v60;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        else
        {
          v62 = -1;
        }

        v42 = v62 & *(v57 + 64);
        *(v0 + 560) = v2;

        v49 = 0;
        v40 = 0;
        if (v42)
        {
          goto LABEL_25;
        }
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        result = *(v0 + 512);
        if (v52 >= (((1 << *(v0 + 624)) + 63) >> 6))
        {
          v64 = *(v0 + 496);
          v63 = *(v0 + 504);

          *(v0 + 376) = v63;
          *(v0 + 384) = v2;
          *(v0 + 392) = v64;
          sub_26BF8629C();
          v65 = sub_26C008DCC();
          v67 = v66;

          if (v39)
          {
            v68 = *(v0 + 8);

            return v68();
          }

          else
          {
            v69 = *(v0 + 8);

            return v69(v65, v67);
          }
        }

        v51 = *(result + 8 * v52 + 64);
        ++v50;
        if (v51)
        {
          v50 = v52;
          goto LABEL_39;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

LABEL_16:
    v30 = result;

    v31 = *(v0 + 472);
    v32 = (v31[7] + 16 * v30);
    *v32 = v6;
    v32[1] = v8;

    goto LABEL_24;
  }

  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  sub_26BE6C4D0(result, isUniquelyReferenced_nonNull_native);
  result = sub_26BEBB618(v16, v15);
  if ((v2 & 1) == (v17 & 1))
  {
    v11 = result;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_11:

  return sub_26C00AF8C();
}

uint64_t sub_26BF832D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[103] = v3;
  v4[102] = a3;
  v4[101] = a2;
  v4[100] = a1;

  return MEMORY[0x2822009F8](sub_26BF83374, 0, 0);
}

uint64_t sub_26BF83374()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_26C005C70(MEMORY[0x277D84F90]);
  v3 = sub_26C005C84(v1);
  sub_26C008DBC();
  swift_allocObject();
  *(v0 + 104) = sub_26C008DAC();
  sub_26BF862F0();
  sub_26C008D9C();
  v138 = v3;
  v5 = *(v0 + 64);
  *(v0 + 105) = v5;
  v134 = *(v0 + 65);
  *(v0 + 106) = v134;
  v6 = *(v0 + 66);
  *(v0 + 107) = v6;
  v7 = v5 + 64;
  v8 = -1;
  v9 = -1 << *(v5 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v5 + 64);
  v11 = (63 - v9) >> 6;
  v139 = v5;

  v12 = 0;
  v135 = v11;
  v136 = v7;
  v137 = v6;
  v152 = v0;
  *(v0 + 108) = v2;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v14 = (*(v139 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = v14[1];
      v153 = *v14;
      sub_26BE295A0(*(v152 + 100), (v152 + 1));

      v16 = sub_26C00903C();
      if (v17 >> 60 == 15)
      {
        goto LABEL_116;
      }

      v18 = v16;
      v19 = v17;
      type metadata accessor for MLS.RCSClient(0);
      v20 = MLS.Client.Client.__allocating_init(configuration:rawValue:)(v152 + 1, v18, v19);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A68(v20, v153, v15, isUniquelyReferenced_nonNull_native);

      if (!*(v6 + 16))
      {
        goto LABEL_103;
      }

      v22 = sub_26BEBB618(v153, v15);
      if ((v23 & 1) == 0)
      {
        goto LABEL_104;
      }

      if (!*(v2 + 16))
      {
        goto LABEL_105;
      }

      v24 = (*(v6 + 56) + 48 * v22);
      v26 = *v24;
      v25 = v24[1];
      v28 = v24[2];
      v27 = v24[3];
      v30 = v24[4];
      v29 = v24[5];
      sub_26BE00608(*v24, v25);
      v147 = v28;
      v149 = v27;
      sub_26BE00608(v28, v27);
      sub_26BE00608(v30, v29);
      v31 = sub_26BEBB618(v153, v15);
      if ((v32 & 1) == 0)
      {
        goto LABEL_106;
      }

      v141 = v30;
      v33 = *(*(v2 + 56) + 8 * v31);
      *(v152 + 52) = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
      *(v152 + 53) = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
      sub_26BF863B4(&qword_28045FBD8, type metadata accessor for MLS.Storage.InMemoryGroupStateStore, &protocol conformance descriptor for MLS.Storage.InMemoryGroupStateStore);

      sub_26C008D9C();
      v34 = v25;
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1((v33 + 120));
      sub_26BE03890((v152 + 392), v33 + 120);
      swift_endAccess();

      if (!*(v2 + 16))
      {
        goto LABEL_107;
      }

      v35 = sub_26BEBB618(v153, v15);
      if ((v36 & 1) == 0)
      {
        goto LABEL_108;
      }

      v37 = *(*(v2 + 56) + 8 * v35);
      *(v152 + 57) = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
      *(v152 + 58) = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
      sub_26BF863B4(&qword_28045FBE0, type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2, &protocol conformance descriptor for MLS.Storage.InMemoryGroupStateStoreV2);

      sub_26C008D9C();
      swift_beginAccess();
      sub_26BF86344((v152 + 27), v37 + 160);
      swift_endAccess();

      if (!*(v2 + 16))
      {
        goto LABEL_109;
      }

      v38 = sub_26BEBB618(v153, v15);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_110;
      }

      v41 = *(*(v2 + 56) + 8 * v38);
      *(v152 + 62) = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
      *(v152 + 63) = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
      sub_26BF863B4(&qword_28045FBE8, type metadata accessor for MLS.Storage.InMemoryClientStateStore, &protocol conformance descriptor for MLS.Storage.InMemoryClientStateStore);

      sub_26C008D9C();
      v10 &= v10 - 1;
      sub_26BE00258(v26, v34);
      sub_26BE00258(v147, v149);
      sub_26BE00258(v141, v29);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1((v41 + 200));
      sub_26BE03890((v152 + 472), v41 + 200);
      swift_endAccess();

      v12 = v13;
      v11 = v135;
      v7 = v136;
      v6 = v137;
      *(v152 + 108) = v2;
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v42 = *(v134 + 32);
  *(v152 + 385) = v42;
  v43 = 1 << v42;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v134 + 64);

  v46 = 0;
  if (v45)
  {
    while (1)
    {
      v47 = *(v152 + 106);
LABEL_32:
      *(v152 + 110) = v46;
      *(v152 + 109) = v45;
      v49 = __clz(__rbit64(v45)) | (v46 << 6);
      v50 = (*(v47 + 48) + 16 * v49);
      v51 = *v50;
      *(v152 + 111) = *v50;
      v52 = v50[1];
      *(v152 + 112) = v52;
      v53 = *(*(v47 + 56) + 8 * v49);
      *(v152 + 113) = v53;

      v54 = sub_26C005CAC(MEMORY[0x277D84F90]);

      v55 = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A28(v54, v51, v52, v55);

      v56 = *(v53 + 32);
      *(v152 + 386) = v56;
      v57 = -1 << v56;
      v58 = -(-1 << v56) < 64 ? ~(-1 << -v57) : -1;
      v59 = v58 & *(v53 + 64);
      *(v152 + 114) = v138;

      if (v59)
      {
        break;
      }

      v60 = 0;
      v61 = *(v152 + 113);
      while (((63 - v57) >> 6) - 1 != v60)
      {
        v62 = v60 + 1;
        v59 = *(v61 + 8 * v60++ + 72);
        if (v59)
        {
          goto LABEL_93;
        }
      }

      v46 = *(v152 + 110);
      v45 = (*(v152 + 109) - 1) & *(v152 + 109);
      if (!v45)
      {
        goto LABEL_28;
      }
    }

    v62 = 0;
    v61 = *(v152 + 113);
LABEL_93:
    *(v152 + 116) = v62;
    *(v152 + 115) = v59;
    v122 = *(v152 + 108);
    v123 = (v62 << 10) | (16 * __clz(__rbit64(v59)));
    v124 = (*(v61 + 48) + v123);
    *(v152 + 117) = *v124;
    *(v152 + 118) = v124[1];
    *(v152 + 119) = *(*(v61 + 56) + v123 + 8);
    if (*(v122 + 16))
    {
      v125 = *(v152 + 112);
      v126 = *(v152 + 111);

      v127 = sub_26BEBB618(v126, v125);
      if (v128)
      {
        v129 = *(*(*(v152 + 108) + 56) + 8 * v127);

        result = sub_26C00903C();
        if (v130 >> 60 == 15)
        {
          __break(1u);
        }

        else
        {
          v131 = result;
          v132 = v130;
          type metadata accessor for MLS.Group.PureSwiftGroup(0);
          v133 = swift_task_alloc();
          *(v152 + 120) = v133;
          *v133 = v152;
          v133[1] = sub_26BF8445C;

          return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v129, v131, v132);
        }

        return result;
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  while (1)
  {
LABEL_28:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_101;
    }

    if (v48 >= (((1 << *(v152 + 385)) + 63) >> 6))
    {
      break;
    }

    v47 = *(v152 + 106);
    v45 = *(v47 + 8 * v48 + 64);
    ++v46;
    if (v45)
    {
      v46 = v48;
      goto LABEL_32;
    }
  }

  v63 = *(v152 + 108);
  v64 = *(v152 + 103);

  swift_beginAccess();
  v64[5] = v63;

  swift_beginAccess();
  v64[6] = v138;

  v65 = sub_26C005C98(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v64[7] = v65;

  v66 = v64[6];
  v69 = *(v66 + 64);
  v68 = v66 + 64;
  v67 = v69;
  v70 = -1 << *(v64[6] + 32);
  if (-v70 < 64)
  {
    v71 = ~(-1 << -v70);
  }

  else
  {
    v71 = -1;
  }

  v72 = v71 & v67;
  v73 = (63 - v70) >> 6;
  v143 = v64[6];

  v74 = 0;
  v154 = v64;
  v140 = v73;
  v142 = v68;
LABEL_47:
  if (!v72)
  {
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v75 >= v73)
      {
        goto LABEL_88;
      }

      v72 = *(v68 + 8 * v75);
      ++v74;
      if (v72)
      {
        goto LABEL_52;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
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
    goto LABEL_114;
  }

  v75 = v74;
LABEL_52:
  v144 = (v72 - 1) & v72;
  v76 = __clz(__rbit64(v72)) | (v75 << 6);
  v77 = (*(v143 + 48) + 16 * v76);
  v78 = v77[1];
  v148 = *v77;
  v79 = *(*(v143 + 56) + 8 * v76);
  v80 = v79 + 64;
  v81 = -1 << *(v79 + 32);
  if (-v81 < 64)
  {
    v82 = ~(-1 << -v81);
  }

  else
  {
    v82 = -1;
  }

  v83 = v82 & *(v79 + 64);
  v84 = (63 - v81) >> 6;
  v151 = v79;
  swift_bridgeObjectRetain_n();
  v150 = v78;

  v85 = 0;
  v145 = v84;
  v146 = v80;
  if (!v83)
  {
    goto LABEL_56;
  }

  while (1)
  {
LABEL_60:
    v87 = (*(v151 + 48) + ((v85 << 10) | (16 * __clz(__rbit64(v83)))));
    v89 = *v87;
    v88 = v87[1];
    v90 = *(v64[7] + 16);

    if (!v90 || (, sub_26BEBB618(v89, v88), v92 = v91, , (v92 & 1) == 0))
    {
      swift_beginAccess();
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v64[7];
      v64[7] = 0x8000000000000000;
      v95 = sub_26BEBB618(v89, v88);
      v97 = v94[2];
      v98 = (v96 & 1) == 0;
      v99 = __OFADD__(v97, v98);
      v100 = v97 + v98;
      if (v99)
      {
        goto LABEL_112;
      }

      v101 = v96;
      if (v94[3] >= v100)
      {
        if ((v93 & 1) == 0)
        {
          v103 = v95;
          sub_26BE6F3EC();
          v95 = v103;
          if (v101)
          {
            goto LABEL_68;
          }

          goto LABEL_70;
        }
      }

      else
      {
        sub_26BE6C4BC(v100, v93);
        v95 = sub_26BEBB618(v89, v88);
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_89;
        }
      }

      if (v101)
      {
LABEL_68:
        *(v94[7] + 8 * v95) = MEMORY[0x277D84F90];

LABEL_72:
        v64 = v154;
        v154[7] = v94;
        swift_endAccess();
        goto LABEL_73;
      }

LABEL_70:
      v94[(v95 >> 6) + 8] |= 1 << v95;
      v104 = (v94[6] + 16 * v95);
      *v104 = v89;
      v104[1] = v88;
      *(v94[7] + 8 * v95) = MEMORY[0x277D84F90];
      v105 = v94[2];
      v99 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v99)
      {
        goto LABEL_113;
      }

      v94[2] = v106;

      goto LABEL_72;
    }

LABEL_73:
    swift_beginAccess();
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v64[7];
    v155 = v108;
    v64[7] = 0x8000000000000000;
    v110 = sub_26BEBB618(v89, v88);
    v111 = v108[2];
    v112 = (v109 & 1) == 0;
    v113 = v111 + v112;
    if (__OFADD__(v111, v112))
    {
      goto LABEL_111;
    }

    v114 = v109;
    if (v108[3] < v113)
    {
      sub_26BE6C4BC(v113, v107);
      v115 = sub_26BEBB618(v89, v88);
      if ((v114 & 1) != (v116 & 1))
      {
LABEL_89:

        return sub_26C00AF8C();
      }

      v110 = v115;
      if ((v114 & 1) == 0)
      {
        break;
      }

      goto LABEL_80;
    }

    if (v107)
    {
      if ((v109 & 1) == 0)
      {
        break;
      }

      goto LABEL_80;
    }

    sub_26BE6F3EC();
    if ((v114 & 1) == 0)
    {
      break;
    }

LABEL_80:
    v117 = *(v108[7] + 8 * v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_26BEEDAF4(0, *(v117 + 2) + 1, 1, v117);
    }

    v119 = *(v117 + 2);
    v118 = *(v117 + 3);
    if (v119 >= v118 >> 1)
    {
      v117 = sub_26BEEDAF4((v118 > 1), v119 + 1, 1, v117);
    }

    v83 &= v83 - 1;
    *(v117 + 2) = v119 + 1;
    v120 = &v117[16 * v119];
    *(v120 + 4) = v148;
    *(v120 + 5) = v150;

    *(v155[7] + 8 * v110) = v117;

    v64 = v154;
    v154[7] = v155;
    swift_endAccess();
    v84 = v145;
    v80 = v146;
    if (!v83)
    {
      while (1)
      {
LABEL_56:
        v86 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_100;
        }

        if (v86 >= v84)
        {
          break;
        }

        v83 = *(v80 + 8 * v86);
        ++v85;
        if (v83)
        {
          v85 = v86;
          goto LABEL_60;
        }
      }

      v74 = v75;
      v73 = v140;
      v68 = v142;
      v72 = v144;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_88:

  v121 = *(v152 + 1);

  return v121();
}

uint64_t sub_26BF8445C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 968) = a1;
  *(v3 + 976) = v1;

  if (v1)
  {

    v4 = sub_26BF859D4;
  }

  else
  {
    v4 = sub_26BF84608;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF84608()
{
  v2 = v0[114];
  v3 = v0[112];
  v4 = v0[111];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[95] = v2;
  v7 = sub_26BEBB618(v4, v3);
  v8 = *(v2 + 16);
  v9 = (v6 & 1) == 0;
  v10 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = v6;
  if (*(v0[114] + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_38;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_8:
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v0[121];
      v3 = v0[95];
      v0[123] = v3;
      v13 = *(*(v3 + 56) + 8 * v7);
      v1 = v0[118];
      v14 = v0[117];
      if (!isUniquelyReferenced_nonNull_native)
      {
        break;
      }

      v15 = swift_isUniquelyReferenced_nonNull_native();
      v0[99] = v13;
      v10 = sub_26BEBB618(v14, v1);
      v17 = v13[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_40;
      }

      LOBYTE(v1) = v16;
      if (v13[3] < v20)
      {
        v21 = v0[118];
        v22 = v0[117];
        sub_26BE6C208(v20, v15);
        v10 = sub_26BEBB618(v22, v21);
        if ((v1 & 1) == (v23 & 1))
        {
          goto LABEL_20;
        }

        goto LABEL_12;
      }

      if ((v15 & 1) == 0)
      {
LABEL_41:
        v38 = v10;
        sub_26BE6F278();
        v10 = v38;
      }

LABEL_20:
      v13 = v0[99];
      if (v1)
      {
        *(v13[7] + 8 * v10) = isUniquelyReferenced_nonNull_native;

LABEL_22:
        if (v13)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      sub_26BF7F1A8();
      if (v13)
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_26BF25CA8(*(v3 + 48) + 16 * v7);
      sub_26C006458(v7, v3);
LABEL_26:
      v7 = v0[118];
      isUniquelyReferenced_nonNull_native = v0[117];
      v1 = v0[112];
      v29 = v0[111];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
      v30 = swift_allocObject();
      v0[124] = v30;
      *(v30 + 16) = xmmword_26C011280;
      v0[93] = 0;
      v0[94] = 0xE000000000000000;
      sub_26C00AC1C();

      v0[91] = 0x20746E65696C63;
      v0[92] = 0xE700000000000000;
      MEMORY[0x26D699090](v29, v1);
      MEMORY[0x26D699090](0x2070756F7267202CLL, 0xE800000000000000);
      MEMORY[0x26D699090](isUniquelyReferenced_nonNull_native, v7);
      MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02D1F0);
      if (!*(v3 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v31 = sub_26BEBB618(v0[111], v0[112]);
      if ((v32 & 1) == 0)
      {
        goto LABEL_35;
      }

      v3 = *(*(v3 + 56) + 8 * v31);
      if (*(v3 + 16))
      {
        v7 = v0[119];
        isUniquelyReferenced_nonNull_native = v0[118];
        v33 = v0[117];

        v34 = sub_26BEBB618(v33, isUniquelyReferenced_nonNull_native);
        LOBYTE(v1) = v35;

        if (v1)
        {
          v36 = *(*(v3 + 56) + 8 * v34);
          v0[125] = v36;

          v39 = (*(*v36 + 264) + **(*v36 + 264));
          v37 = swift_task_alloc();
          v0[126] = v37;
          *v37 = v0;
          v37[1] = sub_26BF84B84;

          return v39();
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v10 = sub_26BE6F250();
      if ((v3 & 1) == 0)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v25 = sub_26BEBB618(v14, v1);
    v27 = v26;

    if (v27)
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v0[98] = v13;
      if (!v28)
      {
        sub_26BE6F278();
        v13 = v0[98];
      }

      sub_26C0018C8(v25, v13);
LABEL_23:
      *(*(v3 + 56) + 8 * v7) = v13;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v11 = v0[112];
  v1 = v0[111];
  sub_26BE6C1E0(v10, isUniquelyReferenced_nonNull_native);
  v10 = sub_26BEBB618(v1, v11);
  if ((v3 & 1) == (v12 & 1))
  {
    v7 = v10;
    if ((v3 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

LABEL_12:

  return sub_26C00AF8C();
}

uint64_t sub_26BF84B84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1016) = a1;
  *(v3 + 1024) = a2;

  return MEMORY[0x2822009F8](sub_26BF84CD4, 0, 0);
}

uint64_t sub_26BF84CD4()
{
  v1 = *(v0 + 1024);
  if (v1 >> 60 == 15)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
    goto LABEL_43;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v1);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v6 = *(*(v0 + 1016) + 16);
  v7 = *(*(v0 + 1016) + 24);
  v5 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_10:
    v8 = *(v0 + 1016);
    v9 = *(v0 + 1020);
    v10 = __OFSUB__(v9, v8);
    v11 = v9 - v8;
    if (v10)
    {
      goto LABEL_134;
    }

    v5 = v11;
  }

LABEL_12:
  v12 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_42;
  }

  *(v0 + 768) = MEMORY[0x277D84F90];
  sub_26BECB834(0, v5 & ~(v5 >> 63), 0);
  v138 = (v0 + 768);
  v12 = *(v0 + 768);
  if (v4 == 2)
  {
    v13 = *(v0 + 1016);
    v14 = *(v13 + 16);
  }

  else
  {
    if (v4 != 1)
    {
LABEL_20:
      if (v5 < 0)
      {
        goto LABEL_135;
      }

      v14 = 0;
      v13 = *(v0 + 1016);
      goto LABEL_22;
    }

    v13 = *(v0 + 1016);
    v14 = v13;
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  v15 = *(v0 + 1024);
  do
  {
    if (v4 == 2)
    {
      if (v14 < *(v13 + 16))
      {
        goto LABEL_121;
      }

      if (v14 >= *(v13 + 24))
      {
        goto LABEL_124;
      }

      v20 = sub_26C008E9C();
      if (!v20)
      {
        goto LABEL_137;
      }

      v17 = v20;
      v21 = sub_26C008ECC();
      v19 = v14 - v21;
      if (__OFSUB__(v14, v21))
      {
        goto LABEL_126;
      }

LABEL_35:
      v22 = *(v17 + v19);
      goto LABEL_38;
    }

    if (v4 == 1)
    {
      if (v14 < v13 || v14 >= v13 >> 32)
      {
        goto LABEL_123;
      }

      v16 = sub_26C008E9C();
      if (!v16)
      {
        goto LABEL_136;
      }

      v17 = v16;
      v18 = sub_26C008ECC();
      v19 = v14 - v18;
      if (__OFSUB__(v14, v18))
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (v14 >= BYTE6(v15))
    {
      goto LABEL_122;
    }

    *(v0 + 371) = v13;
    *(v0 + 379) = v15;
    *(v0 + 381) = BYTE2(v15);
    *(v0 + 382) = BYTE3(v15);
    *(v0 + 383) = BYTE4(v15);
    *(v0 + 384) = BYTE5(v15);
    v22 = *(v0 + 371 + v14);
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26C011280;
    *(v23 + 56) = MEMORY[0x277D84B78];
    *(v23 + 64) = MEMORY[0x277D84BC0];
    *(v23 + 32) = v22;
    v24 = sub_26C00A4BC();
    *v138 = v12;
    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      v130 = v24;
      v29 = v25;
      sub_26BECB834((v26 > 1), v27 + 1, 1);
      v25 = v29;
      v24 = v130;
      v12 = *v138;
    }

    *(v12 + 16) = v27 + 1;
    v28 = v12 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    ++v14;
    --v5;
  }

  while (v5);
  v1 = *(v0 + 1024);
LABEL_42:
  v30 = *(v0 + 1016);
  *(v0 + 776) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v31 = sub_26C00A3EC();
  v2 = v32;
  sub_26BE136AC(v30, v1);

  v3 = v31;
LABEL_43:
  v33 = *(v0 + 992);
  MEMORY[0x26D699090](v3, v2);

  v34 = *(v0 + 728);
  v35 = *(v0 + 736);
  v33[7] = MEMORY[0x277D837D0];
  v33[4] = v34;
  v33[5] = v35;
  sub_26C00B03C();

  v36 = *(v0 + 984);
  v37 = *(v0 + 928);
  v38 = *(v0 + 920);
  *(v0 + 912) = v36;
  v39 = (v38 - 1) & v38;
  if (v39)
  {
    goto LABEL_44;
  }

  v54 = v37;
LABEL_51:
  while (2)
  {
    v37 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
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
      goto LABEL_129;
    }

    if (v37 < (((1 << *(v0 + 386)) + 63) >> 6))
    {
      v39 = *(*(v0 + 904) + 8 * v37 + 64);
      ++v54;
      if (v39)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  v55 = *(v0 + 880);
  v56 = (*(v0 + 872) - 1) & *(v0 + 872);
  v132 = v36;
  if (v56)
  {
    v57 = *(v0 + 848);
    goto LABEL_61;
  }

  while (1)
  {
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_127;
    }

    if (v58 >= (((1 << *(v0 + 385)) + 63) >> 6))
    {
      break;
    }

    v57 = *(v0 + 848);
    v56 = *(v57 + 8 * v58 + 64);
    ++v55;
    if (v56)
    {
      v55 = v58;
LABEL_61:
      *(v0 + 880) = v55;
      *(v0 + 872) = v56;
      v59 = __clz(__rbit64(v56)) | (v55 << 6);
      v60 = (*(v57 + 48) + 16 * v59);
      v61 = *v60;
      *(v0 + 888) = *v60;
      v62 = v60[1];
      *(v0 + 896) = v62;
      v63 = *(*(v57 + 56) + 8 * v59);
      *(v0 + 904) = v63;

      v64 = sub_26C005CAC(MEMORY[0x277D84F90]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26BE57A28(v64, v61, v62, isUniquelyReferenced_nonNull_native);

      v36 = v132;
      v66 = *(v63 + 32);
      *(v0 + 386) = v66;
      v67 = 1 << v66;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v39 = v68 & *(v63 + 64);
      *(v0 + 912) = v132;

      v54 = 0;
      v37 = 0;
      if (v39)
      {
LABEL_44:
        *(v0 + 928) = v37;
        *(v0 + 920) = v39;
        v40 = *(v0 + 904);
        v41 = *(v0 + 864);
        v42 = (v37 << 10) | (16 * __clz(__rbit64(v39)));
        v43 = (*(v40 + 48) + v42);
        *(v0 + 936) = *v43;
        *(v0 + 944) = v43[1];
        *(v0 + 952) = *(*(v40 + 56) + v42 + 8);
        if (*(v41 + 16))
        {
          v44 = *(v0 + 896);
          v45 = *(v0 + 888);

          v46 = sub_26BEBB618(v45, v44);
          if (v47)
          {
            v48 = *(*(*(v0 + 864) + 56) + 8 * v46);

            result = sub_26C00903C();
            if (v50 >> 60 == 15)
            {
              __break(1u);
            }

            else
            {
              v51 = result;
              v52 = v50;
              type metadata accessor for MLS.Group.PureSwiftGroup(0);
              v53 = swift_task_alloc();
              *(v0 + 960) = v53;
              *v53 = v0;
              v53[1] = sub_26BF8445C;

              return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v48, v51, v52);
            }

            return result;
          }

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
        }

LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      goto LABEL_51;
    }
  }

  v69 = *(v0 + 864);
  v70 = *(v0 + 824);

  swift_beginAccess();
  v70[5] = v69;

  swift_beginAccess();
  v70[6] = v36;

  v71 = sub_26C005C98(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v70[7] = v71;

  v72 = v70[6];
  v75 = *(v72 + 64);
  v74 = v72 + 64;
  v73 = v75;
  v76 = -1 << *(v70[6] + 32);
  if (-v76 < 64)
  {
    v77 = ~(-1 << -v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & v73;
  v79 = (63 - v76) >> 6;
  v129 = v70[6];

  v80 = 0;
  v136 = v70;
  v127 = v79;
  v128 = v74;
LABEL_71:
  if (!v78)
  {
    while (1)
    {
      v81 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_128;
      }

      if (v81 >= v79)
      {
        goto LABEL_113;
      }

      v78 = *(v74 + 8 * v81);
      ++v80;
      if (v78)
      {
        goto LABEL_76;
      }
    }
  }

  v81 = v80;
LABEL_76:
  v131 = (v78 - 1) & v78;
  v82 = __clz(__rbit64(v78)) | (v81 << 6);
  v83 = (*(v129 + 48) + 16 * v82);
  v84 = v83[1];
  v135 = *v83;
  v85 = *(*(v129 + 56) + 8 * v82);
  v86 = v85 + 64;
  v87 = -1 << *(v85 + 32);
  if (-v87 < 64)
  {
    v88 = ~(-1 << -v87);
  }

  else
  {
    v88 = -1;
  }

  v89 = v88 & *(v85 + 64);
  v90 = (63 - v87) >> 6;
  v139 = v85;
  swift_bridgeObjectRetain_n();
  v137 = v84;

  v91 = 0;
  v133 = v90;
  v134 = v86;
  if (!v89)
  {
    goto LABEL_80;
  }

  while (1)
  {
LABEL_84:
    v93 = (*(v139 + 48) + ((v91 << 10) | (16 * __clz(__rbit64(v89)))));
    v95 = *v93;
    v94 = v93[1];
    v96 = *(v70[7] + 16);

    if (!v96 || (, sub_26BEBB618(v95, v94), v98 = v97, , (v98 & 1) == 0))
    {
      swift_beginAccess();
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v70[7];
      v70[7] = 0x8000000000000000;
      v101 = sub_26BEBB618(v95, v94);
      v103 = v100[2];
      v104 = (v102 & 1) == 0;
      v10 = __OFADD__(v103, v104);
      v105 = v103 + v104;
      if (v10)
      {
        goto LABEL_132;
      }

      v106 = v102;
      if (v100[3] < v105)
      {
        sub_26BE6C4BC(v105, v99);
        v101 = sub_26BEBB618(v95, v94);
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_116;
        }

        v70 = v136;
        if ((v106 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_93:
        *(v100[7] + 8 * v101) = MEMORY[0x277D84F90];

LABEL_97:
        v70[7] = v100;
        swift_endAccess();
        goto LABEL_98;
      }

      if (v99)
      {
        if (v102)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v108 = v101;
        sub_26BE6F3EC();
        v101 = v108;
        if (v106)
        {
          goto LABEL_93;
        }
      }

LABEL_95:
      v100[(v101 >> 6) + 8] |= 1 << v101;
      v109 = (v100[6] + 16 * v101);
      *v109 = v95;
      v109[1] = v94;
      *(v100[7] + 8 * v101) = MEMORY[0x277D84F90];
      v110 = v100[2];
      v10 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v10)
      {
        goto LABEL_133;
      }

      v100[2] = v111;

      goto LABEL_97;
    }

LABEL_98:
    swift_beginAccess();
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v70[7];
    v140 = v113;
    v70[7] = 0x8000000000000000;
    v115 = sub_26BEBB618(v95, v94);
    v116 = v113[2];
    v117 = (v114 & 1) == 0;
    v118 = v116 + v117;
    if (__OFADD__(v116, v117))
    {
      goto LABEL_131;
    }

    v119 = v114;
    if (v113[3] < v118)
    {
      sub_26BE6C4BC(v118, v112);
      v120 = sub_26BEBB618(v95, v94);
      if ((v119 & 1) != (v121 & 1))
      {
LABEL_116:

        return sub_26C00AF8C();
      }

      v115 = v120;
      if ((v119 & 1) == 0)
      {
        break;
      }

      goto LABEL_105;
    }

    if (v112)
    {
      if ((v114 & 1) == 0)
      {
        break;
      }

      goto LABEL_105;
    }

    sub_26BE6F3EC();
    if ((v119 & 1) == 0)
    {
      break;
    }

LABEL_105:
    v122 = *(v113[7] + 8 * v115);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_26BEEDAF4(0, *(v122 + 2) + 1, 1, v122);
    }

    v86 = v134;
    v124 = *(v122 + 2);
    v123 = *(v122 + 3);
    if (v124 >= v123 >> 1)
    {
      v122 = sub_26BEEDAF4((v123 > 1), v124 + 1, 1, v122);
    }

    v89 &= v89 - 1;
    *(v122 + 2) = v124 + 1;
    v125 = &v122[16 * v124];
    *(v125 + 4) = v135;
    *(v125 + 5) = v137;

    *(v140[7] + 8 * v115) = v122;

    v70 = v136;
    v136[7] = v140;
    swift_endAccess();
    v90 = v133;
    if (!v89)
    {
      while (1)
      {
LABEL_80:
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_120;
        }

        if (v92 >= v90)
        {
          break;
        }

        v89 = *(v86 + 8 * v92);
        ++v91;
        if (v89)
        {
          v91 = v92;
          goto LABEL_84;
        }
      }

      v80 = v81;
      v78 = v131;
      v79 = v127;
      v74 = v128;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_113:

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_26BF859D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF85AA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC68, &qword_26C0201A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF86F60();
  sub_26C00B10C();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_26BF86FB4(&v16, v11);
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v13, *(&v13 + 1));
  if (!v2)
  {
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_26BF86FB4(&v15, v11);
    sub_26C00AEBC();
    sub_26BE00258(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_26BF86FB4(&v14, v11);
    sub_26C00AEBC();
    sub_26BE00258(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26BF85CC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FBF0, &qword_26C020178);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF864A4();
  sub_26C00B10C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
  sub_26BF86E14(&qword_28045FC00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_26C00AEBC();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC08, &qword_26C020180);
    sub_26BF86E80(&qword_28045FC10, &qword_28045FC00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_26C00AEBC();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC18, &qword_26C020188);
    sub_26BF864F8(&qword_28045FC20, sub_26BF8657C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_26C00AEBC();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_26BF85F64()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61745370756F7267;
  }
}

uint64_t sub_26BF85FD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BF865D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BF86000(uint64_t a1)
{
  v2 = sub_26BF86F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BF8603C(uint64_t a1)
{
  v2 = sub_26BF86F60();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BF86078@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26BF86700(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_26BF860D4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x53656761726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E65696C63;
  }
}

uint64_t sub_26BF8613C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BF869CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BF86164(uint64_t a1)
{
  v2 = sub_26BF864A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BF861A0(uint64_t a1)
{
  v2 = sub_26BF864A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BF861DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26BF86AF0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_26BF8622C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BF8629C()
{
  result = qword_28045FBC8;
  if (!qword_28045FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBC8);
  }

  return result;
}

unint64_t sub_26BF862F0()
{
  result = qword_28045FBD0;
  if (!qword_28045FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBD0);
  }

  return result;
}

uint64_t sub_26BF86344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BF863B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BF8640C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26BF86454(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26BF864A4()
{
  result = qword_28045FBF8;
  if (!qword_28045FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FBF8);
  }

  return result;
}

uint64_t sub_26BF864F8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FC18, &qword_26C020188);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BF8657C()
{
  result = qword_28045FC28;
  if (!qword_28045FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC28);
  }

  return result;
}

uint64_t sub_26BF865D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61745370756F7267 && a2 == 0xEF65726F74536574;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C02D230 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C02D250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

void sub_26BF86700(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC58, &qword_26C020198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF86F60();
  sub_26C00B0FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    sub_26BE3B018();
    sub_26C00AE3C();
    v9 = v22;
    v20 = a2;
    v21 = v23;
    v24 = 1;
    sub_26C00AE3C();
    v18 = v22;
    v19 = v23;
    v24 = 2;
    sub_26C00AE3C();
    (*(v6 + 8))(v8, v5);
    v10 = v22;
    v11 = v23;
    v12 = v9;
    v13 = v9;
    v14 = v21;
    sub_26BE00608(v13, v21);
    v16 = v18;
    v15 = v19;
    sub_26BE00608(v18, v19);
    sub_26BE00608(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26BE00258(v12, v14);
    sub_26BE00258(v16, v15);
    sub_26BE00258(v10, v11);
    v17 = v20;
    *v20 = v12;
    v17[1] = v14;
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v10;
    v17[5] = v11;
  }
}

uint64_t sub_26BF869CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E65696C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C02D210 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53656761726F7473 && a2 == 0xEC00000065746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BF86AF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC30, &qword_26C020190);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BF864A4();
  sub_26C00B0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
  v9 = 0;
  sub_26BF86E14(&qword_28045FC38, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_26C00AE3C();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC08, &qword_26C020180);
  v9 = 1;
  sub_26BF86E80(&qword_28045FC40, &qword_28045FC38, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_26C00AE3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FC18, &qword_26C020188);
  v9 = 2;
  sub_26BF864F8(&qword_28045FC48, sub_26BF86F0C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_26C00AE3C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_26BF86E14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E980, &qword_26C012660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BF86E80(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FC08, &qword_26C020180);
    sub_26BF86E14(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BF86F0C()
{
  result = qword_28045FC50;
  if (!qword_28045FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC50);
  }

  return result;
}

unint64_t sub_26BF86F60()
{
  result = qword_28045FC60;
  if (!qword_28045FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC60);
  }

  return result;
}

unint64_t sub_26BF87034()
{
  result = qword_28045FC70;
  if (!qword_28045FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC70);
  }

  return result;
}

unint64_t sub_26BF8708C()
{
  result = qword_28045FC78;
  if (!qword_28045FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC78);
  }

  return result;
}

unint64_t sub_26BF870E4()
{
  result = qword_28045FC80;
  if (!qword_28045FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC80);
  }

  return result;
}

unint64_t sub_26BF8713C()
{
  result = qword_28045FC88;
  if (!qword_28045FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC88);
  }

  return result;
}

unint64_t sub_26BF87194()
{
  result = qword_28045FC90;
  if (!qword_28045FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC90);
  }

  return result;
}

unint64_t sub_26BF871EC()
{
  result = qword_28045FC98;
  if (!qword_28045FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FC98);
  }

  return result;
}

uint64_t sub_26BF87240(unint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v27 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    v9 = v5 & ~(v5 >> 63);
    sub_26BECB834(0, v9, 0);
    v8 = v41;
    if (v4 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v28 = v4;
      while (1)
      {
        if (!v9)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        if (v4 == 2)
        {
          if (v10 < *(a1 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(a1 + 24))
          {
            goto LABEL_45;
          }

          v15 = sub_26C008E9C();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = sub_26C008ECC();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v4 != 1)
          {
            if (v10 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v29 = a1;
            v30 = BYTE2(a1);
            v31 = BYTE3(a1);
            v32 = v27;
            v33 = BYTE5(a1);
            v34 = BYTE6(a1);
            v35 = HIBYTE(a1);
            v36 = a2;
            v37 = BYTE2(a2);
            v38 = BYTE3(a2);
            v39 = BYTE4(a2);
            v40 = BYTE5(a2);
            v17 = *(&v29 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = sub_26C008E9C();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = sub_26C008ECC();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
LABEL_37:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA78, &qword_26C020500);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_26C011280;
        *(v18 + 56) = MEMORY[0x277D84B78];
        *(v18 + 64) = MEMORY[0x277D84BC0];
        *(v18 + 32) = v17;
        v19 = sub_26C00A4BC();
        v41 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v26 = v19;
          v24 = v20;
          sub_26BECB834((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v19 = v26;
          v8 = v41;
        }

        *(v8 + 16) = v22 + 1;
        v23 = v8 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        ++v10;
        --v9;
        --v5;
        LODWORD(v4) = v28;
        if (!v5)
        {
          return v8;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

  return v8;
}

uint64_t MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BF875C0, 0, 0);
}

uint64_t sub_26BF875C0()
{
  v24 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_26C009A5C();
  v0[10] = __swift_project_value_buffer(v3, qword_280478EE8);

  sub_26BE00608(v2, v1);
  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  sub_26BE00258(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315394;

    v10 = sub_26BE16A38();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v0[5] = sub_26BF87240(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v14 = sub_26C00A3EC();
    v16 = v15;

    v17 = sub_26BE29740(v14, v16, v23);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: loading group with groupID %s from storage", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_26BF878AC;
  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[6];

  return sub_26BF7D8CC(v21, v19, v20);
}

uint64_t sub_26BF878AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = sub_26BF87F18;
  }

  else
  {
    v5 = sub_26BF879C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF879C4()
{
  v54 = v0;
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_9:
      sub_26BE136AC(v0[12], v1);
      goto LABEL_11;
    }

    v3 = v0[12];
    if (*(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_18;
    }

LABEL_11:
    v5 = v0[7];
    v4 = v0[8];
    sub_26BE00608(v5, v4);
    v6 = sub_26C009A3C();
    v7 = sub_26C00AA1C();
    sub_26BE00258(v5, v4);
    if (os_log_type_enabled(v6, v7))
    {
      v51 = v0[12];
      v52 = v0[13];
      v9 = v0[7];
      v8 = v0[8];
      v50 = v8;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = 136315138;
      v0[2] = sub_26BF87240(v9, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
      v12 = sub_26C00A3EC();
      v14 = v13;

      v15 = sub_26BE29740(v12, v14, v53);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_26BDFE000, v6, v7, "Group with ID %s not found in storage", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69A4E0](v11, -1, -1);
      MEMORY[0x26D69A4E0](v10, -1, -1);
      sub_26BE136AC(v51, v52);
      sub_26BE00258(v9, v50);
    }

    else
    {
      v17 = v0[7];
      v16 = v0[8];
      sub_26BE136AC(v0[12], v0[13]);

      sub_26BE00258(v17, v16);
    }

    v18 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = v0[12];
    if (v3 == v3 >> 32)
    {
      goto LABEL_11;
    }

LABEL_18:
    sub_26BE2E408(v3, v1);
    goto LABEL_19;
  }

  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v22 = v0[7];
  v21 = v0[8];
  sub_26BE00608(v22, v21);
  v23 = sub_26C009A3C();
  v24 = sub_26C00AA1C();
  sub_26BE00258(v22, v21);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[14];
    v27 = v0[7];
    v26 = v0[8];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53[0] = v29;
    *v28 = 136315138;
    v0[4] = sub_26BF87240(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0, MEMORY[0x277D83958]);
    v30 = sub_26C00A3EC();
    v32 = v31;

    v33 = sub_26BE29740(v30, v32, v53);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_26BDFE000, v23, v24, "Loaded group with ID %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x26D69A4E0](v29, -1, -1);
    MEMORY[0x26D69A4E0](v28, -1, -1);
  }

  else
  {

    v25 = v0[14];
  }

  v34 = v0[12];
  v35 = v0[13];
  v36 = v0[6];

  sub_26BE2E408(v34, v35);
  v37 = sub_26BF8BCC8(v36, v34, v35);
  if (!v25)
  {
    v45 = v0[12];
    v46 = v0[13];
    v48 = v0[7];
    v47 = v0[8];
    v49 = v37;
    sub_26BE136AC(v45, v46);
    sub_26BE136AC(v45, v46);
    sub_26BE00258(v48, v47);

    v18 = v49;
LABEL_15:
    v19 = v0[1];

    return v19(v18);
  }

  v39 = v0[12];
  v38 = v0[13];
  v40 = v0[8];
  v41 = v0[7];
  v0[3] = v0[9];
  swift_getMetatypeMetadata();
  v42 = sub_26C00A4FC();
  sub_26BE826C4(v42, v43, v39, v38);

  swift_willThrow();
  sub_26BE00258(v41, v40);

  sub_26BE136AC(v39, v38);
  sub_26BE136AC(v39, v38);
  v44 = v0[1];

  return v44();
}

uint64_t sub_26BF87F18()
{
  sub_26BE00258(v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26BF87F90(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 40);
  v4 = *(a2 + 16) + 1;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (--v4)
  {
    v7 = v3 + 2;
    v8 = *(v3 - 2);
    v9 = bswap64(*v3);
    v15 = v5;
    v16 = v6;
    v12 = v9;
    v13 = &v12;
    v14 = &v13;
    __swift_project_boxed_opaque_existential_1(&v13, v5);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    LODWORD(v12) = bswap32(v8);
    v15 = v5;
    v16 = v6;
    v13 = &v12;
    v14 = (&v12 + 4);
    __swift_project_boxed_opaque_existential_1(&v13, v5);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    v3 = v7;
    v10 = __OFADD__(a1, 12);
    a1 += 12;
    if (v10)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

void sub_26BF880D8(uint64_t a1)
{
  v194 = *MEMORY[0x277D85DE8];
  v161 = type metadata accessor for FileInfoAndSender(0);
  v157 = *(v161 - 8);
  v2 = MEMORY[0x28223BE20](v161);
  v155 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v158 = &v145 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v154 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v159 = &v145 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v156 = &v145 - v11;
  MEMORY[0x28223BE20](v10);
  v160 = &v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v162 = *(v13 - 8);
  v163 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v164 = (&v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v165 = &v145 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v145 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v145 - v24;
  v26 = sub_26C00928C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = *(a1 + 56);
  v30 = v166;
  v31 = MLS.Identity.Credential.serializedRepresentation.getter();
  if (!v30)
  {
    v152 = v25;
    v153 = v29;
    v166 = v27;
    v150 = v23;
    v151 = v19;
    MLS.Credential.init(rawValue:)(v31, v32, &v179);
    v33 = &v168;
    v147 = *(&v179 + 1);
    v148 = v179;
    v35 = *(a1 + 32);
    v34 = *(a1 + 40);
    v146 = a1;
    v36 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v25 = 0;
LABEL_12:
        v39 = sub_26BF30414(v25);
        v149 = v30;
        v40 = v39;
        sub_26BE11228(v35, v34);
        sub_26BE00258(v35, v34);
        v43 = __OFADD__(v40, v25);
        v25 += v40;
        if (v43)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v44 = v146;
        *&v168 = bswap64(*(v146 + 24));
        v27 = MEMORY[0x277D838B0];
        v35 = MEMORY[0x277CC9C18];
        *(&v180 + 1) = MEMORY[0x277D838B0];
        *&v181 = MEMORY[0x277CC9C18];
        *&v179 = &v168;
        *(&v179 + 1) = &v168 + 8;
        __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
        sub_26C00908C();
        v41 = __swift_destroy_boxed_opaque_existential_1(&v179);
        v43 = __OFADD__(v25, 8);
        v25 += 8;
        if (v43)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        LODWORD(v168) = bswap32(*(v44 + 152));
        *(&v180 + 1) = v27;
        *&v181 = v35;
        *&v179 = &v168;
        *(&v179 + 1) = &v168 + 4;
        __swift_project_boxed_opaque_existential_1(&v179, v27);
        sub_26C00908C();
        v41 = __swift_destroy_boxed_opaque_existential_1(&v179);
        v45 = v25 + 4;
        if (__OFADD__(v25, 4))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (*(v44 + 72))
        {
          v46 = 512;
        }

        else
        {
          v46 = 256;
        }

        LOWORD(v168) = v46;
        *(&v180 + 1) = v27;
        *&v181 = v35;
        *&v179 = &v168;
        *(&v179 + 1) = &v168 + 2;
        __swift_project_boxed_opaque_existential_1(&v179, v27);
        sub_26C00908C();
        v41 = __swift_destroy_boxed_opaque_existential_1(&v179);
        v25 += 6;
        if (__OFADD__(v45, 2))
        {
          goto LABEL_65;
        }

        swift_beginAccess();
        v47 = v166;
        v48 = v26;
        v49 = v153;
        (*(v166 + 2))();
        v30 = v149;
        v50 = sub_26BF8FDE4();
        if (v30)
        {
          (*(v47 + 1))(v49, v48);
          sub_26BE0489C(v148, v147);
          return;
        }

        v51 = v50;
        v52 = *(v47 + 1);
        v27 = (v47 + 8);
        v53 = v52(v49, v48);
        v54 = (v25 + v51);
        if (__OFADD__(v25, v51))
        {
          __break(1u);
          goto LABEL_90;
        }

        v55 = v146;
        swift_beginAccess();
        sub_26BE038A8(v55 + 112, &v179);
        sub_26BE136C4(&v179);
        v58 = v147;
        v57 = v148;
        v59 = v56;
        v60 = __swift_destroy_boxed_opaque_existential_1(&v179);
        v43 = __OFADD__(v54, v59);
        v54 += v59;
        if (v43)
        {
          __break(1u);
          goto LABEL_107;
        }

        *&v179 = v57;
        *(&v179 + 1) = v58;
        sub_26BE03BF4(&v179);
        v149 = 0;
        if (__OFADD__(v54, v61))
        {
          goto LABEL_118;
        }

        v145 = &v54[v61];
        v62 = v146;
        swift_beginAccess();
        v63 = *(v62 + 160);
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = sub_26BE32898(*(v63 + 16), 0);
          v166 = sub_26BE33594(&v179, (v65 + 4), v64, v63);
          v153 = v181;
          swift_bridgeObjectRetain_n();
          sub_26BE2DA4C();
          if (v166 != v64)
          {
            __break(1u);
            goto LABEL_120;
          }

          v58 = v147;
          v35 = MEMORY[0x277CC9C18];
        }

        else
        {
          v65 = MEMORY[0x277D84F90];
        }

        *&v179 = v65;
        v30 = v149;
        sub_26BF8A868(&v179);
        if (v30)
        {
LABEL_137:

          __break(1u);
          return;
        }

        v66 = v179;
        v179 = xmmword_26C00BBD0;
        *&v180 = 0;
        v67 = sub_26BF87F90(0, v66);
        v68 = sub_26BF30414(v67);
        v27 = v35;
        v149 = 0;
        v69 = v68;
        sub_26BF2A30C(&v179);
        sub_26BE00258(v179, *(&v179 + 1));

        v70 = v69 + v67;
        if (!__OFADD__(v69, v67))
        {
          v71 = v146;
          v72 = &v145[v70];
          v73 = v165;
          if (!__OFADD__(v145, v70))
          {
            *&v168 = 0x300000000000000;
            *(&v180 + 1) = MEMORY[0x277D838B0];
            *&v181 = v35;
            *&v179 = &v168;
            *(&v179 + 1) = &v168 + 8;
            __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v179);
            v74 = v72 + 8;
            if (!__OFADD__(v72, 8))
            {
              v75 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
              swift_beginAccess();
              v76 = v71 + v75;
              v77 = v152;
              sub_26BE2E1F0(v76, v152, &qword_28045E8D8, &qword_26C012580);
              v35 = v150;
              sub_26BE2E1F0(v77, v150, &qword_28045E8D8, &qword_26C012580);
              v78 = v163;
              if ((*(v162 + 48))(v35, 1, v163) == 1)
              {
                sub_26BE2E258(v35, &qword_28045E8D8, &qword_26C012580);
                LOBYTE(v168) = 0;
                *(&v180 + 1) = MEMORY[0x277D838B0];
                *&v181 = v27;
                *&v179 = &v168;
                *(&v179 + 1) = &v168 + 1;
                __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                sub_26C00908C();
                __swift_destroy_boxed_opaque_existential_1(&v179);
                sub_26BE2E258(v77, &qword_28045E8D8, &qword_26C012580);
                v79 = 1;
                goto LABEL_36;
              }

              v96 = v151;
              sub_26BF8E898(v35, v151);
              v192 = 1;
              *(&v169 + 1) = MEMORY[0x277D838B0];
              *&v170 = v27;
              *&v168 = &v192;
              *(&v168 + 1) = v193;
              __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277D838B0]);
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(&v168);
              sub_26BE2E1F0(v96, v73, &qword_28045E8E0, &unk_26C0204E0);
              v97 = (v73 + *(v78 + 48));
              v98 = v97[9];
              v99 = v73;
              v25 = &v168;
              v187 = v97[8];
              v188 = v98;
              v189 = v97[10];
              v100 = v97[5];
              v183 = v97[4];
              v184 = v100;
              v101 = v97[7];
              v185 = v97[6];
              v186 = v101;
              v102 = v97[1];
              v179 = *v97;
              v180 = v102;
              v103 = v97[3];
              v181 = v97[2];
              v182 = v103;
              v104 = v164;
              sub_26BE2E12C(v99, v164);
              v105 = (v104 + *(v78 + 48));
              v106 = v188;
              v105[8] = v187;
              v105[9] = v106;
              v105[10] = v189;
              v107 = v184;
              v105[4] = v183;
              v105[5] = v107;
              v108 = v186;
              v105[6] = v185;
              v105[7] = v108;
              v109 = v180;
              *v105 = v179;
              v105[1] = v109;
              v110 = v182;
              v105[2] = v181;
              v105[3] = v110;
              sub_26BE6FF30(&v179, &v168);
              v30 = v149;
              sub_26BEDD4A8(v104);
              if (v30)
              {
                v149 = v30;
                v122 = v148;
                sub_26BE2E258(v164, &qword_28045E8E0, &unk_26C0204E0);
                sub_26BE0489C(v122, v58);
                sub_26BE6FF8C(&v179);
                sub_26BE2E258(v151, &qword_28045E8E0, &unk_26C0204E0);
                sub_26BE2E258(v152, &qword_28045E8D8, &qword_26C012580);
                sub_26BF8E984(v165, type metadata accessor for MLS.GroupState);
                return;
              }

              v115 = v111;
              v116 = v105[9];
              v176 = v105[8];
              v177 = v116;
              v178 = v105[10];
              v117 = v105[5];
              v172 = v105[4];
              v173 = v117;
              v118 = v105[7];
              v174 = v105[6];
              v175 = v118;
              v119 = v105[1];
              v168 = *v105;
              v169 = v119;
              v120 = v105[3];
              v170 = v105[2];
              v171 = v120;
              sub_26BE7945C(&v168);
              v149 = 0;
              v125 = v115 + v121;
              if (__OFADD__(v115, v121))
              {
                goto LABEL_126;
              }

              sub_26BE2E258(v164, &qword_28045E8E0, &unk_26C0204E0);
              sub_26BE6FF8C(&v179);
              sub_26BE2E258(v151, &qword_28045E8E0, &unk_26C0204E0);
              sub_26BE2E258(v152, &qword_28045E8D8, &qword_26C012580);
              v41 = sub_26BF8E984(v165, type metadata accessor for MLS.GroupState);
              v79 = v125 + 1;
              if (!__OFADD__(v125, 1))
              {
LABEL_36:
                v166 = &v74[v79];
                if (!__OFADD__(v74, v79))
                {
                  v80 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
                  v81 = v146;
                  swift_beginAccess();
                  v82 = v160;
                  sub_26BE2E1F0(v81 + v80, v160, &qword_28045FA38, &qword_26C01D890);
                  v83 = v156;
                  sub_26BE2E1F0(v82, v156, &qword_28045FA38, &qword_26C01D890);
                  v35 = *(v157 + 48);
                  if ((v35)(v83, 1, v161) == 1)
                  {
                    sub_26BE2E258(v83, &qword_28045FA38, &qword_26C01D890);
                    LOBYTE(v168) = 0;
                    *(&v180 + 1) = MEMORY[0x277D838B0];
                    *&v181 = v27;
                    *&v179 = &v168;
                    *(&v179 + 1) = &v168 + 1;
                    __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                    sub_26C00908C();
                    __swift_destroy_boxed_opaque_existential_1(&v179);
                    sub_26BE2E258(v82, &qword_28045FA38, &qword_26C01D890);
                    v84 = 1;
LABEL_39:
                    v43 = __OFADD__(v166, v84);
                    v166 += v84;
                    if (!v43)
                    {
                      v85 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
                      v86 = v146;
                      swift_beginAccess();
                      v87 = v86 + v85;
                      v88 = v159;
                      sub_26BE2E1F0(v87, v159, &qword_28045FA38, &qword_26C01D890);
                      v89 = v154;
                      sub_26BE2E1F0(v88, v154, &qword_28045FA38, &qword_26C01D890);
                      if ((v35)(v89, 1, v161) == 1)
                      {
                        sub_26BE2E258(v89, &qword_28045FA38, &qword_26C01D890);
                        LOBYTE(v168) = 0;
                        *(&v180 + 1) = MEMORY[0x277D838B0];
                        *&v181 = v27;
                        *&v179 = &v168;
                        *(&v179 + 1) = &v168 + 1;
                        __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                        sub_26C00908C();
                        __swift_destroy_boxed_opaque_existential_1(&v179);
                        sub_26BE2E258(v159, &qword_28045FA38, &qword_26C01D890);
                        v90 = 1;
                        goto LABEL_42;
                      }

                      sub_26BF8E9E4(v89, v155, type metadata accessor for FileInfoAndSender);
                      LOBYTE(v168) = 1;
                      *(&v180 + 1) = MEMORY[0x277D838B0];
                      *&v181 = v27;
                      *&v179 = &v168;
                      *(&v179 + 1) = &v168 + 1;
                      __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v179);
                      type metadata accessor for FileInfo(0);
                      sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
                      v30 = v149;
                      v41 = sub_26C00998C();
                      v25 = v30;
                      if (v30)
                      {
                        sub_26BE0489C(v148, v147);
                        sub_26BF8E984(v155, type metadata accessor for FileInfoAndSender);
                        v114 = v159;
                        goto LABEL_54;
                      }

LABEL_66:
                      v34 = v41;
                      v33 = v42;
                      v37 = v42 >> 62;
                      if ((v42 >> 62) <= 1)
                      {
                        if (v37)
                        {
                          if (__OFSUB__(HIDWORD(v41), v41))
                          {
                            goto LABEL_133;
                          }

                          v126 = HIDWORD(v41) - v41;
                        }

                        else
                        {
                          v126 = BYTE6(v42);
                        }

                        goto LABEL_99;
                      }

LABEL_75:
                      if (v37 != 2)
                      {
                        v126 = 0;
                        goto LABEL_99;
                      }

                      v129 = *(v34 + 16);
                      v128 = *(v34 + 24);
                      v126 = v128 - v129;
                      if (!__OFSUB__(v128, v129))
                      {
LABEL_99:
                        v30 = v25;
                        v137 = sub_26BF30414(v126);
                        v149 = v25;
                        if (v25)
                        {
                          sub_26BE0489C(v148, v147);
                          sub_26BE00258(v34, v33);
LABEL_101:
                          sub_26BF8E984(v155, type metadata accessor for FileInfoAndSender);
                          v114 = v159;
                          goto LABEL_54;
                        }

                        v138 = v137;
                        sub_26BE11228(v34, v33);
                        sub_26BE00258(v34, v33);
                        v54 = (v138 + v126);
                        if (!__OFADD__(v138, v126))
                        {
                          sub_26BE2E1F0(v155 + *(v161 + 20), &v168, &qword_28045E698, &unk_26C0204F0);
                          if (!*(&v170 + 1))
                          {
                            goto LABEL_112;
                          }

                          v179 = v168;
                          v180 = v169;
                          v181 = v170;
                          *&v182 = v171;
                          v167 = 1;
                          *(&v169 + 1) = MEMORY[0x277D838B0];
                          *&v170 = v27;
                          *&v168 = &v167;
                          *(&v168 + 1) = &v168;
                          __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277D838B0]);
                          sub_26C00908C();
                          __swift_destroy_boxed_opaque_existential_1(&v168);
                          v30 = v149;
                          sub_26BF8A6AC(&v179);
                          v149 = v30;
                          if (v30)
                          {
                            sub_26BE0489C(v148, v147);
                            sub_26BE2DBC4(&v179);
                            goto LABEL_101;
                          }

                          v143 = v139;
                          sub_26BE2DBC4(&v179);
                          sub_26BF8E984(v155, type metadata accessor for FileInfoAndSender);
                          sub_26BE2E258(v159, &qword_28045FA38, &qword_26C01D890);
                          v142 = v143 + 1;
                          if (!__OFADD__(v143, 1))
                          {
                            goto LABEL_114;
                          }

                          goto LABEL_136;
                        }

                        goto LABEL_132;
                      }

                      __break(1u);
LABEL_79:
                      if (__OFSUB__(HIDWORD(v34), v34))
                      {
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
                        goto LABEL_135;
                      }

                      v124 = HIDWORD(v34) - v34;
LABEL_82:
                      v30 = v25;
                      v130 = sub_26BF30414(v124);
                      v149 = v25;
                      if (v25)
                      {
                        sub_26BE0489C(v148, v147);
                        sub_26BE00258(v34, v33);
                        goto LABEL_84;
                      }

                      v131 = v130;
                      sub_26BE11228(v34, v33);
                      sub_26BE00258(v34, v33);
                      v54 = (v131 + v124);
                      if (!__OFADD__(v131, v124))
                      {
                        sub_26BE2E1F0(v158 + *(v161 + 20), &v168, &qword_28045E698, &unk_26C0204F0);
                        if (*(&v170 + 1))
                        {
                          v179 = v168;
                          v180 = v169;
                          v181 = v170;
                          *&v182 = v171;
                          v190 = 1;
                          *(&v169 + 1) = MEMORY[0x277D838B0];
                          *&v170 = v27;
                          *&v168 = &v190;
                          *(&v168 + 1) = v191;
                          __swift_project_boxed_opaque_existential_1(&v168, MEMORY[0x277D838B0]);
                          sub_26C00908C();
                          __swift_destroy_boxed_opaque_existential_1(&v168);
                          v30 = v149;
                          sub_26BF8A6AC(&v179);
                          v149 = v30;
                          if (!v30)
                          {
LABEL_107:
                            v140 = v60;
                            sub_26BE2DBC4(&v179);
                            sub_26BF8E984(v158, type metadata accessor for FileInfoAndSender);
                            sub_26BE2E258(v160, &qword_28045FA38, &qword_26C01D890);
                            v136 = v140 + 1;
                            if (!__OFADD__(v140, 1))
                            {
                              goto LABEL_108;
                            }

LABEL_135:
                            __break(1u);
LABEL_136:
                            __break(1u);
                            goto LABEL_137;
                          }

                          sub_26BE0489C(v148, v147);
                          sub_26BE2DBC4(&v179);
LABEL_84:
                          sub_26BF8E984(v158, type metadata accessor for FileInfoAndSender);
                          v114 = v160;
                          goto LABEL_54;
                        }

                        while (1)
                        {
                          sub_26BE2E258(&v168, &qword_28045E698, &unk_26C0204F0);
                          LOBYTE(v168) = 0;
                          *(&v180 + 1) = MEMORY[0x277D838B0];
                          *&v181 = v27;
                          *&v179 = &v168;
                          *(&v179 + 1) = &v168 + 1;
                          __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                          sub_26C00908C();
                          __swift_destroy_boxed_opaque_existential_1(&v179);
                          sub_26BF8E984(v158, type metadata accessor for FileInfoAndSender);
                          sub_26BE2E258(v160, &qword_28045FA38, &qword_26C01D890);
                          v136 = 1;
LABEL_108:
                          v43 = __OFADD__(v54, v136);
                          v141 = &v54[v136];
                          if (v43)
                          {
                            goto LABEL_130;
                          }

                          v43 = __OFADD__(v141, 1);
                          v84 = (v141 + 1);
                          if (!v43)
                          {
                            goto LABEL_39;
                          }

                          __break(1u);
LABEL_112:
                          sub_26BE2E258(&v168, &qword_28045E698, &unk_26C0204F0);
                          LOBYTE(v168) = 0;
                          *(&v180 + 1) = MEMORY[0x277D838B0];
                          *&v181 = v27;
                          *&v179 = &v168;
                          *(&v179 + 1) = &v168 + 1;
                          __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                          sub_26C00908C();
                          __swift_destroy_boxed_opaque_existential_1(&v179);
                          sub_26BF8E984(v155, type metadata accessor for FileInfoAndSender);
                          sub_26BE2E258(v159, &qword_28045FA38, &qword_26C01D890);
                          v142 = 1;
LABEL_114:
                          v43 = __OFADD__(v54, v142);
                          v144 = &v54[v142];
                          if (v43)
                          {
                            goto LABEL_134;
                          }

                          v43 = __OFADD__(v144, 1);
                          v90 = (v144 + 1);
                          if (v43)
                          {
                            break;
                          }

LABEL_42:
                          v91 = &v166[v90];
                          if (__OFADD__(v166, v90))
                          {
                            goto LABEL_125;
                          }

                          v30 = v149;
                          v93 = sub_26BF89B44(v92);
                          v54 = v30;
                          if (v30)
                          {
                            sub_26BE0489C(v148, v147);

                            return;
                          }

                          v94 = v93;

                          v43 = __OFADD__(v91, v94);
                          v25 = &v91[v94];
                          if (v43)
                          {
                            goto LABEL_127;
                          }

                          swift_beginAccess();

                          v53 = sub_26BF89B44(v95);
LABEL_90:
                          v132 = v53;

                          v43 = __OFADD__(v25, v132);
                          v133 = v25 + v132;
                          if (v43)
                          {
                            goto LABEL_131;
                          }

                          swift_beginAccess();

                          v30 = v54;
                          v135 = sub_26BF8A2E8(v134);
                          sub_26BE0489C(v148, v147);

                          if (v54 || !__OFADD__(v133, v135))
                          {
                            return;
                          }

                          __break(1u);
                        }

                        __break(1u);
LABEL_118:
                        __break(1u);
                      }

LABEL_128:
                      __break(1u);
                      goto LABEL_129;
                    }

                    goto LABEL_124;
                  }

                  sub_26BF8E9E4(v83, v158, type metadata accessor for FileInfoAndSender);
                  LOBYTE(v168) = 1;
                  *(&v180 + 1) = MEMORY[0x277D838B0];
                  *&v181 = v27;
                  *&v179 = &v168;
                  *(&v179 + 1) = &v168 + 1;
                  __swift_project_boxed_opaque_existential_1(&v179, MEMORY[0x277D838B0]);
                  sub_26C00908C();
                  __swift_destroy_boxed_opaque_existential_1(&v179);
                  type metadata accessor for FileInfo(0);
                  sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
                  v30 = v149;
                  v112 = sub_26C00998C();
                  v25 = v30;
                  if (v30)
                  {
                    sub_26BE0489C(v148, v147);
                    sub_26BF8E984(v158, type metadata accessor for FileInfoAndSender);
                    v114 = v82;
LABEL_54:
                    sub_26BE2E258(v114, &qword_28045FA38, &qword_26C01D890);
                    return;
                  }

                  v34 = v112;
                  v33 = v113;
                  v123 = v113 >> 62;
                  if ((v113 >> 62) <= 1)
                  {
                    if (!v123)
                    {
                      v124 = BYTE6(v113);
                      goto LABEL_82;
                    }

                    goto LABEL_79;
                  }

                  if (v123 != 2)
                  {
                    v124 = 0;
                    goto LABEL_82;
                  }

                  v127 = *(v112 + 16);
                  v37 = *(v112 + 24);
                  v124 = v37 - v127;
                  if (!__OFSUB__(v37, v127))
                  {
                    goto LABEL_82;
                  }

                  __break(1u);
                  goto LABEL_73;
                }

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
                goto LABEL_128;
              }

              __break(1u);
              goto LABEL_62;
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      v25 = v37 - v38;
      if (__OFSUB__(v37, v38))
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      if (!v36)
      {
        v25 = BYTE6(v34);
        goto LABEL_12;
      }

      LODWORD(v37) = HIDWORD(v35) - v35;
      if (__OFSUB__(HIDWORD(v35), v35))
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v25 = v37;
    }

    sub_26BE00608(v35, v34);
    v30 = 0;
    goto LABEL_12;
  }
}

unint64_t MLS.Group.GroupStorageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_26BF89780()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BF897F4(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

void sub_26BF89870(uint64_t a1@<X8>)
{
  v3 = sub_26C0098EC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BF2F7B0();
  if (!v1)
  {
    v20 = v7;
    v21 = v8;
    *&v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = v8;
    sub_26BE00608(v7, v8);
    sub_26C0098DC();
    sub_26BF8E93C(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
    sub_26C00999C();
    sub_26BE00258(v9, v10);
    v11 = sub_26BEE62D4();
    if ((v11 & 0x100) != 0)
    {
      v12 = 1;
    }

    else
    {
      if (v11 == 1)
      {
        sub_26BF8A748(&v16);
        goto LABEL_8;
      }

      if (!v11)
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
LABEL_8:
        sub_26BF8E9E4(v6, a1, type metadata accessor for FileInfo);
        v13 = a1 + *(type metadata accessor for FileInfoAndSender(0) + 20);
        v14 = v17;
        *v13 = v16;
        *(v13 + 16) = v14;
        *(v13 + 32) = v18;
        *(v13 + 48) = v19;
        return;
      }

      v12 = 5;
    }

    sub_26BE01600();
    swift_allocError();
    *v15 = v12;
    swift_willThrow();
    sub_26BF8E984(v6, type metadata accessor for FileInfo);
  }
}

uint64_t sub_26BF89B44(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = sub_26C00A4EC();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = bswap64(*(a1 + 16));
  v61 = MEMORY[0x277D838B0];
  v62 = MEMORY[0x277CC9C18];
  v59 = v58;
  v60 = &v58[1];
  __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v59);
  v6 = *(a1 + 16);
  v57 = v1;
  v49 = v4;
  v43 = a1;
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_26BE32884(v6, 0);
  v8 = sub_26BE33330(&v59, v7 + 4, v6, a1);

  sub_26BE2DA4C();
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
  }

  v59 = v7;
  sub_26BF8A7FC(&v59);
  if (v2)
  {

    __break(1u);
    return result;
  }

  v9 = v59;
  v46 = *(v59 + 2);
  if (!v46)
  {

    return 8;
  }

  v40[1] = 0;
  v10 = 0;
  v47 = (v56 + 8);
  v42 = v58 + 1;
  v41 = v58 + 2;
  v50 = v58 + 4;
  v44 = &v58[1];
  v11 = (v59 + 40);
  v12 = 8;
  v13 = v43;
  v45 = v59;
  while (1)
  {
    if (v10 >= *(v9 + 2))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    if (!*(v13 + 16))
    {
      goto LABEL_51;
    }

    v14 = *(v11 - 1);
    v15 = *v11;

    v16 = sub_26BEBB618(v14, v15);
    if ((v17 & 1) == 0)
    {
      goto LABEL_52;
    }

    v55 = v12;
    v18 = *(v13 + 56) + 16 * v16;
    v54 = *v18;
    v53 = *(v18 + 8);
    v19 = v48;
    sub_26C00A4CC();
    v56 = v15;
    v12 = sub_26C00A49C();
    v21 = v20;
    (*v47)(v19, v49);
    if (v21 >> 60 == 15)
    {
      sub_26BE01600();
      swift_allocError();
      *v37 = 9;
      swift_willThrow();

      return v12;
    }

    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        v23 = 0;
LABEL_26:
        LOBYTE(v58[0]) = v23;
        v61 = MEMORY[0x277D838B0];
        v62 = MEMORY[0x277CC9C18];
        v59 = v58;
        v60 = v42;
        __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277D838B0]);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v59);
        v27 = 13;
        goto LABEL_28;
      }

      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      v23 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
        goto LABEL_54;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_21;
    }

    if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_21;
    }

    v26 = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_55;
    }

    v23 = v26;
    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_21:
    if (v23 < 0x40)
    {
      goto LABEL_26;
    }

    if (v23 >> 14)
    {
      if (v23 >> 30)
      {
        break;
      }

      LODWORD(v58[0]) = bswap32(v23 | 0x80000000);
      v61 = MEMORY[0x277D838B0];
      v62 = MEMORY[0x277CC9C18];
      v59 = v58;
      v60 = v50;
      __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v27 = 16;
    }

    else
    {
      LOWORD(v58[0]) = bswap32(v23 | 0x4000) >> 16;
      v61 = MEMORY[0x277D838B0];
      v62 = MEMORY[0x277CC9C18];
      v59 = v58;
      v60 = v41;
      __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277D838B0]);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v27 = 14;
    }

LABEL_28:
    v61 = MEMORY[0x277CC9318];
    v62 = MEMORY[0x277CC9300];
    v59 = v12;
    v60 = v21;
    v28 = __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277CC9318]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v30 >> 62;
    v51 = v27;
    v52 = v23;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2)
      {
        memset(v58, 0, 14);
        goto LABEL_42;
      }

      v32 = *(v29 + 16);
      v33 = *(v29 + 24);
      sub_26BE2E408(v12, v21);
      if (sub_26C008E9C() && __OFSUB__(v32, sub_26C008ECC()))
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v33, v32))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (!v31)
      {
        v58[0] = v29;
        LOWORD(v58[1]) = v30;
        BYTE2(v58[1]) = BYTE2(v30);
        BYTE3(v58[1]) = BYTE3(v30);
        BYTE4(v58[1]) = BYTE4(v30);
        BYTE5(v58[1]) = BYTE5(v30);
LABEL_42:
        sub_26C00908C();
        goto LABEL_43;
      }

      v34 = v29;
      if (v29 >> 32 < v29)
      {
        goto LABEL_56;
      }

      sub_26BE2E408(v12, v21);
      if (sub_26C008E9C() && __OFSUB__(v34, sub_26C008ECC()))
      {
        goto LABEL_59;
      }
    }

    sub_26C008EBC();
    sub_26C00908C();
    sub_26BE136AC(v12, v21);
    v13 = v43;
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v58[0] = bswap64(v53);
    v35 = MEMORY[0x277D838B0];
    v61 = MEMORY[0x277D838B0];
    v36 = MEMORY[0x277CC9C18];
    v62 = MEMORY[0x277CC9C18];
    v59 = v58;
    v60 = v44;
    __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277D838B0]);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v59);
    LODWORD(v58[0]) = bswap32(v54);
    v61 = v35;
    v62 = v36;
    v59 = v58;
    v60 = v50;
    __swift_project_boxed_opaque_existential_1(&v59, v35);
    sub_26C00908C();

    __swift_destroy_boxed_opaque_existential_1(&v59);
    v12 = v55 + v51 + v52;
    v9 = v45;
    if (__OFADD__(v55, v51 + v52))
    {
      goto LABEL_53;
    }

    ++v10;
    v11 += 2;
    if (v46 == v10)
    {

      return v12;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v38 = 3;
  swift_willThrow();

  sub_26BE136AC(v12, v21);
  return v12;
}

uint64_t sub_26BF8A2E8(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = sub_26C00921C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v28 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = bswap64(*(a1 + 16));
  v37 = MEMORY[0x277D838B0];
  v38 = MEMORY[0x277CC9C18];
  v35 = &v34;
  v36 = &v35;
  __swift_project_boxed_opaque_existential_1(&v35, MEMORY[0x277D838B0]);
  v29 = v1;
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v5 = *(a1 + 16);
  v30 = a1;
  if (v5)
  {
    v6 = sub_26BE32898(v5, 0);
    v7 = sub_26BE33488(&v35, (v6 + 32), v5, a1);

    sub_26BE2DA4C();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v35 = v6;
  sub_26BF8A868(&v35);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v8 = *(v35 + 2);
    if (v8)
    {
      v26 = &v35;
      v27 = v31 + 16;
      v25 = (&v34 + 4);
      v24[2] = 0;
      v24[3] = v31 + 8;
      v24[0] = 20 * v8 + 8;
      v24[1] = v35;
      v9 = (v35 + 40);
      v10 = 0x666666666666665;
      do
      {
        v11 = v30;
        if (!*(v30 + 16))
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
        }

        v12 = *(v9 - 2);
        v13 = *v9;
        v14 = sub_26BEBB598(v12, *v9);
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }

        v32 = v8;
        v16 = v31;
        v17 = v28;
        (*(v31 + 16))(v28, *(v11 + 56) + *(v31 + 72) * v14, v33);
        v34 = bswap64(v13);
        v18 = MEMORY[0x277D838B0];
        v37 = MEMORY[0x277D838B0];
        v38 = MEMORY[0x277CC9C18];
        v19 = v26;
        v35 = &v34;
        v36 = v26;
        __swift_project_boxed_opaque_existential_1(&v35, MEMORY[0x277D838B0]);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v35);
        LODWORD(v34) = bswap32(v12);
        v37 = v18;
        v20 = MEMORY[0x277CC9C18];
        v38 = MEMORY[0x277CC9C18];
        v35 = &v34;
        v36 = v25;
        __swift_project_boxed_opaque_existential_1(&v35, v18);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v35);
        sub_26C0091EC();
        v37 = v18;
        v38 = v20;
        v34 = bswap64(v21);
        v35 = &v34;
        v36 = v19;
        __swift_project_boxed_opaque_existential_1(&v35, v18);
        sub_26C00908C();
        (*(v16 + 8))(v17, v33);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        if (!v10)
        {
          goto LABEL_17;
        }

        v9 += 2;
        --v10;
        v8 = v32 - 1;
      }

      while (v32 != 1);
      v22 = v24[0];
    }

    else
    {
      v22 = 8;
    }

    return v22;
  }

  return result;
}

void sub_26BF8A6AC(__int128 *a1)
{
  v8 = *a1;
  v3 = MLS.Identity.Credential.serializedRepresentation.getter();
  if (!v1)
  {
    MLS.Credential.init(rawValue:)(v3, v4, &v9);
    v8 = v9;
    sub_26BE03BF4(&v8);
    v6 = v5;
    sub_26BE0489C(v8, *(&v8 + 1));
    sub_26BE108EC(a1 + 2);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }
  }
}

void sub_26BF8A748(uint64_t *a1@<X8>)
{
  sub_26BE03DC0(v8);
  if (!v1)
  {
    v3 = v8[0];
    sub_26BE10AD8(v8);
    v6 = v3;
    sub_26BE04890(v3, *(&v3 + 1));
    sub_26C006590(&v6, v7);
    sub_26BE0489C(v3, *(&v3 + 1));
    v4 = v7[0];
    v5 = v7[1];
    sub_26BE03890(v8, (a1 + 2));
    *a1 = v4;
    a1[1] = v5;
  }
}

uint64_t sub_26BF8A7FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD97EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF8A8D4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF8A868(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BF8A9CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BF8A8D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF8AC28(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BF8AAC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF8A9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BF8B204(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BF8AB94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BF8AAC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_26C00AF2C(), (result & 1) == 0))
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

uint64_t sub_26BF8AB94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v8 < *v11;
      if (v8 == *v11)
      {
        v12 = v9 < *(v11 + 8);
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BF8AC28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_26BFD9590(v8);
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
        sub_26BF8B7D0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_26C00AF2C();
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
            result = sub_26C00AF2C();
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
      result = sub_26BEEC164(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26BEEC164((v39 > 1), v40 + 1, 1, v8);
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
        sub_26BF8B7D0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BFD9590(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26BFD9504(v44);
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
    if (v37 || (result = sub_26C00AF2C(), (result & 1) == 0))
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