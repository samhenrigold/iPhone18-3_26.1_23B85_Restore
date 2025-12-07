void *sub_1C869D46C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8, &unk_1C86FE270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8, &unk_1C86FD090);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D5A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20, &qword_1C86FD138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D6DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA10, &qword_1C86FD128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18, &qword_1C86FD130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D814(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA00, &qword_1C86FD118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA08, &qword_1C86FD120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C869DEA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_43_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C869DF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_104();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  sub_1C86F954C();
  sub_1C86F8F9C();
  sub_1C86F956C();
  OUTLINED_FUNCTION_60();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (sub_1C86F948C() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_1C869E8EC(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C869E05C(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1C86F92FC();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v31;
    }

    else
    {
      result = sub_1C86F92EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_1C869E2A4(v15, result + 1, a4, a5, a6);
        if (v25[3] <= v25[2])
        {
          sub_1C869E6D8();
        }

        v26 = v16;
        sub_1C869E86C(v26, v25);

        *v11 = v25;
        *a1 = v26;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    sub_1C86F923C();
    OUTLINED_FUNCTION_60();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *v11;
        v27 = a2;
        sub_1C869EA54();
        *v11 = v32;
        *a1 = v27;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_1C86F924C();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v28 = *(*(v14 + 48) + 8 * v22);
    *a1 = v28;
    v29 = v28;
    return 0;
  }

  return result;
}

uint64_t sub_1C869E2A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_1C86F933C();
    v18 = v6;
    sub_1C86F92DC();
    while (1)
    {
      if (!sub_1C86F930C())
      {

        return v6;
      }

      a5(0);
      swift_dynamicCast();
      if (*(v6 + 24) <= *(v6 + 16))
      {
        sub_1C869E6D8();
      }

      v6 = v18;
      result = sub_1C86F923C();
      v8 = v18 + 56;
      v9 = -1 << *(v18 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v12 = __clz(__rbit64((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v18 + 48) + 8 * v12) = v17;
      ++*(v18 + 16);
    }

    v13 = 0;
    v14 = (63 - v9) >> 6;
    while (++v11 != v14 || (v13 & 1) == 0)
    {
      v15 = v11 == v14;
      if (v11 == v14)
      {
        v11 = 0;
      }

      v13 |= v15;
      v16 = *(v8 + 8 * v11);
      if (v16 != -1)
      {
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C869E47C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38, &qword_1C86FD158);
  result = sub_1C86F932C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1C869CD18(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C86F954C();
    sub_1C86F8F9C();
    result = sub_1C86F956C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C869E6D8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_40_0(v2, v3, v4);
  OUTLINED_FUNCTION_86();
  v5 = sub_1C86F932C();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_108();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_53();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v1 + 32);
    if (v25 >= 64)
    {
      sub_1C869CD18(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      *v8 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_97();
LABEL_12:
    v17 = sub_1C86F923C() & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_94();
LABEL_21:
    OUTLINED_FUNCTION_89();
    *(v13 + v22) |= v23;
    OUTLINED_FUNCTION_65(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_93();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_90();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_1C869E86C(uint64_t a1, void *a2)
{
  sub_1C86F923C();
  OUTLINED_FUNCTION_60();
  result = sub_1C86F92CC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1C869E8EC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C869E47C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C869EE14(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1C86F954C();
      sub_1C86F8F9C();
      result = sub_1C86F956C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1C86F948C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C869EB90();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1C86F94AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1C869EA54()
{
  OUTLINED_FUNCTION_107();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(*v0 + 16);
  v11 = *(*v0 + 24);
  if (v11 <= v10 || (v1 & 1) == 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_80(v10);
      sub_1C869E6D8();
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      v16 = OUTLINED_FUNCTION_80(v10);
      sub_1C869F048(v16, v17, v18);
LABEL_10:
      v19 = *v0;
      sub_1C86F923C();
      OUTLINED_FUNCTION_60();
      v22 = ~v21;
      while (1)
      {
        v7 = v20 & v22;
        if (((*(v19 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v5(0);
        v23 = *(*(v19 + 48) + 8 * v7);
        v24 = sub_1C86F924C();

        if (v24)
        {
          goto LABEL_15;
        }

        v20 = v7 + 1;
      }
    }

    sub_1C869ECE8(v2, v3);
  }

LABEL_7:
  v12 = *v0;
  *(*v0 + 8 * (v7 >> 6) + 56) |= 1 << v7;
  *(*(v12 + 48) + 8 * v7) = v9;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    sub_1C86F94AC();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
    OUTLINED_FUNCTION_108();
  }
}

void *sub_1C869EB90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38, &qword_1C86FD158);
  v2 = *v0;
  v3 = sub_1C86F931C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_1C869ECE8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C86F931C();
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
        OUTLINED_FUNCTION_97();
LABEL_17:
        v20 = v16 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        *(*(v6 + 48) + 8 * v20) = v21;
        result = v21;
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

      ++v17;
      if (*(v4 + 56 + 8 * v10))
      {
        OUTLINED_FUNCTION_53();
        v14 = v19 & v18;
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

uint64_t sub_1C869EE14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38, &qword_1C86FD158);
  result = sub_1C86F932C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1C86F954C();

        sub_1C86F8F9C();
        result = sub_1C86F956C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_1C869F048(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_40_0(a1, a2, a3);
  v5 = sub_1C86F932C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v3;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        OUTLINED_FUNCTION_58();
        v18 = sub_1C86F923C() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_94();
LABEL_21:
        OUTLINED_FUNCTION_89();
        *(v12 + v23) |= v24;
        OUTLINED_FUNCTION_65(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_93();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_90();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v3 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v4 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_53();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v3 = v6;
  }
}

uint64_t sub_1C869F1E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C86F8C3C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA7AE90]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA7AEB0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_1C869F268()
{
  result = qword_1EC2AD7D0;
  if (!qword_1EC2AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD7D0);
  }

  return result;
}

uint64_t sub_1C869F2D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C869F33C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1C869F384(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C869F398(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_9_3(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

__n128 OUTLINED_FUNCTION_15_0(__n128 *a1)
{
  result = v1[3];
  a1[1] = result;
  a1[3].n128_u64[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x1CCA7C540);
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void *OUTLINED_FUNCTION_45_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = a2;
  result[4] = *(v2 + 40);
  result[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_59()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_71(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1C86A90CC(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_106@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = v3;
  *(a2 + 8) = a3;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_109(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{

  return sub_1C86F93FC();
}

_OWORD *OUTLINED_FUNCTION_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  *(v11 + 16) = v12;

  return sub_1C8689930(&a10, (v11 + 32 * v10 + 32));
}

void OUTLINED_FUNCTION_111(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_112()
{

  return sub_1C869C918(v0, v1);
}

uint64_t OUTLINED_FUNCTION_113@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1C869C0F0(va, a1);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

void sub_1C869FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1C86F8E8C();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(matching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(matching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.values(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

uint64_t CKKnowledgeStore.values()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

id sub_1C86A02E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a1;
  a4();

  v7 = sub_1C86F908C();

  return v7;
}

uint64_t CKKnowledgeStore.value(forKey:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v10 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR___CKKnowledgeStore_backingStore), v9);
  return (*(*(v10 + 8) + 24))(a1, a2, a3, a4, v9);
}

uint64_t CKKnowledgeStore.values(forKeys:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

{
  OUTLINED_FUNCTION_10();
  v4 = *(v1 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v5 = *(v1 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR___CKKnowledgeStore_backingStore), v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  v7 = *(v5 + 8);
  v8 = *(v7 + 40);

  v8(v3, sub_1C86A1920, v6, v4, v7);
}

uint64_t CKKnowledgeStore.values(forKeys:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t sub_1C86A066C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C868FEF0(v6, v15);
      if (v16)
      {
        result = sub_1C868FEF0(v15, &v13);
        if (!v14)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v14 = sub_1C86A1A20();
        *&v13 = v9;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C86C4C68();
        v7 = v11;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_1C86C4C68();
        v7 = v12;
      }

      *(v7 + 16) = v10 + 1;
      sub_1C8689930(&v13, (v7 + 32 * v10 + 32));
      sub_1C86885EC(v15);
      v6 += 32;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
  a3(a1, v7);
}

uint64_t CKKnowledgeStore.values(forKeysMatching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t sub_1C86A090C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t CKKnowledgeStore.values(forKeysMatching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

id sub_1C86A0A28(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id), uint64_t a6)
{
  v8 = a3;
  v9 = a1;
  a5(v8);

  v10 = sub_1C86F908C();

  return v10;
}

id CKKnowledgeStore.entity(withIdentifier:)()
{
  OUTLINED_FUNCTION_10_4();
  v3 = objc_allocWithZone(type metadata accessor for CKKnowledgeStoreEntity());

  return sub_1C86C7E1C(v2, v0, v1);
}

uint64_t CKKnowledgeStore.entities(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  v4 = *&v1[OBJC_IVAR___CKKnowledgeStore_backingStore + 24];
  v5 = *&v1[OBJC_IVAR___CKKnowledgeStore_backingStore + 32];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR___CKKnowledgeStore_backingStore], v4);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v3;
  v6[5] = v1;
  v7 = *(v5 + 8);
  v8 = *(v7 + 32);

  v9 = v1;
  v8(sub_1C86A1928, v6, v4, v7);
}

void sub_1C86A0CE8(void *a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v8 = a1;
    a3(a1, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v65 = a6;
    v53 = a4;
    v55 = a3;
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = a2 + 32;
      v12 = MEMORY[0x1E69E7D40];
      do
      {
        sub_1C8686320(v11, &v72);
        type metadata accessor for CKTriple();
        if (swift_dynamicCast())
        {
          v13 = v70;
          v14 = (*((*v12 & *v70) + 0x58))();
          v16 = v15;
          swift_beginAccess();
          sub_1C869DF00(&v70, v14, v16, v17, v18, v19, v20, v21, v51, v53, v55, v57, v59, v62, v65, v67, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
          swift_endAccess();

          v23 = (*((*v12 & *v13) + 0x68))(v22);
          v25 = v24;
          swift_beginAccess();
          sub_1C869DF00(&v70, v23, v25, v26, v27, v28, v29, v30, v52, v54, v56, v58, v60, v63, v66, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
          swift_endAccess();
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    swift_beginAccess();
    v31 = *(a5 + 16);
    v32 = *(v31 + 16);
    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v70 = MEMORY[0x1E69E7CC0];

      sub_1C86F93BC();
      v35 = sub_1C86A1934(v31);
      v37 = v36;
      v38 = 0;
      v39 = v31 + 56;
      v61 = v36;
      v64 = v32;
      while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v31 + 32))
      {
        v40 = v35 >> 6;
        if ((*(v39 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v31 + 36) != v37)
        {
          goto LABEL_32;
        }

        v69 = v34;

        v41 = sub_1C86F8EEC();
        v42 = [v65 entityWithIdentifier_];

        sub_1C86F939C();
        sub_1C86F93CC();
        sub_1C86F93DC();
        sub_1C86F93AC();
        if (v69)
        {
          goto LABEL_36;
        }

        v43 = 1 << *(v31 + 32);
        if (v35 >= v43)
        {
          goto LABEL_33;
        }

        v44 = *(v39 + 8 * v40);
        if ((v44 & (1 << v35)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v31 + 36) != v37)
        {
          goto LABEL_35;
        }

        v45 = v44 & (-2 << (v35 & 0x3F));
        if (v45)
        {
          v43 = __clz(__rbit64(v45)) | v35 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v46 = v40 << 6;
          v47 = v40 + 1;
          v48 = (v31 + 64 + 8 * v40);
          while (v47 < (v43 + 63) >> 6)
          {
            v50 = *v48++;
            v49 = v50;
            v46 += 64;
            ++v47;
            if (v50)
            {
              sub_1C86A1A14(v35, v37, 0);
              v43 = __clz(__rbit64(v49)) + v46;
              goto LABEL_27;
            }
          }

          sub_1C86A1A14(v35, v37, 0);
        }

LABEL_27:
        v34 = 0;
        ++v38;
        v35 = v43;
        v37 = v61;
        if (v38 == v64)
        {

          v33 = v70;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_29:
      v55(0, v33);
    }
  }
}

uint64_t sub_1C86A1158(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t CKKnowledgeStore.entities()()
{
  v18 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v18);
  v16 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = dispatch_semaphore_create(0);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C86934D4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1C86933E0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C86A150C;
  aBlock[3] = &block_descriptor_0;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  [v16 entitiesWithCompletionHandler_];
  _Block_release(v7);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 3;
  }

  else
  {
    swift_beginAccess();
    if (!*v2)
    {

      swift_beginAccess();
      v6 = *(v3 + 16);

      v14 = OUTLINED_FUNCTION_12();
      v15(v14);
      return v6;
    }

    v10 = *v2;
  }

  swift_willThrow();

  v11 = OUTLINED_FUNCTION_12();
  v12(v11);
  return v6;
}

uint64_t sub_1C86A150C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for CKKnowledgeStoreEntity();
  v5 = sub_1C86F909C();

  v6 = a2;
  v4(a2, v5);
}

uint64_t CKKnowledgeStore.triples(matching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.triples(matching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

void sub_1C86A1888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v6 = sub_1C86F8B9C();
  }

  else
  {
    v6 = 0;
  }

  a4(0);
  v7 = sub_1C86F908C();
  (*(a3 + 16))(a3, v6, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86A1A14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C86A1A20()
{
  result = qword_1ED5BC4C0;
  if (!qword_1ED5BC4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC4C0);
  }

  return result;
}

void sub_1C86A1B2C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8686320(a1, v6);
  v4 = sub_1C869F398(0, &qword_1ED5BC4C0, 0x1E695DFB0);
  if (OUTLINED_FUNCTION_31_1(v4))
  {

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_1C8686320(a1, a2);
  }
}

uint64_t DatabaseExtension.getter()
{
  swift_beginAccess();
  v0 = qword_1EC2ADA90;

  return v0;
}

uint64_t DatabaseExtension.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EC2ADA90 = a1;
  qword_1EC2ADA98 = a2;
}

uint64_t sub_1C86A1CB4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C86A1CE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_0();
  v4 = swift_allocObject();
  sub_1C86A1D30(a1, a2);
  return v4;
}

uint64_t sub_1C86A1D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1C869F398(0, &qword_1EC2AD7C8, 0x1E696B0B8);
  v4 = sub_1C86A2014(0xD000000000000018, 0x80000001C8700050, 0);
  *(v3 + 32) = v4;
  v5 = type metadata accessor for CoreKnowledgeXPCUtils();
  v6 = v4;
  v7 = [v5 CKServiceXPCInterface];
  [v6 setRemoteObjectInterface_];

  v8 = *(v3 + 32);
  v26 = sub_1C86A2090;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C86A209C;
  v25 = &block_descriptor_1;
  v9 = _Block_copy(&v22);
  v10 = v8;
  [v10 setInterruptionHandler_];
  _Block_release(v9);

  v11 = *(v3 + 32);
  v26 = sub_1C86A20E0;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C86A209C;
  v25 = &block_descriptor_11;
  v12 = _Block_copy(&v22);
  v13 = v11;
  [v13 setInvalidationHandler_];
  _Block_release(v12);

  [*(v3 + 32) resume];
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v14 = sub_1C86F8DBC();
  __swift_project_value_buffer(v14, qword_1ED5BC790);

  v15 = sub_1C86F8DAC();
  v16 = sub_1C86F910C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = *(v3 + 32);
    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v19;
    _os_log_impl(&dword_1C8683000, v15, v16, "XPC connection established. %@", v17, 0xCu);
    sub_1C86A5148(v18, &unk_1EC2ADAA0, qword_1C86FD218);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  return v3;
}

id sub_1C86A2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C86F8EEC();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1C86A209C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C86A20EC(const char *a1)
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v2 = sub_1C86F8DBC();
  __swift_project_value_buffer(v2, qword_1ED5BC790);
  oslog = sub_1C86F8DAC();
  v3 = sub_1C86F910C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C8683000, oslog, v3, a1, v4, 2u);
    OUTLINED_FUNCTION_11_1();
  }
}

uint64_t sub_1C86A21F4()
{
  [*(v0 + 32) invalidate];

  return v0;
}

uint64_t sub_1C86A222C()
{
  sub_1C86A21F4();
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C86A227C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_2_3();
  v13 = 1107296256;
  v14 = sub_1C86A2520;
  v15 = &block_descriptor_207;
  v7 = _Block_copy(aBlock);

  v8 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_1C86F929C();
  swift_unknownObjectRelease();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB0, &qword_1C86FD230);
  if (OUTLINED_FUNCTION_31_1(v9))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C86A2390(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v4 = sub_1C86F8DBC();
  __swift_project_value_buffer(v4, qword_1ED5BC790);
  v5 = a1;
  v6 = sub_1C86F8DAC();
  v7 = sub_1C86F912C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v8 = 136315138;
    swift_getErrorValue();
    sub_1C86F94EC();
    v9 = sub_1C8685FDC();

    *(v8 + 4) = v9;
    _os_log_impl(&dword_1C8683000, v6, v7, "XPC connection error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1CCA7C540](v11, -1, -1);
    MEMORY[0x1CCA7C540](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1C86A2520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_1C86A2588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  __swift_allocate_value_buffer(v0, qword_1EC2AEFB0);
  v1 = __swift_project_value_buffer(v0, qword_1EC2AEFB0);
  return sub_1C86A25E0(v1);
}

char *sub_1C86A25E0@<X0>(uint64_t a1@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C86F8C1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26[-v10];
  v12 = [objc_opt_self() defaultManager];
  v27[0] = 0;
  v13 = [v12 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v27];

  v14 = v27[0];
  if (!v13)
  {
    v18 = v27[0];
    v19 = sub_1C86F8BAC();

    swift_willThrow();
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v20 = sub_1C86F8DBC();
    __swift_project_value_buffer(v20, qword_1ED5BC790);
    v21 = sub_1C86F8DAC();
    v22 = sub_1C86F913C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C8683000, v21, v22, "Could not find library directory", v23, 2u);
      MEMORY[0x1CCA7C540](v23, -1, -1);
    }

    v24 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v24, 1, v2);
  }

  sub_1C86F8BFC();
  v15 = v14;

  v16 = getpwnam("mobile");
  if (!v16)
  {
    (*(v3 + 16))(v11, v9, v2);
    goto LABEL_11;
  }

  result = v16->pw_dir;
  if (result)
  {
    sub_1C86F8FCC();
    sub_1C86F8BBC();

    sub_1C86F8BDC();
    (*(v3 + 8))(v6, v2);
LABEL_11:
    sub_1C86F8BDC();
    v25 = *(v3 + 8);
    v25(v9, v2);
    v25(v11, v2);
    v24 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v24, 1, v2);
  }

  __break(1u);
  return result;
}

void sub_1C86A2C0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C86A5328;
  *(v5 + 24) = v4;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v4)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v6 + 96))();
    v7 = sub_1C86F8EEC();

    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_10_5();
    v9[2] = sub_1C86A2D70;
    v9[3] = &block_descriptor_201;
    v8 = _Block_copy(v9);

    [v4 keysInStoreWithIdentifier:v7 completionHandler:{v8, v9[0]}];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void sub_1C86A2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A5328;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A2D70;
    a12 = &block_descriptor_190;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_keysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v24)
  {
    v30 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A2FF8;
    a12 = &block_descriptor_178;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v33 = OUTLINED_FUNCTION_4_5();
    [v33 v34];
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A2FF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1C8689930(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1C86A5148(v10, &qword_1EC2AD810, &qword_1C86FCC90);
}

void sub_1C86A30B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C86A5328;
  *(v6 + 24) = v5;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v5)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    v8 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    v12[2] = v10;
    v12[3] = &block_descriptor_169;
    v11 = _Block_copy(v12);

    [v5 valuesInStoreWithIdentifier:v8 completionHandler:v11];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }
}

uint64_t sub_1C86A322C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = sub_1C86F909C();

  v7 = a2;
  v5(a2, v6);
}

void sub_1C86A32B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_11();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v28;
  OUTLINED_FUNCTION_11();
  v32 = swift_allocObject();
  v32[2] = sub_1C86A5328;
  v32[3] = v31;

  v33 = OUTLINED_FUNCTION_20_1();

  if (v33)
  {
    v34 = sub_1C86F908C();
    OUTLINED_FUNCTION_9_5();
    (*(v35 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = v30;
    v36[4] = v28;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    a11 = v37;
    a12 = &block_descriptor_155;
    v38 = _Block_copy(&a9);

    [v33 valuesForKeys:v34 inStoreWithIdentifier:v32 completionHandler:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A3434(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v14 = a4;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C869CF08(0, v5, 0);
    v6 = v19;
    v8 = a2 + 32;
    do
    {
      sub_1C8686320(v8, v16);
      sub_1C8686320(v16, &v17);
      sub_1C869F398(0, &qword_1ED5BC4C0, 0x1E695DFB0);
      if (swift_dynamicCast())
      {

        v17 = 0u;
        v18 = 0u;
      }

      else
      {
        sub_1C8686320(v16, &v17);
      }

      __swift_destroy_boxed_opaque_existential_0(v16);
      v19 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C869CF08((v9 > 1), v10 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 32 * v10;
      v12 = v18;
      *(v11 + 32) = v17;
      *(v11 + 48) = v12;
      v8 += 32;
      --v5;
    }

    while (v5);
    a4 = v14;
  }

  (a4)(a1, v6, a3);
}

void sub_1C86A35AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A5328;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    a11 = v32;
    a12 = &block_descriptor_143;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v33, sel_valuesForKeysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A36E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C86A5324;
  *(v6 + 24) = v5;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v5)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    v8 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    v11[2] = sub_1C86A3860;
    v11[3] = &block_descriptor_131;
    v10 = _Block_copy(v11);

    [v5 keysAndValuesInStoreWithIdentifier:v8 completionHandler:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t sub_1C86A3860(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1C86F8E9C();

  v6 = a2;
  v4(a2, v5);
}

void sub_1C86A3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A4FD0;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A3860;
    a12 = &block_descriptor_117;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_keysAndValuesForKeysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A3A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A4F70;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A3B90;
    a12 = &block_descriptor_105;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_triplesComponentsMatching_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A3B90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for CKTriple();
  v5 = sub_1C86F909C();

  v6 = a2;
  v4(a2, v5);
}

void sub_1C86A3C24(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v3 = sub_1C86F8DBC();
  __swift_project_value_buffer(v3, qword_1ED5BC790);
  v4 = sub_1C86F8DAC();
  v5 = sub_1C86F912C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C8683000, v4, v5, "path search in .SQL store not yet supported.", v6, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  sub_1C868B6E4();
  v7 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v7, v8);
  a2();
}

uint64_t sub_1C86A3D3C()
{
  type metadata accessor for CKSQLWriteBatch();
  v0 = swift_allocObject();

  return sub_1C86AEC48(v1, v0);
}

void sub_1C86A3F18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1C86A411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v24)
  {
    v30 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v33;
    a12 = &block_descriptor_67;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v34 = OUTLINED_FUNCTION_4_5();
    [v34 v35];
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v24)
  {
    v30 = sub_1C86F908C();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v33;
    a12 = &block_descriptor_57;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v34 = OUTLINED_FUNCTION_4_5();
    [v34 v35];
    swift_unknownObjectRelease();
    _Block_release(v28);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A4380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_11();
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = v28;

  v34 = OUTLINED_FUNCTION_24_0();

  if (v34)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v35 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = v30;
    v36[4] = v28;
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v37;
    a12 = &block_descriptor_47;
    v38 = _Block_copy(&a9);

    [v34 removeValuesMatchingCondition:v32 fromStoreWithIdentifier:v33 completionHandler:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A44C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;

  v6 = sub_1C86A227C(sub_1C86A5338, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_19_2();

    OUTLINED_FUNCTION_21_0();
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    OUTLINED_FUNCTION_0_5();
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_1_4();
    v13[2] = v9;
    v13[3] = &block_descriptor_37;
    v10 = _Block_copy(v13);

    v11 = OUTLINED_FUNCTION_4_5();
    [v11 v12];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

void sub_1C86A4788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v5);
  v6 = sub_1C86A227C(sub_1C86A4EB0, v5);

  if (v6)
  {
    if (a2)
    {
      a2 = sub_1C86F8EEC();
    }

    v7 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v8 + 96))();
    v9 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v10);
    OUTLINED_FUNCTION_0_5();
    v15[1] = 1107296256;
    OUTLINED_FUNCTION_1_4();
    v15[2] = v11;
    v15[3] = &block_descriptor_17;
    v12 = _Block_copy(v15);

    v13 = OUTLINED_FUNCTION_4_5();
    [v13 v14];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_1C86A4920(void (*a1)(void))
{
  sub_1C868B6E4();
  v2 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v2, v3);
  a1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86A4E58(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  memset(v3, 0, sizeof(v3));
  a2(a1, v3);
  return sub_1C86A5148(v3, &qword_1EC2AD810, &qword_1C86FCC90);
}

uint64_t sub_1C86A4F38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(a1, &v4);
}

uint64_t objectdestroy_13Tm()
{

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C86A50D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C86A5148(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C86A51A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

id OUTLINED_FUNCTION_12_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *OUTLINED_FUNCTION_16_0(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2()
{
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_25_1()
{
}

void *OUTLINED_FUNCTION_27_1(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_34_0()
{
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

uint64_t OUTLINED_FUNCTION_37_1()
{
}

id static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = a4;
  v66 = a5;
  v63 = a1;
  v64 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  v7 = OUTLINED_FUNCTION_9_6(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0, &unk_1C86FD6B0);
  v15 = OUTLINED_FUNCTION_9_6(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_4();
  v62 = v22 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v59 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v59 - v31;
  sub_1C86A5B58(a3, v13);
  v33 = sub_1C86F8B5C();
  v34 = OUTLINED_FUNCTION_14_3();
  if (__swift_getEnumTagSinglePayload(v34, v35, v33) == 1)
  {
    sub_1C86A5BC8(v13, &qword_1EC2ADAB8, &qword_1C86FD240);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_1C86A5BC8(v17, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    }
  }

  else
  {
    sub_1C86F8B3C();
    OUTLINED_FUNCTION_13_3();
    (*(v36 + 8))(v13, v33);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
    (*(v20 + 32))(v32, v17, v18);
  }

  sub_1C86A5B58(a3, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v33) == 1)
  {
    sub_1C86A5BC8(v10, &qword_1EC2ADAB8, &qword_1C86FD240);
    v40 = 0.0;
  }

  else
  {
    sub_1C86F8B4C();
    v40 = v41;
    OUTLINED_FUNCTION_13_3();
    (*(v42 + 8))(v10, v33);
  }

  v43 = *(v20 + 16);
  v43(v30, v32, v18);
  if (!v66)
  {
    v50 = 1;
    v52 = v40;
    goto LABEL_12;
  }

  v60 = v32;
  v44 = MEMORY[0x1E69E7D40];
  v45 = *((*MEMORY[0x1E69E7D40] & *v66) + 0x118);
  v46 = v66;
  v45();
  (*(v20 + 8))(v30, v18);
  v47 = *(v20 + 32);
  v61 = v27;
  v48 = v47(v30, v27, v18);
  result = (*((*v44 & *v46) + 0x128))(v48);
  v50 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v51 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x138))();

    v52 = v40 + v51;
    v32 = v60;
    v27 = v61;
LABEL_12:
    v43(v27, v30, v18);
    v53 = v62;
    v43(v62, v32, v18);
    v54 = objc_allocWithZone(type metadata accessor for CKHistoricEvent(0));
    v55 = v64;

    v56 = v65;

    v57 = sub_1C86BDBB8(v63, v55, v27, v53, v50, v56, v40, v52);
    v58 = *(v20 + 8);
    v58(v30, v18);
    v58(v32, v18);
    return v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86A5B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C86A5BC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_3();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C86A5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  v13 = OUTLINED_FUNCTION_11_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = v24 - v18;
  v20 = sub_1C86F8EEC();
  sub_1C86A5B58(a3, v19);
  v21 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a1;
  v22[5] = a2;
  sub_1C86A8DE4(v19, v22 + v21);
  *(v22 + ((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v29 = sub_1C86A8E5C;
  v30 = v22;
  OUTLINED_FUNCTION_5_2();
  v26 = 1107296256;
  v27 = sub_1C86AD098;
  v28 = &block_descriptor_58;
  v23 = _Block_copy(aBlock);

  [v24[1] historicEventWithIdentifier:v20 completionHandler:v23];
  _Block_release(v23);

  OUTLINED_FUNCTION_108();
}

void sub_1C86A5F50(void *a1, void *a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1;
    a3(a1, 0);
    v11 = a1;
  }

  else
  {
    type metadata accessor for CKPermanentEventStore();
    v17 = static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(a5, a6, a7, a8, a2);
    a3(0, v17);
    v11 = v17;
  }
}

void CKPermanentEventStore.record(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  v6 = OUTLINED_FUNCTION_9_6(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = sub_1C86F8D0C();
  v10 = OUTLINED_FUNCTION_9_6(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C86F8B5C();
  OUTLINED_FUNCTION_99();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 startDate];
  sub_1C86F8CDC();

  v19 = [a1 endDate];
  sub_1C86F8CDC();

  sub_1C86F8B2C();
  v20 = [a1 identifier];
  v21 = sub_1C86F8EFC();
  v23 = v22;

  (*(v14 + 16))(v8, v17, v12);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
  v27 = [a1 metadata];
  v28 = sub_1C86F8E9C();

  sub_1C86A6354(v28);
  v30 = v29;

  v31 = swift_allocObject();
  v31[2] = v35;
  v31[3] = a3;
  v31[4] = a1;
  v32 = v36;
  v31[5] = v36;

  v33 = a1;
  v34 = v32;
  sub_1C86A5D8C(v21, v23, v8, v30, sub_1C86A8C1C, v31);

  sub_1C86A5BC8(v8, &qword_1EC2ADAB8, &qword_1C86FD240);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_108();
}

void sub_1C86A6354(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD20, &qword_1C86FD250);
    v2 = sub_1C86F943C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    sub_1C86A8F14(*(a1 + 48) + 40 * v10, __src);
    sub_1C8686320(*(a1 + 56) + 32 * v10, &__src[5]);
    memcpy(__dst, __src, sizeof(__dst));
    swift_dynamicCast();
    sub_1C8689930(&__dst[5], v22);
    sub_1C8689930(v22, v24);
    sub_1C8689930(v24, v25);
    sub_1C8689930(v25, &v23);
    v11 = sub_1C869C918(v20, v21);
    v12 = v11;
    if (v13)
    {
      v14 = (v2[6] + 16 * v11);
      *v14 = v20;
      v14[1] = v21;

      v15 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v15);
      sub_1C8689930(&v23, v15);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      v16 = (v2[6] + 16 * v11);
      *v16 = v20;
      v16[1] = v21;
      sub_1C8689930(&v23, (v2[7] + 32 * v11));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C86A65D4(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, void (*)(void), uint64_t, void *, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    a3(a1, a2, a3, a4, a5, a6);
  }

  else if (a2)
  {
    v10 = qword_1ED5BC708;
    v11 = a2;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_1C86F8DBC();
    __swift_project_value_buffer(v12, qword_1ED5BC790);
    v13 = v11;
    v14 = a5;
    v15 = sub_1C86F8DAC();
    v16 = sub_1C86F910C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v13;
      *v18 = v14;
      v18[1] = a2;
      v19 = v13;
      v20 = v14;
      _os_log_impl(&dword_1C8683000, v15, v16, "Updating the store with event=%@. New historic event is %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0, qword_1C86FD218);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v18, -1, -1);
      MEMORY[0x1CCA7C540](v17, -1, -1);
    }

    v21 = v13;
    v22 = v14;
    v23 = sub_1C86F8DAC();
    v24 = sub_1C86F911C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v25 = 136315394;
      v36 = v24;
      v26 = [v22 metadata];
      sub_1C86F8E9C();

      sub_1C86F8EAC();

      v27 = sub_1C8685FDC();

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      (*((*MEMORY[0x1E69E7D40] & *v21) + 0x140))(v28);
      sub_1C86F8EAC();

      v29 = sub_1C8685FDC();

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1C8683000, v23, v36, "event.metadata=%s. historicEvent.metadata=%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v37, -1, -1);
      MEMORY[0x1CCA7C540](v25, -1, -1);
    }

    v30 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v31 = v21;

    v32 = sub_1C86F8EEC();

    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C868E054;
    aBlock[3] = &block_descriptor_61;
    v33 = _Block_copy(aBlock);

    [v30 setValue:v31 forKey:v32 completionHandler:v33];
    _Block_release(v33);
  }

  else
  {
    sub_1C868B6E4();
    v34 = swift_allocError();
    *v35 = 0xD000000000000056;
    *(v35 + 8) = 0x80000001C8700150;
    *(v35 + 32) = 1;
    (a3)();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:)(CKEvent *a1)
{
  v26 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  v4 = v1;
  v5 = a1;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v24 = sub_1C8690344;
  v25 = v8;
  OUTLINED_FUNCTION_5_2();
  v21 = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v22 = v9;
  v23 = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  v11 = v7;

  [v4 recordEvent:v5 completionHandler:v10];
  _Block_release(v10);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v12, v13);
  }

  else
  {
    swift_beginAccess();
    v14 = *(v6 + 16);
    if (!v14)
    {

      v18 = OUTLINED_FUNCTION_7();
      v19(v18);
      return;
    }

    v15 = v14;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_7();
  v17(v16);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:)(INInteraction a1)
{
  v2 = v1;
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() mainBundle];
  sub_1C86A8D74(v4);
  if (v5)
  {
    v6 = sub_1C86F8EEC();
  }

  else
  {
    v6 = 0;
  }

  v10[0] = 0;
  v7 = [v2 recordInteraction:a1.super.isa bundleId:v6 error:v10];

  if (v7)
  {
    v8 = v10[0];
  }

  else
  {
    v9 = v10[0];
    sub_1C86F8BAC();

    swift_willThrow();
  }
}

uint64_t sub_1C86A6EAC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void CKPermanentEventStore.record(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() mainBundle];
  sub_1C86A8D74(v7);
  if (v8)
  {
    v9 = sub_1C86F8EEC();
  }

  else
  {
    v9 = 0;
  }

  v16 = a2;
  v17 = a3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v14 = v10;
  v15 = &block_descriptor_9;
  v11 = _Block_copy(&v12);

  [v3 recordInteraction:a1 bundleId:v9 completionHandler:{v11, v12, v13}];
  _Block_release(v11);
}

uint64_t sub_1C86A7088(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:withBundleId:)(INInteraction _, Swift::String_optional withBundleId)
{
  countAndFlagsBits = withBundleId.value._countAndFlagsBits;
  object = withBundleId.value._object;
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_5();

  v6 = v2;
  v7 = _.super.isa;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  v11 = v9;
  sub_1C86A7344(sub_1C8690408, v10, v6, v7, countAndFlagsBits, object);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v12, v13);
  }

  else
  {
    swift_beginAccess();
    v14 = *(v8 + 16);
    if (!v14)
    {

      v18 = OUTLINED_FUNCTION_7();
      v19(v18);
      return;
    }

    v15 = v14;
  }

  swift_willThrow();

  v16 = OUTLINED_FUNCTION_7();
  v17(v16);
}

void sub_1C86A7344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v10 = sub_1C86F8EEC();
  }

  else
  {
    v10 = 0;
  }

  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C868E054;
  v12[3] = &block_descriptor_52;
  v11 = _Block_copy(v12);

  [a3 recordInteraction:a4 bundleId:v10 completionHandler:v11];
  _Block_release(v11);
}

void sub_1C86A7500(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v84 = a4;
  v87 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v78 = &v72 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0, &unk_1C86FD6B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v72 - v19;
  v20 = sub_1C86F8D0C();
  v85 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v72 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  _Block_copy(a5);
  v86 = a1;
  v27 = [a1 intent];
  type metadata accessor for CKHistoricEvent(0);
  v28 = v27;
  v29 = a2;
  v30 = sub_1C86BD734(a2, v87, v27);
  v32 = v31;

  v72 = v29;
  v74 = v32;
  v75 = v30;
  v77 = v25;
  v33 = v78;
  v76 = v23;
  v34 = v26;
  v73 = v28;
  *&aBlock = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8, &qword_1C86FD248);
  v35 = sub_1C86F8F5C();
  v36 = MEMORY[0x1E69E6158];
  v90 = MEMORY[0x1E69E6158];
  *&aBlock = v35;
  *(&aBlock + 1) = v37;
  sub_1C8689930(&aBlock, v94);
  v38 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v93 = v38;
  sub_1C868968C(v94, 0x6C43746E65746E69, 0xEB00000000737361);
  v39 = v93;
  if (v87)
  {
    v90 = v36;
    *&aBlock = v72;
    *(&aBlock + 1) = v87;
    sub_1C8689930(&aBlock, v94);

    swift_isUniquelyReferenced_nonNull_native();
    v93 = v39;
    sub_1C868968C(v94, 0x6C646E7542707061, 0xEB00000000644965);
    v39 = v93;
  }

  v40 = a5;
  v41 = v85;
  type metadata accessor for INInteractionEncoder();
  *(swift_initStackObject() + 16) = v86;
  v42 = sub_1C868B7E0();
  v43 = v33;
  v90 = v36;
  *&aBlock = v42;
  *(&aBlock + 1) = v44;
  sub_1C8689930(&aBlock, v94);
  swift_isUniquelyReferenced_nonNull_native();
  v93 = v39;
  sub_1C868968C(v94, 0xD000000000000011, 0x80000001C87000E0);
  v45 = v93;
  v46 = v79;
  v47 = [v86 dateInterval];
  if (v47)
  {
    v48 = v47;
    sub_1C86F8B0C();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v87 = v45;
  v50 = sub_1C86F8B5C();
  __swift_storeEnumTagSinglePayload(v46, v49, 1, v50);
  v51 = v80;
  sub_1C86A8DE4(v46, v80);
  if (__swift_getEnumTagSinglePayload(v51, 1, v50))
  {
    sub_1C86A5BC8(v51, &qword_1EC2ADAB8, &qword_1C86FD240);
    v52 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v20);
    v53 = v77;
    sub_1C86F8CFC();
    v54 = v34;
    if (__swift_getEnumTagSinglePayload(v52, 1, v20) != 1)
    {
      sub_1C86A5BC8(v52, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    }
  }

  else
  {
    v55 = v40;
    v56 = v81;
    sub_1C86F8B3C();
    sub_1C86A5BC8(v51, &qword_1EC2ADAB8, &qword_1C86FD240);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v20);
    v53 = v77;
    v57 = v56;
    v40 = v55;
    (*(v41 + 32))(v77, v57, v20);
    v54 = v34;
  }

  v58 = [v86 dateInterval];
  v59 = v76;
  if (v58)
  {
    v60 = v58;
    v61 = v82;
    sub_1C86F8B0C();

    v62 = v61;
    v63 = 0;
    v64 = v84;
    v65 = v73;
  }

  else
  {
    v63 = 1;
    v64 = v84;
    v65 = v73;
    v62 = v82;
  }

  __swift_storeEnumTagSinglePayload(v62, v63, 1, v50);
  sub_1C86A8DE4(v62, v43);
  if (__swift_getEnumTagSinglePayload(v43, 1, v50))
  {
    sub_1C86A5BC8(v43, &qword_1EC2ADAB8, &qword_1C86FD240);
    v66 = v83;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v20);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v66, 1, v20) != 1)
    {
      sub_1C86A5BC8(v66, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    }
  }

  else
  {
    v67 = v83;
    sub_1C86F8B1C();
    sub_1C86A5BC8(v43, &qword_1EC2ADAB8, &qword_1C86FD240);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v20);
    v68 = v67;
    v53 = v77;
    (*(v85 + 32))(v59, v68, v20);
  }

  v69 = objc_allocWithZone(CKEvent);
  v70 = sub_1C86A8C40(v75, v74, v53, v59, v87);
  v91 = sub_1C869040C;
  v92 = v54;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v89 = sub_1C868E054;
  v90 = &block_descriptor_38;
  v71 = _Block_copy(&aBlock);

  [v64 recordEvent:v70 completionHandler:v71];

  _Block_release(v71);

  _Block_release(v40);
}

