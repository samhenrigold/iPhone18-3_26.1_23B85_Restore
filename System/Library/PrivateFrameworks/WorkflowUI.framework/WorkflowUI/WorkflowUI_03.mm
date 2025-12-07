BOOL sub_274765EF0(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2);
  v6 = sub_2749FDE44();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_274769D78(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_274765FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_89();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v30;
  v39 = v38;
  v41 = v40;
  v42 = *v37;
  sub_2749FDDF4();
  v43 = v39 & 1;
  MEMORY[0x277C5FB60](v43);
  v44 = sub_2749FDE44();
  v45 = ~(-1 << *(v42 + 32));
  while (1)
  {
    v46 = v44 & v45;
    if (((1 << (v44 & v45)) & *(v42 + 56 + (((v44 & v45) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v37;
      sub_274769954(v43, v46, isUniquelyReferenced_nonNull_native, v36, v34, v32);
      *v37 = v48;
      goto LABEL_7;
    }

    if (*(*(v42 + 48) + v46) == v43)
    {
      break;
    }

    v44 = v46 + 1;
  }

  LOBYTE(v43) = *(*(v42 + 48) + v46);
LABEL_7:
  *v41 = v43;
  OUTLINED_FUNCTION_88();
}

BOOL sub_2747660E4(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v4 = type metadata accessor for WFAddToHomeScreenItem(0);
  v16[2] = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v2;
  v7 = *v2;
  sub_2749FDDF4();
  sub_27495791C(v17);
  v8 = sub_2749FDE44();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v13 = v16[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2747231DC();
      v17[0] = *v13;
      sub_274769EB0(v6, v10, isUniquelyReferenced_nonNull_native);
      *v13 = v17[0];
      sub_274722708();
      return v11 == 0;
    }

    sub_2747231DC();
    v12 = sub_2749571B4(v6, a2);
    sub_274722608();
    if (v12)
    {
      break;
    }

    v8 = v10 + 1;
  }

  sub_274722608();
  sub_2747231DC();
  return v11 == 0;
}

BOOL sub_274766304(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2749FDDF4();
  sub_2749FCE24();
  v8 = sub_2749FDE44();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2749FDCC4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_27476A108(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_274766450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_2749FDDF4();
  sub_2747BD52C(v32, a2, a3, a4);
  v9 = sub_2749FDE44();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v29;
    sub_274772E38(a2, a3, a4);
    sub_27476A270(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v29 = v32[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v8 + 48);
  v14 = a4 == 2;
  if (a3 | a2)
  {
    v14 = 0;
  }

  v30 = v14;
  v16 = a2 != 1 || a3 != 0 || a4 != 2;
  while (1)
  {
    v17 = (v13 + 24 * v11);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 16);
    if (!v20)
    {
      break;
    }

    if (v20 == 1)
    {
      if (a4 == 1 && v18 == a2)
      {
        goto LABEL_32;
      }
    }

    else if (v18 | v19)
    {
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else if (v30)
    {
      goto LABEL_32;
    }

LABEL_29:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (a4)
  {
    goto LABEL_29;
  }

  v22 = v18 == a2 && v19 == a3;
  if (!v22 && (sub_2749FDCC4() & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_274772E24(a2, a3, 0);
LABEL_32:
  v25 = *(v8 + 48) + 24 * v11;
  v26 = *v25;
  v27 = *(v25 + 8);
  *a1 = *v25;
  *(a1 + 8) = v27;
  v28 = *(v25 + 16);
  *(a1 + 16) = v28;
  sub_274772E38(v26, v27, v28);
  return 0;
}

uint64_t sub_274766664(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F8, &unk_274A0FB10);
    v2 = sub_2749FD904();
    v14 = v2;
    sub_2749FD804();
    while (1)
    {
      if (!sub_2749FD874())
      {

        return v2;
      }

      type metadata accessor for WFGridViewCell();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_274731854();
      }

      v2 = v14;
      result = sub_2749FD5F4();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_27476683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_136();
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_125();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v14 = sub_2749FD904();
    v25 = v14;
    sub_2749FD804();
    while (1)
    {
      if (!sub_2749FD874())
      {

        goto LABEL_18;
      }

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
      OUTLINED_FUNCTION_103(v15, v16);
      if (v14[3] <= v14[2])
      {
        sub_274731854();
        v14 = v25;
      }

      sub_2749FD5F4();
      OUTLINED_FUNCTION_75();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_117();
LABEL_15:
      OUTLINED_FUNCTION_74_0(v18);
      *(v14[6] + 8 * v24) = a11;
      OUTLINED_FUNCTION_40_1();
    }

    OUTLINED_FUNCTION_115();
    while (++v20 != v22 || (v21 & 1) == 0)
    {
      v23 = v20 == v22;
      if (v20 == v22)
      {
        v20 = 0;
      }

      v21 |= v23;
      if (*(v19 + 8 * v20) != -1)
      {
        OUTLINED_FUNCTION_113();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_138();
  }
}

void sub_2747669A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_136();
  if (v15)
  {
    v16 = v14;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v18 = sub_2749FD904();
    v29 = v18;
    sub_2749FD804();
    while (1)
    {
      if (!sub_2749FD874())
      {

        goto LABEL_18;
      }

      v19 = sub_27471CF08(0, v17, v16);
      OUTLINED_FUNCTION_103(v19, v20);
      if (*(v18 + 24) <= *(v18 + 16))
      {
        sub_274731854();
      }

      v18 = v29;
      sub_2749FD5F4();
      OUTLINED_FUNCTION_75();
      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_117();
LABEL_15:
      OUTLINED_FUNCTION_74_0(v22);
      *(*(v29 + 48) + 8 * v28) = a11;
      ++*(v29 + 16);
    }

    OUTLINED_FUNCTION_115();
    while (++v24 != v26 || (v25 & 1) == 0)
    {
      v27 = v24 == v26;
      if (v24 == v26)
      {
        v24 = 0;
      }

      v25 |= v27;
      if (*(v23 + 8 * v24) != -1)
      {
        OUTLINED_FUNCTION_113();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_138();
  }
}

uint64_t sub_274766B10()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AA0, &qword_274A0FCA0);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_27476A4B0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v15);
    result = sub_2749FDE44();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274766D5C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BA0, &unk_274A0FD80);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v26 = v0;
  v27 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_27476A4B0(0, (v25 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FDDF4();
    sub_2749FCE24();
    v16 = sub_2749FDE44();

    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    v2 = v27;
    if (!v9)
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
    v24 = *(v11 + 8 * v19);
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

uint64_t sub_274766FD4()
{
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B90, &qword_274A0FD78);
  result = sub_2749FD8F4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v1 = v5;
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
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      sub_27476A4B0(0, (v23 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v23;
    }

    v1 = v0;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v10 &= v10 - 1;
LABEL_12:
    sub_274722708();
    sub_2749FDDF4();
    RootNavigationDestination.hash(into:)(v24);
    result = sub_2749FDE44();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    result = sub_274722708();
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *(v12 + 8 * v17);
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2747672D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678D0, &qword_274A0FAE8);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_27476A4B0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 2 * (v12 | (v5 << 6)));
    sub_2749FDDF4();
    sub_2749FDE24();
    result = sub_2749FDE44();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 2 * v19) = v15;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274767524()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967938, &qword_274A0FB50);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_33:

    *v1 = v4;
    return result;
  }

  v30 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      sub_27476A4B0(0, (v29 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_2749FDDF4();
    switch(v18)
    {
      case 1:
        MEMORY[0x277C5FB60](1);
        sub_2749FCE24();
        break;
      case 2:
        v19 = 2;
        goto LABEL_15;
      case 3:
        MEMORY[0x277C5FB60](3);
        break;
      default:
        v19 = 0;
LABEL_15:
        MEMORY[0x277C5FB60](v19);
        sub_2749FD614();
        break;
    }

    result = sub_2749FDE44();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v4 + 48) + 24 * v23;
    *v28 = v16;
    *(v28 + 8) = v17;
    *(v28 + 16) = v18;
    ++*(v4 + 16);
    v2 = v30;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v11 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_274767824()
{
  v1 = v0;
  v2 = type metadata accessor for SmartShortcutPickerEntry(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A40, &unk_274A0FC40);
  result = sub_2749FD8F4();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_59:

    *v1 = v8;
    return result;
  }

  v58 = v0;
  v59 = v6;
  v9 = 0;
  v10 = *(v6 + 56);
  v62 = (v6 + 56);
  v63 = v5;
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  v64 = v3;
  v65 = result + 56;
  v66 = v14;
  v61 = result;
  if (!v13)
  {
LABEL_7:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v62[v9];
      ++v16;
      if (v17)
      {
        v68 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v56 = 1 << *(v6 + 32);
    if (v56 >= 64)
    {
      sub_27476A4B0(0, (v56 + 63) >> 6, v62);
    }

    else
    {
      *v62 = -1 << v56;
    }

    v1 = v58;
    *(v6 + 16) = 0;
    goto LABEL_59;
  }

  while (2)
  {
    v68 = (v13 - 1) & v13;
LABEL_12:
    v67 = *(v3 + 72);
    sub_274722708();
    sub_2749FDDF4();
    memcpy(v76, v5, 0xB9uLL);
    v18 = sub_274772AD0(v76);
    v19 = sub_274721C98(v76);
    v20 = v19;
    switch(v18)
    {
      case 1:
        MEMORY[0x277C5FB60](1);
        MEMORY[0x277C5FB60](0);
        goto LABEL_43;
      case 2:
        v21 = *v19;
        MEMORY[0x277C5FB60](2);
        v22 = [v21 identifier];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

        v14 = v66;
        sub_2749FCE24();
        v15 = v65;

        goto LABEL_43;
      case 3:
        v60 = v9;
        v23 = *(v19 + 16);
        v24 = *(v19 + 24);
        v25 = *(v19 + 40);
        v26 = *(v19 + 48);
        MEMORY[0x277C5FB60](3);
        if (v26)
        {
          MEMORY[0x277C5FB60](1);
          sub_2749FD614();
          sub_2749FDE14();
          if (v23)
          {
            sub_2749FCE24();
          }

          v8 = v61;
        }

        else
        {
          MEMORY[0x277C5FB60](0);
          sub_2749FCE24();
          sub_2749FDE14();
          if (v24)
          {
            sub_2749FCE24();
          }

          v8 = v61;
          sub_2749FDE14();
          if (v25)
          {
            sub_2749FCE24();
          }
        }

        memcpy(v74, (v20 + 56), 0x81uLL);
        v27 = sub_274772C3C(v74);
        if (!v27)
        {
          CGSizeMake();
          v34 = *(v33 + 16);
          MEMORY[0x277C5FB60](0);
          sub_2749FCE24();
          v35 = *(v34 + 16);
          MEMORY[0x277C5FB60](v35);
          if (v35)
          {
            v36 = v34 + 112;
            do
            {
              v37 = *(v36 - 80);
              v71 = v35;
              v72 = v37;
              v38 = *(v36 - 72);
              v39 = *(v36 - 48);
              v40 = *(v36 - 40);
              v41 = *(v36 - 32);
              v42 = *(v36 - 24);
              v43 = *(v36 - 16);
              v44 = *(v36 - 8);
              v69 = *(v36 - 64);
              v70 = v44;

              v73 = v39;
              sub_274772C44(v39, v40, v41, v42, v43);

              v72 = v38;
              sub_2749FCE24();
              sub_2749FCE24();
              sub_2749FCE24();
              if (v40)
              {
                MEMORY[0x277C5FB60]([v43 hash]);
              }

              v36 += 88;
              sub_2749FCE24();

              sub_274772C94(v73, v40, v41, v42, v43);

              v35 = v71 - 1;
            }

            while (v71 != 1);
            v6 = v59;
            v8 = v61;
            goto LABEL_40;
          }

LABEL_39:
          v6 = v59;
LABEL_40:
          v5 = v63;
          v3 = v64;
LABEL_41:
          v9 = v60;
          goto LABEL_42;
        }

        if (v27 != 1)
        {
          CGSizeMake();
          v46 = *(v45 + 48);
          MEMORY[0x277C5FB60](2);
          sub_2749FCE24();
          sub_2749FCE24();
          if (v46)
          {
            v6 = v59;
            v5 = v63;
            v3 = v64;
            if (v46 == 1)
            {
              MEMORY[0x277C5FB60](1);
              sub_2749FD614();
            }

            else
            {
              MEMORY[0x277C5FB60](2);
              sub_2749FCE24();
            }

            goto LABEL_41;
          }

          MEMORY[0x277C5FB60](0);
          sub_2749FCE24();
          goto LABEL_39;
        }

        CGSizeMake();
        v29 = v28;
        v30 = v28[6];
        v70 = v28[7];
        v71 = v30;
        v31 = v28[9];
        v32 = v28[13];
        v69 = v28[12];
        v72 = v28[14];
        v73 = v32;
        MEMORY[0x277C5FB60](1);
        sub_2749FCE24();
        sub_2749FCE24();
        sub_2749FCE24();
        sub_2749FCE24();
        sub_2749FCE24();
        if (v31)
        {
          MEMORY[0x277C5FB60]([v69 hash]);
        }

        v6 = v59;
        v9 = v60;
        v8 = v61;
        v5 = v63;
        v3 = v64;
        v47 = v29[15];
        sub_2749FCE24();
        sub_27478A14C(&v75, v47);
LABEL_42:
        v15 = v65;
        v14 = v66;
LABEL_43:
        result = sub_2749FDE44();
        v48 = -1 << *(v8 + 32);
        v49 = result & ~v48;
        v50 = v49 >> 6;
        if (((-1 << v49) & ~*(v15 + 8 * (v49 >> 6))) != 0)
        {
          v51 = __clz(__rbit64((-1 << v49) & ~*(v15 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
          *(v15 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
          result = sub_274722708();
          ++*(v8 + 16);
          v13 = v68;
          if (!v68)
          {
            goto LABEL_7;
          }

          continue;
        }

        v52 = 0;
        v53 = (63 - v48) >> 6;
        while (++v50 != v53 || (v52 & 1) == 0)
        {
          v54 = v50 == v53;
          if (v50 == v53)
          {
            v50 = 0;
          }

          v52 |= v54;
          v55 = *(v15 + 8 * v50);
          if (v55 != -1)
          {
            v51 = __clz(__rbit64(~v55)) + (v50 << 6);
            goto LABEL_52;
          }
        }

LABEL_61:
        __break(1u);
        return result;
      default:
        MEMORY[0x277C5FB60](0);
        v15 = v65;
        v14 = v66;
        sub_2749FCE24();
        v5 = v63;
        v3 = v64;
        sub_2749FCE24();
        goto LABEL_43;
    }
  }
}

uint64_t sub_2747680AC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967978, &unk_274A0FB90);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_27476A4B0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v15);
    result = sub_2749FDE44();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
  return result;
}

void sub_2747682F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_19_1(v34, v35, v36);
  OUTLINED_FUNCTION_26();
  sub_2749FD8F4();
  OUTLINED_FUNCTION_127();
  if (!v37)
  {
LABEL_23:

    *v30 = v32;
    OUTLINED_FUNCTION_88();
    return;
  }

  v52 = v30;
  v38 = 0;
  v39 = v31 + 7;
  OUTLINED_FUNCTION_16_3();
  if (!v30)
  {
LABEL_4:
    v41 = v38;
    while (1)
    {
      v38 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v38 >= v33)
      {
        break;
      }

      ++v41;
      if (v39[v38])
      {
        OUTLINED_FUNCTION_21();
        v30 = (v43 & v42);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_54_0();
    if (v50 >= 64)
    {
      OUTLINED_FUNCTION_140(v50);
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
      *v39 = v51;
    }

    v30 = v52;
    v31[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_33_2();
LABEL_9:
    v44 = *(v31[6] + (v40 | (v38 << 6)));
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v44);
    sub_2749FDE44();
    OUTLINED_FUNCTION_22_1();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_17:
    OUTLINED_FUNCTION_18_5(v46);
    *(v49 + v48) = v44;
    OUTLINED_FUNCTION_40_1();
    if (!v30)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_83();
    if (!v45)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_274768440()
{
  v1 = sub_2749F9EB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WFAddToHomeScreenItem(0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v46 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v8;
  v43 = v0;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AF8, &qword_274A0FCF8);
  result = sub_2749FD8F4();
  v11 = result;
  v47 = v9;
  if (!*(v9 + 16))
  {
LABEL_37:

    *v43 = v11;
    return result;
  }

  v41 = v4;
  v42 = v1;
  v12 = 0;
  v14 = (v47 + 56);
  v13 = *(v47 + 56);
  v15 = 1 << *(v47 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v39 = (v2 + 8);
  v40 = (v2 + 32);
  v19 = result + 56;
  v20 = v46;
  if ((v16 & v13) == 0)
  {
LABEL_7:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v12 >= v18)
      {
        break;
      }

      v22 = v14[v12];
      ++v21;
      if (v22)
      {
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    v38 = 1 << *(v47 + 32);
    if (v38 >= 64)
    {
      sub_27476A4B0(0, (v38 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v47 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v17 &= v17 - 1;
LABEL_12:
    sub_274722708();
    sub_2749FDDF4();
    sub_2747231DC();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        MEMORY[0x277C5FB60](3);
        v20 = v46;
        sub_2749FCE24();

        break;
      case 2u:
        v25 = v41;
        v26 = v20;
        v27 = v42;
        (*v40)(v41, v26, v42);
        MEMORY[0x277C5FB60](4);
        sub_274720E30(&qword_280967AF0, 255, MEMORY[0x277D7D388]);
        sub_2749FCD04();
        v28 = v27;
        v20 = v46;
        (*v39)(v25, v28);
        break;
      case 3u:
        v29 = *v46;
        MEMORY[0x277C5FB60](6);
        v24 = v29;
        v20 = v46;
        goto LABEL_20;
      case 4u:
        v24 = 0;
        goto LABEL_20;
      case 5u:
        v24 = 1;
        goto LABEL_20;
      case 6u:
        v24 = 5;
LABEL_20:
        MEMORY[0x277C5FB60](v24);
        break;
      default:
        v23 = *v46;
        MEMORY[0x277C5FB60](2);
        sub_2749FD614();

        v20 = v46;
        break;
    }

    result = sub_2749FDE44();
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_274722708();
    ++*(v11 + 16);
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v19 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_30;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_274768994()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967920, &qword_274A0FB38);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_27476A4B0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_2749FDDF4();
    sub_2749FCE24();
    result = sub_2749FDE44();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274768BF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B60, &qword_274A0FD50);
  result = sub_2749FD8F4();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_32:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_27476A4B0(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_2749FDDF4();
    if (v18)
    {
      if (v18 == 1)
      {
        MEMORY[0x277C5FB60](3);
        sub_2749FDE24();
      }

      else
      {
        MEMORY[0x277C5FB60]((v16 | v17) != 0);
      }
    }

    else
    {
      MEMORY[0x277C5FB60](2);
      sub_2749FCE24();
    }

    result = sub_2749FDE44();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v4 + 48) + 24 * v22;
    *v27 = v16;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
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
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_274768EAC()
{
  OUTLINED_FUNCTION_130();
  sub_2749FD5F4();
  OUTLINED_FUNCTION_36_1();
  result = sub_2749FD7E4();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

unint64_t sub_274768F28(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274766B10();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_27476B080();
LABEL_10:
      v12 = *v3;
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v5);
      result = sub_2749FDE44();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_27476A514();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_274769060(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v7);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274766FD4();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_27476B4EC();
LABEL_10:
      v15 = *v4;
      sub_2749FDDF4();
      RootNavigationDestination.hash(into:)(v20);
      v16 = sub_2749FDE44();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2747231DC();
        static RootNavigationDestination.== infix(_:_:)();
        v19 = v18;
        sub_274722608();
        if (v19)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_27476A9DC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_274722708();
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_2747692B8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2747672D8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_27476B7C0();
LABEL_10:
      v12 = *v3;
      sub_2749FDDF4();
      sub_2749FDE24();
      result = sub_2749FDE44();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFGlyphCharacter(0);
        if (*(*(v12 + 48) + 2 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_27476A7A4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 2 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_2747693F0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274731854();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_27473137C();
LABEL_10:
      v12 = *v3;
      v13 = sub_2749FD5F4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFGridViewCell();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_2749FD604();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_27476A8E4();
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
    sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_274769568(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = a3;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a5)
  {
    sub_274767524();
  }

  else
  {
    if (v11 > v10)
    {
      sub_27476AF50();
      goto LABEL_32;
    }

    sub_27476B9DC();
  }

  v12 = *v5;
  sub_2749FDDF4();
  sub_274794730(v36, result, a2, v7);
  v13 = sub_2749FDE44();
  v14 = -1 << *(v12 + 32);
  a4 = v13 & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    v17 = v7 == 3 && (a2 | result) == 0;
    v34 = v17;
    do
    {
      v18 = *(v12 + 48) + 24 * a4;
      v20 = *v18;
      v19 = *(v18 + 8);
      switch(*(v18 + 16))
      {
        case 1:
          if (v7 == 1)
          {
            v27 = v20 == result && v19 == a2;
            if (v27 || (sub_2749FDCC4() & 1) != 0)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_31;
        case 2:
          if (v7 != 2)
          {
            goto LABEL_31;
          }

          sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
          v26 = v20;
          v22 = sub_2749FD604();
          v23 = v20;
          v24 = v19;
          v25 = 2;
          break;
        case 3:
          if (v34)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        default:
          if (v7)
          {
            goto LABEL_31;
          }

          sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
          v21 = v20;
          v22 = sub_2749FD604();
          v23 = v20;
          v24 = v19;
          v25 = 0;
          break;
      }

      sub_274772984(v23, v24, v25);
      if (v22)
      {
        goto LABEL_35;
      }

LABEL_31:
      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_32:
  v28 = *v33;
  *(*v33 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v29 = *(v28 + 48) + 24 * a4;
  *v29 = result;
  *(v29 + 8) = a2;
  *(v29 + 16) = v7;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v28 + 16) = v32;
    return;
  }

  __break(1u);
LABEL_35:
  sub_2749FDD44();
  __break(1u);
}

void sub_27476981C()
{
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v5 = v4;
  v6 = *(*v0 + 16);
  v7 = *(*v0 + 24);
  if (v7 <= v6 || (v1 & 1) == 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_111();
      sub_274731854();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      OUTLINED_FUNCTION_111();
      sub_27473137C();
LABEL_8:
      v8 = *v0;
      sub_2749FD5F4();
      OUTLINED_FUNCTION_36_1();
      v11 = ~v10;
      while (1)
      {
        v3 = v9 & v11;
        OUTLINED_FUNCTION_91();
        if (((*(v8 + 56 + v12) >> v3) & 1) == 0)
        {
          goto LABEL_12;
        }

        v13 = OUTLINED_FUNCTION_86_0();
        sub_27471CF08(v13, v14, v15);
        v16 = *(*(v8 + 48) + 8 * v3);
        v17 = sub_2749FD604();

        if (v17)
        {
          goto LABEL_15;
        }

        v9 = v3 + 1;
      }
    }

    sub_27476A8E4();
  }

LABEL_12:
  OUTLINED_FUNCTION_132_0();
  *(v19 + 8 * v3) = v5;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_15:
    sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
    OUTLINED_FUNCTION_56_1();
  }
}

uint64_t sub_274769A88(const void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for SmartShortcutPickerEntry(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v23 = v8;
      sub_274767824();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      v23 = v8;
      sub_27476BC90();
LABEL_8:
      v24 = v3;
      v13 = *v3;
      sub_2749FDDF4();
      memcpy(v30, a1, 0xB9uLL);
      SmartShortcutPickerEntry.Identifier.hash(into:)(v29);
      v14 = sub_2749FDE44();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        sub_2747231DC();
        memcpy(v27, v10, 0xB9uLL);
        memcpy(v26, v10, sizeof(v26));
        memcpy(v28, a1, 0xB9uLL);
        memcpy(v25, a1, sizeof(v25));
        sub_274772ADC(v27, v30);
        sub_274772ADC(v28, v30);
        v16 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
        sub_274722608();
        memcpy(v29, v25, 0xB9uLL);
        sub_274772BE8(v29);
        memcpy(v30, v26, 0xB9uLL);
        sub_274772BE8(v30);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_27476A9DC();
  }

LABEL_13:
  v17 = *v3;
  *(v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_274722708();
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_274769D78(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2747680AC();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_27476C4E4();
LABEL_10:
      v12 = *v3;
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v5);
      result = sub_2749FDE44();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_27476ABA4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_274769EB0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WFAddToHomeScreenItem(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v23 = v9;
      sub_274768440();
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      v23 = v9;
      sub_27476C82C();
LABEL_10:
      v19 = *v4;
      sub_2749FDDF4();
      sub_27495791C(v24);
      v20 = sub_2749FDE44();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2747231DC();
        v22 = sub_2749571B4(v11, a1);
        sub_274722608();
        if (v22)
        {
          goto LABEL_15;
        }

        v20 = a2 + 1;
      }
    }

    sub_27476A9DC();
  }

LABEL_7:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_274722708();
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

unint64_t sub_27476A108(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_274768994();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_27476CD30();
LABEL_10:
      v15 = *v4;
      sub_2749FDDF4();
      sub_2749FCE24();
      result = sub_2749FDE44();
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
        if (v18 || (sub_2749FDCC4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_27476ADF8();
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
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_27476A270(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_274768BF0();
    }

    else
    {
      if (v12 > v11)
      {
        sub_27476AF50();
        goto LABEL_37;
      }

      sub_27476CF64();
    }

    v13 = *v5;
    sub_2749FDDF4();
    sub_2747BD52C(v35, result, a2, v8);
    v14 = sub_2749FDE44();
    v15 = v13 + 56;
    v16 = -1 << *(v13 + 32);
    a4 = v14 & ~v16;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v13 + 48);
      v19 = v8 != 2;
      v20 = v8 == 2;
      if (a2 | result)
      {
        v20 = 0;
      }

      if (result != 1 || a2 != 0)
      {
        v19 = 1;
      }

      v33 = v20;
      v34 = v19;
      do
      {
        v22 = (v18 + 24 * a4);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 16);
        if (v25)
        {
          if (v25 == 1)
          {
            if (v8 == 1 && v23 == result)
            {
              goto LABEL_40;
            }
          }

          else if (v23 | v24)
          {
            if (!v34)
            {
              goto LABEL_40;
            }
          }

          else if (v33)
          {
            goto LABEL_40;
          }
        }

        else if (!v8)
        {
          v27 = v23 == result && v24 == a2;
          if (v27 || (sub_2749FDCC4() & 1) != 0)
          {
            goto LABEL_40;
          }
        }

        a4 = (a4 + 1) & v17;
      }

      while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_37:
  v28 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v29 = *(v28 + 48) + 24 * a4;
  *v29 = result;
  *(v29 + 8) = a2;
  *(v29 + 16) = v8;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_40:
    sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }
}

uint64_t sub_27476A4B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_274A0F630;
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

void *sub_27476A514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AA0, &qword_274A0FCA0);
  v2 = *v0;
  v3 = sub_2749FD8E4();
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

id sub_27476A654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BA0, &unk_274A0FD80);
  v2 = *v0;
  v3 = sub_2749FD8E4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_27476A7A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678D0, &qword_274A0FAE8);
  v2 = *v0;
  v3 = sub_2749FD8E4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void sub_27476A8E4()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = *v0;
  v6 = sub_2749FD8E4();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_97();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_59();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_107_0();
LABEL_15:
        v22 = v18 | (v12 << 6);
        v23 = *(*(v5 + 48) + 8 * v22);
        *(*(v6 + 48) + 8 * v22) = v23;
        v24 = v23;
      }

      while (v15);
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
        goto LABEL_17;
      }

      ++v19;
      if (*(v1 + v12))
      {
        OUTLINED_FUNCTION_21();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v6;
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_27476A9DC()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2(0);
  v4 = OUTLINED_FUNCTION_27(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_99();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = *v0;
  v8 = sub_2749FD8E4();
  if (*(v7 + 16))
  {
    v9 = OUTLINED_FUNCTION_32_3();
    v11 = (v10 + 63) >> 6;
    if (v8 != v7 || v9 >= v7 + 56 + 8 * v11)
    {
      memmove(v9, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v8 + 16) = *(v7 + 16);
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_59();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v16 &= v16 - 1;
LABEL_15:
        sub_2747231DC();
        sub_274722708();
      }

      while (v16);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v7 + 56 + 8 * v13))
      {
        OUTLINED_FUNCTION_21();
        v16 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v8;
    OUTLINED_FUNCTION_46();
  }
}

void *sub_27476ABA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967978, &unk_274A0FB90);
  v2 = *v0;
  v3 = sub_2749FD8E4();
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

void sub_27476ACE4(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v2;
  v6 = sub_2749FD8E4();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_97();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v3, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + v18) = *(*(v5 + 48) + v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v3 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v6;
  }
}

void *sub_27476ADF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967920, &qword_274A0FB38);
  v2 = *v0;
  v3 = sub_2749FD8E4();
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

void sub_27476AF50()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v1;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v6 = *v0;
  v7 = sub_2749FD8E4();
  if (v6[2])
  {
    v8 = OUTLINED_FUNCTION_32_3();
    v10 = (v9 + 63) >> 6;
    if (v7 != v6 || v8 >= &v6[v10 + 7])
    {
      memmove(v8, v6 + 7, 8 * v10);
    }

    v12 = 0;
    *(v7 + 16) = v6[2];
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_59();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_15:
        v22 = 3 * (v18 | (v12 << 6));
        v23 = v6[6] + 8 * v22;
        v24 = *(v23 + 8);
        v25 = *(v23 + 16);
        v26 = *(v7 + 48) + 8 * v22;
        *v26 = *v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v25;
        v2();
      }

      while (v15);
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
        goto LABEL_17;
      }

      ++v19;
      if (v6[v12 + 7])
      {
        OUTLINED_FUNCTION_21();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v7;
    OUTLINED_FUNCTION_50_0();
  }
}

uint64_t sub_27476B080()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AA0, &qword_274A0FCA0);
  result = sub_2749FD8F4();
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
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v14);
        result = sub_2749FDE44();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27476B29C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BA0, &unk_274A0FD80);
  result = sub_2749FD8F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        sub_2749FDDF4();
        v16 = v15;
        sub_2749FCE24();
        v17 = sub_2749FDE44();

        v18 = -1 << *(v4 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v4 + 48) + 8 * v21) = v16;
        ++*(v4 + 16);
        v2 = v27;
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
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27476B4EC()
{
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B90, &qword_274A0FD78);
  result = sub_2749FD8F4();
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
        v9 &= v9 - 1;
