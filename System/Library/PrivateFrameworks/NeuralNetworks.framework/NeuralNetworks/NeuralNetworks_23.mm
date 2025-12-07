uint64_t sub_25BC4D64C(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t (*a6)(void, void, void, void, void, void, uint64_t))
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = (a2 - a1) / 24;
  v13 = (a3 - a2) / 24;
  swift_bridgeObjectRetain_n();
  if (v12 < v13)
  {
    sub_25BAC9924();
    v14 = &a4[24 * v12];
    while (1)
    {
      if (a4 >= v14 || v10 >= v9)
      {
        v10 = v11;
        goto LABEL_30;
      }

      v16 = a6(*v10, *(v10 + 1), *(v10 + 2), *a4, *(a4 + 1), *(a4 + 2), a5);
      if (v6)
      {
        OUTLINED_FUNCTION_25_27();
        v32 = v11 < a4 || v11 >= v31;
        if (v32 || v11 != a4)
        {
          OUTLINED_FUNCTION_43_15();
          v34 = v11;
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v10;
      v18 = v11 == v10;
      v10 += 24;
      if (!v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v11 += 24;
    }

    v17 = a4;
    v18 = v11 == a4;
    a4 += 24;
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = *v17;
    *(v11 + 2) = *(v17 + 2);
    *v11 = v19;
    goto LABEL_14;
  }

  v40 = a5;
  sub_25BAC9924();
  v20 = &a4[24 * v13];
LABEL_16:
  v21 = 0;
  v39 = v10 - 24;
  while (1)
  {
    v22 = &v20[v21];
    if (&v20[v21] <= a4 || v10 <= v11)
    {
      break;
    }

    v24 = a6(*(v22 - 3), *(v22 - 2), *(v22 - 1), *(v10 - 3), *(v10 - 2), *(v10 - 1), v40);
    if (v6)
    {
      OUTLINED_FUNCTION_25_27();
      if (v10 < a4 || v10 >= v35)
      {
        OUTLINED_FUNCTION_43_15();
        memmove(v10, a4, v37);
        goto LABEL_50;
      }

      if (v10 == a4)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v25 = (v9 + v21);
    v26 = v9 + v21 - 24;
    if (v24)
    {
      v20 += v21;
      v9 = v9 + v21 - 24;
      v18 = v25 == v10;
      v10 -= 24;
      if (!v18)
      {
        v28 = *v39;
        *(v26 + 16) = *(v39 + 2);
        *v26 = v28;
        v10 = v39;
        v9 = v26;
      }

      goto LABEL_16;
    }

    if (v22 != (v9 + v21))
    {
      v27 = *(v22 - 24);
      *(v9 + v21 - 8) = *(v22 - 1);
      *v26 = v27;
    }

    v21 -= 24;
  }

LABEL_30:
  OUTLINED_FUNCTION_25_27();
  if (v10 == a4 && v10 < v29)
  {
    goto LABEL_50;
  }

LABEL_48:
  OUTLINED_FUNCTION_43_15();
  v34 = v10;
LABEL_49:
  memmove(v34, a4, v33);
LABEL_50:
  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_25BC4D8E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25BC4D96C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_25BC4D980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3940, &qword_25BCBB8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_25BC4DA80(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_25BCB617C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_25BC4DB74(*(*(a1 + 48) + (v10 | (v9 << 6))));
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
        return;
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
}

uint64_t sub_25BC4DB74(char a1)
{
  v2 = v1;
  v4 = *v2;
  sub_25BCB79CC();
  sub_25BCB7A0C();
  v5 = sub_25BCB7A3C();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      return 2;
    }

    v8 = *(*(v4 + 48) + v7) ? 2 : 1;
    if (v8 == (a1 & 1) + 1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v13 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25BC4AA74();
    v11 = v13;
  }

  v9 = *(*(v11 + 48) + v7);
  sub_25BC4DE98(v7);
  *v2 = v13;
  return v9;
}

unint64_t sub_25BC4DC78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + (__clz(__rbit64(v12)) | (v13 << 6)));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
    v15 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = 1 << (result & v15);
      if ((v18 & *(v10 + 8 * v17)) == 0)
      {
        break;
      }

      result = v16 + 1;
      if (v14 == *(*(a3 + 48) + v16))
      {
        v19 = v7[v17];
        v7[v17] = v19 & ~v18;
        if ((v19 & v18) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      return sub_25BAD9A80(v7, a2, v9, a3);
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_25BC4DE10(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_25BC4DC78(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_25BC4DE98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25BCB704C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25BCB79CC();
        sub_25BCB7A0C();
        v10 = sub_25BCB7A3C() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

double sub_25BC4E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    if (a6)
    {
      return result;
    }
  }

LABEL_6:

  sub_25BCB617C();
  return result;
}

uint64_t sub_25BC4E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    if (a6)
    {
      return result;
    }
  }

LABEL_6:
}

uint64_t sub_25BC4E130(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC4E170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4E1FC(void *a1, uint64_t a2)
{
  if (*(v2 + 116) != 0.0 && sub_25BAAF54C(a2) == 4)
  {
    return sub_25BC4E37C(a1, a2);
  }

  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1uLL, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAB4D78(2uLL, v6 == 0, a2);
  if (v6)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v12 = v11;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  sub_25BCB617C();
  v15 = sub_25BC4EAD8(v12, v8, v10, v14, v13, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBB6D0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t sub_25BC4E37C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v34 = v7;
  sub_25BAB4D78(1uLL, v6 == 0, a2);
  if (v6)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  sub_25BAB4D78(2uLL, v6 == 0, a2);
  if (v6)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v11 = v10;
  sub_25BAB4D78(3uLL, v6 == 0, a2);
  if (v6)
  {
    v12 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v12 = *(a2 + 56);
  }

  v13 = v12;
  v14 = *(v3 + 116);
  result = sub_25BAF4B64();
  if (*(result + 16))
  {

    v16 = [a1 constantWithScalar:sub_25BC6640C() dataType:v14];
    v17 = [a1 multiplicationWithPrimaryTensor:v13 secondaryTensor:v16 name:0];
    v32 = v11;
    v33 = v9;
    v18 = [a1 multiplicationWithPrimaryTensor:v9 secondaryTensor:v11 name:0];
    v19 = sub_25BB2BAEC(0x797469636F6C6576, 0xE800000000000000);
    v31 = v17;
    v21 = sub_25BB9FB54(v17, v18, v19, v20, a1);
    if (*(v3 + 120) == 1)
    {
      v22 = [a1 multiplicationWithPrimaryTensor:v21 secondaryTensor:v16 name:0];
      v23 = [a1 subtractionWithPrimaryTensor:v22 secondaryTensor:v18 name:0];
      v24 = sub_25BB2BAEC(0x6574656D61726170, 0xE900000000000072);
      v25 = v34;
      v27 = sub_25BB2B6D4(v34, v23, v24, v26, a1);
    }

    else
    {
      v28 = sub_25BB2BAEC(0x6574656D61726170, 0xE900000000000072);
      v25 = v34;
      v27 = sub_25BB2B6D4(v34, v21, v28, v29, a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    result = swift_allocObject();
    *(result + 16) = xmmword_25BCBAE40;
    if (v27)
    {
      v30 = result;
      *(result + 32) = v27;
      *(result + 40) = v21;

      return v30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4E6FC(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(1uLL, v8, a2);
  if (v5)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v44 = v9;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(2uLL, v10, a2);
  if (v5)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v43 = v11;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(3uLL, v12, a2);
  if (v5)
  {
    v13 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v13 = *(a2 + 56);
  }

  v42 = v13;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(4uLL, v14, a2);
  if (v5)
  {
    v15 = MEMORY[0x25F8779B0](4, a2);
  }

  else
  {
    v15 = *(a2 + 64);
  }

  v41 = v15;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(5uLL, v16, a2);
  if (v5)
  {
    v17 = MEMORY[0x25F8779B0](5, a2);
  }

  else
  {
    v17 = *(a2 + 72);
  }

  v18 = v17;
  if (*(v2 + 128) == 1)
  {
    OUTLINED_FUNCTION_0_81();
    sub_25BAB4D78(6uLL, v19, a2);
    if (v5)
    {
      v20 = MEMORY[0x25F8779B0](6, a2);
    }

    else
    {
      v20 = *(a2 + 80);
    }

    v47 = v20;
  }

  else
  {
    v47 = 0;
  }

  v21 = *(v2 + 116);
  v22 = OUTLINED_FUNCTION_1_66();
  v38 = [a1 constantWithScalar:objc_msgSend(v22 dataType:{v23), v21}];
  v24 = *(v2 + 120);
  v25 = OUTLINED_FUNCTION_1_66();
  v37 = [a1 &off_279972380 + 3];
  v27 = OUTLINED_FUNCTION_1_66();
  v28 = v7;
  v40 = [a1 castTensor:v18 toType:objc_msgSend(v27 name:{v29), 0}];
  v45 = [a1 powerWithPrimaryTensor:v38 secondaryTensor:? name:?];
  v46 = [a1 powerWithPrimaryTensor:v37 secondaryTensor:v40 name:0];
  v30 = *(v2 + 124);
  v31 = OUTLINED_FUNCTION_1_66();
  v39 = [a1 constantWithScalar:objc_msgSend(v31 dataType:{v32), v30}];
  v33 = sub_25BCB633C();
  v34 = [a1 adamWithLearningRateTensor:v41 beta1Tensor:v38 beta2Tensor:v37 epsilonTensor:v39 beta1PowerTensor:v45 beta2PowerTensor:v46 valuesTensor:v7 momentumTensor:v43 velocityTensor:v42 maximumVelocityTensor:v47 gradientTensor:v44 name:v33];

  sub_25BB0607C();
  v35 = sub_25BCB673C();

  return v35;
}

id sub_25BC4EAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 stochasticGradientDescentWithLearningRateTensor:a1 valuesTensor:a2 gradientTensor:a3 name:v10];

  return v11;
}

uint64_t sub_25BC4EBCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_7_50();
  OUTLINED_FUNCTION_7_50();
  v9 = _s9IOMappingVMa(0, v7, *(v6 + 88), v8);
  OUTLINED_FUNCTION_35_8();
  if (sub_25BCB681C() != *(a1 + 16))
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_16_42();
    MEMORY[0x25F876C90](v62 + 3, v63 | 0x8000000000000000);
    OUTLINED_FUNCTION_11_3();
    v64 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v64);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000017);
    OUTLINED_FUNCTION_35_8();
    v78 = sub_25BCB681C();
    OUTLINED_FUNCTION_11_3();
    v65 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v65);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_6_52("Fatal error", v66, v67, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v68, v69, 118, 0);
    __break(1u);

    swift_unknownObjectRelease();
    v81 = 0xD00000000000003BLL;
    v82 = 0x800000025BCE4C80;
    v86 = 9;
    OUTLINED_FUNCTION_54_14();
    v61 = 126;
    goto LABEL_37;
  }

  sub_25BC4F794();
  v11 = v10;
  swift_getObjectType();
  v12 = OUTLINED_FUNCTION_5_17();
  v72 = 0;
  v14 = v13(v12);
  v16 = v15;
  swift_unknownObjectRelease();
  v76 = v3;
  v17 = *(v3 + 24);
  sub_25BCB617C();
  v80 = sub_25BCB674C();
  v77 = v17 + 32;
  v74 = v14 + 32;
  v18 = MEMORY[0x277D84F90];
  v75 = v17;
  while (1)
  {
    OUTLINED_FUNCTION_34_0();
    if (v80 == sub_25BCB681C())
    {
      break;
    }

    OUTLINED_FUNCTION_34_0();
    v19 = sub_25BCB67FC();
    OUTLINED_FUNCTION_45_16(v19);
    if ((a2 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_24();
      sub_25BCB717C();
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      OUTLINED_FUNCTION_13_24();
      sub_25BCB717C();
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_25BCB70FC();
      v78 = v81;
      v79 = v82;
      OUTLINED_FUNCTION_16_42();
      MEMORY[0x25F876C90](v52 + 38, v53 | 0x8000000000000000);
      MEMORY[0x25F876C90](v11, a2);
      OUTLINED_FUNCTION_29_28();
      v81 = v78;
      v82 = v79;
      v86 = 9;
      sub_25BCB617C();
      OUTLINED_FUNCTION_54_14();
      v61 = 187;
LABEL_37:
      sub_25BA97890(v54, v55, v56, v57, v58, v59, v61, v60, v70, v71, v72, a3, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
    }

    v20 = (v77 + 48 * v80);
    v21 = v20[1];
    v22 = v20[2];
    v11 = v20[3];
    a2 = v20[4];
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_13_24();
    sub_25BCB68AC();
    if (!*(v16 + 16))
    {
      goto LABEL_36;
    }

    v23 = sub_25BA9266C(v11, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_36;
    }

    v25 = *(*(v16 + 56) + 8 * v23);
    if (!*(v25 + 16))
    {
      goto LABEL_36;
    }

    sub_25BCB617C();

    if (!*(v25 + 16))
    {
      goto LABEL_30;
    }

    a2 = *(v25 + 32);

    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (a2 >= *(v14 + 16))
    {
      goto LABEL_32;
    }

    v26 = v16;
    v27 = v9;
    v28 = v14;
    v29 = *(v74 + 32 * a2 + 24);
    sub_25BABEF40(v76 + 32, &v81);
    type metadata accessor for TensorRepresentation();
    v30 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v32 = swift_unknownObjectRetain_n();
    LOBYTE(v78) = 1;
    a2 = sub_25BAA5BB4(v32, &v81, 0x100000000, v30, ObjectType, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_45();
      sub_25BAD80BC();
      v18 = v36;
    }

    v34 = *(v18 + 16);
    v33 = *(v18 + 24);
    v11 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      OUTLINED_FUNCTION_81(v33);
      sub_25BAD80BC();
      v18 = v37;
    }

    swift_unknownObjectRelease();
    *(v18 + 16) = v11;
    v35 = (v18 + 24 * v34);
    v35[4] = v21;
    v35[5] = v22;
    v35[6] = a2;
    v14 = v28;
    v9 = v27;
    v16 = v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v82 = sub_25BCB614C();
  v38 = sub_25BAD8178(v18);

  v81 = v38;
  sub_25BAD8324(v39);

  v40 = v81;
  v11 = v82;
  v78 = MEMORY[0x277D84FA0];
  sub_25BCB617C();
  v41 = sub_25BCB674C();
  v80 = v41;
  OUTLINED_FUNCTION_34_0();
  if (v41 != sub_25BCB681C())
  {
    v76 = v40 + 32;
    do
    {
      OUTLINED_FUNCTION_34_0();
      v42 = sub_25BCB67FC();
      OUTLINED_FUNCTION_45_16(v42);
      if ((a2 & 1) == 0)
      {
        goto LABEL_33;
      }

      v43 = (v77 + 48 * v41);
      v44 = *v43;
      v46 = *(v43 + 1);
      v45 = *(v43 + 2);
      sub_25BCB617C();
      OUTLINED_FUNCTION_13_24();
      sub_25BCB68AC();
      if (v44 == 2 && *(v11 + 16) && (v47 = sub_25BA9266C(v46, v45), (v48 & 1) != 0) && (v49 = *(*(v11 + 56) + 8 * v47), *(v49 + 16)))
      {
        v50 = *(v49 + 32);
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v50 >= *(v40 + 16))
        {
          goto LABEL_35;
        }

        a2 = *(v76 + 24 * v50 + 16);
        sub_25BCB617C();

        sub_25BADBE78(&v81, v46, v45);

        type metadata accessor for TensorHandle();
        *(swift_allocObject() + 16) = a2;

        sub_25BAA6EB0();
        swift_isUniquelyReferenced_nonNull_native();
        v81 = *a3;
        sub_25BC19C08();

        *a3 = v81;
      }

      else
      {
      }

      OUTLINED_FUNCTION_34_0();
      v41 = v80;
    }

    while (v80 != sub_25BCB681C());
  }

  sub_25BBAC340(v40, v11, &v78);
  OUTLINED_FUNCTION_30();

  return v9;
}

uint64_t sub_25BC4F2EC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x277D84F98];
  sub_25BC4EBCC(a1, a2, &v4);
  OUTLINED_FUNCTION_30();

  return v2;
}

uint64_t sub_25BC4F338()
{
  OUTLINED_FUNCTION_25_28();
  v0 = swift_allocObject();
  sub_25BC50248();
  return v0;
}

uint64_t sub_25BC4F3A4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v4 = v11;
    v6 = *(v11 + 16);
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v11 + 24);

      if (v6 >= v9 >> 1)
      {
        sub_25BAC5590();
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 3;
      ++v6;
      --v3;
    }

    while (v3);
  }

  (*(*v2 + 96))(v4);
}

