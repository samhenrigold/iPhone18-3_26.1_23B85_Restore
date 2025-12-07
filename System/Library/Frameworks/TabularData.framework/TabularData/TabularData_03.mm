uint64_t sub_21B255BA0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a3)
  {
    sub_21B34AD94();
  }

  v8 = sub_21B34BC24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21B25BEBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_21B34B9F4() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_21B255D28(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = a2;
  v7 = *v3;
  sub_21B34BBC4();
  if (v6 != 2)
  {
    sub_21B34BBE4();
  }

  sub_21B34BBE4();
  v8 = sub_21B34BC24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48);
      v13 = *(v12 + v10);
      if (v13 == 2)
      {
        if (v4 == 2)
        {
          result = 0;
          LOBYTE(v4) = 2;
          goto LABEL_12;
        }
      }

      else if (v4 != 2 && ((v13 ^ v4) & 1) == 0)
      {
        result = 0;
        LOBYTE(v4) = *(v12 + v10);
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  sub_21B25C078(v4, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  result = 1;
LABEL_12:
  *a1 = v4;
  return result;
}

uint64_t sub_21B255E74(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_21B34BBC4();
  if (a3)
  {
    sub_21B34BBE4();
  }

  else
  {
    sub_21B34BBE4();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEEE3F0](v8);
  }

  v9 = sub_21B34BC24();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *(v13 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = *v13;
          goto LABEL_16;
        }
      }

      else if ((a3 & 1) == 0 && *v13 == *&a2)
      {
        result = 0;
        a2 = *v13;
        goto LABEL_16;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_21B25C214(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_16:
  *a1 = *&a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_21B255FD4(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a2 & 0x100000000) == 0)
  {
    sub_21B34BC04();
  }

  v6 = sub_21B34BC24();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 48);
    do
    {
      v12 = v11 + 8 * v9;
      LOBYTE(v13) = *(v12 + 4);
      if (v13)
      {
        if ((a2 & 0x100000000) != 0)
        {
          result = 0;
          LODWORD(a2) = *v12;
          goto LABEL_12;
        }
      }

      else if ((a2 & 0x100000000) == 0 && *v12 == *&a2)
      {
        result = 0;
        LODWORD(a2) = *v12;
        goto LABEL_12;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  v13 = HIDWORD(a2) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  sub_21B25C3D0(a2 | (v13 << 32), v9, isUniquelyReferenced_nonNull_native);
  *v2 = v16;
  result = 1;
LABEL_12:
  *a1 = a2;
  *(a1 + 4) = v13;
  return result;
}

uint64_t sub_21B256130(uint64_t a1, unsigned int a2)
{
  v5 = *v2;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a2 & 0x10000) == 0)
  {
    sub_21B34BBF4();
  }

  v6 = sub_21B34BC24();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_11:
    v14 = HIWORD(a2) & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_21B25C578(a2 & 0x1FFFF, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    result = 1;
    v13 = *&a2;
    goto LABEL_12;
  }

  v10 = ~v8;
  v11 = *(v5 + 48);
  while (1)
  {
    v12 = v11 + 4 * v9;
    v13 = *v12;
    LOBYTE(v14) = *(v12 + 2);
    if ((v14 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((a2 & 0x10000) != 0 || v13 != *&a2)
  {
    goto LABEL_6;
  }

LABEL_10:
  result = 0;
LABEL_12:
  *a1 = v13;
  *(a1 + 2) = v14;
  return result;
}

uint64_t sub_21B256274(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x21CEEE3B0](a2);
  }

  v8 = sub_21B34BC24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_21B25C718(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

void *sub_21B2563C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C8, &qword_21B351CD0);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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

void *sub_21B256524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E480, &qword_21B351D78);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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

void *sub_21B256664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E210, &qword_21B351B28);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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
    v11 = *(v2 + 56);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_21B2615FC(*(v2 + 48) + v17, v21, &qword_27CD7E200, &unk_21B352050);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_21B2567FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F8, &qword_21B351B18);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_21B260DAC(v18, *(&v18 + 1));
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

void *sub_21B256958()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F0, &qword_21B351B10);
  v6 = *v0;
  v7 = sub_21B34B5D4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
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
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21B2615FC(*(v6 + 48) + v21, v5, &qword_27CD7E100, &unk_21B352A30);
        result = sub_21B260BE8(v5, *(v8 + 48) + v21);
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

        v1 = v23;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_21B256B70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D0, &qword_21B351B00);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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

void *sub_21B256CC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1C8, &qword_21B351AF8);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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

void *sub_21B256E08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B8, &qword_21B351AE8);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_21B256F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B0, &qword_21B351AE0);
  v2 = *v0;
  v3 = sub_21B34B5D4();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 2) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 2);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_21B2570B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21B34B5D4();
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
    for (i = (v11 + 63) >> 6; v13; *(v22 + 8) = v20)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = 16 * v16;
      v20 = *(v4 + 48) + v19;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v6 + 48) + v19;
      *v22 = v21;
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

uint64_t sub_21B2571F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C8, &qword_21B351CD0);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();

      sub_21B34AD94();
      result = sub_21B34BC24();
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

uint64_t sub_21B25742C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E480, &qword_21B351D78);
  result = sub_21B34B5E4();
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
      result = sub_21B34BBB4();
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

uint64_t sub_21B25761C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E210, &qword_21B351B28);
  result = sub_21B34B5E4();
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
LABEL_15:
      sub_21B2615FC(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v31, &qword_27CD7E200, &unk_21B352050);
      sub_21B34BBC4();
      sub_21B2615FC(v31, &v28, &qword_27CD7E200, &unk_21B352050);
      if (*(&v29 + 1))
      {
        v26[0] = v28;
        v26[1] = v29;
        v27 = v30;
        sub_21B34BBE4();
        sub_21B34B5C4();
        sub_21B260E14(v26);
      }

      else
      {
        sub_21B34BBE4();
      }

      result = sub_21B34BC24();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v31[0];
      v15 = v31[1];
      *(v13 + 32) = v32;
      *v13 = v14;
      *(v13 + 16) = v15;
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
        goto LABEL_29;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21B2578CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F8, &qword_21B351B18);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v18 >> 60 != 15)
      {
        sub_21B260DC0(v19, v18);
        sub_21B34A744();
      }

      result = sub_21B34BC24();
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

uint64_t sub_21B257B2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21B34A834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v36 - v10;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F0, &qword_21B351B10);
  result = sub_21B34B5E4();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v36 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v40 = (v4 + 48);
    v41 = v11;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v44 = *(v43 + 72);
      v26 = v45;
      sub_21B2615FC(v25 + v44 * (v22 | (v14 << 6)), v45, &qword_27CD7E100, &unk_21B352A30);
      sub_21B34BBC4();
      sub_21B2615FC(v26, v9, &qword_27CD7E100, &unk_21B352A30);
      v27 = v42;
      if ((*v40)(v9, 1, v42) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v28 = v39;
        (*v38)(v39, v9, v27);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
        sub_21B34AAB4();
        (*v37)(v28, v27);
      }

      result = sub_21B34BC24();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v11 = v41;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21B260BE8(v45, *(v13 + 48) + v21 * v44);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_21B257F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D0, &qword_21B351B00);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v18)
      {

        sub_21B34AD94();
      }

      result = sub_21B34BC24();
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

uint64_t sub_21B2581D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1C8, &qword_21B351AF8);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();
      if (v16 != 2)
      {
        sub_21B34BBE4();
      }

      sub_21B34BBE4();
      result = sub_21B34BC24();
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

        goto LABEL_30;
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
        goto LABEL_28;
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

uint64_t sub_21B258414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1C0, &qword_21B351AF0);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();
      if (v19 == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        sub_21B34BBE4();
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        MEMORY[0x21CEEE3F0](v20);
      }

      result = sub_21B34BC24();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21B25866C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B8, &qword_21B351AE8);
  result = sub_21B34B5E4();
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
      v17 = *(v3 + 48) + 8 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v19 != 1)
      {
        sub_21B34BC04();
      }

      result = sub_21B34BC24();
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
      v13 = *(v5 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
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

uint64_t sub_21B2588C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B0, &qword_21B351AE0);
  result = sub_21B34B5E4();
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
      v17 = *(v3 + 48) + 4 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 2);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v19 != 1)
      {
        sub_21B34BBF4();
      }

      result = sub_21B34BC24();
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
      v13 = *(v5 + 48) + 4 * v12;
      *v13 = v18;
      *(v13 + 2) = v19;
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

