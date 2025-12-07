uint64_t sub_252415F58(uint64_t result, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_252414B38(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_252416B50();
      goto LABEL_19;
    }

    sub_252417EF8(v9 + 1);
  }

  v11 = *v4;
  sub_252693460();
  MEMORY[0x2530A4FE0](a2 & 1);
  sub_2523D782C(v25, v8);
  result = sub_2526934C0();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 16 * a3;
      v15 = *v14;
      if (*(v14 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_10;
        }

        j__swift_bridgeObjectRetain(*v14);
        j__swift_bridgeObjectRetain(v15);
        j__swift_bridgeObjectRetain(v8);
        sub_25243965C(v15, v8);
        v17 = v16;
        j__swift_bridgeObjectRelease(v15);
        j__swift_bridgeObjectRelease(v15);
        result = j__swift_bridgeObjectRelease(v8);
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a2)
        {
LABEL_10:
          j__swift_bridgeObjectRetain(*v14);
          j__swift_bridgeObjectRetain(v8);
          j__swift_bridgeObjectRelease(v15);
          result = j__swift_bridgeObjectRelease(v8);
          goto LABEL_11;
        }

        j__swift_bridgeObjectRetain(*v14);
        j__swift_bridgeObjectRetain(v15);
        j__swift_bridgeObjectRetain(v8);
        sub_25243965C(v15, v8);
        v19 = v18;
        j__swift_bridgeObjectRelease(v15);
        j__swift_bridgeObjectRelease(v15);
        result = j__swift_bridgeObjectRelease(v8);
        if (v19)
        {
LABEL_18:
          result = sub_2526933D0();
          __break(1u);
          break;
        }
      }

LABEL_11:
      a3 = (a3 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = v8;
  *(v21 + 8) = a2 & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_2524161D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_252414D38(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_252416CB4(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_2524180C0(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_252693460();
  MEMORY[0x2530A4FE0](v7);
  result = sub_2526934C0();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2526933D0();
  __break(1u);
  return result;
}

void *sub_252416340()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88, &qword_252696EF0);
  v6 = *v0;
  v7 = sub_2526931D0();
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
        sub_2524193D4(*(v6 + 48) + v21, v5, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
        result = sub_25241943C(v5, *(v8 + 48) + v21, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
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

void *sub_25241654C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC30, &qword_252696EF8);
  v2 = *v0;
  v3 = sub_2526931D0();
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

void *sub_25241668C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2526931D0();
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

void *sub_2524167BC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2526931D0();
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

void *sub_2524169F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38, &qword_252696CE8);
  v2 = *v0;
  v3 = sub_2526931D0();
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

void *sub_252416B50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80, &qword_252696D08);
  v2 = *v0;
  v3 = sub_2526931D0();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = j__swift_bridgeObjectRetain(v19);
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

void *sub_252416CB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2526931D0();
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
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

uint64_t sub_252416DE4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_25268DA10();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v45 = &v37 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB88, &qword_252696EF0);
  result = sub_2526931E0();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v1;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    v18 = result + 56;
    v40 = v5;
    v43 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v24 = v45;
      v25 = *(v44 + 72);
      sub_2524193D4(v23 + v25 * (v20 | (v12 << 6)), v45, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      sub_252693460();
      sub_2524193D4(v24, v46, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x2530A4FE0](1);
          sub_2526934A0();
        }

        else
        {
          v29 = v41;
          v28 = v42;
          (*v39)(v41, v46, v42);
          MEMORY[0x2530A4FE0](2);
          sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_252692B30();
          (*v38)(v29, v28);
        }
      }

      else
      {
        v27 = *v46;
        MEMORY[0x2530A4FE0](0);
        MEMORY[0x2530A4FE0](v27);
      }

      result = sub_2526934C0();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25241943C(v45, *(v11 + 48) + v19 * v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
      ++*(v11 + 16);
      v9 = v43;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v37;
        goto LABEL_31;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_25241727C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC30, &qword_252696EF8);
  result = sub_2526931E0();
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
      result = MEMORY[0x2530A4FB0](*(v5 + 40), v16, 4);
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

uint64_t sub_252417470(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2526931E0();
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
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_252693460();
      MEMORY[0x2530A4FE0](v18);
      result = sub_2526934C0();
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

uint64_t sub_252417688(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25268F520();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC50, &qword_252696F18);
  v7 = sub_2526931E0();
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
      sub_252419560(&qword_27F4DB2C0, MEMORY[0x277D163C8], MEMORY[0x277D163D0]);
      result = sub_252692B20();
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

uint64_t sub_2524179A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25268DA10();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB28, &qword_252696F10);
  v7 = sub_2526931E0();
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
      sub_252419560(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_252692B20();
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

uint64_t sub_252417CC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB38, &qword_252696CE8);
  result = sub_2526931E0();
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
      sub_252693460();

      sub_252692C80();
      result = sub_2526934C0();
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

unint64_t sub_252417EF8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBB80, &qword_252696D08);
  result = sub_2526931E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 16 * (v11 | (v5 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      sub_252693460();
      MEMORY[0x2530A4FE0](v16);

      sub_2523D782C(v19, v15);
      sub_2526934C0();
      result = sub_2526931C0();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v17 = *(v4 + 48) + 16 * result;
      *v17 = v15;
      *(v17 + 8) = v16;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v18 = v4;
  }

  return result;
}

uint64_t sub_2524180C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2526931E0();
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
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_252693460();
      MEMORY[0x2530A4FE0](v18);
      result = sub_2526934C0();
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
      *(*(v7 + 48) + v14) = v18;
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

uint64_t _s22HomeAccessoryControlUI0bC0V14StatusProviderO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v107 = a1;
  v108 = a2;
  v102 = sub_25268D990();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v97 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC58, &qword_252696F20);
  MEMORY[0x28223BE20](v99);
  v101 = &v97 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2D8, &qword_252696D10);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v97 - v7;
  MEMORY[0x28223BE20](v8);
  v103 = &v97 - v9;
  v10 = type metadata accessor for AccessoryControl.StatusProvider(0);
  MEMORY[0x28223BE20](v10);
  v106 = (&v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v105 = &v97 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v97 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v97 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v97 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v97 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v97 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBC60, &qword_252696F28);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v97 - v33;
  v36 = &v97 + *(v35 + 56) - v33;
  sub_2524193D4(v107, &v97 - v33, type metadata accessor for AccessoryControl.StatusProvider);
  v37 = v108;
  v108 = v36;
  sub_2524193D4(v37, v36, type metadata accessor for AccessoryControl.StatusProvider);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2524193D4(v34, v28, type metadata accessor for AccessoryControl.StatusProvider);
      v72 = *v28;
      v73 = v28[8];
      v74 = v108;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_36;
      }

      v75 = *v74;
      v76 = *(v74 + 8);
      if (v72)
      {
        if (!v75)
        {
          goto LABEL_66;
        }

        v77 = sub_252445528();

        if ((v77 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else if (v75)
      {
        goto LABEL_66;
      }

      if (v73 == 2)
      {
        if (v76 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_102;
      }

      if (v76 != 2 && ((v76 ^ v73) & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
    case 2u:
      sub_2524193D4(v34, v25, type metadata accessor for AccessoryControl.StatusProvider);
      v51 = *v25;
      v52 = *(v25 + 1);
      v53 = v25[16];
      v54 = *(v25 + 3);
      v55 = v25[32];
      v56 = *(v25 + 5);
      v57 = v25[48];
      v58 = v108;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_46;
      }

      v59 = *v58;
      v60 = v58[16];
      v61 = v58[32];
      v62 = v58[48];
      if (v51 == 2)
      {
        if (v59 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v59 == 2 || ((v59 ^ v51) & 1) != 0)
      {
        goto LABEL_67;
      }

      if (v53)
      {
        if (!v58[16])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v52 != *(v58 + 1))
        {
          v60 = 1;
        }

        if (v60)
        {
          goto LABEL_67;
        }
      }

      if (v55)
      {
        if (!v58[32])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v54 != *(v58 + 3))
        {
          v61 = 1;
        }

        if (v61)
        {
          goto LABEL_67;
        }
      }

      if (v57)
      {
        if (!v58[48])
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v56 != *(v58 + 5))
        {
          v62 = 1;
        }

        if (v62)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_102;
    case 3u:
      sub_2524193D4(v34, v22, type metadata accessor for AccessoryControl.StatusProvider);
      v63 = *v22;
      v64 = v108;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_36;
      }

      v65 = *v64;
      if (!v63)
      {
        goto LABEL_50;
      }

      if (v65)
      {
        goto LABEL_34;
      }

      goto LABEL_66;
    case 4u:
      sub_2524193D4(v34, v19, type metadata accessor for AccessoryControl.StatusProvider);
      v40 = *v19;
      v41 = v19[1];
      v42 = *(v19 + 16);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380, &qword_2526A49E0) + 64);
      v44 = v108;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_252372288(v19 + v43, &qword_27F4DB2D8, &qword_252696D10);
        goto LABEL_46;
      }

      v45 = *v44;
      v46 = v44[1];
      v47 = *(v44 + 16);
      v48 = v103;
      sub_2524134D8(v19 + v43, v103);
      v49 = v44 + v43;
      v50 = v104;
      sub_2524134D8(v49, v104);
      if (v40 == 2)
      {
        if (v45 != 2)
        {
          goto LABEL_57;
        }
      }

      else if (v45 == 2 || ((v45 ^ v40) & 1) != 0)
      {
        goto LABEL_57;
      }

      if (v42)
      {
        v83 = v102;
        if (!v47)
        {
LABEL_57:
          sub_252372288(v50, &qword_27F4DB2D8, &qword_252696D10);
          sub_252372288(v48, &qword_27F4DB2D8, &qword_252696D10);
          goto LABEL_67;
        }
      }

      else
      {
        if (v41 == v46)
        {
          v86 = v47;
        }

        else
        {
          v86 = 1;
        }

        v83 = v102;
        if (v86)
        {
          goto LABEL_57;
        }
      }

      v87 = *(v99 + 48);
      v88 = v101;
      sub_25237153C(v48, v101, &qword_27F4DB2D8, &qword_252696D10);
      sub_25237153C(v50, v88 + v87, &qword_27F4DB2D8, &qword_252696D10);
      v89 = *(v100 + 48);
      if (v89(v88, 1, v83) == 1)
      {
        sub_252372288(v50, &qword_27F4DB2D8, &qword_252696D10);
        v90 = v101;
        sub_252372288(v48, &qword_27F4DB2D8, &qword_252696D10);
        if (v89(v90 + v87, 1, v83) == 1)
        {
          sub_252372288(v90, &qword_27F4DB2D8, &qword_252696D10);
          goto LABEL_102;
        }

        goto LABEL_90;
      }

      v91 = v98;
      sub_25237153C(v88, v98, &qword_27F4DB2D8, &qword_252696D10);
      if (v89(v88 + v87, 1, v83) == 1)
      {
        sub_252372288(v50, &qword_27F4DB2D8, &qword_252696D10);
        v90 = v101;
        sub_252372288(v48, &qword_27F4DB2D8, &qword_252696D10);
        (*(v100 + 8))(v91, v83);
LABEL_90:
        sub_252372288(v90, &qword_27F4DBC58, &qword_252696F20);
        goto LABEL_67;
      }

      v92 = v100;
      v93 = v88 + v87;
      v94 = v97;
      (*(v100 + 32))(v97, v93, v83);
      sub_252419560(&qword_27F4DBC68, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v95 = sub_252692B70();
      v96 = *(v92 + 8);
      v96(v94, v83);
      sub_252372288(v104, &qword_27F4DB2D8, &qword_252696D10);
      sub_252372288(v48, &qword_27F4DB2D8, &qword_252696D10);
      v96(v91, v83);
      sub_252372288(v88, &qword_27F4DB2D8, &qword_252696D10);
      if (v95)
      {
        goto LABEL_102;
      }

LABEL_67:
      sub_2524194A4(v34, type metadata accessor for AccessoryControl.StatusProvider);
      return 0;
    case 5u:
      sub_2524193D4(v34, v16, type metadata accessor for AccessoryControl.StatusProvider);
      v78 = *v16;
      v79 = v108;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }

      v65 = *v79;
      if (!v78)
      {
LABEL_50:
        if (!v65)
        {
          goto LABEL_102;
        }

        goto LABEL_66;
      }

      if (!v65)
      {
LABEL_66:

        goto LABEL_67;
      }

LABEL_34:
      v80 = sub_252445528();

      if ((v80 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_102:
      sub_2524194A4(v34, type metadata accessor for AccessoryControl.StatusProvider);
      return 1;
    case 6u:
      v81 = v105;
      sub_2524193D4(v34, v105, type metadata accessor for AccessoryControl.StatusProvider);
      v38 = *v81;
      v39 = v108;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    case 7u:
      v66 = v106;
      sub_2524193D4(v34, v106, type metadata accessor for AccessoryControl.StatusProvider);
      v68 = *v66;
      v67 = v66[1];
      v69 = v108;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_36:

LABEL_46:
        sub_252372288(v34, &qword_27F4DBC60, &qword_252696F28);
        return 0;
      }

      v70 = *v69;
      v71 = v69[1];
      if (v68 == v70 && v67 == v71)
      {

        goto LABEL_102;
      }

      v84 = sub_2526933B0();

      if (v84)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_102;
      }

      goto LABEL_46;
    default:
      sub_2524193D4(v34, v31, type metadata accessor for AccessoryControl.StatusProvider);
      v38 = *v31;
      v39 = v108;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_46;
      }

LABEL_38:
      v82 = *v39;
      if (v38 == 2)
      {
        if (v82 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_102;
      }

      if (v82 != 2 && ((v82 ^ v38) & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_67;
  }
}

void sub_252418ED8(uint64_t a1)
{
  sub_25241938C(319, &qword_27F4DBBB0);
  if (v1 <= 0x3F)
  {
    sub_252419058(319);
    if (v2 <= 0x3F)
    {
      sub_2524190E4(319);
      if (v3 <= 0x3F)
      {
        sub_252419234(319, &qword_27F4DBBF0, &qword_27F4DBBF8, &qword_27F4DBC00, &qword_252696EA0);
        if (v4 <= 0x3F)
        {
          sub_252419288(319);
          if (v5 <= 0x3F)
          {
            sub_252419234(319, &qword_27F4DBC10, &qword_27F4DBC18, &qword_27F4DBC20, &qword_252696EA8);
            if (v6 <= 0x3F)
            {
              sub_25241938C(319, &qword_27F4DBC28);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_252419008()
{
  if (!qword_27F4DBBB8)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBBB8);
    }
  }
}

void sub_252419058(uint64_t a1)
{
  if (!qword_27F4DBBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBC8, &unk_252696E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0, &unk_2526A9B70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DBBC0);
    }
  }
}

void sub_2524190E4(uint64_t a1)
{
  if (!qword_27F4DBBD8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0, &unk_2526A9B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE0, &unk_252696E90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE8, &unk_2526994A0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F4DBBD8);
    }
  }
}

void sub_252419234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_252419338(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_252419288(uint64_t a1)
{
  if (!qword_27F4DBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBD0, &unk_2526A9B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBBE8, &unk_2526994A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2D8, &qword_252696D10);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F4DBC08);
    }
  }
}

void sub_252419338(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_252693130();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25241938C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_252419008();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2524193D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25241943C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2524194A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252419560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AccessoryControlGroup.DecorationControlConfig.init(alignment:style:mode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_25268F0E0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t type metadata accessor for AccessoryControlGroup.DecorationControlConfig(uint64_t a1)
{
  result = qword_27F4DBC90;
  if (!qword_27F4DBC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static AccessoryControlGroup.DecorationControlConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25268EE80() & 1) != 0 && (v4 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControlGroup.DecorationControlConfig.alignment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268F0E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessoryControlGroup.DecorationControlConfig.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.hash(into:)(uint64_t a1)
{
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  v2 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  MEMORY[0x2530A4FE0](*(v1 + *(v2 + 20)));
  return MEMORY[0x2530A4FE0](*(v1 + *(v2 + 24)));
}

uint64_t AccessoryControlGroup.DecorationControlConfig.hashValue.getter()
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  v1 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 20)));
  MEMORY[0x2530A4FE0](*(v0 + *(v1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_252419958(uint64_t a1)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 20)));
  MEMORY[0x2530A4FE0](*(v1 + *(a1 + 24)));
  return sub_2526934C0();
}

uint64_t sub_252419A10(uint64_t a1, uint64_t a2)
{
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  return MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
}

uint64_t sub_252419AB4(uint64_t a1, uint64_t a2)
{
  sub_252693460();
  sub_25268F0E0();
  sub_252419FB0(&qword_27F4DB788, MEMORY[0x277D15DB8], MEMORY[0x277D15DC0]);
  sub_252692B30();
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 20)));
  MEMORY[0x2530A4FE0](*(v2 + *(a2 + 24)));
  return sub_2526934C0();
}