uint64_t sub_25BC4F4CC()
{
  result = sub_25BC4F9C0();
  if (!v1)
  {
    *(v0 + 328) = result;
    *(v0 + 336) = v3;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_25BC4F508()
{
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_7_50();
  OUTLINED_FUNCTION_7_50();
  v4 = _s9IOMappingVMa(255, v2, *(v1 + 88), v3);
  OUTLINED_FUNCTION_41(v4);
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v6;
}

uint64_t *sub_25BC4F62C()
{
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_7_50();
  v4 = _s9IOMappingVMa(255, *(v1 + 80), *(v2 + 88), v3);
  OUTLINED_FUNCTION_41(v4);
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_22();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v6;
}

uint64_t sub_25BC4F6FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_25BC4F710(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 328) = 0;
  *(v8 + 336) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 32);
  *(v8 + 80) = *(a3 + 48);
  memcpy((v8 + 88), a4, 0xECuLL);
  return v8;
}

uint64_t sub_25BC4F794()
{
  if (!*(v0 + 328))
  {
    *(v0 + 328) = sub_25BC4F9C0();
    *(v0 + 336) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t sub_25BC4F9C0()
{
  v2 = v0;
  v3 = (v0 + 4);
  v4 = *v0;
  sub_25BAC27B0((v0 + 4), &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if (swift_dynamicCast())
  {
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    sub_25BABEF40(v3, v17);
    v5 = sub_25BC743BC(v17);
    sub_25BABF0A8(v17);
    if (v1)
    {
      goto LABEL_5;
    }

    if (v5)
    {
      sub_25BAD6FB0((v2 + 11), v17);
      type metadata accessor for MPSGraphExecutor();
      swift_allocObject();
      v4 = sub_25BBB4A0C(v17, v5);
      goto LABEL_5;
    }

LABEL_10:
    v7 = 5591111;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_25BCB70FC();

    v21 = 0xD00000000000002DLL;
    v22 = 0x800000025BCE4C10;
    sub_25BABEF40(v3, v17);
    v8 = v18;
    if (v18)
    {
      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v9 = 0xED0000656E69676ELL;
          v7 = 0x45206C617275654ELL;
        }

        else
        {
          v19 = 5591111;
          v20 = 0xE300000000000000;
          swift_unknownObjectRetain();
          MEMORY[0x25F876C90](10272, 0xE200000000000000);
          swift_getObjectType();
          v10 = sub_25BC17678();
          MEMORY[0x25F876C90](v10);

          MEMORY[0x25F876C90](41, 0xE100000000000000);
          sub_25BB7304C(v8);
          v7 = v19;
          v9 = v20;
        }

        goto LABEL_17;
      }

      v7 = 5591107;
    }

    v9 = 0xE300000000000000;
LABEL_17:
    MEMORY[0x25F876C90](v7, v9);

    sub_25BABF0A8(v17);
    MEMORY[0x25F876C90](96, 0xE100000000000000);
    v11 = v21;
    v12 = v22;
    v13 = *(v4 + 80);
    v4 = *(v4 + 88);
    type metadata accessor for Function.CompilationError(0, v13, v4, v14);
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(v11, v12, v15);
    swift_willThrow();
    return v4;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  type metadata accessor for EspressoV1Executor();
  sub_25BAD6FB0((v0 + 11), v17);
  sub_25BB6FC6C();
  v4 = v6;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(&v21);
  return v4;
}

double sub_25BC4FD20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(a1 + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v8;
    sub_25BCB617C();
  }

  return result;
}

void sub_25BC4FDC4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == 1)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(a1 + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v8;
    sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_25BC4FE6C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == 2)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(a1 + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v8;
    sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_25BC4FF14(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == 3)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(a1 + 40);
    v7 = *(a2 + 240);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v8;
    sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_25BC4FFBC()
{

  sub_25BABF0A8(v0 + 32);
  sub_25BA9AC78(v0 + 88);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_25BC4FFFC()
{
  sub_25BC4FFBC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC500B0(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BADE7BC(v3, *v1);
  return sub_25BCB7A3C();
}

void sub_25BC50110()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    v2 = sub_25BCB749C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25BB00520();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = OUTLINED_FUNCTION_26_0();
          v5 = MEMORY[0x25F8779B0](v4);
        }

        else
        {
          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = *(v5 + 152);
        v7 = *(v5 + 160);
        sub_25BCB617C();

        v9 = *(v11 + 16);
        v8 = *(v11 + 24);
        if (v9 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_81(v8);
          sub_25BB00520();
        }

        ++v3;
        *(v11 + 16) = v9 + 1;
        v10 = v11 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_25BC50248()
{
  OUTLINED_FUNCTION_25_28();
  v7 = OUTLINED_FUNCTION_46_20();
  v9 = sub_25BAA5EA0(v7, v8);
  v10 = v3[1];
  *(v1 + 56) = *v3;
  *(v1 + 16) = v9;
  *(v1 + 24) = v11;
  *(v1 + 32) = v12;
  *(v1 + 120) = v6;
  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 72) = v10;
  *(v1 + 88) = v3[2];
  *(v1 + 98) = *(v3 + 42);
  return v1;
}

void sub_25BC502BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_80();
  v31 = v30;
  v33 = v32;
  swift_beginAccess();
  v34 = sub_25BAAF54C(*(v30 + 120));
  if (v34 < 0)
  {
    goto LABEL_38;
  }

  v35 = v34;
  if (v34)
  {
    v36 = 4;
    do
    {
      v37 = v36 - 4;
      swift_beginAccess();
      v38 = *(v31 + 120);
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v36 - 4);
      }

      else
      {
        if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
LABEL_39:
          __break(1u);
          return;
        }
      }

      swift_endAccess();
      v39 = sub_25BAC4018();

      if (v39 == sub_25BAC4018())
      {
        swift_beginAccess();
        v40 = *(v31 + 120);

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v31 + 120) = v40;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
        {
          v40 = sub_25BBF1390(v40);
          *(v31 + 120) = v40;
        }

        if (v37 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v36) = v33;
        *(v31 + 120) = v40;
        swift_endAccess();
      }

      ++v36;
      --v35;
    }

    while (v35);
  }

  swift_beginAccess();
  v42 = sub_25BAAF54C(*(v31 + 128));
  if (v42 < 0)
  {
    goto LABEL_39;
  }

  v43 = v42;
  if (v42)
  {
    v44 = 4;
    do
    {
      v45 = v44 - 4;
      swift_beginAccess();
      v46 = *(v31 + 128);
      if ((v46 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v44 - 4);
      }

      else
      {
        if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      swift_endAccess();
      v47 = sub_25BAC4018();

      if (v47 == sub_25BAC4018())
      {
        swift_beginAccess();
        v48 = *(v31 + 128);

        v49 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v31 + 128) = v48;
        if (!v49 || (v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
        {
          v48 = sub_25BBF1390(v48);
          *(v31 + 128) = v48;
        }

        if (v45 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        *((v48 & 0xFFFFFFFFFFFFFF8) + 8 * v44) = v33;
        *(v31 + 128) = v48;
        swift_endAccess();
      }

      ++v44;
      --v43;
    }

    while (v43);
  }

  OUTLINED_FUNCTION_79();
}

uint64_t sub_25BC5056C()
{

  sub_25BA9D148(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_25BC505AC()
{
  sub_25BC5056C();

  return swift_deallocClassInstance();
}

double sub_25BC505F8()
{
  swift_beginAccess();
  sub_25BCB617C();
  return result;
}

uint64_t sub_25BC506A0(uint64_t a1)
{
  sub_25BCB625C();
}

void sub_25BC5070C()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890(v0, v1, v2, v3, v4, v5, 390, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
}

uint64_t sub_25BC50834()
{
  OUTLINED_FUNCTION_15_38();
  v1 = OUTLINED_FUNCTION_15();
  sub_25BC50860(v1);
  return v0;
}

uint64_t sub_25BC50860(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_27_28();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_27_28();
  v6 = sub_25BCB6ABC();
  OUTLINED_FUNCTION_11_1();
  (*(v7 + 8))(a1, v5);
  *(v2 + 16) = v6;
  return v2;
}

void sub_25BC508F0()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_7_50();
  v4 = *(v3 + 112);
  v5 = *(v4 + 8);
  v6 = sub_25BCB754C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  OUTLINED_FUNCTION_26_0();
  v12 = sub_25BCB6ABC();
  v13 = *(v0 + 16);
  if (v12 == v13)
  {
    MEMORY[0x25F876DF0](v2, v5);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    v28 = v4;
    WitnessTable = swift_getWitnessTable();
    sub_25BAB2B20(sub_25BC50B5C, 0, v6, v14, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
    (*(v8 + 8))(v11, v6);
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    OUTLINED_FUNCTION_16_42();
    MEMORY[0x25F876C90](v17 + 4, v18 | 0x8000000000000000);
    v29 = v13;
    v19 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v19);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000017);
    OUTLINED_FUNCTION_26_0();
    v29 = sub_25BCB6ABC();
    v20 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v20);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_6_52("Fatal error", v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v25, v26, 411, v28);
    __break(1u);
  }
}

double sub_25BC50B5C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v4);

  *a2 = 0x5F7475706E69;
  a2[1] = v6;
  a2[2] = v3;

  return result;
}

uint64_t sub_25BC50C10()
{
  OUTLINED_FUNCTION_15_38();
  v1 = OUTLINED_FUNCTION_15();
  sub_25BC50C3C(v1);
  return v0;
}

uint64_t sub_25BC50C3C(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_27_28();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_27_28();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_27_28();
  OUTLINED_FUNCTION_27_28();
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_28_26();
  v14 = sub_25BAB2B20(v8, v9, v5, v10, v11, v7, v12, v13);

  OUTLINED_FUNCTION_11_1();
  (*(v15 + 8))(a1, v5);
  *(v2 + 16) = v14;
  return v2;
}

uint64_t sub_25BC50D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  (*(v6 + 16))(v16 - v11, v10);
  v13 = *(v5 + 48);
  v14 = *&v12[v13];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v8, v12);
  *&v8[v13] = v14;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

void sub_25BC50F34()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v2 = *v0;
  v81 = v2;
  v82 = v3;
  v4 = *(v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v72 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v80 = &v69 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v87 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v79 = &v69 - v15;
  MEMORY[0x28223BE20](v16);
  v75 = &v69 - v17;
  v18 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48_6();
  v85 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v76 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v84 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v83 = &v69 - v24;
  v25 = *(*(v2 + 112) + 8);
  v69 = sub_25BCB754C();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  v27 = v25;
  v86 = sub_25BCB753C();
  OUTLINED_FUNCTION_2();
  v70 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = OUTLINED_FUNCTION_42_20();
  v78 = v1[2];
  if (v32 != sub_25BCB681C())
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_42_20();
  sub_25BAFD4A8();
  v88 = v33;
  MEMORY[0x25F876DF0](v4, v27);
  sub_25BCB751C();
  v82 = (v76 + 4);
  v76 = (v72 + 4);
  v77 = AssociatedTypeWitness;
  v34 = (v72 + 1);
  v35 = (v71 + 16);
  v71 += 8;
  v72 = v35;
  v73 = v18;
  for (i = v31; ; v31 = i)
  {
    sub_25BCB752C();
    v36 = v83;
    v37 = OUTLINED_FUNCTION_5_17();
    v38(v37);
    if (__swift_getEnumTagSinglePayload(v36, 1, v18) == 1)
    {
      break;
    }

    v39 = *(v18 + 48);
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = v34;
    v42 = *(v36 + v39 + v40);
    v43 = TupleTypeMetadata2;
    v44 = *v76;
    v45 = v79;
    (*v76)(v79);
    *&v45[v40] = v42;
    v46 = *(TupleTypeMetadata2 + 48);
    v47 = v75;
    (v44)(v75, v45, AssociatedTypeWitness);
    *&v47[v46] = v42;
    v34 = v41;
    sub_25BCB690C();
    OUTLINED_FUNCTION_110();
    v48 = sub_25BCB630C();
    v49 = *v41;
    v50 = OUTLINED_FUNCTION_35_8();
    v49(v50);
    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_122_0();
      v69 = 438;
      v63 = 0;
      v64 = 0xE000000000000000;
      while (1)
      {
        sub_25BCB74CC("Fatal error", 11, 2, v63, v64, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", 119, 2, v69);
        __break(1u);
LABEL_11:
        OUTLINED_FUNCTION_17_39();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_16_42();
        MEMORY[0x25F876C90](v65 + 4, v66 | 0x8000000000000000);
        v89 = sub_25BCB681C();
        OUTLINED_FUNCTION_92();
        v67 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v67);

        OUTLINED_FUNCTION_8_3();
        MEMORY[0x25F876C90](0xD000000000000017);
        v89 = OUTLINED_FUNCTION_42_20();
        OUTLINED_FUNCTION_92();
        v68 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v68);

        OUTLINED_FUNCTION_29_28();
        OUTLINED_FUNCTION_122_0();
        v69 = 432;
      }
    }

    OUTLINED_FUNCTION_17_39();
    OUTLINED_FUNCTION_26_0();
    sub_25BCB784C();
    v52 = v90;
    v51 = v91;
    v53 = v87;
    (*v72)(v87, v47, TupleTypeMetadata2);
    v54 = *(v53 + *(TupleTypeMetadata2 + 48));
    v56 = *(v88 + 16);
    v55 = *(v88 + 24);
    if (v56 >= v55 >> 1)
    {
      OUTLINED_FUNCTION_81(v55);
      sub_25BAFD4A8();
      v88 = v62;
    }

    v57 = OUTLINED_FUNCTION_92();
    v58(v57);
    v59 = v87;
    v60 = v88;
    *(v88 + 16) = v56 + 1;
    v61 = (v60 + 24 * v56);
    v61[4] = v52;
    v61[5] = v51;
    v61[6] = v54;
    TupleTypeMetadata2 = v43;
    AssociatedTypeWitness = v77;
    v49(v59);
    v18 = v73;
  }

  (*(v70 + 8))(v31, v86);
  sub_25BAF9928(v88);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC5169C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  OUTLINED_FUNCTION_7_50();
  OUTLINED_FUNCTION_7_50();
  OUTLINED_FUNCTION_37_22();
  sub_25BCB617C();
  OUTLINED_FUNCTION_48_6();
  sub_25BCB616C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_22();
  sub_25BCB6A5C();
  v0 = sub_25BCB6A0C();

  if (v0)
  {
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_48_6();
    sub_25BCB68CC();
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
    OUTLINED_FUNCTION_7_2();
    swift_getWitnessTable();
    sub_25BCB65BC();

    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE4B80);
    OUTLINED_FUNCTION_48_6();
    sub_25BCB6A4C();
    swift_getWitnessTable();
    sub_25BCB785C();
    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000010);
    OUTLINED_FUNCTION_92();
    v8 = sub_25BCB617C();
    swift_getWitnessTable();
    sub_25BCB785C();

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_6_52("Fatal error", v2, v3, v4, v5, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v6, v7, 460, v8);
    __break(1u);
  }
}

uint64_t sub_25BC51954@<X0>(void *a5@<X8>)
{
  result = sub_25BCB61BC();
  if (v8)
  {
    result = sub_25BCB784C();
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0;
  }

  *a5 = 0;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t sub_25BC519E8()
{
  sub_25BC520C4();

  return swift_deallocClassInstance();
}

void sub_25BC51AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_80();
  v31 = v30;
  OUTLINED_FUNCTION_5_54();
  v33 = *(v32 + 112);
  OUTLINED_FUNCTION_7_50();
  v35(*(v34 + 104), v33);
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = OUTLINED_FUNCTION_41(TupleTypeMetadata2);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v39 = OUTLINED_FUNCTION_28_26();
  v45 = sub_25BAB2B20(v39, v40, v38, AssociatedTypeWitness, v41, v42, v43, v44);

  *(v31 + 24) = v45;
  sub_25BCB68CC();
  swift_getAssociatedConformanceWitness();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v46 = sub_25BCB6A5C();
  OUTLINED_FUNCTION_11_1();
  v47 = OUTLINED_FUNCTION_11_3();
  v48(v47);
  *(v31 + 16) = v46;
  OUTLINED_FUNCTION_79();
}

uint64_t sub_25BC51CA0()
{
  OUTLINED_FUNCTION_5_54();
  OUTLINED_FUNCTION_7_50();
  v0 = OUTLINED_FUNCTION_5_17();
  v1(v0);
  OUTLINED_FUNCTION_49_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41(AssociatedTypeWitness);
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v3 = OUTLINED_FUNCTION_11_3();
  MEMORY[0x25F876DF0](v3);
  OUTLINED_FUNCTION_49_0();
  sub_25BCB754C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  v4 = sub_25BCB65BC();

  return v4;
}

