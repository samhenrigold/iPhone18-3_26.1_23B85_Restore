uint64_t sub_249F87A8C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F86F08(v16, a4 & 1);
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F882AC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 104 * v11;

    return sub_249F885F8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 104 * v11;
  v26 = *a1;
  v27 = a1[2];
  *(v25 + 16) = a1[1];
  *(v25 + 32) = v27;
  *v25 = v26;
  v28 = a1[3];
  v29 = a1[4];
  v30 = a1[5];
  *(v25 + 96) = *(a1 + 12);
  *(v25 + 64) = v29;
  *(v25 + 80) = v30;
  *(v25 + 48) = v28;
  v31 = v21[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v32;
}

uint64_t sub_249F87C34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F86C60(v16, a4 & 1);
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F8813C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_249F87DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F872D0(v16, a4 & 1);
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_249F9AE04();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_249F8848C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_249F87F28(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F86B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249F87574(v16, a4 & 1);
      v11 = sub_249F86B30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249F9AE04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F88654();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 120 * v11;

    return sub_249F8883C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 120 * v11;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  *(v25 + 32) = a1[2];
  *(v25 + 48) = v28;
  *v25 = v26;
  *(v25 + 16) = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[6];
  *(v25 + 112) = *(a1 + 14);
  *(v25 + 80) = v30;
  *(v25 + 96) = v31;
  *(v25 + 64) = v29;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

unint64_t sub_249F880D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 104 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 96) = *(a4 + 96);
  v8 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v8;
  v9 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v9;
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

