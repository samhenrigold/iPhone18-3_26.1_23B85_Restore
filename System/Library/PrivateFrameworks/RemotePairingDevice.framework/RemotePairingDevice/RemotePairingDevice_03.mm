id DeviceKeyValueStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceKeyValueStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261FA3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26203AC0C();
  }
}

uint64_t sub_261FA361C(uint64_t a1, uint64_t a2)
{
  sub_26203A1BC();
  sub_26203ADDC();
  sub_26203A23C();
  v2 = sub_26203AE0C();

  return v2;
}

uint64_t sub_261FA3694(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_261FA3708(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_261F67FE4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_261FA3764(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9918, &qword_26203F700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_261FA3858(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_261FA3880(uint64_t a1)
{
  sub_26203A1BC();
  sub_26203ADDC();
  sub_26203A23C();
  v2 = sub_26203AE0C();

  return sub_261FA5318(a1, v2);
}

unint64_t sub_261FA3914(uint64_t a1)
{
  v2 = sub_26203ADCC();

  return sub_261FA5410(a1, v2);
}

unint64_t sub_261FA3958()
{
  sub_262039A7C();
  sub_261FA5DCC(&qword_27FEF9898, MEMORY[0x277CD8B10]);
  sub_26203A11C();
  v0 = OUTLINED_FUNCTION_23_1();

  return sub_261FA5470(v0, v1);
}

uint64_t sub_261FA39EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98F0, &qword_26203F6D8);
  v34 = v4;
  result = sub_26203A93C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_261FA56E4(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_26203ADDC();
    sub_26203A23C();
    result = sub_26203AE0C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_261FA3C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA180, &unk_26203F6F0);
  v33 = v4;
  result = sub_26203A93C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_261FA56E4(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_261F8D184(v22, v34);
    }

    else
    {
      sub_261F681A8(v22, v34);
    }

    sub_26203ADDC();
    sub_26203A23C();
    result = sub_26203AE0C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_261F8D184(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

_OWORD *sub_261FA3F44(_OWORD *a1, void *a2, char a3)
{
  sub_261FA3880(a2);
  OUTLINED_FUNCTION_5_2();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF96B0, &qword_26203E660);
  if ((sub_26203A8EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_261FA3880(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    type metadata accessor for RPTrustedHostInfoKey(0);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v12[7] + 32 * v8));
    v13 = OUTLINED_FUNCTION_47();

    return sub_261F8D184(v13, v14);
  }

  else
  {
    sub_261FA4C24(v8, a2, a1, v12);

    return a2;
  }
}

uint64_t sub_261FA406C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_261F7C720(a2, a3, sub_261F7C7D0);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9850, &qword_26203F5E0);
  if ((sub_26203A8EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_261F7C720(a2, a3, sub_261F7C7D0);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + 40 * v12;

    return sub_261FA5D94(a1, v17);
  }

  else
  {
    sub_261FA4C8C(v12, a2, a3, a1, v16);
  }
}

_OWORD *sub_261FA4260()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_10();
  sub_261F7C720(v4, v0, v5);
  OUTLINED_FUNCTION_5_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
  if (OUTLINED_FUNCTION_8_1(v7))
  {
    OUTLINED_FUNCTION_0_10();
    v8 = OUTLINED_FUNCTION_75();
    sub_261F7C720(v8, v9, v10);
    OUTLINED_FUNCTION_6_5();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 32 * v3));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_22_2();

    return sub_261F8D184(v13, v14);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_11_3();
    sub_261FA4CE8(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_22_2();
  }
}

unint64_t sub_261FA4388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261FA3914(a3);
  OUTLINED_FUNCTION_5_2();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E8, &qword_26203F6D0);
  if (OUTLINED_FUNCTION_8_1(v10))
  {
    sub_261FA3914(a3);
    OUTLINED_FUNCTION_6_5();
    if (!v12)
    {
      goto LABEL_14;
    }

    v5 = v11;
  }

  if (v4)
  {
    v13 = (*(*v3 + 56) + 16 * v5);
    *v13 = a1;
    v13[1] = a2;
    OUTLINED_FUNCTION_22_2();
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_22_2();

    return sub_261FA4F40(v16, v17, v18, v19, v20);
  }
}

void sub_261FA447C()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_5_2();
  if (v4)
  {
    __break(1u);
LABEL_12:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v5 = v2;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
  if (OUTLINED_FUNCTION_30_3(v7))
  {
    sub_261F67388();
    OUTLINED_FUNCTION_6_5();
    if (!v9)
    {
      goto LABEL_12;
    }

    v5 = v8;
  }

  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 32 * v5));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_21_1();

    sub_261F8D184(v10, v11);
  }

  else
  {
    sub_261F67C78(v0, v17);
    v13 = OUTLINED_FUNCTION_24_1();
    sub_261FA4F88(v13, v14, v15, v16);
    OUTLINED_FUNCTION_21_1();
  }
}

uint64_t sub_261FA4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  sub_261F7C720(v14, v6, v15);
  OUTLINED_FUNCTION_5_2();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (OUTLINED_FUNCTION_8_1(v17))
  {
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v8, v6, v18);
    OUTLINED_FUNCTION_6_5();
    if (!v20)
    {
      goto LABEL_14;
    }

    v11 = v19;
  }

  if (v10)
  {
    *(*(*v9 + 56) + 8 * v11) = v7;
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_10_1();
    sub_261FA5008(v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_31_0();
  }
}

void sub_261FA4680()
{
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98D8, &qword_26203F6C0);
  if (OUTLINED_FUNCTION_30_3(v8))
  {
    sub_261F67388();
    OUTLINED_FUNCTION_6_5();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  if (v7)
  {
    *(*(*v2 + 56) + 8 * v6) = v0;
    OUTLINED_FUNCTION_21_1();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_261F67C78(v1, v16);
    v12 = OUTLINED_FUNCTION_24_1();
    sub_261FA502C(v12, v13, v14, v15);
    OUTLINED_FUNCTION_21_1();
  }
}

uint64_t sub_261FA475C()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  sub_261F7C720(v3, v0, v4);
  OUTLINED_FUNCTION_5_2();
  if (v5)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
  if (OUTLINED_FUNCTION_8_1(v6))
  {
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v1, v0, v7);
    OUTLINED_FUNCTION_6_5();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_22_2();

    return sub_261FA562C(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_10_1();
    sub_261FA5084(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_22_2();
  }
}

uint64_t sub_261FA4860()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  sub_261F7C720(v6, v0, v7);
  OUTLINED_FUNCTION_5_2();
  if (v8)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B8, &qword_2620447C0);
  if (OUTLINED_FUNCTION_8_1(v9))
  {
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v2, v0, v10);
    OUTLINED_FUNCTION_6_5();
    if (!v12)
    {
      goto LABEL_14;
    }

    v5 = v11;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 8 * v5) = v1;
    OUTLINED_FUNCTION_22_2();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_10_1();
    sub_261FA5008(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_22_2();
  }
}

uint64_t sub_261FA4960()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_10();
  sub_261F7C720(v4, v0, v5);
  OUTLINED_FUNCTION_5_2();
  if (v6)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
  if (OUTLINED_FUNCTION_8_1(v7))
  {
    OUTLINED_FUNCTION_0_10();
    v8 = OUTLINED_FUNCTION_75();
    sub_261F7C720(v8, v9, v10);
    OUTLINED_FUNCTION_6_5();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 40 * v3));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_22_2();

    return sub_261F797BC(v13, v14);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_11_3();
    sub_261FA50E0(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_22_2();
  }
}

void sub_261FA4A68(uint64_t a1, uint64_t a2)
{
  v5 = sub_262039A7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261FA3958();
  OUTLINED_FUNCTION_5_2();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9888, &qword_26203F678);
  if ((OUTLINED_FUNCTION_8_1(v14) & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_261FA3958();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v2;
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    OUTLINED_FUNCTION_31_0();

    sub_261FA5238(v18, v19);
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_261FA5150(v12, v8, a1, v17);
    OUTLINED_FUNCTION_31_0();
  }
}

_OWORD *sub_261FA4C24(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_261F8D184(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261FA4C8C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

_OWORD *sub_261FA4CE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261F8D184(a4, (a5[7] + 32 * a1));
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261FA4EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_261FA4EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261FA4F40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_261FA4F88(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_261F8D184(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_261FA5008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_16_2(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

unint64_t sub_261FA502C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261FA5084(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
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

uint64_t sub_261FA50E0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261F797BC(a4, a5[7] + 40 * a1);
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

uint64_t sub_261FA5150(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_262039A7C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  result = sub_261FA52A8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_261FA5238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FA52A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261FA5318(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_26203A1BC();
    v7 = v6;
    if (v5 == sub_26203A1BC() && v7 == v8)
    {

      return i;
    }

    v10 = sub_26203AC0C();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_261FA5410(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_261FA5470(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_262039A7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_261FA5DCC(&qword_27FEF98A0, MEMORY[0x277CD8B10]);
    v9 = sub_26203A17C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_261FA56E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26203F5B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_261FA5748(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26203AC9C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_261F7C720(v7, v6, sub_261F7C7D0);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98F8, &qword_26203F6E0);
      sub_26203A8FC();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_261FA39EC(v14, a2 & 1);
  v16 = sub_261F7C720(v7, v6, sub_261F7C7D0);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001BLL, 0x800000026204E360);
  sub_26203A8CC();
  MEMORY[0x266722710](39, 0xE100000000000000);
  sub_26203A91C();
  __break(1u);
}

void sub_261FA5A54(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26203AC9C();
      __break(1u);
      goto LABEL_22;
    }

    sub_261F7B428(i, &v30, &qword_27FEF9910, &unk_26203EF00);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_261F8D184(&v32, v27);
    v9 = *a3;
    v11 = sub_261F7C720(v8, v7, sub_261F7C7D0);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8FC();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_261F8D184(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_261FA3C90(v14, a2 & 1);
  v16 = sub_261F7C720(v8, v7, sub_261F7C7D0);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    return;
  }

LABEL_22:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001BLL, 0x800000026204E360);
  sub_26203A8CC();
  MEMORY[0x266722710](39, 0xE100000000000000);
  sub_26203A91C();
  __break(1u);
}

uint64_t sub_261FA5DCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_23_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return sub_26203A8EC();
}

uint64_t sub_261FA5E94(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A1BC();
  v4 = v3;
  if (v2 == sub_26203A1BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_54_1(v2);
  }

  return v7 & 1;
}

uint64_t sub_261FA5F0C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x726F727265736ELL;
  }

  else
  {
    v2 = 0x656C6261646F63;
  }

  if (a2)
  {
    v3 = 0x726F727265736ELL;
  }

  else
  {
    v3 = 0x656C6261646F63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26203AC0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_261FA5F8C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656369766564;
  }

  else
  {
    v3 = 1953722216;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656369766564;
  }

  else
  {
    v5 = 1953722216;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_261FA6014(unsigned __int8 a1, char a2)
{
  v2 = 0xEF7063745F2E6C65;
  v3 = 0x6E6E75742D70725FLL;
  v4 = a1;
  v5 = 0x6E6E75742D70725FLL;
  v6 = 0xEF7063745F2E6C65;
  switch(v4)
  {
    case 1:
      v6 = 0x800000026204C750;
      v5 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v6 = 0xEF7064755F2E6C65;
      v5 = 0x6E6E75742D70725FLL;
      break;
    case 4:
      v6 = 0x800000026204C790;
      v5 = 0xD000000000000021;
      break;
    default:
      v6 = 0x800000026204C720;
      v5 = 0xD000000000000022;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000026204C750;
      v3 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xEF7064755F2E6C65;
      break;
    case 4:
      v2 = 0x800000026204C790;
      v3 = 0xD000000000000021;
      break;
    default:
      v2 = 0x800000026204C720;
      v3 = 0xD000000000000022;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26203AC0C();
  }

  return v8 & 1;
}

uint64_t sub_261FA6190(char a1, char a2)
{
  v2 = 1667855729;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7365492;
    }

    else
    {
      v3 = 7365749;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1667855729;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7365492;
    }

    else
    {
      v2 = 7365749;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_54_1(v3);
  }

  return v7 & 1;
}

uint64_t sub_261FA624C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6976654465726F63;
  }

  else
  {
    v3 = 0x615065746F6D6572;
  }

  if (v2)
  {
    v4 = 0xED0000676E697269;
  }

  else
  {
    v4 = 0xEA00000000006563;
  }

  if (a2)
  {
    v5 = 0x6976654465726F63;
  }

  else
  {
    v5 = 0x615065746F6D6572;
  }

  if (a2)
  {
    v6 = 0xEA00000000006563;
  }

  else
  {
    v6 = 0xED0000676E697269;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_261FA62F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7697517;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_122_0(16);
      break;
    case 3:
      v5 = 0x6441726576726573;
      v6 = 0x7373657264;
      goto LABEL_6;
    case 4:
      v5 = 0x5352726576726573;
      v6 = 0x74726F5044;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x7367616C66;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE300000000000000;
      v2 = 7697517;
      break;
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      v2 = 0x6441726576726573;
      v8 = 0x7373657264;
      goto LABEL_14;
    case 4:
      v2 = 0x5352726576726573;
      v8 = 0x74726F5044;
LABEL_14:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v7 = 0xE800000000000000;
      v2 = 0x797469726F697270;
      break;
    case 6:
      v7 = 0xE500000000000000;
      v2 = 0x7367616C66;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v10 & 1;
}

uint64_t sub_261FA64BC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = "awaitingUserConsent";
  v4 = "awaitingUserConsent";
  v5 = a1;
  v6 = 0xD000000000000016;
  switch(v5)
  {
    case 1:
      v4 = "clientHandshakeRequest";
      v6 = 0xD000000000000017;
      break;
    case 2:
      v4 = "serverHandshakeResponse";
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "additionalConnectionHello";
      v6 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "clientHandshakeRequest";
      v2 = 0xD000000000000017;
      break;
    case 2:
      v3 = "serverHandshakeResponse";
      v2 = 0xD000000000000019;
      break;
    case 3:
      v3 = "additionalConnectionHello";
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v6);
  }

  return v8 & 1;
}

uint64_t sub_261FA65D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73736563637573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736563637573;
  switch(v4)
  {
    case 1:
      v5 = 0x6572756C696166;
      break;
    case 2:
      v5 = 0x676E656C6C616863;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_122_0(19);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6572756C696166;
      break;
    case 2:
      v2 = 0x676E656C6C616863;
      v6 = 0xE900000000000065;
      break;
    case 3:
      OUTLINED_FUNCTION_121();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_261FA6708(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7823730;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7823730;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_122_0(20);
      break;
    case 3:
      v5 = 0x656C74746F726874;
      v3 = 0xEF73646E6F636553;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      v2 = 0x656C74746F726874;
      v6 = 0xEF73646E6F636553;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v5);
  }

  return v8 & 1;
}

uint64_t sub_261FA6844(char a1, char a2)
{
  v3 = 0xD000000000000013;
  v4 = "sThroughLockdown";
  v5 = "sThroughLockdown";
  switch(a1)
  {
    case 1:
      v5 = "verifyManualPairing";
      v3 = 0xD000000000000012;
      break;
    case 2:
      v5 = "setupManualPairing";
      v3 = 0xD000000000000023;
      break;
    case 3:
      v5 = "tionLockdownPairing";
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000013;
  switch(a2)
  {
    case 1:
      v4 = "verifyManualPairing";
      v6 = 0xD000000000000012;
      break;
    case 2:
      v4 = "setupManualPairing";
      v6 = 0xD000000000000023;
      break;
    case 3:
      v4 = "tionLockdownPairing";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_261FA696C(unsigned __int8 a1, char a2)
{
  v2 = 0x726576656ELL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 1)
    {
      v5 = 0x800000026204C500;
    }

    else
    {
      v5 = 0x800000026204C520;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x726576656ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
    }

    else
    {
      v2 = 0xD000000000000020;
    }

    if (a2 == 1)
    {
      v6 = 0x800000026204C500;
    }

    else
    {
      v6 = 0x800000026204C520;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1(v4);
  }

  return v8 & 1;
}

uint64_t sub_261FA6A48()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_28108B610 = result;
  return result;
}

uint64_t StartTunnelResponse.protocolOptions.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_261F81D84(v2, v3);
}

uint64_t StartTunnelResponse.init(port:serviceName:protocolOptions:host:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = *a4;
  started = type metadata accessor for StartTunnelResponse(0);
  return sub_261FB9B60(a5, a6 + *(started + 28), &qword_27FEF9940, &qword_26203F790);
}

uint64_t PermittedPromptlessPairingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

RemotePairingDevice::ControlChannelConnection::PeerType_optional __swiftcall ControlChannelConnection.PeerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ControlChannelConnection.PeerType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656369766564;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_261FA6D10@<X0>(uint64_t *a1@<X8>)
{
  result = ControlChannelConnection.PeerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261FA6E2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026204E9D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FA6ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FA6E2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261FA6EFC(uint64_t a1)
{
  v2 = sub_261FA7088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FA6F38(uint64_t a1)
{
  v2 = sub_261FA7088();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelConnection.Options.Host.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9948, &qword_26203F798);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = OUTLINED_FUNCTION_155();
  __swift_project_boxed_opaque_existential_0Tm(v28, v29);
  sub_261FA7088();
  sub_26203AE5C();
  sub_26203AB0C();
  (*(v24 + 8))(v27, v22);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FA7088()
{
  result = qword_28108C110;
  if (!qword_28108C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C110);
  }

  return result;
}

void ControlChannelConnection.Options.Host.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9958, &qword_26203F7A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  v6 = sub_261FA7088();
  OUTLINED_FUNCTION_141(&type metadata for ControlChannelConnection.Options.Host.CodingKeys, v7, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_34_1();
    v8 = sub_26203A9FC();
    v9 = OUTLINED_FUNCTION_116();
    v10(v9);
    *v4 = v8 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

RemotePairingDevice::ControlChannelConnection::Options::Device __swiftcall ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)(Swift::Bool allowsPairSetup, Swift::Bool allowsPinlessPairing, Swift::Bool allowsIncomingTunnelConnections, Swift::Bool allowsPromptlessAutomationPairingUpgrade, Swift::Bool allowsSharingSensitiveInfo)
{
  *v5 = allowsPairSetup;
  v5[1] = allowsPinlessPairing;
  v5[2] = allowsIncomingTunnelConnections;
  v5[3] = allowsPromptlessAutomationPairingUpgrade;
  v5[4] = allowsSharingSensitiveInfo;
  result.allowsPairSetup = allowsPairSetup;
  return result;
}

uint64_t static ControlChannelConnection.Options.Device.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
      {
        return result;
      }
    }

    if (v5 == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }

LABEL_13:
      if (v6 == 2)
      {
        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (v9 == 2 || ((v9 ^ v6) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    result = 0;
    if (v8 != 2 && ((v8 ^ v5) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_261FA73EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615073776F6C6C61 && a2 == 0xEF70757465537269;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000026204E9F0 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x800000026204EA10 == a2;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000028 && 0x800000026204EA30 == a2;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001ALL && 0x800000026204EA60 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_26203AC0C();

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

unint64_t sub_261FA75A0(char a1)
{
  result = 0x615073776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FA7678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FA73EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FA76A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FA7598();
  *a1 = result;
  return result;
}

uint64_t sub_261FA76C8(uint64_t a1)
{
  v2 = sub_261FA78FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FA7704(uint64_t a1)
{
  v2 = sub_261FA78FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelConnection.Options.Device.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9960, &qword_26203F7A8);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  v35 = v38 - v34;
  v36 = v26[1];
  v38[2] = v26[2];
  v38[3] = v36;
  v37 = v26[3];
  v38[0] = v26[4];
  v38[1] = v37;
  __swift_project_boxed_opaque_existential_0Tm(v29, v29[3]);
  sub_261FA78FC();
  sub_26203AE5C();
  OUTLINED_FUNCTION_49_1();
  sub_26203AB0C();
  if (!v27)
  {
    OUTLINED_FUNCTION_49_1();
    sub_26203AB0C();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FA78FC()
{
  result = qword_28108C138;
  if (!qword_28108C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C138);
  }

  return result;
}

void ControlChannelConnection.Options.Device.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9970, &unk_26203F7B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  v6 = sub_261FA78FC();
  OUTLINED_FUNCTION_141(&type metadata for ControlChannelConnection.Options.Device.CodingKeys, v7, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_34_1();
    v8 = sub_26203A9FC();
    OUTLINED_FUNCTION_34_1();
    v9 = sub_26203A9FC();
    OUTLINED_FUNCTION_34_1();
    v14 = sub_26203A9AC();
    OUTLINED_FUNCTION_34_1();
    v13 = sub_26203A9AC();
    OUTLINED_FUNCTION_34_1();
    v10 = sub_26203A9AC();
    v11 = OUTLINED_FUNCTION_116();
    v12(v11);
    *v4 = v8 & 1;
    v4[1] = v9 & 1;
    v4[2] = v14;
    v4[3] = v13;
    v4[4] = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t static ControlChannelConnection.defaultMaxReconnectionAttempts.getter()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return qword_27FEF9938;
}

uint64_t static ControlChannelConnection.defaultMaxReconnectionAttempts.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_88_0(&qword_27FEF9938, v3);
  qword_27FEF9938 = a1;
  return result;
}

uint64_t sub_261FA7C28@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FEF9938;
  return result;
}

uint64_t sub_261FA7C74(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FEF9938 = v1;
  return result;
}

void *sub_261FA7D00(void *__src)
{
  memcpy(__dst, __src, 0x61uLL);
  sub_261F674BC(__dst, &v3, &qword_27FEF9978, &qword_262045D80);
  return sub_261FA7F00(__src);
}

void *sub_261FA7D6C()
{
  swift_beginAccess();
  memcpy(__dst, v0 + 2, 0x61uLL);
  v12 = *(v0 + 1);
  v13 = v0[4];
  v1 = __dst[3];
  result = memcpy(__src, v0 + 6, sizeof(__src));
  if (__dst[3])
  {
    result = swift_beginAccess();
    v3 = v0[35];
    if (v3)
    {
      v4 = v0[36];
      v6 = v12;
      v7 = v13;
      v8 = v1;
      memcpy(v9, __src, sizeof(v9));
      sub_261F674BC(__dst, v5, &qword_27FEF9978, &qword_262045D80);
      sub_261F7D45C(v3, v4);
      v3(&v6);
      sub_261F665E4(v3, v4);
      return sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
    }
  }

  return result;
}

uint64_t sub_261FA7E8C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), 0x61uLL);
  memcpy(a1, (v1 + 16), 0x61uLL);
  return sub_261F674BC(__dst, &v4, &qword_27FEF9978, &qword_262045D80);
}

void *sub_261FA7F00(const void *a1)
{
  OUTLINED_FUNCTION_88_0(v1 + 16, &v4);
  memcpy(__dst, (v1 + 16), 0x61uLL);
  memcpy((v1 + 16), a1, 0x61uLL);
  sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
  return sub_261FA7D6C();
}

void *(*sub_261FA7F70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_33(v1 + 16);
  return sub_261FA7FB8;
}

void *sub_261FA7FB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_261FA7D6C();
  }

  return result;
}

void sub_261FA7FEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_261FA805C(v1, v3);
}

void *sub_261FA801C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void sub_261FA805C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 120, a2);
  v4 = *(v2 + 120);
  *(v2 + 120) = a1;
}

double sub_261FA80DC@<D0>(uint64_t a1@<X8>)
{
  sub_261FA81C0(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

void sub_261FA81C0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  *a1 = OUTLINED_FUNCTION_80_0();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 168);
  OUTLINED_FUNCTION_2_7();
  sub_261F68B30(v7, v8, v9, v10, v11, v12, sub_261F7D45C, sub_261F81D84, v13);
}

uint64_t sub_261FA8240()
{
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v2 = OUTLINED_FUNCTION_47_1();
  return v3(v2, v1);
}

double sub_261FA8290@<D0>(_OWORD *a1@<X8>)
{
  sub_261FA8308(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261FA82CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5[0] = v2;
  v5[1] = v1;

  return sub_261FA834C(v5, v3);
}

uint64_t sub_261FA8308@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v1 + 184);
  *a1 = *(v1 + 176);
  a1[1] = v3;
}

uint64_t sub_261FA834C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_43(v2 + 176, a2);
  *(v2 + 176) = v3;
  *(v2 + 184) = v4;
}

void ControlChannelConnection.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  *(a1 + 4) = *(v1 + 244);
  *a1 = v2;
}

uint64_t sub_261FA8410@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FA8560();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD554;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FA84A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FA859C();
}

uint64_t sub_261FA8560()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA859C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 248, v3);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t sub_261FA8624@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FA8724();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD060;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FA8694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FA8760();
}

uint64_t sub_261FA8724()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8760()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 264, v3);
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t sub_261FA87E8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FA88E8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD010;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FA8858(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FA8924();
}

uint64_t sub_261FA88E8()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8924()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 280, v3);
  v4 = *(v1 + 280);
  v5 = *(v1 + 288);
  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t sub_261FA89AC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FA8AAC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD010;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FA8A1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FA8AE8();
}

uint64_t sub_261FA8AAC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8AE8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 296, v3);
  v4 = *(v1 + 296);
  v5 = *(v1 + 304);
  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t sub_261FA8B70()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 312);
}

uint64_t sub_261FA8BA0(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 312, a2);
  *(v2 + 312) = a1;
  return result;
}

