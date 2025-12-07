uint64_t sub_23C650888(uint64_t result, unint64_t a2, char a3)
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
    sub_23C64F980(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23C6512D0(&qword_27E1FBEB8, &qword_23C87C018);
      a2 = v7;
      goto LABEL_12;
    }

    sub_23C6520CC(v5 + 1);
  }

  v8 = *v3;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v4);
  result = sub_23C872124();
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
  result = sub_23C872054();
  __break(1u);
  return result;
}

void sub_23C6509E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_23C64FBD0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_23C651400(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_23C6522EC(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_23C871B24();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_23C871B34();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23C872054();
  __break(1u);
}

uint64_t sub_23C650B6C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_23C64FDF0(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_23C651540();
      goto LABEL_12;
    }

    v26 = v10;
    sub_23C6524F8(v13 + 1);
  }

  v15 = *v4;
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
  sub_23C8716F4();
  v16 = sub_23C872124();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_23C600748(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v20 = sub_23C870B44();
      sub_23C6535CC(v12);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_23C653628(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23C872054();
  __break(1u);
  return result;
}

void *sub_23C650DBC()
{
  v1 = v0;
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  v6 = *v0;
  v7 = sub_23C871CC4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_23C651008()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  v2 = *v0;
  v3 = sub_23C871CC4();
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

void *sub_23C651164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  v2 = *v0;
  v3 = sub_23C871CC4();
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

void *sub_23C6512D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871CC4();
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
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

id sub_23C651400(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871CC4();
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

void *sub_23C651540()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  v6 = *v0;
  v7 = sub_23C871CC4();
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
        sub_23C600748(*(v6 + 48) + v21, v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
        result = sub_23C653628(v5, *(v8 + 48) + v21);
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

uint64_t sub_23C651738(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23C870B74();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  v7 = sub_23C871CD4();
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
      sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
      result = sub_23C8716E4();
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

uint64_t sub_23C651A40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CD4();
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
      result = sub_23C8720E4();
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

uint64_t sub_23C651C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  result = sub_23C871CD4();
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
      sub_23C8720F4();

      sub_23C871804();
      result = sub_23C872124();
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

uint64_t sub_23C651E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  result = sub_23C871CD4();
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
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
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

uint64_t sub_23C6520CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEB8, &qword_23C87C018);
  result = sub_23C871CD4();
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
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v16);
      result = sub_23C872124();
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

uint64_t sub_23C6522EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23C871CD4();
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
      result = sub_23C871B24();
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

uint64_t sub_23C6524F8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  result = sub_23C871CD4();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_23C600748(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C600704(&qword_27E1FBC90, MEMORY[0x277CC9600]);
      sub_23C8716F4();
      result = sub_23C872124();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_23C653628(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v30;
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

        v2 = v29;
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
    *v2 = v8;
  }

  return result;
}

void *sub_23C6527F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C652950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23C652A50(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + (v18 << 6));
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      *&v34[9] = *(v22 + 41);
      v33[1] = v24;
      *v34 = v23;
      v33[0] = v25;
      v26 = *v22;
      v27 = v22[1];
      v28 = v22[2];
      *(v37 + 9) = *(v22 + 41);
      v36 = v27;
      v37[0] = v28;
      v35 = v26;
      *v11 = v21;
      *(v11 + 8) = v20;
      v29 = v36;
      *(v11 + 16) = v35;
      *(v11 + 32) = v29;
      *(v11 + 48) = v37[0];
      *(v11 + 57) = *(v37 + 9);
      if (v14 == v10)
      {

        sub_23C64BC50(v33, v32);
        goto LABEL_24;
      }

      v11 += 80;

      sub_23C64BC50(v33, v32);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v31 = v12 + 1;
    }

    else
    {
      v31 = (63 - v7) >> 6;
    }

    v12 = v31 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C652C14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 32 * v18);
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = *(*(a4 + 56) + 8 * v18);
      *v11 = *v19;
      v11[1] = v20;
      v11[2] = v21;
      v11[3] = v22;
      v11[4] = v23;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 5;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = v13;
    }

    v12 = v25 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23C652D98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5B0, qword_23C87ADE0);
  v38 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = sub_23C870B74();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      a1 = v39;
      sub_23C60C610(v32, v39, &unk_27E1FB5B0, qword_23C87ADE0);
      sub_23C60C610(a1, a2, &unk_27E1FB5B0, qword_23C87ADE0);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v20;
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
    a3 = result;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23C6530B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v49 = a7;
  v50 = a8;
  v47 = a5;
  v48 = a6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v43 = *(v46 - 8);
  v12 = MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v44 = &v40 - v15;
  v51 = a4;
  v18 = *(a4 + 64);
  v17 = a4 + 64;
  v16 = v18;
  v19 = -1 << *(v17 - 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  if (!a2)
  {
LABEL_18:
    v28 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v51;
    a1[1] = v17;
    a1[2] = ~v19;
    a1[3] = v28;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v28 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v41 = -1 << *(v17 - 32);
    v42 = a1;
    result = 0;
    v22 = 0;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v22;
      v29 = v27 | (v22 << 6);
      v30 = v51;
      v31 = *(v51 + 48);
      v32 = v31 + *(*(v49(0) - 8) + 72) * v29;
      v33 = v45;
      sub_23C600748(v32, v45, v50);
      v34 = *(*(v30 + 56) + 8 * v29);
      v35 = v47;
      *(v33 + *(v46 + 48)) = v34;
      v36 = v33;
      v37 = v44;
      a1 = v48;
      sub_23C60C610(v36, v44, v35, v48);
      sub_23C60C610(v37, a2, v35, a1);
      if (v24 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v43 + 72);
      result = v24;
      v38 = __OFADD__(v24++, 1);
      v22 = v28;
      if (v38)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = *(v17 + 8 * v26);
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v39 = v22 + 1;
    }

    else
    {
      v39 = v23;
    }

    v28 = v39 - 1;
    a3 = result;
LABEL_23:
    v19 = v41;
    a1 = v42;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C653340(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23C653498()
{
  result = qword_27E1FBE88;
  if (!qword_27E1FBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBE88);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23C653518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C653560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23C6535CC(uint64_t a1)
{
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C653628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SiriTurn.== infix(_:_:)()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  result = EventGraph.uei.getter();
  if (result)
  {
    v8 = sub_23C62FC3C();

    sub_23C870E24();

    result = EventGraph.uei.getter();
    if (result)
    {
      v9 = sub_23C62FC3C();

      sub_23C870E24();

      v10 = sub_23C870B44();
      v11 = *(v1 + 8);
      v11(v4, v0);
      v11(v6, v0);
      return v10 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23C653858()
{
  result = qword_27E1FBEC8;
  if (!qword_27E1FBEC8)
  {
    type metadata accessor for SiriTurn();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBEC8);
  }

  return result;
}

void sub_23C6538B0()
{
  v0 = sub_23C6539CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = v0;
  v2 = inited + 32;
  *(inited + 40) = 0;
  v3 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v2);
  v4 = type metadata accessor for EventFilter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ISEventFilter_filter] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  if (qword_2814FB040 != -1)
  {
    swift_once();
  }

  v7 = qword_2814FB470;
  v8 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v6, v7);

  qword_2814FB468 = v8;
}

unint64_t sub_23C6539CC()
{
  result = qword_27E1F9CE8;
  if (!qword_27E1F9CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9CE8);
  }

  return result;
}

unint64_t SiriTurn.performanceRepresentation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23C87C070;
  *&v59[0] = 7631475;
  *(&v59[0] + 1) = 0xE300000000000000;
  sub_23C871CB4();
  sub_23C6197CC(v32);
  v1 = sub_23C616A44();
  sub_23C61FD68(v32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(v0 + 96) = v2;
  *(v0 + 72) = v1;
  strcpy(v59, "srtMedoc");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C617180(v33);
  v3 = sub_23C616A44();
  sub_23C61FD68(v33);
  *(v0 + 168) = v2;
  *(v0 + 144) = v3;
  *&v59[0] = 0xD000000000000014;
  *(&v59[0] + 1) = 0x800000023C8AA6C0;
  sub_23C871CB4();
  sub_23C6171A4(v34);
  v4 = sub_23C616A44();
  sub_23C61FD68(v34);
  *(v0 + 240) = v2;
  *(v0 + 216) = v4;
  *&v59[0] = 1919317365;
  *(&v59[0] + 1) = 0xE400000000000000;
  sub_23C871CB4();
  sub_23C619DC0(v35);
  v5 = sub_23C616A44();
  sub_23C61FD68(v35);
  *(v0 + 312) = v2;
  *(v0 + 288) = v5;
  strcpy(v59, "uufrMedoc");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C6171D8(v36);
  v6 = sub_23C616A44();
  sub_23C61FD68(v36);
  *(v0 + 384) = v2;
  *(v0 + 360) = v6;
  *&v59[0] = 6582373;
  *(&v59[0] + 1) = 0xE300000000000000;
  sub_23C871CB4();
  sub_23C61A2EC(v37);
  v7 = sub_23C616A44();
  sub_23C61FD68(v37);
  *(v0 + 456) = v2;
  *(v0 + 432) = v7;
  strcpy(v59, "epdMedoc");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C6174F0(v38);
  v8 = sub_23C616A44();
  sub_23C61FD68(v38);
  *(v0 + 528) = v2;
  *(v0 + 504) = v8;
  strcpy(v59, "asrAudioLag");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61ABE4(v39);
  v9 = sub_23C616A44();
  sub_23C61FD68(v39);
  *(v0 + 600) = v2;
  *(v0 + 576) = v9;
  *&v59[0] = 0xD000000000000010;
  *(&v59[0] + 1) = 0x800000023C8AA6E0;
  sub_23C871CB4();
  sub_23C61792C(v40);
  v10 = sub_23C616A44();
  sub_23C61FD68(v40);
  *(v0 + 672) = v2;
  *(v0 + 648) = v10;
  strcpy(v59, "asrTime");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61B530(v41);
  v11 = sub_23C616A44();
  sub_23C61FD68(v41);
  *(v0 + 744) = v2;
  *(v0 + 720) = v11;
  strcpy(v59, "asrTimeMedoc");
  BYTE13(v59[0]) = 0;
  HIWORD(v59[0]) = -5120;
  sub_23C871CB4();
  sub_23C617960(v42);
  v12 = sub_23C616A44();
  sub_23C61FD68(v42);
  *(v0 + 816) = v2;
  *(v0 + 792) = v12;
  strcpy(v59, "nlxTime");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61BC44(v43);
  v13 = sub_23C616A44();
  sub_23C61FD68(v43);
  *(v0 + 888) = v2;
  *(v0 + 864) = v13;
  strcpy(v59, "nlxTimeMedoc");
  BYTE13(v59[0]) = 0;
  HIWORD(v59[0]) = -5120;
  sub_23C871CB4();
  sub_23C617CA0(v44);
  v14 = sub_23C616A44();
  sub_23C61FD68(v44);
  *(v0 + 960) = v2;
  *(v0 + 936) = v14;
  strcpy(v59, "execution");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C61BF44(v45);
  v15 = sub_23C616A44();
  sub_23C61FD68(v45);
  *(v0 + 1032) = v2;
  *(v0 + 1008) = v15;
  strcpy(v59, "executionMedoc");
  HIBYTE(v59[0]) = -18;
  sub_23C871CB4();
  sub_23C618100(v46);
  v16 = sub_23C616A44();
  sub_23C61FD68(v46);
  *(v0 + 1104) = v2;
  *(v0 + 1080) = v16;
  strcpy(v59, "userSpeech");
  BYTE11(v59[0]) = 0;
  HIDWORD(v59[0]) = -369098752;
  sub_23C871CB4();
  sub_23C61C410(v47);
  v17 = sub_23C616A44();
  sub_23C61FD68(v47);
  *(v0 + 1176) = v2;
  *(v0 + 1152) = v17;
  *&v59[0] = 0x6565705372657375;
  *(&v59[0] + 1) = 0xEF636F64654D6863;
  sub_23C871CB4();
  sub_23C6188D8(v48);
  v18 = sub_23C616A44();
  sub_23C61FD68(v48);
  *(v0 + 1248) = v2;
  *(v0 + 1224) = v18;
  *&v59[0] = 0xD000000000000012;
  *(&v59[0] + 1) = 0x800000023C8AA700;
  sub_23C871CB4();
  sub_23C61C45C(v49);
  v19 = sub_23C616A44();
  sub_23C61FD68(v49);
  *(v0 + 1320) = v2;
  *(v0 + 1296) = v19;
  *&v59[0] = 0xD000000000000017;
  *(&v59[0] + 1) = 0x800000023C8AA720;
  sub_23C871CB4();
  sub_23C61891C(v50);
  v20 = sub_23C616A44();
  sub_23C61FD68(v50);
  *(v0 + 1392) = v2;
  *(v0 + 1368) = v20;
  strcpy(v59, "asrEager");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C61CC78(v51);
  v21 = sub_23C616A44();
  sub_23C61FD68(v51);
  *(v0 + 1464) = v2;
  *(v0 + 1440) = v21;
  strcpy(v59, "asrEagerMedoc");
  HIWORD(v59[0]) = -4864;
  sub_23C871CB4();
  sub_23C618ED0(v52);
  v22 = sub_23C616A44();
  sub_23C61FD68(v52);
  *(v0 + 1536) = v2;
  *(v0 + 1512) = v22;
  *&v59[0] = 0x68636E75616CLL;
  *(&v59[0] + 1) = 0xE600000000000000;
  sub_23C871CB4();
  sub_23C61D554(v53);
  v23 = sub_23C616A44();
  sub_23C61FD68(v53);
  *(v0 + 1608) = v2;
  *(v0 + 1584) = v23;
  strcpy(v59, "uiRender");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C61DEBC(v54);
  v24 = sub_23C616A44();
  sub_23C61FD68(v54);
  *(v0 + 1680) = v2;
  *(v0 + 1656) = v24;
  strcpy(v59, "ttsWait");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61E3E4(v55);
  v25 = sub_23C616A44();
  sub_23C61FD68(v55);
  *(v0 + 1752) = v2;
  *(v0 + 1728) = v25;
  strcpy(v59, "asrInitTime");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61E96C(v56);
  v26 = sub_23C616A44();
  sub_23C61FD68(v56);
  *(v0 + 1824) = v2;
  *(v0 + 1800) = v26;
  strcpy(v59, "asrLoadTime");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61E98C(v57);
  v27 = sub_23C616A44();
  sub_23C61FD68(v57);
  *(v0 + 1896) = v2;
  *(v0 + 1872) = v27;
  strcpy(v59, "selectedRcTime");
  HIBYTE(v59[0]) = -18;
  sub_23C871CB4();
  sub_23C61F2D0(v58);
  v28 = sub_23C616A44();
  sub_23C61FD68(v58);
  *(v0 + 1968) = v2;
  *(v0 + 1944) = v28;
  strcpy(v59, "audioStop");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C61F640(v59);
  v29 = sub_23C616A44();
  sub_23C61FD68(v59);
  *(v0 + 2040) = v2;
  *(v0 + 2016) = v29;
  v30 = sub_23C598B20(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v30;
}

id SiriTurn.init(eventGraph:)(char *a1)
{
  if (j___s26AIMLInstrumentationStreams10EventGraphC3ueiAA14ComponentGroupCySo014SISchemaClientC0CGSgvg())
  {

    v2 = *&a1[OBJC_IVAR___ISEventGraph_eventsInternal];
    if (v2 >> 62)
    {
LABEL_31:
      v3 = sub_23C871C34();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = a1;

    if (v3)
    {
      v4 = 0;
      v17 = MEMORY[0x277D84F90];
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x23EED7610](v5, v2);
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v6 = *(v2 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }
          }

          a1 = *(v6 + 24);
          sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
          v7 = sub_23C870D44();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }

        v8 = *(v6 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_23C5845FC(0, *(v17 + 2) + 1, 1, v17);
        }

        v10 = *(v17 + 2);
        v9 = *(v17 + 3);
        a1 = (v10 + 1);
        if (v10 >= v9 >> 1)
        {
          v17 = sub_23C5845FC((v9 > 1), v10 + 1, 1, v17);
        }

        *(v17 + 2) = a1;
        *&v17[8 * v10 + 32] = v8;
      }

      while (v4 != v3);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

LABEL_24:

    if (*(v17 + 2))
    {
      v12 = (v17 + 32);
    }

    else
    {
      v12 = &v16[OBJC_IVAR___ISEventGraph_timestamp];
    }

    v13 = *v12;

    v11 = EventGraph.init(timestamp:events:)(v14, v13);
  }

  else
  {

    type metadata accessor for SiriTurn();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void sub_23C654864()
{
  if (EventGraph.uei.getter())
  {
    v0 = sub_23C62FC3C();

    sub_23C870E24();
  }

  else
  {
    __break(1u);
  }
}

double sub_23C654918()
{
  result = COERCE_DOUBLE(sub_23C654940());
  if (v1)
  {
    return 0.0;
  }

  return result;
}

void *sub_23C654940()
{
  v1 = v0;
  v47 = sub_23C870B74();
  v2 = *(v47 - 8);
  v3 = MEMORY[0x28223BE20](v47);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - v5;
  v7 = sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
  v8 = sub_23C600CA0();
  if (*(v8 + 16) && (v9 = sub_23C5FF958(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_23C601CF4(v11);

  if (v12 >> 62)
  {
    goto LABEL_32;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:

LABEL_53:
    *&result = 0.0;
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EED7610](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v13 = *(v12 + 32);
    }

    v48 = v13;

    v14 = sub_23C5A3FDC(0, &qword_27E1FBED0, 0x277D57048);
    v15 = sub_23C600CA0();
    v16 = MEMORY[0x277D84F90];
    if (*(v15 + 16))
    {
      v17 = sub_23C5FF958(v14);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v17);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v12 = v1;
    v20 = sub_23C601CF4(v19);

    v49 = v16;
    if (v20 >> 62)
    {
      break;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_17:
    v22 = 0;
    v45 = v20 & 0xC000000000000001;
    v43[1] = v14;
    v44 = v20 & 0xFFFFFFFFFFFFFF8;
    v1 = v2 + 1;
    while (1)
    {
      if (v45)
      {
        v23 = MEMORY[0x23EED7610](v22, v20);
      }

      else
      {
        if (v22 >= *(v44 + 16))
        {
          goto LABEL_31;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v2 = v23;
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      *&result = COERCE_DOUBLE(sub_23C870CF4());
      if (*&result == 0.0)
      {
        goto LABEL_56;
      }

      v26 = result;
      sub_23C870D94();

      *&result = COERCE_DOUBLE(sub_23C870CF4());
      if (*&result == 0.0)
      {
        goto LABEL_57;
      }

      v27 = result;
      v28 = v46;
      sub_23C870D94();

      v12 = sub_23C870B44();
      v29 = *v1;
      v30 = v28;
      v31 = v47;
      (*v1)(v30, v47);
      v29(v6, v31);
      if (v12)
      {
        v12 = &v49;
        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v22;
      if (v24 == v21)
      {
        v12 = v49;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!sub_23C871C34())
    {
      goto LABEL_33;
    }
  }

  v21 = sub_23C871C34();
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_36:
  v12 = MEMORY[0x277D84F90];
LABEL_37:
  *&result = COERCE_DOUBLE();
  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    if (*(v12 + 16))
    {
      goto LABEL_40;
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_51:
  *&result = COERCE_DOUBLE(sub_23C871C34());
  if (*&result == 0.0)
  {
    goto LABEL_52;
  }

LABEL_40:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x23EED7610](0, v12);
LABEL_43:
    v33 = v32;

    v34 = sub_23C870D44();
    if (!v34)
    {

      goto LABEL_53;
    }

    v35 = v34;
    [v34 timeIntervalSince1970];
    v37 = v36;
    if (v36 < 100.0)
    {

      goto LABEL_53;
    }

    *&result = COERCE_DOUBLE(sub_23C870CF4());
    if (*&result == 0.0)
    {
      goto LABEL_58;
    }

    v38 = result;
    v39 = sub_23C870DD4();

    *&result = COERCE_DOUBLE(sub_23C870CF4());
    if (*&result != 0.0)
    {
      v40 = result;
      v41 = v39;
      v42 = sub_23C870DD4();

      *&result = v37 + (v41 - v42) / 1000000000.0;
      return result;
    }
  }

  else
  {
    if (*(v12 + 16))
    {
      v32 = *(v12 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C654F90@<X0>(unint64_t a1@<X8>)
{
  result = EventGraph.uei.getter();
  if (result)
  {
    ComponentGroup<>.previousTurnId.getter(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SiriTurn.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriTurn();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23C655040()
{
  if (EventGraph.uei.getter())
  {
    v0 = sub_23C62FC3C();

    sub_23C870E24();
  }

  else
  {
    __break(1u);
  }
}

id sub_23C65537C()
{
  v0 = SiriTurn.flow.getter();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v31 = MEMORY[0x277D84F90];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3 >> 62)
    {
      v4 = sub_23C871C34();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FBF38, 0x277D57710);
        v1 = v7;
        v9 = sub_23C870D44();
        if (v9)
        {
          v1 = v9;
          v10 = [v9 flowState];
          if (v10)
          {
            v11 = v10;

            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            v1 = &v31;
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v5;
        if (v8 == v4)
        {
          v12 = v31;
          v1 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v12 = v1;
LABEL_19:

    v31 = v1;
    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = sub_23C871C34();
      if (v13)
      {
LABEL_22:
        v14 = 0;
        v15 = v12 & 0xC000000000000001;
        v16 = &qword_27E1FBF18;
        v30 = v13;
        while (1)
        {
          if (v15)
          {
            v17 = MEMORY[0x23EED7610](v14, v12);
          }

          else
          {
            if (v14 >= *(v12 + 16))
            {
              goto LABEL_50;
            }

            v17 = *(v12 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          sub_23C5A3FDC(0, v16, 0x277D57500);
          v1 = v18;
          v20 = sub_23C870D44();
          if (v20)
          {
            v1 = v20;
            v21 = [v20 flowStep];
            if (v21)
            {
              v22 = v15;
              v23 = v16;
              v24 = v21;
              v25 = [v21 flowState];

              if (v25)
              {
                v26 = [v25 flowStateType];

                if (v26 == 142)
                {
                  sub_23C871D54();
                  sub_23C871D94();
                  sub_23C871DA4();
                  v1 = &v31;
                  sub_23C871D64();
                }

                else
                {
                }
              }

              else
              {
              }

              v16 = v23;
              v15 = v22;
              v13 = v30;
            }

            else
            {
            }
          }

          else
          {
          }

          ++v14;
          if (v19 == v13)
          {
            v1 = v31;
            goto LABEL_40;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_23C871C34();
        if (!result)
        {
          goto LABEL_52;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v13 = *(v12 + 16);
      if (v13)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
  }

  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_52:

    return 0;
  }

LABEL_43:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_46;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v1 + 32);
LABEL_46:
    v29 = v28;

    return v29;
  }

  __break(1u);
  return result;
}

unint64_t ANCSchemaANCClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000015;
  }

  if (a1 == 4)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v1;
  }
}

unint64_t ASRSchemaASRClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x4374616568657270;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x4374736575716572;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 8:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 29:
      result = 0xD000000000000014;
      break;
    case 6:
    case 9:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 10:
    case 21:
      result = 0xD000000000000024;
      break;
    case 11:
    case 12:
    case 27:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
    case 17:
    case 36:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 24:
    case 34:
      result = 0xD000000000000018;
      break;
    case 18:
    case 30:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000023;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
    case 32:
      result = 0xD00000000000001FLL;
      break;
    case 28:
      result = 0xD00000000000002BLL;
      break;
    case 31:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000039;
      break;
    case 35:
      result = 0xD000000000000030;
      break;
    case 37:
      result = 0xD00000000000002DLL;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t CNVSchemaCNVClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 2;
  result = 0x776F6C46646E6966;
  switch(v1)
  {
    case 0:
    case 6:
      result = 0xD000000000000018;
      break;
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      return result;
    case 12:
    case 15:
    case 16:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t SISchemaClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x697461636F766E69;
  switch(v1)
  {
    case 0:
    case 32:
    case 61:
      result = 0xD000000000000018;
      break;
    case 1:
    case 4:
    case 29:
      result = 0xD000000000000012;
      break;
    case 2:
    case 19:
    case 28:
    case 43:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
    case 34:
      result = 0xD000000000000010;
      break;
    case 6:
      return result;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x74754F68636E7570;
      break;
    case 10:
      result = 0x65754369726973;
      break;
    case 11:
      result = 0x7365725072667575;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
    case 15:
    case 42:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x70536F5474786574;
      break;
    case 16:
      result = 0x6C46746E65696C63;
      break;
    case 17:
      result = 0x754F676F6C616964;
      break;
    case 18:
    case 37:
    case 63:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 21:
    case 38:
      result = 0xD00000000000001ELL;
      break;
    case 22:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0x706D6F4372667575;
      break;
    case 24:
    case 47:
      result = 0x776F685372667575;
      break;
    case 25:
      result = 0x6469615372667575;
      break;
    case 26:
      result = 0x6174614672667575;
      break;
    case 27:
    case 44:
      result = 0xD00000000000001BLL;
      break;
    case 30:
    case 33:
    case 62:
      result = 0xD000000000000019;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 36:
      result = 0x5252465555696575;
      break;
    case 39:
    case 52:
    case 60:
      result = 0xD000000000000021;
      break;
    case 40:
      result = 0x6C61746146726E70;
      break;
    case 41:
      result = 0x5245544D6E727574;
      break;
    case 45:
    case 51:
    case 55:
      result = 0xD000000000000022;
      break;
    case 46:
      result = 0xD000000000000016;
      break;
    case 49:
    case 50:
    case 54:
      result = 0xD000000000000020;
      break;
    case 53:
    case 56:
      result = 0xD00000000000001DLL;
      break;
    case 57:
      result = 0x656C655372667575;
      break;
    case 58:
      result = 0xD000000000000028;
      break;
    case 59:
      result = 0xD000000000000016;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t DIMSchemaDIMClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 == 101)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 == 102)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_23C6563D4()
{
  v1 = 1701736302;
  if (*v0 == 101)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 == 102)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

uint64_t FLOWSchemaFLOWClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 <= 104)
  {
    if (a1 <= 102)
    {
      if (a1 == 101)
      {
        return 0x70657453776F6C66;
      }

      if (a1 == 102)
      {
        return 0xD000000000000016;
      }

      return 1701736302;
    }

    if (a1 == 103)
    {
      return 0xD00000000000001ALL;
    }

    return 0xD000000000000023;
  }

  if (a1 > 106)
  {
    if (a1 != 107)
    {
      if (a1 == 108)
      {
        return 0xD00000000000001ALL;
      }

      return 1701736302;
    }

    return 0xD000000000000023;
  }

  if (a1 == 105)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

unint64_t MHSchemaMHClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 100;
  result = 0x746E696F70646E65;
  switch(v1)
  {
    case 0:
    case 17:
      result = 0xD00000000000002FLL;
      break;
    case 1:
    case 18:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 5:
    case 54:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 34:
      result = 0xD000000000000018;
      break;
    case 6:
    case 14:
      result = 0xD000000000000024;
      break;
    case 7:
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000029;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 13:
    case 48:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD000000000000031;
      break;
    case 16:
      result = 0xD000000000000026;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 20:
      result = 0xD000000000000035;
      break;
    case 21:
    case 40:
      result = 0xD000000000000021;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 23:
      result = 0xD00000000000002CLL;
      break;
    case 24:
    case 45:
      result = 0xD000000000000013;
      break;
    case 25:
    case 27:
    case 50:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0xD00000000000001BLL;
      break;
    case 28:
    case 36:
    case 38:
      result = 0xD000000000000019;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
      return result;
    case 31:
    case 42:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD00000000000001DLL;
      break;
    case 33:
    case 39:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0xD00000000000001BLL;
      break;
    case 37:
      result = 0xD000000000000020;
      break;
    case 41:
      result = 0x6375446F69647561;
      break;
    case 43:
      result = 0xD000000000000016;
      break;
    case 44:
      result = 0x7461657243707274;
      break;
    case 46:
      result = 0xD000000000000012;
      break;
    case 47:
    case 55:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 51:
      result = 0x6572506E776F7263;
      break;
    case 52:
      result = 0x6767697254737472;
      break;
    case 53:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t NETSchemaNETClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 <= 104)
  {
    v3 = 0xD000000000000026;
    v4 = 0xD000000000000017;
    if (a1 != 104)
    {
      v4 = 1701736302;
    }

    if (a1 != 103)
    {
      v3 = v4;
    }

    if (a1 == 102)
    {
      v1 = 0xD000000000000021;
    }

    if (a1 == 101)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 <= 102)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 106)
  {
    if (a1 == 106)
    {
      v1 = 0xD000000000000031;
    }

    if (a1 == 105)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 109)
    {
      v1 = 0xD000000000000030;
    }

    if (a1 == 108)
    {
      v1 = 0xD00000000000002BLL;
    }

    if (a1 == 107)
    {
      return 0xD000000000000036;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t NLXSchemaNLXClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x70757465536D6463;
  switch(v1)
  {
    case 0:
    case 1:
    case 34:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 5:
    case 9:
    case 28:
      result = 0xD000000000000014;
      break;
    case 4:
    case 15:
      result = 0xD000000000000010;
      break;
    case 6:
    case 8:
      result = 0xD000000000000017;
      break;
    case 7:
    case 17:
    case 19:
    case 38:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
    case 13:
    case 25:
    case 37:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 14:
    case 16:
    case 18:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 22:
    case 33:
      result = 0xD000000000000023;
      break;
    case 23:
      result = 0xD000000000000022;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 26:
    case 32:
      result = 0xD000000000000024;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD00000000000001DLL;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 31:
    case 36:
      result = 0xD00000000000001BLL;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 40:
      return result;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t ORCHSchemaORCHClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x4374736575716572;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      v3 = 5;
      goto LABEL_8;
    case 5:
    case 11:
    case 19:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6143746C75736572;
      break;
    case 7:
      result = 0x6553746C75736572;
      break;
    case 8:
    case 10:
    case 13:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x6C62616C69617661;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 14:
    case 23:
      result = 0xD000000000000017;
      break;
    case 15:
    case 22:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6C616E6946707274;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 24:
      v3 = 10;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t POMMESSchemaPOMMESClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 <= 105)
  {
    if (a1 == 105)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 1701736302;
    }

    if (a1 == 104)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 103)
    {
      v4 = 0xD000000000000024;
    }

    if (a1 == 102)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 101)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 102)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 108)
  {
    if (a1 == 111)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 110)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 109)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 108)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 107)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 106)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t RFSchemaRFClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 > 102)
  {
    if (a1 != 103)
    {
      if (a1 == 104)
      {
        return 0xD000000000000017;
      }

      return 1701736302;
    }

    return 0x6E656E6F706D6F63;
  }

  else
  {
    if (a1 != 101)
    {
      if (a1 == 102)
      {
        return 0xD000000000000014;
      }

      return 1701736302;
    }

    return 0x456E726574746170;
  }
}

uint64_t RRSchemaRRClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6F4372656C6C7570;
      }

      return 1701736302;
    }

    return 0x6172476F73557272;
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000018;
      }

      return 1701736302;
    }

    return 0xD000000000000012;
  }
}