uint64_t AccessoryControlGroup.DecorationControlConfig.description.getter()
{
  v1 = sub_25268F0B0();
  MEMORY[0x2530A4800](v1);

  MEMORY[0x2530A4800](0x3A656C797473202CLL, 0xE900000000000020);

  v2 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xEA00000000007478;
  v6 = 0x6554656C62756F64;
  if (*(v0 + *(v2 + 20)) != 2)
  {
    v6 = 0x6E776F44706F7264;
    v5 = 0xE800000000000000;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 1954047348;
    v3 = 0xE400000000000000;
  }

  if (*(v0 + *(v2 + 20)) <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*(v0 + *(v2 + 20)) <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  v9 = v2;

  MEMORY[0x2530A4800](v7, v8);

  MEMORY[0x2530A4800](0x72676B636162202CLL, 0xEE00203A646E756FLL);

  if (*(v0 + *(v9 + 24)))
  {
    if (*(v0 + *(v9 + 24)) == 1)
    {
      v10 = 0xE500000000000000;
      v11 = 0x746867696CLL;
    }

    else
    {
      v11 = 0x616C477261656C63;
      v10 = 0xEA00000000007373;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    v11 = 1802658148;
  }

  MEMORY[0x2530A4800](v11, v10);

  return 0x6E656D6E67696C61;
}

uint64_t AccessoryControlGroup.DecorationControlConfig.Style.description.getter()
{
  v1 = 0x6E6F74747562;
  v2 = 0x6554656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x6E776F44706F7264;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t AccessoryControlGroup.DecorationControlConfig.BackgroundMode.description.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x616C477261656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

unint64_t sub_252419EBC()
{
  result = qword_27F4DBC78;
  if (!qword_27F4DBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBC78);
  }

  return result;
}

unint64_t sub_252419F14()
{
  result = qword_27F4DBC80;
  if (!qword_27F4DBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBC80);
  }

  return result;
}

uint64_t sub_252419FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252419FFC()
{
  v1 = 0x6E6F74747562;
  v2 = 0x6554656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x6E776F44706F7264;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_25241A070()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x616C477261656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_25241A0EC(uint64_t a1)
{
  result = sub_25268F0E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s16ThermostatConfigV13GradientStyleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16ThermostatConfigV13GradientStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25241A328(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double sub_25241A3BC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t TransitionTileHelper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TransitionTileHelper.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25241A40C()
{
  type metadata accessor for TransitionTileHelper();
  sub_25241A480();
  sub_252690630();
  sub_252690650();
}

unint64_t sub_25241A480()
{
  result = qword_27F4DBCA0;
  if (!qword_27F4DBCA0)
  {
    type metadata accessor for TransitionTileHelper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCA0);
  }

  return result;
}

double static TransitionTileView.Config.empty.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_252692330();
  v4 = sub_252692340();
  v5 = sub_252692330();
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  v14 = 0u;
  v15 = 0u;
  *&v16 = 0x7FF0000000000000;
  *(&v16 + 1) = v6;
  *&v17 = sub_2526922F0();
  *(&v17 + 1) = sub_252692330();
  LOBYTE(v18) = 0;
  *(&v18 + 1) = 0x3FF0000000000000;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = 0u;
  v20 = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 49) = 1;
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = xmmword_252697190;
  *(a2 + 104) = xmmword_252697190;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  memset(v24, 0, sizeof(v24));
  sub_25241A6E4(&v14, v25);
  sub_25241A740(v24);
  v7 = v16;
  v8 = v17;
  v9 = v14;
  *(a2 + 240) = v15;
  *(a2 + 256) = v7;
  v10 = v18;
  *(a2 + 272) = v8;
  *(a2 + 288) = v10;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = v9;
  memset(v25, 0, sizeof(v25));
  sub_25241A740(v25);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  v11 = v22;
  *(a2 + 336) = v21;
  *(a2 + 352) = v11;
  *(a2 + 368) = v23;
  v12 = v20;
  *(a2 + 304) = v19;
  *(a2 + 320) = v12;
  sub_25241A7A8(0, 0);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 2;
  result = 0.0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  return result;
}

uint64_t sub_25241A6A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TransitionTileHelper();
  result = sub_252690630();
  *a2 = result;
  return result;
}

uint64_t sub_25241A740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCA8, &qword_2526971A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25241A7A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 TransitionTileView.Config.Icon.init(frame:maxWidth:drawCircle:size:color:unresponsiveColor:iconIdentifier:)@<Q0>(char a1@<W0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>)
{
  v11 = *a2;
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a9;
  *(a6 + 24) = a10;
  *(a6 + 32) = a11;
  *(a6 + 40) = a1;
  *(a6 + 41) = v11;
  *(a6 + 48) = *a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = 0;
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 80) = *a5;
  *(a6 + 96) = v13;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  return result;
}

__n128 TransitionTileView.Config.Text.init(frame:maxWidth:font:color:featherText:minimumScaleFactor:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  a4->n128_f64[0] = a5;
  a4->n128_f64[1] = a6;
  a4[1].n128_f64[0] = a7;
  a4[1].n128_f64[1] = a8;
  a4[2].n128_f64[0] = a9;
  a4[2].n128_u64[1] = a1;
  result = *a2;
  a4[3] = *a2;
  a4[4].n128_u8[0] = a3;
  a4[4].n128_f64[1] = a10;
  return result;
}

double TransitionTileView.Config.init(cornerRadius:icon:prefixText:primaryText:secondaryText:badge:background:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a8;
  v12 = a1[4];
  *(a7 + 88) = a1[5];
  v13 = a1[7];
  *(a7 + 104) = a1[6];
  *(a7 + 120) = v13;
  v14 = *a1;
  *(a7 + 24) = a1[1];
  v15 = a1[3];
  *(a7 + 40) = a1[2];
  *(a7 + 56) = v15;
  *(a7 + 72) = v12;
  v16 = *a5;
  v17 = a5[1];
  v18 = *a6;
  *(a7 + 136) = *(a1 + 16);
  *(a7 + 8) = v14;
  memset(v28, 0, sizeof(v28));
  sub_252372288(v28, &qword_27F4DBCA8, &qword_2526971A0);
  v19 = a2[3];
  *(a7 + 176) = a2[2];
  *(a7 + 192) = v19;
  v20 = a2[1];
  *(a7 + 144) = *a2;
  *(a7 + 160) = v20;
  v21 = a3[2];
  v22 = a3[3];
  v23 = *a3;
  *(a7 + 240) = a3[1];
  *(a7 + 256) = v21;
  v24 = a3[4];
  *(a7 + 272) = v22;
  *(a7 + 288) = v24;
  *(a7 + 208) = a2[4];
  *(a7 + 224) = v23;
  memset(v29, 0, sizeof(v29));
  sub_252372288(v29, &qword_27F4DBCA8, &qword_2526971A0);
  v25 = a4[3];
  *(a7 + 336) = a4[2];
  *(a7 + 352) = v25;
  *(a7 + 368) = a4[4];
  v26 = a4[1];
  *(a7 + 304) = *a4;
  *(a7 + 320) = v26;
  sub_25241A7A8(0, 0);
  *(a7 + 384) = v16;
  *(a7 + 392) = v17;
  *(a7 + 400) = v18;
  result = 0.0;
  *(a7 + 408) = 0u;
  *(a7 + 424) = 0u;
  return result;
}

uint64_t sub_25241ABF0()
{
  v1 = sub_25268FA00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2526910F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for TransitionTileView(0) + 28);
  v21 = *(v9 + 64);
  v10 = *(v9 + 48);
  v20[2] = *(v9 + 32);
  v20[3] = v10;
  v11 = *(v9 + 16);
  v20[0] = *v9;
  v20[1] = v11;
  if ((v21 & 0x100) != 0)
  {
    v12 = *(v9 + 48);
    v18[2] = *(v9 + 32);
    v18[3] = v12;
    v19 = *(v9 + 64);
    v13 = *(v9 + 16);
    v18[0] = *v9;
    v18[1] = v13;
  }

  else
  {

    sub_252692F00();
    v14 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v20, &qword_27F4DC120, &qword_25269CED0);
    (*(v6 + 8))(v8, v5);
  }

  if (v19 == 1)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277D166A8], v1);
    sub_2524230C0(&qword_27F4DC128, MEMORY[0x277D166B0], MEMORY[0x277D166A0]);
    v15 = sub_25268DB80();
    (*(v2 + 8))(v4, v1);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t TransitionTileView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCB0, &qword_252697248);
  MEMORY[0x28223BE20](v83);
  v85 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v84 = &v75[-v5];
  v88 = sub_25268F500();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(type metadata accessor for TransitionTileView(0) + 24);
  v10 = type metadata accessor for Device(0);
  v89 = *(v9 + v10[13]);
  v11 = (v9 + v10[8]);
  v13 = *v11;
  v12 = v11[1];
  swift_bridgeObjectRetain_n();

  sub_25268F4F0();
  v81 = sub_25268F4E0();
  v90 = v14;
  (*(v6 + 8))(v8, v88);
  v15 = (v9 + v10[16]);
  v16 = v15[1];
  if (v16)
  {
    v80 = *v15;
    v88 = v16;
  }

  else
  {
    v80 = sub_252692C40();
    v88 = v17;
  }

  if (v12)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v79 = v18;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v82 = v19;

  v20 = sub_2526928B0();
  v21 = v91;
  *v91 = v20;
  v21[1] = v22;
  v23 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCB8, &qword_252697250) + 44));
  sub_25241B5D0(&v92);
  v104 = *(v2 + 144);
  v24 = *(v2 + 96);
  v25 = *(v2 + 128);
  v102 = *(v2 + 112);
  v103 = v25;
  v26 = *(v2 + 64);
  v27 = *(v2 + 96);
  v100 = *(v2 + 80);
  v101 = v27;
  v28 = *(v2 + 32);
  v29 = *(v2 + 64);
  v98 = *(v2 + 48);
  v99 = v29;
  v30 = *(v2 + 32);
  v97[0] = *(v2 + 16);
  v97[1] = v30;
  v31 = v10[7];
  v33 = v10[14];
  v32 = v10[15];
  v34 = v10[18];
  v35 = *(v2 + 128);
  v113 = v102;
  v114 = v35;
  v109 = v98;
  v110 = v26;
  v111 = v100;
  v112 = v24;
  v36 = *v2;
  v37 = *(v9 + v32);
  v76 = v37;
  v38 = (v9 + v31);
  v39 = v38[1];
  v78 = *v38;
  v40 = *(v9 + v33);
  v41 = *(v9 + v34 + 8);
  v77 = *(v9 + v34);
  v86 = v41;
  v87 = v36;
  v115 = *(v2 + 144);
  v107 = v97[0];
  v108 = v28;
  sub_25241CBDC(v97, &v122);

  v42 = v84;
  LOBYTE(v41) = v89;
  sub_25241B9A4(v2, v79, v19, v89, v81, v90, v80, v88, v84);
  type metadata accessor for AnimationModel(0);
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v43 = sub_252690DF0();
  v44 = &v42[*(v83 + 36)];
  *v44 = v43;
  v44[1] = v45;
  v46 = v85;
  sub_25237153C(v42, v85, &qword_27F4DBCB0, &qword_252697248);
  v47 = v95;
  v116[2] = v94;
  v116[3] = v95;
  v48 = v96[0];
  v117[0] = v96[0];
  v49 = *(v96 + 13);
  *(v117 + 13) = *(v96 + 13);
  v50 = v92;
  v51 = v93;
  v116[0] = v92;
  v116[1] = v93;
  v23[2] = v94;
  v23[3] = v47;
  v23[4] = v48;
  *(v23 + 77) = v49;
  *v23 = v50;
  v23[1] = v51;
  *(&v118[6] + 8) = v113;
  *(&v118[5] + 8) = v112;
  *(&v118[2] + 8) = v109;
  *(&v118[1] + 8) = v108;
  *(&v118[7] + 8) = v114;
  *&v118[0] = v87;
  *(&v118[8] + 1) = v115;
  *(&v118[3] + 8) = v110;
  *(&v118[4] + 8) = v111;
  *(v118 + 8) = v107;
  LOBYTE(v119) = v41;
  BYTE1(v119) = v37;
  *(&v119 + 2) = v105;
  WORD3(v119) = v106;
  v53 = v77;
  v52 = v78;
  *(&v119 + 1) = v78;
  *&v120 = v39;
  *(&v120 + 1) = v40;
  *&v121 = v77;
  *(&v121 + 1) = v86;
  v54 = v118[5];
  v23[10] = v118[4];
  v23[11] = v54;
  v55 = v118[7];
  v23[12] = v118[6];
  v23[13] = v55;
  v56 = v118[1];
  v23[6] = v118[0];
  v23[7] = v56;
  v57 = v118[3];
  v23[8] = v118[2];
  v23[9] = v57;
  v58 = v121;
  v23[16] = v120;
  v23[17] = v58;
  v59 = v119;
  v23[14] = v118[8];
  v23[15] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCC8, &qword_252697258);
  sub_25237153C(v46, v23 + *(v60 + 64), &qword_27F4DBCB0, &qword_252697248);
  sub_25237153C(v116, &v122, &qword_27F4DBCD0, &qword_252697260);
  sub_25241CC14(v118, &v122);
  sub_252372288(v42, &qword_27F4DBCB0, &qword_252697248);
  sub_252372288(v46, &qword_27F4DBCB0, &qword_252697248);
  v128 = v112;
  v129 = v113;
  v130 = v114;
  v124 = v108;
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v122 = v87;
  v131 = v115;
  v123 = v107;
  v132 = v89;
  v133 = v76;
  v134 = v105;
  v135 = v106;
  v136 = v52;
  v137 = v39;
  v138 = v40;
  v139 = v53;
  v140 = v86;
  sub_25241CC4C(&v122);
  v141[2] = v94;
  v141[3] = v95;
  v142[0] = v96[0];
  *(v142 + 13) = *(v96 + 13);
  v141[0] = v92;
  v141[1] = v93;
  sub_252372288(v141, &qword_27F4DBCD0, &qword_252697260);

  sub_2526914E0();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCD8, &qword_252697268);
  v70 = v91 + *(v69 + 36);
  v71 = *(sub_252691640() + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_252691260();
  (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
  *v70 = v62;
  *(v70 + 1) = v64;
  *(v70 + 2) = v66;
  *(v70 + 3) = v68;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0, &qword_252697270);
  *&v70[*(result + 36)] = 256;
  return result;
}

uint64_t type metadata accessor for TransitionTileView(uint64_t a1)
{
  result = qword_27F4DBCF8;
  if (!qword_27F4DBCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_25241B5D0@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + 408))
  {
    v4 = v1 + *(type metadata accessor for TransitionTileView(0) + 24);
    if (*(v4 + *(type metadata accessor for Device(0) + 52)) == 1)
    {
      v5 = *(v1 + 8);
      LOBYTE(v13) = 0;
      LOBYTE(v19[0]) = 0;
      LOBYTE(v21) = 1;
      *(&v21 + 1) = v5;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = swift_getKeyPath();
      *&v25[25] = 0;
    }

    else
    {
      v7 = *(v1 + 8);
      LOBYTE(v13) = 0;
      LOBYTE(v19[0]) = 1;
      LOBYTE(v21) = 2;
      *(&v21 + 1) = v7;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = swift_getKeyPath();
      *&v25[25] = 256;
    }

    sub_252423218();
    sub_252691470();
    v23 = v11[2];
    v24 = v11[3];
    *v25 = v12[0];
    *&v25[11] = *(v12 + 11);
    v21 = v11[0];
    v22 = v11[1];
    v25[27] = 0;
    sub_25237153C(v11, v19, &qword_27F4DC148, &qword_252697D38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC148, &qword_252697D38);
    sub_252423194();
    sub_252691470();
    v23 = v15;
    v24 = v16;
    *v25 = *v17;
    *&v25[12] = *&v17[12];
    v21 = v13;
    v22 = v14;
    v18 = 0;
    v25[28] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130, &qword_252697D30);
    sub_252423108();
    sub_252691470();
    sub_252372288(v11, &qword_27F4DC148, &qword_252697D38);
    goto LABEL_12;
  }

  if (*(v1 + 408) == 1)
  {
    v3 = v1 + *(type metadata accessor for TransitionTileView(0) + 24);
    if (*(v3 + *(type metadata accessor for Device(0) + 52)) == 1)
    {
      sub_252692330();
    }

    else
    {
      v6 = [objc_opt_self() systemGray5Color];
      sub_252692240();
    }

    v18 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC148, &qword_252697D38);
    sub_252423194();
    sub_252691470();
    v23 = v15;
    v24 = v16;
    *v25 = *v17;
    *&v25[12] = *&v17[12];
    v21 = v13;
    v22 = v14;
    LOBYTE(v11[0]) = 0;
    v25[28] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130, &qword_252697D30);
    sub_252423108();
    sub_252691470();

LABEL_12:
    v23 = v19[2];
    v24 = v19[3];
    *v25 = *v20;
    *&v25[13] = *&v20[13];
    v21 = v19[0];
    v22 = v19[1];
    goto LABEL_13;
  }

  LOBYTE(v13) = 1;
  *&v19[0] = sub_252692310();
  v20[28] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC130, &qword_252697D30);
  sub_252423108();
  sub_252691470();
LABEL_13:
  v8 = v24;
  a1[2] = v23;
  a1[3] = v8;
  a1[4] = *v25;
  *(a1 + 77) = *&v25[13];
  result = *&v21;
  v10 = v22;
  *a1 = v21;
  a1[1] = v10;
  return result;
}

