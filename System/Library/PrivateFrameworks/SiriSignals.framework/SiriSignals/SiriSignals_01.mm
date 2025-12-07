uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2314AA758(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2314AA79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2314AA7E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10(0);
  OUTLINED_FUNCTION_3_37();
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2314AA8B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

char *sub_2314AA8FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314AA920(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231586864();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t SignalCachingStrategyOption.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      v3 = 2;
      goto LABEL_7;
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 4:
      v3 = 4;
      goto LABEL_7;
    case 5:
      if (v2 | v1)
      {
        if (v2 ^ 1 | v1)
        {
          v5 = 7;
        }

        else
        {
          v5 = 6;
        }
      }

      else
      {
        v5 = 5;
      }

      return MEMORY[0x231930A00](v5);
    default:
      v3 = 0;
LABEL_7:
      MEMORY[0x231930A00](v3);
      OUTLINED_FUNCTION_3_28();

      return sub_231586274();
  }
}

void *sub_2314AAA54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_231586864())
  {
    v3 = sub_2314B8A90(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v2[4] = v3;
  return v2;
}

uint64_t sub_2314AAAAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  sub_231586204();
  sub_231586274();
}

void sub_2314AAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v35 = v34;
  v37 = v36;
  v38 = *v30;
  if ((*v30 & 0xC000000000000001) == 0)
  {
    _s4NodeCMa();
    sub_231586D14();
    sub_2314AAAAC(&a9);
    sub_231586D44();
    OUTLINED_FUNCTION_17_7();
    v43 = ~v42;
    while (1)
    {
      v44 = v41 & v43;
      if (((*(v38 + 56 + (((v41 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v43)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a9 = *v30;

        sub_2314AADB0(v50, v44, isUniquelyReferenced_nonNull_native);
        *v30 = a9;
        goto LABEL_16;
      }

      if (sub_2314AB36C(*(*(v38 + 48) + 8 * v44), v35))
      {
        break;
      }

      v41 = v44 + 1;
    }

    *v37 = *(*(v38 + 48) + 8 * v44);

    goto LABEL_18;
  }

  if (v38 < 0)
  {
    v39 = *v30;
  }

  else
  {
    v39 = v38 & 0xFFFFFFFFFFFFFF8;
  }

  v40 = sub_231586874();

  if (v40)
  {

    a18 = v40;
    _s4NodeCMa();
    swift_dynamicCast();
    *v37 = a9;
LABEL_18:
    OUTLINED_FUNCTION_16_9();
    return;
  }

  v45 = sub_231586864();
  if (!__OFADD__(v45, 1))
  {
    v46 = sub_231542614(v39, v45 + 1);
    a9 = v46;
    v47 = v46[2];
    if (v46[3] <= v47)
    {
      sub_2314AB120(v47 + 1);
      v46 = a9;
    }

    sub_231542D3C(v48, v46);

    *v33 = v46;
LABEL_16:
    *v37 = v35;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{

  return sub_231585FE4();
}

__n128 *OUTLINED_FUNCTION_67(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  result[3].n128_u64[0] = v4;
  return result;
}

void sub_2314AADB0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2314AB120(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2314AAEFC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_231586D14();
      sub_2314AAAAC(v15);
      v13 = sub_231586D44();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s4NodeCMa();
        if (sub_2314AB36C(*(*(v12 + 48) + 8 * a2), result))
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_2314AB56C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_231586C74();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_2314AAEFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  result = sub_231586904();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_231586D14();

        sub_2314AAAAC(v24);
        result = sub_231586D44();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_2314AB120(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  result = sub_231586904();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_23149BEE0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_231586D14();
    sub_2314AAAAC(v26);
    result = sub_231586D44();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_2314AB380()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_231586864();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  return v2 == 0;
}

uint64_t sub_2314AB3FC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    _s4NodeCMa();
    sub_231586D14();
    sub_2314AAAAC(v13);
    v7 = sub_231586D44();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (sub_2314AB36C(*(*(v3 + 48) + 8 * v9), a1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13[0] = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2314AB56C();
          v11 = v13[0];
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_2314AB684(v9);
        *v1 = v13[0];
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_2315868A4();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_23152B1D8(v4, a1);

  return v6;
}

void sub_2314AB56C()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  v6 = *v0;
  v7 = sub_2315868F4();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_23();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_3_30();
    while (v4)
    {
      OUTLINED_FUNCTION_15_8();
LABEL_15:
      *(*(v7 + 48) + 8 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 8 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_9_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

unint64_t sub_2314AB684(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2315867E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_231586D14();

        sub_2314AAAAC(v21);
        v10 = sub_231586D44();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2314AB834(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_231586814();
  }

  else
  {
    return sub_2315867D4();
  }
}

uint64_t sub_2314AB894(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v5 = a4;
      }

      else
      {
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x231930560](result, a2, v5);
      _s4NodeCMa();
      swift_dynamicCast();
      return v10[0];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    _s4NodeCMa();
    if (sub_231586844() == *(a4 + 36))
    {
      v11 = sub_231586854();
      swift_dynamicCast();
      v6 = v10[0];
      sub_231586D14();
      sub_2314AAAAC(v10);
      v7 = sub_231586D44();
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_24;
        }

        if (sub_2314AB36C(*(*(a4 + 48) + 8 * v9), v6))
        {
          goto LABEL_18;
        }

        v7 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }
}

uint64_t sub_2314ABA68(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2314ABA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314ABAD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_3_10();
  v5(v4);
  return a2;
}

uint64_t sub_2314ABB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

double sub_2314ABBD0()
{
  v0 = sub_2314A1DFC(5, 1);

  return v0;
}

uint64_t OUTLINED_FUNCTION_26_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_26_4()
{

  JUMPOUT(0x231931280);
}

void OUTLINED_FUNCTION_26_6(uint64_t a1@<X8>)
{
  v6 = (a1 + 16 * v4);
  *v6 = v2;
  v6[1] = v3;
  *(*(v1 + 56) + 8 * v4) = v5;
}

uint64_t static DomainRecencySignal.signalName.getter()
{
  if (qword_280D6D6B0 != -1)
  {
    OUTLINED_FUNCTION_0_28(&qword_280D6D6B0);
  }

  v0 = qword_280D6D6B8;

  return v0;
}

uint64_t sub_2314ABD30(uint64_t a1)
{
  v2 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DomainRecencyRankSignal.signalName.getter()
{
  if (qword_280D6CEE8 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_280D6CEE8);
  }

  v0 = qword_280D6CEF0;

  return v0;
}

uint64_t static DomainFrequencySignal.signalName.getter()
{
  if (qword_280D6D2E0 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_280D6D2E0);
  }

  v0 = qword_280D6D2E8;

  return v0;
}

uint64_t sub_2314ABE44()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_destroy_helper_3()
{
}

{
}

uint64_t sub_2314ABF54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314ABFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AC05C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AC134(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585884();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2314AC17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585884();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2314AC1D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314AC258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AC2D8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AC32C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AC364()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v7, v1);

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2314AC460()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_2314AC550()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314AC604()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2314AC6CC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314AC730()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AC770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC7A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AC7E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC888()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AC8D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AC918()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC950()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2314AC9A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AC9E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ACA2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314ACA74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314ACB08()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314ACB50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314ACB88()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2314ACBF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314ACC38()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ACCE0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_42();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_38(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_2314ACD70()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_42();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_2314ACDF8()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_42();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_38(*(v0 + *(v2 + 24)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_2314ACE84()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_42();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

void sub_2314ACF28(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_2314CD924(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_2314ACFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2315859F4();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2315859F4();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD0D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314D9E3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2314AD108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalendarSignal(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD190(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalendarSignal(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalendarSignal(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD298(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalendarSignal(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD31C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD360()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD3A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD440()
{
  sub_2314E203C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2314AD47C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AD4BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AD524()
{

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AD578()
{
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AD660()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AD6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AD758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314AD800()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314AD8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 8)
    {
      return v8 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AD94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 7;
  }

  return result;
}

uint64_t sub_2314AD9F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADA44()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314ADAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314ADB50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314ADBF8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADC48()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314ADCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314ADD68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314ADE10()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADE60()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314ADEC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314ADEFC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ADF44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314ADF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AE054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

char *sub_2314AE120(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314AE148(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314AE170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE2CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE478()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE4C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AE598(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_2314AE664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE7C0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE96C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AEA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AEB20()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AEB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AEC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AEDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AEEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AEF58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AF004()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AF124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AF21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231585D34();
  OUTLINED_FUNCTION_42();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_231585A84();
    OUTLINED_FUNCTION_42();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 0x11)
      {
        return v13 - 16;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_2314AF304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_231585D34();
  OUTLINED_FUNCTION_42();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_231585A84();
    OUTLINED_FUNCTION_42();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 16;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2314AF42C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AF524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314AF5CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AF604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AF64C()
{

  OUTLINED_FUNCTION_1_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AF6A8()
{

  OUTLINED_FUNCTION_1_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AF70C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF75C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AF7AC()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314AF810()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF860()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AF8A8()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314AF910()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF998()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF9E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AFA30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFAB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFAF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AFB28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AFB60()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314AFC4C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AFC9C()
{

  v0 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314AFCD0()
{
  sub_231585884();
  OUTLINED_FUNCTION_5_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_2314AFDAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AFDE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFE24()
{
  v1 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AFE54()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2314AFFF0()
{

  OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314B003C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B008C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B00D4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0124()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B0224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B02A4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B02F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B03E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B0464()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B055C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B05DC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B06C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B0744()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0870()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2314B08C8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2314B0930()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B09B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B09E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B0A28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B0A60()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2314B0AB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B0B20()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B0B68()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0BD8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0C28()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B0C80()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0CE8(void *a1, uint64_t a2, void *__src, uint64_t a4, void *a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_23152AE1C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2314B0D70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B0F18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314B0FA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B1020()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B1080(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314B1108(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B1188()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B1248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_231585884();
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2314B12DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 8);
    if (v4 > 3)
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
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B13DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B14A0()
{

  sub_2314A5EEC(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2314B14E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2314A5EEC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2314B1528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B161C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B1680()
{
  sub_231540AA0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2314B16E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
  OUTLINED_FUNCTION_11_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2314B1778()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 113) & ~v4;
  v7 = *(v6 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314B18F8()
{

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314B1944()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314B1B24()
{
  OUTLINED_FUNCTION_58();

  return OUTLINED_FUNCTION_1_34();
}

uint64_t sub_2314B1BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_2314B1E6C()
{

  v0 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314B2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_2314B1B7C();
}

uint64_t sub_2314B2330()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  (*(v2 + 8))(v0 + ((v3 + 48) & ~v3), v1);
  v4 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2314B23E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x51uLL);
  return sub_2314B1B7C();
}

uint64_t sub_2314B241C()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_2314B1B7C();
}

uint64_t sub_2314B24A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104(a1, a2, a3, a4);
  OUTLINED_FUNCTION_131();
  return sub_231556948();
}

uint64_t sub_2314B24D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314B2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104(a1, a2, a3, a4);
  OUTLINED_FUNCTION_131();
  return sub_231556948();
}

uint64_t sub_2314B2544()
{

  v1 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314B25B0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B25F8()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2314B2658()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B26E0()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B2730()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B2780()
{

  v1 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314B27C0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2314B2824()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2314B287C()
{

  v1 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314B28C4()
{

  v0 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314B290C()
{

  v0 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2314B2954()
{

  v1 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314B29BC()
{
  type metadata accessor for DomainTotalFrequencySignal(0);
  OUTLINED_FUNCTION_19_9();
  v3 = *(v2 + 80);

  v4 = (v3 + 32) & ~v3;
  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v5 + 8))(v1 + v4);
  v6 = *(v0 + 28);
  sub_231585A84();
  OUTLINED_FUNCTION_4_28();
  (*(v7 + 8))(v1 + v4 + v6);
  v8 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_2314B2B24()
{
  type metadata accessor for DomainToContactRecencySignal(0);
  OUTLINED_FUNCTION_19_9();
  v2 = *(v1 + 80);

  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v3 + 8))(v0 + ((v2 + 32) & ~v2));

  v4 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2314B2C60()
{
  type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  OUTLINED_FUNCTION_19_9();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0[7];
  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v8 + 8))(v1 + v4 + v7);

  v9 = v0[9];
  sub_231585A84();
  OUTLINED_FUNCTION_4_28();
  (*(v10 + 8))(v1 + v4 + v9);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2314B2DCC()
{
  type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  OUTLINED_FUNCTION_19_9();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v7 + 8))(v1 + v4);

  v8 = *(v0 + 36);
  sub_231585A84();
  OUTLINED_FUNCTION_4_28();
  (*(v9 + 8))(v1 + v4 + v8);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2314B2EE0()
{

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

uint64_t sub_2314B2F8C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B2FCC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314B3058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  OUTLINED_FUNCTION_4_28();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2314B310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B3240@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231568E34(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_2314B3324(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585FD4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2314B336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585FD4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2314B33E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B34AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B3534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B35DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B36A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B36D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314B3728()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B377C()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314B37DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3814()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314B385C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3894()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B38E4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B3940()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314B3990()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B39C8()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2314B3A50()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2314B3AB8()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2314B3B00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3B38()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B3B98()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314B3C4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B3C88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static ActionDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5AD00 = a1;
  *(&xmmword_27DD5AD00 + 1) = a2;
  byte_27DD5AD10 = a3;
  return result;
}

double sub_2314B3F70@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5AD10;
  result = *&xmmword_27DD5AD00;
  *a1 = xmmword_27DD5AD00;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2314B3FC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5AD00 = v1;
  *(&xmmword_27DD5AD00 + 1) = v2;
  byte_27DD5AD10 = v3;
  return result;
}

uint64_t sub_2314B401C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1(a1);
  result = sub_231586964();
  qword_280D6EDF0 = result;
  *algn_280D6EDF8 = v2;
  return result;
}

uint64_t static ActionDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6EDE8 != -1)
  {
    OUTLINED_FUNCTION_1(&qword_280D6EDE8);
  }

  v0 = qword_280D6EDF0;

  return v0;
}

uint64_t ActionDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EDE8 != -1)
  {
    OUTLINED_FUNCTION_1(&qword_280D6EDE8);
  }

  MEMORY[0x23192FF80](qword_280D6EDF0, *algn_280D6EDF8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for ActionDisambiguationFrequencySignal(0);
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for ActionDisambiguationFrequencySignal(uint64_t a1)
{
  result = qword_280D6EDD8;
  if (!qword_280D6EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ActionDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B4A98(v3, v1, v2);
}

uint64_t sub_2314B41FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ActionDisambiguationFrequencySignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for ActionDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_28460FCF8;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_2314B42B8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B4A98(v3, v1, v2);
}

uint64_t sub_2314B4308()
{
  v0 = sub_2315861A4();
  v1 = MEMORY[0x23192FFF0](v0);

  return v1;
}

uint64_t sub_2314B4348(uint64_t a1, uint64_t a2)
{
  sub_2315861A4();
  sub_231586274();
}

uint64_t sub_2314B43A4(uint64_t a1, uint64_t a2)
{
  sub_2315861A4();
  sub_231586D14();
  sub_231586274();
  v2 = sub_231586D44();

  return v2;
}

uint64_t sub_2314B4428(uint64_t a1, id *a2)
{
  result = sub_231586184();
  *a2 = 0;
  return result;
}

uint64_t sub_2314B44A4(uint64_t a1, id *a2)
{
  v3 = sub_231586194();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2314B4524@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2314B4F88(a2);
  *a1 = result;
  return result;
}

void sub_2314B457C(uint64_t a2@<X8>)
{
  sub_23156D024();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2314B45DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_231586174();

  *a2 = v3;
  return result;
}

uint64_t sub_2314B4624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314B4650(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2314B4654(uint64_t a1)
{
  v2 = sub_2314B4EF8(&qword_280D6C648, type metadata accessor for MLModelMetadataKey, &unk_231587BF4);
  v3 = sub_2314B4EF8(&qword_27DD5B000, type metadata accessor for MLModelMetadataKey, &unk_231587B48);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t _s11SiriSignals35ActionDisambiguationFrequencySignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v12[3] = &type metadata for NoParameters;
  v12[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v4 = qword_280D72208;
  sub_2315144B0(v12, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6();
    v7 = v6(v5);
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B5234, v8, byte_28460FCD0);
    v9 = OUTLINED_FUNCTION_3_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_2314B48B8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v17[3] = &type metadata for SignalComputationContext;
  v17[4] = &protocol witness table for SignalComputationContext;
  v6 = swift_allocObject();
  v17[0] = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  sub_2314B5008(a1, v16);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v8 = qword_280D72208;
  sub_2315144B0(v17, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B50CC, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v8;
}

uint64_t sub_2314B4A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = a2;
  v18[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = v12;
    v14 = sub_23150466C(sub_2314B5234, (&v17 - 4), byte_28460FCD0);
    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

void sub_2314B4D10(uint64_t a1)
{
  sub_2314B519C(319, &qword_280D6EA18, &type metadata for DisambiguationDonationFields, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_231585D34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for DJB2Hash(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DJB2Hash(uint64_t result, int a2, int a3)
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

uint64_t sub_2314B4EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2314B4F88(uint64_t a1)
{
  sub_2315861A4();
  v1 = sub_231586174();

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2314B5064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_2314B519C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2314B524C(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586B04();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2314B5298(char a1)
{
  result = 27954;
  switch(a1)
  {
    case 1:
      result = 7155761;
      break;
    case 2:
      result = 26673;
      break;
    case 3:
      result = 26678;
      break;
    case 4:
      result = 25649;
      break;
    case 5:
      result = 25655;
      break;
    case 6:
      result = 6567986;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2314B5324@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2314B524C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2314B5354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314B5298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2314B53A8()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

uint64_t sub_2314B53C0(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
  }

  return result;
}

uint64_t sub_2314B53E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E0, &qword_231587F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231587D50;
  *(inited + 32) = 0;
  v4 = sub_23156691C(0, a1);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  type metadata accessor for Aggregation.BucketCounter();
  v7 = swift_allocObject();
  *(v7 + 16) = 120;
  *(v7 + 24) = v6;
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  sub_23156691C(1, a1);
  v8 = OUTLINED_FUNCTION_3_4();
  *(v8 + 16) = 600;
  *(v8 + 24) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = 2;
  sub_23156691C(2, a1);
  v9 = OUTLINED_FUNCTION_3_4();
  *(v9 + 16) = 3600;
  *(v9 + 24) = v6;
  *(inited + 72) = v9;
  *(inited + 80) = 3;
  sub_23156691C(3, a1);
  v10 = OUTLINED_FUNCTION_3_4();
  *(v10 + 16) = 21600;
  *(v10 + 24) = v6;
  *(inited + 88) = v10;
  *(inited + 96) = 4;
  sub_23156691C(4, a1);
  v11 = OUTLINED_FUNCTION_3_4();
  *(v11 + 16) = 86400;
  *(v11 + 24) = v6;
  *(inited + 104) = v11;
  *(inited + 112) = 5;
  sub_23156691C(5, a1);
  v12 = OUTLINED_FUNCTION_3_4();
  *(v12 + 16) = 604800;
  *(v12 + 24) = v6;
  *(inited + 120) = v12;
  *(inited + 128) = 6;
  v13 = sub_23156691C(6, a1);
  v15 = v14;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 2419200;
  *(v17 + 24) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = 7;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_231587D60;
  *(inited + 152) = v18;
  sub_2314B676C();
  *(v1 + 16) = sub_2315860F4();
  return v1;
}

uint64_t sub_2314B55E4(char a1)
{
  switch(a1)
  {
    case 7:
      sub_231585794();
      break;
    default:
      sub_2315857B4();
      break;
  }

  type metadata accessor for Aggregation.BucketRange(0);
  return sub_2315857B4();
}

void sub_2314B56E8()
{
  v1 = v0;
  sub_2315857F4();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_1_0();
  if (!v4)
  {
    goto LABEL_56;
  }

  v5 = -v3;
  if (__OFSUB__(0, v3))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_12:
    if (qword_280D70420 == -1)
    {
LABEL_13:
      v8 = sub_231585FF4();
      __swift_project_value_buffer(v8, qword_280D72248);
      oslog = sub_231585FE4();
      v9 = sub_2315865E4();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_231496000, oslog, v9, "cannot add instance from the future", v10, 2u);
        MEMORY[0x231931280](v10, -1, -1);
      }

      return;
    }

LABEL_58:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
    goto LABEL_13;
  }

  if (v5 > 0x77)
  {
    if (v5 <= 0x257)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(1, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 <= 0xE0F)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(2, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 >> 5 <= 0x2A2)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(3, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 >> 7 <= 0x2A2)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(4, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 <= 0x93A7F)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(5, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v11 = *(v1 + 16);

    if (v5 <= 0x24E9FF)
    {
      v12 = sub_231566AE8(6, v11);

      if (!v12)
      {
        return;
      }

      v13 = *(v12 + 24);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (!v7)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    v15 = sub_231566AE8(7, v11);

    if (!v15)
    {
      return;
    }

    v16 = *(v15 + 24);
    v7 = __OFADD__(v16, 1);
    v14 = v16 + 1;
    if (v7)
    {
      goto LABEL_60;
    }

LABEL_52:
    OUTLINED_FUNCTION_7_3(v14);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_9_1();
  sub_231566AE8(0, v5);
  OUTLINED_FUNCTION_12_2();
  if (!v1)
  {
    return;
  }

  OUTLINED_FUNCTION_8_2();
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_41:
  *(v1 + 24) = v6;
LABEL_42:
}

void sub_2314B59E4(double a1, double a2)
{
  v3 = v2;
  v6 = sub_231585884();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231585844();
  sub_231585784();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = round(a1);
  v13 = round(a2);
  v14 = v11 < v12 || v11 < v13;
  if (v14)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v15 = sub_231585FF4();
    __swift_project_value_buffer(v15, qword_280D72248);
    v16 = sub_231585FE4();
    v17 = sub_2315865E4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_231496000, v16, v17, "cannot add instance from the future", v18, 2u);
      MEMORY[0x231931280](v18, -1, -1);
    }

    return;
  }

  v19 = OUTLINED_FUNCTION_4_0(v11 + -600.0);
  if (v13 < v20)
  {
    v20 = v13;
  }

  v21 = v20 - v19 + 1.0;
  if (v21 < 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  v23 = OUTLINED_FUNCTION_4_0(v11 + -3600.0);
  if (v13 < v24)
  {
    v24 = v13;
  }

  v25 = v24 - v23 + 1.0;
  if (v25 < 0.0)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v25;
  }

  v27 = OUTLINED_FUNCTION_4_0(v11 + -21600.0);
  if (v13 < v28)
  {
    v28 = v13;
  }

  v29 = v28 - v27 + 1.0;
  if (v29 < 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = OUTLINED_FUNCTION_4_0(v11 + -86400.0);
  if (v13 < v32)
  {
    v32 = v13;
  }

  v71 = OUTLINED_FUNCTION_5_4(v32 - v31);
  v33 = OUTLINED_FUNCTION_4_0(v11 + -604800.0);
  if (v13 < v34)
  {
    v34 = v13;
  }

  v70 = OUTLINED_FUNCTION_5_4(v34 - v33);
  v35 = OUTLINED_FUNCTION_4_0(v11 + -2419200.0);
  if (v13 < v36)
  {
    v36 = v13;
  }

  v69 = OUTLINED_FUNCTION_5_4(v36 - v35);
  v37 = v11 + -2419201.0;
  if (v12 < 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v12;
  }

  if (v13 < v37)
  {
    v37 = v13;
  }

  v68 = OUTLINED_FUNCTION_5_4(v37 - v38);
  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(0, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    if (v13 >= v11)
    {
      v39 = v11;
    }

    else
    {
      v39 = v13;
    }

    v40 = v11 + -120.0;
    if (v11 + -120.0 <= v12)
    {
      v40 = v12;
    }

    v41 = OUTLINED_FUNCTION_5_4(v39 - v40);
    v43 = OUTLINED_FUNCTION_0_1(v41 / 10.0);
    if (v44 || v42)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      OUTLINED_FUNCTION_1_0();
      if (!v14)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_2_2();
      if (v42)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_7_3(v45);

      goto LABEL_50;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_50:
  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(1, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v47 = OUTLINED_FUNCTION_0_1(v22 / 10.0);
    if (v44 || v46)
    {
      goto LABEL_110;
    }

    if (v47 <= -9.22337204e18)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_7_3(v48);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(2, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v50 = OUTLINED_FUNCTION_0_1(v26 / 10.0);
    if (v44 || v49)
    {
      goto LABEL_114;
    }

    if (v50 <= -9.22337204e18)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    OUTLINED_FUNCTION_7_3(v51);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(3, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v53 = OUTLINED_FUNCTION_0_1(v30 / 10.0);
    if (v44 || v52)
    {
      goto LABEL_118;
    }

    if (v53 <= -9.22337204e18)
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_121;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_7_3(v54);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(4, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v56 = OUTLINED_FUNCTION_0_1(v71 / 10.0);
    if (v44 || v55)
    {
      goto LABEL_122;
    }

    if (v56 <= -9.22337204e18)
    {
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_7_3(v57);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(5, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v59 = OUTLINED_FUNCTION_0_1(v70 / 10.0);
    if (v44 || v58)
    {
      goto LABEL_126;
    }

    if (v59 <= -9.22337204e18)
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_129;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_7_3(v60);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(6, v6);
  OUTLINED_FUNCTION_11_3();
  if (v9)
  {
    v62 = OUTLINED_FUNCTION_0_1(v69 / 10.0);
    if (v44 || v61)
    {
      goto LABEL_130;
    }

    if (v62 <= -9.22337204e18)
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_2_2();
    if (v42)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_7_3(v63);
  }

  OUTLINED_FUNCTION_9_1();
  sub_231566AE8(7, v9);
  OUTLINED_FUNCTION_12_2();
  if (v3)
  {
    v65 = OUTLINED_FUNCTION_0_1(v68 / 10.0);
    if (v44 || v64)
    {
      goto LABEL_134;
    }

    if (v65 <= -9.22337204e18)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v14)
    {
      goto LABEL_137;
    }

    v67 = *(v3 + 24);
    if (__OFADD__(v67, v66))
    {
LABEL_138:
      __break(1u);
      return;
    }

    *(v3 + 24) = v67 + v66;
  }
}

uint64_t sub_2314B6020()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(v1 + 16);
    if (*(v4 + 16))
    {
      v5 = byte_28460FCD0[v2 + 32];

      v6 = sub_231574C34(v5);
      if (v7)
      {
        v8 = *(*(v4 + 56) + 8 * v6);

        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2314F0FE0();
          v3 = v13;
        }

        v11 = *(v3 + 16);
        if (v11 >= *(v3 + 24) >> 1)
        {
          sub_2314F0FE0();
          v3 = v14;
        }

        *(v3 + 16) = v11 + 1;
        v12 = v3 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v10;
      }

      else
      {
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return v3;
}

uint64_t sub_2314B6158(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_231574C34(a1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = *(*(v2 + 56) + 8 * v4);

  v7 = *(v6 + 24);

  return v7;
}

double sub_2314B61D8(double a1, double a2, double a3, double a4)
{
  if (a1 <= a3)
  {
    a1 = a3;
  }

  if (a4 < a2)
  {
    a2 = a4;
  }

  result = a2 - a1 + 1.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2314B6204()
{
  v17 = MEMORY[0x277D84F90];
  sub_23152D598(0, 8, 0);
  v1 = 0;
  do
  {
    v2 = &byte_28460FCD0[v1++];
    v3 = v2[32];
    v4 = 0xE200000000000000;
    v5 = 27954;
    switch(v3)
    {
      case 1:
        v4 = 0xE300000000000000;
        v5 = 7155761;
        break;
      case 2:
        v5 = 26673;
        break;
      case 3:
        v5 = 26678;
        break;
      case 4:
        v5 = 25649;
        break;
      case 5:
        v5 = 25655;
        break;
      case 6:
        v4 = 0xE300000000000000;
        v5 = 6567986;
        break;
      case 7:
        v4 = 0xE300000000000000;
        v5 = 6712937;
        break;
      default:
        break;
    }

    v15 = v5;
    v16 = v4;
    MEMORY[0x23192FF80](61, 0xE100000000000000);
    if (*(*(v0 + 16) + 16))
    {

      sub_231574C34(v3);
      if (v6)
      {
      }

      else
      {
      }
    }

    v7 = sub_231586C24();
    MEMORY[0x23192FF80](v7);

    v9 = *(v17 + 16);
    v8 = *(v17 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_23152D598(v8 > 1, v9 + 1, 1);
    }

    *(v17 + 16) = v9 + 1;
    v10 = v17 + 16 * v9;
    *(v10 + 32) = v15;
    *(v10 + 40) = v16;
  }

  while (v1 != 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320, MEMORY[0x277D83958]);
  v11 = sub_231586154();
  v13 = v12;

  MEMORY[0x23192FF80](v11, v13);

  MEMORY[0x23192FF80](62, 0xE100000000000000);
  return 60;
}

uint64_t getEnumTagSinglePayload for Aggregation.Bucket(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Aggregation.Bucket(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
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

unint64_t sub_2314B66F4()
{
  result = qword_280D6F9D0;
  if (!qword_280D6F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6F9D0);
  }

  return result;
}

unint64_t sub_2314B676C()
{
  result = qword_280D6F9D8[0];
  if (!qword_280D6F9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6F9D8);
  }

  return result;
}

uint64_t type metadata accessor for Aggregation.BucketRange(uint64_t a1)
{
  result = qword_280D6FB30;
  if (!qword_280D6FB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314B6834(uint64_t a1)
{
  result = sub_231585884();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AppDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5B0F0 = a1;
  *(&xmmword_27DD5B0F0 + 1) = a2;
  byte_27DD5B100 = a3;
  return result;
}

double sub_2314B698C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5B100;
  result = *&xmmword_27DD5B0F0;
  *a1 = xmmword_27DD5B0F0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2314B69E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5B0F0 = v1;
  *(&xmmword_27DD5B0F0 + 1) = v2;
  byte_27DD5B100 = v3;
  return result;
}

uint64_t sub_2314B6A38(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1(a1);
  result = sub_231586964();
  qword_280D6F008 = result;
  *algn_280D6F010 = v2;
  return result;
}

uint64_t static AppDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6F000 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_280D6F000);
  }

  v0 = qword_280D6F008;

  return v0;
}

uint64_t AppDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6F000 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_280D6F000);
  }

  MEMORY[0x23192FF80](qword_280D6F008, *algn_280D6F010);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for AppDisambiguationFrequencySignal(0);
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for AppDisambiguationFrequencySignal(uint64_t a1)
{
  result = qword_280D6EFF0;
  if (!qword_280D6EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AppDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B70A8(v3, v1, v2);
}

uint64_t sub_2314B6C18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for AppDisambiguationFrequencySignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for AppDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284610A98;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_2314B6CD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B70A8(v3, v1, v2);
}

uint64_t _s11SiriSignals32AppDisambiguationFrequencySignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v12[3] = &type metadata for NoParameters;
  v12[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v4 = qword_280D72208;
  sub_2315144B0(v12, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6();
    v7 = v6(v5);
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B741C, v8, byte_28460FCD0);
    v9 = OUTLINED_FUNCTION_3_3();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_2314B6EC8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v17[3] = &type metadata for SignalComputationContext;
  v17[4] = &protocol witness table for SignalComputationContext;
  v6 = swift_allocObject();
  v17[0] = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  sub_2314B5008(a1, v16);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  v8 = qword_280D72208;
  sub_2315144B0(v17, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B73FC, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v8;
}

uint64_t sub_2314B70A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = a2;
  v18[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = v12;
    v14 = sub_23150466C(sub_2314B741C, (&v17 - 4), byte_28460FCD0);
    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

void sub_2314B7320(uint64_t a1)
{
  sub_2314B73AC();
  if (v1 <= 0x3F)
  {
    sub_231585D34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314B73AC()
{
  if (!qword_280D6EA18)
  {
    v0 = sub_231586454();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6EA18);
    }
  }
}

uint64_t sub_2314B7448()
{
  result = sub_231586964();
  qword_280D6F8B0 = result;
  *algn_280D6F8B8 = v1;
  return result;
}

uint64_t static AppLaunchCountSignal.signalName.getter()
{
  if (qword_280D6F8A8 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_280D6F8A8);
  }

  v0 = qword_280D6F8B0;

  return v0;
}

uint64_t sub_2314B74D4()
{
  if (qword_280D6F8A8 != -1)
  {
    OUTLINED_FUNCTION_6_4(&qword_280D6F8A8);
  }

  MEMORY[0x23192FF80](qword_280D6F8B0, *algn_280D6F8B8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

double sub_2314B7584@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(2, 3);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static AppLaunchCountSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0();
}

uint64_t sub_2314B7618(void *a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v54 - v7;
  v9 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v11 = v10;
  v67 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v65 = v54 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v54 - v21;
  sub_2314B83DC(v54 - v21);
  v68 = v20;
  v66 = v2;
  sub_2314B8520(v20);
  v23 = v11 + 16;
  v24 = *(v11 + 16);
  v64 = v23;
  v69 = v22;
  v24(v8, v22, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  v25 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v8, v6, 0, 0, 0);
  v62 = v26;
  v59 = [*(v2 + 24) publisherWithOptions_];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2315860F4();
  v63 = v27;
  v28 = v65;
  v55 = v24;
  v24(v65, v22, v9);
  v29 = v58;
  v24(v58, v20, v9);
  v30 = v67;
  v31 = *(v67 + 80);
  v32 = (v31 + 32) & ~v31;
  v57 = v13 + v31;
  v33 = (v13 + v31 + v32) & ~v31;
  v56 = v13 + 7;
  v34 = (v13 + 7 + v33) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v66;
  *(v35 + 16) = v27;
  *(v35 + 24) = v36;
  v37 = *(v30 + 32);
  v37(v35 + v32, v28, v9);
  v38 = v29;
  v37(v35 + v33, v29, v9);
  v39 = (v35 + v34);
  v40 = v61;
  *v39 = v60;
  v39[1] = v40;
  v74 = sub_2314B8D94;
  v75 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v54[1] = &v72;
  v72 = sub_2314B901C;
  v73 = &block_descriptor;
  v60 = _Block_copy(&aBlock);

  v41 = v65;
  v42 = v55;
  v55(v65, v69, v9);
  v43 = v38;
  v42(v38, v68, v9);
  v44 = (v31 + 16) & ~v31;
  v45 = (v57 + v44) & ~v31;
  v46 = (v56 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v37(v47 + v44, v41, v9);
  v37(v47 + v45, v43, v9);
  *(v47 + v46) = v63;
  v74 = sub_2314B8E34;
  v75 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_2314B901C;
  v73 = &block_descriptor_10;
  v48 = _Block_copy(&aBlock);

  v49 = v59;
  v50 = v60;
  v51 = [v59 sinkWithCompletion:v60 receiveInput:v48];
  _Block_release(v48);
  _Block_release(v50);

  v52 = *(v67 + 8);
  v52(v68, v9);
  v52(v69, v9);
}

uint64_t sub_2314B7BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v37 = a7;
  v38 = a6;
  v11 = sub_231585884();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v39 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v33[-v15];
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  v18 = *(v12 + 16);
  v18(v16, a4, v11);
  v18(v39, a5, v11);

  v19 = sub_231585FE4();
  v20 = sub_2315865D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v19;
    v22 = v21;
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v22 = 136315906;
    swift_beginAccess();
    v34 = v20;

    sub_2315860E4();

    v23 = sub_2314A22E8();

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    sub_2314B5298(*(a3 + 16));
    v24 = sub_2314A22E8();

    *(v22 + 14) = v24;
    *(v22 + 22) = 2080;
    sub_2314B8F74(&qword_280D6FBD0, MEMORY[0x277CC95B8]);
    sub_231586C24();
    v25 = *(v12 + 8);
    v25(v16, v11);
    v26 = sub_2314A22E8();

    *(v22 + 24) = v26;
    *(v22 + 32) = 2080;
    v27 = v39;
    sub_231586C24();
    v25(v27, v11);
    v28 = sub_2314A22E8();

    *(v22 + 34) = v28;
    v29 = v35;
    _os_log_impl(&dword_231496000, v35, v34, "AppLaunchCountSignal: computed %s for %s between %s and %s", v22, 0x2Au);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x231931280](v30, -1, -1);
    MEMORY[0x231931280](v22, -1, -1);
  }

  else
  {

    v31 = *(v12 + 8);
    v31(v39, v11);
    v31(v16, v11);
  }

  swift_beginAccess();
  v40 = *(a2 + 16);
  v41 = 1;

  v38(&v40);
  return sub_2314A5EEC(v40, v41);
}

void sub_2314B8008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231585884();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = [a1 eventBody];
  if (v13)
  {
    v35 = v13;
    if ([v13 starting])
    {
      v14 = sub_2314D7528(v35);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        v18 = [v35 absoluteTimestamp];
        if (v18)
        {
          v19 = v18;
          sub_231585834();

          (*(v7 + 32))(v12, v10, v6);
          sub_2314B8F74(&qword_280D6FBD8, MEMORY[0x277CC9590]);
          if (sub_231586164() & 1) != 0 || (sub_231586164())
          {
            (*(v7 + 8))(v12, v6);

            return;
          }

          swift_beginAccess();
          v34[1] = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(a4 + 16);
          v21 = v36;
          *(a4 + 16) = 0x8000000000000000;
          v22 = sub_23149C888(v16, v17);
          if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
          {
            __break(1u);
          }

          else
          {
            v24 = v22;
            v25 = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
            v26 = sub_231586A64();
            v27 = v36;
            if (v26)
            {
              v28 = sub_23149C888(v16, v17);
              if ((v25 & 1) != (v29 & 1))
              {
LABEL_23:
                sub_231586C84();
                __break(1u);
                return;
              }

              v24 = v28;
            }

            *(a4 + 16) = v27;
            if ((v25 & 1) == 0)
            {
              sub_231575360(v24, v16, v17, 0, v27);
            }

            v30 = *(v27 + 56);
            v31 = *(v30 + 8 * v24);
            v32 = __OFADD__(v31, 1);
            v33 = v31 + 1;
            if (!v32)
            {
              *(v30 + 8 * v24) = v33;
              swift_endAccess();

              (*(v7 + 8))(v12, v6);
              return;
            }
          }

          __break(1u);
          goto LABEL_23;
        }
      }
    }

    v20 = v35;
  }
}

void sub_2314B8374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2314B83DC(uint64_t a1@<X8>)
{
  v3 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for Aggregation.BucketRange(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for Aggregation();
  v14 = *(v1 + 16);
  sub_231585874();
  sub_2314B55E4(v14);
  (*(v5 + 8))(v9, v3);
  (*(v5 + 16))(a1, v13, v3);
  sub_2314B8FB8(v13);
  OUTLINED_FUNCTION_12_3();
}

void sub_2314B8520(uint64_t a1@<X8>)
{
  v3 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for Aggregation.BucketRange(0);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *(v1 + 16);
  if (v15 == 4)
  {
    OUTLINED_FUNCTION_12_3();

    sub_231585874();
  }

  else
  {
    type metadata accessor for Aggregation();
    sub_231585874();
    sub_2314B55E4(v15);
    (*(v5 + 8))(v9, v3);
    (*(v5 + 16))(a1, v14 + *(v10 + 20), v3);
    sub_2314B8FB8(v14);
    OUTLINED_FUNCTION_12_3();
  }
}

uint64_t AppLaunchCountSignal.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2314B8740(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0();
}

void sub_2314B87DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_231585884();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_2315857C4();
    OUTLINED_FUNCTION_11_2();
    (*(v14 + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2315857C4();
    OUTLINED_FUNCTION_11_2();
    (*(v16 + 8))(a2, v12);
  }

  [v6 initWithStartDate:v13 endDate:v15 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  OUTLINED_FUNCTION_12_3();
}

uint64_t sub_2314B890C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = OUTLINED_FUNCTION_9_2();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_231586D14();

    sub_231586274();
    result = sub_231586D44();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_231586C44() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2314B8A90(uint64_t a1)
{
  if (sub_231566740(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
    v2 = OUTLINED_FUNCTION_9_2();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v16 = sub_2314A7080(a1);
  if (v16)
  {
    v3 = 0;
    v4 = v2 + 56;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_231513EE4(v3, v5 == 0, a1);
      if (v5)
      {
        result = MEMORY[0x231930660](v3, a1);
        v7 = result;
      }

      else
      {
        v7 = *(a1 + 32 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      sub_231586D14();
      sub_2314AAAAC(v17);
      result = sub_231586D44();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        _s4NodeCMa();
        if (sub_2314AB36C(*(*(v2 + 48) + 8 * v10), v7))
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v7;
      v14 = *(v2 + 16);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      if (v3 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0()
{
  v13 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 3, 0);
  v0 = 0;
  v1 = v13;
  do
  {
    v2 = byte_284610220[v0 + 32];
    v3 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v4 = [v3 InFocus];
    swift_unknownObjectRelease();
    v5 = type metadata accessor for AppLaunchCountSignal();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    v13 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_23152D5B8(v7 > 1, v8 + 1, 1);
      v1 = v13;
    }

    ++v0;
    v11 = v5;
    v12 = &protocol witness table for AppLaunchCountSignal;
    *&v10 = v6;
    *(v1 + 16) = v8 + 1;
    sub_23149FD3C(&v10, v1 + 40 * v8 + 32);
  }

  while (v0 != 3);
  return v1;
}

uint64_t sub_2314B8D94(uint64_t a1)
{
  sub_231585884();
  OUTLINED_FUNCTION_7_4();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = v1 + v7;
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_2314B7BBC(a1, v5, v6, v1 + v4, v1 + v3, v9, v10);
}

void sub_2314B8E34(void *a1)
{
  sub_231585884();
  OUTLINED_FUNCTION_7_4();
  v6 = *(v1 + v5);

  sub_2314B8008(a1, v1 + v4, v1 + v3, v6);
}

uint64_t sub_2314B8F74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231585884();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314B8FB8(uint64_t a1)
{
  v2 = type metadata accessor for Aggregation.BucketRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppMetadata.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppMetadata.localizedAppName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AppMetadata.__allocating_init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_2();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AppMetadata.init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_2314B90F0()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000020, 0x80000002315907F0);
  MEMORY[0x23192FF80](*(v0 + 16), *(v0 + 24));
  MEMORY[0x23192FF80](0xD000000000000014, 0x8000000231590820);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
  v1 = sub_231586204();
  MEMORY[0x23192FF80](v1);

  MEMORY[0x23192FF80](0xD00000000000001CLL, 0x8000000231590840);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B128, &qword_231588058);
  v2 = sub_231586204();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2314B923C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231590880 == a2;
  if (v3 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002315908A0 == a2;
    if (v6 || (sub_231586C44() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000002315908C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_231586C44();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2314B9360(unsigned __int8 a1)
{
  sub_231586D14();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

unint64_t sub_2314B93B4(unsigned __int8 a1)
{
  result = 0xD000000000000010;
  if (a1 >= 2u)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t sub_2314B9424(uint64_t a1)
{
  v2 = *v1;
  sub_231586D14();
  MEMORY[0x231930A00](v2);
  return sub_231586D44();
}

uint64_t sub_2314B9470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314B923C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314B94B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2314B9358();
  *a1 = result;
  return result;
}

uint64_t sub_2314B94E0(uint64_t a1)
{
  v2 = sub_2314B9784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314B951C(uint64_t a1)
{
  v2 = sub_2314B9784();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AppMetadata.deinit()
{

  return v0;
}

uint64_t AppMetadata.__deallocating_deinit()
{
  AppMetadata.deinit();
  v0 = OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314B95B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B130, &qword_231588060);
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314B9784();
  sub_231586D64();
  v15 = 0;
  sub_231586BD4();
  if (!v2)
  {
    v14 = 1;
    sub_231586BB4();
    v13 = *(v3 + 48);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314B9AA0(&qword_280D6C6C8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_231586BC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2314B9784()
{
  result = qword_280D6E5F0;
  if (!qword_280D6E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5F0);
  }

  return result;
}

uint64_t AppMetadata.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  AppMetadata.init(from:)(a1);
  return v2;
}

void *AppMetadata.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B138, &qword_231588068);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314B9784();
  sub_231586D54();
  if (v2)
  {
    type metadata accessor for AppMetadata();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_231586B54();
    v1[3] = v5;
    v1[4] = sub_231586B34();
    v1[5] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314B9AA0(&qword_280D6C6C0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_231586B44();
    v8 = OUTLINED_FUNCTION_0_4();
    v9(v8);
    v1[6] = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2314B9AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B0E8, &unk_231589320);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314B9B0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppMetadata.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2314B9D98()
{
  result = qword_27DD5B140;
  if (!qword_27DD5B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B140);
  }

  return result;
}

unint64_t sub_2314B9DF0()
{
  result = qword_280D6E5E0;
  if (!qword_280D6E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5E0);
  }

  return result;
}

unint64_t sub_2314B9E48()
{
  result = qword_280D6E5E8;
  if (!qword_280D6E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5E8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppOpenTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppOpenTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_2314B9F0C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = [a1 absoluteTimestamp];
  if (v10)
  {
    v11 = v10;
    sub_231585834();

    v12 = sub_231585884();
    v13 = 0;
  }

  else
  {
    v12 = sub_231585884();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v13, 1, v12);
  sub_2314A0710(v7, v9);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_2314BA0FC(v9);
    return;
  }

  sub_231585784();
  v15 = v14;
  (*(*(v12 - 8) + 8))(v9, v12);
  v16 = round(v15);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v17 = v16;
  if ([a1 starting])
  {
    *v2 = v17;
    *(v2 + 8) = 0;
  }

  else
  {
    sub_2314BA164(v17);
  }
}

uint64_t sub_2314BA0FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314BA164(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v3 = sub_231585FF4();
    __swift_project_value_buffer(v3, qword_280D72248);
    v4 = sub_231585FE4();
    v5 = sub_2315865D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_231496000, v4, v5, "ignoring extra stop", v6, 2u);
      MEMORY[0x231931280](v6, -1, -1);
    }

    goto LABEL_10;
  }

  v7 = a1 - *v1;
  if (__OFSUB__(a1, *v1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (!v9)
    {
      *(v1 + 16) = v10;
LABEL_10:
      *v2 = 0;
      *(v2 + 8) = 1;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2314BA290(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_2314BA520(a1, a2, 0);
  v6 = [v5 localizedName];

  v7 = sub_2315861A4();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v11 = 136315394;

    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v9, v10, "Found localized app name: %s for bundleIdentifier: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v14, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  return v7;
}

id sub_2314BA520(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231586174();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2315856D4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2314BA690(char a1)
{
  sub_231586D14();
  MEMORY[0x231930A00](a1 & 1);
  return sub_231586D44();
}

uint64_t AppSelectionSignalComponent.subSignalValueForApps(bundleIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v5, v17);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v12 + 32))(&v19[v18], v16, a4);
  v20 = *(a5 + 32);

  v20(a1, sub_2314BA99C, v19, a4, a5);
}

uint64_t sub_2314BA8AC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = (*(a6 + 8))(a5, a6);
  *(inited + 40) = v12;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_2314A5168(v9, v10);
  sub_2315860F4();
  a2();
}

uint64_t sub_2314BA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v25 = a1;
  v8 = sub_231585884();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_231585874();
  (*(v10 + 16))(v15, v17, v8);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v18, v15, v8);
  v21 = (v20 + v19);
  *v21 = a2;
  v21[1] = a3;
  v22 = *(a5 + 40);

  v22(v25, sub_2314BB058, v20, v26, a5);

  return (*(v10 + 8))(v17, v8);
}

uint64_t sub_2314BABA4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v40[1] = a4;
  v41 = a3;
  v47 = a2;
  v46 = sub_231585884();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2315860F4();
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v44 = (v5 + 8);
  v48 = a1;

  v13 = 0;
  v42 = v12;
  v43 = a1 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 10) | (16 * __clz(__rbit64(v11)));
      v16 = (*(v48 + 48) + v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v48 + 56) + v15;
      v20 = *v19;
      v21 = *(v19 + 8);

      v49 = v21;
      sub_2314A5168(v20, v21);
      v22 = v45;
      sub_231585874();
      sub_2315857A4();
      v24 = v23;
      (*v44)(v22, v46);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v7;
      v25 = sub_23149C888(v18, v17);
      if (__OFADD__(v7[2], (v26 & 1) == 0))
      {
        break;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B148, &qword_231588398);
      if (sub_231586A64())
      {
        v29 = sub_23149C888(v18, v17);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_22;
        }

        v27 = v29;
      }

      v11 &= v11 - 1;
      if (v28)
      {

        v7 = v50;
        v31 = v50[7] + 24 * v27;
        v32 = *v31;
        *v31 = v20;
        v33 = *(v31 + 8);
        *(v31 + 8) = v49;
        *(v31 + 16) = v24;
        sub_2314A5EEC(v32, v33);
      }

      else
      {
        v7 = v50;
        v50[(v27 >> 6) + 8] |= 1 << v27;
        v34 = (v7[6] + 16 * v27);
        *v34 = v18;
        v34[1] = v17;
        v35 = v7[7] + 24 * v27;
        *v35 = v20;
        *(v35 + 8) = v49;
        *(v35 + 16) = v24;
        v36 = v7[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_21;
        }

        v7[2] = v38;
      }

      v13 = v14;
      v12 = v42;
      v8 = v43;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        v41(v7);
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t SyncSignalCollector.value(completion:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v10, a3, a4);
  v8 = v10;
  v9 = v11;
  a1(&v8);
  v5 = v8;
  v6 = v9;

  return sub_2314A5EEC(v5, v6);
}

uint64_t sub_2314BB058(uint64_t a1)
{
  v3 = *(sub_231585884() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2314BABA4(a1, v1 + v4, v6, v7);
}

uint64_t sub_2314BB0F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 24))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314BB138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversionError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314BB300()
{
  result = qword_27DD5B158;
  if (!qword_27DD5B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B158);
  }

  return result;
}

void *sub_2314BB35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585BA4();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v59 = sub_231571528(v7);

    v61 = sub_231572E78();
    v8 = *(a2 + 16);
    if (v8)
    {
      v60 = sub_2314BB910();
      v55 = v57 + 32;
      v9 = (a2 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        swift_bridgeObjectRetain_n();
        v12 = sub_2314BB8AC(v10, v11);
        if (!v12 || (v13 = v12, v14 = sub_2314D7590(), v16 = v15, v13, !v16))
        {

          v14 = v10;
          v16 = v11;
        }

        v62 = v10;
        v63 = v11;
        MEMORY[0x28223BE20](v17);
        *(&v55 - 2) = &v62;
        v18 = v61;
        v19 = sub_2314E62A8(sub_2314BB954, (&v55 - 4), v61);
        if (v19)
        {
        }

        else
        {
          v62 = v14;
          v63 = v16;
          MEMORY[0x28223BE20](v19);
          *(&v55 - 2) = &v62;
          v20 = v18;
          v21 = sub_2314E62A8(sub_2314BB974, (&v55 - 4), v18);

          if (!v21)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23149D588();
              v20 = v30;
            }

            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            v61 = v20;
            if (v23 >= v22 >> 1)
            {
              OUTLINED_FUNCTION_0_5(v22);
              sub_23149D588();
              v61 = v31;
            }

            v24 = v61;
            *(v61 + 16) = v23 + 1;
            v25 = v24 + 16 * v23;
            *(v25 + 32) = v10;
            *(v25 + 40) = v11;
            sub_231585B94();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2314F0FA0(0, *(v59 + 16) + 1, 1, v59);
              v59 = v32;
            }

            v27 = *(v59 + 16);
            v26 = *(v59 + 24);
            if (v27 >= v26 >> 1)
            {
              v33 = OUTLINED_FUNCTION_0_5(v26);
              sub_2314F0FA0(v33, v34, v35, v59);
              v59 = v36;
            }

            v28 = v58;
            v29 = v59;
            *(v59 + 16) = v27 + 1;
            (*(v57 + 32))(v29 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v27, v28, v56);
            goto LABEL_20;
          }
        }

LABEL_20:
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    v37 = sub_2315860F4();
    v38 = sub_231585B64();

    v60 = *(v38 + 16);
    if (v60)
    {
      v39 = 0;
      v40 = (v61 + 40);
      while (v39 < *(v38 + 16))
      {
        if (v39 >= *(v61 + 16))
        {
          goto LABEL_39;
        }

        v41 = *(v38 + 8 * v39 + 32);
        v43 = *(v40 - 1);
        v42 = *v40;

        swift_isUniquelyReferenced_nonNull_native();
        v62 = v37;
        v44 = sub_23149C888(v43, v42);
        if (__OFADD__(v37[2], (v45 & 1) == 0))
        {
          goto LABEL_40;
        }

        v46 = v44;
        v47 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
        if (sub_231586A64())
        {
          v48 = sub_23149C888(v43, v42);
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_42;
          }

          v46 = v48;
        }

        if (v47)
        {

          v37 = v62;
          *(v62[7] + 8 * v46) = v41;
        }

        else
        {
          v37 = v62;
          v62[(v46 >> 6) + 8] |= 1 << v46;
          v50 = (v37[6] + 16 * v46);
          *v50 = v43;
          v50[1] = v42;
          *(v37[7] + 8 * v46) = v41;
          v51 = v37[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_41;
          }

          v37[2] = v53;
        }

        ++v39;
        v40 += 2;
        if (v60 == v39)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_231586C84();
      __break(1u);
    }

    else
    {
LABEL_34:

      return v37;
    }
  }

  else
  {

    return sub_2315860F4();
  }

  return result;
}

id sub_2314BB8AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586174();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

unint64_t sub_2314BB910()
{
  result = qword_27DD5B160;
  if (!qword_27DD5B160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B160);
  }

  return result;
}

void sub_2314BB990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v40 = MEMORY[0x277D84F90];
    sub_23152D678(0, v3, 0);
    v5 = v40;
    v7 = sub_2315634C4();
    v9 = v8;
    v10 = 0;
    v39 = v4 + 56;
    v32 = v4 + 64;
    v33 = v3;
    v34 = v4;
    v35 = a2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v4 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v39 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_32;
        }

        v36 = v10;
        v37 = v6;
        v12 = (*(v4 + 48) + 16 * v7);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        if (v15)
        {

          v16 = sub_23149C888(v14, v13);
          if (v17)
          {
            v18 = *(*(a2 + 56) + 8 * v16);
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v20 = *(v5 + 16);
        v19 = *(v5 + 24);
        v21 = v37;
        if (v20 >= v19 >> 1)
        {
          sub_23152D678(v19 > 1, v20 + 1, 1);
          v21 = v37;
        }

        *(v5 + 16) = v20 + 1;
        v22 = (v5 + 24 * v20);
        v22[4] = v14;
        v22[5] = v13;
        v22[6] = v18;
        if (v9)
        {
          goto LABEL_36;
        }

        v4 = v34;
        a2 = v35;
        v23 = 1 << *(v34 + 32);
        if (v7 >= v23)
        {
          goto LABEL_33;
        }

        v24 = *(v39 + 8 * v11);
        if ((v24 & (1 << v7)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v34 + 36) != v21)
        {
          goto LABEL_35;
        }

        v25 = v24 & (-2 << (v7 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v26 = v33;
        }

        else
        {
          v38 = v5;
          v27 = v11 << 6;
          v28 = v11 + 1;
          v26 = v33;
          v29 = (v32 + 8 * v11);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              sub_2314ABA68(v7, v21, 0);
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_25;
            }
          }

          sub_2314ABA68(v7, v21, 0);
LABEL_25:
          v5 = v38;
        }

        v10 = v36 + 1;
        if (v36 + 1 == v26)
        {
          goto LABEL_29;
        }

        v9 = 0;
        v6 = *(v34 + 36);
        v7 = v23;
        if (v23 < 0)
        {
          break;
        }
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
  }
}

uint64_t static AppUsageRelativeSignal.signalName.getter()
{
  swift_beginAccess();
  v0 = qword_27DD5B170;

  return v0;
}

uint64_t static AppUsageRelativeSignal.signalName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27DD5B170 = a1;
  off_27DD5B178 = a2;
}

uint64_t sub_2314BBD6C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27DD5B178;
  *a1 = qword_27DD5B170;
  a1[1] = v2;
}

uint64_t sub_2314BBDBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27DD5B170 = v2;
  off_27DD5B178 = v1;
}

uint64_t AppUsageRelativeSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppUsageRelativeSignal.init(name:candidateAppIds:timeInterval:maxValue:nowProvider:dataSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t AppUsageRelativeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v12[0] = *v2;
  v12[1] = v5;
  v6 = v2[3];
  v12[2] = v2[2];
  v12[3] = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  v9 = v2[3];
  *(v7 + 48) = v2[2];
  *(v7 + 64) = v9;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  sub_2314BC914(v12, &v11);

  sub_2314BC6A8(sub_2314BC364, v7);
}

void *sub_2314BBF20(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v67 = a4;
  v7 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  v20 = *a1;
  (*(a2 + 40))(v17);
  sub_2315857B4();
  v66 = v16;
  v69 = v16;
  v21 = sub_2314DCF7C(sub_2314BD0B4, v68, v20);
  sub_2315857B4();
  v65 = *(a2 + 16);
  v22 = static StreamedEventsAggregator.group(events:now:beginning:candidateAppIds:)(v21, v19, v13, v65);

  v25 = *(v9 + 8);
  v24 = v9 + 8;
  v23 = v25;
  result = v25(v13, v7);
  v27 = 0;
  v28 = v22 + 64;
  v29 = 1 << *(v22 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v22 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = 0.0;
  if (v31)
  {
    while (1)
    {
      v34 = v27;
LABEL_9:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v33 = v33 + *(*(v22 + 56) + ((v34 << 9) | (8 * v35)));
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v34);
    ++v27;
    if (v31)
    {
      v27 = v34;
      goto LABEL_9;
    }
  }

  v60 = 0;
  v61 = v23;
  v62 = a3;
  v63 = v24;
  v64 = v7;
  v36 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  result = sub_231586AC4();
  v37 = result;
  v38 = 0;
  v39 = 1 << *(v22 + 32);
  v40 = *(v22 + 64);
  v41 = -1;
  if (v39 < 64)
  {
    v41 = ~(-1 << v39);
  }

  v42 = v41 & v40;
  v43 = (v39 + 63) >> 6;
  v44 = result + 8;
  if ((v41 & v40) == 0)
  {
LABEL_15:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_28;
      }

      if (v38 >= v43)
      {

        sub_2314BB990(v65, v37);
        v57 = v56;

        v70 = sub_231507638(v57);
        v71 = 1;
        v62(&v70);
        sub_2314A5EEC(v70, v71);
        v58 = v64;
        v59 = v61;
        v61(v19, v64);
        return v59(v66, v58);
      }

      v47 = *(v28 + 8 * v38);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_20:
    v48 = v45 | (v38 << 6);
    v49 = round(*(*(v22 + 56) + 8 * v48) * v36 / v33);
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v49 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v49 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v50 = (*(v22 + 48) + 16 * v48);
    v51 = *v50;
    result = v50[1];
    *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v52 = (v37[6] + 16 * v48);
    *v52 = v51;
    v52[1] = result;
    *(v37[7] + 8 * v48) = v49;
    v53 = v37[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_32;
    }

    v37[2] = v55;

    if (!v42)
    {
      goto LABEL_15;
    }
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2314BC370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v31 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  MEMORY[0x28223BE20](v31);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_231585884();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v32 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  v16 = *a1;
  v17 = sub_2314D7528(*a1);
  if (v18)
  {
    v19 = v18;
    v30 = v17;
    v20 = [v16 absoluteTimestamp];
    if (v20)
    {
      v21 = v20;
      v29[1] = v3;
      sub_231585834();

      v22 = *(v8 + 32);
      v22(v15, v13, v7);
      if (sub_2315857D4())
      {
        (*(v8 + 16))(v32, v15, v7);
        v23 = [v16 starting];
        (*(v8 + 8))(v15, v7);
        v24 = v31;
        *v6 = v30;
        v6[1] = v19;
        v22(v6 + *(v24 + 20), v32, v7);
        *(v6 + *(v24 + 24)) = v23 ^ 1;
        v25 = v34;
        sub_2314BD0D0(v6, v34);
        v26 = type metadata accessor for StreamedEventsAggregator.Event(0);
        swift_storeEnumTagMultiPayload();
        return __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
      }

      (*(v8 + 8))(v15, v7);
    }

    else
    {
    }
  }

  v28 = type metadata accessor for StreamedEventsAggregator.Event(0);
  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
}

unint64_t sub_2314BC660(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return sub_2314BD080(v3);
}

uint64_t sub_2314BC6A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_231586024();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231586064();
  OUTLINED_FUNCTION_4_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_2314BCBF8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  sub_231586054();
  v21[1] = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v17, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2314BC960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2314BC9A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314BCA00(void *a1, void (*a2)(void *), uint64_t a3)
{
  swift_beginAccess();
  v6 = a1[4];
  if (v6 == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    swift_beginAccess();

    sub_2314D4608();
    v16 = *(a1[5] + 16);
    sub_2314D4694(v16);
    v17 = a1[5];
    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = sub_2314BD040;
    *(v18 + 40) = v15;
    a1[5] = v17;
    return swift_endAccess();
  }

  else if (v6)
  {
    v19[0] = a1[4];

    a2(v19);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_2314D4608();
    v8 = *(a1[5] + 16);
    sub_2314D4694(v8);
    v9 = a1[5];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_2314BD144;
    *(v10 + 40) = v7;
    a1[5] = v9;
    swift_endAccess();
    v11 = a1[4];
    a1[4] = 1;
    sub_2314BD080(v11);
    v12 = a1[2];
    v13 = swift_allocObject();
    swift_weakInit();

    v12(sub_2314BD098, v13);
  }
}

unint64_t sub_2314BCC04()
{
  result = qword_280D6FEC0;
  if (!qword_280D6FEC0)
  {
    sub_231586024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEC0);
  }

  return result;
}

unint64_t sub_2314BCC5C()
{
  result = qword_280D6FEB0;
  if (!qword_280D6FEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B180, &unk_231589020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEB0);
  }

  return result;
}

uint64_t sub_2314BCCC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_231586024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231586064();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v15[1] = *(result + 48);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_2314BD0A8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_19;
    v14 = _Block_copy(aBlock);

    sub_231586054();
    v15[2] = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    sub_2315867C4();
    MEMORY[0x231930370](0, v10, v6, v14);
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_2314BCF6C(uint64_t a1, uint64_t a2)
{

  sub_2314BC660(a2);
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v9 = a2;

      v7(&v9);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_2314BD044(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_2314BD080(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2314BD0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314BD14C(uint64_t a1)
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

id *sub_2314BD1F0()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_2314BD270()
{
  sub_2314BD1F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314BD310()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2314BD36C()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000002FLL, 0x8000000231590980);
  sub_231584C88();
  v1 = v0;
  v2 = [v0 description];
  v3 = sub_2315861A4();
  v5 = v4;

  MEMORY[0x23192FF80](v3, v5);

  MEMORY[0x23192FF80](0x61756C617665202CLL, 0xEE00203A6E6F6974);
  sub_231584DA8();
  v7 = v6;
  v8 = [v6 description];
  v9 = sub_2315861A4();
  v11 = v10;

  MEMORY[0x23192FF80](v9, v11);

  MEMORY[0x23192FF80](0x6261626F7270202CLL, 0xEF203A7974696C69);
  sub_231584D18();
  v13 = v12;
  v14 = [v12 description];
  v15 = sub_2315861A4();
  v17 = v16;

  MEMORY[0x23192FF80](v15, v17);

  return 0;
}

uint64_t sub_2314BD540(uint64_t a1)
{
  result = sub_2314BD5C8(&qword_280D6D5E8, &unk_2315886C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2314BD584(uint64_t a1)
{
  result = sub_2314BD5C8(&qword_280D6D5F0, &unk_23158867C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2314BD5C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioMegamodelOutput();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AudioAppSignals.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  sub_231585884();
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AudioAppSignals.__allocating_init(candidateAppBundleIds:signalValues:apps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585884();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_2314E0530(v8 - v7);
  type metadata accessor for AudioAppSignals(0);
  v10 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(2, a1, a2, v9, a3);
  return v10;
}

uint64_t AudioAppSignals.__allocating_init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t type metadata accessor for AudioAppSignals(uint64_t a1)
{
  result = qword_280D6E9C8;
  if (!qword_280D6E9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  v8 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v9 + 32))(&v5[v8], a4);
  *&v5[OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps] = a5;
  return v5;
}

uint64_t sub_2314BD898()
{
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v1 = sub_231586C24();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v2 = MEMORY[0x231930080](*(v0 + 24), MEMORY[0x277D837D0]);
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000010);
  v3 = sub_2315860E4();
  MEMORY[0x23192FF80](v3);

  MEMORY[0x23192FF80](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_231585884();
  OUTLINED_FUNCTION_0_6();
  sub_2314AA758(v4);
  v5 = sub_231586C24();
  MEMORY[0x23192FF80](v5);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B190, &qword_2315886F0);
  sub_231586A54();
  MEMORY[0x23192FF80](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2314BDAC8()
{
  v0 = sub_2315861F4();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5();
  sub_231585664();
  swift_allocObject();
  sub_231585654();
  type metadata accessor for AudioAppSignals(0);
  OUTLINED_FUNCTION_5_5();
  sub_2314AA758(v1);
  v2 = sub_231585644();

  sub_2315861E4();
  sub_2315861C4();
  if (v3)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v4 = sub_231585FF4();
    __swift_project_value_buffer(v4, qword_280D72248);

    v5 = sub_231585FE4();
    v6 = sub_2315865D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v7 = 136315138;
      v8 = sub_2314A22E8();

      *(v7 + 4) = v8;
      _os_log_impl(&dword_231496000, v5, v6, "AudioAppSignalsSyncer#encode storing encoded signals %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }
  }

  return v2;
}

uint64_t AudioAppSignals.__allocating_init(from:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2315861F4();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5();
  v3 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_231585634();
  swift_allocObject();
  sub_231585624();
  type metadata accessor for AudioAppSignals(0);
  OUTLINED_FUNCTION_5_5();
  sub_2314AA758(v10);
  sub_231585614();

  v11 = v19[2];
  v12 = v19[3];
  v13 = v19[4];
  (*(v5 + 16))(v9, v19 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp, v3);
  v14 = *(v19 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  if (v14)
  {
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = OUTLINED_FUNCTION_7_5();
  sub_2314BEE4C(v15, v16);

  v17 = swift_allocObject();
  AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(v11, v12, v13, v9, v14);
  return v17;
}

uint64_t sub_2314BE1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000231590A60 == a2;
    if (v6 || (sub_231586C44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61566C616E676973 && a2 == 0xEC0000007365756CLL;
      if (v7 || (sub_231586C44() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_231586C44() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1936748641 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_231586C44();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2314BE37C(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x61566C616E676973;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 1936748641;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314BE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314BE1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314BE450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2314BE374();
  *a1 = result;
  return result;
}

uint64_t sub_2314BE478(uint64_t a1)
{
  v2 = sub_2314BEF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314BE4B4(uint64_t a1)
{
  v2 = sub_2314BEF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAppSignals.deinit()
{

  v1 = OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp;
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t AudioAppSignals.__deallocating_deinit()
{
  AudioAppSignals.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314BE5C0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B198, &qword_2315886F8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314BEF0C();
  sub_231586D64();
  sub_231586BF4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314BEFB4(&qword_280D6C6C8);
    OUTLINED_FUNCTION_2_4();
    sub_231586C04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
    sub_2314BF01C(&unk_280D6C6E8);
    OUTLINED_FUNCTION_2_4();
    sub_231586C04();
    sub_231585884();
    OUTLINED_FUNCTION_0_6();
    sub_2314AA758(v4);
    sub_231586C04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A8, &qword_231588708);
    sub_2314BF0F0(&unk_280D6C6D8);
    OUTLINED_FUNCTION_2_4();
    sub_231586BC4();
  }

  v5 = OUTLINED_FUNCTION_7_5();
  return v6(v5);
}

uint64_t AudioAppSignals.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudioAppSignals.init(from:)(a1);
  return v2;
}

void *AudioAppSignals.init(from:)(void *a1)
{
  v3 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1B0, &qword_231588710);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2314BEF0C();
  v22 = v11;
  sub_231586D54();
  if (v1)
  {
    v15 = v23;
    type metadata accessor for AudioAppSignals(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v8;
    LOBYTE(v26) = 0;
    v13 = sub_231586B74();
    v15 = v23;
    *(v23 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    v25 = 1;
    sub_2314BEFB4(&qword_280D6C6C0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B84();
    *(v15 + 24) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
    v25 = 2;
    sub_2314BF01C(&unk_280D6C6E0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B84();
    *(v15 + 32) = v26;
    LOBYTE(v26) = 3;
    OUTLINED_FUNCTION_0_6();
    sub_2314AA758(v16);
    v17 = v20;
    sub_231586B84();
    (*(v21 + 32))(v15 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_timestamp, v17, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A8, &qword_231588708);
    v25 = 4;
    sub_2314BF0F0(&unk_280D6C6D0);
    OUTLINED_FUNCTION_9_3();
    sub_231586B44();
    v18 = OUTLINED_FUNCTION_6_5();
    v19(v18);
    *(v15 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps) = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v15;
}

uint64_t sub_2314BEDD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AudioAppSignals.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2314BEE4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2314BEEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B410, &unk_2315890B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2314BEF0C()
{
  result = qword_280D6E9F8;
  if (!qword_280D6E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9F8);
  }

  return result;
}

unint64_t sub_2314BEF60()
{
  result = qword_280D701C8;
  if (!qword_280D701C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701C8);
  }

  return result;
}

unint64_t sub_2314BEFB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B0E8, &unk_231589320);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2314BF01C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B1A0, &qword_231588700);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2314BF09C()
{
  result = qword_280D701C0;
  if (!qword_280D701C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701C0);
  }

  return result;
}

unint64_t sub_2314BF0F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B1A8, &qword_231588708);
    sub_2314AA758(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2314BF190(uint64_t a1)
{
  result = sub_231585884();
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

uint64_t getEnumTagSinglePayload for AudioAppSignals.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioAppSignals.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2314BF484()
{
  result = qword_27DD5B1B8;
  if (!qword_27DD5B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1B8);
  }

  return result;
}

unint64_t sub_2314BF4DC()
{
  result = qword_280D6E9E8;
  if (!qword_280D6E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9E8);
  }

  return result;
}

unint64_t sub_2314BF534()
{
  result = qword_280D6E9F0;
  if (!qword_280D6E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E9F0);
  }

  return result;
}

uint64_t AudioAppSignalsCollector.AudioSignalCollectorError.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

unint64_t sub_2314BF620()
{
  result = qword_27DD5B1C0;
  if (!qword_27DD5B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1C0);
  }

  return result;
}

uint64_t sub_2314BF680(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2314BF6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *_s25AudioSignalCollectorErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void *AudioAppSignalsCollector.__allocating_init()()
{
  type metadata accessor for MultiUserConnectionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v4[3] = type metadata accessor for LSApplicationRecordProvider();
  v4[4] = &off_284613270;
  v4[0] = swift_allocObject();
  sub_2314BF8FC(v4, v3);
  v1 = sub_2314C197C(v0, v3, sub_2314BF8BC, 0);
  sub_2314C1BE4(v4);
  return v1;
}

void *sub_2314BF8BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_231522034(a1);
  v4 = sub_2314C1464(v3, a2);

  return v4;
}

void sub_2314BF958(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1((v3 + 96), *(v3 + 120));
  v9 = OUTLINED_FUNCTION_5_6();
  if (v10(v9))
  {
    if (v8)
    {
      if (qword_280D701B8 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1(qword_280D72218, qword_280D72230);
      v11 = OUTLINED_FUNCTION_5_6();
      if (v12(v11))
      {
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_3_6();

        sub_2314C09FC(v13, v14, v15, v16);
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_3_6();

        sub_2314C0198(v32, v33, v34, v35);
      }
    }

    else
    {
      v25 = swift_allocObject();
      v25[2] = v3;
      v25[3] = v7;
      v25[4] = v6;
      v25[5] = a2;
      v25[6] = a3;

      v26 = OUTLINED_FUNCTION_4_2();
      sub_2314C1C9C(v26, v27);

      v28 = OUTLINED_FUNCTION_4_2();
      sub_2314C14C8(v28, v29, v30, v25);
      OUTLINED_FUNCTION_3_6();
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_231496000, v19, v20, "AudioAppSignalsCollector#getAudioAppPreferences Feature is disabled. Not returning signal values...", v21, 2u);
      MEMORY[0x231931280](v21, -1, -1);
    }

    sub_2314C1C38();
    swift_allocError();
    *v22 = 0;
    a2();
    OUTLINED_FUNCTION_3_6();
  }
}

void sub_2314BFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_231566740(a1);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    v25 = MEMORY[0x277D84F90];
    sub_23152D598(0, v9 & ~(v9 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v23 = a5;
    v24 = a6;
    v12 = 0;
    v10 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x231930660](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = *(v13 + 16);
      v15 = *(v13 + 24);

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23152D598(v16 > 1, v17 + 1, 1);
      }

      ++v12;
      *(v25 + 16) = v17 + 1;
      v18 = v25 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
    }

    while (v11 != v12);
    a6 = v24;
    a5 = v23;
  }

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v10;
  v19[5] = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2314C1D7C;
  *(v20 + 24) = v19;

  sub_2314C13B4(v21, v22, v10, sub_2314C1D88);
}