uint64_t sub_21B258B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1A0, &qword_21B351AD0);
  result = sub_21B34B5E4();
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
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v19 != 1)
      {
        MEMORY[0x21CEEE3B0](v18);
      }

      result = sub_21B34BC24();
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

uint64_t sub_21B258D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E480, &qword_21B351D78);
  result = sub_21B34B5E4();
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
      result = sub_21B34BBB4();
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

uint64_t sub_21B258F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E210, &qword_21B351B28);
  result = sub_21B34B5E4();
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
LABEL_15:
      v20 = *(v3 + 48) + 40 * (v17 | (v6 << 6));
      v21 = *(v20 + 32);
      v22 = *(v20 + 16);
      v36 = *v20;
      v37 = v22;
      v38 = v21;
      sub_21B34BBC4();
      sub_21B2615FC(&v36, &v33, &qword_27CD7E200, &unk_21B352050);
      if (*(&v34 + 1))
      {
        v31[0] = v33;
        v31[1] = v34;
        v32 = v35;
        sub_21B34BBE4();
        sub_21B34B5C4();
        sub_21B260E14(v31);
      }

      else
      {
        sub_21B34BBE4();
      }

      result = sub_21B34BC24();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      v15 = v36;
      v16 = v37;
      *(v14 + 32) = v38;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21B259260(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F8, &qword_21B351B18);
  result = sub_21B34B5E4();
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
      v20 = *v18;
      v19 = v18[1];
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v19 >> 60 != 15)
      {
        sub_21B34A744();
      }

      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B2594E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21B34A834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v46 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1F0, &qword_21B351B10);
  result = sub_21B34B5E4();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v3;
    v39 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v4 + 48);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = result + 56;
    v21 = v47;
    v42 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v11 + 48);
      v48 = *(v46 + 72);
      sub_21B260BE8(v26 + v48 * (v23 | (v14 << 6)), v10);
      sub_21B34BBC4();
      v27 = v10;
      sub_21B2615FC(v10, v21, &qword_27CD7E100, &unk_21B352A30);
      v28 = v45;
      if ((*v44)(v21, 1, v45) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v29 = v43;
        (*v41)(v43, v21, v28);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
        sub_21B34AAB4();
        v30 = v29;
        v11 = v42;
        (*v40)(v30, v28);
      }

      result = sub_21B34BC24();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v10 = v27;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v47;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v47;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21B260BE8(v27, *(v13 + 48) + v22 * v48);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v11 + 32);
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    v2 = v39;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_21B259974(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D0, &qword_21B351B00);
  result = sub_21B34B5E4();
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
      v20 = *v18;
      v19 = v18[1];
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v19)
      {
        sub_21B34AD94();
      }

      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B259BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1C8, &qword_21B351AF8);
  result = sub_21B34B5E4();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_21B34BBC4();
      if (v17 != 2)
      {
        sub_21B34BBE4();
      }

      sub_21B34BBE4();
      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B259E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1C0, &qword_21B351AF0);
  result = sub_21B34B5E4();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_21B34BBC4();
      if (v20 == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        sub_21B34BBE4();
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        MEMORY[0x21CEEE3F0](v21);
      }

      result = sub_21B34BC24();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21B25A0E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B8, &qword_21B351AE8);
  result = sub_21B34B5E4();
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
      v18 = *(v3 + 48) + 8 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v20 != 1)
      {
        sub_21B34BC04();
      }

      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 8 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B25A36C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1B0, &qword_21B351AE0);
  result = sub_21B34B5E4();
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
      v18 = *(v3 + 48) + 4 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 2);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v20 != 1)
      {
        sub_21B34BBF4();
      }

      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 4 * v13;
      *v14 = v19;
      *(v14 + 2) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B25A5F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1A0, &qword_21B351AD0);
  result = sub_21B34B5E4();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v20 != 1)
      {
        MEMORY[0x21CEEE3B0](v19);
      }

      result = sub_21B34BC24();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_21B25A878(uint64_t result, unint64_t a2, char a3)
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
    sub_21B258D70(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21B256524();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21B25742C(v5 + 1);
  }

  v8 = *v3;
  result = sub_21B34BBB4();
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
  result = sub_21B34BA74();
  __break(1u);
  return result;
}

uint64_t sub_21B25A998(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21B258F94(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_21B256664();
        goto LABEL_20;
      }

      sub_21B25761C(v6 + 1);
    }

    v8 = *v3;
    sub_21B34BBC4();
    sub_21B2615FC(v5, &v29, &qword_27CD7E200, &unk_21B352050);
    if (*(&v30 + 1))
    {
      v27[0] = v29;
      v27[1] = v30;
      v28 = v31;
      sub_21B34BBE4();
      sub_21B34B5C4();
      sub_21B260E14(v27);
    }

    else
    {
      sub_21B34BBE4();
    }

    result = sub_21B34BC24();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        sub_21B2615FC(*(v8 + 48) + 40 * a2, &v29, &qword_27CD7E200, &unk_21B352050);
        sub_21B2615FC(&v29, v22, &qword_27CD7E200, &unk_21B352050);
        sub_21B2615FC(v5, &v24, &qword_27CD7E200, &unk_21B352050);
        if (v23)
        {
          sub_21B2615FC(v22, v27, &qword_27CD7E200, &unk_21B352050);
          if (*(&v25 + 1))
          {
            v20[0] = v24;
            v20[1] = v25;
            v21 = v26;
            v11 = MEMORY[0x21CEEDD80](v27, v20);
            sub_21B260E14(v20);
            sub_21B261664(&v29, &qword_27CD7E200, &unk_21B352050);
            sub_21B260E14(v27);
            result = sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
            if (v11)
            {
              goto LABEL_24;
            }

            goto LABEL_14;
          }

          sub_21B261664(&v29, &qword_27CD7E200, &unk_21B352050);
          sub_21B260E14(v27);
        }

        else
        {
          sub_21B261664(&v29, &qword_27CD7E200, &unk_21B352050);
          if (!*(&v25 + 1))
          {
            goto LABEL_23;
          }
        }

        result = sub_21B261664(v22, &qword_27CD7E208, &qword_21B351B20);
LABEL_14:
        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v12 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 40 * a2;
  v14 = *v5;
  v15 = *(v5 + 16);
  *(v13 + 32) = *(v5 + 32);
  *v13 = v14;
  *(v13 + 16) = v15;
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_23:
    sub_21B261664(v22, &qword_27CD7E200, &unk_21B352050);
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E200, &unk_21B352050);
    result = sub_21B34BA74();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v18;
  }

  return result;
}

uint64_t sub_21B25AC9C(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v102 = *MEMORY[0x277D85DE8];
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_157;
  }

  if (a4)
  {
    sub_21B259260(v9 + 1);
    goto LABEL_8;
  }

  if (v10 > v9)
  {
    result = sub_21B2567FC();
LABEL_157:
    v78 = *v5;
    *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v79 = (*(v78 + 48) + 16 * a3);
    *v79 = v8;
    v79[1] = a2;
    v80 = *(v78 + 16);
    v30 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v30)
    {
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
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
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
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
    }

    *(v78 + 16) = v81;
    return result;
  }

  sub_21B2578CC(v9 + 1);
LABEL_8:
  v11 = *v4;
  sub_21B34BBC4();
  v12 = a2 >> 60;
  sub_21B34BBE4();
  if (a2 >> 60 != 15)
  {
    sub_21B34A744();
  }

  result = sub_21B34BC24();
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_157;
  }

  v94 = ~v13;
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2 == 0xC000000000000000;
  }

  v15 = !v14;
  v92 = v15;
  v16 = __OFSUB__(HIDWORD(v8), v8);
  v90 = v16;
  v93 = a2 >> 62;
  v88 = (v8 >> 32) - v8;
  v89 = v8 >> 32;
  v91 = v4;
  while (1)
  {
    v17 = (*(v11 + 48) + 16 * a3);
    v19 = *v17;
    v18 = v17[1];
    if (v18 >> 60 == 15)
    {
      if (v12 > 0xE)
      {
        goto LABEL_199;
      }

LABEL_25:
      sub_21B260DAC(v19, v18);
      sub_21B260DAC(v8, a2);
      sub_21B260C58(v19, v18);
      v20 = v8;
      v21 = a2;
LABEL_26:
      result = sub_21B260C58(v20, v21);
      goto LABEL_27;
    }

    if (v12 > 0xE)
    {
      goto LABEL_25;
    }

    v22 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = v18 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v92) & 1) == 0)
      {
        a2 = 0xC000000000000000;
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        v8 = 0;
        v19 = 0;
        goto LABEL_203;
      }