uint64_t sub_25241B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v138 = a7;
  v139 = a8;
  v143 = a5;
  v144 = a6;
  LODWORD(v149) = a4;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC028, &qword_252697C90);
  MEMORY[0x28223BE20](v140);
  v14 = &v134 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC030, &qword_252697C98);
  MEMORY[0x28223BE20](v134);
  v16 = (&v134 - v15);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC038, &qword_252697CA0);
  MEMORY[0x28223BE20](v141);
  v136 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v134 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC040, &qword_252697CA8);
  v145 = *(v20 - 8);
  v146 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v134 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC048, &qword_252697CB0);
  MEMORY[0x28223BE20](v23 - 8);
  v148 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v147 = &v134 - v26;
  v27 = *(a1 + 168);
  v28 = *(a1 + 200);
  v243 = *(a1 + 184);
  v244 = v28;
  v245 = *(a1 + 216);
  v29 = *(a1 + 152);
  v242[1] = v27;
  v242[0] = v29;
  v248 = v243;
  v249 = v28;
  v250 = v245;
  v246 = v29;
  v247 = v27;
  v30 = *(&v243 + 1);
  v142 = v22;
  v135 = v16;
  if (*(&v243 + 1))
  {
    if (v250 == 1)
    {
      v31 = 56;
      if (v149)
      {
        v31 = 48;
      }

      v32 = *(&v246 + v31);

      v34 = *(&v246 + 1);
      v33 = *&v246;
      v36 = *(&v247 + 1);
      v35 = *&v247;
      sub_25237153C(v242, &v231, &qword_27F4DBCA8, &qword_2526971A0);

      v37 = v30;
      v251.origin.x = v33;
      v251.origin.y = v34;
      v251.size.width = v35;
      v251.size.height = v36;
      CGRectGetWidth(v251);
      sub_252692930();
      sub_2526909C0();
      LOBYTE(v186) = 0;
      *&v231 = a2;
      *(&v231 + 1) = a3;
      *&v232 = v32;
      *(&v232 + 1) = v37;
      BYTE2(v237) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
      sub_252422A08();
      sub_252422A94();
      sub_252691470();
    }

    else
    {
      sub_25237153C(v242, &v231, &qword_27F4DBCA8, &qword_2526971A0);

      v38 = sub_25241ABF0();
      v233 = v248;
      v234 = v249;
      v235 = v250;
      v232 = v247;
      v231 = v246;
      LOBYTE(v175) = 1;
      *&v236 = a2;
      *(&v236 + 1) = a3;
      LOBYTE(v237) = v149 & 1;
      BYTE1(v237) = v38 & 1;
      BYTE2(v237) = 1;
      sub_25241A6E4(&v246, &v186);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
      sub_252422A08();
      sub_252422A94();
      sub_252691470();
      v34 = *(&v246 + 1);
      v33 = *&v246;
      v36 = *(&v247 + 1);
      v35 = *&v247;
    }

    v179 = v172;
    *v180 = v173[0];
    *&v180[15] = *(v173 + 15);
    v175 = v168;
    v176 = v169;
    v177 = v170;
    v178 = v171;
    v252.origin.x = v33;
    v252.origin.y = v34;
    v252.size.width = v35;
    v252.size.height = v36;
    MinX = CGRectGetMinX(v252);
    v253.origin.x = v33;
    v253.origin.y = v34;
    v253.size.width = v35;
    v253.size.height = v36;
    MinY = CGRectGetMinY(v253);
    v254.origin.x = v33;
    v254.origin.y = v34;
    v254.size.width = v35;
    v254.size.height = v36;
    CGRectGetHeight(v254);
    sub_252692920();
    sub_2526909C0();
    sub_252372288(v242, &qword_27F4DBCA8, &qword_2526971A0);
    v190 = v179;
    v191 = *v180;
    *&v192 = *&v180[16];
    v186 = v175;
    v187 = v176;
    v188 = v177;
    v189 = v178;
    *(&v192 + 1) = MinX;
    *v193 = MinY;
    *(&v193[2] + 8) = v163;
    *(&v193[1] + 8) = v162;
    *(v193 + 8) = v161;
    CGPointMake();
    v239 = v193[1];
    v240 = v193[2];
    v241 = *&v193[3];
    v235 = v190;
    v236 = v191;
    v238 = v193[0];
    v237 = v192;
    v231 = v186;
    v232 = v187;
    v234 = v189;
    v233 = v188;
  }

  else
  {
    sub_2524229DC(&v231);
  }

  v41 = *(a1 + 280);
  v222 = *(a1 + 296);
  v42 = *(a1 + 248);
  v220 = *(a1 + 264);
  v221 = v41;
  v43 = *(a1 + 232);
  v219 = v42;
  v218 = v43;
  if (v222 == 1)
  {
    v44 = 56;
    if (v149)
    {
      v44 = 48;
    }

    v45 = *(&v218 + v44);

    v46 = *(&v220 + 1);
    v48 = *(&v218 + 1);
    v47 = *&v218;
    v50 = *(&v219 + 1);
    v49 = *&v219;
    v51 = v144;

    v52 = v46;
    v255.origin.x = v47;
    v255.origin.y = v48;
    v255.size.width = v49;
    v255.size.height = v50;
    CGRectGetWidth(v255);
    sub_252692930();
    sub_2526909C0();
    LOBYTE(v175) = 0;
    *&v186 = v143;
    *(&v186 + 1) = v51;
    *&v187 = v45;
    *(&v187 + 1) = v52;
    BYTE2(v192) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
    sub_252422A08();
    sub_252422A94();
    sub_252691470();
  }

  else
  {
    v53 = v144;

    v54 = sub_25241ABF0();
    v188 = v220;
    v189 = v221;
    v190 = v222;
    v186 = v218;
    v187 = v219;
    LOBYTE(v168) = 1;
    *&v191 = v143;
    *(&v191 + 1) = v53;
    LOBYTE(v192) = v149 & 1;
    BYTE1(v192) = v54 & 1;
    BYTE2(v192) = 1;
    sub_25241A6E4(&v218, &v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
    sub_252422A08();
    sub_252422A94();
    sub_252691470();
    v48 = *(&v218 + 1);
    v47 = *&v218;
    v50 = *(&v219 + 1);
    v49 = *&v219;
  }

  v201 = v216;
  v202[0] = *v217;
  *(v202 + 15) = *&v217[15];
  v197 = v212;
  v198 = v213;
  v200 = v215;
  v199 = v214;
  v256.origin.x = v47;
  v256.origin.y = v48;
  v256.size.width = v49;
  v256.size.height = v50;
  v55 = CGRectGetMinX(v256);
  v257.origin.x = v47;
  v257.origin.y = v48;
  v257.size.width = v49;
  v257.size.height = v50;
  v56 = CGRectGetMinY(v257);
  v258.origin.x = v47;
  v258.origin.y = v48;
  v258.size.width = v49;
  v258.size.height = v50;
  CGRectGetHeight(v258);
  sub_252692920();
  v57 = 1;
  sub_2526909C0();
  v58 = (a1 + 312);
  v59 = *(a1 + 360);
  v205 = *(a1 + 344);
  v206 = v59;
  v207 = *(a1 + 376);
  v60 = *(a1 + 312);
  v204 = *(a1 + 328);
  v203 = v60;
  v209 = v205;
  v210 = v59;
  v211 = v207;
  v208.size = v204;
  v208.origin = v60;
  v61 = *(&v205 + 1);
  if (*(&v205 + 1))
  {
    v62 = *(a1 + 360);
    v230[2] = *(a1 + 344);
    v230[3] = v62;
    v230[4] = *(a1 + 376);
    v63 = *v58;
    v230[1] = *(a1 + 328);
    v230[0] = v63;
    v64 = *(a1 + 392);
    if (v64 && (v65 = *(a1 + 400), v66 = a1 + *(type metadata accessor for TransitionTileView(0) + 24), v67 = (v66 + *(type metadata accessor for Device(0) + 72)), (v68 = v67[1]) != 0))
    {
      v144 = v14;
      v69 = *v67;
      sub_25237153C(&v203, &v186, &qword_27F4DBCA8, &qword_2526971A0);
      sub_252420C84(v64, v65);
      v70 = sub_2526911D0();
      v71 = v135;
      *v135 = v70;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0D8, &qword_252697CF8) + 44);
      v73 = v149 & 1;
      v149 = v65;
      sub_25241CC7C(v138, v139, v230, v73, v69, v68, v64, v65, v72);
      origin = v208.origin;
      size = v208.size;
      v76 = CGRectGetMinX(v208);
      v259.origin = origin;
      v259.size = size;
      v77 = CGRectGetMinY(v259);
      v78 = (v71 + *(v134 + 36));
      *v78 = v76;
      v78[1] = v77;
      v260.origin = origin;
      v260.size = size;
      v79 = CGRectGetMinX(v260);
      v80 = sub_25241ABF0();
      v81 = 10.0;
      if (v80)
      {
        v81 = 12.0;
      }

      v82 = *&v209 - v79 - v81;
      v261.origin = origin;
      v261.size = size;
      CGRectGetHeight(v261);
      sub_252692930();
      if (v82 < 0.0)
      {
        sub_252692F00();
        v83 = sub_2526919C0();
        sub_252690570();
      }

      sub_252690D70();
      v84 = v136;
      sub_2523714D4(v71, v136, &qword_27F4DC030, &qword_252697C98);
      v85 = (v84 + *(v141 + 36));
      v86 = v228;
      v85[4] = v227;
      v85[5] = v86;
      v85[6] = v229;
      v87 = v224;
      *v85 = v223;
      v85[1] = v87;
      v88 = v226;
      v85[2] = v225;
      v85[3] = v88;
      v89 = v137;
      sub_2523714D4(v84, v137, &qword_27F4DC038, &qword_252697CA0);
      sub_25237153C(v89, v144, &qword_27F4DC038, &qword_252697CA0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC078, &qword_252697CD0);
      sub_252422AE8();
      sub_252422C2C();
      v90 = v142;
      sub_252691470();
      sub_25241A7A8(v64, v149);
      sub_252372288(&v203, &qword_27F4DBCA8, &qword_2526971A0);
      sub_252372288(v89, &qword_27F4DC038, &qword_252697CA0);
    }

    else
    {
      if (v211 == 1)
      {
        v91 = 56;
        if (v149)
        {
          v91 = 48;
        }

        v92 = *(&v208.origin.x + v91);

        y = v208.origin.y;
        x = v208.origin.x;
        height = v208.size.height;
        width = v208.size.width;
        sub_25237153C(&v203, &v186, &qword_27F4DBCA8, &qword_2526971A0);
        v97 = v139;

        v98 = v61;
        v262.origin.x = x;
        v262.origin.y = y;
        v262.size.width = width;
        v262.size.height = height;
        CGRectGetWidth(v262);
        sub_252692930();
        sub_2526909C0();
        LOBYTE(v175) = 0;
        *&v186 = v138;
        *(&v186 + 1) = v97;
        *&v187 = v92;
        *(&v187 + 1) = v98;
        BYTE2(v192) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
        sub_252422A08();
        sub_252422A94();
        sub_252691470();
      }

      else
      {
        sub_25237153C(&v203, &v186, &qword_27F4DBCA8, &qword_2526971A0);
        v100 = v139;

        v101 = sub_25241ABF0();
        v102 = *(a1 + 360);
        v188 = *(a1 + 344);
        v189 = v102;
        v190 = *(a1 + 376);
        v103 = *(a1 + 328);
        v186 = *v58;
        v187 = v103;
        LOBYTE(v168) = 1;
        *&v191 = v138;
        *(&v191 + 1) = v100;
        LOBYTE(v192) = v149 & 1;
        BYTE1(v192) = v101 & 1;
        BYTE2(v192) = 1;
        sub_25241A6E4(&v208, &v175);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC050, &qword_252697CB8);
        sub_252422A08();
        sub_252422A94();
        sub_252691470();
        y = v208.origin.y;
        x = v208.origin.x;
        height = v208.size.height;
        width = v208.size.width;
      }

      v90 = v142;
      v172 = v165;
      v173[0] = v166[0];
      *(v173 + 15) = *(v166 + 15);
      v168 = v161;
      v169 = v162;
      v170 = v163;
      v171 = v164;
      v263.origin.x = x;
      v263.origin.y = y;
      v263.size.width = width;
      v263.size.height = height;
      v104 = CGRectGetMinX(v263);
      v264.origin.x = x;
      v264.origin.y = y;
      v264.size.width = width;
      v264.size.height = height;
      v105 = CGRectGetMinY(v264);
      v265.origin.x = x;
      v265.origin.y = y;
      v265.size.width = width;
      v265.size.height = height;
      CGRectGetHeight(v265);
      sub_252692920();
      sub_2526909C0();
      v106 = v169;
      v186 = v168;
      v187 = v169;
      *&v192 = *&v173[1];
      v108 = v172;
      v107 = v173[0];
      v190 = v172;
      v191 = v173[0];
      v109 = v170;
      v110 = v171;
      v188 = v170;
      v189 = v171;
      *(&v192 + 1) = v104;
      *v193 = v105;
      *v14 = v168;
      *(v14 + 1) = v106;
      v111 = v193[1];
      v112 = v193[2];
      *(v14 + 20) = *&v193[3];
      *(v14 + 8) = v111;
      *(v14 + 9) = v112;
      v113 = v193[0];
      *(v14 + 6) = v192;
      *(v14 + 7) = v113;
      *(v14 + 4) = v108;
      *(v14 + 5) = v107;
      *(v14 + 2) = v109;
      *(v14 + 3) = v110;
      swift_storeEnumTagMultiPayload();
      sub_25237153C(&v186, &v175, &qword_27F4DC078, &qword_252697CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC078, &qword_252697CD0);
      sub_252422AE8();
      sub_252422C2C();
      sub_252691470();
      sub_252372288(&v203, &qword_27F4DBCA8, &qword_2526971A0);
      sub_252372288(&v186, &qword_27F4DC078, &qword_252697CD0);
    }

    v99 = v147;
    sub_2523714D4(v90, v147, &qword_27F4DC040, &qword_252697CA8);
    v57 = 0;
  }

  else
  {
    v99 = v147;
  }

  (*(v145 + 56))(v99, v57, 1, v146);
  v158 = v239;
  v159 = v240;
  v160 = v241;
  v154 = v235;
  v155 = v236;
  v156 = v237;
  v157 = v238;
  v150 = v231;
  v151 = v232;
  v152 = v233;
  v153 = v234;
  v114 = v148;
  sub_25237153C(v99, v148, &qword_27F4DC048, &qword_252697CB0);
  v115 = v159;
  v166[3] = v158;
  v166[4] = v159;
  v116 = v154;
  v117 = v155;
  v165 = v154;
  v166[0] = v155;
  v119 = v156;
  v118 = v157;
  v166[1] = v156;
  v166[2] = v157;
  v120 = v150;
  v121 = v151;
  v161 = v150;
  v162 = v151;
  v123 = v152;
  v122 = v153;
  v163 = v152;
  v164 = v153;
  *(a9 + 128) = v158;
  *(a9 + 144) = v115;
  *(a9 + 64) = v116;
  *(a9 + 80) = v117;
  *(a9 + 96) = v119;
  *(a9 + 112) = v118;
  v167 = v160;
  *(a9 + 160) = v160;
  *a9 = v120;
  *(a9 + 16) = v121;
  *(a9 + 32) = v123;
  *(a9 + 48) = v122;
  *&v173[1] = *&v202[1];
  v172 = v201;
  v173[0] = v202[0];
  v168 = v197;
  v169 = v198;
  v170 = v199;
  v171 = v200;
  *(&v173[1] + 1) = v55;
  *v174 = v56;
  *(&v174[2] + 8) = v196;
  *(&v174[1] + 8) = v195;
  *(v174 + 8) = v194;
  v124 = v197;
  v125 = v198;
  v126 = v200;
  *(a9 + 200) = v199;
  *(a9 + 184) = v125;
  *(a9 + 168) = v124;
  v127 = v172;
  *(a9 + 248) = v173[0];
  *(a9 + 232) = v127;
  *(a9 + 216) = v126;
  v128 = v173[1];
  v129 = v174[0];
  v130 = v174[1];
  v131 = v174[2];
  *(a9 + 328) = *&v174[3];
  *(a9 + 296) = v130;
  *(a9 + 312) = v131;
  *(a9 + 264) = v128;
  *(a9 + 280) = v129;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC068, &qword_252697CC0);
  sub_25237153C(v114, a9 + *(v132 + 64), &qword_27F4DC048, &qword_252697CB0);
  sub_25237153C(&v161, &v186, &qword_27F4DC070, &qword_252697CC8);
  sub_25237153C(&v168, &v186, &qword_27F4DC078, &qword_252697CD0);
  sub_252372288(v99, &qword_27F4DC048, &qword_252697CB0);
  sub_252372288(v114, &qword_27F4DC048, &qword_252697CB0);
  v179 = v201;
  *v180 = v202[0];
  *&v180[16] = *&v202[1];
  v175 = v197;
  v176 = v198;
  v177 = v199;
  v178 = v200;
  v181 = v55;
  v182 = v56;
  v185 = v196;
  v184 = v195;
  v183 = v194;
  sub_252372288(&v175, &qword_27F4DC078, &qword_252697CD0);
  v193[1] = v158;
  v193[2] = v159;
  *&v193[3] = v160;
  v190 = v154;
  v191 = v155;
  v192 = v156;
  v193[0] = v157;
  v186 = v150;
  v187 = v151;
  v188 = v152;
  v189 = v153;
  return sub_252372288(&v186, &qword_27F4DC070, &qword_252697CC8);
}

uint64_t sub_25241CC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v86 = a8;
  v85 = a7;
  v100 = a5;
  v101 = a6;
  v97 = a3;
  v104 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48, &qword_252697930);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v84 - v13;
  v14 = sub_25268E050();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF0, &qword_252697BE0);
  MEMORY[0x28223BE20](v88);
  v19 = &v84 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E0, &qword_252697D00);
  MEMORY[0x28223BE20](v95);
  v103 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v84 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v105 = &v84 - v25;
  v26 = *(v15 + 104);
  v93 = *MEMORY[0x277D15250];
  v92 = v15 + 104;
  v91 = v26;
  v26(v17, v24);
  v90 = sub_2524230C0(&qword_27F4DBD80, MEMORY[0x277D15260], MEMORY[0x277D15230]);
  v27 = sub_25268DB80();
  v28 = *(v15 + 8);
  v96 = v17;
  v98 = v15 + 8;
  v99 = v14;
  v89 = v28;
  v28(v17, v14);
  LODWORD(v102) = a4;
  v112 = a1;
  v113 = a2;

  if (v27)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
  }

  else
  {
    v29 = 548913696;
    v30 = 0xA400000000000000;
  }

  MEMORY[0x2530A4800](v29, v30);
  sub_252404480();
  v31 = sub_252691D50();
  v33 = v32;
  v35 = v34;
  v36 = v97;
  v37 = *(v97 + 40);
  sub_252691BE0();
  v38 = sub_252691D00();
  v40 = v39;
  v42 = v41;
  v87 = v43;

  sub_2524228D8(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v45 = &v19[*(v88 + 36)];
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF8, &qword_252697BE8) + 28);
  v47 = *MEMORY[0x277CE0B28];
  v48 = sub_252691CB0();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  *v19 = v38;
  *(v19 + 1) = v40;
  v19[16] = v42 & 1;
  *(v19 + 3) = v87;
  *(v19 + 4) = KeyPath;
  *(v19 + 5) = 1;
  v49 = v102;
  v50 = 56;
  if (v102)
  {
    v50 = 48;
  }

  v19[48] = 0;
  v51 = *(v36 + v50);
  v52 = swift_getKeyPath();
  v53 = v94;
  sub_2523714D4(v19, v94, &qword_27F4DBFF0, &qword_252697BE0);
  v54 = (v53 + *(v95 + 36));
  *v54 = v52;
  v54[1] = v51;
  sub_2523714D4(v53, v105, &qword_27F4DC0E0, &qword_252697D00);
  v55 = v96;
  v56 = v99;
  v91(v96, v93, v99);

  LOBYTE(v51) = sub_25268DB80();
  v89(v55, v56);
  if ((v51 & 1) == 0)
  {

    sub_2526923D0();
    v64 = v84;
    sub_252691310();
    v65 = sub_252691340();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    v66 = sub_252692400();

    sub_252372288(v64, &qword_27F4DBD48, &qword_252697930);
    if (v49)
    {
      v67 = v85;
    }

    else
    {
      v67 = v86;
    }

    v68 = swift_getKeyPath();

    v69 = sub_252691BB0();
    v70 = swift_getKeyPath();
    v106 = v66;
    v107 = v68;
    v108 = v67;
    v109 = v70;
    v110 = v69;
    v111 = 0;
    goto LABEL_18;
  }

  v58 = v100;
  v57 = v101;
  if ((v100 != 0xD00000000000001DLL || 0x80000002526AEB00 != v101) && (sub_2526933B0() & 1) == 0 && (v58 != 0xD000000000000020 || 0x80000002526AEB20 != v57) && (sub_2526933B0() & 1) == 0)
  {

    sub_2526923D0();
    v77 = v84;
    sub_252691310();
    v78 = sub_252691340();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = sub_252692400();

    sub_252372288(v77, &qword_27F4DBD48, &qword_252697930);
    if (v49)
    {
      v80 = v85;
    }

    else
    {
      v80 = v86;
    }

    v81 = swift_getKeyPath();

    v82 = sub_252691BB0();
    v83 = swift_getKeyPath();
    v106 = v79;
    v107 = v81;
    v108 = v80;
    v109 = v83;
    v110 = v82;
    v111 = 1;
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E8, &qword_252697D08);
    sub_252422E54();
    sub_252691470();
    v60 = v114;
    v61 = v115;
    v62 = v116;
    v63 = v117;
    v59 = v112;
    v102 = v113;
    sub_252422FC4(v112, v113, v114, v115, v116);
    goto LABEL_19;
  }

  v59 = 0;
  v102 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = -1;
