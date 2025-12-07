uint64_t sub_247BC0CA8(uint64_t a1, unint64_t a2)
{
  v2 = sub_247BF6600();
  v6 = sub_247BC0D28(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_247BC0D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_247BF6AD0();
    if (!v9 || (v10 = v9, v11 = sub_247BBEA68(v9, 0), v12 = sub_247BC0E80(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_247BF64F0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247BF64F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_247BF6D70();
LABEL_4:

  return sub_247BF64F0();
}

unint64_t sub_247BC0E80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247BC10A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247BF65A0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_247BF6D70();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247BC10A0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247BF6580();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_247BC10A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247BF65B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1B4060](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_247BC111C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v20 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 16 * v11 + 8);
      v13 = *(a2 + 56) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);

      sub_247BC2D0C(v14, v15, v16);
      if (!v12)
      {
        break;
      }

      v6 &= v6 - 1;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      v17 = *(a1 + 48);
      v21[2] = *(a1 + 32);
      v21[3] = v17;
      v22 = *(a1 + 64);
      v18 = *(a1 + 16);
      v21[0] = *a1;
      v21[1] = v18;
      sub_247BF6500();

      CUJSONValue.hash(into:)(v21);
      sub_247BC2D30(v14, v15, v16);
      result = sub_247BF74A0();
      v20 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x24C1B4F40](v20);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_247BC12AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_247BF5E90();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_247BC2AC4(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_247BBEA68(v10, 0);
      v14 = sub_247BF5E50();
      sub_247BC2AC4(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_247BC1428(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_247BF64E0();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_247BF64E0();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_247BF5DA0();
  if (a1)
  {
    a1 = sub_247BF5DC0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_247BF5DA0() || !__OFSUB__(v5, sub_247BF5DC0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_247BF5DB0();
  return sub_247BF64E0();
}

void *sub_247BC15E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF30, &qword_247BFBB10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF20, &unk_247BFBB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_247BC172C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, v13, &qword_27EE5DF58, &qword_247BFBB38);
      result = sub_247BBEADC(v13);
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
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_247BC18C4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_247BF6F10();
  swift_beginAccess();
  v4 = *(v3 + 40);
  if (*(v4 + 16) && (v5 = sub_247BBEADC(v8), (v6 & 1) != 0))
  {
    sub_247B9B1AC(*(v4 + 56) + 32 * v5, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  swift_endAccess();
  return sub_247BC5A5C(v8);
}

unint64_t sub_247BC1964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC78, &qword_247BFBAD0);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, &v13, &qword_27EE5DDF0, &qword_247BFA948);
      v5 = v13;
      v6 = v14;
      result = sub_247B9B134(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_247BC1A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_247BC1BE8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_247BBDF88(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_247BC1A94(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t _s14CoreUtilsSwift11CUIPAddressO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = sub_247BF6220();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247BF61E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CUIPAddress(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DF00, &qword_247BFBAC8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_247BC2F9C(v27, &v25 - v17);
  sub_247BC2F9C(v28, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247BC2F9C(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v18[v19], v26);
      v21 = MEMORY[0x24C1B3CE0](v12, v4);
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v12, v20);
LABEL_9:
      sub_247BC581C(v18);
      return v21 & 1;
    }

    (*(v2 + 8))(v12, v26);
  }

  else
  {
    sub_247BC2F9C(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v21 = MEMORY[0x24C1B3CA0](v14, v8);
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_247B9CAD0(v18, &unk_27EE5DF00, &qword_247BFBAC8);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s14CoreUtilsSwift11CUJSONValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_27;
        }

        sub_247BC2D30(*a1, v3, 1);
        sub_247BC2D30(v5, v6, 1);
        v8 = v5 ^ v2 ^ 1;
        return v8 & 1;
      }

      if (v7 == 2)
      {
        sub_247BC2D0C(*a2, a2[1], 2);
        sub_247BC2D0C(v2, v3, 2);
        LOBYTE(v12) = sub_247BA5E2C(v2, v5);
        sub_247BC2D30(v2, v3, 2);
        v13 = v5;
        v14 = v6;
        v15 = 2;
        goto LABEL_34;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_247BC2D0C(*a2, a2[1], 0);
      sub_247BC2D0C(v2, v3, 0);
      v12 = sub_247BA5A28(v2, v5);
      sub_247BC2D30(v2, v3, 0);
      v13 = v5;
      v14 = v6;
      v15 = 0;
      goto LABEL_34;
    }

LABEL_20:

    goto LABEL_27;
  }

  if (*(a1 + 16) <= 4u)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_247BC2D30(*a1, v3, 3);
        sub_247BC2D30(v5, v6, 3);
        if (*&v2 != *&v5)
        {
          goto LABEL_28;
        }

LABEL_31:
        v8 = 1;
        return v8 & 1;
      }

LABEL_27:
      sub_247BC2D0C(v5, v6, v7);
      sub_247BC2D30(v2, v3, v4);
      sub_247BC2D30(v5, v6, v7);
LABEL_28:
      v8 = 0;
      return v8 & 1;
    }

    if (v7 != 4)
    {
      goto LABEL_27;
    }

    sub_247BC2D30(*a1, v3, 4);
    sub_247BC2D30(v5, v6, 4);
    v8 = v2 == v5;
    return v8 & 1;
  }

  if (v4 != 5)
  {
    if (v7 != 6 || (v6 | v5) != 0)
    {
      goto LABEL_27;
    }

    sub_247BC2D30(*a1, v3, 6);
    v9 = 0;
    v10 = 0;
    v11 = 6;
LABEL_30:
    sub_247BC2D30(v9, v10, v11);
    goto LABEL_31;
  }

  if (v7 != 5)
  {
    goto LABEL_20;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_247BC2D0C(v2, v3, 5);
    sub_247BC2D0C(v2, v3, 5);
    sub_247BC2D30(v2, v3, 5);
    v9 = v2;
    v10 = v3;
    v11 = 5;
    goto LABEL_30;
  }

  LOBYTE(v12) = sub_247BF7180();
  sub_247BC2D0C(v5, v6, 5);
  sub_247BC2D0C(v2, v3, 5);
  sub_247BC2D30(v2, v3, 5);
  v13 = v5;
  v14 = v6;
  v15 = 5;
LABEL_34:
  sub_247BC2D30(v13, v14, v15);
  return v12 & 1;
}

BOOL _s14CoreUtilsSwift12CUMACAddressV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 4) == *(a2 + 4))
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  return result;
}

uint64_t sub_247BC2378(uint64_t a1)
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_247BC5C28();
  os_unfair_lock_unlock(v3 + 4);

  return sub_247B9CAD0(a1, &qword_27EE5DC90, &unk_247BFA880);
}

uint64_t sub_247BC2414(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = -1;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_247BC5940;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_247BA1F78;
  v12[3] = &block_descriptor_233;
  v8 = _Block_copy(v12);

  v9 = a3;

  v10 = sub_247BF64B0();

  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v5 + 48), v9, v8);
  swift_endAccess();

  _Block_release(v8);

  return v5;
}

unint64_t sub_247BC2580()
{
  result = qword_27EE5DCE8;
  if (!qword_27EE5DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DCE8);
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

uint64_t sub_247BC2674(uint64_t a1)
{
  sub_247BF5F30();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v4 = *Strong;
      v5 = (Strong + qword_27EE5EC50);
      os_unfair_lock_lock((Strong + qword_27EE5EC50));
      v6 = *(v4 + 80);
      sub_247BF5F30();
      type metadata accessor for CUIteratorTask(255, v6, v7, v8);
      sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_247BF6330();
      sub_247BF6300();
      sub_247BF6AC0();
      os_unfair_lock_unlock(v5);
      if (v9)
      {
        sub_247BA2F5C(a1);
      }
    }
  }

  return result;
}

uint64_t sub_247BC2818()
{
  v2 = *(sub_247BF5F30() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_247B95F40;

  return sub_247BA4810(v8, v4, v5, v6, v7, v0 + v3);
}

unint64_t sub_247BC2908()
{
  result = qword_27EE5DD08;
  if (!qword_27EE5DD08)
  {
    sub_247BC3818(255, &qword_27EE5DD10, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD08);
  }

  return result;
}

uint64_t sub_247BC2970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return sub_247BBDA48(a1, v4);
}

uint64_t sub_247BC2A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247BC2A70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247BC2AC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_247BC2B18()
{
  result = qword_27EE5DD60;
  if (!qword_27EE5DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD60);
  }

  return result;
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

uint64_t sub_247BC2BBC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DD50, &qword_247BFA8D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_247BC2C40()
{
  result = qword_27EE5DD80;
  if (!qword_27EE5DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD80);
  }

  return result;
}

uint64_t sub_247BC2C94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DD68, &qword_247BFA8E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247BC2D0C(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 5)
  {
  }

  return v3;
}

uint64_t sub_247BC2D30(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 5)
  {
  }

  return v3;
}

unint64_t sub_247BC2D54()
{
  result = qword_27EE5DD90;
  if (!qword_27EE5DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD90);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247BC2E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BAD1C4(v5, v2, v3, v4);
}

id CUTrafficFlagsToString(unsigned int a1)
{
  v1 = CUPrintFlags();

  return v1;
}

uint64_t sub_247BC2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIPAddress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BC2F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIPAddress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_247BC3000()
{
  result = qword_27EE5E180;
  if (!qword_27EE5E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E180);
  }

  return result;
}

uint64_t sub_247BC3058(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_247BC3110(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_247BC3058(a1, &a1[a2]);
  }

  sub_247BF5DD0();
  swift_allocObject();
  sub_247BF5D90();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_247BF5E60();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_247BC31C0(uint64_t a1, uint64_t a2)
{
  v4 = v2[7];
  v10 = v2[6];
  v11 = v2[5];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_247B96F0C;

  return sub_247BB1398(a1, a2, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_247BC32D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_247B95F40;

  return sub_247BB32B8(a1, a2, v7, v8, v9, v11, v10, v6);
}

uint64_t sub_247BC33B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_247B96F0C;

  return sub_247BB4400(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_247BC34F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_247BC353C()
{
  result = qword_27EE5DE48;
  if (!qword_27EE5DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE48);
  }

  return result;
}

unint64_t sub_247BC360C()
{
  result = qword_281346680;
  if (!qword_281346680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281346680);
  }

  return result;
}

unint64_t sub_247BC3660()
{
  result = qword_27EE5DE58;
  if (!qword_27EE5DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE58);
  }

  return result;
}

unint64_t sub_247BC36B4()
{
  result = qword_27EE5DE60;
  if (!qword_27EE5DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE60);
  }

  return result;
}

uint64_t sub_247BC3710()
{
  v1 = *(v0 + 32);
  sub_247BF6CF0();

  sub_247BF6AC0();
  v2 = sub_247BF75C0();
  MEMORY[0x24C1B4020](v2);

  v3 = MEMORY[0x24C1B4020](2564140, 0xE300000000000000);
  v4 = v1(v3);
  MEMORY[0x24C1B4020](v4);

  MEMORY[0x24C1B4020](39, 0xE100000000000000);
  return 0x6620706172776E55;
}

const char *CUPairingSetupCodeTypeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_278EDBDD0[a1];
  }
}

uint64_t sub_247BC3818(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_247BC3860(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247BC2AC4(result, a2);
  }

  return result;
}

uint64_t sub_247BC3874(int a1, xpc_object_t xstring)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (xpc_string_get_string_ptr(xstring))
  {
    v5 = sub_247BF6560();
    v7 = v6;
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_247BBE48C(0, *(v8 + 2) + 1, 1, v8);
      *v4 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_247BBE48C((v10 > 1), v11 + 1, 1, v8);
      *v4 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    return 1;
  }

  return v3;
}

unint64_t sub_247BC3970()
{
  result = qword_27EE5DE88;
  if (!qword_27EE5DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE88);
  }

  return result;
}

unint64_t sub_247BC3A10()
{
  result = qword_27EE5DE90;
  if (!qword_27EE5DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE90);
  }

  return result;
}

unint64_t sub_247BC3A8C()
{
  result = qword_27EE5DE98;
  if (!qword_27EE5DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE98);
  }

  return result;
}

unint64_t sub_247BC3AF0()
{
  result = qword_27EE5DEA0;
  if (!qword_27EE5DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEA0);
  }

  return result;
}

unint64_t sub_247BC3BE0()
{
  result = qword_27EE5DEB0;
  if (!qword_27EE5DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEB0);
  }

  return result;
}

uint64_t sub_247BC3D38(uint64_t a1)
{
  result = sub_247BF60B0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247BC3E14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  result = sub_247BF68B0();
  if (v2 <= 0x3F)
  {
    result = sub_247BF5F30();
    if (v3 <= 0x3F)
    {
      result = sub_247BF68C0();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CoreUtilsSwift11CUJSONValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247BC3FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247BC402C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_247BC4070(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_247BC416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC41CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_247BC4344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4384(uint64_t *a1, unsigned int a2)
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

uint64_t sub_247BC43E4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_247BC4450(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247BC4518(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247BC4550(uint64_t a1)
{
  result = sub_247BF60B0();
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

uint64_t sub_247BC4708(uint64_t a1)
{
  result = sub_247BF61E0();
  if (v2 <= 0x3F)
  {
    result = sub_247BF6220();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CUMACAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUMACAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_247BC47F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247BC4864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_247BC49A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_247BC4BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_247BC4C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_247BC4C98(uint64_t *a1, int a2)
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

uint64_t sub_247BC4CE0(uint64_t result, int a2, int a3)
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

uint64_t _s22PrintUtilsTimeDurationOwet(unsigned int *a1, int a2)
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

_WORD *_s22PrintUtilsTimeDurationOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_247BC4E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4EAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247BC4ECC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_247BC4F08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_247BC4F54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247BF5DD0();
  swift_allocObject();
  result = sub_247BF5D90();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_247BC4FD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247BF5DD0();
  swift_allocObject();
  result = sub_247BF5D90();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247BF5E60();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_247BC5054()
{
  result = qword_27EE5DEE8;
  if (!qword_27EE5DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEE8);
  }

  return result;
}

uint64_t sub_247BC50A8(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247B96F0C;

  return sub_247BB4B70(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_247BC5160()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB4C7C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_247BC5260()
{
  result = qword_27EE5DEF0;
  if (!qword_27EE5DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEF0);
  }

  return result;
}

uint64_t sub_247BC52B4()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB3B84(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_247BC535C(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247B96F0C;

  return sub_247BB1BE0(a1, v8, v9, v3, v4, v5, v6, v7);
}

uint64_t sub_247BC5448()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_247B96F0C;

  return sub_247BB2A98(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_247BC550C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247B96F0C;

  return sub_247BB1F20(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_247BC55F4()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB26F8(v5, v2, v3, v4);
}

uint64_t sub_247BC569C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = v2;
  v7 = *(v1 + 48);
  v8 = a1;
  return sub_247BB2290(sub_247BC5730, v4, "CoreUtilsSwift/MiscUtils.swift", 30, 2u, 1151, v5, MEMORY[0x277D84F78] + 8, v2);
}

uint64_t sub_247BC5730(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return v3(a1, v4);
}

uint64_t sub_247BC581C(uint64_t a1)
{
  v2 = type metadata accessor for CUIPAddress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BC5878(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return sub_247BBDC2C(a1, v4);
}

uint64_t sub_247BC5940()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 24);
      sub_247B94744(*(result + 16), v2);

      v1(v3);
      return sub_247B94734(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_247BC59CC()
{
  v1 = *(v0 + 48);
  sub_247BF6F10();
  sub_247BC5B0C(v1, v3, &qword_27EE5DC90, &unk_247BFA880);
  swift_beginAccess();
  sub_247BA1A4C(v3, v4);
  return swift_endAccess();
}

uint64_t sub_247BC5B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247BC5C44()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE609A8);
  __swift_project_value_buffer(v0, qword_27EE609A8);
  sub_247BA120C();

  return sub_247BF60A0();
}

void *CUXPCActorSystem.actorCreator.getter()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_247BFBC18;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_247B94744(v1, v2);
  os_unfair_lock_unlock((v0 + 64));
  if (!v1)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return &unk_247BFBC08;
}

void sub_247BC5D98(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 16);
  v4 = *&v3[18]._os_unfair_lock_opaque;
  v5 = *&v3[20]._os_unfair_lock_opaque;
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_247BFC340;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_247B94744(v4, v5);
  os_unfair_lock_unlock(v3 + 16);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_247BC5E30(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_247BC5F28;

  return v7(a2);
}

uint64_t sub_247BC5F28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_247BC6044(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_247BFC338;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_247B94744(v3, v4);
  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_247B94744(v6, v5);
  sub_247B94734(v8, v9);
  os_unfair_lock_unlock((v7 + 64));

  return sub_247B94734(v6, v5);
}

uint64_t sub_247BC6110(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_247BC620C;

  return v6(v2 + 16, a1);
}

uint64_t sub_247BC620C()
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
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    v8 = *(v3 + 8);

    return v8(v6, v7);
  }
}

uint64_t sub_247BC634C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247BDED60;

  return sub_247BC6110(a1, v4);
}

uint64_t sub_247BC6400(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247B96F0C;

  return sub_247BC5E30(a1, a2, v6);
}

uint64_t CUXPCActorSystem.actorCreator.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_247B94744(a1, a2);
  sub_247B94734(v5, v6);
  os_unfair_lock_unlock((v2 + 64));

  return sub_247B94734(a1, a2);
}

uint64_t (*CUXPCActorSystem.actorCreator.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_247BFBC28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_247B94744(v3, v4);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = &unk_247BFBC20;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_247BC6630;
}

uint64_t sub_247BC6630(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_247B94744(*a1, v3);
    os_unfair_lock_lock((v4 + 64));
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
    sub_247B94744(v2, v3);
    sub_247B94734(v5, v6);
    os_unfair_lock_unlock((v4 + 64));
    sub_247B94734(v2, v3);
  }

  else
  {
    os_unfair_lock_lock((v4 + 64));
    v7 = *(v4 + 72);
    v8 = *(v4 + 80);
    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
    sub_247B94744(v2, v3);
    sub_247B94734(v7, v8);
    os_unfair_lock_unlock((v4 + 64));
  }

  return sub_247B94734(v2, v3);
}

uint64_t (*CUXPCActorSystem.invalidationHandler.getter())()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_247BC6954;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_247B94744(v1, v2);
  os_unfair_lock_unlock((v0 + 64));
  if (!v1)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return sub_247BC692C;
}

void sub_247BC67C8(os_unfair_lock_s **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 16);
  v4 = *&v3[28]._os_unfair_lock_opaque;
  v5 = *&v3[30]._os_unfair_lock_opaque;
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247BDED68;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_247B94744(v4, v5);
  os_unfair_lock_unlock(v3 + 16);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_247BC6860(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247BDED40;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_247B94744(v3, v4);
  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_247B94744(v6, v5);
  sub_247B94734(v8, v9);
  os_unfair_lock_unlock((v7 + 64));

  return sub_247B94734(v6, v5);
}

uint64_t CUXPCActorSystem.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  sub_247B94744(a1, a2);
  sub_247B94734(v5, v6);
  os_unfair_lock_unlock((v2 + 64));

  return sub_247B94734(a1, a2);
}

uint64_t (*CUXPCActorSystem.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247BDED68;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_247B94744(v3, v4);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = sub_247BDED40;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_247BC6AE4;
}

uint64_t sub_247BC6AE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_247B94744(*a1, v3);
    os_unfair_lock_lock((v4 + 64));
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
    sub_247B94744(v2, v3);
    sub_247B94734(v5, v6);
    os_unfair_lock_unlock((v4 + 64));
    sub_247B94734(v2, v3);
  }

  else
  {
    os_unfair_lock_lock((v4 + 64));
    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
    sub_247B94744(v2, v3);
    sub_247B94734(v7, v8);
    os_unfair_lock_unlock((v4 + 64));
  }

  return sub_247B94734(v2, v3);
}