void CKPermanentEventStore.record(_:withBundleId:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v103 = a4;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  v8 = OUTLINED_FUNCTION_9_6(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0, &unk_1C86FD6B0);
  v14 = OUTLINED_FUNCTION_9_6(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_4();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  v21 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v101 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_4();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  v30 = a1;
  v31 = [a1 intent];
  type metadata accessor for CKHistoricEvent(0);
  v105 = v31;
  v32 = a2;
  v33 = sub_1C86BD734(a2, v104, v31);
  v35 = v34;

  v88 = v32;
  v89 = v20;
  v90 = v30;
  v91 = v35;
  v92 = v33;
  v36 = v97;
  v93 = v29;
  v37 = v96;
  v94 = v26;
  v95 = v17;
  *&aBlock = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8, &qword_1C86FD248);
  v38 = sub_1C86F8F5C();
  v39 = MEMORY[0x1E69E6158];
  v108 = MEMORY[0x1E69E6158];
  *&aBlock = v38;
  *(&aBlock + 1) = v40;
  sub_1C8689930(&aBlock, v112);
  v41 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v111 = v41;
  sub_1C868968C(v112, 0x6C43746E65746E69, 0xEB00000000737361);
  v42 = v111;
  v43 = v39;
  if (v104)
  {
    v108 = v39;
    *&aBlock = v88;
    *(&aBlock + 1) = v104;
    sub_1C8689930(&aBlock, v112);

    swift_isUniquelyReferenced_nonNull_native();
    v111 = v42;
    sub_1C868968C(v112, 0x6C646E7542707061, 0xEB00000000644965);
    v42 = v111;
  }

  v44 = v36;
  v45 = v99;
  type metadata accessor for INInteractionEncoder();
  inited = swift_initStackObject();
  v47 = v90;
  *(inited + 16) = v90;
  v48 = sub_1C868B7E0();
  v49 = v21;
  v108 = v43;
  *&aBlock = v48;
  *(&aBlock + 1) = v50;
  sub_1C8689930(&aBlock, v112);
  swift_isUniquelyReferenced_nonNull_native();
  v111 = v42;
  sub_1C868968C(v112, 0xD000000000000011, 0x80000001C87000E0);
  v51 = v111;
  v52 = [v47 dateInterval];
  if (v52)
  {
    v53 = v52;
    sub_1C86F8B0C();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v104 = v51;
  v55 = sub_1C86F8B5C();
  __swift_storeEnumTagSinglePayload(v45, v54, 1, v55);
  v56 = v100;
  sub_1C86A8DE4(v45, v100);
  v57 = OUTLINED_FUNCTION_14_3();
  if (__swift_getEnumTagSinglePayload(v57, v58, v55))
  {
    sub_1C86A5BC8(v56, &qword_1EC2ADAB8, &qword_1C86FD240);
    v59 = v89;
    v60 = OUTLINED_FUNCTION_14_3();
    __swift_storeEnumTagSinglePayload(v60, v61, 1, v49);
    v62 = v93;
    sub_1C86F8CFC();
    v63 = OUTLINED_FUNCTION_14_3();
    if (__swift_getEnumTagSinglePayload(v63, v64, v49) != 1)
    {
      sub_1C86A5BC8(v59, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    }
  }

  else
  {
    v65 = v89;
    sub_1C86F8B3C();
    sub_1C86A5BC8(v56, &qword_1EC2ADAB8, &qword_1C86FD240);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v49);
    v62 = v93;
    (*(v101 + 32))(v93, v65, v49);
  }

  v69 = [v47 dateInterval];
  if (v69)
  {
    v70 = v69;
    sub_1C86F8B0C();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = v44;
  v73 = v98;
  v74 = v102;
  v75 = v103;
  v76 = v94;
  __swift_storeEnumTagSinglePayload(v72, v71, 1, v55);
  sub_1C86A8DE4(v72, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v55);
  v78 = v101;
  if (EnumTagSinglePayload)
  {
    sub_1C86A5BC8(v37, &qword_1EC2ADAB8, &qword_1C86FD240);
    v79 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v49);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v79, 1, v49) != 1)
    {
      sub_1C86A5BC8(v79, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    }
  }

  else
  {
    v80 = v95;
    sub_1C86F8B1C();
    sub_1C86A5BC8(v37, &qword_1EC2ADAB8, &qword_1C86FD240);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v49);
    (*(v78 + 32))(v76, v80, v49);
  }

  v84 = objc_allocWithZone(CKEvent);
  v85 = sub_1C86A8C40(v92, v91, v62, v76, v104);
  v109 = v75;
  v110 = v74;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v107 = v86;
  v108 = &block_descriptor_17_0;
  v87 = _Block_copy(&aBlock);

  [v73 recordEvent:v85 completionHandler:v87];

  _Block_release(v87);
  OUTLINED_FUNCTION_108();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.deleteInteractions(withBundleId:)(Swift::String withBundleId)
{
  object = withBundleId._object;
  countAndFlagsBits = withBundleId._countAndFlagsBits;
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_5();
  v5 = v1;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;

  v10 = v8;
  sub_1C86A882C(sub_1C8690408, v9, v5, countAndFlagsBits, object);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v11, v12);
  }

  else
  {
    swift_beginAccess();
    if (!*v7)
    {

      v16 = OUTLINED_FUNCTION_7();
      v17(v16);
      return;
    }

    v13 = *v7;
  }

  swift_willThrow();

  v14 = OUTLINED_FUNCTION_7();
  v15(v14);
}