LABEL_19:
  v71 = v105;
  v72 = v103;
  sub_25237153C(v105, v103, &qword_27F4DC0E0, &qword_252697D00);
  v73 = v104;
  sub_25237153C(v72, v104, &qword_27F4DC0E0, &qword_252697D00);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC118, &unk_252697D20) + 48);
  v75 = v102;
  sub_25242302C(v59, v102, v60, v61, v62, v63);
  sub_252423044(v59, v75, v60, v61, v62, v63);
  *v74 = v59;
  *(v74 + 8) = v75;
  *(v74 + 16) = v60;
  *(v74 + 24) = v61;
  *(v74 + 32) = v62;
  *(v74 + 40) = v63;
  sub_252372288(v71, &qword_27F4DC0E0, &qword_252697D00);
  sub_252423044(v59, v75, v60, v61, v62, v63);
  return sub_252372288(v72, &qword_27F4DC0E0, &qword_252697D00);
}

uint64_t sub_25241D5CC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = a2;
  v105 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40, &qword_2526A1820);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48, &qword_252697930);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD50, &qword_252697938);
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  v95 = (v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v94 = v90 - v16;
  v17 = sub_25268E050();
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x28223BE20](v17);
  v97 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD58, &qword_252697940);
  MEMORY[0x28223BE20](v19 - 8);
  v102 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD60, &qword_252697948);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = (v90 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD68, &qword_252697950);
  MEMORY[0x28223BE20](v27);
  v29 = v90 - v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD70, &qword_252697958);
  MEMORY[0x28223BE20](v96);
  v100 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v90 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v90 - v35;
  *v26 = sub_252692920();
  v26[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD78, &qword_252697960);
  sub_25241E0F4(a1, v5, v26 + *(v38 + 44), a4, a5);
  v39 = *a1;
  type metadata accessor for AnimationModel(0);
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v40 = sub_252690DF0();
  v41 = v26 + *(v24 + 44);
  *v41 = v40;
  *(v41 + 1) = v42;
  *(v41 + 2) = v39;
  v43 = a1;
  v41[24] = 1;
  v44 = a1[1];
  v45 = a1[2];
  v46 = a1[3];
  v47 = a1[4];
  v48 = *(a1 + 49);
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v26, v29, &qword_27F4DBD60, &qword_252697948);
  v49 = &v29[*(v27 + 36)];
  v50 = v114[5];
  *(v49 + 4) = v114[4];
  *(v49 + 5) = v50;
  *(v49 + 6) = v114[6];
  v51 = v114[1];
  *v49 = v114[0];
  *(v49 + 1) = v51;
  v52 = v114[3];
  *(v49 + 2) = v114[2];
  *(v49 + 3) = v52;
  *&v52 = v44;
  *&v51 = v45;
  v53 = v46;
  v54 = v47;
  MidX = CGRectGetMidX(*(&v51 - 8));
  v115.origin.x = v44;
  v115.origin.y = v45;
  v115.size.width = v46;
  v115.size.height = v47;
  MidY = CGRectGetMidY(v115);
  sub_2523714D4(v29, v33, &qword_27F4DBD68, &qword_252697950);
  v57 = &v33[*(v96 + 36)];
  *v57 = MidX;
  v57[1] = MidY;
  sub_2523714D4(v33, v36, &qword_27F4DBD70, &qword_252697958);
  if (v48 == 2)
  {
    v58 = 16.0;
  }

  else
  {
    v58 = 4.0;
  }

  if (v48 == 2)
  {
    v59 = -15.0;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = v97;
  v61 = v98;
  v62 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277D15250], v99);
  sub_2524230C0(&qword_27F4DBD80, MEMORY[0x277D15260], MEMORY[0x277D15230]);
  v63 = sub_25268DB80();
  (*(v61 + 8))(v60, v62);
  if (v63 & 1) != 0 && (v64 = *(v43 + 23)) != 0 && ((v65 = *(v43 + 22), v65 == 0xD00000000000001DLL) && v64 == 0x80000002526AEB00 || (sub_2526933B0() & 1) != 0 || v65 == 0xD000000000000020 && v64 == 0x80000002526AEB20 || (sub_2526933B0()))
  {
    if (v48 == 2)
    {
      v66 = sub_2526928C0();
    }

    else
    {
      v66 = sub_2526928E0();
    }

    v69 = v92;
    v70 = v95;
    *v95 = v66;
    v70[1] = v67;

    sub_2526923D0();
    v71 = *(v43 + 144);
    v90[3] = v43;
    v91 = v36;
    if (v71)
    {
      sub_252691330();
    }

    else
    {
      sub_252691310();
    }

    LODWORD(v99) = v48 != 2;
    v72 = sub_252691340();
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
    v73 = sub_252692400();

    sub_252372288(v69, &qword_27F4DBD48, &qword_252697930);
    v74 = sub_252692330();
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD90, &qword_252697970) + 44);
    v75 = [objc_opt_self() systemOrangeColor];
    v76 = sub_252692240();
    v77 = sub_252691B00();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_252691B50();
    sub_252372288(v78, &qword_27F4DBD40, &qword_2526A1820);
    KeyPath = swift_getKeyPath();
    sub_2526922F0();
    v81 = sub_252692350();

    *&v106 = v73;
    *(&v106 + 1) = v74;
    *&v107 = v76;
    *(&v107 + 1) = KeyPath;
    *&v108 = v79;
    *(&v108 + 1) = v81;
    v109 = xmmword_252697220;
    *&v110 = 0x4000000000000000;
    *(&v110 + 1) = v58;
    v111 = v59;
    MEMORY[0x28223BE20](v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD98, &qword_2526979A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBDA0, &qword_2526979B0);
    sub_252421768();
    sub_2524219F0();
    v83 = v95;
    sub_252691D70();
    v112[3] = v109;
    v112[4] = v110;
    v113 = v111;
    v112[0] = v106;
    v112[1] = v107;
    v112[2] = v108;
    sub_252372288(v112, &qword_27F4DBD98, &qword_2526979A8);
    v84 = v94;
    sub_252312084(v83, v94);
    v68 = v101;
    sub_252312084(v84, v101);
    (*(v103 + 56))(v68, 0, 1, v104);
    v36 = v91;
  }

  else
  {
    v68 = v101;
    (*(v103 + 56))(v101, 1, 1, v104);
  }

  v85 = v100;
  sub_25237153C(v36, v100, &qword_27F4DBD70, &qword_252697958);
  v86 = v102;
  sub_252311FA4(v68, v102);
  v87 = v105;
  sub_25237153C(v85, v105, &qword_27F4DBD70, &qword_252697958);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD88, &qword_252697968);
  sub_252311FA4(v86, v87 + *(v88 + 48));
  sub_252312014(v68);
  sub_252372288(v36, &qword_27F4DBD70, &qword_252697958);
  sub_252312014(v86);
  return sub_252372288(v85, &qword_27F4DBD70, &qword_252697958);
}

uint64_t sub_25241E0F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v166) = a2;
  v178 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40, &qword_2526A1820);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v136 - v9;
  v171 = sub_25268DBA0();
  v147 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v146 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE10, &qword_2526979E0);
  MEMORY[0x28223BE20](v175);
  v177 = (&v136 - v11);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE18, &qword_2526979E8);
  MEMORY[0x28223BE20](v168);
  v169 = &v136 - v12;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE20, &qword_2526979F0);
  MEMORY[0x28223BE20](v176);
  v170 = &v136 - v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE28, &qword_2526979F8);
  MEMORY[0x28223BE20](v148);
  v151 = (&v136 - v14);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE30, &qword_252697A00);
  MEMORY[0x28223BE20](v149);
  v16 = &v136 - v15;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE38, &qword_252697A08);
  MEMORY[0x28223BE20](v164);
  v150 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = &v136 - v19;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE40, &qword_252697A10);
  MEMORY[0x28223BE20](v162);
  v163 = &v136 - v20;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE48, &qword_252697A18);
  MEMORY[0x28223BE20](v157);
  v143 = (&v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v144 = &v136 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE50, &qword_252697A20);
  MEMORY[0x28223BE20](v155);
  v156 = &v136 - v24;
  v25 = sub_2526923E0();
  v141 = *(v25 - 8);
  v142 = v25;
  MEMORY[0x28223BE20](v25);
  v140 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48, &qword_252697930);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v136 - v28;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE58, &qword_252697A28);
  MEMORY[0x28223BE20](v159);
  v138 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v145 = &v136 - v32;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE60, &qword_252697A30);
  MEMORY[0x28223BE20](v160);
  v34 = &v136 - v33;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE68, &qword_252697A38);
  MEMORY[0x28223BE20](v167);
  v161 = &v136 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE70, &qword_252697A40);
  MEMORY[0x28223BE20](v36 - 8);
  v174 = &v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v181 = &v136 - v39;
  LODWORD(v180) = *(a1 + 144);
  v154 = v34;
  v152 = v16;
  v173 = (v180 & 1) == 0 || (*(a1 + 145) & 1) == 0;
  v179 = *(a1 + 48);
  v158 = *(a1 + 49);
  v165 = *(a1 + 72);
  v40 = *(a1 + 96);
  v41 = *(a1 + 136);
  v215 = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  v213 = 0;
  *&v214[7] = *(a1 + 56);
  sub_25237153C(&v215, v194, &qword_27F4DBE78, &qword_252697A70);
  sub_252692920();
  v139 = a4;
  sub_2526909C0();
  if (v40)
  {
    if (v180)
    {

      if ((v166 & 1) == 0)
      {
LABEL_8:
        sub_2526923F0();
        sub_252691320();
        v42 = sub_252691340();
        (*(*(v42 - 8) + 56))(v29, 0, 1, v42);
        v43 = sub_252692400();

        sub_252372288(v29, &qword_27F4DBD48, &qword_252697930);
        v44 = v151;
        v45 = (v151 + *(v148 + 36));
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF50, &qword_252697AC0) + 28);
        v47 = *MEMORY[0x277CE1048];
        v48 = sub_252692410();
        (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
        *v45 = swift_getKeyPath();
        *v44 = v43;
        if (v158 == 2)
        {
          v49 = v165;
          v50 = v152;
          if (qword_27F4DA9B0 != -1)
          {
            swift_once();
          }

          v51 = &qword_27F4FB3C8;
        }

        else
        {
          v49 = v165;
          v50 = v152;
          if (qword_27F4DA9A8 != -1)
          {
            swift_once();
          }

          v51 = &qword_27F4FB3C0;
        }

        v67 = *v51;

        v68 = swift_getKeyPath();
        sub_2523714D4(v44, v50, &qword_27F4DBE28, &qword_2526979F8);
        v69 = (v50 + *(v149 + 36));
        *v69 = v68;
        v69[1] = v67;
        LOBYTE(v69) = *(a1 + 145);
        v70 = v161;
        if (v69)
        {
          if (v180)
          {
            v49 = v215;
          }

          else
          {
            v49 = *(&v215 + 1);
          }
        }

        v89 = v150;
        sub_2523714D4(v50, v150, &qword_27F4DBE30, &qword_252697A00);
        *(v89 + *(v164 + 36)) = v49;
        v90 = &qword_27F4DBE38;
        v91 = &qword_252697A08;
        v92 = v153;
        sub_2523714D4(v89, v153, &qword_27F4DBE38, &qword_252697A08);
        sub_25237153C(v92, v163, &qword_27F4DBE38, &qword_252697A08);
        swift_storeEnumTagMultiPayload();
        sub_252421C18();
        sub_2524221D8();

        sub_252691470();
        v93 = v92;
LABEL_39:
        sub_252372288(v93, v90, v91);
        sub_25237153C(v70, v169, &qword_27F4DBE68, &qword_252697A38);
        swift_storeEnumTagMultiPayload();
        sub_252421B8C();
        sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080], MEMORY[0x277D18078]);
        v121 = v170;
        sub_252691470();
        sub_25237153C(v121, v177, &qword_27F4DBE20, &qword_2526979F0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80, &qword_252697A78);
        sub_252421AD0();
        sub_252422400();
        v88 = v181;
        sub_252691470();
        sub_252372288(v121, &qword_27F4DBE20, &qword_2526979F0);
        sub_252372288(v70, &qword_27F4DBE68, &qword_252697A38);
        goto LABEL_40;
      }
    }

    else
    {

      if ((v166 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (a5 >= 24.0)
    {
      sub_2526923F0();
      sub_252691320();
      v71 = sub_252691340();
      (*(*(v71 - 8) + 56))(v29, 0, 1, v71);
      v166 = sub_252692400();

      sub_252372288(v29, &qword_27F4DBD48, &qword_252697930);
      v72 = sub_252691B70();
      v73 = swift_getKeyPath();
      v74 = v165;
      if (*(a1 + 145))
      {
        if (v180)
        {
          v74 = v215;
        }

        else
        {
          v74 = *(&v215 + 1);
        }
      }

      v115 = swift_getKeyPath();
      v116 = v143;
      v117 = (v143 + *(v157 + 36));
      v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
      v119 = *MEMORY[0x277CDF3C0];
      v120 = sub_252690850();
      (*(*(v120 - 8) + 104))(v117 + v118, v119, v120);
      *v117 = v115;
      *v116 = v166;
      v116[1] = v73;
      v116[2] = v72;
      v116[3] = v74;
      v111 = &qword_27F4DBE48;
      v112 = &qword_252697A18;
      v113 = v144;
      sub_2523714D4(v116, v144, &qword_27F4DBE48, &qword_252697A18);
      sub_25237153C(v113, v156, &qword_27F4DBE48, &qword_252697A18);
      swift_storeEnumTagMultiPayload();
      sub_252421CA4();
      sub_252421FB0();

      v114 = v154;
    }

    else
    {
      sub_2526923F0();
      sub_252691320();
      v52 = sub_252691340();
      (*(*(v52 - 8) + 56))(v29, 0, 1, v52);
      sub_252692400();

      sub_252372288(v29, &qword_27F4DBD48, &qword_252697930);
      v54 = v140;
      v53 = v141;
      v55 = v142;
      (*(v141 + 104))(v140, *MEMORY[0x277CE0FE0], v142);
      v56 = sub_252692420();

      (*(v53 + 8))(v54, v55);
      sub_252692920();
      sub_252690D70();
      v57 = sub_252691A20();
      sub_252690760();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      LOBYTE(v189[0]) = 0;
      LOBYTE(v194[0]) = 1;
      v66 = v165;
      if (*(a1 + 145))
      {
        if (v180)
        {
          v66 = v215;
        }

        else
        {
          v66 = *(&v215 + 1);
        }
      }

      v102 = swift_getKeyPath();
      v103 = v138;
      v104 = &v138[*(v159 + 36)];
      v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0) + 28);
      v106 = *MEMORY[0x277CDF3C0];
      v107 = sub_252690850();
      (*(*(v107 - 8) + 104))(v104 + v105, v106, v107);
      *v104 = v102;
      v108 = v184;
      *(v103 + 56) = v185;
      v109 = v187;
      *(v103 + 72) = v186;
      *(v103 + 88) = v109;
      *(v103 + 104) = v188;
      v110 = v183;
      *(v103 + 8) = v182;
      *(v103 + 24) = v110;
      *v103 = v56;
      *(v103 + 40) = v108;
      *(v103 + 120) = v57;
      *(v103 + 128) = v59;
      *(v103 + 136) = v61;
      *(v103 + 144) = v63;
      *(v103 + 152) = v65;
      *(v103 + 160) = 0;
      *(v103 + 168) = 0;
      *(v103 + 176) = 1;
      *(v103 + 184) = v66;
      v111 = &qword_27F4DBE58;
      v112 = &qword_252697A28;
      v113 = v145;
      sub_2523714D4(v103, v145, &qword_27F4DBE58, &qword_252697A28);
      sub_25237153C(v113, v156, &qword_27F4DBE58, &qword_252697A28);
      swift_storeEnumTagMultiPayload();
      sub_252421CA4();
      sub_252421FB0();

      v114 = v154;
    }

    sub_252691470();
    sub_252372288(v113, v111, v112);
    v90 = &qword_27F4DBE60;
    v91 = &qword_252697A30;
    sub_25237153C(v114, v163, &qword_27F4DBE60, &qword_252697A30);
    swift_storeEnumTagMultiPayload();
    sub_252421C18();
    sub_2524221D8();
    v70 = v161;
    sub_252691470();
    v93 = v114;
    goto LABEL_39;
  }

  if (v41)
  {
    v180 = v41;
    v84 = v146;
    sub_25268DB90();
    v85 = v147;
    v86 = v171;
    (*(v147 + 16))(v169, v84, v171);
    swift_storeEnumTagMultiPayload();
    sub_252421B8C();
    sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080], MEMORY[0x277D18078]);
    v87 = v170;
    sub_252691470();
    sub_25237153C(v87, v177, &qword_27F4DBE20, &qword_2526979F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80, &qword_252697A78);
    sub_252421AD0();
    sub_252422400();
    v88 = v181;
    sub_252691470();

    sub_252372288(v87, &qword_27F4DBE20, &qword_2526979F0);
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    v75 = *(a1 + 160);
    if (v75)
    {
      v194[0] = *(a1 + 152);
      v194[1] = v75;
      sub_252404480();

      v180 = sub_252691D50();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = swift_getKeyPath();

      if (v158)
      {
        sub_252691B10();
      }

      else
      {
        sub_252691B40();
      }

      v133 = sub_252691B00();
      v95 = 1;
      v134 = v137;
      (*(*(v133 - 8) + 56))(v137, 1, 1, v133);
      v97 = sub_252691B50();
      sub_252372288(v134, &qword_27F4DBD40, &qword_2526A1820);
      LOBYTE(v194[0]) = v79 & 1;
      LOBYTE(v189[0]) = 0;
      v75 = swift_getKeyPath();
      v101 = LOBYTE(v194[0]);
      v100 = LOBYTE(v189[0]);
      v98 = swift_getKeyPath();
      v99 = 0x3FC999999999999ALL;
      v96 = v83;
      v94 = v180;
    }

    else
    {
      v94 = 0;
      v77 = 0;
      v81 = 0;
      v82 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
    }

    v135 = v177;
    *v177 = v94;
    v135[1] = v77;
    v135[2] = v101;
    v135[3] = v81;
    v135[4] = v82;
    v135[5] = v95;
    v135[6] = v100;
    v135[7] = v96;
    v135[8] = v75;
    v135[9] = v97;
    v135[10] = v98;
    v135[11] = v99;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBE80, &qword_252697A78);
    sub_252421AD0();
    sub_252422400();
    v88 = v181;
    sub_252691470();
  }