uint64_t CUXPCActorSystem.__allocating_init(outgoingEndpoint:environment:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  CUXPCActorSystem.init(outgoingEndpoint:environment:)(a1, a2);
  return v4;
}

uint64_t CUXPCActorSystem.init(outgoingEndpoint:environment:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v7 = sub_247BDD0CC(v5);
  v8 = sub_247BDD1D0(v5);
  v9 = sub_247BDD2EC(v5);
  *(v2 + 64) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 88) = v6;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v2 + 136) = v7;
  *(v2 + 144) = v8;
  *(v2 + 152) = v9;
  *(v2 + 160) = v10;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  *(v2 + 48) = 0x746E65696C63;
  *(v2 + 56) = 0xE600000000000000;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 184) = v3;
  return v2;
}

uint64_t CUXPCActorSystem.__allocating_init(outgoingServiceName:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  CUXPCActorSystem.init(outgoingServiceName:environment:)(a1, a2, a3);
  return v6;
}

uint64_t CUXPCActorSystem.init(outgoingServiceName:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v9 = sub_247BDD0CC(v7);
  v10 = sub_247BDD1D0(v7);
  v11 = sub_247BDD2EC(v7);
  *(v3 + 64) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = v8;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  v12 = MEMORY[0x277D84FA0];
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 152) = v11;
  *(v3 + 160) = v12;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0x746E65696C63;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 184) = 0;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  return v3;
}

uint64_t CUXPCActorSystem.__allocating_init(incomingServiceName:entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  CUXPCActorSystem.init(incomingServiceName:entitlement:environment:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CUXPCActorSystem.init(incomingServiceName:entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = MEMORY[0x277D84F90];
  v12 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v13 = sub_247BDD0CC(v11);
  v14 = sub_247BDD1D0(v11);
  v15 = sub_247BDD2EC(v11);
  *(v5 + 64) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 88) = v12;
  *(v5 + 104) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = v13;
  *(v5 + 144) = v14;
  v16 = MEMORY[0x277D84FA0];
  *(v5 + 152) = v15;
  *(v5 + 160) = v16;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v10;
  *(v5 + 48) = 0x726576726573;
  *(v5 + 56) = 0xE600000000000000;
  *(v5 + 184) = 0;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return v5;
}

uint64_t CUXPCActorSystem.__allocating_init(entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  CUXPCActorSystem.init(entitlement:environment:)(a1, a2, a3);
  return v6;
}

uint64_t CUXPCActorSystem.init(entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v9 = sub_247BDD0CC(v7);
  v10 = sub_247BDD1D0(v7);
  v11 = sub_247BDD2EC(v7);
  *(v3 + 64) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = v8;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  v12 = MEMORY[0x277D84FA0];
  *(v3 + 152) = v11;
  *(v3 + 160) = v12;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0x726576726573;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  return v3;
}

uint64_t CUXPCActorSystem.description.getter()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 120);
  v2 = *(v0 + 152);
  v16[4] = *(v0 + 136);
  v16[5] = v2;
  v16[6] = *(v0 + 168);
  v3 = *(v0 + 88);
  v16[0] = *(v0 + 72);
  v16[1] = v3;
  v16[2] = *(v0 + 104);
  v16[3] = v1;
  v4 = *(v0 + 120);
  v5 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = v5;
  v15 = *(v0 + 168);
  v6 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = v6;
  v11 = *(v0 + 104);
  v12 = v4;
  sub_247BDD400(v16, v17);
  v7 = sub_247BC7164(&v9);
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v15;
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  sub_247BDD438(v17);
  os_unfair_lock_unlock((v0 + 64));
  return v7;
}

uint64_t sub_247BC7164(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 88);
  v17 = 0;
  v18 = 0xE000000000000000;
  v16.rawValue = *sub_247BE9450();
  if (*(v1 + 16) == 1)
  {
    v4._countAndFlagsBits = 0x746E65696C63;
    v4._object = 0xE600000000000000;
    String.append(_:_:)(&v16, v4);
    strcpy(&v15, "connection=");
    HIDWORD(v15._object) = -352321536;
    if (v2)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v7 = v6;
  }

  else
  {
    v8._countAndFlagsBits = 0x726576726573;
    v8._object = 0xE600000000000000;
    String.append(_:_:)(&v16, v8);
    strcpy(&v15, "connections=");
    BYTE5(v15._object) = 0;
    HIWORD(v15._object) = -5120;
    if ((v3 & 0xC000000000000001) != 0)
    {
      sub_247BF6C10();
    }

    v5 = sub_247BF6FD0();
  }

  MEMORY[0x24C1B4020](v5, v7);

  String.append(_:_:)(&v16, v15);

  v15._object = 0xE900000000000000;
  v9 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v9);

  v10._countAndFlagsBits = strcpy(&v15, "actors=");
  v10._object = 0xE700000000000000;
  String.append(_:_:)(&v16, v10);

  strcpy(&v15, "onDemand=");
  v11 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v11);

  String.append(_:_:)(&v16, v15);

  strcpy(&v15, "predefined=");
  HIDWORD(v15._object) = -352321536;
  v12 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v12);

  String.append(_:_:)(&v16, v15);

  strcpy(&v15, "monitors=");
  WORD1(v15._object) = 0;
  HIDWORD(v15._object) = -385875968;
  v13 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v13);

  String.append(_:_:)(&v16, v15);

  return v17;
}

uint64_t CUXPCActorSystem.summary.getter()
{
  v1 = 0;
  os_unfair_lock_lock((v0 + 64));
  v2 = *(v0 + 88);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v65[4] = *(v0 + 136);
  v66 = v3;
  v67 = *(v0 + 168);
  v65[0] = *(v0 + 72);
  v65[1] = v2;
  v65[2] = *(v0 + 104);
  v65[3] = v4;
  v5 = *(&v2 + 1);
  v6 = v2;
  v7 = *(&v3 + 1);
  v8 = *(v0 + 120);
  v9 = *(v0 + 152);
  v61 = *(v0 + 136);
  v62 = v9;
  v63 = *(v0 + 168);
  v10 = *(v0 + 88);
  v57 = *(v0 + 72);
  v58 = v10;
  v59 = *(v0 + 104);
  v60 = v8;
  sub_247BDD400(v65, v68);
  v54 = v5;

  v55 = v7;

  v53 = v0;
  v11 = sub_247BC7164(&v57);
  v13 = v12;
  v68[4] = v61;
  v68[5] = v62;
  v68[6] = v63;
  v68[0] = v57;
  v68[1] = v58;
  v68[2] = v59;
  v68[3] = v60;
  sub_247BDD438(v68);
  *&v57 = v11;
  *(&v57 + 1) = v13;

  MEMORY[0x24C1B4020](10, 0xE100000000000000);

  v64 = v57;
  v14 = *(v6 + 16);
  if (!v14)
  {
LABEL_4:
    v22 = v66;
    if (!*(v66 + 16))
    {
      goto LABEL_10;
    }

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_247BF6CF0();

    v56[0] = 0xD000000000000013;
    v56[1] = 0x8000000247C01910;
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = sub_247BD6C14(*(v22 + 16), 0);
      v25 = sub_247BDC9C0(&v57, v24 + 4, v23, v22);
      v26 = v57;
      swift_bridgeObjectRetain_n();
      sub_247B9472C(v26);
      if (v25 == v23)
      {
LABEL_9:
        *&v57 = v24;
        sub_247BD6ED0(&v57);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
        sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30, MEMORY[0x277D83958]);
        v5 = sub_247BF6400();
        v28 = v27;

        MEMORY[0x24C1B4020](v5, v28);

        MEMORY[0x24C1B4020](2653, 0xE200000000000000);
        v14 = &v64;
        MEMORY[0x24C1B4020](v56[0], v56[1]);

LABEL_10:
        if (!v54)
        {
          v16 = MEMORY[0x277D84F90];
          goto LABEL_14;
        }

        *&v57 = 0;
        *(&v57 + 1) = 0xE000000000000000;
        MEMORY[0x24C1B4020](0x697463656E6E6F43, 0xEC000000203A6E6FLL);
        v56[0] = v54;
        type metadata accessor for CUXPCActorConnection();
        sub_247BF6DC0();
        MEMORY[0x24C1B4020](10, 0xE100000000000000);
        v17 = *(&v57 + 1);
        v18 = v57;
        v16 = sub_247BBE48C(0, 1, 1, MEMORY[0x277D84F90]);
        v5 = *(v16 + 2);
        v19 = *(v16 + 3);
        v14 = (v5 + 1);
        if (v5 < v19 >> 1)
        {
          goto LABEL_12;
        }

        goto LABEL_44;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  strcpy(v56, "Actors: [");
  WORD1(v56[1]) = 0;
  HIDWORD(v56[1]) = -385875968;
  v5 = sub_247BD6C14(v14, 0);
  v15 = sub_247BDCB18(&v57, (v5 + 32), v14, v6);
  v16 = v57;
  v17 = *(&v58 + 1);
  v18 = v59;
  swift_bridgeObjectRetain_n();
  sub_247B9472C(v16);
  if (v15 == v14)
  {
    *&v57 = v5;
    sub_247BD6ED0(&v57);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
    sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30, MEMORY[0x277D83958]);
    v5 = sub_247BF6400();
    v21 = v20;

    MEMORY[0x24C1B4020](v5, v21);

    MEMORY[0x24C1B4020](2653, 0xE200000000000000);
    v14 = &v64;
    MEMORY[0x24C1B4020](v56[0], v56[1]);

    goto LABEL_4;
  }

  while (1)
  {
    __break(1u);
LABEL_44:
    v16 = sub_247BBE48C((v19 > 1), v14, 1, v16);
LABEL_12:

    *(v16 + 2) = v14;
    v29 = &v16[16 * v5];
    *(v29 + 4) = v18;
    *(v29 + 5) = v17;
LABEL_14:
    v30 = v55;
    v52 = v1;
    if ((v55 & 0xC000000000000001) != 0)
    {
      sub_247BF6C00();
      v14 = type metadata accessor for CUXPCActorConnection();
      sub_247BDEA98(&unk_27EE5DFE0, v31, type metadata accessor for CUXPCActorConnection, &unk_247BFBF18);
      sub_247BF68E0();
      v17 = *(&v57 + 1);
      v30 = v57;
      v18 = *(&v58 + 1);
      v32 = v58;
      v33 = v59;
    }

    else
    {
      v18 = 0;
      v34 = -1 << *(v55 + 32);
      v17 = v55 + 56;
      v32 = ~v34;
      v35 = -v34;
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v33 = v36 & *(v55 + 56);
    }

    v55 = v30;
    v37 = (v32 + 64) >> 6;
    if (v30 < 0)
    {
      break;
    }

    while (1)
    {
      v19 = v18;
      v40 = v33;
      v38 = v18;
      if (!v33)
      {
        break;
      }

LABEL_28:
      v39 = (v40 - 1) & v40;
      v1 = *(*(v30 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v40)))));

      if (!v1)
      {
        goto LABEL_36;
      }

LABEL_29:
      strcpy(v56, "Connection: ");
      BYTE5(v56[1]) = 0;
      HIWORD(v56[1]) = -5120;
      v41 = sub_247BC7C7C();
      MEMORY[0x24C1B4020](v41);

      MEMORY[0x24C1B4020](10, 0xE100000000000000);
      v42 = v56[0];
      v43 = v56[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_247BBE48C(0, *(v16 + 2) + 1, 1, v16);
      }

      v5 = *(v16 + 2);
      v44 = *(v16 + 3);
      v14 = (v5 + 1);
      if (v5 >= v44 >> 1)
      {
        v16 = sub_247BBE48C((v44 > 1), v5 + 1, 1, v16);
      }

      *(v16 + 2) = v14;
      v45 = &v16[16 * v5];
      *(v45 + 4) = v42;
      *(v45 + 5) = v43;
      v18 = v38;
      v33 = v39;
      v30 = v55;
      if (v55 < 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v38 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v38 >= v37)
      {
        goto LABEL_37;
      }

      v40 = *(v17 + 8 * v38);
      ++v19;
      if (v40)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

LABEL_21:
  if (sub_247BF6C30())
  {
    type metadata accessor for CUXPCActorConnection();
    swift_dynamicCast();
    v1 = v56[0];
    v38 = v18;
    v39 = v33;
    if (v56[0])
    {
      goto LABEL_29;
    }
  }

LABEL_36:
  v30 = v55;
LABEL_37:
  sub_247B9472C(v30);
  v56[0] = v16;

  sub_247BD6ED0(v56);
  if (v52)
  {

    __break(1u);
  }

  else
  {

    v46 = *(v56[0] + 2);
    if (v46)
    {
      v47 = v56[0] + 40;
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;

        MEMORY[0x24C1B4020](v48, v49);

        v47 += 16;
        --v46;
      }

      while (v46);
    }

    v50 = v64;
    os_unfair_lock_unlock(v53 + 16);
    return v50;
  }

  return result;
}

uint64_t sub_247BC7C7C()
{
  v1 = v0;
  v18 = 0;
  v19 = 0xE000000000000000;
  v17.rawValue = *sub_247BE9468();
  v2 = *(v0 + 24);
  v14._countAndFlagsBits = *(v0 + 16);
  v14._object = v2;

  MEMORY[0x24C1B4020](58, 0xE100000000000000);
  v15[0] = *(v0 + 88);
  v3 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v3);

  String.append(_:_:)(&v17, v14);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_247BF6CF0();

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x8000000247C01580;
  swift_beginAccess();
  v4 = *(v0 + 80);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_247BD6C14(*(v4 + 16), 0);
  v7 = sub_247BDC868(&v14, v6 + 4, v5, v4);
  countAndFlagsBits = v14._countAndFlagsBits;
  swift_bridgeObjectRetain_n();
  sub_247B9472C(countAndFlagsBits);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x277D84F90];
  }

  v14._countAndFlagsBits = v6;
  sub_247BD6ED0(&v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
  sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30, MEMORY[0x277D83958]);
  v9 = sub_247BF6400();
  v11 = v10;

  MEMORY[0x24C1B4020](v9, v11);

  MEMORY[0x24C1B4020](93, 0xE100000000000000);
  String.append(_:_:)(&v17, v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  MEMORY[0x24C1B4020](0x3D7473616CLL, 0xE500000000000000);
  swift_beginAccess();
  v13 = *(v1 + 64);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(&v13, MEMORY[0x277D837D0], MEMORY[0x277D83838]);
  String.append(_:_:)(&v17, v16);

  return v18;
}