void sub_1C86A882C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C86F8EEC();
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C868E054;
  v10[3] = &block_descriptor_49;
  v9 = _Block_copy(v10);

  [a3 deleteInteractionsWithBundleId:v8 completionHandler:v9];
  _Block_release(v9);
}

void CKPermanentEventStore.deleteInteractions(withBundleId:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13 = a1;
  v14 = a2;

  MEMORY[0x1CCA7B200](35, 0xE100000000000000);
  v8 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v9 = CKGenericCondition.init(_:value:negated:)();
  v10 = *(v5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_1C86A8E54;
  v18 = v11;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C868E054;
  v16 = &block_descriptor_28;
  v12 = _Block_copy(&v13);

  [v10 removeValuesMatching:v9 completionHandler:v12];
  _Block_release(v12);
}

void sub_1C86A8AF4(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  else
  {
    (a2)();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C86A8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1C86F8EEC();

  v11 = sub_1C86F8CCC();
  v12 = sub_1C86F8CCC();
  if (a5)
  {
    v13 = sub_1C86F8E8C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 initWithIdentifier:v10 startDate:v11 endDate:v12 metadata:v13];

  v15 = sub_1C86F8D0C();
  v16 = *(*(v15 - 8) + 8);
  v16(a4, v15);
  v16(a3, v15);
  return v14;
}

uint64_t sub_1C86A8D74(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C86F8EFC();

  return v3;
}

uint64_t sub_1C86A8DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C86A8E5C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8, &qword_1C86FD240);
  OUTLINED_FUNCTION_11_6(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v15 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C86A5F50(a1, a2, v11, v12, v13, v14, v2 + v10, v15);
}

uint64_t sub_1C86A9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = sub_1C86A9000(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v8 = sub_1C86D452C(a3);

      return v8;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_1C86D46BC(v9, a1, a2);
  }

  return result;
}