LABEL_12:
        sub_2747231DC();
        sub_2749FDDF4();
        RootNavigationDestination.hash(into:)(v22);
        result = sub_2749FDE44();
        v14 = -1 << *(v5 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        result = sub_274722708();
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v11 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v3 + 56 + 8 * v6);
        ++v12;
        if (v13)
        {
          v9 = (v13 - 1) & v13;
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
    *v1 = v5;
  }

  return result;
}

uint64_t sub_27476B7C0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678D0, &qword_274A0FAE8);
  result = sub_2749FD8F4();
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
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 2 * (v11 | (v5 << 6)));
        sub_2749FDDF4();
        sub_2749FDE24();
        result = sub_2749FDE44();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 2 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27476B9DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967938, &qword_274A0FB50);
  result = sub_2749FD8F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_2749FDDF4();
        switch(v18)
        {
          case 1:
            MEMORY[0x277C5FB60](1);

            sub_2749FCE24();
            break;
          case 2:
            v19 = 2;
            goto LABEL_15;
          case 3:
            MEMORY[0x277C5FB60](3);
            break;
          default:
            v19 = 0;
LABEL_15:
            MEMORY[0x277C5FB60](v19);
            v20 = v16;
            sub_2749FD614();
            break;
        }

        result = sub_2749FDE44();
        v21 = -1 << *(v4 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v4 + 48) + 24 * v24;
        *v29 = v16;
        *(v29 + 8) = v17;
        *(v29 + 16) = v18;
        ++*(v4 + 16);
        v2 = v30;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_31;
        }

        v14 = *(v6 + 8 * v5);
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