Swift::Void __swiftcall CUXPCActorSystem.activate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    os_unfair_lock_lock((v0 + 64));
    sub_247BC7FBC(v0 + 72);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock((v0 + 64));
  }
}

_xpc_connection_s *sub_247BC7FBC(uint64_t a1)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    mach_service = v3;
  }

  else
  {
    if (*(v1 + 200))
    {
      v11[0] = *(v1 + 40);
      v5 = CUEnvironmentValues.dispatchQueue.getter();
      v6 = sub_247BF64B0();
      mach_service = xpc_connection_create_mach_service((v6 + 32), v5, 1uLL);
    }

    else
    {
      v11[0] = *(v1 + 40);
      v7 = CUEnvironmentValues.dispatchQueue.getter();
      mach_service = xpc_connection_create(0, v7);
    }

    *(a1 + 104) = mach_service;
    v8 = swift_allocObject();
    swift_weakInit();
    v11[4] = sub_247BDEBF4;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_247BD2CD4;
    v11[3] = &block_descriptor_199;
    v9 = _Block_copy(v11);
    swift_unknownObjectRetain_n();

    xpc_connection_set_event_handler(mach_service, v9);
    _Block_release(v9);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return mach_service;
}

Swift::Void __swiftcall CUXPCActorSystem.actorEnded(actorID:)(Swift::String actorID)
{
  v2 = v1;
  object = actorID._object;
  countAndFlagsBits = actorID._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 64));
  sub_247BD9044(countAndFlagsBits, object, &v19);
  v5 = sub_247BD8F94(countAndFlagsBits, object);
  v7 = v6;
  if (v19)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&v19 + 1) == 1;
  }

  if (!v8)
  {
    LOBYTE(v17) = 0;
    sub_247BC85E8(&v17, countAndFlagsBits, object, v1 + 72);
  }

  if (*(v1 + 16) == 1 && (v9 = *(v1 + 96)) != 0)
  {
    sub_247BDE670(&v19, v18, &qword_27EE5DFD0, &qword_247BFBC38);
  }

  else
  {
    sub_247BDE670(&v19, v18, &qword_27EE5DFD0, &qword_247BFBC38);
    v9 = 0;
  }

  os_unfair_lock_unlock((v1 + 64));
  sub_247BDE670(v18, &v19, &qword_27EE5DFD0, &qword_247BFBC38);
  sub_247BC5B0C(&v19, &v17, &qword_27EE5DFD0, &qword_247BFBC38);
  v18[1] = v5;
  v18[2] = v7;
  swift_unknownObjectRetain();
  sub_247B9CAD0(&v17, &qword_27EE5DFD8, &qword_247BFBC40);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v11 = sub_247BF6090();
  v12 = sub_247BF69D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_247BBE628(countAndFlagsBits, object, &v17);
    *(v13 + 22) = 1024;
    *(v13 + 24) = v9 != 0;

    _os_log_impl(&dword_247B92000, v11, v12, "%s: actorEnded: local, id=%s, found=%{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);

    if (v9)
    {
LABEL_14:
      swift_beginAccess();
      sub_247BD7A2C(countAndFlagsBits, object);
      swift_endAccess();

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "control", "actorEnded");
      v16 = sub_247BF64B0();
      xpc_dictionary_set_string(empty, "actorID", (v16 + 32));

      xpc_connection_send_message(*(v9 + 104), empty);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_247B9CAD0(&v19, &qword_27EE5DFD0, &qword_247BFBC38);
      return;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_14;
    }
  }

  sub_247B9CAD0(&v19, &qword_27EE5DFD0, &qword_247BFBC38);
  swift_unknownObjectRelease();
}

uint64_t sub_247BC8530@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  result = sub_247BD6C98(a2);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB3BC();
      v10 = v11;
    }

    sub_247BDE670(*(v10 + 56) + 8 * v8, a1, &qword_27EE5E0A8, &qword_247BFC368);
    result = sub_247BDA960(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = (v7 & 1) == 0;
  return result;
}

void sub_247BC85E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = *(a4 + 64);
  v18 = *(v17 + 16);
  v43 = a2;
  if (v18 && (v19 = sub_247B9B134(a2, a3), (v20 & 1) != 0))
  {
    v21 = *(*(v17 + 56) + 8 * v19);
  }

  else
  {
    v21 = 0;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v22 = sub_247BF60B0();
  __swift_project_value_buffer(v22, qword_27EE609A8);
  swift_bridgeObjectRetain_n();

  v23 = sub_247BF6090();
  v24 = sub_247BF69D0();

  if (!os_log_type_enabled(v23, v24))
  {

    swift_bridgeObjectRelease_n();
    if (!v21)
    {
      return;
    }

    goto LABEL_22;
  }

  v41 = a3;
  v42 = v15;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v48 = v26;
  *v25 = 136315650;
  *(v25 + 4) = sub_247BBE628(v5[6], v5[7], &v48);
  *(v25 + 12) = 2080;
  v27 = 0x7075727265746E69;
  if (v16 != 1)
  {
    v27 = 0x6164696C61766E69;
  }

  if (v16)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0x646E45726F746361;
  }

  if (v16)
  {
    v29 = 0xEB00000000646574;
  }

  else
  {
    v29 = 0xEA00000000006465;
  }

  v30 = sub_247BBE628(v28, v29, &v48);

  *(v25 + 14) = v30;
  *(v25 + 22) = 2048;
  if (v21)
  {
    v31 = *(v21 + 16);
  }

  else
  {
    v31 = 0;
  }

  *(v25 + 24) = v31;

  _os_log_impl(&dword_247B92000, v23, v24, "%s: report: event=%s, monitors=%ld", v25, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C1B5910](v26, -1, -1);
  MEMORY[0x24C1B5910](v25, -1, -1);

  a3 = v41;
  v15 = v42;
  if (v21)
  {
LABEL_22:
    if (*(v21 + 16))
    {
      v48 = v5[5];
      v32 = CUEnvironmentValues.dispatchQueue.getter();
      v33 = sub_247BF67E0();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v15, 1, 1, v33);
      v35 = swift_allocObject();
      v36 = v43;
      *(v35 + 16) = v21;
      *(v35 + 24) = v36;
      *(v35 + 32) = a3;
      *(v35 + 40) = v16;
      sub_247BC5B0C(v15, v13, &qword_27EE5DD00, &qword_247BFA890);
      v37 = (*(v34 + 48))(v13, 1, v33);

      if (v37 == 1)
      {
        sub_247B9CAD0(v13, &qword_27EE5DD00, &qword_247BFA890);
      }

      else
      {
        sub_247BF67D0();
        (*(v34 + 8))(v13, v33);
      }

      v38 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68, MEMORY[0x277D85270]);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_247BFC478;
      *(v39 + 24) = v35;
      v44 = 6;
      v45 = 0;
      v46 = v32;
      v47 = v38;

      v40 = v32;
      swift_task_create();
      sub_247B9CAD0(v15, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
    }
  }
}

void CUXPCActorSystem.addPredefinedActor<A>(id:type:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v8 = sub_247BF60B0();
  __swift_project_value_buffer(v8, qword_27EE609A8);

  v9 = sub_247BF6090();
  v10 = sub_247BF69D0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_247BBE628(*(v4 + 48), *(v4 + 56), &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_247BBE628(a1, a2, &v17);
    *(v11 + 22) = 2080;
    v13 = sub_247BF75C0();
    v15 = sub_247BBE628(v13, v14, &v17);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_247B92000, v9, v10, "%s: addPredefinedActor: id=%s, type=%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v12, -1, -1);
    MEMORY[0x24C1B5910](v11, -1, -1);
  }

  os_unfair_lock_lock((v4 + 64));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + 152);
  sub_247BDB7F0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 152) = v17;

  os_unfair_lock_unlock((v4 + 64));
}

uint64_t sub_247BC8D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_247B9CAD0(a1, &qword_27EE5E0A0, &qword_247BFC360);
    v5 = sub_247BD6C98(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_247BDB3BC();
        v10 = v13;
      }

      sub_247BDE670(*(v10 + 56) + 8 * v8, &v15, &qword_27EE5E0A8, &qword_247BFC368);
      sub_247BDA960(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_247B9CAD0(&v15, &qword_27EE5E0A0, &qword_247BFC360);
  }

  else
  {
    sub_247BDE670(a1, &v15, &qword_27EE5E0A8, &qword_247BFC368);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_247BDBACC(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_247BC8E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_247BDB950(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_247B9B134(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_247BDB24C();
        v14 = v16;
      }

      result = sub_247BDA7B0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_247BC8F7C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1] == 1;
  }

  if (v6)
  {
    sub_247B9CAD0(a1, &qword_27EE5DFD0, &qword_247BFBC38);
    sub_247BD9044(a2, a3, &v10);

    return sub_247B9CAD0(&v10, &qword_27EE5DFD0, &qword_247BFBC38);
  }

  else
  {
    sub_247BDE7C8(a1, &v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_247BDBD74(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_247BC9054(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_247B9471C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_247BDBEB8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_247BF6E20();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_247B9CAD0(a1, &qword_27EE5DC90, &unk_247BFA880);
    sub_247BD90F8(a2, v9);
    v7 = sub_247BF6E20();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_247B9CAD0(v9, &qword_27EE5DC90, &unk_247BFA880);
  }

  return result;
}

void CUXPCActorSystem.removePredefinedActor<A>(type:)(uint64_t a1)
{
  v2 = v1;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v4 = sub_247BF60B0();
  __swift_project_value_buffer(v4, qword_27EE609A8);

  v5 = sub_247BF6090();
  v6 = sub_247BF69D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v17);
    *(v7 + 12) = 2080;
    v9 = sub_247BF75C0();
    v11 = sub_247BBE628(v9, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_247B92000, v5, v6, "%s: removePredefinedActor: type=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v8, -1, -1);
    MEMORY[0x24C1B5910](v7, -1, -1);
  }

  os_unfair_lock_lock((v2 + 64));
  v12 = sub_247BA04BC(a1);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 152);
    v17 = v16;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB0E4();
      v16 = v17;
    }

    sub_247BDA640(v14, v16);
    *(v2 + 152) = v16;
  }

  os_unfair_lock_unlock((v2 + 64));
}

Swift::Void __swiftcall CUXPCActorSystem.invalidate()()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = MEMORY[0x277D84F98];
  *(v0 + 88) = MEMORY[0x277D84F98];
  *(v0 + 144) = v1;
  *(v0 + 104) = 1;
  v2 = *(v0 + 176);
  if (v2)
  {
    xpc_connection_cancel(v2);
  }

  *(v0 + 168) = 0;
  swift_unknownObjectRelease();
  sub_247BC95EC(v0 + 72);
  v3 = *(v0 + 96);
  v4 = *(v0 + 160);

  os_unfair_lock_unlock((v0 + 64));

  if (v3)
  {

    sub_247BC9960(1);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_247BF6C00();
    type metadata accessor for CUXPCActorConnection();
    sub_247BDEA98(&unk_27EE5DFE0, v5, type metadata accessor for CUXPCActorConnection, &unk_247BFBF18);
    sub_247BF68E0();
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
  }

  if (v4 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_22:
      sub_247B9472C(v4);

      return;
    }

    while (1)
    {
      sub_247BC9960(1);

      v8 = v15;
      v9 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_247BF6C30())
      {
        type metadata accessor for CUXPCActorConnection();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_247BC95EC(uint64_t a1)
{
  v3 = sub_247BF6280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247BF62A0();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 1 && !*(*(a1 + 16) + 16) && !*(*(a1 + 72) + 16) && !*(a1 + 24))
  {
    v12 = *(a1 + 88);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = result;
      v14 = sub_247BF6C10();
      result = v13;
    }

    else
    {
      v14 = *(v12 + 16);
    }

    if (!v14 && !*(a1 + 104))
    {
      v15 = (a1 + 40);
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = *(a1 + 48);
        *v15 = 0;
        v15[1] = 0;
        aBlock[6] = *(v1 + 40);
        v24 = result;
        v23 = CUEnvironmentValues.dispatchQueue.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        *(v18 + 24) = v17;
        v22 = v17;
        aBlock[4] = sub_247BC6954;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_247BC9C8C;
        aBlock[3] = &block_descriptor_183;
        v19 = _Block_copy(aBlock);

        sub_247BF6290();
        v25 = MEMORY[0x277D84F90];
        sub_247BDEA98(&qword_27EE5E158, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E160, &qword_247BFC460);
        v21 = v16;
        sub_247BC34F4(&qword_27EE5E168, &qword_27EE5E160, &qword_247BFC460, MEMORY[0x277D83970]);
        sub_247BF6BD0();
        v20 = v23;
        MEMORY[0x24C1B4500](0, v11, v6, v19);
        _Block_release(v19);

        sub_247B94734(v21, v22);
        (*(v4 + 8))(v6, v3);
        (*(v8 + 8))(v11, v24);
      }
    }
  }

  return result;
}

uint64_t sub_247BC9960(char a1)
{
  v2 = v1;
  if (*(v1 + 32) == 1)
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v4 = sub_247BF60B0();
    __swift_project_value_buffer(v4, qword_27EE609A8);

    v5 = sub_247BF6090();
    v6 = sub_247BF69D0();

    if (!os_log_type_enabled(v5, v6))
    {
LABEL_11:

      if ((a1 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), v19);
    _os_log_impl(&dword_247B92000, v5, v6, "%s: xpc connection ended: outgoing", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C1B5910](v8, -1, -1);
    v9 = v7;
LABEL_10:
    MEMORY[0x24C1B5910](v9, -1, -1);
    goto LABEL_11;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v5 = sub_247BF6090();
  v11 = sub_247BF69D0();
  if (os_log_type_enabled(v5, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), v19);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_247BBE628(*(v2 + 16), *(v2 + 24), v19);
    *(v12 + 22) = 1024;
    *(v12 + 24) = *(v2 + 88);

    _os_log_impl(&dword_247B92000, v5, v11, "%s: xpc connection ended: incoming %s:%d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v13, -1, -1);
    v9 = v12;
    goto LABEL_10;
  }

  if (a1)
  {
LABEL_12:
    xpc_connection_cancel(*(v2 + 104));
  }

LABEL_13:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = *(v2 + 80);

    os_unfair_lock_lock(v15 + 16);
    sub_247BCA230(&v15[18], v16, v18);

    os_unfair_lock_unlock(v15 + 16);
  }

  swift_beginAccess();
  *(v2 + 80) = MEMORY[0x277D84FA0];
}

uint64_t sub_247BC9C8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *CUXPCActorSystem.monitor(actorID:eventHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock((v4 + 64));
  if (*(*(v4 + 136) + 16) && (sub_247B9B134(a1, a2), (v10 & 1) != 0))
  {
  }

  else
  {
    v11 = sub_247BDD4C4(MEMORY[0x277D84F90]);
  }

  v25 = v11;
  v12 = *(v4 + 128);
  v13 = v12 + 1;
  if (v12 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 128) = v13;
    if (qword_27EE609A0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v14 = sub_247BF60B0();
  __swift_project_value_buffer(v14, qword_27EE609A8);

  v15 = sub_247BF6090();
  v16 = sub_247BF69D0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_247BBE628(*(v5 + 48), *(v5 + 56), &v23);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_247BBE628(a1, a2, &v23);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v13;
    _os_log_impl(&dword_247B92000, v15, v16, "%s: monitor start: actorID=%s, monitorID=%llu", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v18, -1, -1);
    MEMORY[0x24C1B5910](v17, -1, -1);
  }

  type metadata accessor for CUXPCActorSystem.ActorMonitor();
  v19 = swift_allocObject();
  swift_weakInit();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v13;
  v19[5] = a3;
  v19[6] = a4;
  swift_weakAssign();
  swift_weakInit();
  v24 = 0;

  sub_247BC8D54(&v23, v13);
  v20 = v25;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 136);
  sub_247BDB950(v20, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 136) = v23;
  os_unfair_lock_unlock((v5 + 64));
  return v19;
}