uint64_t sub_261FA8C18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 320, a1, &qword_27FEF99A0, &qword_26203F7D8);
}

uint64_t sub_261FA8C6C(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 320, &qword_27FEF99A0, &qword_26203F7D8);
  return swift_endAccess();
}

uint64_t sub_261FA8D58@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 360, a1, &qword_27FEF99A8, &qword_26203F7E0);
}

uint64_t sub_261FA8DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 360, &qword_27FEF99A8, &qword_26203F7E0);
  return swift_endAccess();
}

uint64_t sub_261FA8E88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F79740(v1 + 400, a1);
}

uint64_t sub_261FA8ECC(__int128 *a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 400));
  sub_261F797BC(a1, v1 + 400);
  return swift_endAccess();
}

uint64_t sub_261FA8F64@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 440, a1, &qword_27FEF99B0, &qword_26203F7E8);
}

uint64_t sub_261FA8FB8(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 440, &qword_27FEF99B0, &qword_26203F7E8);
  return swift_endAccess();
}

uint64_t sub_261FA9058@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 480, a1, &qword_27FEF99B8, &qword_26203F7F0);
}

uint64_t sub_261FA90AC(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 480, &qword_27FEF99B8, &qword_26203F7F0);
  return swift_endAccess();
}

uint64_t sub_261FA914C()
{
  OUTLINED_FUNCTION_154();
  if (v1 != 2 && BYTE2(v1) != 2)
  {
    return HIWORD(v1) & 1;
  }

  v3 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v4 = OUTLINED_FUNCTION_47_1();
  return v5(v4, v3) & 1;
}

uint64_t sub_261FA91CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 & 1;
  }
}

uint64_t sub_261FA91E8()
{
  if (*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions) == 2)
  {
    return 2;
  }

  else
  {
    return HIBYTE(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions));
  }
}

BOOL sub_261FA920C()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  return v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) > 12;
}

BOOL sub_261FA925C()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  return v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) > 15;
}

unint64_t sub_261FA92AC()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  if (v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 21 && (OUTLINED_FUNCTION_154(), v2 != 2))
  {
    return (v2 >> 24) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FA9318()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 520);
}

uint64_t sub_261FA9348(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_43(v2 + 520, a2);
  *(v2 + 520) = a1;
  return result;
}

void sub_261FA93C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_261FA942C(v1, v3);
}

void *sub_261FA93F0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  v2 = v1;
  return v1;
}

void sub_261FA942C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 528, a2);
  v4 = *(v2 + 528);
  *(v2 + 528) = a1;
}

void sub_261FA94AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_261FA951C(v1, v3);
}

void *sub_261FA94DC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 536);
  v2 = v1;
  return v1;
}

void sub_261FA951C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43(v2 + 536, a2);
  v4 = *(v2 + 536);
  *(v2 + 536) = a1;
}

uint64_t sub_261FA95EC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_261FA96EC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_261FBD010;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_261FA965C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_261F7D45C(v1, v2);
  return sub_261FA972C();
}

uint64_t sub_261FA96EC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA972C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43(v1 + 544, v3);
  v4 = *(v1 + 544);
  v5 = *(v1 + 552);
  *(v1 + 544) = v2;
  *(v1 + 552) = v0;
  return sub_261F665E4(v4, v5);
}

uint64_t ControlChannelConnection.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_startedAt;
  sub_26203A03C();
  OUTLINED_FUNCTION_6_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void *sub_261FA9850@<X0>(void *a1@<X8>)
{
  result = sub_261FA98C8(&v3);
  *a1 = v3;
  return result;
}

void sub_261FA988C(id *a1)
{
  v2 = *a1;
  sub_261FB9B50(v2);
  sub_261FA991C(&v2, v1);
}

id sub_261FA98C8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_261FB9B50(v4);
}

void sub_261FA991C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
  OUTLINED_FUNCTION_43(v2 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;
  sub_261F68710(v5);
}

uint64_t ControlChannelConnection.__allocating_init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(__int128 *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(__int128 *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = *a3;
  v13 = *(a3 + 4);
  *(v6 + 120) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 1;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 520) = 0;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 472) = 0u;
  *(v6 + 440) = 0u;
  *(v6 + 528) = 0u;
  *(v6 + 544) = 0u;
  sub_26203A02C();
  v14 = v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions;
  *(v14 + 4) = 0;
  *v14 = 2;
  v15 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF99C0, &qword_26203F7F8);
  *(v6 + v15) = sub_26203A0FC();
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData) = xmmword_26203F730;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason) = 6;
  sub_261F797BC(a1, v6 + 192);
  *(v6 + 232) = a2;
  *(v6 + 244) = v13;
  *(v6 + 240) = v12;
  *(v6 + 560) = a4;
  OUTLINED_FUNCTION_43(v6 + 528, v16);
  v17 = *(v6 + 528);
  *(v6 + 528) = a6;

  sub_261F797BC(a5, v6 + 400);
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0;
  *(v6 + 168) = 4;
  return v6;
}

uint64_t sub_261FA9C1C()
{
  OUTLINED_FUNCTION_88_0(v0 + 520, v6);
  *(v0 + 520) = 1;
  OUTLINED_FUNCTION_7_2();
  result = swift_beginAccess();
  v2 = *(v0 + 248);
  if (v2)
  {

    v2(v3);
    v4 = OUTLINED_FUNCTION_47();
    return sub_261F665E4(v4, v5);
  }

  return result;
}

void sub_261FA9C88(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v9 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v10 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v9))
  {
    OUTLINED_FUNCTION_30();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_101();
    *&v46 = swift_slowAlloc();
    *v11 = 136446722;
    sub_261F666D8();
    sub_261F67FE4(v12, v13, &v46);
    OUTLINED_FUNCTION_70();

    *(v11 + 4) = v10;
    *(v11 + 12) = 2082;
    *&v51 = v3;
    *(&v51 + 1) = v4;
    *&v52 = v6;
    *(&v52 + 1) = v5;
    v53 = v7;
    v54 = v8;
    sub_261F68B30(v3, v4, v6, v5, v7, v8, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
    v14 = sub_26203A20C();
    sub_261F67FE4(v14, v15, &v46);
    OUTLINED_FUNCTION_163();

    *(v11 + 14) = v4;
    *(v11 + 22) = 2082;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v16 = OUTLINED_FUNCTION_86_1();
    sub_261F68B30(v16, v17, v18, v19, v20, v21, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
    v22 = sub_26203A20C();
    sub_261F67FE4(v22, v23, &v46);
    OUTLINED_FUNCTION_70();

    *(v11 + 24) = v7;
    _os_log_impl(&dword_261F5B000, v10, v9, "%{public}s: ControlChannel connection state changing from %{public}s to %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_1();
  *&v46 = v3;
  *(&v46 + 1) = v4;
  v47 = v6;
  v48 = v5;
  v49 = v7;
  v50 = v8;
  OUTLINED_FUNCTION_51_1();
  v45 = (v24 & 0x8000) == 0;
  OUTLINED_FUNCTION_2_7();
  sub_261F68B30(v25, v26, v27, v28, v29, v30, sub_261F7D45C, sub_261F81D84, v43);
  v31 = sub_261F696DC(&v46, &v45);
  OUTLINED_FUNCTION_1_9();
  sub_261F68B30(v32, v33, v34, v35, v36, v37, sub_261F99050, sub_261F6ADEC, v44);
  if (!v31)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_26203A7CC();
    v46 = v51;
    MEMORY[0x266722710](0xD00000000000001CLL, 0x800000026204F1B0);
    v38 = *(v2 + 160);
    v39 = *(v2 + 168);
    v40 = *(v2 + 144);
    v51 = *(v2 + 128);
    v52 = v40;
    v53 = v38;
    v54 = v39;
    sub_26203A8CC();
    *(&v52 + 1) = MEMORY[0x277D837D0];
    v51 = v46;
    LOBYTE(v53) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    OUTLINED_FUNCTION_67_1();
    *v41 = 1;
    LOBYTE(v46) = 1;
    ControlChannelConnectionError.Message.format(code:)(&v46);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(&v51);
    OUTLINED_FUNCTION_7_3();
    v42 = OUTLINED_FUNCTION_72_1();
    sub_261F65D0C(v42);
  }
}

void sub_261FAA09C()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  memcpy(__dst, v4, 0x92uLL);
  memcpy(v319, v5 + 16, 0x82uLL);
  if (sub_261FBCC28(v319) == 1)
  {
    v6 = sub_261F7E4C8(v319);
    v7 = memcpy(__src, v6, 0x82uLL);
    if (*(v3 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream))
    {
LABEL_3:
      OUTLINED_FUNCTION_143(v7, v8, v9, v10, v11, v12, v13, v14, v248, v263, v277, v292, v306, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
      v15 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v16 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_57_1();
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v309[0] = swift_slowAlloc();
        *v18 = 136446466;
        sub_261F666D8();
        OUTLINED_FUNCTION_113(v19, v20, v21, v22, v23, v24, v25, v26, v249, v264, v278, v293);
        OUTLINED_FUNCTION_61_1();

        *(v18 + 4) = v2;
        *(v18 + 12) = 2080;
        v27 = memcpy(v316, __src, 0x82uLL);
        OUTLINED_FUNCTION_143(v27, v28, v29, v30, v31, v32, v33, v34, v250, v265, v279, v294, v307, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
        v35 = sub_26203A20C();
        OUTLINED_FUNCTION_113(v35, v36, v37, v38, v39, v40, v41, v42, v251, v266, v280, v295);
        OUTLINED_FUNCTION_61_1();

        *(v18 + 14) = v2;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
        OUTLINED_FUNCTION_117();
        swift_arrayDestroy();
        v48 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v48);
        v49 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v49);
      }

      OUTLINED_FUNCTION_31_2();
      *&v312[24] = MEMORY[0x277D837D0];
      *v312 = 0xD00000000000005ALL;
      *&v312[8] = v50;
      v312[32] = 1;
      LOBYTE(v316[0]) = 3;
      ControlChannelConnectionError.Message.format(code:)(v316);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(v312);
      v312[0] = 3;
      *&v312[8] = v312;
      *&v312[16] = v15;
      memset(&v312[24], 0, 40);
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v51 = swift_allocError();
      OUTLINED_FUNCTION_87_0(v51, v52, v53, v54, v55, v56, v57, v58, v249, v264, v278, v293, v307, v309[0], v309[1], v310, v311, *v312, *&v312[16], *&v312[32], *&v312[48]);
      sub_261F65CB0(v59, v60);
      sub_261F65D0C(v51);
      sub_261F6A70C(v312);
      sub_261FBCC40(__dst);

      goto LABEL_79;
    }

    memcpy(v316, __src, 0x82uLL);
    v73 = sub_261FBCC34(v316);
    v7 = sub_261F6A868(v316);
    if (v73)
    {
      if (v73 == 1)
      {
        v74 = (*(v7 + 8) >> 60) & 3;
        if (v74)
        {
          if (v74 != 3)
          {
            goto LABEL_3;
          }

          if (*(v7 + 16) != 0)
          {
            goto LABEL_3;
          }

          OUTLINED_FUNCTION_150();
          if (!v98)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        v7 = sub_261FBC6F8(v7 + 8);
        if (v7 > 7)
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_159();
        if (v98)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v85 = *(v7 + 72);
      if (v85 >> 62 == 3)
      {
        v86 = *(v7 + 96);
        v88 = *(v7 + 80);
        v87 = *(v7 + 88);
        v90 = *(v7 + 56);
        v89 = *(v7 + 64);
        v92 = *(v7 + 40);
        v91 = *(v7 + 48);
        v93 = *(v7 + 24);
        v94 = *(v7 + 32);
        v95 = *v7;
        v96 = v7 + 8;
        v7 = *(v7 + 8);
        v8 = *(v96 + 8);
        if (v86 || (v9 = 0xC000000000000000, v85 != 0xC000000000000000) || (v10 = v94 | v93 | v8 | v7, (v9 = v87 | v95 | v88 | v89 | v90 | v91 | v92 | v10) != 0))
        {
          v97 = v88 | v87 | v89 | v90 | v91 | v92 | v94 | v93 | v8 | v7;
          if (v86 || ((OUTLINED_FUNCTION_112(), v98) ? (v98 = v95 == 1) : (v98 = 0), !v98 || v97))
          {
            if (v86 || ((OUTLINED_FUNCTION_112(), v98) ? (v99 = v95 == 2) : (v99 = 0), !v99 || v97))
            {
              if (v86 || ((OUTLINED_FUNCTION_112(), v98) ? (v100 = v95 == 3) : (v100 = 0), !v100 || v97))
              {
                if (!v86)
                {
                  v101 = v85 == 0xC000000000000000 && v95 == 4;
                  if (v101 && !v97)
                  {
                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_143(v7, v8, v9, v10, v11, v12, v13, v14, v248, v263, v277, v292, v306, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
    goto LABEL_55;
  }

  v61 = sub_261F7E4C8(v319);
  v69 = *(v3 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  if (!v69)
  {
    OUTLINED_FUNCTION_31_2();
    __src[3] = v75;
    __src[0] = 0xD000000000000032;
    __src[1] = v76;
    LOBYTE(__src[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v77 = swift_allocError();
    *v78 = 1;
    LOBYTE(v316[0]) = 1;
    OUTLINED_FUNCTION_143(v77, v78, v79, v80, v81, v82, v83, v84, v248, v263, v277, v292, v306, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
    ControlChannelConnectionError.Message.format(code:)(v316);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(__src);
    OUTLINED_FUNCTION_7_3();
    swift_willThrow();
    sub_261FBCC40(__dst);
    goto LABEL_79;
  }

  v71 = *v61;
  v70 = v61[1];
  OUTLINED_FUNCTION_143(v61, v62, v63, v64, v65, v66, v67, v68, v248, v263, v277, v292, v306, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  v72 = v69;
  sub_261FAAB28(v71, v70);

  sub_261FBCC40(__dst);
  if (!v1)
  {
LABEL_55:
    memcpy(v320, __src, 0x82uLL);
    OUTLINED_FUNCTION_138(__src);
    v102 = sub_261FBCC34(__src);
    if (v102)
    {
      if (v102 == 1)
      {
        v103 = sub_261F6A868(__src);
        *v253 = *v103;
        *v282 = v103[1];
        OUTLINED_FUNCTION_138(v316);
        v104 = sub_261F6A868(v316);
        sub_261FBCCF0(*v104, *(v104 + 8), *(v104 + 16), *(v104 + 24));
        sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        v105 = OUTLINED_FUNCTION_152();
        if (os_log_type_enabled(v105, v106))
        {
          OUTLINED_FUNCTION_30();
          v107 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v309[0] = swift_slowAlloc();
          *v107 = 136446722;
          sub_261F666D8();
          OUTLINED_FUNCTION_113(v108, v109, v110, v111, v112, v113, v114, v115, v253[0], v253[1], v282[0], v282[1]);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 4) = v2;
          *(v107 + 12) = 2082;
          OUTLINED_FUNCTION_144(v116, v117, v118, v119, v120, v121, v122, v123, v254, v268, v283, v297, v308, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
          v124 = sub_2620179D8();
          OUTLINED_FUNCTION_113(v124, v125, v126, v127, v128, v129, v130, v131, v255, v269, v284, v298);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 14) = v2;
          *(v107 + 22) = 2080;
          OUTLINED_FUNCTION_138(v312);
          v132 = sub_26203A20C();
          OUTLINED_FUNCTION_113(v132, v133, v134, v135, v136, v137, v138, v139, v256, v270, v285, v299);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 24) = v2;
          OUTLINED_FUNCTION_75_1();
          _os_log_impl(v140, v141, v142, v143, v144, 0x20u);
          swift_arrayDestroy();
          v145 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v145);
          v146 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v146);
        }

        else
        {
          sub_261FBA880(v320);
        }

        OUTLINED_FUNCTION_63();
        v226 = swift_allocObject();
        v227 = swift_weakInit();
        OUTLINED_FUNCTION_143(v227, v228, v229, v230, v231, v232, v233, v234, v253[0], v253[1], v282[0], v282[1], v308, v253[0], v253[1], v282[0], v282[1], *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);

        sub_261FAAD54(v309, v3, v226, __dst);
      }

      else
      {
        v187 = sub_261F6A868(__src);
        v188 = v187 + 1;
        v189 = *v187;
        OUTLINED_FUNCTION_138(v316);
        v190 = sub_261F6A868(v316);
        sub_261F674BC(v190, v312, &qword_27FEF9AC0, &qword_262040308);
        v191 = sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        v192 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v191))
        {
          OUTLINED_FUNCTION_30();
          v193 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v309[0] = swift_slowAlloc();
          *v193 = 136446722;
          sub_261F666D8();
          OUTLINED_FUNCTION_113(v194, v195, v196, v197, v198, v199, v200, v201, v252, v267, v281, v296);
          OUTLINED_FUNCTION_65();

          *(v193 + 4) = v189;
          *(v193 + 12) = 2082;
          OUTLINED_FUNCTION_144(v202, v203, v204, v205, v206, v207, v208, v209, v260, v274, v189, v303, v308, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
          v210 = sub_2620179D8();
          OUTLINED_FUNCTION_113(v210, v211, v212, v213, v214, v215, v216, v217, v261, v275, v289, v304);
          OUTLINED_FUNCTION_65();

          *(v193 + 14) = v189;
          *(v193 + 22) = 2080;
          OUTLINED_FUNCTION_138(v312);
          v218 = sub_26203A20C();
          OUTLINED_FUNCTION_113(v218, v219, v220, v221, v222, v223, v224, v225, v262, v276, v290, v305);
          OUTLINED_FUNCTION_65();

          *(v193 + 24) = v189;
          v189 = v291;
          _os_log_impl(&dword_261F5B000, v192, v191, "%{public}s: Received response (id=%{public}s from peer: %s", v193, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
        }

        else
        {
          sub_261FBA880(v320);
        }

        v235 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v236 = sub_261FA1B2C(v189, *(v3 + v235));
        if (v236)
        {
          v238 = v236;
          v239 = v237;
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          sub_26202CCA4(v189);
          swift_endAccess();
          v240 = OUTLINED_FUNCTION_135();
          sub_261F665E4(v240, v241);
          memcpy(v312, v188, 0x7AuLL);
          v238(v312);
          sub_261F665E4(v238, v239);
        }

        else
        {
          v242 = sub_26203A48C();
          if (os_log_type_enabled(v192, v242))
          {
            OUTLINED_FUNCTION_42_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_27_2();
            v243 = swift_slowAlloc();
            *v312 = v243;
            *v188 = 136446210;
            sub_261F666D8();
            sub_261F67FE4(v244, v245, v312);
            OUTLINED_FUNCTION_70();

            *(v188 + 1) = v3;
            _os_log_impl(&dword_261F5B000, v192, v242, "%{public}s: Received response to unknown message", v188, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v243);
            v246 = OUTLINED_FUNCTION_16_3();
            MEMORY[0x266724180](v246);
            v247 = OUTLINED_FUNCTION_8_2();
            MEMORY[0x266724180](v247);
          }
        }
      }
    }

    else
    {
      v147 = sub_261F6A868(__src);
      OUTLINED_FUNCTION_138(v316);
      v148 = sub_261F6A868(v316);
      sub_261FBCC94(v148, v312);
      v149 = sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v150 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v149))
      {
        OUTLINED_FUNCTION_30();
        v151 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v309[0] = swift_slowAlloc();
        *v151 = 136446722;
        sub_261F666D8();
        v160 = OUTLINED_FUNCTION_113(v152, v153, v154, v155, v156, v157, v158, v159, v252, v267, v281, v296);

        *(v151 + 4) = v160;
        *(v151 + 12) = 2082;
        OUTLINED_FUNCTION_144(v161, v162, v163, v164, v165, v166, v167, v168, v257, v271, v286, v300, v308, v309[0], v309[1], v310, v311, *v312, *&v312[8], *&v312[16], *&v312[24], *&v312[32], *&v312[40], *&v312[48], *&v312[56], *&v312[64], *&v312[72], *&v312[80], *&v312[88], *&v312[96], *&v312[104], *&v312[112], *&v312[120], v313, v314, v315, v316[0], v316[1], v316[2], v316[3], v316[4], v316[5], v316[6], v316[7], v316[8], v316[9], v316[10], v316[11], v316[12], v316[13], v316[14], v316[15], v316[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
        v169 = sub_2620179D8();
        v177 = OUTLINED_FUNCTION_113(v169, v170, v171, v172, v173, v174, v175, v176, v258, v272, v287, v301);

        *(v151 + 14) = v177;
        *(v151 + 22) = 2080;
        OUTLINED_FUNCTION_138(v312);
        v178 = sub_26203A20C();
        v186 = OUTLINED_FUNCTION_113(v178, v179, v180, v181, v182, v183, v184, v185, v259, v273, v288, v302);

        *(v151 + 24) = v186;
        _os_log_impl(&dword_261F5B000, v150, v149, "%{public}s: Received event (id=%{public}s from peer: %s", v151, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      else
      {
        sub_261FBA880(v320);
      }

      memcpy(v312, v147, 0x61uLL);
      sub_261FAB1A4(v312);
    }

    sub_261FBA880(v320);
  }

LABEL_79:
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261FAAB28(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_26203930C();
  swift_allocObject();
  sub_2620392FC();
  v3 = sub_26203952C();
  v11[0] = 0;
  v4 = [v2 decryptData:v3 aadData:0 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_26203954C();
    v8 = v7;

    sub_261FBCDBC();
    sub_2620392EC();
    sub_261F6BFFC(v6, v8);
  }

  else
  {
    v9 = v5;
    sub_2620393FC();

    swift_willThrow();
  }
}

uint64_t sub_261FAAC7C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(a3 + 8);
    memcpy(&__srca[1], __dst, 0x7AuLL);
    __srca[0] = v5;
    sub_261FBCE10(__srca);
    memcpy(v6, __srca, 0x82uLL);
    sub_261FBC710(__dst, v8);
    sub_261FABDA0(v6, 0, 1);

    memcpy(v8, v6, 0x82uLL);
    return sub_261FBA880(v8);
  }

  return result;
}

uint64_t sub_261FAAD54(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);
  v8 = *(a2 + 240);
  v9 = v8 | (*(a2 + 244) << 32);
  if ((v8 & 0x8000) != 0)
  {

    sub_261FBCBCC(a4, v32);

    sub_261FBCBCC(a4, v32);
    v14 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v15 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136446210;
      sub_261F666D8();
      v20 = sub_261F67FE4(v18, v19, v32);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: Host received unexpected request from device", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x266724180](v17, -1, -1);
      MEMORY[0x266724180](v16, -1, -1);
    }

    sub_261FBCC40(a4);
  }

  else
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    switch((v11 >> 60) & 3)
    {
      case 1uLL:
        LOBYTE(v28) = v12;
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB3CC4(v10, v11 & 0xCFFFFFFFFFFFFFFFLL, &v28, v13, a2, a3, a4);
        break;
      case 2uLL:
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB4C2C(v10, v11 & 0xCFFFFFFFFFFFFFFFLL, a2, a3, a4);
        break;
      case 3uLL:
        v22 = v13 | v12;
        if (v11 != 0x3000000000000000 || v22 | v10)
        {
          v23 = v11 == 0x3000000000000000 && v10 == 1;
          if (!v23 || v22)
          {
            sub_261FBCBCC(a4, v32);

            sub_261FBCBCC(a4, v32);

            sub_261FB44F4(a2, a3, a4);
          }

          else
          {
            sub_261FBCBCC(a4, v32);

            sub_261FBCBCC(a4, v32);

            sub_261FB1914(a2, a3, a4);
          }
        }

        else
        {
          sub_261FBCBCC(a4, v32);

          sub_261FBCBCC(a4, v32);

          sub_261FB4280(a2, a3, a4);
        }

        break;
      default:
        v28 = v10;
        v29 = v11 & 1;
        v30 = v12;
        v31 = v13;
        v24 = v9 & 0x101;
        v25 = BYTE2(v9);
        v26 = BYTE3(v9);
        v27 = BYTE4(v9);
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB0F30(&v28, &v24, a2, a3, a4);
        break;
    }
  }

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  return sub_261FBCC40(a4);
}

void sub_261FAB1A4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2) | (*(a1 + 3) << 32);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = *(a1 + 9);
  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  v15 = a1[96];
  v16 = v1 | (v2 << 8) | (v3 << 16);
  switch(v12 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_186();

      sub_261FB0658(v23);
      return;
    case 2uLL:
      LOBYTE(__src) = v1;
      BYTE1(__src) = v2;
      *(&__src + 2) = v3;
      HIWORD(__src) = WORD2(v3);
      v35 = v4;
      v36 = v5;
      v37 = v7;
      v38 = v6;
      v39 = v8;
      v40 = v9;
      v41 = v10;
      v42 = v11;
      v43 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v44 = v13;
      v45 = v14;
      v46 = v15;
      sub_261FB0AC0(&__src);
      goto LABEL_4;
    case 3uLL:
      v17 = v5 | v4 | v7 | v6;
      if (!v15 && v12 == 0xC000000000000000 && !(v17 | v8 | v16 | v9 | v10 | v11 | v13 | v14))
      {
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_67_1();
        v18 = sub_261F9BCE0();
        OUTLINED_FUNCTION_140_0(v18, v19, 0x800000026204D5C0);
        v20 = OUTLINED_FUNCTION_72_1();
        sub_261FB0658(v20);
        OUTLINED_FUNCTION_186();

        return;
      }

      v25 = v17 | v8 | v9 | v10 | v11 | v13 | v14;
      if (v15 || (v12 == 0xC000000000000000 ? (v26 = v16 == 1) : (v26 = 0), v26 ? (v27 = v25 == 0) : (v27 = 0), !v27))
      {
        if (v15 || (v12 == 0xC000000000000000 ? (v29 = v16 == 2) : (v29 = 0), !v29 || v25))
        {
          if (!v15)
          {
            v30 = v12 == 0xC000000000000000 && v16 == 3;
            if (v30 && !v25)
            {
              OUTLINED_FUNCTION_186();

              sub_261FB0884();
              return;
            }
          }

          if (!v15)
          {
            v32 = v12 == 0xC000000000000000 && v16 == 4;
            if (v32 && !v25)
            {
              OUTLINED_FUNCTION_186();

              sub_261FB9508();
              return;
            }
          }

          __src = 5;
          sub_261F65D98(&__src);
        }

LABEL_4:
        OUTLINED_FUNCTION_186();
        return;
      }

      OUTLINED_FUNCTION_186();

      sub_261FB176C();
      return;
    default:
      LOBYTE(__src) = v1 & 1;
      BYTE1(__src) = v2;
      v35 = v4;
      v36 = v5;
      v37 = v7;
      v38 = v6;
      v39 = v8;
      sub_261FB5840(&__src);
      goto LABEL_4;
  }
}

void sub_261FAB460()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v66 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v64 - v6);
  v8 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v65 = v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  MEMORY[0x266722710](1030911088, 0xE400000000000000);
  *&v69 = v0;
  sub_26203A8CC();
  sub_261F67ABC();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 >= *(v12 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v13 = v57;
  }

  OUTLINED_FUNCTION_118();
  v72[0] = 4023401;
  v72[1] = 0xE300000000000000;
  v16 = v0[27];
  v15 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v16);
  v17 = (*(v15 + 8))(v16, v15);
  MEMORY[0x266722710](v17);

  OUTLINED_FUNCTION_79_1();
  if (v18)
  {
    OUTLINED_FUNCTION_15_2();
    v13 = v58;
  }

  OUTLINED_FUNCTION_118();
  *&v69 = 0x726F70736E617274;
  *(&v69 + 1) = 0xEA00000000003D74;
  sub_261F79740((v0 + 24), v72);
  __swift_project_boxed_opaque_existential_0Tm(v72, v72[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  v19 = sub_26203AE8C();
  MEMORY[0x266722710](v19);

  OUTLINED_FUNCTION_79_1();
  if (v18)
  {
    OUTLINED_FUNCTION_15_2();
    v13 = v59;
  }

  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_78_0();
  if (v20 < 0)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if (&v69)
  {
LABEL_13:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    memcpy(v72, v0 + 2, 0x61uLL);
    v14 = v72[6];
    v25 = v72[7];
    if (!v72[3])
    {
      v69 = *(v0 + 1);
      v70 = v0[4];
      v71 = 0;
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_175();
      v29 = &v69;
      v30 = &qword_27FEF9978;
      v31 = &qword_262045D80;
LABEL_22:
      sub_261F66E60(v29, v30, v31);
      goto LABEL_23;
    }

    v69 = *(v0 + 1);
    v70 = v0[4];
    v71 = v72[3];
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_175();

    sub_261F66E60(&v69, &qword_27FEF9978, &qword_262045D80);
    v67 = 0x3D44494455;
    v68 = 0xE500000000000000;
    MEMORY[0x266722710](v14, v25);

    OUTLINED_FUNCTION_182();
    v26 = v67;
    v27 = v68;
    OUTLINED_FUNCTION_79_1();
    if (v18)
    {
      OUTLINED_FUNCTION_15_2();
      v13 = v62;
    }

    *(v13 + 16) = &v67;
    v28 = v13 + 16 * v14;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v21 = v0[15];
  if (!v21)
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_21:
    v30 = &qword_27FEF99D0;
    v31 = &qword_26203F800;
    v29 = v7;
    goto LABEL_22;
  }

  v22 = [v21 identifier];
  if (v22)
  {
    v23 = v22;
    sub_26203963C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v24, 1, v8);
  sub_261FB9B60(v5, v7, &qword_27FEF99D0, &qword_26203F800);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_21;
  }

  (*(v65 + 32))(v64, v7, v8);
  v72[0] = 0x797469746E656469;
  v72[1] = 0xE90000000000003DLL;
  sub_261FBAA3C(&qword_28108CF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v52 = sub_26203ABAC();
  MEMORY[0x266722710](v52);

  OUTLINED_FUNCTION_182();
  v53 = v72[0];
  v54 = v72[1];
  v55 = *(v13 + 16);
  if (v55 >= *(v13 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v13 = v63;
  }

  (*(v65 + 8))(v64, v8);
  *(v13 + 16) = v55 + 1;
  v56 = v13 + 16 * v55;
  *(v56 + 32) = v53;
  *(v56 + 40) = v54;
LABEL_23:
  v32 = v1[27];
  v33 = v1[28];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 24, v32);
  (*(v33 + 64))(&v69, v32, v33);
  if (v71)
  {
    sub_261F797BC(&v69, v72);
    *&v69 = 0x746E696F70646E65;
    *(&v69 + 1) = 0xE90000000000003DLL;
    v34 = v72[3];
    v35 = v72[4];
    __swift_project_boxed_opaque_existential_0Tm(v72, v72[3]);
    v36 = (*(v35 + 24))(v34, v35);
    MEMORY[0x266722710](v36);

    OUTLINED_FUNCTION_182();
    v37 = v69;
    OUTLINED_FUNCTION_79_1();
    if (v18)
    {
      OUTLINED_FUNCTION_15_2();
      v13 = v61;
    }

    *(v13 + 16) = &v69;
    *(v13 + 16 * v14 + 32) = v37;
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  else
  {
    sub_261F66E60(&v69, &qword_27FEF9980, &qword_26203F7C0);
  }

  v73 = 0x3D6574617473;
  v74 = 0xE600000000000000;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v38 = v1[17];
  v39 = v1[18];
  v40 = v1[19];
  v41 = v1[20];
  v42 = *(v1 + 168);
  v72[0] = v1[16];
  v72[1] = v38;
  v72[2] = v39;
  v72[3] = v40;
  v72[4] = v41;
  LOBYTE(v72[5]) = v42;
  sub_261F68B30(v72[0], v38, v39, v40, v41, v42, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
  v43 = sub_26203A20C();
  MEMORY[0x266722710](v43);

  v44 = v73;
  v45 = v74;
  v46 = *(v13 + 16);
  if (v46 >= *(v13 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v13 = v60;
  }

  *(v13 + 16) = v46 + 1;
  v47 = v13 + 16 * v46;
  *(v47 + 32) = v44;
  *(v47 + 40) = v45;
  v72[0] = v13;
  v48 = OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_68_1(&qword_28108B318);
  sub_26203A13C();
  OUTLINED_FUNCTION_67_1();

  v72[0] = 60;
  v72[1] = 0xE100000000000000;
  v50 = sub_26203AE8C();
  MEMORY[0x266722710](v50);

  MEMORY[0x266722710](544940094, 0xE400000000000000);
  v51 = OUTLINED_FUNCTION_72();
  MEMORY[0x266722710](v51);

  MEMORY[0x266722710](32032, 0xE200000000000000);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FABC60()
{
  result = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber) = result + 1;
  }

  return result;
}

void sub_261FABC80()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = sub_261FABC60();
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v2;
  v12 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  *__src = *(v0 + v12);
  sub_261FA4388(sub_261FBD010, v11, v10);
  *(v0 + v12) = *__src;
  swift_endAccess();
  *__src = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v13 = sub_261FBD320(__src);
  OUTLINED_FUNCTION_104(v13, v14, v15, v16, v17, v18, v19, v20, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16]);
  OUTLINED_FUNCTION_153();
  sub_261FBCCF0(v21, v22, v23, v9);
  sub_261FABDA0(v24, v10, 0);
  memcpy(v29, v24, 0x82uLL);
  sub_261FBA880(v29);
  OUTLINED_FUNCTION_31_0();
}

void sub_261FABDA0(void *__src, uint64_t a2, char a3)
{
  v5 = v3;
  memcpy(__dst, __src, 0x82uLL);
  v9 = *(v5 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  if (!v9)
  {
    memcpy(v58, __src, 0x82uLL);
    v11 = sub_261FBCC34(v58);
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = sub_261F6A868(v58);
        v13 = (*(v12 + 8) >> 60) & 3;
        if (v13)
        {
          if (v13 != 3 || *(v12 + 16) != 0 || (OUTLINED_FUNCTION_150(), !v30))
          {
LABEL_53:
            OUTLINED_FUNCTION_31_2();
            *(&__srca[1] + 1) = v47;
            *&__srca[0] = 0xD000000000000050;
            *(&__srca[0] + 1) = v48;
            LOBYTE(__srca[2]) = 1;
            sub_261F65C5C();
            OUTLINED_FUNCTION_72_0();
            v49 = swift_allocError();
            v51 = v50;
            *v50 = 1;
            LOBYTE(v55[0]) = 1;
            v52 = ControlChannelConnectionError.Message.format(code:)(v55);
            sub_261F65C08(__srca);
            *(v51 + 8) = v52;
            *(v51 + 24) = 0u;
            *(v51 + 40) = 0u;
            *(v51 + 7) = 0;
            swift_willThrow();
            sub_261F65D0C(v49);

            return;
          }
        }
      }

      else
      {
        v34 = sub_261F6A868(v58);
        memcpy(__srca, v34, 0x82uLL);
        if (sub_261FBC6F8(__srca + 8) > 7)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_159();
        if (v30)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v14 = sub_261F6A868(v58);
      v15 = *(v14 + 72);
      if (v15 >> 62 == 3)
      {
        v16 = *(v14 + 96);
        v18 = *(v14 + 80);
        v17 = *(v14 + 88);
        v20 = *(v14 + 56);
        v19 = *(v14 + 64);
        v22 = *(v14 + 40);
        v21 = *(v14 + 48);
        v24 = *(v14 + 24);
        v23 = *(v14 + 32);
        v25 = *v14;
        v28 = v14 + 8;
        v26 = *(v14 + 8);
        v27 = *(v28 + 8);
        if (v16 || v15 != 0xC000000000000000 || v17 | v25 | v18 | v19 | v20 | v21 | v22 | v23 | v24 | v27 | v26)
        {
          v29 = v18 | v17 | v19 | v20 | v21 | v22 | v23 | v24 | v27 | v26;
          if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v30 = v25 == 1) : (v30 = 0), !v30 || v29))
          {
            if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v31 = v25 == 2) : (v31 = 0), !v31 || v29))
            {
              if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v32 = v25 == 3) : (v32 = 0), !v32 || v29))
              {
                if (!v16)
                {
                  v33 = v15 == 0xC000000000000000 && v25 == 4;
                  if (v33 && !v29)
                  {
                    goto LABEL_53;
                  }
                }
              }
            }
          }
        }
      }
    }

    memcpy(__srca, __src, 0x82uLL);
    sub_261FBD0DC(__srca);
    sub_261FBD0F0(__dst, v55);
    goto LABEL_46;
  }

  v10 = v9;
  sub_261FAC260(v55, __dst);

  __srca[0] = *v55;
  sub_261FBD1FC(__srca);