LABEL_31:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27476BC90()
{
  v1 = v0;
  v2 = type metadata accessor for SmartShortcutPickerEntry(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A40, &unk_274A0FC40);
  result = sub_2749FD8F4();
  v8 = result;
  if (!*(v6 + 16))
  {

LABEL_56:
    *v1 = v8;
    return result;
  }

  v57 = v0;
  v9 = 0;
  v10 = *(v6 + 56);
  v61 = v6 + 56;
  v62 = result;
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  v63 = v5;
  v64 = v14;
  v65 = result + 56;
  v58 = v6;
  v59 = v3;
  if (!v13)
  {
LABEL_7:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v57;
        goto LABEL_56;
      }

      v17 = *(v61 + 8 * v9);
      ++v16;
      if (v17)
      {
        v67 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  while (2)
  {
    v67 = (v13 - 1) & v13;
LABEL_12:
    v66 = *(v3 + 72);
    sub_2747231DC();
    sub_2749FDDF4();
    memcpy(v75, v5, 0xB9uLL);
    v18 = sub_274772AD0(v75);
    v19 = sub_274721C98(v75);
    v20 = v19;
    switch(v18)
    {
      case 1:
        MEMORY[0x277C5FB60](1);
        MEMORY[0x277C5FB60](0);
        goto LABEL_43;
      case 2:
        v21 = *v19;
        MEMORY[0x277C5FB60](2);
        v22 = [v21 identifier];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

        v15 = v65;
        sub_2749FCE24();
        v14 = v64;

        goto LABEL_43;
      case 3:
        v60 = v9;
        v23 = *(v19 + 16);
        v24 = *(v19 + 24);
        v25 = *(v19 + 40);
        v26 = *(v19 + 48);
        MEMORY[0x277C5FB60](3);
        if (v26)
        {
          MEMORY[0x277C5FB60](1);
          sub_2749FD614();
          if (v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          MEMORY[0x277C5FB60](0);
          sub_2749FCE24();
          if (v24)
          {
            sub_2749FDE14();
            sub_2749FCE24();
            if (v25)
            {
              goto LABEL_21;
            }
          }

          else
          {
            sub_2749FDE14();
            if (v25)
            {
LABEL_21:
              sub_2749FDE14();
              sub_2749FCE24();
              goto LABEL_24;
            }
          }
        }

        sub_2749FDE14();
LABEL_24:
        memcpy(v73, (v20 + 56), 0x81uLL);
        v27 = sub_274772C3C(v73);
        if (!v27)
        {
          CGSizeMake();
          v34 = *(v33 + 16);
          MEMORY[0x277C5FB60](0);
          sub_2749FCE24();
          v35 = *(v34 + 16);
          MEMORY[0x277C5FB60](v35);
          if (v35)
          {
            v36 = v34 + 112;
            do
            {
              v37 = *(v36 - 80);
              v38 = *(v36 - 72);
              v70 = v35;
              v71 = v37;
              v40 = *(v36 - 48);
              v39 = *(v36 - 40);
              v41 = *(v36 - 32);
              v42 = *(v36 - 24);
              v44 = *(v36 - 16);
              v43 = *(v36 - 8);
              v68 = *(v36 - 64);
              v69 = v43;

              v72 = v40;
              sub_274772C44(v40, v39, v41, v42, v44);

              v71 = v38;
              sub_2749FCE24();
              sub_2749FCE24();
              sub_2749FCE24();
              if (v39)
              {
                MEMORY[0x277C5FB60]([v44 hash]);
              }

              v36 += 88;
              sub_2749FCE24();

              sub_274772C94(v72, v39, v41, v42, v44);

              v35 = v70 - 1;
            }

            while (v70 != 1);
          }

          goto LABEL_39;
        }

        if (v27 == 1)
        {
          CGSizeMake();
          v29 = v28;
          v30 = v28[6];
          v69 = v28[7];
          v70 = v30;
          v31 = v28[9];
          v32 = v28[13];
          v68 = v28[12];
          v71 = v28[14];
          v72 = v32;
          MEMORY[0x277C5FB60](1);
          sub_2749FCE24();
          sub_2749FCE24();
          sub_2749FCE24();
          sub_2749FCE24();
          sub_2749FCE24();
          if (v31)
          {
            MEMORY[0x277C5FB60]([v68 hash]);
          }

          v3 = v59;
          v9 = v60;
          v8 = v62;
          v5 = v63;
          v14 = v64;
          v47 = v29[15];
          sub_2749FCE24();
          sub_27478A14C(&v74, v47);
        }

        else
        {
          CGSizeMake();
          v46 = *(v45 + 48);
          MEMORY[0x277C5FB60](2);
          sub_2749FCE24();
          sub_2749FCE24();
          if (!v46)
          {
            MEMORY[0x277C5FB60](0);
            sub_2749FCE24();
LABEL_39:
            v3 = v59;
            v8 = v62;
            v5 = v63;
            v9 = v60;
            v14 = v64;
            goto LABEL_42;
          }

          v3 = v59;
          v8 = v62;
          v5 = v63;
          v14 = v64;
          if (v46 == 1)
          {
            MEMORY[0x277C5FB60](1);
            sub_2749FD614();
          }

          else
          {
            MEMORY[0x277C5FB60](2);
            sub_2749FCE24();
          }

          v9 = v60;
        }

LABEL_42:
        v15 = v65;
LABEL_43:
        result = sub_2749FDE44();
        v48 = -1 << *(v8 + 32);
        v49 = result & ~v48;
        v50 = v49 >> 6;
        if (((-1 << v49) & ~*(v15 + 8 * (v49 >> 6))) != 0)
        {
          v51 = __clz(__rbit64((-1 << v49) & ~*(v15 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
          *(v15 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
          result = sub_274722708();
          ++*(v8 + 16);
          v13 = v67;
          if (!v67)
          {
            goto LABEL_7;
          }

          continue;
        }

        v52 = 0;
        v53 = (63 - v48) >> 6;
        while (++v50 != v53 || (v52 & 1) == 0)
        {
          v54 = v50 == v53;
          if (v50 == v53)
          {
            v50 = 0;
          }

          v52 |= v54;
          v55 = *(v15 + 8 * v50);
          if (v55 != -1)
          {
            v51 = __clz(__rbit64(~v55)) + (v50 << 6);
            goto LABEL_52;
          }
        }

LABEL_58:
        __break(1u);
        return result;
      default:
        MEMORY[0x277C5FB60](0);
        v14 = v64;
        v15 = v65;
        sub_2749FCE24();
        v8 = v62;
        v5 = v63;
        sub_2749FCE24();
        goto LABEL_43;
    }
  }
}

uint64_t sub_27476C4E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967978, &unk_274A0FB90);
  result = sub_2749FD8F4();
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
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v14);
        result = sub_2749FDE44();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_27476C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_19_1(v34, v35, v36);
  OUTLINED_FUNCTION_26();
  sub_2749FD8F4();
  OUTLINED_FUNCTION_127();
  if (v37)
  {
    v50 = v30;
    v38 = 0;
    OUTLINED_FUNCTION_16_3();
    if (v30)
    {
      while (1)
      {
        OUTLINED_FUNCTION_33_2();
LABEL_9:
        v43 = *(*(v31 + 48) + (v39 | (v38 << 6)));
        sub_2749FDDF4();
        v44 = OUTLINED_FUNCTION_128();
        MEMORY[0x277C5FB60](v44);
        sub_2749FDE44();
        OUTLINED_FUNCTION_22_1();
        if (v45)
        {
          break;
        }

        OUTLINED_FUNCTION_31_1();
LABEL_17:
        OUTLINED_FUNCTION_18_5(v46);
        *(v49 + v48) = v43;
        OUTLINED_FUNCTION_40_1();
        if (!v30)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_30_1();
      while (1)
      {
        OUTLINED_FUNCTION_133();
        if (v45)
        {
          if (v47)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_83();
        if (!v45)
        {
          OUTLINED_FUNCTION_29_0();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v40 = v38;
      while (1)
      {
        v38 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v38 >= v33)
        {

          v30 = v50;
          goto LABEL_21;
        }

        ++v40;
        if (*(v31 + 56 + 8 * v38))
        {
          OUTLINED_FUNCTION_21();
          v30 = (v42 & v41);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v30 = v32;
    OUTLINED_FUNCTION_88();
  }
}

uint64_t sub_27476C82C()
{
  v1 = sub_2749F9EB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for WFAddToHomeScreenItem(0);
  v39 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v40 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v41 = &v32 - v7;
  v36 = v0;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AF8, &qword_274A0FCF8);
  result = sub_2749FD8F4();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v4;
    v35 = v1;
    v11 = 0;
    v12 = 1 << *(v8 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v8 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = (v2 + 8);
    v33 = (v2 + 32);
    v16 = result + 56;
    v38 = v8;
    if (v14)
    {
      while (1)
      {
        v14 &= v14 - 1;
LABEL_12:
        sub_2747231DC();
        sub_2749FDDF4();
        sub_2747231DC();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            MEMORY[0x277C5FB60](3);
            sub_2749FCE24();

            break;
          case 2u:
            v21 = v34;
            v22 = v35;
            (*v33)(v34, v40, v35);
            MEMORY[0x277C5FB60](4);
            sub_274720E30(&qword_280967AF0, 255, MEMORY[0x277D7D388]);
            sub_2749FCD04();
            (*v32)(v21, v22);
            break;
          case 3u:
            v23 = *v40;
            MEMORY[0x277C5FB60](6);
            v20 = v23;
            goto LABEL_20;
          case 4u:
            v20 = 0;
            goto LABEL_20;
          case 5u:
            v20 = 1;
            goto LABEL_20;
          case 6u:
            v20 = 5;
LABEL_20:
            MEMORY[0x277C5FB60](v20);
            break;
          default:
            v19 = *v40;
            MEMORY[0x277C5FB60](2);
            sub_2749FD614();

            break;
        }

        result = sub_2749FDE44();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
        *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = sub_274722708();
        ++*(v10 + 16);
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v11;
      while (1)
      {
        v11 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v11 >= v15)
        {
          goto LABEL_32;
        }

        v18 = *(v8 + 56 + 8 * v11);
        ++v17;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_32:

    *v36 = v10;
  }

  return result;
}

uint64_t sub_27476CD30()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967920, &qword_274A0FB38);
  result = sub_2749FD8F4();
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
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_2749FDDF4();

        sub_2749FCE24();
        result = sub_2749FDE44();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
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
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
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

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27476CF64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B60, &qword_274A0FD50);
  result = sub_2749FD8F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_2749FDDF4();
        if (v18)
        {
          if (v18 == 1)
          {
            MEMORY[0x277C5FB60](3);
            sub_2749FDE24();
          }

          else
          {
            MEMORY[0x277C5FB60]((v16 | v17) != 0);
          }
        }

        else
        {
          MEMORY[0x277C5FB60](2);

          sub_2749FCE24();
        }

        result = sub_2749FDE44();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 24 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_30;
        }

        v14 = *(v6 + 8 * v5);
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

LABEL_30:
    *v1 = v4;
  }

  return result;
}

void *sub_27476D1F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476DBE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D218(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476DD10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_27476D24C(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_27476D274()
{
  v1 = type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_27(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_274762C68(v8, v9, v0 + v6, v7);
}

uint64_t objectdestroy_9Tm()
{
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_110();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  OUTLINED_FUNCTION_125();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = *(v3 + 32);
      if (v4 <= 0xFD)
      {
        sub_274725D44(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), v4);
      }

      break;
    case 1u:
    case 2u:

      break;
    case 3u:
      sub_2749F9514();
      OUTLINED_FUNCTION_1_2();
      (*(v5 + 8))(v0 + v2);
      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0);
}

void sub_27476D44C()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for RootNavigationDestination(v2);
  OUTLINED_FUNCTION_27(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_274762DB4(v0, v5, v6, v7);
}

char *sub_27476D4E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476DE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D590(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476DF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27476D660(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27476D788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D890(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D908(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D928(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476D9E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27476DA58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27476DABC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476E980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27476DB4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27476EB78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27476DBE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678C0, &unk_274A0FAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210, &unk_274A12840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27476DD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AA8, &qword_274A0FCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_27476DE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678D8, &qword_274A0FAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_27476DF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_27476E01C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B40, &qword_274A0FD30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27476E14C()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58, &qword_274A0FC60);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_12_5(v7);
    OUTLINED_FUNCTION_35_1();
    *(v3 + 16) = v2;
    *(v3 + 24) = v8;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_27476E224(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679F0, &qword_274A0FBF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679F8, &qword_274A0FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27476E35C()
{
  OUTLINED_FUNCTION_84_0();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_92_0();
  if (v5 ^ v6 | v14)
  {
    v15 = v2;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_102_1(v7, v8, v9, v10, v11, v12);
    v17 = OUTLINED_FUNCTION_142(v16);
    OUTLINED_FUNCTION_12_5(v17);
    *(v15 + 16) = v2;
    *(v15 + 24) = 2 * (v18 / v3);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v19 = OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    if (v15 != v0 || &v20[24 * v2] <= v19)
    {
      memmove(v19, v20, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

char *sub_27476E420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AC0, &qword_274A0FCC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27476E528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967960, &unk_274A0FB70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27476E640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967958, &qword_274A0FB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27476E748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967950, &qword_274A0FB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_27476E848(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AB0, &qword_274A0FCB0);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AB8, &qword_274A0FCB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27476E980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F0, &qword_274A0FB08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27476EA98()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_106();
  if (v5)
  {
    OUTLINED_FUNCTION_5_5();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_92_0();
  if (v6 ^ v7 | v15)
  {
    v16 = v4;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_102_1(v8, v9, v10, v11, v12, v13);
    v17 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_7_2();
    v17[2] = v4;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v17 != v0 || &v0[v4 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_98_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_98_0();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_50_0();
}

void *sub_27476EB78(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967918, &qword_274A0FB28);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_274764CAC(a4 + 32, v8, (v10 + 4));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6B0, &qword_274A0FB30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_27476EC88()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_5_5();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_25_1();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A80, &qword_274A0FC80);
    v7 = OUTLINED_FUNCTION_38_0(v6);
    OUTLINED_FUNCTION_8_4(v7);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_94_1();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27476ED50()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    OUTLINED_FUNCTION_102_1(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_7_2();
    v13[2] = v3;
    v13[3] = v14;
  }

  v15 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    OUTLINED_FUNCTION_114();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

void sub_27476EE04()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_84_0();
  if (v5)
  {
    OUTLINED_FUNCTION_5_5();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_25_1();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  else
  {
    v9 = v4;
  }

  v12 = v0[2];
  if (v9 <= v12)
  {
    v13 = v0[2];
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_102_1(v3, v4, v5, v6, v7, v8);
    v14 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_7_2();
    v14[2] = v12;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v14 != v0 || &v0[v12 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, v0 + 4, 8 * v12);
    }

    v0[2] = 0;
  }

  else
  {
    v1(0);
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_27476EEF0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2747DE4B4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_27476EF5C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_27476EF5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2749FDC64();
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
        v6 = sub_2749FCFE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27476F118(v7, v8, a1, v4);
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
    return sub_27476F050(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27476F050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2749FDCC4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_27476F118(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2749FDCC4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2749FDCC4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2749FDCC4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274763780();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_274763780();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_27476F74C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_27476F620(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_27476F620(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2747DCFFC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_27476F74C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_27476F74C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2749FDCC4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2749FDCC4() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_27476FA68@<X0>(uint64_t a2@<X8>)
{
  v13 = type metadata accessor for RootNavigationDestination(0);
  MEMORY[0x28223BE20](v13);
  v3 = *v2;
  sub_2749FDDF4();
  RootNavigationDestination.hash(into:)(v15);
  v4 = sub_2749FDE44();
  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      v9 = 1;
      v10 = a2;
      return __swift_storeEnumTagSinglePayload(v10, v9, 1, v13);
    }

    sub_2747231DC();
    static RootNavigationDestination.== infix(_:_:)();
    v8 = v7;
    sub_274722608();
    if (v8)
    {
      break;
    }

    v4 = v6 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_27476A9DC();
  }

  v10 = a2;
  sub_274722708();
  sub_274771548(v6);
  v9 = 0;
  *v2 = v15[0];
  return __swift_storeEnumTagSinglePayload(v10, v9, 1, v13);
}

unint64_t sub_27476FC98()
{
  result = qword_280967858;
  if (!qword_280967858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SidebarStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2747707C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_139();
  a31 = v33;
  a32 = v34;
  v35 = v32;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *v32;
  sub_2749FDDF4();
  sub_274794730(&a12, v41, v39, v37);
  sub_2749FDE44();
  OUTLINED_FUNCTION_36_1();
  v45 = v44 & ~v43;
  if ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
  {
    v46 = ~v43;
    v48 = v37 == 3 && (v39 | v41) == 0;
    v60 = v48;
    while (1)
    {
      v49 = *(v42 + 48) + 24 * v45;
      v50 = *v49;
      switch(*(v49 + 16))
      {
        case 1:
          if (v37 == 1)
          {
            if (v50 == v41 && *(v49 + 8) == v39)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_105_0();
            if (sub_2749FDCC4())
            {
              goto LABEL_26;
            }
          }

          goto LABEL_24;
        case 2:
          if (v37 != 2)
          {
            goto LABEL_24;
          }

          sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
          v56 = v50;
          v52 = sub_2749FD604();
          v53 = OUTLINED_FUNCTION_105_0();
          v55 = 2;
          break;
        case 3:
          if (v60)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        default:
          if (v37)
          {
            goto LABEL_24;
          }

          sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
          v51 = v50;
          v52 = sub_2749FD604();
          v53 = OUTLINED_FUNCTION_105_0();
          v55 = 0;
          break;
      }

      sub_274772984(v53, v54, v55);
      if (v52)
      {
        break;
      }

LABEL_24:
      v45 = (v45 + 1) & v46;
      if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a12 = *v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_27476AF50();
    }

    v59 = OUTLINED_FUNCTION_79_0();
    sub_274771BC8(v59);
    *v35 = a12;
  }

LABEL_29:
  OUTLINED_FUNCTION_137();
}

uint64_t sub_274770B38(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = *v2;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1);
  v6 = sub_2749FDE44();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 5;
    }

    if (*(*(v5 + 48) + v8) == v4)
    {
      break;
    }

    v6 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_100();
  if ((v11 & 1) == 0)
  {
    sub_27476ABA4();
    v10 = v22;
  }

  v9 = *(*(v10 + 48) + v8);
  v12 = sub_274771F2C(v8);
  OUTLINED_FUNCTION_68_0(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
  return v9;
}

uint64_t sub_274770C38(uint64_t a1)
{
  v3 = *v1;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1 & 1);
  sub_2749FDE44();
  OUTLINED_FUNCTION_41_2();
  do
  {
    OUTLINED_FUNCTION_121_0();
    if (((v5 >> a1) & 1) == 0)
    {
      return 2;
    }
  }

  while (*(*(v3 + 48) + a1) != v4);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_100();
  if ((v8 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_66();
    sub_27476ACE4(v18, v19);
    v7 = v21;
  }

  v6 = *(*(v7 + 48) + a1);
  OUTLINED_FUNCTION_128();
  sub_2747720C8();
  OUTLINED_FUNCTION_68_0(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  return v6;
}

void sub_274770D10()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v19 = v3;
  v18 = type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *v0;
  sub_2749FDDF4();
  sub_27495791C(&v20);
  sub_2749FDE44();
  OUTLINED_FUNCTION_36_1();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    OUTLINED_FUNCTION_91();
    if (((*(v8 + 56 + v13) >> v12) & 1) == 0)
    {
      v15 = 1;
      v16 = v19;
      goto LABEL_9;
    }

    sub_2747231DC();
    v14 = sub_2749571B4(v7, v2);
    sub_274722608();
    if (v14)
    {
      break;
    }

    v9 = v12 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_27476A9DC();
  }

  v16 = v19;
  sub_274722708();
  sub_2747721DC(v12);
  v15 = 0;
  *v0 = v20;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v18);
  OUTLINED_FUNCTION_46();
}

void sub_274770F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_139();
  a31 = v33;
  a32 = v34;
  v35 = v32;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *v32;
  sub_2749FDDF4();
  sub_2747BD52C(&a12, v41, v39, v37);
  sub_2749FDE44();
  v43 = v42 + 56;
  OUTLINED_FUNCTION_36_1();
  v46 = v45 & ~v44;
  if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
  {
    goto LABEL_34;
  }

  v60 = v35;
  v47 = ~v44;
  v48 = *(v42 + 48);
  v49 = v37 == 2;
  if (v39 | v41)
  {
    v49 = 0;
  }

  v61 = v49;
  v51 = v41 != 1 || v39 != 0 || v37 != 2;
  while (1)
  {
    v52 = (v48 + 24 * v46);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v52 + 16);
    if (!v55)
    {
      break;
    }

    if (v55 == 1)
    {
      if (v37 == 1 && v53 == v41)
      {
        goto LABEL_31;
      }
    }

    else if (v53 | v54)
    {
      if (!v51)
      {
        goto LABEL_31;
      }
    }

    else if (v61)
    {
      goto LABEL_31;
    }

LABEL_29:
    v46 = (v46 + 1) & v47;
    if (((*(v43 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (v37)
  {
    goto LABEL_29;
  }

  v57 = v53 == v41 && v54 == v39;
  if (!v57 && (sub_2749FDCC4() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a12 = *v60;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_27476AF50();
  }

  v59 = OUTLINED_FUNCTION_79_0();
  sub_2747726A0(v59);
  *v60 = a12;
LABEL_34:
  OUTLINED_FUNCTION_137();
}

uint64_t sub_2747710E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2749FD844();
  v5 = swift_unknownObjectRetain();
  v6 = sub_274766664(v5, v4);
  v14 = v6;

  v7 = sub_2749FD5F4();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for WFGridViewCell();
    v10 = *(*(v6 + 48) + 8 * v9);
    v11 = sub_2749FD604();

    if (v11)
    {

      v12 = *(*(v6 + 48) + 8 * v9);
      sub_274771E28();
      if (sub_2749FD604())
      {
        *v3 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_27477122C(uint64_t a1, uint64_t a2)
{

  v2 = sub_2749FD844();
  v3 = swift_unknownObjectRetain();
  sub_27476683C(v3, v2, v4, v5, v6, v7, v8, v9, v19, v21, v23);
  v11 = v10;
  v22 = v10;

  v12 = sub_2749FD5F4();
  v13 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v14 = v12 & v13;
    if (((*(v11 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
    v15 = *(*(v11 + 48) + 8 * v14);
    v16 = sub_2749FD604();

    if (v16)
    {

      v17 = *(*(v11 + 48) + 8 * v14);
      sub_274771E28();
      if (sub_2749FD604())
      {
        *v20 = v22;
        return v17;
      }

      __break(1u);
      break;
    }

    v12 = v14 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_274771384(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2749FD7D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        sub_2749FDDF4();
        sub_2749FCE24();
        v10 = sub_2749FDE44();

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

uint64_t sub_274771548(int64_t a1)
{
  v54 = sub_2749F9514();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RootNavigationDestination(0);
  v59 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v10 = *v1;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  v58 = *v1 + 56;
  if (((1 << v12) & *(v58 + 8 * (v12 >> 6))) != 0)
  {
    v56 = v3;
    v13 = ~v11;

    v14 = v58;
    v15 = sub_2749FD7D4();
    if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v59 = *(v59 + 72);
      v48 = (v56 + 8);
      v49 = (v56 + 32);
      v16 = v13;
      v50 = v5;
      v57 = (v15 + 1) & v13;
      while (1)
      {
        v17 = v59 * v12;
        sub_2747231DC();
        sub_2749FDDF4();
        sub_2747231DC();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v26 = *v8;
            MEMORY[0x277C5FB60](6);
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            sub_2749FCE24();

            goto LABEL_16;
          case 2u:
            v23 = *v8;
            MEMORY[0x277C5FB60](7);
            sub_2749FD614();

            goto LABEL_16;
          case 3u:
            v25 = v53;
            v24 = v54;
            (*v49)(v53, v8, v54);
            MEMORY[0x277C5FB60](8);
            sub_274720E30(&qword_280967B98, 255, MEMORY[0x277D7BE80]);
            sub_2749FCD04();
            (*v48)(v25, v24);
            goto LABEL_16;
          case 4u:
            v22 = 1;
            goto LABEL_15;
          case 5u:
            v22 = 2;
            goto LABEL_15;
          case 6u:
            v22 = 3;
            goto LABEL_15;
          case 7u:
            v22 = 4;
            goto LABEL_15;
          case 8u:
            v22 = 5;
LABEL_15:
            MEMORY[0x277C5FB60](v22);
            goto LABEL_16;
          default:
            v18 = *v8;
            v19 = *(v8 + 1);
            v20 = *(v8 + 3);
            v55 = *(v8 + 2);
            v56 = v19;
            v51 = v20;
            v52 = v18;
            v21 = v8[32];
            MEMORY[0x277C5FB60](0);
            if (v21 <= 0xFD)
            {
              sub_2749FDE14();
              switch(v21 >> 5)
              {
                case 1u:
                  MEMORY[0x277C5FB60](2);
                  if (v56)
                  {
                    sub_2749FDE14();
                    sub_2749FCE24();
                    if (v21)
                    {
                      goto LABEL_48;
                    }

LABEL_51:
                    v38 = 0;
                  }

                  else
                  {
                    sub_2749FDE14();
                    if ((v21 & 1) == 0)
                    {
                      goto LABEL_51;
                    }

LABEL_48:
                    v38 = 1;
                  }

                  MEMORY[0x277C5FB60](v38);
                  goto LABEL_53;
                case 2u:
                  v37 = 3;
                  goto LABEL_56;
                case 3u:
                  MEMORY[0x277C5FB60](4);
                  if (v55)
                  {
                    if (v55 == 1)
                    {
                      v37 = 1;
                    }

                    else
                    {
                      v37 = 2;
                    }

LABEL_56:
                    MEMORY[0x277C5FB60](v37);
                    v44 = v52;
                    sub_2749FD614();
                    v36 = v44;
LABEL_57:
                    v40 = v56;
                  }

                  else
                  {
                    MEMORY[0x277C5FB60](0);
                    v43 = v56;
                    sub_2749FCE24();
                    v36 = v52;
                    v40 = v43;
                  }

                  v41 = v55;
                  v42 = v51;
LABEL_59:
                  sub_274725D30(v36, v40, v41, v42, v21);
                  goto LABEL_16;
                case 4u:
                  MEMORY[0x277C5FB60](0);
                  v36 = v52;
                  goto LABEL_57;
                default:
                  MEMORY[0x277C5FB60](1);
                  if (v56)
                  {
                    sub_2749FDE14();
                    sub_2749FCE24();
                  }

                  else
                  {
                    sub_2749FDE14();
                  }

LABEL_53:
                  v39 = v51;
                  sub_2749FCE24();
                  v36 = v52;
                  v41 = v55;
                  v40 = v56;
                  v42 = v39;
                  goto LABEL_59;
              }
            }

            sub_2749FDE14();
LABEL_16:
            v27 = sub_2749FDE44();
            sub_274722608();
            v28 = v27 & v16;
            if (a1 >= v57)
            {
              if (v28 < v57 || a1 < v28)
              {
                goto LABEL_36;
              }
            }

            else if (v28 < v57 && a1 < v28)
            {
              goto LABEL_36;
            }

            v31 = *(v10 + 48);
            v32 = v59 * a1;
            v33 = v31 + v59 * a1;
            v34 = v31 + v17 + v59;
            if (v59 * a1 < v17 || v33 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_35:
              a1 = v12;
              goto LABEL_36;
            }

            a1 = v12;
            if (v32 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_35;
            }

LABEL_36:
            v12 = (v12 + 1) & v16;
            if (((*(v58 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_60;
            }

            break;
        }
      }
    }

LABEL_60:

    *(v58 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v58 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v45 = *(v10 + 16);
  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v47;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t sub_274771BC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2749FD7D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v29 = 24 * v6;
        v10 = v3;
        v11 = *(v3 + 48) + 24 * v6;
        v13 = *v11;
        v12 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_2749FDDF4();
        switch(v14)
        {
          case 1:
            MEMORY[0x277C5FB60](1);

            sub_2749FCE24();
            break;
          case 2:
            v15 = 2;
            goto LABEL_7;
          case 3:
            MEMORY[0x277C5FB60](3);
            break;
          default:
            v15 = 0;
LABEL_7:
            MEMORY[0x277C5FB60](v15);
            v16 = v13;
            sub_2749FD614();
            break;
        }

        v17 = sub_2749FDE44();
        sub_274772984(v13, v12, v14);
        v18 = v17 & v7;
        if (v2 >= v9)
        {
          v19 = v18 < v9 || v2 < v18;
        }

        else
        {
          v19 = v18 < v9 && v2 < v18;
        }

        v3 = v10;
        if (!v19)
        {
          v20 = *(v10 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + v29);
          v23 = 24 * v2 < v29 || v21 >= v22 + 24;
          if (v23 || v2 != v6)
          {
            v25 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v25;
            v2 = v6;
          }
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

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

void sub_274771E28()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_44_1();
  if (v8)
  {
    OUTLINED_FUNCTION_67_0(v6);
  }

  else
  {
    v9 = ~v7;

    OUTLINED_FUNCTION_66();
    v10 = sub_2749FD7D4();
    if ((*(v2 + 8 * v1) & v4) != 0)
    {
      v11 = (v10 + 1) & v9;
      do
      {
        v12 = *(*(v0 + 48) + 8 * v5);
        v13 = sub_2749FD5F4();

        v14 = v13 & v9;
        if (v3 >= v11)
        {
          if (v14 >= v11 && v3 >= v14)
          {
LABEL_15:
            v17 = *(v0 + 48);
            v18 = (v17 + 8 * v3);
            v19 = (v17 + 8 * v5);
            if (v3 != v5 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v3 = v5;
            }
          }
        }

        else if (v14 >= v11 || v3 >= v14)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_76();
      }

      while ((v21 & 1) != 0);
    }

    OUTLINED_FUNCTION_60();
  }

  v22 = *(v0 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_135(v24);
    OUTLINED_FUNCTION_50_0();
  }
}

unint64_t sub_274771F2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2749FD7D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v10);
        v11 = sub_2749FDE44() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + v2);
            v16 = (v14 + v6);
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

void sub_2747720C8()
{
  OUTLINED_FUNCTION_44_1();
  if (v8)
  {
    OUTLINED_FUNCTION_67_0(v6);
  }

  else
  {
    v9 = ~v7;

    OUTLINED_FUNCTION_66();
    v10 = sub_2749FD7D4();
    if ((*(v2 + 8 * v1) & v4) != 0)
    {
      v11 = (v10 + 1) & v9;
      do
      {
        v12 = *(*(v0 + 48) + v5);
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v12);
        v13 = sub_2749FDE44() & v9;
        if (v3 >= v11)
        {
          if (v13 >= v11 && v3 >= v13)
          {
LABEL_15:
            v16 = *(v0 + 48);
            v17 = (v16 + v3);
            v18 = (v16 + v5);
            if (v3 != v5 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v3 = v5;
            }
          }
        }

        else if (v13 >= v11 || v3 >= v13)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_76();
      }

      while ((v20 & 1) != 0);
    }

    OUTLINED_FUNCTION_60();
  }

  v21 = *(v0 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_135(v23);
  }
}

uint64_t sub_2747721DC(int64_t a1)
{
  v41 = sub_2749F9EB4();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WFAddToHomeScreenItem(0);
  v5 = *(v43 - 8);
  v6 = MEMORY[0x28223BE20](v43);
  v45 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_2749FD7D4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v5;
      v16 = (v14 + 1) & v13;
      v44 = *(v15 + 72);
      v38 = (v3 + 8);
      v39 = (v3 + 32);
      v42 = v10;
      v17 = v13;
      while (1)
      {
        v18 = v44 * v12;
        sub_2747231DC();
        sub_2749FDDF4();
        sub_2747231DC();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            MEMORY[0x277C5FB60](3);
            sub_2749FCE24();
            v10 = v42;

            break;
          case 2u:
            v21 = v40;
            v22 = v41;
            (*v39)(v40, v45, v41);
            MEMORY[0x277C5FB60](4);
            sub_274720E30(&qword_280967AF0, 255, MEMORY[0x277D7D388]);
            sub_2749FCD04();
            v23 = v21;
            v10 = v42;
            (*v38)(v23, v22);
            break;
          case 3u:
            v24 = *v45;
            MEMORY[0x277C5FB60](6);
            v20 = v24;
            goto LABEL_12;
          case 4u:
            v20 = 0;
            goto LABEL_12;
          case 5u:
            v20 = 1;
            goto LABEL_12;
          case 6u:
            v20 = 5;
LABEL_12:
            MEMORY[0x277C5FB60](v20);
            break;
          default:
            v19 = *v45;
            MEMORY[0x277C5FB60](2);
            sub_2749FD614();

            break;
        }

        v25 = sub_2749FDE44();
        sub_274722608();
        v26 = v25 & v17;
        if (a1 >= v16)
        {
          if (v26 < v16 || a1 < v26)
          {
            goto LABEL_33;
          }
        }

        else if (v26 < v16 && a1 < v26)
        {
          goto LABEL_33;
        }

        v29 = *(v9 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v18 + v44;
        if (v44 * a1 < v18 || v31 >= v32)
        {
          break;
        }

        a1 = v12;
        if (v30 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_32;
        }

LABEL_33:
        v12 = (v12 + 1) & v17;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_32:
      a1 = v12;
      goto LABEL_33;
    }

LABEL_34:

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v9 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v36;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_2747726A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2749FD7D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v26 = (v8 + 1) & v7;
      do
      {
        v9 = *(v3 + 48) + 24 * v6;
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        sub_2749FDDF4();
        if (v12)
        {
          if (v12 == 1)
          {
            MEMORY[0x277C5FB60](3);
            sub_2749FDE24();
          }

          else
          {
            MEMORY[0x277C5FB60]((v10 | v11) != 0);
          }
        }

        else
        {
          MEMORY[0x277C5FB60](2);

          sub_2749FCE24();
        }

        v13 = sub_2749FDE44();
        sub_274772E24(v10, v11, v12);
        v14 = v13 & v7;
        if (v2 >= v26)
        {
          if (v14 >= v26 && v2 >= v14)
          {
LABEL_20:
            v17 = *(v3 + 48);
            v18 = v17 + 24 * v2;
            v19 = (v17 + 24 * v6);
            if (24 * v2 < (24 * v6) || v18 >= v19 + 24 || v2 != v6)
            {
              v22 = *v19;
              *(v18 + 16) = *(v19 + 2);
              *v18 = v22;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v26 || v2 >= v14)
        {
          goto LABEL_20;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2747728DC(uint64_t a1, uint64_t a2)
{
  sub_2749FDDF4();
  sub_2749FDE24();
  return sub_2749FDE44();
}

unint64_t sub_274772930()
{
  result = qword_280967908;
  if (!qword_280967908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967908);
  }

  return result;
}

void sub_274772984(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

id sub_2747729AC(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    return result;
  }
}

unint64_t sub_2747729D4()
{
  result = qword_280967940;
  if (!qword_280967940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967940);
  }

  return result;
}

unint64_t sub_274772A28()
{
  result = qword_280967980;
  if (!qword_280967980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967980);
  }

  return result;
}

unint64_t sub_274772A7C()
{
  result = qword_280967A28;
  if (!qword_280967A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967A28);
  }

  return result;
}

void sub_274772C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }
}

void sub_274772C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_274772CE4()
{
  result = qword_280967A68;
  if (!qword_280967A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967A68);
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

unint64_t sub_274772D68()
{
  result = qword_280967A98;
  if (!qword_280967A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967A98);
  }

  return result;
}

unint64_t sub_274772DBC()
{
  result = qword_280967B30;
  if (!qword_280967B30)
  {
    sub_27471CF08(255, &qword_28159E490, 0x277D7A1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967B30);
  }

  return result;
}

uint64_t sub_274772E24(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_274772E38(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_274772E4C()
{
  result = qword_280967B68;
  if (!qword_280967B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967B68);
  }

  return result;
}

uint64_t sub_274772EA0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_274772EBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27475F680;
  OUTLINED_FUNCTION_124();

  return sub_274761DF4(v2, v3, v4, v5);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87_0()
{

  return sub_274772ADC(v0 + 1416, v0 + 264);
}

uint64_t OUTLINED_FUNCTION_102_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_140@<X0>(uint64_t a1@<X8>)
{

  return sub_27476A4B0(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_141(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_143_0()
{
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2747731E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_274773228(uint64_t result, int a2, int a3)
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

uint64_t sub_274773294@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_2749FB634();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BF0, &qword_274A0FE78);
  return sub_274773304(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t sub_274773304@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BF8, &qword_274A0FE80);
  MEMORY[0x28223BE20](v153);
  v9 = (v151 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C00, &qword_274A0FE88);
  MEMORY[0x28223BE20](v10);
  v152 = v151 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C08, &qword_274A0FE90);
  MEMORY[0x28223BE20](v157);
  v154 = v151 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C10, &qword_274A0FE98);
  MEMORY[0x28223BE20](v156);
  v14 = v151 - v13;
  v15 = a1;
  v16 = a1;
  v17 = a1;
  v18 = sub_2749F8FD4();
  v19 = sub_274774B3C();

  if (v19)
  {

    v20 = sub_274774D94();
    v22 = v21;
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v162[0] = v20;
    v162[1] = v22;
    memset(&v162[2], 0, 32);
    v162[6] = sub_274774F10;
    v162[7] = 0;
    v162[8] = sub_274776590;
    v162[9] = v23;
    memcpy(v163, v162, 0x50uLL);
    sub_274741038(v163);
    memcpy(__dst, v163, 0x79uLL);
    v24 = a1;

    v25 = &qword_274A0FEB0;
    sub_27473F28C(v162, v160, &qword_280967C28, &qword_274A0FEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C28, &qword_274A0FEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C68, &qword_274A0FEC8);
    sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
    sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
    sub_2749FB7B4();
    memcpy(__dst, v159, 0x79uLL);
    sub_274776588(__dst);
    memcpy(v158, __dst, sizeof(v158));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C58, &qword_274A0FEC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C78, &qword_274A0FED0);
    sub_274776270();
    sub_274776350();
    sub_2749FB7B4();
    memcpy(v14, v160, 0x7AuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C40, &qword_274A0FEB8);
    sub_2747761E4();
    sub_274776400();
    sub_2749FB7B4();
    v26 = v162;
    v27 = &qword_280967C28;
LABEL_8:
    v55 = v25;
    return sub_27472ECBC(v26, v27, v55);
  }

  v155 = v14;
  v28 = sub_2749F8FD4();
  v29 = sub_2747750B4();

  v151[1] = a4;
  if (v29)
  {

    sub_2749FCE14("Shortcut Not Found", 18);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v30 = qword_28159E448;
    v31 = sub_2749FCD64();
    v32 = sub_2749FCD64();

    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v153 = v35;
    v154 = v34;

    sub_2749FCE14("The shortcut link may be invalid, or it may have been deleted.", 62);
    v36 = sub_2749FCD64();
    v37 = sub_2749FCD64();

    v38 = [v30 localizedStringForKey:v36 value:v37 table:0];

    v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v41 = v40;

    __dst[0] = v39;
    __dst[1] = v41;
    sub_27475D0D0();
    v42 = sub_2749FBEE4();
    v44 = v43;
    LOBYTE(v41) = v45;
    sub_2749FC4A4();
    v46 = sub_2749FBE84();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_27477656C(v42, v44, v41 & 1);

    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    LOBYTE(__dst[0]) = v50 & 1;
    LOBYTE(v160[0]) = 0;
    v162[0] = v154;
    v162[1] = v153;
    v162[2] = v46;
    v162[3] = v48;
    LOBYTE(v162[4]) = v50 & 1;
    v162[5] = v52;
    v162[6] = KeyPath;
    LOBYTE(v162[7]) = 1;
    v162[8] = v54;
    v162[9] = 3;
    LOBYTE(v162[10]) = 0;
    HIDWORD(v162[10]) = *(__dst + 3);
    *(&v162[10] + 1) = __dst[0];
    memset(&v162[11], 0, 32);
    memcpy(v163, v162, 0x78uLL);
    sub_27474102C(v163);
    memcpy(__dst, v163, 0x79uLL);
    v25 = &qword_274A0FEC8;
    sub_27473F28C(v162, v160, &qword_280967C68, &qword_274A0FEC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C28, &qword_274A0FEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C68, &qword_274A0FEC8);
    sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
    sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
    sub_2749FB7B4();
    memcpy(__dst, v159, 0x79uLL);
    sub_274776588(__dst);
LABEL_7:
    memcpy(v158, __dst, sizeof(v158));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C58, &qword_274A0FEC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C78, &qword_274A0FED0);
    sub_274776270();
    sub_274776350();
    sub_2749FB7B4();
    memcpy(v155, v160, 0x7AuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C40, &qword_274A0FEB8);
    sub_2747761E4();
    sub_274776400();
    sub_2749FB7B4();
    v26 = v162;
    v27 = &qword_280967C68;
    goto LABEL_8;
  }

  v160[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
  if (swift_dynamicCast())
  {
    v57 = __dst[1];
    v58 = v155;
    if (!LOBYTE(__dst[2]))
    {
      v82 = __dst[0];

      if (v57)
      {

        sub_2749FCE14("“%@” Can't Be Opened", 24);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v83 = qword_28159E448;
        v84 = sub_2749FCD64();
        v85 = sub_2749FCD64();

        v86 = [v83 localizedStringForKey:v84 value:v85 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_274A0EF10;
        *(v87 + 56) = MEMORY[0x277D837D0];
        *(v87 + 64) = sub_27475C4F4();
        *(v87 + 32) = v82;
        *(v87 + 40) = v57;

        v88 = sub_2749FCD74();
        v153 = v89;
        v154 = v88;

        sub_2747764E0(v82, v57, 0);
        sub_2747764E0(v82, v57, 0);
      }

      else
      {
        sub_2749FCE14("Shortcut Cannot Be Opened", 25);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v83 = qword_28159E448;
        v127 = sub_2749FCD64();
        v128 = sub_2749FCD64();

        v129 = [v83 localizedStringForKey:v127 value:v128 table:0];

        v130 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v153 = v131;
        v154 = v130;
      }

      sub_2749FCE14("This shortcut cannot be opened because your Shortcuts security settings don't allow untrusted shortcuts.", 104);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v132 = sub_2749FCD64();
      v133 = sub_2749FCD64();

      v134 = [v83 localizedStringForKey:v132 value:v133 table:0];

      v135 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v137 = v136;

      __dst[0] = v135;
      __dst[1] = v137;
      sub_27475D0D0();
      v138 = sub_2749FBEE4();
      v140 = v139;
      LOBYTE(v137) = v141;
      sub_2749FC4A4();
      v142 = sub_2749FBE84();
      v144 = v143;
      v146 = v145;
      v148 = v147;

      sub_27477656C(v138, v140, v137 & 1);

      v149 = swift_getKeyPath();
      v150 = swift_getKeyPath();
      LOBYTE(__dst[0]) = v146 & 1;
      LOBYTE(v160[0]) = 0;
      v162[0] = v154;
      v162[1] = v153;
      v162[2] = v142;
      v162[3] = v144;
      LOBYTE(v162[4]) = v146 & 1;
      v162[5] = v148;
      v162[6] = v149;
      LOBYTE(v162[7]) = 1;
      v162[8] = v150;
      v162[9] = 5;
      LOBYTE(v162[10]) = 0;
      HIDWORD(v162[10]) = *(__dst + 3);
      *(&v162[10] + 1) = __dst[0];
      memset(&v162[11], 0, 32);
      memcpy(v163, v162, 0x78uLL);
      sub_274741038(v163);
      memcpy(__dst, v163, 0x79uLL);
      v25 = &qword_274A0FEC8;
      sub_27473F28C(v162, v160, &qword_280967C68, &qword_274A0FEC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C68, &qword_274A0FEC8);
      sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
      sub_2749FB7B4();
      memcpy(__dst, v159, 0x79uLL);
      sub_27477657C(__dst);
      goto LABEL_7;
    }

    sub_2747764E0(__dst[0], __dst[1], __dst[2]);
  }

  else
  {
    v58 = v155;
  }

  v160[0] = a1;
  if (swift_dynamicCast())
  {
    v59 = __dst[1];
    if (LOBYTE(__dst[2]) == 1)
    {
      v60 = __dst[0];

      if (v59)
      {

        sub_2749FCE14("“%@” Can't Be Opened", 24);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v61 = qword_28159E448;
        v62 = sub_2749FCD64();
        v63 = sub_2749FCD64();

        v64 = [v61 localizedStringForKey:v62 value:v63 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_274A0EF10;
        *(v65 + 56) = MEMORY[0x277D837D0];
        *(v65 + 64) = sub_27475C4F4();
        *(v65 + 32) = v60;
        *(v65 + 40) = v59;

        v66 = sub_2749FCD74();
        v153 = v67;
        v154 = v66;

        sub_2747764E0(v60, v59, 1u);
        sub_2747764E0(v60, v59, 1u);
      }

      else
      {
        sub_2749FCE14("Shortcut Cannot Be Opened", 25);
        if (qword_28159E3A8 != -1)
        {
          swift_once();
        }

        v61 = qword_28159E448;
        v103 = sub_2749FCD64();
        v104 = sub_2749FCD64();

        v105 = [v61 localizedStringForKey:v103 value:v104 table:0];

        v106 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v153 = v107;
        v154 = v106;
      }

      sub_2749FCE14("Shortcuts failed to verify this shortcut.", 41);
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v108 = sub_2749FCD64();
      v109 = sub_2749FCD64();

      v110 = [v61 localizedStringForKey:v108 value:v109 table:0];

      v111 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v113 = v112;

      __dst[0] = v111;
      __dst[1] = v113;
      sub_27475D0D0();
      v114 = sub_2749FBEE4();
      v116 = v115;
      LOBYTE(v113) = v117;
      sub_2749FC4A4();
      v118 = sub_2749FBE84();
      v120 = v119;
      v122 = v121;
      v124 = v123;

      sub_27477656C(v114, v116, v113 & 1);

      v125 = swift_getKeyPath();
      v126 = swift_getKeyPath();
      v158[0] = v122 & 1;
      v161[0] = v118;
      v161[1] = v120;
      LOBYTE(v161[2]) = v122 & 1;
      *(&v161[2] + 1) = __dst[0];
      HIDWORD(v161[2]) = *(__dst + 3);
      v161[3] = v124;
      v161[4] = v125;
      LOBYTE(v161[5]) = 1;
      *(&v161[5] + 1) = v160[0];
      HIDWORD(v161[5]) = *(v160 + 3);
      v161[6] = v126;
      v161[7] = 5;
      LOBYTE(v161[8]) = 0;
      memcpy(&v162[2], v161, 0x41uLL);
      v162[0] = v154;
      v162[1] = v153;
      memset(&v162[11], 0, 32);
      memcpy(v163, v162, 0x78uLL);
      sub_27474102C(v163);
      memcpy(__dst, v163, 0x79uLL);
      sub_27473F28C(v161, v160, &unk_28096E070, &qword_274A0FF38);
      sub_27473F28C(v162, v160, &qword_280967C68, &qword_274A0FEC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C68, &qword_274A0FEC8);
      sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
      sub_2749FB7B4();
      memcpy(__dst, v159, 0x79uLL);
      sub_27477657C(__dst);
      memcpy(v158, __dst, sizeof(v158));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C58, &qword_274A0FEC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C78, &qword_274A0FED0);
      sub_274776270();
      sub_274776350();
      sub_2749FB7B4();
      memcpy(v155, v160, 0x7AuLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C40, &qword_274A0FEB8);
      sub_2747761E4();
      sub_274776400();
      sub_2749FB7B4();
      sub_27472ECBC(v161, &unk_28096E070, &qword_274A0FF38);
      v26 = v162;
      v27 = &qword_280967C68;
      v55 = &qword_274A0FEC8;
      return sub_27472ECBC(v26, v27, v55);
    }

    sub_2747764E0(__dst[0], __dst[1], __dst[2]);
  }

  v160[0] = a1;
  if (swift_dynamicCast())
  {
    v68 = __dst[0];
    if (LOBYTE(__dst[2]) == 2)
    {
      v151[0] = __dst[1];
      v69 = [__dst[0] localizedDescription];
      v70 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v72 = v71;

      v73 = sub_274776508(v68);
      if (v74)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      v76 = 0xE000000000000000;
      if (v74)
      {
        v76 = v74;
      }

      __dst[0] = v75;
      __dst[1] = v76;
      sub_27475D0D0();
      v77 = sub_2749FBEE4();
      __dst[0] = v70;
      __dst[1] = v72;
      __dst[2] = v77;
      __dst[3] = v79;
      __dst[4] = (v78 & 1);
      __dst[5] = v80;
      memset(&__dst[6], 0, 32);
      memcpy(v152, __dst, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_27473F28C(__dst, v160, &qword_280967C28, &qword_274A0FEB0);
      sub_27473F28C(__dst, v160, &qword_280967C28, &qword_274A0FEB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C28, &qword_274A0FEB0);
      sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
      sub_27472AB6C(&qword_280967C38, &qword_280967BF8, &qword_274A0FE80, &unk_274A0FF98);
      v81 = v154;
      sub_2749FB7B4();
      sub_27473F28C(v81, v58, &qword_280967C08, &qword_274A0FE90);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C40, &qword_274A0FEB8);
      sub_2747761E4();
      sub_274776400();
      sub_2749FB7B4();
      sub_2747764E0(v68, v151[0], 2u);
      sub_27472ECBC(__dst, &qword_280967C28, &qword_274A0FEB0);
      sub_27472ECBC(__dst, &qword_280967C28, &qword_274A0FEB0);
      v26 = v81;
      v27 = &qword_280967C08;
      v55 = &qword_274A0FE90;
      return sub_27472ECBC(v26, v27, v55);
    }

    sub_2747764E0(__dst[0], __dst[1], __dst[2]);
  }

  sub_2749FCE14("Can’t connect to the Gallery.", 31);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v90 = qword_28159E448;
  v91 = sub_2749FCD64();
  v92 = sub_2749FCD64();

  v93 = [v90 localizedStringForKey:v91 value:v92 table:0];

  v94 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v96 = v95;

  v97 = v153;
  v98 = *(v153 + 36);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C20, &qword_274A0FEA8);
  __swift_storeEnumTagSinglePayload(v9 + v98, 1, 1, v99);
  *v9 = v94;
  v9[1] = v96;
  v100 = (v9 + *(v97 + 40));
  *v100 = sub_274775184;
  v100[1] = 0;
  v101 = (v9 + *(v97 + 44));
  *v101 = a2;
  v101[1] = a3;
  sub_27473F28C(v9, v152, &qword_280967BF8, &qword_274A0FE80);
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C28, &qword_274A0FEB0);
  sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
  sub_27472AB6C(&qword_280967C38, &qword_280967BF8, &qword_274A0FE80, &unk_274A0FF98);
  v102 = v154;
  sub_2749FB7B4();
  sub_27473F28C(v102, v155, &qword_280967C08, &qword_274A0FE90);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C40, &qword_274A0FEB8);
  sub_2747761E4();
  sub_274776400();
  sub_2749FB7B4();
  sub_27472ECBC(v102, &qword_280967C08, &qword_274A0FE90);
  v26 = v9;
  v27 = &qword_280967BF8;
  v55 = &qword_274A0FE80;
  return sub_27472ECBC(v26, v27, v55);
}