uint64_t sub_1C86A90CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C86A9000(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1C86D452C(a3);
    v3 = sub_1C86D5020(MEMORY[0x1E69E7CC0]);
  }

  return v3;
}

uint64_t sub_1C86A9154()
{
  OUTLINED_FUNCTION_14_4();
  v5 = v4;
  OUTLINED_FUNCTION_13_4();

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (v5)
  {
    OUTLINED_FUNCTION_12_5();
    v7 = v6 | 0x54414944454D0000;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x564953554C435845;
    }

    v10 = 0xE900000000000045;
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v9, v10);

  v11 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v11);

  OUTLINED_FUNCTION_5_5();
  v12 = OUTLINED_FUNCTION_4_6();
  sub_1C86AA924(v12, v13, v14, v15, v16, v17, v2, v0, v3, v1);
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A92AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_4();
  v8 = v7;

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v10 = v9 | 0x54414944454D0000;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x564953554C435845;
    }

    v13 = 0xE900000000000045;
  }

  else
  {
    v13 = 0xE800000000000000;
    v12 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v12, v13);

  v14 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v14);
  v15 = v8;

  OUTLINED_FUNCTION_5_5();
  v16 = OUTLINED_FUNCTION_6_4();
  sub_1C86AAC18(v16, v17, v18, v19, v20, v21, a2, v15, a4);
  OUTLINED_FUNCTION_9_7();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86A93FC(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_13_4();
  v8 = v7;
  v9 = a4;
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v11 = v10 | 0x54414944454D0000;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x564953554C435845;
    }

    v14 = 0xE900000000000045;
  }

  else
  {
    v14 = 0xE800000000000000;
    v13 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v13, v14);

  v15 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v15);
  v16 = v8;
  v17 = v9;
  OUTLINED_FUNCTION_5_5();
  v26 = v18;
  v19 = OUTLINED_FUNCTION_6_4();
  sub_1C86AAF00(v19, v20, v21, v22, v23, v24, a2, v16, v26);
}

void sub_1C86A954C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{

  v12 = a6;
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  v45 = v13;
  v46 = v14;
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v16 = v15 | 0x54414944454D0000;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0x564953554C435845;
    }

    v19 = 0xE900000000000045;
  }

  else
  {
    v19 = 0xE800000000000000;
    v18 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v18, v19);

  v20 = OUTLINED_FUNCTION_0_6();
  v21 = MEMORY[0x1CCA7B200](v20);
  v47 = &v37;
  v44 = &v37;
  v22 = v46;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v43 = v36;
  v36[2] = a3;
  v36[3] = a4;
  v40 = a4;
  v36[4] = a5;
  v36[5] = v12;
  MEMORY[0x1EEE9AC00](v23);
  v41 = v24;
  v38 = v26;
  v39 = v25;
  sub_1C8685A98();
  v27 = qword_1EC2AD780;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v28 = v12;

  v29 = v22;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EC2AD780);
  }

  sub_1C86F917C();
  v30 = v45;
  v31 = v46;
  v32 = sub_1C86AA4C0();
  if ((v31 & 1) != 0 || v30 != v32)
  {
    v33 = *(a2 + 88);
    v35 = v42;
    sub_1C86F91AC();

    if (!v35)
    {

      goto LABEL_15;
    }

LABEL_17:

    OUTLINED_FUNCTION_8_6();

    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_15_2();

    goto LABEL_18;
  }

  v33 = v28;
  v34 = v42;
  sub_1C86A90CC(v41, v29, MEMORY[0x1E69E7CC0]);
  if (v34)
  {

    goto LABEL_17;
  }

  sub_1C8697FE8(a3, v40, a5, v33);
  sub_1C86A90CC(0xD000000000000012, v38, MEMORY[0x1E69E7CC0]);

LABEL_15:

  OUTLINED_FUNCTION_8_6();

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_15_2();

LABEL_18:
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_1C86A9A00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = 0x54414944454D4D49;
    }

    else
    {
      v15 = 0x564953554C435845;
    }

    v16 = 0xE900000000000045;
  }

  else
  {
    v16 = 0xE800000000000000;
    v15 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v15, v16);

  v17 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v17);

  OUTLINED_FUNCTION_5_5();
  v18 = OUTLINED_FUNCTION_4_6();
  sub_1C86ABAF8(v18, v19, v20, v21, v22, v23, a2, a3, a4, a5, a6, a7, a8);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9BA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v15 = v14 | 0x54414944454D0000;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x564953554C435845;
    }

    v18 = 0xE900000000000045;
  }

  else
  {
    v18 = 0xE800000000000000;
    v17 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v17, v18);

  v19 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v19);

  OUTLINED_FUNCTION_5_5();
  v20 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB1D4(v20, v21, v22, v23, v24, v25, a2, a3, a4, a5, a6, a7);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9D34(char a1, uint64_t a2, uint64_t a3)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v7 = v6 | 0x54414944454D0000;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x564953554C435845;
    }

    v10 = 0xE900000000000045;
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v9, v10);

  v11 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v11);

  OUTLINED_FUNCTION_5_5();
  v12 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB51C(v12, v13, v14, v15, v16, v17, a2, a3);
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_14_4();
  v12 = v11;

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (v12)
  {
    OUTLINED_FUNCTION_12_5();
    v14 = v13 | 0x54414944454D0000;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x564953554C435845;
    }

    v17 = 0xE900000000000045;
  }

  else
  {
    v17 = 0xE800000000000000;
    v16 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v16, v17);

  v18 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v18);

  OUTLINED_FUNCTION_5_5();
  v19 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB7AC(v19, v20, v21, v22, v23, v24, v8, v6, v9, v7, a6);
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86AA01C()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C86AA058(uint64_t a1, unint64_t a2, char a3)
{
  v18 = sub_1C86F919C();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  v8 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_3_2();
  v9 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_2();
  *(v3 + 16) = 0u;
  v10 = (v3 + 16);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  v11 = MEMORY[0x1E69E7CC8];
  *(v3 + 64) = 0;
  *(v3 + 72) = v11;
  *(v3 + 80) = v11;
  sub_1C8685A98();
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0, &unk_1C86FE080);
  sub_1C8685ADC();
  sub_1C86F92AC();
  sub_1C86F8E1C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v18);
  *(v3 + 88) = sub_1C86F91CC();
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  OUTLINED_FUNCTION_11_7();
  if (a3)
  {
    v12 = 65537;
  }

  else
  {
    v12 = 65542;
  }

  v13 = sub_1C86F8F6C();

  swift_beginAccess();
  v14 = sqlite3_open_v2((v13 + 32), v10, v12, 0);
  swift_endAccess();

  sub_1C86AA3E4(v14, 0);
  if (v21)
  {
  }

  else
  {
    v15 = qword_1EC2AD780;
    v16 = *(v19 + 88);
    if (v15 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_1EC2AD780);
    }

    sub_1C86AA4C0();
    sub_1C86F918C();
  }

  return v19;
}

uint64_t sub_1C86AA39C()
{
  OUTLINED_FUNCTION_11_7();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1C869F384(v0, v1);
  return v4;
}

const char *sub_1C86AA3E4(uint64_t a1, uint64_t a2)
{
  if (qword_1EC2AD768 != -1)
  {
    swift_once();
  }

  if (sub_1C86ABFD4(a1, qword_1EC2AD770))
  {
    return a1;
  }

  v4 = sub_1C86AA01C();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = sub_1C86F8FCC();
    v8 = v7;
    sub_1C86AC270();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86AA4C0()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_1C86AA4E4()
{
  v1 = sub_1C86AA01C();
  sqlite3_close(v1);
  sqlite3_release_memory(0x7FFFFFFF);
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));
  _Block_release(*(v0 + 64));

  return v0;
}

uint64_t sub_1C86AA54C()
{
  sub_1C86AA4E4();

  return MEMORY[0x1EEE6BDC0](v0, 105, 7);
}

const char *sub_1C86AA5A4@<X0>(_DWORD *a3@<X8>)
{
  v5 = sub_1C86AA01C();
  v6 = sub_1C86F8F6C();
  v7 = sqlite3_exec(v5, (v6 + 32), 0, 0, 0);

  result = sub_1C86AA3E4(v7, 0);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

BOOL sub_1C86AA638(uint64_t a1, uint64_t a2)
{
  sub_1C8685A98();
  if (qword_1EC2AD780 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EC2AD780);
  }

  sub_1C86F917C();
  v5 = sub_1C86AA4C0();
  if ((v12 & 1) != 0 || v11 != v5)
  {
    v9 = *(a1 + 88);
    sub_1C86F91AC();

    if (!v2)
    {
      return v13;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sqlite3_step(*(a2 + 16));
    v7 = v6;
    sub_1C86AA3E4(v6, 0);

    if (!v2)
    {
      return v7 == 100;
    }
  }

  return v8;
}

uint64_t sub_1C86AA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8685A98();
  if (qword_1EC2AD780 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EC2AD780);
  }

  sub_1C86F917C();
  v6 = sub_1C86AA4C0();
  if ((v12 & 1) != 0 || v11 != v6)
  {
    v9 = *(a1 + 88);
    sub_1C86F91AC();
    if (v4)
    {

      return v9;
    }

    v9 = v13;
LABEL_11:

    return v9;
  }

  v7 = sub_1C86AA01C();
  v8 = sub_1C86F8F6C();
  v9 = sqlite3_exec(v7, (v8 + 32), 0, 0, 0);

  sub_1C86AA3E4(v9, 0);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v9;
}