uint64_t sub_25BC51DF0@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v6 = &v19 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  swift_getTupleTypeMetadata2();
  sub_25BCB690C();
  swift_getAssociatedConformanceWitness();
  v11 = sub_25BCB630C();
  v12 = *(v7 + 8);
  v12(v10, AssociatedTypeWitness);
  if (v11)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_25BCB784C();
    v13 = v23;
    v14 = v24;
    v15 = TupleTypeMetadata2;
    sub_25BCB690C();
    v16 = *&v6[*(v15 + 48)];
    v17 = v22;
    *v22 = v13;
    v17[1] = v14;
    v17[2] = v16;
    return (v12)(v6, AssociatedTypeWitness);
  }

  else
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", 119, 2, 487);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC52094()
{
}

uint64_t sub_25BC520C4()
{

  return v0;
}

uint64_t sub_25BC52118()
{
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_15();
  sub_25BC52144();
  return v0;
}

void sub_25BC52144()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v3 = *v0;
  v71 = v0;
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = sub_25BCB7BDC();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_161_0();
  v74 = type metadata accessor for RecursiveStoredPropertiesIterator(v12, v13, v14, v15);
  OUTLINED_FUNCTION_2();
  v67 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_25BCB604C();
  v68 = v6;
  v69 = v4;
  v70 = v2;
  OUTLINED_FUNCTION_49_0();
  v20();
  v73 = v19;
  sub_25BAB1090(v9, 0, 0, v10, WitnessTable, v19);
LABEL_2:
  sub_25BAB173C(v74, &v81);
  if (!v81)
  {
    (*(v68 + 8))(v70, v69);
    (*(v67 + 8))(v73, v74);
    v71[2] = v87;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v77 = v81;
  v21 = v82;
  v22 = v82[2];
  sub_25BCB617C();
  v23 = v21;
  if (v22 <= 1)
  {
    goto LABEL_13;
  }

  v24 = sub_25BBFCCC8(1, v21);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

  v32 = v21;
  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);

  if (!__OFSUB__(v30 >> 1, v28))
  {
    if (v34 == (v30 >> 1) - v28)
    {
      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v21 = v32;
      if (v23)
      {
LABEL_13:
        v76 = v21;
        v35 = 0;
        v80 = *(v23 + 16);
        v36 = v23 + 40;
        v78 = MEMORY[0x277D84F90];
        v79 = v23;
        v75 = v23 + 40;
LABEL_14:
        for (i = (v36 + 16 * v35); ; i += 2)
        {
          if (v80 == v35)
          {

            v81 = v78;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
            OUTLINED_FUNCTION_9_48();
            OUTLINED_FUNCTION_161_0();
            sub_25BB30E7C(v63, v64, v65, v66);
            sub_25BCB627C();
            OUTLINED_FUNCTION_30();

            v81 = i;
            v82 = &v81;
            v83 = v77;
            sub_25BCB68CC();
            sub_25BCB687C();

            goto LABEL_2;
          }

          if (v35 >= *(v23 + 16))
          {
            break;
          }

          v38 = *(i - 1);
          if ((*i & 0x2000000000000000) != 0)
          {
            v39 = HIBYTE(*i) & 0xFLL;
          }

          else
          {
            v39 = v38 & 0xFFFFFFFFFFFFLL;
          }

          v40 = 7;
          if (((*i >> 60) & ((v38 & 0x800000000000000) == 0)) != 0)
          {
            v40 = 11;
          }

          v41 = v40 | (v39 << 16);
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_44_16();
          sub_25BCB654C();

          v42 = sub_25BCB6EBC();
          v44 = v43;

          sub_25BCB617C();
          v45 = OUTLINED_FUNCTION_44_16();
          if (v46)
          {
            v45 = v41;
          }

          if (4 * v39 < v45 >> 14)
          {
            goto LABEL_38;
          }

          v47 = sub_25BCB654C();
          v49 = v48;
          v51 = v50;
          v53 = v52;

          v85 = v42;
          v86 = v44;
          v81 = v47;
          v82 = v49;
          v83 = v51;
          v84 = v53;
          sub_25BC43580();
          sub_25BCB644C();

          v55 = v85;
          v54 = v86;
          v56 = HIBYTE(v86) & 0xF;
          if ((v86 & 0x2000000000000000) == 0)
          {
            v56 = v85 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_45();
              sub_25BAB1E30();
              v78 = v61;
            }

            v58 = v78[2];
            v57 = v78[3];
            if (v58 >= v57 >> 1)
            {
              OUTLINED_FUNCTION_81(v57);
              sub_25BAB1E30();
              v78 = v62;
            }

            ++v35;
            v59 = v78;
            v78[2] = v58 + 1;
            v60 = &v59[2 * v58];
            v60[4] = v55;
            v60[5] = v54;
            v23 = v79;
            v36 = v75;
            goto LABEL_14;
          }

          ++v35;
          v23 = v79;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v23 = MEMORY[0x277D84F90];
LABEL_12:
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v21 = v32;
LABEL_5:
    sub_25BAFFAD0(v24, v26, v28, v30);
    v23 = v31;
    goto LABEL_12;
  }

LABEL_39:
  __break(1u);
}

uint64_t *sub_25BC526CC()
{
  v11 = *(v0 + 16);
  sub_25BCB7BDC();
  OUTLINED_FUNCTION_15();
  sub_25BCB617C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_41(TupleTypeMetadata2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  sub_25BAB2B20(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_15();

  return &v11;
}

uint64_t sub_25BC527BC@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  sub_25BCB617C();
  return swift_getAtKeyPath();
}

uint64_t sub_25BC5283C()
{
  sub_25BC5281C();

  return swift_deallocClassInstance();
}

void sub_25BC52888()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890(v0, v1, v2, v3, v4, v5, 538, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
}

void sub_25BC528D8()
{
  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_54_14();
  sub_25BA97890(v0, v1, v2, v3, v4, v5, 547, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);
}

uint64_t sub_25BC52954(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E0, &qword_25BCBB968);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25BCBAE50;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = v5;

  return v6;
}

void sub_25BC529C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = *(a1 + 32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BC52A00(uint64_t a1)
{
  v2 = *(a1 + 16);

  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_25BC52A2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(v1 + 16))
  {
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v20 = MEMORY[0x277D84F90];
      sub_25BB005D0(0, v2, 0);
      v5 = 0;
      v3 = v20;
      do
      {
        v6 = *(a1 + 32 + 8 * v5);

        v7 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v7);

        v9 = *(v20 + 16);
        v8 = *(v20 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = OUTLINED_FUNCTION_81(v8);
          sub_25BB005D0(v11, v9 + 1, 1);
        }

        ++v5;
        *(v20 + 16) = v9 + 1;
        v10 = (v20 + 24 * v9);
        v10[4] = 0x5F74757074756FLL;
        v10[5] = 0xE700000000000000;
        v10[6] = v6;
      }

      while (v2 != v5);
    }

    return v3;
  }

  else
  {
    sub_25BCB70FC();
    v13 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v13);
    OUTLINED_FUNCTION_110();
    v14 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v14);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_110();
    v15 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v15);

    OUTLINED_FUNCTION_29_28();
    result = OUTLINED_FUNCTION_6_52("Fatal error", v16, v17, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v18, v19, 577, 0);
    __break(1u);
  }

  return result;
}

void sub_25BC52C34(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 16))
  {

    sub_25BCB617C();
  }

  else
  {
    sub_25BCB70FC();
    v2 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v2);
    OUTLINED_FUNCTION_92();
    v3 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v3);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_92();
    v4 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v4);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_6_52("Fatal error", v5, v6, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v7, v8, 584, 0);
    __break(1u);
  }
}

void sub_25BC52E4C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_54();
  v40 = v2;
  v41 = v1;
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = *(v0 + 16);
  sub_25BCB681C();
  sub_25BAFDDD8();
  v15 = v14;
  sub_25BCB617C();
  v16 = sub_25BCB674C();
  v43 = v16;
  v38 = (v6 + 32);
  v39 = (v6 + 16);
  v36 = v6;
  v37 = v6 + 8;
  while (1)
  {
    if (v16 == sub_25BCB681C())
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v17 = sub_25BCB67FC();
    sub_25BCB677C();
    if (v17)
    {
      (*(v36 + 16))(v12, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v16, v4);
      goto LABEL_5;
    }

    v27 = sub_25BCB717C();
    if (v35 != 8)
    {
      break;
    }

    v42[0] = v27;
    (*v39)(v12, v42, v4);
    swift_unknownObjectRelease();
LABEL_5:
    sub_25BCB68AC();
    v18 = v12;
    (*v38)(v9, v12, v4);
    sub_25BCB61BC();
    v19 = v42[0];
    if (!v42[0])
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_17_39();
    OUTLINED_FUNCTION_35_8();
    sub_25BCB784C();
    v21 = v42[0];
    v20 = v42[1];
    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_81(v22);
      sub_25BAFDDD8();
      v15 = v28;
    }

    v24 = OUTLINED_FUNCTION_35_8();
    v25(v24);
    *(v15 + 16) = v23 + 1;
    v26 = (v15 + 24 * v23);
    v26[4] = v21;
    v26[5] = v20;
    v26[6] = v19;
    v16 = v43;
    v12 = v18;
  }

  __break(1u);
LABEL_13:
  OUTLINED_FUNCTION_17_39();
  sub_25BCB70FC();
  OUTLINED_FUNCTION_8_3();
  MEMORY[0x25F876C90](0xD000000000000029);
  OUTLINED_FUNCTION_35_8();
  sub_25BCB784C();
  OUTLINED_FUNCTION_29_28();
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_6_52("Fatal error", v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v33, v34, 606, v36);
  __break(1u);
}