void sub_247BC9F88(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  os_unfair_lock_lock((v1 + 64));
  v6 = *(v1 + 136);
  if (!*(v6 + 16) || (v7 = sub_247B9B134(v4, v3), (v8 & 1) == 0))
  {
    v19 = 0;
    goto LABEL_7;
  }

  v19 = *(*(v6 + 56) + 8 * v7);

  if (!v19)
  {
LABEL_7:
    v17 = 0;
    v18 = 1;
LABEL_8:
    sub_247B9CAD0(&v17, &qword_27EE5E0A0, &qword_247BFC360);
    v9 = 0;
    goto LABEL_9;
  }

  sub_247BC8530(&v17, v5);
  if (v18 == 1)
  {
    goto LABEL_8;
  }

  sub_247B9CAD0(&v17, &qword_27EE5E0A0, &qword_247BFC360);
  v16 = v19;

  sub_247BC8E84(v16, v4, v3);
  v9 = 1;
LABEL_9:

  os_unfair_lock_unlock((v2 + 64));
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v11 = sub_247BF6090();
  v12 = sub_247BF69D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315906;
    *(v13 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v17);
    *(v13 + 12) = 2080;
    v15 = sub_247BBE628(v4, v3, &v17);

    *(v13 + 14) = v15;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v5;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v9;
    _os_log_impl(&dword_247B92000, v11, v12, "%s: monitor stop: actorID=%s, monitorID=%llu, found=%{BOOL}d", v13, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_247BCA230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (*(a2 + 48) + ((v11 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_247B9B134(v15, v16);
      v19 = v18;

      if (v19)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + 72);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDADD8();
    }

    v25 = *(*(v22 + 56) + 16 * v17);
    sub_247BDA2C0(v17, v22);
    *(a1 + 72) = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BD67C4(0, v12[2] + 1, 1, v12);
      v12 = result;
    }

    v24 = v12[2];
    v23 = v12[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_247BD67C4((v23 > 1), v24 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v24 + 1;
    *&v12[2 * v24 + 4] = v25;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v9)
    {

      *a3 = v12;
      return result;
    }

    v8 = *(v5 + 8 * v20);
    ++v11;
    if (v8)
    {
      v11 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BCA41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 34) = a5;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  *(v5 + 80) = a2;
  return MEMORY[0x2822009F8](sub_247BCA444, 0, 0);
}

uint64_t sub_247BCA444()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 35) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = *(v0 + 80);
LABEL_14:
      v13 = __clz(__rbit64(v5));
      v14 = (v5 - 1) & v5;
      v15 = (v7 << 9) | (8 * v13);
      v16 = *(*(v8 + 48) + v15);
      sub_247BC5B0C(*(v8 + 56) + v15, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
      *(v0 + 40) = v16;
      sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
      *(v0 + 56) = 0;
      v11 = v7;
LABEL_15:
      *(v0 + 104) = v14;
      *(v0 + 112) = v11;
      sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
      if (*(v0 + 32) == 1)
      {
        break;
      }

      sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v19 = *(v0 + 34);
        v20 = *(Strong + 40);
        *(v0 + 120) = *(Strong + 48);

        *(v0 + 33) = v19;
        v24 = (v20 + *v20);
        v21 = swift_task_alloc();
        *(v0 + 128) = v21;
        *v21 = v0;
        v21[1] = sub_247BCA734;
        v23 = *(v0 + 88);
        v22 = *(v0 + 96);

        return v24(v23, v22, v0 + 33);
      }

      result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      v5 = *(v0 + 104);
      v7 = *(v0 + 112);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
LABEL_6:
    v9 = ((1 << *(v0 + 35)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 35)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v14 = 0;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 56) = 1;
        goto LABEL_15;
      }

      v8 = *(v0 + 80);
      v5 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v5)
      {
        v7 = v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BCA734()
{

  return MEMORY[0x2822009F8](sub_247BCA84C, 0, 0);
}

uint64_t sub_247BCA84C()
{
  while (1)
  {
    result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    if (!v2)
    {
      break;
    }

    v4 = *(v0 + 80);
LABEL_11:
    v9 = (v2 - 1) & v2;
    v10 = (v3 << 9) | (8 * __clz(__rbit64(v2)));
    v11 = *(*(v4 + 48) + v10);
    sub_247BC5B0C(*(v4 + 56) + v10, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
    *(v0 + 40) = v11;
    sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
    *(v0 + 56) = 0;
    v7 = v3;
LABEL_12:
    *(v0 + 104) = v9;
    *(v0 + 112) = v7;
    sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
    if (*(v0 + 32) == 1)
    {

      v13 = *(v0 + 8);

      return v13();
    }

    sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(v0 + 34);
      v15 = *(Strong + 40);
      *(v0 + 120) = *(Strong + 48);

      *(v0 + 33) = v14;
      v19 = (v15 + *v15);
      v16 = swift_task_alloc();
      *(v0 + 128) = v16;
      *v16 = v0;
      v16[1] = sub_247BCA734;
      v18 = *(v0 + 88);
      v17 = *(v0 + 96);

      return v19(v18, v17, v0 + 33);
    }
  }

  v5 = ((1 << *(v0 + 35)) + 63) >> 6;
  if (v5 <= (v3 + 1))
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 35)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v9 = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      goto LABEL_12;
    }

    v4 = *(v0 + 80);
    v2 = *(v4 + 8 * v8 + 64);
    ++v3;
    if (v2)
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BCAB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_247BCAB2C, 0, 0);
}

uint64_t sub_247BCAB2C()
{
  v48 = v0;
  v1 = v0[21];
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v3 = sub_247B9B134(v0[18], v0[19]);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 32);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      Strong = swift_weakLoadStrong();
      sub_247BDE6D8((v0 + 16));
      if (!Strong || (v9 = v0[20], , Strong != v9))
      {
        type metadata accessor for CUError();
        CUError.__allocating_init(_:_:_:)(-71144, 0xD000000000000010, 0x8000000247C01850, 0);
        swift_willThrow();
        swift_unknownObjectRelease();
        os_unfair_lock_unlock((v1 + 64));
        v10 = v0[1];

        return v10();
      }

      v15 = (*(v5 + 24))(ObjectType, v5);
      swift_unknownObjectRelease();
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      os_unfair_lock_unlock((v1 + 64));
      if (!v15)
      {
        AssociatedConformanceWitness = 0;
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v12 = *(v0[21] + 88);
  if (*(v12 + 16))
  {
    v13 = sub_247B9B134(v0[18], v0[19]);
    if (v14)
    {
      sub_247BDE790(*(v12 + 56) + 16 * v13, (v0 + 12));
      sub_247BDE7C8((v0 + 12), (v0 + 10));
      v15 = swift_unknownObjectWeakLoadStrong();
      AssociatedConformanceWitness = v0[11];
      sub_247BDD620((v0 + 10));
      if (v15)
      {
        os_unfair_lock_unlock((v1 + 64));
LABEL_27:
        sub_247B94734(0, 0);
        goto LABEL_28;
      }
    }
  }

  AssociatedConformanceWitness = *(v1 + 72);
  v17 = *(v0[21] + 80);
  if (AssociatedConformanceWitness)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = AssociatedConformanceWitness;
    *(v18 + 24) = v17;
    v19 = &unk_247BFC400;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  sub_247B94744(AssociatedConformanceWitness, v17);
  os_unfair_lock_unlock((v1 + 64));
  if (!AssociatedConformanceWitness)
  {
    v15 = 0;
LABEL_28:
    v45 = v0[1];

    return v45(v15, AssociatedConformanceWitness);
  }

  v21 = v0[18];
  v20 = v0[19];
  v22 = swift_allocObject();
  v0[22] = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v18;
  v0[14] = 47;
  v0[15] = 0xE100000000000000;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 14;
  sub_247B94744(&unk_247BFC3E0, v22);

  v25 = sub_247BD6404(1, 1, sub_247BDE708, v23, v21, v20, v24);

  if (!v25[2])
  {
    sub_247B94734(&unk_247BFC3E0, v22);
    sub_247B94734(&unk_247BFC3E0, v22);

    v15 = 0;
    AssociatedConformanceWitness = 0;
    goto LABEL_28;
  }

  v26 = v25[4];
  v27 = v25[5];
  v28 = v25[6];
  v29 = v25[7];

  v30 = MEMORY[0x24C1B3F90](v26, v27, v28, v29);
  v32 = v31;

  v0[23] = v30;
  v0[24] = v32;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v33 = sub_247BF60B0();
  v0[25] = __swift_project_value_buffer(v33, qword_27EE609A8);

  v34 = sub_247BF6090();
  v35 = sub_247BF6A00();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[21];
    v46 = v0[19];
    v37 = v30;
    v38 = v0[18];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_247BBE628(*(v36 + 48), *(v36 + 56), v47);
    *(v39 + 12) = 2080;
    v41 = v38;
    v30 = v37;
    *(v39 + 14) = sub_247BBE628(v41, v46, v47);
    _os_log_impl(&dword_247B92000, v34, v35, "%s: create actor: id=%s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v40, -1, -1);
    MEMORY[0x24C1B5910](v39, -1, -1);
  }

  v42 = v0[19];
  v43 = v0[18];
  swift_weakInit();
  sub_247BDD8F0((v0 + 17), (v0 + 4));
  v0[2] = v43;
  v0[3] = v42;
  v0[5] = v30;
  v0[6] = v32;

  v44 = swift_task_alloc();
  v0[26] = v44;
  *v44 = v0;
  v44[1] = sub_247BCB1C8;

  return sub_247BC634C((v0 + 2));
}

uint64_t sub_247BCB1C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v5 = sub_247BCB798;
  }

  else
  {
    v5 = sub_247BCB2E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_247BCB2E0()
{
  v34 = v0;
  v1 = v0[21];
  os_unfair_lock_lock((v1 + 64));
  if (*(*(v1 + 144) + 16) && (sub_247B9B134(v0[18], v0[19]), (v2 & 1) != 0))
  {
    v3 = v0[21];
    type metadata accessor for CUError();
    v4 = CUError.__allocating_init(_:_:_:)(-6730, 0xD000000000000016, 0x8000000247C01830, 0);
    swift_willThrow();
    os_unfair_lock_unlock(v3 + 16);
    swift_unknownObjectRelease();
    sub_247BDE760((v0 + 2));
    sub_247BDE6D8((v0 + 17));

    v5 = v4;
    v6 = sub_247BF6090();
    v7 = sub_247BF69F0();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[24];
    if (v8)
    {
      v10 = v0[21];
      v11 = v0[18];
      v31 = v0[19];
      v32 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v12 = 136315906;
      *(v12 + 4) = sub_247BBE628(*(v10 + 48), *(v10 + 56), &v33);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_247BBE628(v11, v31, &v33);
      *(v12 + 22) = 2080;
      v15 = sub_247BBE628(v32, v9, &v33);

      *(v12 + 24) = v15;
      *(v12 + 32) = 2112;
      v16 = v4;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 34) = v17;
      *v13 = v17;
      _os_log_impl(&dword_247B92000, v6, v7, "%s: ### create actor failed: id=%s, type=%s, error=%@", v12, 0x2Au);
      sub_247B9CAD0(v13, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v14, -1, -1);
      MEMORY[0x24C1B5910](v12, -1, -1);
    }

    else
    {
    }

    v29 = v0[22];
    swift_willThrow();
    sub_247B94734(&unk_247BFC3E0, v29);
    sub_247B94734(&unk_247BFC3E0, v29);
    v30 = v0[1];

    return v30();
  }

  else
  {
    v19 = v0[27];
    v18 = v0[28];
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[19];
    v23 = v0[18];
    sub_247B94734(&unk_247BFC3E0, v20);

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v21 + 144);
    *(v21 + 144) = 0x8000000000000000;
    sub_247BDBBEC(v19, v18, v23, v22, isUniquelyReferenced_nonNull_native);

    *(v21 + 144) = v33;
    swift_beginAccess();

    sub_247BDC240(&v33, v23, v22);
    swift_endAccess();

    os_unfair_lock_unlock((v21 + 64));
    swift_getObjectType();
    v25 = (*(v18 + 24))();
    sub_247B94734(&unk_247BFC3E0, v20);
    swift_unknownObjectRelease();
    sub_247BDE760((v0 + 2));
    sub_247BDE6D8((v0 + 17));
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v0[1];

    return v27(v25, AssociatedConformanceWitness);
  }
}

uint64_t sub_247BCB798()
{
  v21 = v0;
  v1 = v0[29];
  sub_247BDE760((v0 + 2));
  sub_247BDE6D8((v0 + 17));

  v2 = v1;
  v3 = sub_247BF6090();
  v4 = sub_247BF69F0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = v0[21];
    v8 = v0[18];
    v18 = v0[19];
    v19 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_247BBE628(*(v7 + 48), *(v7 + 56), v20);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_247BBE628(v8, v18, v20);
    *(v9 + 22) = 2080;
    v12 = sub_247BBE628(v19, v6, v20);

    *(v9 + 24) = v12;
    *(v9 + 32) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v14;
    *v10 = v14;
    _os_log_impl(&dword_247B92000, v3, v4, "%s: ### create actor failed: id=%s, type=%s, error=%@", v9, 0x2Au);
    sub_247B9CAD0(v10, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[22];
  swift_willThrow();
  sub_247B94734(&unk_247BFC3E0, v15);
  sub_247B94734(&unk_247BFC3E0, v15);
  v16 = v0[1];

  return v16();
}

uint64_t CUXPCActorSystem.assignID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_247BF5F30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v2 + 64));
  v9 = *(v2 + 152);
  if (*(v9 + 16) && (v10 = sub_247BA04BC(a1), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    os_unfair_lock_unlock((v3 + 64));
    if (v14)
    {
      v15 = v14;
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock((v3 + 64));
  }

  sub_247BF5F20();
  v13 = sub_247BF5ED0();
  v15 = v16;
  (*(v6 + 8))(v8, v5);

LABEL_7:
  v17 = qword_27EE609A0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_247BF60B0();
  __swift_project_value_buffer(v18, qword_27EE609A8);

  v19 = sub_247BF6090();
  v20 = sub_247BF69D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_247BBE628(*(v3 + 48), *(v3 + 56), &v29);
    *(v21 + 12) = 2080;
    v23 = sub_247BBE628(v13, v15, &v29);

    *(v21 + 14) = v23;
    *(v21 + 22) = 2080;
    v28 = a1;
    swift_getMetatypeMetadata();
    v24 = sub_247BF6490();
    v26 = sub_247BBE628(v24, v25, &v29);

    *(v21 + 24) = v26;
    _os_log_impl(&dword_247B92000, v19, v20, "%s: assignID: id=%s, type=%s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v22, -1, -1);
    MEMORY[0x24C1B5910](v21, -1, -1);
  }

  else
  {
  }

  return v13;
}

Swift::Void __swiftcall CUXPCActorSystem.resignID(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 16);
  sub_247BD9044(countAndFlagsBits, object, &v12);
  os_unfair_lock_unlock(v1 + 16);
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == 1;
  }

  if (v5)
  {
    sub_247B9CAD0(&v12, &qword_27EE5DFD0, &qword_247BFBC38);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_247BDD620(&v12);
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = sub_247BF60B0();
  __swift_project_value_buffer(v7, qword_27EE609A8);
  swift_unknownObjectRetain();

  v8 = sub_247BF6090();
  v9 = sub_247BF69D0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v12 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_247BBE628(*&v2[12]._os_unfair_lock_opaque, *&v2[14]._os_unfair_lock_opaque, &v12);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_247BBE628(countAndFlagsBits, object, &v12);
    *(v10 + 22) = 1024;
    *(v10 + 24) = Strong != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_247B92000, v8, v9, "%s: resignID: id=%s, found=%{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }
}