LABEL_46:
  memcpy(v59, __srca, 0x82uLL);
  if (a3)
  {
    a2 = sub_261FABC60();
  }

  OUTLINED_FUNCTION_51_1();
  v36 = (v35 & 0x8000) == 0;
  memcpy(&__srca[1], v59, 0x82uLL);
  LOBYTE(__srca[0]) = v36;
  *(&__srca[0] + 1) = a2;
  sub_261FBD14C(v59, v55);
  v37 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v38 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v37))
  {
    OUTLINED_FUNCTION_30();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_101();
    v54 = swift_slowAlloc();
    *v39 = 136446722;
    sub_261F666D8();
    sub_261F67FE4(v40, v41, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 4) = v4;
    *(v39 + 12) = 2082;
    memcpy(v55, __srca, 0x92uLL);
    v42 = sub_2620179D8();
    sub_261F67FE4(v42, v43, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 14) = v4;
    *(v39 + 22) = 2080;
    memcpy(v55, __dst, 0x82uLL);
    sub_261FBD0F0(__dst, &v53);
    v44 = sub_26203A20C();
    sub_261F67FE4(v44, v45, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 24) = v4;
    _os_log_impl(&dword_261F5B000, v38, v37, "%{public}s: Sending message (id=%{public}s) to peer: %s", v39, 0x20u);
    swift_arrayDestroy();
    v46 = OUTLINED_FUNCTION_9_2();
    MEMORY[0x266724180](v46);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  memcpy(v55, __srca, 0x92uLL);
  sub_261FAC3DC();
  sub_261FBD1A8(v59);
  sub_261FBCC40(__srca);
}

void sub_261FAC260(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v18 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  sub_26203933C();
  swift_allocObject();
  sub_26203932C();
  sub_261FBD20C();
  v5 = sub_26203931C();
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_26203952C();
  v16 = 0;
  v10 = [v2 encryptData:v9 aadData:0 error:&v16];

  v11 = v16;
  if (!v10)
  {
    v15 = v11;
    sub_2620393FC();

    swift_willThrow();
    sub_261F6BFFC(v7, v8);
LABEL_2:

    return;
  }

  v12 = sub_26203954C();
  v14 = v13;
  sub_261F6BFFC(v7, v8);

  *a1 = v12;
  a1[1] = v14;
}

void sub_261FAC3DC()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  memcpy(v10, v1, 0x92uLL);
  v3 = v0[27];
  v4 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v3);
  memcpy(__dst, v2, 0x92uLL);
  v5 = v0[29];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  memcpy((v6 + 24), v2, 0x92uLL);
  v7 = *(v4 + 40);

  sub_261FBCBCC(v10, v8);
  v7(__dst, v5, sub_261FBCBC0, v6, v3, v4);

  OUTLINED_FUNCTION_31_0();
}

void sub_261FAC4D4(void *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v7 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136446722;
      sub_261F666D8();
      v12 = sub_261F67FE4(v10, v11, &v36);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      memcpy(v35, a3, sizeof(v35));
      v13 = sub_2620179D8();
      v15 = sub_261F67FE4(v13, v14, &v36);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2082;
      *v35 = a1;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v17 = sub_26203A20C();
      v19 = sub_261F67FE4(v17, v18, &v36);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_261F5B000, v7, v6, "%{public}s: Failed to send message (id=%{public}s) to peer. Error: %{public}s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v9, -1, -1);
      MEMORY[0x266724180](v8, -1, -1);
    }

    memset(v35, 0, 32);
    v35[32] = 2;
    sub_261F65C5C();
    v20 = swift_allocError();
    v22 = v21;
    *v21 = 0;
    LOBYTE(v36) = 0;
    v23 = a1;
    v24 = ControlChannelConnectionError.Message.format(code:)(&v36);
    sub_261F65C08(v35);
    *(v22 + 8) = v24;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 7) = a1;
    sub_261F65D0C(v20);
  }

  else
  {
    v25 = sub_26203A47C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v26 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446466;
      sub_261F666D8();
      v31 = sub_261F67FE4(v29, v30, &v36);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      memcpy(v35, a3, sizeof(v35));
      v32 = sub_2620179D8();
      v34 = sub_261F67FE4(v32, v33, &v36);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_261F5B000, v26, v25, "%{public}s: Successfully sent message (id=%{public}s) to peer", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v28, -1, -1);
      MEMORY[0x266724180](v27, -1, -1);
    }
  }
}

void sub_261FAC884(uint64_t a1, void (*a2)(unint64_t *, double), uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if (v9 < 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v4 + 168) == 4 && *(v4 + 128) == 5 && (OUTLINED_FUNCTION_22_3(*(v4 + 152), *(v4 + 136)), !v10))
  {
    if (a1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    LOBYTE(v25) = v11;
    if (a1)
    {
      v12 = &unk_287489238;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = OUTLINED_FUNCTION_69_1();
    v14 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_74_1(&v25, a2, a3, 0, v15, v16, v17, v18, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v28 = MEMORY[0x277D837D0];
    v25 = 0xD000000000000035;
    v26 = v19;
    v29 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v20, v21);
    v24 = v22;
    ControlChannelConnectionError.Message.format(code:)(&v24);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(&v25);
    v23 = OUTLINED_FUNCTION_38_1();
    *(a1 + 56) = 0;
    v25 = v4;
    v26 = 0;
    v27 = 0;
    a2(&v25, v23);
    sub_261FB9BAC(v25, v26, v27);
  }
}

void sub_261FACA90(uint64_t *a1, void (*a2)(__int128 *, double), uint64_t a3)
{
  v6 = v3;
  v10 = *(v3 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if (v11 < 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v6 + 168) != 4 || *(v6 + 128) != 5 || (OUTLINED_FUNCTION_22_3(*(v6 + 152), *(v6 + 136)), v12))
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_26203A7CC();
    v59 = v60;
    MEMORY[0x266722710](0xD000000000000048, 0x800000026204E480);
    v33 = *(v6 + 160);
    v34 = *(v6 + 168);
    v61 = *(v6 + 144);
    v63 = v33;
    v64 = v34;
    sub_26203A8CC();
    v62 = MEMORY[0x277D837D0];
    LOBYTE(v63) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v35, v36);
    LOBYTE(v59) = v37;
    ControlChannelConnectionError.Message.format(code:)(&v59);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(&v60);
    v38 = OUTLINED_FUNCTION_38_1();
    a1[7] = 0;
    v60 = v6;
    LOBYTE(v61) = 0;
    a2(&v60, v38);
    sub_261FB9BAC(v60, *(&v60 + 1), v61);
    return;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v13 = *(v6 + 544);
  if (!v13)
  {
    LOBYTE(v60) = 1;
    v49 = MEMORY[0x277D84F90];
    v50 = OUTLINED_FUNCTION_69_1();
    v51 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_74_1(&v60, a2, a3, a1, v52, v53, v54, v55, v49, v50, v51);

LABEL_23:

    return;
  }

  v58 = *(v6 + 552);
  if (a1 && a1[2])
  {

    v14 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v15 = qword_28108B610;
    v16 = os_log_type_enabled(qword_28108B610, v14);
    if (v16)
    {
      OUTLINED_FUNCTION_42_1();
      v56 = v13;
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v19 = swift_slowAlloc();
      *&v60 = v19;
      *v18 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v20, v21, &v60);
      OUTLINED_FUNCTION_114();
      *(v18 + 4) = v5;
      _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: Not using out-of-band PairSetup handler to complete pairing as non-standard pairing options were provided by client", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v22 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v22);
      v13 = v56;
      OUTLINED_FUNCTION_26();
      v16 = MEMORY[0x266724180](v23);
    }

    LOBYTE(v60) = 1;
    v24 = MEMORY[0x277D84F70];
    v25 = MEMORY[0x277D84F90];
    v26 = OUTLINED_FUNCTION_110(v16, v17, MEMORY[0x277D84F70] + 8);
    v28 = OUTLINED_FUNCTION_110(v26, v27, v24 + 8);
    OUTLINED_FUNCTION_74_1(&v60, a2, a3, a1, v29, v30, v31, v32, v25, v26, v28);
    sub_261F665E4(v13, v58);

    goto LABEL_23;
  }

  v39 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v40 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v39))
  {
    OUTLINED_FUNCTION_42_1();
    v57 = v13;
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v42 = swift_slowAlloc();
    *&v60 = v42;
    *v41 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v43, v44, &v60);
    OUTLINED_FUNCTION_65();

    *(v41 + 4) = v4;
    _os_log_impl(&dword_261F5B000, v40, v39, "%{public}s: Will attempt to use out-of-band PairSetup handler to complete pairing", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v45);
    v13 = v57;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v46);
  }

  OUTLINED_FUNCTION_107();
  v47 = swift_allocObject();
  v47[2] = v6;
  v47[3] = a2;
  v47[4] = a3;
  OUTLINED_FUNCTION_106();
  v48 = swift_allocObject();
  v48[2] = v6;
  v48[3] = a2;
  v48[4] = a3;
  v48[5] = a1;
  *&v60 = sub_261FB9BC0;
  *(&v60 + 1) = v47;
  v61 = sub_261FB9BCC;
  v62 = v48;

  swift_retain_n();
  swift_retain_n();
  v13(&v60);
  sub_261F665E4(v13, v58);
}

uint64_t sub_261FACFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v5 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    sub_261F666D8();
    v10 = sub_261F67FE4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261F5B000, v5, v4, "%{public}s: Out-of-band PairSetup handler accepted ownership of pairing attempt", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x266724180](v7, -1, -1);
    MEMORY[0x266724180](v6, -1, -1);
  }

  return a2;
}

uint64_t sub_261FAD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v8 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_261F666D8();
    v13 = sub_261F67FE4(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Out-of-band PairSetup handler declined ownership of pairing attempt. Will handle attempt using standard pairing flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x266724180](v10, -1, -1);
    MEMORY[0x266724180](v9, -1, -1);
  }

  v19 = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_26203A0FC();
  v16 = sub_26203A0FC();
  sub_261FB5DF0(&v19, a2, a3, a4, 0, 0xF000000000000000, 0, 0, v14, v15, v16);
}

void sub_261FAD310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if ((*(v3 + 240) & 0x8000) != 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v3 + 168) == 1 && (v5 = *(v3 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession)) != 0)
  {
    v6 = v5;
    v7 = sub_26203A18C();
    [v6 tryPIN_];
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v10[3] = MEMORY[0x277D837D0];
    v10[0] = 0xD000000000000032;
    v10[1] = v8;
    v11 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    *v9 = 3;
    v12 = 3;
    ControlChannelConnectionError.Message.format(code:)(&v12);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(v10);
    OUTLINED_FUNCTION_7_3();
    swift_willThrow();
  }
}

void sub_261FAD4AC()
{
  v4 = v1;
  OUTLINED_FUNCTION_93();
  v5 = *(v1 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if ((v6 & 0x8000) == 0)
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if (v5)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
  }

LABEL_5:
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v7 = *(v4 + 168);
  if (v7 != 1)
  {
    if (!*(v4 + 168))
    {
      v8 = "sThroughLockdown";
      v9 = "setupManualPairing";
      switch(*(v4 + 128))
      {
        case 1:
          OUTLINED_FUNCTION_164();
          break;
        case 2:
          v7 = 0;
          v8 = "setupManualPairing";
          break;
        case 3:
          v7 = 0;
          v8 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v7 && (v8 | 0x8000000000000000) == ((v9 - 32) | 0x8000000000000000))
      {

        goto LABEL_15;
      }

      v10 = sub_26203AC0C();

      if (v10)
      {
        goto LABEL_15;
      }
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v24 = swift_allocError();
    sub_26203AD4C();
    v2(v24);

    return;
  }

LABEL_15:
  v11 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (os_log_type_enabled(qword_28108B610, v11))
  {
    OUTLINED_FUNCTION_42_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v13 = swift_slowAlloc();
    *&v25 = v13;
    *v12 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v14, v15, &v25);
    OUTLINED_FUNCTION_61_1();

    *(v12 + 4) = v3;
    OUTLINED_FUNCTION_171(&dword_261F5B000, v16, v17, "%{public}s: Sending PairSetup cancel request to peer");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = OUTLINED_FUNCTION_16_3();
    MEMORY[0x266724180](v18);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v19, v20, v21);
  }

  v25 = xmmword_26203F740;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_63();
  v22 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v2;
  v23[4] = v0;

  sub_261FABC80();
}