uint64_t sub_25BC531A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_7_50();
  OUTLINED_FUNCTION_35_8();
  if (v1 == sub_25BCB681C())
  {
    sub_25BCB68CC();
    v2 = OUTLINED_FUNCTION_110();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    v4 = MEMORY[0x277D83970];
    swift_getWitnessTable();
    sub_25BB30E7C(&qword_27FBB4A00, &qword_27FBB49F0, &unk_25BCC0140, v4);
    sub_25BCB793C();
    sub_25BCB715C();
    OUTLINED_FUNCTION_5_5();
    swift_getWitnessTable();
    return sub_25BCB615C();
  }

  else
  {
    OUTLINED_FUNCTION_56_12();
    v6 = OUTLINED_FUNCTION_4_60();
    MEMORY[0x25F876C90](v6);
    OUTLINED_FUNCTION_35_8();
    sub_25BCB681C();
    OUTLINED_FUNCTION_8_49();
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_8_49();
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);

    OUTLINED_FUNCTION_29_28();
    result = OUTLINED_FUNCTION_6_52("Fatal error", v9, v10, v13, v14, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction+Types.swift", v11, v12, 614, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC533F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC531A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC53464()
{
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_15();
  sub_25BC53490();
  return v0;
}

uint64_t sub_25BC53490()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_54();
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_7_50();
  v5(*(v4 + 112), v3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_37_22();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = OUTLINED_FUNCTION_41(TupleTypeMetadata2);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  v9 = OUTLINED_FUNCTION_28_26();
  v15 = sub_25BAB2B20(v9, v10, v8, AssociatedTypeWitness, v11, v12, v13, v14);

  OUTLINED_FUNCTION_11_1();
  v16 = OUTLINED_FUNCTION_11_3();
  v17(v16);

  *(v1 + 16) = v15;
  return v1;
}

uint64_t sub_25BC53610@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v2 = *(*a1 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  (*(v4 + 16))(v17 - v11, v10);
  v13 = *(v2 + 48);
  v14 = *&v12[v13];
  OUTLINED_FUNCTION_11_1();
  (*(v15 + 32))(v8, v12);
  *(v8 + v13) = v14;
  swift_getAtKeyPath();
  return (*(v4 + 8))(v8, v2);
}

uint64_t *sub_25BC537A4()
{
  OUTLINED_FUNCTION_5_54();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_7_50();
  v14 = v3(*(v2 + 112), v1);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_41(TupleTypeMetadata2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_26();
  OUTLINED_FUNCTION_30_26();
  sub_25BAB2B20(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_15();

  return &v14;
}

uint64_t sub_25BC538C8@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v13 - v9;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_25BCB784C();
  v11 = v14;
  *a4 = v13;
  a4[1] = v11;
  (*(v8 + 16))(v10, a1, TupleTypeMetadata2);
  a4[2] = *&v10[*(TupleTypeMetadata2 + 48)];
  return (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_25BC53CF0()
{
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  sub_25BC53D2C();
  return v0;
}

uint64_t sub_25BC53D2C()
{
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))();
  return v0;
}

void sub_25BC53D7C()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v3 = *(*v0 + 112);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = sub_25BCB7BDC();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v11 = OUTLINED_FUNCTION_48_6();
  v79 = type metadata accessor for RecursiveStoredPropertiesIterator(v11, v12, WitnessTable, v13);
  OUTLINED_FUNCTION_2();
  v76 = v14;
  OUTLINED_FUNCTION_11();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = *(v5 + 16);
  v77 = v2;
  v19(v8, v2, v3, v16);
  v78 = v18;
  sub_25BAB1090(v8, 0, 0, v9, WitnessTable, v18);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25BAB173C(v79, &v87);
    v21 = v87;
    if (!v87)
    {
      (*(v76 + 8))(v78, v79);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v22 = v88;
    v23 = *(v88 + 16);
    sub_25BCB617C();
    v24 = v22;
    if (v23 >= 2)
    {
      break;
    }

LABEL_13:
    v81 = v22;
    v82 = v21;
    v83 = v20;
    v35 = 0;
    v86 = *(v24 + 16);
    v36 = v24 + 40;
    v84 = MEMORY[0x277D84F90];
    v85 = v24;
    v80 = v24 + 40;
LABEL_14:
    v37 = (v36 + 16 * v35);
    while (v86 != v35)
    {
      if (v35 >= *(v24 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v38 = *(v37 - 1);
      if ((*v37 & 0x2000000000000000) != 0)
      {
        v39 = HIBYTE(*v37) & 0xFLL;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      v40 = 7;
      if (((*v37 >> 60) & ((v38 & 0x800000000000000) == 0)) != 0)
      {
        v40 = 11;
      }

      v41 = v40 | (v39 << 16);
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_43_16();
      sub_25BCB654C();
      v43 = v42;

      v44 = sub_25BCB6EBC();
      v46 = v45;

      sub_25BCB617C();
      v47 = OUTLINED_FUNCTION_43_16();
      if (v48)
      {
        v47 = v41;
      }

      if (4 * v39 < v47 >> 14)
      {
        goto LABEL_42;
      }

      sub_25BCB654C();
      OUTLINED_FUNCTION_30();
      v50 = v49;
      v52 = v51;

      v91 = v44;
      v92 = v46;
      v87 = v43;
      v88 = v38;
      v89 = v50;
      v90 = v52;
      sub_25BC43580();
      sub_25BCB644C();

      v53 = v91;
      v54 = v92;
      v55 = HIBYTE(v92) & 0xF;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v55 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v56 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_45();
          sub_25BAB1E30();
          v56 = v60;
        }

        v36 = v80;
        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        if (v58 >= v57 >> 1)
        {
          OUTLINED_FUNCTION_81(v57);
          sub_25BAB1E30();
          v56 = v61;
        }

        ++v35;
        *(v56 + 16) = v58 + 1;
        v84 = v56;
        v59 = v56 + 16 * v58;
        *(v59 + 32) = v53;
        *(v59 + 40) = v54;
        v24 = v85;
        goto LABEL_14;
      }

      v37 += 2;
      ++v35;
      v24 = v85;
    }

    v87 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    OUTLINED_FUNCTION_9_48();
    OUTLINED_FUNCTION_161_0();
    sub_25BB30E7C(v62, v63, v64, v65);
    v66 = sub_25BCB627C();
    v68 = v67;

    swift_getAtKeyPath();

    v69 = v87;
    v20 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_45();
      sub_25BAFDDD8();
      v20 = v73;
    }

    v71 = *(v20 + 16);
    v70 = *(v20 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_81(v70);
      sub_25BAFDDD8();
      v20 = v74;
    }

    *(v20 + 16) = v71 + 1;
    v72 = (v20 + 24 * v71);
    v72[4] = v66;
    v72[5] = v68;
    v72[6] = v69;
  }

  v25 = sub_25BBFCCC8(1, v22);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);

  if (!__OFSUB__(v31 >> 1, v29))
  {
    if (v34 == (v31 >> 1) - v29)
    {
      v24 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v24)
      {
        goto LABEL_13;
      }

      v24 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
LABEL_5:
    sub_25BAFFAD0(v25, v27, v29, v31);
    v24 = v32;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_25BC54328(uint64_t a1)
{
  v2 = *v1;
  v6 = 0;
  v3 = *(v2 + 112);
  v5[2] = a1;
  v5[3] = &v6;
  return sub_25BC54484(v3, sub_25BC5488C, v5, v3);
}

uint64_t sub_25BC54384(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_25BCB736C();
  result = swift_dynamicCastClass();
  if (result)
  {
    if ((*a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*a4 < *(a3 + 16))
    {

      swift_setAtWritableKeyPath();

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        return result;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BC54484(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_25BCB6E6C();
  type metadata accessor for StoredPropertyInfo(0, a4, v8, v9);
  v16 = sub_25BCB604C();
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, a1, a1, &v16, a4, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    swift_beginAccess();
    sub_25BCB617C();
    v13 = sub_25BCB674C();

    v16 = v13;
    while (v16 != sub_25BCB681C())
    {
      v14 = sub_25BCB67FC();
      sub_25BCB677C();
      if (v14)
      {
      }

      else
      {
        sub_25BCB717C();
      }

      sub_25BCB68AC();
      v15 = sub_25BAB1D20();
      a2(v7, v15);
    }

    sub_25BCB6E5C();
    return sub_25BCB6E3C();
  }

  return result;
}

uint64_t sub_25BC546A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BC546DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5471C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC54780(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC547BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t (*sub_25BC547F8(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_25BCA82BC(a3);
  sub_25BAB4D78(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x25F8779B0](a2, a3);
  }

  *a1 = v7;
  return sub_25BC54884;
}

_BYTE *sub_25BC549CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC54B00(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v3 = sub_25BB720F0();
      if (sub_25BCA6178() == v2)
      {
        return v3;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_25BC54B84(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size_0(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_25BC54C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_25BB722FC(*(a1 + 16), 0);
  sub_25BCA5358();
  v4 = v3;
  sub_25BAB3820(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t basicAdam(parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:)(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float a9, float a10, float a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v93 = a4;
  v92 = a3;
  v91 = a2;
  v90 = a1;
  v87 = sub_25BCB783C();
  v21 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a5;
  v25 = *a6;
  v26 = *a7;
  v85 = *a8;
  v83 = *a12;
  v86 = *a13;
  v84 = *a14;
  OUTLINED_FUNCTION_3_54();
  LOBYTE(a6) = *(v27 + 160);
  v28 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v28, v29);
  v30 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v32 = OUTLINED_FUNCTION_56(v31);
  v94 = xmmword_25BCBAE50;
  *(v32 + 16) = xmmword_25BCBAE50;
  *(v32 + 32) = a9;
  v96 = a6;
  v33 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v33, v34);
  v35 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v35, v32, v36, v37, v38);
  sub_25BA9C2C8(v99);
  sub_25BA9C2C8(v100);
  v39 = v98;
  OUTLINED_FUNCTION_3_54();
  v41 = *(v40 + 160);
  v42 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v42, v43);
  v97 = v30;
  v89 = v31;
  v44 = OUTLINED_FUNCTION_56(v31);
  *(v44 + 16) = v94;
  *(v44 + 32) = a10;
  v96 = v41;
  v45 = v30;
  v46 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v46, v47);
  v48 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v48, v44, v49, v50, v51);
  sub_25BA9C2C8(v99);
  sub_25BA9C2C8(v100);
  v52 = v98;
  OUTLINED_FUNCTION_3_54();
  LOBYTE(v44) = *(v53 + 160);
  v54 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v54, v55);
  v97 = v30;
  v96 = v44;
  v56 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v56, v57);
  v58 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v58, v59, v60, v61, v62);
  sub_25BA9C2C8(v99);
  sub_25BA9C2C8(v100);
  v63 = v98;
  v100[0] = v39;
  v99[0] = v26;
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();
  v100[0] = v63;
  v99[0] = v39;
  OUTLINED_FUNCTION_6_6();
  static Tensor.- infix(_:_:)();
  v100[0] = v25;
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v88 = v100[0];
  v100[0] = v52;
  v99[0] = v85;
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();
  v100[0] = v63;
  v99[0] = v52;
  OUTLINED_FUNCTION_6_6();
  static Tensor.- infix(_:_:)();
  v100[0] = v25;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v64 = v100[0];
  v85 = v100[0];
  if (v83)
  {
    v99[0] = v83;
    v95[0] = v100[0];
    OUTLINED_FUNCTION_10_42();
    max(_:_:)();
    v64 = v100[0];
    v83 = v100[0];
  }

  else
  {
    v83 = 0;
  }

  v99[0] = v84;
  LOBYTE(v95[0]) = *(*(v39 + 16) + 160);
  v65 = v87;
  (*(v21 + 104))(v23, *MEMORY[0x277D84660], v87);

  OUTLINED_FUNCTION_21_32();
  Tensor.cast(to:roundingRule:)();
  (*(v21 + 8))(v23, v65);
  v66 = v100[0];
  v100[0] = v86;
  v98 = v66;
  v99[0] = v63;
  v95[0] = v52;
  pow(_:_:)();
  static Tensor.- infix(_:_:)();

  sqrt(_:)(v99, v95);
  OUTLINED_FUNCTION_17_40();
  OUTLINED_FUNCTION_6_6();
  static Tensor.* infix(_:_:)();

  v100[0] = v63;
  v98 = v66;
  v99[0] = v39;
  pow(_:_:)();
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_21_32();
  static Tensor./ infix(_:_:)();

  OUTLINED_FUNCTION_17_40();
  v67 = v100[0];
  OUTLINED_FUNCTION_3_54();
  v69 = *(v68 + 160);
  v70 = OUTLINED_FUNCTION_6_6();
  sub_25BAA51C8(v70, v71);
  v97 = v45;
  v72 = OUTLINED_FUNCTION_56(v89);
  *(v72 + 16) = v94;
  *(v72 + 32) = a11;
  v96 = v69;
  v73 = OUTLINED_FUNCTION_10_42();
  sub_25BAA51C8(v73, v74);
  v75 = OUTLINED_FUNCTION_4_61();
  Tensor.init(shape:coercingScalars:scalarType:on:)(v75, v72, v76, v77, v78);
  sub_25BA9C2C8(v99);
  sub_25BA9C2C8(v100);
  v79 = v98;
  v99[0] = v24;
  v100[0] = v67;
  v80 = v88;
  v95[0] = v88;
  static Tensor.* infix(_:_:)();
  v100[0] = v64;

  sqrt(_:)(v95, v100);

  v100[0] = v79;
  static Tensor.+ infix(_:_:)();
  OUTLINED_FUNCTION_17_40();
  static Tensor./ infix(_:_:)();

  OUTLINED_FUNCTION_10_42();
  static Tensor.- infix(_:_:)();

  result = OUTLINED_FUNCTION_17_40();
  *v90 = v100[0];
  *v91 = v80;
  *v92 = v85;
  *v93 = v83;
  return result;
}

void sub_25BC552FC(int a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    *(sub_25BCB67DC() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_11_44();
      if (v6)
      {
        *(v3 - 12) = a1;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a1;
      }

      OUTLINED_FUNCTION_14_37();
      if (v12)
      {
        *(v8 - 1) = a1;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a1;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_25BC553BC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_25BCB67DC();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        sub_25BCB617C();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t basicReLU(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(v2 + 160);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    LOBYTE(v24[0]) = v3;
    *&v28 = sub_25BC8FACC();
    *(&v28 + 1) = v16;
    v29 = xmmword_25BCC6DC0;
    LOBYTE(v30) = 0;
    *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v31) = 2;
    v32 = 3;
    OUTLINED_FUNCTION_8_38();
    sub_25BADDD28(v17, v18, v19, v20, v21, v22, 18);
  }

  v4 = *(v2 + 160);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v26 = MEMORY[0x277D84F90];
  HIBYTE(v25) = v4;
  v5 = sub_25BAA51C8(&v28, v24);
  v12 = OUTLINED_FUNCTION_22_32(v5, &unk_286D422E8, v6, v7, v8, v9, v10, v11, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v25, v26);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v12, v13, &v25 + 7, v24, v14);
  sub_25BA9C2C8(&v28);
  *&v28 = v27;
  v24[0] = v1;
  max(_:_:)();
}

uint64_t basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>)
{
  v15 = *a1;
  v16 = *a4;
  v17 = *a5;
  v18 = *(*(*a1 + 16) + 152);
  v19 = sub_25BC54B00(0, *(v18 + 16));
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v19, v20, v21, v22);
    v19 = v151;
  }

  v23 = v19[2];
  if (v23 < 2)
  {
    __break(1u);
    goto LABEL_35;
  }

  v205 = a2;
  v212 = a3;
  v24 = v23 - 1;
  memmove(v19 + 5, v19 + 6, 8 * v23 - 16);
  v19[2] = v24;

  v231[0] = *(*(v15 + 16) + 152);
  sub_25BCB617C();
  v18 = sub_25BC55FEC(v231, v19);

  v25 = *(*(v15 + 16) + 152);
  a2 = *(v25 + 16);
  sub_25BCB617C();
  v26 = sub_25BAC0E14(1, a2);
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 < *(v25 + 16))
  {
    a2 = v26;
    v196 = a7;
    a7 = *(v25 + 8 * v18 + 32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_25BAA2110(a2, v20, v21, v22);
  a2 = v152;
LABEL_7:

  if (v18 >= a2[2])
  {
    __break(1u);
    return result;
  }

  a2[v18 + 4] = a7;
  v28 = *(v15 + 16);
  if (v18 == *(*(v28 + 152) + 16))
  {

    goto LABEL_14;
  }

  if (!v16)
  {

    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *v230 = v16;

  v37 = OUTLINED_FUNCTION_9_49(v29, v30, v31, v32, v33, v34, v35, v36, v153, v160, v168, v177, v184, v191, v196, v205, v212, v220, a2);
  Tensor.reshaped(to:)(v37, v38);

  v16 = v231[0];
  if (v17)
  {
LABEL_12:
    *v230 = v17;
    v47 = OUTLINED_FUNCTION_9_49(v39, v40, v41, v42, v43, v44, v45, v46, v153, v160, v168, v177, v184, v191, v196, v205, v212, v220, a2);
    Tensor.reshaped(to:)(v47, v48);

    v17 = v231[0];
  }

LABEL_13:
  v28 = *(v15 + 16);
LABEL_14:
  OUTLINED_FUNCTION_7_51();
  v49 = *(v28 + 160);
  sub_25BAA51C8(v231, v230);
  v228 = MEMORY[0x277D84F90];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v51 = OUTLINED_FUNCTION_56(v50);
  *(v51 + 16) = xmmword_25BCBAE50;
  *(v51 + 32) = a9;
  LOBYTE(v220) = v49;
  sub_25BAA51C8(v230, &v221);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v228, v51, &v220, &v221, &v229);
  sub_25BA9C2C8(v230);
  sub_25BA9C2C8(v231);
  v52 = v229;
  if (a6)
  {

    *v230 = v15;
    Tensor.mean(alongAxes:)(v231);
    v53 = v52;
    v54 = v231[0];
    *v230 = v15;
    v221 = v231[0];
    swift_retain_n();
    v55 = OUTLINED_FUNCTION_20_31();
    sub_25BC7DB2C(v55, v56, 0);

    v57 = v231[0];
    *v230 = v53;

    OUTLINED_FUNCTION_8_50();
    static Tensor.+ infix(_:_:)();
    v66 = OUTLINED_FUNCTION_9_49(v58, v59, v60, v61, v62, v63, v64, v65, v153, v160, v168, v53, 1, 2, v196, v205, v212, v220, v221);
    rsqrt(_:)(v67, v66);

    v68 = v231[0];
    v231[0] = v15;
    *v230 = v54;
    OUTLINED_FUNCTION_8_50();
    static Tensor.- infix(_:_:)();
    if (v16)
    {
      v229 = v16;
      *v230 = v68;
      static Tensor.* infix(_:_:)();
      v69 = v231[0];
    }

    else
    {

      v69 = v68;
    }

    v229 = v69;
    static Tensor.* infix(_:_:)();

    v91 = *v230;
    if (v17)
    {
      v229 = v17;
      OUTLINED_FUNCTION_9_49(v83, v84, v85, v86, v87, v88, v89, v90, v154, v161, v169, v178, v185, *(&v185 + 1), v197, v206, v213, v220, v230[0]);
      static Tensor.+ infix(_:_:)();

      v91 = v231[0];
    }

    else
    {
    }

    v162 = v57;
    v170 = v91;
    if (*(*(*(v15 + 16) + 152) + 16) < 4uLL)
    {

      v94 = v57;
    }

    else
    {
      *v230 = v15;
      v221 = v54;

      v92 = OUTLINED_FUNCTION_20_31();
      sub_25BC7DB2C(v92, v93, 1);

      v94 = v231[0];
    }

    v95 = *(*(v15 + 16) + 160);
    OUTLINED_FUNCTION_7_51();
    v96 = MEMORY[0x277D84F90];
    v229 = MEMORY[0x277D84F90];
    v97 = OUTLINED_FUNCTION_56(v50);
    *(v97 + 16) = v185;
    *(v97 + 32) = 1.0 - a8;
    LOBYTE(v228) = v95;
    v98 = sub_25BAA51C8(v231, v230);
    OUTLINED_FUNCTION_19_29(v98, v99, v100, v101, v102, v103, v104, v105, v154, v162, v170, v178, v185, *(&v185 + 1), v197, v206, v213, v220, v221, v222, v223, v224, v225, v226, v227, v228, SHIDWORD(v228), v229, v230[0]);
    sub_25BA9C2C8(v231);
    v106 = *(*(v15 + 16) + 160);
    OUTLINED_FUNCTION_7_51();
    v229 = v96;
    v107 = OUTLINED_FUNCTION_56(v50);
    *(v107 + 16) = v186;
    *(v107 + 32) = a8;
    LOBYTE(v228) = v106;
    v108 = sub_25BAA51C8(v231, v230);
    OUTLINED_FUNCTION_19_29(v108, v109, v110, v111, v112, v113, v114, v115, v155, v163, v171, v179, v186, *(&v186 + 1), v199, v207, v215, v220, v221, v222, v223, v224, v225, v226, v227, v228, SHIDWORD(v228), v229, v230[0]);
    sub_25BA9C2C8(v231);
    v116 = v221;
    v117 = v208;
    v231[0] = *v208;
    *v230 = v221;
    OUTLINED_FUNCTION_8_50();
    static Tensor.* infix(_:_:)();

    v231[0] = v54;
    v118 = Tensor.squeezingShape(at:)();
    OUTLINED_FUNCTION_24_24(v118, v119, v120, v121, v122, v123, v124, v125, v156, v164, v172, v180, v187, v192, v200, v208, v216, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);

    OUTLINED_FUNCTION_9_49(v126, v127, v128, v129, v130, v131, v132, v133, v157, v165, v173, v181, v188, v193, v201, v209, v217, v220, v221);
    static Tensor.+ infix(_:_:)();

    *v117 = v231[0];
    v134 = v218;
    v231[0] = *v218;
    *v230 = v116;
    OUTLINED_FUNCTION_8_50();
    static Tensor.* infix(_:_:)();

    v231[0] = v94;

    Tensor.squeezingShape(at:)();

    OUTLINED_FUNCTION_24_24(v135, v136, v137, v138, v139, v140, v141, v142, v158, v166, v174, v182, v189, v194, v202, v210, v218, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230[0]);

    OUTLINED_FUNCTION_9_49(v143, v144, v145, v146, v147, v148, v149, v150, v159, v167, v175, v183, v190, v195, v203, v211, v219, v220, v221);
    static Tensor.+ infix(_:_:)();

    *v134 = v231[0];
    *v204 = v176;
  }

  else
  {

    *v230 = *v205;
    v221 = a2;

    v78 = OUTLINED_FUNCTION_9_49(v70, v71, v72, v73, v74, v75, v76, v77, v153, v160, v168, v177, 1, 2, v196, v205, v212, v220, v221);
    Tensor.reshaped(to:)(v78, v79);

    v80 = v231[0];
    v221 = *v214;
    v229 = a2;

    Tensor.reshaped(to:)(&v229, v230);

    v221 = *v230;
    v229 = v52;

    static Tensor.+ infix(_:_:)();
    rsqrt(_:)(&v221, &v228);

    v81 = v221;
    v221 = v15;
    v229 = v80;
    static Tensor.- infix(_:_:)();
    if (v16)
    {
      v220 = v16;
      v221 = v81;
      static Tensor.* infix(_:_:)();
      v82 = v229;
    }

    else
    {

      v82 = v81;
    }

    v220 = v82;
    static Tensor.* infix(_:_:)();

    if (v17)
    {
      v228 = v17;
      v229 = v221;
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      *v198 = v221;
    }
  }

  return result;
}

uint64_t basicSGD(parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char a7, float a8)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v24 = *a6;
  v25 = v13;
  static Tensor.* infix(_:_:)();
  static Tensor.- prefix(_:)(&v23);

  v16 = v25;
  if (a8 <= 0.0 || v14 == 0)
  {
    v23 = v25;
    v24 = v12;
    OUTLINED_FUNCTION_16_43(v15);

    v19 = 0;
  }

  else
  {
    v24 = v25;

    v21 = sub_25BC55E80(v20, a8);
    OUTLINED_FUNCTION_16_43(v21);

    v19 = v25;
    if (a7)
    {
      v24 = v16;
      v25 = v12;
      static Tensor.+ infix(_:_:)();
      sub_25BC55E80(v19, a8);
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      v23 = v25;
      v24 = v12;
      OUTLINED_FUNCTION_16_43(v22);
    }
  }

  *a1 = v25;
  *a2 = v19;
  return result;
}