LABEL_40:
      v26 = 0;
      goto LABEL_41;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_40;
      }

      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_163;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_162;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v18);
    }

LABEL_41:
    if (v93 > 1)
    {
      if (v93 != 2)
      {
        if (v26)
        {
LABEL_66:
          sub_21B260DAC(v19, v18);
          sub_21B260DAC(v8, a2);
          sub_21B260C58(v8, a2);
          v20 = v19;
          v21 = v18;
          goto LABEL_26;
        }

LABEL_201:
        sub_21B260DAC(v19, v18);
        sub_21B260DAC(v8, a2);
LABEL_203:
        sub_21B260C58(v8, a2);
        goto LABEL_204;
      }

      v29 = *(v8 + 16);
      v28 = *(v8 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v93)
      {
        v27 = HIDWORD(v8) - v8;
        if (v90)
        {
          goto LABEL_161;
        }
      }
    }

    if (v26 != v27)
    {
      goto LABEL_66;
    }

    if (v26 < 1)
    {
      goto LABEL_201;
    }

    if (v22 > 1)
    {
      break;
    }

    if (!v22)
    {
      *__s1 = v19;
      *&__s1[8] = v18;
      __s1[10] = BYTE2(v18);
      __s1[11] = BYTE3(v18);
      __s1[12] = BYTE4(v18);
      __s1[13] = BYTE5(v18);
      if (v93)
      {
        if (v93 == 1)
        {
          if (v89 < v8)
          {
            goto LABEL_167;
          }

          sub_21B260DAC(v19, v18);
          sub_21B260DAC(v19, v18);
          sub_21B260DAC(v8, a2);
          v31 = sub_21B34A574();
          if (!v31)
          {
            goto LABEL_188;
          }

          v32 = v31;
          v33 = sub_21B34A594();
          if (__OFSUB__(v8, v33))
          {
            goto LABEL_172;
          }

          v34 = (v8 - v33 + v32);
          v35 = sub_21B34A584();
          if (!v34)
          {
            goto LABEL_187;
          }

LABEL_123:
          if (v35 >= v88)
          {
            v67 = (v8 >> 32) - v8;
          }

          else
          {
            v67 = v35;
          }

          v63 = memcmp(__s1, v34, v67);
          sub_21B260C58(v19, v18);
          sub_21B260C58(v8, a2);
          result = sub_21B260C58(v19, v18);
        }

        else
        {
          v60 = *(v8 + 16);
          v87 = *(v8 + 24);
          sub_21B260DAC(v19, v18);
          sub_21B260DAC(v19, v18);
          sub_21B260DAC(v8, a2);
          v46 = sub_21B34A574();
          if (v46)
          {
            v61 = sub_21B34A594();
            if (__OFSUB__(v60, v61))
            {
              goto LABEL_177;
            }

            v46 += v60 - v61;
          }

          v30 = __OFSUB__(v87, v60);
          v48 = &v87[-v60];
          if (v30)
          {
            goto LABEL_171;
          }

          v49 = sub_21B34A584();
          if (!v46)
          {
            goto LABEL_185;
          }

LABEL_115:
          if (v49 >= v48)
          {
            v62 = v48;
          }

          else
          {
            v62 = v49;
          }

          v63 = memcmp(__s1, v46, v62);
          sub_21B260C58(v19, v18);
          sub_21B260C58(v8, a2);
          result = sub_21B260C58(v19, v18);
          v5 = v91;
        }

        v12 = a2 >> 60;
        if (!v63)
        {
          goto LABEL_205;
        }

        goto LABEL_27;
      }

      goto LABEL_85;
    }

    if (v19 > v19 >> 32)
    {
      goto LABEL_164;
    }

    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v8, a2);
    v42 = sub_21B34A574();
    if (v42)
    {
      v43 = v42;
      v44 = sub_21B34A594();
      if (__OFSUB__(v19, v44))
      {
        goto LABEL_166;
      }

      v85 = (v19 - v44 + v43);
    }

    else
    {
      v85 = 0;
    }

    v5 = v91;
    sub_21B34A584();
    v12 = a2 >> 60;
    if (v93 == 2)
    {
      v73 = *(v8 + 16);
      v83 = *(v8 + 24);
      v53 = sub_21B34A574();
      if (v53)
      {
        v74 = sub_21B34A594();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_181;
        }

        v53 += v73 - v74;
      }

      v30 = __OFSUB__(v83, v73);
      v75 = v83 - v73;
      if (v30)
      {
        goto LABEL_176;
      }

      v76 = sub_21B34A584();
      if (v76 >= v75)
      {
        v56 = v75;
      }

      else
      {
        v56 = v76;
      }

      v57 = v85;
      if (!v85)
      {
        goto LABEL_196;
      }

      v12 = a2 >> 60;
      if (!v53)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v93 != 1)
      {
        v72 = v85;
        *__s1 = v8;
        *&__s1[8] = a2;
        __s1[10] = BYTE2(a2);
        __s1[11] = BYTE3(a2);
        __s1[12] = BYTE4(a2);
        __s1[13] = BYTE5(a2);
        if (!v85)
        {
          goto LABEL_194;
        }

LABEL_154:
        v50 = memcmp(v72, __s1, BYTE6(a2));
        sub_21B260C58(v8, a2);
        v51 = v19;
        v52 = v18;
LABEL_155:
        sub_21B260C58(v51, v52);
        result = sub_21B260C58(v19, v18);
        if (!v50)
        {
          goto LABEL_205;
        }

        goto LABEL_27;
      }

      if (v89 < v8)
      {
        goto LABEL_175;
      }

      v53 = sub_21B34A574();
      if (v53)
      {
        v58 = sub_21B34A594();
        if (__OFSUB__(v8, v58))
        {
          goto LABEL_182;
        }

        v53 += v8 - v58;
      }

      v59 = sub_21B34A584();
      v56 = (v8 >> 32) - v8;
      if (v59 < v88)
      {
        v56 = v59;
      }

      v57 = v85;
      if (!v85)
      {
        goto LABEL_198;
      }

      if (!v53)
      {
        goto LABEL_197;
      }
    }

LABEL_150:
    if (v57 == v53)
    {
      sub_21B260C58(v8, a2);
      a2 = v18;
      v8 = v19;
      goto LABEL_203;
    }

    v77 = memcmp(v57, v53, v56);
    sub_21B260C58(v8, a2);
    sub_21B260C58(v19, v18);
    result = sub_21B260C58(v19, v18);
    v5 = v91;
    if (!v77)
    {
      goto LABEL_205;
    }

