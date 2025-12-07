uint64_t sub_1DD570978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v5;
    return result;
  }

  v36 = v3;
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
        goto LABEL_34;
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

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      sub_1DD57634C(0, (v35 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    sub_1DD640E28();
    sub_1DD57F364(v37, v17, v20, v21, v22, v23, v24, v25);
    if (v19 == 1)
    {
      sub_1DD640E48();
    }

    else
    {
      sub_1DD640E48();
      if (v19)
      {
        MEMORY[0x1E12B3140](1);
        sub_1DD63FD28();
      }

      else
      {
        MEMORY[0x1E12B3140](0);
      }
    }

    result = sub_1DD640E78();
    v26 = -1 << *(v5 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v5 + 48) + 24 * v29);
    *v34 = v17;
    v34[1] = v18;
    v34[2] = v19;
    ++*(v5 + 16);
    v3 = v36;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v12 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DD570C30(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DD63D078();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA8, &qword_1DD65CE90);
  result = sub_1DD640868();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD57634C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    result = sub_1DD63FCE8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD570F88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
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

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1DD57634C(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DD640E18();
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
    if (!v11)
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

uint64_t sub_1DD5711AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  result = sub_1DD640868();
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
      sub_1DD57634C(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_1DD640E28();
    sub_1DD63FD28();
    result = sub_1DD640E78();
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

uint64_t sub_1DD571408(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  result = sub_1DD640868();
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
      sub_1DD57634C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DD6405A8();
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

void sub_1DD571654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v34;
  a32 = v35;
  v64 = v36;
  OUTLINED_FUNCTION_32_17(v37, v38, v39);
  OUTLINED_FUNCTION_70_2();
  v40 = sub_1DD640868();
  if (!v33[2])
  {
LABEL_25:

    *v32 = v40;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v63 = v32;
  v41 = 0;
  v42 = v33 + 7;
  OUTLINED_FUNCTION_65_6();
  v45 = v44 & v43;
  v47 = (v46 + 63) >> 6;
  v48 = v40 + 56;
  if ((v44 & v43) == 0)
  {
LABEL_4:
    v50 = v41;
    while (1)
    {
      v41 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v41 >= v47)
      {
        break;
      }

      ++v50;
      if (v42[v41])
      {
        OUTLINED_FUNCTION_14_3();
        v45 = v52 & v51;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_52_10();
    if (v61 >= 64)
    {
      sub_1DD57634C(0, (v61 + 63) >> 6, (v33 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_23_18();
      *v42 = v62;
    }

    v32 = v63;
    v33[2] = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
LABEL_9:
    v53 = *(v33[6] + 8 * (v49 | (v41 << 6)));
    sub_1DD640E28();
    v64(&a12);
    sub_1DD640E78();
    OUTLINED_FUNCTION_64_5();
    if (v54)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_7_39();
    *(v48 + v58) |= v59;
    *(*(v40 + 48) + 8 * v60) = v53;
    OUTLINED_FUNCTION_46_3();
    if (!v45)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v54)
    {
      if (v56)
      {
        break;
      }
    }

    if (v55 == v57)
    {
      v55 = 0;
    }

    if (*(v48 + 8 * v55) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1DD5717F4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  result = sub_1DD640868();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v29 = v1;
  v30 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD57634C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v29;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48);
    v19 = *(v31 + 72);
    sub_1DD4A09A0(v18 + v19 * (v15 | (v8 << 6)), v33);
    sub_1DD640E28();
    sub_1DD63D078();
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DD63FCF8();
    sub_1DD63FCF8();
    result = sub_1DD640E78();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_1DD4A09A0(v33, *(v7 + 48) + v23 * v19);
    ++*(v7 + 16);
    v5 = v30;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD571B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
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

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1DD57634C(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
    result = MEMORY[0x1E12B3110](*(v5 + 40), v16, 4);
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
    *(*(v5 + 48) + 4 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
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

uint64_t sub_1DD571D74(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DD63D0F8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB0, &qword_1DD65CE98);
  result = sub_1DD640868();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD57634C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DD63FCE8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD5720CC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DD63F8B8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF80, &qword_1DD65CE68);
  result = sub_1DD640868();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
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
        goto LABEL_29;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DD57634C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0], MEMORY[0x1E69D27B8]);
    result = sub_1DD63FCE8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1DD572424(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_32_17(v6, v7, v8);
  OUTLINED_FUNCTION_70_2();
  v9 = sub_1DD640868();
  if (!v3[2])
  {
LABEL_25:

    *v2 = v9;
    OUTLINED_FUNCTION_41_13();
    return;
  }

  v25 = v2;
  v10 = 0;
  v11 = v3 + 7;
  OUTLINED_FUNCTION_48_15();
  if (!v2)
  {
LABEL_4:
    v13 = v10;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v10 >= v5)
      {
        break;
      }

      ++v13;
      if (v11[v10])
      {
        OUTLINED_FUNCTION_14_3();
        v2 = (v15 & v14);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_52_10();
    if (v23 >= 64)
    {
      sub_1DD57634C(0, (v23 + 63) >> 6, (v3 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_23_18();
      *v11 = v24;
    }

    v2 = v25;
    v3[2] = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_88();
LABEL_9:
    v16 = *(v3[6] + (v12 | (v10 << 6)));
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v16);
    sub_1DD640E78();
    OUTLINED_FUNCTION_57_12();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_7_39();
    OUTLINED_FUNCTION_86_2();
    *(v22 + v21) = v16;
    OUTLINED_FUNCTION_46_3();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    if (*(v4 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1DD57258C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return result;
  }

  v28 = v3;
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
        goto LABEL_32;
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
        v29 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1DD57634C(0, (v27 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_1DD640E28();
    MEMORY[0x1E12B3140](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 40;
      do
      {

        sub_1DD63FD28();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    result = sub_1DD640E78();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v16;
    ++*(v5 + 16);
    v3 = v28;
    v10 = v29;
    if (!v29)
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
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DD57282C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_33:

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
  v30 = v3;
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
        goto LABEL_35;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1DD57634C(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 48 * (v13 | (v6 << 6));
    v17 = *(v16 + 8);
    v32 = *(v16 + 16);
    v33 = *v16;
    v31 = *(v16 + 24);
    v18 = *(v16 + 32);
    v19 = *(v16 + 40);
    sub_1DD640E28();
    if (v19)
    {
      if (v19 == 1)
      {
        MEMORY[0x1E12B3140](1);
        sub_1DD63FD28();
        MEMORY[0x1E12B3140](v32);
      }

      else
      {
        MEMORY[0x1E12B3140](2);
        sub_1DD63FD28();
        sub_1DD63FD28();
      }
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v32);
      sub_1DD640E48();
      if (v18)
      {
        sub_1DD63FD28();
      }
    }

    result = sub_1DD640E78();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 48 * v23;
    *v28 = v33;
    *(v28 + 8) = v17;
    *(v28 + 16) = v32;
    *(v28 + 24) = v31;
    *(v28 + 32) = v18;
    *(v28 + 40) = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
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

uint64_t sub_1DD572B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  result = sub_1DD640868();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return result;
  }

  v32 = v1;
  v33 = v3;
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
        goto LABEL_32;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1DD57634C(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_1DD640E28();
    v34 = v18;
    sub_1DD63FD28();
    if (v20)
    {
      MEMORY[0x1E12B3140](1);
      v21 = v19;
      sub_1DD63FD28();
    }

    else
    {
      v21 = v19;
      MEMORY[0x1E12B3140](0);
    }

    result = sub_1DD640E78();
    v22 = -1 << *(v5 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v5 + 48) + 32 * v25);
    *v30 = v17;
    v30[1] = v34;
    v30[2] = v21;
    v30[3] = v20;
    ++*(v5 + 16);
    v3 = v33;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v12 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DD572E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  result = sub_1DD640868();
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
      sub_1DD57634C(0, (v25 + 63) >> 6, v3 + 56);
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
    v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
    sub_1DD640E28();
    sub_1DD538ED0(v16);
    sub_1DD63FD28();

    result = sub_1DD640E78();
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
    *(*(v5 + 48) + 2 * v20) = v16;
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

void *sub_1DD57307C(void *a1, uint64_t a2)
{
  sub_1DD640E28();
  v4 = a1[1];
  v5 = a1[2];
  sub_1DD57F364(v17, *a1, v6, v7, v8, v9, v10, v11);
  if (v5 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v5)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v12 = v4;
      v13 = v5;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v12 = v4;
      v13 = 0;
    }

    sub_1DD3EB430(v12, v13);
  }

  memcpy(__dst, a1 + 3, sizeof(__dst));
  ContactHandle.hash(into:)(v17);
  sub_1DD640E78();
  v14 = sub_1DD640758();
  *(a2 + 56 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
  result = memcpy((*(a2 + 48) + 104 * v14), a1, 0x62uLL);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DD5731C0(uint64_t a1, uint64_t a2)
{
  sub_1DD6405A8();
  result = sub_1DD640758();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DD573244(uint64_t a1, void *a2, uint64_t (*a3)(_BYTE *))
{
  sub_1DD640E28();
  a3(v7);
  sub_1DD640E78();
  OUTLINED_FUNCTION_23_18();
  result = sub_1DD640758();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1DD5732EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD56F9D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DD577AA8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DD640E28();
      sub_1DD63FD28();
      v16 = sub_1DD640E78();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1DD640CD8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1DD5763B0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_1DD573454(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD56FC2C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD577CDC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v5);
      result = sub_1DD640E78();
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

    result = sub_1DD576494();
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
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD57358C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a5)
  {
    sub_1DD56FE78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1DD5765D4();
      goto LABEL_30;
    }

    sub_1DD577EF8(v10 + 1);
  }

  v12 = *v5;
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068();
  result = sub_1DD640E78();
  v13 = v12 + 56;
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
LABEL_30:
    v25 = *v30;
    *(*v30 + 8 * (a4 >> 6) + 56) |= 1 << a4;
    v26 = (*(v25 + 48) + 24 * a4);
    *v26 = v9;
    v26[1] = a2;
    v26[2] = a3;
    v27 = *(v25 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      *(v25 + 16) = v29;
      return result;
    }

    goto LABEL_33;
  }

  v15 = ~v14;
  v16 = *(v12 + 48);
  while (1)
  {
    v17 = (v16 + 24 * a4);
    result = *v17;
    v18 = v17[2];
    v19 = *v17 == v9 && v17[1] == a2;
    if (v19 || (result = sub_1DD640CD8(), (result & 1) != 0))
    {
      v20 = *(v18 + 16);
      if (v20 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_29:
    a4 = (a4 + 1) & v15;
    if (((*(v13 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v20)
  {
    v21 = v18 == a3;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_34;
  }

  v22 = (v18 + 40);
  v23 = (a3 + 40);
  while (v20)
  {
    if (*(v22 - 1) != *(v23 - 1) || *v22 != *v23)
    {
      result = sub_1DD640CD8();
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v22 += 2;
    v23 += 2;
    if (!--v20)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1DD640D48();
  __break(1u);
  return result;
}

uint64_t sub_1DD573794(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD63D2B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570148(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD5781A8(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DD57AFAC(&qword_1EE1637E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v14 = sub_1DD63FCE8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&unk_1ECCDC350, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
        v16 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1DD573A44(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD63C868();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5704A0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD5784C0(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DD57AFAC(&qword_1ECCDC180, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
      v14 = sub_1DD63FCE8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDF030, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
        v16 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void *sub_1DD573CF4(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_1DD5707F8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DD576740();
      goto LABEL_72;
    }

    sub_1DD5787D8(v6 + 1);
  }

  v8 = *v3;
  sub_1DD640E28();
  v63 = *a1;
  v64 = *(a1 + 2);
  v9 = v64;
  v10 = v63;
  sub_1DD57F364(v61, v63, v11, v12, v13, v14, v15, v16);
  if (v9 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v9)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v17 = *(&v10 + 1);
      v18 = v9;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v17 = *(&v10 + 1);
      v18 = 0;
    }

    sub_1DD3EB430(v17, v18);
  }

  v19 = a1[40];
  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 10);
  v25 = *(a1 + 11);
  v26 = a1[96];
  v27 = a1[97];
  v57 = *(a1 + 4);
  v58 = *(a1 + 3);
  __dst[0] = v58;
  __dst[1] = v57;
  v56 = v19;
  LOBYTE(__dst[2]) = v19;
  *(&__dst[2] + 1) = *(a1 + 41);
  HIDWORD(__dst[2]) = *(a1 + 11);
  v54 = v21;
  v55 = v20;
  __dst[3] = v20;
  __dst[4] = v21;
  v52 = v23;
  v53 = v22;
  __dst[5] = v22;
  __dst[6] = v23;
  v50 = v25;
  v51 = v24;
  __dst[7] = v24;
  __dst[8] = v25;
  v48 = v27;
  v49 = v26;
  LOBYTE(__dst[9]) = v26;
  BYTE1(__dst[9]) = v27;
  ContactHandle.hash(into:)(v61);
  v28 = sub_1DD640E78();
  v29 = -1 << *(v8 + 32);
  a2 = v28 & ~v29;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v29;
    do
    {
      memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x62uLL);
      v32 = __dst[0];
      v31 = __dst[1];
      v33 = __dst[2];
      sub_1DD57AEA0(__dst, v61);

      sub_1DD3EB41C(v31, v33);
      sub_1DD57AEFC(&v63, v61);
      if ((sub_1DD57D274(v32, v10) & 1) == 0)
      {
        goto LABEL_59;
      }

      if (v33 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_44;
        }

        sub_1DD3EB41C(*(&v10 + 1), 1);
        sub_1DD3EB41C(v31, 1);
        v33 = 1;
      }

      else
      {
        if (v9 == 1)
        {
LABEL_44:
          sub_1DD3EB41C(*(&v10 + 1), v9);
          sub_1DD3EB41C(v31, v33);
          sub_1DD3EB430(v31, v33);
          v39 = *(&v10 + 1);
          v40 = v9;
          goto LABEL_58;
        }

        if (v33)
        {
          if (!v9)
          {
            sub_1DD3EB41C(*(&v10 + 1), 0);
            sub_1DD3EB41C(v31, v33);
            sub_1DD3EB41C(v31, v33);

            goto LABEL_56;
          }

          if (v31 == *(&v10 + 1) && v33 == v9)
          {
            sub_1DD3EB41C(*(&v10 + 1), v9);
            sub_1DD3EB41C(*(&v10 + 1), v9);
            sub_1DD3EB41C(*(&v10 + 1), v9);
          }

          else
          {
            v47 = sub_1DD640CD8();
            sub_1DD3EB41C(*(&v10 + 1), v9);
            sub_1DD3EB41C(v31, v33);
            sub_1DD3EB41C(v31, v33);

            if ((v47 & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          if (v9)
          {
            sub_1DD3EB41C(*(&v10 + 1), v9);
            sub_1DD3EB41C(v31, 0);

LABEL_56:

LABEL_57:
            v39 = v31;
            v40 = v33;
LABEL_58:
            sub_1DD3EB430(v39, v40);
LABEL_59:
            sub_1DD57AF58(&v63);

            sub_1DD3EB430(v31, v33);
LABEL_60:
            sub_1DD3EB488(__dst);
            goto LABEL_61;
          }

          sub_1DD3EB41C(*(&v10 + 1), 0);
          sub_1DD3EB41C(v31, 0);
          swift_bridgeObjectRelease_n();
        }
      }

      sub_1DD3EB430(v31, v33);
      sub_1DD57AF58(&v63);

      sub_1DD3EB430(v31, v33);
      v34 = __dst[3] == v58 && __dst[4] == v57;
      if (!v34 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      if (LOBYTE(__dst[5]) != v56)
      {
        goto LABEL_60;
      }

      v35 = __dst[6] == v55 && __dst[7] == v54;
      if (!v35 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      v36 = __dst[8] == v53 && __dst[9] == v52;
      if (!v36 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      if (__dst[10] == v51 && __dst[11] == v50)
      {
        sub_1DD3EB488(__dst);
        if (LOBYTE(__dst[12]) != (v49 & 1))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v38 = sub_1DD640CD8();
        sub_1DD3EB488(__dst);
        if (v38 & 1) == 0 || ((LOBYTE(__dst[12]) ^ v49))
        {
          goto LABEL_61;
        }
      }

      if (BYTE1(__dst[12]) == 2)
      {
        if (v48 == 2)
        {
          goto LABEL_71;
        }
      }

      else if (v48 != 2 && ((BYTE1(__dst[12]) ^ v48) & 1) == 0)
      {
LABEL_71:
        sub_1DD640D48();
        __break(1u);
        break;
      }

LABEL_61:
      a2 = (a2 + 1) & v30;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v42 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v42 + 48) + 104 * a2), a1, 0x62uLL);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

uint64_t sub_1DD574290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1DD570978(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_1DD5768C8();
        goto LABEL_37;
      }

      sub_1DD578930(v11 + 1);
    }

    v13 = *v5;
    sub_1DD640E28();
    sub_1DD57F364(v37, v10, v14, v15, v16, v17, v18, v19);
    if (a3 == 1)
    {
      sub_1DD640E48();
    }

    else
    {
      sub_1DD640E48();
      if (a3)
      {
        MEMORY[0x1E12B3140](1);

        sub_1DD63FD28();
        v20 = a2;
        v21 = a3;
      }

      else
      {
        MEMORY[0x1E12B3140](0);
        v20 = a2;
        v21 = 0;
      }

      sub_1DD3EB430(v20, v21);
    }

    result = sub_1DD640E78();
    v22 = -1 << *(v13 + 32);
    a4 = result & ~v22;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v23 = ~v22;
      while (1)
      {
        v24 = (*(v13 + 48) + 24 * a4);
        v25 = *v24;
        v6 = v24[1];
        v26 = v24[2];

        sub_1DD3EB41C(v6, v26);
        if (sub_1DD57D274(v25, v10))
        {
          break;
        }

LABEL_36:

        result = sub_1DD3EB430(v6, v26);
        a4 = (a4 + 1) & v23;
        if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      if (v26 == 1)
      {
        if (a3 == 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (a3 == 1)
      {
LABEL_21:
        sub_1DD3EB41C(a2, a3);
        sub_1DD3EB41C(v6, v26);
        sub_1DD3EB430(v6, v26);
        v27 = a2;
        v28 = a3;
LABEL_35:
        sub_1DD3EB430(v27, v28);
        goto LABEL_36;
      }

      if (v26)
      {
        if (a3)
        {
          if (v6 == a2 && v26 == a3)
          {
            sub_1DD3EB41C(a2, a3);
            sub_1DD3EB41C(a2, a3);
            sub_1DD3EB41C(a2, a3);

            v6 = a2;
            goto LABEL_43;
          }

          v35 = sub_1DD640CD8();
          sub_1DD3EB41C(a2, a3);
          sub_1DD3EB41C(v6, v26);
          sub_1DD3EB41C(v6, v26);

          if (v35)
          {
            a3 = v26;
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        sub_1DD3EB41C(a2, 0);
        sub_1DD3EB41C(v6, v26);
        sub_1DD3EB41C(v6, v26);
      }

      else
      {
        if (!a3)
        {
          sub_1DD3EB41C(a2, 0);
          sub_1DD3EB41C(v6, 0);
          swift_bridgeObjectRelease_n();
          goto LABEL_43;
        }

        sub_1DD3EB41C(a2, a3);
        sub_1DD3EB41C(v6, 0);
      }

LABEL_34:
      v27 = v6;
      v28 = v26;
      goto LABEL_35;
    }
  }

LABEL_37:
  v30 = *v36;
  *(*v36 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v31 = (*(v30 + 48) + 24 * a4);
  *v31 = v10;
  v31[1] = a2;
  v31[2] = a3;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_40:
    sub_1DD3EB41C(a2, 1);
    sub_1DD3EB41C(v6, 1);
LABEL_43:
    sub_1DD3EB430(v6, a3);

    sub_1DD3EB430(v6, a3);
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }

  return result;
}

uint64_t sub_1DD574678(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570C30(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD578BCC(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v14 = sub_1DD63FCE8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1EE166050, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v16 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_1DD574928(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570F88(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD578EE4(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_1DD640E18();
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

    result = sub_1DD576A40();
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
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_1DD574A2C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD5711AC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DD5790D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1DD640E28();
      sub_1DD63FD28();
      result = sub_1DD640E78();
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
        if (v18 || (sub_1DD640CD8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DD576B80();
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
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1DD574B94(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571408(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1DD579304(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_1DD6405A8();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1DD6405B8();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD576CD8();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_1DD575078(uint64_t a1, unint64_t a2, char a3)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v23 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5717F4(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1DD576F08();
        goto LABEL_15;
      }

      sub_1DD5796C0(v10 + 1);
    }

    v12 = *v3;
    sub_1DD640E28();
    sub_1DD63D078();
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DD63FCF8();
    v26 = *(v27 + 36);
    sub_1DD63FCF8();
    v13 = sub_1DD640E78();
    v14 = -1 << *(v12 + 32);
    a2 = v13 & ~v14;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      v16 = *(v7 + 72);
      do
      {
        sub_1DD4A0930(*(v12 + 48) + v16 * a2, v9);
        sub_1DD57AFAC(&qword_1EE166050, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        if (sub_1DD63FD98())
        {
          v17 = sub_1DD63FD98();
          sub_1DD3ADFD0(v9, &qword_1ECCDD4F0, &unk_1DD651E10);
          if (v17)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1DD3ADFD0(v9, &qword_1ECCDD4F0, &unk_1DD651E10);
        }

        a2 = (a2 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_15:
  v18 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DD4A09A0(a1, *(v18 + 48) + *(v24 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_18:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

unint64_t sub_1DD575384(unint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v11 = OUTLINED_FUNCTION_87_2(v9);
      sub_1DD572424(v11, v12);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      v17 = OUTLINED_FUNCTION_87_2(v9);
      sub_1DD57A208(v17, v18);
LABEL_10:
      v19 = *v6;
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v8);
      result = sub_1DD640E78();
      v20 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = result & v20;
        if (((*(v19 + 56 + (((result & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v19 + 48) + a2) == v8)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD577438(a4, a5);
  }

LABEL_7:
  v13 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v8;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

unint64_t sub_1DD5754BC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571B4C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD5799E8(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x1E12B3110](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD5770F0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD5755C4(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD63D0F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571D74(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD579BD8(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v14 = sub_1DD63FCE8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDBF70, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v16 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1DD575874(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD63F8B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5720CC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD579EF0(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0], MEMORY[0x1E69D27B8]);
      v14 = sub_1DD63FCE8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDD278, MEMORY[0x1E69D27B0], MEMORY[0x1E69D27C0]);
        v16 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1DD575B24(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD57258C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DD57753C();
        goto LABEL_22;
      }

      sub_1DD57A348(v6 + 1);
    }

    v8 = *v3;
    sub_1DD640E28();
    sub_1DD416068();
    result = sub_1DD640E78();
    v9 = v8 + 56;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = *(v5 + 16);
      v13 = *(v8 + 48);
      do
      {
        v14 = *(v13 + 8 * a2);
        if (*(v14 + 16) == v12)
        {
          if (!v12 || v14 == v5)
          {
            goto LABEL_25;
          }

          v15 = (v14 + 40);
          v16 = (v5 + 40);
          v17 = v12;
          while (1)
          {
            if (*(v15 - 1) != *(v16 - 1) || *v15 != *v16)
            {
              result = sub_1DD640CD8();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v15 += 2;
            v16 += 2;
            if (!--v17)
            {
              goto LABEL_25;
            }
          }
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

uint64_t sub_1DD575CE8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1DD57282C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DD57768C();
      goto LABEL_49;
    }

    sub_1DD57A5C4(v6 + 1);
  }

  v8 = *v3;
  sub_1DD640E28();
  sub_1DD60ACB0(v37);
  result = sub_1DD640E78();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *(v8 + 48);
    do
    {
      v13 = v12 + 48 * a2;
      result = *v13;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (*(v13 + 40))
      {
        if (*(v13 + 40) != 1)
        {
          if (*(v5 + 40) != 2)
          {
            goto LABEL_45;
          }

          v25 = *(v5 + 16);
          v26 = *(v5 + 24);
          if (result != *v5 || v14 != *(v5 + 8))
          {
            result = sub_1DD640CD8();
            if ((result & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          if (v15 == v25 && v16 == v26)
          {
            goto LABEL_48;
          }

LABEL_44:
          result = sub_1DD640CD8();
          if (result)
          {
            goto LABEL_48;
          }

          goto LABEL_45;
        }

        if (*(v5 + 40) == 1)
        {
          v17 = *(v5 + 16);
          v18 = result == *v5 && v14 == *(v5 + 8);
          if (v18 || (result = sub_1DD640CD8(), (result & 1) != 0))
          {
            if (v15 == v17)
            {
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        if (*(v5 + 40))
        {
          goto LABEL_45;
        }

        v19 = *(v13 + 32);
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v22 = *(v5 + 32);
        if (result != *v5 || v14 != *(v5 + 8))
        {
          v35 = *(v13 + 32);
          result = sub_1DD640CD8();
          v19 = v35;
          if ((result & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        if (v15 != v21)
        {
          goto LABEL_45;
        }

        if (v19)
        {
          if (!v22)
          {
            goto LABEL_45;
          }

          if (v16 == v20 && v19 == v22)
          {
LABEL_48:
            result = sub_1DD640D48();
            __break(1u);
            break;
          }

          goto LABEL_44;
        }

        if (!v22)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + 48 * a2);
  v31 = *(v5 + 16);
  *v30 = *v5;
  v30[1] = v31;
  *(v30 + 25) = *(v5 + 25);
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v34;
  }

  return result;
}

uint64_t sub_1DD575F6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1DD572B6C(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_1DD577800();
        goto LABEL_30;
      }

      sub_1DD57A914(v12 + 1);
    }

    v14 = *v6;
    sub_1DD640E28();
    sub_1DD63FD28();
    if (a4)
    {
      MEMORY[0x1E12B3140](1);
      sub_1DD63FD28();
    }

    else
    {
      MEMORY[0x1E12B3140](0);
    }

    result = sub_1DD640E78();
    v15 = -1 << *(v14 + 32);
    a5 = result & ~v15;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v16 = ~v15;
      do
      {
        v17 = (*(v14 + 48) + 32 * a5);
        v19 = v17[2];
        v18 = v17[3];
        v20 = *v17 == v11 && v17[1] == a2;
        if (v20 || (result = sub_1DD640CD8(), (result & 1) != 0))
        {
          if (v18)
          {
            if (a4)
            {
              if (v19 == a3 && v18 == a4)
              {
                goto LABEL_34;
              }

              result = sub_1DD640CD8();
              if (result)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }
          }

          else
          {

            if (!a4)
            {
              goto LABEL_33;
            }
          }
        }

        a5 = (a5 + 1) & v16;
      }

      while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_30:
  v22 = *v27;
  *(*v27 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v23 = (*(v22 + 48) + 32 * a5);
  *v23 = v11;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_33:

LABEL_34:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

unint64_t sub_1DD57618C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD572E14(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD57ABAC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1DD640E28();
      sub_1DD538ED0(v5);
      sub_1DD63FD28();

      result = sub_1DD640E78();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v14 = sub_1DD538ED0(*(*(v12 + 48) + 2 * a2));
        v16 = v15;
        if (v14 == sub_1DD538ED0(v5) && v16 == v17)
        {
          goto LABEL_19;
        }

        v19 = sub_1DD640CD8();

        if (v19)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD577968();
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
LABEL_19:

LABEL_20:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD57634C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD642F70;
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

void sub_1DD5763B0()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
  v7 = OUTLINED_FUNCTION_78_2();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_18_32();
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
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_38_15();
    while (v5)
    {
      OUTLINED_FUNCTION_90_0();
LABEL_15:
      v17 = v13 | (v3 << 6);
      v18 = (*(v1 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_14_3();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1DD576494()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0);
  v2 = *v0;
  v3 = sub_1DD640858();
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

void *sub_1DD5765D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF028, &unk_1DD65CF10);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

void *sub_1DD576740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE8, &qword_1DD65CED0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1DD57AEA0(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x62uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x62uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1DD5768C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        result = sub_1DD3EB41C(v19, v20);
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

void *sub_1DD576A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  v2 = *v0;
  v3 = sub_1DD640858();
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

void *sub_1DD576B80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  v2 = *v0;
  v3 = sub_1DD640858();
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

id sub_1DD576CD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  v2 = *v0;
  v3 = sub_1DD640858();
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

void sub_1DD576E3C(uint64_t *a1, uint64_t *a2)
{
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = OUTLINED_FUNCTION_78_2();
  if (*(v3 + 16))
  {
    v10 = OUTLINED_FUNCTION_18_32();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v4, 8 * v11);
    }

    OUTLINED_FUNCTION_38_15();
    while (v7)
    {
      OUTLINED_FUNCTION_90_0();
LABEL_15:
      *(*(v9 + 48) + 8 * (v15 | (v5 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v5 << 6)));
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + v5))
      {
        OUTLINED_FUNCTION_14_3();
        v7 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v8 = v9;
  }
}

void *sub_1DD576F08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  v6 = *v0;
  v7 = sub_1DD640858();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1DD4A0930(*(v6 + 48) + v21, v5);
        result = sub_1DD4A09A0(v5, *(v8 + 48) + v21);
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
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1DD5770F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  v2 = *v0;
  v3 = sub_1DD640858();
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

void sub_1DD577230()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v7(0);
  OUTLINED_FUNCTION_2_89();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v13 = *v0;
  v14 = sub_1DD640858();
  if (v13[2])
  {
    v30 = v6;
    OUTLINED_FUNCTION_52_10();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= &v13[v17 + 7])
    {
      memmove(v15, v13 + 7, 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = v13[2];
    OUTLINED_FUNCTION_52_10();
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v13[7];
    v23 = (v20 + 63) >> 6;
    v31 = v9 + 32;
    v32 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v28 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, v13[6] + v28, v1);
      (*(v9 + 32))(*(v14 + 48) + v28, v12, v1);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v30;
        goto LABEL_21;
      }

      ++v25;
      if (v13[v19 + 7])
      {
        OUTLINED_FUNCTION_14_3();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
    OUTLINED_FUNCTION_17();
  }
}

void *sub_1DD577438(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_78_2();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_18_32();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v4, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v3 + 16);
    v13 = 1 << *(v3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v3 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + v18) = *(*(v3 + 48) + v18))
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

      v20 = *(v4 + v12);
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

    *v5 = v6;
  }

  return result;
}

void *sub_1DD57753C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  v2 = *v0;
  v3 = sub_1DD640858();
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

void *sub_1DD57768C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 16 * v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = sub_1DD57AE38(v19, v20, v21, v22, v23, v25);
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

void *sub_1DD577800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_1DD577968()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  v2 = *v0;
  v3 = sub_1DD640858();
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

uint64_t sub_1DD577AA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
  result = sub_1DD640868();
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
        sub_1DD640E28();

        sub_1DD63FD28();
        result = sub_1DD640E78();
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

uint64_t sub_1DD577CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0);
  result = sub_1DD640868();
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
        sub_1DD640E28();
        MEMORY[0x1E12B3140](v15);
        result = sub_1DD640E78();
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

uint64_t sub_1DD577EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF028, &unk_1DD65CF10);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    v33 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v35 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_1DD640E28();

        v34 = v17;
        sub_1DD63FD28();
        MEMORY[0x1E12B3140](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + 40;
          do
          {

            sub_1DD63FD28();

            v21 += 16;
            --v20;
          }

          while (v20);
        }

        result = sub_1DD640E78();
        v5 = v33;
        v22 = -1 << *(v33 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        v3 = v32;
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v33 + 48) + 24 * v25);
        v10 = v35;
        *v30 = v34;
        v30[1] = v18;
        v30[2] = v19;
        ++*(v33 + 16);
        if (!v35)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v35 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD5781A8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD63D2B8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF70, &qword_1DD65CE58);
  v7 = sub_1DD640868();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD57AFAC(&qword_1EE1637E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
        result = sub_1DD63FCE8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD5784C0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD63C868();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE418, &qword_1DD657608);
  v7 = sub_1DD640868();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD57AFAC(&qword_1ECCDC180, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
        result = sub_1DD63FCE8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD5787D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE8, &qword_1DD65CED0);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1DD57307C(__dst, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      memcpy(__dst, (*(v3 + 48) + 104 * (v11 | (v6 << 6))), 0x62uLL);
      sub_1DD57AEA0(__dst, &v14);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD578930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_1DD640E28();

        sub_1DD3EB41C(v18, v19);
        sub_1DD57F364(v36, v17, v20, v21, v22, v23, v24, v25);
        if (v19 == 1)
        {
          sub_1DD640E48();
        }

        else
        {
          sub_1DD640E48();
          if (v19)
          {
            MEMORY[0x1E12B3140](1);
            sub_1DD63FD28();
          }

          else
          {
            MEMORY[0x1E12B3140](0);
          }
        }

        result = sub_1DD640E78();
        v26 = -1 << *(v5 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v34 = (*(v5 + 48) + 24 * v29);
        *v34 = v17;
        v34[1] = v18;
        v34[2] = v19;
        ++*(v5 + 16);
        v3 = v35;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD578BCC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD63D078();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA8, &qword_1DD65CE90);
  v7 = sub_1DD640868();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        result = sub_1DD63FCE8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD578EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  result = sub_1DD640868();
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
        result = sub_1DD640E18();
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD5790D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  result = sub_1DD640868();
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
        v17 = *v15;
        v16 = v15[1];
        sub_1DD640E28();
        sub_1DD63FD28();
        result = sub_1DD640E78();
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
        *v26 = v17;
        v26[1] = v16;
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

uint64_t sub_1DD579304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
        result = sub_1DD6405A8();
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

          v2 = v24;
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

void sub_1DD579514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v33;
  a32 = v34;
  v60 = v35;
  v36 = v32;
  v37 = *v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  v40 = sub_1DD640868();
  if (*(v37 + 16))
  {
    v41 = 0;
    OUTLINED_FUNCTION_65_6();
    v44 = v43 & v42;
    v46 = (v45 + 63) >> 6;
    v47 = v40 + 56;
    if ((v43 & v42) != 0)
    {
      while (1)
      {
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
LABEL_9:
        v52 = *(*(v37 + 48) + 8 * (v48 | (v41 << 6)));
        sub_1DD640E28();

        v60(&a12);
        sub_1DD640E78();
        OUTLINED_FUNCTION_64_5();
        if (v53)
        {
          break;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_19:
        OUTLINED_FUNCTION_7_39();
        *(v47 + v57) |= v58;
        *(*(v40 + 48) + 8 * v59) = v52;
        ++*(v40 + 16);
        if (!v44)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_3();
      while (1)
      {
        OUTLINED_FUNCTION_32_14();
        if (v53)
        {
          if (v55)
          {
            break;
          }
        }

        if (v54 == v56)
        {
          v54 = 0;
        }

        if (*(v47 + 8 * v54) != -1)
        {
          OUTLINED_FUNCTION_8_41();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v49 = v41;
      while (1)
      {
        v41 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v41 >= v46)
        {

          v36 = v32;
          goto LABEL_23;
        }

        ++v49;
        if (*(v37 + 56 + 8 * v41))
        {
          OUTLINED_FUNCTION_14_3();
          v44 = v51 & v50;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v36 = v40;
    OUTLINED_FUNCTION_54_8();
  }
}

uint64_t sub_1DD5796C0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v28 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  result = sub_1DD640868();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v1;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v5 + 48);
        v19 = *(v30 + 72);
        sub_1DD4A0930(v18 + v19 * (v15 | (v8 << 6)), v32);
        sub_1DD640E28();
        sub_1DD63D078();
        sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1DD63FCF8();
        sub_1DD63FCF8();
        result = sub_1DD640E78();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_1DD4A09A0(v32, *(v7 + 48) + v23 * v19);
        ++*(v7 + 16);
        v5 = v29;
        if (!v12)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD5799E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  result = sub_1DD640868();
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
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        result = MEMORY[0x1E12B3110](*(v5 + 40), v15, 4);
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
        *(*(v5 + 48) + 4 * v19) = v15;
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD579BD8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD63D0F8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB0, &qword_1DD65CE98);
  v7 = sub_1DD640868();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1DD63FCE8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DD579EF0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DD63F8B8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF80, &qword_1DD65CE68);
  v7 = sub_1DD640868();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0], MEMORY[0x1E69D27B8]);
        result = sub_1DD63FCE8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

void sub_1DD57A208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_32_17(v6, v7, v8);
  OUTLINED_FUNCTION_70_2();
  v9 = sub_1DD640868();
  if (*(v3 + 16))
  {
    v22 = v2;
    v10 = 0;
    OUTLINED_FUNCTION_48_15();
    if (v2)
    {
      while (1)
      {
        OUTLINED_FUNCTION_88();
LABEL_9:
        v15 = *(*(v3 + 48) + (v11 | (v10 << 6)));
        sub_1DD640E28();
        MEMORY[0x1E12B3140](v15);
        sub_1DD640E78();
        OUTLINED_FUNCTION_57_12();
        if (v16)
        {
          break;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_19:
        OUTLINED_FUNCTION_7_39();
        OUTLINED_FUNCTION_86_2();
        *(v21 + v20) = v15;
        OUTLINED_FUNCTION_46_3();
        if (!v2)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_3();
      while (1)
      {
        OUTLINED_FUNCTION_32_14();
        if (v16)
        {
          if (v18)
          {
            break;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (*(v4 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_8_41();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          v2 = v22;
          goto LABEL_23;
        }

        ++v12;
        if (*(v3 + 56 + 8 * v10))
        {
          OUTLINED_FUNCTION_14_3();
          v2 = (v14 & v13);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v2 = v9;
    OUTLINED_FUNCTION_41_13();
  }
}

uint64_t sub_1DD57A348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
    v29 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_1DD640E28();
        MEMORY[0x1E12B3140](*(v16 + 16));
        v17 = *(v16 + 16);
        if (v17)
        {

          v18 = v16 + 40;
          do
          {

            sub_1DD63FD28();

            v18 += 16;
            --v17;
          }

          while (v17);
        }

        else
        {
        }

        result = sub_1DD640E78();
        v5 = v29;
        v19 = -1 << *(v29 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v29 + 48) + 8 * v22) = v16;
        ++*(v29 + 16);
        v3 = v28;
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
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD57A5C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v30 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 48 * (v13 | (v6 << 6));
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        v32 = *(v16 + 24);
        v33 = *v16;
        v31 = *(v16 + 32);
        v19 = *(v16 + 40);
        sub_1DD640E28();
        if (v19)
        {
          if (v19 == 1)
          {
            MEMORY[0x1E12B3140](1);

            sub_1DD63FD28();
            MEMORY[0x1E12B3140](v18);
          }

          else
          {
            MEMORY[0x1E12B3140](2);

            sub_1DD63FD28();
            sub_1DD63FD28();
          }
        }

        else
        {
          MEMORY[0x1E12B3140](0);

          sub_1DD63FD28();
          MEMORY[0x1E12B3140](v18);
          sub_1DD640E48();
          if (v31)
          {
            sub_1DD63FD28();
          }

          LOBYTE(v19) = 0;
        }

        result = sub_1DD640E78();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        v24 = v31;
LABEL_28:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v29 = *(v5 + 48) + 48 * v23;
        *v29 = v33;
        *(v29 + 8) = v17;
        *(v29 + 16) = v18;
        *(v29 + 24) = v32;
        *(v29 + 32) = v24;
        *(v29 + 40) = v19;
        ++*(v5 + 16);
        v3 = v30;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v20) >> 6;
      v24 = v31;
      while (++v22 != v26 || (v25 & 1) == 0)
      {
        v27 = v22 == v26;
        if (v22 == v26)
        {
          v22 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v22);
        if (v28 != -1)
        {
          v23 = __clz(__rbit64(~v28)) + (v22 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_32;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD57A914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  result = sub_1DD640868();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v34 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_1DD640E28();

        v33 = v17;
        sub_1DD63FD28();
        if (v20)
        {
          MEMORY[0x1E12B3140](1);
          v21 = v19;
          sub_1DD63FD28();
        }

        else
        {
          v21 = v19;
          MEMORY[0x1E12B3140](0);
        }

        result = sub_1DD640E78();
        v22 = -1 << *(v5 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v5 + 48) + 32 * v25);
        v3 = v32;
        *v30 = v33;
        v30[1] = v18;
        v30[2] = v21;
        v30[3] = v20;
        ++*(v5 + 16);
        v10 = v34;
        if (!v34)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v34 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DD57ABAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  result = sub_1DD640868();
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
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        sub_1DD640E28();
        sub_1DD538ED0(v15);
        sub_1DD63FD28();

        result = sub_1DD640E78();
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
        *(*(v5 + 48) + 2 * v19) = v15;
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

uint64_t sub_1DD57AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1DD57AFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_13_41()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1DD63FCE8();
}

uint64_t OUTLINED_FUNCTION_32_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_53_10(uint64_t a1)
{

  return sub_1DD63FD98();
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t a1)
{

  return sub_1DD63FCE8();
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return sub_1DD640E28();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return sub_1DD640858();
}

uint64_t OUTLINED_FUNCTION_79_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_82_2(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1DD3EB41C(v1, v0);
}

double OUTLINED_FUNCTION_93_1()
{

  return result;
}

double OUTLINED_FUNCTION_94_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_95_0()
{
}

uint64_t OUTLINED_FUNCTION_96_0(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_97_1()
{

  return result;
}

uint64_t sub_1DD57B850(_BYTE *a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = &unk_1F58ACEB8;
    }

    else
    {
      v4 = &unk_1F58ACEE0;
    }

    sub_1DD56C5AC(v4);
  }

  v5 = type metadata accessor for DateTimeConstraint();
  v6 = OUTLINED_FUNCTION_6(v5);
  return OUTLINED_FUNCTION_0_120(v6, v7, v8, v9, v10, v11, v12, v13, v15, *v16, *&v16[4], v16[6], v3, 0);
}

uint64_t sub_1DD57B8EC(uint64_t a1, char *a2)
{
  if (*(a1 + 25) == 13)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (*(a1 + 24))
  {
    LOBYTE(v3) = 0;
  }

  v16 = v3;
  v15 = *a2;
  v4 = type metadata accessor for DateTimeConstraint();
  v5 = OUTLINED_FUNCTION_6(v4);
  return OUTLINED_FUNCTION_0_120(v5, v6, v7, v8, v9, v10, v11, v12, v13, *v14, *&v14[4], v14[6], v15, v16);
}

unsigned __int8 *sub_1DD57B970@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 > 0x18)
  {
    v3 = 2;
  }

  else
  {
    v3 = byte_1DD65CF68[v2];
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DD57B9D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (*(result + 48) == 5)
  {
    v7 = *(result + 40);
    v8 = *(result + 24);
    v30 = *(result + 32);
    v29 = 20;
    type metadata accessor for DateTime.Interval();
    swift_allocObject();
    v9 = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v8, 0, &v30, &v29);
    v10 = *(v7 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      result = sub_1DD55B198();
      v12 = result;
      v14 = v13;
      v16 = v15;
      while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
      {
        if (((*(v7 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_20;
        }

        if (*(v7 + 36) != v14)
        {
          goto LABEL_21;
        }

        v28 = *(*(v7 + 48) + v12);
        type metadata accessor for DateTime.Date();
        swift_allocObject();
        v17 = DateTime.Date.init(withDayOfWeek:)(&v28);
        type metadata accessor for DateTime();
        swift_allocObject();
        DateTime.init(withDate:)(v17);
        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        result = sub_1DD57BCD4(v12, v14, v16 & 1, v7);
        v12 = result;
        v14 = v18;
        v16 = v19;
        if (!--v10)
        {
          sub_1DD3AA558(result, v18, v19 & 1);
          v11 = v26;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    sub_1DD418CA4(v11);
    v21 = v20;
    v22 = *a6;
    result = sub_1DD3CC020();
    if (result)
    {
      v23 = result;
      if (result < 1)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1E12B2C10](v24, v22);
        }

        else
        {
          v25 = *(v22 + 8 * v24 + 32);
        }

        ++v24;
        v27 = 3;
        type metadata accessor for DateTime.RecurrencePattern();
        swift_allocObject();
        *(v25 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern) = DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(0, v9, 0, 1, v21, 0, 0, &v27);
      }

      while (v23 != v24);
    }
  }

  return result;
}

uint64_t sub_1DD57BCD4(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_1DD640748();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DD57BD74(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57BDD8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_1DD640E58();
  return sub_1DD640E78();
}

uint64_t sub_1DD57BE98(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 31085;
  }

  else
  {
    v4 = 6647407;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57BEF4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 28271;
    }
  }

  else
  {
    v5 = 0x7369206572656877;
  }

  OUTLINED_FUNCTION_12_36(v2, v5, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57BF98(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 1918985582;
    }
  }

  else
  {
    v5 = 0x6E656E69746E6F63;
  }

  OUTLINED_FUNCTION_12_36(v2, v5, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C0E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6973736573736F70;
    }

    else
    {
      v4 = 1918985582;
    }
  }

  else
  {
    v4 = 28265;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C160(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6D6D6F6365526C6DLL;
    }

    else
    {
      v4 = 0x6369736162;
    }
  }

  else
  {
    v4 = 0x53656E4F69726973;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C200(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 6647407;
  }

  else
  {
    v4 = 0x79627261656ELL;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C264(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 1918985582;
  }

  else
  {
    v4 = 28265;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C308(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 0x6156656C646E6168;
  }

  else
  {
    v4 = 25705;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C38C(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  MEMORY[0x1E12B3140](v1 + 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57C3CC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 0x65756C6176;
  }

  else
  {
    v4 = 1701869940;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C430(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 6581861;
    }

    else
    {
      v4 = 0x746573746F6ELL;
    }
  }

  else
  {
    v4 = 0x7472617473;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C4C8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x697375427478656ELL;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C574(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  MEMORY[0x1E12B3140](qword_1DD65D3D0[v1]);
  return sub_1DD640E78();
}

uint64_t sub_1DD57C5D4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    v4 = 1918985582;
  }

  else
  {
    v4 = 29793;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C630(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6E49646E61436F6ELL;
    }

    else
    {
      v4 = 1701736302;
    }
  }

  else
  {
    v4 = 0x737961776C61;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C6D4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v5 = 29545;
    }

    else
    {
      v5 = 1918985582;
    }
  }

  else
  {
    v5 = 29793;
  }

  OUTLINED_FUNCTION_12_36(v2, v5, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C788(uint64_t a1, char a2)
{
  sub_1DD640E28();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C838(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C8AC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  v2 = sub_1DD538ED0(v1);
  OUTLINED_FUNCTION_2_39(v2, v3, v4);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C8F0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0xD000000000000016;
    }
  }

  else
  {
    v4 = 7562617;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57C9A0(uint64_t a1, char a2)
{
  sub_1DD640E28();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CA74(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD57CAE0(uint64_t a1)
{
  OUTLINED_FUNCTION_19_31(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_2_39(v3, v4, v5);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CB58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }
  }

  else
  {
    v4 = 2037672291;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CBCC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6574617473;
    }

    else
    {
      v4 = 1918985582;
    }
  }

  else
  {
    v4 = 28265;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CC44(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x79746E756F63;
    }

    else
    {
      v4 = 1918985582;
    }
  }

  else
  {
    v4 = 28265;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD57CD38(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_31(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_2_39(v3, v4, v5);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CD84(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }
  }

  else
  {
    v4 = 0x7972746E756F63;
  }

  OUTLINED_FUNCTION_12_36(v2, v4, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CE00(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_3(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 1918985582;
    }
  }

  else
  {
    v5 = 0x65646F6370697ALL;
  }

  OUTLINED_FUNCTION_12_36(v2, v5, v3);

  return sub_1DD640E78();
}

uint64_t sub_1DD57CE90(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CEE4(uint64_t a1, uint64_t a2)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a2);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CF28(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CF64(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  MEMORY[0x1E12B3140](v1 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CFD0(uint64_t a1)
{
  OUTLINED_FUNCTION_19_31(a1);
  v1(v4, v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD57D010(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](v6, v5);
    }

    v7 = v5;
    v8 = a2;
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v24 = a1 + 56;
      v10 = 1 << *(a1 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(a1 + 56);
      v6 = type metadata accessor for DateTime();
      v13 = 0;
      v14 = (v10 + 63) >> 6;
      v25 = v14;
      if (v12)
      {
        while (2)
        {
          v15 = __clz(__rbit64(v12));
          v26 = (v12 - 1) & v12;
LABEL_33:
          v18 = *(*(a1 + 48) + 8 * (v15 | (v13 << 6)));
          sub_1DD640E28();

          sub_1DD489FC8(v27);
          v19 = sub_1DD640E78();
          v20 = ~(-1 << *(a2 + 32));
          do
          {
            v21 = v19 & v20;
            if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {

              return 0;
            }

            v23 = static DateTime.== infix(_:_:)(v22, v18);

            v19 = v21 + 1;
          }

          while (!v23);

          v14 = v25;
          v12 = v26;
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return 1;
        }

        v17 = *(v24 + 8 * v13);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v26 = (v17 - 1) & v17;
          goto LABEL_33;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6A200](v6, v5);
    }

    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
  }

  return sub_1DD57EAD4(v7, v8);
}

uint64_t sub_1DD57D274(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v15 = sub_1DD640E78();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1DD640CD8();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD57D41C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v12);
    result = sub_1DD640E78();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  OUTLINED_FUNCTION_5_75();
  result = swift_allocObject();
  v17 = *a8;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = v17;
  return result;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrencePeriod:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  DateTime.RecurrencePattern.init(withRecurrencePeriod:)(a1);
  return v2;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_5_75();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = 3;
  return result;
}

uint64_t DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4 & 1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return OUTLINED_FUNCTION_16_41(3);
}

uint64_t DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = *a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  return OUTLINED_FUNCTION_16_41(v9);
}

uint64_t sub_1DD57D78C(void *a1)
{
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD49CDC8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 40) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v3 = *(v1 + 32);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v3);
  }

  sub_1DD57EBD8(a1, *(v1 + 48));
  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_64();
    v4 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_64();
    v5 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v5);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 72) == 3)
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  sub_1DD63FD28();
}

uint64_t static DateTime.RecurrencePattern.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for DateTime.DateTimeRange();

    OUTLINED_FUNCTION_14_38();
    v5 = static DateTime.DateTimeRange.== infix(_:_:)();

    if (!v5)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    type metadata accessor for DateTime.Interval();
    if (!static DateTime.Interval.== infix(_:_:)(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if ((sub_1DD57D010(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!v9)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v10 = OUTLINED_FUNCTION_14_38();
    v12 = static DateTime.== infix(_:_:)(v10, v11);

    if (!v12)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (!v13)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  type metadata accessor for DateTime();

  v14 = OUTLINED_FUNCTION_14_38();
  v16 = static DateTime.== infix(_:_:)(v14, v15);

  if (!v16)
  {
    return 0;
  }

LABEL_26:
  v17 = *(a1 + 72);
  v18 = *(a2 + 72);
  result = v18 == 3 && v17 == 3;
  if (v17 != 3 && v18 != 3)
  {
    v21 = *(a1 + 72);

    return sub_1DD3AE4E8(v21, v18);
  }

  return result;
}

unint64_t sub_1DD57DA68()
{
  if (*(v0 + 24))
  {

    sub_1DD6408D8();

    OUTLINED_FUNCTION_26_1();
    v28[0] = 0xD000000000000011;
    v28[1] = v1;
    v2 = sub_1DD4E0F18();
    MEMORY[0x1E12B2260](v2);

    v3 = v28[1];
    sub_1DD3BE2A4();
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6 >= *(v4 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v5 = v26;
    }

    *(v5 + 16) = v6 + 1;
    v7 = v5 + 16 * v6;
    *(v7 + 32) = 0xD000000000000011;
    *(v7 + 40) = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD6408D8();

  OUTLINED_FUNCTION_26_1();
  v28[0] = 0xD000000000000014;
  v28[1] = v8;
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_0_121();
  sub_1DD57F010(v9, 255, v10, &protocol conformance descriptor for DateTime);
  v11 = sub_1DD640278();
  MEMORY[0x1E12B2260](v11);

  v12 = v28[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD3BE2A4();
    v5 = v24;
  }

  v13 = *(v5 + 16);
  if (v13 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_2();
    v5 = v25;
  }

  *(v5 + 16) = v13 + 1;
  v14 = v5 + 16 * v13;
  *(v14 + 32) = 0xD000000000000014;
  *(v14 + 40) = v12;
  v15 = *(v0 + 72);
  if (v15 != 3)
  {
    strcpy(v28, "definedValue=");
    HIWORD(v28[1]) = -4864;
    MEMORY[0x1E12B2260](*&aEverydayweekda_1[8 * v15], 0xE800000000000000);

    v16 = v28[0];
    v17 = v28[1];
    v18 = *(v5 + 16);
    if (v18 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v5 = v27;
    }

    *(v5 + 16) = v18 + 1;
    v19 = v5 + 16 * v18;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;
  }

  sub_1DD6408D8();

  OUTLINED_FUNCTION_26_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v20 = sub_1DD63FD58();
  v22 = v21;

  MEMORY[0x1E12B2260](v20, v22);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0xD000000000000012;
}