void sub_261FAD830(const void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_2620392DC();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  memcpy(v95, a1, 0x7AuLL);
  v12 = sub_261FBC6F8(v95);
  v13 = &unk_28108B000;
  v14 = &unk_28108B000;
  v79 = a3;
  v80 = a4;
  if (v12 != 7)
  {
    if (v12 == 4)
    {
      nullsub_1();
      v16 = v15;
      v17 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v18 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v17))
      {
        v19 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v89 = v77;
        *v19 = 136446466;
        sub_261F666D8();
        v22 = sub_261F67FE4(v20, v21, &v89);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v23 = *v16;
        v24 = v16[1];
        v25 = v16[3];
        v92 = v16[2];
        v93 = v25;
        v90 = v23;
        v91 = v24;
        memcpy(v94, __dst, 0x7AuLL);
        nullsub_1();
        sub_261F65CB0(v26, &v81);
        v27 = sub_26203A20C();
        v29 = sub_261F67FE4(v27, v28, &v89);

        *(v19 + 14) = v29;
        v14 = &unk_28108B000;
        _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: Received error response from peer for PairSetup cancel request: %s", v19, 0x16u);
        v30 = v77;
        swift_arrayDestroy();
        MEMORY[0x266724180](v30, -1, -1);
        v31 = v19;
        a3 = v79;
        MEMORY[0x266724180](v31, -1, -1);
      }

      sub_261F65C5C();
      v32 = swift_allocError();
      v33 = v16[3];
      v35 = *v16;
      v34 = v16[1];
      v36[2] = v16[2];
      v36[3] = v33;
      *v36 = v35;
      v36[1] = v34;
      memcpy(v94, __dst, 0x7AuLL);
      nullsub_1();
      sub_261F65CB0(v37, &v90);
      a3(v32);

      v13 = &unk_28108B000;
    }

    else
    {
      v94[3] = MEMORY[0x277D837D0];
      v94[0] = 0xD00000000000004BLL;
      v94[1] = 0x800000026204F3C0;
      LOBYTE(v94[4]) = 1;
      sub_261F65C5C();
      v38 = swift_allocError();
      v40 = v39;
      *v39 = 2;
      LOBYTE(v90) = 2;
      v41 = ControlChannelConnectionError.Message.format(code:)(&v90);
      sub_261F65C08(v94);
      *(v40 + 8) = v41;
      *(v40 + 24) = 0u;
      *(v40 + 40) = 0u;
      *(v40 + 7) = 0;
      v14 = &unk_28108B000;
      sub_261F65D0C(v38);
      v13 = &unk_28108B000;
    }
  }

  v42 = sub_26203A4AC();
  if (v13[192] != -1)
  {
    swift_once();
  }

  v43 = *(v14 + 194);
  if (os_log_type_enabled(v43, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v94[0] = v45;
    *v44 = 136446210;
    sub_261F666D8();
    v48 = sub_261F67FE4(v46, v47, v94);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_261F5B000, v43, v42, "%{public}s: Received successful response from peer for PairSetup cancel request", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x266724180](v45, -1, -1);
    MEMORY[0x266724180](v44, -1, -1);
  }

  swift_beginAccess();
  v50 = *(v11 + 128);
  v49 = *(v11 + 136);
  v51 = *(v11 + 168);
  if (v51 == 1)
  {
    sub_261F7D45C(*(v11 + 128), *(v11 + 136));
LABEL_26:
    v94[0] = 5;
    memset(&v94[1], 0, 32);
    LOBYTE(v94[5]) = 4;
    sub_261F7D45C(v50, v49);
    sub_261F68720(v94, v55, v56, v57, v58, v59, v60, v61, v76, v77, v78, v79, v80, v81, v82, SHIDWORD(v82), v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1));
    [*(v11 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
    sub_261F6A504(0);
    if (v50)
    {
      LODWORD(v94[0]) = 89;
      sub_261F9D4D8(MEMORY[0x277D84F90]);
      sub_261FBAA3C(&qword_27FEF9920, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      sub_2620393DC();
      v62 = sub_2620392CC();
      (*(v78 + 8))(v9, v7);
      v94[0] = v62;
      v94[1] = 0;
      LOBYTE(v94[2]) = 0;
      v50(v94);
      sub_261F665E4(v50, v49);
      sub_261FB9BAC(v94[0], v94[1], v94[2]);
    }

    v79(0);
    v63 = sub_26203A4AC();
    if (os_log_type_enabled(v43, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v94[0] = v65;
      *v64 = 136446210;
      sub_261F666D8();
      v68 = sub_261F67FE4(v66, v67, v94);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_261F5B000, v43, v63, "%{public}s: Successfully cancelled PairSetup attempt", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x266724180](v65, -1, -1);
      MEMORY[0x266724180](v64, -1, -1);
    }

    sub_261F665E4(v50, v49);

    return;
  }

  if (!*(v11 + 168))
  {
    v52 = *(v11 + 144);
    v53 = "sThroughLockdown";
    switch(*(v11 + 128))
    {
      case 1u:
        v53 = "verifyManualPairing";
        v51 = 1;
        break;
      case 2u:
        v51 = 0;
        v53 = "setupManualPairing";
        break;
      case 3u:
        v51 = 0;
        v53 = "tionLockdownPairing";
        break;
      default:
        break;
    }

    if (v51 && (v53 | 0x8000000000000000) == 0x800000026204C570)
    {
      sub_261F7D45C(*(v11 + 136), *(v11 + 144));

LABEL_25:
      v50 = v49;
      v49 = v52;
      goto LABEL_26;
    }

    v54 = sub_26203AC0C();
    sub_261F7D45C(v49, v52);

    if (v54)
    {
      goto LABEL_25;
    }

    sub_261F665E4(v49, v52);
  }

  v69 = sub_26203A48C();
  if (os_log_type_enabled(v43, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94[0] = v71;
    *v70 = 136446210;
    sub_261F666D8();
    v74 = sub_261F67FE4(v72, v73, v94);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_261F5B000, v43, v69, "%{public}s: Received successful response from peer for PairSetup cancel request but no longer in state setUpManualPairingInProgress", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    MEMORY[0x266724180](v71, -1, -1);
    MEMORY[0x266724180](v70, -1, -1);
  }

  sub_261F9BCE0();
  sub_26203AD3C();
  v81 = v94[0];
  v82 = v94[1];
  sub_261F9D610();
  v75 = swift_allocError();
  sub_26203AD4C();
  v79(v75);
}

void *sub_261FAE188(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_106();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  v13 = OUTLINED_FUNCTION_155();
  sub_261F6B73C(v13, v14);

  sub_261FABC80();

  return sub_261FBA6D8(a1, a2 | 0x1000000000000000);
}

uint64_t sub_261FAE288(const void *a1, void *a2, char a3, void (*a4)(void *), uint64_t a5)
{
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AF0, &qword_262040330);
  MEMORY[0x28223BE20](v9);
  v11 = (&v57 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9940, &qword_26203F790);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  started = type metadata accessor for StartTunnelResponse(0);
  MEMORY[0x28223BE20](started);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v70, a1, 0x7AuLL);
  memcpy(__dst, a1, 0x7AuLL);
  v18 = sub_261FBC6F8(__dst);
  if (v18 == 5)
  {
    nullsub_1();
    v21 = *v26;
    goto LABEL_5;
  }

  if (v18 == 4)
  {
    nullsub_1();
    v20 = v19;
    sub_261F65C5C();
    v21 = swift_allocError();
    v22 = v20[3];
    v24 = *v20;
    v23 = v20[1];
    v25[2] = v20[2];
    v25[3] = v22;
    *v25 = v24;
    v25[1] = v23;
LABEL_5:
    sub_261FBC710(v70, v69);
LABEL_6:
    swift_willThrow();
    *v11 = v21;
    swift_storeEnumTagMultiPayload();
    v27 = v21;
    a4(v11);

    return sub_261F66E60(v11, &unk_27FEF9AF0, &qword_262040330);
  }

  memcpy(v69, v70, 0x7AuLL);
  if (sub_261FBC6F8(v69) != 2)
  {
    v33 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v34 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68[0] = v36;
      *v35 = 136446466;
      sub_261F666D8();
      v39 = sub_261F67FE4(v37, v38, v68);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      memcpy(v67, v70, 0x7AuLL);
      sub_261FBC710(v70, v66);
      v40 = sub_26203A20C();
      v42 = sub_261F67FE4(v40, v41, v68);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_261F5B000, v34, v33, "%{public}s Received unexpected response to tunnel listener creation request: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v36, -1, -1);
      MEMORY[0x266724180](v35, -1, -1);
    }

    v67[3] = MEMORY[0x277D837D0];
    v67[0] = 0xD000000000000034;
    v67[1] = 0x800000026204F340;
    LOBYTE(v67[4]) = 1;
    sub_261F65C5C();
    v21 = swift_allocError();
    v44 = v43;
    *v43 = 2;
    LOBYTE(v66[0]) = 2;
    v45 = ControlChannelConnectionError.Message.format(code:)(v66);
    sub_261F65C08(v67);
    *(v44 + 8) = v45;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 7) = 0;
    goto LABEL_6;
  }

  nullsub_1();
  v61 = *v29;
  v30 = v29[2];
  v64 = v29[1];
  v31 = v29[4];
  v60 = v29[3];
  v62 = v31;
  if (a3 == 3)
  {
    memcpy(v67, v70, 0x7AuLL);
    nullsub_1();
    sub_261F81D84(*(v32 + 8), *(v32 + 16));
  }

  else
  {
    memcpy(v67, v70, 0x7AuLL);
    nullsub_1();
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
    v63 = v30;
    sub_261F81D84(v48, v47);
    v30 = v63;

    if (sub_261FA6190(a3, 1))
    {
      v58 = 0;
      v59 = a4;
      v57 = 0xF000000000000000;
      goto LABEL_20;
    }
  }

  if (v30 >> 60 == 15)
  {

    sub_261F9BCE0();
    sub_26203ACEC();
    v66[0] = v67[0];
    v66[1] = v67[1];
    sub_261F9D610();
    v21 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_6;
  }

  v59 = a4;
  v49 = v64;
  sub_261F6B73C(v64, v30);
  v57 = v30;
  v58 = v49;
  v63 = v30;
LABEL_20:
  v50 = a2[27];
  v51 = a2[28];
  __swift_project_boxed_opaque_existential_0Tm(a2 + 24, v50);
  (*(v51 + 56))(v50, v51);
  v52 = v59;
  v53 = v63;
  v54 = sub_262039A4C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v54);
  *v17 = v61;
  v55 = v62;
  *(v17 + 1) = v60;
  *(v17 + 2) = v55;
  v56 = v57;
  *(v17 + 3) = v58;
  *(v17 + 4) = v56;
  sub_261FB9B60(v14, &v17[*(started + 28)], &qword_27FEF9940, &qword_26203F790);
  sub_261FBD260(v17, v11);
  swift_storeEnumTagMultiPayload();
  v52(v11);
  sub_261F6ADEC(v64, v53);
  sub_261F66E60(v11, &unk_27FEF9AF0, &qword_262040330);
  return sub_261FBD2C4(v17);
}

void sub_261FAE918()
{
  OUTLINED_FUNCTION_93();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v1 + 528);
  if (v3 && *&v3[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] >= 13)
  {
    OUTLINED_FUNCTION_63();
    v5 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v2;
    v6[4] = v0;
    v7 = v3;

    sub_261FABC80();
  }

  else
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_135();
    sub_26203ACFC();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v4 = swift_allocError();
    OUTLINED_FUNCTION_53_1();
    sub_26203AD4C();
    OUTLINED_FUNCTION_58_1();
    v2();
  }
}

void sub_261FAEAA0(void *__src, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    memcpy(v37, __dst, 0x7AuLL);
    v4 = sub_261FBC6F8(v37);
    if (v4 == 5)
    {
      nullsub_1();
      v7 = *v12;
    }

    else
    {
      if (v4 != 4)
      {
        memcpy(v36, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v36) == 3)
        {
          nullsub_1();
          v15 = *v14;
          v16 = v14[1];
          memcpy(v34, __dst, 0x7AuLL);
          nullsub_1();
          v18 = *v17;
          v19 = v17[1];
          sub_261FBC710(__dst, v33);
          sub_261F6B73C(v18, v19);
          a3(v15, v16, 0);

          sub_261FBA8E0(__dst);
          sub_261FBA8E0(__dst);
          return;
        }

        v20 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v21 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35[0] = v23;
          *v22 = 136446466;
          sub_261F666D8();
          v26 = sub_261F67FE4(v24, v25, v35);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2080;
          memcpy(v34, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v33);
          v27 = sub_26203A20C();
          v29 = sub_261F67FE4(v27, v28, v35);

          *(v22 + 14) = v29;
          _os_log_impl(&dword_261F5B000, v21, v20, "%{public}s Received unexpected response to create remote unlock key request: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v23, -1, -1);
          MEMORY[0x266724180](v22, -1, -1);
        }

        v34[3] = MEMORY[0x277D837D0];
        v34[0] = 0xD000000000000034;
        v34[1] = 0x800000026204F300;
        LOBYTE(v34[4]) = 1;
        sub_261F65C5C();
        v7 = swift_allocError();
        v31 = v30;
        *v30 = 2;
        v33[0] = 2;
        v32 = ControlChannelConnectionError.Message.format(code:)(v33);
        sub_261F65C08(v34);
        *(v31 + 8) = v32;
        *(v31 + 24) = 0u;
        *(v31 + 40) = 0u;
        *(v31 + 7) = 0;
        goto LABEL_7;
      }

      nullsub_1();
      v6 = v5;
      sub_261F65C5C();
      v7 = swift_allocError();
      v8 = v6[3];
      v10 = *v6;
      v9 = v6[1];
      v11[2] = v6[2];
      v11[3] = v8;
      *v11 = v10;
      v11[1] = v9;
    }

    sub_261FBC710(__dst, v36);
LABEL_7:
    swift_willThrow();
    v13 = v7;
    a3(v7, 0, 1);
  }
}

void sub_261FAEE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_169();
  v32 = v31;
  v34 = v33;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v35 = *(v30 + 528);
  if (v35 && *&v35[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] >= 13)
  {
    OUTLINED_FUNCTION_63();
    v37 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v34;
    v38[4] = v32;
    v39 = v35;
    v40 = OUTLINED_FUNCTION_90();
    sub_261F6B73C(v40, v41);

    sub_261FABC80();

    OUTLINED_FUNCTION_7_2();
    sub_261FBA6D8(v42, v43);
  }

  else
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_135();
    sub_26203ACFC();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_53_1();
    sub_26203AD4C();
    v34(v36);
  }

  OUTLINED_FUNCTION_168();
}

void sub_261FAEFF8(void *__src, uint64_t a2, void (*a3)(void *))
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    memcpy(v31, __dst, 0x7AuLL);
    v4 = sub_261FBC6F8(v31);
    if (v4 == 5)
    {
      nullsub_1();
      v7 = *v12;
    }

    else
    {
      if (v4 != 4)
      {
        memcpy(v30, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v30) == 6)
        {
          a3(0);

          return;
        }

        v14 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v15 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v14))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v29[0] = v17;
          *v16 = 136446466;
          sub_261F666D8();
          v20 = sub_261F67FE4(v18, v19, v29);

          *(v16 + 4) = v20;
          *(v16 + 12) = 2080;
          memcpy(v28, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v27);
          v21 = sub_26203A20C();
          v23 = sub_261F67FE4(v21, v22, v29);

          *(v16 + 14) = v23;
          _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s Received unexpected response to remote unlock request: %s", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v17, -1, -1);
          MEMORY[0x266724180](v16, -1, -1);
        }

        v28[3] = MEMORY[0x277D837D0];
        v28[0] = 0xD000000000000029;
        v28[1] = 0x800000026204F2D0;
        LOBYTE(v28[4]) = 1;
        sub_261F65C5C();
        v7 = swift_allocError();
        v25 = v24;
        *v24 = 2;
        v27[0] = 2;
        v26 = ControlChannelConnectionError.Message.format(code:)(v27);
        sub_261F65C08(v28);
        *(v25 + 8) = v26;
        *(v25 + 24) = 0u;
        *(v25 + 40) = 0u;
        *(v25 + 7) = 0;
        goto LABEL_7;
      }

      nullsub_1();
      v6 = v5;
      sub_261F65C5C();
      v7 = swift_allocError();
      v8 = v6[3];
      v10 = *v6;
      v9 = v6[1];
      v11[2] = v6[2];
      v11[3] = v8;
      *v11 = v10;
      v11[1] = v9;
    }

    sub_261FBC710(__dst, v30);
LABEL_7:
    swift_willThrow();
    v13 = v7;
    a3(v7);
  }
}

void sub_261FAF354()
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *__src = 2;
  v33 = 0xC000000000000000;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v0 = sub_261FBA7C0(__src);
  OUTLINED_FUNCTION_104(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  OUTLINED_FUNCTION_58_1();
  sub_261FABDA0(v8, v9, v10);
}

void sub_261FAF3C0()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 4 && ((OUTLINED_FUNCTION_162(*(v0 + 152), *(v0 + 136)), v2 == 4) ? (v3 = v1 == 0) : (v3 = 0), v3 && (OUTLINED_FUNCTION_35_1(), v4 < 0) && (v5 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions), v5 != 2) && (v5 & 1) != 0))
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    *__src = 4;
    v43 = 0xC000000000000000;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v6 = sub_261FBA7C0(__src);
    OUTLINED_FUNCTION_104(v6, v7, v8, v9, v10, v11, v12, v13, v25[0], v25[1], v25[2], v25[3], v25[4], v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v14, v15, v16);
    sub_261F6A480(0);
    LOBYTE(v26) = 4;
    sub_261F68720(v25, v17, v18, v19, v20, v21, v22, v23, 5, 0, 0, 0, 0, v26, v27, SHIDWORD(v27), v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *__src, v39, *(&v39 + 1), v40, *(&v40 + 1));
    OUTLINED_FUNCTION_88_0(v0 + 120, v25);
    v24 = *(v0 + 120);
    *(v0 + 120) = 0;
  }

  else
  {
    *__src = 0;
    sub_261F65D98(__src);
  }
}

uint64_t sub_261FAF4D4()
{
  v1 = *(v0 + 240);
  if ((*(v0 + 240) & 0x8000) == 0 || (v2 = sub_26203A3FC(), *(v2 + 16) = 6, ("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000))
  {
    OUTLINED_FUNCTION_20_2();
    result = sub_26203A91C();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = 0;
    v5 = v2 + 32;
    do
    {
      v6 = sub_26203A24C();
      if (v6 < 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v7 = v6;
      if (!v6)
      {
        goto LABEL_13;
      }

      v26[0] = 0;
      MEMORY[0x2667241A0](v26, 8);
      if (v7 > v26[0] * v7)
      {
        v8 = -v7 % v7;
        while (v8 > v26[0] * v7)
        {
          v26[0] = 0;
          MEMORY[0x2667241A0](v26, 8);
        }
      }

      sub_26203A25C();
      v9 = sub_26203A2DC();
      v10 = (v5 + 16 * v4);
      *v10 = v9;
      v10[1] = v11;
      ++v4;
    }

    while (v4 != 6);
    *(v3 + 16) = 6;
    v26[0] = v3;
    v12 = OUTLINED_FUNCTION_108();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_261F67F70(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300, MEMORY[0x277D83970]);
    v14 = sub_26203A2EC();
    v16 = v15;
    OUTLINED_FUNCTION_88_0(v0 + 176, v27);
    *(v0 + 176) = v14;
    *(v0 + 184) = v16;

    if (qword_28108CFD0 == -1)
    {
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
LABEL_11:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v17 = qword_28108CFD8;
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = v1 & 1;
    v26[0] = qword_28108CFD8;
    v26[1] = v20;
    v26[2] = v18;
    v26[3] = v19;
    OUTLINED_FUNCTION_63();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    swift_bridgeObjectRetain_n();
    v23 = v17;

    v24 = v23;
    sub_261FABC80();

    sub_261FBA6D8(v17, v20);
  }

  return result;
}

void sub_261FAF824(void *__src, uint64_t a2, char a3)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  memcpy(v73, __dst, 0x7AuLL);
  v6 = sub_261FBC6F8(v73);
  if (v6 == 5)
  {
    nullsub_1();
    v9 = *v14;
    goto LABEL_6;
  }

  if (v6 == 4)
  {
    nullsub_1();
    v8 = v7;
    sub_261F65C5C();
    v9 = swift_allocError();
    v10 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    v13[2] = v8[2];
    v13[3] = v10;
    *v13 = v12;
    v13[1] = v11;
LABEL_6:
    sub_261FBC710(__dst, v72);
LABEL_13:
    swift_willThrow();
    sub_261F65D0C(v9);

    return;
  }

  memcpy(v72, __dst, 0x7AuLL);
  if (sub_261FBC6F8(v72))
  {
    v15 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v16 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v69[0] = v18;
      *v17 = 136446466;
      sub_261F666D8();
      v21 = sub_261F67FE4(v19, v20, v69);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      memcpy(v71, __dst, 0x7AuLL);
      sub_261FBC710(__dst, v70);
      v22 = sub_26203A20C();
      v24 = sub_261F67FE4(v22, v23, v69);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_261F5B000, v16, v15, "%{public}s Received unexpected response to handshake request: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v18, -1, -1);
      MEMORY[0x266724180](v17, -1, -1);
    }

    v71[3] = MEMORY[0x277D837D0];
    v71[0] = 0xD000000000000025;
    v71[1] = 0x800000026204EF20;
    LOBYTE(v71[4]) = 1;
    sub_261F65C5C();
    v9 = swift_allocError();
    v26 = v25;
    *v25 = 2;
    LOBYTE(v70[0]) = 2;
    v27 = ControlChannelConnectionError.Message.format(code:)(v70);
    sub_261F65C08(v71);
    *(v26 + 8) = v27;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 7) = 0;
    goto LABEL_13;
  }

  nullsub_1();
  v29 = v28;
  v31 = *v28;
  v30 = *(v28 + 8);
  swift_beginAccess();
  v32 = *(v5 + 528);
  *(v5 + 528) = v31;
  sub_261FBC710(__dst, v71);
  v33 = v30;
  v34 = v31;

  v35 = 256;
  if (!*(v29 + 17))
  {
    v35 = 0;
  }

  HIDWORD(v64) = *(v29 + 16);
  v36 = v35 | HIDWORD(v64) | (*(v29 + 18) << 16) | (*(v29 + 19) << 24);
  v37 = v5 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions;
  *(v37 + 4) = *(v29 + 20);
  *v37 = v36;
  memcpy(v71, (v29 + 24), 0x61uLL);
  sub_261F674BC(v29 + 24, v70, &qword_27FEF9978, &qword_262045D80);
  sub_261FA7F00(v71);
  if (qword_28108B5C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_28108CFD0;
  v39 = qword_28108B5D0;
  if (v38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
  v41 = *(qword_28108CFD8 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue);
  v42 = *&v33[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];

  if (v41 < v42)
  {
    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000060, 0x800000026204EFE0);
    v65[0] = *(qword_28108CFD8 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue);
    v50 = sub_26203ABAC();
    MEMORY[0x266722710](v50);

    MEMORY[0x266722710](0xD000000000000014, 0x800000026204F050);
    v65[0] = *&v33[v40];
LABEL_25:
    v53 = sub_26203ABAC();
    MEMORY[0x266722710](v53);

    MEMORY[0x266722710](41, 0xE100000000000000);
    v71[3] = MEMORY[0x277D837D0];
    LOBYTE(v71[4]) = 1;
    sub_261F65C5C();
    v54 = swift_allocError();
    v56 = v55;
    *v55 = 5;
    LOBYTE(v65[0]) = 5;
    v57 = ControlChannelConnectionError.Message.format(code:)(v65);
    sub_261F65C08(v71);
    *(v56 + 8) = v57;
    *(v56 + 24) = 0u;
    *(v56 + 40) = 0u;
    *(v56 + 7) = 0;
    swift_willThrow();
    sub_261F65D0C(v54);

    goto LABEL_26;
  }

  v51 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
  if (*&v34[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] < *&v39[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue])
  {
    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000062, 0x800000026204EF50);
    v65[0] = *&v34[v51];
    v52 = sub_26203ABAC();
    MEMORY[0x266722710](v52);

    MEMORY[0x266722710](0xD000000000000012, 0x800000026204EFC0);
    v65[0] = *&v39[v51];
    goto LABEL_25;
  }

LABEL_26:
  if (a3)
  {
    LOBYTE(v71[0]) = 0;
    v58 = MEMORY[0x277D84F90];
    v59 = sub_26203A0FC();
    v60 = sub_26203A0FC();
    sub_261FB5DF0(v71, 0, 0, 0, 0, 0xF000000000000000, 0, 0, v58, v59, v60);
  }

  else
  {
    if (((*(v29 + 48) != 0) & BYTE4(v64)) == 1)
    {
      v71[0] = 5;
      memset(&v71[1], 0, 32);
      LOBYTE(v71[5]) = 4;
      sub_261F68720(v71, v43, v44, v45, v46, v47, v48, v49, v61, v62, v63, v64, v65[0], v65[1], v66, v67, v68, v69[0], v69[1], v69[2], v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10]);
      sub_261FA9C1C();
    }

    else
    {
      v71[0] = 1;
      sub_261F65D98(v71);
    }
  }

  sub_261FBA8E0(__dst);
}

void sub_261FB00E4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (*(v3 + 168) != 4 || ((v4 = vorrq_s8(*(v3 + 136), *(v3 + 152)), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), *(v3 + 128) == 7) ? (v6 = *&v5 == 0) : (v6 = 0), !v6))
    {
      v7 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v8 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v68[0] = v10;
        *v9 = 136446466;
        sub_261F666D8();
        v13 = sub_261F67FE4(v11, v12, v68);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2082;
        v14 = *(v3 + 136);
        v15 = *(v3 + 144);
        v16 = *(v3 + 152);
        v17 = *(v3 + 160);
        v18 = *(v3 + 168);
        v69[0] = *(v3 + 128);
        v69[1] = v14;
        v69[2] = v15;
        v69[3] = v16;
        v69[4] = v17;
        LOBYTE(v69[5]) = v18;
        sub_261F68B30(v69[0], v14, v15, v16, v17, v18, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
        v19 = sub_26203A20C();
        v21 = sub_261F67FE4(v19, v20, v68);

        *(v9 + 14) = v21;
        _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Received peer info but in state %{public}s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v10, -1, -1);
        MEMORY[0x266724180](v9, -1, -1);
      }

      goto LABEL_11;
    }

    memcpy(v69, __dst, 0x7AuLL);
    v22 = sub_261FBC6F8(v69);
    if (v22 == 5)
    {
      nullsub_1();
      v25 = *v30;
    }

    else
    {
      if (v22 != 4)
      {
        memcpy(v68, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v68) == 1)
        {
          nullsub_1();
          memcpy(v66, v31, 0x61uLL);
          memcpy(v67, __dst, 0x7AuLL);
          nullsub_1();
          sub_261FBA7D0(v32, v55);
          sub_261FA7F00(v66);
          LOBYTE(v66[5]) = 4;
          sub_261F68720(v66, v33, v34, v35, v36, v37, v38, v39, v53, v54, v55[0], v55[1], v55[2], v55[3], v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, 4, 0, 0, 0, 0, v66[5], v66[6]);
          sub_261FA9C1C();
LABEL_11:

          return;
        }

        v40 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v41 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v40))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v55[0] = v43;
          *v42 = 136446466;
          sub_261F666D8();
          v46 = sub_261F67FE4(v44, v45, v55);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2080;
          memcpy(v67, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v66);
          v47 = sub_26203A20C();
          v49 = sub_261F67FE4(v47, v48, v55);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_261F5B000, v41, v40, "%{public}s Received unexpected response to handshake request: %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v43, -1, -1);
          MEMORY[0x266724180](v42, -1, -1);
        }

        v67[3] = MEMORY[0x277D837D0];
        v67[0] = 0xD000000000000025;
        v67[1] = 0x800000026204EE00;
        LOBYTE(v67[4]) = 1;
        sub_261F65C5C();
        v25 = swift_allocError();
        v51 = v50;
        *v50 = 2;
        LOBYTE(v66[0]) = 2;
        v52 = ControlChannelConnectionError.Message.format(code:)(v66);
        sub_261F65C08(v67);
        *(v51 + 8) = v52;
        *(v51 + 24) = 0u;
        *(v51 + 40) = 0u;
        *(v51 + 7) = 0;
        goto LABEL_17;
      }

      nullsub_1();
      v24 = v23;
      sub_261F65C5C();
      v25 = swift_allocError();
      v26 = v24[3];
      v28 = *v24;
      v27 = v24[1];
      v29[2] = v24[2];
      v29[3] = v26;
      *v29 = v28;
      v29[1] = v27;
    }

    sub_261FBC710(__dst, v68);