LABEL_27:
    a3 = (a3 + 1) & v94;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_157;
    }
  }

  if (v22 == 2)
  {
    v38 = *(v19 + 16);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v8, a2);
    v39 = sub_21B34A574();
    if (v39)
    {
      v40 = v39;
      v41 = sub_21B34A594();
      if (__OFSUB__(v38, v41))
      {
        goto LABEL_165;
      }

      v84 = (v38 - v41 + v40);
    }

    else
    {
      v84 = 0;
    }

    v5 = v91;
    sub_21B34A584();
    v12 = a2 >> 60;
    if (v93 == 2)
    {
      v68 = *(v8 + 16);
      v82 = *(v8 + 24);
      v53 = sub_21B34A574();
      if (v53)
      {
        v69 = sub_21B34A594();
        if (__OFSUB__(v68, v69))
        {
          goto LABEL_179;
        }

        v53 += v68 - v69;
      }

      v30 = __OFSUB__(v82, v68);
      v70 = v82 - v68;
      if (v30)
      {
        goto LABEL_174;
      }

      v71 = sub_21B34A584();
      if (v71 >= v70)
      {
        v56 = v70;
      }

      else
      {
        v56 = v71;
      }

      v57 = v84;
      if (!v84)
      {
        goto LABEL_193;
      }

      v12 = a2 >> 60;
      if (!v53)
      {
        goto LABEL_192;
      }
    }

    else
    {
      if (v93 != 1)
      {
        v72 = v84;
        *__s1 = v8;
        *&__s1[8] = a2;
        __s1[10] = BYTE2(a2);
        __s1[11] = BYTE3(a2);
        __s1[12] = BYTE4(a2);
        __s1[13] = BYTE5(a2);
        if (!v84)
        {
          goto LABEL_189;
        }

        goto LABEL_154;
      }

      if (v89 < v8)
      {
        goto LABEL_169;
      }

      v53 = sub_21B34A574();
      if (v53)
      {
        v54 = sub_21B34A594();
        if (__OFSUB__(v8, v54))
        {
          goto LABEL_180;
        }

        v53 += v8 - v54;
      }

      v55 = sub_21B34A584();
      v56 = (v8 >> 32) - v8;
      if (v55 < v88)
      {
        v56 = v55;
      }

      v57 = v84;
      if (!v84)
      {
        goto LABEL_191;
      }

      if (!v53)
      {
        goto LABEL_190;
      }
    }

    goto LABEL_150;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v93)
  {
LABEL_85:
    __s2 = v8;
    v96 = a2;
    v97 = BYTE2(a2);
    v98 = BYTE3(a2);
    v99 = BYTE4(a2);
    v100 = BYTE5(a2);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v8, a2);
    v50 = memcmp(__s1, &__s2, BYTE6(a2));
    v51 = v8;
    v52 = a2;
    goto LABEL_155;
  }

  if (v93 == 2)
  {
    v45 = *(v8 + 16);
    v86 = *(v8 + 24);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v19, v18);
    sub_21B260DAC(v8, a2);
    v46 = sub_21B34A574();
    if (v46)
    {
      v47 = sub_21B34A594();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_178;
      }

      v46 += v45 - v47;
    }

    v30 = __OFSUB__(v86, v45);
    v48 = &v86[-v45];
    if (v30)
    {
      goto LABEL_170;
    }

    v49 = sub_21B34A584();
    if (!v46)
    {
      goto LABEL_186;
    }

    goto LABEL_115;
  }

  if (v89 < v8)
  {
    goto LABEL_168;
  }

  sub_21B260DAC(v19, v18);
  sub_21B260DAC(v19, v18);
  sub_21B260DAC(v8, a2);
  v64 = sub_21B34A574();
  if (v64)
  {
    v65 = v64;
    v66 = sub_21B34A594();
    if (__OFSUB__(v8, v66))
    {
      goto LABEL_173;
    }

    v34 = (v8 - v66 + v65);
    v35 = sub_21B34A584();
    if (!v34)
    {
      goto LABEL_184;
    }

    goto LABEL_123;
  }

  sub_21B34A584();
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  sub_21B34A584();
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  sub_21B260DAC(v19, v18);
  sub_21B260DAC(v8, a2);
LABEL_204:
  sub_21B260C58(v19, v18);
LABEL_205:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
  result = sub_21B34BA74();
  __break(1u);
  return result;
}