LABEL_40:
  if (v179)
  {
    v122 = 1.0;
  }

  else
  {
    v122 = 0.0;
  }

  v123 = v174;
  sub_25237153C(v88, v174, &qword_27F4DBE70, &qword_252697A40);
  v124 = v173;
  LOBYTE(v189[0]) = v173;
  *(v189 + 1) = *v214;
  v125 = KeyPath;
  *&v189[1] = *&v214[15];
  *(&v189[1] + 1) = KeyPath;
  v190 = v210;
  v191 = v211;
  v192[0] = *v212;
  *(v192 + 9) = *&v212[9];
  BYTE9(v192[1]) = 0;
  *(&v192[1] + 10) = v208;
  HIWORD(v192[1]) = v209;
  *v193 = v122;
  *&v193[40] = v207;
  *&v193[24] = v206;
  *&v193[8] = v205;
  v126 = v192[1];
  v127 = v178;
  *(v178 + 64) = v192[0];
  *(v127 + 80) = v126;
  v128 = v191;
  *(v127 + 32) = v190;
  *(v127 + 48) = v128;
  v129 = v189[1];
  *v127 = v189[0];
  *(v127 + 16) = v129;
  *(v127 + 144) = *&v193[48];
  v130 = *&v193[32];
  *(v127 + 112) = *&v193[16];
  *(v127 + 128) = v130;
  *(v127 + 96) = *v193;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFC8, &qword_252697AF8);
  sub_25237153C(v123, v127 + *(v131 + 48), &qword_27F4DBE70, &qword_252697A40);
  sub_25237153C(v189, v194, &qword_27F4DBFD0, &qword_252697B00);
  sub_252372288(v181, &qword_27F4DBE70, &qword_252697A40);
  sub_252372288(v123, &qword_27F4DBE70, &qword_252697A40);
  *(v194 + 1) = *v214;
  v195 = v210;
  LOBYTE(v194[0]) = v124;
  v194[2] = *&v214[15];
  v194[3] = v125;
  v196 = v211;
  *v197 = *v212;
  *&v197[9] = *&v212[9];
  v198 = 0;
  v199 = v208;
  v200 = v209;
  v201 = v122;
  v202 = v205;
  v203 = v206;
  v204 = v207;
  return sub_252372288(v194, &qword_27F4DBFD0, &qword_252697B00);
}

uint64_t sub_25241F820@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  v5 = a1[4];
  v19 = a1[3];
  v20 = v5;
  v21 = *(a1 + 10);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18 = v4;
  v7 = *a2;
  type metadata accessor for AnimationModel(0);
  sub_2524230C0(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v8 = sub_252690DF0();
  v9 = v19;
  v10 = v20;
  *(a3 + 32) = v18;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  v11 = v21;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 80) = v11;
  *(a3 + 88) = v8;
  *(a3 + 96) = v13;
  *(a3 + 104) = v7;
  *(a3 + 112) = 1;
  return sub_25237153C(&v16, v15, &qword_27F4DBD98, &qword_2526979A8);
}

uint64_t sub_25241F90C@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[9];
  v24 = v2[8];
  v25 = v4;
  v5 = v2[11];
  v26 = v2[10];
  v27 = v5;
  v6 = v2[5];
  v20 = v2[4];
  v21 = v6;
  v7 = v2[7];
  v22 = v2[6];
  v23 = v7;
  v8 = v2[1];
  v16 = *v2;
  v17 = v8;
  v9 = v2[3];
  v18 = v2[2];
  v19 = v9;
  v10 = *(&v17 + 1);
  v11 = *&v18;
  v12 = v21;
  *a2 = sub_252692920();
  a2[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD38, &unk_252697920);
  return sub_25241D5CC(&v16, v12 & 1, a2 + *(v14 + 44), v10, v11);
}

uint64_t sub_25241F9D0(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40, &qword_2526A1820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_252691B00();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_252691B50();
  result = sub_252372288(v6, &qword_27F4DBD40, &qword_2526A1820);
  *a3 = v8;
  return result;
}

uint64_t sub_25241FADC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFD8, &qword_252697BC8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFE0, &qword_252697BD0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v61 = &v57 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFE8, &qword_252697BD8);
  MEMORY[0x28223BE20](v62);
  v63 = &v57 - v9;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = (v1 + 48);
  v17 = *(v1 + 72);
  v18 = *(v1 + 80);
  v19 = *(v1 + 88);
  v20 = *(v1 + 96);
  v60 = *(v1 + 97);
  if (!v20)
  {
    v16 = (v1 + 56);
  }

  v59 = *v16;
  *&v65 = v18;
  *(&v65 + 1) = v19;
  sub_252404480();
  v21 = v15;

  v22 = sub_252691D50();
  v24 = v23;
  v26 = v25;
  sub_252691BE0();
  v27 = sub_252691D00();
  v57 = v28;
  v30 = v29;
  v58 = v31;

  sub_2524228D8(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v33 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF0, &qword_252697BE0) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBFF8, &qword_252697BE8) + 28);
  v35 = *MEMORY[0x277CE0B28];
  v36 = sub_252691CB0();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v5 = v27;
  v37 = v61;
  *(v5 + 1) = v57;
  v5[16] = v30 & 1;
  *(v5 + 3) = v58;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  v38 = swift_getKeyPath();
  v39 = &v5[*(v3 + 44)];
  *v39 = v38;
  LODWORD(v35) = v60;
  v39[8] = v60 ^ 1;
  v40 = v59;

  v41 = swift_getKeyPath();
  sub_2523714D4(v5, v37, &qword_27F4DBFD8, &qword_252697BC8);
  v42 = (v37 + *(v7 + 44));
  *v42 = v41;
  v42[1] = v40;
  v72.origin.x = v10;
  v72.origin.y = v11;
  v72.size.width = v12;
  v72.size.height = v13;
  MinX = CGRectGetMinX(v72);
  v44 = 10.0;
  if (v35)
  {
    v44 = 12.0;
  }

  v45 = v14 - MinX - v44;
  sub_252692930();
  if (v45 < 0.0)
  {
    sub_252692F00();
    v46 = sub_2526919C0();
    sub_252690570();
  }

  sub_252690D70();
  v47 = v63;
  sub_2523714D4(v37, v63, &qword_27F4DBFE0, &qword_252697BD0);
  v48 = (v47 + *(v62 + 36));
  v49 = v70;
  v48[4] = v69;
  v48[5] = v49;
  v48[6] = v71;
  v50 = v66;
  *v48 = v65;
  v48[1] = v50;
  v51 = v68;
  v48[2] = v67;
  v48[3] = v51;
  v52 = swift_getKeyPath();
  v53 = v47;
  v54 = v64;
  sub_2523714D4(v53, v64, &qword_27F4DBFE8, &qword_252697BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC000, &unk_252697C80);
  v56 = (v54 + *(result + 36));
  *v56 = v52;
  v56[1] = v17;
  return result;
}

id sub_25241FFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_252692BA0();
  [v6 setText_];

  [v6 setFont_];
  sub_252422940(0, &qword_27F4DC008, 0x277D75348);

  v8 = sub_252693070();
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setAdjustsFontForContentSizeCategory_];
  [v6 setLineBreakMode_];
  [v6 setLineBreakStrategy_];
  [v6 setMarqueeEnabled_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = v6;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC010, &qword_2526ACDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252697230;
  v13 = [v10 heightAnchor];
  v14 = [v9 heightAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 widthAnchor];

  v17 = [v9 widthAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  sub_252422940(0, &qword_27F4DC018, 0x277CCAAD0);
  v19 = sub_252692D70();

  [v11 activateConstraints_];

  return v9;
}

uint64_t sub_25242033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252422988();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2524203A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252422988();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_252420404(uint64_t a1)
{
  sub_252422988();
  sub_252691430();
  __break(1u);
}

void TransitionTileView.Config.Icon.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t TransitionTileView.Config.Icon.color.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

void TransitionTileView.Config.Icon.iconIdentifier.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_252420508(v2, v3, v4, v5);
}

void sub_252420508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t TransitionTileView.Config.Icon.micaIconIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *TransitionTileView.Config.Icon.micaPackage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

double TransitionTileView.Config.Icon.init(frame:maxWidth:drawCircle:size:color:unresponsiveColor:micaPackage:micaIconIdentifier:useAssetMarginSize:)@<D0>(char a1@<W0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = *a2;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 120) = a7;
  *(a9 + 128) = a5;
  *(a9 + 112) = a6;
  *(a9 + 40) = a1;
  *(a9 + 41) = v14;
  *(a9 + 48) = *a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a8;
  result = 0.0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  return result;
}

uint64_t TransitionTileView.Config.Badge.color.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 TransitionTileView.Config.Badge.init(color:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void TransitionTileView.Config.Text.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t TransitionTileView.Config.Text.color.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

__n128 TransitionTileView.Config.Text.color.setter(__n128 *a1)
{

  result = *a1;
  v1[3] = *a1;
  return result;
}

uint64_t TransitionTileView.Config.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v13 = *(v1 + 136);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v5;
  v12[4] = *(v1 + 72);
  v12[5] = v2;
  v12[0] = *(v1 + 8);
  v12[1] = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 136);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 8);
  *(a1 + 16) = v8;
  return sub_25241CBDC(v12, v11);
}

__n128 TransitionTileView.Config.icon.setter(__int128 *a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v4;
  v13 = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v6;
  v12[4] = *(v1 + 72);
  v12[5] = v3;
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  sub_252420954(v12);
  v7 = a1[4];
  *(v1 + 88) = a1[5];
  v8 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v8;
  v9 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v11;
  *(v1 + 72) = v7;
  *(v1 + 136) = *(a1 + 16);
  *(v1 + 8) = v9;
  return result;
}

uint64_t TransitionTileView.Config.prefixText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v9 = v1[11];
  v10 = v2;
  v11 = v1[13];
  v3 = v11;
  v4 = v1[10];
  v8[0] = v1[9];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25237153C(v8, &v7, &qword_27F4DBCA8, &qword_2526971A0);
}

__n128 TransitionTileView.Config.prefixText.setter(uint64_t a1)
{
  v3 = v1[12];
  v7[2] = v1[11];
  v7[3] = v3;
  v7[4] = v1[13];
  v4 = v1[10];
  v7[0] = v1[9];
  v7[1] = v4;
  sub_252372288(v7, &qword_27F4DBCA8, &qword_2526971A0);
  v5 = *(a1 + 48);
  v1[11] = *(a1 + 32);
  v1[12] = v5;
  v1[13] = *(a1 + 64);
  result = *(a1 + 16);
  v1[9] = *a1;
  v1[10] = result;
  return result;
}

uint64_t TransitionTileView.Config.primaryText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[17];
  v9 = v1[16];
  v10 = v2;
  v11 = v1[18];
  v3 = v11;
  v4 = v1[15];
  v8[0] = v1[14];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25241A6E4(v8, &v7);
}

__n128 TransitionTileView.Config.primaryText.setter(uint64_t a1)
{
  v3 = v1[17];
  v7[2] = v1[16];
  v7[3] = v3;
  v7[4] = v1[18];
  v4 = v1[15];
  v7[0] = v1[14];
  v7[1] = v4;
  sub_252420B3C(v7);
  v5 = *(a1 + 48);
  v1[16] = *(a1 + 32);
  v1[17] = v5;
  v1[18] = *(a1 + 64);
  result = *(a1 + 16);
  v1[14] = *a1;
  v1[15] = result;
  return result;
}

uint64_t TransitionTileView.Config.secondaryText.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[22];
  v9 = v1[21];
  v10 = v2;
  v11 = v1[23];
  v3 = v11;
  v4 = v1[20];
  v8[0] = v1[19];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25237153C(v8, &v7, &qword_27F4DBCA8, &qword_2526971A0);
}

__n128 TransitionTileView.Config.secondaryText.setter(uint64_t a1)
{
  v3 = v1[22];
  v7[2] = v1[21];
  v7[3] = v3;
  v7[4] = v1[23];
  v4 = v1[20];
  v7[0] = v1[19];
  v7[1] = v4;
  sub_252372288(v7, &qword_27F4DBCA8, &qword_2526971A0);
  v5 = *(a1 + 48);
  v1[21] = *(a1 + 32);
  v1[22] = v5;
  v1[23] = *(a1 + 64);
  result = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = result;
  return result;
}

uint64_t TransitionTileView.Config.badge.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  a1[1] = v3;
  return sub_252420C84(v2, v3);
}

uint64_t sub_252420C84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t TransitionTileView.Config.badge.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_25241A7A8(*(v1 + 384), *(v1 + 392));
  *(v1 + 384) = v2;
  *(v1 + 392) = v3;
  return result;
}

void TransitionTileView.Config.tileFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = a3;
  v4[54] = a4;
}

unint64_t sub_252420DEC()
{
  result = qword_27F4DBCE8;
  if (!qword_27F4DBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCE8);
  }

  return result;
}

unint64_t sub_252420E44()
{
  result = qword_27F4DBCF0;
  if (!qword_27F4DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBCF0);
  }

  return result;
}

void sub_252420EC0(uint64_t a1)
{
  type metadata accessor for Device(319);
  if (v1 <= 0x3F)
  {
    sub_252420F5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252420F5C()
{
  if (!qword_27F4DBD08)
  {
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DBD08);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI19StateDependentValueVySSGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI18TransitionTileViewV6ConfigV4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22HomeAccessoryControlUI18TransitionTileViewV6ConfigV5BadgeVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252420FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252421044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_252421138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252421180(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252421200(uint64_t *a1, int a2)
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

uint64_t sub_252421248(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2524212B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524212F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25242136C()
{
  result = qword_27F4DBD10;
  if (!qword_27F4DBD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBCD8, &qword_252697268);
    sub_252400FC8(&qword_27F4DBD18, &qword_27F4DBD20, &qword_252697668, MEMORY[0x277CE11A8]);
    sub_252400FC8(&qword_27F4DBD28, &qword_27F4DBCE0, &qword_252697270, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBD10);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_252421484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524214CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_252421578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2524215C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25242162C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_252421674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2524216D4()
{
  result = qword_27F4DBD30;
  if (!qword_27F4DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBD30);
  }

  return result;
}

unint64_t sub_252421768()
{
  result = qword_27F4DBDA8;
  if (!qword_27F4DBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBD98, &qword_2526979A8);
    sub_2524217F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDA8);
  }

  return result;
}

unint64_t sub_2524217F4()
{
  result = qword_27F4DBDB0;
  if (!qword_27F4DBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDB8, &qword_2526979B8);
    sub_252421880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDB0);
  }

  return result;
}

unint64_t sub_252421880()
{
  result = qword_27F4DBDC0;
  if (!qword_27F4DBDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDC8, &qword_2526979C0);
    sub_252421938();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8, &unk_2526A1070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDC0);
  }

  return result;
}

unint64_t sub_252421938()
{
  result = qword_27F4DBDD0;
  if (!qword_27F4DBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDD8, &qword_2526979C8);
    sub_252400FC8(&qword_27F4DBDE0, &qword_27F4DBDE8, &unk_2526979D0, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBDD0);
  }

  return result;
}

unint64_t sub_2524219F0()
{
  result = qword_27F4DBE00;
  if (!qword_27F4DBE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDA0, &qword_2526979B0);
    sub_252421768();
    sub_252421A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE00);
  }

  return result;
}

unint64_t sub_252421A7C()
{
  result = qword_27F4DBE08;
  if (!qword_27F4DBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE08);
  }

  return result;
}

unint64_t sub_252421AD0()
{
  result = qword_27F4DBE88;
  if (!qword_27F4DBE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE20, &qword_2526979F0);
    sub_252421B8C();
    sub_2524230C0(&qword_27F4DBF58, MEMORY[0x277D18080], MEMORY[0x277D18078]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE88);
  }

  return result;
}

unint64_t sub_252421B8C()
{
  result = qword_27F4DBE90;
  if (!qword_27F4DBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE68, &qword_252697A38);
    sub_252421C18();
    sub_2524221D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE90);
  }

  return result;
}

unint64_t sub_252421C18()
{
  result = qword_27F4DBE98;
  if (!qword_27F4DBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE60, &qword_252697A30);
    sub_252421CA4();
    sub_252421FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBE98);
  }

  return result;
}

unint64_t sub_252421CA4()
{
  result = qword_27F4DBEA0;
  if (!qword_27F4DBEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE58, &qword_252697A28);
    sub_252421D5C();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEA0);
  }

  return result;
}

unint64_t sub_252421D5C()
{
  result = qword_27F4DBEA8;
  if (!qword_27F4DBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEB0, &qword_252697A80);
    sub_252421E14();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0, &unk_252697AA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEA8);
  }

  return result;
}

unint64_t sub_252421E14()
{
  result = qword_27F4DBEB8;
  if (!qword_27F4DBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEC0, &qword_252697A88);
    sub_252421EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEB8);
  }

  return result;
}

unint64_t sub_252421EA0()
{
  result = qword_27F4DBEC8;
  if (!qword_27F4DBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBED0, &qword_252697A90);
    sub_252421F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBEC8);
  }

  return result;
}

unint64_t sub_252421F2C()
{
  result = qword_27F4DBED8;
  if (!qword_27F4DBED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBEE0, &qword_252697A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBED8);
  }

  return result;
}

unint64_t sub_252421FB0()
{
  result = qword_27F4DBF08;
  if (!qword_27F4DBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE48, &qword_252697A18);
    sub_252422068();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00, &unk_25269F1C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF08);
  }

  return result;
}

unint64_t sub_252422068()
{
  result = qword_27F4DBF10;
  if (!qword_27F4DBF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF18, &qword_252697AB0);
    sub_252422120();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0, &unk_252697AA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF10);
  }

  return result;
}

unint64_t sub_252422120()
{
  result = qword_27F4DBF20;
  if (!qword_27F4DBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF28, &qword_252697AB8);
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8, &unk_2526A1070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF20);
  }

  return result;
}

unint64_t sub_2524221D8()
{
  result = qword_27F4DBF30;
  if (!qword_27F4DBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE38, &qword_252697A08);
    sub_252422290();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0, &unk_252697AA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF30);
  }

  return result;
}

unint64_t sub_252422290()
{
  result = qword_27F4DBF38;
  if (!qword_27F4DBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE30, &qword_252697A00);
    sub_252422348();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8, &unk_2526A1070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF38);
  }

  return result;
}

unint64_t sub_252422348()
{
  result = qword_27F4DBF40;
  if (!qword_27F4DBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE28, &qword_2526979F8);
    sub_252400FC8(&qword_27F4DBF48, &qword_27F4DBF50, &qword_252697AC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF40);
  }

  return result;
}

unint64_t sub_252422400()
{
  result = qword_27F4DBF60;
  if (!qword_27F4DBF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBE80, &qword_252697A78);
    sub_252422484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF60);
  }

  return result;
}

unint64_t sub_252422484()
{
  result = qword_27F4DBF68;
  if (!qword_27F4DBF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF70, &qword_252697AC8);
    sub_25242253C();
    sub_252400FC8(&qword_27F4DBFB8, &qword_27F4DBFC0, &qword_252697AF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF68);
  }

  return result;
}

unint64_t sub_25242253C()
{
  result = qword_27F4DBF78;
  if (!qword_27F4DBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF80, &qword_252697AD0);
    sub_2524225F4();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8, &unk_2526A1070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF78);
  }

  return result;
}

unint64_t sub_2524225F4()
{
  result = qword_27F4DBF88;
  if (!qword_27F4DBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBF90, &qword_252697AD8);
    sub_2524226AC();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0, &unk_252697AA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF88);
  }

  return result;
}