LABEL_17:
    swift_willThrow();
    sub_261F65D0C(v25);
  }
}

void sub_261FB0884()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    if (v3)
    {
      v33 = xmmword_26203F770;
      LOBYTE(v34) = 0x80;
      sub_261F7D45C(v3, v2);
      v3(&v33);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_119();
      sub_261F68B30(v4, v5, v6, v7, v8, 1, v9, v10, v32);
    }

    else
    {
      sub_261F7D45C(0, *(v0 + 136));
    }
  }

  else
  {
    v11 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v12 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v11))
    {
      OUTLINED_FUNCTION_57_1();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v38 = swift_slowAlloc();
      *v13 = 136446466;
      sub_261F666D8();
      v15 = v14;
      sub_261F67FE4(v16, v14, &v38);
      OUTLINED_FUNCTION_163();

      *(v13 + 4) = v1;
      *(v13 + 12) = 2080;
      v17 = OUTLINED_FUNCTION_80_0();
      v18 = *(v0 + 168);
      *&v33 = v17;
      *(&v33 + 1) = v19;
      v34 = v20;
      v35 = v21;
      v36 = v22;
      v37 = v18;
      OUTLINED_FUNCTION_2_7();
      sub_261F68B30(v23, v24, v25, v26, v27, v28, sub_261F7D45C, sub_261F81D84, v32);
      v29 = sub_26203A20C();
      sub_261F67FE4(v29, v30, &v38);
      OUTLINED_FUNCTION_65();

      *(v13 + 14) = v15;
      _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s: Ignoring awaiting user consent message from peer since state=%s", v13, 0x16u);
      swift_arrayDestroy();
      v31 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v31);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }
}

void *sub_261FB0AC0(void *__src)
{
  memcpy(__dst, __src, 0x61uLL);
  sub_261FBA7D0(__dst, &v3);
  return sub_261FA7F00(__src);
}

void sub_261FB0B0C(unsigned int a1, int a2)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v2 + 168) == 1)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    if (v5)
    {
      v7 = *(v2 + 152);
      v8 = *(v2 + 160);
      if ((a1 & 0x20000) != 0)
      {
        v9 = 64;
      }

      else
      {
        v9 = 65;
      }

      v16[0] = HIWORD(a1) & 1;
      v16[1] = a2 & ((a1 << 14) >> 31);
      v17 = v9;
      sub_261F7D45C(v5, v6);
      v5(v16);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_153();
      sub_261F68B30(v10, v11, v12, v7, v8, 1, v13, v14, v15);
    }

    else
    {
      sub_261F7D45C(0, *(v2 + 136));
    }
  }
}

void sub_261FB0C10()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v0 + 528);
  if (v3 && *(v3 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 20)
  {
    v11 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v12 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v11))
    {
      OUTLINED_FUNCTION_42_1();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v15, v16, v24);
      OUTLINED_FUNCTION_163();

      *(v13 + 4) = v2;
      _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s: Pushing metadata update event to host", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v17 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v17);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    sub_261FB5370(v25);
    memcpy(__dst, v25, 0x61uLL);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
    *&__src[4] = *&__dst[4];
    *(&__src[4] + 1) = BYTE8(__dst[4]) & 1 | 0x8000000000000000;
    __src[5] = __dst[5];
    LOBYTE(__src[6]) = __dst[6];
    sub_261FBA7C0(__src);
    memcpy(v21, __src, sizeof(v21));
    sub_261FBA7D0(__dst, v24);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v18, v19, v20);
    sub_261FBA82C(__dst);
    memcpy(v24, v21, 0x82uLL);
    sub_261FBA880(v24);
  }

  else
  {
    sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v4 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v5 = swift_slowAlloc();
      v24[0] = v5;
      *v4 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v6, v7, v24);
      OUTLINED_FUNCTION_65();

      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v8, v9, "%{public}s: Not pushing metadata update event to host as it does not have a wire protocol version to support it");
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      v10 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v10);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FB0F30(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *a2;
  LODWORD(v50) = a2[1];
  HIDWORD(v50) = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (remotePairingIsEnabled())
  {
    v47 = __PAIR64__(v12, v13);
    swift_beginAccess();
    v14 = a3[66];
    a3[66] = v7;
    v15 = v7;

    swift_beginAccess();
    a3[22] = v10;
    a3[23] = v9;

    if (v8)
    {
      v65[0] = 8;
      memset(&v65[1], 0, 32);
      LOBYTE(v65[5]) = 4;
      sub_261F68720(v65, v16, v17, v18, v19, v20, v21, v22, v47, v50, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v61[0]);
    }

    else
    {
      v65[0] = 5;
      memset(&v65[1], 0, 32);
      LOBYTE(v65[5]) = 4;
      sub_261F68720(v65, v16, v17, v18, v19, v20, v21, v22, v47, v50, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12], v61[0]);
      sub_261FA9C1C();
    }

    if (v11)
    {
      sub_261FB5370(v62);
      memcpy(v60, v62, 0x61uLL);
      if (qword_28108CFD0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = qword_28108B5C8;
      v40 = qword_28108CFD8;
      if (v39 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v41 = qword_28108B5D0;
      memcpy(v65 + 3, v60, 0x61uLL);
      v61[0] = v40;
      v61[1] = qword_28108B5D0;
      LOBYTE(v61[2]) = 1;
      BYTE1(v61[2]) = v51;
      BYTE2(v61[2]) = v52;
      BYTE3(v61[2]) = v49;
      BYTE4(v61[2]) = v48;
      memcpy(&v61[2] + 5, v65, 0x64uLL);
      memcpy(__src, v61, 0x79uLL);
      sub_261FBCECC(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v42 = *(a5 + 8);
        memcpy(&v64[1], __src, 0x7AuLL);
        v64[0] = v42;
        sub_261FBCE10(v64);
        memcpy(__dst, v64, 0x82uLL);
        sub_261FBCED4(v61, v65);
        v43 = v41;
        sub_261FBA7D0(v60, v65);
        sub_261FBCED4(v61, v65);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v65, __dst, 0x82uLL);
        sub_261FBA880(v65);
        sub_261FBCF30(v61);
        sub_261FBA82C(v60);
      }

      else
      {
        v45 = v41;
      }
    }

    else
    {
      if (qword_28108CFD0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = qword_28108B5C8;
      v35 = qword_28108CFD8;
      if (v34 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v36 = qword_28108B5D0;
      v61[0] = v35;
      v61[1] = qword_28108B5D0;
      LOBYTE(v61[2]) = 0;
      BYTE1(v61[2]) = v51;
      BYTE2(v61[2]) = v52;
      BYTE3(v61[2]) = v49;
      BYTE4(v61[2]) = v48;
      memset(&v61[3], 0, 97);
      memcpy(__src, v61, 0x79uLL);
      sub_261FBCECC(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v37 = *(a5 + 8);
        memcpy(&v64[1], __src, 0x7AuLL);
        v64[0] = v37;
        sub_261FBCE10(v64);
        memcpy(__dst, v64, 0x82uLL);
        sub_261FBCED4(v61, v65);
        v38 = v36;
        sub_261FBCED4(v61, v65);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v65, __dst, 0x82uLL);
        sub_261FBA880(v65);
        sub_261FBCF30(v61);
      }

      else
      {
        v44 = v36;
      }
    }

    sub_261FBCF30(v61);
  }

  else
  {
    v23 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v24 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v23))
    {
      v25 = a5;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v65[0] = v27;
      *v26 = 136446210;
      sub_261F666D8();
      v30 = sub_261F67FE4(v28, v29, v65);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_261F5B000, v24, v23, "%{public}s: Rejecting control channel connection because RemotePairing support is disabled on this device.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x266724180](v27, -1, -1);
      v31 = v26;
      a5 = v25;
      MEMORY[0x266724180](v31, -1, -1);
    }

    sub_261F9D610();
    v32 = swift_allocError();
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_262017A84(__src, v32, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v33 = *(a5 + 8);
      memcpy(&v64[1], __src, 0x7AuLL);
      v64[0] = v33;
      sub_261FBCE10(v64);
      memcpy(__dst, v64, 0x82uLL);
      sub_261FBC710(__src, v65);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v65, __dst, 0x82uLL);
      sub_261FBA880(v65);
    }

    sub_261FBA8E0(__src);
  }

  return sub_261FBCC40(a5);
}

uint64_t sub_261FB1914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 240) & 0x8000) != 0)
  {
    v5 = sub_26203AC0C();

    if ((v5 & 1) == 0)
    {
      v28 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v29 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v28))
      {
        v30 = a3;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v80[0] = v32;
        *v31 = 136446210;
        sub_261F666D8();
        v35 = sub_261F67FE4(v33, v34, v80);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_261F5B000, v29, v28, "%{public}s: Ignoring invalid cancelPairSetup message received by host", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x266724180](v32, -1, -1);
        v36 = v31;
        a3 = v30;
        MEMORY[0x266724180](v36, -1, -1);
      }

      goto LABEL_42;
    }
  }

  else
  {
  }

  v6 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v7 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v6))
  {
    v8 = swift_slowAlloc();
    v9 = a3;
    v10 = swift_slowAlloc();
    v80[0] = v10;
    *v8 = 136446210;
    sub_261F666D8();
    v13 = sub_261F67FE4(v11, v12, v80);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261F5B000, v7, v6, "%{public}s: Received PairSetup cancel request from host", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v14 = v10;
    a3 = v9;
    MEMORY[0x266724180](v14, -1, -1);
    MEMORY[0x266724180](v8, -1, -1);
  }

  swift_beginAccess();
  v22 = *(a1 + 168);
  if ((v22 - 1) < 2)
  {
LABEL_22:
    v80[0] = 5;
    memset(&v80[1], 0, 32);
    LOBYTE(v80[5]) = 4;
    sub_261F68720(v80, v15, v16, v17, v18, v19, v20, v21, v68, v69, v70, v71, v72, v75, __dst[0], SHIDWORD(__dst[0]), __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15]);
    [*(a1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
    sub_261FBCF84(__src);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v46 = *(a3 + 8);
      memcpy(&v79[1], __src, 0x7AuLL);
      v79[0] = v46;
      sub_261FBCE10(v79);
      memcpy(__dst, v79, 0x82uLL);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v80, __dst, 0x82uLL);
      sub_261FBA880(v80);
    }

    goto LABEL_42;
  }

  v23 = *(a1 + 136);
  v25 = *(a1 + 144);
  v24 = *(a1 + 152);
  v26 = *(a1 + 160);
  if (v22 == 3)
  {
    v70 = *(a1 + 152);
    v71 = *(a1 + 160);
    v72 = *(a1 + 128);
    v75 = *(a1 + 136);
    sub_261F6B73C(v72, v23);
    v37 = sub_26203A4AC();
    if (os_log_type_enabled(v7, v37))
    {
      v38 = swift_slowAlloc();
      v69 = a3;
      v39 = swift_slowAlloc();
      v80[0] = v39;
      *v38 = 136446210;
      sub_261F666D8();
      v42 = sub_261F67FE4(v40, v41, v80);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_261F5B000, v7, v37, "%{public}s: Cancelling in-progress pairing consent collection", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v43 = v39;
      a3 = v69;
      MEMORY[0x266724180](v43, -1, -1);
      MEMORY[0x266724180](v38, -1, -1);
    }

    swift_beginAccess();
    sub_261F674BC(a1 + 320, v80, &qword_27FEF99A0, &qword_26203F7D8);
    if (v80[3])
    {
      sub_261F79740(v80, v79);
      sub_261F66E60(v80, &qword_27FEF99A0, &qword_26203F7D8);
      v44 = v79[3];
      v45 = v79[4];
      __swift_project_boxed_opaque_existential_0Tm(v79, v79[3]);
      (*(v45 + 32))(v44, v45);
      sub_261F68B30(v72, v75, v25, v70, v71, 3, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
    }

    else
    {
      sub_261F68B30(v72, v75, v25, v70, v71, 3, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      sub_261F66E60(v80, &qword_27FEF99A0, &qword_26203F7D8);
    }

    goto LABEL_22;
  }

  if (!*(a1 + 168))
  {
    v27 = "sThroughLockdown";
    switch(*(a1 + 128))
    {
      case 1u:
        v27 = "verifyManualPairing";
        v22 = 1;
        break;
      case 2u:
        v22 = 0;
        v27 = "setupManualPairing";
        break;
      case 3u:
        v22 = 0;
        v27 = "tionLockdownPairing";
        break;
      default:
        break;
    }

    v73 = *(a1 + 128);
    v76 = *(a1 + 136);
    if (v22 && (v27 | 0x8000000000000000) == 0x800000026204C570)
    {
      sub_261F7D45C(v23, v25);
      sub_261F81D84(v24, v26);

LABEL_30:
      v80[0] = 5;
      memset(&v80[1], 0, 32);
      LOBYTE(v80[5]) = 4;
      sub_261F68720(v80, v47, v48, v49, v50, v51, v52, v53, v68, v69, v70, v71, v73, v76, __dst[0], SHIDWORD(__dst[0]), __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15]);
      [*(a1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
      sub_261FBCF84(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v56 = *(a3 + 8);
        memcpy(&v79[1], __src, 0x7AuLL);
        v79[0] = v56;
        sub_261FBCE10(v79);
        memcpy(__dst, v79, 0x82uLL);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v80, __dst, 0x82uLL);
        sub_261FBA880(v80);
      }

      sub_261F68B30(v74, v77, v25, v24, v26, 0, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      goto LABEL_42;
    }

    v54 = *(a1 + 136);
    v55 = sub_26203AC0C();
    sub_261F7D45C(v54, v25);
    sub_261F81D84(v24, v26);

    if (v55)
    {
      goto LABEL_30;
    }

    sub_261F68B30(v73, v76, v25, v24, v26, 0, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
  }

  v80[3] = MEMORY[0x277D837D0];
  v80[0] = 0xD000000000000029;
  v80[1] = 0x800000026204E570;
  LOBYTE(v80[4]) = 1;
  LOBYTE(v79[0]) = 3;
  v57 = ControlChannelConnectionError.Message.format(code:)(v79);
  sub_261F65C08(v80);
  LOBYTE(v83) = 3;
  *(&v83 + 1) = v57._countAndFlagsBits;
  *v84 = v57._object;
  memset(&v84[8], 0, 40);
  sub_261F65C5C();
  v58 = swift_allocError();
  v59 = *&v84[32];
  v61 = v83;
  v60 = *v84;
  v62[2] = *&v84[16];
  v62[3] = v59;
  *v62 = v61;
  v62[1] = v60;
  swift_beginAccess();
  v63 = *(a1 + 528);
  if (v63)
  {
    sub_261F65CB0(&v83, v80);
    v64 = v63;
  }

  else
  {
    sub_261F65CB0(&v83, v80);
    if (qword_28108B5C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v64 = qword_28108B5D0;
    v63 = 0;
  }

  v65 = v63;
  sub_262017A84(__src, v58, v64);

  memcpy(v81, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v66 = *(a3 + 8);
    memcpy(&v79[1], v81, 0x7AuLL);
    v79[0] = v66;
    sub_261FBCE10(v79);
    memcpy(__dst, v79, 0x82uLL);
    sub_261FBC710(v81, v80);
    sub_261FABDA0(__dst, 0, 1);

    memcpy(v80, __dst, 0x82uLL);
    sub_261FBA880(v80);
  }

  sub_261F6A70C(&v83);
  sub_261FBA8E0(v81);
LABEL_42:

  return sub_261FBCC40(a3);
}

void sub_261FB2374()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_35_1();
  if (v6 < 0)
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_149())
    {
      OUTLINED_FUNCTION_42_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_27_2();
      v20 = swift_slowAlloc();
      v94[0] = v20;
      OUTLINED_FUNCTION_137(4.8751e-34);
      sub_261F67FE4(v21, v22, v94);
      OUTLINED_FUNCTION_47_1();

      *(v2 + 4) = v0;
      OUTLINED_FUNCTION_50_1(&dword_261F5B000, v23, v24, "%{public}s: Ignoring invalid PairSetup request received by host");
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v25 = OUTLINED_FUNCTION_9_2();
      MEMORY[0x266724180](v25);
      v26 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v26);
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      v94[3] = MEMORY[0x277D837D0];
      v94[0] = 0xD00000000000004BLL;
      v94[1] = v27;
      LOBYTE(v94[4]) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v28 = 3;
      LOBYTE(__src[0]) = 3;
      ControlChannelConnectionError.Message.format(code:)(__src);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(v94);
      OUTLINED_FUNCTION_7_3();
      v29 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v29);

      goto LABEL_11;
    }

    v8 = v5[1];
    v7 = v5[2];
    v9 = v5[3];
    v10 = v5[4];
    if ((v6 & 0x100) == 0)
    {
      LOBYTE(__src[0]) = 1;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v11 = *(v0 + 296);
      v12 = *(v0 + 304);
      v13 = OUTLINED_FUNCTION_126();
      sub_261F7D45C(v13, v14);
      v15 = MEMORY[0x277D84F90];
      v16 = OUTLINED_FUNCTION_172();
      v17 = OUTLINED_FUNCTION_172();
      sub_261FB5DF0(__src, v11, v12, 0, v8, v7, v9, v10, v15, v16, v17);

      v18 = OUTLINED_FUNCTION_126();
LABEL_5:
      sub_261F665E4(v18, v19);
      goto LABEL_11;
    }

    if (*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing))
    {
      v30 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      if (OUTLINED_FUNCTION_149())
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_27_2();
        v31 = swift_slowAlloc();
        v94[0] = v31;
        OUTLINED_FUNCTION_137(4.8751e-34);
        sub_261F67FE4(v32, v33, v94);
        OUTLINED_FUNCTION_114();
        *(v9 + 4) = v3;
        OUTLINED_FUNCTION_50_1(&dword_261F5B000, v34, v35, "%{public}s: Automatically rejecting pairing request from host since user has already declined previous attempt");
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        v36 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v36);
        v37 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v37);
      }

      sub_261F9D610();
      OUTLINED_FUNCTION_19();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      v38 = sub_261F9BCE0();
      OUTLINED_FUNCTION_140_0(v38, v39, 0x800000026204D5C0);
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (!*(v0 + 528))
      {
        if (qword_28108B5C8 != -1)
        {
          OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
        }

        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
      }

      OUTLINED_FUNCTION_128();
      if (v41 ^ v42 | v40)
      {

        v30 = 0;
        v56 = 0xC000000000000000;
      }

      else
      {
        v56 = 0x4000000000000000;
      }

      memset(&__src[1], 0, 64);
      __src[0] = v30;
      __src[9] = v56;
      memset(&__src[10], 0, 17);
      sub_261FBA7C0(__src);
      memcpy(__dst, __src, 0x82uLL);
      OUTLINED_FUNCTION_58_1();
      sub_261FABDA0(v57, v58, v59);
      memcpy(v94, __dst, 0x82uLL);
      sub_261FBA880(v94);
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (*(v0 + 312) != 1)
      {
        v60 = sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (os_log_type_enabled(qword_28108B610, v60))
        {
          OUTLINED_FUNCTION_42_1();
          v61 = swift_slowAlloc();
          OUTLINED_FUNCTION_30();
          v62 = swift_slowAlloc();
          v94[0] = v62;
          *v61 = 136446210;
          sub_261F666D8();
          sub_261F67FE4(v63, v64, v94);
          OUTLINED_FUNCTION_61_1();

          *(v61 + 4) = v4;
          OUTLINED_FUNCTION_171(&dword_261F5B000, v65, v66, "%{public}s: Not requesting user consent for pairing attempt as requireUserConsentForPairing is set to false");
          __swift_destroy_boxed_opaque_existential_0Tm(v62);
          v67 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v67);
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
        }

        LOBYTE(__src[0]) = 1;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v68 = OUTLINED_FUNCTION_39_1();
        v70 = sub_261F7D45C(v68, v69);
        v71 = MEMORY[0x277D84F70];
        v72 = MEMORY[0x277D84F90];
        v74 = OUTLINED_FUNCTION_110(v70, v73, MEMORY[0x277D84F70] + 8);
        v87 = OUTLINED_FUNCTION_110(v74, v75, v71 + 8);
        OUTLINED_FUNCTION_153();
        OUTLINED_FUNCTION_89_0();
        sub_261FB5DF0(v76, v77, v78, v79, v80, v81, v82, v83, v72, v74, v87);

        v18 = OUTLINED_FUNCTION_39_1();
        goto LABEL_5;
      }

      v94[0] = v8;
      v94[1] = v7;
      memset(&v94[2], 0, 24);
      LOBYTE(v94[5]) = 3;
      sub_261F6B73C(v8, v7);
      sub_261F68720(v94, v43, v44, v45, v46, v47, v48, v49, v84, v85, v86, v88, v89, v90, __dst[0], SHIDWORD(__dst[0]), __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15]);
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      sub_261F674BC(v0 + 320, v94, &qword_27FEF99A0, &qword_26203F7D8);
      if (v94[3])
      {
        sub_261F79740(v94, __src);
        sub_261F66E60(v94, &qword_27FEF99A0, &qword_26203F7D8);
        v50 = __src[4];
        __swift_project_boxed_opaque_existential_0Tm(__src, __src[3]);
        v91 = *(v50 + 24);

        v51 = OUTLINED_FUNCTION_155();
        sub_261F81D84(v51, v52);

        v53 = OUTLINED_FUNCTION_39_1();
        v91(v53);

        v54 = OUTLINED_FUNCTION_155();
        sub_261F6ADEC(v54, v55);

        __swift_destroy_boxed_opaque_existential_0Tm(__src);
      }

      else
      {
        sub_261F66E60(v94, &qword_27FEF99A0, &qword_26203F7D8);
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_31_0();
}