uint64_t sub_21B25B884(uint64_t a1, unint64_t a2, char a3)
{
  v58 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v48);
  v7 = &v41 - v6;
  v8 = sub_21B34A834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v46 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v57 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v43 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v42 = v17;
      sub_21B2594E4(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_21B256958();
        goto LABEL_21;
      }

      v42 = v17;
      sub_21B257B2C(v20 + 1);
    }

    v56 = *v3;
    sub_21B34BBC4();
    sub_21B2615FC(v58, v19, &qword_27CD7E100, &unk_21B352A30);
    v54 = *(v9 + 48);
    v55 = v9 + 48;
    v22 = v54(v19, 1, v8);
    v23 = v48;
    if (v22 == 1)
    {
      sub_21B34BBE4();
    }

    else
    {
      v24 = v47;
      (*(v9 + 32))(v47, v19, v8);
      sub_21B34BBE4();
      sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
      sub_21B34AAB4();
      (*(v9 + 8))(v24, v8);
    }

    v25 = sub_21B34BC24();
    v26 = -1 << *(v56 + 32);
    a2 = v25 & ~v26;
    v53 = v56 + 56;
    if ((*(v56 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v52 = ~v26;
      v45 = (v9 + 32);
      v27 = *(v46 + 72);
      v50 = (v9 + 8);
      v51 = v27;
      v44 = v16;
      do
      {
        sub_21B2615FC(*(v56 + 48) + v51 * a2, v16, &qword_27CD7E100, &unk_21B352A30);
        v34 = *(v23 + 48);
        sub_21B2615FC(v16, v7, &qword_27CD7E100, &unk_21B352A30);
        sub_21B2615FC(v58, &v7[v34], &qword_27CD7E100, &unk_21B352A30);
        v35 = v54;
        if (v54(v7, 1, v8) == 1)
        {
          sub_21B261664(v16, &qword_27CD7E100, &unk_21B352A30);
          if (v35(&v7[v34], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_21B2615FC(v7, v57, &qword_27CD7E100, &unk_21B352A30);
          if (v35(&v7[v34], 1, v8) != 1)
          {
            v28 = &v7[v34];
            v29 = v8;
            v30 = v57;
            v31 = v47;
            (*v45)(v47, v28, v29);
            sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
            v49 = sub_21B34AC54();
            v32 = *v50;
            v16 = v44;
            (*v50)(v31, v29);
            sub_21B261664(v16, &qword_27CD7E100, &unk_21B352A30);
            v33 = v30;
            v8 = v29;
            v32(v33, v29);
            v23 = v48;
            sub_21B261664(v7, &qword_27CD7E100, &unk_21B352A30);
            if (v49)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_21B261664(v16, &qword_27CD7E100, &unk_21B352A30);
          (*v50)(v57, v8);
        }

        sub_21B261664(v7, &qword_27CD7E1D8, &qword_21B351B08);
LABEL_14:
        a2 = (a2 + 1) & v52;
      }

      while (((*(v53 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v36 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21B260BE8(v58, *(v36 + 48) + *(v46 + 72) * a2);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
LABEL_24:
    sub_21B261664(v7, &qword_27CD7E100, &unk_21B352A30);
LABEL_25:
    result = sub_21B34BA74();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

uint64_t sub_21B25BEBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_21B259974(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_21B256B70();
      goto LABEL_22;
    }

    sub_21B257F84(v9 + 1);
  }

  v11 = *v4;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a2)
  {
    sub_21B34AD94();
  }

  result = sub_21B34BC24();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_21B34B9F4(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
            result = sub_21B34BA74();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_21B25C078(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_21B259BF0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21B256CC8();
      a2 = v7;
      goto LABEL_18;
    }

    sub_21B2581D8(v5 + 1);
  }

  v8 = *v3;
  sub_21B34BBC4();
  if (v4 != 2)
  {
    sub_21B34BBE4();
  }

  sub_21B34BBE4();
  result = sub_21B34BC24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      if (v11 == 2)
      {
        if (v4 == 2)
        {
          goto LABEL_17;
        }
      }

      else if (v4 != 2 && ((v11 ^ v4) & 1) == 0)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
        result = sub_21B34BA74();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_21B25C214(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = *&result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_21B259E5C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      *&result = COERCE_DOUBLE(sub_21B2570B0(&qword_27CD7E1C0, &qword_21B351AF0));
      a3 = v9;
      goto LABEL_22;
    }

    sub_21B258414(v7 + 1);
  }

  v10 = *v4;
  sub_21B34BBC4();
  if (a2)
  {
    sub_21B34BBE4();
  }

  else
  {
    sub_21B34BBE4();
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0.0;
    }

    MEMORY[0x21CEEE3F0](*&v11);
  }

  *&result = COERCE_DOUBLE(sub_21B34BC24());
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if (a2)
        {
          goto LABEL_21;
        }
      }

      else if ((a2 & 1) == 0 && *v14 == v6)
      {
LABEL_21:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
        *&result = COERCE_DOUBLE(sub_21B34BA74());
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v6;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_21B25C3D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_21B25A0E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21B256E08();
      a2 = v7;
      goto LABEL_18;
    }

    sub_21B25866C(v5 + 1);
  }

  v8 = *v3;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((v4 & 0x100000000) == 0)
  {
    sub_21B34BC04();
  }

  result = sub_21B34BC24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(v8 + 48) + 8 * a2;
      if (*(v11 + 4))
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_17;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *v11 == *&v4)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
        result = sub_21B34BA74();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 8 * a2;
  *v13 = v4;
  *(v13 + 4) = BYTE4(v4) & 1;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

uint64_t sub_21B25C578(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_21B25A36C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21B256F5C();
      a2 = v7;
      goto LABEL_18;
    }

    sub_21B2588C4(v5 + 1);
  }

  v8 = *v3;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((v4 & 0x10000) == 0)
  {
    sub_21B34BBF4();
  }

  result = sub_21B34BC24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(v8 + 48) + 4 * a2;
      if (*(v11 + 2))
      {
        if ((v4 & 0x10000) != 0)
        {
          goto LABEL_17;
        }
      }

      else if ((v4 & 0x10000) == 0 && *v11 == *&v4)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1A8, &qword_21B351AD8);
        result = sub_21B34BA74();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 4 * a2;
  *v13 = v4;
  *(v13 + 2) = BYTE2(v4) & 1;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

uint64_t sub_21B25C718(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    sub_21B25A5F4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21B2570B0(&qword_27CD7E1A0, &qword_21B351AD0);
      a3 = v9;
      goto LABEL_18;
    }

    sub_21B258B1C(v7 + 1);
  }

  v10 = *v4;
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x21CEEE3B0](v6);
  }

  result = sub_21B34BC24();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      if (*(v13 + 8))
      {
        if (a2)
        {
          goto LABEL_17;
        }
      }

      else if ((a2 & 1) == 0 && *v13 == v6)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
        result = sub_21B34BA74();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_18:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v6;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_21B25C8CC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v13 = a1[2];

  if (!v13)
  {
    return swift_bridgeObjectRelease_n();
  }

  v14 = a3 <= a2 ? a2 : a3;
  if (a2 == a3)
  {
    return swift_bridgeObjectRelease_n();
  }

  if (a3 < a2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v48 = a2 - a3;
  if (a2 >= a3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v46 = v14;
  v6 = a1[4];
  v5 = a1[5];
  v16 = *a5;

  v13 = sub_21B24B5D0(v6, v5, MEMORY[0x277D83758], sub_21B24FDE4);
  v18 = v16[2];
  v19 = (v17 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = v17;
  if (v16[3] >= v20)
  {
    if (a4)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

LABEL_20:
    sub_21B25201C();
    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v23 = swift_allocError();
    swift_willThrow();
    MEMORY[0x21CEEE850](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      return MEMORY[0x21CEEE840](v23);
    }

    goto LABEL_39;
  }

  sub_21B24BE68(v20, a4 & 1);
  v21 = sub_21B24B5D0(v6, v5, MEMORY[0x277D83758], sub_21B24FDE4);
  if ((v7 & 1) != (v22 & 1))
  {
LABEL_38:
    sub_21B34BA84();
    __break(1u);
LABEL_39:
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34C6D0);
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](39, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v13 = v21;
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_21:
  v24 = *a5;
  *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v25 = (v24[6] + 16 * v13);
  *v25 = v6;
  v25[1] = v5;
  *(v24[7] + 8 * v13) = a2;
  v26 = v24[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24[2] = v28;
  v29 = a1[2];
  if (v29 != 1)
  {
    v47 = v46 - a2;
    v30 = a1 + 7;
    v31 = 1;
    while (v31 < v29)
    {
      if (!(v48 + v31))
      {
        return swift_bridgeObjectRelease_n();
      }

      if (v47 == v31)
      {
        goto LABEL_34;
      }

      v33 = *(v30 - 1);
      v32 = *v30;
      v34 = *a5;

      v35 = sub_21B24B5D0(v33, v32, MEMORY[0x277D83758], sub_21B24FDE4);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v27 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v27)
      {
        goto LABEL_35;
      }

      v40 = v36;
      if (v34[3] < v39)
      {
        sub_21B24BE68(v39, 1);
        v35 = sub_21B24B5D0(v33, v32, MEMORY[0x277D83758], sub_21B24FDE4);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_38;
        }
      }

      if (v40)
      {
        goto LABEL_17;
      }

      v42 = *a5;
      *(*a5 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v43 = (v42[6] + 16 * v35);
      *v43 = v33;
      v43[1] = v32;
      *(v42[7] + 8 * v35) = a2 + v31;
      v44 = v42[2];
      v27 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      ++v31;
      v42[2] = v45;
      v29 = a1[2];
      v30 += 2;
      if (v31 == v29)
      {
        return swift_bridgeObjectRelease_n();
      }
    }

    goto LABEL_37;
  }

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_21B25CD54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21B25CE1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = *v7;
  v11 = *v7 + 32;
  v12 = (v11 + 16 * result);
  v13 = &v12[2 * a3];
  if (!v9)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v15 = __OFSUB__(v14, a2);
  v16 = v14 - a2;
  if (v15)
  {
    goto LABEL_22;
  }

  v17 = (v11 + 16 * a2);
  if (v13 != v17 || v13 >= v17 + 16 * v16)
  {
    v19 = a3;
    v20 = a7;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    result = memmove(&v12[2 * a3], v17, 16 * v16);
    a3 = v19;
    a4 = v23;
    a5 = v22;
    a6 = v21;
    a7 = v20;
  }

  v24 = *(v10 + 16);
  v15 = __OFADD__(v24, v9);
  v25 = v24 + v9;
  if (v15)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v25;
LABEL_13:
  if (a3 >= 1)
  {
    for (i = 0; ; ++i)
    {
      v27 = a6;
      v28 = a7;
      if (i != 1)
      {
        v27 = a4;
        v28 = a5;
        if (i)
        {
          break;
        }
      }

      *v12 = v27;
      v12[1] = v28;
      v12 += 2;
      if (v12 >= v13)
      {
        return result;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

unint64_t sub_21B25CF84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_21B261664(a4, &qword_27CD7E4D0, &qword_21B351D88);
  }

  result = sub_21B233A74(a4, v10);
  if (a3 == 1)
  {
    return sub_21B261664(a4, &qword_27CD7E4D0, &qword_21B351D88);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21B25D08C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21B2643B0(v12, v13);

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
        return result;
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

  return result;
}

uint64_t sub_21B25D1B8(uint64_t a1, uint64_t a2)
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
    sub_21B34BBC4();

    sub_21B34AD94();
    v23 = sub_21B34BC24();
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
    if (v26 || (sub_21B34B9F4() & 1) != 0)
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
        v5 = sub_21B25D960(v58, v54, v56, v5);
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
            sub_21B34BBC4();

            sub_21B34AD94();
            v41 = sub_21B34BC24();
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
            while ((sub_21B34B9F4() & 1) == 0)
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
  v52 = sub_21B25D728(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x21CEEEA30](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21B26139C(v13);
    return v5;
  }

  MEMORY[0x21CEEE840](v51);
  result = MEMORY[0x21CEEEA30](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_21B25D728(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_21B25D960(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21B34BBC4();

        sub_21B34AD94();
        v19 = sub_21B34BC24();
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
        while ((sub_21B34B9F4() & 1) == 0)
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

uint64_t sub_21B25D960(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C8, &qword_21B351CD0);
  result = sub_21B34B5F4();
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
    sub_21B34BBC4();

    sub_21B34AD94();
    result = sub_21B34BC24();
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

unint64_t sub_21B25DB84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B25DC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
    v3 = sub_21B34B894();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B24B5D0(v5, v6, MEMORY[0x277D83758], sub_21B24FDE4);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21B25DD98()
{
  result = qword_27CD7E0D8;
  if (!qword_27CD7E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0D0, &qword_21B351970);
    sub_21B25DE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E0D8);
  }

  return result;
}

unint64_t sub_21B25DE24()
{
  result = qword_27CD7E0E0;
  if (!qword_27CD7E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E0E0);
  }

  return result;
}

uint64_t sub_21B25DE78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEED8D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21B233D18(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_21B25DF10(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4E0, &qword_21B351D98);
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
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B25DFE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
  v3 = swift_allocObject();
  sub_21B249160(v2, &v35);
  v33 = v3;
  v31 = v35;
  *(v3 + 16) = v35;
  result = swift_beginAccess();
  if (!v2)
  {
    return v33;
  }

  v5 = 0;
  v6 = v31;
  v32 = a1 + 40;
  while (2)
  {
    v7 = v5;
    for (i = (v32 + 16 * v5); ; i += 2)
    {
      if (v7 >= v2)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_35;
      }

      if (!v6)
      {
        goto LABEL_41;
      }

      v9 = *(i - 1);
      result = *i;
      v11 = *v6;
      v10 = v6[1];
      if (v10 >= *v6)
      {
        break;
      }

      if (result)
      {
        v12 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
          goto LABEL_37;
        }

        if (v12 < 0)
        {
          v12 = v11 + 14;
        }

        v13 = v12 >> 3;
        v15 = v13 - 1;
        v14 = v13 < 1;
        v16 = v13 + 62;
        if (!v14)
        {
          v16 = v15;
        }

        v17 = (&v6[2 * v10 + 16] + (v16 & 0xFFFFFFFFFFFFFFC0));
        *v17 = v9;
        v17[1] = result;
        v18 = v6[1];
        v19 = v18 + 7;
        if (v18 >= 0)
        {
          v19 = v6[1];
        }

        v20 = v18 - (v19 & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0)
        {
          v21 = 1 << v20;
        }

        else
        {
          v21 = 0;
        }

        *(v6 + (v19 >> 3) + 64) |= v21;
        v22 = v6[1];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v25 = v6[2];
        v23 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v23)
        {
          goto LABEL_38;
        }

        v6[2] = v26;
        v23 = __OFADD__(v10, 1);
        v24 = v10 + 1;
        if (v23)
        {
          goto LABEL_36;
        }
      }

      v6[1] = v24;

      ++v7;
      if (v5 == v2)
      {
        return v33;
      }
    }

    v23 = __OFADD__(v10, 1);
    v27 = v10 + 1;
    if (v23)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v11 < v27)
    {
      if (v11 + 0x4000000000000000 >= 0)
      {
        if (2 * v11 <= v27)
        {
          v11 = v27;
        }

        else
        {
          v11 *= 2;
        }

        goto LABEL_32;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

LABEL_32:
    v28 = *(v33 + 16);
    v29 = *i;

    sub_21B2AFD1C(v28, v11, v34);
    sub_21B2B0954(*(v33 + 16));
    v6 = v34[0];
    v30 = v34[1];
    *(v33 + 16) = v34[0];
    *(v33 + 24) = v30;
    sub_21B22EEB8(v9, v29, v6);

    if (v5 != v2)
    {
      continue;
    }

    return v33;
  }
}

void sub_21B25E224(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v30);
  v28 = v30;
  *(v3 + 16) = v30;
  swift_beginAccess();
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v5 = v28;
  v6 = a1 + 40;
  while (2)
  {
    for (i = (v6 + 16 * v4); ; i += 16)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        goto LABEL_41;
      }

      v9 = *(i - 1);
      v10 = *i;
      v11 = *v5;
      v12 = v5[1];
      if (v12 >= *v5)
      {
        break;
      }

      if (*i)
      {
        v13 = v5[2];
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_36;
        }

        v5[2] = v15;
      }

      else
      {
        v16 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
          goto LABEL_37;
        }

        if (v16 < 0)
        {
          v16 = v11 + 14;
        }

        v17 = v16 >> 3;
        v19 = v17 - 1;
        v18 = v17 < 1;
        v20 = v17 + 62;
        if (!v18)
        {
          v20 = v19;
        }

        *(&v5[v12 + 16] + (v20 & 0xFFFFFFFFFFFFFFC0)) = v9;
        v21 = v12 / 8;
        v22 = v12 - (v20 & 0xFFFFFFFFFFFFFFF8);
        if (v22 >= 0)
        {
          v23 = 1 << v22;
        }

        else
        {
          v23 = 0;
        }

        *(v5 + v21 + 64) |= v23;
        v12 = v5[1];
      }

      v14 = __OFADD__(v12, 1);
      v24 = v12 + 1;
      if (v14)
      {
        goto LABEL_35;
      }

      v5[1] = v24;
      ++v4;
      if (v8 == v2)
      {
        return;
      }
    }

    v25 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v11 >= v25)
    {
      goto LABEL_29;
    }

    if (v11 + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    if (2 * v11 <= v25)
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 *= 2;
    }