uint64_t sub_25BC55E80(uint64_t a1, float a2)
{
  v10[0] = a1;
  Tensor.scalarType.getter(a1);
  (*(v4 + 32))(v9);
  v5 = LOBYTE(v9[0]);
  v6 = sub_25BAA80BC(0xAu, &unk_286D42270);
  if (v6 && (v6 = sub_25BAA80BC(v5, &unk_286D427E8)) || v5 == 12)
  {
    OUTLINED_FUNCTION_92_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(v10, v9);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v9, &v11);
    sub_25BA9C2C8(v10);
  }

  else
  {
    v9[3] = MEMORY[0x277D83A90];
    v9[4] = &protocol witness table for Float;
    *v9 = a2;
    v10[8] = a1;
    Tensor.scalarType.getter(v6);
    OUTLINED_FUNCTION_92_1();
    Tensor.init(coercing:scalarType:on:)();
  }

  v10[0] = a1;
  v9[0] = v11;
  static Tensor.* infix(_:_:)();
}

uint64_t sub_25BC55FEC(uint64_t *a1, uint64_t a2)
{
  result = 0;
  v4 = *a1;
  v5 = *(*a1 + 16);
LABEL_2:
  if (result == v5)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCE4E40);
    v10 = MEMORY[0x277D83B88];
    v11 = MEMORY[0x25F876F80](v4, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v11);

    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE4E70);
    v12 = MEMORY[0x25F876F80](a2, v10);
    MEMORY[0x25F876C90](v12);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    BYTE4(v23) = 9;
    sub_25BCB617C();
    sub_25BA97890("channelAxis(of:normalizedAxes:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/Fallbacks.swift", 102, 2, 58, v13, v14, 0, 0xE000000000000000, 0, 0xE000000000000000, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == result)
    {
      ++result;
      goto LABEL_2;
    }
  }

  return result;
}

char *sub_25BC5615C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56184(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[240 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 240 * a2);
  }

  return result;
}

char *sub_25BC561B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC561D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC561F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56218(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BC56240()
{
  OUTLINED_FUNCTION_13_40();
  if (v4 < v3 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08), v1 + *(*(result - 8) + 72) * v0 <= v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
    v7 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE828](v7);
  }

  else if (v2 != v1)
  {
    v6 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE820](v6);
  }

  return result;
}

uint64_t sub_25BC5633C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_13_40();
  if (v9 < v8 || (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 <= v6))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE828](v12);
  }

  else if (v6 != v5)
  {
    v11 = OUTLINED_FUNCTION_9_26();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

char *sub_25BC563FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BC56420(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 104 * a2);
  }

  return result;
}