void sub_261FB2A68()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_35_1();
  if ((v5 & 0x8000) == 0)
  {
    v6 = v0;
    if (HIBYTE(v5) == 2 || (v5 & 0x1000000) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      v76[3] = v27;
      v28 = 0xD000000000000025;
    }

    else
    {
      v7 = v3;
      v1 = *(v4 + 8);
      v2 = *(v4 + 16);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 192), *(v0 + 216));
      v8 = OUTLINED_FUNCTION_126();
      if (v9(v8))
      {
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        if (*(v0 + 168) == 4 && *(v0 + 128) == 5)
        {
          OUTLINED_FUNCTION_22_3(*(v0 + 152), *(v0 + 136));
          if (!v10)
          {
            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            sub_261F674BC(v0 + 320, v77, &qword_27FEF99A0, &qword_26203F7D8);
            v11 = v78;
            if (v78)
            {
              v12 = __swift_project_boxed_opaque_existential_0Tm(v77, v78);
              v73 = v68;
              v13 = *(v11 - 8);
              MEMORY[0x28223BE20](v12);
              v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
              (*(v13 + 16))(v15);
              sub_261F66E60(v77, &qword_27FEF99A0, &qword_26203F7D8);
              v16 = OUTLINED_FUNCTION_126();
              v17(v16);
              (*(v13 + 8))(v15, v11);
              v18 = v76[2];
              if (v76[2])
              {
                v19 = v76[0];
                if (v76[0])
                {
                  if ((v7 & 1) == 0)
                  {
                    v73 = v76[1];
                    v20 = &unk_287489208;
LABEL_29:
                    v38 = sub_26203A4AC();
                    if (qword_28108B600 != -1)
                    {
                      OUTLINED_FUNCTION_0_11();
                      swift_once();
                    }

                    v72 = qword_28108B610;
                    if (os_log_type_enabled(qword_28108B610, v38))
                    {
                      OUTLINED_FUNCTION_42_1();
                      v39 = swift_slowAlloc();
                      v71 = v20;
                      v40 = v39;
                      OUTLINED_FUNCTION_30();
                      v70 = swift_slowAlloc();
                      v76[0] = v70;
                      *v40 = 136315138;
                      LOBYTE(v75[0]) = v19 & 1;
                      v41 = sub_26203A20C();
                      v69 = v38;
                      v43 = sub_261F67FE4(v41, v42, v76);

                      *(v40 + 4) = v43;
                      _os_log_impl(&dword_261F5B000, v72, v69, "Host approved for promptless pairing of type %s.", v40, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v70);
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                      v20 = v71;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    if (v7)
                    {
                      v44 = 3;
                    }

                    else
                    {
                      v44 = 2;
                    }

                    LOBYTE(v75[0]) = v44;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A98, &unk_2620402F0);
                    v45 = swift_allocObject();
                    *(v45 + 16) = xmmword_26203E9E0;
                    OUTLINED_FUNCTION_31_2();
                    v76[0] = 0xD00000000000001DLL;
                    v76[1] = v46;
                    v47 = MEMORY[0x277D837D0];
                    sub_26203A79C();
                    *(v45 + 96) = v47;
                    *(v45 + 72) = v73;
                    *(v45 + 80) = v18;
                    v48 = sub_26203A0FC();
                    v67 = sub_26203A0FC();
                    OUTLINED_FUNCTION_7_2();
                    OUTLINED_FUNCTION_89_0();
                    sub_261FB5DF0(v49, v50, v51, v52, v53, v54, v55, v56, v20, v67, v48);

                    goto LABEL_20;
                  }
                }

                else if (v7)
                {
                  v73 = v76[1];
                  v20 = &unk_2874891D8;
                  goto LABEL_29;
                }

                sub_261F9BCE0();
                OUTLINED_FUNCTION_135();
                sub_26203AD0C();
                v74[0] = v75[0];
                v74[1] = v75[1];
                OUTLINED_FUNCTION_53_1();
                sub_26203AD4C();
                v57 = v76[0];
                v58 = v76[1];
                sub_261F9D610();
                OUTLINED_FUNCTION_13_1();
                v36 = swift_allocError();
                *v59 = v57;
                v59[1] = v58;
                OUTLINED_FUNCTION_7_2();
                swift_beginAccess();
                if (*(v6 + 528))
                {
                  goto LABEL_40;
                }

                if (qword_28108B5C8 == -1)
                {
                  goto LABEL_39;
                }

                goto LABEL_44;
              }
            }

            else
            {
              sub_261F66E60(v77, &qword_27FEF99A0, &qword_26203F7D8);
            }

            sub_261F9BCE0();
            OUTLINED_FUNCTION_135();
            sub_26203AD0C();
            v74[0] = v75[0];
            v74[1] = v75[1];
            OUTLINED_FUNCTION_53_1();
            sub_26203AD4C();
            v34 = v76[0];
            v35 = v76[1];
            sub_261F9D610();
            OUTLINED_FUNCTION_13_1();
            v36 = swift_allocError();
            *v37 = v34;
            v37[1] = v35;
            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            if (*(v6 + 528))
            {
LABEL_40:
              OUTLINED_FUNCTION_128();
              if (v61 ^ v62 | v60)
              {

                v36 = 0;
                v63 = 0xC000000000000000;
              }

              else
              {
                v63 = 0x4000000000000000;
              }

              memset(&v75[1], 0, 64);
              v75[0] = v36;
              v75[9] = v63;
              memset(&v75[10], 0, 17);
              sub_261FBA7C0(v75);
              memcpy(v74, v75, 0x82uLL);
              OUTLINED_FUNCTION_58_1();
              sub_261FABDA0(v64, v65, v66);
              memcpy(v76, v74, 0x82uLL);
              sub_261FBA880(v76);
              goto LABEL_20;
            }

            if (qword_28108B5C8 == -1)
            {
LABEL_39:
              OUTLINED_FUNCTION_7_2();
              swift_beginAccess();
              goto LABEL_40;
            }

LABEL_44:
            OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
            goto LABEL_39;
          }
        }

        OUTLINED_FUNCTION_31_2();
        v76[3] = v33;
        v28 = 0xD000000000000046;
      }

      else
      {
        OUTLINED_FUNCTION_31_2();
        v76[3] = v32;
        v28 = 0xD00000000000003CLL;
      }
    }

    v76[0] = v28;
    v76[1] = v26;
    LOBYTE(v76[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v29, v30);
    LOBYTE(v75[0]) = v31;
    ControlChannelConnectionError.Message.format(code:)(v75);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(v76);
    OUTLINED_FUNCTION_38_1();
    *(v2 + 56) = 0;
    sub_261F65D0C(v1);

LABEL_20:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  sub_26203A48C();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  OUTLINED_FUNCTION_31_0();

  sub_26203969C(v21, v22, v23, v24);
}

void sub_261FB3208()
{
  OUTLINED_FUNCTION_96();
  v5 = *v4;
  v6 = (v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData);
  v7 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData + 8);
  if (v7 >> 60 != 15)
  {
    v129[0] = *v6;
    v129[1] = v7;
    v8 = OUTLINED_FUNCTION_111();
    sub_261F6B73C(v8, v9);
    v10 = OUTLINED_FUNCTION_111();
    if (MEMORY[0x266721A20](v10) < 0)
    {
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_0_11();
      swift_once();
LABEL_6:
      v12 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v3))
      {
        OUTLINED_FUNCTION_57_1();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v129[0] = swift_slowAlloc();
        *v13 = 136446466;
        sub_261F666D8();
        OUTLINED_FUNCTION_184(v14, v15);
        OUTLINED_FUNCTION_70();

        *(v13 + 4) = v1;
        *(v13 + 12) = 2080;
        __src[0] = v5;
        sub_261FBC684(v5);
        v16 = sub_26203A20C();
        OUTLINED_FUNCTION_184(v16, v17);
        OUTLINED_FUNCTION_70();

        *(v13 + 14) = v1;
        _os_log_impl(&dword_261F5B000, v12, v3, "%{public}s: Received pairing consent collection outcome: %s", v13, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      switch(v5)
      {
        case 0uLL:
        case 2uLL:
          LOBYTE(v129[0]) = 1;
          sub_261F6B73C(v120, v123);
          v18 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_47();
          v19 = sub_26203A0FC();
          OUTLINED_FUNCTION_47();
          v108 = sub_26203A0FC();
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_89_0();
          sub_261FB5DF0(v20, v21, v22, v23, v24, v25, v26, v27, v18, v19, v108);
          OUTLINED_FUNCTION_12_1();
          sub_261F68B30(v120, v123, v126, v114, v117, 3, sub_261F99050, sub_261F6ADEC, v28);

          sub_261F68B30(v120, v123, v126, v114, v117, 3, sub_261F99050, sub_261F6ADEC, v18);
          goto LABEL_40;
        case 1uLL:
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          if (!*(v0 + 528) || (OUTLINED_FUNCTION_128(), v36 ^ v37))
          {
            v38 = sub_26203A47C();
            if (os_log_type_enabled(v12, v38))
            {
              OUTLINED_FUNCTION_42_1();
              v39 = swift_slowAlloc();
              OUTLINED_FUNCTION_30();
              v40 = swift_slowAlloc();
              v129[0] = v40;
              *v39 = 136446210;
              sub_261F666D8();
              OUTLINED_FUNCTION_184(v41, v42);
              OUTLINED_FUNCTION_114();
              *(v39 + 4) = v0;
              _os_log_impl(&dword_261F5B000, v12, v38, "%{public}s: Not sending awaitingUserConsent message to host as its supported wire protocol is too old", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v40);
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
            }

            OUTLINED_FUNCTION_1_9();
            v96 = v120;
            v97 = v123;
            v98 = v126;
            v99 = v114;
            v100 = v117;
          }

          else
          {
            memset(&v129[1], 0, 64);
            v129[0] = 3;
            v129[9] = 0xC000000000000000;
            memset(&v129[10], 0, 17);
            sub_261FBA7C0(v129);
            memcpy(__src, v129, 0x82uLL);
            OUTLINED_FUNCTION_58_1();
            sub_261FABDA0(v93, v94, v95);
            OUTLINED_FUNCTION_1_9();
            v96 = v120;
            v97 = v123;
            v98 = v126;
            v99 = v114;
            v100 = v117;
          }

          sub_261F68B30(v96, v97, v98, v99, v100, 3, sub_261F99050, sub_261F6ADEC, v101);
          goto LABEL_40;
        case 3uLL:
          v43 = static Data.randomBytes(ofLength:)(0x400uLL);
          v45 = v44;
          *v6 = v43;
          v6[1] = v44;
          sub_261F6B73C(v43, v44);
          v46 = OUTLINED_FUNCTION_47();
          v48 = sub_261F6ADEC(v46, v47);
          OUTLINED_FUNCTION_95(v48, v49, v50, v51, v52, v53, v54, v55, v101, v104, v107, v111, v114, v117, v120, SHIDWORD(v120), v123, v126, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);
          static RemotePairingError.managedConfigurationChallengeRequired(with:)(v43, v45);
          v56 = v129[1];
          sub_261F9D610();
          OUTLINED_FUNCTION_72_0();
          v57 = swift_allocError();
          *v58 = v129[0];
          v58[1] = v56;
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          if (*(v0 + 528))
          {
            OUTLINED_FUNCTION_128();
            if (!(v36 ^ v37 | v59))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (qword_28108B5C8 != -1)
            {
              OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
            }

            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            OUTLINED_FUNCTION_128();
            if (!(v36 ^ v37 | v59))
            {
              goto LABEL_37;
            }
          }

          v57 = 0;
LABEL_37:
          *&v82 = OUTLINED_FUNCTION_55_1();
          *&__src[5] = v82;
          *&__src[7] = v82;
          __src[0] = v57;
          __src[9] = v83;
          memset(&__src[10], 0, 17);
          sub_261FBA7C0(__src);
          memcpy(__dst, __src, 0x82uLL);
          OUTLINED_FUNCTION_58_1();
          sub_261FABDA0(v84, v85, v86);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_145(v87, v88, v89, v90, v91, v92, sub_261F99050, sub_261F6ADEC, v102, v105, v109, v112, v115, v118, v121, v124);
          sub_261F6BFFC(v43, v45);
          goto LABEL_38;
        default:
          sub_261F9BCE0();
          sub_26203AD3C();
          __src[0] = v129[0];
          __src[1] = v129[1];
          v60 = sub_2620399BC();

          if (v60)
          {
            *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing) = 1;
          }

          OUTLINED_FUNCTION_95(v61, v62, v63, v64, v65, v66, v67, v68, v101, v104, v107, v111, v114, v117, v120, SHIDWORD(v120), v123, v126, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v69 = *(v0 + 528);
          if (!v69)
          {
            if (qword_28108B5C8 != -1)
            {
              OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
            }

            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            v69 = qword_28108B5D0;
          }

          if (*(v69 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 11)
          {
            v70 = v5;
          }

          else
          {
            v5 = 0;
          }

          *&v71 = OUTLINED_FUNCTION_55_1();
          *&__src[5] = v71;
          *&__src[7] = v71;
          __src[0] = v5;
          __src[9] = v72;
          memset(&__src[10], 0, 17);
          sub_261FBA7C0(__src);
          memcpy(__dst, __src, 0x82uLL);
          OUTLINED_FUNCTION_58_1();
          sub_261FABDA0(v73, v74, v75);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_145(v76, v77, v78, v79, v80, v81, sub_261F99050, sub_261F6ADEC, v103, v106, v110, v113, v116, v119, v122, v125);
LABEL_38:
          memcpy(v129, __dst, 0x82uLL);
          sub_261FBA880(v129);
          goto LABEL_40;
      }
    }

    sub_2620394BC();
    sub_261F6BFFC(v129[0], v129[1]);
    v7 = v6[1];
  }

  v11 = *v6;
  *v6 = xmmword_26203F730;
  sub_261F6ADEC(v11, v7);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 3)
  {
    v123 = *(v0 + 136);
    v126 = *(v0 + 144);
    v114 = *(v0 + 152);
    v117 = *(v0 + 160);
    v120 = *(v0 + 128);
    sub_261F6B73C(v120, v123);
    v3 = sub_26203A47C();
    if (qword_28108B600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  sub_26203A48C();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (OUTLINED_FUNCTION_136())
  {
    OUTLINED_FUNCTION_42_1();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v30 = swift_slowAlloc();
    v129[0] = v30;
    *v29 = 136446210;
    sub_261F666D8();
    OUTLINED_FUNCTION_184(v31, v32);
    OUTLINED_FUNCTION_65();

    *(v29 + 4) = v2;
    OUTLINED_FUNCTION_29_4(&dword_261F5B000, v33, v34, "%{public}s: User responded to pairing prompt but we are no longer in correct state to handle response");
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v35 = OUTLINED_FUNCTION_8_2();
    MEMORY[0x266724180](v35);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

LABEL_40:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FB3AA0(void *a1)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v1 + 168) == 1)
  {
    __dst[0] = 5;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 4;
    sub_261F68720(__dst, v4, v5, v6, v7, v8, v9, v10, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], SHIDWORD(v33[6]), v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], *__src, v35, *(&v35 + 1), v36, *(&v36 + 1));
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v11 = *(v1 + 528);
    if (!v11)
    {
      if (qword_28108B5C8 != -1)
      {
        OUTLINED_FUNCTION_5_3(&qword_28108B5C8);
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v11 = qword_28108B5D0;
    }

    if (*(v11 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 11)
    {
      v21 = a1;
      v12 = 0x4000000000000000;
    }

    else
    {
      a1 = 0;
      v12 = 0xC000000000000000;
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__src = a1;
    v39 = v12;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v22 = sub_261FBA7C0(__src);
    OUTLINED_FUNCTION_104(v22, v23, v24, v25, v26, v27, v28, v29, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16]);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v30, v31, v32);
    memcpy(__dst, v33, 0x82uLL);
    sub_261FBA880(__dst);
    return [*(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
  }

  else
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    result = OUTLINED_FUNCTION_136();
    if (result)
    {
      OUTLINED_FUNCTION_42_1();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v15 = swift_slowAlloc();
      __dst[0] = v15;
      *v14 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v16, v17, __dst);
      OUTLINED_FUNCTION_65();

      *(v14 + 4) = v2;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v18, v19, "%{public}s: Received PIN display error from user interaction provider but we are no longer in valid state for PIN pairing");
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      v20 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v20);
      OUTLINED_FUNCTION_26();
      return MEMORY[0x266724180]();
    }
  }

  return result;
}

uint64_t sub_261FB3CC4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  memcpy((v14 + 24), a7, 0x92uLL);
  v15 = *a3;
  swift_beginAccess();
  sub_261F674BC((a5 + 45), &v47, &qword_27FEF99A8, &qword_26203F7E0);
  if (v48)
  {
    sub_261F797BC(&v47, v49);
    v16 = v51;
    v35 = v50;
    v38 = a4;
    __swift_project_boxed_opaque_existential_0Tm(v49, v50);
    v37 = a1;
    v17 = v14;
    v18 = a5[27];
    v19 = a5[28];
    __swift_project_boxed_opaque_existential_0Tm(a5 + 24, v18);
    v39 = a7;
    v36 = a2;
    v20 = *(v19 + 80);

    sub_261FBCBCC(a7, v44);
    LOBYTE(v18) = v20(v18, v19);
    LOBYTE(v44[0]) = v15;
    v21 = a5[29];
    v22 = swift_allocObject();
    v22[2] = sub_261FBCEA8;
    v22[3] = v17;
    v22[4] = a5;
    v23 = *(v16 + 8);

    v23(v18 & 1, v37, v36, v44, v38, a5, v21, sub_261FBCEB4, v22, v35, v16);
    a7 = v39;

    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  else
  {

    sub_261FBCBCC(a7, v44);
    sub_261F66E60(&v47, &qword_27FEF99A8, &qword_26203F7E0);
    v44[3] = MEMORY[0x277D837D0];
    v44[0] = 0xD00000000000001FLL;
    v44[1] = 0x800000026204F110;
    LOBYTE(v44[4]) = 1;
    LOBYTE(v41[0]) = 3;
    v24 = ControlChannelConnectionError.Message.format(code:)(v41);
    sub_261F65C08(v44);
    LOBYTE(v45) = 3;
    *(&v45 + 1) = v24._countAndFlagsBits;
    *v46 = v24._object;
    memset(&v46[8], 0, 40);
    sub_261F65C5C();
    v25 = swift_allocError();
    v26 = *&v46[32];
    v28 = v45;
    v27 = *v46;
    v29[2] = *&v46[16];
    v29[3] = v26;
    *v29 = v28;
    v29[1] = v27;
    swift_beginAccess();
    v30 = a5[66];
    if (v30)
    {
      sub_261F65CB0(&v45, v44);
      v31 = v30;
    }

    else
    {
      sub_261F65CB0(&v45, v44);
      if (qword_28108B5C8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v31 = qword_28108B5D0;
      v30 = 0;
    }

    v32 = v30;
    sub_262017A84(__src, v25, v31);

    memcpy(__dst, __src, 0x7AuLL);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v33 = a7[1];
      memcpy(&v41[1], __dst, 0x7AuLL);
      v41[0] = v33;
      sub_261FBCE10(v41);
      memcpy(v40, v41, 0x82uLL);
      sub_261FBC710(__dst, v44);
      sub_261FABDA0(v40, 0, 1);

      memcpy(v44, v40, 0x82uLL);
      sub_261FBA880(v44);
    }

    sub_261F6A70C(&v45);
    sub_261FBA8E0(__dst);
  }

  return sub_261FBCC40(a7);
}

uint64_t sub_261FB4110(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(a1 + 40))
  {
    swift_beginAccess();
    v7 = *(a4 + 528);
    if (v7)
    {
      v8 = *(a4 + 528);
    }

    else
    {
      if (qword_28108B5C8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = qword_28108B5D0;
      v7 = 0;
    }

    v12 = v7;
    sub_262017A84(__src, v5, v8);

    a2(__src);
    v11 = __src;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 8);
    LOWORD(__src[0]) = *a1;
    *(&__src[0] + 1) = v10;
    __src[1] = *(a1 + 16);
    v14 = *&__src[1];
    *&__src[2] = v9;
    sub_261FBCEC0(__src);
    memcpy(__dst, __src, 0x7AuLL);
    sub_261F6B73C(v10, v14);

    a2(__dst);
    v11 = __dst;
  }

  memcpy(v17, v11, 0x7AuLL);
  return sub_261FBA8E0(v17);
}

uint64_t sub_261FB4280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261FB5370(__src);
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v11, __src, 0x61uLL);
  sub_261FBCE24(v11);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = *(a3 + 8);
    memcpy(&v8[1], v11, 0x7AuLL);
    v8[0] = v4;
    sub_261FBCE10(v8);
    memcpy(v7, v8, 0x82uLL);
    sub_261FBA7D0(__dst, v9);
    sub_261FABDA0(v7, 0, 1);

    memcpy(v9, v7, 0x82uLL);
    sub_261FBA880(v9);
  }

  sub_261FBA82C(__dst);

  return sub_261FBCC40(a3);
}

uint64_t sub_261FB44F4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 120);
  v6 = MEMORY[0x277D837D0];
  if (v5)
  {
    v7 = v5;
    v8 = CUPairedPeer.remoteUnlockKey.getter();
    v10 = v9;

    if (v10 >> 60 != 15)
    {
      sub_261F6ADEC(v8, v10);
      v46[3] = v6;
      v46[0] = 0xD00000000000002FLL;
      v46[1] = 0x800000026204F180;
      LOBYTE(v46[4]) = 1;
      sub_261F65C5C();
      v12 = swift_allocError();
      v14 = v13;
      *v13 = 2;
      v45[0] = 2;
      v15 = ControlChannelConnectionError.Message.format(code:)(v45);
      sub_261F65C08(v46);
      *(v14 + 8) = v15;
      *(v14 + 24) = 0u;
      *(v14 + 40) = 0u;
      *(v14 + 7) = 0;
      swift_willThrow();
LABEL_10:
      v22 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v23 = qword_28108B610;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26203E9E0;
      v46[0] = v12;
      v25 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v26 = sub_26203A20C();
      v28 = v27;
      *(v24 + 56) = v6;
      *(v24 + 64) = sub_261FBC69C();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      sub_26203969C(v22, &dword_261F5B000, v23, "Failed to create remote unlock key: %@", 38, 2, v24);

      swift_beginAccess();
      v29 = *(a1 + 528);
      if (v29)
      {
        v30 = *(a1 + 528);
      }

      else
      {
        if (qword_28108B5C8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v30 = qword_28108B5D0;
        v29 = 0;
      }

      v31 = v29;
      sub_262017A84(__src, v12, v30);

      memcpy(__dst, __src, 0x7AuLL);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v32 = *(a3 + 8);
        memcpy(&v45[8], __dst, 0x7AuLL);
        *v45 = v32;
        sub_261FBCE10(v45);
        memcpy(v44, v45, 0x82uLL);
        sub_261FBC710(__dst, v46);
        sub_261FABDA0(v44, 0, 1);

        memcpy(v46, v44, 0x82uLL);
        sub_261FBA880(v46);
      }

      sub_261FBA8E0(__dst);
LABEL_20:

      return sub_261FBCC40(a3);
    }
  }

  type metadata accessor for RemoteUnlockKeypair();
  swift_allocObject();
  v11 = sub_26202950C();
  swift_beginAccess();
  sub_261F674BC(a1 + 440, v45, &qword_27FEF99B0, &qword_26203F7E8);
  if (*&v45[24])
  {
    sub_261F797BC(v45, v46);
    sub_2620299B8(v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  else
  {
    sub_261F66E60(v45, &qword_27FEF99B0, &qword_26203F7E8);
  }

  sub_26202966C();
  swift_beginAccess();
  v16 = v11[5];
  if (v16 >> 60 == 15 || (v17 = v11[4], swift_beginAccess(), v18 = v11[3], v18 >> 60 == 15))
  {
    v46[3] = v6;
    v46[0] = 0xD000000000000019;
    v46[1] = 0x800000026204F160;
    LOBYTE(v46[4]) = 1;
    sub_261F65C5C();
    v12 = swift_allocError();
    v20 = v19;
    *v19 = 3;
    v45[0] = 3;
    v21 = ControlChannelConnectionError.Message.format(code:)(v45);
    sub_261F65C08(v46);
    *(v20 + 8) = v21;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 7) = 0;
    swift_willThrow();

    goto LABEL_10;
  }

  v34 = *(a1 + 120);
  if (v34)
  {
    v35 = v11[2];
    sub_261F81D84(v17, v16);
    sub_261F81D84(v17, v16);
    v36 = v34;
    v42 = v35;
    v43 = v18;
    sub_261F81D84(v35, v18);
    CUPairedPeer.remoteUnlockKey.setter(v17, v16);

    swift_beginAccess();
    sub_261F79740(a1 + 400, __dst);
    v37 = __dst[4];
    __swift_project_boxed_opaque_existential_0Tm(__dst, __dst[3]);
    v38 = *(a1 + 120);
    if (v38)
    {
      v41 = *(v37 + 24);
      v39 = v38;
      v41();

      __swift_destroy_boxed_opaque_existential_0Tm(__dst);
      __src[0] = v42;
      __src[1] = v43;
      sub_261FBCFB8(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v40 = *(a3 + 8);
        memcpy(&v45[8], __src, 0x7AuLL);
        *v45 = v40;
        sub_261FBCE10(v45);
        memcpy(v44, v45, 0x82uLL);
        sub_261F81D84(v42, v43);
        sub_261F6B73C(v42, v43);
        sub_261FABDA0(v44, 0, 1);

        memcpy(v46, v44, 0x82uLL);
        sub_261FBA880(v46);
        sub_261F6ADEC(v42, v43);
      }

      sub_2620295C4();
      sub_261F6ADEC(v42, v43);
      sub_261F6ADEC(v17, v16);

      goto LABEL_20;
    }
  }

  else
  {

    sub_261FBCC40(a3);
    __break(1u);
  }

  result = sub_261FBCC40(a3);
  __break(1u);
  return result;
}

uint64_t sub_261FB4C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 120);
  if (v9)
  {
    type metadata accessor for RemoteUnlockKeypair();
    v10 = v9;
    v11 = CUPairedPeer.remoteUnlockKey.getter();
    v13 = v12;

    sub_261F6B73C(a1, a2);
    sub_262028B90(a1, a2, v11, v13);
    swift_beginAccess();
    sub_261F674BC(a3 + 440, v17, &qword_27FEF99B0, &qword_26203F7E8);
    if (*&v17[24])
    {
      sub_261F797BC(v17, v18);
      sub_2620299B8(v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    else
    {
      sub_261F66E60(v17, &qword_27FEF99B0, &qword_26203F7E8);
    }

    sub_26202978C();
    sub_2620295C4();
    sub_261FBCFC4(__src);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = *(a5 + 8);
      memcpy(&v17[8], __src, 0x7AuLL);
      *v17 = v14;
      sub_261FBCE10(v17);
      memcpy(__dst, v17, 0x82uLL);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v18, __dst, 0x82uLL);
      sub_261FBA880(v18);
    }

    return sub_261FBCC40(a5);
  }

  else
  {

    result = sub_261FBCC40(a5);
    __break(1u);
  }

  return result;
}