void CUXPCActorSystem.resolve<A>(id:as:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  os_unfair_lock_lock((v4 + 64));
  v10 = *(v4 + 88);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_247B9B134(a1, a2);
    if (v13)
    {
      sub_247BDE790(*(v10 + 56) + 16 * v12, &v29);
      LOBYTE(v11) = v29 != 0;
      v28 = a1;
      if (*(&v29 + 1) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    LOBYTE(v11) = 0;
  }

  v29 = xmmword_247BFBBF0;
  v28 = a1;
LABEL_8:
  if ((v11 & 1) == 0)
  {
    sub_247B9CAD0(&v29, &qword_27EE5DFD0, &qword_247BFBC38);
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(&v29 + 1);
  sub_247B9CAD0(&v29, &qword_27EE5DFD0, &qword_247BFBC38);
  if (!Strong)
  {
    goto LABEL_12;
  }

  *&v29 = Strong;
  *(&v29 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E130, &qword_247BFC438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v5)
  {
    sub_247BF6AC0();
    os_unfair_lock_unlock((v6 + 64));
    __break(1u);
  }

  else
  {
    sub_247BF6AC0();
    os_unfair_lock_unlock((v6 + 64));
    v16 = v30;
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v17 = sub_247BF60B0();
    __swift_project_value_buffer(v17, qword_27EE609A8);
    swift_unknownObjectRetain();

    v18 = sub_247BF6090();
    v19 = sub_247BF69D0();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v29 = v21;
      *v20 = 136315906;
      *(v20 + 4) = sub_247BBE628(*(v6 + 48), *(v6 + 56), &v29);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_247BBE628(v28, a2, &v29);
      *(v20 + 22) = 2080;
      v30 = a3;
      swift_getMetatypeMetadata();
      v22 = sub_247BF6490();
      v24 = sub_247BBE628(v22, v23, &v29);

      *(v20 + 24) = v24;
      *(v20 + 32) = 2080;
      v30 = v16;
      swift_unknownObjectRetain();
      v25 = sub_247BF6490();
      v27 = sub_247BBE628(v25, v26, &v29);

      *(v20 + 34) = v27;
      _os_log_impl(&dword_247B92000, v18, v19, "%s: resolve: id=%s, type=%s, actor=%s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v21, -1, -1);
      MEMORY[0x24C1B5910](v20, -1, -1);
    }
  }
}

uint64_t CUXPCActorSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = sub_247BF60B0();
  __swift_project_value_buffer(v7, qword_27EE609A8);
  swift_unknownObjectRetain();

  v8 = sub_247BF6090();
  v9 = sub_247BF69D0();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_247BBE628(*(v3 + 48), *(v3 + 56), v24);
    *(v10 + 12) = 2080;
    *&v23 = a1;
    sub_247BF6D10();
    v12 = sub_247BBE628(ObjectType, v26, v24);

    *(v10 + 14) = v12;
    *(v10 + 22) = 2080;
    ObjectType = swift_getObjectType();
    swift_getMetatypeMetadata();
    v13 = sub_247BF6490();
    v15 = sub_247BBE628(v13, v14, v24);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_247B92000, v8, v9, "%s: actorReady: id=%s, type=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);
  }

  os_unfair_lock_lock((v3 + 64));
  v24[0] = a1;
  sub_247BF6D10();
  v16 = *(v3 + 88);
  if (!*(v16 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_247B9B134(ObjectType, v26);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:
    v23 = xmmword_247BFBBF0;
    goto LABEL_10;
  }

  sub_247BDE790(*(v16 + 56) + 16 * v17, &v23);
LABEL_10:
  v24[0] = a1;
  sub_247BF6D10();
  v20 = ObjectType;
  v21 = v26;
  v24[1] = a3;
  swift_unknownObjectWeakInit();
  sub_247BC8F7C(v24, v20, v21);
  os_unfair_lock_unlock(v4 + 16);
  return sub_247B9CAD0(&v23, &qword_27EE5DFD0, &qword_247BFBC38);
}

uint64_t CUXPCActorSystem.makeInvocationEncoder()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_247BF6E20();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_247BF5D40();
  swift_allocObject();
  v7 = sub_247BF5D30();
  sub_247BF6E10();
  v12[3] = v3;
  v12[0] = v1;

  v8 = sub_247BF5D20();
  sub_247BC9054(v12, v6);
  result = v8(v11, 0);
  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v7;
  a1[2] = v10;
  return result;
}

uint64_t CUXPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = v14;
  v8[15] = v7;
  v8[12] = a7;
  v8[13] = v13;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v8[16] = swift_conformsToProtocol();
  v8[17] = swift_conformsToProtocol();
  v9 = sub_247BF5FE0();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v10 = sub_247BF5F30();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCC824, 0, 0);
}

uint64_t sub_247BCC824(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  sub_247BF5F20();
  v5 = sub_247BF5ED0();
  v7 = v6;
  v42 = v5;
  v1[25] = v5;
  v1[26] = v6;
  (*(v3 + 8))(v2, v4);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v8 = v1[21];
  v10 = v1[18];
  v9 = v1[19];
  v11 = v1[10];
  v12 = sub_247BF60B0();
  v1[27] = __swift_project_value_buffer(v12, qword_27EE609A8);
  v13 = *(v9 + 16);
  v1[28] = v13;
  v1[29] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v11, v10);

  swift_unknownObjectRetain();

  v14 = sub_247BF6090();
  v15 = sub_247BF69E0();

  swift_unknownObjectRelease();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v1[21];
  v19 = v1[18];
  v18 = v1[19];
  if (v16)
  {
    v41 = v15;
    v20 = v1[15];
    v21 = v1[9];
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v22 = 136315906;
    *(v22 + 4) = sub_247BBE628(*(v20 + 48), *(v20 + 56), &v44);
    *(v22 + 12) = 2080;
    v1[7] = v21;
    sub_247BF6D10();
    v23 = sub_247BBE628(v1[4], v1[5], &v44);

    *(v22 + 14) = v23;
    *(v22 + 22) = 2080;
    v24 = sub_247BF5FD0();
    v26 = v25;
    v27 = *(v18 + 8);
    v27(v17, v19);
    v28 = sub_247BBE628(v24, v26, &v44);

    *(v22 + 24) = v28;
    *(v22 + 32) = 2080;
    v29 = v42;
    *(v22 + 34) = sub_247BBE628(v42, v7, &v44);
    _os_log_impl(&dword_247B92000, v14, v41, "%s: remoteCall outgoing start: recipientID=%s, targetID=%s, callID=%s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v40, -1, -1);
    MEMORY[0x24C1B5910](v22, -1, -1);
  }

  else
  {

    v27 = *(v18 + 8);
    v27(v17, v19);
    v29 = v42;
  }

  v1[30] = v27;
  v30 = v1[11];
  v31 = *v30;
  v32 = v30[2];
  v33 = sub_247BF5FD0();
  v35 = v34;
  v1[31] = v34;
  v36 = swift_task_alloc();
  v1[32] = v36;
  *v36 = v1;
  v36[1] = sub_247BCCBD0;
  v37 = v1[8];
  v38 = v1[9];

  return sub_247BCD1FC(v37, v31, v29, v7, v32, v38, v33, v35);
}

uint64_t sub_247BCCBD0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_247BCCEA8;
  }

  else
  {

    v2 = sub_247BCCCEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BCCCEC()
{
  v13 = v0;

  v1 = sub_247BF6090();
  v2 = sub_247BF69E0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[26];
  if (v3)
  {
    v5 = v0[25];
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247BBE628(*(v6 + 48), *(v6 + 56), &v12);
    *(v7 + 12) = 2080;
    v9 = sub_247BBE628(v5, v4, &v12);

    *(v7 + 14) = v9;
    _os_log_impl(&dword_247B92000, v1, v2, "%s: remoteCall outgoing success: callID=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v8, -1, -1);
    MEMORY[0x24C1B5910](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_247BCCEA8()
{
  v35 = v0;
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[10];

  v2(v3, v5, v4);

  swift_unknownObjectRetain();

  v6 = v1;
  v7 = sub_247BF6090();
  v8 = sub_247BF69E0();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[26];
    v32 = v0[33];
    v29 = v0[30];
    v30 = v0[25];
    v9 = v0[20];
    v28 = v0[18];
    v10 = v0[15];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v12 = 136316162;
    v14 = sub_247BBE628(*(v10 + 48), *(v10 + 56), v34);
    v0[6] = v11;
    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    sub_247BF6D10();
    v15 = sub_247BBE628(v0[2], v0[3], v34);

    *(v12 + 14) = v15;
    *(v12 + 22) = 2080;
    v16 = sub_247BF5FD0();
    v18 = v17;
    v29(v9, v28);
    v19 = sub_247BBE628(v16, v18, v34);

    *(v12 + 24) = v19;
    *(v12 + 32) = 2080;
    v20 = sub_247BBE628(v30, v31, v34);

    *(v12 + 34) = v20;
    *(v12 + 42) = 2112;
    v21 = v32;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 44) = v22;
    *v13 = v22;
    _os_log_impl(&dword_247B92000, v7, v8, "%s: remoteCall outgoing failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v12, 0x34u);
    sub_247B9CAD0(v13, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v33, -1, -1);
    MEMORY[0x24C1B5910](v12, -1, -1);
  }

  else
  {
    v23 = v0[30];
    v24 = v0[20];
    v25 = v0[18];

    v23(v24, v25);
  }

  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_247BCD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v13;
  *(v9 + 152) = v8;
  *(v9 + 136) = v12;
  *(v9 + 120) = v11;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  return MEMORY[0x2822009F8](sub_247BCD240, 0, 0);
}

uint64_t sub_247BCD240()
{
  v0[5] = v0[12];
  v1 = v0[8];
  sub_247BF6D10();
  empty = xpc_dictionary_create_empty();
  v0[20] = empty;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v5 = xpc_array_create_empty();
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_247BC2A70(v7, *v6);
      v9 = Data.xpcObjectRepresentation.getter(v7, v8);
      xpc_array_append_value(v5, v9);
      swift_unknownObjectRelease();
      sub_247BC2AC4(v7, v8);
      v6 += 2;
      --v3;
    }

    while (v3);
    xpc_dictionary_set_value(empty, "arguments", v5);
    swift_unknownObjectRelease();
  }

  v10 = v0[11];
  v11 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "callID", (v11 + 32));

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v0[11];
    v14 = xpc_array_create_empty();
    v15 = v13 + 40;
    do
    {

      v16 = sub_247BF60F0();
      v17 = sub_247BF64B0();

      xpc_array_set_string(v14, v16, (v17 + 32));

      v15 += 16;
      --v12;
    }

    while (v12);
    xpc_dictionary_set_value(empty, "genericSubstitutions", v14);
    swift_unknownObjectRelease();
  }

  v18 = v0[19];
  v19 = sub_247BF64B0();

  xpc_dictionary_set_string(empty, "recipientID", (v19 + 32));

  v20 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "targetID", (v20 + 32));

  v21 = swift_task_alloc();
  v0[21] = v21;
  *(v21 + 16) = v18;
  *(v21 + 24) = empty;
  v22 = swift_task_alloc();
  v0[22] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E100, &qword_247BFC410);
  *v22 = v0;
  v22[1] = sub_247BCD528;

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000055, 0x8000000247C01870, sub_247BDE840, v21, v23);
}

uint64_t sub_247BCD528()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_247BCD7F0;
  }

  else
  {

    v2 = sub_247BCD644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BCD644()
{
  v0[4] = 0;
  v1 = v0[6];
  data = xpc_dictionary_get_data(v1, "result", v0 + 4);
  if (data)
  {
    v3 = data;
    sub_247BF5CC0();
    swift_allocObject();
    sub_247BF5CB0();
    v4 = sub_247BC3110(v3, v0[4]);
    v6 = v5;
    sub_247BF5C90();
    sub_247BC2AC4(v4, v6);
  }

  else
  {
    v7 = v0[23];
    sub_247BDD650(v1);
    if (!v7)
    {
      type metadata accessor for CUError();
      CUError.__allocating_init(_:_:_:)(-6712, 0xD000000000000016, 0x8000000247C018F0, 0);
      swift_willThrow();
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_247BCD7F0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CUXPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = sub_247BF5FE0();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v10 = sub_247BF5F30();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCD98C, 0, 0);
}

uint64_t sub_247BCD98C(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_247BF5F20();
  v5 = sub_247BF5ED0();
  v7 = v6;
  v42 = v5;
  v1[21] = v5;
  v1[22] = v6;
  (*(v3 + 8))(v2, v4);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v8 = v1[17];
  v10 = v1[14];
  v9 = v1[15];
  v11 = v1[9];
  v12 = sub_247BF60B0();
  v1[23] = __swift_project_value_buffer(v12, qword_27EE609A8);
  v13 = *(v9 + 16);
  v1[24] = v13;
  v1[25] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v11, v10);

  swift_unknownObjectRetain();

  v14 = sub_247BF6090();
  v15 = sub_247BF69E0();

  swift_unknownObjectRelease();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v1[17];
  v19 = v1[14];
  v18 = v1[15];
  if (v16)
  {
    v41 = v15;
    v20 = v1[13];
    v21 = v1[8];
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v22 = 136315906;
    *(v22 + 4) = sub_247BBE628(*(v20 + 48), *(v20 + 56), &v44);
    *(v22 + 12) = 2080;
    v1[7] = v21;
    sub_247BF6D10();
    v23 = sub_247BBE628(v1[4], v1[5], &v44);

    *(v22 + 14) = v23;
    *(v22 + 22) = 2080;
    v24 = sub_247BF5FD0();
    v26 = v25;
    v27 = *(v18 + 8);
    v27(v17, v19);
    v28 = sub_247BBE628(v24, v26, &v44);

    *(v22 + 24) = v28;
    *(v22 + 32) = 2080;
    v29 = v42;
    *(v22 + 34) = sub_247BBE628(v42, v7, &v44);
    _os_log_impl(&dword_247B92000, v14, v41, "%s: remoteCall outgoing start: recipientID=%s, targetID=%s, callID=%s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v40, -1, -1);
    MEMORY[0x24C1B5910](v22, -1, -1);
  }

  else
  {

    v27 = *(v18 + 8);
    v27(v17, v19);
    v29 = v42;
  }

  v1[26] = v27;
  v30 = v1[10];
  v31 = *v30;
  v32 = v30[2];
  v33 = sub_247BF5FD0();
  v35 = v34;
  v1[27] = v34;
  v36 = swift_task_alloc();
  v1[28] = v36;
  *v36 = v1;
  v36[1] = sub_247BCDD2C;
  v37 = v1[11];
  v38 = v1[8];

  return sub_247BCE350(v31, v29, v7, v32, v38, v33, v35, v37);
}

uint64_t sub_247BCDD2C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_247BCE004;
  }

  else
  {

    v2 = sub_247BCDE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BCDE48()
{
  v13 = v0;

  v1 = sub_247BF6090();
  v2 = sub_247BF69E0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[22];
  if (v3)
  {
    v5 = v0[21];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247BBE628(*(v6 + 48), *(v6 + 56), &v12);
    *(v7 + 12) = 2080;
    v9 = sub_247BBE628(v5, v4, &v12);

    *(v7 + 14) = v9;
    _os_log_impl(&dword_247B92000, v1, v2, "%s: remoteCall outgoing success: callID=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v8, -1, -1);
    MEMORY[0x24C1B5910](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_247BCE004()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[9];

  v2(v3, v5, v4);

  swift_unknownObjectRetain();

  v6 = v1;
  v7 = sub_247BF6090();
  v8 = sub_247BF69E0();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[22];
    v32 = v0[29];
    v29 = v0[26];
    v30 = v0[21];
    v9 = v0[16];
    v10 = v0[13];
    v28 = v0[14];
    v11 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v12 = 136316162;
    v14 = sub_247BBE628(*(v10 + 48), *(v10 + 56), v34);
    v0[6] = v11;
    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    sub_247BF6D10();
    v15 = sub_247BBE628(v0[2], v0[3], v34);

    *(v12 + 14) = v15;
    *(v12 + 22) = 2080;
    v16 = sub_247BF5FD0();
    v18 = v17;
    v29(v9, v28);
    v19 = sub_247BBE628(v16, v18, v34);

    *(v12 + 24) = v19;
    *(v12 + 32) = 2080;
    v20 = sub_247BBE628(v30, v31, v34);

    *(v12 + 34) = v20;
    *(v12 + 42) = 2112;
    v21 = v32;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 44) = v22;
    *v13 = v22;
    _os_log_impl(&dword_247B92000, v7, v8, "%s: remoteCall outgoing failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v12, 0x34u);
    sub_247B9CAD0(v13, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v33, -1, -1);
    MEMORY[0x24C1B5910](v12, -1, -1);
  }

  else
  {
    v23 = v0[26];
    v24 = v0[16];
    v25 = v0[14];

    v23(v24, v25);
  }

  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_247BCE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v11;
  v9[15] = v8;
  v9[12] = a7;
  v9[13] = a8;
  v9[10] = a5;
  v9[11] = a6;
  v9[8] = a3;
  v9[9] = a4;
  v9[6] = a1;
  v9[7] = a2;
  return MEMORY[0x2822009F8](sub_247BCE388, 0, 0);
}

uint64_t sub_247BCE388()
{
  v0[4] = v0[10];
  v1 = v0[6];
  sub_247BF6D10();
  empty = xpc_dictionary_create_empty();
  v0[16] = empty;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[6];
    v5 = xpc_array_create_empty();
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_247BC2A70(v7, *v6);
      v9 = Data.xpcObjectRepresentation.getter(v7, v8);
      xpc_array_append_value(v5, v9);
      swift_unknownObjectRelease();
      sub_247BC2AC4(v7, v8);
      v6 += 2;
      --v3;
    }

    while (v3);
    xpc_dictionary_set_value(empty, "arguments", v5);
    swift_unknownObjectRelease();
  }

  v10 = v0[9];
  v11 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "callID", (v11 + 32));

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v0[9];
    v14 = xpc_array_create_empty();
    v15 = v13 + 40;
    do
    {

      v16 = sub_247BF60F0();
      v17 = sub_247BF64B0();

      xpc_array_set_string(v14, v16, (v17 + 32));

      v15 += 16;
      --v12;
    }

    while (v12);
    xpc_dictionary_set_value(empty, "genericSubstitutions", v14);
    swift_unknownObjectRelease();
  }

  v18 = v0[15];
  v19 = sub_247BF64B0();

  xpc_dictionary_set_string(empty, "recipientID", (v19 + 32));

  v20 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "targetID", (v20 + 32));

  v21 = swift_task_alloc();
  v0[17] = v21;
  *(v21 + 16) = v18;
  *(v21 + 24) = empty;
  v22 = swift_task_alloc();
  v0[18] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E100, &qword_247BFC410);
  *v22 = v0;
  v22[1] = sub_247BCE66C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000055, 0x8000000247C01870, sub_247BDE800, v21, v23);
}