unint64_t sub_2524226AC()
{
  result = qword_27F4DBF98;
  if (!qword_27F4DBF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFA0, &unk_252697AE0);
    sub_252400FC8(&qword_27F4DBFA8, &qword_27F4DBFB0, &unk_2526A5570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DBF98);
  }

  return result;
}

uint64_t sub_2524227B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_2524228D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2524228E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252690F10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252422940(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_252422988()
{
  result = qword_27F4DC020;
  if (!qword_27F4DC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC020);
  }

  return result;
}

double sub_2524229DC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 16711680;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

unint64_t sub_252422A08()
{
  result = qword_27F4DC058;
  if (!qword_27F4DC058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC050, &qword_252697CB8);
    sub_2524216D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC058);
  }

  return result;
}

unint64_t sub_252422A94()
{
  result = qword_27F4DC060;
  if (!qword_27F4DC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC060);
  }

  return result;
}

unint64_t sub_252422AE8()
{
  result = qword_27F4DC080;
  if (!qword_27F4DC080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC038, &qword_252697CA0);
    sub_252422B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC080);
  }

  return result;
}

unint64_t sub_252422B74()
{
  result = qword_27F4DC088;
  if (!qword_27F4DC088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC030, &qword_252697C98);
    sub_252400FC8(&qword_27F4DC090, &qword_27F4DC098, &qword_252697CD8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC088);
  }

  return result;
}

unint64_t sub_252422C2C()
{
  result = qword_27F4DC0A0;
  if (!qword_27F4DC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC078, &qword_252697CD0);
    sub_252422CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0A0);
  }

  return result;
}

unint64_t sub_252422CB8()
{
  result = qword_27F4DC0A8;
  if (!qword_27F4DC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0B0, &qword_252697CE0);
    sub_252422D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0A8);
  }

  return result;
}

unint64_t sub_252422D44()
{
  result = qword_27F4DC0B8;
  if (!qword_27F4DC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0C0, &qword_252697CE8);
    sub_252422DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0B8);
  }

  return result;
}

unint64_t sub_252422DC8()
{
  result = qword_27F4DC0C8;
  if (!qword_27F4DC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0D0, &qword_252697CF0);
    sub_252422A08();
    sub_252422A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0C8);
  }

  return result;
}

unint64_t sub_252422E54()
{
  result = qword_27F4DC0F0;
  if (!qword_27F4DC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC0E8, &qword_252697D08);
    sub_252422F0C();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8, &unk_2526A1070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0F0);
  }

  return result;
}

unint64_t sub_252422F0C()
{
  result = qword_27F4DC0F8;
  if (!qword_27F4DC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC100, &unk_252697D10);
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110, &unk_2526A22D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC0F8);
  }

  return result;
}

uint64_t sub_252422FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_25242302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_252422FC4(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_252423044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_25242305C(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_25242305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_2524230C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252423108()
{
  result = qword_27F4DC138;
  if (!qword_27F4DC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC130, &qword_252697D30);
    sub_252423194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC138);
  }

  return result;
}

unint64_t sub_252423194()
{
  result = qword_27F4DC140;
  if (!qword_27F4DC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC148, &qword_252697D38);
    sub_252423218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC140);
  }

  return result;
}

unint64_t sub_252423218()
{
  result = qword_27F4DC150;
  if (!qword_27F4DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC150);
  }

  return result;
}

unint64_t sub_25242326C()
{
  result = qword_27F4DC168;
  if (!qword_27F4DC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC000, &unk_252697C80);
    sub_252423324();
    sub_252400FC8(&qword_27F4DBFB8, &qword_27F4DBFC0, &qword_252697AF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC168);
  }

  return result;
}

unint64_t sub_252423324()
{
  result = qword_27F4DC170;
  if (!qword_27F4DC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFE8, &qword_252697BD8);
    sub_2524233B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC170);
  }

  return result;
}

unint64_t sub_2524233B0()
{
  result = qword_27F4DC178;
  if (!qword_27F4DC178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFE0, &qword_252697BD0);
    sub_252423468();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110, &unk_2526A22D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC178);
  }

  return result;
}

unint64_t sub_252423468()
{
  result = qword_27F4DC180;
  if (!qword_27F4DC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFD8, &qword_252697BC8);
    sub_252423520();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0, qword_2526A39C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC180);
  }

  return result;
}

unint64_t sub_252423520()
{
  result = qword_27F4DC188;
  if (!qword_27F4DC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFF0, &qword_252697BE0);
    sub_2524226AC();
    sub_252400FC8(&qword_27F4DC190, &qword_27F4DBFF8, &qword_252697BE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC188);
  }

  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.Icon.init(animationNamespace:useForMatchedAnimation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DF0();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for AnimationModel(uint64_t a1)
{
  result = qword_27F4DC330;
  if (!qword_27F4DC330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnimationModel.TranistionType.hashValue.getter()
{
  v1 = *v0;
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  return sub_2526934C0();
}

uint64_t sub_252423788(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_252423818@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_25242385C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_25242393C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v3;
}

double sub_2524239A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t AnimationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  AnimationModel.init()();
  return v0;
}

uint64_t AnimationModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8, &qword_252697DE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0, &qword_252697DE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  v9 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v20 = 0;
  sub_252690660();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility;
  v19 = 1;
  sub_252690660();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground;
  v18 = 0;
  sub_252690660();
  v10(v0 + v12, v8, v5);
  v13 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter;
  v17 = 0;
  sub_252690660();
  v10(v0 + v13, v8, v5);
  v14 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v16 = 0;
  sub_252690660();
  (*(v2 + 32))(v0 + v14, v4, v1);
  return v0;
}

uint64_t sub_252423CD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 40) != 2)
  {
    return sub_252423D80(a1, a2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(0, a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_252423D80(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  if (qword_27F4DA9E8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9D8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9C8 != -1)
  {
    swift_once();
  }

  sub_252690A80();
  if (qword_27F4DA9B8 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3D0);
  return sub_252690A80();
}

uint64_t sub_252423F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

uint64_t sub_252424000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_252692A80();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252692AB0();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252692AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  sub_252690690();
  v16 = *(a1 + 41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    swift_unknownObjectRelease();
  }

  sub_25242D500();
  v19 = sub_252692FB0();
  sub_252692AC0();
  sub_252692AE0();
  v20 = *(v10 + 8);
  v29 = v9;
  v30 = v20;
  v20(v12, v9);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v16;
  v24 = v31;
  v23 = v32;
  *(v22 + 32) = v31;
  *(v22 + 40) = v23;
  aBlock[4] = sub_25242D54C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252576CB4;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  sub_25235E21C(v24, v23);

  sub_252692A90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25242D574(&qword_27F4DC400, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4E15F0, &qword_2526A8220);
  sub_252400FC8(&qword_27F4DC408, &unk_27F4E15F0, &qword_2526A8220, MEMORY[0x277D83970]);
  v26 = v35;
  v27 = v37;
  sub_252693190();
  MEMORY[0x2530A4AE0](v15, v8, v26, v25);
  _Block_release(v25);

  (*(v36 + 8))(v26, v27);
  (*(v33 + 8))(v8, v34);
  return v30(v15, v29);
}

uint64_t sub_2524244A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = *(v9 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a3;
      v13[4] = a4;
      v14 = *(v11 + 24);

      sub_25235E21C(a3, a4);
      v14(a2 & 1, sub_25242D5BC, v13, ObjectType, v11);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2524245C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
      result = swift_unknownObjectRelease();
    }
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t AnimationModel.deinit()
{
  sub_2524247A4(v0 + 16);
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0, &qword_252697DE8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter, v2);
  v4 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8, &qword_252697DE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t AnimationModel.__deallocating_deinit()
{
  sub_2524247A4(v0 + 16);
  v1 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowControlView;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0, &qword_252697DE8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldTurnOnTileTextVisibility, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowBackground, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__shouldShowHeaderFooter, v2);
  v4 = OBJC_IVAR____TtC22HomeAccessoryControlUI14AnimationModel__swipeDismissOffset;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1A8, &qword_252697DE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_252424930@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AnimationModel(0);
  result = sub_252690630();
  *a2 = result;
  return result;
}

void *sub_252424970(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC550, &qword_252698950);
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC558, &qword_252698958);
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560, &qword_252698960);
      (*(*(v12 - 8) + 16))(v8, a1, v12);
      swift_storeEnumTagMultiPayload();
      sub_25242E1C8();
      sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560, &qword_252698960, MEMORY[0x277CE04B0]);
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v14 = v18[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560, &qword_252698960);
      v16 = *(v15 - 8);
      if (v14 == 1)
      {
        (*(*(v15 - 8) + 16))(v11, a1, v15);
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      (*(v16 + 56))(v11, v17, 1, v15);
      sub_25237153C(v11, v8, &qword_27F4DC558, &qword_252698958);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC560, &qword_252698960);
      sub_25242E1C8();
      sub_252400FC8(&qword_27F4DC570, &qword_27F4DC560, &qword_252698960, MEMORY[0x277CE04B0]);
      sub_252691470();
      return sub_252372288(v11, &qword_27F4DC558, &qword_252698958);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_252424D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC430, &qword_2526988A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC438, &qword_2526988A8);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC440, &qword_2526988B0);
      (*(*(v13 - 8) + 16))(v9, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_25242DA00();
      sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440, &qword_2526988B0, MEMORY[0x277CE04B0]);
      return sub_252691470();
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC440, &qword_2526988B0);
      (*(*(v16 - 8) + 16))(v12, a1, v16);
      v17 = &v12[*(v10 + 36)];
      *v17 = sub_25242D9F8;
      v17[1] = v15;
      v17[2] = 0;
      v17[3] = 0;
      sub_25237153C(v12, v9, &qword_27F4DC438, &qword_2526988A8);
      swift_storeEnumTagMultiPayload();
      sub_25242DA00();
      sub_252400FC8(&qword_27F4DC450, &qword_27F4DC440, &qword_2526988B0, MEMORY[0x277CE04B0]);

      sub_252691470();
      return sub_252372288(v12, &qword_27F4DC438, &qword_2526988A8);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252425090(uint64_t a1, uint64_t a2)
{
  if (qword_27F4DA9D0 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3E8);
  sub_252690A80();
  if (qword_27F4DA9E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x28223BE20](qword_27F4FB3F8);
  return sub_252690A80();
}

uint64_t sub_2524251D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_252690690();
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_2524252AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC590, &qword_252698980);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC598, &qword_252698988);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC5A0, &unk_252698990);
      (*(*(v13 - 8) + 16))(v9, a1, v13);
      swift_storeEnumTagMultiPayload();
      sub_25242E2C8();
      sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0, &unk_252698990, MEMORY[0x277CE04B0]);
      return sub_252691470();
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC5A0, &unk_252698990);
      (*(*(v16 - 8) + 16))(v12, a1, v16);
      v17 = &v12[*(v10 + 36)];
      *v17 = sub_25242E278;
      v17[1] = v15;
      v17[2] = 0;
      v17[3] = 0;
      sub_25237153C(v12, v9, &qword_27F4DC598, &qword_252698988);
      swift_storeEnumTagMultiPayload();
      sub_25242E2C8();
      sub_252400FC8(&qword_27F4DC5B0, &qword_27F4DC5A0, &unk_252698990, MEMORY[0x277CE04B0]);

      sub_252691470();
      return sub_252372288(v12, &qword_27F4DC598, &qword_252698988);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242560C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*(a1 + 40) == 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);

    v6(0, 0, 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_252423D80(0, 0);
  }
}

uint64_t sub_252425738()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC390, &qword_2526983F8);
  sub_252400FC8(&qword_27F4DC398, &qword_27F4DC390, &qword_2526983F8, MEMORY[0x277CE04B0]);
  sub_252691E60();
}

uint64_t sub_252425820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC578, &qword_252698968);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    v10 = v18;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC580, &qword_252698970);
    (*(*(v11 - 8) + 16))(v9, a1, v11);
    v12 = &v9[*(v7 + 36)];
    *v12 = 0;
    *(v12 + 1) = v10;
    v13 = MEMORY[0x2530A4500](0.15, 0.85, 0.25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    v14 = v18;
    sub_2523714D4(v9, a4, &qword_27F4DC578, &qword_252698968);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC588, &qword_252698978);
    v16 = (a4 + *(result + 36));
    *v16 = v13;
    v16[1] = v14;
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252425A84()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 80);
  v5 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = v5;
  v6 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = v6;
  if ((v24 & 0x100) != 0)
  {
    v7 = *(v0 + 64);
    v17 = *(v0 + 48);
    v18 = v7;
    v19 = *(v0 + 80);
    v8 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = v8;
  }

  else
  {

    sub_252692F00();
    v9 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v20, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE8(v15) != 1)
  {
    return 0;
  }

  if ((v24 & 0x100) != 0)
  {
    v12[2] = v22;
    v13 = v23;
    v14 = v24;
    v12[1] = v21;
    v12[0] = v20;
  }

  else
  {

    sub_252692F00();
    v11 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v20, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  return (*(&v13 + 1) >> 1) & 1;
}

void *sub_252425CF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC518, &qword_252698930);
  MEMORY[0x28223BE20](v3);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC520, &qword_252698938);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC528, &qword_252698940);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  v17 = *(v2 + 64);
  v37 = *(v2 + 48);
  v38 = v17;
  v39 = *(v2 + 80);
  v18 = *(v2 + 32);
  v35 = *(v2 + 16);
  v36 = v18;
  v19 = *(v2 + 88);
  v20 = *(v2 + 96);
  v33 = v15;
  v34 = v16;
  v40 = v19;
  v41 = v20;
  if (sub_252425A84())
  {
    v30[0] = v9;
    v30[1] = v3;
    v21 = v31;
    if (v15 == 0.0)
    {
      type metadata accessor for AnimationModel(0);
      sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
      result = sub_252690DE0();
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v22 = -v33;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC530, &qword_252698948);
      (*(*(v23 - 8) + 16))(v8, v21, v23);
      v24 = &v8[*(v6 + 36)];
      *v24 = 0;
      *(v24 + 1) = v22;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      v25 = 0.0;
      if (v33 / v20 >= 0.0)
      {
        v25 = v33 / v20;
      }

      if (v33 / v20 <= 1.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1.0;
      }

      v27 = 1.0 - (1.0 - v19) * v26;
      if (v27 > v19)
      {
        v19 = v27;
      }

      sub_2523714D4(v8, v11, &qword_27F4DC520, &qword_252698938);
      *&v11[*(v30[0] + 36)] = v19;
      sub_2523714D4(v11, v14, &qword_27F4DC528, &qword_252698940);
      sub_25237153C(v14, v5, &qword_27F4DC528, &qword_252698940);
      swift_storeEnumTagMultiPayload();
      sub_25242E084();
      sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530, &qword_252698948, MEMORY[0x277CE04B0]);
      sub_252691470();
      return sub_252372288(v14, &qword_27F4DC528, &qword_252698940);
    }
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC530, &qword_252698948);
    (*(*(v29 - 8) + 16))(v5, v31, v29);
    swift_storeEnumTagMultiPayload();
    sub_25242E084();
    sub_252400FC8(&qword_27F4DC548, &qword_27F4DC530, &qword_252698948, MEMORY[0x277CE04B0]);
    return sub_252691470();
  }

  return result;
}

uint64_t sub_2524261D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26[0] = a3;
  v26[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6F8, &qword_252698CD0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC700, &qword_252698CD8);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC708, &qword_252698CE0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  v15 = sub_252690DF0();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC710, &qword_252698CE8);
  v19 = *(*(v18 - 8) + 16);
  if (a2)
  {
    v19(v14, a1, v18);
    v20 = &v14[*(v12 + 36)];
    *v20 = v15;
    v20[1] = v17;
    v20[2] = v26[0];
    sub_25237153C(v14, v11, &qword_27F4DC708, &qword_252698CE0);
    swift_storeEnumTagMultiPayload();
    sub_25242EF30();
    sub_25242F03C();
    sub_252691470();
    v21 = v14;
    v22 = &qword_27F4DC708;
    v23 = &qword_252698CE0;
  }

  else
  {
    v19(v8, a1, v18);
    v24 = &v8[*(v6 + 36)];
    *v24 = v15;
    v24[1] = v17;
    sub_25237153C(v8, v11, &qword_27F4DC6F8, &qword_252698CD0);
    swift_storeEnumTagMultiPayload();
    sub_25242EF30();
    sub_25242F03C();
    sub_252691470();
    v21 = v8;
    v22 = &qword_27F4DC6F8;
    v23 = &qword_252698CD0;
  }

  return sub_252372288(v21, v22, v23);
}

uint64_t AnimationModel.Visibility.TileView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *AnimationModel.Visibility.TileView.body(content:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1E0, &qword_252697DF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1E8, &qword_252697DF8);
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (*(v13 + 40) == 2)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1F0, &qword_252697E48);
      (*(*(v14 - 8) + 16))(v12, a1, v14);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0, &qword_252697E48, MEMORY[0x277CE04B0]);
      sub_25242C15C();
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v18[7])
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1F0, &qword_252697E48);
      (*(*(v17 - 8) + 16))(v6, a1, v17);
      *&v6[*(v4 + 36)] = v16;
      sub_2523714D4(v6, v9, &qword_27F4DC1E0, &qword_252697DF0);
      sub_25237153C(v9, v12, &qword_27F4DC1E0, &qword_252697DF0);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0, &qword_252697E48, MEMORY[0x277CE04B0]);
      sub_25242C15C();
      sub_252691470();
      return sub_252372288(v9, &qword_27F4DC1E0, &qword_252697DF0);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_252426904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3C8, &qword_252698460);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3D0, &qword_252698468);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3D8, &qword_252698470);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3E0, &qword_252698478);
      (*(*(v19 - 8) + 16))(v18, v27, v19);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0, &qword_252698478, MEMORY[0x277CE04B0]);
      sub_25242D1F0();
      return sub_252691470();
    }

    else
    {
      v21 = swift_allocObject();
      v26 = a4;
      v22 = v21;
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3E0, &qword_252698478);
      (*(*(v23 - 8) + 16))(v9, v27, v23);
      v24 = &v9[*(v7 + 36)];
      *v24 = sub_25242D1A0;
      v24[1] = v22;
      v24[2] = 0;
      v24[3] = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v28)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      sub_2523714D4(v9, v12, &qword_27F4DC3C8, &qword_252698460);
      *&v12[*(v10 + 36)] = v25;
      sub_2523714D4(v12, v15, &qword_27F4DC3D0, &qword_252698468);
      sub_25237153C(v15, v18, &qword_27F4DC3D0, &qword_252698468);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC3E8, &qword_27F4DC3E0, &qword_252698478, MEMORY[0x277CE04B0]);
      sub_25242D1F0();
      sub_252691470();
      return sub_252372288(v15, &qword_27F4DC3D0, &qword_252698468);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252426D68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  MEMORY[0x28223BE20](a1);
  return sub_252690A80();
}