uint64_t sub_261FB4F90()
{
  v0 = sub_26203A18C();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v3;
  }

  sub_261F9BCE0();
  sub_26203AD3C();
  sub_261F9D610();
  OUTLINED_FUNCTION_13_1();
  swift_allocError();
  OUTLINED_FUNCTION_53_1();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t sub_261FB50BC()
{
  v2 = sub_26203A18C();
  v3 = MGCopyAnswer();

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 unsignedLongLongValue];
      OUTLINED_FUNCTION_47_1();
      swift_unknownObjectRelease();
      return v0;
    }

    swift_unknownObjectRelease();
  }

  sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (OUTLINED_FUNCTION_136())
  {
    OUTLINED_FUNCTION_42_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v14 = swift_slowAlloc();
    *v5 = 136446210;
    sub_261F666D8();
    OUTLINED_FUNCTION_125(v6, v7, v8, v9);
    OUTLINED_FUNCTION_65();

    *(v5 + 4) = v1;
    OUTLINED_FUNCTION_29_4(&dword_261F5B000, v10, v11, "%{public}s: Unable to fetch device ECID");
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v12 = OUTLINED_FUNCTION_8_2();
    MEMORY[0x266724180](v12);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  return 0;
}

void sub_261FB521C()
{
  v1 = sub_26203A18C();
  v2 = MGCopyAnswer();

  if (v2)
  {
    if (!swift_dynamicCast())
    {
      sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      if (OUTLINED_FUNCTION_136())
      {
        OUTLINED_FUNCTION_42_1();
        v3 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v11 = swift_slowAlloc();
        *v3 = 136446210;
        sub_261F666D8();
        OUTLINED_FUNCTION_125(v4, v5, v6, v7);
        OUTLINED_FUNCTION_65();

        *(v3 + 4) = v0;
        OUTLINED_FUNCTION_29_4(&dword_261F5B000, v8, v9, "%{public}s: Unable to fetch device serial number");
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        v10 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v10);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_261FB5370@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 240);
  v5 = v4 | (*(v1 + 244) << 32);
  if ((v4 & 0x8000) != 0)
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    result = sub_26203A91C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    sub_261F674BC(v1 + 480, &v65, &qword_27FEF99B8, &qword_26203F7F0);
    if (v66)
    {
      sub_261F797BC(&v65, &v67);
      v6 = v69;
      v7 = v70;
      __swift_project_boxed_opaque_existential_0Tm(&v67, v69);
      (*(v7 + 8))(HIDWORD(v5) & 1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v67);
    }

    sub_261F66E60(&v65, &qword_27FEF99B8, &qword_26203F7F0);
    v9 = sub_26203A18C();
    v10 = MGCopyAnswer();

    if (!v10)
    {
      goto LABEL_11;
    }

    *&v65 = v10;
    if ((OUTLINED_FUNCTION_174(v11, v12, v13, MEMORY[0x277D837D0], v14, v15, v16, v17, v43, v45, v47, log, v51, v53, v55, v58, v61) & 1) == 0)
    {
      goto LABEL_11;
    }

    v18 = v68;
    v71 = v67;
    v19 = sub_26203A18C();
    v20 = MGCopyAnswer();

    if (!v20 || (*&v65 = v20, !OUTLINED_FUNCTION_174(v21, v22, v23, MEMORY[0x277D837D0], v24, v25, v26, v27, v44, v46, v48, loga, v52, v54, v56, v59, v62)))
    {
LABEL_10:

LABEL_11:
      v69 = MEMORY[0x277D837D0];
      v67 = 0xD00000000000003CLL;
      v68 = 0x800000026204F230;
      LOBYTE(v70) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      v33 = v32;
      *v32 = 1;
      LOBYTE(v65) = 1;
      v34 = ControlChannelConnectionError.Message.format(code:)(&v65);
      sub_261F65C08(&v67);
      *(v33 + 8) = v34;
      *(v33 + 24) = 0u;
      *(v33 + 40) = 0u;
      *(v33 + 7) = 0;
      return swift_willThrow();
    }

    v28 = v67;
    v29 = v68;
    v30 = sub_261FB4F90();
    if (v2)
    {

      goto LABEL_10;
    }

    v35 = v31;
    v64 = v28;
    v57 = v30;
    v60 = HIDWORD(v5);
    type metadata accessor for DeviceKeyValueStore();
    v36 = static DeviceKeyValueStore.keyValueStoreContainingStandardKeys()();
    v63 = HIDWORD(v5) & 1;
    v37 = sub_261FA2E5C(BYTE4(v5) & 1);
    v39 = v38;

    if (v60)
    {
      v40 = sub_261FB50BC();
      v42 = v57;
    }

    else
    {

      v40 = 0;
      v42 = 0;
      v35 = 0xE000000000000000;
      v41 = 1;
    }

    *(a1 + 16) = v71;
    *(a1 + 24) = v18;
    *(a1 + 32) = v64;
    *(a1 + 40) = v29;
    *(a1 + 48) = v42;
    *(a1 + 56) = v35;
    *(a1 + 64) = v40;
    *(a1 + 72) = v41 & 1;

    result = sub_261F6ADEC(0, 0xF000000000000000);
    *(a1 + 80) = v37;
    *(a1 + 88) = v39;
    *(a1 + 96) = v63;
    *a1 = v42;
    *(a1 + 8) = v35;
  }

  return result;
}

void sub_261FB5840(unsigned __int8 *a1)
{
  v4 = v1;
  v5 = *a1;
  v6 = a1[1];
  v46 = *(a1 + 1);
  v47 = *(a1 + 2);
  v43 = *(a1 + 4);
  v44 = *(a1 + 3);
  v45 = *(a1 + 5);
  v7 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v8 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v7))
  {
    OUTLINED_FUNCTION_57_1();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v2 = swift_slowAlloc();
    v55[0] = v2;
    *v9 = 136446466;
    sub_261F666D8();
    sub_261F67FE4(v10, v11, v55);
    OUTLINED_FUNCTION_70();

    *(v9 + 4) = v3;
    *(v9 + 12) = 2080;
    LOBYTE(v48) = v5;
    BYTE1(v48) = v6;
    v49 = v46;
    v50 = v47;
    v51 = v44;
    v52 = v43;
    v53 = v45;
    sub_261F6B73C(v46, v47);

    v12 = sub_26203A20C();
    sub_261F67FE4(v12, v13, v55);
    OUTLINED_FUNCTION_70();

    *(v9 + 14) = v43;
    _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Received pairing data from peer: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_1();
  if ((v14 & 0x8000) == 0)
  {

    goto LABEL_9;
  }

  v15 = sub_26203AC0C();

  if ((v15 & 1) == 0)
  {
LABEL_11:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v19 = *(v4 + 168);
    if ((v19 - 1) < 2 || v19 == 4 && *(v4 + 128) == 3 && (OUTLINED_FUNCTION_22_3(*(v4 + 152), *(v4 + 136)), !v23))
    {
      v20 = *(v4 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
      if (v20)
      {
        v21 = v20;
        v22 = sub_26203952C();
        [v21 receivedData_];

        return;
      }

      OUTLINED_FUNCTION_31_2();
      v51 = MEMORY[0x277D837D0];
      v48 = 0xD000000000000035;
      v49 = v26;
      LOBYTE(v52) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v27 = 1;
      v54 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_31_2();
      v51 = MEMORY[0x277D837D0];
      v48 = 0xD000000000000034;
      v49 = v24;
      LOBYTE(v52) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v25 = 2;
      v54 = 2;
    }

    ControlChannelConnectionError.Message.format(code:)(&v54);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(&v48);
    OUTLINED_FUNCTION_7_3();
    v28 = OUTLINED_FUNCTION_72_1();
    sub_261F65D0C(v28);

    return;
  }

LABEL_9:
  v16 = 0;
  v17 = "sThroughLockdown";
  v18 = "setupManualPairing";
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_164();
      break;
    case 2:
      v16 = 0;
      v17 = "setupManualPairing";
      break;
    case 3:
      v16 = 0;
      v17 = "tionLockdownPairing";
      break;
    default:
      break;
  }

  if (v16 && (v17 | 0x8000000000000000) == ((v18 - 32) | 0x8000000000000000))
  {

LABEL_26:
    OUTLINED_FUNCTION_17_2();
    sub_261FB2374();
    return;
  }

  v29 = sub_26203AC0C();

  if (v29)
  {
    goto LABEL_26;
  }

  switch(v6)
  {
    case 3:

      goto LABEL_34;
    default:
      v30 = sub_26203AC0C();

      if (v30)
      {
        goto LABEL_34;
      }

      if (v6 >= 2)
      {

LABEL_34:
        OUTLINED_FUNCTION_17_2();
        sub_261FB2A68();
        return;
      }

      v31 = sub_26203AC0C();

      if (v31)
      {
        goto LABEL_34;
      }

      v32 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_22_1();
      v33 = sub_26203A0FC();
      OUTLINED_FUNCTION_22_1();
      v42 = sub_26203A0FC();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_89_0();
      sub_261FB5DF0(v34, v35, v36, v37, v38, v39, v40, v41, v32, v33, v42);

      break;
  }
}

void sub_261FB5DF0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v770 = a7;
  v809 = a8;
  *&v888 = a3;
  *(&v888 + 1) = a5;
  v849 = a2;
  v1238 = a10;
  v16 = *a1;
  LOBYTE(v17) = sub_26203A47C();
  if (qword_28108B600 == -1)
  {
    goto LABEL_2;
  }

LABEL_133:
  OUTLINED_FUNCTION_0_11();
  swift_once();