uint64_t sub_1C86AA924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C8685A98();
  v14 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v15 = sub_1C86AA4C0();
  if ((v22 & 1) != 0 || v21 != v15)
  {
    v16 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v20)
    {
    }

    else
    {

      sub_1C8698AAC(a8, a9, a10);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  sub_1C8685A98();
  v13 = qword_1EC2AD780;
  v14 = a8;
  swift_bridgeObjectRetain_n();
  v15 = v14;

  v23 = a2;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v16 = sub_1C86AA4C0();
  if ((v25 & 1) != 0 || v24 != v16)
  {
    v18 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {
    v17 = v15;

    sub_1C86A90CC(a1, v23, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
    }

    else
    {

      sub_1C8698DC0(a9);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  sub_1C8685A98();
  v13 = qword_1EC2AD780;
  v14 = a8;
  v15 = a9;
  v27 = v14;
  v16 = v15;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v17 = sub_1C86AA4C0();
  if ((v29 & 1) != 0 || (v18 = a2, v28 != v17))
  {
    v22 = *(a7 + 88);
    sub_1C86F91AC();

    v19 = v27;
  }

  else
  {
    v19 = v27;
    v20 = v27;
    v21 = v16;
    sub_1C86A90CC(a1, v18, MEMORY[0x1E69E7CC0]);
    if (v26)
    {
    }

    else
    {

      sub_1C86992AC(v21);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1C86AB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C8685A98();
  v16 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v16 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v17 = sub_1C86AA4C0();
  if ((v24 & 1) != 0 || v23 != v17)
  {
    v18 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
    }

    else
    {

      sub_1C869B71C(a8, a9, a10, a11, a12);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AB51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  sub_1C8685A98();
  v15 = qword_1EC2AD780;
  swift_retain_n();

  if (v15 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v16 = sub_1C86AA4C0();
  if ((v40 & 1) != 0 || v39 != v16)
  {
    v24 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v9)
    {
    }

    else
    {

      sub_1C86996C0(a8, v17, v18, v19, v20, v21, v22, v23, a3, a5, v29, a7, a1, a2, sub_1C86AC424, a8, a3, a4, a5, a6, v38, v39, v40);
      sub_1C86A90CC(v27, a4, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1C86AB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  sub_1C8685A98();
  v14 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v15 = sub_1C86AA4C0();
  if ((v23 & 1) != 0 || v22 != v15)
  {
    v16 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v21)
    {
    }

    else
    {

      v17 = *a11;

      sub_1C86A90CC(a9, a10, v17);

      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86ABAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C8685A98();
  v16 = qword_1EC2AD780;
  OUTLINED_FUNCTION_8_6();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EC2AD780);
  }

  sub_1C86F917C();
  v17 = sub_1C86AA4C0();
  if ((v24 & 1) != 0 || v23 != v17)
  {
    v18 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
    }

    else
    {

      sub_1C86A90CC(a9, a10, a11);

      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86ABE00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C86A90CC(a2, a3, MEMORY[0x1E69E7CC0]);
  if (!v7)
  {

    a4(v12);
    sub_1C86A90CC(a6, a7, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1C86ABEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAD0, &qword_1C86FD340);
  swift_allocObject();
  result = sub_1C86F8DDC();
  qword_1EC2AD788 = result;
  return result;
}

const char *sub_1C86ABF48()
{
  v0 = sub_1C86AA01C();
  result = sqlite3_db_filename(v0, 0);
  if (result)
  {

    return sub_1C86F8FCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C86ABFAC()
{
  result = sub_1C86AC2C4(&unk_1F484E620);
  qword_1EC2AD770 = result;
  return result;
}

uint64_t sub_1C86ABFD4(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1CCA7B780](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t sub_1C86AC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_13_4();

    sub_1C86F936C();

    v9 = a1;
    MEMORY[0x1CCA7B200](10272, 0xE200000000000000);
    v5 = sub_1C86D55B8();
    MEMORY[0x1CCA7B200](v5);

    MEMORY[0x1CCA7B200](0x3A65646F63282029, 0xE900000000000020);
    v6 = sub_1C86F946C();
    MEMORY[0x1CCA7B200](v6);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  }

  else
  {
    v9 = a1;

    MEMORY[0x1CCA7B200](0x203A65646F632820, 0xE800000000000000);
    v7 = sub_1C86F946C();
    MEMORY[0x1CCA7B200](v7);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  }

  return v9;
}

unint64_t sub_1C86AC270()
{
  result = qword_1EC2AD748;
  if (!qword_1EC2AD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD748);
  }

  return result;
}

uint64_t sub_1C86AC2C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAD8, &qword_1C86FD348);
  result = sub_1C86F934C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 4 * v5++);
    for (result = MEMORY[0x1CCA7B780](v8, v11, 4); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 4 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreKnowledge10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C86AC52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C86AC580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C86AC5E0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
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

uint64_t sub_1C86AC61C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C86AC65C(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

void sub_1C86AC7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 1:
      OUTLINED_FUNCTION_9_8();
      v61 = MEMORY[0x1CCA7B260](7368563, 0xE300000000000000);
      v62 = OUTLINED_FUNCTION_6_5();
      v63 = MEMORY[0x1CCA7B260](v62);
      v10 = __OFADD__(v61, v63);
      v64 = v61 + v63;
      if (v10)
      {
        goto LABEL_52;
      }

      v65 = OUTLINED_FUNCTION_7_8();
      v66 = MEMORY[0x1CCA7B260](v65);
      v10 = __OFADD__(v64, v66);
      v67 = v64 + v66;
      if (v10)
      {
        goto LABEL_58;
      }

      v68 = OUTLINED_FUNCTION_8_7();
      v69 = MEMORY[0x1CCA7B260](v68);
      v10 = __OFADD__(v67, v69);
      v70 = v67 + v69;
      if (v10)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_70;
      }

      if (__OFADD__(v70, v71))
      {
        goto LABEL_76;
      }

      MEMORY[0x1CCA7B1D0](v70 + v71);
      MEMORY[0x1CCA7B200](7368563, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v72 = OUTLINED_FUNCTION_3_8();
      MEMORY[0x1CCA7B200](v72);
      OUTLINED_FUNCTION_2_6();
      v60 = OUTLINED_FUNCTION_4_7();
      goto LABEL_38;
    case 2:
      OUTLINED_FUNCTION_9_8();
      v35 = MEMORY[0x1CCA7B260](7565423, 0xE300000000000000);
      v36 = OUTLINED_FUNCTION_7_8();
      v37 = MEMORY[0x1CCA7B260](v36);
      v10 = __OFADD__(v35, v37);
      v38 = v35 + v37;
      if (v10)
      {
        goto LABEL_49;
      }

      v39 = OUTLINED_FUNCTION_8_7();
      v40 = MEMORY[0x1CCA7B260](v39);
      v10 = __OFADD__(v38, v40);
      v41 = v38 + v40;
      if (v10)
      {
        goto LABEL_55;
      }

      v42 = OUTLINED_FUNCTION_6_5();
      v43 = MEMORY[0x1CCA7B260](v42);
      v10 = __OFADD__(v41, v43);
      v44 = v41 + v43;
      if (v10)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_67;
      }

      if (__OFADD__(v44, v45))
      {
        goto LABEL_73;
      }

      MEMORY[0x1CCA7B1D0](v44 + v45);
      MEMORY[0x1CCA7B200](7565423, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v46 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x1CCA7B200](v46);
      OUTLINED_FUNCTION_2_6();
      v47 = OUTLINED_FUNCTION_5_6();
      goto LABEL_46;
    case 3:
      OUTLINED_FUNCTION_9_8();
      v48 = MEMORY[0x1CCA7B260](7369583, 0xE300000000000000);
      v49 = OUTLINED_FUNCTION_7_8();
      v50 = MEMORY[0x1CCA7B260](v49);
      v10 = __OFADD__(v48, v50);
      v51 = v48 + v50;
      if (v10)
      {
        goto LABEL_50;
      }

      v52 = OUTLINED_FUNCTION_6_5();
      v53 = MEMORY[0x1CCA7B260](v52);
      v10 = __OFADD__(v51, v53);
      v54 = v51 + v53;
      if (v10)
      {
        goto LABEL_56;
      }

      v55 = OUTLINED_FUNCTION_8_7();
      v56 = MEMORY[0x1CCA7B260](v55);
      v10 = __OFADD__(v54, v56);
      v57 = v54 + v56;
      if (v10)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_68;
      }

      if (__OFADD__(v57, v58))
      {
        goto LABEL_74;
      }

      MEMORY[0x1CCA7B1D0](v57 + v58);
      MEMORY[0x1CCA7B200](7369583, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v59 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x1CCA7B200](v59);
      OUTLINED_FUNCTION_2_6();
      v60 = OUTLINED_FUNCTION_3_8();
LABEL_38:
      MEMORY[0x1CCA7B200](v60);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_5_6();
      goto LABEL_47;
    case 4:
      OUTLINED_FUNCTION_9_8();
      v22 = MEMORY[0x1CCA7B260](7304048, 0xE300000000000000);
      v23 = OUTLINED_FUNCTION_8_7();
      v24 = MEMORY[0x1CCA7B260](v23);
      v10 = __OFADD__(v22, v24);
      v25 = v22 + v24;
      if (v10)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
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
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      v26 = OUTLINED_FUNCTION_6_5();
      v27 = MEMORY[0x1CCA7B260](v26);
      v10 = __OFADD__(v25, v27);
      v28 = v25 + v27;
      if (v10)
      {
        goto LABEL_54;
      }

      v29 = OUTLINED_FUNCTION_7_8();
      v30 = MEMORY[0x1CCA7B260](v29);
      v10 = __OFADD__(v28, v30);
      v31 = v28 + v30;
      if (v10)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_66;
      }

      if (__OFADD__(v31, v32))
      {
        goto LABEL_72;
      }

      MEMORY[0x1CCA7B1D0](v31 + v32);
      MEMORY[0x1CCA7B200](7304048, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v33 = OUTLINED_FUNCTION_5_6();
      MEMORY[0x1CCA7B200](v33);
      OUTLINED_FUNCTION_2_6();
      v21 = OUTLINED_FUNCTION_3_8();
LABEL_16:
      MEMORY[0x1CCA7B200](v21);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_4_7();
LABEL_47:
      MEMORY[0x1CCA7B200](v34);

      return;
    case 5:
      OUTLINED_FUNCTION_9_8();
      v73 = MEMORY[0x1CCA7B260](7565168, 0xE300000000000000);
      v74 = OUTLINED_FUNCTION_8_7();
      v75 = MEMORY[0x1CCA7B260](v74);
      v10 = __OFADD__(v73, v75);
      v76 = v73 + v75;
      if (v10)
      {
        goto LABEL_53;
      }

      v77 = OUTLINED_FUNCTION_7_8();
      v78 = MEMORY[0x1CCA7B260](v77);
      v10 = __OFADD__(v76, v78);
      v79 = v76 + v78;
      if (v10)
      {
        goto LABEL_59;
      }

      v80 = OUTLINED_FUNCTION_6_5();
      v81 = MEMORY[0x1CCA7B260](v80);
      v10 = __OFADD__(v79, v81);
      v82 = v79 + v81;
      if (v10)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_71;
      }

      if (__OFADD__(v82, v83))
      {
        goto LABEL_77;
      }

      MEMORY[0x1CCA7B1D0](v82 + v83);
      MEMORY[0x1CCA7B200](7565168, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v84 = OUTLINED_FUNCTION_5_6();
      MEMORY[0x1CCA7B200](v84);
      OUTLINED_FUNCTION_2_6();
      v47 = OUTLINED_FUNCTION_4_7();
LABEL_46:
      MEMORY[0x1CCA7B200](v47);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_3_8();
      goto LABEL_47;
    default:
      OUTLINED_FUNCTION_9_8();
      v7 = MEMORY[0x1CCA7B260](7303283, 0xE300000000000000);
      v8 = OUTLINED_FUNCTION_6_5();
      v9 = MEMORY[0x1CCA7B260](v8);
      v10 = __OFADD__(v7, v9);
      v11 = v7 + v9;
      if (v10)
      {
        goto LABEL_51;
      }

      v12 = OUTLINED_FUNCTION_8_7();
      v13 = MEMORY[0x1CCA7B260](v12);
      v10 = __OFADD__(v11, v13);
      v14 = v11 + v13;
      if (v10)
      {
        goto LABEL_57;
      }

      v15 = OUTLINED_FUNCTION_7_8();
      v16 = MEMORY[0x1CCA7B260](v15);
      v10 = __OFADD__(v14, v16);
      v17 = v14 + v16;
      if (v10)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_69;
      }

      if (__OFADD__(v17, v18))
      {
        goto LABEL_75;
      }

      MEMORY[0x1CCA7B1D0](v17 + v18);
      MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v20 = OUTLINED_FUNCTION_3_8();
      MEMORY[0x1CCA7B200](v20);
      OUTLINED_FUNCTION_2_6();
      v21 = OUTLINED_FUNCTION_5_6();
      goto LABEL_16;
  }
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_1C86F900C();
}

void OUTLINED_FUNCTION_2_6()
{

  JUMPOUT(0x1CCA7B200);
}

void *sub_1C86ACCE4(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0, &unk_1C86FCF48);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_1C86ACD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C869CE68(0, v1, 0);
    v3 = (a1 + 32);
    sub_1C86ACFE0();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_1C86F905C();
      v10 = v9;

      MEMORY[0x1CCA7B200](v8, v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C869CE68((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0, &unk_1C86FD6A0);
  sub_1C86AD034();
  v14 = sub_1C86F8EDC();

  return v14;
}

uint64_t sub_1C86ACF10(uint64_t a1)
{
  v1 = sub_1C86ACD7C(a1);
  MEMORY[0x1CCA7B200](v1);

  MEMORY[0x1CCA7B200](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1C86ACF84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C86ACFE0()
{
  result = qword_1EC2ADAE8;
  if (!qword_1EC2ADAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADAE8);
  }

  return result;
}

unint64_t sub_1C86AD034()
{
  result = qword_1EC2AD738;
  if (!qword_1EC2AD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2AD9C0, &unk_1C86FD6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD738);
  }

  return result;
}

void sub_1C86AD098(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

void CKPermanentEventStore.historicEvent(withIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v8 = sub_1C86F8EEC();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1C86AD34C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C86AD354;
  v11[3] = &block_descriptor_3;
  v10 = _Block_copy(v11);

  [v7 valueForKey:v8 completionHandler:v10];
  _Block_release(v10);
}

void sub_1C86AD22C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 || !*(a2 + 24))
  {
    a3();
    return;
  }

  sub_1C868FEF0(a2, v10);
  if (v11)
  {
    type metadata accessor for CKHistoricEvent(0);
    if (swift_dynamicCast())
    {
      v5 = v9;
      (a3)(0);

      return;
    }
  }

  else
  {
    sub_1C86885EC(v10);
  }

  sub_1C868B6E4();
  v6 = swift_allocError();
  v8 = v7;
  sub_1C868FEF0(a2, v7);
  *(v8 + 32) = 2;
  (a3)(v6, 0);
}

uint64_t sub_1C86AD354(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1C8689930(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1C86885EC(v10);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C86AD4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void sub_1C86AD538(uint64_t a1, uint64_t a2, void *a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  type metadata accessor for CKHistoricEvent(0);
  _Block_copy(a5);
  v11 = sub_1C86BD734(a1, a2, a3);
  v13 = v12;
  if (a3)
  {
    v14 = v11;
    v15 = sub_1C86F8EEC();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v13;
    v16[4] = sub_1C86AE000;
    v16[5] = v10;
    v27 = sub_1C86AE060;
    v28 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1C86AD098;
    v26 = &block_descriptor_22;
    v17 = _Block_copy(&aBlock);

    [a4 historicEventWithIdentifier:v15 completionHandler:v17];
    _Block_release(v17);

LABEL_7:
    _Block_release(a5);
    return;
  }

  if (!a2)
  {
    v27 = sub_1C86AE000;
    v28 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1C86ADE9C;
    v26 = &block_descriptor_15;
    v22 = _Block_copy(&aBlock);

    [a4 historicEventsWithCompletionHandler_];
    _Block_release(v22);

    goto LABEL_7;
  }

  sub_1C868B6E4();
  v18 = swift_allocError();
  *v19 = 1;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 3;
  sub_1C86F8EBC();
  v20 = sub_1C86F8B9C();
  v21 = sub_1C86F8E8C();
  (a5)[2](a5, v20, v21);

  _Block_release(a5);
}

void CKPermanentEventStore.historicEvents(withSourceBundleIdentifier:andIntent:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), void *a5)
{
  v6 = v5;
  type metadata accessor for CKHistoricEvent(0);
  v12 = sub_1C86BD734(a1, a2, a3);
  v14 = v13;
  if (a3)
  {
    v15 = v12;
    v16 = sub_1C86F8EEC();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v14;
    v17[4] = a4;
    v17[5] = a5;
    v27 = sub_1C86ADF40;
    v28 = v17;
    OUTLINED_FUNCTION_0_8();
    v24 = 1107296256;
    v25 = sub_1C86AD098;
    v26 = &block_descriptor_9_0;
    v18 = _Block_copy(aBlock);

    [v6 historicEventWithIdentifier:v16 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {

    if (a2)
    {
      sub_1C868B6E4();
      v19 = swift_allocError();
      *v20 = 1;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 3;
      sub_1C86F8EBC();
      v21 = OUTLINED_FUNCTION_1_9();
      a4(v21);
    }

    else
    {
      v27 = a4;
      v28 = a5;
      OUTLINED_FUNCTION_0_8();
      v24 = 1107296256;
      v25 = sub_1C86ADE9C;
      v26 = &block_descriptor_3;
      v22 = _Block_copy(aBlock);

      [v6 historicEventsWithCompletionHandler_];
      _Block_release(v22);
    }
  }
}

uint64_t sub_1C86ADB88(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v9 = sub_1C86F8DBC();
    __swift_project_value_buffer(v9, qword_1ED5BC790);

    v10 = a1;
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_1C8685FDC();
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      sub_1C86F94EC();
      v14 = sub_1C8685FDC();

      *(v13 + 14) = v14;
      _os_log_impl(&dword_1C8683000, v11, v12, "could not retrieve event with identifier %s. %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v22, -1, -1);
      MEMORY[0x1CCA7C540](v13, -1, -1);
    }

    type metadata accessor for CKHistoricEvent(0);
    v15 = sub_1C86F8EBC();
    a5(a1, v15);
  }

  else if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAF0, &unk_1C86FD490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C86FCC70;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a2;
    type metadata accessor for CKHistoricEvent(0);

    v18 = a2;
    v19 = sub_1C86F8EBC();
    a5(0, v19);
  }

  else
  {
    type metadata accessor for CKHistoricEvent(0);
    v21 = sub_1C86F8EBC();
    a5(0, v21);
  }
}

uint64_t sub_1C86ADE9C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for CKHistoricEvent(0);
  v5 = sub_1C86F8E9C();

  v6 = a2;
  v4(a2, v5);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C86AE0D4(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v5 = sub_1C86F8DBC();
  __swift_project_value_buffer(v5, qword_1ED5BC790);
  v6 = sub_1C86F8DAC();
  v7 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v7))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v3 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v3 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v8, v9, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v10 = OUTLINED_FUNCTION_31(&type metadata for CKError);
  OUTLINED_FUNCTION_4_8(v10, v11);
  a2();
}

uint64_t sub_1C86AE1DC()
{
  type metadata accessor for CKCloudKitWriteBatch();
  v0 = swift_allocObject();

  return sub_1C86AEC64(v1, v0, v2, type metadata accessor for CKCloudKitBackingStore);
}

void sub_1C86AE238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v10 = sub_1C86F8DBC();
  __swift_project_value_buffer(v10, qword_1ED5BC790);
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v12))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v8 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v8 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v13, v14, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v15 = OUTLINED_FUNCTION_31(&type metadata for CKError);
  OUTLINED_FUNCTION_4_8(v15, v16);
  a7();
}

void sub_1C86AE340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_1C86A227C(sub_1C86A5338, v7);

  if (v8)
  {
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_3_9();
    v10 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a3;
    v11[4] = a4;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v16[2] = v12;
    v16[3] = &block_descriptor_49_0;
    v13 = _Block_copy(v16);

    v14 = OUTLINED_FUNCTION_4_5();
    [v14 v15];
    swift_unknownObjectRelease();
    _Block_release(v13);
  }
}