uint64_t sub_247BCE66C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_247BCE81C;
  }

  else
  {

    v2 = sub_247BCE788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BCE788()
{
  sub_247BDD650(*(v0 + 40));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BCE81C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BCE888(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_247BCE8AC, 0, 0);
}

uint64_t sub_247BCE8AC()
{
  v55 = v0;
  v1 = MEMORY[0x24C1B5CC0](*(v0 + 40));
  if (v1 != sub_247BF6110())
  {
    v2 = *(v0 + 40);
    swift_getObjectType();
    v3 = sub_247BF6130();
    swift_unknownObjectRelease();
    if (v3 == v2)
    {
      CUXPCActorSystem._xpcInterrupted()();
    }

    else
    {
      v4 = *(v0 + 40);
      v5 = sub_247BF6120();
      swift_unknownObjectRelease();
      if (v5 == v4)
      {
        v39 = *(v0 + 48);
        v40 = *(v0 + 56);
        os_unfair_lock_lock((v40 + 64));
        v41 = *(v40 + 96);
        if (v41 && v39 == v41)
        {
          *(v40 + 96) = 0;
        }

        sub_247BD7B68(*(v0 + 48));

        sub_247BC95EC(v40 + 72);
        os_unfair_lock_unlock((v40 + 64));
        sub_247BC9960(0);
      }

      else
      {
        if (qword_27EE609A0 != -1)
        {
          swift_once();
        }

        v6 = sub_247BF60B0();
        __swift_project_value_buffer(v6, qword_27EE609A8);

        swift_unknownObjectRetain();
        v7 = sub_247BF6090();
        v8 = sub_247BF69F0();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(v0 + 56);
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v53 = v11;
          *v10 = 136315394;
          *(v10 + 4) = sub_247BBE628(*(v9 + 48), *(v9 + 56), &v53);
          *(v10 + 12) = 2080;
          v12 = OS_xpc_object.nestedDescription.getter();
          v14 = sub_247BBE628(v12, v13, &v53);

          *(v10 + 14) = v14;
          _os_log_impl(&dword_247B92000, v7, v8, "%s: ### xpc unexpected event: %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v11, -1, -1);
          MEMORY[0x24C1B5910](v10, -1, -1);
        }
      }
    }

LABEL_34:
    v52 = *(v0 + 8);

    return v52();
  }

  if (*(*(v0 + 48) + 33) != 1)
  {
    v20 = *(v0 + 56);
    type metadata accessor for CUError();
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD000000000000015, 0x8000000247C015A0);
    *(v0 + 16) = *(v20 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)(v0 + 16, MEMORY[0x277D837D0], MEMORY[0x277D83838]);
    v21 = CUError.__allocating_init(_:_:_:)(-71168, v53, v54, 0);
    swift_willThrow();
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v22 = sub_247BF60B0();
    __swift_project_value_buffer(v22, qword_27EE609A8);

    v23 = v21;
    v24 = sub_247BF6090();
    v25 = sub_247BF69F0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      *v27 = 136315394;
      *(v27 + 4) = sub_247BBE628(*(v26 + 48), *(v26 + 56), &v53);
      *(v27 + 12) = 2112;
      v30 = v21;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      *v28 = v31;
      _os_log_impl(&dword_247B92000, v24, v25, "%s: ### xpc send reply: error=%@", v27, 0x16u);
      sub_247B9CAD0(v28, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x24C1B5910](v29, -1, -1);
      MEMORY[0x24C1B5910](v27, -1, -1);
    }

    if (xpc_dictionary_expects_reply())
    {
      reply = xpc_dictionary_create_reply(*(v0 + 40));
      if (reply)
      {
        v33 = reply;
        sub_247BF5D40();
        swift_allocObject();
        sub_247BF5D30();
        v34 = v21;
        v35 = CUError.__allocating_init(_:)(v21);
        *(v0 + 32) = v35;
        sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
        v36 = sub_247BF5D10();
        v38 = v37;

        v50 = *(v0 + 48);
        v51 = Data.xpcObjectRepresentation.getter(v36, v38);
        sub_247BC2AC4(v36, v38);
        xpc_dictionary_set_value(v33, "error", v51);
        xpc_connection_send_message(*(v50 + 104), v33);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        v45 = sub_247BF6090();
        v46 = sub_247BF69F0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = *(v0 + 56);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v53 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_247BBE628(*(v47 + 48), *(v47 + 56), &v53);
          _os_log_impl(&dword_247B92000, v45, v46, "%s: ### xpc create error reply failed", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x24C1B5910](v49, -1, -1);
          MEMORY[0x24C1B5910](v48, -1, -1);
        }
      }
    }

    goto LABEL_34;
  }

  if (xpc_dictionary_get_string(*(v0 + 40), "control") && (sub_247BF6560(), v15 = sub_247BF6F20(), , !v15))
  {
    v42 = swift_task_alloc();
    *(v0 + 64) = v42;
    *v42 = v0;
    v42[1] = sub_247BCF1FC;
    v43 = *(v0 + 48);
    v44 = *(v0 + 40);

    return sub_247BD11E8(v44, v43);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 72) = v16;
    *v16 = v0;
    v16[1] = sub_247BCF2F0;
    v17 = *(v0 + 48);
    v18 = *(v0 + 40);

    return sub_247BCF974(v18, v17);
  }
}

uint64_t sub_247BCF1FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247BCF2F0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BCF424, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_247BCF424()
{
  v29 = v0;
  v1 = *(v0 + 80);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = sub_247BF60B0();
  __swift_project_value_buffer(v2, qword_27EE609A8);

  v3 = v1;
  v4 = sub_247BF6090();
  v5 = sub_247BF69F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_247BBE628(*(v6 + 48), *(v6 + 56), v28);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_247B92000, v4, v5, "%s: ### xpc send reply: error=%@", v7, 0x16u);
    sub_247B9CAD0(v8, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1B5910](v9, -1, -1);
    MEMORY[0x24C1B5910](v7, -1, -1);
  }

  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(*(v0 + 40));
    if (reply)
    {
      v13 = reply;
      sub_247BF5D40();
      swift_allocObject();
      sub_247BF5D30();
      type metadata accessor for CUError();
      v14 = v1;
      v15 = CUError.__allocating_init(_:)(v1);
      *(v0 + 32) = v15;
      sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
      v16 = sub_247BF5D10();
      v18 = v17;

      v24 = *(v0 + 48);
      v25 = Data.xpcObjectRepresentation.getter(v16, v18);
      sub_247BC2AC4(v16, v18);
      xpc_dictionary_set_value(v13, "error", v25);
      xpc_connection_send_message(*(v24 + 104), v13);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      v19 = sub_247BF6090();
      v20 = sub_247BF69F0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 56);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_247BBE628(*(v21 + 48), *(v21 + 56), v28);
        _os_log_impl(&dword_247B92000, v19, v20, "%s: ### xpc create error reply failed", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x24C1B5910](v23, -1, -1);
        MEMORY[0x24C1B5910](v22, -1, -1);
      }
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_247BCF974(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = *v2;
  v4 = sub_247BF5FE0();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  sub_247BF6E20();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCFA8C, 0, 0);
}

uint64_t sub_247BCFA8C()
{
  v54 = v1;
  v6 = xpc_dictionary_get_array(*(v1 + 200), "arguments");
  if (v6)
  {
    v7 = v6;
    count = xpc_array_get_count(v6);
    if ((count & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    v9 = count;
    if (count)
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = xpc_array_get_value(v7, v10);
        v4 = Data.init(xpcObject:)(v12);
        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_247BD6A04(0, *(v11 + 2) + 1, 1, v11);
        }

        v0 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v0 >= v15 >> 1)
        {
          v11 = sub_247BD6A04((v15 > 1), v0 + 1, 1, v11);
        }

        ++v10;
        *(v11 + 2) = v0 + 1;
        v16 = &v11[16 * v0];
        *(v16 + 4) = v4;
        *(v16 + 5) = v14;
      }

      while (v9 != v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  *(v1 + 264) = v11;
  if (!xpc_dictionary_get_string(*(v1 + 200), "callID"))
  {

    type metadata accessor for CUError();
    v35 = 0x6320435058206F4ELL;
    v36 = 0xED000044496C6C61;
    goto LABEL_39;
  }

  v17 = *(v1 + 200);
  v18 = sub_247BF6560();
  v2 = v19;
  *(v1 + 272) = v18;
  *(v1 + 280) = v19;
  if (!xpc_dictionary_get_string(v17, "recipientID"))
  {

    type metadata accessor for CUError();
    v36 = 0x8000000247C017F0;
    v35 = 0xD000000000000012;
    goto LABEL_39;
  }

  v20 = *(v1 + 200);
  v5 = sub_247BF6560();
  v3 = v21;
  *(v1 + 288) = v5;
  *(v1 + 296) = v21;
  v22 = xpc_dictionary_get_array(v20, "genericSubstitutions");
  v50 = v18;
  if (v22)
  {
    v23 = v22;
    v48 = v5;
    v24 = xpc_array_get_count(v22);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = v24;
      v51 = v2;
      v49 = v3;
      if (v24)
      {
        v26 = 0;
        v27 = MEMORY[0x277D84F90];
        do
        {
          v28 = xpc_array_get_value(v23, v26);
          v29 = String.init(xpcObject:)(v28);
          v31 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_247BBE48C(0, *(v27 + 2) + 1, 1, v27);
          }

          v33 = *(v27 + 2);
          v32 = *(v27 + 3);
          if (v33 >= v32 >> 1)
          {
            v27 = sub_247BBE48C((v32 > 1), v33 + 1, 1, v27);
          }

          ++v26;
          *(v27 + 2) = v33 + 1;
          v34 = &v27[16 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
        }

        while (v25 != v26);
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();
      v5 = v48;
      v3 = v49;
      v2 = v51;
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_31:
  *(v1 + 304) = v27;
  if (xpc_dictionary_get_string(*(v1 + 200), "targetID"))
  {
    v4 = sub_247BF6560();
    v0 = v37;
    *(v1 + 312) = v4;
    *(v1 + 320) = v37;
    if (qword_27EE609A0 == -1)
    {
LABEL_33:
      v38 = sub_247BF60B0();
      *(v1 + 328) = __swift_project_value_buffer(v38, qword_27EE609A8);

      v39 = sub_247BF6090();
      v40 = sub_247BF69E0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v1 + 216);
        v52 = v2;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v53[0] = v43;
        *v42 = 136315906;
        *(v42 + 4) = sub_247BBE628(*(v41 + 48), *(v41 + 56), v53);
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_247BBE628(v5, v3, v53);
        *(v42 + 22) = 2080;
        *(v42 + 24) = sub_247BBE628(v4, v0, v53);
        *(v42 + 32) = 2080;
        *(v42 + 34) = sub_247BBE628(v50, v52, v53);
        _os_log_impl(&dword_247B92000, v39, v40, "%s: remoteCall incoming start: recipientID=%s, targetID=%s, callID=%s", v42, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1B5910](v43, -1, -1);
        MEMORY[0x24C1B5910](v42, -1, -1);
      }

      v44 = swift_task_alloc();
      *(v1 + 336) = v44;
      *v44 = v1;
      v44[1] = sub_247BD00E0;
      v45 = *(v1 + 208);

      return sub_247BCAB08(v5, v3, v45);
    }

LABEL_44:
    swift_once();
    goto LABEL_33;
  }

  type metadata accessor for CUError();
  v35 = 0x7420435058206F4ELL;
  v36 = 0xEF44497465677261;
LABEL_39:
  CUError.__allocating_init(_:_:_:)(-6705, v35, v36, 0);
  swift_willThrow();

  v47 = *(v1 + 8);

  return v47();
}

uint64_t sub_247BD00E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {

    v5 = sub_247BD0A88;
  }

  else
  {
    v5 = sub_247BD020C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_247BD020C()
{
  v52 = v0;
  if (v0[43])
  {
    v48 = v0[44];
    v1 = v0[37];
    v2 = v0[36];
    v41 = v0[35];
    v37 = v0[33];
    v38 = v0[38];
    v3 = v0[32];
    v45 = v0[34];
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[26];
    v42 = v0[25];
    v40 = v0[43];
    swift_beginAccess();
    v6[8] = v2;
    v6[9] = v1;

    sub_247BF5CC0();
    swift_allocObject();
    v7 = sub_247BF5CB0();
    v0[46] = v7;
    sub_247BF6E10();
    v51 = v4;
    v50[0] = v5;

    v8 = sub_247BF5CA0();
    sub_247BC9054(v50, v3);
    v8(v0 + 9, 0);
    v0[13] = 0;
    v0[14] = v37;
    v0[15] = v7;
    v0[16] = v38;
    sub_247BF5D40();
    swift_allocObject();

    v9 = sub_247BF5D30();
    v0[47] = v9;
    sub_247BF6E10();
    v51 = v4;
    v50[0] = v5;

    v10 = sub_247BF5D20();
    sub_247BC9054(v50, v3);
    v10(v0 + 17, 0);
    v11 = *(v5 + 48);
    v12 = *(v5 + 56);
    v0[48] = v12;
    v13 = v6[13];
    v0[49] = v13;
    ObjectType = swift_getObjectType();
    v0[24] = v5;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_247BF5FF0();
    v0[2] = v45;
    v0[3] = v41;
    v0[4] = v9;
    v0[5] = v11;
    v0[6] = v12;
    v0[7] = v13;
    v0[8] = v42;
    v14 = swift_task_alloc();
    v0[50] = v14;
    v16 = sub_247BDEA98(&qword_27EE5E0D8, v15, type metadata accessor for CUXPCActorSystem, &protocol conformance descriptor for CUXPCActorSystem);
    *v14 = v0;
    v14[1] = sub_247BD0828;
    v17 = v0[31];

    return MEMORY[0x2821FF478](v40, v17, v0 + 13, v0 + 2, v4, ObjectType, v16, v48);
  }

  else
  {
    v18 = v0[37];
    v19 = v0[36];

    type metadata accessor for CUError();
    sub_247BF6CF0();

    v50[0] = 0xD000000000000018;
    v50[1] = 0x8000000247C01810;
    MEMORY[0x24C1B4020](v19, v18);
    v20 = CUError.__allocating_init(_:_:_:)(-6727, 0xD000000000000018, 0x8000000247C01810, 0);
    swift_willThrow();

    v21 = v20;
    v22 = sub_247BF6090();
    v23 = sub_247BF69E0();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[40];
    if (v24)
    {
      v26 = v0[37];
      v43 = v0[36];
      v44 = v0[39];
      v46 = v0[34];
      v47 = v0[35];
      v27 = v0[27];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v28 = 136316162;
      *(v28 + 4) = sub_247BBE628(*(v27 + 48), *(v27 + 56), v50);
      *(v28 + 12) = 2080;
      v30 = sub_247BBE628(v43, v26, v50);

      *(v28 + 14) = v30;
      *(v28 + 22) = 2080;
      v31 = sub_247BBE628(v44, v25, v50);

      *(v28 + 24) = v31;
      *(v28 + 32) = 2080;
      v32 = sub_247BBE628(v46, v47, v50);

      *(v28 + 34) = v32;
      *(v28 + 42) = 2112;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 44) = v34;
      *v29 = v34;
      _os_log_impl(&dword_247B92000, v22, v23, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v28, 0x34u);
      sub_247B9CAD0(v29, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v49, -1, -1);
      MEMORY[0x24C1B5910](v28, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_247BD0828()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v3 = sub_247BD0D4C;
  }

  else
  {

    v3 = sub_247BD0998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247BD0998()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BD0A88()
{
  v24 = v0;
  v1 = v0[45];

  v2 = v1;
  v3 = sub_247BF6090();
  v4 = sub_247BF69E0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = v0[37];
    v18 = v0[36];
    v19 = v0[39];
    v20 = v0[34];
    v21 = v0[35];
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v9 = 136316162;
    *(v9 + 4) = sub_247BBE628(*(v8 + 48), *(v8 + 56), v23);
    *(v9 + 12) = 2080;
    v11 = sub_247BBE628(v18, v7, v23);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2080;
    v12 = sub_247BBE628(v19, v6, v23);

    *(v9 + 24) = v12;
    *(v9 + 32) = 2080;
    v13 = sub_247BBE628(v20, v21, v23);

    *(v9 + 34) = v13;
    *(v9 + 42) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 44) = v15;
    *v10 = v15;
    _os_log_impl(&dword_247B92000, v3, v4, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v9, 0x34u);
    sub_247B9CAD0(v10, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v22, -1, -1);
    MEMORY[0x24C1B5910](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_247BD0D4C()
{
  v24 = v0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = v0[51];

  v2 = v1;
  v3 = sub_247BF6090();
  v4 = sub_247BF69E0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = v0[37];
    v18 = v0[36];
    v19 = v0[39];
    v20 = v0[34];
    v21 = v0[35];
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v9 = 136316162;
    *(v9 + 4) = sub_247BBE628(*(v8 + 48), *(v8 + 56), v23);
    *(v9 + 12) = 2080;
    v11 = sub_247BBE628(v18, v7, v23);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2080;
    v12 = sub_247BBE628(v19, v6, v23);

    *(v9 + 24) = v12;
    *(v9 + 32) = 2080;
    v13 = sub_247BBE628(v20, v21, v23);

    *(v9 + 34) = v13;
    *(v9 + 42) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 44) = v15;
    *v10 = v15;
    _os_log_impl(&dword_247B92000, v3, v4, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v9, 0x34u);
    sub_247B9CAD0(v10, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v22, -1, -1);
    MEMORY[0x24C1B5910](v9, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

Swift::Void __swiftcall CUXPCActorSystem._xpcInterrupted()()
{
  v1 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = sub_247BF60B0();
  __swift_project_value_buffer(v2, qword_27EE609A8);

  v3 = sub_247BF6090();
  v4 = sub_247BF69F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), &v7);
    _os_log_impl(&dword_247B92000, v3, v4, "%s: ### xpc connection interrupted", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C1B5910](v6, -1, -1);
    MEMORY[0x24C1B5910](v5, -1, -1);
  }

  os_unfair_lock_lock((v1 + 64));
  sub_247BD218C(v1 + 72, v1);

  os_unfair_lock_unlock((v1 + 64));
}

uint64_t sub_247BD11E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_247BD120C, 0, 0);
}

uint64_t sub_247BD120C()
{
  v46 = v0;
  if (xpc_dictionary_get_string(*(v0 + 40), "actorID"))
  {
    v1 = *(v0 + 56);
    v2 = sub_247BF6560();
    v4 = v3;
    os_unfair_lock_lock((v1 + 64));
    v5 = *(v1 + 144);
    v6 = &unk_27EE60000;
    if (*(v5 + 16))
    {
      v7 = sub_247B9B134(v2, v4);
      if (v8)
      {
        v44 = v2;
        v9 = (*(v5 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 32);
        swift_unknownObjectRetain();
        v13(ObjectType, v11);
        Strong = swift_weakLoadStrong();
        sub_247BDE6D8(v0 + 16);
        if (Strong)
        {
          v15 = *(v0 + 48);

          if (Strong == v15)
          {
            v2 = v44;
            sub_247BD8F94(v44, v4);
            swift_unknownObjectRelease();
            swift_beginAccess();
            sub_247BD7A2C(v44, v4);
            swift_endAccess();

            LOBYTE(v45[0]) = 0;
            sub_247BC85E8(v45, v44, v4, v1 + 72);
            v6 = &unk_27EE60000;
            goto LABEL_12;
          }
        }

        v6 = &unk_27EE60000;
        v2 = v44;
        if (qword_27EE609A0 != -1)
        {
          swift_once();
        }

        v16 = sub_247BF60B0();
        __swift_project_value_buffer(v16, qword_27EE609A8);

        v17 = sub_247BF6090();
        v18 = sub_247BF69F0();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v0 + 56);
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v45[0] = v21;
          *v20 = 136315394;
          v22 = *(v19 + 48);
          v23 = *(v19 + 56);
          v6 = &unk_27EE60000;
          *(v20 + 4) = sub_247BBE628(v22, v23, v45);
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_247BBE628(v44, v4, v45);
          _os_log_impl(&dword_247B92000, v17, v18, "%s: ### actorEnded on wrong connection: actorID=%s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v21, -1, -1);
          MEMORY[0x24C1B5910](v20, -1, -1);
        }

        swift_unknownObjectRelease();
      }
    }

    v10 = 0;
LABEL_12:
    os_unfair_lock_unlock((v1 + 64));
    if (v6[308] != -1)
    {
      swift_once();
    }

    v24 = sub_247BF60B0();
    __swift_project_value_buffer(v24, qword_27EE609A8);
    swift_unknownObjectRetain();

    v25 = sub_247BF6090();
    v26 = sub_247BF69D0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 56);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45[0] = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_247BBE628(*(v27 + 48), *(v27 + 56), v45);
      *(v28 + 12) = 2080;
      v30 = sub_247BBE628(v2, v4, v45);

      *(v28 + 14) = v30;
      *(v28 + 22) = 1024;
      *(v28 + 24) = v10 != 0;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_247B92000, v25, v26, "%s: actorEnded: remote, actorID=%s, found=%{BOOL}d", v28, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v29, -1, -1);
      MEMORY[0x24C1B5910](v28, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease_n();
    }

    goto LABEL_22;
  }

  type metadata accessor for CUError();
  v31 = CUError.__allocating_init(_:_:_:)(-6705, 0x726F746361206F4ELL, 0xEA00000000004449, 0);
  swift_willThrow();
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v32 = sub_247BF60B0();
  __swift_project_value_buffer(v32, qword_27EE609A8);

  v33 = v31;
  v34 = sub_247BF6090();
  v35 = sub_247BF69F0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 56);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v37 = 136315394;
    *(v37 + 4) = sub_247BBE628(*(v36 + 48), *(v36 + 56), v45);
    *(v37 + 12) = 2112;
    v40 = v33;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v41;
    *v38 = v41;
    _os_log_impl(&dword_247B92000, v34, v35, "%s: ### control actorEnded failed: error=%@", v37, 0x16u);
    sub_247B9CAD0(v38, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x24C1B5910](v39, -1, -1);
    MEMORY[0x24C1B5910](v37, -1, -1);
  }

  else
  {
  }