void *sub_249F8813C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_249F882AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_249F80718(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
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

      v15 = *(v2 + 64 + 8 * v8);
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

id sub_249F8848C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_249F88654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v2 = *v0;
  v3 = sub_249F9AD94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_249F85EC4(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 120;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 80);
      v22 = *(v21 + 96);
      v24 = *(v21 + 64);
      v44 = *(v21 + 112);
      v42 = v23;
      v43 = v22;
      v41 = v24;
      v26 = *v21;
      v25 = *(v21 + 16);
      v27 = *(v21 + 48);
      v39 = *(v21 + 32);
      v40 = v27;
      v37 = v26;
      v38 = v25;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      v30 = v37;
      v31 = v38;
      v32 = v40;
      *(v29 + 32) = v39;
      *(v29 + 48) = v32;
      *v29 = v30;
      *(v29 + 16) = v31;
      v33 = v41;
      v34 = v42;
      v35 = v43;
      *(v29 + 112) = v44;
      *(v29 + 80) = v34;
      *(v29 + 96) = v35;
      *(v29 + 64) = v33;
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

      v15 = *(v2 + 64 + 8 * v8);
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F888B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_18EcosystemAnalytics11BinaryImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_249F88A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_249F88A9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_249F88B1C()
{
  v1 = *v0;
  sub_249F9AE64();
  MEMORY[0x24C20A630](v1);
  return sub_249F9AE84();
}

uint64_t sub_249F88B90(uint64_t a1)
{
  v2 = *v1;
  sub_249F9AE64();
  MEMORY[0x24C20A630](v2);
  return sub_249F9AE84();
}

uint64_t sub_249F88BD4(uint64_t a1, uint64_t a2)
{
  if (sub_249F9AAD4() & 1) != 0 || (sub_249F9AAD4())
  {
    return 0;
  }

  if (sub_249F9AAD4())
  {
    return 1;
  }

  if (sub_249F9AAD4())
  {
    return 2;
  }

  if (sub_249F9AAD4())
  {
    return 3;
  }

  if (sub_249F9AAD4())
  {
    return 4;
  }

  return 5;
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_249F88E80()
{
  result = qword_27EF2CD88;
  if (!qword_27EF2CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CD88);
  }

  return result;
}

uint64_t sub_249F88ED4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v140 = a5;
  v141 = a6;
  LODWORD(v159) = a4;
  v160 = a3;
  v161 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v122 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v122 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v122 - v17;
  v19 = type metadata accessor for TargetType(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v122 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v162 = v122 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = (v122 - v28);
  sub_249F7A228(a1, v122 - v28);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_249F8065C(v29);
    v30 = sub_249F9ABA4();
    v161 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v31 = sub_249F9AC64();
    sub_249F9A874(v30, &dword_249F74000, v31, "EcosystemAnalytics.framework:MachOAnalysisPerformer: AnalyzableTarget type does not match expected value", 104, 2, MEMORY[0x277D84F90]);

    sub_249F7A228(a1, v18);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_249F805EC(v18, v16);
    v32 = *(v20 + 48);
    v33 = v32(v16, 1, v19);
    v158 = v18;
    if (v33 == 1)
    {
      v34 = v162;
      swift_storeEnumTagMultiPayload();
      if (v32(v16, 1, v19) != 1)
      {
        sub_249F7A1C0(v16);
      }
    }

    else
    {
      v34 = v162;
      sub_249F7A2F8(v16, v162);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_249F9B940;
    *(v44 + 32) = 0x74536E6F6D656164;
    *(v44 + 40) = 0xEB00000000657461;
    *(v44 + 48) = sub_249F9A9A4();
    *(v44 + 56) = 0xD000000000000012;
    *(v44 + 64) = 0x8000000249F9CCF0;
    *(v44 + 72) = sub_249F9A9A4();
    *(v44 + 80) = 0x546572756C696166;
    *(v44 + 88) = 0xEB00000000657079;
    *(v44 + 96) = sub_249F9A9A4();
    strcpy((v44 + 104), "targetBundleID");
    *(v44 + 119) = -18;
    *(v44 + 120) = sub_249F9A9A4();
    *(v44 + 128) = 0xD000000000000013;
    *(v44 + 136) = 0x8000000249F9CD10;
    *(v44 + 144) = sub_249F9A9A4();
    *(v44 + 152) = 0x614E746567726174;
    *(v44 + 160) = 0xEA0000000000656DLL;
    *(v44 + 168) = sub_249F9A9A4();
    *(v44 + 176) = 0x6150746567726174;
    *(v44 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v45 = sub_249F9A9A4();

    *(v44 + 192) = v45;
    *(v44 + 200) = 0x7954746567726174;
    *(v44 + 208) = 0xEA00000000006570;
    v46 = v34;
    sub_249F7A228(v34, v163);
    sub_249F9AA14();
    v47 = sub_249F9A9A4();

    *(v44 + 216) = v47;
    *(v44 + 224) = 1701869940;
    *(v44 + 232) = 0xE400000000000000;
    *(v44 + 240) = sub_249F9AB64();
    strcpy((v44 + 248), "failureRetries");
    *(v44 + 263) = -18;
    *(v44 + 264) = sub_249F9AB64();
    v48 = sub_249F791D4(v44);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v49 = sub_249F9ABA4();
    v50 = sub_249F9AC64();
    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v165[0] = v52;
      *v51 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v53 = sub_249F9A974();
      v55 = sub_249F78A30(v53, v54, v165);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_249F74000, v50, v49, "Sending failure analysis event: %s)", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C20AE50](v52, -1, -1);
      MEMORY[0x24C20AE50](v51, -1, -1);
    }

    v56 = v158;
    v57 = sub_249F9A9A4();
    v58 = swift_allocObject();
    *(v58 + 16) = v48;
    v165[4] = sub_249F7ABC0;
    v165[5] = v58;
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 1107296256;
    v165[2] = sub_249F77EF4;
    v165[3] = &block_descriptor_14;
    v59 = _Block_copy(v165);

    AnalyticsSendEventLazy();
    _Block_release(v59);

    sub_249F8065C(v46);
    v60 = v56;
    return sub_249F7A1C0(v60);
  }

  v35 = v159;
  v158 = v25;
  v162 = v13;
  v37 = *v29;
  v36 = v29[1];
  v38 = v160;
  if (v161())
  {

    v39 = sub_249F9ABA4();
    v161 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v40 = sub_249F9AC64();
    sub_249F9A874(v39, &dword_249F74000, v40, "EcosystemAnalytics.framework:MachOAnalysisPerformer: Interrupted, returning early", 81, 2, MEMORY[0x277D84F90]);

    v41 = v162;
    sub_249F7A228(a1, v162);
    (*(v20 + 56))(v41, 0, 1, v19);
    sub_249F805EC(v41, v10);
    v42 = *(v20 + 48);
    if (v42(v10, 1, v19) == 1)
    {
      v43 = v158;
      swift_storeEnumTagMultiPayload();
      if (v42(v10, 1, v19) != 1)
      {
        sub_249F7A1C0(v10);
      }
    }

    else
    {
      v43 = v158;
      sub_249F7A2F8(v10, v158);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_249F9B940;
    *(v67 + 32) = 0x74536E6F6D656164;
    *(v67 + 40) = 0xEB00000000657461;
    *(v67 + 48) = sub_249F9A9A4();
    *(v67 + 56) = 0xD000000000000012;
    *(v67 + 64) = 0x8000000249F9CCF0;
    *(v67 + 72) = sub_249F9A9A4();
    *(v67 + 80) = 0x546572756C696166;
    *(v67 + 88) = 0xEB00000000657079;
    *(v67 + 96) = sub_249F9A9A4();
    strcpy((v67 + 104), "targetBundleID");
    *(v67 + 119) = -18;
    *(v67 + 120) = sub_249F9A9A4();
    *(v67 + 128) = 0xD000000000000013;
    *(v67 + 136) = 0x8000000249F9CD10;
    *(v67 + 144) = sub_249F9A9A4();
    *(v67 + 152) = 0x614E746567726174;
    *(v67 + 160) = 0xEA0000000000656DLL;
    *(v67 + 168) = sub_249F9A9A4();
    *(v67 + 176) = 0x6150746567726174;
    *(v67 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v68 = sub_249F9A9A4();

    *(v67 + 192) = v68;
    *(v67 + 200) = 0x7954746567726174;
    *(v67 + 208) = 0xEA00000000006570;
    v69 = v43;
    sub_249F7A228(v43, v163);
    sub_249F9AA14();
    v70 = sub_249F9A9A4();

    *(v67 + 216) = v70;
    *(v67 + 224) = 1701869940;
    *(v67 + 232) = 0xE400000000000000;
    *(v67 + 240) = sub_249F9AB64();
    strcpy((v67 + 248), "failureRetries");
    *(v67 + 263) = -18;
    *(v67 + 264) = sub_249F9AB64();
    v71 = sub_249F791D4(v67);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v72 = sub_249F9ABA4();
    v73 = sub_249F9AC64();
    if (os_log_type_enabled(v73, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v165[0] = v75;
      *v74 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v76 = sub_249F9A974();
      v78 = sub_249F78A30(v76, v77, v165);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_249F74000, v73, v72, "Sending failure analysis event: %s)", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x24C20AE50](v75, -1, -1);
      MEMORY[0x24C20AE50](v74, -1, -1);
    }

    v79 = v162;
    v80 = sub_249F9A9A4();
    v81 = swift_allocObject();
    *(v81 + 16) = v71;
    v165[4] = sub_249F7ABC0;
    v165[5] = v81;
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 1107296256;
    v165[2] = sub_249F77EF4;
    v165[3] = &block_descriptor_21;
    v82 = _Block_copy(v165);

    AnalyticsSendEventLazy();
    _Block_release(v82);

    sub_249F8065C(v69);
    v60 = v79;
    return sub_249F7A1C0(v60);
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  v123 = v36;
  v61 = sub_249F85C5C(v37, v36, v161, v38);

  v122[2] = v61;
  v62 = sub_249F830E8();
  v166 = v62;
  if (v35)
  {
    v63 = v62;
    v64 = sub_249F9ABB4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v65 = sub_249F9AC64();
    sub_249F9A874(v64, &dword_249F74000, v65, "EcosystemAnalytics.framework:MachOAnalysisPerformer: Running CoreSymbolication against the binary", 97, 2, MEMORY[0x277D84F90]);

    v66 = sub_249F83350();
    if (v66)
    {
      if (v63)
      {
        sub_249F83258(v66);
      }

      else
      {
      }
    }
  }

  v84 = v123;

  sub_249F7B308(v37, v84, &v167);
  v85 = v166;
  if (v166)
  {
    v86 = v166;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v87 = *(v86 + 16);
  if (!v87)
  {

    goto LABEL_57;
  }

  v88 = v169;
  v163 = v168;
  v137 = 0x8000000249F9DE80;
  v89 = v170;
  v90 = v171;
  v92 = v172;
  v91 = v173;
  v133 = 0x8000000249F9DD10;
  v134 = "appBundleVersion";
  v132 = sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v122[1] = v85;

  v93 = 0;
  if (v88)
  {
    v94 = v163;
  }

  else
  {
    v94 = 0x6E776F6E6B6E75;
  }

  v95 = 0xE700000000000000;
  v138 = v88;
  if (v88)
  {
    v96 = v88;
  }

  else
  {
    v96 = 0xE700000000000000;
  }

  v130 = v96;
  v131 = v94;
  if (v90)
  {
    v97 = v89;
  }

  else
  {
    v97 = 0x6E776F6E6B6E75;
  }

  v135 = v91;
  v136 = v90;
  if (v90)
  {
    v98 = v90;
  }

  else
  {
    v98 = 0xE700000000000000;
  }

  v128 = v98;
  v129 = v97;
  if (v91)
  {
    v99 = v92;
  }

  else
  {
    v99 = 0x6E776F6E6B6E75;
  }

  if (v91)
  {
    v95 = v91;
  }

  v126 = v95;
  v127 = v99;
  v125 = v87 - 1;
  v100 = 32;
  v124 = xmmword_249F9C090;
  v139 = v86;
  do
  {
    v163 = v93;
    v142 = v100;
    memcpy(v165, (v86 + v100), sizeof(v165));
    if (!v165[33])
    {
      v101 = v165[20];
      v153 = LOBYTE(v165[21]);
      v105 = v165[23];
      v155 = v165[24];
      v156 = v165[22];
      v104 = v165[25];
      v151 = v165[26];
      v103 = v165[27];
      v159 = v165[19];
      v160 = v165[28];
      v102 = v165[29];
      goto LABEL_50;
    }

    v101 = v165[35];
    if (v165[35])
    {
      v102 = v165[44];
      v103 = v165[42];
      v151 = v165[41];
      v104 = v165[40];
      v105 = v165[38];
      v155 = v165[39];
      v156 = v165[37];
      v153 = LOBYTE(v165[36]);
      v159 = v165[34];
      v160 = v165[43];
LABEL_50:
      v152 = v103;

      v158 = v105;

      v157 = v104;

      v162 = v101;

      v161 = v102;

      goto LABEL_52;
    }

    v156 = v165[32];
    v158 = v165[33];

    v153 = 5;
    v160 = 0x6E776F6E6B6E75;
    v161 = 0xE700000000000000;
    v159 = 0x6E776F6E6B6E75;
    v162 = 0xE700000000000000;
    v155 = 0x6E776F6E6B6E75;
    v157 = 0xE700000000000000;
    v151 = 0x6E776F6E6B6E75;
    v152 = 0xE700000000000000;
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v106 = swift_allocObject();
    *(v106 + 16) = v124;
    *(v106 + 32) = 0x6C646E7542707061;
    v154 = v106 + 32;
    *(v106 + 40) = 0xEB00000000444965;
    sub_249F8BC8C(v165, v164);

    v107 = sub_249F9A9A4();

    v150 = 0xD000000000000010;
    *(v106 + 48) = v107;
    *(v106 + 56) = 0xD000000000000010;
    *(v106 + 64) = v137;

    v108 = sub_249F9A9A4();

    *(v106 + 72) = v108;
    *(v106 + 80) = 0x656D614E707061;
    *(v106 + 88) = 0xE700000000000000;
    v148 = v165[7];
    v149 = v165[6];
    v143 = v165[10];
    v144 = v165[12];
    v147 = v165[15];
    v145 = v165[11];
    v146 = v165[16];

    v109 = sub_249F9A9A4();

    *(v106 + 96) = v109;
    *(v106 + 104) = 1751347809;
    *(v106 + 112) = 0xE400000000000000;
    *(v106 + 120) = sub_249F9A9A4();
    strcpy((v106 + 128), "binaryCDHash");
    *(v106 + 141) = 0;
    *(v106 + 142) = -5120;
    *(v106 + 144) = sub_249F9A9A4();
    strcpy((v106 + 152), "binaryLocation");
    *(v106 + 167) = -18;
    v110 = sub_249F9A9A4();

    *(v106 + 168) = v110;
    *(v106 + 176) = 0x61507972616E6962;
    *(v106 + 184) = 0xEA00000000006874;
    *(v106 + 192) = sub_249F9A9A4();
    strcpy((v106 + 200), "binaryTeamID");
    *(v106 + 213) = 0;
    *(v106 + 214) = -5120;
    *(v106 + 216) = sub_249F9A9A4();
    *(v106 + 224) = 0x55557972616E6962;
    *(v106 + 232) = 0xEA00000000004449;
    *(v106 + 240) = sub_249F9A9A4();
    strcpy((v106 + 248), "binaryVersion");
    *(v106 + 262) = -4864;
    *(v106 + 264) = sub_249F9A9A4();
    *(v106 + 272) = 0x48444362696C7964;
    *(v106 + 280) = 0xEB00000000687361;
    v111 = sub_249F9A9A4();

    *(v106 + 288) = v111;
    strcpy((v106 + 296), "dylibLocation");
    *(v106 + 310) = -4864;
    v112 = sub_249F9A9A4();

    *(v106 + 312) = v112;
    *(v106 + 320) = 0x74615062696C7964;
    *(v106 + 328) = 0xE900000000000068;
    v113 = sub_249F9A9A4();

    *(v106 + 336) = v113;
    *(v106 + 344) = 0x61655462696C7964;
    *(v106 + 352) = 0xEB0000000044496DLL;
    v114 = sub_249F9A9A4();

    *(v106 + 360) = v114;
    *(v106 + 368) = 0x49555562696C7964;
    *(v106 + 376) = 0xE900000000000044;
    v115 = sub_249F9A9A4();

    *(v106 + 384) = v115;
    strcpy((v106 + 392), "dylibVersion");
    *(v106 + 405) = 0;
    *(v106 + 406) = -5120;
    v116 = sub_249F9A9A4();

    *(v106 + 408) = v116;
    *(v106 + 416) = 0x656372756F73;
    *(v106 + 424) = 0xE600000000000000;
    *(v106 + 432) = sub_249F9A9A4();
    *(v106 + 440) = 0x614E6C6F626D7973;
    *(v106 + 448) = 0xEA0000000000656DLL;
    *(v106 + 456) = sub_249F9A9A4();
    strcpy((v106 + 464), "symbolOffset");
    *(v106 + 477) = 0;
    *(v106 + 478) = -5120;
    *(v106 + 480) = sub_249F9A9A4();
    *(v106 + 488) = 0x794472656C6C6163;
    *(v106 + 496) = 0xEF6874615062696CLL;
    v117 = sub_249F9A9A4();
    v118 = v150;
    *(v106 + 504) = v117;
    *(v106 + 512) = v118;
    *(v106 + 520) = v133;
    *(v106 + 528) = sub_249F9A9A4();
    v119 = sub_249F791D4(v106);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v120 = sub_249F9AC14();
    sub_249F8BCE8(v165);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v119;
    sub_249F87DB0(v120, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
    sub_249F92134(v164[0], v140);

    if (v125 == v163)
    {
      goto LABEL_55;
    }

    v93 = v163 + 1;
    v86 = v139;
    v100 = v142 + 432;
  }

  while ((v163 + 1) < *(v139 + 16));
  __break(1u);
LABEL_55:

LABEL_57:
  sub_249F7B86C(&v167);
}

uint64_t sub_249F8A5A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, uint64_t a5)
{
  v139 = a5;
  LODWORD(v157) = a4;
  v158 = a3;
  v159 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v122 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v122 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v122 - v16;
  v18 = type metadata accessor for TargetType(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v161 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v160 = v122 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = (v122 - v27);
  sub_249F7A228(a1, v122 - v27);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_249F8065C(v28);
    v29 = sub_249F9ABA4();
    v159 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v30 = sub_249F9AC64();
    sub_249F9A874(v29, &dword_249F74000, v30, "EcosystemAnalytics.framework:MachOAnalysisPerformer: AnalyzableTarget type does not match expected value", 104, 2, MEMORY[0x277D84F90]);

    sub_249F7A228(a1, v17);
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_249F805EC(v17, v15);
    v31 = *(v19 + 48);
    v32 = v31(v15, 1, v18);
    v156 = v17;
    if (v32 == 1)
    {
      v33 = v160;
      swift_storeEnumTagMultiPayload();
      if (v31(v15, 1, v18) != 1)
      {
        sub_249F7A1C0(v15);
      }
    }

    else
    {
      v33 = v160;
      sub_249F7A2F8(v15, v160);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249F9B940;
    *(v43 + 32) = 0x74536E6F6D656164;
    *(v43 + 40) = 0xEB00000000657461;
    *(v43 + 48) = sub_249F9A9A4();
    *(v43 + 56) = 0xD000000000000012;
    *(v43 + 64) = 0x8000000249F9CCF0;
    *(v43 + 72) = sub_249F9A9A4();
    *(v43 + 80) = 0x546572756C696166;
    *(v43 + 88) = 0xEB00000000657079;
    *(v43 + 96) = sub_249F9A9A4();
    strcpy((v43 + 104), "targetBundleID");
    *(v43 + 119) = -18;
    *(v43 + 120) = sub_249F9A9A4();
    *(v43 + 128) = 0xD000000000000013;
    *(v43 + 136) = 0x8000000249F9CD10;
    *(v43 + 144) = sub_249F9A9A4();
    *(v43 + 152) = 0x614E746567726174;
    *(v43 + 160) = 0xEA0000000000656DLL;
    *(v43 + 168) = sub_249F9A9A4();
    *(v43 + 176) = 0x6150746567726174;
    *(v43 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v44 = sub_249F9A9A4();

    *(v43 + 192) = v44;
    *(v43 + 200) = 0x7954746567726174;
    *(v43 + 208) = 0xEA00000000006570;
    v45 = v33;
    sub_249F7A228(v33, v161);
    sub_249F9AA14();
    v46 = sub_249F9A9A4();

    *(v43 + 216) = v46;
    *(v43 + 224) = 1701869940;
    *(v43 + 232) = 0xE400000000000000;
    *(v43 + 240) = sub_249F9AB64();
    strcpy((v43 + 248), "failureRetries");
    *(v43 + 263) = -18;
    *(v43 + 264) = sub_249F9AB64();
    v47 = sub_249F791D4(v43);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v48 = sub_249F9ABA4();
    v49 = sub_249F9AC64();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v163[0] = v51;
      *v50 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v52 = sub_249F9A974();
      v54 = sub_249F78A30(v52, v53, v163);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_249F74000, v49, v48, "Sending failure analysis event: %s)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x24C20AE50](v51, -1, -1);
      MEMORY[0x24C20AE50](v50, -1, -1);
    }

    v55 = v156;
    v56 = sub_249F9A9A4();
    v57 = swift_allocObject();
    *(v57 + 16) = v47;
    v163[4] = sub_249F7A28C;
    v163[5] = v57;
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 1107296256;
    v163[2] = sub_249F77EF4;
    v163[3] = &block_descriptor_3;
    v58 = _Block_copy(v163);

    AnalyticsSendEventLazy();
    _Block_release(v58);

    sub_249F8065C(v45);
    v59 = v55;
    return sub_249F7A1C0(v59);
  }

  v34 = v157;
  v156 = v24;
  v160 = v12;
  v36 = *v28;
  v35 = v28[1];
  v37 = v158;
  if (v159())
  {

    v38 = sub_249F9ABA4();
    v159 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v39 = sub_249F9AC64();
    sub_249F9A874(v38, &dword_249F74000, v39, "EcosystemAnalytics.framework:MachOAnalysisPerformer: Interrupted, returning early", 81, 2, MEMORY[0x277D84F90]);

    v40 = v160;
    sub_249F7A228(a1, v160);
    (*(v19 + 56))(v40, 0, 1, v18);
    sub_249F805EC(v40, v9);
    v41 = *(v19 + 48);
    if (v41(v9, 1, v18) == 1)
    {
      v42 = v156;
      swift_storeEnumTagMultiPayload();
      if (v41(v9, 1, v18) != 1)
      {
        sub_249F7A1C0(v9);
      }
    }

    else
    {
      v42 = v156;
      sub_249F7A2F8(v9, v156);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_249F9B940;
    *(v68 + 32) = 0x74536E6F6D656164;
    *(v68 + 40) = 0xEB00000000657461;
    *(v68 + 48) = sub_249F9A9A4();
    *(v68 + 56) = 0xD000000000000012;
    *(v68 + 64) = 0x8000000249F9CCF0;
    *(v68 + 72) = sub_249F9A9A4();
    *(v68 + 80) = 0x546572756C696166;
    *(v68 + 88) = 0xEB00000000657079;
    *(v68 + 96) = sub_249F9A9A4();
    strcpy((v68 + 104), "targetBundleID");
    *(v68 + 119) = -18;
    *(v68 + 120) = sub_249F9A9A4();
    *(v68 + 128) = 0xD000000000000013;
    *(v68 + 136) = 0x8000000249F9CD10;
    *(v68 + 144) = sub_249F9A9A4();
    *(v68 + 152) = 0x614E746567726174;
    *(v68 + 160) = 0xEA0000000000656DLL;
    *(v68 + 168) = sub_249F9A9A4();
    *(v68 + 176) = 0x6150746567726174;
    *(v68 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v69 = sub_249F9A9A4();

    *(v68 + 192) = v69;
    *(v68 + 200) = 0x7954746567726174;
    *(v68 + 208) = 0xEA00000000006570;
    v70 = v42;
    sub_249F7A228(v42, v161);
    sub_249F9AA14();
    v71 = sub_249F9A9A4();

    *(v68 + 216) = v71;
    *(v68 + 224) = 1701869940;
    *(v68 + 232) = 0xE400000000000000;
    *(v68 + 240) = sub_249F9AB64();
    strcpy((v68 + 248), "failureRetries");
    *(v68 + 263) = -18;
    *(v68 + 264) = sub_249F9AB64();
    v72 = sub_249F791D4(v68);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v73 = sub_249F9ABA4();
    v74 = sub_249F9AC64();
    if (os_log_type_enabled(v74, v73))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v163[0] = v76;
      *v75 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v77 = sub_249F9A974();
      v79 = sub_249F78A30(v77, v78, v163);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_249F74000, v74, v73, "Sending failure analysis event: %s)", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x24C20AE50](v76, -1, -1);
      MEMORY[0x24C20AE50](v75, -1, -1);
    }

    v80 = v160;
    v81 = sub_249F9A9A4();
    v82 = swift_allocObject();
    *(v82 + 16) = v72;
    v163[4] = sub_249F7ABC0;
    v163[5] = v82;
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 1107296256;
    v163[2] = sub_249F77EF4;
    v163[3] = &block_descriptor_7;
    v83 = _Block_copy(v163);

    AnalyticsSendEventLazy();
    _Block_release(v83);

    sub_249F8065C(v70);
    v59 = v80;
    return sub_249F7A1C0(v59);
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  v60 = sub_249F85C5C(v36, v35, v159, v37);

  v122[3] = v60;
  v61 = sub_249F830E8();
  v164 = v61;
  if (v34)
  {
    v62 = v61;
    v63 = v35;
    v64 = sub_249F9ABB4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v65 = sub_249F9AC64();
    v66 = v64;
    v35 = v63;
    sub_249F9A874(v66, &dword_249F74000, v65, "EcosystemAnalytics.framework:MachOAnalysisPerformer: Running CoreSymbolication against the binary", 97, 2, MEMORY[0x277D84F90]);

    v67 = sub_249F83350();
    if (v67)
    {
      if (v62)
      {
        sub_249F83258(v67);
      }

      else
      {
      }
    }
  }

  sub_249F7B308(v36, v35, &v165);
  v85 = v164;
  if (v164)
  {
    v86 = v164;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v87 = *(v86 + 16);
  if (!v87)
  {

    goto LABEL_57;
  }

  v122[2] = v35;
  v88 = v167;
  v161 = v166;
  v136 = 0x8000000249F9DE80;
  v89 = v168;
  v90 = v169;
  v92 = v170;
  v91 = v171;
  v132 = 0x8000000249F9DD10;
  v133 = "appBundleVersion";
  v131 = sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v122[1] = v85;

  v93 = 0;
  if (v88)
  {
    v94 = v161;
  }

  else
  {
    v94 = 0x6E776F6E6B6E75;
  }

  v95 = 0xE700000000000000;
  v137 = v88;
  if (v88)
  {
    v96 = v88;
  }

  else
  {
    v96 = 0xE700000000000000;
  }

  v129 = v96;
  v130 = v94;
  if (v90)
  {
    v97 = v89;
  }

  else
  {
    v97 = 0x6E776F6E6B6E75;
  }

  v134 = v91;
  v135 = v90;
  if (v90)
  {
    v98 = v90;
  }

  else
  {
    v98 = 0xE700000000000000;
  }

  v127 = v98;
  v128 = v97;
  if (v91)
  {
    v99 = v92;
  }

  else
  {
    v99 = 0x6E776F6E6B6E75;
  }

  if (v91)
  {
    v95 = v91;
  }

  v125 = v95;
  v126 = v99;
  v124 = v87 - 1;
  v100 = 32;
  v123 = xmmword_249F9C090;
  v138 = v86;
  do
  {
    v161 = v93;
    v140 = v100;
    memcpy(v163, (v86 + v100), sizeof(v163));
    if (!v163[33])
    {
      v101 = v163[20];
      v151 = LOBYTE(v163[21]);
      v105 = v163[23];
      v153 = v163[24];
      v154 = v163[22];
      v104 = v163[25];
      v149 = v163[26];
      v103 = v163[27];
      v157 = v163[19];
      v158 = v163[28];
      v102 = v163[29];
      goto LABEL_50;
    }

    v101 = v163[35];
    if (v163[35])
    {
      v102 = v163[44];
      v103 = v163[42];
      v149 = v163[41];
      v104 = v163[40];
      v105 = v163[38];
      v153 = v163[39];
      v154 = v163[37];
      v151 = LOBYTE(v163[36]);
      v157 = v163[34];
      v158 = v163[43];
LABEL_50:
      v150 = v103;

      v156 = v105;

      v155 = v104;

      v160 = v101;

      v159 = v102;

      goto LABEL_52;
    }

    v154 = v163[32];
    v156 = v163[33];

    v151 = 5;
    v158 = 0x6E776F6E6B6E75;
    v159 = 0xE700000000000000;
    v157 = 0x6E776F6E6B6E75;
    v160 = 0xE700000000000000;
    v153 = 0x6E776F6E6B6E75;
    v155 = 0xE700000000000000;
    v149 = 0x6E776F6E6B6E75;
    v150 = 0xE700000000000000;
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v106 = swift_allocObject();
    *(v106 + 16) = v123;
    *(v106 + 32) = 0x6C646E7542707061;
    v152 = v106 + 32;
    *(v106 + 40) = 0xEB00000000444965;
    sub_249F8BC8C(v163, v162);

    v107 = sub_249F9A9A4();

    v148 = 0xD000000000000010;
    *(v106 + 48) = v107;
    *(v106 + 56) = 0xD000000000000010;
    *(v106 + 64) = v136;

    v108 = sub_249F9A9A4();

    *(v106 + 72) = v108;
    *(v106 + 80) = 0x656D614E707061;
    *(v106 + 88) = 0xE700000000000000;
    v146 = v163[7];
    v147 = v163[6];
    v141 = v163[10];
    v142 = v163[12];
    v145 = v163[15];
    v143 = v163[11];
    v144 = v163[16];

    v109 = sub_249F9A9A4();

    *(v106 + 96) = v109;
    *(v106 + 104) = 1751347809;
    *(v106 + 112) = 0xE400000000000000;
    *(v106 + 120) = sub_249F9A9A4();
    strcpy((v106 + 128), "binaryCDHash");
    *(v106 + 141) = 0;
    *(v106 + 142) = -5120;
    *(v106 + 144) = sub_249F9A9A4();
    strcpy((v106 + 152), "binaryLocation");
    *(v106 + 167) = -18;
    v110 = sub_249F9A9A4();

    *(v106 + 168) = v110;
    *(v106 + 176) = 0x61507972616E6962;
    *(v106 + 184) = 0xEA00000000006874;
    *(v106 + 192) = sub_249F9A9A4();
    strcpy((v106 + 200), "binaryTeamID");
    *(v106 + 213) = 0;
    *(v106 + 214) = -5120;
    *(v106 + 216) = sub_249F9A9A4();
    *(v106 + 224) = 0x55557972616E6962;
    *(v106 + 232) = 0xEA00000000004449;
    *(v106 + 240) = sub_249F9A9A4();
    strcpy((v106 + 248), "binaryVersion");
    *(v106 + 262) = -4864;
    *(v106 + 264) = sub_249F9A9A4();
    *(v106 + 272) = 0x48444362696C7964;
    *(v106 + 280) = 0xEB00000000687361;
    v111 = sub_249F9A9A4();

    *(v106 + 288) = v111;
    strcpy((v106 + 296), "dylibLocation");
    *(v106 + 310) = -4864;
    v112 = sub_249F9A9A4();

    *(v106 + 312) = v112;
    *(v106 + 320) = 0x74615062696C7964;
    *(v106 + 328) = 0xE900000000000068;
    v113 = sub_249F9A9A4();

    *(v106 + 336) = v113;
    *(v106 + 344) = 0x61655462696C7964;
    *(v106 + 352) = 0xEB0000000044496DLL;
    v114 = sub_249F9A9A4();

    *(v106 + 360) = v114;
    *(v106 + 368) = 0x49555562696C7964;
    *(v106 + 376) = 0xE900000000000044;
    v115 = sub_249F9A9A4();

    *(v106 + 384) = v115;
    strcpy((v106 + 392), "dylibVersion");
    *(v106 + 405) = 0;
    *(v106 + 406) = -5120;
    v116 = sub_249F9A9A4();

    *(v106 + 408) = v116;
    *(v106 + 416) = 0x656372756F73;
    *(v106 + 424) = 0xE600000000000000;
    *(v106 + 432) = sub_249F9A9A4();
    *(v106 + 440) = 0x614E6C6F626D7973;
    *(v106 + 448) = 0xEA0000000000656DLL;
    *(v106 + 456) = sub_249F9A9A4();
    strcpy((v106 + 464), "symbolOffset");
    *(v106 + 477) = 0;
    *(v106 + 478) = -5120;
    *(v106 + 480) = sub_249F9A9A4();
    *(v106 + 488) = 0x794472656C6C6163;
    *(v106 + 496) = 0xEF6874615062696CLL;
    v117 = sub_249F9A9A4();
    v118 = v148;
    *(v106 + 504) = v117;
    *(v106 + 512) = v118;
    *(v106 + 520) = v132;
    *(v106 + 528) = sub_249F9A9A4();
    v119 = sub_249F791D4(v106);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v120 = sub_249F9AC14();
    sub_249F8BCE8(v163);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162[0] = v119;
    sub_249F87DB0(v120, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
    sub_249F961E8(v162[0], v139);

    if (v124 == v161)
    {
      goto LABEL_55;
    }

    v93 = v161 + 1;
    v86 = v138;
    v100 = v140 + 432;
  }

  while ((v161 + 1) < *(v138 + 16));
  __break(1u);
LABEL_55:

LABEL_57:
  sub_249F7B86C(&v165);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249F8BD74()
{
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  result = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_249F8BD98()
{
  *(v0 + 16) = 0xD000000000000052;
  *(v0 + 24) = 0x8000000249F9E290;
  *(v0 + 32) = 0x6F6E67695F707061;
  *(v0 + 40) = 0xEF7473696C5F6572;
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000249F9E2F0;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x8000000249F9E310;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x8000000249F9E330;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  sub_249F8BE64();
  return v0;
}

uint64_t sub_249F8BE64()
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for TargetType(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v40 - v10;
  v12 = sub_249F9AA24();
  v47 = sub_249F8BD74();
  v13 = sqlite3_open_v2((v12 + 32), &v47, 4194305, 0);
  *(v0 + 96) = v47;
  *(v0 + 104) = 0;

  if (v13)
  {
    v15 = sqlite3_extended_errcode(*(v0 + 96));
    v16 = sub_249F8E8A8(0xD000000000000029, 0x8000000249F9E230);
    v41 = v17;
    v42 = v16;
    sqlite3_close(*(v0 + 96));
    (*(v2 + 56))(v11, 1, 1, v1);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_249F9AD14();

    v47 = 0xD000000000000029;
    v48 = 0x8000000249F9E260;
    v46 = v15;
    v18 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v18);

    sub_249F805EC(v11, v9);
    v19 = *(v2 + 48);
    v20 = v19(v9, 1, v1);
    v43 = v11;
    v40[1] = v1;
    if (v20 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v19(v9, 1, v1) != 1)
      {
        sub_249F806B8(v9, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v9, v45);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v22 = sub_249F9A9A4();

    *(inited + 72) = v22;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v23 = sub_249F9A9A4();

    *(inited + 192) = v23;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v24 = v45;
    sub_249F7A228(v45, v44);
    sub_249F9AA14();
    v25 = sub_249F9A9A4();

    *(inited + 216) = v25;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v26 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v27 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v28 = sub_249F9AC64();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v31 = sub_249F9A974();
      v33 = sub_249F78A30(v31, v32, &v47);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_249F74000, v28, v27, "Sending failure analysis event: %s)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C20AE50](v30, -1, -1);
      MEMORY[0x24C20AE50](v29, -1, -1);
    }

    v34 = v43;
    v35 = sub_249F9A9A4();
    v36 = swift_allocObject();
    *(v36 + 16) = v26;
    v51 = sub_249F7ABC0;
    v52 = v36;
    v47 = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_249F77EF4;
    v50 = &block_descriptor_31;
    v37 = _Block_copy(&v47);

    AnalyticsSendEventLazy();
    _Block_release(v37);

    sub_249F8065C(v24);
    sub_249F806B8(v34, &unk_27EF2CCC0, &unk_249F9B960);
    sub_249F8F9B8();
    swift_allocError();
    v38 = v41;
    *v39 = v42;
    v39[1] = v38;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_249F8C660()
{
  v1 = v0;
  v2 = type metadata accessor for TargetType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = sub_249F8BD74();
  result = sqlite3_close(v14);
  if (result)
  {
    v16 = result;
    (*(v3 + 56))(v13, 1, 1, v2);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_249F9AD14();

    v46 = 0xD00000000000002ALL;
    v47 = 0x8000000249F9E1D0;
    v52 = v16;
    v53 = v16;
    v17 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v17);

    v43 = v13;
    sub_249F805EC(v13, v11);
    v18 = *(v3 + 48);
    v19 = v18(v11, 1, v2);
    v44 = v1;
    v42 = v7;
    if (v19 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v18(v11, 1, v2) != 1)
      {
        sub_249F806B8(v11, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v11, v7);
    }

    v41 = "unknown bundle ID";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v21 = sub_249F9A9A4();

    *(inited + 72) = v21;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v22 = sub_249F9A9A4();

    *(inited + 192) = v22;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v23 = v42;
    sub_249F7A228(v42, v45);
    sub_249F9AA14();
    v24 = sub_249F9A9A4();

    *(inited + 216) = v24;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v25 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v26 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v27 = sub_249F9AC64();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v30 = sub_249F9A974();
      v32 = sub_249F78A30(v30, v31, &v46);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_249F74000, v27, v26, "Sending failure analysis event: %s)", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C20AE50](v29, -1, -1);
      MEMORY[0x24C20AE50](v28, -1, -1);
    }

    v33 = v43;
    v34 = sub_249F9A9A4();
    v35 = swift_allocObject();
    *(v35 + 16) = v25;
    v50 = sub_249F7ABC0;
    v51 = v35;
    v46 = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_249F77EF4;
    v49 = &block_descriptor_24;
    v36 = _Block_copy(&v46);

    AnalyticsSendEventLazy();
    _Block_release(v36);

    sub_249F8065C(v23);
    sub_249F806B8(v33, &unk_27EF2CCC0, &unk_249F9B960);
    v37 = sub_249F8E8A8(0xD00000000000002ALL, 0x8000000249F9E200);
    v39 = v38;
    sub_249F8F9B8();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return swift_willThrow();
  }

  return result;
}

id sub_249F8CDF4(int a1, uint64_t a2, unint64_t a3)
{
  v123 = a1;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v126 = type metadata accessor for TargetType(0);
  v119 = *(v126 - 8);
  v5 = MEMORY[0x28223BE20](v126);
  v125 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v120 = v112 - v8;
  MEMORY[0x28223BE20](v7);
  v118 = v112 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v117 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v124 = v112 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v113 = v112 - v16;
  MEMORY[0x28223BE20](v15);
  v114 = v112 - v17;
  v18 = sub_249F9A944();
  v130 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_249F9A934();
  v128 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  *&v129 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v112 - v24;

  v115 = a2;
  v116 = a3;
  v26 = sub_249F8E388(a2, a3);
  v28 = v27;
  sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  sub_249F9A924();
  sub_249F8F6F4(v26, v28);
  v29 = v131;
  sub_249F8F514(v26, v28, v20);
  v112[1] = v29;
  sub_249F80470(v26, v28);
  sub_249F9A914();
  sub_249F80470(v26, v28);
  (*(v130 + 8))(v20, v18);
  v30 = *(v128 + 16);
  v121 = v25;
  v30(v129, v25, v21);
  sub_249F8F748(&qword_27EF2CDA0, MEMORY[0x277CC52E8], MEMORY[0x277CC52F0]);
  v122 = v21;
  sub_249F9AB14();
  v31 = v133;
  v32 = v134;
  v131 = v133[2];
  v33 = MEMORY[0x277D84F90];
  if (v134 != v131)
  {
    v130 = (v133 + 4);
    v129 = xmmword_249F9B920;
    v34 = v134;
    while ((v32 & 0x8000000000000000) == 0)
    {
      if (v34 >= *(v31 + 2))
      {
        goto LABEL_39;
      }

      v46 = *(v34 + v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
      v47 = swift_allocObject();
      *(v47 + 16) = v129;
      *(v47 + 56) = MEMORY[0x277D84B78];
      *(v47 + 64) = MEMORY[0x277D84BC0];
      *(v47 + 32) = v46;
      v20 = sub_249F9A9E4();
      v49 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_249F8EAE8(0, *(v33 + 2) + 1, 1, v33);
      }

      v51 = *(v33 + 2);
      v50 = *(v33 + 3);
      v28 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v33 = sub_249F8EAE8((v50 > 1), v51 + 1, 1, v33);
      }

      v34 = (v34 + 1);
      *(v33 + 2) = v28;
      v52 = &v33[16 * v51];
      *(v52 + 4) = v20;
      *(v52 + 5) = v49;
      if (v131 == v34)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_2:

  v34 = &v133;
  v133 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CCE8, &qword_249F9BE28);
  sub_249F8F790();
  v35 = sub_249F9A984();
  v37 = v36;

  v38 = sub_249F9AB94();
  v131 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v39 = sub_249F9AC64();
  v40 = os_log_type_enabled(v39, v38);
  v130 = v35;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v133 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_249F78A30(v115, v116, &v133);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_249F78A30(v35, v37, &v133);
    _os_log_impl(&dword_249F74000, v39, v38, "Hash for %s = %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C20AE50](v42, -1, -1);
    MEMORY[0x24C20AE50](v41, -1, -1);
  }

  v43 = v127;
  v133 = 0;
  v134 = 0xE000000000000000;
  if (v123)
  {
    sub_249F9AD14();

    v133 = 0xD000000000000015;
    v134 = 0x8000000249F9E0B0;
    MEMORY[0x24C20A200](v43[6], v43[7]);
    MEMORY[0x24C20A200](0x20455245485720, 0xE700000000000000);
    v44 = v43[10];
    v45 = v43[11];
  }

  else
  {
    sub_249F9AD14();

    v133 = 0xD000000000000015;
    v134 = 0x8000000249F9E0B0;
    MEMORY[0x24C20A200](v43[4], v43[5]);
    MEMORY[0x24C20A200](0x20455245485720, 0xE700000000000000);
    v44 = v43[8];
    v45 = v43[9];
  }

  MEMORY[0x24C20A200](v44, v45);
  MEMORY[0x24C20A200](0x3B3F203D20, 0xE500000000000000);
  ppStmt[0] = 0;
  v53 = sub_249F8BD74();
  v54 = sub_249F9AA24();

  v55 = sqlite3_prepare_v2(v53, (v54 + 32), -1, ppStmt, 0);

  v31 = ppStmt[0];
  if (!ppStmt[0] || v55)
  {

    v60 = v119;
    v61 = v124;
    v62 = v126;
    (*(v119 + 56))(v124, 1, 1, v126);
    v133 = 0;
    v134 = 0xE000000000000000;
    sub_249F9AD14();
    MEMORY[0x24C20A200](0xD00000000000003DLL, 0x8000000249F9E0D0);
    LODWORD(v130) = v55;
    v132 = v55;
    v63 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v63);

    v64 = v117;
    sub_249F805EC(v61, v117);
    v65 = *(v60 + 48);
    if (v65(v64, 1, v62) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v65(v64, 1, v62) != 1)
      {
        sub_249F806B8(v64, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v64, v125);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    v67 = sub_249F9A9A4();

    *(inited + 72) = v67;
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v68 = sub_249F9A9A4();

    *(inited + 192) = v68;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v69 = v125;
    sub_249F7A228(v125, v120);
    sub_249F9AA14();
    v70 = sub_249F9A9A4();

    *(inited + 216) = v70;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v71 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v72 = sub_249F9ABA4();
    v73 = sub_249F9AC64();
    if (os_log_type_enabled(v73, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v133 = v75;
      *v74 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v76 = sub_249F9A974();
      v78 = sub_249F78A30(v76, v77, &v133);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_249F74000, v73, v72, "Sending failure analysis event: %s)", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x24C20AE50](v75, -1, -1);
      MEMORY[0x24C20AE50](v74, -1, -1);
    }

    v79 = sub_249F9A9A4();
    v80 = swift_allocObject();
    *(v80 + 16) = v71;
    v137 = sub_249F7A28C;
    v138 = v80;
    v133 = MEMORY[0x277D85DD0];
    v134 = 1107296256;
    v135 = sub_249F77EF4;
    v136 = &block_descriptor_4;
    v81 = _Block_copy(&v133);

    AnalyticsSendEventLazy();
    _Block_release(v81);

    sub_249F8065C(v69);
    sub_249F806B8(v124, &unk_27EF2CCC0, &unk_249F9B960);
    v59 = sub_249F8E8A8(0xD00000000000003DLL, 0x8000000249F9E110);
    v83 = v82;
    sub_249F8F9B8();
    swift_allocError();
    *v84 = v59;
    v84[1] = v83;
    swift_willThrow();
    goto LABEL_36;
  }

  v56 = sub_249F9A9A4();
  v20 = [v56 UTF8String];
  result = v56;
  v28 = v126;
  if (v20)
  {

    if (qword_27EF2CAF0 == -1)
    {
LABEL_20:
      sqlite3_bind_text(v31, 1, v20, -1, qword_27EF2D718);
      v58 = sqlite3_step(v34[40]);
      if (v58 == 100)
      {
        LOBYTE(v59) = sqlite3_column_int(v34[40], 0) > 0;
        sqlite3_finalize(v34[40]);
        (*(v128 + 8))(v121, v122);
        return (v59 & 1);
      }

      v85 = v58;
      v86 = v119;
      v87 = v114;
      (*(v119 + 56))(v114, 1, 1, v28);
      *v34 = 0;
      v34[1] = 0xE000000000000000;
      sub_249F9AD14();
      v88 = v34[1];
      *v34 = *v34;
      v34[1] = v88;
      MEMORY[0x24C20A200](0xD000000000000032, 0x8000000249F9E150);
      LODWORD(v130) = v85;
      v132 = v85;
      v89 = sub_249F9ADE4();
      MEMORY[0x24C20A200](v89);

      v90 = v113;
      sub_249F805EC(v87, v113);
      v91 = *(v86 + 48);
      if (v91(v90, 1, v28) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v91(v90, 1, v28) != 1)
        {
          sub_249F806B8(v90, &unk_27EF2CCC0, &unk_249F9B960);
        }
      }

      else
      {
        sub_249F7A2F8(v90, v118);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_249F9B940;
      *(v92 + 32) = 0x74536E6F6D656164;
      *(v92 + 40) = 0xEB00000000657461;
      *(v92 + 48) = sub_249F9A9A4();
      *(v92 + 56) = 0xD000000000000012;
      *(v92 + 64) = 0x8000000249F9CCF0;
      v93 = sub_249F9A9A4();

      *(v92 + 72) = v93;
      *(v92 + 80) = 0x546572756C696166;
      *(v92 + 88) = 0xEB00000000657079;
      *(v92 + 96) = sub_249F9A9A4();
      strcpy((v92 + 104), "targetBundleID");
      *(v92 + 119) = -18;
      *(v92 + 120) = sub_249F9A9A4();
      *(v92 + 128) = 0xD000000000000013;
      *(v92 + 136) = 0x8000000249F9CD10;
      *(v92 + 144) = sub_249F9A9A4();
      *(v92 + 152) = 0x614E746567726174;
      *(v92 + 160) = 0xEA0000000000656DLL;
      *(v92 + 168) = sub_249F9A9A4();
      *(v92 + 176) = 0x6150746567726174;
      *(v92 + 184) = 0xEA00000000006874;
      sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
      v94 = sub_249F9A9A4();

      *(v92 + 192) = v94;
      *(v92 + 200) = 0x7954746567726174;
      *(v92 + 208) = 0xEA00000000006570;
      v95 = v118;
      sub_249F7A228(v118, v120);
      sub_249F9AA14();
      v96 = sub_249F9A9A4();

      *(v92 + 216) = v96;
      *(v92 + 224) = 1701869940;
      *(v92 + 232) = 0xE400000000000000;
      *(v92 + 240) = sub_249F9AB64();
      strcpy((v92 + 248), "failureRetries");
      *(v92 + 263) = -18;
      *(v92 + 264) = sub_249F9AB64();
      v97 = sub_249F791D4(v92);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
      swift_arrayDestroy();
      v98 = sub_249F9ABA4();
      v99 = sub_249F9AC64();
      if (os_log_type_enabled(v99, v98))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v133 = v101;
        *v100 = 136315138;
        sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
        v102 = sub_249F9A974();
        v104 = sub_249F78A30(v102, v103, &v133);

        *(v100 + 4) = v104;
        _os_log_impl(&dword_249F74000, v99, v98, "Sending failure analysis event: %s)", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        v105 = v101;
        v95 = v118;
        MEMORY[0x24C20AE50](v105, -1, -1);
        MEMORY[0x24C20AE50](v100, -1, -1);
      }

      v106 = sub_249F9A9A4();
      v107 = swift_allocObject();
      *(v107 + 16) = v97;
      v137 = sub_249F7ABC0;
      v138 = v107;
      v133 = MEMORY[0x277D85DD0];
      v134 = 1107296256;
      v135 = sub_249F77EF4;
      v136 = &block_descriptor_17;
      v108 = _Block_copy(&v133);

      AnalyticsSendEventLazy();
      _Block_release(v108);

      sub_249F8065C(v95);
      sub_249F806B8(v114, &unk_27EF2CCC0, &unk_249F9B960);
      v59 = sub_249F8E8A8(0xD000000000000032, 0x8000000249F9E190);
      v110 = v109;
      sub_249F8F9B8();
      swift_allocError();
      *v111 = v59;
      v111[1] = v110;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_36:
      (*(v128 + 8))(v121, v122);
      return (v59 & 1);
    }

LABEL_40:
    swift_once();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_249F8E388(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDB0, &qword_249F9C128);
  if (swift_dynamicCast())
  {
    sub_249F8FBE0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_249F9A6B4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_249F806B8(__src, &qword_27EF2CDB8, &qword_249F9C130);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_249F9AD44();
  }

  sub_249F8EEF4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_249F8FAC4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_249F8EFBC(sub_249F8FB64, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_249F9A7C4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_249F8F8D4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_249F9AA84();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_249F9AAB4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_249F9AD44();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_249F8F8D4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_249F9AA94();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_249F9A7D4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_249F9A7D4();
    sub_249F8FBCC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_249F8FBCC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_249F8F6F4(*&__src[0], *(&__src[0] + 1));

  sub_249F80470(v32, *(&v32 + 1));
  return v32;
}

const char *sub_249F8E8A8(uint64_t a1, uint64_t a2)
{

  MEMORY[0x24C20A200](32, 0xE100000000000000);
  v2 = sub_249F9ADE4();
  MEMORY[0x24C20A200](v2);

  MEMORY[0x24C20A200](32, 0xE100000000000000);
  v3 = sub_249F8BD74();
  result = sqlite3_errmsg(v3);
  if (result)
  {
    v5 = sub_249F9AA54();
    MEMORY[0x24C20A200](v5);

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249F8E968()
{

  return swift_deallocClassInstance();
}

char *sub_249F8E9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC8, &qword_249F9C140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_249F8EAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249F8EBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC0, &qword_249F9C138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 432);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[432 * v8])
    {
      memmove(v12, v13, 432 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249F8ED1C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDD0, &qword_249F9C148);
  v10 = *(sub_249F9A794() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_249F9A794() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t *sub_249F8EEF4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_249F8FA0C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_249F9A6A4();
      swift_allocObject();
      v8 = sub_249F9A654();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_249F9A7B4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_249F8EFBC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_249F80470(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_249F80470(v7, v6);
    *v4 = xmmword_249F9C0A0;
    sub_249F80470(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_249F9A664() && __OFSUB__(v7, sub_249F9A694()))
      {
LABEL_26:
        __break(1u);
      }

      sub_249F9A6A4();
      swift_allocObject();
      v14 = sub_249F9A644();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_249F8F460(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_249F80470(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_249F9C0A0;
    sub_249F80470(0, 0xC000000000000000);
    sub_249F9A7A4();
    result = sub_249F8F460(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_249F8F360@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_249F8FA0C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_249F8FC3C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_249F8FCB8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_249F8F3F4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_249F8F460(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_249F9A664();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_249F9A694();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_249F9A684();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_249F8F514(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_249F9A944();
      sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_249F9A904();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_249F8F7F4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_249F8F7F4(v5, v6);
  }

  sub_249F9A944();
  sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_249F9A904();
}

uint64_t sub_249F8F6F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_249F8F748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_249F8F790()
{
  result = qword_27EF2CCF0;
  if (!qword_27EF2CCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CCE8, &qword_249F9BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CCF0);
  }

  return result;
}

uint64_t sub_249F8F7F4(uint64_t a1, uint64_t a2)
{
  result = sub_249F9A664();
  if (!result || (result = sub_249F9A694(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_249F9A684();
      sub_249F9A944();
      sub_249F8F748(&qword_27EF2CD98, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_249F9A904();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_249F8F8D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_249F9AAC4();
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
    v5 = MEMORY[0x24C20A260](15, a1 >> 16);
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

uint64_t sub_249F8F950@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_249F9AD24();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249F8F9B8()
{
  result = qword_27EF2CDA8;
  if (!qword_27EF2CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDA8);
  }

  return result;
}

uint64_t sub_249F8FA0C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_249F8FAC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_249F9A6A4();
      swift_allocObject();
      sub_249F9A674();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_249F9A7B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_249F8FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_249F8F3F4(sub_249F8FD3C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_249F8FBCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F80470(result, a2);
  }

  return result;
}

uint64_t sub_249F8FBE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249F8FC3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_249F9A6A4();
  swift_allocObject();
  result = sub_249F9A654();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_249F9A7B4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_249F8FCB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_249F9A6A4();
  swift_allocObject();
  result = sub_249F9A654();
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

uint64_t sub_249F8FD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_249F8FDA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unsigned __int8 *a13, unint64_t a14, unint64_t a15, uint64_t *a16)
{
  v82 = a8;
  v75 = a7;
  v80 = a6;
  v78 = a5;
  LODWORD(v84) = a4;
  v81 = a12;
  v73 = a11;
  v79 = a10;
  v72 = a9;
  v76 = a15;
  v83 = a14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v68 - v20;
  v22 = type metadata accessor for TargetType(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v68 - v26;
  LODWORD(v28) = *a1;
  v29 = *a13;
  v30 = *a16;
  v31 = a16[1];
  if (v28 == 3)
  {
    v28 = 2;
  }

  else
  {
    v28 = v28;
  }

  v86 = v28;
  sub_249F805EC(a2, v21);
  v32 = *(v23 + 48);
  v33 = v32(v21, 1, v22);
  v87 = v22;
  v88 = v27;
  if (v33 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v32(v21, 1, v22) != 1)
    {
      sub_249F7A1C0(v21);
    }
  }

  else
  {
    sub_249F7A2F8(v21, v27);
  }

  if (v84)
  {
    v34 = 0;
  }

  else
  {
    v34 = a3;
  }

  v84 = v34;
  if (v80)
  {
    v35 = v78;
  }

  else
  {
    v35 = 0x206E776F6E6B6E75;
  }

  v36 = 0xEC00000068746170;
  if (v80)
  {
    v36 = v80;
  }

  v77 = v36;
  v78 = v35;
  if (v82)
  {
    v37 = v75;
  }

  else
  {
    v37 = 0x206E776F6E6B6E75;
  }

  v38 = 0xEC000000656D616ELL;
  if (v82)
  {
    v38 = v82;
  }

  v74 = v38;
  v75 = v37;
  v39 = 0x8000000249F9CCB0;
  v40 = v72;
  if (!v79)
  {
    v40 = 0xD000000000000011;
  }

  v71 = v40;
  if (v79)
  {
    v39 = v79;
  }

  v70 = v39;
  v41 = 0x8000000249F9CCD0;
  v42 = 0xD000000000000016;
  if (v81)
  {
    v42 = v73;
    v41 = v81;
  }

  v72 = v41;
  v73 = v42;
  if (v29 == 14)
  {
    v43 = 13;
  }

  else
  {
    v43 = v29;
  }

  v69 = v43;
  v44 = 0xD00000000000001BLL;
  if (v76)
  {
    v44 = v83;
  }

  v45 = 0x6E776F6E6B6E75;
  if (v31)
  {
    v45 = v30;
  }

  v68[1] = v45;
  v68[2] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9B940;
  *(inited + 32) = 0x74536E6F6D656164;
  v83 = inited + 32;
  *(inited + 40) = 0xEB00000000657461;

  v47 = sub_249F9A9A4();

  *(inited + 48) = v47;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000249F9CCF0;
  v48 = sub_249F9A9A4();

  *(inited + 72) = v48;
  *(inited + 80) = 0x546572756C696166;
  *(inited + 88) = 0xEB00000000657079;
  LOBYTE(v89[0]) = v69;
  AnalysisFailureType.rawValue.getter();
  v49 = sub_249F9A9A4();

  *(inited + 96) = v49;
  strcpy((inited + 104), "targetBundleID");
  *(inited + 119) = -18;
  v50 = sub_249F9A9A4();

  *(inited + 120) = v50;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000249F9CD10;
  v51 = sub_249F9A9A4();

  *(inited + 144) = v51;
  *(inited + 152) = 0x614E746567726174;
  *(inited + 160) = 0xEA0000000000656DLL;
  v52 = sub_249F9A9A4();

  *(inited + 168) = v52;
  *(inited + 176) = 0x6150746567726174;
  *(inited + 184) = 0xEA00000000006874;
  sub_249F9A1B8(v78, v77);

  v53 = sub_249F9A9A4();

  *(inited + 192) = v53;
  *(inited + 200) = 0x7954746567726174;
  *(inited + 208) = 0xEA00000000006570;
  v54 = v88;
  sub_249F7A228(v88, v85);
  sub_249F9AA14();
  v55 = sub_249F9A9A4();

  *(inited + 216) = v55;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = sub_249F9AB64();
  strcpy((inited + 248), "failureRetries");
  *(inited + 263) = -18;
  *(inited + 264) = sub_249F9AB64();
  v56 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  v57 = sub_249F9ABA4();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v58 = sub_249F9AC64();
  if (os_log_type_enabled(v58, v57))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v89[0] = v60;
    *v59 = 136315138;
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v61 = sub_249F9A974();
    v63 = sub_249F78A30(v61, v62, v89);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_249F74000, v58, v57, "Sending failure analysis event: %s)", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x24C20AE50](v60, -1, -1);
    MEMORY[0x24C20AE50](v59, -1, -1);
  }

  v64 = sub_249F9A9A4();
  v65 = swift_allocObject();
  *(v65 + 16) = v56;
  v89[4] = sub_249F7A97C;
  v89[5] = v65;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 1107296256;
  v89[2] = sub_249F77EF4;
  v89[3] = &block_descriptor_5;
  v66 = _Block_copy(v89);

  AnalyticsSendEventLazy();
  _Block_release(v66);

  return sub_249F8065C(v54);
}

EcosystemAnalytics::AnalysisTypeForCA_optional __swiftcall AnalysisTypeForCA.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

EcosystemAnalytics::AnalysisFailureType_optional __swiftcall AnalysisFailureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_249F9ADD4();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AnalysisFailureType.rawValue.getter()
{
  result = 0x45786F62646E6173;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x726F727245637078;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7A696D6F646E6172;
      break;
    case 8:
      result = 0x7473694C73707061;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x72456574696C7173;
      break;
    case 0xD:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_249F90860()
{
  v0 = AnalysisFailureType.rawValue.getter();
  v2 = v1;
  if (v0 == AnalysisFailureType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_249F9ADF4();
  }

  return v5 & 1;
}

uint64_t sub_249F908FC()
{
  sub_249F9AE64();
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();

  return sub_249F9AE84();
}

uint64_t sub_249F90964(uint64_t a1)
{
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();
}

uint64_t sub_249F909C8(uint64_t a1)
{
  sub_249F9AE64();
  AnalysisFailureType.rawValue.getter();
  sub_249F9AA34();

  return sub_249F9AE84();
}

unint64_t sub_249F90A38@<X0>(unint64_t *a1@<X8>)
{
  result = AnalysisFailureType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AnalysisFailureState.xpcState.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnalysisFailureState.xpcState.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnalysisFailureState.init(xpcActivity:)@<X0>(_xpc_activity_s *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = xpc_activity_copy_criteria(a1);
  if (v3)
  {
    xpc_dictionary_get_uint64(v3, *MEMORY[0x277D86250]);
    v4 = sub_249F9ADE4();
    MEMORY[0x24C20A200](v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v7 = 0x3D79616C6564;
    v6 = 0xE600000000000000;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249F90BE8()
{
  result = qword_27EF2CDD8;
  if (!qword_27EF2CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDD8);
  }

  return result;
}

unint64_t sub_249F90C40()
{
  result = qword_27EF2CDE0;
  if (!qword_27EF2CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisTypeForCA(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalysisTypeForCA(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisFailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalysisFailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisFailure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalysisFailure(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_249F91058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_249F910A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_249F91108(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_249F9A794();
    ++v2;
    sub_249F985A0();
  }

  while ((sub_249F9A994() & 1) == 0);
  return v3 != v4;
}

uint64_t MachOAnalysisCoordinator.__allocating_init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 1;
  *(result + 34) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MachOAnalysisCoordinator.init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  *(v2 + 34) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MachOAnalysisCoordinator.__allocating_init(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 34) = a5;
  return result;
}

uint64_t MachOAnalysisCoordinator.init(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v5 + 40) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 33) = a4;
  *(v5 + 34) = a5;
  return v5;
}

uint64_t sub_249F912D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyzableTarget(0);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = (&v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for TargetType(0);
  v94 = *(v105 - 8);
  v6 = MEMORY[0x28223BE20](v105);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v93 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = (&v89 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDE8, &unk_249F9C478);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v89 - v14;
  v15 = sub_249F9A704();
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v98 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_249F9A794();
  v102 = *(v17 - 8);
  v103 = v17;
  MEMORY[0x28223BE20](v17);
  v108 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_249F9AA04();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_249F9ABB4();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v24 = swift_allocObject();
  v91 = xmmword_249F9B920;
  *(v24 + 16) = xmmword_249F9B920;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v90 = sub_249F7A16C();
  *(v24 + 64) = v90;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  v26 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v104 = v26;
  v27 = sub_249F9AC64();
  sub_249F9A874(v23, &dword_249F74000, v27, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: analyzeMachO with path %{private}@", 89, 2, v24);
  v28 = a1;

  v29 = a1;
  v30 = a2;
  v31 = sub_249F9A1B8(v29, a2);
  v109 = 0xD000000000000020;
  v110 = 0x8000000249F9E3D0;
  MEMORY[0x24C20A200](v31);

  v109 = sub_249F9AB04();
  v110 = v32;
  sub_249F9A9F4();
  sub_249F7798C();
  v33 = sub_249F9ACA4();
  (*(v20 + 8))(v22, v19);

  if (v33)
  {
    nm_CRSetCrashLogMessage(v33 + 32);
  }

  sub_249F9A744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF0, &qword_249F9C488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9B930;
  v35 = *MEMORY[0x277CBEA18];
  *(inited + 32) = *MEMORY[0x277CBEA18];
  v36 = *MEMORY[0x277CBEA20];
  *(inited + 40) = *MEMORY[0x277CBEA20];
  v37 = v35;
  v38 = v36;
  sub_249F97280(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v39 = v101;
  sub_249F9A734();

  v41 = v106;
  v40 = v107;
  (*(v106 + 56))(v39, 0, 1, v107);
  v42 = v98;
  (*(v41 + 32))(v98, v39, v40);
  v43 = sub_249F9A6D4();
  if (v43 == 2 || (v43) && ((v44 = sub_249F9A6F4(), v44 == 2) || (v44))
  {
    (*(v41 + 8))(v42, v40);
    v45 = v99;
    *v99 = v28;
    v45[1] = v30;
    swift_storeEnumTagMultiPayload();
    v46 = v45;
    v47 = v100;
    v48 = *(v100 + 33);
    type metadata accessor for AnalyticsRandomizer();
    v49 = swift_initStackObject();

    v50 = MEMORY[0x277D84F90];
    v49[2] = sub_249F790D0(MEMORY[0x277D84F90]);
    v49[5] = -1;
    v51 = sub_249F9ABB4();
    v52 = sub_249F9AC64();
    sub_249F9A874(v51, &dword_249F74000, v52, "EcosystemAnalytics.framework:AnalyticsRandomizer: Initializing AnalyticsRandomizer", 82, 2, v50);

    v49[3] = 0xD00000000000002CLL;
    v49[4] = 0x8000000249F9E400;
    v49[5] = 500;
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = *(v47 + 16);
    v55 = *(v47 + 24);

    sub_249F88ED4(v46, v54, v55, v48, v53, v49);

    sub_249F864E4();
    v57 = v56;

    sub_249F98538(v46, type metadata accessor for AnalyzableTarget);
    (*(v102 + 8))(v108, v103);

    swift_setDeallocating();
  }

  else
  {
    v59 = sub_249F9ABA4();
    v60 = swift_allocObject();
    *(v60 + 16) = v91;
    v61 = v90;
    *(v60 + 56) = v25;
    *(v60 + 64) = v61;
    *(v60 + 32) = v28;
    *(v60 + 40) = v30;

    v62 = sub_249F9AC64();
    sub_249F9A874(v59, &dword_249F74000, v62, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: File path %{private}@ does not appear to be on the local disk, do not attempt to analyze", 143, 2, v60);

    v63 = sub_249F9A1B8(v28, v30);
    v64 = v97;
    *v97 = v63;
    v64[1] = v65;
    v66 = v105;
    swift_storeEnumTagMultiPayload();
    v67 = v94;
    (*(v94 + 56))(v64, 0, 1, v66);
    v101 = sub_249F9A1B8(v28, v30);
    v69 = v68;
    v70 = v93;
    sub_249F805EC(v64, v93);
    v71 = *(v67 + 48);
    if (v71(v70, 1, v66) == 1)
    {
      v72 = v96;
      swift_storeEnumTagMultiPayload();
      if (v71(v70, 1, v66) != 1)
      {
        sub_249F806B8(v70, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v72 = v96;
      sub_249F7A2F8(v70, v96);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_249F9B940;
    *(v73 + 32) = 0x74536E6F6D656164;
    *(v73 + 40) = 0xEB00000000657461;
    *(v73 + 48) = sub_249F9A9A4();
    *(v73 + 56) = 0xD000000000000012;
    *(v73 + 64) = 0x8000000249F9CCF0;
    *(v73 + 72) = sub_249F9A9A4();
    *(v73 + 80) = 0x546572756C696166;
    *(v73 + 88) = 0xEB00000000657079;
    *(v73 + 96) = sub_249F9A9A4();
    strcpy((v73 + 104), "targetBundleID");
    *(v73 + 119) = -18;
    *(v73 + 120) = sub_249F9A9A4();
    *(v73 + 128) = 0xD000000000000013;
    *(v73 + 136) = 0x8000000249F9CD10;
    *(v73 + 144) = sub_249F9A9A4();
    *(v73 + 152) = 0x614E746567726174;
    *(v73 + 160) = 0xEA0000000000656DLL;
    *(v73 + 168) = sub_249F9A9A4();
    *(v73 + 176) = 0x6150746567726174;
    *(v73 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v101, v69);

    v74 = sub_249F9A9A4();

    *(v73 + 192) = v74;
    *(v73 + 200) = 0x7954746567726174;
    *(v73 + 208) = 0xEA00000000006570;
    sub_249F7A228(v72, v95);
    sub_249F9AA14();
    v75 = sub_249F9A9A4();

    *(v73 + 216) = v75;
    *(v73 + 224) = 1701869940;
    *(v73 + 232) = 0xE400000000000000;
    *(v73 + 240) = sub_249F9AB64();
    strcpy((v73 + 248), "failureRetries");
    *(v73 + 263) = -18;
    *(v73 + 264) = sub_249F9AB64();
    v76 = sub_249F791D4(v73);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v77 = sub_249F9ABA4();
    v78 = sub_249F9AC64();
    if (os_log_type_enabled(v78, v77))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v109 = v80;
      *v79 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v81 = sub_249F9A974();
      v83 = sub_249F78A30(v81, v82, &v109);

      *(v79 + 4) = v83;
      _os_log_impl(&dword_249F74000, v78, v77, "Sending failure analysis event: %s)", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C20AE50](v80, -1, -1);
      MEMORY[0x24C20AE50](v79, -1, -1);
    }

    v84 = v106;
    v85 = v98;
    v86 = sub_249F9A9A4();
    v87 = swift_allocObject();
    *(v87 + 16) = v76;
    v113 = sub_249F7A28C;
    v114 = v87;
    v109 = MEMORY[0x277D85DD0];
    v110 = 1107296256;
    v111 = sub_249F77EF4;
    v112 = &block_descriptor_6;
    v88 = _Block_copy(&v109);

    AnalyticsSendEventLazy();
    _Block_release(v88);

    sub_249F98538(v72, type metadata accessor for TargetType);
    sub_249F806B8(v97, &unk_27EF2CCC0, &unk_249F9B960);
    (*(v84 + 8))(v85, v107);
    (*(v102 + 8))(v108, v103);
    return 0;
  }

  return v57;
}

uint64_t sub_249F92134(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 40) = v6;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = *(result + 32);

      if (v7 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  sub_249F85FFC(a1);
LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = *(result + 34);

  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249F9B920;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v9 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t sub_249F922D0()
{
  v0 = type metadata accessor for TargetType(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v195 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v194 = &v184 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v192 = &v184 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v199 = &v184 - v9;
  MEMORY[0x28223BE20](v8);
  v190 = &v184 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v196 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v184 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v193 = &v184 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v197 = (&v184 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v188 = &v184 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v191 = (&v184 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v187 = &v184 - v26;
  MEMORY[0x28223BE20](v25);
  v189 = (&v184 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v184 - v32;
  v34 = sub_249F9A794();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v198 = &v184 - v39;
  v40 = sub_249F965AC();
  v200 = v0;
  if (!v40)
  {
    v50 = v195;
    v51 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v52 = sub_249F9AC64();
    sub_249F9A874(v51, &dword_249F74000, v52, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to get list of apps to inspect", 92, 2, MEMORY[0x277D84F90]);

    *v16 = 0;
    v16[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    (*(v1 + 56))(v16, 0, 1, v0);
    v53 = v196;
    sub_249F805EC(v16, v196);
    v54 = *(v1 + 48);
    v55 = v54(v53, 1, v0);
    v185 = v16;
    if (v55 == 1)
    {
      swift_storeEnumTagMultiPayload();
      v56 = v50;
      if (v54(v53, 1, v0) != 1)
      {
        sub_249F806B8(v53, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v56 = v50;
      sub_249F7A2F8(v53, v50);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v85 = sub_249F9A9A4();

    *(inited + 192) = v85;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v56, v199);
    sub_249F9AA14();
    v86 = sub_249F9A9A4();

    *(inited + 216) = v86;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v87 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v88 = sub_249F9ABA4();
    v89 = sub_249F9AC64();
    if (os_log_type_enabled(v89, v88))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&aBlock = v91;
      *v90 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v92 = sub_249F9A974();
      v94 = sub_249F78A30(v92, v93, &aBlock);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_249F74000, v89, v88, "Sending failure analysis event: %s)", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x24C20AE50](v91, -1, -1);
      MEMORY[0x24C20AE50](v90, -1, -1);
    }

    v95 = sub_249F9A9A4();
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    v210 = sub_249F7ABC0;
    v211 = v96;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v208 = sub_249F77EF4;
    v209 = &block_descriptor_10;
    v97 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v97);

    sub_249F98538(v56, type metadata accessor for TargetType);
    v98 = v185;
    goto LABEL_22;
  }

  v196 = v1;
  sub_249F95230(v40, v33);

  v41 = v35;
  v42 = v35[6];
  if (v42(v33, 1, v34) == 1)
  {
    sub_249F806B8(v33, &qword_27EF2CDF8, &qword_249F9C490);
    v43 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v44 = sub_249F9AC64();
    sub_249F9A874(v43, &dword_249F74000, v44, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to find random app to inspect", 91, 2, MEMORY[0x277D84F90]);

    v45 = v197;
    *v197 = 0;
    *(v45 + 8) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    v46 = v196;
    (*(v196 + 56))(v45, 0, 1, v0);
    v47 = v193;
    sub_249F805EC(v45, v193);
    v48 = *(v46 + 48);
    if (v48(v47, 1, v0) == 1)
    {
      v49 = v194;
      swift_storeEnumTagMultiPayload();
      if (v48(v47, 1, v0) != 1)
      {
        sub_249F806B8(v47, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v49 = v194;
      sub_249F7A2F8(v47, v194);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v99 = swift_initStackObject();
    *(v99 + 16) = xmmword_249F9B940;
    *(v99 + 32) = 0x74536E6F6D656164;
    *(v99 + 40) = 0xEB00000000657461;
    *(v99 + 48) = sub_249F9A9A4();
    *(v99 + 56) = 0xD000000000000012;
    *(v99 + 64) = 0x8000000249F9CCF0;
    *(v99 + 72) = sub_249F9A9A4();
    *(v99 + 80) = 0x546572756C696166;
    *(v99 + 88) = 0xEB00000000657079;
    *(v99 + 96) = sub_249F9A9A4();
    strcpy((v99 + 104), "targetBundleID");
    *(v99 + 119) = -18;
    *(v99 + 120) = sub_249F9A9A4();
    *(v99 + 128) = 0xD000000000000013;
    *(v99 + 136) = 0x8000000249F9CD10;
    *(v99 + 144) = sub_249F9A9A4();
    *(v99 + 152) = 0x614E746567726174;
    *(v99 + 160) = 0xEA0000000000656DLL;
    *(v99 + 168) = sub_249F9A9A4();
    *(v99 + 176) = 0x6150746567726174;
    *(v99 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v100 = sub_249F9A9A4();

    *(v99 + 192) = v100;
    *(v99 + 200) = 0x7954746567726174;
    *(v99 + 208) = 0xEA00000000006570;
    sub_249F7A228(v49, v199);
    sub_249F9AA14();
    v101 = sub_249F9A9A4();

    *(v99 + 216) = v101;
    *(v99 + 224) = 1701869940;
    *(v99 + 232) = 0xE400000000000000;
    *(v99 + 240) = sub_249F9AB64();
    strcpy((v99 + 248), "failureRetries");
    *(v99 + 263) = -18;
    *(v99 + 264) = sub_249F9AB64();
    v102 = sub_249F791D4(v99);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v103 = sub_249F9ABA4();
    v104 = sub_249F9AC64();
    if (os_log_type_enabled(v104, v103))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&aBlock = v106;
      *v105 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v107 = sub_249F9A974();
      v109 = sub_249F78A30(v107, v108, &aBlock);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_249F74000, v104, v103, "Sending failure analysis event: %s)", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x24C20AE50](v106, -1, -1);
      MEMORY[0x24C20AE50](v105, -1, -1);
    }

    v110 = sub_249F9A9A4();
    v111 = swift_allocObject();
    *(v111 + 16) = v102;
    v210 = sub_249F7ABC0;
    v211 = v111;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v208 = sub_249F77EF4;
    v209 = &block_descriptor_17_0;
    v112 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v112);

    sub_249F98538(v49, type metadata accessor for TargetType);
    v98 = v197;
LABEL_22:
    sub_249F806B8(v98, &unk_27EF2CCC0, &unk_249F9B960);
    return 0;
  }

  v197 = v41;
  v57 = v41[4];
  v58 = v198;
  v57(v198, v33, v34);
  v59 = sub_249F9748C(v58);
  if (v59)
  {
    sub_249F95230(v59, v31);

    v60 = v42(v31, 1, v34);
    v61 = v34;
    v62 = v196;
    if (v60 != 1)
    {
      v57(v38, v31, v61);
      v135 = sub_249F9A784();
      v137 = sub_249F912D0(v135, v136);

      v138 = v197[1];
      v138(v38, v61);
      v138(v198, v61);
      return v137;
    }

    v195 = v61;
    sub_249F806B8(v31, &qword_27EF2CDF8, &qword_249F9C490);
    v63 = sub_249F9ABA4();
    v194 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v64 = sub_249F9AC64();
    sub_249F9A874(v63, &dword_249F74000, v64, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to find a random mach-o binary to inspect", 103, 2, MEMORY[0x277D84F90]);

    v65 = sub_249F9A784();
    sub_249F7B308(v65, v66, &aBlock);
    v67 = sub_249F9A784();
    v69 = sub_249F9A1B8(v67, v68);
    v71 = v70;

    v72 = v189;
    *v189 = v69;
    *(v72 + 8) = v71;
    v73 = v200;
    swift_storeEnumTagMultiPayload();
    (*(v62 + 56))(v72, 0, 1, v73);
    v74 = sub_249F9A784();
    v192 = sub_249F9A1B8(v74, v75);
    v193 = v76;

    v78 = v212;
    v77 = v213;
    v79 = v208;
    v80 = v209;
    v81 = v211;
    v188 = v210;
    v82 = v187;
    sub_249F805EC(v72, v187);
    v83 = *(v62 + 48);
    if (v83(v82, 1, v73) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v83(v82, 1, v73) != 1)
      {
        sub_249F806B8(v82, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v82, v190);
    }

    v163 = 0x206E776F6E6B6E75;
    if (v77)
    {
      v163 = v78;
    }

    v191 = v163;
    if (v80)
    {
      v164 = v79;
    }

    else
    {
      v164 = 0xD000000000000011;
    }

    v165 = 0xD000000000000016;
    if (v81)
    {
      v165 = v188;
    }

    v187 = v164;
    v188 = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_249F9B940;
    *(v166 + 32) = 0x74536E6F6D656164;
    v196 = v166 + 32;
    *(v166 + 40) = 0xEB00000000657461;

    *(v166 + 48) = sub_249F9A9A4();
    *(v166 + 56) = 0xD000000000000012;
    *(v166 + 64) = 0x8000000249F9CCF0;
    *(v166 + 72) = sub_249F9A9A4();
    *(v166 + 80) = 0x546572756C696166;
    *(v166 + 88) = 0xEB00000000657079;
    *(v166 + 96) = sub_249F9A9A4();
    strcpy((v166 + 104), "targetBundleID");
    *(v166 + 119) = -18;
    v167 = sub_249F9A9A4();

    *(v166 + 120) = v167;
    *(v166 + 128) = 0xD000000000000013;
    *(v166 + 136) = 0x8000000249F9CD10;
    v168 = sub_249F9A9A4();

    *(v166 + 144) = v168;
    *(v166 + 152) = 0x614E746567726174;
    *(v166 + 160) = 0xEA0000000000656DLL;
    v169 = sub_249F9A9A4();

    *(v166 + 168) = v169;
    *(v166 + 176) = 0x6150746567726174;
    *(v166 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v192, v193);

    v170 = sub_249F9A9A4();

    *(v166 + 192) = v170;
    *(v166 + 200) = 0x7954746567726174;
    *(v166 + 208) = 0xEA00000000006570;
    v171 = v190;
    sub_249F7A228(v190, v199);
    sub_249F9AA14();
    v172 = sub_249F9A9A4();

    *(v166 + 216) = v172;
    *(v166 + 224) = 1701869940;
    *(v166 + 232) = 0xE400000000000000;
    *(v166 + 240) = sub_249F9AB64();
    strcpy((v166 + 248), "failureRetries");
    *(v166 + 263) = -18;
    *(v166 + 264) = sub_249F9AB64();
    v173 = sub_249F791D4(v166);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v174 = sub_249F9ABA4();
    v175 = sub_249F9AC64();
    if (os_log_type_enabled(v175, v174))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v201 = v177;
      *v176 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v178 = sub_249F9A974();
      v180 = sub_249F78A30(v178, v179, &v201);

      *(v176 + 4) = v180;
      _os_log_impl(&dword_249F74000, v175, v174, "Sending failure analysis event: %s)", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x24C20AE50](v177, -1, -1);
      MEMORY[0x24C20AE50](v176, -1, -1);
    }

    v158 = v197;
    v181 = sub_249F9A9A4();
    v182 = swift_allocObject();
    *(v182 + 16) = v173;
    v205 = sub_249F7ABC0;
    v206 = v182;
    v201 = MEMORY[0x277D85DD0];
    v202 = 1107296256;
    v203 = sub_249F77EF4;
    v204 = &block_descriptor_31_0;
    v183 = _Block_copy(&v201);

    AnalyticsSendEventLazy();
    _Block_release(v183);

    sub_249F7B86C(&aBlock);
    sub_249F98538(v171, type metadata accessor for TargetType);
    v162 = v189;
  }

  else
  {
    v195 = v34;
    v113 = sub_249F9ABA4();
    v194 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v114 = sub_249F9AC64();
    sub_249F9A874(v113, &dword_249F74000, v114, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to find any mach-o binaries in the app", 100, 2, MEMORY[0x277D84F90]);

    v115 = sub_249F9A784();
    sub_249F7B308(v115, v116, &aBlock);
    v117 = sub_249F9A784();
    v119 = sub_249F9A1B8(v117, v118);
    v121 = v120;

    v122 = v191;
    *v191 = v119;
    *(v122 + 8) = v121;
    v123 = v200;
    swift_storeEnumTagMultiPayload();
    v124 = v196;
    (*(v196 + 56))(v122, 0, 1, v123);
    v125 = sub_249F9A784();
    v190 = sub_249F9A1B8(v125, v126);
    v193 = v127;

    v129 = v212;
    v128 = v213;
    v130 = v208;
    v131 = v209;
    v132 = v211;
    v186 = v210;
    v133 = v188;
    sub_249F805EC(v122, v188);
    v134 = *(v124 + 48);
    if (v134(v133, 1, v123) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v134(v133, 1, v123) != 1)
      {
        sub_249F806B8(v133, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v133, v192);
    }

    v140 = 0x206E776F6E6B6E75;
    if (v128)
    {
      v140 = v129;
    }

    v189 = v140;
    if (v131)
    {
      v141 = v130;
    }

    else
    {
      v141 = 0xD000000000000011;
    }

    v142 = 0xD000000000000016;
    if (v132)
    {
      v142 = v186;
    }

    v187 = v141;
    v188 = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_249F9B940;
    *(v143 + 32) = 0x74536E6F6D656164;
    v196 = v143 + 32;
    *(v143 + 40) = 0xEB00000000657461;

    *(v143 + 48) = sub_249F9A9A4();
    *(v143 + 56) = 0xD000000000000012;
    *(v143 + 64) = 0x8000000249F9CCF0;
    *(v143 + 72) = sub_249F9A9A4();
    *(v143 + 80) = 0x546572756C696166;
    *(v143 + 88) = 0xEB00000000657079;
    *(v143 + 96) = sub_249F9A9A4();
    strcpy((v143 + 104), "targetBundleID");
    *(v143 + 119) = -18;
    v144 = sub_249F9A9A4();

    *(v143 + 120) = v144;
    *(v143 + 128) = 0xD000000000000013;
    *(v143 + 136) = 0x8000000249F9CD10;
    v145 = sub_249F9A9A4();

    *(v143 + 144) = v145;
    *(v143 + 152) = 0x614E746567726174;
    *(v143 + 160) = 0xEA0000000000656DLL;
    v146 = sub_249F9A9A4();

    *(v143 + 168) = v146;
    *(v143 + 176) = 0x6150746567726174;
    *(v143 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v190, v193);

    v147 = sub_249F9A9A4();

    *(v143 + 192) = v147;
    *(v143 + 200) = 0x7954746567726174;
    *(v143 + 208) = 0xEA00000000006570;
    v148 = v192;
    sub_249F7A228(v192, v199);
    sub_249F9AA14();
    v149 = sub_249F9A9A4();

    *(v143 + 216) = v149;
    *(v143 + 224) = 1701869940;
    *(v143 + 232) = 0xE400000000000000;
    *(v143 + 240) = sub_249F9AB64();
    strcpy((v143 + 248), "failureRetries");
    *(v143 + 263) = -18;
    *(v143 + 264) = sub_249F9AB64();
    v150 = sub_249F791D4(v143);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v151 = sub_249F9ABA4();
    v152 = sub_249F9AC64();
    if (os_log_type_enabled(v152, v151))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v201 = v154;
      *v153 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v155 = sub_249F9A974();
      v157 = sub_249F78A30(v155, v156, &v201);

      *(v153 + 4) = v157;
      _os_log_impl(&dword_249F74000, v152, v151, "Sending failure analysis event: %s)", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v154);
      MEMORY[0x24C20AE50](v154, -1, -1);
      MEMORY[0x24C20AE50](v153, -1, -1);
    }

    v158 = v197;
    v159 = sub_249F9A9A4();
    v160 = swift_allocObject();
    *(v160 + 16) = v150;
    v205 = sub_249F7ABC0;
    v206 = v160;
    v201 = MEMORY[0x277D85DD0];
    v202 = 1107296256;
    v203 = sub_249F77EF4;
    v204 = &block_descriptor_24_0;
    v161 = _Block_copy(&v201);

    AnalyticsSendEventLazy();
    _Block_release(v161);

    sub_249F7B86C(&aBlock);
    sub_249F98538(v148, type metadata accessor for TargetType);
    v162 = v191;
  }

  sub_249F806B8(v162, &unk_27EF2CCC0, &unk_249F9B960);
  (v158[1])(v198, v195);
  return 0;
}

uint64_t sub_249F9413C()
{
  v116 = type metadata accessor for TargetType(0);
  v112 = *(v116 - 8);
  v0 = MEMORY[0x28223BE20](v116);
  v90 = &v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v111 = &v89 - v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v89 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = (&v89 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v89 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v89 - v17;
  v19 = sub_249F9A794();
  *&v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v114 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_249F9ABB4();
  v115 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v22 = sub_249F9AC64();
  v23 = v21;
  v24 = v19;
  sub_249F9A874(v23, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Analyzing non-app mach-o", 79, 2, MEMORY[0x277D84F90]);

  v117 = 0;
  v113 = (v105 + 48);
  v103 = (v105 + 32);
  v104 = (v112 + 56);
  v97 = "o binary, attempt %d";
  v109 = "pping microstackshot analysis";
  v110 = "unknown bundle ID";
  v106 = (v112 + 48);
  v107 = 0x8000000249F9CCF0;
  v108 = 0x8000000249F9CD10;
  v112 = "targetBundleVersion";
  v95 = &v120;
  v96 = "^/Users/.+/Library";
  v102 = (v105 + 8);
  v94 = xmmword_249F9B930;
  *(&v25 + 1) = 20;
  v105 = xmmword_249F9B940;
  *&v25 = 136315138;
  v93 = v25;
  v100 = v15;
  v101 = v13;
  v92 = v5;
  v98 = v19;
  v99 = v18;
  while (1)
  {
    sub_249F95230(MEMORY[0x277D84F90], v18);
    if ((*v113)(v18, 1, v24) == 1)
    {
      break;
    }

    v35 = v114;
    (*v103)(v114, v18, v24);
    v36 = sub_249F9A784();
    v38 = sub_249F912D0(v36, v37);

    if (v38)
    {
      (*v102)(v35, v24);

      return v38;
    }

    v39 = sub_249F9ABA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v40 = swift_allocObject();
    *(v40 + 16) = v94;
    v41 = sub_249F9A784();
    v43 = v42;
    *(v40 + 56) = MEMORY[0x277D837D0];
    v44 = sub_249F7A16C();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    *(v40 + 96) = MEMORY[0x277D83B88];
    *(v40 + 104) = MEMORY[0x277D83C10];
    v45 = v117;
    *(v40 + 64) = v44;
    *(v40 + 72) = v45;
    v46 = sub_249F9AC64();
    sub_249F9A874(v39, &dword_249F74000, v46, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to analyze path: %{private}@, might not be a mach-o binary, attempt %d", 132, 2, v40);

    v47 = sub_249F9A784();
    v49 = sub_249F9A1B8(v47, v48);
    v51 = v50;

    *v15 = v49;
    v15[1] = v51;
    v52 = v116;
    swift_storeEnumTagMultiPayload();
    (*v104)(v15, 0, 1, v52);
    v53 = sub_249F9A784();
    v55 = sub_249F9A1B8(v53, v54);
    v57 = v56;

    sub_249F805EC(v15, v13);
    v58 = *v106;
    if ((*v106)(v13, 1, v52) == 1)
    {
      swift_storeEnumTagMultiPayload();
      v59 = v5;
      if (v58(v13, 1, v52) != 1)
      {
        sub_249F806B8(v13, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v13, v5);
      v59 = v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = v105;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = v107;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = v108;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v55, v57);

    v61 = sub_249F9A9A4();

    *(inited + 192) = v61;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v59, v111);
    sub_249F9AA14();
    v62 = sub_249F9A9A4();

    *(inited + 216) = v62;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v63 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v64 = sub_249F9ABA4();
    v65 = sub_249F9AC64();
    if (os_log_type_enabled(v65, v64))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v118 = v27;
      *v26 = v93;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v28 = sub_249F9A974();
      v30 = sub_249F78A30(v28, v29, &v118);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_249F74000, v65, v64, "Sending failure analysis event: %s)", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v31 = v27;
      v5 = v92;
      MEMORY[0x24C20AE50](v31, -1, -1);
      MEMORY[0x24C20AE50](v26, -1, -1);
    }

    else
    {
      v5 = v59;
    }

    v18 = v99;
    v32 = sub_249F9A9A4();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    v122 = sub_249F7ABC0;
    v123 = v33;
    v118 = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_249F77EF4;
    v121 = &block_descriptor_45;
    v34 = _Block_copy(&v118);

    AnalyticsSendEventLazy();
    _Block_release(v34);

    sub_249F98538(v5, type metadata accessor for TargetType);
    v15 = v100;
    sub_249F806B8(v100, &unk_27EF2CCC0, &unk_249F9B960);
    v24 = v98;
    (*v102)(v114, v98);
    ++v117;
    v13 = v101;
    if (v117 == 5)
    {

      return 0;
    }
  }

  v66 = MEMORY[0x277D84F90];

  sub_249F806B8(v18, &qword_27EF2CDF8, &qword_249F9C490);
  v67 = sub_249F9ABA4();
  v68 = sub_249F9AC64();
  sub_249F9A874(v67, &dword_249F74000, v68, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Failed to find random non-app path to inspect", 100, 2, v66);

  v69 = v91;
  *v91 = 0;
  *(v69 + 8) = 0xE000000000000000;
  v70 = v116;
  swift_storeEnumTagMultiPayload();
  (*v104)(v69, 0, 1, v70);
  v71 = v89;
  sub_249F805EC(v69, v89);
  v72 = *v106;
  if ((*v106)(v71, 1, v70) == 1)
  {
    v73 = v90;
    swift_storeEnumTagMultiPayload();
    if (v72(v71, 1, v70) != 1)
    {
      sub_249F806B8(v71, &unk_27EF2CCC0, &unk_249F9B960);
    }
  }

  else
  {
    v73 = v90;
    sub_249F7A2F8(v71, v90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  v74 = swift_initStackObject();
  *(v74 + 16) = v105;
  *(v74 + 32) = 0x74536E6F6D656164;
  *(v74 + 40) = 0xEB00000000657461;
  *(v74 + 48) = sub_249F9A9A4();
  *(v74 + 56) = 0xD000000000000012;
  *(v74 + 64) = v107;
  *(v74 + 72) = sub_249F9A9A4();
  *(v74 + 80) = 0x546572756C696166;
  *(v74 + 88) = 0xEB00000000657079;
  *(v74 + 96) = sub_249F9A9A4();
  strcpy((v74 + 104), "targetBundleID");
  *(v74 + 119) = -18;
  *(v74 + 120) = sub_249F9A9A4();
  *(v74 + 128) = 0xD000000000000013;
  *(v74 + 136) = v108;
  *(v74 + 144) = sub_249F9A9A4();
  *(v74 + 152) = 0x614E746567726174;
  *(v74 + 160) = 0xEA0000000000656DLL;
  *(v74 + 168) = sub_249F9A9A4();
  *(v74 + 176) = 0x6150746567726174;
  *(v74 + 184) = 0xEA00000000006874;
  sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
  v75 = sub_249F9A9A4();

  *(v74 + 192) = v75;
  *(v74 + 200) = 0x7954746567726174;
  *(v74 + 208) = 0xEA00000000006570;
  sub_249F7A228(v73, v111);
  sub_249F9AA14();
  v76 = sub_249F9A9A4();

  *(v74 + 216) = v76;
  *(v74 + 224) = 1701869940;
  *(v74 + 232) = 0xE400000000000000;
  *(v74 + 240) = sub_249F9AB64();
  strcpy((v74 + 248), "failureRetries");
  *(v74 + 263) = -18;
  *(v74 + 264) = sub_249F9AB64();
  v77 = sub_249F791D4(v74);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  v78 = sub_249F9ABA4();
  v79 = sub_249F9AC64();
  if (os_log_type_enabled(v79, v78))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v118 = v81;
    *v80 = v93;
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v82 = sub_249F9A974();
    v84 = sub_249F78A30(v82, v83, &v118);

    *(v80 + 4) = v84;
    v69 = v91;
    _os_log_impl(&dword_249F74000, v79, v78, "Sending failure analysis event: %s)", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x24C20AE50](v81, -1, -1);
    MEMORY[0x24C20AE50](v80, -1, -1);
  }

  v85 = sub_249F9A9A4();
  v86 = swift_allocObject();
  *(v86 + 16) = v77;
  v122 = sub_249F7ABC0;
  v123 = v86;
  v118 = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v120 = sub_249F77EF4;
  v121 = &block_descriptor_38;
  v87 = _Block_copy(&v118);

  AnalyticsSendEventLazy();
  _Block_release(v87);

  sub_249F98538(v73, type metadata accessor for TargetType);
  sub_249F806B8(v69, &unk_27EF2CCC0, &unk_249F9B960);
  return 0;
}

uint64_t sub_249F95230@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_249F9A794();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = *(v5 + 56);
  result = v11(&v27 - v9, 1, 1, v4);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v21 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v22 = sub_249F9AC64();
    sub_249F9A874(v21, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Could not find any URLs to inspect", 89, 2, MEMORY[0x277D84F90]);

    v11(a2, 1, 1, v4);
    return sub_249F806B8(v10, &qword_27EF2CDF8, &qword_249F9C490);
  }

  if (HIDWORD(v13))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = arc4random_uniform(*(a1 + 16));
  result = sub_249F806B8(v10, &qword_27EF2CDF8, &qword_249F9C490);
  if (v13 <= v14)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v28 = a2;
  v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14;
  v16 = *(v5 + 16);
  v16(v10, v15, v4);
  v11(v10, 0, 1, v4);
  v17 = sub_249F9AB84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249F9B920;
  if ((*(v5 + 48))(v10, 1, v4))
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v16(v7, v10, v4);
    v19 = sub_249F9A784();
    v20 = v23;
    (*(v5 + 8))(v7, v4);
  }

  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_249F7A16C();
  if (v20)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v20)
  {
    v25 = v20;
  }

  *(v18 + 32) = v24;
  *(v18 + 40) = v25;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v26 = sub_249F9AC64();
  sub_249F9A874(v17, &dword_249F74000, v26, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Selected %@ to sample", 76, 2, v18);

  return sub_249F985F8(v10, v28);
}

uint64_t sub_249F955C0(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for TargetType(0);
  v103 = *(v112 - 8);
  v4 = MEMORY[0x28223BE20](v112);
  v104 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = (&v100 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v109 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v108 = &v100 - v10;
  v11 = type metadata accessor for AnalyzableTarget(0);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = (&v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_249F9A794();
  v113 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v114 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  v18 = sub_249F9ABB4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v20 = swift_allocObject();
  v102 = xmmword_249F9B920;
  *(v20 + 16) = xmmword_249F9B920;
  *(v20 + 56) = MEMORY[0x277D837D0];
  v101 = sub_249F7A16C();
  *(v20 + 64) = v101;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  v21 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v22 = sub_249F9AC64();
  v23 = v18;
  v24 = v113;
  sub_249F9A874(v23, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: analyzeApp called on %{private}@", 87, 2, v20);

  v25 = v13;

  sub_249F7B308(a1, a2, &v117);
  sub_249F9A744();
  v26 = sub_249F9748C(v17);
  v27 = v17;
  v28 = v24[1];
  v28(v27, v13);
  v107 = v21;
  if (v26)
  {
    v104 = v19;
    sub_249F7B86C(&v117);
    v106 = v26;
    v29 = v26[2];
    v30 = v105;
    v31 = (v24 + 1);
    v32 = v114;
    v33 = v115;
    if (v29)
    {
      v34 = v28;
      v36 = v24[2];
      v35 = (v24 + 2);
      v37 = v106 + ((v35[64] + 32) & ~v35[64]);
      v108 = *(v35 + 7);
      v109 = v36;
      v110 = v25;
      v111 = v31;
      do
      {
        v38 = v109(v32, v37, v25);
        v113 = MEMORY[0x24C20A7A0](v38);
        *v33 = sub_249F9A774();
        v33[1] = v39;
        swift_storeEnumTagMultiPayload();
        v40 = *(v30 + 33);
        v41 = v30;
        v42 = v35;
        v43 = swift_allocObject();
        swift_weakInit();
        v44 = v34;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);

        v47 = v46;
        v34 = v44;
        v48 = v40;
        v25 = v110;
        sub_249F8A5A4(v115, v47, v45, v48, v43);
        v33 = v115;

        sub_249F98538(v33, type metadata accessor for AnalyzableTarget);
        v35 = v42;
        v30 = v41;

        v32 = v114;
        objc_autoreleasePoolPop(v113);
        v44(v32, v25);
        v37 += v108;
        --v29;
      }

      while (v29);
    }

    v49 = sub_249F9ABB4();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_249F9B930;
    v51 = v106[2];

    v52 = MEMORY[0x277D83B88];
    v53 = MEMORY[0x277D83C10];
    *(v50 + 56) = MEMORY[0x277D83B88];
    *(v50 + 64) = v53;
    *(v50 + 32) = v51;
    v54 = *(v30 + 40);
    *(v50 + 96) = v52;
    *(v50 + 104) = v53;
    *(v50 + 72) = v54;
    v55 = sub_249F9AC64();
    sub_249F9A874(v49, &dword_249F74000, v55, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Analyzed %d binaries, sending %d messages", v100, v101);

    return *(v30 + 40);
  }

  else
  {
    v57 = sub_249F9ABA4();
    v58 = swift_allocObject();
    *(v58 + 16) = v102;
    v59 = v101;
    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = v59;
    *(v58 + 32) = a1;
    *(v58 + 40) = a2;

    v60 = sub_249F9AC64();
    sub_249F9A874(v57, &dword_249F74000, v60, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: no mach-o binaries found in %{private}@", 94, 2, v58);

    v61 = sub_249F9A1B8(a1, a2);
    v62 = v108;
    *v108 = v61;
    v62[1] = v63;
    v64 = v112;
    swift_storeEnumTagMultiPayload();
    v65 = v103;
    (*(v103 + 56))(v62, 0, 1, v64);
    v114 = sub_249F9A1B8(a1, a2);
    v115 = v66;
    v67 = v122;
    v68 = v123;
    v69 = v119;
    v113 = v118;
    v71 = v120;
    v70 = v121;
    v72 = v62;
    v73 = v109;
    sub_249F805EC(v72, v109);
    v74 = *(v65 + 48);
    if (v74(v73, 1, v64) == 1)
    {
      v75 = v71;
      v76 = v112;
      swift_storeEnumTagMultiPayload();
      v77 = v76;
      v71 = v75;
      if (v74(v109, 1, v77) != 1)
      {
        sub_249F806B8(v109, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v109, v106);
    }

    v78 = 0x206E776F6E6B6E75;
    if (v68)
    {
      v78 = v67;
    }

    v111 = v78;
    v79 = v113;
    if (!v69)
    {
      v79 = 0xD000000000000011;
    }

    v80 = 0xD000000000000016;
    if (v70)
    {
      v80 = v71;
    }

    v109 = v79;
    v110 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    v113 = (inited + 32);
    *(inited + 40) = 0xEB00000000657461;

    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    v82 = sub_249F9A9A4();

    *(inited + 120) = v82;
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    v83 = sub_249F9A9A4();

    *(inited + 144) = v83;
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    v84 = sub_249F9A9A4();

    *(inited + 168) = v84;
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v114, v115);

    v85 = sub_249F9A9A4();

    *(inited + 192) = v85;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v86 = v106;
    sub_249F7A228(v106, v104);
    sub_249F9AA14();
    v87 = sub_249F9A9A4();

    *(inited + 216) = v87;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v88 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v89 = sub_249F9ABA4();
    v90 = sub_249F9AC64();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v116[0] = v92;
      *v91 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v93 = sub_249F9A974();
      v95 = sub_249F78A30(v93, v94, v116);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_249F74000, v90, v89, "Sending failure analysis event: %s)", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x24C20AE50](v92, -1, -1);
      MEMORY[0x24C20AE50](v91, -1, -1);
    }

    v96 = v108;
    v97 = sub_249F9A9A4();
    v98 = swift_allocObject();
    *(v98 + 16) = v88;
    v116[4] = sub_249F7ABC0;
    v116[5] = v98;
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 1107296256;
    v116[2] = sub_249F77EF4;
    v116[3] = &block_descriptor_52;
    v99 = _Block_copy(v116);

    AnalyticsSendEventLazy();
    _Block_release(v99);

    sub_249F7B86C(&v117);
    sub_249F98538(v86, type metadata accessor for TargetType);
    sub_249F806B8(v96, &unk_27EF2CCC0, &unk_249F9B960);
    return 0;
  }
}

uint64_t sub_249F961E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 40) = v6;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = *(result + 32);

      if (v7 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  v8 = sub_249F9A9A4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v13[4] = sub_249F7A97C;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249F77EF4;
  v13[3] = &block_descriptor_78;
  v10 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v10);

LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = *(result + 34);

  if (v11 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249F9B920;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v12 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t MachOAnalysisCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_249F964A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDC8, &qword_249F9C140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_249F965AC()
{
  v77 = sub_249F9A794();
  v0 = *(v77 - 8);
  v1 = MEMORY[0x28223BE20](v77);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v88 = &v74 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v74 - v6;
  MEMORY[0x28223BE20](v5);
  v90 = &v74 - v7;
  v86 = [objc_opt_self() enumeratorWithOptions_];
  v8 = [v86 nextObject];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D84F90];
    v89 = v0 + 32;
    v91 = xmmword_249F9B920;
    do
    {
      v75 = v10;
      while (1)
      {
        v11 = sub_249F9AB94();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
        v12 = swift_allocObject();
        *(v12 + 16) = v91;
        v13 = v9;
        v14 = [v13 bundleIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = sub_249F9A9D4();
          v18 = v17;
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        *&v94 = v16;
        *(&v94 + 1) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE18, &qword_249F9C520);
        v19 = sub_249F9AA14();
        v21 = v20;
        *(v12 + 56) = MEMORY[0x277D837D0];
        *(v12 + 64) = sub_249F7A16C();
        *(v12 + 32) = v19;
        *(v12 + 40) = v21;
        sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
        v22 = sub_249F9AC64();
        sub_249F9A874(v11, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: App Bundle ID: %@", 72, 2, v12);

        v23 = [v13 bundleIdentifier];
        if (v23)
        {

          result = [v13 bundleIdentifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v25 = result;
          v26 = sub_249F9A9D4();
          v28 = v27;

          *&v94 = v26;
          *(&v94 + 1) = v28;
          v92 = 0x6C7070612E6D6F63;
          v93 = 0xE900000000000065;
          sub_249F7798C();
          LOBYTE(v26) = sub_249F9ACB4();

          if ((v26 & 1) == 0)
          {
            break;
          }
        }

        v9 = [v86 nextObject];
        if (!v9)
        {
          v10 = v75;
          goto LABEL_19;
        }
      }

      v29 = [v13 URL];

      sub_249F9A764();
      v10 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_249F8ED1C(0, v10[2] + 1, 1, v10);
      }

      v31 = v10[2];
      v30 = v10[3];
      if (v31 >= v30 >> 1)
      {
        v10 = sub_249F8ED1C((v30 > 1), v31 + 1, 1, v10);
      }

      v10[2] = v31 + 1;
      (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v31, v90, v77);
      v9 = [v86 nextObject];
    }

    while (v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v32 = sub_249F9AB94();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v34 = swift_allocObject();
  v82 = xmmword_249F9B920;
  *(v34 + 16) = xmmword_249F9B920;
  *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE08, &qword_249F9C518);
  *(v34 + 64) = sub_249F98668();
  *(v34 + 32) = v10;
  v35 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v36 = sub_249F9AC64();
  sub_249F9A874(v32, &dword_249F74000, v36, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: arrayOfApps: %@", 70, 2, v34);

  v37 = sub_249F9ABB4();
  v80 = v33;
  v38 = swift_allocObject();
  *(v38 + 16) = v82;
  v39 = v10[2];
  v40 = MEMORY[0x277D83C10];
  *(v38 + 56) = MEMORY[0x277D83B88];
  *(v38 + 64) = v40;
  *(v38 + 32) = v39;
  v81 = v35;
  v41 = sub_249F9AC64();
  sub_249F9A874(v37, &dword_249F74000, v41, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: number of apps to potentially analyze: %d", v74);

  type metadata accessor for IgnoreListDataStore();
  swift_initStackObject();
  v87 = sub_249F8BD98();
  v42 = v10[2];
  if (v42)
  {
    v45 = *(v0 + 16);
    v44 = v0 + 16;
    v43 = v45;
    v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
    v75 = v10;
    v79 = v46;
    v47 = v10 + v46;
    v48 = *(v44 + 56);
    v83 = (v44 - 8);
    v78 = (v44 + 16);
    v49 = MEMORY[0x277D84F90];
    v50 = v77;
    v89 = v44;
    v51 = v85;
    v84 = v48;
    do
    {
      *&v91 = v42;
      v90 = v49;
      v43(v51, v47, v50);
      v59 = sub_249F9A784();
      sub_249F7B308(v59, v60, &v94);
      if (v98)
      {
        v61 = v97;
      }

      else
      {
        v61 = 0;
      }

      if (v98)
      {
        v62 = v98;
      }

      else
      {
        v62 = 0xE000000000000000;
      }

      if (v96)
      {
        v63 = v95;
      }

      else
      {
        v63 = 0;
      }

      if (v96)
      {
        v64 = v96;
      }

      else
      {
        v64 = 0xE000000000000000;
      }

      sub_249F7B86C(&v94);
      v92 = v61;
      v93 = v62;

      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](v63, v64);
      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](7565161, 0xE300000000000000);
      v65 = sub_249F8CDF4(0, v92, v93);

      if (v65)
      {
        v52 = sub_249F9AB84();
        v53 = swift_allocObject();
        *(v53 + 16) = v82;
        v51 = v85;
        v54 = sub_249F9A754();
        v56 = v55;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = sub_249F7A16C();
        *(v53 + 32) = v54;
        *(v53 + 40) = v56;
        v57 = sub_249F9AC64();
        sub_249F9A874(v52, &dword_249F74000, v57, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Ignoring %@", 66, 2, v53);

        v50 = v77;
        (*v83)(v51, v77);
        v49 = v90;
        v58 = v84;
      }

      else
      {
        v51 = v85;
        v50 = v77;
        v43(v76, v85, v77);
        v49 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_249F8ED1C(0, *(v49 + 2) + 1, 1, v49);
        }

        v67 = *(v49 + 2);
        v66 = *(v49 + 3);
        if (v67 >= v66 >> 1)
        {
          v49 = sub_249F8ED1C((v66 > 1), v67 + 1, 1, v49);
        }

        (*v83)(v51, v50);
        *(v49 + 2) = v67 + 1;
        v58 = v84;
        (*v78)(&v49[v79 + v67 * v84], v76, v50);
      }

      v47 += v58;
      v42 = v91 - 1;
    }

    while (v91 != 1);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  sub_249F8C660();
  if (*(v49 + 2))
  {
    v68 = sub_249F9ABB4();
    v69 = swift_allocObject();
    *(v69 + 16) = v82;
    v70 = *(v49 + 2);
    *(v69 + 56) = MEMORY[0x277D83B88];
    *(v69 + 64) = MEMORY[0x277D83C10];
    *(v69 + 32) = v70;

    v71 = sub_249F9AC64();
    sub_249F9A874(v68, &dword_249F74000, v71, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: number of apps not ignored, available to analyze: %d", v74);
  }

  else
  {

    v72 = sub_249F9ABB4();
    v73 = sub_249F9AC64();
    sub_249F9A874(v72, &dword_249F74000, v73, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: no apps to analyze", 73, 2, MEMORY[0x277D84F90]);

    return 0;
  }

  return v49;
}

uint64_t sub_249F97280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CE20, qword_249F9C528);
    v3 = sub_249F9ACF4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_249F9A9D4();
      sub_249F9AE64();
      v27 = v7;
      sub_249F9AA34();
      v8 = sub_249F9AE84();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_249F9A9D4();
        v18 = v17;
        if (v16 == sub_249F9A9D4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_249F9ADF4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F9748C(uint64_t a1)
{
  v127 = 0;
  v113 = sub_249F9A704();
  v1 = *(v113 - 8);
  v2 = MEMORY[0x28223BE20](v113);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v125 = &v102 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v102 - v6;
  v8 = sub_249F9A794();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v102 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v102 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v107 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v102 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF0, &qword_249F9C488);
  v22 = swift_allocObject();
  v124 = xmmword_249F9B920;
  *(v22 + 16) = xmmword_249F9B920;
  v23 = *MEMORY[0x277CBE868];
  *(v22 + 32) = *MEMORY[0x277CBE868];
  v122 = v23;
  v110 = v21;
  v24 = sub_249F9AB74();

  v115 = v24;
  v120 = v8;
  v121 = v16;
  if (v24)
  {
    v118 = (v9 + 48);
    v119 = (v9 + 56);
    v117 = (v9 + 32);
    v112 = (v1 + 8);
    v108 = *MEMORY[0x277CBE8B0];
    v105 = (v9 + 16);
    v106 = &v129;
    v116 = (v9 + 8);
    v111 = MEMORY[0x277D84F90];
    v25 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if ([v115 nextObject])
          {
            sub_249F9ACC4();
            swift_unknownObjectRelease();
          }

          else
          {
            v132 = 0u;
            v133 = 0u;
          }

          v128 = v132;
          v129 = v133;
          if (!*(&v133 + 1))
          {
            v56 = v111;
            goto LABEL_31;
          }

          v26 = swift_dynamicCast();
          (*v119)(v7, v26 ^ 1u, 1, v8);
          if ((*v118)(v7, 1, v8) == 1)
          {
            v56 = v111;
            goto LABEL_33;
          }

          v27 = v25;
          v28 = *v117;
          (*v117)(v20, v7, v8);
          inited = swift_initStackObject();
          *(inited + 16) = v124;
          v30 = v122;
          *(inited + 32) = v122;
          v31 = v30;
          sub_249F97280(inited);
          swift_setDeallocating();
          sub_249F98538(inited + 32, type metadata accessor for URLResourceKey);
          v32 = v125;
          v33 = v127;
          sub_249F9A734();
          v127 = v33;
          if (v33)
          {
            goto LABEL_11;
          }

          v34 = sub_249F9A6C4();
          v35 = *v112;
          (*v112)(v32, v113);
          v16 = v121;
          if (v34 == 2 || (v34 & 1) != 0)
          {
LABEL_3:
            v8 = v120;
            goto LABEL_4;
          }

          v36 = swift_initStackObject();
          *(v36 + 16) = v124;
          v37 = v108;
          *(v36 + 32) = v108;
          v38 = v37;
          sub_249F97280(v36);
          swift_setDeallocating();
          sub_249F98538(v36 + 32, type metadata accessor for URLResourceKey);
          v39 = v109;
          v40 = v127;
          sub_249F9A734();
          v127 = v40;
          if (v40)
          {
            v8 = v120;
LABEL_11:
            v16 = v121;

            v127 = 0;
            goto LABEL_4;
          }

          v41 = sub_249F9A6E4();
          v35(v39, v113);
          v16 = v121;
          if (v41 == 2)
          {
            goto LABEL_3;
          }

          v8 = v120;
          if ((v41 & 1) == 0)
          {
            break;
          }

LABEL_4:
          (*v116)(v20, v8);
        }

        sub_249F9A784();
        v42 = swift_allocObject();
        *(v42 + 16) = 0;
        v104 = (v42 + 16);
        v103 = sub_249F9A9A4();

        v130 = sub_249F98598;
        v131 = v42;
        v102 = v42;
        *&v128 = MEMORY[0x277D85DD0];
        *(&v128 + 1) = 1107296256;
        *&v129 = sub_249F80C8C;
        *(&v129 + 1) = &block_descriptor_85;
        v43 = _Block_copy(&v128);

        v44 = v103;
        nm_macho_for_each_slice(v103, v43);
        _Block_release(v43);

        v45 = v104;
        swift_beginAccess();
        v46 = *v45;

        if (v46)
        {
          break;
        }

        (*v116)(v20, v8);
LABEL_23:
        v16 = v121;
      }

      if (sub_249F91108(v20, v111))
      {
        v8 = v120;
        (*v116)(v20, v120);
        goto LABEL_23;
      }

      LODWORD(v104) = sub_249F9AB94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
      v47 = swift_allocObject();
      *(v47 + 16) = v124;
      v48 = sub_249F9A784();
      v50 = v49;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_249F7A16C();
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
      v51 = sub_249F9AC64();
      sub_249F9A874(v104, &dword_249F74000, v51, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: non-app-mach-o to potentially analyze:%{private}@", 104, 2, v47);

      (*v105)(v107, v20, v120);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_249F8ED1C(0, v111[2] + 1, 1, v111);
      }

      v53 = v111[2];
      v52 = v111[3];
      v8 = v120;
      v16 = v121;
      if (v53 >= v52 >> 1)
      {
        v111 = sub_249F8ED1C((v52 > 1), v53 + 1, 1, v111);
      }

      (*(v27 + 8))(v20, v8);
      v54 = v111;
      v111[2] = v53 + 1;
      v55 = v54 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v53;
      v25 = v27;
      v28(v55, v107, v8);
    }
  }

  v128 = 0u;
  v129 = 0u;
  v56 = MEMORY[0x277D84F90];
  v25 = v9;
LABEL_31:
  sub_249F806B8(&v128, &unk_27EF2CBC8, &qword_249F9C510);
  (*(v25 + 56))(v7, 1, 1, v8);
LABEL_33:
  sub_249F806B8(v7, &qword_27EF2CDF8, &qword_249F9C490);
  type metadata accessor for IgnoreListDataStore();
  swift_initStackObject();
  v122 = sub_249F8BD98();
  v57 = v56[2];
  if (v57)
  {
    v59 = *(v25 + 16);
    v58 = v25 + 16;
    v60 = *(v58 + 64);
    v111 = v56;
    v117 = ((v60 + 32) & ~v60);
    v61 = &v117[v56];
    v62 = v59;
    v63 = *(v58 + 56);
    v118 = (v58 - 8);
    v116 = (v58 + 16);
    v64 = MEMORY[0x277D84F90];
    v125 = v59;
    v119 = v63;
    do
    {
      v126 = v64;
      v62(v16, v61, v8);
      v73 = sub_249F9A784();
      v74 = v58;
      v76 = v75;
      type metadata accessor for MachOParser();
      swift_allocObject();
      sub_249F85C5C(v73, v76, sub_249F7C9A0, 0);
      v77 = sub_249F80D00();
      if (v78)
      {
        v79 = v77;
      }

      else
      {
        v79 = 0;
      }

      v80 = 0xE000000000000000;
      if (v78)
      {
        v80 = v78;
      }

      *&v128 = v79;
      *(&v128 + 1) = v80;
      MEMORY[0x24C20A200](45, 0xE100000000000000);
      MEMORY[0x24C20A200](7565161, 0xE300000000000000);
      v81 = v127;
      v82 = sub_249F8CDF4(1, v128, *(&v128 + 1));
      v127 = v81;
      if (v81)
      {

        v83 = sub_249F9ABA4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
        v84 = swift_allocObject();
        *(v84 + 16) = v124;
        v85 = sub_249F9A784();
        v87 = v86;
        *(v84 + 56) = MEMORY[0x277D837D0];
        *(v84 + 64) = sub_249F7A16C();
        *(v84 + 32) = v85;
        *(v84 + 40) = v87;
        v8 = v120;
        sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
        v88 = sub_249F9AC64();
        sub_249F9A874(v83, &dword_249F74000, v88, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Error looking up %@", 74, 2, v84);

        (v125)(v123, v16, v8);
        v64 = v126;
        v58 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_249F8ED1C(0, v64[2] + 1, 1, v64);
        }

        v90 = v64[2];
        v89 = v64[3];
        v62 = v125;
        if (v90 >= v89 >> 1)
        {
          v64 = sub_249F8ED1C((v89 > 1), v90 + 1, 1, v64);
        }

        (*v118)(v16, v8);
        v64[2] = v90 + 1;
        v72 = v119;
        (*v116)(&v117[v64 + v90 * v119], v123, v8);
        v127 = 0;
      }

      else
      {
        v91 = v82;

        if (v91)
        {
          v65 = sub_249F9AB94();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
          v66 = swift_allocObject();
          *(v66 + 16) = v124;
          v16 = v121;
          v67 = sub_249F9A784();
          v69 = v68;
          *(v66 + 56) = MEMORY[0x277D837D0];
          *(v66 + 64) = sub_249F7A16C();
          *(v66 + 32) = v67;
          *(v66 + 40) = v69;
          v70 = v120;
          sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
          v71 = sub_249F9AC64();
          sub_249F9A874(v65, &dword_249F74000, v71, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: Ignoring %@", 66, 2, v66);
          v8 = v70;

          (*v118)(v16, v70);
          v58 = v74;
          v62 = v125;
          v64 = v126;
          v72 = v119;
        }

        else
        {
          v58 = v74;
          v62 = v125;
          (v125)(v114, v121, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_249F8ED1C(0, v126[2] + 1, 1, v126);
          }

          v93 = v126[2];
          v92 = v126[3];
          if (v93 >= v92 >> 1)
          {
            v126 = sub_249F8ED1C((v92 > 1), v93 + 1, 1, v126);
          }

          v16 = v121;
          (*v118)(v121, v8);
          v64 = v126;
          v126[2] = v93 + 1;
          v72 = v119;
          (*v116)(&v117[v64 + v93 * v119], v114, v8);
        }
      }

      v61 = v72 + v61;
      --v57;
    }

    while (v57);
    v94 = v64;
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  v95 = v127;
  sub_249F8C660();
  if (v95)
  {
  }

  if (v94[2])
  {
    v96 = sub_249F9ABB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v97 = swift_allocObject();
    *(v97 + 16) = v124;
    v98 = v94[2];
    v99 = MEMORY[0x277D83C10];
    *(v97 + 56) = MEMORY[0x277D83B88];
    *(v97 + 64) = v99;
    *(v97 + 32) = v98;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

    v100 = sub_249F9AC64();
    sub_249F9A874(v96, &dword_249F74000, v100, "EcosystemAnalytics.framework:MachOAnalysisCoordinator: number of non-ignored-mach-os to potentially analyze:%d", v102);
  }

  else
  {

    return 0;
  }

  return v94;
}

uint64_t sub_249F98538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_249F985A0()
{
  result = qword_27EF2CE00;
  if (!qword_27EF2CE00)
  {
    sub_249F9A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CE00);
  }

  return result;
}

uint64_t sub_249F985F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CDF8, &qword_249F9C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249F98668()
{
  result = qword_27EF2CE10;
  if (!qword_27EF2CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CE08, &qword_249F9C518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CE10);
  }

  return result;
}

uint64_t sub_249F9879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, const char *a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t), ...)
{
  v16 = sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249F9B920;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_249F7A16C();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_249F7B7E8();

  v18 = sub_249F9AC64();
  sub_249F9A874(v16, &dword_249F74000, v18, a8, a9, 2, v17);

  type metadata accessor for MachOAnalysisCoordinator();
  v19 = swift_allocObject();
  *(v19 + 40) = 0;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 33) = a6;
  *(v19 + 34) = a7;

  v20 = a10(a1, a2);

  return v20;
}

uint64_t static AnalysisCoordinator.staticallyAnalyze(interruptCallback:sendEvents:coreSymbolication:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v10 = sub_249F9ABB4();
  sub_249F7B7E8();
  v11 = sub_249F9AC64();
  sub_249F9A874(v10, &dword_249F74000, v11, "EcosystemAnalytics.framework:AnalysisCoordinator: statically analyzing random mach-o", 84, 2, MEMORY[0x277D84F90]);

  type metadata accessor for MachOAnalysisCoordinator();
  v12 = swift_allocObject();
  *(v12 + 40) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 33) = a4;
  *(v12 + 34) = a5;

  v13 = sub_249F922D0();

  return v13;
}

uint64_t static AnalysisCoordinator.runtimeAnalyzePID(_:interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v9 = a1;
  v10 = sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D849A8];
  *(v11 + 16) = xmmword_249F9B920;
  v13 = MEMORY[0x277D84A20];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v9;
  sub_249F7B7E8();
  v14 = sub_249F9AC64();
  sub_249F9A874(v10, &dword_249F74000, v14, "EcosystemAnalytics.framework:AnalysisCoordinator: runtime analyzing PID %d", v18);

  type metadata accessor for MicrostackshotsCoordinator();
  v15 = swift_allocObject();
  *(v15 + 24) = a3;
  *(v15 + 32) = 0;
  *(v15 + 16) = a2;
  *(v15 + 40) = a4;
  *(v15 + 41) = a5;

  v16 = sub_249F779E0(v9, 0);

  return v16;
}

uint64_t static AnalysisCoordinator.runtimeAnalyze(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_249F9ABB4();
  sub_249F7B7E8();
  v9 = sub_249F9AC64();
  sub_249F9A874(v8, &dword_249F74000, v9, "EcosystemAnalytics.framework:AnalysisCoordinator: runtime analyzing either random running process or historical microstackshots", 127, 2, MEMORY[0x277D84F90]);

  type metadata accessor for MicrostackshotsCoordinator();
  v10 = swift_allocObject();
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *(v10 + 16) = a1;
  *(v10 + 40) = a3;
  *(v10 + 41) = a4;

  sub_249F76830();
  v12 = v11;

  return v12;
}

uint64_t sub_249F98C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_249F98C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249F98D34(uint64_t a1, void *a2, void (*a3)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9C090;
  *(inited + 32) = 0x6C646E7542707061;
  *(inited + 40) = 0xEB00000000444965;

  v4 = sub_249F9A9A4();

  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000249F9DE80;

  v5 = sub_249F9A9A4();

  *(inited + 72) = v5;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;

  v6 = sub_249F9A9A4();

  *(inited + 96) = v6;
  *(inited + 104) = 1751347809;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_249F9A9A4();
  strcpy((inited + 128), "binaryCDHash");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_249F9A9A4();
  strcpy((inited + 152), "binaryLocation");
  *(inited + 167) = -18;
  v7 = sub_249F9A9A4();

  *(inited + 168) = v7;
  *(inited + 176) = 0x61507972616E6962;
  *(inited + 184) = 0xEA00000000006874;
  *(inited + 192) = sub_249F9A9A4();
  strcpy((inited + 200), "binaryTeamID");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = sub_249F9A9A4();
  *(inited + 224) = 0x55557972616E6962;
  *(inited + 232) = 0xEA00000000004449;
  *(inited + 240) = sub_249F9A9A4();
  strcpy((inited + 248), "binaryVersion");
  *(inited + 262) = -4864;
  *(inited + 264) = sub_249F9A9A4();
  *(inited + 272) = 0x48444362696C7964;
  *(inited + 280) = 0xEB00000000687361;
  *(inited + 288) = sub_249F9A9A4();
  strcpy((inited + 296), "dylibLocation");
  *(inited + 310) = -4864;
  v8 = sub_249F9A9A4();

  *(inited + 312) = v8;
  *(inited + 320) = 0x74615062696C7964;
  *(inited + 328) = 0xE900000000000068;
  *(inited + 336) = sub_249F9A9A4();
  *(inited + 344) = 0x61655462696C7964;
  *(inited + 352) = 0xEB0000000044496DLL;
  *(inited + 360) = sub_249F9A9A4();
  *(inited + 368) = 0x49555562696C7964;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = sub_249F9A9A4();
  strcpy((inited + 392), "dylibVersion");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_249F9A9A4();
  *(inited + 416) = 0x656372756F73;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_249F9A9A4();
  *(inited + 440) = 0x614E6C6F626D7973;
  *(inited + 448) = 0xEA0000000000656DLL;
  *(inited + 456) = sub_249F9A9A4();
  strcpy((inited + 464), "symbolOffset");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  *(inited + 480) = sub_249F9A9A4();
  *(inited + 488) = 0x794472656C6C6163;
  *(inited + 496) = 0xEF6874615062696CLL;
  *(inited + 504) = sub_249F9A9A4();
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x8000000249F9DD10;
  *(inited + 528) = sub_249F9A9A4();
  v9 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v10 = sub_249F9AC14();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F87DB0(v10, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
  a3(v9);
}

uint64_t sub_249F992E8(uint64_t a1, void *a2, void (*a3)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9C090;
  *(inited + 32) = 0x6C646E7542707061;
  *(inited + 40) = 0xEB00000000444965;

  v4 = sub_249F9A9A4();

  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000249F9DE80;

  v5 = sub_249F9A9A4();

  *(inited + 72) = v5;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;

  v6 = sub_249F9A9A4();

  *(inited + 96) = v6;
  *(inited + 104) = 1751347809;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_249F9A9A4();
  strcpy((inited + 128), "binaryCDHash");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_249F9A9A4();
  strcpy((inited + 152), "binaryLocation");
  *(inited + 167) = -18;
  v7 = sub_249F9A9A4();

  *(inited + 168) = v7;
  *(inited + 176) = 0x61507972616E6962;
  *(inited + 184) = 0xEA00000000006874;
  *(inited + 192) = sub_249F9A9A4();
  strcpy((inited + 200), "binaryTeamID");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = sub_249F9A9A4();
  *(inited + 224) = 0x55557972616E6962;
  *(inited + 232) = 0xEA00000000004449;
  *(inited + 240) = sub_249F9A9A4();
  strcpy((inited + 248), "binaryVersion");
  *(inited + 262) = -4864;
  *(inited + 264) = sub_249F9A9A4();
  *(inited + 272) = 0x48444362696C7964;
  *(inited + 280) = 0xEB00000000687361;
  *(inited + 288) = sub_249F9A9A4();
  strcpy((inited + 296), "dylibLocation");
  *(inited + 310) = -4864;
  v8 = sub_249F9A9A4();

  *(inited + 312) = v8;
  *(inited + 320) = 0x74615062696C7964;
  *(inited + 328) = 0xE900000000000068;
  *(inited + 336) = sub_249F9A9A4();
  *(inited + 344) = 0x61655462696C7964;
  *(inited + 352) = 0xEB0000000044496DLL;
  *(inited + 360) = sub_249F9A9A4();
  *(inited + 368) = 0x49555562696C7964;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = sub_249F9A9A4();
  strcpy((inited + 392), "dylibVersion");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_249F9A9A4();
  *(inited + 416) = 0x656372756F73;
  *(inited + 424) = 0xE600000000000000;
  *(inited + 432) = sub_249F9A9A4();
  *(inited + 440) = 0x614E6C6F626D7973;
  *(inited + 448) = 0xEA0000000000656DLL;
  *(inited + 456) = sub_249F9A9A4();
  strcpy((inited + 464), "symbolOffset");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  *(inited + 480) = sub_249F9A9A4();
  *(inited + 488) = 0x794472656C6C6163;
  *(inited + 496) = 0xEF6874615062696CLL;
  *(inited + 504) = sub_249F9A9A4();
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x8000000249F9DD10;
  *(inited + 528) = sub_249F9A9A4();
  v9 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  sub_249F7AA2C(0, &qword_27EF2CD90, 0x277CCA980);
  v10 = sub_249F9AC14();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F87DB0(v10, 0x6F436C6F626D7973, 0xEB00000000746E75, isUniquelyReferenced_nonNull_native);
  a3(v9);
}

uint64_t sub_249F99898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D849A8];
  *(v11 + 16) = xmmword_249F9B920;
  v13 = MEMORY[0x277D84A20];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v9;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v14 = sub_249F9AC64();
  sub_249F9A874(v10, &dword_249F74000, v14, "EcosystemAnalytics.framework:MicrostackshotsAnalysisPerformer: Performing analysis on PID %d", v22);

  type metadata accessor for MicrostackshotsParser(0);
  v15 = swift_allocObject();
  *(v15 + 40) = xmmword_249F9C6C0;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = 0;
  sub_249F9A824();
  v16 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval;
  *(v15 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval) = 0;
  *(v15 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly) = 2;
  *(v15 + 16) = v9;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v15 + v16);

  if (v18 == 0.0)
  {
    v19 = sub_249F7E828(v9);
    sub_249F7FB7C(v19);
    sub_249F80228(v20);

    [v19 symbolicate];
    [v19 postprocess];
    sub_249F7B9AC(sub_249F99F74, v17, v19);
  }

  else
  {
    sub_249F7B8C4(sub_249F99F74, v17);
  }
}

uint64_t sub_249F99AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v9 = sub_249F9A834();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = type metadata accessor for TargetType(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_249F7A228(a1, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result <= 1)
    {
      return sub_249F8065C(v18);
    }

    return sub_249F99898(*v18, v38, a3, a4, a5);
  }

  if (result == 3)
  {
    return sub_249F99898(*v18, v38, a3, a4, a5);
  }

  if (result == 4)
  {
    v20 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48));
    (*(v10 + 32))(v15, v18, v9);
    LODWORD(v37) = sub_249F9ABB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249F9B920;
    v22 = sub_249F9AB44();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_249F7A16C();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v25 = sub_249F9AC64();
    sub_249F9A874(v37, &dword_249F74000, v25, "EcosystemAnalytics.framework:MicrostackshotsAnalysisPerformer: Performing analysis using interval %@", 100, 2, v21);

    (*(v10 + 16))(v13, v15, v9);
    type metadata accessor for MicrostackshotsParser(0);
    v26 = swift_allocObject();
    *(v26 + 40) = xmmword_249F9C6C0;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0;
    v27 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
    sub_249F9A824();
    v28 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval;
    *(v26 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_interval) = 0;
    v36 = a3;
    v29 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly;
    *(v26 + OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_thirdPartyOnly) = 2;
    *(v26 + 16) = -1;
    *(v26 + 24) = a4;
    *(v26 + 32) = a5;
    swift_beginAccess();
    v37 = v10;
    v30 = *(v10 + 40);

    v30(v26 + v27, v13, v9);
    swift_endAccess();
    *(v26 + v28) = v20;
    *(v26 + v29) = 1;
    v31 = v36;
    v32 = swift_allocObject();
    *(v32 + 16) = v38;
    *(v32 + 24) = v31;
    if (*(v26 + v28) == 0.0)
    {
      v33 = *(v26 + 16);

      v34 = sub_249F7E828(v33);
      sub_249F7FB7C(v34);
      sub_249F80228(v35);

      [v34 symbolicate];
      [v34 postprocess];
      sub_249F7B9AC(sub_249F99F6C, v32, v34);
    }

    else
    {

      sub_249F7B8C4(sub_249F99F6C, v32);
    }

    return (*(v37 + 8))(v15, v9);
  }

  return result;
}

void sub_249F99FEC(uint64_t a1)
{
  sub_249F9A064(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_249F9A064(uint64_t a1)
{
  if (!qword_28105EDF8)
  {
    sub_249F9A834();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28105EDF8);
    }
  }
}

uint64_t sub_249F9A114(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F9A14C(uint64_t a1)
{
  result = type metadata accessor for TargetType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F9A1B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_249F9A794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_249F9AAD4() & 1) != 0 || (sub_249F9AAD4())
  {
  }

  else
  {
    sub_249F9A744();
    v8 = sub_249F9A724();
    result = (*(v4 + 8))(v6, v3);
    v9 = 0;
    v10 = *(v8 + 16);
    v16 = v8 + 32;
    v11 = (v8 + 40);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      ++v9;
      v12 = *v11;
      v17 = *(v11 - 1);
      v18 = v12;
      v21 = 1886413102;
      v22 = 0xE400000000000000;
      sub_249F7798C();
      result = sub_249F9ACB4();
      v11 += 2;
      if (result)
      {
        if (*(v8 + 16) >= v10)
        {
          v17 = v8;
          v18 = v16;
          v19 = v9 - 1;
          v20 = (2 * v10) | 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
          sub_249F85F30();
          a1 = sub_249F9A984();

          return a1;
        }

        goto LABEL_15;
      }
    }

    v13 = sub_249F9A9A4();
    v14 = nm_OSASanitizePath(v13);

    if (v14)
    {
      a1 = sub_249F9A9D4();
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_249F9A43C(uint64_t a1, uint64_t a2)
{
  v3 = sub_249F9A794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F9A744();
  v7 = sub_249F9A724();
  (*(v4 + 8))(v6, v3);
  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 16);
  v16 = v7 + 32;
  do
  {
    if (v10 == v9)
    {

      goto LABEL_8;
    }

    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v11 = v7 + 8 * v8;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    ++v9;
    v17 = v13;
    v18 = v12;
    v21 = 1886413102;
    v22 = 0xE400000000000000;
    sub_249F7798C();
    v8 += 2;
  }

  while ((sub_249F9ACB4() & 1) == 0);
  if (*(v7 + 16) > v9 - 1)
  {
    v17 = v7;
    v18 = v16;
    v19 = 0;
    v20 = v8 + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
    sub_249F85F30();
    a1 = sub_249F9A984();
LABEL_8:

    return a1;
  }

LABEL_10:
  __break(1u);
  return sub_249F9A624();
}