uint64_t SICSchemaSICClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 == 101)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_23C65767C()
{
  if (*v0 == 101)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t TTSSchemaTTSClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 <= 102)
  {
    if (a1 == 101)
    {
      return 0x6F43686365657073;
    }

    if (a1 == 102)
    {
      return 0x5274736575716572;
    }
  }

  else
  {
    switch(a1)
    {
      case 'g':
        return 0xD000000000000014;
      case 'h':
        return 0xD000000000000015;
      case 'i':
        return 0xD000000000000010;
    }
  }

  return 1701736302;
}

Swift::String __swiftcall SpanGraphNode.description(level:startTime:prefix:)(Swift::Int level, Swift::Double startTime, Swift::String prefix)
{
  object = prefix._object;
  countAndFlagsBits = prefix._countAndFlagsBits;
  v85 = level;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v77 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v77 - v11;
  v82 = type metadata accessor for TranscriptProtoEvent(0);
  v12 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = *(v3 + 32);
  v80 = *(v3 + 24);
  v16 = *(v3 + 40);
  v17 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v17 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v79 = *(v3 + 56);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23C873D10;
    *(v18 + 32) = countAndFlagsBits;
    *(v18 + 40) = object;
    v86 = v18;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v19 = v83;
  v20 = v84;
  if (!v16)
  {
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v22 = *(v86 + 2);
    v21 = *(v86 + 3);
    if (v22 >= v21 >> 1)
    {
      v86 = sub_23C5844DC((v21 > 1), v22 + 1, 1, v86);
    }

    v23 = v86;
    *(v86 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v15;
    *(v24 + 5) = v16;
    v20 = v84;
LABEL_11:
    *&v91[0] = v14;

    sub_23C659984(v91);
    v15 = *(*&v91[0] + 16);
    v78 = 0;
    if (v15)
    {
      v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v77 = *&v91[0];
      v16 = *&v91[0] + v25;
      v26 = *(v12 + 72);
      v27 = v82;
      v81 = v26;
      do
      {
        sub_23C5A4514(v16, v20);
        sub_23C5855B0(v20 + *(v27 + 44), v9, &qword_27E1F9950, &unk_23C87CFF0);
        v28 = type metadata accessor for TranscriptProtoPayload(0);
        if ((*(*(v28 - 8) + 48))(v9, 1, v28) == 1)
        {
          sub_23C585C34(v9, &qword_27E1F9950, &unk_23C87CFF0);
        }

        else
        {
          sub_23C5855B0(v9, v19, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v9, type metadata accessor for TranscriptProtoPayload);
          v29 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v29 - 8) + 48))(v19, 1, v29) != 1)
          {
            v30 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v32 = v31;
            sub_23C65E398(v19, type metadata accessor for TranscriptProtoPayloadEnum);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_23C5844DC(0, *(v86 + 2) + 1, 1, v86);
            }

            v20 = v84;
            v33 = v86;
            v35 = *(v86 + 2);
            v34 = *(v86 + 3);
            if (v35 >= v34 >> 1)
            {
              v33 = sub_23C5844DC((v34 > 1), v35 + 1, 1, v86);
            }

            sub_23C65E398(v20, type metadata accessor for TranscriptProtoEvent);
            *(v33 + 2) = v35 + 1;
            v86 = v33;
            v36 = &v33[16 * v35];
            *(v36 + 4) = v30;
            *(v36 + 5) = v32;
            v27 = v82;
            v26 = v81;
            v19 = v83;
            goto LABEL_15;
          }

          sub_23C585C34(v19, &qword_27E1F9958, &qword_23C873E10);
          v20 = v84;
        }

        sub_23C65E398(v20, type metadata accessor for TranscriptProtoEvent);