LABEL_22:
  v42 = *(v0 + 8);

  return v42();
}

NSObject *sub_247BD1888(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = v3;
LABEL_16:

    return v4;
  }

  v5 = v1;
  v6 = v1[23];
  if (v6)
  {
    v7 = a1;
    v8 = qword_27EE609A0;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_247BF60B0();
    __swift_project_value_buffer(v9, qword_27EE609A8);

    v10 = sub_247BF6090();
    v11 = sub_247BF69D0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_247BBE628(v5[6], v5[7], &v35);
      _os_log_impl(&dword_247B92000, v10, v11, "%s: xpc connection create: endpoint", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x24C1B5910](v13, -1, -1);
      MEMORY[0x24C1B5910](v12, -1, -1);
    }

    mach_service = xpc_connection_create_from_endpoint(v6);
    v35 = v5[5];
    swift_unknownObjectRetain();
    v15 = CUEnvironmentValues.dispatchQueue.getter();
    xpc_connection_set_target_queue(mach_service, v15);

    swift_unknownObjectRelease();
LABEL_15:
    v35 = v5[5];
    type metadata accessor for CUXPCActorConnection();
    swift_allocObject();
    v4 = sub_247BDD848(v5, mach_service, &v35);
    *(v7 + 24) = v4;

    sub_247BD1E54();
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v16 = v1[25];
  if (v16)
  {
    v7 = a1;
    v17 = v1[24];
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v18 = sub_247BF60B0();
    __swift_project_value_buffer(v18, qword_27EE609A8);

    v19 = sub_247BF6090();
    v20 = sub_247BF69D0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_247BBE628(v5[6], v5[7], &v35);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_247BBE628(v17, v16, &v35);
      _os_log_impl(&dword_247B92000, v19, v20, "%s: xpc connection create: serviceName=%s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v22, -1, -1);
      MEMORY[0x24C1B5910](v21, -1, -1);
    }

    v35 = v5[5];
    v23 = CUEnvironmentValues.dispatchQueue.getter();
    v24 = sub_247BF64B0();
    mach_service = xpc_connection_create_mach_service((v24 + 32), v23, 0);

    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  type metadata accessor for CUError();
  v26 = CUError.__allocating_init(_:_:_:)(-6705, 0xD00000000000001FLL, 0x8000000247C018D0, 0);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v27 = sub_247BF60B0();
  __swift_project_value_buffer(v27, qword_27EE609A8);

  v28 = v26;
  v4 = sub_247BF6090();
  v29 = sub_247BF69F0();
  v30 = v28;

  if (os_log_type_enabled(v4, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v31 = 136315394;
    *(v31 + 4) = sub_247BBE628(v5[6], v5[7], &v35);
    *(v31 + 12) = 2112;
    *(v31 + 14) = v30;
    *v32 = v30;
    v34 = v30;
    _os_log_impl(&dword_247B92000, v4, v29, "%s: ### xpc connection create failed: error=%@", v31, 0x16u);
    sub_247B9CAD0(v32, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x24C1B5910](v33, -1, -1);
    MEMORY[0x24C1B5910](v31, -1, -1);
  }

  swift_willThrow();
  return v4;
}

uint64_t sub_247BD1DF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_247BDD848(a1, a2, a3);

  return v6;
}

void sub_247BD1E54()
{
  v1 = v0;
  v2 = *(v0 + 104);
  v3 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_247BDD8D0;
  v15[5] = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_247BD2CD4;
  v15[3] = &block_descriptor_0;
  v4 = _Block_copy(v15);

  xpc_connection_set_event_handler(v2, v4);
  _Block_release(v4);
  xpc_connection_activate(v2);
  if (*(v1 + 32) == 1)
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v5 = sub_247BF60B0();
    __swift_project_value_buffer(v5, qword_27EE609A8);

    v6 = sub_247BF6090();
    v7 = sub_247BF69D0();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v15);
    _os_log_impl(&dword_247B92000, v6, v7, "%s: xpc connection started: outgoing", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1B5910](v9, -1, -1);
    v10 = v8;
LABEL_10:
    MEMORY[0x24C1B5910](v10, -1, -1);
LABEL_11:

    return;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v11 = sub_247BF60B0();
  __swift_project_value_buffer(v11, qword_27EE609A8);

  v6 = sub_247BF6090();
  v12 = sub_247BF69D0();
  if (os_log_type_enabled(v6, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_247BBE628(*(v1 + 16), *(v1 + 24), v15);
    *(v13 + 22) = 1024;
    *(v13 + 24) = *(v1 + 88);

    _os_log_impl(&dword_247B92000, v6, v12, "%s: xpc connection started: incoming %s:%d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    v10 = v13;
    goto LABEL_10;
  }
}

uint64_t sub_247BD218C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = *(a1 + 64);
  if (*(v11 + 16))
  {
    v19[5] = *(a2 + 40);

    v12 = CUEnvironmentValues.dispatchQueue.getter();
    v13 = sub_247BF67E0();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 1, 1, v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    sub_247BC5B0C(v10, v7, &qword_27EE5DD00, &qword_247BFA890);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {
      sub_247B9CAD0(v7, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v14 + 8))(v7, v13);
    }

    v16 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68, MEMORY[0x277D85270]);
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_247BFC3B8;
    *(v17 + 24) = v15;
    v19[1] = 6;
    v19[2] = 0;
    v19[3] = v12;
    v19[4] = v16;

    v18 = v12;
    swift_task_create();
    sub_247B9CAD0(v10, &qword_27EE5DD00, &qword_247BFA890);
  }

  return result;
}

uint64_t sub_247BD2470()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 34) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      result = *(v0 + 80);
LABEL_10:
      *(v0 + 88) = v5;
      *(v0 + 96) = v7;
      v9 = __clz(__rbit64(v5)) | (v7 << 6);
      v10 = (*(result + 48) + 16 * v9);
      *(v0 + 104) = *v10;
      *(v0 + 112) = v10[1];
      v11 = *(*(result + 56) + 8 * v9);
      *(v0 + 120) = v11;
      LOBYTE(v9) = *(v11 + 32);
      *(v0 + 35) = v9;
      v12 = 1 << v9;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v14 = v13 & *(v11 + 64);

      v15 = 0;
      if (!v14)
      {
        break;
      }

      while (1)
      {
        v16 = *(v0 + 120);
LABEL_23:
        v21 = __clz(__rbit64(v14));
        v22 = (v14 - 1) & v14;
        v23 = (v15 << 9) | (8 * v21);
        v24 = *(*(v16 + 48) + v23);
        sub_247BC5B0C(*(v16 + 56) + v23, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 40) = v24;
        sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 56) = 0;
        v19 = v15;
LABEL_24:
        *(v0 + 128) = v22;
        *(v0 + 136) = v19;
        sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
        if (*(v0 + 32) == 1)
        {
          break;
        }

        sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v26 = *(Strong + 40);
          *(v0 + 144) = *(Strong + 48);

          *(v0 + 33) = 1;
          v31 = (v26 + *v26);
          v27 = swift_task_alloc();
          *(v0 + 152) = v27;
          *v27 = v0;
          v27[1] = sub_247BD2830;
          v29 = *(v0 + 104);
          v28 = *(v0 + 112);

          return v31(v29, v28, v0 + 33);
        }

        result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
        v14 = *(v0 + 128);
        v15 = *(v0 + 136);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      v7 = *(v0 + 96);
      v5 = (*(v0 + 88) - 1) & *(v0 + 88);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

LABEL_15:
    v17 = ((1 << *(v0 + 35)) + 63) >> 6;
    if (v17 <= (v15 + 1))
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = ((1 << *(v0 + 35)) + 63) >> 6;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v22 = 0;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 56) = 1;
        goto LABEL_24;
      }

      v16 = *(v0 + 120);
      v14 = *(v16 + 8 * v20 + 64);
      ++v15;
      if (v14)
      {
        v15 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      result = *(v0 + 80);
      if (v8 >= (((1 << *(v0 + 34)) + 63) >> 6))
      {

        v30 = *(v0 + 8);

        return v30();
      }

      v5 = *(result + 8 * v8 + 64);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BD2830()
{

  return MEMORY[0x2822009F8](sub_247BD2948, 0, 0);
}

uint64_t sub_247BD2948()
{
  while (2)
  {
    result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    if (v3)
    {
      while (1)
      {
        v4 = *(v0 + 120);
LABEL_11:
        v9 = __clz(__rbit64(v3));
        v10 = (v3 - 1) & v3;
        v11 = (v2 << 9) | (8 * v9);
        v12 = *(*(v4 + 48) + v11);
        sub_247BC5B0C(*(v4 + 56) + v11, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 40) = v12;
        sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 56) = 0;
        v7 = v2;
LABEL_12:
        *(v0 + 128) = v10;
        *(v0 + 136) = v7;
        sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
        if (*(v0 + 32) != 1)
        {
          break;
        }

        v13 = *(v0 + 96);
        v14 = (*(v0 + 88) - 1) & *(v0 + 88);
        if (!v14)
        {
          while (1)
          {
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_33;
            }

            result = *(v0 + 80);
            if (v15 >= (((1 << *(v0 + 34)) + 63) >> 6))
            {

              v26 = *(v0 + 8);

              return v26();
            }

            v14 = *(result + 8 * v15 + 64);
            ++v13;
            if (v14)
            {
              v13 = v15;
              goto LABEL_19;
            }
          }
        }

        result = *(v0 + 80);
LABEL_19:
        *(v0 + 88) = v14;
        *(v0 + 96) = v13;
        v16 = __clz(__rbit64(v14)) | (v13 << 6);
        v17 = (*(result + 48) + 16 * v16);
        *(v0 + 104) = *v17;
        *(v0 + 112) = v17[1];
        v18 = *(*(result + 56) + 8 * v16);
        *(v0 + 120) = v18;
        LOBYTE(v16) = *(v18 + 32);
        *(v0 + 35) = v16;
        v19 = 1 << v16;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v3 = v20 & *(v18 + 64);

        v2 = 0;
        if (!v3)
        {
          goto LABEL_3;
        }
      }

      sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        continue;
      }

      v22 = *(Strong + 40);
      *(v0 + 144) = *(Strong + 48);

      *(v0 + 33) = 1;
      v27 = (v22 + *v22);
      v23 = swift_task_alloc();
      *(v0 + 152) = v23;
      *v23 = v0;
      v23[1] = sub_247BD2830;
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);

      return v27(v25, v24, v0 + 33);
    }

    else
    {
LABEL_3:
      v5 = ((1 << *(v0 + 35)) + 63) >> 6;
      if (v5 <= (v2 + 1))
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = ((1 << *(v0 + 35)) + 63) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          v10 = 0;
          *(v0 + 40) = 0;
          *(v0 + 48) = 0;
          *(v0 + 56) = 1;
          goto LABEL_12;
        }

        v4 = *(v0 + 120);
        v3 = *(v4 + 8 * v8 + 64);
        ++v2;
        if (v3)
        {
          v2 = v8;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    return result;
  }
}