uint64_t sub_25BC56488(uint64_t a1)
{
  v2 = sub_25BC56544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC564C4(uint64_t a1)
{
  v2 = sub_25BC56544();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56544()
{
  result = qword_27FBB7120;
  if (!qword_27FBB7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7120);
  }

  return result;
}

uint64_t sub_25BC56648(uint64_t a1)
{
  v2 = sub_25BC566F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56684(uint64_t a1)
{
  v2 = sub_25BC566F4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC566F4()
{
  result = qword_27FBB7130;
  if (!qword_27FBB7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7130);
  }

  return result;
}

uint64_t sub_25BC567F4(uint64_t a1)
{
  v2 = sub_25BC568B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56830(uint64_t a1)
{
  v2 = sub_25BC568B0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC568B0()
{
  result = qword_27FBB7148;
  if (!qword_27FBB7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7148);
  }

  return result;
}

uint64_t LogSigmoid.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  static Tensor.- prefix(_:)(&v2);
  softplus(_:alpha:beta:)();

  static Tensor.- prefix(_:)(&v2);
}

uint64_t sub_25BC5699C(uint64_t a1)
{
  v2 = sub_25BC56A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC569D8(uint64_t a1)
{
  v2 = sub_25BC56A58();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56A58()
{
  result = qword_27FBB7158;
  if (!qword_27FBB7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7158);
  }

  return result;
}

uint64_t sub_25BC56B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163537475706E69 && a2 == 0xEA0000000000656CLL;
  if (v4 || (OUTLINED_FUNCTION_43_17(0x6163537475706E69, 0xEA0000000000656CLL, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x635374757074756FLL && a2 == 0xEB00000000656C61)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_43_17(0x635374757074756FLL, 0xEB00000000656C61, a1);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC56C28(uint64_t a1)
{
  v2 = sub_25BC56CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56C64(uint64_t a1)
{
  v2 = sub_25BC56CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56CD4()
{
  result = qword_27FBB7168;
  if (!qword_27FBB7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7168);
  }

  return result;
}

uint64_t sub_25BC56D90@<X0>(uint64_t (*a1)(void)@<X3>, _DWORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_25BC56E04(uint64_t a1)
{
  v2 = sub_25BC56EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56E40(uint64_t a1)
{
  v2 = sub_25BC56EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC56EC0()
{
  result = qword_27FBB7180;
  if (!qword_27FBB7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7180);
  }

  return result;
}

uint64_t sub_25BC56F98(uint64_t a1)
{
  v2 = sub_25BC57054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC56FD4(uint64_t a1)
{
  v2 = sub_25BC57054();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57054()
{
  result = qword_27FBB7190;
  if (!qword_27FBB7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7190);
  }

  return result;
}

void sub_25BC570F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Softmax.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_25BC57168(uint64_t a1)
{
  v2 = sub_25BC57224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC571A4(uint64_t a1)
{
  v2 = sub_25BC57224();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57224()
{
  result = qword_27FBB71A8;
  if (!qword_27FBB71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71A8);
  }

  return result;
}

uint64_t sub_25BC572D4(uint64_t a1)
{
  v2 = sub_25BC57380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57310(uint64_t a1)
{
  v2 = sub_25BC57380();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57380()
{
  result = qword_27FBB71B8;
  if (!qword_27FBB71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71B8);
  }

  return result;
}

void sub_25BC57410(_DWORD *a1@<X8>)
{
  ELU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC57480(uint64_t a1)
{
  v2 = sub_25BC5753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC574BC(uint64_t a1)
{
  v2 = sub_25BC5753C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC5753C()
{
  result = qword_27FBB71D0;
  if (!qword_27FBB71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71D0);
  }

  return result;
}

uint64_t sub_25BC575B0(uint64_t a1)
{
  v2 = sub_25BC57714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC575EC(uint64_t a1)
{
  v2 = sub_25BC57714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReLU.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB71D8, &qword_25BCCF438);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_25BC57714();
  OUTLINED_FUNCTION_42_21(&type metadata for ReLU.CodingKeys, v8, v7);
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_25BC57714()
{
  result = qword_28154C318[0];
  if (!qword_28154C318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C318);
  }

  return result;
}

uint64_t sub_25BC577E8(uint64_t a1)
{
  v2 = sub_25BC578A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57824(uint64_t a1)
{
  v2 = sub_25BC578A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC578A4()
{
  result = qword_27FBB71E8;
  if (!qword_27FBB71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71E8);
  }

  return result;
}

uint64_t sub_25BC57960(uint64_t a1)
{
  v2 = sub_25BC57A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5799C(uint64_t a1)
{
  v2 = sub_25BC57A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57A0C()
{
  result = qword_27FBB71F8;
  if (!qword_27FBB71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB71F8);
  }

  return result;
}

void sub_25BC57A9C(_DWORD *a1@<X8>)
{
  LeakyReLU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC57B0C(uint64_t a1)
{
  v2 = sub_25BC57BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57B48(uint64_t a1)
{
  v2 = sub_25BC57BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57BC8()
{
  result = qword_27FBB7210;
  if (!qword_27FBB7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7210);
  }

  return result;
}

uint64_t sub_25BC57C8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6164626D616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC57D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC57C8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC57D44(uint64_t a1)
{
  v2 = sub_25BC57DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57D80(uint64_t a1)
{
  v2 = sub_25BC57DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57DF0()
{
  result = qword_27FBB7220;
  if (!qword_27FBB7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7220);
  }

  return result;
}

void sub_25BC57E80(_DWORD *a1@<X8>)
{
  Hardshrink.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC57F14(uint64_t a1)
{
  v2 = sub_25BC57FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC57F50(uint64_t a1)
{
  v2 = sub_25BC57FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC57FC0()
{
  result = qword_27FBB7238;
  if (!qword_27FBB7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7238);
  }

  return result;
}

void sub_25BC58050(_DWORD *a1@<X8>)
{
  CELU.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_25BC580C0(uint64_t a1)
{
  v2 = sub_25BC5817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC580FC(uint64_t a1)
{
  v2 = sub_25BC5817C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25BC5817C()
{
  result = qword_27FBB7250;
  if (!qword_27FBB7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7250);
  }

  return result;
}

NeuralNetworks::Softshrink __swiftcall Softshrink.init(alpha:)(NeuralNetworks::Softshrink alpha)
{
  if (alpha.alpha < 0.0)
  {
    OUTLINED_FUNCTION_7_0();
    sub_25BCB74CC(v1, v2, v3, 0xD000000000000024, v4, v5, 105, 2, 384);
    __break(1u);
  }

  return alpha;
}

uint64_t sub_25BC58294(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_17(0x6168706C61, 0xE500000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC58300(uint64_t a1)
{
  v2 = sub_25BC584BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5833C(uint64_t a1)
{
  v2 = sub_25BC584BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC583AC()
{
  OUTLINED_FUNCTION_38_22();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_21();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  sub_25BCB777C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_41_22();
}

unint64_t sub_25BC584BC()
{
  result = qword_27FBB7260;
  if (!qword_27FBB7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7260);
  }

  return result;
}

void sub_25BC58544()
{
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_7_52(v3, v4, v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v7 = v2();
  OUTLINED_FUNCTION_5_55(v7);
  if (!v1)
  {
    OUTLINED_FUNCTION_20_32();
    sub_25BCB768C();
    v8 = OUTLINED_FUNCTION_107();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_41_22();
}

BOOL sub_25BC58630()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

void sub_25BC58680(_DWORD *a1@<X8>)
{
  Softshrink.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_25BC586D4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BC58630();
  *a1 = result;
  return result;
}

BOOL sub_25BC58734@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BC58630();
  *a1 = result;
  return result;
}

uint64_t sub_25BC5876C(uint64_t a1)
{
  v2 = sub_25BC5B2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC587A8(uint64_t a1)
{
  v2 = sub_25BC5B2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL PReLU.isEveryParameterInitialized.getter()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(*v0 + 32);
  result = (~v3 & 0xF000000000000007) != 0 && v3 < 0;
  *(v1 + 16) = result;
  return result;
}

double PReLU.$weight.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;

  return result;
}

uint64_t PReLU.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    v9 = 0xD00000000000002ELL;
LABEL_8:
    result = sub_25BCB74CC(v4, v5, v6, v9, v7, v8, 102, 2, v10);
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v2);
}

uint64_t sub_25BC588E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 16);
  v7[1] = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  result = PReLU.weight.getter(v7);
  *a2 = v7[0];
  return result;
}

uint64_t sub_25BC5893C(uint64_t *a1)
{
  v2 = *a1;

  return PReLU.weight.setter(&v2);
}

uint64_t (*PReLU.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    v10 = 0xD00000000000002ELL;
  }

  result = sub_25BCB74CC(v5, v6, v7, v10, v8, v9, 102, 2, v11);
  __break(1u);
  return result;
}

uint64_t PReLU.init(weight:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 16) = v4;
  *(a2 + 8) = 256;
  v6 = v3;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  result = sub_25BAB6D38(&v6, 0x100000000);
  *a2 = result;
  return result;
}

uint64_t PReLU.init(initialAlpha:parameterCount:parameterScalarType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 16) = v10;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *__src = a5;
  __src[1] = a2;
  __src[2] = a3;
  sub_25BAA51C8(v18, &__src[3]);
  BYTE4(__src[10]) = 0;
  type metadata accessor for ParameterInitializer();
  inited = swift_initStackObject();
  memcpy((inited + 16), __src, 0x55uLL);
  sub_25BA9C2C8(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = a1;
  v16 = v12;
  ParameterInitializer.callAsFunction(shape:)();

  *(a4 + 8) = 256;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();
  LOBYTE(v16) = 1;
  v13 = sub_25BAB6D38(&v15, 0x100000000);
  swift_setDeallocating();
  result = sub_25BB1879C(inited + 16);
  *a4 = v13;
  return result;
}

uint64_t PReLU.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(*(*a1 + 16) + 152);
  v7 = *(v6 + 16);
  if (v7 == 1)
  {
    v8 = 32;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = 40;
  }

  v9 = *(v5 + 32);
  if ((~v9 & 0xF000000000000007) == 0)
  {
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + v8);
  if (OUTLINED_FUNCTION_31_26(v9 & 0x7FFFFFFFFFFFFFFFLL) == 1)
  {
    goto LABEL_11;
  }

  v11 = *(v5 + 32);
  if ((~v11 & 0xF000000000000007) == 0)
  {
LABEL_16:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    v19 = 0xD00000000000002ELL;
LABEL_18:
    v20 = 102;
LABEL_19:
    sub_25BCB74CC(v14, v15, v16, v19, v17, v18, v20, 2, v21);
    __break(1u);
LABEL_20:
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = 1;
    v24 = -1;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v28 = -1;
    v29 = 4;
    sub_25BCB617C();
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_31_26(v11 & 0x7FFFFFFFFFFFFFFFLL) != v10)
  {
    v21 = 450;
    OUTLINED_FUNCTION_7_0();
    v20 = 105;
    goto LABEL_19;
  }

LABEL_11:
  v23[0] = v4;
  v12 = *(v5 + 32);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_16;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  v22 = v12 & 0x7FFFFFFFFFFFFFFFLL;
  sub_25BAB69FC(v12);
  prelu(_:weight:)(v23, &v22, a2);
}

void PReLU.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7278, &qword_25BCCF4A0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BC5B2B8();

  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  sub_25BB39990();
  sub_25BCB779C();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_16();
}

void PReLU.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7288, &qword_25BCCF4A8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7270, &qword_25BCCF498);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BC5B2B8();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    (*(v6 + 8))(v9, v4);
    v11 = v14;
    v12 = v15;
    *v16 = v13;
    *(v16 + 8) = v11;
    *(v16 + 9) = v12;
    *(v16 + 16) = v10;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC591F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC59284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC591F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC592B0(uint64_t a1)
{
  v2 = sub_25BC5B30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC592EC(uint64_t a1)
{
  v2 = sub_25BC5B30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Hardtanh.encode(to:)(void *a1, float a2, float a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7290, &qword_25BCCF4B0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_25BC5B30C();
  OUTLINED_FUNCTION_42_21(&type metadata for Hardtanh.CodingKeys, v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
  OUTLINED_FUNCTION_19_30(&qword_27FBB72A0, MEMORY[0x277D83AA0]);
  sub_25BCB779C();
  return (*(v7 + 8))(v3, v5);
}

void Hardtanh.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72A8, &qword_25BCCF4B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_33();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC5B30C();
  sub_25BCB7B2C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    OUTLINED_FUNCTION_18_38(&qword_27FBB72B0, MEMORY[0x277D83AC8]);
    sub_25BCB76AC();
    v4 = OUTLINED_FUNCTION_107();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_15_5();
}

void sub_25BC595FC(void *a1@<X0>, _DWORD *a2@<X8>)
{
  Hardtanh.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

float RReLU.bounds.setter(float a1, float a2)
{
  v2[1] = a1;
  v2[2] = a2;
  result = (a1 + a2) * 0.5;
  v2[3] = result;
  return result;
}

float sub_25BC596E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = (*(*a1 + 4) + *(*a1 + 8)) * 0.5;
    *(*a1 + 12) = result;
  }

  return result;
}

float sub_25BC5970C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 12);
  v3 = *(v0 + 16);
  if (*v0)
  {
    if (*v0 != 1)
    {
      return v2;
    }

LABEL_6:
    v11 = v1;
    swift_beginAccess();
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v3 + 16, v5);
    v7 = sub_25BB18A50();
    sub_25BBF2100();
    sub_25BB6D854(MEMORY[0x277D83A90], &v11, v5, MEMORY[0x277D83A90], v6, v7);
    swift_endAccess();
    return v12;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v9);

  if (!v10)
  {
    sub_25BAA4AF4(v9);
    return v2;
  }

  v4 = *(v10 + 24);
  sub_25BAA4AF4(v9);
  if (v4)
  {
    goto LABEL_6;
  }

  return v2;
}

void RReLU.init(bounds:seed:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a2)
  {
    type metadata accessor for ContextManager();
    v9 = sub_25BAA49B8();
    swift_beginAccess();
    v10 = v9[2];
    v11 = *(v10 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[2] = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_25BBF1454();
      v10 = v21;
      v9[2] = v21;
      if (v11)
      {
LABEL_4:
        if (v11 <= *(v10 + 16))
        {
          a1 = sub_25BC32FA0();
          v9[2] = v10;
          swift_endAccess();

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v13 = 0x7FFFFFFFLL;
  if (a1 < 0x7FFFFFFF)
  {
    v13 = a1;
  }

  v14 = v13 & ~(v13 >> 63);
  v23 = &type metadata for PhiloxRandomNumberGenerator;
  v24 = sub_25BB189FC();
  v15 = swift_allocObject();
  *&v22 = v15;
  v16 = sub_25BBE5CAC(v14);
  *(v15 + 16) = v17;
  *(v15 + 32) = v18;
  *(v15 + 40) = v16 & 1;
  *(v15 + 48) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
  v20 = swift_allocObject();
  sub_25BA97060(&v22, v20 + 16);
  *a3 = 0;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = (a4 + a5) * 0.5;
  *(a3 + 16) = v20;
  *(a3 + 24) = v14;
}

unint64_t sub_25BC59A44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE21E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25BC59A74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BAE222C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC59AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE21E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC59AD0(uint64_t a1)
{
  v2 = sub_25BC5B3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC59B0C(uint64_t a1)
{
  v2 = sub_25BC5B3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RReLU.init(from:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72C0, &qword_25BCCF4C8);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_25_29();
  sub_25BC5B3CC();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (v0)
  {
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
  OUTLINED_FUNCTION_18_38(&qword_27FBB72B0, MEMORY[0x277D83AC8]);
  sub_25BCB76AC();
  v10 = v48;
  OUTLINED_FUNCTION_32_24(1);
  v11 = sub_25BCB76BC();
  LOBYTE(v45) = 3;
  sub_25BBC68D8();
  sub_25BCB76AC();
  OUTLINED_FUNCTION_32_24(2);
  sub_25BCB766C();
  v51 = v48;
  v14 = sub_25BCB710C();

  if (!v14)
  {
    sub_25BCB71EC();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58);
    v29[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v8 + 16))(boxed_opaque_existential_0, v1, v6);
    sub_25BCB763C();
    sub_25BCB71AC();
    OUTLINED_FUNCTION_11_1();
    (*(v31 + 104))(v29);
    swift_willThrow();
    v12 = OUTLINED_FUNCTION_7_1();
    v13(v12);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_39();
    return;
  }

  v15 = dynamic_cast_existential_1_conditional(v14, v14, &protocol descriptor for SeedableRandomNumberGenerator);
  if (v15)
  {
    v40 = v16;
    v41 = v15;
    type metadata accessor for ContextManager();
    v17 = sub_25BAA49B8();
    swift_beginAccess();
    v18 = v17[2];
    v42 = *(v18 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[2] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25BBF1454();
      v18 = v39;
      v17[2] = v39;
    }

    if (v42)
    {
      if (v42 <= *(v18 + 16))
      {
        v43 = sub_25BC32FA0();
        v17[2] = v18;
        swift_endAccess();

        v20 = v43;
        v44 = *(v40 + 24);
        *&v45 = v20;
        v49 = v41;
        v50 = v40;
        __swift_allocate_boxed_opaque_existential_0(&v48);
        v21 = sub_25BB6D930();
        v44(&v45, MEMORY[0x277D84D38], v21, v41, v40);
        v22 = v49;
        v23 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, v49);
        v46 = v22;
        v47 = *(v23 + 8);
        __swift_allocate_boxed_opaque_existential_0(&v45);
        OUTLINED_FUNCTION_11_1();
        (*(v24 + 16))();
        v25 = OUTLINED_FUNCTION_7_1();
        v26(v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
        v27 = swift_allocObject();
        sub_25BA97060(&v45, v27 + 16);
        __swift_destroy_boxed_opaque_existential_1(&v48);
LABEL_14:
        *v5 = v51;
        *(v5 + 4) = v10;
        *(v5 + 12) = (*&v10 + *(&v10 + 1)) * 0.5;
        *(v5 + 16) = v27;
        *(v5 + 24) = v11;
        goto LABEL_3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else if ((v11 & 0x8000000000000000) == 0)
  {
    v49 = &type metadata for PhiloxRandomNumberGenerator;
    v50 = sub_25BB189FC();
    v32 = swift_allocObject();
    *&v48 = v32;
    v33 = sub_25BBE5CAC(v11);
    *(v32 + 16) = v34;
    *(v32 + 32) = v35;
    *(v32 + 40) = v33 & 1;
    *(v32 + 48) = v36;
    v37 = OUTLINED_FUNCTION_7_1();
    v38(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72B8, &qword_25BCCF4C0);
    v27 = swift_allocObject();
    sub_25BA97060(&v48, v27 + 16);
    goto LABEL_14;
  }

  __break(1u);
}

void RReLU.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v3 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB72D0, &qword_25BCCF4D0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v20 = *v0;
  v9 = *(v0 + 4);
  v10 = *(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC5B3CC();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  swift_beginAccess();
  sub_25BAC27B0(v10 + 16, v23);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_25BCB73EC();
  if (v11)
  {
    v23[0] = v9;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    OUTLINED_FUNCTION_19_30(&qword_27FBB72A0, MEMORY[0x277D83AA0]);
    v12 = v21;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    if (v1)
    {
      (*(v5 + 8))(v8, v12);
    }

    else
    {
      LOBYTE(v23[0]) = 1;
      OUTLINED_FUNCTION_15_25();
      sub_25BCB774C();
      LOBYTE(v23[0]) = 2;
      OUTLINED_FUNCTION_15_25();
      sub_25BCB775C();

      LOBYTE(v23[0]) = v20;
      v22 = 3;
      sub_25BBC6830();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();
      (*(v5 + 8))(v8, v12);
    }
  }

  else
  {
    sub_25BCB71EC();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58);
    sub_25BAC27B0(v10 + 16, v23);
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v14[3] = v15;
    __swift_allocate_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_11_1();
    (*(v16 + 16))();
    v17 = v21;
    sub_25BCB771C();
    sub_25BCB71AC();
    OUTLINED_FUNCTION_11_1();
    (*(v18 + 104))(v14);
    swift_willThrow();
    (*(v5 + 8))(v8, v17);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_41_22();
}

uint64_t sub_25BC5A4E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_17(1936291937, 0xE400000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC5A550(uint64_t a1)
{
  v2 = sub_25BC5B420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5A58C(uint64_t a1)
{
  v2 = sub_25BC5B420();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a10 = v20;
  v26 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v24();
  sub_25BCB7B6C();
  sub_25BCB778C();
  (*(v31 + 8))(v34, v29);
  OUTLINED_FUNCTION_16();
}

void sub_25BC5A76C()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_7_52(v3, v4, v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v7 = v2();
  OUTLINED_FUNCTION_5_55(v7);
  if (!v1)
  {
    OUTLINED_FUNCTION_20_32();
    sub_25BCB769C();
    v8 = OUTLINED_FUNCTION_107();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void sub_25BC5A85C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Softmin.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_25BC5A90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC5A9D0(char a1)
{
  if (a1)
  {
    return 1935763810;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_25BC5A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC5AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC5A90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC5AA78(uint64_t a1)
{
  v2 = sub_25BC5B474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5AAB4(uint64_t a1)
{
  v2 = sub_25BC5B474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC5ABD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BC5ACA8(char a1)
{
  if (a1)
  {
    return 0x6D6563616C706572;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_25BC5ACF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC5ABD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC5AD1C(uint64_t a1)
{
  v2 = sub_25BC5B4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5AD58(uint64_t a1)
{
  v2 = sub_25BC5B4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  OUTLINED_FUNCTION_2();
  v36 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v29();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  a15 = 0;
  OUTLINED_FUNCTION_15_25();
  sub_25BCB777C();
  if (!v25)
  {
    a14 = 1;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB777C();
  }

  (*(v36 + 8))(v39, v34);
  OUTLINED_FUNCTION_39();
}

void sub_25BC5AF40()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7_52(v2, v3, v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_33();
  OUTLINED_FUNCTION_25_29();
  v6 = v1();
  OUTLINED_FUNCTION_5_55(v6);
  OUTLINED_FUNCTION_20_32();
  sub_25BCB768C();
  OUTLINED_FUNCTION_20_32();
  sub_25BCB768C();
  v7 = OUTLINED_FUNCTION_107();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_25BC5B0EC(uint64_t a1)
{
  v2 = sub_25BC5B51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC5B128(uint64_t a1)
{
  v2 = sub_25BC5B51C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BC5B1A8()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_21();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BC5B2B8()
{
  result = qword_27FBB7280;
  if (!qword_27FBB7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7280);
  }

  return result;
}

unint64_t sub_25BC5B30C()
{
  result = qword_27FBB7298;
  if (!qword_27FBB7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7298);
  }

  return result;
}

uint64_t sub_25BC5B360(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC5B3CC()
{
  result = qword_27FBB72C8;
  if (!qword_27FBB72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72C8);
  }

  return result;
}

unint64_t sub_25BC5B420()
{
  result = qword_27FBB72E0;
  if (!qword_27FBB72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72E0);
  }

  return result;
}

unint64_t sub_25BC5B474()
{
  result = qword_27FBB72F8;
  if (!qword_27FBB72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB72F8);
  }

  return result;
}

unint64_t sub_25BC5B4C8()
{
  result = qword_27FBB7310;
  if (!qword_27FBB7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7310);
  }

  return result;
}

unint64_t sub_25BC5B51C()
{
  result = qword_27FBB7328;
  if (!qword_27FBB7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7328);
  }

  return result;
}

uint64_t sub_25BC5B66C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5B6AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for RReLU.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BC5B910(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_25BC5B9FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC5BAEC()
{
  result = qword_27FBB7330;
  if (!qword_27FBB7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7330);
  }

  return result;
}

unint64_t sub_25BC5BB44()
{
  result = qword_27FBB7338;
  if (!qword_27FBB7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7338);
  }

  return result;
}

unint64_t sub_25BC5BB9C()
{
  result = qword_27FBB7340;
  if (!qword_27FBB7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7340);
  }

  return result;
}

unint64_t sub_25BC5BBF4()
{
  result = qword_27FBB7348;
  if (!qword_27FBB7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7348);
  }

  return result;
}

unint64_t sub_25BC5BC4C()
{
  result = qword_27FBB7350;
  if (!qword_27FBB7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7350);
  }

  return result;
}

unint64_t sub_25BC5BCA4()
{
  result = qword_27FBB7358;
  if (!qword_27FBB7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7358);
  }

  return result;
}

unint64_t sub_25BC5BCFC()
{
  result = qword_27FBB7360;
  if (!qword_27FBB7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7360);
  }

  return result;
}

unint64_t sub_25BC5BD54()
{
  result = qword_27FBB7368;
  if (!qword_27FBB7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7368);
  }

  return result;
}

unint64_t sub_25BC5BDAC()
{
  result = qword_27FBB7370;
  if (!qword_27FBB7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7370);
  }

  return result;
}

unint64_t sub_25BC5BE04()
{
  result = qword_27FBB7378;
  if (!qword_27FBB7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7378);
  }

  return result;
}

unint64_t sub_25BC5BE5C()
{
  result = qword_27FBB7380;
  if (!qword_27FBB7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7380);
  }

  return result;
}

unint64_t sub_25BC5BEB4()
{
  result = qword_27FBB7388;
  if (!qword_27FBB7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7388);
  }

  return result;
}

unint64_t sub_25BC5BF0C()
{
  result = qword_27FBB7390;
  if (!qword_27FBB7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7390);
  }

  return result;
}

unint64_t sub_25BC5BF64()
{
  result = qword_27FBB7398;
  if (!qword_27FBB7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7398);
  }

  return result;
}

unint64_t sub_25BC5BFBC()
{
  result = qword_27FBB73A0;
  if (!qword_27FBB73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73A0);
  }

  return result;
}

unint64_t sub_25BC5C014()
{
  result = qword_27FBB73A8;
  if (!qword_27FBB73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73A8);
  }

  return result;
}

unint64_t sub_25BC5C06C()
{
  result = qword_27FBB73B0;
  if (!qword_27FBB73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73B0);
  }

  return result;
}

unint64_t sub_25BC5C0C4()
{
  result = qword_27FBB73B8;
  if (!qword_27FBB73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73B8);
  }

  return result;
}

unint64_t sub_25BC5C11C()
{
  result = qword_27FBB73C0;
  if (!qword_27FBB73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73C0);
  }

  return result;
}

unint64_t sub_25BC5C174()
{
  result = qword_27FBB73C8;
  if (!qword_27FBB73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73C8);
  }

  return result;
}

unint64_t sub_25BC5C1CC()
{
  result = qword_27FBB73D0;
  if (!qword_27FBB73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73D0);
  }

  return result;
}

unint64_t sub_25BC5C224()
{
  result = qword_27FBB73D8;
  if (!qword_27FBB73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73D8);
  }

  return result;
}

unint64_t sub_25BC5C27C()
{
  result = qword_27FBB73E0;
  if (!qword_27FBB73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73E0);
  }

  return result;
}

unint64_t sub_25BC5C2D4()
{
  result = qword_27FBB73E8;
  if (!qword_27FBB73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73E8);
  }

  return result;
}

unint64_t sub_25BC5C32C()
{
  result = qword_27FBB73F0;
  if (!qword_27FBB73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73F0);
  }

  return result;
}

unint64_t sub_25BC5C384()
{
  result = qword_27FBB73F8;
  if (!qword_27FBB73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB73F8);
  }

  return result;
}

unint64_t sub_25BC5C3DC()
{
  result = qword_27FBB7400;
  if (!qword_27FBB7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7400);
  }

  return result;
}

unint64_t sub_25BC5C434()
{
  result = qword_27FBB7408;
  if (!qword_27FBB7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7408);
  }

  return result;
}

unint64_t sub_25BC5C48C()
{
  result = qword_27FBB7410;
  if (!qword_27FBB7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7410);
  }

  return result;
}

unint64_t sub_25BC5C4E4()
{
  result = qword_27FBB7418;
  if (!qword_27FBB7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7418);
  }

  return result;
}

unint64_t sub_25BC5C53C()
{
  result = qword_27FBB7420;
  if (!qword_27FBB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7420);
  }

  return result;
}

unint64_t sub_25BC5C594()
{
  result = qword_27FBB7428;
  if (!qword_27FBB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7428);
  }

  return result;
}

unint64_t sub_25BC5C5EC()
{
  result = qword_27FBB7430;
  if (!qword_27FBB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7430);
  }

  return result;
}

unint64_t sub_25BC5C644()
{
  result = qword_27FBB7438;
  if (!qword_27FBB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7438);
  }

  return result;
}

unint64_t sub_25BC5C69C()
{
  result = qword_27FBB7440;
  if (!qword_27FBB7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7440);
  }

  return result;
}

unint64_t sub_25BC5C6F4()
{
  result = qword_27FBB7448;
  if (!qword_27FBB7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7448);
  }

  return result;
}

unint64_t sub_25BC5C74C()
{
  result = qword_27FBB7450;
  if (!qword_27FBB7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7450);
  }

  return result;
}

unint64_t sub_25BC5C7A4()
{
  result = qword_27FBB7458;
  if (!qword_27FBB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7458);
  }

  return result;
}

unint64_t sub_25BC5C7FC()
{
  result = qword_27FBB7460;
  if (!qword_27FBB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7460);
  }

  return result;
}

unint64_t sub_25BC5C854()
{
  result = qword_27FBB7468;
  if (!qword_27FBB7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7468);
  }

  return result;
}

unint64_t sub_25BC5C8AC()
{
  result = qword_27FBB7470;
  if (!qword_27FBB7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7470);
  }

  return result;
}

unint64_t sub_25BC5C904()
{
  result = qword_27FBB7478;
  if (!qword_27FBB7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7478);
  }

  return result;
}

unint64_t sub_25BC5C95C()
{
  result = qword_28154C308;
  if (!qword_28154C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C308);
  }

  return result;
}