LABEL_29:
    v26 = *(v3 + 16);
    sub_21B235334(v26, v11, v29);
    if (!v26)
    {
LABEL_42:
      __break(1u);
      return;
    }

    if ((*(v26 + 8) & 0x8000000000000000) != 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    MEMORY[0x21CEEEA30](v26, -1, -1);
    v5 = v29[0];
    v27 = v29[1];
    *(v3 + 16) = v29[0];
    *(v3 + 24) = v27;
    sub_21B2B0F30(v9, v10, v5);
    v4 = v8;
    if (v8 != v2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_21B25E44C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0940(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B25E66C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E320, &qword_21B351C38);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0E44(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B25E88C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E338, &qword_21B351C50);
  v3 = swift_allocObject();
  sub_21B2492E8(v2, &v37);
  v35 = v3;
  v33 = v37;
  *(v3 + 16) = v37;
  result = swift_beginAccess();
  if (!v2)
  {
    return v35;
  }

  v5 = 0;
  v6 = v33;
  v34 = a1 + 48;
  while (2)
  {
    v7 = (v34 + 24 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v6)
      {
        goto LABEL_39;
      }

      result = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v12 = *v6;
      v11 = v6[1];
      if (v11 >= *v6)
      {
        break;
      }

      if (result)
      {
        v13 = v12 + 7;
        if (__OFADD__(v12, 7))
        {
          goto LABEL_35;
        }

        if (v13 < 0)
        {
          v13 = v12 + 14;
        }

        v14 = v13 >> 3;
        v16 = v14 - 1;
        v15 = v14 < 1;
        v17 = v14 + 62;
        if (!v15)
        {
          v17 = v16;
        }

        v18 = &v6[3 * v11 + 16] + (v17 & 0xFFFFFFFFFFFFFFC0);
        *v18 = result;
        *(v18 + 8) = v9;
        *(v18 + 16) = v10;
        v19 = v11 / 8;
        v20 = v11 - (v18 & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0)
        {
          v21 = 1 << v20;
        }

        else
        {
          v21 = 0;
        }

        *(v6 + v19 + 64) |= v21;
        v22 = v6[1];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v25 = v6[2];
        v23 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v23)
        {
          goto LABEL_36;
        }

        v6[2] = v26;
        v23 = __OFADD__(v11, 1);
        v24 = v11 + 1;
        if (v23)
        {
          goto LABEL_34;
        }
      }

      v6[1] = v24;
      result = sub_21B260EC4(result, v9, v10);
      v7 += 3;
      if (v5 == v2)
      {
        return v35;
      }
    }

    v23 = __OFADD__(v11, 1);
    v27 = v11 + 1;
    if (v23)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v12 < v27)
    {
      if (v12 + 0x4000000000000000 >= 0)
      {
        if (2 * v12 <= v27)
        {
          v12 = v27;
        }

        else
        {
          v12 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v28 = *(v35 + 16);
    v29 = *(v7 - 2);
    v30 = *(v7 - 1);
    v31 = v10;
    sub_21B260EC4(result, v9, v10);
    sub_21B2B0554(v28, v12, v36);
    sub_21B2B0D4C(*(v35 + 16));
    v6 = v36[0];
    v32 = v36[1];
    *(v35 + 16) = v36[0];
    *(v35 + 24) = v32;
    sub_21B2B14B8(v29, v30, v31, v6);
    result = sub_21B260F10(v29, v30, v31);
    if (v5 != v2)
    {
      continue;
    }

    return v35;
  }
}

uint64_t sub_21B25EAF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E358, &qword_21B351C68);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0D38(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B25ED10(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E360, &qword_21B351C70);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0D24(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B25EF30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEED8D0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_21B254588(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_21B25F054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E220, &qword_21B351B38);
    v3 = sub_21B34B894();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B2615FC(v4, v13, &qword_27CD7E228, &qword_21B351B40);
      result = sub_21B24B560(v13);
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
      *(v3[7] + 8 * result) = v15;
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

unint64_t sub_21B25F17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E398, &qword_21B351CA8);
    v3 = sub_21B34B894();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21B24B5D0(v5, v6, MEMORY[0x277D83758], sub_21B24FDE4);
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

unint64_t sub_21B25F2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F0, &qword_21B351C08);
    v3 = sub_21B34B894();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_21B24B884(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_21B25F3A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D8, &qword_21B351BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C0, &qword_21B351BD8);
    v7 = sub_21B34B894();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B2615FC(v9, v5, &qword_27CD7E2D8, &qword_21B351BF0);
      result = sub_21B24B8F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
      result = sub_21B260BE8(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B25F580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A8, &qword_21B351BC0);
    v3 = sub_21B34B894();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21B260DAC(v5, v6);
      result = sub_21B24BAEC(v5, v6);
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