void sub_1C86AE490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1C86A227C(sub_1C86A5338, v6);

  if (v7)
  {
    v8 = sub_1C86F908C();
    OUTLINED_FUNCTION_3_9();
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a2;
    v10[4] = a3;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v15[2] = v11;
    v15[3] = &block_descriptor_39_0;
    v12 = _Block_copy(v15);

    v13 = OUTLINED_FUNCTION_4_5();
    [v13 v14];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_1C86AE5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1C86A227C(sub_1C86A5338, v7);

  if (v8)
  {
    OUTLINED_FUNCTION_3_9();
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a2;
    v10[4] = a3;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v13[2] = v11;
    v13[3] = &block_descriptor_29;
    v12 = _Block_copy(v13);

    [v8 removeValuesMatchingCondition:a1 fromSynchedStoreWithIdentifier:v9 completionHandler:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_1C86AE720(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C86A227C(sub_1C86A5338, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_3_9();
    v7 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v13[2] = v9;
    v13[3] = &block_descriptor_19;
    v10 = _Block_copy(v13);

    v11 = OUTLINED_FUNCTION_4_5();
    [v11 v12];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

void sub_1C86AE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v10 = sub_1C86F8DBC();
  __swift_project_value_buffer(v10, qword_1ED5BC790);
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v12))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v8 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v8 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v13, v14, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v15 = OUTLINED_FUNCTION_31(&type metadata for CKError);
  OUTLINED_FUNCTION_4_8(v15, v16);
  a7();
}

void sub_1C86AE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);
  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v10))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v6 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v6 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v11, v12, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v13 = OUTLINED_FUNCTION_31(&type metadata for CKError);
  OUTLINED_FUNCTION_4_8(v13, v14);
  a5();
}

void sub_1C86AEA50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C86A227C(sub_1C86A4EB0, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_21_0();
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v10[2] = v8;
    v10[3] = &block_descriptor_4;
    v9 = _Block_copy(v10);

    [v6 disableSyncAndDeleteCloudDataWithCompletionHandler_];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }
}

uint64_t sub_1C86AEB68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_0();
  swift_allocObject();
  return sub_1C86A1D30(a1, a2);
}

uint64_t sub_1C86AEBE0()
{
  sub_1C86A21F4();
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86AEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v15 = sub_1C86F919C();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_2();
  v13 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_3_2();
  v17 = a4(a3);
  v18 = &off_1F484F640;
  *&v16 = a1;
  sub_1C8685A98();
  sub_1C86F8E2C();
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0, &unk_1C86FE080);
  sub_1C8685ADC();
  sub_1C86F92AC();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8090], v15);
  *(a2 + 64) = sub_1C86F91CC();
  *(a2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C8687B6C(&v16, a2 + 24);
  return a2;
}

void OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;
}

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_8_8()
{

  JUMPOUT(0x1CCA7C540);
}

unint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_1C8685FDC();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_slowAlloc();
}

uint64_t sub_1C86AEFE4()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value);

  return v1;
}

uint64_t sub_1C86AF038()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value + 16);

  return v1;
}

uint64_t sub_1C86AF0A8()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value + 32);

  return v1;
}

id sub_1C86AF150(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C86F8EEC();

  return v5;
}

uint64_t sub_1C86AF1C0()
{
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_7();
  v1 = (*(v0 + 88))();
  MEMORY[0x1CCA7B200](v1);

  MEMORY[0x1CCA7B200](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  v3 = (*(v2 + 96))();
  MEMORY[0x1CCA7B200](v3);

  MEMORY[0x1CCA7B200](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  v5 = (*(v4 + 104))();
  MEMORY[0x1CCA7B200](v5);

  MEMORY[0x1CCA7B200](23421, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  (*(v6 + 112))();
  v7 = sub_1C86F946C();
  MEMORY[0x1CCA7B200](v7);

  MEMORY[0x1CCA7B200](93, 0xE100000000000000);
  return 123;
}

uint64_t sub_1C86AF3A4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v2 = MEMORY[0x1CCA7B280](v1);

  OUTLINED_FUNCTION_0_9();
  v4 = (*(v3 + 96))();
  v5 = MEMORY[0x1CCA7B280](v4);

  OUTLINED_FUNCTION_0_9();
  v7 = (*(v6 + 104))();
  v8 = MEMORY[0x1CCA7B280](v7);

  return v5 ^ v2 ^ v8;
}

uint64_t sub_1C86AF488(uint64_t a1)
{
  sub_1C868FEF0(a1, v14);
  if (v15)
  {
    type metadata accessor for CKTriple();
    if (swift_dynamicCast())
    {
      v3 = == infix(_:_:)(v1);

      return v3 & 1;
    }
  }

  else
  {
    sub_1C86885EC(v14);
  }

  sub_1C868FEF0(a1, v14);
  v4 = v15;
  if (v15)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1C86F947C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for CKTriple();
  v13.receiver = v1;
  v13.super_class = v10;
  v3 = objc_msgSendSuper2(&v13, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t == infix(_:_:)(void *a1)
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  v5 = (*(v4 + 88))();
  if (v1 == v5 && v3 == v6)
  {
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_8(v5);

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_7_9();
  v10 = (*(v9 + 96))();
  v12 = v11;
  OUTLINED_FUNCTION_3_10();
  v14 = (*(v13 + 96))();
  if (v10 == v14 && v12 == v15)
  {
  }

  else
  {
    v17 = OUTLINED_FUNCTION_5_8(v14);

    if ((v17 & 1) == 0)
    {
LABEL_13:
      v18 = 0;
      return v18 & 1;
    }
  }

  OUTLINED_FUNCTION_7_9();
  v20 = (*(v19 + 104))();
  v22 = v21;
  OUTLINED_FUNCTION_3_10();
  if (v20 == (*(v23 + 104))() && v22 == v24)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C86F948C();
  }

  return v18 & 1;
}

id CKTriple.init(subject:predicate:object:weight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR___CKTriple_value];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  *(v8 + 3) = a4;
  *(v8 + 4) = a5;
  *(v8 + 5) = a6;
  *(v8 + 6) = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for CKTriple();
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1C86AF9B4(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v3 = sub_1C86F8EEC();

  v4 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  (*(v5 + 96))();
  v6 = sub_1C86F8EEC();

  v7 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  (*(v8 + 104))();
  v9 = sub_1C86F8EEC();

  v10 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  v12 = (*(v11 + 112))();
  v13 = OUTLINED_FUNCTION_8_9();
  [a1 encodeInteger:v12 forKey:v13];
}

id CKTriple.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C86AFF14();
  v4 = sub_1C86F920C();
  v5 = sub_1C86F920C();
  v6 = sub_1C86F920C();
  v7 = OUTLINED_FUNCTION_8_9();
  v8 = [a1 decodeIntegerForKey_];

  if (!v4)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v10 = sub_1C86F8DBC();
    __swift_project_value_buffer(v10, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_6_7(&dword_1C8683000, v14, v12, "unexpected value for subject when decoding CKTriple object");
      v4 = v5;
LABEL_13:
      v5 = v6;
LABEL_14:
      MEMORY[0x1CCA7C540](v13, -1, -1);
LABEL_17:

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v4 = v5;
LABEL_16:
    v5 = v6;
    goto LABEL_17;
  }

  if (!v5)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v15 = sub_1C86F8DBC();
    __swift_project_value_buffer(v15, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v16 = sub_1C86F912C();
    if (os_log_type_enabled(v11, v16))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_6_7(&dword_1C8683000, v17, v16, "unexpected value for predicate when decoding CKTriple object");
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    }

    v19 = sub_1C86F8DBC();
    __swift_project_value_buffer(v19, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v20 = sub_1C86F912C();
    if (!os_log_type_enabled(v11, v20))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    OUTLINED_FUNCTION_6_7(&dword_1C8683000, v21, v20, "unexpected value for object when decoding CKTriple object");
    goto LABEL_14;
  }

  v9 = [v2 initWithSubject:v4 predicate:v5 object:v6 weight:v8];

  return v9;
}

unint64_t sub_1C86AFF14()
{
  result = qword_1ED5BC4A0;
  if (!qword_1ED5BC4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC4A0);
  }

  return result;
}

id CKTriple.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTriple.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTriple();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_4_9()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return sub_1C86F948C();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_1C86F8EEC();
}

uint64_t getEnumTagSinglePayload for CKOntology(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CKOntology(_BYTE *result, int a2, int a3)
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

id CoreKnowledgeXPCUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreKnowledgeXPCUtils.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoreKnowledgeXPCUtils();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CoreKnowledgeXPCUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreKnowledgeXPCUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CoreKnowledgeXPCUtils.CKServiceXPCInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  if (qword_1ED5BC500 != -1)
  {
    swift_once();
  }

  sub_1C86B132C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C86FD050;
  *(inited + 32) = sub_1C869F398(0, &qword_1ED5BC4C0, 0x1E695DFB0);
  *(inited + 40) = sub_1C869F398(0, &qword_1ED5BC4A0, 0x1E696AEC0);
  *(inited + 48) = sub_1C869F398(0, &qword_1ED5BC4B0, 0x1E696AD98);
  *(inited + 56) = sub_1C869F398(0, &qword_1ED5BC4B8, 0x1E695DEC8);
  *(inited + 64) = sub_1C869F398(0, &unk_1ED5BC4F0, 0x1E695DF20);

  sub_1C86B1394(inited);
  sub_1C869F398(0, &qword_1EC2AD7C0, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB70, &qword_1C86FD110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C86FCC70;
  v3 = type metadata accessor for CKGenericCondition();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB78, "4\x1B");
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_27_2();
  result = sub_1C86F90DC();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

id sub_1C86B128C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1C86F908C();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_1C86B132C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA30, &qword_1C86FD150);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1EC2ADBB8;
    v2 = &qword_1C86FD568;
  }

  else
  {
    v1 = &unk_1EC2ADBB0;
    v2 = &unk_1C86FD560;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1C86B1394(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C86B15E8(result, 1, sub_1C86C4DDC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C86B1460(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_22_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C86B15E8(v4, 1, sub_1C86C5008);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0, &qword_1C86FD140);
  OUTLINED_FUNCTION_29_2(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C86B1524(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_22_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C86B15E8(v4, 1, sub_1C86C518C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18, &qword_1C86FD130);
  OUTLINED_FUNCTION_29_2(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C86B15E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{
  *(v1 - 168) = 0;

  return sub_1C86F90DC();
}

id OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 56) = a17;
  *(a1 + 32) = v19;

  return sub_1C86B128C(a1);
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *(v1 - 168) = 0;

  return sub_1C86F90DC();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1)
{
  *(v1 - 168) = 0;

  return sub_1C86F90DC();
}

id OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 56) = a12;
  *(a1 + 32) = a13;

  return sub_1C86B128C(a1);
}

__n128 OUTLINED_FUNCTION_11_8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  a1[2].n128_u64[0] = v17;
  a1[2].n128_u64[1] = v16;
  *(v18 - 168) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_1C86F90CC();
}

__n128 OUTLINED_FUNCTION_13_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_1C86F90CC();
}

id OUTLINED_FUNCTION_15_4(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_16_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_17_3(uint64_t a1)
{
  *(a1 + 56) = v2;
  *(a1 + 32) = v1;

  return sub_1C86B128C(a1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_19_3()
{
}

id OUTLINED_FUNCTION_20_2(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_21_3(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  v2 = *(v0 - 168);

  return sub_1C8693E54(v2);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_1C86F90CC();
}

id OUTLINED_FUNCTION_26_2()
{

  return sub_1C86B128C(v0);
}

id OUTLINED_FUNCTION_27_2()
{

  return sub_1C86B128C(v0);
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_30_2()
{
}

uint64_t sub_1C86B19B0(char a1)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a1 & 1);
  return sub_1C86F956C();
}

uint64_t sub_1C86B1A14(uint64_t a1)
{
  v2 = *v1;
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](v2);
  return sub_1C86F956C();
}

id CKJSONLDGraph.init(withEntities:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_3_2();
  v12 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_3_2();
  v13 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v13 = a1;
  }

  *&v2[OBJC_IVAR___CKJSONLDGraph__entities] = v13;
  sub_1C8685A98();
  sub_1C86F915C();
  sub_1C86F8E1C();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8090], v4);
  *&v2[OBJC_IVAR___CKJSONLDGraph_queue] = sub_1C86F91CC();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CKJSONLDGraph();
  return objc_msgSendSuper2(&v15, sel_init);
}