LABEL_15:
        v16 += v26;
        --v15;
      }

      while (v15);
    }

    v9 = v80;
    if ((v79 & 1) == 0)
    {
      v37 = sub_23C8719C4();
      v39 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_23C5844DC(0, *(v86 + 2) + 1, 1, v86);
      }

      v41 = *(v86 + 2);
      v40 = *(v86 + 3);
      if (v41 >= v40 >> 1)
      {
        v86 = sub_23C5844DC((v40 > 1), v41 + 1, 1, v86);
      }

      v42 = v86;
      *(v86 + 2) = v41 + 1;
      v43 = &v42[16 * v41];
      *(v43 + 4) = v37;
      *(v43 + 5) = v39;
    }

    *&v91[0] = v86;

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
    v45 = sub_23C59502C();
    v83 = v44;
    v82 = v45;
    v12 = sub_23C871704();
    v47 = v46;

    v48 = sub_23C5844DC(0, 1, 1, MEMORY[0x277D84F90]);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    v14 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v48 = sub_23C5844DC((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v14;
    v51 = &v48[16 * v50];
    *(v51 + 4) = v12;
    *(v51 + 5) = v47;
    v52 = v85;
    if ((v85 - 0x2000000000000000) >> 62 == 3)
    {
      break;
    }

    __break(1u);
LABEL_46:
    v86 = sub_23C5844DC(0, *(v86 + 2) + 1, 1, v86);
  }

  *&v91[0] = sub_23C871834();
  *(&v91[0] + 1) = v53;

  MEMORY[0x23EED7100](0x94E28094E29494E2, 0xA900000000000080);

  v54 = v91[0];
  v84 = *&v91[0];
  v55 = *(v9 + 2);
  if (!v55)
  {
    goto LABEL_36;
  }

  v56 = sub_23C64D460(*(v9 + 2), 0);
  v57 = sub_23C652A50(v91, (v56 + 4), v55, v9);
  v58 = v91[0];
  v81 = v92;

  sub_23C56EF08(v58);
  if (v57 != v55)
  {
    __break(1u);
LABEL_36:
    v56 = MEMORY[0x277D84F90];
  }

  *&v91[0] = v56;
  v59 = v78;
  sub_23C659A2C(v91, sub_23C648E64, sub_23C659BDC);
  if (v59)
  {

    __break(1u);
  }

  else
  {

    v60 = *(*&v91[0] + 16);
    if (v60)
    {
      v61 = v60 - 1;
      v86 = *&v91[0];
      for (i = (*&v91[0] + 48); ; i += 5)
      {
        v91[0] = *(i - 1);
        v63 = *i;
        v64 = i[1];
        v65 = i[2];
        *&v93[9] = *(i + 41);
        v92 = v64;
        *v93 = v65;
        v91[1] = v63;
        v66 = i[1];
        v88 = *i;
        v89 = v66;
        v90[0] = i[2];
        *(v90 + 9) = *(i + 41);
        sub_23C5855B0(v91, v87, &qword_27E1F9BB0, &qword_23C87D000);
        v67._countAndFlagsBits = v84;
        v67._object = *(&v54 + 1);
        v68 = SpanGraphNode.description(level:startTime:prefix:)(v52 + 1, startTime, v67);
        sub_23C585C34(v91, &qword_27E1F9BB0, &qword_23C87D000);
        v70 = *(v48 + 2);
        v69 = *(v48 + 3);
        if (v70 >= v69 >> 1)
        {
          v48 = sub_23C5844DC((v69 > 1), v70 + 1, 1, v48);
        }

        *(v48 + 2) = v70 + 1;
        *&v48[16 * v70 + 32] = v68;
        if (!v61)
        {
          break;
        }

        --v61;
        v52 = v85;
      }
    }

    *&v91[0] = v48;
    v71 = sub_23C871704();
    v73 = v72;

    v74 = v71;
    v75 = v73;
  }

  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t sub_23C658154()
{
  v0 = TranscriptProtoEvent.getEventType()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v0.value._object)
  {
    object = v0.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v3 = TranscriptProtoEvent.getEventType()();
  if (v3.value._object)
  {
    v4 = v3.value._countAndFlagsBits;
  }

  else
  {
    v4 = 0;
  }

  if (v3.value._object)
  {
    v5 = v3.value._object;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (countAndFlagsBits == v4 && object == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_23C872014();
  }

  return v7 & 1;
}

uint64_t sub_23C6581F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v45 - v3);
  v5 = type metadata accessor for TranscriptProtoEvent(0);
  v6 = MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - v10;
  v12 = *(a1 + 16);
  v48 = a1;
  v52 = v12;
  v50 = v9;
  if (v12)
  {
    v13 = *(v8 + 60);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = MEMORY[0x277D84F90];
    v16 = *(v9 + 72);
    v51 = v16;
    do
    {
      sub_23C5A4514(v14, v11);
      sub_23C5855B0(&v11[v13], v4, &qword_27E1FBF40, &qword_23C87D088);
      sub_23C65E398(v11, type metadata accessor for TranscriptProtoEvent);
      v17 = type metadata accessor for TranscriptProtoSpanID(0);
      if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
      {
        sub_23C585C34(v4, &qword_27E1FBF40, &qword_23C87D088);
      }

      else
      {
        v18 = *v4;
        sub_23C65E398(v4, type metadata accessor for TranscriptProtoSpanID);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_23C5845E8(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_23C5845E8((v19 > 1), v20 + 1, 1, v15);
        }

        *(v15 + 2) = v20 + 1;
        *&v15[8 * v20 + 32] = v18;
        v16 = v51;
      }

      v14 += v16;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v46 = sub_23C596910(v15);

  v21 = v52;
  if (!v52)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_36:
    v40 = sub_23C596910(v24);

    if (*(v40 + 16) <= *(v46 + 16) >> 3)
    {
      v53 = v46;
      sub_23C65D7B4(v40);

      v41 = v53;
    }

    else
    {
      v41 = sub_23C65D8AC(v40, v46);
    }

    v42 = v48;

    v43 = sub_23C65E138(v41, v42);

    swift_bridgeObjectRelease_n();
    result = v47;
    *(v47 + 16) = v43;
    return result;
  }

  v22 = v49;
  v23 = v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v24 = MEMORY[0x277D84F90];
  v50 = *(v50 + 72);
  while (1)
  {
    sub_23C5A4514(v23, v22);
    v25 = *(v22 + 80);
    v26 = *(v25 + 16);
    if (v26)
    {
      v52 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9500, &qword_23C873A30);
      v27 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v27);
      v29 = v28 - 32;
      if (v28 < 32)
      {
        v29 = v28 - 25;
      }

      v27[2] = v26;
      v27[3] = 2 * (v29 >> 3);
      v51 = sub_23C652950(&v53, v27 + 4, v26, v25);
      v30 = v53;

      sub_23C56EF08(v30);
      if (v51 != v26)
      {
        goto LABEL_42;
      }

      v22 = v49;
      v21 = v52;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    sub_23C65E398(v22, type metadata accessor for TranscriptProtoEvent);
    v31 = v27[2];
    v32 = *(v24 + 2);
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v33 <= *(v24 + 3) >> 1)
    {
      if (v27[2])
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      v24 = sub_23C5845E8(isUniquelyReferenced_nonNull_native, v35, 1, v24);
      if (v27[2])
      {
LABEL_31:
        v36 = *(v24 + 2);
        if ((*(v24 + 3) >> 1) - v36 < v31)
        {
          goto LABEL_43;
        }

        memcpy(&v24[8 * v36 + 32], v27 + 4, 8 * v31);

        if (v31)
        {
          v37 = *(v24 + 2);
          v38 = __OFADD__(v37, v31);
          v39 = v37 + v31;
          if (v38)
          {
            goto LABEL_44;
          }

          *(v24 + 2) = v39;
        }

        goto LABEL_15;
      }
    }

    if (v31)
    {
      goto LABEL_41;
    }

LABEL_15:
    v23 += v50;
    if (!--v21)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  swift_bridgeObjectRelease_n();
  type metadata accessor for SpanGraph();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_23C658780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v152 = a4;
  v151 = a3;
  v156 = a1;
  v150 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  MEMORY[0x28223BE20](v6 - 8);
  v146 = (&v146 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v146 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  MEMORY[0x28223BE20](v10 - 8);
  v160 = &v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v146 - v13);
  v15 = type metadata accessor for TranscriptProtoEvent(0);
  v16 = MEMORY[0x28223BE20](v15);
  v158 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v146 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v162 = &v146 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v26 = &v146 - v25;
  v27 = *(a2 + 16);
  v155 = v23;
  v153 = v24;
  v154 = a2;
  if (v27)
  {
    v28 = *(v24 + 72);
    v163 = ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v29 = &v163[a2];
    v157 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_23C5A4514(v29, v26);
      sub_23C5855B0(&v26[*(v15 + 60)], v14, &qword_27E1FBF40, &qword_23C87D088);
      v30 = type metadata accessor for TranscriptProtoSpanID(0);
      if ((*(*(v30 - 8) + 48))(v14, 1, v30) == 1)
      {
        sub_23C585C34(v14, &qword_27E1FBF40, &qword_23C87D088);
      }

      else
      {
        v31 = *v14;
        sub_23C65E398(v14, type metadata accessor for TranscriptProtoSpanID);
        if (v31 == v156)
        {
          sub_23C5A3818(v26, v20);
          v32 = v157;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v167 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23C592D4C(0, *(v32 + 16) + 1, 1);
            v32 = v167;
          }

          v35 = *(v32 + 16);
          v34 = *(v32 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_23C592D4C((v34 > 1), v35 + 1, 1);
            v32 = v167;
          }

          *(v32 + 16) = v35 + 1;
          v157 = v32;
          sub_23C5A3818(v20, &v163[v32 + v35 * v28]);
          v15 = v155;
          goto LABEL_5;
        }
      }

      sub_23C65E398(v26, type metadata accessor for TranscriptProtoEvent);
LABEL_5:
      v29 += v28;
      if (!--v27)
      {
        goto LABEL_14;
      }
    }
  }

  v157 = MEMORY[0x277D84F90];