LABEL_2:
  v18 = qword_28108B610;
  v1277 = a11;
  if (os_log_type_enabled(qword_28108B610, v17))
  {
    OUTLINED_FUNCTION_42_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_2();
    v19 = swift_slowAlloc();
    *&aBlock[0] = v19;
    *a11 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v20, v21, aBlock);
    OUTLINED_FUNCTION_65();

    *(a11 + 4) = v12;
    _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: _configureNewPairingSession", a11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v1004 = a9;
  v22 = [objc_allocWithZone(MEMORY[0x277D028E8]) init];
  v23 = *(v13 + 232);

  [v22 setDispatchQueue_];
  OUTLINED_FUNCTION_115();
  v965 = a6;
  if (v16)
  {
    if (v24 < 0)
    {

      v27 = 1;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_5();
    v23 = sub_26203AC0C();

    v25 = (v23 & 1) == 0;
    v26 = 1;
  }

  else
  {
    if (v24 < 0)
    {

      v27 = 3;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_5();
    v23 = sub_26203AC0C();

    v25 = (v23 & 1) == 0;
    v26 = 3;
  }

  if (v25)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

LABEL_14:
  [v22 setSessionType_];
  [v22 setFlags_];
  OUTLINED_FUNCTION_63();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_142(v28);
  OUTLINED_FUNCTION_46();
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v22;
  *&aBlock[2] = sub_261FBD378;
  *(&aBlock[2] + 1) = v29;
  *&aBlock[0] = MEMORY[0x277D85DD0];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_261FB8024;
  *(&aBlock[1] + 1) = &block_descriptor_1;
  v30 = _Block_copy(aBlock);
  v31 = v22;

  [v31 setCompletionHandler_];
  _Block_release(v30);
  OUTLINED_FUNCTION_106();
  v32 = swift_allocObject();
  *(v32 + 16) = v16;
  *(v32 + 24) = v31;
  *(v32 + 32) = a4;
  *(v32 + 40) = v13;
  *&aBlock[2] = sub_261FBD380;
  *(&aBlock[2] + 1) = v32;
  *&aBlock[0] = MEMORY[0x277D85DD0];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_261FB83B4;
  *(&aBlock[1] + 1) = &block_descriptor_247;
  v33 = _Block_copy(aBlock);

  a6 = v31;

  v34 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v34, v35);

  [a6 setSendDataHandler_];
  _Block_release(v33);

  v36 = v16;
  v16 = "sThroughLockdown";
  v37 = 0;
  v38 = MEMORY[0x277D84D38];
  v39 = "sThroughLockdown";
  v1082 = v13;
  v1121 = v36;
  v1199 = a6;
  v1043 = v18;
  switch(v36)
  {
    case 1uLL:
      OUTLINED_FUNCTION_115();
      if ((v41 & 0x8000) == 0)
      {
        OUTLINED_FUNCTION_84_1();
        if ((v42 & 0x100) != 0)
        {
          v118 = OUTLINED_FUNCTION_105();
          [a6 setFixedPIN_];

          [a6 setFlags_];
        }

        else if (_RPIsAppleInternal())
        {
          if (qword_27FEF84F0 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          __dst[0] = xmmword_27FEF8E78;
          __dst[1] = *algn_27FEF8E88;
          *&__dst[2] = qword_27FEF8E98;
          sub_261F674BC(__dst, aBlock, &qword_27FEF9150, &qword_26203C980);
          sub_261F83CEC();
          OUTLINED_FUNCTION_67_1();
          sub_261F66E60(__dst, &qword_27FEF9150, &qword_26203C980);
          v38 = MEMORY[0x277D84D38];
          if (v31)
          {
            LOBYTE(v16) = sub_26203A4AC();
            if (os_log_type_enabled(v18, v16))
            {
              OUTLINED_FUNCTION_57_1();
              v43 = swift_slowAlloc();
              OUTLINED_FUNCTION_56();
              *&aBlock[0] = swift_slowAlloc();
              *v43 = 136446466;
              sub_261F666D8();
              OUTLINED_FUNCTION_139(v44, v45, v46, v47, v48, v49, v50, v51, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, a9, v18, v13, v1121, v1160, a6, v1238, a11, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src, *(&__src + 1), v1450, v1451, v1452, v1453, v1454, v1455, v1456, v1457, v1458, v1459, v1460, v1461, v1462, v1463, v1464);
              OUTLINED_FUNCTION_47_1();

              *(v43 + 4) = v13;
              *(v43 + 12) = 2080;
              v52 = OUTLINED_FUNCTION_72();
              *(v43 + 14) = sub_261F67FE4(v52, v53, v54);
              OUTLINED_FUNCTION_183(&dword_261F5B000, v18, v16, "%{public}s: Using fixed pairing PIN from defaults: %s");
              OUTLINED_FUNCTION_179();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              v38 = MEMORY[0x277D84D38];
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
            }

            v55 = OUTLINED_FUNCTION_72();
            sub_261FBD4A0(v55, v56, a6);
            OUTLINED_FUNCTION_84_1();
          }
        }

        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v119;
        v120 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_59_1(v121, v122, MEMORY[0x277D837E0], v123, v124, v125, v126, v127, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v16);
        sub_26203A79C();
        a4 = 0;
        v128 = sub_261FB4F90();
        v1451 = v120;
        *(&__src + 1) = v318;
        v325 = OUTLINED_FUNCTION_48_1(v128, v318, v319, v320, v321, v322, v323, v324, v667, v706, v745, v784, v824, v863, v902, v940, v979, v1018, v1057, v1096, v1135, v1174, v1213, v1252, v1291, v1331, v1369, v1408, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v128);
        sub_261F8D184(v325, v326);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1469 = v1253;
        OUTLINED_FUNCTION_62_1(isUniquelyReferenced_nonNull_native, v328, isUniquelyReferenced_nonNull_native, v329, v330, v331, v332, v333, v668, v707, v746, v785, v825, v864, v903, v941, v980, v1019, v1058, v1097, v1136, v1175, v1214, v1253, v1292, v1332, v1370, v1409, v1433);
        sub_261FA447C();
        a6 = v1469;
        sub_261F67914(aBlock);
        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v334;
        OUTLINED_FUNCTION_59_1(v335, v336, MEMORY[0x277D837E0], v337, v338, v339, v340, v341, v669, v708, v747, v786, v826, v865, v904, v942, v981, v1020, v1059, v1098, v1137, v1176, v1215, v1254, v1293, v1333, v1371, v1410, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v16);
        sub_26203A79C();
        v342 = sub_261FB50BC();
        if (v343)
        {
          OUTLINED_FUNCTION_177();
          if (v350)
          {
            OUTLINED_FUNCTION_180();
            OUTLINED_FUNCTION_81_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_41_1();
            v351 = sub_26203A8EC();
            v359 = OUTLINED_FUNCTION_71_1(v351, v352, v353, v354, v355, v356, v357, v358, v670, v709, v748, v787, v827, v866, v905, v943, v982, v1021, v1060, v1099, v1138, v1177, v1216, v1255, v1294, v1334, v1372, v1411, v1433);
            OUTLINED_FUNCTION_102(v359, v360, v361, v362, v363, v364, v365, v366, v671, v710, v749, v788, v828, v867, v906, v944, v983, v1022, v1061, v1100, v1139, v1178, v1217, v1256, v1295, v1335, v1373, v1412, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
            OUTLINED_FUNCTION_90();
            sub_26203A90C();
          }

          else
          {
            OUTLINED_FUNCTION_83_0();
          }

          v211 = v1021;
          sub_261F67914(aBlock);
          sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
        }

        else
        {
          v1451 = v38;
          v376 = OUTLINED_FUNCTION_48_1(v342, v343, v344, v345, v346, v347, v348, v349, v670, v709, v748, v787, v827, v866, v905, v943, v982, v1021, v1060, v1099, v1138, v1177, v1216, v1255, v1294, v1334, v1372, v1411, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v342);
          v378 = OUTLINED_FUNCTION_185(v376, v377);
          v1469 = a6;
          OUTLINED_FUNCTION_62_1(v378, v379, v378, v380, v381, v382, v383, v384, v673, v712, v751, v790, v830, v869, v908, v946, v985, v1024, v1063, v1102, v1141, v1180, v1219, v1258, v1297, v1337, v1375, v1414, v1433);
          sub_261FA447C();
          a6 = v1469;
          sub_261F67914(aBlock);
          v211 = v1021;
        }

        OUTLINED_FUNCTION_120();
        *(&__src + 1) = v481;
        v482 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_59_1(v483, v484, MEMORY[0x277D837E0], v485, v486, v487, v488, v489, v670, v709, v748, v787, v827, v866, v905, v943, v982, v1021, v1060, v1099, v1138, v1177, v1216, v1255, v1294, v1334, v1372, v1411, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v490);
        sub_26203A79C();
        sub_261FB521C();
        if (v492)
        {
          v1451 = v482;
          *(&__src + 1) = v492;
          v499 = OUTLINED_FUNCTION_48_1(v491, v492, v493, v494, v495, v496, v497, v498, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1188, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v491);
          v501 = OUTLINED_FUNCTION_185(v499, v500);
          v1469 = a6;
          OUTLINED_FUNCTION_62_1(v501, v502, v501, v503, v504, v505, v506, v507, v682, v721, v760, v799, v839, v878, v917, v955, v994, v1033, v1072, v1111, v1150, v1189, v1228, v1267, v1307, v1346, v1384, v1423, v1433);
          sub_261FA447C();
          a6 = v1469;
          sub_261F67914(aBlock);
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_177();
        if (v508)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v211 = v1004;
          v509 = sub_26203A8EC();
          v517 = OUTLINED_FUNCTION_71_1(v509, v510, v511, v512, v513, v514, v515, v516, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1188, v1199, v1238, v1277, v1317, v1355, v1394, v1433);
          OUTLINED_FUNCTION_102(v517, v518, v519, v520, v521, v522, v523, v524, v683, v722, v761, v800, v840, v879, v918, v956, v995, v1034, v1073, v1112, v1151, v1190, v1229, v1268, v1308, v1347, v1385, v1424, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v59 = v40;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      memcpy(__dst, (v13 + 16), 0x61uLL);
      if (!*(&__dst[1] + 1))
      {
        goto LABEL_135;
      }

      v60 = v13;
      v61 = __dst[3];
      v62 = *(&__dst[3] + 1);
      v63 = __dst[4];
      v64 = BYTE8(__dst[4]);
      v810 = (v60 + 528);
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (*(v60 + 528) && (OUTLINED_FUNCTION_82_0(), v65 > 16))
      {
        v67 = *(&__dst[5] + 1);
        v66 = *&__dst[5];

        sub_261F81D84(v66, v67);
        v13 = v1082;
        v68 = a11;
        OUTLINED_FUNCTION_84_1();
        v69 = MEMORY[0x277D84D38];
      }

      else
      {
        OUTLINED_FUNCTION_31_2();
        *&__src = 0xD000000000000012;
        *(&__src + 1) = v70;

        v71 = OUTLINED_FUNCTION_39_1();
        v73 = sub_261F81D84(v71, v72);
        OUTLINED_FUNCTION_59_1(v73, v74, v75, v76, v77, v78, v79, v80, v653, v692, v731, v770, v810, v849, v888, *(&v888 + 1), v965, a9, v1043, v1082, v1121, v1160, v1199, v1238, a11, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
        v81 = sub_26203A79C();
        v1451 = v59;
        *(&__src + 1) = v62;
        v89 = OUTLINED_FUNCTION_48_1(v81, v82, v83, v84, v85, v86, v87, v88, v654, v693, v732, v771, v811, v850, v889, v927, v966, v1005, v1044, v1083, v1122, v1161, v1200, v1239, v1278, v1318, v1356, v1395, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v61);
        sub_261F8D184(v89, v90);

        v91 = swift_isUniquelyReferenced_nonNull_native();
        v1466 = v1279;
        OUTLINED_FUNCTION_62_1(v91, v92, v91, v93, v94, v95, v96, v97, v655, v694, v733, v772, v812, v851, v890, v928, v967, v1006, v1045, v1084, v1123, v1162, v1201, v1240, v1279, v1319, v1357, v1396, v1433);
        sub_261FA447C();
        v68 = v1466;
        sub_261F67914(aBlock);
        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v98;
        OUTLINED_FUNCTION_59_1(v99, v100, v101, v102, v103, v104, v105, v106, v656, v695, v734, v773, v813, v852, v891, v929, v968, v1007, v1046, v1085, v1124, v1163, v1202, v1241, v1280, v1320, v1358, v1397, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, 18);
        v107 = sub_26203A79C();
        if (v64)
        {
          v115 = sub_261F67388();
          v69 = MEMORY[0x277D84D38];
          if (v116)
          {
            v117 = v115;
            swift_isUniquelyReferenced_nonNull_native();
            v1466 = v68;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            sub_26203A8EC();
            v68 = v1466;
            sub_261F67914(*(v1466 + 48) + 40 * v117);
            sub_261F8D184((*(v68 + 56) + 32 * v117), &v1433);
            OUTLINED_FUNCTION_72();
            sub_26203A90C();
          }

          else
          {
            v1433 = 0u;
            v1434 = 0u;
          }

          v18 = v1043;
          v13 = v1082;
          OUTLINED_FUNCTION_84_1();
          sub_261F67914(aBlock);
          sub_261F66E60(&v1433, &qword_27FEF9870, &qword_26203C960);
          goto LABEL_94;
        }

        v69 = MEMORY[0x277D84D38];
        v1451 = MEMORY[0x277D84D38];
        v367 = OUTLINED_FUNCTION_48_1(v107, v108, v109, v110, v111, v112, v113, v114, v653, v692, v731, v770, v810, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v63);
        sub_261F8D184(v367, v368);
        v369 = swift_isUniquelyReferenced_nonNull_native();
        v1466 = v68;
        OUTLINED_FUNCTION_62_1(v369, v370, v369, v371, v372, v373, v374, v375, v672, v711, v750, v789, v829, v868, v907, v945, v984, v1023, v1062, v1101, v1140, v1179, v1218, v1257, v1296, v1336, v1374, v1413, v1433);
        sub_261FA447C();
        v68 = v1466;
        sub_261F67914(aBlock);
        v13 = v1082;
        OUTLINED_FUNCTION_84_1();
      }

      v18 = v1043;
LABEL_94:
      v385 = *v810;
      if (*v810)
      {
        v386 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
        if (*&v385[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] <= 22)
        {
          OUTLINED_FUNCTION_31_2();
          *&__src = v64 + 9;
          *(&__src + 1) = v387;
          v388 = v385;
          OUTLINED_FUNCTION_59_1(v388, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v389, v390, v391, v392, v393, v653, v692, v731, v770, v810, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          v394 = sub_26203A79C();
          v395 = *&v385[v386];
          v1451 = MEMORY[0x277D83B88];
          v403 = OUTLINED_FUNCTION_48_1(v394, v396, v397, v398, v399, v400, v401, v402, v674, v713, v752, v791, v831, v870, v909, v947, v986, v1025, v1064, v1103, v1142, v1181, v1220, v1259, v1298, v1338, v1376, v1415, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v395);
          sub_261F8D184(v403, v404);
          v405 = swift_isUniquelyReferenced_nonNull_native();
          v1466 = v68;
          OUTLINED_FUNCTION_62_1(v405, v406, v405, v407, v408, v409, v410, v411, v675, v714, v753, v792, v832, v871, v910, v948, v987, v1026, v1065, v1104, v1143, v1182, v1221, v1260, v1299, v1339, v1377, v1416, v1433);
          sub_261FA447C();
          v68 = v1466;
          sub_261F67914(aBlock);
        }
      }

      v1300 = v68;
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v412;
      v413 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_59_1(v414, v415, MEMORY[0x277D837E0], v416, v417, v418, v419, v420, v653, v692, v731, v770, v810, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1300, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v64);
      sub_26203A79C();
      v421 = sub_261FB4F90();
      v1451 = v413;
      *(&__src + 1) = v422;
      v429 = OUTLINED_FUNCTION_48_1(v421, v422, v423, v424, v425, v426, v427, v428, v676, v715, v754, v793, v833, v872, v911, v949, v988, v1027, v1066, v1105, v1144, 0, v1222, v1261, v1301, v1340, v1378, v1417, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v421);
      sub_261F8D184(v429, v430);
      v431 = swift_isUniquelyReferenced_nonNull_native();
      v1466 = v1262;
      OUTLINED_FUNCTION_62_1(v431, v432, v431, v433, v434, v435, v436, v437, v677, v716, v755, v794, v834, v873, v912, v950, v989, v1028, v1067, v1106, v1145, v1183, v1223, v1262, v1302, v1341, v1379, v1418, v1433);
      sub_261FA447C();
      v438 = v1466;
      sub_261F67914(aBlock);
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v439;
      OUTLINED_FUNCTION_59_1(v440, v441, MEMORY[0x277D837E0], v442, v443, v444, v445, v446, v678, v717, v756, v795, v835, v874, v913, v951, v990, v1029, v1068, v1107, v1146, v1184, v1224, v1263, v1303, v1342, v1380, v1419, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v64);
      sub_26203A79C();
      v447 = sub_261FB50BC();
      if (v448)
      {
        OUTLINED_FUNCTION_177();
        if (v455)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v456 = sub_26203A8EC();
          v464 = OUTLINED_FUNCTION_71_1(v456, v457, v458, v459, v460, v461, v462, v463, v679, v718, v757, v796, v836, v875, v914, v952, v991, v1030, v1069, v1108, v1147, v1185, v1225, v1264, v1304, v1343, v1381, v1420, v1433);
          OUTLINED_FUNCTION_102(v464, v465, v466, v467, v468, v469, v470, v471, v680, v719, v758, v797, v837, v876, v915, v953, v992, v1031, v1070, v1109, v1148, v1186, v1226, v1265, v1305, v1344, v1382, v1421, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
        }

        else
        {
          OUTLINED_FUNCTION_83_0();
        }

        sub_261F67914(aBlock);
        sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
      }

      else
      {
        v1451 = v69;
        v472 = OUTLINED_FUNCTION_48_1(v447, v448, v449, v450, v451, v452, v453, v454, v679, v718, v757, v796, v836, v875, v914, v952, v991, v1030, v1069, v1108, v1147, v1185, v1225, v1264, v1304, v1343, v1381, v1420, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v447);
        v474 = OUTLINED_FUNCTION_185(v472, v473);
        v1466 = v438;
        OUTLINED_FUNCTION_62_1(v474, v475, v474, v476, v477, v478, v479, v480, v681, v720, v759, v798, v838, v877, v916, v954, v993, v1032, v1071, v1110, v1149, v1187, v1227, v1266, v1306, v1345, v1383, v1422, v1433);
        sub_261FA447C();
        v438 = v1466;
        sub_261F67914(aBlock);
      }

      OUTLINED_FUNCTION_120();
      *(&__src + 1) = v525;
      v526 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_59_1(v527, v528, MEMORY[0x277D837E0], v529, v530, v531, v532, v533, v679, v718, v757, v796, v836, v875, v914, v952, v991, v1030, v1069, v1108, v1147, v1185, v1225, v1264, v1304, v1343, v1381, v1420, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v534);
      sub_26203A79C();
      sub_261FB521C();
      if (v536)
      {
        v1451 = v526;
        *(&__src + 1) = v536;
        v543 = OUTLINED_FUNCTION_48_1(v535, v536, v537, v538, v539, v540, v541, v542, v684, v723, v762, v801, v841, v880, v919, v957, v996, v1035, v1074, v1113, v1152, v1191, v1230, v1269, v1309, v1348, v1386, v1425, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v535);
        v545 = OUTLINED_FUNCTION_185(v543, v544);
        v1466 = v438;
        OUTLINED_FUNCTION_62_1(v545, v546, v545, v547, v548, v549, v550, v551, v685, v724, v763, v802, v842, v881, v920, v958, v997, v1036, v1075, v1114, v1153, v1192, v1231, v1270, v1310, v1349, v1387, v1426, v1433);
        sub_261FA447C();
        v438 = v1466;
        sub_261F67914(aBlock);
      }

      else
      {
        OUTLINED_FUNCTION_177();
        if (v552)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v553 = sub_26203A8EC();
          v561 = OUTLINED_FUNCTION_71_1(v553, v554, v555, v556, v557, v558, v559, v560, v684, v723, v762, v801, v841, v880, v919, v957, v996, v1035, v1074, v1113, v1152, v1191, v1230, v1269, v1309, v1348, v1386, v1425, v1433);
          OUTLINED_FUNCTION_102(v561, v562, v563, v564, v565, v566, v567, v568, v686, v725, v764, v803, v843, v882, v921, v959, v998, v1037, v1076, v1115, v1154, v1193, v1232, v1271, v1311, v1350, v1388, v1427, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
        }

        else
        {
          OUTLINED_FUNCTION_83_0();
        }

        sub_261F67914(aBlock);
        sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
      }

      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v623;
      OUTLINED_FUNCTION_59_1(v624, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v625, v626, v627, v628, v629, v684, v723, v762, v801, v841, v880, v919, v957, v996, v1035, v1074, v1113, v1152, v1191, v1230, v1269, v1309, v1348, v1386, v1425, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v64 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
      }

      v630 = &qword_28108CFD8;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1451 = MEMORY[0x277D83B88];
      v640 = OUTLINED_FUNCTION_48_1(v631, v632, v633, v634, v635, v636, v637, v638, v690, v729, v768, v807, v847, v886, v925, v963, v1002, v1041, v1080, v1119, v1158, v1197, v1236, v1275, v1315, v1354, v1392, v1431, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v639);
      v642 = OUTLINED_FUNCTION_185(v640, v641);
      OUTLINED_FUNCTION_62_1(v642, v643, v642, v644, v645, v646, v647, v648, v691, v730, v769, v808, v848, v887, v926, v964, v1003, v1042, v1081, v1120, v1159, v1198, v1237, v1276, v1316, v438, v1393, v1432, v1433);
      sub_261FA447C();
      v212 = v1317;
      sub_261F67914(aBlock);
      a6 = v1199;
      if (*(v13 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions) != 2 && (*(v13 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions + 1) & 1) != 0)
      {
        v630 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_146_0();

        [v1199 setFlags_];
      }

      OUTLINED_FUNCTION_63();
      v649 = swift_allocObject();
      OUTLINED_FUNCTION_142(v649);
      *&aBlock[2] = sub_261FBD47C;
      *(&aBlock[2] + 1) = v630;
      OUTLINED_FUNCTION_60_1();
      *&aBlock[1] = sub_261FB86BC;
      *(&aBlock[1] + 1) = &block_descriptor_230;
      v650 = _Block_copy(aBlock);

      v651 = OUTLINED_FUNCTION_111();
      sub_261F7D45C(v651, v652);

      [v1199 setPromptForPINHandler_];
      _Block_release(v650);

      sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
      goto LABEL_63;
    case 2uLL:
      v37 = 0;
      v39 = "setupManualPairing";
      goto LABEL_26;
    case 3uLL:
      v39 = "tionLockdownPairing";
      v37 = 1;
      goto LABEL_26;
    default:
LABEL_26:
      if (v37 && (v39 | 0x8000000000000000) == 0x800000026204C5C0)
      {
LABEL_28:

        v57 = a11;
      }

      else
      {
        v58 = sub_26203AC0C();

        v57 = a11;
        if ((v58 & 1) == 0)
        {
          switch(v1121)
          {
            case 2:
              goto LABEL_28;
            default:
              v129 = sub_26203AC0C();

              if (v129)
              {
                goto LABEL_41;
              }

              v1160 = 0;
              v211 = a9;
              v212 = v1238;
              break;
          }

          goto LABEL_64;
        }
      }

LABEL_41:
      OUTLINED_FUNCTION_115();
      if (v130 < 0)
      {
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        memcpy(aBlock, (v13 + 16), 0x61uLL);
        if (!*(&aBlock[1] + 1))
        {
          goto LABEL_135;
        }

        v138 = *(&aBlock[3] + 1);
        v16 = *&aBlock[4];
        v139 = BYTE8(aBlock[4]);
        v140 = *&aBlock[3];
        OUTLINED_FUNCTION_31_2();
        *&v1433 = 0xD000000000000012;
        *(&v1433 + 1) = v141;

        v142 = OUTLINED_FUNCTION_39_1();
        v144 = sub_261F81D84(v142, v143);
        OUTLINED_FUNCTION_156(v144, v145, v146, v147, v148, v149, v150, v151, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, a9, v18, v1082, v1121, v1160, v1199, v1238, a11, v1317, v1355, v1394, v1433);
        v152 = MEMORY[0x277D837D0];
        v153 = sub_26203A79C();
        *(&v1434 + 1) = v152;
        *&v1433 = v140;
        *(&v1433 + 1) = v138;
        OUTLINED_FUNCTION_178(v153, v154, v155, v156, v157, v158, v159, v160, v657, v696, v735, v774, v814, v853, v892, v930, v969, v1008, v1047, v1086, v1125, v1164, v1203, v1242, v1281, v1321, v1359, v1398, v1433);

        swift_isUniquelyReferenced_nonNull_native();
        v1468 = v1282;
        OUTLINED_FUNCTION_158();
        sub_261FA447C();
        v57 = v1468;
        sub_261F67914(&__src);
        OUTLINED_FUNCTION_31_2();
        *(&v1433 + 1) = v161;
        OUTLINED_FUNCTION_156(v162, v163, v164, v165, v166, v167, v168, v169, v658, v697, v736, v775, v815, v854, v893, v931, v970, v1009, v1048, v1087, v1126, v1165, v1204, v1243, v1282, v1322, v1360, v1399, 18);
        v170 = sub_26203A79C();
        if (v139)
        {
          v178 = sub_261F67388();
          if (v179)
          {
            v180 = v178;
            swift_isUniquelyReferenced_nonNull_native();
            *&__dst[0] = v57;
            v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_176(v181);
            v57 = *&__dst[0];
            sub_261F67914(*(*&__dst[0] + 48) + 40 * v180);
            sub_261F8D184((*(v57 + 56) + 32 * v180), &v1433);
            sub_26203A90C();
          }

          else
          {
            v1433 = 0u;
            v1434 = 0u;
          }

          v13 = v1088;
          a6 = v1205;
          v182 = v1244;
          OUTLINED_FUNCTION_84_1();
          sub_261F67914(&__src);
          sub_261F66E60(&v1433, &qword_27FEF9870, &qword_26203C960);
          v18 = v1049;
        }

        else
        {
          *(&v1434 + 1) = MEMORY[0x277D84D38];
          *&v1433 = v16;
          OUTLINED_FUNCTION_178(v170, v171, v172, v173, v174, v175, v176, v177, v659, v698, v737, v776, v816, v855, v894, v932, v971, v1010, v1049, v1088, v1127, v1166, v1205, v1244, v1283, v1323, v1361, v1400, v1433);
          swift_isUniquelyReferenced_nonNull_native();
          v1468 = v57;
          OUTLINED_FUNCTION_158();
          sub_261FA447C();
          v57 = v1468;
          sub_261F67914(&__src);
          v18 = v1049;
          v13 = v1088;
          a6 = v1205;
          v182 = v1244;
          OUTLINED_FUNCTION_84_1();
        }

        OUTLINED_FUNCTION_120();
        *(&v1433 + 1) = v183;
        v184 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_156(v185, v186, MEMORY[0x277D837E0], v187, v188, v189, v190, v191, v659, v698, v737, v776, v816, v855, v894, v932, v971, v1010, v1049, v1088, v1127, v1166, v1205, v1244, v1283, v1323, v1361, v1400, v192);
        sub_26203A79C();
        sub_261FB521C();
        if (v194)
        {
          *(&v1434 + 1) = v184;
          *&v1433 = v193;
          *(&v1433 + 1) = v194;
          OUTLINED_FUNCTION_178(v193, v194, v195, v196, v197, v198, v199, v200, v660, v699, v738, v777, v817, v856, v895, v933, v972, v1011, v1050, v1089, v1128, v1167, v1206, v1245, v1284, v1324, v1362, v1401, v1433);
          swift_isUniquelyReferenced_nonNull_native();
          v1468 = v182;
          OUTLINED_FUNCTION_158();
          sub_261FA447C();
          v182 = v1468;
          v201 = sub_261F67914(&__src);
        }

        else
        {
          v207 = sub_261F67388();
          if (v208)
          {
            v209 = v207;
            swift_isUniquelyReferenced_nonNull_native();
            *&__dst[0] = v182;
            v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_176(v210);
            v182 = *&__dst[0];
            sub_261F67914(*(*&__dst[0] + 48) + 40 * v209);
            sub_261F8D184((*(v182 + 56) + 32 * v209), &v1433);
            OUTLINED_FUNCTION_72();
            sub_26203A90C();
          }

          else
          {
            v1433 = 0u;
            v1434 = 0u;
          }

          sub_261F67914(&__src);
          v201 = sub_261F66E60(&v1433, &qword_27FEF9870, &qword_26203C960);
        }

        *(&v1433 + 1) = 0x800000026204F450;
        OUTLINED_FUNCTION_156(v201, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v202, v203, v204, v205, v206, v660, v699, v738, v777, v817, v856, v895, v933, v972, v1011, v1050, v1089, v1128, v1167, v1206, v1245, v1284, v1324, v1362, v1401, v16 + 9);
        sub_26203A79C();
        if (qword_28108CFD0 != -1)
        {
          OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
        }

        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        OUTLINED_FUNCTION_52_1();
        *(&v1434 + 1) = MEMORY[0x277D83B88];
        *&v1433 = v213;
        OUTLINED_FUNCTION_178(v214, v215, v216, v217, v218, v219, v220, v221, v661, v700, v739, v778, v818, v857, v896, v934, v973, v1012, v1051, v1090, v1129, v1168, v1207, v1246, v1285, v1325, v1363, v1402, v1433);
        swift_isUniquelyReferenced_nonNull_native();
        v1466 = v182;
        OUTLINED_FUNCTION_158();
        sub_261FA447C();
        v131 = v1466;
        sub_261F67914(&__src);
        v222 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_146_0();

        v132 = sub_261F66E60(aBlock, &qword_27FEF9978, &qword_262045D80);
      }

      else
      {
        v131 = v1238;
        OUTLINED_FUNCTION_84_1();
      }

      *(&__src + 1) = 0x800000026204F450;
      OUTLINED_FUNCTION_59_1(v132, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v133, v134, v135, v136, v137, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v57, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v16 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1451 = MEMORY[0x277D83B88];
      v232 = OUTLINED_FUNCTION_48_1(v223, v224, v225, v226, v227, v228, v229, v230, v662, v701, v740, v779, v819, v858, v897, v935, v974, v1013, v1052, v1091, v1130, v1169, v1208, v1247, v1286, v1326, v1364, v1403, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v231);
      sub_261F8D184(v232, v233);
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v1466 = v131;
      OUTLINED_FUNCTION_62_1(v234, v235, v234, v236, v237, v238, v239, v240, v663, v702, v741, v780, v820, v859, v898, v936, v975, v1014, v1053, v1092, v1131, v1170, v1209, v1248, v1287, v1327, v1365, v1404, v1433);
      sub_261FA447C();
      v212 = v1466;
      sub_261F67914(aBlock);
      v241 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_146_0();

      [a6 setFlags_];
      v1160 = 0;
LABEL_63:
      v211 = v1004;
LABEL_64:
      v16 = v211[2];
      if (!v16)
      {
        goto LABEL_76;
      }

      v1238 = v212;
      v242 = sub_26203A0FC();
      a4 = v211 + 5;
      v18 = 1;
      v17 = &qword_27FEF98E0;
      v211 = &qword_26203F6C8;
      break;
  }

  do
  {
    v243 = *a4;
    *&__src = *(a4 - 1);
    *(&__src + 1) = v243;

    OUTLINED_FUNCTION_59_1(v244, v245, v246, v247, v248, v249, v250, v251, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
    v252 = sub_26203A79C();
    v1451 = MEMORY[0x277D839B0];
    v260 = OUTLINED_FUNCTION_48_1(v252, v253, v254, v255, v256, v257, v258, v259, v664, v703, v742, v781, v821, v860, v899, v937, v976, v1015, v1054, v1093, v1132, v1171, v1210, v1249, v1288, v1328, v1366, v1405, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, 1);
    sub_261F8D184(v260, v261);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v1470 = v242;
    v262 = sub_261F67388();
    if (__OFADD__(v242[2], (v263 & 1) == 0))
    {
      __break(1u);
LABEL_114:
      OUTLINED_FUNCTION_83_0();
LABEL_115:
      sub_261F67914(aBlock);
      sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
LABEL_116:
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v569;
      OUTLINED_FUNCTION_59_1(v570, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v571, v572, v573, v574, v575, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, a4, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v16 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6(&qword_28108CFD0);
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1451 = MEMORY[0x277D83B88];
      v585 = OUTLINED_FUNCTION_48_1(v576, v577, v578, v579, v580, v581, v582, v583, v687, v726, v765, v804, v844, v883, v922, v960, v999, v1038, v1077, v1116, v1155, v1194, v1233, v1272, v1312, v1351, v1389, v1428, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v584);
      v587 = OUTLINED_FUNCTION_185(v585, v586);
      v1468 = a6;
      OUTLINED_FUNCTION_62_1(v587, v588, v587, v589, v590, v591, v592, v593, v688, v727, v766, v805, v845, v884, v923, v961, v1000, v1039, v1078, v1117, v1156, v1195, v1234, v1273, v1313, v1352, v1390, v1429, v1433);
      sub_261FA447C();
      v212 = v1468;
      sub_261F67914(aBlock);
      a6 = v1199;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      sub_261F674BC(v13 + 320, aBlock, &qword_27FEF99A0, &qword_26203F7D8);
      if (*(&aBlock[1] + 1))
      {
        sub_261F797BC(aBlock, &__src);
        v594 = v1452;
        __swift_project_boxed_opaque_existential_0Tm(&__src, v1451);
        v595 = OUTLINED_FUNCTION_47_1();
        if (v596(v595, v594))
        {
          [v1199 setFlags_];
        }

        else
        {
          OUTLINED_FUNCTION_63();
          v597 = swift_allocObject();
          v598 = swift_weakInit();
          v606 = OUTLINED_FUNCTION_48_1(v598, v599, v600, v601, v602, v603, v604, v605, v653, v692, v731, v770, v809, v849, v888, *(&v888 + 1), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          sub_261F79740(v606, v607);
          v608 = swift_allocObject();
          v608[2] = v597;
          sub_261F797BC(&v1433, (v608 + 3));
          v608[8] = v806;
          v608[9] = v846;
          *&aBlock[2] = sub_261FBD484;
          *(&aBlock[2] + 1) = v608;
          *&aBlock[0] = MEMORY[0x277D85DD0];
          *(&aBlock[0] + 1) = 1107296256;
          *&aBlock[1] = sub_261FB8538;
          *(&aBlock[1] + 1) = &block_descriptor_244;
          v609 = _Block_copy(aBlock);

          sub_261F7D45C(sub_261FBD484, v608);
          a6 = v1235;

          [v1235 setShowPINHandlerEx_];
          _Block_release(v609);

          v211 = v1040;

          OUTLINED_FUNCTION_63();
          v610 = swift_allocObject();
          v611 = OUTLINED_FUNCTION_142(v610);
          v619 = OUTLINED_FUNCTION_48_1(v611, v612, v613, v614, v615, v616, v617, v618, v689, v728, v767, v806, v846, v885, v924, v962, v1001, v1040, v1079, v1118, v1157, v1196, v1235, v1274, v1314, v1353, v1391, v1430, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src);
          sub_261F79740(v619, v620);
          v621 = swift_allocObject();
          *(v621 + 16) = sub_261FBD484;
          sub_261F797BC(&v1433, v621 + 24);
          *&aBlock[2] = sub_261FBD494;
          *(&aBlock[2] + 1) = v621;
          OUTLINED_FUNCTION_60_1();
          *&aBlock[1] = sub_261F78F64;
          *(&aBlock[1] + 1) = &block_descriptor_241;
          v622 = _Block_copy(aBlock);

          [a6 setHidePINHandler_];
          _Block_release(v622);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&__src);
      }

      else
      {
        sub_261F66E60(aBlock, &qword_27FEF99A0, &qword_26203F7D8);
      }

      goto LABEL_64;
    }

    v13 = v262;
    a6 = v263;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
    if (sub_26203A8EC())
    {
      v264 = sub_261F67388();
      if ((a6 & 1) != (v265 & 1))
      {
        sub_26203AC9C();
        __break(1u);
LABEL_135:
        OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_98();
        sub_26203A91C();
        __break(1u);
        return;
      }

      v13 = v264;
    }

    v242 = v1470;
    if (a6)
    {
      v266 = (v1470[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v266);
      sub_261F8D184(&v1433, v266);
      sub_261F67914(aBlock);
    }

    else
    {
      v1470[(v13 >> 6) + 8] |= 1 << v13;
      sub_261F67C78(aBlock, v242[6] + 40 * v13);
      sub_261F8D184(&v1433, (v242[7] + 32 * v13));
      sub_261F67914(aBlock);
      v267 = v242[2];
      v268 = __OFADD__(v267, 1);
      v269 = v267 + 1;
      if (v268)
      {
        __break(1u);
        goto LABEL_133;
      }

      v242[2] = v269;
    }

    a4 += 2;
    --v16;
  }

  while (v16);
  a6 = v1199;
  sub_261FBD390(v242, v1199, &selRef_setAcl_);
  v18 = v1043;
  v13 = v1082;
  v212 = v1238;
LABEL_76:
  sub_261FBD390(v212, a6, &selRef_setAdditionalSelfInfo_);
  sub_261FBD390(v1277, a6, &selRef_setAdditionalPeerInfo_);
  v270 = a6;
  v271 = a6;
  v272 = v270;
  sub_261F6A504(v271);
  v273 = v1121;
  *&aBlock[0] = v1121;
  *(&aBlock[0] + 1) = v849;
  aBlock[1] = v888;
  *&aBlock[2] = v965;
  BYTE8(aBlock[2]) = 0;
  sub_261F7D45C(v849, v888);
  v274 = OUTLINED_FUNCTION_111();
  sub_261F81D84(v274, v275);
  sub_261F68720(aBlock, v276, v277, v278, v279, v280, v281, v282, v653, v692, v731, v770, v809, v849, v888, SDWORD1(v888), SBYTE8(v888), v965, v1004, v1043, v1082, v1121, v1160, v1199, v1238, v1277, v1317, v1355, v1394, v1433, *(&v1433 + 1));
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  sub_261F79740(v13 + 400, aBlock);
  v283 = *(&aBlock[1] + 1);
  v284 = *&aBlock[2];
  __swift_project_boxed_opaque_existential_0Tm(aBlock, *(&aBlock[1] + 1));
  v285 = v1172;
  v286 = (*(v284 + 56))(v283, v284);
  if (v1172)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_26203A48C();
    OUTLINED_FUNCTION_127_0();
    if (os_log_type_enabled(v18, v287))
    {
      OUTLINED_FUNCTION_57_1();
      v288 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      *&aBlock[0] = swift_slowAlloc();
      *v288 = 136446466;
      sub_261F666D8();
      OUTLINED_FUNCTION_139(v289, v290, v291, v292, v293, v294, v295, v296, v665, v704, v743, v782, v822, v861, v900, v938, v977, v1016, v1055, v1094, v1133, v1172, v1211, v1250, v1289, v1329, v1367, v1406, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src, *(&__src + 1), v1450, v1451, v1452, v1453, v1454, v1455, v1456, v1457, v1458, v1459, v1460, v1461, v1462, v1463, v1464);
      OUTLINED_FUNCTION_47_1();

      OUTLINED_FUNCTION_123_0();
      *&v1433 = v285;
      v297 = v285;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v298 = sub_26203A20C();
      OUTLINED_FUNCTION_139(v298, v299, v300, v301, v302, v303, v304, v305, v666, v705, v744, v783, v823, v862, v901, v939, v978, v1017, v1056, v1095, v1134, v1173, v1212, v1251, v1290, v1330, v1368, v1407, v1433, *(&v1433 + 1), v1434, *(&v1434 + 1), v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, __src, *(&__src + 1), v1450, v1451, v1452, v1453, v1454, v1455, v1456, v1457, v1458, v1459, v1460, v1461, v1462, v1463, v1464);
      OUTLINED_FUNCTION_47_1();

      *(v288 + 14) = v13;
      OUTLINED_FUNCTION_170(&dword_261F5B000, v306, v307, "%{public}s: Failed to query number of paired peers: %s");
      OUTLINED_FUNCTION_179();
      v308 = OUTLINED_FUNCTION_9_2();
      MEMORY[0x266724180](v308);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

LABEL_80:
    sub_261F79740(v13 + 400, aBlock);
    OUTLINED_FUNCTION_46();
    v309 = swift_allocObject();
    *(v309 + 16) = v13;
    *(v309 + 24) = v272;
    v310 = v272;

    CUPairingSession.configure(customDataStorageProvider:completion:)(aBlock, sub_261FBD454, v309);

    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  else
  {
    v311 = v286;
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    if (v273 || v311)
    {
      goto LABEL_80;
    }

    v312 = sub_26203A4AC();
    if (os_log_type_enabled(v18, v312))
    {
      OUTLINED_FUNCTION_42_1();
      v313 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v314 = swift_slowAlloc();
      *&aBlock[0] = v314;
      *v313 = 136446210;
      sub_261F666D8();
      v317 = sub_261F67FE4(v315, v316, aBlock);

      *(v313 + 4) = v317;
      _os_log_impl(&dword_261F5B000, v18, v312, "%{public}s: Not paired with anyone, failing pairVerify early.", v313, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v314);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    CUPairingSession.configureFailing()();
    sub_261FB871C(v272);
  }
}