char *sub_1C86B1D04()
{
  v1 = *(v0 + OBJC_IVAR___CKJSONLDGraph__entities);
  if (v1 >> 62)
  {
    v2 = sub_1C86F92EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C869CE68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v13;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA7B5C0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
      v8 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C869CE68((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C86B1E4C()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  v25 = sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];

  sub_1C86B210C(v17);
  v19 = sub_1C869CD7C(v18);

  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v16;
  v20[4] = v3;
  v20[5] = v1;
  v27[4] = sub_1C86B4C9C;
  v27[5] = v20;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_5_10();
  v27[2] = v21;
  v27[3] = &block_descriptor_5;
  v22 = _Block_copy(v27);

  sub_1C86F8E1C();
  OUTLINED_FUNCTION_4_11();
  sub_1C86B5068(v23, v24, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0, &qword_1C86FD580);
  sub_1C86B4CC0();
  sub_1C86F92AC();
  MEMORY[0x1CCA7B400](0, v15, v9, v22);
  _Block_release(v22);
  (*(v26 + 8))(v9, v4);
  (*(v11 + 8))(v15, v25);

  OUTLINED_FUNCTION_108();
}

void sub_1C86B210C(unint64_t a1)
{
  v2 = sub_1C86B50B8();
  v3 = type metadata accessor for CKKnowledgeStoreEntity();
  v4 = sub_1C86B5068(&qword_1EC2ADBF8, type metadata accessor for CKKnowledgeStoreEntity, MEMORY[0x1E69E81B8]);
  v8[1] = MEMORY[0x1CCA7B330](v2, v3, v4);
  v5 = sub_1C86B4BD8(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA7B5C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C869E030(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1C86B2228(unint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, __n128))
{
  v6 = sub_1C86B4BD8(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      swift_beginAccess();
      v15 = *(a2 + 16);

      (a3)(0, v15);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA7B5C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v3 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CKJSONLDGraph();
    v9 = sub_1C86B25A0(v3);
    swift_beginAccess();
    v10 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C86C4E94();
      v10 = v13;
      *(a2 + 16) = v13;
    }

    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_1C86C4E94();
      v10 = v14;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a2 + 16) = v10;
    swift_endAccess();
  }

  __break(1u);
LABEL_18:
  __break(1u);
  swift_once();
  v16 = sub_1C86F8DBC();
  __swift_project_value_buffer(v16, qword_1ED5BC790);
  v17 = v3;
  v18 = 0;
  v19 = sub_1C86F8DAC();
  v20 = sub_1C86F912C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v21 = 138478083;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v23 = v17;
    sub_1C86F94EC();
    v24 = sub_1C8685FDC();

    *(v21 + 14) = v24;
    _os_log_impl(&dword_1C8683000, v19, v20, "serialization %{private}@ failed. %s", v21, 0x16u);
    sub_1C86A5148(v22, &unk_1EC2ADAA0, qword_1C86FD218);
    MEMORY[0x1CCA7C540](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1CCA7C540](v27, -1, -1);
    MEMORY[0x1CCA7C540](v21, -1, -1);
  }

  v25 = 0;
  (a3)(0, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C86B25A0(void *a1)
{
  v3 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v4 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  v5 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  *&v27 = v3;
  *(&v27 + 1) = v4;
  sub_1C8689930(&v27, v26);

  v6 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v25 = v6;
  v7 = sub_1C868968C(v26, 6580544, 0xE300000000000000);
  v8 = v6;
  v31 = v6;
  v9 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))(v7);
  if (v1)
  {
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v24 = v9;
      v11 = (v9 + 48);
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v11 += 3;
        v15 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
        v16 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
        v29 = v5;
        *&v27 = v15;
        *(&v27 + 1) = v16;

        v17 = v14;

        sub_1C8697B58(v12, v13, &v27, v18, v19, v20, v21, v22, v24, v25, v26[0], v26[1], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, vars0, vars8);

        __swift_destroy_boxed_opaque_existential_0(&v27);
        --v10;
      }

      while (v10);

      return v31;
    }

    else
    {
    }
  }

  return v8;
}

void sub_1C86B27C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
  v5 = sub_1C86F908C();
  (*(a3 + 16))(a3, v4, v5);
}

id CKJSONLDGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKJSONLDGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKJSONLDGraph();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKKnowledgeStore.subgraph(withEntities:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C86F93BC();
    v5 = a1 + 40;
    do
    {

      v6 = sub_1C86F8EEC();
      v7 = [v2 entityWithIdentifier_];

      sub_1C86F939C();
      sub_1C86F93CC();
      sub_1C86F93DC();
      sub_1C86F93AC();
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  v8 = objc_allocWithZone(type metadata accessor for CKJSONLDGraph());
  v9 = OUTLINED_FUNCTION_3_12();
  return CKJSONLDGraph.init(withEntities:)(v9);
}

void sub_1C86B2ACC()
{
  OUTLINED_FUNCTION_107();
  v104 = v0;
  v2 = v1;
  v4 = v3;
  v106 = v5;
  v105 = v6;
  v8 = v7;
  v107 = v9;
  v10 = sub_1C86F8D3C();
  OUTLINED_FUNCTION_99();
  v101 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  v16 = sub_1C86F8DEC();
  OUTLINED_FUNCTION_99();
  v103 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_2();
  v21 = (v20 - v19);
  v22 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  v102 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v108 = v8;
  sub_1C8686320(v8, &v113);
  v109 = v4;

  OUTLINED_FUNCTION_6_9();
  if (!swift_dynamicCast())
  {
    if (qword_1ED5BC708 == -1)
    {
LABEL_15:
      v32 = sub_1C86F8DBC();
      __swift_project_value_buffer(v32, qword_1ED5BC790);
      v33 = v108;
      sub_1C8686320(v108, &v113);
      sub_1C8686320(v33, &v110);
      v34 = sub_1C86F8DAC();
      v35 = sub_1C86F912C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v36 = 136380931;
        sub_1C8689930(&v113, &v115);
        swift_dynamicCast();
        v37 = sub_1C8685FDC();

        *(v36 + 4) = v37;
        *(v36 + 12) = 2080;
        __swift_project_boxed_opaque_existential_0(&v110, *(&v111 + 1));
        *&v115 = swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBF0, &qword_1C86FD698);
        sub_1C86F8F5C();
        __swift_destroy_boxed_opaque_existential_0(&v110);
        v38 = sub_1C8685FDC();

        *(v36 + 14) = v38;
        _os_log_impl(&dword_1C8683000, v34, v35, "key=%{private}s is not a string. class = %s", v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v110);
        __swift_destroy_boxed_opaque_existential_0(&v113);
      }

      sub_1C868B6E4();
      v39 = OUTLINED_FUNCTION_31(&type metadata for CKError);
      v41 = v40;
      sub_1C8686320(v33, v40);
      *(v41 + 32) = 2;
      goto LABEL_19;
    }

LABEL_55:
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
    goto LABEL_15;
  }

  v100 = v2;
  v28 = v110;
  v29 = v110 == 0x747865746E6F6340 && *(&v110 + 1) == 0xE800000000000000;
  if (v29 || (sub_1C86F948C() & 1) != 0 || (v28 == 6580544 ? (v30 = *(&v28 + 1) == 0xE300000000000000) : (v30 = 0), v30 || (v99 = v28, (sub_1C86F948C() & 1) != 0)))
  {

    OUTLINED_FUNCTION_7_11();
    v31 = sub_1C86D0334();
    dispatch_group_leave(v31);
    OUTLINED_FUNCTION_13_6();
LABEL_13:

    goto LABEL_20;
  }

  v43 = v105;
  sub_1C8686320(v105, &v113);
  OUTLINED_FUNCTION_6_9();
  if (swift_dynamicCast())
  {
    v44 = sub_1C86F8EEC();

    v45 = [v106 entityWithIdentifier_];

    (*((*MEMORY[0x1E69E7D40] & *v107) + 0x98))(v45, v99, *(&v28 + 1), v100, v109);

LABEL_23:

    goto LABEL_20;
  }

  v98 = *(&v28 + 1);
  sub_1C8686320(v43, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0, &unk_1C86FD6A0);
  OUTLINED_FUNCTION_6_9();
  if (!swift_dynamicCast())
  {
    sub_1C8686320(v43, &v113);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
    OUTLINED_FUNCTION_6_9();
    v62 = swift_dynamicCast();
    v63 = v106;
    if ((v62 & 1) == 0)
    {

      sub_1C8686320(v43, &v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBE8, &unk_1C86FD688);
      OUTLINED_FUNCTION_6_9();
      if (swift_dynamicCast())
      {
        v69 = v110;
        sub_1C86F8E4C();
        v70 = type metadata accessor for CKTimedDispatch(0);
        OUTLINED_FUNCTION_14_7(v70);
        v71 = OUTLINED_FUNCTION_3_12();
        sub_1C86D038C(v71);
        v72 = *(v69 + 16);
        if (v72)
        {
          v73 = (v69 + 32);
          do
          {
            v74 = *v73++;

            v75 = sub_1C86D0334();
            dispatch_group_enter(v75);

            *(&v114[0] + 1) = v61;
            *&v113 = v74;
            swift_retain_n();
            sub_1C86B2ACC();

            __swift_destroy_boxed_opaque_existential_0(&v113);
            --v72;
          }

          while (v72);
        }

        sub_1C86D05FC();
        OUTLINED_FUNCTION_7_11();
        v31 = sub_1C86D0334();
        dispatch_group_leave(v31);
        OUTLINED_FUNCTION_13_6();

        goto LABEL_13;
      }

      sub_1C868B6E4();
      v39 = OUTLINED_FUNCTION_31(&type metadata for CKError);
      *v77 = 1;
      *(v77 + 8) = 0;
      *(v77 + 16) = 0;
      *(v77 + 24) = 0;
      *(v77 + 32) = 3;
LABEL_19:
      OUTLINED_FUNCTION_7_11();
      sub_1C86D05C4(v42);

      OUTLINED_FUNCTION_13_6();
      goto LABEL_20;
    }

    v64 = v110;
    sub_1C86F8E4C();
    v65 = type metadata accessor for CKTimedDispatch(0);
    OUTLINED_FUNCTION_14_7(v65);
    v66 = OUTLINED_FUNCTION_3_12();
    sub_1C86D038C(v66);
    OUTLINED_FUNCTION_11_9(&v110);
    if (*(&v111 + 1))
    {
      v67 = OUTLINED_FUNCTION_6_9();
      sub_1C8689930(v67, v68);
    }

    else
    {
      *&v113 = 14943;
      *(&v113 + 1) = 0xE200000000000000;
      sub_1C86F8D2C();
      v78 = sub_1C86F8D1C();
      v80 = v79;
      (*(v101 + 8))(v15, v10);
      MEMORY[0x1CCA7B200](v78, v80);

      *(&v114[0] + 1) = MEMORY[0x1E69E6158];
      if (*(&v111 + 1))
      {
        sub_1C86A5148(&v110, &qword_1EC2AD810, &qword_1C86FCC90);
      }
    }

    OUTLINED_FUNCTION_6_9();
    swift_dynamicCast();
    v81 = sub_1C86F8EEC();

    v108 = [v63 entityWithIdentifier_];

    v82 = 0;
    v83 = 1 << *(v64 + 32);
    v84 = -1;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    v85 = v84 & *(v64 + 64);
    v86 = (v83 + 63) >> 6;
    if (v85)
    {
      while (1)
      {
        v87 = v82;
LABEL_48:
        v88 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        v89 = v88 | (v87 << 6);
        v90 = (*(v64 + 48) + 16 * v89);
        v92 = *v90;
        v91 = v90[1];
        sub_1C8686320(*(v64 + 56) + 32 * v89, &v115);
        *&v110 = v92;
        *(&v110 + 1) = v91;
        sub_1C8689930(&v115, &v111);

LABEL_49:
        v113 = v110;
        v114[0] = v111;
        v114[1] = v112;
        v93 = *(&v110 + 1);
        if (!*(&v110 + 1))
        {
          break;
        }

        v94 = v113;
        sub_1C8689930(v114, &v110);
        v95 = objc_autoreleasePoolPush();
        v96 = sub_1C86D0334();
        dispatch_group_enter(v96);

        v116 = MEMORY[0x1E69E6158];
        *&v115 = v94;
        *(&v115 + 1) = v93;
        swift_retain_n();
        sub_1C86B2ACC();

        __swift_destroy_boxed_opaque_existential_0(&v115);
        objc_autoreleasePoolPop(v95);
        __swift_destroy_boxed_opaque_existential_0(&v110);
        if (!v85)
        {
          goto LABEL_44;
        }
      }

      sub_1C86D05FC();
      v97 = v108;
      (*((*MEMORY[0x1E69E7D40] & *v107) + 0x98))(v108, v99, v98, v100, v109);

      goto LABEL_23;
    }

LABEL_44:
    while (1)
    {
      v87 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v87 >= v86)
      {
        v85 = 0;
        v111 = 0u;
        v112 = 0u;
        v110 = 0u;
        goto LABEL_49;
      }

      v85 = *(v64 + 64 + 8 * v87);
      ++v82;
      if (v85)
      {
        v82 = v87;
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v46 = v110;
  sub_1C86F8E5C();
  *v21 = *(v46 + 16);
  v47 = v103;
  (*(v103 + 104))(v21, *MEMORY[0x1E69E7F48], v16);
  MEMORY[0x1CCA7B0C0](v27, v21);
  (*(v47 + 8))(v21, v16);
  (*(v102 + 8))(v27, v22);
  v48 = type metadata accessor for CKTimedDispatch(0);
  OUTLINED_FUNCTION_14_7(v48);
  v49 = OUTLINED_FUNCTION_3_12();
  v50 = sub_1C86D038C(v49);
  v102 = v46;
  v51 = *(v46 + 16);
  v52 = v106;
  v53 = v98;
  v54 = v99;
  v55 = v104;
  if (v51)
  {
    v56 = (*MEMORY[0x1E69E7D40] & *v107) + 152;
    v105 = *((*MEMORY[0x1E69E7D40] & *v107) + 0x98);
    v103 = v56;
    v57 = v102 + 40;
    do
    {

      v108 = objc_autoreleasePoolPush();
      v58 = sub_1C86D0334();
      dispatch_group_enter(v58);

      v59 = sub_1C86F8EEC();

      v60 = [v52 entityWithIdentifier_];

      v105(v60, v54, v53, v55, v50);

      objc_autoreleasePoolPop(v108);
      v57 += 16;
      --v51;
    }

    while (v51);
  }

  sub_1C86D05FC();
  v76 = sub_1C86D0334();
  dispatch_group_leave(v76);

LABEL_20:
  OUTLINED_FUNCTION_108();
}

void sub_1C86B38D0()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v2 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3_2();
  sub_1C8686320(v1, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
  if (!swift_dynamicCast())
  {
    sub_1C86B4D24();
    v22 = OUTLINED_FUNCTION_31(&type metadata for JSONLDParseError);
    *v23 = 0;
    sub_1C86D05C4(v22);

LABEL_17:
    OUTLINED_FUNCTION_108();
    return;
  }

  v3 = v27;
  sub_1C86F8E4C();
  v4 = type metadata accessor for CKTimedDispatch(0);
  OUTLINED_FUNCTION_14_7(v4);
  v5 = OUTLINED_FUNCTION_3_12();
  sub_1C86D038C(v5);
  v6 = 0;
  v7 = 1 << *(v27 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v27 + 64;
  v10 = v8 & *(v27 + 64);
  v11 = (v7 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v6;
LABEL_10:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_1C8686320(*(v3 + 56) + 32 * v14, &v25);
      *&v27 = v17;
      *(&v27 + 1) = v16;
      sub_1C8689930(&v25, &v28);

LABEL_11:
      v30 = v27;
      v31[0] = v28;
      v31[1] = v29;
      v18 = *(&v27 + 1);
      if (!*(&v27 + 1))
      {
        break;
      }

      v19 = v30;
      sub_1C8689930(v31, &v27);
      v20 = objc_autoreleasePoolPush();
      v21 = sub_1C86D0334();
      dispatch_group_enter(v21);

      v26 = MEMORY[0x1E69E6158];
      *&v25 = v19;
      *(&v25 + 1) = v18;
      swift_retain_n();
      sub_1C86B2ACC();

      __swift_destroy_boxed_opaque_existential_0(&v25);
      objc_autoreleasePoolPop(v20);
      __swift_destroy_boxed_opaque_existential_0(&v27);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    sub_1C86D05FC();
    v24 = sub_1C86D0334();
    dispatch_group_leave(v24);

    goto LABEL_17;
  }

LABEL_6:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      v10 = 0;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      goto LABEL_11;
    }

    v10 = *(v9 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C86B3BE8(void *a1, __n128 a2)
{
  if (a1)
  {
    sub_1C86D05C4(a1);
  }

  else
  {
    v2 = sub_1C86D0334();
    dispatch_group_leave(v2);
  }
}

uint64_t sub_1C86B3C48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_1C86F8C9C();
  v21[0] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v21];

  v11 = v21[0];
  if (v10)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
    sub_1C86F8E4C();
    type metadata accessor for CKTimedDispatch(0);
    swift_allocObject();
    sub_1C86D038C(v7);
    sub_1C8686320(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBE8, &unk_1C86FD688);
    if (swift_dynamicCast())
    {
      v12 = *(v19[1] + 16);
      if (v12)
      {
        v13 = 32;
        do
        {

          v14 = sub_1C86D0334();
          dispatch_group_enter(v14);

          swift_retain_n();
          sub_1C86B3FA8();

          v13 += 8;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      sub_1C8686320(v21, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_11:
        sub_1C86D05FC();
        v20[0] = 0;
        a4(v20);

        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      sub_1C86B3FA8();
    }

    goto LABEL_11;
  }

  v15 = v11;
  v16 = sub_1C86F8BAC();

  swift_willThrow();
  v21[0] = v16;
  v17 = v16;
  a4(v21);
}

void sub_1C86B3FA8()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C86F8D3C();
  OUTLINED_FUNCTION_99();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_2();
  v14 = v13 - v12;

  OUTLINED_FUNCTION_11_9(&v21);
  if (v22)
  {
    sub_1C8689930(&v21, &v23);
  }

  else
  {
    v15 = MEMORY[0x1E69E6158];
    *&v23 = 14943;
    *(&v23 + 1) = 0xE200000000000000;
    sub_1C86F8D2C();
    v16 = sub_1C86F8D1C();
    v18 = v17;
    (*(v10 + 8))(v14, v8);
    MEMORY[0x1CCA7B200](v16, v18);

    v24 = v15;
    if (v22)
    {
      sub_1C86A5148(&v21, &qword_1EC2AD810, &qword_1C86FCC90);
    }
  }

  swift_dynamicCast();
  v19 = sub_1C86F8EEC();

  v20 = [v5 entityWithIdentifier_];

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
  *&v23 = v7;

  v1(v20, &v23, v5, v3);

  __swift_destroy_boxed_opaque_existential_0(&v23);

  OUTLINED_FUNCTION_108();
}

void CKKnowledgeStore.importContentsOfJSONLD(atPath:completionHandler:)()
{
  OUTLINED_FUNCTION_107();
  v46 = v0;
  v53 = v2;
  v54 = v1;
  sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v51 = v4;
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_2();
  v49 = v6 - v5;
  v50 = sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v48 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();
  v47 = v10 - v9;
  v11 = sub_1C86F8E0C();
  OUTLINED_FUNCTION_99();
  v45 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_2();
  v16 = v15 - v14;
  v17 = sub_1C86F8C1C();
  OUTLINED_FUNCTION_99();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_2();
  v23 = v22 - v21;
  v24 = [objc_opt_self() defaultManager];
  v25 = sub_1C86F8EEC();
  v26 = [v24 fileExistsAtPath_];

  if (v26)
  {
    sub_1C86F8BBC();
    v35 = sub_1C86F8C5C();
    v37 = v36;
    (*(v19 + 8))(v23, v17);
    sub_1C8685A98();
    (*(v45 + 104))(v16, *MEMORY[0x1E69E7F80], v11);
    v38 = sub_1C86F91DC();
    (*(v45 + 8))(v16, v11);
    v39 = swift_allocObject();
    v39[2] = v46;
    v39[3] = v35;
    v39[4] = v37;
    v39[5] = v54;
    v39[6] = v53;
    v55[4] = sub_1C86B4D78;
    v55[5] = v39;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 1107296256;
    OUTLINED_FUNCTION_5_10();
    v55[2] = v40;
    v55[3] = &block_descriptor_9_1;
    v41 = _Block_copy(v55);
    v42 = v46;
    sub_1C868BE68(v35, v37);
    sub_1C86B4D88(v54);
    sub_1C86F8E1C();
    OUTLINED_FUNCTION_4_11();
    sub_1C86B5068(v43, v44, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0, &qword_1C86FD580);
    sub_1C86B4CC0();
    sub_1C86F92AC();
    MEMORY[0x1CCA7B400](0, v47, v49, v41);
    _Block_release(v41);

    sub_1C868BED4(v35, v37);
    (*(v51 + 8))(v49, v52);
    (*(v48 + 8))(v47, v50);

LABEL_11:
    OUTLINED_FUNCTION_108();
    return;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1ED5BC708);
  }

  v27 = sub_1C86F8DBC();
  __swift_project_value_buffer(v27, qword_1ED5BC790);

  v28 = sub_1C86F8DAC();
  v29 = sub_1C86F912C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1C8685FDC();
    _os_log_impl(&dword_1C8683000, v28, v29, "no such JSONLD file at path %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  if (!v54)
  {
    goto LABEL_11;
  }

  sub_1C86B4D24();
  OUTLINED_FUNCTION_31(&type metadata for JSONLDParseError);
  *v32 = 1;
  v54();
  OUTLINED_FUNCTION_108();
}

uint64_t sub_1C86B48CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v11 = sub_1C86B5020;
  }

  else
  {
    v11 = sub_1C86B49A4;
  }

  sub_1C86B4D88(a4);
  sub_1C86B3C48(a2, a3, a1, v11);
}