LABEL_14:
  v36 = *(v157 + 16);
  v147 = v36;
  if (v36)
  {
    v37 = v161;
    v38 = *(v15 + 52);
    v39 = v157 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v163 = MEMORY[0x277D84F90];
    v40 = &qword_27E1F9D08;
    v41 = *(v153 + 72);
    v42 = v162;
    v159 = v41;
    do
    {
      sub_23C5A4514(v39, v42);
      v43 = v42 + v38;
      v44 = v42;
      v45 = v37;
      sub_23C5855B0(v43, v37, v40, &qword_23C87D090);
      v46 = type metadata accessor for TranscriptProtoTimepoint(0);
      if ((*(*(v46 - 8) + 48))(v37, 1, v46) == 1)
      {
        sub_23C65E398(v44, type metadata accessor for TranscriptProtoEvent);
        sub_23C585C34(v37, v40, &qword_23C87D090);
        v42 = v44;
      }

      else
      {
        v47 = v40;
        v48 = v38;
        v49 = v37 + *(v46 + 28);
        v50 = v160;
        sub_23C5855B0(v49, v160, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C65E398(v45, type metadata accessor for TranscriptProtoTimepoint);
        v51 = sub_23C870EC4();
        v52 = *(v51 - 8);
        if ((*(v52 + 48))(v50, 1, v51) == 1)
        {
          v53 = v50;
          v54 = v162;
          sub_23C65E398(v162, type metadata accessor for TranscriptProtoEvent);
          sub_23C585C34(v53, &unk_27E1F9D10, &qword_23C874E00);
          v38 = v48;
          v40 = v47;
          v42 = v54;
          v37 = v161;
          v41 = v159;
        }

        else
        {
          sub_23C870E94();
          v56 = v55;
          sub_23C65E398(v162, type metadata accessor for TranscriptProtoEvent);
          (*(v52 + 8))(v50, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_23C5845FC(0, *(v163 + 2) + 1, 1, v163);
          }

          v38 = v48;
          v40 = v47;
          v58 = *(v163 + 2);
          v57 = *(v163 + 3);
          v41 = v159;
          if (v58 >= v57 >> 1)
          {
            v163 = sub_23C5845FC((v57 > 1), v58 + 1, 1, v163);
          }

          v37 = v161;
          v42 = v162;
          v59 = v163;
          *(v163 + 2) = v58 + 1;
          *&v59[8 * v58 + 32] = v56;
        }
      }

      v39 += v41;
      --v36;
    }

    while (v36);
  }

  else
  {
    v163 = MEMORY[0x277D84F90];
  }

  v149 = sub_23C591B54(v163);
  v148 = v60;

  v61 = *(v157 + 16);
  if (v61)
  {
    *&v167 = MEMORY[0x277D84F90];
    v62 = v157;
    sub_23C592D0C(0, v61, 0);
    v63 = v167;
    v64 = v62 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v65 = *(v153 + 72);
    v66 = v158;
    do
    {
      sub_23C5A4514(v64, v66);
      v67 = *(v66 + 80);

      sub_23C65E398(v66, type metadata accessor for TranscriptProtoEvent);
      *&v167 = v63;
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      v70 = (v69 + 1);
      if (v69 >= v68 >> 1)
      {
        sub_23C592D0C((v68 > 1), v69 + 1, 1);
        v63 = v167;
      }

      *(v63 + 16) = v70;
      *(v63 + 8 * v69 + 32) = v67;
      v64 += v65;
      --v61;
    }

    while (v61);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
    v70 = *(MEMORY[0x277D84F90] + 16);
    if (!v70)
    {
LABEL_60:
      v72 = MEMORY[0x277D84F98];
LABEL_61:

      v104 = 0;
      v105 = 1 << *(v72 + 32);
      v106 = -1;
      if (v105 < 64)
      {
        v106 = ~(-1 << v105);
      }

      v107 = v106 & *(v72 + 64);
      v108 = (v105 + 63) >> 6;
      v109 = MEMORY[0x277D84F98];
      if (v107)
      {
        goto LABEL_66;
      }

      while (1)
      {
LABEL_67:
        v117 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_93;
        }

        if (v117 >= v108)
        {
          break;
        }

        v107 = *(v72 + 64 + 8 * v117);
        ++v104;
        if (v107)
        {
          while (1)
          {
            v118 = __clz(__rbit64(v107)) | (v117 << 6);
            v119 = (*(v72 + 48) + 16 * v118);
            v121 = *v119;
            v120 = v119[1];
            v122 = *(*(v72 + 56) + 8 * v118);
            type metadata accessor for SpanGraph();
            swift_bridgeObjectRetain_n();
            sub_23C658780(v122, v154, v121, v120, &v167);

            v123 = swift_isUniquelyReferenced_nonNull_native();
            v166 = v109;
            v124 = sub_23C5FF898(v121, v120);
            v126 = v109[2];
            v127 = (v125 & 1) == 0;
            v96 = __OFADD__(v126, v127);
            v128 = v126 + v127;
            if (v96)
            {
              goto LABEL_95;
            }

            v129 = v125;
            if (v109[3] >= v128)
            {
              if ((v123 & 1) == 0)
              {
                v136 = v124;
                sub_23C6453B8();
                v124 = v136;
              }
            }

            else
            {
              sub_23C640DF0(v128, v123);
              v124 = sub_23C5FF898(v121, v120);
              if ((v129 & 1) != (v130 & 1))
              {
                goto LABEL_98;
              }
            }

            v107 &= v107 - 1;
            if (v129)
            {
              v110 = v124;

              v109 = v166;
              v111 = (v166[7] + (v110 << 6));
              v112 = *(v111 + 41);
              v113 = v111[2];
              v114 = *v111;
              v164[1] = v111[1];
              v165[0] = v113;
              *(v165 + 9) = v112;
              v164[0] = v114;
              v115 = *v169;
              v116 = v167;
              v111[1] = v168;
              v111[2] = v115;
              *v111 = v116;
              *(v111 + 41) = *&v169[9];
              sub_23C65D660(v164);
              v104 = v117;
              if (!v107)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v109 = v166;
              v166[(v124 >> 6) + 8] |= 1 << v124;
              v131 = (v109[6] + 16 * v124);
              *v131 = v121;
              v131[1] = v120;
              v132 = (v109[7] + (v124 << 6));
              v133 = v168;
              *v132 = v167;
              v132[1] = v133;
              v132[2] = *v169;
              *(v132 + 41) = *&v169[9];
              v134 = v109[2];
              v96 = __OFADD__(v134, 1);
              v135 = v134 + 1;
              if (v96)
              {
                goto LABEL_96;
              }

              v109[2] = v135;
              v104 = v117;
              if (!v107)
              {
                goto LABEL_67;
              }
            }

LABEL_66:
            v117 = v104;
          }
        }
      }

      if (v152)
      {
        v137 = v151;
      }

      else
      {
        v137 = 0;
      }

      v138 = v152;
      if (!v152)
      {
        v139 = v157;
        if (!v147)
        {
LABEL_90:
          v142 = v150;
          v143 = v156;
          *v150 = v139;
          v142[1] = v143;
          *(v142 + 16) = 0;
          v142[3] = v109;
          v142[4] = v137;
          v144 = v149;
          v142[5] = v138;
          v142[6] = v144;
          *(v142 + 56) = v148 & 1;
        }

        if (!*(v157 + 16))
        {
          goto LABEL_97;
        }

        v140 = v146;
        sub_23C5855B0(v157 + *(v155 + 56) + ((*(v153 + 80) + 32) & ~*(v153 + 80)), v146, &qword_27E1FBF48, &unk_23C8A1140);
        v141 = type metadata accessor for TranscriptProtoParticipantID(0);
        if ((*(*(v141 - 8) + 48))(v140, 1, v141) == 1)
        {
          sub_23C585C34(v140, &qword_27E1FBF48, &unk_23C8A1140);
          v137 = 0;
          v138 = 0;
        }

        else
        {
          v137 = *v140;
          v138 = v140[1];

          sub_23C65E398(v140, type metadata accessor for TranscriptProtoParticipantID);
        }
      }

      v139 = v157;
      goto LABEL_90;
    }
  }

  v71 = 0;
  v160 = v63 + 32;
  v72 = MEMORY[0x277D84F98];
  v159 = v63;
  v158 = v70;