unint64_t sub_25BC5C9B4()
{
  result = qword_28154C310;
  if (!qword_28154C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C310);
  }

  return result;
}

unint64_t sub_25BC5CA0C()
{
  result = qword_27FBB7480;
  if (!qword_27FBB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7480);
  }

  return result;
}

unint64_t sub_25BC5CA64()
{
  result = qword_27FBB7488;
  if (!qword_27FBB7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7488);
  }

  return result;
}

unint64_t sub_25BC5CABC()
{
  result = qword_27FBB7490;
  if (!qword_27FBB7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7490);
  }

  return result;
}

unint64_t sub_25BC5CB14()
{
  result = qword_27FBB7498;
  if (!qword_27FBB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7498);
  }

  return result;
}

unint64_t sub_25BC5CB6C()
{
  result = qword_27FBB74A0;
  if (!qword_27FBB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74A0);
  }

  return result;
}

unint64_t sub_25BC5CBC4()
{
  result = qword_27FBB74A8;
  if (!qword_27FBB74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74A8);
  }

  return result;
}

unint64_t sub_25BC5CC1C()
{
  result = qword_27FBB74B0;
  if (!qword_27FBB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74B0);
  }

  return result;
}

unint64_t sub_25BC5CC74()
{
  result = qword_27FBB74B8;
  if (!qword_27FBB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74B8);
  }

  return result;
}

unint64_t sub_25BC5CCCC()
{
  result = qword_27FBB74C0;
  if (!qword_27FBB74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74C0);
  }

  return result;
}

unint64_t sub_25BC5CD24()
{
  result = qword_27FBB74C8;
  if (!qword_27FBB74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74C8);
  }

  return result;
}

unint64_t sub_25BC5CD7C()
{
  result = qword_27FBB74D0;
  if (!qword_27FBB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74D0);
  }

  return result;
}

unint64_t sub_25BC5CDD4()
{
  result = qword_27FBB74D8;
  if (!qword_27FBB74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74D8);
  }

  return result;
}

unint64_t sub_25BC5CE2C()
{
  result = qword_27FBB74E0;
  if (!qword_27FBB74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74E0);
  }

  return result;
}

unint64_t sub_25BC5CE84()
{
  result = qword_27FBB74E8;
  if (!qword_27FBB74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74E8);
  }

  return result;
}

unint64_t sub_25BC5CEDC()
{
  result = qword_27FBB74F0;
  if (!qword_27FBB74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74F0);
  }

  return result;
}

unint64_t sub_25BC5CF34()
{
  result = qword_27FBB74F8;
  if (!qword_27FBB74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB74F8);
  }

  return result;
}

unint64_t sub_25BC5CF8C()
{
  result = qword_27FBB7500;
  if (!qword_27FBB7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7500);
  }

  return result;
}

unint64_t sub_25BC5CFE4()
{
  result = qword_27FBB7508;
  if (!qword_27FBB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7508);
  }

  return result;
}

unint64_t sub_25BC5D03C()
{
  result = qword_27FBB7510;
  if (!qword_27FBB7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7510);
  }

  return result;
}

unint64_t sub_25BC5D094()
{
  result = qword_27FBB7518;
  if (!qword_27FBB7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7518);
  }

  return result;
}

uint64_t sub_25BC5D23C()
{
  OUTLINED_FUNCTION_0_83();
  v0();
  v1 = *(v3 + 16);

  return v1;
}

uint64_t sub_25BC5D280(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 56);
  swift_unknownObjectRetain();
  v8(&v10, a1, a2, MEMORY[0x277D83B88], ObjectType, v6);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    return v10;
  }

  return result;
}

uint64_t sub_25BC5D3A4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_25BC5D280(sub_25BC5DD10, v3);
}

uint64_t sub_25BC5D3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;

  v4 = sub_25BC76C08();
  [v4 lock];

  v6 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v5 < 0)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v25 = sub_25BC5DD48;
    v26 = v27;
    v20 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    swift_unknownObjectRetain();
    v20(&v33, sub_25BC5DD2C, &v24, MEMORY[0x277D83B88], ObjectType, v5 & 0x7FFFFFFFFFFFFFFFLL);
    sub_25BB72F9C(v6, v5);
  }

  else
  {
    v32[0] = *(v3 + 24);

    v7 = sub_25BB71DA0(v32);
    if (v7)
    {
      sub_25BC76F00(v7, v8, v9, v10, v11, v12, v13, v14);
      v16 = v15;
      v17 = swift_getObjectType();
      v18 = MEMORY[0x28223BE20](v17);
      v25 = sub_25BC5DD48;
      v26 = v27;
      (*(v16 + 56))(&v33, sub_25BC5DD60, v18);
      swift_unknownObjectRelease();
      sub_25BB72F9C(v6, v5);
    }

    else
    {
      swift_beginAccess();
      v21 = *(v6 + 48);
      v22 = sub_25BB7135C() + v21;
      if (!v21)
      {
        v22 = 0;
      }

      v30 = v21;
      v31 = v22;
      sub_25BB5C3B0();
      sub_25BCB582C();
      sub_25BB72F9C(v6, v5);
    }
  }

  [*(v3 + 48) unlock];
}

uint64_t sub_25BC5D688(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_25BC5D9B8(sub_25BC5DD48, v3);
}

uint64_t sub_25BC5D708(uint64_t a1, uint64_t a2)
{
  sub_25BB9ACC4();
  v5 = (v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8.n128_f64[0] = sub_25BB33C70(v7, v6);
  sub_25BC5D8B8(v7, v6, a1, a2, v8);
  return sub_25BB0D160(v7, v6);
}

uint64_t sub_25BC5D7D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_83();
  v4();
  result = v13;
  v6 = *(v13 + 16);
  if (v6)
  {
    v7 = (v13 + 32);
    v8 = 1;
    while (1)
    {
      v9 = *v7++;
      v10 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        break;
      }

      v8 = v10;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = 1;
LABEL_7:

  (*(a2 + 8))(&v12, a1, a2);
  if (v12 - 1 > 0xA)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCD1E10[(v12 - 1)];
  }

  result = v10 * v11;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BC5D8B8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v11 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v10 = v11;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v8 = *(result + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v10 = v8;
LABEL_9:
      result = sub_25BC5DC50(result, v10, a5, v9, a3, a4);
      break;
    case 3uLL:
      result = 0;
      v7 = 0;
      goto LABEL_5;
    default:
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_25BC5DBA8(result, v7, a3, a4);
      break;
  }

  return result;
}

uint64_t sub_25BC5D954(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&var1, a1);
  if (var1 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD1E10[(var1 - 1)];
  }
}