unint64_t sub_21B25F680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E290, &qword_21B351BA8);
    v3 = sub_21B34B894();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_21B24BB88(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B25F788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E260, &qword_21B351B78);
    v3 = sub_21B34B894();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v7 = *i;
      v6 = *(i - 4);
      result = sub_21B24BCA8(v5 | (v6 << 32));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 8 * result;
      *v10 = v5;
      *(v10 + 4) = v6;
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

unint64_t sub_21B25F888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E248, &qword_21B351B60);
    v3 = sub_21B34B894();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21B24BD44(v5, v6);
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

unint64_t sub_21B25F9AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_21B34B894();
    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 8);
      v11 = *i;
      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 16 * result;
      *v14 = v9;
      *(v14 + 8) = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B25FAA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a3;
  v5 = 0;
  v6 = result + 56;
  v7 = MEMORY[0x277D84F90];
  v25 = result + 56;
  do
  {
    v26 = v7;
    v8 = (v6 + 32 * v5);
    v9 = v5;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (*(*a2 + 16) <= v4)
      {
        goto LABEL_27;
      }

      v10 = v3;
      v11 = *(v8 - 2);
      v29 = *(v8 - 3);
      v12 = *v8;
      v31 = v9 + 1;
      v32 = *(v8 - 1);
      sub_21B233A74(*a2 + 40 * v4 + 32, v33);
      v14 = v34;
      v13 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v15 = *(v13 + 8);
      v16 = *(v15 + 8);
      v30 = v11;

      v17 = v16(v14, v15);
      v19 = v18;
      sub_21B233960(v33);
      if (v32 == v17 && v12 == v19)
      {
        break;
      }

      v21 = sub_21B34B9F4();

      v3 = v10;
      if (v21)
      {
        goto LABEL_16;
      }

      ++v9;
      v8 += 4;
      v4 = a3;
      if (v31 == v10)
      {
        return v26;
      }
    }

    v3 = v10;
LABEL_16:
    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v26;
    v36 = v26;
    v4 = a3;
    if ((result & 1) == 0)
    {
      result = sub_21B254054(0, *(v26 + 16) + 1, 1);
      v7 = v36;
    }

    v6 = v25;
    v5 = v31;
    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_21B254054((v22 > 1), v23 + 1, 1);
      v7 = v36;
    }

    *(v7 + 16) = v23 + 1;
    v24 = (v7 + 32 * v23);
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v32;
    v24[7] = v12;
  }

  while (v31 != v3);
  return v7;
}

uint64_t sub_21B25FCFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEEEA30);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21B25FE24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_21B233D18(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_21B25FEE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E498, &unk_21B354490);
  v3 = swift_allocObject();
  sub_21B249224(v2, &v30);
  v28 = v30;
  *(v3 + 16) = v30;
  swift_beginAccess();
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v5 = v28;
  v6 = a1 + 36;
  while (2)
  {
    for (i = (v6 + 8 * v4); ; i += 8)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        goto LABEL_41;
      }

      v9 = *(i - 1);
      v10 = *i;
      v11 = *v5;
      v12 = v5[1];
      if (v12 >= *v5)
      {
        break;
      }

      if (*i)
      {
        v13 = v5[2];
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_36;
        }

        v5[2] = v15;
      }

      else
      {
        v16 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
          goto LABEL_37;
        }

        if (v16 < 0)
        {
          v16 = v11 + 14;
        }

        v17 = v16 >> 3;
        v19 = v17 - 1;
        v18 = v17 < 1;
        v20 = v17 + 62;
        if (!v18)
        {
          v20 = v19;
        }

        *(v5 + 4 * v12 + (v20 & 0xFFFFFFFFFFFFFFC0) + 128) = v9;
        v21 = v12 / 8;
        v22 = v12 - (v20 & 0xFFFFFFFFFFFFFFF8);
        if (v22 >= 0)
        {
          v23 = 1 << v22;
        }

        else
        {
          v23 = 0;
        }

        *(v5 + v21 + 64) |= v23;
        v12 = v5[1];
      }

      v14 = __OFADD__(v12, 1);
      v24 = v12 + 1;
      if (v14)
      {
        goto LABEL_35;
      }

      v5[1] = v24;
      ++v4;
      if (v8 == v2)
      {
        return;
      }
    }

    v25 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v11 >= v25)
    {
      goto LABEL_29;
    }

    if (v11 + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    if (2 * v11 <= v25)
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 *= 2;
    }

LABEL_29:
    v26 = *(v3 + 16);
    sub_21B2B0360(v26, v11, v29);
    if (!v26)
    {
LABEL_42:
      __break(1u);
      return;
    }

    if ((*(v26 + 8) & 0x8000000000000000) != 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    MEMORY[0x21CEEEA30](v26, -1, -1);
    v5 = v29[0];
    v27 = v29[1];
    *(v3 + 16) = v29[0];
    *(v3 + 24) = v27;
    LOBYTE(v29[0]) = v10;
    sub_21B2B1400(v9 | (v10 << 32), v5);
    v4 = v8;
    if (v8 != v2)
    {
      continue;
    }

    break;
  }
}