uint64_t sub_252426E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35[1] = a3;
  v36 = a1;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC768, &qword_252698D08);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC770, &qword_252698D10);
  MEMORY[0x28223BE20](v38);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC778, &qword_252698D18);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC780, &qword_252698D20);
  MEMORY[0x28223BE20](v37);
  v23 = v35 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v40)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.01;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788, &qword_252698D28);
        (*(*(v25 - 8) + 16))(v13, v36, v25);
        *&v13[*(v5 + 36)] = v24;
        sub_2523714D4(v13, v16, &qword_27F4DC768, &qword_252698D08);
        sub_25237153C(v16, v21, &qword_27F4DC768, &qword_252698D08);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788, &qword_252698D28, MEMORY[0x277CE04B0]);
        sub_25242F2E4();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC780, &qword_252698D20);
        swift_storeEnumTagMultiPayload();
        sub_25242F22C();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC780, &qword_252698D20);
        v26 = v16;
        v27 = &qword_27F4DC768;
        v28 = &qword_252698D08;
        return sub_252372288(v26, v27, v28);
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788, &qword_252698D28);
      (*(*(v33 - 8) + 16))(v21, v36, v33);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC798, &qword_27F4DC788, &qword_252698D28, MEMORY[0x277CE04B0]);
      sub_25242F2E4();
      sub_252691470();
      v31 = &qword_27F4DC780;
      v32 = &qword_252698D20;
      sub_25237153C(v23, v18, &qword_27F4DC780, &qword_252698D20);
      swift_storeEnumTagMultiPayload();
      sub_25242F22C();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v40)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.01;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC788, &qword_252698D28);
      (*(*(v30 - 8) + 16))(v7, v36, v30);
      *&v7[*(v5 + 36)] = v29;
      v31 = &qword_27F4DC768;
      v32 = &qword_252698D08;
      sub_2523714D4(v7, v10, &qword_27F4DC768, &qword_252698D08);
      sub_25237153C(v10, v18, &qword_27F4DC768, &qword_252698D08);
      swift_storeEnumTagMultiPayload();
      sub_25242F22C();
      sub_25242F2E4();
      sub_252691470();
      v26 = v10;
    }

    v27 = v31;
    v28 = v32;
    return sub_252372288(v26, v27, v28);
  }

  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_2524274C8(uint64_t a1, uint64_t a2, double a5, double a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3A0, &qword_252698400);
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3A8, &qword_252698408);
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v25[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v25[-v20];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3B0, &qword_252698458);
      (*(*(v22 - 8) + 16))(v21, a1, v22);
      *&v21[*(v13 + 36)] = a6;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (!v25[7])
      {
        a6 = a5;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC3B0, &qword_252698458);
      (*(*(v23 - 8) + 16))(v15, a1, v23);
      *&v15[*(v13 + 36)] = a6;
      sub_2523714D4(v15, v18, &qword_27F4DC3A8, &qword_252698408);
      v21 = v18;
    }

    sub_25237153C(v21, v12, &qword_27F4DC3A8, &qword_252698408);
    swift_storeEnumTagMultiPayload();
    sub_25242D0E8();
    sub_252691470();
    return sub_252372288(v21, &qword_27F4DC3A8, &qword_252698408);
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35[1] = a3;
  v36 = a1;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC688, &qword_252698B40);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC690, &qword_252698B48);
  MEMORY[0x28223BE20](v38);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC698, &qword_252698B50);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A0, &qword_252698B58);
  MEMORY[0x28223BE20](v37);
  v23 = v35 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v40)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8, &qword_252698B60);
        (*(*(v25 - 8) + 16))(v13, v36, v25);
        *&v13[*(v5 + 36)] = v24;
        sub_2523714D4(v13, v16, &qword_27F4DC688, &qword_252698B40);
        sub_25237153C(v16, v21, &qword_27F4DC688, &qword_252698B40);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8, &qword_252698B60, MEMORY[0x277CE04B0]);
        sub_25242EB90();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC6A0, &qword_252698B58);
        swift_storeEnumTagMultiPayload();
        sub_25242EAD8();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC6A0, &qword_252698B58);
        v26 = v16;
        v27 = &qword_27F4DC688;
        v28 = &qword_252698B40;
        return sub_252372288(v26, v27, v28);
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8, &qword_252698B60);
      (*(*(v33 - 8) + 16))(v21, v36, v33);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC6B8, &qword_27F4DC6A8, &qword_252698B60, MEMORY[0x277CE04B0]);
      sub_25242EB90();
      sub_252691470();
      v31 = &qword_27F4DC6A0;
      v32 = &qword_252698B58;
      sub_25237153C(v23, v18, &qword_27F4DC6A0, &qword_252698B58);
      swift_storeEnumTagMultiPayload();
      sub_25242EAD8();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v40)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC6A8, &qword_252698B60);
      (*(*(v30 - 8) + 16))(v7, v36, v30);
      *&v7[*(v5 + 36)] = v29;
      v31 = &qword_27F4DC688;
      v32 = &qword_252698B40;
      sub_2523714D4(v7, v10, &qword_27F4DC688, &qword_252698B40);
      sub_25237153C(v10, v18, &qword_27F4DC688, &qword_252698B40);
      swift_storeEnumTagMultiPayload();
      sub_25242EAD8();
      sub_25242EB90();
      sub_252691470();
      v26 = v10;
    }

    v27 = v31;
    v28 = v32;
    return sub_252372288(v26, v27, v28);
  }

  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

uint64_t sub_252427ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35[1] = a3;
  v36 = a1;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC620, &qword_252698B00);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC628, &qword_252698B08);
  MEMORY[0x28223BE20](v38);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC630, &qword_252698B10);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC638, &qword_252698B18);
  MEMORY[0x28223BE20](v37);
  v23 = v35 - v22;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v40)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.0;
        }

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640, &qword_252698B20);
        (*(*(v25 - 8) + 16))(v13, v36, v25);
        *&v13[*(v5 + 36)] = v24;
        sub_2523714D4(v13, v16, &qword_27F4DC620, &qword_252698B00);
        sub_25237153C(v16, v21, &qword_27F4DC620, &qword_252698B00);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640, &qword_252698B20, MEMORY[0x277CE04B0]);
        sub_25242E93C();
        sub_252691470();
        sub_25237153C(v23, v18, &qword_27F4DC638, &qword_252698B18);
        swift_storeEnumTagMultiPayload();
        sub_25242E884();
        sub_252691470();
        sub_252372288(v23, &qword_27F4DC638, &qword_252698B18);
        v26 = v16;
        v27 = &qword_27F4DC620;
        v28 = &qword_252698B00;
        return sub_252372288(v26, v27, v28);
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640, &qword_252698B20);
      (*(*(v33 - 8) + 16))(v21, v36, v33);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC650, &qword_27F4DC640, &qword_252698B20, MEMORY[0x277CE04B0]);
      sub_25242E93C();
      sub_252691470();
      v31 = &qword_27F4DC638;
      v32 = &qword_252698B18;
      sub_25237153C(v23, v18, &qword_27F4DC638, &qword_252698B18);
      swift_storeEnumTagMultiPayload();
      sub_25242E884();
      sub_252691470();
      v26 = v23;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v40)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC640, &qword_252698B20);
      (*(*(v30 - 8) + 16))(v7, v36, v30);
      *&v7[*(v5 + 36)] = v29;
      v31 = &qword_27F4DC620;
      v32 = &qword_252698B00;
      sub_2523714D4(v7, v10, &qword_27F4DC620, &qword_252698B00);
      sub_25237153C(v10, v18, &qword_27F4DC620, &qword_252698B00);
      swift_storeEnumTagMultiPayload();
      sub_25242E884();
      sub_25242E93C();
      sub_252691470();
      v26 = v10;
    }

    v27 = v31;
    v28 = v32;
    return sub_252372288(v26, v27, v28);
  }

  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DE0();
  __break(1u);
  return result;
}

void *sub_25242857C(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC800, &qword_252698E18);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC808, &qword_252698E20);
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-v13];
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC810, &qword_252698E28);
      (*(*(v15 - 8) + 16))(v14, a1, v15);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810, &qword_252698E28, MEMORY[0x277CE04B0]);
      sub_25242F804();
      return sub_252691470();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_252690680();

      if (v19[7])
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC810, &qword_252698E28);
      (*(*(v18 - 8) + 16))(v8, a1, v18);
      *&v8[*(v6 + 36)] = v17;
      sub_2523714D4(v8, v11, &qword_27F4DC800, &qword_252698E18);
      sub_25237153C(v11, v14, &qword_27F4DC800, &qword_252698E18);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC818, &qword_27F4DC810, &qword_252698E28, MEMORY[0x277CE04B0]);
      sub_25242F804();
      sub_252691470();
      return sub_252372288(v11, &qword_27F4DC800, &qword_252698E18);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t AnimationModel.MatchedGeometryEffect.TileView.init(animationNamespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  result = sub_252690DF0();
  *a2 = result;
  a2[1] = v5;
  a2[2] = a1;
  return result;
}

void *AnimationModel.MatchedGeometryEffect.TileView.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC208, &qword_252697E50);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC210, &qword_252697E58);
  MEMORY[0x28223BE20](v5);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC218, &qword_252697E60);
  MEMORY[0x28223BE20](v10);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC220, &qword_252697E68);
  MEMORY[0x28223BE20](v70);
  v16 = &v65 - v15;
  v17 = *v2;
  if (*v2)
  {
    v18 = v2[2];
    swift_beginAccess();
    if (*(v17 + 40) == 2)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC228, &qword_252697E70);
      (*(*(v19 - 8) + 16))(v16, a1, v19);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC248, &qword_27F4DC228, &qword_252697E70, MEMORY[0x277CE04B0]);
      sub_252400FC8(&qword_27F4DC250, &qword_27F4DC208, &qword_252697E50, MEMORY[0x277CE14C0]);
      return sub_252691470();
    }

    else
    {
      v21 = sub_2526917A0();
      sub_252692A40();
      v23 = v22;
      v25 = v24;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC228, &qword_252697E70);
      (*(*(v66 - 8) + 16))(v14, a1, v66);
      v26 = &v14[*(v10 + 36)];
      v65 = v14;
      *v26 = 0x6C6F72746E6F63;
      *(v26 + 1) = 0xE700000000000000;
      *(v26 + 2) = v18;
      *(v26 + 6) = v21;
      *(v26 + 4) = v23;
      *(v26 + 5) = v25;
      v26[48] = 1;
      v27 = sub_252692310();
      swift_beginAccess();
      sub_2526914E0();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC230, &unk_2526A72A0) + 36)];
      v37 = *(sub_252691640() + 20);
      v38 = *MEMORY[0x277CE0118];
      v39 = sub_252691260();
      (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
      *v36 = v29;
      *(v36 + 1) = v31;
      *(v36 + 2) = v33;
      *(v36 + 3) = v35;
      *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0, &qword_252697270) + 36)] = 256;
      *v9 = v27;
      *(v9 + 4) = 256;
      LODWORD(v27) = sub_2526917A0();
      sub_252692A40();
      v40 = &v9[*(v5 + 36)];
      *v40 = 0x756F72676B636162;
      *(v40 + 1) = 0xEA0000000000646ELL;
      *(v40 + 2) = v18;
      *(v40 + 6) = v27;
      *(v40 + 4) = v41;
      *(v40 + 5) = v42;
      v40[48] = 1;
      v43 = sub_252692310();
      LODWORD(v38) = sub_2526917B0();
      sub_252692A40();
      *&v83 = v43;
      WORD4(v83) = 256;
      *&v84 = 0x726564616568;
      *(&v84 + 1) = 0xE600000000000000;
      *&v85 = v18;
      DWORD2(v85) = v38;
      *&v86 = v44;
      *(&v86 + 1) = v45;
      v87 = 1;
      v46 = sub_252692310();
      LODWORD(v38) = sub_2526917A0();
      sub_252692A40();
      *&v88 = v46;
      WORD4(v88) = 256;
      *&v89 = 0x6E6F74747562;
      *(&v89 + 1) = 0xE600000000000000;
      *&v90 = v18;
      DWORD2(v90) = v38;
      *&v91 = v47;
      *(&v91 + 1) = v48;
      v92 = 1;
      v49 = v67;
      sub_25237153C(v14, v67, &qword_27F4DC218, &qword_252697E60);
      v50 = v68;
      sub_25237153C(v9, v68, &qword_27F4DC210, &qword_252697E58);
      v80 = v85;
      v81 = v86;
      v82 = v87;
      v78 = v83;
      v79 = v84;
      v75 = v90;
      v76 = v91;
      v77 = v92;
      v73 = v88;
      v74 = v89;
      v51 = v69;
      sub_25237153C(v49, v69, &qword_27F4DC218, &qword_252697E60);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC238, &qword_252697E78);
      sub_25237153C(v50, v51 + v52[12], &qword_27F4DC210, &qword_252697E58);
      v53 = v51 + v52[16];
      v54 = v82;
      v55 = v81;
      v93[2] = v80;
      v93[3] = v81;
      v57 = v78;
      v56 = v79;
      v93[0] = v78;
      v93[1] = v79;
      *(v53 + 32) = v80;
      *(v53 + 48) = v55;
      *(v53 + 64) = v54;
      *v53 = v57;
      *(v53 + 16) = v56;
      v58 = v51 + v52[20];
      v95[2] = v75;
      v95[3] = v76;
      v95[0] = v73;
      v95[1] = v74;
      v60 = v75;
      v59 = v76;
      v61 = v76;
      *(v58 + 32) = v75;
      *(v58 + 48) = v59;
      v62 = v74;
      v64 = v73;
      v63 = v74;
      *v58 = v73;
      *(v58 + 16) = v62;
      v94 = v54;
      v96 = v77;
      *(v58 + 64) = v77;
      v98 = v77;
      v97[2] = v60;
      v97[3] = v61;
      v97[0] = v64;
      v97[1] = v63;
      sub_25237153C(&v83, v99, &qword_27F4DC240, &qword_252697E80);
      sub_25237153C(&v88, v99, &qword_27F4DC240, &qword_252697E80);
      sub_25237153C(v93, v99, &qword_27F4DC240, &qword_252697E80);
      sub_25237153C(v95, v99, &qword_27F4DC240, &qword_252697E80);
      sub_252372288(v97, &qword_27F4DC240, &qword_252697E80);
      v99[2] = v80;
      v99[3] = v81;
      v100 = v82;
      v99[0] = v78;
      v99[1] = v79;
      sub_252372288(v99, &qword_27F4DC240, &qword_252697E80);
      sub_252372288(v50, &qword_27F4DC210, &qword_252697E58);
      sub_252372288(v49, &qword_27F4DC218, &qword_252697E60);
      sub_25237153C(v51, v16, &qword_27F4DC208, &qword_252697E50);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC248, &qword_27F4DC228, &qword_252697E70, MEMORY[0x277CE04B0]);
      sub_252400FC8(&qword_27F4DC250, &qword_27F4DC208, &qword_252697E50, MEMORY[0x277CE14C0]);
      sub_252691470();
      sub_252372288(&v88, &qword_27F4DC240, &qword_252697E80);
      sub_252372288(&v83, &qword_27F4DC240, &qword_252697E80);
      sub_252372288(v51, &qword_27F4DC208, &qword_252697E50);
      sub_252372288(v9, &qword_27F4DC210, &qword_252697E58);
      return sub_252372288(v65, &qword_27F4DC218, &qword_252697E60);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_25242927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC660, &qword_252698B28);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC668, &qword_252698B30);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) - 1 >= 2)
    {
      v16 = sub_2526917A0();
      sub_252692A40();
      v18 = v17;
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC670, &qword_252698B38);
      (*(*(v21 - 8) + 16))(v10, a1, v21);
      v22 = &v10[*(v8 + 36)];
      *v22 = 0x6E6F74747562;
      *(v22 + 1) = 0xE600000000000000;
      *(v22 + 2) = a4;
      *(v22 + 6) = v16;
      *(v22 + 4) = v18;
      *(v22 + 5) = v20;
      v22[48] = 1;
      sub_25237153C(v10, v13, &qword_27F4DC660, &qword_252698B28);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670, &qword_252698B38, MEMORY[0x277CE04B0]);
      sub_25242E9F4();
      sub_252691470();
      return sub_252372288(v10, &qword_27F4DC660, &qword_252698B28);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC670, &qword_252698B38);
      (*(*(v14 - 8) + 16))(v13, a1, v14);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC678, &qword_27F4DC670, &qword_252698B38, MEMORY[0x277CE04B0]);
      sub_25242E9F4();
      return sub_252691470();
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *sub_2524295EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC740, &qword_252698CF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC748, &qword_252698CF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) - 1 >= 2)
    {
      v16 = sub_2526917B0();
      sub_252692A40();
      v18 = v17;
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC750, &qword_252698D00);
      (*(*(v21 - 8) + 16))(v10, a1, v21);
      v22 = &v10[*(v8 + 36)];
      *v22 = 0x726564616568;
      *(v22 + 1) = 0xE600000000000000;
      *(v22 + 2) = a4;
      *(v22 + 6) = v16;
      *(v22 + 4) = v18;
      *(v22 + 5) = v20;
      v22[48] = 1;
      sub_25237153C(v10, v13, &qword_27F4DC740, &qword_252698CF0);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750, &qword_252698D00, MEMORY[0x277CE04B0]);
      sub_25242F148();
      sub_252691470();
      return sub_252372288(v10, &qword_27F4DC740, &qword_252698CF0);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC750, &qword_252698D00);
      (*(*(v14 - 8) + 16))(v13, a1, v14);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC758, &qword_27F4DC750, &qword_252698D00, MEMORY[0x277CE04B0]);
      sub_25242F148();
      return sub_252691470();
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242995C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC458, &qword_2526988B8);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - v4;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v19[0] = v1[4];
  *(v19 + 10) = *(v1 + 74);
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  sub_252429BA0(&v15, a1, v13 - v4);
  v13[2] = v17;
  v13[3] = v18;
  v14[0] = v19[0];
  *(v14 + 10) = *(v19 + 10);
  v13[0] = v15;
  v13[1] = v16;
  v8 = sub_25242AC08();
  v9 = sub_252690CB0();
  v10 = &v5[*(v3 + 36)];
  *v10 = v9;
  v10[8] = v8;
  if (v15)
  {
    v11 = swift_beginAccess();
    MEMORY[0x28223BE20](v11);
    *&v13[-1] = &v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC460, &qword_2526988C0);
    sub_25242DB20();
    sub_25242DF68();
    sub_252691D70();
    return sub_252372288(v5, &qword_27F4DC458, &qword_2526988B8);
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_252429BA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  *&v98 = a3;
  *&v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4D8, &qword_2526988F8);
  MEMORY[0x28223BE20](v99);
  v5 = &v83 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4C8, &qword_2526988F0);
  MEMORY[0x28223BE20](v90);
  v86 = &v83 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC500, &qword_252698918);
  MEMORY[0x28223BE20](v95);
  v97 = &v83 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC508, &unk_252698920);
  MEMORY[0x28223BE20](v88);
  v89 = &v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC498, &qword_2526988D8);
  MEMORY[0x28223BE20](v96);
  v91 = &v83 - v9;
  v85 = sub_2526910F0();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v92 = sub_252691640();
  MEMORY[0x28223BE20](v92);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4A8, &qword_2526988E0);
  *&v87 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    if (*(v28 + 40))
    {
      if (*(v28 + 40) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_252690680();

        if (v102 == 1)
        {
          v29 = *(a1 + 3);
          *v106 = *(a1 + 44);
          v30 = *(a1 + 5);
          v102 = v29;
          v103 = v30;
          v31 = *(a1 + 9);
          v104 = *(a1 + 7);
          v105 = v31;
          if (v106[1])
          {
            v32 = *(a1 + 3);
            v101[0] = *(a1 + 2);
            v101[1] = v32;
            v101[2] = *(a1 + 4);
            *(&v101[2] + 9) = *(a1 + 73);
            v100 = v29;
          }

          else
          {
            sub_25237153C(&v102, &v100, &qword_27F4DC510, &qword_2526ABB60);
            sub_252692F00();
            v72 = sub_2526919C0();
            sub_252690570();

            sub_2526910E0();
            swift_getAtKeyPath();
            sub_252372288(&v102, &qword_27F4DC510, &qword_2526ABB60);
            (*(v84 + 8))(v11, v85);
          }

          v60 = v97;
          v73 = v93;
          v74 = *(v92 + 20);
          v75 = *MEMORY[0x277CE0118];
          v76 = sub_252691260();
          v77 = *(*(v76 - 8) + 104);
          v99 = *(v101 + 8);
          v98 = *(&v101[1] + 8);
          v77(&v13[v74], v75, v76);
          v78 = v98;
          *v13 = v99;
          *(v13 + 1) = v78;
          v61 = v94;
          v79 = &v18[*(v94 + 36)];
          sub_25242E020(v13, v79);
          *(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0, &qword_252697270) + 36)) = 256;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8, &qword_2526988E8);
          (*(*(v80 - 8) + 16))(v18, v73, v80);
          sub_2523714D4(v18, v21, &qword_27F4DC4A8, &qword_2526988E0);
          v62 = v86;
          sub_2523714D4(v21, v86, &qword_27F4DC4A8, &qword_2526988E0);
          v59 = 0;
        }

        else
        {
          v59 = 1;
          v60 = v97;
          v61 = v94;
          v62 = v86;
        }

        (*(v87 + 56))(v62, v59, 1, v61);
        sub_25237153C(v62, v89, &qword_27F4DC4C8, &qword_2526988F0);
        swift_storeEnumTagMultiPayload();
        sub_25242DD48();
        sub_25242DE2C();
        v81 = v91;
        sub_252691470();
        sub_25237153C(v81, v60, &qword_27F4DC498, &qword_2526988D8);
        swift_storeEnumTagMultiPayload();
        sub_25242DCBC();
        sub_25242DEB0();
        sub_252691470();
        sub_252372288(v81, &qword_27F4DC498, &qword_2526988D8);
        v52 = v62;
        v53 = &qword_27F4DC4C8;
        v54 = &qword_2526988F0;
      }

      else
      {
        v55 = *(a1 + 3);
        *v106 = *(a1 + 44);
        v56 = *(a1 + 5);
        v102 = v55;
        v103 = v56;
        v57 = *(a1 + 9);
        v104 = *(a1 + 7);
        v105 = v57;
        if (v106[1])
        {
          v58 = *(a1 + 3);
          v101[0] = *(a1 + 2);
          v101[1] = v58;
          v101[2] = *(a1 + 4);
          *(&v101[2] + 9) = *(a1 + 73);
          v100 = v55;
        }

        else
        {
          sub_25237153C(&v102, &v100, &qword_27F4DC510, &qword_2526ABB60);
          sub_252692F00();
          v63 = sub_2526919C0();
          sub_252690570();

          sub_2526910E0();
          swift_getAtKeyPath();
          sub_252372288(&v102, &qword_27F4DC510, &qword_2526ABB60);
          (*(v84 + 8))(v11, v85);
        }

        v64 = *(v92 + 20);
        v65 = *MEMORY[0x277CE0118];
        v66 = sub_252691260();
        v67 = *(*(v66 - 8) + 104);
        v92 = *(v101 + 8);
        v87 = *(&v101[1] + 8);
        v67(&v16[v64], v65, v66);
        v68 = v87;
        *v16 = v92;
        *(v16 + 1) = v68;
        v69 = &v24[*(v94 + 36)];
        sub_25242E020(v16, v69);
        *(v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0, &qword_252697270) + 36)) = 256;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8, &qword_2526988E8);
        (*(*(v70 - 8) + 16))(v24, v93, v70);
        sub_2523714D4(v24, v27, &qword_27F4DC4A8, &qword_2526988E0);
        sub_25237153C(v27, v89, &qword_27F4DC4A8, &qword_2526988E0);
        swift_storeEnumTagMultiPayload();
        sub_25242DD48();
        sub_25242DE2C();
        v71 = v91;
        sub_252691470();
        sub_25237153C(v71, v97, &qword_27F4DC498, &qword_2526988D8);
        swift_storeEnumTagMultiPayload();
        sub_25242DCBC();
        sub_25242DEB0();
        sub_252691470();
        sub_252372288(v71, &qword_27F4DC498, &qword_2526988D8);
        v52 = v27;
        v53 = &qword_27F4DC4A8;
        v54 = &qword_2526988E0;
      }
    }

    else
    {
      v33 = *(a1 + 3);
      v104 = *(a1 + 2);
      v105 = v33;
      *v106 = *(a1 + 4);
      *&v106[10] = *(a1 + 74);
      v34 = *(a1 + 1);
      v102 = *a1;
      v103 = v34;
      sub_25242A994();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = &v5[*(v94 + 36)];
      v44 = *(v92 + 20);
      v45 = *MEMORY[0x277CE0118];
      v46 = sub_252691260();
      (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
      *v43 = v36;
      *(v43 + 1) = v38;
      *(v43 + 2) = v40;
      *(v43 + 3) = v42;
      *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0, &qword_252697270) + 36)] = 256;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4B8, &qword_2526988E8);
      (*(*(v47 - 8) + 16))(v5, v93, v47);
      v48 = a1[2];
      LODWORD(v45) = sub_2526917A0();
      sub_252692A40();
      v49 = &v5[*(v99 + 36)];
      *v49 = 0x756F72676B636162;
      *(v49 + 1) = 0xEA0000000000646ELL;
      *(v49 + 2) = v48;
      *(v49 + 6) = v45;
      *(v49 + 4) = v50;
      *(v49 + 5) = v51;
      v49[48] = 1;
      sub_25237153C(v5, v97, &qword_27F4DC4D8, &qword_2526988F8);
      swift_storeEnumTagMultiPayload();
      sub_25242DCBC();
      sub_25242DEB0();
      sub_252691470();
      v52 = v5;
      v53 = &qword_27F4DC4D8;
      v54 = &qword_2526988F8;
    }

    return sub_252372288(v52, v53, v54);
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void sub_25242A994()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 5);
  v7 = *(v0 + 9);
  v13 = *(v0 + 7);
  v14 = v7;
  v15 = *(v0 + 44);
  v11 = *(v0 + 3);
  v12 = v6;
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    if (v9[0])
    {
      if ((v15 & 0x100) != 0)
      {
        v9[2] = v13;
        v9[3] = v14;
        v10 = v15;
        v9[0] = v11;
        v9[1] = v12;
      }

      else
      {

        sub_252692F00();
        v8 = sub_2526919C0();
        sub_252690570();

        sub_2526910E0();
        swift_getAtKeyPath();
        sub_252372288(&v11, &qword_27F4DC120, &qword_25269CED0);
        (*(v2 + 8))(v4, v1);
      }
    }

    else
    {
      swift_beginAccess();
      sub_2526914E0();
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    sub_252690DE0();
    __break(1u);
  }
}