uint64_t sub_25BC5D9B8(uint64_t a1, uint64_t a2)
{
  sub_25BC2B4B4();
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(&v9, a1, a2, MEMORY[0x277D83B88], ObjectType, v6);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_25BC5DA5C()
{
  OUTLINED_FUNCTION_0_83();
  v0();
  result = v7;
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = (v7 + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 1;
LABEL_7:

    return v6;
  }

  return result;
}

void *sub_25BC5DAD8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25BC5DAFC@<X0>(uint64_t *a3@<X8>)
{
  sub_25BB5C3B0();
  result = sub_25BCB582C();
  *a3 = result;
  return result;
}

void *sub_25BC5DB6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = (a3)(&v5, a1, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_25BC5DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  v8 = &v5;
  v9 = &v5 + BYTE6(a2);
  sub_25BB5C3B0();
  return sub_25BCB582C();
}

uint64_t sub_25BC5DC50(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_25BCB584C();
  if (!result || (result = sub_25BCB587C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25BCB586C();
      sub_25BB5C3B0();
      return sub_25BCB582C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BC5DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift", 118, 2, 19, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BC5DE44()
{
  v15 = MEMORY[0x277D84F90];
  sub_25BAC1E24(3, 0);

  MEMORY[0x25F876F40](v1);
  OUTLINED_FUNCTION_0_22();
  if (v3)
  {
    v10 = OUTLINED_FUNCTION_1_69(v2);
    OUTLINED_FUNCTION_8_52(v10, v11);
  }

  OUTLINED_FUNCTION_10_11();
  v4 = *(v0 + 48);
  if (v4)
  {

    MEMORY[0x25F876F40](v5);
    OUTLINED_FUNCTION_0_22();
    if (v3)
    {
      v12 = OUTLINED_FUNCTION_1_69(v6);
      OUTLINED_FUNCTION_8_52(v12, v13);
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (*(v0 + 56))
  {

    MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_5_56();
    if (v3)
    {
      v14 = OUTLINED_FUNCTION_81(v8);
      OUTLINED_FUNCTION_8_52(v14, v4 + 1);
    }

    OUTLINED_FUNCTION_11_46();
  }

  return v15;
}

uint64_t sub_25BC5DF28()
{
  result = 0;
LABEL_2:
  if (result == *(*(*(v0 + 40) + 152) + 16))
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCE4E40);
    v6 = sub_25BCB617C();
    v7 = MEMORY[0x277D83B88];
    v8 = MEMORY[0x25F876F80](v6, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE4E70);
    v9 = MEMORY[0x25F876F80](*(v0 + 64), v7);
    MEMORY[0x25F876C90](v9);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    BYTE4(v20) = 9;
    sub_25BCB617C();
    sub_25BA97890("channelAxis", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift", 118, 2, 65, v10, v11, 0, 0xE000000000000000, 0, 0xE000000000000000, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v2 = *(v0 + 64);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    --v3;
    if (v5 == result)
    {
      ++result;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_25BC5E0B8()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v1 = (*(*v0 + 288))();
    v0[18] = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

void sub_25BC5E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("initResultDescriptorsArray()", 28, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift", 118, 2, 106, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

void sub_25BC5E19C(unint64_t a1)
{
  v3 = sub_25BAC0E14(1, *(*(*(v1 + 40) + 152) + 16));
  sub_25BC5DE18();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a1)
  {
    v1 = *(v4 + 8 * a1 + 32);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  sub_25BAA2110(v3, v5, v6, v7);
  v3 = v8;
LABEL_4:
  if (*(v3 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8 * a1 + 32) = v1;
  }
}

uint64_t sub_25BC5E23C()
{
  OUTLINED_FUNCTION_1_0();
  sub_25BAC4018();
  if (v3 == OUTLINED_FUNCTION_19_31())
  {
    v1[5] = v0;
  }

  else if (v1[7] && sub_25BAC4018() == *(v2 + 16))
  {
    v1[7] = v0;
  }

  else
  {
    if (!v1[6] || sub_25BAC4018() != *(v2 + 16))
    {
      return 0;
    }

    v1[6] = v0;
  }

  return 1;
}

uint64_t sub_25BC5E2EC()
{

  return v0;
}

uint64_t sub_25BC5E334()
{
  sub_25BC5E2EC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5E468()
{
  v23 = MEMORY[0x277D84F90];
  sub_25BAC1E24(5, 0);

  MEMORY[0x25F876F40](v1);
  OUTLINED_FUNCTION_0_22();
  if (v3)
  {
    v14 = OUTLINED_FUNCTION_1_69(v2);
    OUTLINED_FUNCTION_8_52(v14, v15);
  }

  OUTLINED_FUNCTION_10_11();
  if (v0[19])
  {

    MEMORY[0x25F876F40](v4);
    OUTLINED_FUNCTION_0_22();
    if (v3)
    {
      v16 = OUTLINED_FUNCTION_1_69(v5);
      OUTLINED_FUNCTION_8_52(v16, v17);
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[20])
  {

    MEMORY[0x25F876F40](v6);
    OUTLINED_FUNCTION_0_22();
    if (v3)
    {
      v18 = OUTLINED_FUNCTION_1_69(v7);
      OUTLINED_FUNCTION_8_52(v18, v19);
    }

    OUTLINED_FUNCTION_10_11();
  }

  v8 = v0[6];
  if (v8)
  {

    MEMORY[0x25F876F40](v9);
    OUTLINED_FUNCTION_0_22();
    if (v3)
    {
      v20 = OUTLINED_FUNCTION_1_69(v10);
      OUTLINED_FUNCTION_8_52(v20, v21);
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (v0[7])
  {

    MEMORY[0x25F876F40](v11);
    OUTLINED_FUNCTION_5_56();
    if (v3)
    {
      v22 = OUTLINED_FUNCTION_81(v12);
      OUTLINED_FUNCTION_8_52(v22, v8 + 1);
    }

    OUTLINED_FUNCTION_11_46();
  }

  return v23;
}

uint64_t sub_25BC5E5CC()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BC5E23C() & 1) == 0)
  {
    v3 = (v1 + 152);
    if (!*(v1 + 152) || (sub_25BAC4018(), v2 != OUTLINED_FUNCTION_19_31()))
    {
      v5 = *(v1 + 160);
      v4 = (v1 + 160);
      if (!v5)
      {
        return 0;
      }

      sub_25BAC4018();
      if (v2 != OUTLINED_FUNCTION_19_31())
      {
        return 0;
      }

      v3 = v4;
    }

    *v3 = v0;
  }

  return 1;
}

uint64_t sub_25BC5E660()
{
}

uint64_t sub_25BC5E690()
{
  sub_25BC5E2EC();

  return v0;
}

uint64_t sub_25BC5E6BC()
{
  sub_25BC5E690();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5E72C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBB6D0;
  v3 = v1[6];
  *(v2 + 32) = v1[5];
  if (v3)
  {

    MEMORY[0x25F876F40](v4);
    OUTLINED_FUNCTION_0_22();
    if (v6)
    {
      v10 = OUTLINED_FUNCTION_1_69(v5);
      OUTLINED_FUNCTION_8_52(v10, v11);
    }

    OUTLINED_FUNCTION_10_11();
  }

  else
  {
  }

  if (v1[7])
  {

    MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_5_56();
    if (v6)
    {
      v12 = OUTLINED_FUNCTION_81(v8);
      OUTLINED_FUNCTION_8_52(v12, v3 + 1);
    }

    OUTLINED_FUNCTION_11_46();
  }

  return v2;
}

uint64_t sub_25BC5E814(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, _BYTE *a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 168) = *a11;
  *(v15 + 176) = a14;
  *(v15 + 184) = a15;
  if (a3)
  {
    v20 = a3;
    sub_25BA9D8C4(a14, a15);
  }

  else
  {
    sub_25BA9D8C4(a14, a15);
    v23 = OUTLINED_FUNCTION_6_53();
    a1 = sub_25BAA5EA0(v23, v24 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000);
    a2 = v25;
    v20 = v26;
  }

  *(v15 + 152) = a5;
  *(v15 + 160) = a6;
  *(v15 + 144) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v20;
  *(v15 + 40) = a4;
  *(v15 + 48) = a7;
  *(v15 + 56) = a8;
  *(v15 + 64) = a12;
  *(v15 + 72) = a9;
  *(v15 + 76) = a10;
  v27 = a13[1];
  *(v15 + 80) = *a13;
  *(v15 + 96) = v27;
  *(v15 + 112) = a13[2];
  *(v15 + 122) = *(a13 + 42);
  sub_25BA9D148(a14, a15);
  return v15;
}

uint64_t sub_25BC5E920()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE50;

  sub_25BAC9400(v5, v4 + 32);
  if (*(v0 + 168))
  {
    if (*(v0 + 168) != 1)
    {
      return v4;
    }

LABEL_6:
    v7 = *(v3 + 152);
    if (v7)
    {
      v8 = *(v7 + 152);
      v9 = *(v7 + 160);

      sub_25BCB617C();
      OUTLINED_FUNCTION_13_42();
      v4 = v10;

      *(v4 + 16) = v1;
      *(v4 + 48) = v8;
      *(v4 + 56) = v9;
    }

    if (*(v3 + 160))
    {
      OUTLINED_FUNCTION_14_39();
      sub_25BCB617C();
      if (v1 >= v2 >> 1)
      {
        OUTLINED_FUNCTION_15_40();
        v4 = v12;
      }

      OUTLINED_FUNCTION_16_45();
    }

    return v4;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v13);

  if (!v14)
  {
    sub_25BAA4AF4(v13);
    return v4;
  }

  v6 = *(v14 + 24);
  sub_25BAA4AF4(v13);
  if (v6)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_25BC5EA70()
{
  sub_25BC5E690();
  sub_25BA9D148(*(v0 + 176), *(v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5EAD4()
{
  OUTLINED_FUNCTION_7_53();
  sub_25BCB625C();
  sub_25BAD4C78();
  MEMORY[0x25F878200](*(v0 + 168));
  sub_25BCB7A0C();
  return OUTLINED_FUNCTION_17_41();
}

uint64_t sub_25BC5EB58()
{
  v19 = MEMORY[0x277D84F90];
  sub_25BAC1E24(5, 0);
  swift_beginAccess();

  MEMORY[0x25F876F40](v1);
  OUTLINED_FUNCTION_2_69();
  if (v3)
  {
    v12 = OUTLINED_FUNCTION_1_69(v2);
    OUTLINED_FUNCTION_18_39(v12, v13);
  }

  OUTLINED_FUNCTION_10_44();

  MEMORY[0x25F876F40](v4);
  OUTLINED_FUNCTION_2_69();
  if (v3)
  {
    v14 = OUTLINED_FUNCTION_1_69(v5);
    OUTLINED_FUNCTION_18_39(v14, v15);
  }

  OUTLINED_FUNCTION_10_44();
  v6 = *(v0 + 48);
  if (v6)
  {

    MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_2_69();
    if (v3)
    {
      v16 = OUTLINED_FUNCTION_1_69(v8);
      OUTLINED_FUNCTION_18_39(v16, v17);
    }

    OUTLINED_FUNCTION_10_44();
  }

  if (*(v0 + 56))
  {

    MEMORY[0x25F876F40](v9);
    OUTLINED_FUNCTION_5_56();
    if (v3)
    {
      v18 = OUTLINED_FUNCTION_81(v10);
      OUTLINED_FUNCTION_18_39(v18, v6 + 1);
    }

    sub_25BCB680C();
  }

  return v19;
}

uint64_t sub_25BC5EC94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, _OWORD *a11)
{
  *(v11 + 152) = a4;
  if (a3)
  {
    v18 = a3;
  }

  else
  {

    v21 = OUTLINED_FUNCTION_6_53();
    a1 = sub_25BAA5EA0(v21, v22 | 0xEF646172675F0000);
    a2 = v23;
    v18 = v24;
  }

  *(v11 + 144) = 0;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v18;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 76) = a10;
  v25 = a11[1];
  *(v11 + 80) = *a11;
  *(v11 + 96) = v25;
  *(v11 + 112) = a11[2];
  *(v11 + 122) = *(a11 + 42);

  return v11;
}

uint64_t sub_25BC5ED7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;

  sub_25BAC9400(v4, v3 + 32);
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = *(v5 + 152);
    v7 = *(v5 + 160);

    sub_25BCB617C();
    OUTLINED_FUNCTION_13_42();
    v3 = v8;

    *(v3 + 16) = v1;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
  }

  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_14_39();
    sub_25BCB617C();
    if (v1 >= v2 >> 1)
    {
      OUTLINED_FUNCTION_15_40();
      v3 = v10;
    }

    OUTLINED_FUNCTION_16_45();
  }

  return v3;
}

uint64_t sub_25BC5EE64()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BC5E23C() & 1) == 0)
  {
    swift_beginAccess();
    sub_25BAC4018();
    if (v2 != OUTLINED_FUNCTION_19_31())
    {
      return 0;
    }

    *(v1 + 152) = v0;
  }

  return 1;
}

uint64_t sub_25BC5EEF0()
{
  sub_25BC5E2EC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC5EF50()
{
  OUTLINED_FUNCTION_7_53();
  sub_25BCB625C();
  sub_25BAD4C78();
  sub_25BCB7A0C();
  return OUTLINED_FUNCTION_17_41();
}

uint64_t sub_25BC5EFD4(uint64_t a1)
{
  result = sub_25BC5F084(&qword_27FBB6148, type metadata accessor for BatchNormOperation, byte_25BCD1FC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC5F02C(uint64_t a1)
{
  result = sub_25BC5F084(&qword_27FBB7520, type metadata accessor for BaseNormalizeOperation, &unk_25BCD1F98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC5F084(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC5F0F4()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F138(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BA928B4();
  [v4 lock];

  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a2 + 40, v10);
  if (v12)
  {
    if (v12 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v11);
    }

    else
    {
      sub_25BA9778C(v10);
    }

    v7 = 1;
  }

  else
  {
    sub_25BA9BE3C(v10, v9);
    v5 = v9[1];
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 56))(ObjectType, v5);
    sub_25BA977E0(v9);
  }

  [*(a1 + 224) unlock];

  return v7 & 1;
}

uint64_t sub_25BC5F250(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = *a2;
  v4[2] = 0;
  v4[4] = 0;
  v4[28] = 0;
  v4[29] = 0;
  type metadata accessor for InputOperation();
  swift_allocObject();
  sub_25BCB617C();
  v9 = OUTLINED_FUNCTION_3();
  v15 = sub_25BAA5FD0(v9, v10, v11, v12, v13, v14);
  v16 = v15;
  if ((a4 & 0x100000000) != 0)
  {
    LODWORD(a4) = *(v15 + 16);
  }

  *(v5 + 6) = a4;
  v5[19] = v7;
  *(v5 + 160) = v8;
  OUTLINED_FUNCTION_0_84();
  v19 = sub_25BAA6C78(v17, 255, v18, &unk_25BCC42EC);
  swift_weakInit();

  v35 = sub_25BAA6CC0(0);
  v36 = v20;
  result = sub_25BAA6CD8();
  if (*(result + 16))
  {
    v22 = *(result + 32);
    sub_25BCB617C();

    v37 = v22;
    result = sub_25BAA6CD8();
    if (*(result + 16))
    {
      v23 = *(result + 40);

      LOBYTE(v38) = v23;
      v24 = swift_weakAssign();
      OUTLINED_FUNCTION_4_62(v24, v25, v26, v27, v28, v29, v30, v31, v16, v19, 0, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, SHIBYTE(v42));
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0;
  v55 = 0;
  v48 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ConstantOp.swift";
  v49 = 112;
  v50 = 2;
  v51 = xmmword_25BCD1FE0;
  v52 = "init(id:value:name:creationSite:)";
  v53 = 33;
  v54 = 2;
  type metadata accessor for ConstantOperation();
  swift_allocObject();
  swift_unknownObjectRetain();
  v13 = OUTLINED_FUNCTION_3();
  v17 = sub_25BAF6554(v13, v14, v15, a1, a2, a3, a4, v16);
  v18 = v17;
  if ((a6 & 0x100000000) != 0)
  {
    LODWORD(a6) = *(v17 + 16);
  }

  *(v7 + 24) = a6;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v33, ObjectType, a2);
  *(v7 + 152) = v33;
  (*(a2 + 8))(&v33, ObjectType, a2);
  *(v7 + 160) = v33;
  v20 = sub_25BAA6C78(&qword_27FBB4570, 255, type metadata accessor for ConstantOperation, byte_25BCBB79C);
  OUTLINED_FUNCTION_5_57();
  swift_weakInit();
  v33 = v18;
  v34 = v20;

  v39 = sub_25BAE3B3C(0);
  v40 = v21;
  result = sub_25BAF64F0();
  if (*(result + 16))
  {
    v23 = *(result + 32);
    sub_25BCB617C();

    v41 = v23;
    result = sub_25BAF64F0();
    if (*(result + 16))
    {
      v24 = *(result + 40);

      swift_unknownObjectRelease();
      LOBYTE(v42) = v24;
      v35 = 0;
      OUTLINED_FUNCTION_5_57();
      v25 = swift_weakAssign();
      OUTLINED_FUNCTION_4_62(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      return OUTLINED_FUNCTION_47();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC5F634(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC5F674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC5F6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 106))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 105);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC5F714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 90) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC5F768(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 89) = 0u;
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 105) = a2;
  return result;
}

uint64_t sub_25BC5F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(a1 + 40, v9);
  if (!v9[105])
  {
    sub_25BA9323C(a1 + 40, v7);
    sub_25BA9BD18(a2, a3, v8);
    sub_25BA9778C(v7);
    swift_beginAccess();
    sub_25BA97834(v8, a1 + 40);
    swift_endAccess();
  }

  return sub_25BA9778C(v9);
}

uint64_t sub_25BC5F9AC()
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](v0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC5FA60(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC5FAD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_25BAA5BB4(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), v11, a5, a6);
}

void sub_25BC5FB58(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  a7[2] = 0;
  a7[4] = 0;
  v17 = a9 + 40;
  v16 = *(a9 + 40);
  a7[28] = 0;
  a7[29] = 0;
  v51 = v16;
  v18 = v16(a8, a9);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (*(v18 + 16) <= a2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v47 = a6;
  v52 = a5;
  v19 = v18 + 16 * a2;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  sub_25BCB617C();

  if ((a4 & 0x100000000) != 0)
  {
    LODWORD(a4) = (*(a9 + 16))(a8, a9);
  }

  *(v10 + 6) = a4;
  v10[19] = v20;
  *(v10 + 160) = v21;
  v22 = sub_25BC60530(a8, a9);
  v49 = a8;
  v50 = a1;
  v23 = (*(a9 + 32))(a8, a9);
  v17 = v23;
  if (v22 != 1)
  {
    v45 = a2;
    v46 = v10;
    v25 = sub_25BAAF54C(v23);
    if (v25)
    {
      v26 = v25;
      v54[0] = MEMORY[0x277D84F90];
      sub_25BAA21EC(0, v25 & ~(v25 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v28 = v54[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v27, v17);
        }

        else
        {
        }

        v29 = sub_25BAA0954();

        v54[0] = v28;
        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          sub_25BAA21EC(v30 > 1, v31 + 1, 1);
          v28 = v54[0];
        }

        ++v27;
        v28[2] = v31 + 1;
        v28[v31 + 4] = v29;
      }

      while (v26 != v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v32 = sub_25BAAF550(v28);
    v34 = v33;

    if (v34)
    {
      v24 = 0;
    }

    else
    {
      v24 = v32;
    }

    a2 = v45;
    v10 = v46;
    goto LABEL_24;
  }

  sub_25BAB4D78(0, (v23 & 0xC000000000000001) == 0, v23);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  while (1)
  {

    v24 = sub_25BAA0954();

LABEL_24:
    v35 = v49;
    v36 = v50;
    if (__OFADD__(v24, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v50 = v24 + 1;
    swift_weakInit();
    v54[0] = v36;
    v54[1] = a9;
    v37 = *(a9 + 72);

    swift_unknownObjectRetain_n();
    v54[6] = v37(a2, v49, a9);
    v54[7] = v38;
    v39 = v51(v49, a9);
    if (*(v39 + 16) <= a2)
    {
      goto LABEL_38;
    }

    v17 = v39;
    v40 = *(v39 + 16 * a2 + 32);
    sub_25BCB617C();

    v54[8] = v40;
    v49 = a9;
    v41 = v51(v35, a9);
    if (*(v41 + 16) > a2)
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    MEMORY[0x25F8779B0](0, v17);
  }

  v42 = *(v41 + 16 * a2 + 40);

  swift_unknownObjectRelease();
  v55 = v42;
  v54[2] = a2;
  swift_weakAssign();

  v54[5] = v47;
  v54[3] = v50;
  sub_25BAA0E58(v54, (v10 + 5));
  *(v10 + 145) = 0;
  sub_25BAA51C8(a3, (v10 + 21));
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  if (qword_27FBB3830 >= v50)
  {
  }

  else
  {
    v43 = sub_25BAD4CB8(v35, a9);
    swift_unknownObjectRelease();
    if (v43 != 1 || v52)
    {

      goto LABEL_33;
    }

    v44 = sub_25BA928B4();
    [v44 lock];

    sub_25BA92920(v10, 0, 0, &v53);
    [v10[28] unlock];
  }

  swift_unknownObjectRelease();
LABEL_33:
  sub_25BA9C2C8(a3);
  sub_25BA977E0(v54);
}

uint64_t sub_25BC6002C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC6006C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25BC600BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC600FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25BC6017C()
{
  if (*(*(v0 + 64) + 16) == 1)
  {
    v1 = *(v0 + 24);
    sub_25BCB617C();
  }

  else
  {
    v4 = *(v0 + 24);
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v2 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v2);

    return v4;
  }

  return v1;
}

uint64_t sub_25BC602F4()
{
  v0 = *(sub_25BB31258() + 16);

  sub_25BB30F88();
  if (v0 == 1)
  {
    return v1;
  }

  v3 = v1;
  OUTLINED_FUNCTION_11_4();
  sub_25BCB77FC();
  OUTLINED_FUNCTION_28_0();

  return v3;
}

uint64_t sub_25BC603DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v8 = v6;
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  MEMORY[0x25F876C90](a1, a2);
  return v8;
}

uint64_t sub_25BC60530(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  if (v2 >> 62)
  {
    v3 = sub_25BCB749C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void sub_25BC607AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = (*(a6 + 32))(a5, a6);
  v10 = 0;
  v50 = sub_25BA9BEA0(v9);
  v45 = a2;
  v43 = MEMORY[0x277D84F90];
  v47 = v6;
  while (v50 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x25F8779B0](v10, v9);
    }

    else
    {
      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v11 = *(v9 + 8 * v10 + 32);
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    if (!sub_25BAB3058())
    {
      goto LABEL_18;
    }

    v14 = v13;
    v15 = sub_25BAD5384();
    if (v16)
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v44 = v15;
    ObjectType = swift_getObjectType();
    v18 = (*(v14 + 16))(ObjectType, v14);
    v20 = v19;
    v22 = v21;
    v23 = swift_getObjectType();
    if (v18 != (*(v45 + 16))(v23))
    {
      swift_unknownObjectRelease();

      v6 = v47;
      goto LABEL_18;
    }

    if (v20 == v24 && v22 == v25)
    {
      swift_unknownObjectRelease();

      v6 = v47;
      goto LABEL_20;
    }

    v27 = sub_25BCB789C();
    swift_unknownObjectRelease();

    v6 = v47;
    if (v27)
    {
LABEL_20:
      v28 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFDAC4();
        v28 = v31;
      }

      v29 = *(v28 + 16);
      v43 = v28;
      if (v29 >= *(v28 + 24) >> 1)
      {
        sub_25BAFDAC4();
        v43 = v32;
      }

      *(v43 + 16) = v29 + 1;
      v30 = v43 + 16 * v29;
      *(v30 + 32) = v11;
      *(v30 + 40) = v44;
      v10 = v12;
    }

    else
    {
LABEL_18:

      ++v10;
    }
  }

  v33 = *(v43 + 16);
  if (v33)
  {
    v49 = *(v6 + 80);
    v48 = swift_getObjectType();
    v34 = (v43 + 40);
    v35 = a4;
    do
    {
      v36 = *(v34 - 1);
      v37 = *v34;
      sub_25BAA51C8(v36 + 168, v52);
      v38 = *(v36 + 24);

      v39 = sub_25BACB06C();
      v40 = sub_25BAD259C();
      type metadata accessor for TensorRepresentation();
      v41 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_25BC5FB58(a3, v37, v52, v38, v39, v40, v41, v48, v35);
      v49(v36, v42, a5, v47);

      v34 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {
  }
}

uint64_t sub_25BC60BE4()
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

unint64_t sub_25BC60C50()
{
  result = qword_28154ED88;
  if (!qword_28154ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154ED88);
  }

  return result;
}

uint64_t sub_25BC60CE8()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7538, &qword_25BCD24C8);
  v0 = sub_25BCB63AC();
  v2 = v1;

  v6 = v0;
  v7 = v2;
  v3 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v3);
  return sub_25BAA4AF4(v5);
}

uint64_t MultiheadAttention.queryWeight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BC60E48@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.queryWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.queryWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BC60F48(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

void MultiheadAttention.queryBias.getter(void *a1@<X8>)
{
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

uint64_t *MultiheadAttention.queryBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 26) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.queryBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 26) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61208;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BC61208(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_31_27();
      return Parameter.wrappedValue.setter(v4);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    result = OUTLINED_FUNCTION_98(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_46_21();
  Parameter.wrappedValue.setter(v15);
}

uint64_t MultiheadAttention.$queryBias.getter()
{
  if (*(v0 + 26) == 1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_68_10();
  }

  return OUTLINED_FUNCTION_67_8(v1);
}

uint64_t MultiheadAttention.keyWeight.getter()
{
  v0 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v3 = OUTLINED_FUNCTION_75_1(v0, v1);

  return sub_25BAB69FC(v3);
}

uint64_t sub_25BC61384@<X0>(void *a1@<X8>)
{
  result = MultiheadAttention.keyWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t MultiheadAttention.keyWeight.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 32));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BC61490(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v4);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v3);
  }
}

void MultiheadAttention.keyBias.getter(void *a1@<X8>)
{
  if (*(v1 + 58) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_75_1(v2, v3);

  sub_25BAB69FC(v5);
}

uint64_t *MultiheadAttention.keyBias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 58) == 1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_7();
      return Parameter.wrappedValue.setter(v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_55();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_19_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = OUTLINED_FUNCTION_98(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
  }

  return result;
}

uint64_t (*MultiheadAttention.keyBias.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_40_0(a1);
  if (*(v2 + 58) != 1)
  {
    *v1 = 0;
    return sub_25BC659CC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v2 + 48));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      OUTLINED_FUNCTION_86_0(v3);
      return sub_25BC61758;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}