uint64_t sub_247BD2CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_247BD2D34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v19 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  os_unfair_lock_lock((a2 + 64));
  isa = sub_247BD1888(a2 + 72)[13].isa;
  swift_unknownObjectRetain();

  aBlock[6] = *(a2 + 40);
  v14 = CUEnvironmentValues.dispatchQueue.getter();
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BD2CD4;
  aBlock[3] = v18;
  v17 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(isa, v19, v14, v17);
  swift_unknownObjectRelease();
  _Block_release(v17);

  os_unfair_lock_unlock((a2 + 64));
}

void CUXPCActorSystem.xpcServerEndpoint.getter(void *a1@<X8>)
{
  if (*(v1 + 16))
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6735, 0xD00000000000002ALL, 0x8000000247C015E0, 0);
    swift_willThrow();
  }

  else
  {
    os_unfair_lock_lock((v1 + 64));
    if (*(v1 + 168))
    {
      v3 = *(v1 + 168);
    }

    else
    {
      v4 = sub_247BC7FBC(v1 + 72);
      v5 = xpc_endpoint_create(v4);
      CUXPCEndpoint.init(_:)(v5, &v6);
      swift_unknownObjectRelease();
      v3 = v6;
      *(v1 + 168) = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    *a1 = v3;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v1 + 64));
  }
}

uint64_t sub_247BD303C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v22 = a1;
    swift_unknownObjectRetain();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E0C0, &qword_247BFC380);
    CUSendableWrapper.init(_:)(&v22, v11, &v23);
    v12 = v23;
    v23 = *(v10 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    v14 = sub_247BF67E0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v12;
    sub_247BC5B0C(v8, v6, &qword_27EE5DD00, &qword_247BFA890);
    v17 = (*(v15 + 48))(v6, 1, v14);

    if (v17 == 1)
    {
      sub_247B9CAD0(v6, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v15 + 8))(v6, v14);
    }

    v18 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68, MEMORY[0x277D85270]);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_247BFC498;
    *(v19 + 24) = v16;
    v21[1] = 6;
    v21[2] = 0;
    v21[3] = v13;
    v21[4] = v18;

    v20 = v13;
    swift_task_create();
    sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
  }

  return result;
}

uint64_t sub_247BD3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_247BD3380, 0, 0);
}

uint64_t sub_247BD3380()
{
  v28 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = MEMORY[0x24C1B5CC0](v2);
  if (v3 == sub_247BF6100())
  {
    *&v27[0] = *(v1 + 40);
    v13 = CUEnvironmentValues.dispatchQueue.getter();
    xpc_connection_set_target_queue(v2, v13);

    v14 = *(v1 + 32);
    v15 = *(v1 + 40);
    type metadata accessor for CUXPCActorConnection();
    v16 = swift_allocObject();
    *(v16 + 64) = 0;
    *(v16 + 72) = 0;
    *(v16 + 80) = MEMORY[0x277D84FA0];
    swift_weakInit();
    *(v16 + 32) = 0;
    *(v16 + 40) = v15;
    v17 = *(v1 + 56);
    *(v16 + 48) = *(v1 + 48);
    *(v16 + 56) = v17;

    swift_unknownObjectRetain();

    *(v16 + 88) = xpc_connection_get_pid(v2);
    swift_weakAssign();
    *(v16 + 104) = v2;
    memset(v27, 0, sizeof(v27));
    swift_unknownObjectRetain();
    xpc_connection_get_audit_token();
    v18 = xpc_copy_entitlement_for_token();
    v19 = v14 == 0;
    if (!v18)
    {

      swift_unknownObjectRelease();

      v21 = 0;
      v23 = 0xE000000000000000;
      goto LABEL_16;
    }

    v20 = v18;
    if (xpc_dictionary_get_string(v18, "application-identifier"))
    {
      v21 = sub_247BF6560();
      v23 = v22;
      if (v14)
      {
LABEL_11:
        v24 = sub_247BF64B0();

        v19 = xpc_dictionary_get_BOOL(v20, (v24 + 32));
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_16:
        *(v16 + 16) = v21;
        *(v16 + 24) = v23;
        *(v16 + 33) = v19;
        os_unfair_lock_lock((v1 + 64));

        sub_247BDC390(v27, v16);

        os_unfair_lock_unlock((v1 + 64));
        sub_247BD1E54();

        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v19 = 1;
    goto LABEL_16;
  }

  swift_getObjectType();
  v4 = sub_247BF6120();
  swift_unknownObjectRelease();
  if (v4 == v2)
  {
    os_unfair_lock_lock((v1 + 64));
    *(v1 + 176) = 0;
    swift_unknownObjectRelease();
    sub_247BC95EC(v1 + 72);
    os_unfair_lock_unlock((v1 + 64));
  }

  else
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v5 = sub_247BF60B0();
    __swift_project_value_buffer(v5, qword_27EE609A8);

    swift_unknownObjectRetain();
    v6 = sub_247BF6090();
    v7 = sub_247BF69F0();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v27[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v27);
      *(v8 + 12) = 2080;
      v10 = OS_xpc_object.nestedDescription.getter();
      v12 = sub_247BBE628(v10, v11, v27);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_247B92000, v6, v7, "%s: ### xpc server unexpected event: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v9, -1, -1);
      MEMORY[0x24C1B5910](v8, -1, -1);
    }
  }

LABEL_17:
  v25 = v0[1];

  return v25();
}

uint64_t sub_247BD37A0(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = swift_allocObject();
  v10 = *a5;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = MEMORY[0x277D84FA0];
  swift_weakInit();
  *(v9 + 32) = 0;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  *(v9 + 40) = v10;
  *(v9 + 48) = v12;
  *(v9 + 56) = v11;

  *(v9 + 88) = xpc_connection_get_pid(a2);
  swift_weakAssign();
  *(v9 + 104) = a2;
  swift_unknownObjectRetain();
  xpc_connection_get_audit_token();
  v13 = xpc_copy_entitlement_for_token();
  v14 = a4 == 0;
  if (!v13)
  {

    swift_unknownObjectRelease();

    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_8;
  }

  v15 = v13;
  if (!xpc_dictionary_get_string(v13, "application-identifier"))
  {
    v16 = 0;
    v18 = 0xE000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = 1;
    goto LABEL_8;
  }

  v16 = sub_247BF6560();
  v18 = v17;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = sub_247BF64B0();

  v14 = xpc_dictionary_get_BOOL(v15, (v19 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_8:
  *(v9 + 16) = v16;
  *(v9 + 24) = v18;
  *(v9 + 33) = v14;
  return v9;
}

uint64_t static CUXPCActorSystem.ActorContext.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27EE609C0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_247BDD8F0(&unk_27EE609C8, v2);
}

uint64_t CUXPCActorSystem.ActorCreateInfo.actorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CUXPCActorSystem.ActorCreateInfo.actorType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CUXPCActorSystem.ActorEvent.description.getter()
{
  v1 = 0x7075727265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E45726F746361;
  }
}

uint64_t CUXPCActorSystem.ActorEvent.hashValue.getter()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t sub_247BD3B68()
{
  v1 = 0x7075727265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E45726F746361;
  }
}

void *CUXPCActorSystem.ActorMonitor.deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_247BC9F88(v0);
  }

  swift_weakDestroy();
  return v0;
}

uint64_t CUXPCActorSystem.ActorMonitor.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    sub_247BC9F88(v0);
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CUXPCActorSystem.InvocationDecoder.decodeNextArgument<A>()()
{
  swift_conformsToProtocol();
  result = swift_conformsToProtocol();
  v4 = *v2;
  v5 = v2[1];
  if (*v2 >= *(v5 + 16))
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0xD000000000000012, 0x8000000247C01630, 0);
    return swift_willThrow();
  }

  else if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 + 16 * v4;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    *v2 = v4 + 1;
    sub_247BC2A70(v7, v8);
    sub_247BF5C90();
    return sub_247BC2AC4(v7, v8);
  }

  return result;
}

void CUXPCActorSystem.InvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 + 40 + 16 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = v5 + 16;

    v7 = sub_247BF6D00();

    v5 = v6;
    if (v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_247BD6B10(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_247BD6B10((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      *&v4[8 * v9 + 32] = v7;
      goto LABEL_2;
    }
  }
}

uint64_t sub_247BD3EF8()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationDecoder.decodeNextArgument<A>()();
}

uint64_t CUXPCActorSystem.InvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF6010();
  sub_247BF6000();
  v9 = sub_247BF5D10();
  v11 = v10;
  result = (*(v6 + 8))(v8, a2);
  if (!v3)
  {
    v13 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BD6A04(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_247BD6A04((v14 > 1), v15 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v15 + 1;
    v16 = v13 + 16 * v15;
    *(v16 + 32) = v9;
    *(v16 + 40) = v11;
    *v2 = v13;
  }

  return result;
}

uint64_t CUXPCActorSystem.InvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = sub_247BF6E00();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = *(v2 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BBE48C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_247BBE48C((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    *(v2 + 16) = v7;
  }

  return result;
}

uint64_t sub_247BD4218(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_247BD4278(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v3 = swift_conformsToProtocol();
  return CUXPCActorSystem.InvocationEncoder.recordReturnType<A>(_:)(v3, a2);
}

uint64_t CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_conformsToProtocol();
  v4 = swift_conformsToProtocol();
  v5 = *v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v2 + 1);
  *(v3 + 64) = v2[3];
  *(v3 + 72) = *(v2 + 2);
  *(v3 + 88) = v2[6];

  return MEMORY[0x2822009F8](sub_247BD4378, 0, 0);
}

uint64_t sub_247BD4378()
{
  v23 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_247BF60B0();
  __swift_project_value_buffer(v1, qword_27EE609A8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v2 = sub_247BF6090();
  v3 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315394;

    v10 = sub_247BBE628(v5, v4, v22);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;

    v11 = sub_247BBE628(v7, v6, v22);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_247B92000, v2, v3, "%s: remoteCall incoming success: callID=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v9, -1, -1);
    MEMORY[0x24C1B5910](v8, -1, -1);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 88));
  if (reply)
  {
    v13 = reply;
    v14 = sub_247BF5D10();
    v15 = *(v0 + 80);
    v16 = v14;
    v18 = v17;
    v19 = Data.xpcObjectRepresentation.getter(v14, v17);
    sub_247BC2AC4(v16, v18);
    xpc_dictionary_set_value(v13, "result", v19);
    xpc_connection_send_message(v15, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t CUXPCActorSystem.ResultHandler.onReturnVoid()()
{
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x2822009F8](sub_247BD46B8, 0, 0);
}

uint64_t sub_247BD46B8()
{
  v16 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_247BF60B0();
  __swift_project_value_buffer(v1, qword_27EE609A8);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v2 = sub_247BF6090();
  v3 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315394;

    v10 = sub_247BBE628(v5, v4, v15);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;

    v11 = sub_247BBE628(v7, v6, v15);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_247B92000, v2, v3, "%s: remoteCall incoming success: callID=%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v9, -1, -1);
    MEMORY[0x24C1B5910](v8, -1, -1);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 64));
  if (reply)
  {
    xpc_connection_send_message(*(v0 + 56), reply);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t CUXPCActorSystem.ResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  *(v4 + 48) = *(a2 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v3 + 1);
  *(v4 + 104) = v3[3];
  *(v4 + 112) = *(v3 + 2);
  *(v4 + 128) = v3[6];

  return MEMORY[0x2822009F8](sub_247BD4A44, 0, 0);
}

uint64_t sub_247BD4A44()
{
  v52 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_247BF60B0();
  __swift_project_value_buffer(v5, qword_27EE609A8);
  v50 = *(v2 + 16);
  v50(v1, v4, v3);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_247BF6090();
  v7 = sub_247BF69E0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 32);
    v47 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *v14 = 136315650;

    v15 = sub_247BBE628(v9, v8, v51);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;

    v16 = sub_247BBE628(v47, v10, v51);

    *(v14 + 14) = v16;
    *(v14 + 22) = 2112;
    v50(v12, v11, v13);
    v17 = sub_247BF7130();
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    if (v17)
    {
      (*(v19 + 8))(*(v0 + 64), *(v0 + 32));
    }

    else
    {
      v24 = *(v0 + 32);
      swift_allocError();
      (*(v19 + 32))(v25, v18, v24);
    }

    v26 = *(v0 + 72);
    v27 = *(v0 + 48);
    v28 = *(v0 + 32);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v27 + 8);
    v23(v26, v28);
    *(v14 + 24) = v29;
    *v48 = v29;
    _os_log_impl(&dword_247B92000, v6, v7, "%s: remoteCall incoming error: callID=%s, error=%@", v14, 0x20u);
    sub_247B9CAD0(v48, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v48, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v49, -1, -1);
    MEMORY[0x24C1B5910](v14, -1, -1);
  }

  else
  {
    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 32);

    v23 = *(v21 + 8);
    v23(v20, v22);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 128));
  if (reply)
  {
    v31 = reply;
    v50(*(v0 + 56), *(v0 + 24), *(v0 + 32));
    v32 = sub_247BF7130();
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);
    if (v32)
    {
      v35 = v32;
      v23(*(v0 + 56), *(v0 + 32));
    }

    else
    {
      v36 = *(v0 + 32);
      v35 = swift_allocError();
      (*(v34 + 32))(v37, v33, v36);
    }

    type metadata accessor for CUError();
    v38 = CUError.__allocating_init(_:)(v35);
    *(v0 + 16) = v38;
    sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError, &protocol conformance descriptor for CUError);
    v39 = sub_247BF5D10();
    v41 = *(v0 + 120);
    v42 = v39;
    v44 = v43;

    v45 = Data.xpcObjectRepresentation.getter(v42, v44);
    sub_247BC2AC4(v42, v44);
    xpc_dictionary_set_value(v31, "error", v45);
    xpc_connection_send_message(v41, v31);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v40 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000017, 0x8000000247C01650, 0);
    swift_willThrow();

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_247BD5000(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t sub_247BD50C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onReturnVoid()();
}

uint64_t sub_247BD5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247B96F0C;

  return CUXPCActorSystem.ResultHandler.onThrow<A>(error:)(a1, a2, a3);
}

void *CUXPCActorSystem.deinit()
{

  sub_247BDD438(v0 + 72);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t CUXPCActorSystem.__deallocating_deinit()
{

  sub_247BDD438(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CUXPCActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_247BD52DC, 0, 0);
}

uint64_t sub_247BD52DC()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[10], v0[10], MEMORY[0x277D83A88], MEMORY[0x277D83548]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_247BDED38;
  v7 = v0[9];

  return sub_247BD53B0(v1, v7, (v0 + 2), v1, v3, v5);
}

uint64_t sub_247BD53B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v6[15] = *(a4 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BD546C, 0, 0);
}

uint64_t sub_247BD546C()
{
  v1 = *(v0 + 88);
  sub_247BF6660();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_247BD5534;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);

  return CUXPCActorSystem.ResultHandler.onReturn<A>(value:)(v6, v7);
}

uint64_t sub_247BD5534()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_247BD56C8;
  }

  else
  {
    v2 = sub_247BD5648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247BD5648()
{
  (*(v0[15] + 8))(v0[16], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247BD56C8()
{
  (*(v0[15] + 8))(v0[16], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247BD5748()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v17[4] = *(v1 + 136);
  v17[5] = v3;
  v17[6] = *(v1 + 168);
  v4 = *(v1 + 88);
  v17[0] = *(v1 + 72);
  v17[1] = v4;
  v17[2] = *(v1 + 104);
  v17[3] = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v14 = *(v1 + 136);
  v15 = v6;
  v16 = *(v1 + 168);
  v7 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v7;
  v12 = *(v1 + 104);
  v13 = v5;
  sub_247BDD400(v17, v18);
  v8 = sub_247BC7164(&v10);
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  sub_247BDD438(v18);
  os_unfair_lock_unlock((v1 + 64));
  return v8;
}

uint64_t sub_247BD5860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CUXPCActorSystem.assignID<A>(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_247BD5900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_247B95F40;

  return CUXPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v15, v16, a7);
}

uint64_t sub_247BD59FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_247B96F0C;

  return CUXPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v14, a5, v15, a7);
}

uint64_t sub_247BD5AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_247BD5B00, 0, 0);
}

uint64_t sub_247BD5B00()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[10], v0[10], MEMORY[0x277D83A88], MEMORY[0x277D83548]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_247BD5BD4;
  v7 = v0[9];

  return sub_247BD53B0(v1, v7, (v0 + 2), v1, v3, v5);
}

uint64_t sub_247BD5BD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_247BD5CC8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 80);

    os_unfair_lock_lock(v2 + 16);
    sub_247BCA230(&v2[18], v3, &v5);

    os_unfair_lock_unlock(v2 + 16);
  }

  swift_weakDestroy();
  swift_unknownObjectRelease();
  return v0;
}