void sub_1C86B49A4()
{
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v0 = sub_1C86F8DBC();
  __swift_project_value_buffer(v0, qword_1ED5BC790);
  oslog = sub_1C86F8DAC();
  v1 = sub_1C86F912C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C8683000, oslog, v1, "error importing JSONLD data", v2, 2u);
    MEMORY[0x1CCA7C540](v2, -1, -1);
  }
}

uint64_t sub_1C86B4B58(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for CKKnowledgeStoreEntity();
      result = sub_1C86F90BC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C86B4BD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C86F92EC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_1C86B4C08(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1C86B4BFC(a3);
  sub_1C86B6A74(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA7B5C0](a2, a3);
  }

  *a1 = v7;
  return sub_1C86B4C94;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C86B4CC0()
{
  result = qword_1EC2AD790;
  if (!qword_1EC2AD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2ADBD0, &qword_1C86FD580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD790);
  }

  return result;
}

unint64_t sub_1C86B4D24()
{
  result = qword_1EC2ADBD8;
  if (!qword_1EC2ADBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADBD8);
  }

  return result;
}

uint64_t sub_1C86B4D88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONLDParseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSONLDParseError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C86B4FB4()
{
  result = qword_1EC2ADBE0;
  if (!qword_1EC2ADBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADBE0);
  }

  return result;
}

uint64_t sub_1C86B5008(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C86B5068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double OUTLINED_FUNCTION_11_9@<D0>(_OWORD *a1@<X8>)
{

  return sub_1C8688AB8(v1, a1, 6580544, 0xE300000000000000);
}

uint64_t OUTLINED_FUNCTION_13_6()
{
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1C86B514C()
{
  type metadata accessor for CKKnowledgeStore();
  result = sub_1C86D11F4();
  qword_1EC2AEFD8 = result;
  return result;
}

uint64_t sub_1C86B5180(void *a1, uint64_t a2)
{
  v3 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  v10 = [a1 identifier];
  v31 = sub_1C86F8EFC();
  v12 = v11;
  v13 = [a1 startDate];
  sub_1C86F8CDC();

  v14 = sub_1C86D8CCC(0xD00000000000001CLL, 0x80000001C8700720);
  v16 = v15;
  v17 = *(v5 + 8);
  result = v17(v9, v3);
  if (!v16)
  {
    goto LABEL_12;
  }

  v29 = a1;
  v19 = [a1 endDate];
  sub_1C86F8CDC();

  v20 = sub_1C86D8CCC(0xD00000000000001CLL, 0x80000001C8700720);
  v22 = v21;
  result = v17(v9, v3);
  if (v22)
  {

    v23 = MEMORY[0x1CCA7B260](v31, v12);
    result = MEMORY[0x1CCA7B260](v14, v16);
    v24 = v23 + result;
    if (__OFADD__(v23, result))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x1CCA7B260](v20, v22);
      v25 = __OFADD__(v24, result);
      v26 = v24 + result;
      if (!v25)
      {
        result = sub_1C86F900C();
        if (result + 0x4000000000000000 >= 0)
        {
          v25 = __OFADD__(v26, 2 * result);
          result = v26 + 2 * result;
          if (!v25)
          {
            MEMORY[0x1CCA7B1D0](result);
            MEMORY[0x1CCA7B200](v31, v12);
            MEMORY[0x1CCA7B200](95, 0xE100000000000000);
            MEMORY[0x1CCA7B200](v14, v16);
            MEMORY[0x1CCA7B200](95, 0xE100000000000000);
            MEMORY[0x1CCA7B200](v20, v22);

            v27 = objc_allocWithZone(type metadata accessor for CKKnowledgeStoreEntity());
            v28 = sub_1C86C7E1C(0, 0xE000000000000000, a2);

            return v28;
          }

          goto LABEL_11;
        }

LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void CKEvent.init(entity:)()
{
  OUTLINED_FUNCTION_17();
  v84 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0, &unk_1C86FD6B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v85 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_4();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v82 - v17;
  v18 = sub_1C86F8EEC();
  v19 = OUTLINED_FUNCTION_18_2(v18, sel_valueForKey_);

  if (v19)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v20)
  {
    sub_1C86A5148(&v88, &qword_1EC2AD810, &qword_1C86FCC90);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v24 = sub_1C86F8DBC();
    __swift_project_value_buffer(v24, qword_1ED5BC790);
    v25 = v2;
    v26 = sub_1C86F8DAC();
    v27 = sub_1C86F912C();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v28 = swift_slowAlloc();
      *&v88 = v28;
      *v18 = 136315138;

      v29 = sub_1C8685FDC();

      *(v18 + 1) = v29;
      OUTLINED_FUNCTION_25_3(&dword_1C8683000, v26, v27, "Missing event identifier for entity %s");
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v36 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v36);
    }

    sub_1C868B6E4();
    swift_allocError();
    v37 = sub_1C86F8EEC();
    v38 = [v25 valueForKey_];
    goto LABEL_24;
  }

  v21 = OUTLINED_FUNCTION_23_2();
  v82 = v86;
  v83 = v87;
  v22 = OUTLINED_FUNCTION_13_7(v21);
  v23 = OUTLINED_FUNCTION_18_2(v22, sel_valueForKey_);

  if (v23)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v39)
  {

    sub_1C86A5148(&v88, &qword_1EC2AD810, &qword_1C86FCC90);
    OUTLINED_FUNCTION_30_3(v9, 1);
    goto LABEL_19;
  }

  v40 = swift_dynamicCast();
  OUTLINED_FUNCTION_30_3(v9, v40 ^ 1u);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

LABEL_19:
    sub_1C86A5148(v9, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v41 = sub_1C86F8DBC();
    __swift_project_value_buffer(v41, qword_1ED5BC790);
    v25 = v2;
    v42 = sub_1C86F8DAC();
    v43 = sub_1C86F912C();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_17_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_6_10();
      v44 = swift_slowAlloc();
      *&v88 = v44;
      *v22 = 136315138;

      v45 = sub_1C8685FDC();

      *(v22 + 1) = v45;
      OUTLINED_FUNCTION_25_3(&dword_1C8683000, v42, v43, "Missing event startDate for entity %s");
      _os_log_impl(v46, v47, v48, v49, v50, v51);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
      v52 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v52);
    }

    sub_1C868B6E4();
    swift_allocError();
    v53 = OUTLINED_FUNCTION_23_2();
    v37 = OUTLINED_FUNCTION_13_7(v53);
    v38 = [v25 valueForKey_];
LABEL_24:
    v54 = v38;

    if (v54)
    {
      sub_1C86F929C();
      v55 = swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    OUTLINED_FUNCTION_19_4(v55);

    goto LABEL_28;
  }

  v56 = v9;
  v57 = *(v85 + 32);
  v57(v90, v56, v10);
  v58 = sub_1C86F8EEC();
  v59 = OUTLINED_FUNCTION_18_2(v58, &selRef_localization);

  if (v59)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v60)
  {

    sub_1C86A5148(&v88, &qword_1EC2AD810, &qword_1C86FCC90);
    OUTLINED_FUNCTION_30_3(v6, 1);
    goto LABEL_36;
  }

  v61 = swift_dynamicCast();
  OUTLINED_FUNCTION_30_3(v6, v61 ^ 1u);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {

LABEL_36:
    sub_1C86A5148(v6, &qword_1EC2ADAC0, &unk_1C86FD6B0);
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v62 = sub_1C86F8DBC();
    __swift_project_value_buffer(v62, qword_1ED5BC790);
    v63 = v2;
    v64 = sub_1C86F8DAC();
    v65 = sub_1C86F912C();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_17_4();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v88 = v67;
      *v66 = 136315138;

      v68 = sub_1C8685FDC();

      *(v66 + 4) = v68;
      _os_log_impl(&dword_1C8683000, v64, v65, "Missing event endDate for entity %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      v69 = OUTLINED_FUNCTION_4_12();
      MEMORY[0x1CCA7C540](v69);
      OUTLINED_FUNCTION_3_0();
      MEMORY[0x1CCA7C540]();
    }

    sub_1C868B6E4();
    swift_allocError();
    v70 = sub_1C86F8EEC();
    v71 = OUTLINED_FUNCTION_18_2(v70, sel_valueForKey_);

    if (v71)
    {
      sub_1C86F929C();
      v72 = swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    OUTLINED_FUNCTION_19_4(v72);

    (*(v85 + 8))(v90, v10);
    goto LABEL_28;
  }

  v57(v15, v6, v10);
  v73 = sub_1C86F8EEC();
  v74 = OUTLINED_FUNCTION_18_2(v73, sel_valueForKey_);

  if (v74)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_7_12();
  if (!v75)
  {
    sub_1C86A5148(&v88, &qword_1EC2AD810, &qword_1C86FCC90);
LABEL_52:
    v86 = MEMORY[0x1E69E7CC8];
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0, &qword_1C86FD680);
  if ((swift_dynamicCast() & 1) == 0 || !v86)
  {
    goto LABEL_52;
  }

LABEL_53:
  v76 = sub_1C86F8EEC();
  v83 = sub_1C86F8CCC();
  v82 = sub_1C86F8CCC();
  v77 = v86;
  if (v86)
  {
    v78 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v80 = v82;
    v79 = v83;
    sub_1C86B7E6C(v76, v83, v82, v77, v78);

    v81 = *(v85 + 8);
    v81(v15, v10);
    v81(v90, v10);

LABEL_28:
    OUTLINED_FUNCTION_16();
    return;
  }

  __break(1u);
}