void sub_21B260114(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
  v3 = swift_allocObject();
  sub_21B233E68(v2, &v28);
  v26 = v28;
  *(v3 + 16) = v28;
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = v26;
    while (v4 < v2)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_33;
      }

      if (!v6)
      {
        goto LABEL_40;
      }

      v8 = *(v5 + v4);
      v9 = *v6;
      v10 = v6[1];
      if (v10 >= *v6)
      {
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_37;
        }

        if (v9 < v23)
        {
          if (v9 + 0x4000000000000000 < 0)
          {
            goto LABEL_39;
          }

          if (2 * v9 <= v23)
          {
            v9 = v10 + 1;
          }

          else
          {
            v9 *= 2;
          }
        }

        v24 = *(v3 + 16);
        sub_21B2B0190(v24, v9, v27);
        if (!v24)
        {
          goto LABEL_41;
        }

        if ((*(v24 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        MEMORY[0x21CEEEA30](v24, -1, -1);
        v6 = v27[0];
        v25 = v27[1];
        *(v3 + 16) = v27[0];
        *(v3 + 24) = v25;
        sub_21B2B133C(v8, v6);
        v4 = v7;
        if (v7 == v2)
        {
          return;
        }
      }

      else
      {
        if (v8 == 2)
        {
          v11 = v6[2];
          v12 = __OFADD__(v11, 1);
          v13 = v11 + 1;
          if (v12)
          {
            goto LABEL_35;
          }

          v6[2] = v13;
        }

        else
        {
          v14 = v9 + 7;
          if (__OFADD__(v9, 7))
          {
            goto LABEL_36;
          }

          if (v14 < 0)
          {
            v14 = v9 + 14;
          }

          v15 = v14 >> 3;
          v17 = v15 - 1;
          v16 = v15 < 1;
          v18 = v15 + 62;
          if (!v16)
          {
            v18 = v17;
          }

          *(v6 + (v18 & 0xFFFFFFFFFFFFFFC0) + v10 + 128) = v8 & 1;
          v19 = v10 / 8;
          v20 = v10 - (v18 & 0xFFFFFFFFFFFFFFF8);
          if (v20 >= 0)
          {
            v21 = 1 << v20;
          }

          else
          {
            v21 = 0;
          }

          *(v6 + v19 + 64) |= v21;
          v10 = v6[1];
        }

        v12 = __OFADD__(v10, 1);
        v22 = v10 + 1;
        if (v12)
        {
          goto LABEL_34;
        }

        v6[1] = v22;
        ++v4;
        if (v7 == v2)
        {
          return;
        }
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
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_21B26032C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
  v3 = swift_allocObject();
  sub_21B249160(v2, &v30);
  v28 = v30;
  *(v3 + 16) = v30;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v28;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
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
        goto LABEL_36;
      }

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      if (!v7)
      {
        goto LABEL_38;
      }

      v9 = *(v6 + 16 * i);
      v11 = *v7;
      v10 = v7[1];
      if (v10 >= *v7)
      {
        break;
      }

      if (*(&v9 + 1) >> 60 == 15)
      {
        v12 = v7[2];
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_35;
        }

        v7[2] = v14;
      }

      else
      {
        v15 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
          goto LABEL_34;
        }

        if (v15 < 0)
        {
          v15 = v11 + 14;
        }

        v16 = v15 >> 3;
        v18 = v16 - 1;
        v17 = v16 < 1;
        v19 = v16 + 62;
        if (!v17)
        {
          v19 = v18;
        }

        *(&v7[2 * v10 + 16] + (v19 & 0xFFFFFFFFFFFFFFC0)) = v9;
        v20 = v10 / 8;
        v21 = v10 - (v19 & 0xFFFFFFFFFFFFFFF8);
        if (v21 >= 0)
        {
          v22 = 1 << v21;
        }

        else
        {
          v22 = 0;
        }

        *(v7 + v20 + 64) |= v22;
        v10 = v7[1];
      }

      v13 = __OFADD__(v10, 1);
      v23 = v10 + 1;
      if (v13)
      {
        goto LABEL_33;
      }

      v7[1] = v23;
      result = sub_21B260DAC(v9, *(&v9 + 1));
      if (v5 == v2)
      {
        return v3;
      }
    }

    v13 = __OFADD__(v10, 1);
    v24 = v10 + 1;
    if (v13)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v11 < v24)
    {
      if (v11 + 0x4000000000000000 >= 0)
      {
        if (2 * v11 <= v24)
        {
          v11 = v24;
        }

        else
        {
          v11 *= 2;
        }

        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

LABEL_29:
    v25 = *(v3 + 16);
    v26 = *(v6 + 16 * i);
    sub_21B260DAC(v9, *(&v9 + 1));
    sub_21B2AFD1C(v25, v11, v29);
    sub_21B2B0B34(*(v3 + 16));
    v7 = v29[0];
    v27 = v29[1];
    *(v3 + 16) = v29[0];
    *(v3 + 24) = v27;
    sub_21B2B127C(v26, *(&v26 + 1), v7);
    result = sub_21B260C58(v26, *(&v26 + 1));
    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B260568(uint64_t a1)
{
  v53 = sub_21B34A834();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
  v11 = swift_allocObject();
  sub_21B249084(v10, &v56);
  v54 = v56;
  *(v11 + 16) = v56;
  swift_beginAccess();
  if (!v10)
  {
    return v11;
  }

  v51 = (v50 + 48);
  v48 = v50 + 16;
  v49 = (v50 + 32);
  v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v13 = *(v4 + 72);
  v14 = v54;
  v15 = &qword_27CD7E100;
  v16 = &unk_21B352A30;
  *&v54 = v9;
  v46 = v13;
  v47 = v50 + 8;
  v45 = v7;
  while (1)
  {
    v18 = v15;
    v19 = v16;
    result = sub_21B2615FC(v12, v9, v15, v16);
    if (!v14)
    {
      break;
    }

    v21 = *v14;
    v22 = v14[1];
    if (v22 >= *v14)
    {
      v24 = __OFADD__(v22, 1);
      v26 = v22 + 1;
      if (v24)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      if (v21 < v26)
      {
        if (v21 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        if (2 * v21 <= v26)
        {
          v21 = v26;
        }

        else
        {
          v21 *= 2;
        }
      }

      sub_21B2AFF0C(*(v11 + 16), v21, v55);
      sub_21B2B0A2C(*(v11 + 16));
      v14 = v55[0];
      v17 = v55[1];
      *(v11 + 16) = v55[0];
      *(v11 + 24) = v17;
      sub_21B2B1010(v9, v14);
    }

    else
    {
      sub_21B2615FC(v9, v7, v18, v19);
      if ((*v51)(v7, 1, v53) == 1)
      {
        result = sub_21B261664(v7, v18, v19);
        v23 = v14[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_33;
        }

        v14[2] = v25;
      }

      else
      {
        result = (*v49)(v52, v7, v53);
        v27 = *v14 + 7;
        if (__OFADD__(*v14, 7))
        {
          goto LABEL_32;
        }

        v29 = v52;
        v28 = v53;
        v30 = v14 + 8;
        if (v27 < 0)
        {
          v27 = *v14 + 14;
        }

        v31 = v27 >> 3;
        v33 = v31 - 1;
        v32 = v31 < 1;
        v34 = v31 + 62;
        if (!v32)
        {
          v34 = v33;
        }

        v35 = v50;
        (*(v50 + 16))(v30 + (v34 & 0xFFFFFFFFFFFFFFC0) + *(v50 + 72) * v14[1] + 64, v52, v53);
        v36 = v14[1];
        v37 = v36 + 7;
        if (v36 >= 0)
        {
          v37 = v14[1];
        }

        v38 = v36 - (v37 & 0xFFFFFFFFFFFFFFF8);
        if (v38 >= 0)
        {
          v39 = 1 << v38;
        }

        else
        {
          v39 = 0;
        }

        *(v30 + (v37 >> 3)) |= v39;
        v40 = v29;
        v41 = *(v35 + 8);
        v7 = v45;
        v13 = v46;
        result = v41(v40, v28);
      }

      v42 = v14[1];
      v24 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      v9 = v54;
      if (v24)
      {
        goto LABEL_31;
      }

      v14[1] = v43;
    }

    sub_21B261664(v9, v18, v19);
    v16 = v19;
    v15 = v18;
    v9 = v54;
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B260990(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C0, &qword_21B351D80);
  v3 = swift_allocObject();
  sub_21B2493B0(v2, v30);
  v26 = *&v30[0];
  *(v3 + 16) = v30[0];
  swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v4 = a1 + 32;
  v5 = v26;
  while (1)
  {
    result = sub_21B2615FC(v4, v30, &qword_27CD7E0F8, &unk_21B3557C0);
    if (!v5)
    {
      break;
    }

    v8 = *v5;
    v9 = v5[1];
    if (v9 >= *v5)
    {
      v20 = __OFADD__(v9, 1);
      v21 = v9 + 1;
      if (v20)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      if (v8 < v21 && v8 + 0x4000000000000000 < 0)
      {
        goto LABEL_31;
      }

      sub_21B2B4368();
      sub_21B2B436C();
      v6 = *(&v29[0] + 1);
      v5 = *&v29[0];
      *(v3 + 16) = *&v29[0];
      *(v3 + 24) = v6;
      sub_21B2B0FE8(v30, v5, v6);
    }

    else
    {
      sub_21B2615FC(v30, &v27, &qword_27CD7E0F8, &unk_21B3557C0);
      if (v28)
      {
        result = sub_21B235934(&v27, v29);
        v10 = *v5 + 7;
        if (__OFADD__(*v5, 7))
        {
          goto LABEL_30;
        }

        v11 = v5 + 8;
        if (v10 < 0)
        {
          v10 = *v5 + 14;
        }

        v12 = v10 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        sub_21B2616C4(v29, &v11[4 * v5[1] + 8] + (v15 & 0xFFFFFFFFFFFFFFC0));
        v16 = v5[1];
        v17 = v16 + 7;
        if (v16 >= 0)
        {
          v17 = v5[1];
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        *(v11 + (v17 >> 3)) |= v19;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
      }

      else
      {
        result = sub_21B261664(&v27, &qword_27CD7E0F8, &unk_21B3557C0);
        v22 = v5[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_32;
        }

        v5[2] = v23;
      }

      v24 = v5[1];
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_29;
      }

      v5[1] = v25;
    }

    sub_21B261664(v30, &qword_27CD7E0F8, &unk_21B3557C0);
    v4 += 32;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B260BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B260C58(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B234324(result, a2);
  }

  return result;
}

unint64_t sub_21B260C7C()
{
  result = qword_27CD7E178;
  if (!qword_27CD7E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E178);
  }

  return result;
}

uint64_t sub_21B260CD0(uint64_t *a1, int a2)
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

uint64_t sub_21B260D18(uint64_t result, int a2, int a3)
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

uint64_t sub_21B260D68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B34A834();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B260DAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B260DC0(result, a2);
  }

  return result;
}

uint64_t sub_21B260DC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21B260EC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B260F10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B260F5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
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

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0C0C(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}