LABEL_36:
  if (v71 >= *(v63 + 16))
  {
    goto LABEL_94;
  }

  v73 = *(v160 + 8 * v71);
  v162 = (v71 + 1);

  v74 = swift_isUniquelyReferenced_nonNull_native();
  *&v167 = v72;
  v75 = v73 + 64;
  v76 = -1 << *(v73 + 32);
  if (-v76 < 64)
  {
    v77 = ~(-1 << -v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v73 + 64);
  v161 = (-1 << *(v73 + 32));
  v79 = (63 - v76) >> 6;
  v163 = v73;

  v80 = 0;
  while (2)
  {
    if (v78)
    {
      v83 = v72;
      v84 = v74;
      v85 = v80;
      goto LABEL_50;
    }

    v86 = v80;
    do
    {
      v85 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v85 >= v79)
      {
        sub_23C56EF08(v163);

        v71 = v162;
        v63 = v159;
        if (v162 == v158)
        {
          goto LABEL_61;
        }

        goto LABEL_36;
      }

      v78 = *(v75 + 8 * v85);
      ++v86;
    }

    while (!v78);
    v83 = v72;
    v84 = v74;
LABEL_50:
    v87 = __clz(__rbit64(v78)) | (v85 << 6);
    v88 = (*(v163 + 6) + 16 * v87);
    v90 = *v88;
    v89 = v88[1];
    v91 = *(*(v163 + 7) + 8 * v87);

    v92 = sub_23C5FF898(v90, v89);
    v94 = *(v83 + 16);
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (!v96)
    {
      v98 = v93;
      if (*(v83 + 24) >= v97)
      {
        if ((v84 & 1) == 0)
        {
          v103 = v92;
          sub_23C645568();
          v92 = v103;
        }
      }

      else
      {
        sub_23C641150(v97, v84 & 1);
        v92 = sub_23C5FF898(v90, v89);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_98;
        }
      }

      v78 &= v78 - 1;
      v72 = v167;
      if (v98)
      {
        v81 = *(*(v167 + 56) + 8 * v92);
        v82 = v92;

        *(*(v72 + 56) + 8 * v82) = v81;
        goto LABEL_42;
      }

      *(v167 + 8 * (v92 >> 6) + 64) |= 1 << v92;
      v100 = (*(v72 + 48) + 16 * v92);
      *v100 = v90;
      v100[1] = v89;
      *(*(v72 + 56) + 8 * v92) = v91;
      v101 = *(v72 + 16);
      v96 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v96)
      {
        goto LABEL_92;
      }

      *(v72 + 16) = v102;