uint64_t sub_25242AC08()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + 88);
  v5 = *(v0 + 56);
  v22[1] = *(v0 + 40);
  v22[2] = v5;
  v22[3] = *(v0 + 72);
  v22[0] = *(v0 + 24);
  if ((v23 & 0x100) != 0)
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 72);
    v19 = *(v0 + 56);
    v20 = v7;
    v21 = *(v0 + 88);
    v17 = *(v0 + 24);
    v18 = v6;
  }

  else
  {

    sub_252692F00();
    v8 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v22, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  if (BYTE1(v17) != 1)
  {
    return sub_252691A20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC4F8, &qword_252698910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2526952C0;
  v10 = sub_252691A40();
  *(inited + 32) = v10;
  v11 = sub_252691A50();
  *(inited + 33) = v11;
  v12 = sub_252691A70();
  *(inited + 34) = v12;
  v13 = sub_252691A60();
  sub_252691A60();
  if (sub_252691A60() != v10)
  {
    v13 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v11)
  {
    v13 = sub_252691A60();
  }

  sub_252691A60();
  if (sub_252691A60() != v12)
  {
    return sub_252691A60();
  }

  return v13;
}

uint64_t sub_25242AE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F4DA9B8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F4FB3D0;
  sub_25242A994();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_25237153C(a1, a2, &qword_27F4DC458, &qword_2526988B8);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC460, &qword_2526988C0) + 36));
  *v13 = v4;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v12;
}

void *sub_25242AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7D8, &qword_252698E00);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E0, &qword_252698E08);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 40) == 2)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E8, &qword_252698E10);
      (*(*(v14 - 8) + 16))(v13, a1, v14);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8, &qword_252698E10, MEMORY[0x277CE04B0]);
      sub_25242F720();
      return sub_252691470();
    }

    else
    {
      v16 = sub_2526917A0();
      sub_252692A40();
      v18 = v17;
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC7E8, &qword_252698E10);
      (*(*(v21 - 8) + 16))(v10, a1, v21);
      v22 = &v10[*(v8 + 36)];
      *v22 = 0x6C6F72746E6F63;
      *(v22 + 1) = 0xE700000000000000;
      *(v22 + 2) = a4;
      *(v22 + 6) = v16;
      *(v22 + 4) = v18;
      *(v22 + 5) = v20;
      v22[48] = 1;
      sub_25237153C(v10, v13, &qword_27F4DC7D8, &qword_252698E00);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC7F0, &qword_27F4DC7E8, &qword_252698E10, MEMORY[0x277CE04B0]);
      sub_25242F720();
      sub_252691470();
      return sub_252372288(v10, &qword_27F4DC7D8, &qword_252698E00);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *AnimationModel.MatchedGeometryEffect.Icon.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC258, &qword_252697E88);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC260, &qword_252697E90);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC268, &qword_252697E98);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC270, &qword_252697EA0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *v2;
  if (*v2)
  {
    v15 = v2[2];
    v16 = *(v2 + 24);
    swift_beginAccess();
    if (*(v14 + 40) == 2)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278, &qword_252697EA8);
      (*(*(v17 - 8) + 16))(v13, v27, v17);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
      sub_25242C2F8();
      return sub_252691470();
    }

    else
    {
      if (v16)
      {
        v19 = sub_2526917A0();
        sub_252692A40();
        v21 = v20;
        v23 = v22;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278, &qword_252697EA8);
        (*(*(v24 - 8) + 16))(v8, v27, v24);
        v25 = &v8[*(v6 + 36)];
        *v25 = 1852793705;
        *(v25 + 1) = 0xE400000000000000;
        *(v25 + 2) = v15;
        *(v25 + 6) = v19;
        *(v25 + 4) = v21;
        *(v25 + 5) = v23;
        v25[48] = 1;
        sub_25237153C(v8, v5, &qword_27F4DC260, &qword_252697E90);
        swift_storeEnumTagMultiPayload();
        sub_25242C214();
        sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
        sub_252691470();
        sub_252372288(v8, &qword_27F4DC260, &qword_252697E90);
      }

      else
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278, &qword_252697EA8);
        (*(*(v26 - 8) + 16))(v5, v27, v26);
        swift_storeEnumTagMultiPayload();
        sub_25242C214();
        sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
        sub_252691470();
      }

      sub_25237153C(v10, v13, &qword_27F4DC268, &qword_252697E98);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC278, &qword_252697EA8);
      sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
      sub_25242C2F8();
      sub_252691470();
      return sub_252372288(v10, &qword_27F4DC268, &qword_252697E98);
    }
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

void *AnimationModel.CornerRadius.init(controlViewCornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  type metadata accessor for AnimationModel(0);
  sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
  *a1 = sub_252690DF0();
  *(a1 + 8) = v4;
  result = sub_2526924D0();
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 16) = a2;
  return result;
}

uint64_t AnimationModel.CornerRadius.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2A8, &qword_252697EB8);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2B0, &qword_252697EC0);
  MEMORY[0x28223BE20](v35);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2B8, &qword_252697EC8);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2C0, &qword_252697ED0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = v2[1];
  v41 = *v2;
  *v42 = v14;
  *&v42[16] = *(v2 + 4);
  v15 = v41;
  if (v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_252690680();

    if ((v39[0] & 1) != 0 && (v39[0] = *&v42[8], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20), sub_2526924E0(), (v40[0] & 1) == 0))
    {
      v16 = v42;
    }

    else
    {
      v16 = (v15 + 32);
      swift_beginAccess();
    }

    v17 = *v16;
    v18 = *(v11 + 16);
    v18(v13, a1, v10);
    swift_beginAccess();
    if (*(v15 + 40) == 2)
    {
      v19 = *v42;
      v34 = v11;
      v20 = &v9[*(v36 + 36)];
      v21 = *(sub_252690D30() + 20);
      v22 = *MEMORY[0x277CE0118];
      v23 = sub_252691260();
      (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
      *v20 = v19;
      *(v20 + 1) = v19;
      *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
      v18(v9, v13, v10);
      sub_25237153C(v9, v7, &qword_27F4DC2B8, &qword_252697EC8);
      swift_storeEnumTagMultiPayload();
      sub_25242C43C();
      sub_25242C520();
      v11 = v34;
      sub_252691470();
      sub_252372288(v9, &qword_27F4DC2B8, &qword_252697EC8);
    }

    else
    {
      v24 = swift_allocObject();
      v25 = *v42;
      *(v24 + 16) = v41;
      *(v24 + 32) = v25;
      *(v24 + 48) = *&v42[16];
      v34 = v10;
      v18(v5, v13, v10);
      v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2C8, &qword_252697ED8) + 36)];
      *v26 = sub_25242C3B0;
      v26[1] = v24;
      v26[2] = 0;
      v26[3] = 0;
      v27 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D0, &unk_252697EE0) + 36)];
      v28 = *(sub_252690D30() + 20);
      v29 = *MEMORY[0x277CE0118];
      v30 = sub_252691260();
      (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
      *v27 = v17;
      *(v27 + 1) = v17;
      *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
      sub_25242C404(&v41, v39);
      if (qword_27F4DA9B8 != -1)
      {
        swift_once();
      }

      v31 = &v5[*(v37 + 36)];
      *v31 = qword_27F4FB3D0;
      *(v31 + 1) = v17;
      sub_25237153C(v5, v7, &qword_27F4DC2A8, &qword_252697EB8);
      swift_storeEnumTagMultiPayload();
      sub_25242C43C();
      sub_25242C520();

      sub_252691470();
      sub_252372288(v5, &qword_27F4DC2A8, &qword_252697EB8);
      v10 = v34;
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for AnimationModel(0);
    sub_25242D574(&qword_27F4DBCC0, type metadata accessor for AnimationModel, &protocol conformance descriptor for AnimationModel);
    result = sub_252690DE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25242BFA8()
{
  result = sub_252692950();
  qword_27F4FB3D0 = result;
  return result;
}

uint64_t sub_25242BFE4()
{
  result = sub_252692950();
  qword_27F4FB3D8 = result;
  return result;
}

uint64_t sub_25242C064()
{
  result = sub_252692950();
  qword_27F4FB3F0 = result;
  return result;
}

uint64_t sub_25242C0C0(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  sub_252692950();
  v6 = sub_252692960();

  *a5 = v6;
  return result;
}

uint64_t sub_25242C124()
{
  result = sub_252692950();
  qword_27F4FB400 = result;
  return result;
}

unint64_t sub_25242C15C()
{
  result = qword_27F4DC200;
  if (!qword_27F4DC200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC1E0, &qword_252697DF0);
    sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0, &qword_252697E48, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC200);
  }

  return result;
}

unint64_t sub_25242C214()
{
  result = qword_27F4DC280;
  if (!qword_27F4DC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC260, &qword_252697E90);
    sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
    sub_252400FC8(&qword_27F4DC290, &qword_27F4DC298, &qword_252697EB0, MEMORY[0x277CE05B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC280);
  }

  return result;
}

unint64_t sub_25242C2F8()
{
  result = qword_27F4DC2A0;
  if (!qword_27F4DC2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC268, &qword_252697E98);
    sub_25242C214();
    sub_252400FC8(&qword_27F4DC288, &qword_27F4DC278, &qword_252697EA8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2A0);
  }

  return result;
}

unint64_t sub_25242C43C()
{
  result = qword_27F4DC2E0;
  if (!qword_27F4DC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2B8, &qword_252697EC8);
    sub_252400FC8(&qword_27F4DC2E8, &qword_27F4DC2C0, &qword_252697ED0, MEMORY[0x277CE04B0]);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8, &qword_25269CB00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2E0);
  }

  return result;
}

unint64_t sub_25242C520()
{
  result = qword_27F4DC2F8;
  if (!qword_27F4DC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2A8, &qword_252697EB8);
    sub_25242C5D8();
    sub_252400FC8(&qword_27F4DC310, &qword_27F4DC318, &unk_252697EF0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC2F8);
  }

  return result;
}

unint64_t sub_25242C5D8()
{
  result = qword_27F4DC300;
  if (!qword_27F4DC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2D0, &unk_252697EE0);
    sub_25242C690();
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8, &qword_25269CB00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC300);
  }

  return result;
}

unint64_t sub_25242C690()
{
  result = qword_27F4DC308;
  if (!qword_27F4DC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC2C8, &qword_252697ED8);
    sub_252400FC8(&qword_27F4DC2E8, &qword_27F4DC2C0, &qword_252697ED0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC308);
  }

  return result;
}

unint64_t sub_25242C74C()
{
  result = qword_27F4DC328;
  if (!qword_27F4DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC328);
  }

  return result;
}

void sub_25242C818(uint64_t a1)
{
  sub_25242CA60(319, &qword_27F4DC340, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_25242CA60(319, &qword_27F4DC348, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25242CA60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2526906B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25242CB2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_25242CB88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25242CC04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_25242CC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25242CCCC()
{
  result = qword_27F4DC350;
  if (!qword_27F4DC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC358, &qword_252698288);
    sub_252400FC8(&qword_27F4DC1F8, &qword_27F4DC1F0, &qword_252697E48, MEMORY[0x277CE04B0]);
    sub_25242C15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DC350);
  }

  return result;
}