LABEL_42:
      v74 = 1;
      v80 = v85;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C659620()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v2 + 88 + (v1 << 6));
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = v5 + 64;
    ++v1;
    v7 = *v5;
    v5 += 64;
    if ((v7 & 1) == 0)
    {
      v8 = *(v6 - 9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_23C5845FC(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_23C5845FC((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      goto LABEL_2;
    }
  }

  v11 = COERCE_DOUBLE(sub_23C591B54(v4));
  v13 = v12;

  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  *&v34[0] = v2;

  sub_23C659A2C(v34, sub_23C648E78, sub_23C659CE4);
  v15 = *&v34[0];
  v16 = *(*&v34[0] + 16);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 64)
    {
      v20 = *(v15 + i);
      v21 = *(v15 + i + 16);
      v22 = *(v15 + i + 32);
      *&v35[9] = *(v15 + i + 41);
      v34[1] = v21;
      *v35 = v22;
      v34[0] = v20;
      v23 = *(v15 + i + 16);
      v32[4] = *(v15 + i);
      v32[5] = v23;
      v33[0] = *(v15 + i + 32);
      *(v33 + 9) = *(v15 + i + 41);
      sub_23C64BC50(v34, v32);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v25 = SpanGraphNode.description(level:startTime:prefix:)(0, v14, v24);
      sub_23C65D660(v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23C5844DC(0, *(v18 + 2) + 1, 1, v18);
      }

      v27 = *(v18 + 2);
      v26 = *(v18 + 3);
      if (v27 >= v26 >> 1)
      {
        v18 = sub_23C5844DC((v26 > 1), v27 + 1, 1, v18);
      }

      *(v18 + 2) = v27 + 1;
      *&v18[16 * v27 + 32] = v25;
      if (!v17)
      {
        break;
      }

      --v17;
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  *&v34[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v28 = sub_23C871704();
  v30 = v29;

  *&v34[0] = 10;
  *(&v34[0] + 1) = 0xE100000000000000;
  MEMORY[0x23EED7100](v28, v30);

  return *&v34[0];
}

uint64_t SpanGraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23C659984(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E14(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C659AB0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23C659A2C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_23C659AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptProtoEvent(0);
        v6 = sub_23C8718F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23C65A624(v8, v9, a1, v4);
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
    return sub_23C659DDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659BDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB0, &qword_23C87D000);
        v5 = sub_23C8718F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23C65B830(v7, v8, a1, v4);
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
    return sub_23C65A440(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659CE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
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
        v5 = sub_23C8718F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23C65BE80(v7, v8, a1, v4);
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
    return sub_23C65A550(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v66 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v52 - v16;
  v69 = type metadata accessor for TranscriptProtoEvent(0);
  v17 = MEMORY[0x28223BE20](v69);
  v63 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v52 - v20;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v23;
  v54 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v61 = -v26;
    v62 = v25;
    v28 = a1 - a3;
    v53 = v26;
    v29 = v25 + v26 * a3;
    v64 = &v52 - v23;
    v65 = v12;
LABEL_6:
    v57 = v27;
    v58 = a3;
    v55 = v29;
    v56 = v28;
    v30 = v28;
    v31 = v66;
    while (1)
    {
      v67 = v30;
      sub_23C5A4514(v29, v24);
      sub_23C5A4514(v27, v70);
      sub_23C5855B0(&v24[*(v69 + 44)], v12, &qword_27E1F9950, &unk_23C87CFF0);
      v32 = type metadata accessor for TranscriptProtoPayload(0);
      v68 = *(*(v32 - 8) + 48);
      if (v68(v12, 1, v32) == 1)
      {
        sub_23C585C34(v12, &qword_27E1F9950, &unk_23C87CFF0);
        v33 = 0;
        v34 = 0xE000000000000000;
      }

      else
      {
        v35 = v59;
        sub_23C5855B0(v12, v59, &qword_27E1F9958, &qword_23C873E10);
        sub_23C65E398(v12, type metadata accessor for TranscriptProtoPayload);
        v36 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
        {
          sub_23C585C34(v35, &qword_27E1F9958, &qword_23C873E10);
          v33 = 0;
          v34 = 0xE000000000000000;
        }

        else
        {
          v37 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v31 = v66;
          v38 = v35;
          v33 = v37;
          v34 = v39;
          sub_23C65E398(v38, type metadata accessor for TranscriptProtoPayloadEnum);
        }
      }

      sub_23C5855B0(v70 + *(v69 + 44), v31, &qword_27E1F9950, &unk_23C87CFF0);
      if (v68(v31, 1, v32) == 1)
      {
        sub_23C585C34(v31, &qword_27E1F9950, &unk_23C87CFF0);
        v40 = 0xE000000000000000;
        v24 = v64;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v41 = v60;
        sub_23C5855B0(v31, v60, &qword_27E1F9958, &qword_23C873E10);
        sub_23C65E398(v31, type metadata accessor for TranscriptProtoPayload);
        v42 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
        v24 = v64;
        if (v43 == 1)
        {
          sub_23C585C34(v41, &qword_27E1F9958, &qword_23C873E10);
          v44 = 0;
          v40 = 0xE000000000000000;
        }

        else
        {
          v45 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v40 = v46;
          sub_23C65E398(v41, type metadata accessor for TranscriptProtoPayloadEnum);
          v44 = v45;
        }

        if (v33 != v44)
        {
          goto LABEL_20;
        }
      }

      if (v34 == v40)
      {

        sub_23C65E398(v70, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C65E398(v24, type metadata accessor for TranscriptProtoEvent);
        v12 = v65;
LABEL_5:
        a3 = v58 + 1;
        v27 = v57 + v53;
        v28 = v56 - 1;
        v29 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_20:
      v47 = sub_23C872014();

      sub_23C65E398(v70, type metadata accessor for TranscriptProtoEvent);
      result = sub_23C65E398(v24, type metadata accessor for TranscriptProtoEvent);
      v12 = v65;
      v31 = v66;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v62)
      {
        __break(1u);
        return result;
      }

      v48 = v63;
      sub_23C5A3818(v29, v63);
      swift_arrayInitWithTakeFrontToBack();
      v49 = v48;
      v50 = v67;
      result = sub_23C5A3818(v49, v27);
      v27 += v61;
      v29 += v61;
      v51 = __CFADD__(v50, 1);
      v30 = v50 + 1;
      if (v51)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_23C65A440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 80);
      v12 = *v10 == *(v10 - 80) && *(v10 + 8) == *(v10 - 72);
      if (v12 || (result = sub_23C872014(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 80;
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

      v18 = *(v10 + 32);
      *v19 = *(v10 + 48);
      *&v19[9] = *(v10 + 57);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 32);
      *(v10 + 32) = *(v10 - 48);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 16);
      v14 = *(v10 - 64);
      *v10 = *v11;
      *(v10 + 16) = v14;
      v10 -= 80;
      *(v11 + 57) = *&v19[9];
      v11[2] = v18;
      v11[3] = *v19;
      *v11 = v16;
      v11[1] = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C65A550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + (a3 << 6) + 56;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 - 1);
      if (*v8)
      {
        v9 = 0.0;
      }

      if (*(v8 - 8))
      {
        if (v9 >= 0.0)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= *(v8 - 9))
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v10 = v8 - 7;
      v12 = v8 - 15;
      v11 = *(v8 - 5);
      *v17 = *(v8 - 3);
      *&v17[9] = *(v8 - 15);
      v13 = *(v8 - 7);
      v14 = *(v8 - 13);
      *v10 = *(v8 - 15);
      *(v10 + 1) = v14;
      v15 = *(v8 - 9);
      *(v10 + 2) = *(v8 - 11);
      *(v10 + 3) = v15;
      *(v12 + 41) = *&v17[9];
      *(v12 + 1) = v11;
      *(v12 + 2) = *v17;
      *v12 = v13;
      v8 -= 8;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 64;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C65A624(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v185 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v156 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v173 = &v156 - v15;
  MEMORY[0x28223BE20](v14);
  v172 = &v156 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v179 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v178 = &v156 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v165 = &v156 - v23;
  MEMORY[0x28223BE20](v22);
  v164 = &v156 - v24;
  v25 = type metadata accessor for TranscriptProtoEvent(0);
  v174 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v166 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v183 = &v156 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v190 = &v156 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v188 = &v156 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v180 = &v156 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v176 = &v156 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  result = MEMORY[0x28223BE20](v38);
  v175 = a3;
  v42 = *(a3 + 8);
  if (v42 < 1)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_127:
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_169;
    }

    a4 = v44;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
      goto LABEL_130;
    }

LABEL_163:
    result = sub_23C6473A0(a4);
LABEL_130:
    v191 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v175)
      {
        v152 = *(result + 16 * a4);
        v153 = result;
        v154 = *(result + 16 * (a4 - 1) + 40);
        sub_23C65C4E8(*v175 + *(v174 + 72) * v152, *v175 + *(v174 + 72) * *(result + 16 * (a4 - 1) + 32), (*v175 + *(v174 + 72) * v154), a3);
        if (v5)
        {
        }

        if (v154 < v152)
        {
          goto LABEL_156;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_23C6473A0(v153);
        }

        if (a4 - 2 >= *(v153 + 2))
        {
          goto LABEL_157;
        }

        v155 = &v153[16 * a4];
        *v155 = v152;
        *(v155 + 1) = v154;
        v191 = v153;
        sub_23C647314(a4 - 1);
        result = v191;
        a4 = *(v191 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_167;
    }
  }

  v157 = &v156 - v40;
  v158 = v41;
  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v160 = a4;
  v184 = v13;
  v189 = v25;
  while (1)
  {
    v167 = v44;
    if (v43 + 1 >= v42)
    {
      v52 = v43 + 1;
    }

    else
    {
      v177 = v42;
      v45 = *v175;
      v46 = *(v174 + 72);
      v187 = (*v175 + v46 * (v43 + 1));
      v47 = v43;
      v48 = v157;
      sub_23C5A4514(v187, v157);
      v49 = v158;
      sub_23C5A4514(v45 + v46 * v47, v158);
      LODWORD(v181) = sub_23C658154();
      if (v5)
      {
        sub_23C65E398(v49, type metadata accessor for TranscriptProtoEvent);
        sub_23C65E398(v48, type metadata accessor for TranscriptProtoEvent);
      }

      v162 = 0;
      v182 = v46;
      sub_23C65E398(v49, type metadata accessor for TranscriptProtoEvent);
      a3 = v182;
      result = sub_23C65E398(v48, type metadata accessor for TranscriptProtoEvent);
      v159 = v47;
      v50 = v47 + 2;
      v51 = v45 + a3 * (v47 + 2);
      v52 = v177;
      v53 = v187;
      while (v52 != v50)
      {
        v56 = v176;
        sub_23C5A4514(v51, v176);
        v187 = v53;
        sub_23C5A4514(v53, v180);
        v57 = v56 + *(v25 + 44);
        v58 = v172;
        sub_23C5855B0(v57, v172, &qword_27E1F9950, &unk_23C87CFF0);
        v59 = type metadata accessor for TranscriptProtoPayload(0);
        v60 = *(*(v59 - 8) + 48);
        if (v60(v58, 1, v59) == 1)
        {
          sub_23C585C34(v58, &qword_27E1F9950, &unk_23C87CFF0);
          v61 = 0;
          v186 = 0xE000000000000000;
          v62 = v173;
        }

        else
        {
          v63 = v164;
          sub_23C5855B0(v58, v164, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v58, type metadata accessor for TranscriptProtoPayload);
          v64 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
          {
            sub_23C585C34(v63, &qword_27E1F9958, &qword_23C873E10);
            v61 = 0;
            v186 = 0xE000000000000000;
          }

          else
          {
            v61 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v186 = v65;
            sub_23C65E398(v63, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v62 = v173;
        }

        sub_23C5855B0(v180 + *(v189 + 44), v62, &qword_27E1F9950, &unk_23C87CFF0);
        if (v60(v62, 1, v59) == 1)
        {
          sub_23C585C34(v62, &qword_27E1F9950, &unk_23C87CFF0);
          v66 = 0;
          v67 = 0xE000000000000000;
          v25 = v189;
        }

        else
        {
          v68 = v165;
          sub_23C5855B0(v62, v165, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v62, type metadata accessor for TranscriptProtoPayload);
          v69 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
          {
            sub_23C585C34(v68, &qword_27E1F9958, &qword_23C873E10);
            v66 = 0;
            v67 = 0xE000000000000000;
          }

          else
          {
            v70 = v68;
            v66 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v67 = v71;
            sub_23C65E398(v70, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v25 = v189;
        }

        v52 = v177;
        if (v61 == v66 && v186 == v67)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_23C872014();
        }

        sub_23C65E398(v180, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C65E398(v176, type metadata accessor for TranscriptProtoEvent);
        v55 = v181 ^ v54;
        ++v50;
        a3 = v182;
        v51 += v182;
        v53 = &v187[v182];
        v13 = v184;
        if (v55)
        {
          v52 = v50 - 1;
          break;
        }
      }

      v5 = v162;
      a4 = v160;
      v43 = v159;
      if (v181)
      {
        if (v52 < v159)
        {
          goto LABEL_162;
        }

        if (v159 < v52)
        {
          v72 = a3 * (v52 - 1);
          v73 = v52;
          v74 = v52 * a3;
          v177 = v73;
          v75 = v159;
          v76 = v159 * a3;
          do
          {
            if (v75 != --v73)
            {
              v77 = *v175;
              if (!*v175)
              {
                goto LABEL_166;
              }

              sub_23C5A3818(v77 + v76, v166);
              if (v76 < v72 || v77 + v76 >= v77 + v74)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v76 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C5A3818(v166, v77 + v72);
              v5 = v162;
              a3 = v182;
            }

            ++v75;
            v72 -= a3;
            v74 -= a3;
            v76 += a3;
          }

          while (v75 < v73);
          a4 = v160;
          v13 = v184;
          v43 = v159;
          v52 = v177;
        }
      }
    }

    v78 = v175[1];
    if (v52 < v78)
    {
      if (__OFSUB__(v52, v43))
      {
        goto LABEL_159;
      }

      if (v52 - v43 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v52 < v43)
    {
      goto LABEL_158;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v44 = v167;
    }

    else
    {
      result = sub_23C584338(0, *(v167 + 2) + 1, 1, v167);
      v44 = result;
    }

    a3 = *(v44 + 2);
    v107 = *(v44 + 3);
    a4 = a3 + 1;
    if (a3 >= v107 >> 1)
    {
      result = sub_23C584338((v107 > 1), a3 + 1, 1, v44);
      v44 = result;
    }

    *(v44 + 2) = a4;
    v108 = &v44[16 * a3];
    *(v108 + 4) = v43;
    *(v108 + 5) = v52;
    v168 = v52;
    v109 = *v161;
    if (!*v161)
    {
      goto LABEL_168;
    }

    if (a3)
    {
      while (1)
      {
        v110 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v111 = *(v44 + 4);
          v112 = *(v44 + 5);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_93:
          if (v114)
          {
            goto LABEL_147;
          }

          v127 = &v44[16 * a4];
          v129 = *v127;
          v128 = *(v127 + 1);
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_150;
          }

          v133 = &v44[16 * v110 + 32];
          v135 = *v133;
          v134 = *(v133 + 1);
          v121 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v121)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v131, v136))
          {
            goto LABEL_154;
          }

          if (v131 + v136 >= v113)
          {
            if (v113 < v136)
            {
              v110 = a4 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v137 = &v44[16 * a4];
        v139 = *v137;
        v138 = *(v137 + 1);
        v121 = __OFSUB__(v138, v139);
        v131 = v138 - v139;
        v132 = v121;
LABEL_107:
        if (v132)
        {
          goto LABEL_149;
        }

        v140 = &v44[16 * v110];
        v142 = *(v140 + 4);
        v141 = *(v140 + 5);
        v121 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v121)
        {
          goto LABEL_152;
        }

        if (v143 < v131)
        {
          goto LABEL_3;
        }

LABEL_114:
        a3 = v110 - 1;
        if (v110 - 1 >= a4)
        {
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
          goto LABEL_161;
        }

        if (!*v175)
        {
          goto LABEL_165;
        }

        v148 = v44;
        a4 = *&v44[16 * a3 + 32];
        v149 = *&v44[16 * v110 + 40];
        sub_23C65C4E8(*v175 + *(v174 + 72) * a4, *v175 + *(v174 + 72) * *&v44[16 * v110 + 32], (*v175 + *(v174 + 72) * v149), v109);
        if (v5)
        {
        }

        if (v149 < a4)
        {
          goto LABEL_143;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v150 = v148;
        }

        else
        {
          v150 = sub_23C6473A0(v148);
        }

        if (a3 >= *(v150 + 2))
        {
          goto LABEL_144;
        }

        v151 = &v150[16 * a3];
        *(v151 + 4) = a4;
        *(v151 + 5) = v149;
        v191 = v150;
        result = sub_23C647314(v110);
        v44 = v191;
        a4 = *(v191 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v115 = &v44[16 * a4 + 32];
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_145;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_146;
      }

      v122 = &v44[16 * a4];
      v124 = *v122;
      v123 = *(v122 + 1);
      v121 = __OFSUB__(v123, v124);
      v125 = v123 - v124;
      if (v121)
      {
        goto LABEL_148;
      }

      v121 = __OFADD__(v113, v125);
      v126 = v113 + v125;
      if (v121)
      {
        goto LABEL_151;
      }

      if (v126 >= v118)
      {
        v144 = &v44[16 * v110 + 32];
        v146 = *v144;
        v145 = *(v144 + 1);
        v121 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v121)
        {
          goto LABEL_155;
        }

        if (v113 < v147)
        {
          v110 = a4 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

LABEL_3:
    v42 = v175[1];
    v43 = v168;
    a4 = v160;
    if (v168 >= v42)
    {
      goto LABEL_127;
    }
  }

  if (__OFADD__(v43, a4))
  {
    goto LABEL_160;
  }

  if ((v43 + a4) < v78)
  {
    v78 = v43 + a4;
  }

  a4 = v185;
  if (v78 < v43)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v168 = v78;
  if (v52 == v78)
  {
    goto LABEL_73;
  }

  v162 = v5;
  v79 = *v175;
  v80 = *(v174 + 72);
  v81 = *v175 + v80 * (v52 - 1);
  v181 = -v80;
  v159 = v43;
  v82 = v43 - v52;
  v182 = v79;
  v163 = v80;
  v83 = v79 + v52 * v80;
LABEL_53:
  v177 = v52;
  v169 = v83;
  v84 = v83;
  v170 = v82;
  v171 = v81;
  v85 = v82;
  v86 = v81;
  while (1)
  {
    v186 = v85;
    v87 = v188;
    sub_23C5A4514(v84, v188);
    sub_23C5A4514(v86, v190);
    sub_23C5855B0(v87 + *(v25 + 44), v13, &qword_27E1F9950, &unk_23C87CFF0);
    v88 = type metadata accessor for TranscriptProtoPayload(0);
    v187 = *(*(v88 - 8) + 48);
    if ((v187)(v13, 1, v88) == 1)
    {
      sub_23C585C34(v13, &qword_27E1F9950, &unk_23C87CFF0);
      v89 = 0;
      v90 = 0xE000000000000000;
    }

    else
    {
      v91 = v178;
      sub_23C5855B0(v13, v178, &qword_27E1F9958, &qword_23C873E10);
      v92 = v13;
      v93 = v91;
      sub_23C65E398(v92, type metadata accessor for TranscriptProtoPayload);
      v94 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v94 - 8) + 48))(v91, 1, v94) == 1)
      {
        sub_23C585C34(v91, &qword_27E1F9958, &qword_23C873E10);
        v89 = 0;
        v90 = 0xE000000000000000;
      }

      else
      {
        v95 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        a4 = v185;
        v89 = v95;
        v96 = v93;
        v90 = v97;
        sub_23C65E398(v96, type metadata accessor for TranscriptProtoPayloadEnum);
      }
    }

    sub_23C5855B0(v190 + *(v189 + 44), a4, &qword_27E1F9950, &unk_23C87CFF0);
    if ((v187)(a4, 1, v88) == 1)
    {
      sub_23C585C34(a4, &qword_27E1F9950, &unk_23C87CFF0);
      v98 = 0xE000000000000000;
      v25 = v189;
      if (v89)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v99 = v179;
      sub_23C5855B0(a4, v179, &qword_27E1F9958, &qword_23C873E10);
      sub_23C65E398(a4, type metadata accessor for TranscriptProtoPayload);
      v100 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
      {
        sub_23C585C34(v99, &qword_27E1F9958, &qword_23C873E10);
        v101 = 0;
        v98 = 0xE000000000000000;
      }

      else
      {
        v102 = v99;
        v103 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v98 = v104;
        sub_23C65E398(v102, type metadata accessor for TranscriptProtoPayloadEnum);
        v101 = v103;
      }

      v25 = v189;
      if (v89 != v101)
      {
        goto LABEL_67;
      }
    }

    if (v90 == v98)
    {

      a3 = type metadata accessor for TranscriptProtoEvent;
      sub_23C65E398(v190, type metadata accessor for TranscriptProtoEvent);
      sub_23C65E398(v188, type metadata accessor for TranscriptProtoEvent);
LABEL_51:
      v13 = v184;
      a4 = v185;
LABEL_52:
      v52 = v177 + 1;
      v81 = v171 + v163;
      v82 = v170 - 1;
      v83 = v169 + v163;
      if (v177 + 1 == v168)
      {
        v5 = v162;
        v43 = v159;
        v52 = v168;
        goto LABEL_73;
      }

      goto LABEL_53;
    }

LABEL_67:
    a3 = sub_23C872014();

    sub_23C65E398(v190, type metadata accessor for TranscriptProtoEvent);
    result = sub_23C65E398(v188, type metadata accessor for TranscriptProtoEvent);
    if ((a3 & 1) == 0)
    {
      goto LABEL_51;
    }

    v13 = v184;
    a4 = v185;
    v105 = v186;
    if (!v182)
    {
      break;
    }

    a3 = v183;
    sub_23C5A3818(v84, v183);
    swift_arrayInitWithTakeFrontToBack();
    sub_23C5A3818(a3, v86);
    v86 += v181;
    v84 += v181;
    v106 = __CFADD__(v105, 1);
    v85 = v105 + 1;
    if (v106)
    {
      goto LABEL_52;
    }
  }

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
  return result;
}

uint64_t sub_23C65B830(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_23C6473A0(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v89 = &v9[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_23C65D198((v88 + 80 * *v89), (v88 + 80 * *v90), (v88 + 80 * v91), v97);
        if (v5)
        {
        }

        if (v91 < v6)
        {
          goto LABEL_131;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_132;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_133;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        v6 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 80 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 80 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_23C872014();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 80 * v10 + 88);
        v18 = v17;
        do
        {
          result = v17[9];
          v20 = v18[10];
          v18 += 10;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23C872014();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 80 * v8 - 80;
          v23 = v10;
          v24 = 80 * v10;
          v25 = v8;
          v94 = v23;
          do
          {
            if (v23 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = (v27 + v22);
              v103 = *(v27 + v24 + 32);
              *v105 = *(v27 + v24 + 48);
              *&v105[9] = *(v27 + v24 + 57);
              v99 = *(v27 + v24);
              v101 = *(v27 + v24 + 16);
              result = memmove((v27 + v24), (v27 + v22), 0x50uLL);
              v26[2] = v103;
              v26[3] = *v105;
              *(v26 + 57) = *&v105[9];
              *v26 = v99;
              v26[1] = v101;
            }

            ++v23;
            v22 -= 80;
            v24 += 80;
          }

          while (v23 < v25);
          v10 = v94;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23C584338((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v97;
    if (!*v97)
    {
      goto LABEL_144;
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
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_76:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_125;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_124;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_127;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_23C65D198((*v6 + 80 * v83), (*v6 + 80 * *&v9[16 * v44 + 32]), (*v6 + 80 * v84), v43);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_23C6473A0(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_23C647314(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
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

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
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
        goto LABEL_126;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_130;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v93 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v93;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 80 * v8;
  v95 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 80);
    v35 = *v33 == *(v33 - 80) && *(v33 + 8) == *(v33 - 72);
    if (v35 || (result = sub_23C872014(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 80;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v95;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v104 = *(v33 + 32);
    *v106 = *(v33 + 48);
    *&v106[9] = *(v33 + 57);
    v100 = *v33;
    v102 = *(v33 + 16);
    v36 = *(v33 - 32);
    *(v33 + 32) = *(v33 - 48);
    *(v33 + 48) = v36;
    *(v33 + 64) = *(v33 - 16);
    v37 = *(v33 - 64);
    *v33 = *v34;
    *(v33 + 16) = v37;
    v33 -= 80;
    *(v34 + 57) = *&v106[9];
    v34[2] = v104;
    v34[3] = *v106;
    *v34 = v100;
    v34[1] = v102;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_23C65BE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_104:
    v95 = *v95;
    if (!v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_23C6473A0(v9);
      v9 = result;
    }

    v87 = v9 + 16;
    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v9[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_23C65D3EC((*a3 + (*v89 << 6)), (*a3 + (*v91 << 6)), (*a3 + (v92 << 6)), v95);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_128;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_129;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_130;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  if (v8 < v6)
  {
    v11 = *a3 + (v8 << 6);
    v12 = *(v11 + 48);
    v13 = *a3 + (v10 << 6);
    v14 = *(v13 + 48);
    if (*(v11 + 56))
    {
      v12 = 0.0;
    }

    if (*(v13 + 56))
    {
      v14 = 0.0;
    }

    v8 = v10 + 2;
    if (v10 + 2 < v6)
    {
      v15 = (v13 + 184);
      do
      {
        v16 = *(v15 - 1);
        if (*v15)
        {
          v16 = 0.0;
        }

        if (*(v15 - 64) == 1)
        {
          if (v12 < v14 == v16 >= 0.0)
          {
            goto LABEL_17;
          }
        }

        else if (v12 < v14 == v16 >= *(v15 - 9))
        {
          goto LABEL_17;
        }

        ++v8;
        v15 += 8;
      }

      while (v6 != v8);
      v8 = v6;
      if (v12 >= v14)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (v12 < v14)
    {
LABEL_18:
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if (v10 < v8)
      {
        v17 = (v8 << 6) - 64;
        v18 = v10 << 6;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v25 = (v24 + v18);
            v26 = (v24 + v17);
            v96 = *v25;
            v97 = v25[1];
            *v98 = v25[2];
            *&v98[9] = *(v25 + 41);
            if (v18 != v17 || v25 >= v26 + 4)
            {
              v21 = *v26;
              v22 = v26[1];
              v23 = v26[3];
              v25[2] = v26[2];
              v25[3] = v23;
              *v25 = v21;
              v25[1] = v22;
            }

            *v26 = v96;
            v26[1] = v97;
            v26[2] = *v98;
            *(v26 + 41) = *&v98[9];
          }

          ++v20;
          v17 -= 64;
          v18 += 64;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }
  }

LABEL_31:
  if (v8 >= v6)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_132;
  }

  if (v8 - v10 >= v7)
  {
    goto LABEL_53;
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_134;
  }

  if (v10 + v7 < v6)
  {
    v6 = v10 + v7;
  }

  if (v6 < v10)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v8 == v6)
  {
    goto LABEL_53;
  }

  v27 = *a3;
  v28 = *a3 + (v8 << 6) + 56;
  v29 = v10 - v8;
LABEL_41:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 - 1);
    if (*v31)
    {
      v32 = 0.0;
    }

    if (*(v31 - 8))
    {
      if (v32 >= 0.0)
      {
        goto LABEL_40;
      }
    }

    else if (v32 >= *(v31 - 9))
    {
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = v31 - 7;
    v35 = v31 - 15;
    v34 = *(v31 - 5);
    *v99 = *(v31 - 3);
    *&v99[9] = *(v31 - 15);
    v36 = *(v31 - 7);
    v37 = *(v31 - 13);
    *v33 = *(v31 - 15);
    *(v33 + 1) = v37;
    v38 = *(v31 - 9);
    *(v33 + 2) = *(v31 - 11);
    *(v33 + 3) = v38;
    *(v35 + 41) = *&v99[9];
    *(v35 + 1) = v34;
    *(v35 + 2) = *v99;
    *v35 = v36;
    v31 -= 8;
    if (__CFADD__(v30++, 1))
    {
LABEL_40:
      ++v8;
      v28 += 64;
      --v29;
      if (v8 != v6)
      {
        goto LABEL_41;
      }

      v8 = v6;
LABEL_53:
      if (v8 < v10)
      {
        goto LABEL_131;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_23C584338((v40 > 1), v41 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v42;
      v43 = &v9[16 * v41];
      *(v43 + 4) = v10;
      *(v43 + 5) = v8;
      v44 = *v95;
      if (!*v95)
      {
        goto LABEL_141;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v9 + 4);
            v47 = *(v9 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_73:
            if (v49)
            {
              goto LABEL_119;
            }

            v62 = &v9[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_122;
            }

            v68 = &v9[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_126;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v72 = &v9[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_87:
          if (v67)
          {
            goto LABEL_121;
          }

          v75 = &v9[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_124;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_94:
          v83 = v45 - 1;
          if (v45 - 1 >= v42)
          {
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
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_138;
          }

          v84 = *&v9[16 * v83 + 32];
          v85 = *&v9[16 * v45 + 40];
          sub_23C65D3EC((*a3 + (v84 << 6)), (*a3 + (*&v9[16 * v45 + 32] << 6)), (*a3 + (v85 << 6)), v44);
          if (v4)
          {
          }

          if (v85 < v84)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C6473A0(v9);
          }

          if (v83 >= *(v9 + 2))
          {
            goto LABEL_116;
          }

          v86 = &v9[16 * v83];
          *(v86 + 4) = v84;
          *(v86 + 5) = v85;
          result = sub_23C647314(v45);
          v42 = *(v9 + 2);
          if (v42 <= 1)
          {
            goto LABEL_3;
          }
        }

        v50 = &v9[16 * v42 + 32];
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_117;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_118;
        }

        v57 = &v9[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_120;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_123;
        }

        if (v61 >= v53)
        {
          v79 = &v9[16 * v45 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_127;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_104;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_23C65C4E8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v94 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  v93 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v85 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v83 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v86 = &v83 - v23;
  v99 = type metadata accessor for TranscriptProtoEvent(0);
  v24 = MEMORY[0x28223BE20](v99);
  v95 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v98 = &v83 - v30;
  result = MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_93;
  }

  v36 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_94;
  }

  v37 = (a2 - a1) / v35;
  v102 = a1;
  v101 = a4;
  if (v37 >= v36 / v35)
  {
    v39 = v36 / v35 * v35;
    if (a4 < a2 || a2 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v39 < 1)
    {
      v63 = a4 + v39;
    }

    else
    {
      v61 = -v35;
      v62 = (a4 + v39);
      v63 = a4 + v39;
      v96 = a4;
      v88 = v28;
      v90 = v61;
      while (2)
      {
        while (1)
        {
          v86 = v63;
          v64 = a2;
          a2 += v61;
          v97 = a2;
          v91 = v64;
          while (1)
          {
            if (v64 <= a1)
            {
              v102 = v64;
              v100 = v86;
              goto LABEL_91;
            }

            v66 = a3;
            v87 = v63;
            v94 = v62;
            v98 = &v62[v61];
            sub_23C5A4514(&v62[v61], v28);
            sub_23C5A4514(a2, v95);
            v67 = v89;
            sub_23C5855B0(&v28[*(v99 + 44)], v89, &qword_27E1F9950, &unk_23C87CFF0);
            v68 = type metadata accessor for TranscriptProtoPayload(0);
            v69 = *(*(v68 - 8) + 48);
            if (v69(v67, 1, v68) == 1)
            {
              sub_23C585C34(v67, &qword_27E1F9950, &unk_23C87CFF0);
              v93 = 0;
              v70 = 0xE000000000000000;
              v71 = v92;
            }

            else
            {
              v72 = v84;
              sub_23C5855B0(v67, v84, &qword_27E1F9958, &qword_23C873E10);
              sub_23C65E398(v67, type metadata accessor for TranscriptProtoPayload);
              v73 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
              {
                sub_23C585C34(v72, &qword_27E1F9958, &qword_23C873E10);
                v93 = 0;
                v70 = 0xE000000000000000;
              }

              else
              {
                v93 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                v70 = v74;
                sub_23C65E398(v72, type metadata accessor for TranscriptProtoPayloadEnum);
              }

              v71 = v92;
            }

            sub_23C5855B0(v95 + *(v99 + 44), v71, &qword_27E1F9950, &unk_23C87CFF0);
            if (v69(v71, 1, v68) == 1)
            {
              sub_23C585C34(v71, &qword_27E1F9950, &unk_23C87CFF0);
              v75 = 0;
              v76 = 0xE000000000000000;
              v28 = v88;
            }

            else
            {
              v77 = v85;
              sub_23C5855B0(v71, v85, &qword_27E1F9958, &qword_23C873E10);
              sub_23C65E398(v71, type metadata accessor for TranscriptProtoPayload);
              v78 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
              v28 = v88;
              if (v79 == 1)
              {
                sub_23C585C34(v77, &qword_27E1F9958, &qword_23C873E10);
                v75 = 0;
                v76 = 0xE000000000000000;
              }

              else
              {
                v75 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                v76 = v80;
                sub_23C65E398(v77, type metadata accessor for TranscriptProtoPayloadEnum);
              }
            }

            v61 = v90;
            if (v93 == v75 && v70 == v76)
            {
              v81 = 0;
            }

            else
            {
              v81 = sub_23C872014();
            }

            a2 = v97;

            a3 = &v66[v61];
            sub_23C65E398(v95, type metadata accessor for TranscriptProtoEvent);
            sub_23C65E398(v28, type metadata accessor for TranscriptProtoEvent);
            if (v81)
            {
              break;
            }

            v63 = v98;
            if (v66 < v94 || a3 >= v94)
            {
              swift_arrayInitWithTakeFrontToBack();
              v65 = v96;
            }

            else
            {
              v65 = v96;
              if (v66 != v94)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v62 = v63;
            v64 = v91;
            if (v98 <= v65)
            {
              a2 = v91;
              goto LABEL_90;
            }
          }

          if (v66 < v91 || a3 >= v91)
          {
            break;
          }

          v82 = v96;
          v63 = v87;
          v62 = v94;
          if (v66 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v62 <= v82)
          {
            goto LABEL_90;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v63 = v87;
        v62 = v94;
        if (v94 > v96)
        {
          continue;
        }

        break;
      }
    }

LABEL_90:
    v102 = a2;
    v100 = v63;
  }

  else
  {
    v38 = v37 * v35;
    if (a4 < a1 || a1 + v38 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v95 = a4 + v38;
    v100 = a4 + v38;
    if (v38 >= 1 && a2 < a3)
    {
      v91 = v35;
      v92 = a3;
      v90 = v33;
      do
      {
        sub_23C5A4514(a2, v33);
        v96 = a4;
        sub_23C5A4514(a4, v98);
        v41 = v93;
        sub_23C5855B0(&v33[*(v99 + 44)], v93, &qword_27E1F9950, &unk_23C87CFF0);
        v42 = type metadata accessor for TranscriptProtoPayload(0);
        v43 = *(*(v42 - 8) + 48);
        v44 = v43(v41, 1, v42);
        v97 = a2;
        if (v44 == 1)
        {
          sub_23C585C34(v41, &qword_27E1F9950, &unk_23C87CFF0);
          v45 = 0;
          v46 = 0xE000000000000000;
          v47 = v94;
        }

        else
        {
          v48 = v86;
          sub_23C5855B0(v41, v86, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v41, type metadata accessor for TranscriptProtoPayload);
          v49 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
          {
            sub_23C585C34(v48, &qword_27E1F9958, &qword_23C873E10);
            v45 = 0;
            v46 = 0xE000000000000000;
          }

          else
          {
            v45 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v50 = v48;
            v46 = v51;
            sub_23C65E398(v50, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v47 = v94;
        }

        sub_23C5855B0(v98 + *(v99 + 44), v47, &qword_27E1F9950, &unk_23C87CFF0);
        if (v43(v47, 1, v42) == 1)
        {
          sub_23C585C34(v47, &qword_27E1F9950, &unk_23C87CFF0);
          v52 = 0xE000000000000000;
          v33 = v90;
          if (v45)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v53 = v87;
          sub_23C5855B0(v47, v87, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v47, type metadata accessor for TranscriptProtoPayload);
          v54 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
          v33 = v90;
          if (v55 == 1)
          {
            sub_23C585C34(v53, &qword_27E1F9958, &qword_23C873E10);
            v56 = 0;
            v52 = 0xE000000000000000;
          }

          else
          {
            v56 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v52 = v57;
            sub_23C65E398(v53, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          if (v45 != v56)
          {
            goto LABEL_36;
          }
        }

        if (v46 == v52)
        {

          sub_23C65E398(v98, type metadata accessor for TranscriptProtoEvent);
          sub_23C65E398(v33, type metadata accessor for TranscriptProtoEvent);
          v58 = v92;
          goto LABEL_41;
        }

LABEL_36:
        v59 = sub_23C872014();

        sub_23C65E398(v98, type metadata accessor for TranscriptProtoEvent);
        sub_23C65E398(v33, type metadata accessor for TranscriptProtoEvent);
        v58 = v92;
        if (v59)
        {
          v60 = v91;
          a2 = v97 + v91;
          if (a1 < v97 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v96;
          goto LABEL_49;
        }

LABEL_41:
        a2 = v97;
        v60 = v91;
        a4 = v96 + v91;
        if (a1 < v96 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
          v101 = a4;
          goto LABEL_49;
        }

        v101 = a4;
LABEL_49:
        a1 += v60;
        v102 = a1;
      }

      while (a4 < v95 && a2 < v58);
    }
  }

LABEL_91:
  sub_23C6473B4(&v102, &v101, &v100);
  return 1;
}

uint64_t sub_23C65D198(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    v12 = 80 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_23C872014() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 80;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 80;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_9;
  }

  v16 = 80 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 80;
    v5 -= 80;
    v18 = v13;
    do
    {
      v19 = *(v18 - 10);
      v20 = *(v18 - 9);
      v18 -= 80;
      v21 = v19 == *(v6 - 10) && v20 == *(v6 - 9);
      if (!v21 && (sub_23C872014() & 1) != 0)
      {
        if (v5 + 80 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v13 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 80 != v13)
      {
        memmove(v5, v18, 0x50uLL);
      }

      v5 -= 80;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_39:
  v22 = 80 * ((v13 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_23C65D3EC(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 63;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 63;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __src || (__src + v14) <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = (v4 + v14);
    if (v8 < 64 || v6 >= v5)
    {
LABEL_44:
      v32 = v7;
      goto LABEL_46;
    }

    while (1)
    {
      v16 = v6[6];
      if (*(v6 + 56))
      {
        v16 = 0.0;
      }

      if (v4[7])
      {
        if (v16 >= 0.0)
        {
          goto LABEL_15;
        }
      }

      else if (v16 >= v4[6])
      {
LABEL_15:
        v17 = v4;
        v18 = v7 == v4;
        v4 += 8;
        if (v18)
        {
          goto LABEL_17;
        }

LABEL_16:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 3);
        *(v7 + 2) = *(v17 + 2);
        *(v7 + 3) = v21;
        *v7 = v19;
        *(v7 + 1) = v20;
        goto LABEL_17;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 8;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_44;
      }
    }
  }

  v22 = v13 << 6;
  if (a4 != __dst || (__dst + v22) <= a4)
  {
    memmove(a4, __dst, v13 << 6);
  }

  v15 = (v4 + v22);
  if (v11 < 64 || v6 <= v7)
  {
LABEL_45:
    v32 = v6;
    goto LABEL_46;
  }

  do
  {
    v23 = 0;
    v24 = v15;
    while (1)
    {
      v25 = &v24[v23];
      v26 = v24[v23 - 2];
      if (LOBYTE(v24[v23 - 1]))
      {
        v26 = 0.0;
      }

      if ((*(v6 - 1) & 1) == 0)
      {
        break;
      }

      if (v26 < 0.0)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (&v5[v23] != v25)
      {
        v27 = &v5[v23 - 8];
        v29 = *(v25 - 4);
        v30 = *(v25 - 3);
        v28 = v25 - 8;
        v31 = *(v28 + 3);
        *(v27 + 2) = *(v28 + 2);
        *(v27 + 3) = v31;
        *v27 = v29;
        *(v27 + 1) = v30;
      }

      v23 -= 8;
      v15 = &v24[v23];
      if (&v24[v23] <= v4)
      {
        goto LABEL_45;
      }
    }

    if (v26 >= *(v6 - 2))
    {
      goto LABEL_37;
    }

LABEL_39:
    v32 = v6 - 8;
    v33 = &v5[v23];
    v5 = &v5[v23 - 8];
    if (v33 != v6)
    {
      v34 = *v32;
      v35 = *(v6 - 3);
      v36 = *(v6 - 1);
      *(v5 + 2) = *(v6 - 2);
      *(v5 + 3) = v36;
      *v5 = v34;
      *(v5 + 1) = v35;
    }

    v15 = &v24[v23];
    if (&v24[v23] <= v4)
    {
      break;
    }

    v6 -= 8;
  }

  while (v32 > v7);
  v15 = &v24[v23];
LABEL_46:
  v37 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v32 != v4 || v32 >= (v4 + v37))
  {
    memmove(v32, v4, v37);
  }

  return 1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23C65D6AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_23C65D6F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23C65D7B4(uint64_t result)
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
        result = sub_23C65DD08(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
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

uint64_t sub_23C65D8AC(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = sub_23C8720E4();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v14);
      v41 = sub_23C65DDF8(v40, v4, v6, v5, v49);

      MEMORY[0x23EED8240](v40, -1, -1);
      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = sub_23C8720E4();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_23C667798(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_23C56EF08(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_23C65DD08(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_23C8720E4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23C650FF4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_23C65DFB4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_23C65DDF8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_23C8720E4();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_23C667798(v8, a2, v10, a3);
}

unint64_t sub_23C65DFB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23C871BC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_23C8720E4() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23C65E138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x277D84F90];
  sub_23C592BA4(0, v2, 0);
  v3 = v30;
  v27 = a1 + 56;
  v5 = sub_23C871BB4();
  v6 = *(a1 + 36);
  result = type metadata accessor for SpanGraph();
  if (v5 < 0 || v5 >= 1 << *(a1 + 32))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v25 = v2;
    v8 = 1;
    while (1)
    {
      v9 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      result = sub_23C658780(*(*(a1 + 48) + 8 * v5), a2, 0, 0, v28);
      v30 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_23C592BA4((v10 > 1), v11 + 1, 1);
        v3 = v30;
      }

      *(v3 + 16) = v11 + 1;
      v12 = (v3 + (v11 << 6));
      v13 = v28[0];
      v14 = v28[1];
      v15 = v29[0];
      *(v12 + 73) = *(v29 + 9);
      v12[3] = v14;
      v12[4] = v15;
      v12[2] = v13;
      v16 = 1 << *(a1 + 32);
      if (v5 >= v16)
      {
        goto LABEL_25;
      }

      v17 = *(v27 + 8 * v9);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v5 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v19 = v25;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v19 = v25;
        v22 = (a1 + 64 + 8 * v9);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_23C606430(v5, v6, 0);
            v5 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_23C606430(v5, v6, 0);
        v5 = v16;
      }

LABEL_18:
      if (v8 == v19)
      {
        return v3;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(a1 + 36);
        ++v8;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}