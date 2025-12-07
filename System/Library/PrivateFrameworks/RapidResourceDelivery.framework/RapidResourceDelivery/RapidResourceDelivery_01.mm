uint64_t sub_227ECBA70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
  v35 = v4;
  result = sub_227F2BAA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_227F2BD14();
      sub_227F2B704();
      result = sub_227F2BD44();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_227ECBD14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_227ECA918(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_227ECB350(v14, a3 & 1);
      result = sub_227ECA918(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_227F2BCB4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_227ECC2E8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_227ECBE60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227F2B274();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_227ECA880(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_227ECC444();
      goto LABEL_7;
    }

    sub_227ECB5C0(v17, a3 & 1);
    v28 = sub_227ECA880(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_227ECC1E8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_227F2BCB4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_227ECC070(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_227ECA808(a2, a3);
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
      sub_227ECBA70(v16, a4 & 1);
      v11 = sub_227ECA808(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_227F2BCB4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_227ECC7A0();
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

uint64_t sub_227ECC1E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_227F2B274();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

void *sub_227ECC2E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E498, &qword_227F2DE38);
  v2 = *v0;
  v3 = sub_227F2BA94();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_227ECC444()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_227F2B274();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
  v4 = *v0;
  v5 = sub_227F2BA94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_227ECC7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
  v2 = *v0;
  v3 = sub_227F2BA94();
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

unint64_t sub_227ECC90C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4D0, &qword_227F2DE58);
    v3 = sub_227F2BAB4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_227ECA808(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_227ECCA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E8, &qword_227F2DE70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
    v7 = sub_227F2BAB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_227EC2180(v9, v5, &qword_27D80E4E8, &qword_227F2DE70);
      result = sub_227ECA880(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_227F2B274();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_227ECCC74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_227F2BAB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_227ECA808(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void sub_227ECCD70(void *a1)
{
  v1 = a1;
  oslog = sub_227F2B304();
  v2 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = [v1 taskIdentifier];

    _os_log_impl(&dword_227EB2000, oslog, v2, "task created %ld", v3, 0xCu);
    MEMORY[0x22AAAD240](v3, -1, -1);
    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

void sub_227ECCE5C(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 transactionMetrics];
  sub_227EB7BD0(0, &qword_27D80E4B8, 0x277CCAD60);
  v6 = sub_227F2B7A4();

  if (v6 >> 62)
  {
    v7 = sub_227F2BA84();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  v25 = v6 & 0xC000000000000001;
  v24 = a1;
  do
  {
    if (v25)
    {
      v17 = MEMORY[0x22AAAC680](v8, v6);
    }

    else
    {
      v17 = *(v6 + 8 * v8 + 32);
    }

    v18 = v17;
    v14 = a1;
    v19 = v18;
    v20 = sub_227F2B304();
    v21 = sub_227F2B8D4();

    if (os_log_type_enabled(v20, v21))
    {
      v9 = swift_slowAlloc();
      v10 = v7;
      v11 = v6;
      v12 = v3;
      v13 = swift_slowAlloc();
      *v9 = 134218242;
      *(v9 + 4) = [v14 taskIdentifier];

      *(v9 + 12) = 2112;
      *(v9 + 14) = v19;
      *v13 = v19;
      v14 = v19;
      _os_log_impl(&dword_227EB2000, v20, v21, "task %ld metrics %@", v9, 0x16u);
      sub_227EB8430(v13, &qword_27D80E4A0, &qword_227F2DE40);
      v15 = v13;
      v3 = v12;
      v6 = v11;
      v7 = v10;
      MEMORY[0x22AAAD240](v15, -1, -1);
      v16 = v9;
      a1 = v24;
      MEMORY[0x22AAAD240](v16, -1, -1);
    }

    else
    {
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_13:

  v22 = [a1 taskIdentifier];

  sub_227EC8BFC(v22, a2);
}

void sub_227ECD0D4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  oslog = sub_227F2B304();
  v6 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218496;
    *(v7 + 4) = [v5 taskIdentifier];

    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a3;
    _os_log_impl(&dword_227EB2000, oslog, v6, "downloadTask %ld didResumeAtOffset %lld expectedTotalBytes %lld", v7, 0x20u);
    MEMORY[0x22AAAD240](v7, -1, -1);
    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

void sub_227ECD1E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  oslog = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218752;
    *(v9 + 4) = [v7 taskIdentifier];

    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a3;
    *(v9 + 32) = 2048;
    *(v9 + 34) = a4;
    _os_log_impl(&dword_227EB2000, oslog, v8, "downloadTask %ld didWriteData %lld totalBytesWritten %lld totalBytesExpectedToWrite %lld", v9, 0x2Au);
    MEMORY[0x22AAAD240](v9, -1, -1);
    v10 = oslog;
  }

  else
  {

    v10 = v7;
  }
}

uint64_t dispatch thunk of URLSessionProtocol.allTasks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227ECDB20;

  return v7(a1, a2);
}

uint64_t dispatch thunk of URLSessionProtocol.downloadTasks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EC3440;

  return v7(a1, a2);
}

uint64_t type metadata accessor for DownloadManager(uint64_t a1)
{
  result = qword_2813CDB80;
  if (!qword_2813CDB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ECD6D8(uint64_t a1)
{
  result = sub_227F2B334();
  if (v2 <= 0x3F)
  {
    result = sub_227F2B114();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_227ECD7FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227ECD80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ECD87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_227ECD8EC()
{
  result = qword_27D80E4C0;
  if (!qword_27D80E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E4C0);
  }

  return result;
}

uint64_t sub_227ECD940(uint64_t a1)
{
  v2 = type metadata accessor for DownloadResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ECDA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_227ECDAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DownloadOutcome.statusCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v7, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v7, v4);
      v9 = *&v4[*(v2 + 28)];
      sub_227ECE8D8(v4, type metadata accessor for FileInfo);
    }

    else
    {
      return 304;
    }
  }

  else
  {
    v9 = *(v7 + 1);
  }

  return v9;
}

uint64_t type metadata accessor for DownloadOutcome(uint64_t a1)
{
  result = qword_27D80E590;
  if (!qword_27D80E590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ECDCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ECDD3C()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v7, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v7, v4);
      v9 = *&v4[*(v2 + 28)];
      sub_227ECE8D8(v4, type metadata accessor for FileInfo);
    }

    else
    {
      v9 = 304;
    }
  }

  else
  {
    v9 = *(v7 + 1);
    v10 = v7[16];

    if (v10)
    {
      return 0x676E697373694DLL;
    }
  }

  v12[1] = v9;
  return sub_227F2BC24();
}

unint64_t DownloadOutcome.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227F2B114();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227ECE39C(v1, v14, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v14, v11);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_227F2B9A4();
      MEMORY[0x22AAAC3E0](0x656C69662077654ELL, 0xEE00206874697720);
      v16 = &v11[*(v9 + 24)];
      if (*(v16 + 1))
      {
        v17 = *v16;
        v29 = 1734440005;
        v30 = 0xE400000000000000;
        MEMORY[0x22AAAC3E0](v17);
        v18 = v29;
        v19 = v30;
      }

      else
      {
        v19 = 0xEC00000067617445;
        v18 = 0x20676E697373696DLL;
      }

      MEMORY[0x22AAAC3E0](v18, v19);

      MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F33DB0);
      sub_227ECE39C(&v11[*(v9 + 20)], v4, type metadata accessor for ContainerizableURL);
      (*(v6 + 32))(v8, v4, v5);
      sub_227ECE404();
      v24 = sub_227F2BC24();
      MEMORY[0x22AAAC3E0](v24);

      (*(v6 + 8))(v8, v5);
      MEMORY[0x22AAAC3E0](0x206D6F726620, 0xE600000000000000);
      v25 = sub_227F2BC24();
      MEMORY[0x22AAAC3E0](v25);

      MEMORY[0x22AAAC3E0](0x737574617473202CLL, 0xEF203A65646F6320);
      v26 = sub_227ECDD3C();
      MEMORY[0x22AAAC3E0](v26);

      v27 = v31;
      sub_227ECE8D8(v11, type metadata accessor for FileInfo);
      return v27;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v20 = *v14;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_227F2B9A4();
    MEMORY[0x22AAAC3E0](0x203A726F727245, 0xE700000000000000);
    swift_getErrorValue();
    sub_227F2BC54();
    MEMORY[0x22AAAC3E0](543584032, 0xE400000000000000);
    swift_getErrorValue();
    swift_getDynamicType();
    v21 = sub_227F2BE44();
    MEMORY[0x22AAAC3E0](v21);

    MEMORY[0x22AAAC3E0](0xD000000000000014, 0x8000000227F33DF0);
    v22 = sub_227ECDD3C();
    MEMORY[0x22AAAC3E0](v22);

    return v31;
  }
}

uint64_t sub_227ECE39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227ECE404()
{
  result = qword_27D80E008;
  if (!qword_27D80E008)
  {
    sub_227F2B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E008);
  }

  return result;
}

uint64_t _s21RapidResourceDelivery15DownloadOutcomeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DownloadOutcome(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E5A0, &qword_227F2DF28);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v31 - v15;
  v17 = v31 + *(v14 + 56) - v15;
  sub_227ECE39C(a1, v31 - v15, type metadata accessor for DownloadOutcome);
  sub_227ECE39C(a2, v17, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227ECE39C(v16, v12, type metadata accessor for DownloadOutcome);
    v20 = *v12;
    v21 = *(v12 + 4);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *(v12 + 3);
      v23 = v12[16];
      v24 = *(v12 + 1);
      v26 = *v17;
      v25 = *(v17 + 1);
      v27 = v17[16];
      v28 = *(v17 + 3);
      v29 = *(v17 + 4);
      v35[0] = v20;
      v35[1] = v24;
      v36 = v23;
      v37 = v22;
      v38 = v21;
      v31[0] = v26;
      v31[1] = v25;
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v19 = _s21RapidResourceDelivery17DownloadErrorInfoV2eeoiySbAC_ACtFZ_0(v35, v31);

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227ECE39C(v16, v10, type metadata accessor for DownloadOutcome);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_227ECDCD8(v17, v6);
      v19 = static FileInfo.== infix(_:_:)(v10, v6);
      sub_227ECE8D8(v6, type metadata accessor for FileInfo);
      sub_227ECE8D8(v10, type metadata accessor for FileInfo);
LABEL_12:
      sub_227ECE8D8(v16, type metadata accessor for DownloadOutcome);
      return v19 & 1;
    }

    sub_227ECE8D8(v10, type metadata accessor for FileInfo);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_227ECE870(v16);
    v19 = 0;
    return v19 & 1;
  }

  sub_227ECE8D8(v16, type metadata accessor for DownloadOutcome);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_227ECE804(uint64_t a1)
{
  result = type metadata accessor for FileInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227ECE870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E5A0, &qword_227F2DF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ECE8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DownloadResponse.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadResponse(0) + 20));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for DownloadResponse(uint64_t a1)
{
  result = qword_27D80E5A8;
  if (!qword_27D80E5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadResponse.allHeaderFields.getter()
{
  type metadata accessor for DownloadResponse(0);
}

id DownloadResponse.error.getter()
{
  v1 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227ECE39C(v0, v3, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v5 = EnumCaseMultiPayload;
    result = 0;
    if (v5 == 1)
    {
      sub_227ECEC84(v3, type metadata accessor for DownloadOutcome);
      return 0;
    }
  }

  else
  {
    v7 = *v3;
    v8 = *v3;

    return v7;
  }

  return result;
}

uint64_t DownloadResponse.statusCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v7, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v7, v4);
      v9 = *&v4[*(v2 + 28)];
      sub_227ECEC84(v4, type metadata accessor for FileInfo);
    }

    else
    {
      return 304;
    }
  }

  else
  {
    v9 = *(v7 + 1);
  }

  return v9;
}

uint64_t sub_227ECEC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DownloadResponse.downloadedFile.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v2, v12, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v12, v9);
      sub_227ECE39C(&v9[*(v7 + 20)], v6, type metadata accessor for ContainerizableURL);
      sub_227ECEC84(v9, type metadata accessor for FileInfo);
      v14 = sub_227F2B114();
      v15 = *(v14 - 8);
      (*(v15 + 32))(a1, v6, v14);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  else
  {
    sub_227ECEC84(v12, type metadata accessor for DownloadOutcome);
  }

  v17 = sub_227F2B114();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t DownloadResponse.description.getter()
{
  sub_227F2B9A4();

  strcpy(v10, "    Outcome: ");
  HIWORD(v10[1]) = -4864;
  v1 = DownloadOutcome.description.getter();
  MEMORY[0x22AAAC3E0](v1);

  MEMORY[0x22AAAC3E0](0x74654D202020200ALL, 0xEE00203A73636972);
  v2 = type metadata accessor for DownloadResponse(0);
  v3 = *(v0 + *(v2 + 20));
  if (v3)
  {
    v4 = 0x657463656C6C6F43;
  }

  else
  {
    v4 = 0x6C6C6F4320746F4ELL;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v4, v5);

  MEMORY[0x22AAAC3E0](0x616548202020200ALL, 0xEE00203A73726564);
  v6 = *(v0 + *(v2 + 24));
  if (v6)
  {
    v7 = 0x657463656C6C6F43;
  }

  else
  {
    v7 = 0x6C6C6F4320746F4ELL;
  }

  if (v6)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v7, v8);

  return v10[0];
}

uint64_t sub_227ECF0E4(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_227ECA808(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_227F2BC64();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
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
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21RapidResourceDelivery16DownloadResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DownloadOutcome.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DownloadResponse(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_227ECF484();
    v8 = v7;
    v9 = v6;
    v10 = sub_227F2B914();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {

      v14 = sub_227ECF0E4(v12, v13);

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

void sub_227ECF390(uint64_t a1)
{
  type metadata accessor for DownloadOutcome(319);
  if (v1 <= 0x3F)
  {
    sub_227ECF42C(319);
    if (v2 <= 0x3F)
    {
      sub_227ECF4D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_227ECF42C(uint64_t a1)
{
  if (!qword_27D80E5B8)
  {
    sub_227ECF484();
    v1 = sub_227F2B924();
    if (!v2)
    {
      atomic_store(v1, &qword_27D80E5B8);
    }
  }
}

unint64_t sub_227ECF484()
{
  result = qword_27D80E5C0;
  if (!qword_27D80E5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E5C0);
  }

  return result;
}

void sub_227ECF4D0(uint64_t a1)
{
  if (!qword_27D80E5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E5D0, &qword_227F2DFB8);
    v1 = sub_227F2B924();
    if (!v2)
    {
      atomic_store(v1, &qword_27D80E5C8);
    }
  }
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

uint64_t DownloadTask.taskIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DownloadTask.taskState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t DownloadTask.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void DownloadTask.manager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DownloadTask.manager.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_227ECF7E8;
}

void sub_227ECF7E8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_227ECF864(uint64_t a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a1, v8);
  sub_227ECDA1C(a2, v3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if ((*(v11 + 24))(v10, v11) == 1)
  {
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    (*(v13 + 128))(v12, v13);

    (*(v9 + 8))(a1, v8);
  }

  else
  {
    (*(v9 + 8))(a1, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t DownloadTask.progress.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t DownloadTask.earliestBeginDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t DownloadTask.countOfBytesClientExpectsToReceive.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t DownloadTask.wait()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DownloadResponse(0);
  v2[8] = swift_task_alloc();
  v3 = sub_227F2B274();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227ECFC1C, 0, 0);
}

uint64_t sub_227ECFC1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
    return sub_227F2BA74();
  }

  v2 = Strong;
  v3 = v0[11];
  v4 = v0[6];
  sub_227F2B264();
  v5 = swift_task_alloc();
  v0[13] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[14] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_227ECFDD0;
  v9 = v0[7];
  v8 = v0[8];

  return MEMORY[0x282200830](v8, &unk_227F2DFD0, v5, sub_227ED08B4, v6, 0, 0, v9);
}

uint64_t sub_227ECFDD0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_227ECFFA8;
  }

  else
  {

    v2 = sub_227ECFEF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227ECFEF4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  sub_227ED08C0(v4, v5);
  (*(v3 + 8))(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227ECFFA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_227ED0060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_227ED0084, 0, 0);
}

uint64_t sub_227ED0084()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for DownloadResponse(0);
  *v3 = v0;
  v3[1] = sub_227ED0178;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x292874696177, 0xE600000000000000, sub_227ED0B70, v2, v4);
}

uint64_t sub_227ED0178()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227ED02B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227ED02B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227ED0318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227ED03CC;

  return sub_227ED0060(a1, v4, v5, v6);
}

uint64_t sub_227ED03CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_227ED04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227F2B274();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v12 = *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v13 = *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v12);
  v14 = (*(v13 + 8))(v12, v13);
  v37 = a2;
  sub_227EC712C(a1, v14, a4);
  v15 = v11[3];
  v16 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v15);
  if (((*(v16 + 24))(v15, v16) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (qword_2813CD568 != -1)
    {
      swift_once();
    }

    v17 = sub_227F2B334();
    __swift_project_value_buffer(v17, qword_2813CE040);
    v18 = v36;
    v19 = *(v36 + 16);
    v35 = a4;
    v19(v10, a4, v8);

    v20 = sub_227F2B304();
    v21 = sub_227F2B8D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v22 = 134218242;
      HIDWORD(v33) = v21;
      v24 = v11[3];
      v23 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v24);
      *(v22 + 4) = (*(v23 + 8))(v24, v23);

      *(v22 + 12) = 2080;
      sub_227ED0B7C();
      v25 = sub_227F2BC24();
      v27 = v26;
      (*(v18 + 8))(v10, v8);
      v28 = sub_227ECAC40(v25, v27, &v38);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_227EB2000, v20, BYTE4(v33), "cancelingContinuation early: %ld ticket: %s", v22, 0x16u);
      v29 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAAD240](v29, -1, -1);
      MEMORY[0x22AAAD240](v22, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v10, v8);
    }

    v30 = v11[3];
    v31 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v30);
    v32 = (*(v31 + 8))(v30, v31);
    sub_227EC724C(v32, v35);
  }
}

void sub_227ED083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v5 = *(a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v4);
  v6 = (*(v5 + 8))(v4, v5);
  sub_227EC724C(v6, a3);
}

uint64_t sub_227ED08C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DownloadTask.deinit()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v2 = sub_227F2B114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask));
  MEMORY[0x22AAAD310](v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager);
  return v0;
}

uint64_t DownloadTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v2 = sub_227F2B114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask));
  MEMORY[0x22AAAD310](v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DownloadTask(uint64_t a1)
{
  result = qword_27D80E5D8;
  if (!qword_27D80E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ED0AB4(uint64_t a1)
{
  result = sub_227F2B114();
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

unint64_t sub_227ED0B7C()
{
  result = qword_27D80E5E8;
  if (!qword_27D80E5E8)
  {
    sub_227F2B274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E5E8);
  }

  return result;
}

uint64_t sub_227ED0BD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_227EB8430(a1, &qword_27D80E620, &unk_227F2E0B0);
    sub_227ED2360(a2, v7);
    v12 = sub_227F2B274();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_227EB8430(v7, &qword_27D80E620, &unk_227F2E0B0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_227ECBE60(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_227F2B274();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_227ED0E08(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_227F2B274();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DownloadResponse(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v34 - v17;
  v19 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v2 + v19, v18);
  v20 = type metadata accessor for DownloadOutcome(0);
  v21 = (*(*(v20 - 8) + 48))(v18, 1, v20);
  sub_227EB8430(v18, &unk_27D80E4A8, &qword_227F2DE48);
  if (v21 != 1)
  {
    sub_227ED19C4(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    sub_227F2B7E4();
    return v21 == 1;
  }

  swift_beginAccess();
  v22 = *(v2 + 16);
  if (*(v22 + 16) && (v23 = sub_227ECA880(v37), (v24 & 1) != 0))
  {
    v25 = v23;
    v26 = *(v22 + 56);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v28 = *(v27 - 8);
    (*(v28 + 16))(v7, v26 + *(v28 + 72) * v25, v27);
    (*(v28 + 56))(v7, 0, 1, v27);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  swift_endAccess();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v7, 1, v30);
  result = sub_227EB8430(v7, &qword_27D80E620, &unk_227F2E0B0);
  if (v32 == 1)
  {
    (*(v35 + 16))(v12, v37, v36);
    (*(v31 + 16))(v9, a1, v30);
    (*(v31 + 56))(v9, 0, 1, v30);
    swift_beginAccess();
    sub_227ED0BD4(v9, v12);
    swift_endAccess();
    return v21 == 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227ED131C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  swift_beginAccess();
  sub_227ED2360(a1, v4);
  swift_endAccess();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_227EB8430(v4, &qword_27D80E620, &unk_227F2E0B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_227F2B7F4();
  sub_227ED29D8(&qword_27D80E628, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  v10 = swift_allocError();
  sub_227F2B5B4();
  v11[1] = v10;
  sub_227F2B7D4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_227ED153C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v38 - v2;
  v3 = type metadata accessor for DownloadOutcome(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for DownloadResponse(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E638, &unk_227F2E0C0);
  MEMORY[0x28223BE20](v42);
  v48 = &v38 - v7;
  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  v39 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields;
  v40 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics;
  v47 = v8;
  swift_bridgeObjectRetain_n();
  v49 = v0;
  v41 = v13;
  result = swift_beginAccess();
  v15 = 0;
  v16 = (v10 + 63) >> 6;
  v38 = (v4 + 48);
  v46 = v3;
  while (v12)
  {
LABEL_11:
    v26 = __clz(__rbit64(v12)) | (v15 << 6);
    v27 = v47;
    v28 = *(v47 + 48);
    v29 = sub_227F2B274();
    v30 = v48;
    (*(*(v29 - 8) + 16))(v48, v28 + *(*(v29 - 8) + 72) * v26, v29);
    v31 = *(v27 + 56);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    (*(*(v32 - 8) + 16))(&v30[*(v42 + 48)], v31 + *(*(v32 - 8) + 72) * v26, v32);
    v33 = v50;
    sub_227ED2268(v49 + v41, v50);
    v34 = *v38;
    v35 = v33;
    v36 = v46;
    if ((*v38)(v35, 1, v46) == 1)
    {
      sub_227ED2A20();
      v37 = swift_allocError();
      v17 = v45;
      *v45 = v37;
      v17[1] = 0;
      *(v17 + 16) = 1;
      v17[3] = 0;
      v17[4] = 0;
      swift_storeEnumTagMultiPayload();
      if (v34(v50, 1, v36) != 1)
      {
        sub_227EB8430(v50, &unk_27D80E4A8, &qword_227F2DE48);
      }
    }

    else
    {
      v17 = v45;
      sub_227ED2A74(v50, v45);
    }

    v12 &= v12 - 1;
    v18 = *(v49 + v40);
    v19 = *(v49 + v39);
    v20 = v17;
    v21 = v43;
    sub_227ED2A74(v20, v43);
    v22 = v44;
    *(v21 + *(v44 + 20)) = v18;
    *(v21 + *(v22 + 24)) = v19;

    v23 = v18;
    v24 = v48;
    sub_227F2B7E4();
    result = sub_227EB8430(v24, &qword_27D80E638, &unk_227F2E0C0);
  }

  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v16)
    {
    }

    v12 = *(v9 + 8 * v25);
    ++v15;
    if (v12)
    {
      v15 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_227ED19C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DownloadOutcome(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v1 + v10, v5);
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    sub_227ED2A20();
    *v9 = swift_allocError();
    *(v9 + 1) = 0;
    v9[16] = 1;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    if (v11(v5, 1, v6) != 1)
    {
      sub_227EB8430(v5, &unk_27D80E4A8, &qword_227F2DE48);
    }
  }

  else
  {
    sub_227ED2A74(v5, v9);
  }

  v16 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
  v12 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
  sub_227ED2A74(v9, a1);
  v13 = type metadata accessor for DownloadResponse(0);
  *(a1 + *(v13 + 20)) = v16;
  *(a1 + *(v13 + 24)) = v12;

  v14 = v16;

  return v14;
}

uint64_t sub_227ED1BF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_227F2B9A4();
  v26 = v24;
  v27 = v25;
  MEMORY[0x22AAAC3E0](0xD000000000000014, 0x8000000227F33F40);
  v8 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v0 + v8, v7);
  v9 = type metadata accessor for DownloadOutcome(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_227EB8430(v7, &unk_27D80E4A8, &qword_227F2DE48);
  if (v10 == 1)
  {
    v11 = 20302;
  }

  else
  {
    v11 = 5457241;
  }

  if (v10 == 1)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x22AAAC3E0](v11, v12);

  MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F33F60);
  sub_227F2B114();
  sub_227ED29D8(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v13 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v13);

  MEMORY[0x22AAAC3E0](0x74754F202020200ALL, 0xEE00203A656D6F63);
  sub_227ED2268(v1 + v8, v5);
  v14 = sub_227F2B6C4();
  MEMORY[0x22AAAC3E0](v14);

  MEMORY[0x22AAAC3E0](0x74654D202020200ALL, 0xEE00203A73636972);
  v15 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
  if (v15)
  {
    v16 = 0x657463656C6C6F43;
  }

  else
  {
    v16 = 0x6C6C6F4320746F4ELL;
  }

  if (v15)
  {
    v17 = 0xE900000000000064;
  }

  else
  {
    v17 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v16, v17);

  MEMORY[0x22AAAC3E0](0x616548202020200ALL, 0xEE00203A73726564);
  v18 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
  if (v18)
  {
    v19 = 0x657463656C6C6F43;
  }

  else
  {
    v19 = 0x6C6C6F4320746F4ELL;
  }

  if (v18)
  {
    v20 = 0xE900000000000064;
  }

  else
  {
    v20 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v19, v20);

  MEMORY[0x22AAAC3E0](0xD000000000000017, 0x8000000227F33F80);
  swift_beginAccess();
  v23[1] = *(*(v1 + 16) + 16);
  v21 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v21);

  MEMORY[0x22AAAC3E0](0x73656D695420, 0xE600000000000000);
  return v26;
}

uint64_t sub_227ED1FCC()
{

  v1 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v2 = sub_227F2B114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome, &unk_27D80E4A8, &qword_227F2DE48);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DownloadTaskState(uint64_t a1)
{
  result = qword_27D80E608;
  if (!qword_27D80E608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227ED2104(uint64_t a1)
{
  sub_227F2B114();
  if (v1 <= 0x3F)
  {
    sub_227ED21EC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_227ED21EC(uint64_t a1)
{
  if (!qword_27D80E618)
  {
    type metadata accessor for DownloadOutcome(255);
    v1 = sub_227F2B924();
    if (!v2)
    {
      atomic_store(v1, &qword_27D80E618);
    }
  }
}

uint64_t sub_227ED2268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED22D8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_227ECA918(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_227ECC2E8();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_227ED2518(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_227ED2360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_227ECA880(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_227ECC444();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_227F2B274();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_227ED2688(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_227ED2518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_227F2B974() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_227F2BD04();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_227ED2688(int64_t a1, uint64_t a2)
{
  v4 = sub_227F2B274();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_227F2B974();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_227ED29D8(&qword_27D80E488, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_227F2B5F4();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227ED29D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227ED2A20()
{
  result = qword_27D80E630;
  if (!qword_27D80E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E630);
  }

  return result;
}

uint64_t sub_227ED2A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadOutcome(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_227ED2AEC()
{
  result = qword_27D80E640;
  if (!qword_27D80E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTTPError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for Configuration(uint64_t a1)
{
  result = qword_2813CDCF0;
  if (!qword_2813CDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ED2C2C(uint64_t a1)
{
  result = sub_227F2B114();
  if (v2 <= 0x3F)
  {
    result = sub_227F2B574();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227ED2CB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B5F63696C627570;
  }

  else
  {
    v3 = 0x74736566696E616DLL;
  }

  if (v2)
  {
    v4 = 0xEC0000006C72755FLL;
  }

  else
  {
    v4 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v5 = 0x6B5F63696C627570;
  }

  else
  {
    v5 = 0x74736566696E616DLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007965;
  }

  else
  {
    v6 = 0xEC0000006C72755FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227F2BC64();
  }

  return v8 & 1;
}

uint64_t sub_227ED2D64()
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED2DF4(uint64_t a1)
{
  sub_227F2B704();
}

uint64_t sub_227ED2E70(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED2EFC@<X0>(char *a2@<X8>)
{
  v3 = sub_227F2BAD4();

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

  *a2 = v5;
  return result;
}

void sub_227ED2F5C(uint64_t *a1@<X8>)
{
  v2 = 0x74736566696E616DLL;
  if (*v1)
  {
    v2 = 0x6B5F63696C627570;
  }

  v3 = 0xEC0000006C72755FLL;
  if (*v1)
  {
    v3 = 0xEA00000000007965;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227ED2FA8()
{
  if (*v0)
  {
    return 0x6B5F63696C627570;
  }

  else
  {
    return 0x74736566696E616DLL;
  }
}

uint64_t sub_227ED2FF0@<X0>(char *a3@<X8>)
{
  v4 = sub_227F2BAD4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_227ED3054(uint64_t a1)
{
  v2 = sub_227ED3D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED3090(uint64_t a1)
{
  v2 = sub_227ED3D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED30CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_227F2BC64();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_227F2BC64();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

uint64_t sub_227ED314C()
{
  sub_227F2B9A4();

  strcpy(v8, "(manifestURL: ");
  v0 = sub_227F2B004();
  MEMORY[0x22AAAC3E0](v0);

  MEMORY[0x22AAAC3E0](0x63696C627570202CLL, 0xED0000203A79654BLL);
  type metadata accessor for Configuration(0);
  v1 = sub_227F2B554();
  v3 = v2;
  v4 = sub_227F2B154();
  v6 = v5;
  sub_227EC15A8(v1, v3);
  MEMORY[0x22AAAC3E0](v4, v6);

  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_227ED326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227F2B0C4();
  if (v7)
  {
    if (v6 == 0x7370747468 && v7 == 0xE500000000000000)
    {

LABEL_6:
      v9 = sub_227F2B114();
      (*(*(v9 - 8) + 32))(a3, a1, v9);
      v10 = *(type metadata accessor for Configuration(0) + 20);
      v11 = sub_227F2B574();
      return (*(*(v11 - 8) + 32))(a3 + v10, a2, v11);
    }

    v8 = sub_227F2BC64();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_227F2B0C4();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x3E7974706D653CLL;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  sub_227ED3E20();
  swift_allocError();
  *v17 = v15;
  *(v17 + 8) = v16;
  *(v17 + 16) = 1;
  swift_willThrow();
  v18 = sub_227F2B574();
  (*(*(v18 - 8) + 8))(a2, v18);
  v19 = sub_227F2B114();
  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t sub_227ED3454(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E660, &qword_227F2E2D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED3D64();
  sub_227F2BD94();
  sub_227F2B004();
  v11[15] = 0;
  sub_227F2BBD4();
  if (!v1)
  {

    type metadata accessor for Configuration(0);
    v7 = sub_227F2B554();
    v9 = v8;
    sub_227F2B154();
    sub_227EC15A8(v7, v9);
    v11[14] = 1;
    sub_227F2BBD4();
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_227ED364C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_227F2B574();
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_227F2B114();
  v50 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E648, &qword_227F2E2D0);
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_227ED3D64();
  v20 = v52;
  sub_227F2BD74();
  if (!v20)
  {
    v46 = v13;
    v52 = v15;
    v21 = v50;
    LOBYTE(v53) = 0;
    v22 = sub_227F2BB44();
    v24 = v23;
    v45 = v18;
    v25 = v9;
    sub_227F2B0D4();
    v26 = v21;
    if ((*(v21 + 48))(v25, 1, v10) == 1)
    {
      sub_227ED3DB8(v25);
      sub_227ED3E20();
      swift_allocError();
      *v27 = v22;
      *(v27 + 8) = v24;
      *(v27 + 16) = 0;
      swift_willThrow();
LABEL_17:
      (*(v51 + 8))(v45, v16);
      return __swift_destroy_boxed_opaque_existential_0(v55);
    }

    v28 = v52;
    (*(v21 + 32))(v52, v25, v10);
    v29 = sub_227F2B0C4();
    v31 = v49;
    if (v30)
    {
      if (v29 == 0x7370747468 && v30 == 0xE500000000000000)
      {

        goto LABEL_9;
      }

      v32 = sub_227F2BC64();

      if (v32)
      {
LABEL_9:
        LOBYTE(v53) = 1;
        sub_227F2BB44();
        v39 = sub_227F2B134();
        v41 = v40;

        if (v41 >> 60 != 15)
        {
          (*(v26 + 16))(v46, v28, v10);
          v53 = v39;
          v54 = v41;
          sub_227ED3E74(v39, v41);
          v43 = v48;
          sub_227F2B564();
          v44 = v51;
          sub_227ED326C(v46, v43, v47);
          sub_227EC1650(v39, v41);
          (*(v26 + 8))(v52, v10);
          (*(v44 + 8))(v45, v16);
          sub_227ED3EC8(v47, v31);
          return __swift_destroy_boxed_opaque_existential_0(v55);
        }

        sub_227ED3E20();
        swift_allocError();
        *v42 = 0;
        *(v42 + 8) = 0;
        *(v42 + 16) = 2;
        swift_willThrow();
        (*(v26 + 8))(v28, v10);
        goto LABEL_17;
      }
    }

    v33 = sub_227F2B0C4();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0x3E7974706D653CLL;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE700000000000000;
    }

    sub_227ED3E20();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 1;
    swift_willThrow();
    (*(v21 + 8))(v28, v10);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

BOOL sub_227ED3CC0()
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = MEMORY[0x22AAAC210]();
  v2 = v1;
  v3 = MEMORY[0x22AAAC210]();
  v5 = v4;
  v6 = sub_227ED43A4(v0, v2, v3, v4);
  sub_227EC15A8(v3, v5);
  sub_227EC15A8(v0, v2);
  return v6;
}

unint64_t sub_227ED3D64()
{
  result = qword_27D80E650;
  if (!qword_27D80E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E650);
  }

  return result;
}

uint64_t sub_227ED3DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227ED3E20()
{
  result = qword_27D80E658;
  if (!qword_27D80E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E658);
  }

  return result;
}

uint64_t sub_227ED3E74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_227ED3EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED3F2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_227F2AEF4();
    if (v10)
    {
      v11 = sub_227F2AF14();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_227F2AF04();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_227F2AEF4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_227F2AF14();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_227F2AF04();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_227ED415C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_227ED42EC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_227EC15A8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_227ED3F2C(v13, a3, a4, &v12);
  v10 = v4;
  sub_227EC15A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_227ED42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_227F2AEF4();
  v11 = result;
  if (result)
  {
    result = sub_227F2AF14();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_227F2AF04();
  sub_227ED3F2C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_227ED43A4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_227ED3E74(a3, a4);
          return sub_227ED415C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery13ConfigurationV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227ED468C()
{
  result = qword_27D80E668;
  if (!qword_27D80E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E668);
  }

  return result;
}

unint64_t sub_227ED46E4()
{
  result = qword_27D80E670;
  if (!qword_27D80E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E670);
  }

  return result;
}

unint64_t sub_227ED473C()
{
  result = qword_27D80E678;
  if (!qword_27D80E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E678);
  }

  return result;
}

uint64_t type metadata accessor for Manifest(uint64_t a1)
{
  result = qword_2813CD740;
  if (!qword_2813CD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227ED4804(uint64_t a1)
{
  sub_227EC24C4(319, &qword_2813CD550, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_227F2B114();
    if (v2 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_227ED48E0(uint64_t a1, unsigned __int8 a2)
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED4A28(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v54 = a3;
  v50 = a4;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6E8, &qword_227F2E868);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6F0, &qword_227F2E870);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6F8, &qword_227F2E878);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E700, &qword_227F2E880);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E708, &qword_227F2E888);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E710, &qword_227F2E890);
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E718, &qword_227F2E898);
  v46 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E720, &qword_227F2E8A0);
  v52 = *(v22 - 8);
  v53 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6EB4();
  sub_227F2BD94();
  if (v50 > 1u)
  {
    if (v50 == 2)
    {
      v57 = 2;
      sub_227ED7058();
      v27 = v53;
      sub_227F2BB84();
      v28 = v49;
      sub_227F2BBD4();
      (*(v48 + 8))(v15, v28);
      return (*(v52 + 8))(v24, v27);
    }

    else
    {
      if (v51 > 1)
      {
        if (v51 ^ 2 | v54)
        {
          v61 = 6;
          sub_227ED6F08();
          v29 = v43;
          v30 = v53;
          sub_227F2BB84();
          v32 = v44;
          v31 = v45;
        }

        else
        {
          v60 = 5;
          sub_227ED6F5C();
          v29 = v40;
          v30 = v53;
          sub_227F2BB84();
          v32 = v41;
          v31 = v42;
        }
      }

      else if (v51 | v54)
      {
        v59 = 4;
        sub_227ED6FB0();
        v29 = v37;
        v30 = v53;
        sub_227F2BB84();
        v32 = v38;
        v31 = v39;
      }

      else
      {
        v58 = 3;
        sub_227ED7004();
        v29 = v34;
        v30 = v53;
        sub_227F2BB84();
        v32 = v35;
        v31 = v36;
      }

      (*(v32 + 8))(v29, v31);
      return (*(v52 + 8))(v24, v30);
    }
  }

  else
  {
    if (v50)
    {
      v56 = 1;
      sub_227ED70AC();
      v25 = v53;
      sub_227F2BB84();
      sub_227F2BBD4();
      (*(v47 + 8))(v18, v16);
    }

    else
    {
      v55 = 0;
      sub_227ED7100();
      v25 = v53;
      sub_227F2BB84();
      sub_227F2BBD4();
      (*(v46 + 8))(v21, v19);
    }

    return (*(v52 + 8))(v24, v25);
  }
}

uint64_t sub_227ED51BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E698, &qword_227F2E5B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6828();
  sub_227F2BD94();
  v8[15] = 0;
  sub_227F2BB94();
  if (!v1)
  {
    v8[14] = 1;
    sub_227F2BBE4();
    type metadata accessor for Manifest(0);
    v8[13] = 2;
    sub_227F2B114();
    sub_227ED6C84(&qword_27D80E6A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_227F2BC14();
    v8[12] = 3;
    sub_227F2BC04();
    v8[11] = 4;
    sub_227F2BBB4();
    v8[10] = 5;
    sub_227F2BBD4();
    v8[9] = 6;
    sub_227F2BB94();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_227ED547C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x5564696C61766E69;
    if (v1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_227ED556C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227ED7154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227ED5594(uint64_t a1)
{
  v2 = sub_227ED6EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED55D0(uint64_t a1)
{
  v2 = sub_227ED6EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED560C(uint64_t a1)
{
  v2 = sub_227ED6F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5648(uint64_t a1)
{
  v2 = sub_227ED6F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5684(uint64_t a1)
{
  v2 = sub_227ED6FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED56C0(uint64_t a1)
{
  v2 = sub_227ED6FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED56FC(uint64_t a1)
{
  v2 = sub_227ED70AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5738(uint64_t a1)
{
  v2 = sub_227ED70AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5774(uint64_t a1)
{
  v2 = sub_227ED7058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED57B0(uint64_t a1)
{
  v2 = sub_227ED7058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED57EC(uint64_t a1)
{
  v2 = sub_227ED7004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5828(uint64_t a1)
{
  v2 = sub_227ED7004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5864(uint64_t a1)
{
  v2 = sub_227ED7100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED58A0(uint64_t a1)
{
  v2 = sub_227ED7100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED58DC(uint64_t a1)
{
  v2 = sub_227ED6F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5918(uint64_t a1)
{
  v2 = sub_227ED6F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5970@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_227ED73AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_227ED59D8(uint64_t a1)
{
  sub_227F2B704();
}

unint64_t sub_227ED5B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227ED7F30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_227ED5B44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007461;
  v4 = 0x5F64657461647075;
  v5 = 0xE600000000000000;
  v6 = 0x747365676964;
  if (v2 != 5)
  {
    v6 = 0x727574616E676973;
    v5 = 0xE900000000000065;
  }

  v7 = 0x8000000227F33760;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x6574616D69747365;
    v7 = 0xEE00657A69735F64;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6574726F70707573;
  v10 = 0xE900000000000064;
  if (v2 != 1)
  {
    v9 = 0x5F73657461647075;
    v10 = 0xEB000000006C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_227ED5C48()
{
  v1 = *v0;
  v2 = 0x5F64657461647075;
  v3 = 0x747365676964;
  if (v1 != 5)
  {
    v3 = 0x727574616E676973;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6574616D69747365;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574726F70707573;
  if (v1 != 1)
  {
    v5 = 0x5F73657461647075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_227ED5D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227ED7F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227ED5D70(uint64_t a1)
{
  v2 = sub_227ED6828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5DAC(uint64_t a1)
{
  v2 = sub_227ED6828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5E00()
{
  v25 = sub_227F2AE64();
  v24[0] = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24[1] = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Manifest(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  v9 = *(v3 + 24);
  v10 = sub_227F2B114();
  (*(*(v10 - 8) + 16))(&v5[v9], v0 + v9, v10);
  v11 = v2[7];
  v12 = *(v0 + v11);
  v13 = (v0 + v2[8]);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  v15 = (v0 + v2[9]);
  v16 = *v15;
  v17 = v15[1];
  *v5 = v6;
  *(v5 + 1) = v7;
  v5[16] = v8;
  *&v5[v11] = v12;
  v18 = &v5[v2[8]];
  *v18 = v14;
  v18[8] = v13;
  v19 = &v5[v2[9]];
  *v19 = v16;
  *(v19 + 1) = v17;
  v20 = &v5[v2[10]];
  sub_227F2AEA4();
  *v20 = 0;
  *(v20 + 1) = 0;
  swift_allocObject();

  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_227F2E510;
  sub_227F2AE34();
  sub_227F2AE54();
  v26 = v21;
  sub_227ED6C84(&qword_27D80E6B0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  sub_227ED6C84(&qword_27D80E6C8, type metadata accessor for Manifest, &unk_227F2E530);
  v22 = sub_227F2AE84();
  sub_227ED6934(v5);

  return v22;
}

uint64_t sub_227ED613C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v60 - v4;
  v68 = sub_227F2B114();
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E680, &qword_227F2E5B0);
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for Manifest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6828();
  v13 = v71;
  sub_227F2BD74();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v71 = v6;
  v16 = v69;
  v15 = v70;
  v78 = 0;
  *v12 = sub_227F2BB04();
  *(v12 + 1) = v17;
  v64 = v17;
  v77 = 1;
  v18 = sub_227F2BB14();
  v12[16] = (v18 == 2) | v18 & 1;
  v76 = 4;
  v19 = sub_227F2BB24();
  v20 = &v12[v10[8]];
  *v20 = v19;
  v20[8] = v21 & 1;
  v75 = 2;
  v22 = sub_227F2BB44();
  v65 = 0;
  v24 = v23;
  v62 = v9;
  v63 = v7;
  v25 = v67;
  v61 = v22;
  sub_227F2B0D4();
  v26 = v68;
  if ((*(v15 + 48))(v25, 1, v68) == 1)
  {
    sub_227ED3DB8(v25);
    sub_227ED687C();
    v27 = swift_allocError();
    *v28 = v61;
    *(v28 + 8) = v24;
    *(v28 + 16) = 1;
    v65 = v27;
    swift_willThrow();
    (*(v16 + 8))(v62, v63);
    v29 = 0;
    v30 = v12;
    goto LABEL_4;
  }

  (*(v15 + 32))(v71, v25, v26);
  v31 = sub_227F2B0C4();
  v30 = v12;
  if (!v32)
  {
    goto LABEL_19;
  }

  if (v31 == 0x7370747468 && v32 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v33 = sub_227F2BC64();

  if ((v33 & 1) == 0)
  {
LABEL_19:
    v43 = v71;
    v44 = sub_227F2B0C4();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0x3E7974706D653CLL;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE700000000000000;
    }

    sub_227ED687C();
    v48 = swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v47;
    *(v49 + 16) = 2;
    v65 = v48;
    swift_willThrow();
    (*(v15 + 8))(v43, v68);
    (*(v16 + 8))(v62, v63);
    v29 = 0;
    goto LABEL_4;
  }

LABEL_14:
  v34 = v71;
  v35 = v68;
  (*(v15 + 16))(&v12[v10[6]], v71, v68);
  v74 = 3;
  v37 = v62;
  v36 = v63;
  v38 = v65;
  v39 = sub_227F2BB24();
  if (v38)
  {
    v65 = v38;
    (*(v15 + 8))(v34, v35);
    (*(v16 + 8))(v37, v36);
    v29 = 1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(a1);

    if (v29)
    {
      return (*(v15 + 8))(v30 + v10[6], v68);
    }

    return result;
  }

  v41 = 600;
  if ((v40 & 1) == 0)
  {
    v41 = v39;
  }

  *(v30 + v10[7]) = v41;
  v73 = 5;
  v42 = sub_227F2BB44();
  v50 = (v30 + v10[9]);
  *v50 = v42;
  v50[1] = v51;
  v72 = 6;
  v52 = sub_227F2BB04();
  v65 = 0;
  v53 = v34;
  v54 = v52;
  v55 = v53;
  v56 = v35;
  v58 = v57;
  (*(v15 + 8))(v55, v56);
  (*(v16 + 8))(v37, v36);
  v59 = (v30 + v10[10]);
  *v59 = v54;
  v59[1] = v58;
  sub_227ED68D0(v30, v66);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227ED6934(v30);
}

unint64_t sub_227ED6828()
{
  result = qword_27D80E688;
  if (!qword_27D80E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E688);
  }

  return result;
}

unint64_t sub_227ED687C()
{
  result = qword_27D80E690;
  if (!qword_27D80E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E690);
  }

  return result;
}

uint64_t sub_227ED68D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Manifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED6934(uint64_t a1)
{
  v2 = type metadata accessor for Manifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ED6990(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_227F2BC64();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 3 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_227F2BC64();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_227F2BC64();
  }

  return 0;
}

BOOL sub_227ED6AC8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_227F2BC64() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = type metadata accessor for Manifest(0);
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0 || *(a1 + v7[7]) != *(a2 + v7[7]))
  {
    return 0;
  }

  v8 = v7[8];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v7[9];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_227F2BC64() & 1) == 0)
  {
    return 0;
  }

  v18 = v7[10];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    return v22 && (*v19 == *v21 && v20 == v22 || (sub_227F2BC64() & 1) != 0);
  }

  return !v22;
}

unint64_t sub_227ED6C20()
{
  result = qword_27D80E6C0;
  if (!qword_27D80E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E6B8, &qword_227F2E5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6C0);
  }

  return result;
}

uint64_t sub_227ED6C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery8ManifestV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_227ED6CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227ED6D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_227ED6D84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_227ED6DB0()
{
  result = qword_27D80E6D0;
  if (!qword_27D80E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6D0);
  }

  return result;
}

unint64_t sub_227ED6E08()
{
  result = qword_27D80E6D8;
  if (!qword_27D80E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6D8);
  }

  return result;
}

unint64_t sub_227ED6E60()
{
  result = qword_27D80E6E0;
  if (!qword_27D80E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6E0);
  }

  return result;
}

unint64_t sub_227ED6EB4()
{
  result = qword_27D80E728;
  if (!qword_27D80E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E728);
  }

  return result;
}

unint64_t sub_227ED6F08()
{
  result = qword_27D80E730;
  if (!qword_27D80E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E730);
  }

  return result;
}

unint64_t sub_227ED6F5C()
{
  result = qword_27D80E738;
  if (!qword_27D80E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E738);
  }

  return result;
}

unint64_t sub_227ED6FB0()
{
  result = qword_27D80E740;
  if (!qword_27D80E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E740);
  }

  return result;
}

unint64_t sub_227ED7004()
{
  result = qword_27D80E748;
  if (!qword_27D80E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E748);
  }

  return result;
}

unint64_t sub_227ED7058()
{
  result = qword_27D80E750;
  if (!qword_27D80E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E750);
  }

  return result;
}

unint64_t sub_227ED70AC()
{
  result = qword_27D80E758;
  if (!qword_27D80E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E758);
  }

  return result;
}

unint64_t sub_227ED7100()
{
  result = qword_27D80E760;
  if (!qword_27D80E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E760);
  }

  return result;
}

uint64_t sub_227ED7154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000227F33FA0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000227F33FC0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000227F33FE0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000227F34000 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000227F34020 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34040 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_227F2BC64();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_227ED73AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E768, &qword_227F2E8A8);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v47 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E770, &qword_227F2E8B0);
  v58 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v65 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E778, &qword_227F2E8B8);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v47 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E780, &qword_227F2E8C0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v64 = &v47 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E788, &qword_227F2E8C8);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v63 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E790, &qword_227F2E8D0);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E798, &qword_227F2E8D8);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E7A0, &unk_227F2E8E0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_227ED6EB4();
  v20 = v67;
  sub_227F2BD74();
  if (v20)
  {
    goto LABEL_10;
  }

  v19 = v13;
  v47 = v11;
  v22 = v64;
  v21 = v65;
  v67 = v15;
  v23 = sub_227F2BB74();
  v24 = (2 * *(v23 + 16)) | 1;
  v68 = v23;
  v69 = v23 + 32;
  v70 = 0;
  v71 = v24;
  v25 = sub_227EBAD8C();
  if (v25 == 7 || v70 != v71 >> 1)
  {
    v29 = sub_227F2B9E4();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
    *v31 = &type metadata for Manifest.Error;
    sub_227F2BAF4();
    sub_227F2B9D4();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v67 + 8))(v17, v14);
    swift_unknownObjectRelease();
LABEL_10:
    v28 = v66;
    goto LABEL_11;
  }

  if (v25 > 2u)
  {
    if (v25 <= 4u)
    {
      v27 = v66;
      v26 = v67;
      if (v25 == 3)
      {
        v72 = 3;
        sub_227ED7004();
        sub_227F2BAE4();
        (*(v53 + 8))(v22, v55);
        (*(v26 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v19 = 0;
      }

      else
      {
        v72 = 4;
        sub_227ED6FB0();
        v42 = v61;
        sub_227F2BAE4();
        (*(v56 + 8))(v42, v57);
        (*(v26 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v19 = 1;
      }

      v28 = v27;
      goto LABEL_11;
    }

    v36 = v67;
    if (v25 == 5)
    {
      v72 = 5;
      sub_227ED6F5C();
      sub_227F2BAE4();
      (*(v58 + 8))(v21, v51);
      (*(v36 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v19 = 2;
    }

    else
    {
      v72 = 6;
      sub_227ED6F08();
      v43 = v62;
      sub_227F2BAE4();
      (*(v59 + 8))(v43, v60);
      (*(v36 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v19 = 3;
    }

LABEL_22:
    v28 = v66;
    goto LABEL_11;
  }

  if (!v25)
  {
    v72 = 0;
    sub_227ED7100();
    v37 = v19;
    sub_227F2BAE4();
    v38 = v47;
    v39 = sub_227F2BB44();
    v40 = v67;
    v19 = v39;
    (*(v48 + 8))(v37, v38);
    (*(v40 + 8))(v17, v14);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if (v25 == 1)
  {
    v72 = 1;
    sub_227ED70AC();
    v33 = v10;
    sub_227F2BAE4();
    v34 = v66;
    v35 = v50;
    v19 = sub_227F2BB44();
    (*(v49 + 8))(v33, v35);
    (*(v67 + 8))(v17, v14);
  }

  else
  {
    v72 = 2;
    sub_227ED7058();
    v41 = v63;
    sub_227F2BAE4();
    v34 = v66;
    v44 = v54;
    v45 = sub_227F2BB44();
    v46 = v67;
    v19 = v45;
    (*(v52 + 8))(v41, v44);
    (*(v46 + 8))(v17, v14);
  }

  swift_unknownObjectRelease();
  v28 = v34;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v19;
}

unint64_t sub_227ED7F30(uint64_t a1, uint64_t a2)
{
  v2 = sub_227F2BAD4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for ResourceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResourceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227ED8140()
{
  result = qword_27D80E7A8;
  if (!qword_27D80E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7A8);
  }

  return result;
}

unint64_t sub_227ED8198()
{
  result = qword_27D80E7B0;
  if (!qword_27D80E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7B0);
  }

  return result;
}

unint64_t sub_227ED81F0()
{
  result = qword_27D80E7B8;
  if (!qword_27D80E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7B8);
  }

  return result;
}

unint64_t sub_227ED8248()
{
  result = qword_27D80E7C0;
  if (!qword_27D80E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7C0);
  }

  return result;
}

unint64_t sub_227ED82A0()
{
  result = qword_27D80E7C8;
  if (!qword_27D80E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7C8);
  }

  return result;
}

unint64_t sub_227ED82F8()
{
  result = qword_27D80E7D0;
  if (!qword_27D80E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7D0);
  }

  return result;
}

unint64_t sub_227ED8350()
{
  result = qword_27D80E7D8;
  if (!qword_27D80E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7D8);
  }

  return result;
}

unint64_t sub_227ED83A8()
{
  result = qword_27D80E7E0;
  if (!qword_27D80E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7E0);
  }

  return result;
}

unint64_t sub_227ED8400()
{
  result = qword_27D80E7E8;
  if (!qword_27D80E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7E8);
  }

  return result;
}

unint64_t sub_227ED8458()
{
  result = qword_27D80E7F0;
  if (!qword_27D80E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7F0);
  }

  return result;
}

unint64_t sub_227ED84B0()
{
  result = qword_27D80E7F8;
  if (!qword_27D80E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7F8);
  }

  return result;
}

unint64_t sub_227ED8508()
{
  result = qword_27D80E800;
  if (!qword_27D80E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E800);
  }

  return result;
}

unint64_t sub_227ED8560()
{
  result = qword_27D80E808;
  if (!qword_27D80E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E808);
  }

  return result;
}

unint64_t sub_227ED85B8()
{
  result = qword_27D80E810;
  if (!qword_27D80E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E810);
  }

  return result;
}

unint64_t sub_227ED8610()
{
  result = qword_27D80E818;
  if (!qword_27D80E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E818);
  }

  return result;
}

unint64_t sub_227ED8668()
{
  result = qword_27D80E820;
  if (!qword_27D80E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E820);
  }

  return result;
}

unint64_t sub_227ED86C0()
{
  result = qword_27D80E828;
  if (!qword_27D80E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E828);
  }

  return result;
}

unint64_t sub_227ED8718()
{
  result = qword_27D80E830;
  if (!qword_27D80E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E830);
  }

  return result;
}

unint64_t sub_227ED8770()
{
  result = qword_27D80E838;
  if (!qword_27D80E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E838);
  }

  return result;
}

unint64_t sub_227ED87C8()
{
  result = qword_27D80E840;
  if (!qword_27D80E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E840);
  }

  return result;
}

uint64_t sub_227ED8830(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007461;
  v3 = 0x5F64657461647075;
  v4 = a1;
  v5 = 0x747365676964;
  if (a1 == 5)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x727574616E676973;
    v6 = 0xE900000000000065;
  }

  v7 = 0xD000000000000014;
  v8 = 0x8000000227F33760;
  if (a1 != 3)
  {
    v7 = 0x6574616D69747365;
    v8 = 0xEE00657A69735F64;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6574726F70707573;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 0x5F73657461647075;
    v10 = 0xEB000000006C7275;
  }

  if (!a1)
  {
    v9 = 0x5F64657461647075;
    v10 = 0xEA00000000007461;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6574726F70707573)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEB000000006C7275;
        if (v11 != 0x5F73657461647075)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x747365676964)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x727574616E676973)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000227F33760;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6574616D69747365;
    v2 = 0xEE00657A69735F64;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_227F2BC64();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_227ED8A84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726576656ELL;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE00736574756E69;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x4D6E656574666966;
    }

    else
    {
      v6 = 0x796C696164;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x737961776C61;
    }

    else
    {
      v6 = 0x726576656ELL;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE500000000000000;
  v9 = 0x4D6E656574666966;
  v10 = 0xEE00736574756E69;
  if (a2 != 2)
  {
    v9 = 0x796C696164;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x737961776C61;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_227F2BC64();
  }

  return v13 & 1;
}

RapidResourceDelivery::RefreshPolicy_optional __swiftcall RefreshPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227F2BAD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RefreshPolicy.rawValue.getter()
{
  v1 = 0x726576656ELL;
  v2 = 0x4D6E656574666966;
  if (*v0 != 2)
  {
    v2 = 0x796C696164;
  }

  if (*v0)
  {
    v1 = 0x737961776C61;
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

unint64_t sub_227ED8CB0()
{
  result = qword_27D80E848;
  if (!qword_27D80E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E848);
  }

  return result;
}

uint64_t sub_227ED8D04()
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED8DC8(uint64_t a1)
{
  sub_227F2B704();
}

uint64_t sub_227ED8E78(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

void sub_227ED8F44(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0xEE00736574756E69;
  v5 = 0x4D6E656574666966;
  if (*v1 != 2)
  {
    v5 = 0x796C696164;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for RefreshPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RefreshPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227ED91C4()
{
  result = qword_27D80E850;
  if (!qword_27D80E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E850);
  }

  return result;
}

uint64_t FileInfo.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileInfo(0);
  sub_227EDAD50(v1 + *(v6 + 20), v5, type metadata accessor for ContainerizableURL);
  v7 = sub_227F2B114();
  return (*(*(v7 - 8) + 32))(a1, v5, v7);
}

uint64_t sub_227ED9330(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileInfo.init(remoteURL:fileURL:etag:statusCode:digest:lastSuccess:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = sub_227F2B114();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v18 = type metadata accessor for FileInfo(0);
  v17(a9 + v18[5], a2, v16);
  v19 = (a9 + v18[6]);
  *v19 = a3;
  v19[1] = a4;
  *(a9 + v18[7]) = a5;
  v20 = (a9 + v18[8]);
  *v20 = a6;
  v20[1] = a7;
  v21 = a9 + v18[9];

  return sub_227ECD80C(a8, v21);
}

uint64_t sub_227ED9470()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  __swift_allocate_value_buffer(v0, qword_27D81B190);
  v1 = __swift_project_value_buffer(v0, qword_27D81B190);
  return sub_227ED94C8(v1);
}

uint64_t sub_227ED94C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_227F2B644();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_227F2B084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227F2B114();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t ContainerizableURL.encode(to:)(uint64_t a1)
{
  sub_227F2B0A4();
  sub_227F2B724();
}

uint64_t ContainerizableURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_227F2AFF4();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_227F2B114();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECDA1C(a1, v40);
  v16 = v41;
  v17 = sub_227F2B6F4();
  v41 = v16;
  if (v16)
  {
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v31 = v15;
  v32 = v13;
  v36 = v17;
  v37 = v18;
  v33 = v9;
  v34 = v5;
  v35 = a1;
  if (qword_27D80DEF8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v6, qword_27D81B190);
  sub_227EC2180(v20, v11, &qword_27D80E310, &unk_227F2D990);
  v21 = v32;
  v22 = v12;
  v23 = (*(v32 + 48))(v11, 1, v12);
  v24 = v38;
  if (v23 == 1)
  {
    sub_227EB8430(v11, &qword_27D80E310, &unk_227F2D990);
    v26 = v34;
    v25 = v35;
    v27 = v33;
LABEL_9:
    (*(v21 + 56))(v27, 1, 1, v22);
    (*(v24 + 104))(v26, *MEMORY[0x277CC91D8], v3);
    sub_227F2B0E4();
    v19 = v25;
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v28 = v31;
  (*(v21 + 32))(v31, v11, v22);
  v29 = sub_227ED9A48(47, 0xE100000000000000, v36, v37);
  v27 = v33;
  if (v29)
  {
    (*(v21 + 8))(v28, v22);
    v26 = v34;
    v25 = v35;
    goto LABEL_9;
  }

  (*(v21 + 16))(v33, v28, v22);
  (*(v21 + 56))(v27, 0, 1, v22);
  (*(v24 + 104))(v34, *MEMORY[0x277CC91D8], v3);
  sub_227F2B0E4();
  __swift_destroy_boxed_opaque_existential_0(v35);
  return (*(v21 + 8))(v28, v22);
}

uint64_t sub_227ED9A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_227F2B734();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_227F2B734();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_227F2BC64();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_227F2B734();
      v7 = v9;
    }

    while (v9);
  }

  sub_227F2B734();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_227ED9BBC(uint64_t a1)
{
  sub_227F2B0A4();
  sub_227F2B724();
}

uint64_t FileInfo.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227F2B114();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileInfo.etag.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileInfo(0) + 24));

  return v1;
}

uint64_t FileInfo.digest.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileInfo(0) + 32));

  return v1;
}

uint64_t sub_227ED9D74()
{
  v1 = *v0;
  v2 = 0x525565746F6D6572;
  v3 = 0x6F43737574617473;
  v4 = 0x747365676964;
  if (v1 != 4)
  {
    v4 = 0x636375537473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4C52556C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 1734440037;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227ED9E34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EDB240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227ED9E68(uint64_t a1)
{
  v2 = sub_227EDAC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED9EA4(uint64_t a1)
{
  v2 = sub_227EDAC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E858, &qword_227F2F1C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EDAC50();
  sub_227F2BD94();
  v8[15] = 0;
  sub_227F2B114();
  sub_227EDACA4(&qword_27D80E6A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_227F2BC14();
  if (!v1)
  {
    type metadata accessor for FileInfo(0);
    v8[14] = 1;
    type metadata accessor for ContainerizableURL(0);
    sub_227EDACA4(&qword_27D80E868, type metadata accessor for ContainerizableURL, &protocol conformance descriptor for ContainerizableURL);
    sub_227F2BC14();
    v8[13] = 2;
    sub_227F2BB94();
    v8[12] = 3;
    sub_227F2BC04();
    v8[11] = 4;
    sub_227F2BB94();
    v8[10] = 5;
    sub_227F2B234();
    sub_227EDACA4(&qword_27D80E870, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_227F2BBC4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FileInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v29 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B114();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E878, &qword_227F2F1C8);
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EDAC50();
  v33 = v10;
  v14 = v35;
  sub_227F2BD74();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v30;
  v41 = 0;
  sub_227EDACA4(&qword_27D80E880, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_227F2BB64();
  (*(v15 + 32))(v13, v32, v7);
  v40 = 1;
  sub_227EDACA4(&qword_27D80E888, type metadata accessor for ContainerizableURL, &protocol conformance descriptor for ContainerizableURL);
  sub_227F2BB64();
  sub_227EDACEC(v6, &v13[v11[5]]);
  v39 = 2;
  v32 = 0;
  v16 = sub_227F2BB04();
  v35 = a1;
  v17 = &v13[v11[6]];
  *v17 = v16;
  v17[1] = v18;
  v38 = 3;
  v19 = v11;
  *&v13[v11[7]] = sub_227F2BB54();
  v37 = 4;
  v20 = sub_227F2BB04();
  v21 = v31;
  v22 = &v13[v19[8]];
  *v22 = v20;
  v22[1] = v23;
  sub_227F2B234();
  v36 = 5;
  sub_227EDACA4(&qword_27D80E890, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v24 = v28;
  sub_227F2BB34();
  (*(v21 + 8))(v33, v34);
  sub_227ECD80C(v24, &v13[v19[9]]);
  sub_227EDAD50(v13, v27, type metadata accessor for FileInfo);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return sub_227EDADB8(v13, type metadata accessor for FileInfo);
}

uint64_t _s21RapidResourceDelivery8FileInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8B0, &unk_227F2F420);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for FileInfo(0);
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19 || (*v16 != *v18 || v17 != v19) && (sub_227F2BC64() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (*(a1 + v14[7]) == *(a2 + v14[7]))
  {
    v20 = v14[8];
    v21 = (a1 + v20);
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    v24 = v23[1];
    if (v22)
    {
      if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_227F2BC64() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v25 = v14[9];
    v26 = *(v11 + 48);
    sub_227EC2180(a1 + v25, v13, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC2180(a2 + v25, &v13[v26], &unk_27D80E3B0, &unk_227F2DB00);
    v27 = *(v5 + 48);
    if (v27(v13, 1, v4) == 1)
    {
      if (v27(&v13[v26], 1, v4) == 1)
      {
        sub_227EB8430(v13, &unk_27D80E3B0, &unk_227F2DB00);
        return 1;
      }

      goto LABEL_23;
    }

    sub_227EC2180(v13, v10, &unk_27D80E3B0, &unk_227F2DB00);
    if (v27(&v13[v26], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_23:
      sub_227EB8430(v13, &qword_27D80E8B0, &unk_227F2F420);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v26], v4);
    sub_227EDACA4(&qword_27D80E8B8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v29 = sub_227F2B634();
    v30 = *(v5 + 8);
    v30(v7, v4);
    v30(v10, v4);
    sub_227EB8430(v13, &unk_27D80E3B0, &unk_227F2DB00);
    if (v29)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_227EDAC50()
{
  result = qword_27D80E860;
  if (!qword_27D80E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E860);
  }

  return result;
}

uint64_t sub_227EDACA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227EDACEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerizableURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EDAD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EDADB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EDAE40(uint64_t a1)
{
  result = sub_227F2B114();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227EDAED4(uint64_t a1)
{
  sub_227F2B114();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContainerizableURL(319);
    if (v2 <= 0x3F)
    {
      sub_227EDAF98();
      if (v3 <= 0x3F)
      {
        sub_227EC246C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_227EDAF98()
{
  if (!qword_2813CD550)
  {
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CD550);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FileInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227EDB13C()
{
  result = qword_27D80E898;
  if (!qword_27D80E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E898);
  }

  return result;
}

unint64_t sub_227EDB194()
{
  result = qword_27D80E8A0;
  if (!qword_27D80E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8A0);
  }

  return result;
}

unint64_t sub_227EDB1EC()
{
  result = qword_27D80E8A8;
  if (!qword_27D80E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8A8);
  }

  return result;
}

uint64_t sub_227EDB240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556C61636F6CLL && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365)
  {

    return 5;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
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

uint64_t type metadata accessor for PersistenceState(uint64_t a1)
{
  result = qword_2813CDAC8;
  if (!qword_2813CDAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227EDB524(uint64_t a1)
{
  sub_227EC246C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ResourceInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_227EDB5A8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = sub_227F2B234();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v17 - v12;
  sub_227EC2180(v5, v17 - v12, &unk_27D80E3B0, &unk_227F2DB00);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
    return (*(v8 + 56))(v15, v14, 1, v7);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v18(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    return (*(v8 + 56))(v15, v14, 1, v7);
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_227EDB7BC()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x4973657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_227EDB82C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EE357C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EDB854(uint64_t a1)
{
  v2 = sub_227EE3444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EDB890(uint64_t a1)
{
  v2 = sub_227EE3444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EDB8CC()
{
  v0 = type metadata accessor for ResourceInfo(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PersistenceState(0);
  __swift_allocate_value_buffer(v9, qword_2813CE108);
  v10 = __swift_project_value_buffer(v9, qword_2813CE108);
  v11 = sub_227F2B234();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 1, 1, v11);
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_2813CDFF8);
  sub_227EE36A8(v13, v5, type metadata accessor for ResourceInfo);
  sub_227EE36A8(v13, v3, type metadata accessor for ResourceInfo);
  v12(v10, 1, 1, v11);
  sub_227EE3498(v8, v10);
  sub_227EE3790(v5, v10 + *(v9 + 20), type metadata accessor for ResourceInfo);
  return sub_227EE3790(v3, v10 + *(v9 + 24), type metadata accessor for ResourceInfo);
}

uint64_t sub_227EDBB0C()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_27D81B1A8);
  v1 = __swift_project_value_buffer(v0, qword_27D81B1A8);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2813CE088);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_227EDBBD4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = v1 + *(type metadata accessor for PersistenceState(0) + 20);
  v13 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v12 + *(v13 + 32), v8, &qword_27D80E8F8, &qword_227F2F5E0);
  v14 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_227EB8430(v8, &qword_27D80E8F8, &qword_227F2F5E0);
    v15 = sub_227F2B114();
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v17(v11, 1, 1, v15);
    sub_227EC2180(v12, v5, &qword_27D80E8F0, &unk_227F2F4B0);
    v18 = type metadata accessor for FileInfo(0);
    if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
    {
      sub_227EB8430(v5, &qword_27D80E8F0, &unk_227F2F4B0);
      v19 = 1;
    }

    else
    {
      (*(v16 + 16))(a1, v5, v15);
      sub_227EE3730(v5, type metadata accessor for FileInfo);
      v19 = 0;
    }

    v17(a1, v19, 1, v15);
    result = (*(v16 + 48))(v11, 1, v15);
    if (result != 1)
    {
      return sub_227EB8430(v11, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v20 = sub_227F2B114();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v11, v8, v20);
    sub_227EE3730(v8, type metadata accessor for ResourceInfo.DownloadState);
    v22 = *(v21 + 56);
    v22(v11, 0, 1, v20);
    (*(v21 + 32))(a1, v11, v20);
    return (v22)(a1, 0, 1, v20);
  }

  return result;
}

BOOL sub_227EDBFDC(void *a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_227F2B234();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = v2 + *(type metadata accessor for PersistenceState(0) + 20);
  sub_227EC2180(v17, v16, &qword_27D80E8F0, &unk_227F2F4B0);
  v18 = type metadata accessor for FileInfo(0);
  v19 = (*(*(v18 - 8) + 48))(v16, 1, v18);
  sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v19 == 1)
  {
    return 0;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 8))(v20, v21);
  v22 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v17 + *(v22 + 20), v7, &unk_27D80E3B0, &unk_227F2DB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v9 + 8))(v13, v8);
    sub_227EB8430(v7, &unk_27D80E3B0, &unk_227F2DB00);
    return 0;
  }

  v24 = v29;
  (*(v9 + 32))(v29, v7, v8);
  sub_227F2B194();
  v26 = v25;
  v27 = *(v9 + 8);
  v27(v24, v8);
  v27(v13, v8);
  return v26 <= a2;
}

BOOL sub_227EDC30C(void *a1, double a2, double a3)
{
  v7 = sub_227F2B234();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for ResourceInfo.DownloadState(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  if (!sub_227EDBFDC(a1, a2))
  {
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v29 = sub_227F2B334();
    __swift_project_value_buffer(v29, qword_2813CE088);
    v25 = sub_227F2B304();
    v26 = sub_227F2B8E4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Cached manifest is too old.";
    goto LABEL_11;
  }

  v45 = v15;
  v41 = v10;
  v42 = a1;
  v21 = v3 + *(type metadata accessor for PersistenceState(0) + 24);
  v22 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v21 + *(v22 + 20), v20, &unk_27D80E3B0, &unk_227F2DB00);
  v43 = v8;
  v44 = v7;
  v23 = (*(v8 + 48))(v20, 1, v7);
  sub_227EB8430(v20, &unk_27D80E3B0, &unk_227F2DB00);
  if (v23 == 1)
  {
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v24 = sub_227F2B334();
    __swift_project_value_buffer(v24, qword_2813CE088);
    v25 = sub_227F2B304();
    v26 = sub_227F2B8D4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "No cached updates.";
LABEL_11:
    _os_log_impl(&dword_227EB2000, v25, v26, v28, v27, 2u);
    MEMORY[0x22AAAD240](v27, -1, -1);
LABEL_12:

    return 0;
  }

  sub_227EC2180(v21 + *(v22 + 32), v13, &qword_27D80E8F8, &qword_227F2F5E0);
  if ((*(v45 + 48))(v13, 1, v14) == 1)
  {
    sub_227EB8430(v13, &qword_27D80E8F8, &qword_227F2F5E0);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v31 = sub_227F2B334();
    __swift_project_value_buffer(v31, qword_2813CE088);
    v32 = sub_227F2B304();
    v33 = sub_227F2B8D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_227EB2000, v32, v33, "Resources are up to date.", v34, 2u);
      MEMORY[0x22AAAD240](v34, -1, -1);
    }

    return 1;
  }

  else
  {
    sub_227EE3790(v13, v17, type metadata accessor for ResourceInfo.DownloadState);
    v35 = v42[3];
    v36 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v35);
    v37 = v41;
    (*(v36 + 8))(v35, v36);
    sub_227F2B194();
    v39 = v38;
    (*(v43 + 8))(v37, v44);
    sub_227EE3730(v17, type metadata accessor for ResourceInfo.DownloadState);
    return v39 <= a3;
  }
}

void *sub_227EDC894(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for PersistenceState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v41 = a1;
  sub_227EEA850(sub_227EE3818);
  if (!v2)
  {
    v12 = v8;
    v38 = v7;
    v39 = v5;
    v13 = v40;
    sub_227F2A3D0(v11);
    v37 = 0;
    (*(v9 + 8))(v11, v12);
    v15 = a2;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v16 = [objc_opt_self() defaultManager];
    sub_227F2B0B4();
    v17 = sub_227F2B644();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      sub_227F2AE24();
      swift_allocObject();
      v36 = sub_227F2AE14();
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);

      v19 = sub_227F2B304();
      v20 = sub_227F2B8D4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42 = v22;
        *v21 = 136315138;
        v35 = v20;
        sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v23 = sub_227F2BC24();
        v25 = sub_227ECAC40(v23, v24, &v42);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_227EB2000, v19, v35, "Loading the store file %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AAAD240](v22, -1, -1);
        MEMORY[0x22AAAD240](v21, -1, -1);
      }

      v26 = v37;
      v27 = v38;
      v28 = sub_227F2B124();
      a2 = v26;
      if (v26)
      {
        v30 = v39;

        __swift_project_boxed_opaque_existential_1(v15, v15[3]);
        sub_227EEA678();
        if (qword_2813CDAE0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v30, qword_2813CE108);
      }

      else
      {
        v32 = v28;
        v33 = v29;
        sub_227EE3820(&qword_27D80E918, type metadata accessor for PersistenceState, &unk_227F2F46C);
        sub_227F2AE04();
        sub_227EE3730(v13, type metadata accessor for PersistenceState);
        sub_227EC15A8(v32, v33);

        sub_227EE3790(v27, v13, type metadata accessor for PersistenceState);
        return 0;
      }
    }

    else
    {
      sub_227EE3730(v13, type metadata accessor for PersistenceState);
      if (qword_2813CDAE0 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v39, qword_2813CE108);
      sub_227EE36A8(v31, v13, type metadata accessor for PersistenceState);
      return 0;
    }
  }

  return a2;
}

void sub_227EDCE1C(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D80DF08 != -1)
  {
    swift_once();
  }

  v6 = sub_227F2B334();
  __swift_project_value_buffer(v6, qword_27D81B1A8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315138;
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = sub_227F2BC24();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_227ECAC40(v11, v13, v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_227EB2000, v7, v8, "removing cache folder: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAAD240](v10, -1, -1);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_227F2B044();
  v23[0] = 0;
  v17 = [v15 removeItemAtURL:v16 error:v23];

  v18 = v23[0];
  if (v17)
  {

    v19 = v18;
  }

  else
  {
    v22 = v23[0];
    v20 = v23[0];
    v21 = sub_227F2AFC4();

    swift_willThrow();
  }
}

uint64_t sub_227EDD188(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_227F2B114();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v46 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v54 = type metadata accessor for PersistenceState(0);
  v55 = a1;
  sub_227EC2180(a1 + *(v54 + 20), v11, &qword_27D80E8F0, &unk_227F2F4B0);
  v23 = type metadata accessor for FileInfo(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v52 = v24 + 48;
  v53 = v25;
  if (v25(v11, 1, v23) == 1)
  {
    sub_227EB8430(v11, &qword_27D80E8F0, &unk_227F2F4B0);
    v26 = v12;
    v27 = v13;
    v28 = v5;
  }

  else
  {
    v46 = v1;
    sub_227EE36A8(&v11[*(v23 + 20)], v5, type metadata accessor for ContainerizableURL);
    v47 = v5;
    v48 = v13;
    v29 = *(v13 + 32);
    v29(v20, v5, v12);
    sub_227EE3730(v11, type metadata accessor for FileInfo);
    v49 = v12;
    v29(v22, v20, v12);
    v30 = [objc_opt_self() defaultManager];
    v31 = sub_227F2B044();
    v56[0] = 0;
    v32 = [v30 removeItemAtURL:v31 error:v56];

    if (v32)
    {
      v33 = v56[0];
    }

    else
    {
      v34 = v56[0];
      v35 = sub_227F2AFC4();

      swift_willThrow();
    }

    v27 = v48;
    v26 = v49;
    (*(v48 + 8))(v22, v49);
    v28 = v47;
  }

  sub_227EC2180(v55 + *(v54 + 24), v9, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v53(v9, 1, v23) == 1)
  {
    return sub_227EB8430(v9, &qword_27D80E8F0, &unk_227F2F4B0);
  }

  sub_227EE36A8(&v9[*(v23 + 20)], v28, type metadata accessor for ContainerizableURL);
  v37 = *(v27 + 32);
  v38 = v50;
  v37(v50, v28, v26);
  sub_227EE3730(v9, type metadata accessor for FileInfo);
  v39 = v51;
  v37(v51, v38, v26);
  v40 = [objc_opt_self() defaultManager];
  v41 = sub_227F2B044();
  v56[0] = 0;
  v42 = [v40 removeItemAtURL:v41 error:v56];

  if (v42)
  {
    v43 = *(v27 + 8);
    v44 = v56[0];
    return v43(v39, v26);
  }

  else
  {
    v45 = v56[0];
    sub_227F2AFC4();

    swift_willThrow();
    return (*(v27 + 8))(v39, v26);
  }
}

uint64_t sub_227EDD714@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = sub_227F2AE64();
  MEMORY[0x28223BE20](v9);
  sub_227EE3508(a4, a5);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v10 = sub_227F2B334();
  __swift_project_value_buffer(v10, qword_2813CE088);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Updating state", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState(0);
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState, &unk_227F2F444);
  v14 = sub_227F2AE84();
  if (v23)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v18 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_227EE3508(a4, a5);

    sub_227ED3E74(v16, v17);
    sub_227EEB77C(v18, v18, v16, v17, a3, a4, a5);
    sub_227ECD7FC(a4, a5);

    sub_227EC15A8(v16, v17);
    sub_227EE36A8(a2, a6, type metadata accessor for PersistenceState);
  }

  sub_227ECD7FC(a4, a5);
  return sub_227ECD7FC(a4, a5);
}

uint64_t sub_227EDDAC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_227F2AE64();
  MEMORY[0x28223BE20](v7);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v8 = sub_227F2B334();
  __swift_project_value_buffer(v8, qword_2813CE088);
  v9 = sub_227F2B304();
  v10 = sub_227F2B8D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_227EB2000, v9, v10, "Updating state", v11, 2u);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState(0);
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState, &unk_227F2F444);
  v12 = sub_227F2AE84();
  if (v4)
  {
  }

  v14 = v12;
  v15 = v13;
  v16 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v14, v15);
  a3(v16, v16, v14, v15);
  sub_227EC15A8(v14, v15);

  sub_227EC15A8(v14, v15);
  return sub_227EE36A8(a2, a4, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDDE44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_227F2AE64();
  MEMORY[0x28223BE20](v7);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v8 = sub_227F2B334();
  __swift_project_value_buffer(v8, qword_2813CE088);
  v9 = sub_227F2B304();
  v10 = sub_227F2B8D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_227EB2000, v9, v10, "Updating state", v11, 2u);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState(0);
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState, &unk_227F2F444);
  v12 = sub_227F2AE84();
  if (v4)
  {
  }

  v14 = v12;
  v15 = v13;
  v16 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v14, v15);
  sub_227EEBE68(v16, v16, v14, v15, a3);
  sub_227EC15A8(v14, v15);

  sub_227EC15A8(v14, v15);
  return sub_227EE36A8(a2, a4, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDE1BC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v8 = sub_227F2AE64();
  MEMORY[0x28223BE20](v8);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v9 = sub_227F2B334();
  __swift_project_value_buffer(v9, qword_2813CE088);
  v10 = sub_227F2B304();
  v11 = sub_227F2B8D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_227EB2000, v10, v11, "Updating state", v12, 2u);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState(0);
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState, &unk_227F2F444);
  v13 = sub_227F2AE84();
  if (v5)
  {
  }

  v15 = v13;
  v16 = v14;
  v17 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v15, v16);
  sub_227EEC19C(v17, v17, a2, a3, v15, v16);
  sub_227EC15A8(v15, v16);

  sub_227EC15A8(v15, v16);
  return sub_227EE36A8(v6, a4, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDE538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8C0, &qword_227F2F498);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v6;
  v44 = type metadata accessor for ResourceInfo(0);
  v41 = *(v44 - 8);
  v7 = MEMORY[0x28223BE20](v44);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8C8, &qword_227F2F4A0);
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v47 = type metadata accessor for PersistenceState(0);
  MEMORY[0x28223BE20](v47);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227F2B234();
  v20 = v18;
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v21 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_227EE3444();
  v22 = v48;
  sub_227F2BD74();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_227EB8430(v18, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    v48 = v11;
    v23 = v44;
    v39 = v9;
    v52 = 0;
    sub_227EE3820(&qword_27D80E890, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v24 = v45;
    sub_227F2BB34();
    sub_227EE3498(v24, v20);
    v51 = 1;
    sub_227EE3820(&qword_27D80E8D8, type metadata accessor for ResourceInfo, &protocol conformance descriptor for ResourceInfo);
    v25 = v43;
    v26 = v23;
    sub_227F2BB34();
    v38 = v16;
    v45 = v14;
    v28 = *(v41 + 48);
    if (v28(v25, 1, v23) == 1)
    {
      v29 = v42;
      v30 = v48;
      if (qword_2813CDFF0 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v26, qword_2813CDFF8);
      sub_227EE36A8(v31, v30, type metadata accessor for ResourceInfo);
      v32 = v43;
      if (v28(v43, 1, v26) != 1)
      {
        sub_227EB8430(v32, &qword_27D80E8C0, &qword_227F2F498);
      }
    }

    else
    {
      v30 = v48;
      sub_227EE3790(v25, v48, type metadata accessor for ResourceInfo);
      v29 = v42;
    }

    sub_227EE3790(v30, v20 + *(v47 + 20), type metadata accessor for ResourceInfo);
    v50 = 2;
    sub_227F2BB34();
    v33 = v28(v29, 1, v26);
    v34 = v46;
    if (v33 == 1)
    {
      v36 = v39;
      v35 = v40;
      if (qword_2813CDFF0 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v26, qword_2813CDFF8);
      sub_227EE36A8(v37, v36, type metadata accessor for ResourceInfo);
      (*(v34 + 8))(v38, v45);
      if (v28(v29, 1, v26) != 1)
      {
        sub_227EB8430(v29, &qword_27D80E8C0, &qword_227F2F498);
      }
    }

    else
    {
      (*(v46 + 8))(v38, v45);
      v36 = v39;
      sub_227EE3790(v29, v39, type metadata accessor for ResourceInfo);
      v35 = v40;
    }

    sub_227EE3790(v36, v20 + *(v47 + 24), type metadata accessor for ResourceInfo);
    sub_227EE36A8(v20, v35, type metadata accessor for PersistenceState);
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_227EE3730(v20, type metadata accessor for PersistenceState);
  }
}

uint64_t sub_227EDECAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8E0, &qword_227F2F4A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE3444();
  sub_227F2BD94();
  v17 = 0;
  sub_227F2B234();
  sub_227EE3820(&qword_27D80E870, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_227F2BBC4();
  if (!v2)
  {
    v10 = type metadata accessor for PersistenceState(0);
    v11 = *(v10 + 20);
    if (qword_2813CDFF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for ResourceInfo(0);
    v13 = __swift_project_value_buffer(v12, qword_2813CDFF8);
    if (!_s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(v3 + v11, v13))
    {
      v16 = 1;
      sub_227EE3820(&qword_27D80E8E8, type metadata accessor for ResourceInfo, &protocol conformance descriptor for ResourceInfo);
      sub_227F2BC14();
    }

    if (!_s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(v3 + *(v10 + 24), v13))
    {
      v15 = 2;
      sub_227EE3820(&qword_27D80E8E8, type metadata accessor for ResourceInfo, &protocol conformance descriptor for ResourceInfo);
      sub_227F2BC14();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_227EDEF80(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v84 = a4;
  v85 = a5;
  v83 = a3;
  v77 = a2;
  v94 = a1;
  v82 = sub_227F2B234();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v73[-v8];
  v91 = type metadata accessor for PersistenceState(0);
  v9 = MEMORY[0x28223BE20](v91);
  v80 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v81 = &v73[-v11];
  v12 = sub_227F2B114();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v76 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v75 = &v73[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v73[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v87 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v73[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v73[-v27];
  v93 = v5;
  sub_227EDBBD4(&v73[-v27]);
  v88 = *(v13 + 16);
  v89 = v13 + 16;
  v88(v26, v94, v12);
  (*(v13 + 56))(v26, 0, 1, v12);
  v29 = *(v18 + 56);
  sub_227EC2180(v28, v20, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v26, &v20[v29], &qword_27D80E310, &unk_227F2D990);
  v86 = v13;
  v30 = *(v13 + 48);
  if (v30(v20, 1, v12) == 1)
  {
    sub_227EB8430(v26, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
    if (v30(&v20[v29], 1, v12) == 1)
    {
      sub_227EB8430(v20, &qword_27D80E310, &unk_227F2D990);
LABEL_12:
      if (qword_27D80DF08 != -1)
      {
        swift_once();
      }

      v63 = sub_227F2B334();
      __swift_project_value_buffer(v63, qword_27D81B1A8);
      v64 = v76;
      v88(v76, v94, v12);
      v65 = sub_227F2B304();
      v66 = sub_227F2B8E4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v95 = v68;
        *v67 = 136315138;
        sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v69 = sub_227F2BC24();
        v71 = v70;
        (*(v86 + 8))(v64, v12);
        v72 = sub_227ECAC40(v69, v71, &v95);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_227EB2000, v65, v66, "ensureNewManifest was invoked twice for the same URL: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x22AAAD240](v68, -1, -1);
        MEMORY[0x22AAAD240](v67, -1, -1);
      }

      else
      {

        (*(v86 + 8))(v64, v12);
      }

      return 1;
    }

    goto LABEL_6;
  }

  sub_227EC2180(v20, v87, &qword_27D80E310, &unk_227F2D990);
  if (v30(&v20[v29], 1, v12) == 1)
  {
    sub_227EB8430(v26, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
    (*(v86 + 8))(v87, v12);
LABEL_6:
    sub_227EB8430(v20, &qword_27D80E4F8, &qword_227F2DE80);
    v31 = v93;
    goto LABEL_7;
  }

  v59 = v86;
  v60 = v75;
  (*(v86 + 32))(v75, &v20[v29], v12);
  sub_227EE3820(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v61 = v87;
  v74 = sub_227F2B634();
  v62 = *(v59 + 8);
  v62(v60, v12);
  sub_227EB8430(v26, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
  v62(v61, v12);
  sub_227EB8430(v20, &qword_27D80E310, &unk_227F2D990);
  v31 = v93;
  if (v74)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_227EC2180(v31, v92, &unk_27D80E3B0, &unk_227F2DB00);
  v32 = v91;
  v33 = v31 + *(v91 + 20);
  v34 = v77[3];
  v35 = v77[4];
  __swift_project_boxed_opaque_existential_1(v77, v34);
  v36 = v78;
  (*(v35 + 8))(v34, v35);
  v37 = *(v32 + 20);
  v38 = v80;
  v39 = &v80[v37];
  v40 = type metadata accessor for FileInfo(0);
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v41 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v33 + v41[5], &v39[v41[5]], &unk_27D80E3B0, &unk_227F2DB00);
  v42 = v41[6];
  v43 = v79;
  v44 = v82;
  (*(v79 + 16))(&v39[v42], v36, v82);
  v87 = *(v43 + 56);
  (v87)(&v39[v42], 0, 1, v44);
  v45 = &v39[v41[8]];
  v46 = v12;
  v47 = v44;
  v88(v45, v94, v46);
  v48 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(v43 + 32))(&v45[*(v48 + 20)], v36, v47);
  (*(*(v48 - 8) + 56))(v45, 0, 1, v48);
  v49 = &v39[v41[7]];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v39[v41[9]];
  *v50 = 0;
  v50[8] = 1;
  v51 = &v39[v41[10]];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 1;
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v41, qword_2813CDFF8);
  sub_227EE36A8(v52, v38 + *(v91 + 24), type metadata accessor for ResourceInfo);
  (v87)(v38, 1, 1, v47);
  sub_227EE3498(v92, v38);
  v54 = v84;
  v53 = v85;
  sub_227EE3508(v84, v85);
  v55 = v81;
  v56 = v93;
  v57 = v90;
  sub_227EDD714(v83, v38, v93, v54, v53, v81);
  result = sub_227EE3730(v38, type metadata accessor for PersistenceState);
  if (!v57)
  {
    sub_227EE3518(v55, v56);
    return 2;
  }

  return result;
}

uint64_t sub_227EDF9FC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v88 = a3;
  v99 = a2;
  v102[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v96 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v86 - v10;
  v12 = sub_227F2B114();
  v100 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v90 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v98 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v86 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v86 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v94 = type metadata accessor for PersistenceState(0);
  v95 = a1;
  sub_227EC2180(a1 + *(v94 + 20), v11, &qword_27D80E8F0, &unk_227F2F4B0);
  v30 = type metadata accessor for FileInfo(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v93 = v31 + 48;
  v33 = v32(v11, 1, v30);
  v97 = v6;
  v92 = v30;
  if (v33 == 1)
  {
    sub_227EB8430(v11, &qword_27D80E8F0, &unk_227F2F4B0);
    v34 = v100;
    v35 = v12;
  }

  else
  {
    v87 = v32;
    v91 = v21;
    sub_227EE36A8(&v11[*(v30 + 20)], v6, type metadata accessor for ContainerizableURL);
    v36 = v12;
    v37 = *(v100 + 32);
    v37(v27, v6, v12);
    sub_227EE3730(v11, type metadata accessor for FileInfo);
    v37(v29, v27, v12);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v38 = sub_227F2B334();
    __swift_project_value_buffer(v38, qword_2813CE088);
    v39 = v100;
    (*(v100 + 16))(v24, v29, v36);
    v40 = sub_227F2B304();
    v41 = sub_227F2B8D4();
    v35 = v36;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v102[0] = v86;
      *v42 = 136315138;
      sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v43 = sub_227F2BC24();
      v44 = v39;
      v45 = v29;
      v46 = v35;
      v48 = v47;
      v49 = *(v44 + 8);
      v49(v24, v46);
      v50 = sub_227ECAC40(v43, v48, v102);
      v35 = v46;
      v29 = v45;

      *(v42 + 4) = v50;
      _os_log_impl(&dword_227EB2000, v40, v41, "Deleting old manifest %s", v42, 0xCu);
      v51 = v86;
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x22AAAD240](v51, -1, -1);
      MEMORY[0x22AAAD240](v42, -1, -1);

      v21 = v91;
      v34 = v100;
    }

    else
    {

      v49 = *(v39 + 8);
      v49(v24, v36);
      v21 = v91;
      v34 = v39;
    }

    v52 = [objc_opt_self() defaultManager];
    v53 = sub_227F2B044();
    v102[0] = 0;
    v54 = [v52 removeItemAtURL:v53 error:v102];

    if (!v54)
    {
      v77 = v102[0];
      v78 = sub_227F2AFC4();

      v101 = v78;
      swift_willThrow();
      return (v49)(v29, v35);
    }

    v55 = v102[0];
    v49(v29, v35);
    v32 = v87;
  }

  v56 = v96;
  sub_227EC2180(v95 + *(v94 + 24), v96, &qword_27D80E8F0, &unk_227F2F4B0);
  v57 = v92;
  v58 = v32(v56, 1, v92);
  v60 = v97;
  v59 = v98;
  if (v58 != 1)
  {
    sub_227EE36A8(v56 + *(v57 + 20), v97, type metadata accessor for ContainerizableURL);
    v62 = *(v34 + 32);
    v63 = v89;
    v62(v89, v60, v35);
    sub_227EE3730(v56, type metadata accessor for FileInfo);
    v62(v21, v63, v35);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v64 = sub_227F2B334();
    __swift_project_value_buffer(v64, qword_2813CE088);
    (*(v34 + 16))(v59, v21, v35);
    v65 = sub_227F2B304();
    v66 = v35;
    v67 = sub_227F2B8D4();
    if (os_log_type_enabled(v65, v67))
    {
      v68 = v59;
      v69 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v102[0] = v97;
      *v69 = 136315138;
      sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v70 = sub_227F2BC24();
      v91 = v21;
      v72 = v71;
      v73 = v68;
      v74 = *(v34 + 8);
      v74(v73, v66);
      v75 = sub_227ECAC40(v70, v72, v102);
      v21 = v91;

      *(v69 + 4) = v75;
      _os_log_impl(&dword_227EB2000, v65, v67, "Deleting old updates %s", v69, 0xCu);
      v76 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AAAD240](v76, -1, -1);
      MEMORY[0x22AAAD240](v69, -1, -1);
    }

    else
    {

      v74 = *(v34 + 8);
      v74(v59, v66);
    }

    v79 = [objc_opt_self() defaultManager];
    v80 = v90;
    sub_227F2B064();
    v81 = sub_227F2B044();
    v74(v80, v66);
    v102[0] = 0;
    LODWORD(v80) = [v79 removeItemAtURL:v81 error:v102];

    if (!v80)
    {
      v84 = v102[0];
      v85 = sub_227F2AFC4();

      v101 = v85;
      swift_willThrow();
      return (v74)(v21, v66);
    }

    v82 = v102[0];
    result = (v74)(v21, v66);
    if (!v99)
    {
      return result;
    }

LABEL_21:
    v83 = v101;
    result = v99(result);
    v101 = v83;
    return result;
  }

  result = sub_227EB8430(v56, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v99)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_227EE03E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v190 = a4;
  v195 = a2;
  v207 = a1;
  v186 = type metadata accessor for ResourceInfo(0);
  v5 = MEMORY[0x28223BE20](v186);
  v187 = v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v193 = v168 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = v168 - v9;
  v198 = type metadata accessor for PersistenceState(0);
  v10 = MEMORY[0x28223BE20](v198);
  v189 = v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v188 = v168 - v12;
  v211 = type metadata accessor for FileInfo(0);
  v197 = *(v211 - 8);
  v13 = MEMORY[0x28223BE20](v211);
  v185 = v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = v168 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v181 = v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v194 = (v168 - v19);
  v20 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227F2B114();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v192 = v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v191 = v168 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = v168 - v29;
  v202 = type metadata accessor for Manifest(0);
  v31 = MEMORY[0x28223BE20](v202);
  v178 = v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v177 = v168 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v201 = v168 - v36;
  MEMORY[0x28223BE20](v35);
  v199 = v168 - v37;
  v206 = sub_227F2B234();
  v209 = *(v206 - 8);
  v38 = MEMORY[0x28223BE20](v206);
  v184 = v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = v168 - v40;
  v42 = a3[3];
  v43 = a3[4];
  v44 = __swift_project_boxed_opaque_existential_1(a3, v42);
  v45 = *(v43 + 8);
  v205 = v41;
  v182 = v44;
  v183 = v45;
  v45(v42, v43);
  sub_227EE36A8(v207 + *(v211 + 20), v22, type metadata accessor for ContainerizableURL);
  v210 = v24;
  v46 = v24 + 32;
  v47 = *(v24 + 32);
  v179 = v22;
  v208 = v23;
  v47(v30, v22, v23);
  v48 = sub_227F2AE24();
  swift_allocObject();
  sub_227F2AE14();
  v203 = v30;
  v49 = v204;
  v204 = sub_227F2B124();
  if (v49)
  {

    (*(v210 + 8))(v203, v208);
    return (*(v209 + 8))(v205, v206);
  }

  v51 = v50;
  v171 = v48;
  v172 = v47;
  v173 = v46;
  v174 = v43 + 8;
  v175 = v43;
  v176 = v42;
  v52 = sub_227EE3820(&qword_27D80E910, type metadata accessor for Manifest, &unk_227F2E580);
  v53 = v201;
  v54 = v202;
  v55 = v204;
  sub_227F2AE04();
  v57 = *(v210 + 8);
  v58 = v203;
  v59 = v208;
  v203 = (v210 + 8);
  v170 = v57;
  v57(v58, v208);
  sub_227EC15A8(v55, v51);

  v60 = v53;
  v61 = v199;
  sub_227EE3790(v60, v199, type metadata accessor for Manifest);
  v62 = (v61 + *(v54 + 36));
  v64 = *v62;
  v63 = v62[1];
  v201 = v64;
  v204 = v63;
  v65 = v198;
  v66 = v200 + *(v198 + 20);
  v67 = v194;
  sub_227EC2180(v66, v194, &qword_27D80E8F0, &unk_227F2F4B0);
  v68 = v211;
  v169 = *(v197 + 48);
  if (v169(v67, 1, v211) == 1)
  {
    v179 = v66;
    v191 = 0;
    v194 = 0;
    v69 = v192;
  }

  else
  {
    v168[1] = v52;
    v80 = v180;
    sub_227EE3790(v67, v180, type metadata accessor for FileInfo);
    v81 = v179;
    sub_227EE36A8(v80 + *(v68 + 20), v179, type metadata accessor for ContainerizableURL);
    v172(v191, v81, v59);
    swift_allocObject();
    sub_227F2AE14();
    v88 = sub_227F2B124();
    v90 = v89;
    v179 = v66;
    v91 = v178;
    v92 = v202;
    sub_227F2AE04();
    v69 = v192;

    sub_227EC15A8(v88, v90);
    v59 = v208;
    v170(v191, v208);
    sub_227EE3730(v80, type metadata accessor for FileInfo);
    v103 = v177;
    sub_227EE3790(v91, v177, type metadata accessor for Manifest);
    v104 = (v103 + *(v92 + 36));
    v105 = v104[1];
    v191 = *v104;
    v194 = v105;

    sub_227EE3730(v103, type metadata accessor for Manifest);
    v65 = v198;
    v61 = v199;
  }

  v192 = 0;
  v180 = v200 + *(v65 + 24);
  v70 = v181;
  sub_227EC2180(v180, v181, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v169(v70, 1, v211) == 1)
  {
    sub_227EB8430(v70, &qword_27D80E8F0, &unk_227F2F4B0);
    v181 = v61 + *(v202 + 24);
    v71 = sub_227F2B004();
    v73 = v72;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 1;
    v78 = v207;
    v79 = v204;
  }

  else
  {
    (*(v210 + 16))(v69, v70, v59);
    sub_227EE3730(v70, type metadata accessor for FileInfo);
    v75 = sub_227F2B004();
    v82 = v59;
    v83 = v61;
    v74 = v84;
    v170(v69, v82);
    v181 = v83 + *(v202 + 24);
    v85 = sub_227F2B004();
    v71 = v85;
    v73 = v86;
    v78 = v207;
    v79 = v204;
    if (v74)
    {
      if (v75 == v85 && v74 == v86)
      {
        if (v194)
        {
          if (v201 == v191 && v194 == v204)
          {
            goto LABEL_21;
          }

          v87 = sub_227F2BC64();
          goto LABEL_26;
        }

LABEL_23:

        LODWORD(v202) = 1;
        LODWORD(v203) = 1;
LABEL_43:
        v93 = v196;
        goto LABEL_44;
      }

      v76 = sub_227F2BC64();
      v77 = 0;
    }

    else
    {
      v76 = 0;
      v77 = 1;
    }
  }

  if (!v194)
  {
    if ((v76 & 1) == 0)
    {
      LODWORD(v202) = v194 == 0;
      LODWORD(v178) = 0;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  LODWORD(v202) = 0;
  if (v201 == v191 && v194 == v79)
  {
    if (v76)
    {
LABEL_21:

      LODWORD(v203) = 1;
      LODWORD(v202) = 1;
      v93 = v196;
      goto LABEL_55;
    }

    LODWORD(v178) = 1;
LABEL_30:
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v94 = sub_227F2B334();
    __swift_project_value_buffer(v94, qword_2813CE088);

    v95 = sub_227F2B304();
    v96 = sub_227F2B8D4();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v212 = v98;
      *v97 = 136315394;
      if (v77)
      {
        v99 = 0x3E6C696E3CLL;
      }

      else
      {
        v99 = v75;
      }

      if (v77)
      {
        v74 = 0xE500000000000000;
      }

      v100 = sub_227ECAC40(v99, v74, &v212);

      *(v97 + 4) = v100;
      *(v97 + 12) = 2080;
      v101 = sub_227ECAC40(v71, v73, &v212);

      *(v97 + 14) = v101;
      _os_log_impl(&dword_227EB2000, v95, v96, "updates url changed from %s to %s", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v98, -1, -1);
      v102 = v97;
      v78 = v207;
      MEMORY[0x22AAAD240](v102, -1, -1);
    }

    else
    {
    }

    LODWORD(v203) = 0;
    v93 = v196;
    v79 = v204;
    if (v178)
    {
      goto LABEL_41;
    }

LABEL_44:
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v106 = sub_227F2B334();
    __swift_project_value_buffer(v106, qword_2813CE088);
    v107 = v194;

    v108 = sub_227F2B304();
    v109 = sub_227F2B8D4();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v79;
      v112 = swift_slowAlloc();
      v212 = v112;
      *v110 = 136315394;
      if (v202)
      {
        v113 = 0x3E6C696E3CLL;
      }

      else
      {
        v113 = v191;
      }

      if (v202)
      {
        v107 = 0xE500000000000000;
      }

      v114 = sub_227ECAC40(v113, v107, &v212);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2080;
      *(v110 + 14) = sub_227ECAC40(v201, v111, &v212);
      _os_log_impl(&dword_227EB2000, v108, v109, "digest changed from %s to %s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v112, -1, -1);
      v115 = v110;
      v93 = v196;
      MEMORY[0x22AAAD240](v115, -1, -1);
    }

    else
    {
    }

    LODWORD(v202) = 0;
    goto LABEL_55;
  }

  LODWORD(v178) = sub_227F2BC64();
  if ((v76 & 1) == 0)
  {
    goto LABEL_30;
  }

  v87 = v178;
LABEL_26:

  LODWORD(v203) = 1;
  if ((v87 & 1) == 0)
  {
    LODWORD(v202) = 0;
    goto LABEL_43;
  }

  v93 = v196;
LABEL_41:

  LODWORD(v202) = 1;
LABEL_55:
  v204 = *(v209 + 56);
  v116 = v206;
  (v204)(v93, 1, 1, v206);
  v117 = v210 + 16;
  v118 = *(v210 + 16);
  v119 = v185;
  v120 = v208;
  v118(v185, v78, v208);
  v121 = v211;
  v122 = &v119[*(v211 + 20)];
  v210 = v117;
  v201 = v118;
  v118(v122, v195, v120);
  v123 = (v78 + v121[6]);
  v124 = *(v78 + v121[7]);
  v125 = v78;
  v127 = *v123;
  v126 = v123[1];
  v128 = (v125 + v121[8]);
  v129 = v119;
  v131 = *v128;
  v130 = v128[1];
  sub_227EC2180(v125 + v121[9], v129 + v121[9], &unk_27D80E3B0, &unk_227F2DB00);
  v132 = (v129 + v121[6]);
  *v132 = v127;
  v132[1] = v126;
  *(v129 + v121[7]) = v124;
  v133 = (v129 + v121[8]);
  *v133 = v131;
  v133[1] = v130;

  v134 = v184;
  v183(v176, v175);
  v135 = v193;
  sub_227EE36A8(v129, v193, type metadata accessor for FileInfo);
  (*(v197 + 56))(v135, 0, 1, v121);
  v136 = v186;
  v137 = *(v186 + 20);
  v138 = v204;
  (*(v209 + 32))(v135 + v137, v134, v116);
  v139 = v116;
  v140 = v138;
  v138((v135 + v137), 0, 1, v139);
  sub_227EC2180(&v179[v136[6]], v135 + v136[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE3730(v129, type metadata accessor for FileInfo);
  v141 = v136[8];
  v142 = type metadata accessor for ResourceInfo.DownloadState(0);
  v143 = *(v142 - 8);
  v144 = *(v143 + 56);
  v145 = v143 + 56;
  v144(v135 + v141, 1, 1, v142);
  v146 = v135 + v136[7];
  *v146 = v124;
  *(v146 + 8) = 0;
  v147 = v135 + v136[9];
  *v147 = 0;
  *(v147 + 8) = 1;
  v148 = v135 + v136[10];
  *v148 = 0u;
  *(v148 + 16) = 0u;
  *(v148 + 32) = 1;
  if (v203 && (v202 & 1) != 0)
  {
    v149 = v187;
    sub_227EE36A8(v180, v187, type metadata accessor for ResourceInfo);
    v150 = v200;
    v151 = v190;
    v152 = v206;
  }

  else
  {
    v153 = v180;
    v154 = v136;
    v149 = v187;
    sub_227EC2180(v180, v187, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EC2180(v153 + v154[5], v149 + v154[5], &unk_27D80E3B0, &unk_227F2DB00);
    v155 = v154[6];
    v156 = *(v209 + 16);
    v211 = v145;
    v157 = v205;
    v203 = v144;
    v152 = v206;
    v156(v149 + v155, v205, v206);
    (v204)(v149 + v155, 0, 1, v152);
    v158 = v149 + v154[8];
    (v201)(v158, v181, v208);
    v156(v158 + *(v142 + 20), v157, v152);
    v140 = v204;
    v135 = v193;
    v203(v158, 0, 1, v142);
    v159 = v149 + v154[7];
    *v159 = 0;
    *(v159 + 8) = 1;
    v160 = v149 + v154[9];
    *v160 = 0;
    *(v160 + 8) = 1;
    v161 = v149 + v154[10];
    *v161 = 0u;
    *(v161 + 16) = 0u;
    *(v161 + 32) = 1;
    v150 = v200;
    v151 = v190;
  }

  v162 = v189;
  v140(v189, 1, 1, v152);
  sub_227EE3498(v196, v162);
  v163 = v198;
  sub_227EE3790(v135, v162 + *(v198 + 20), type metadata accessor for ResourceInfo);
  v164 = sub_227EE3790(v149, v162 + *(v163 + 24), type metadata accessor for ResourceInfo);
  MEMORY[0x28223BE20](v164);
  v165 = v207;
  v168[-4] = v150;
  v168[-3] = v165;
  v168[-2] = v195;
  v166 = v188;
  v167 = v192;
  sub_227EDE1BC(v151, sub_227EE3710, &v168[-6], v188);
  (*(v209 + 8))(v205, v152);
  sub_227EE3730(v162, type metadata accessor for PersistenceState);
  if (v167)
  {
    return sub_227EE3730(v199, type metadata accessor for Manifest);
  }

  sub_227EE3730(v199, type metadata accessor for Manifest);
  return sub_227EE3518(v166, v150);
}

void sub_227EE1A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-v12];
  v14 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v17 = sub_227F2B334();
  __swift_project_value_buffer(v17, qword_2813CE088);
  v38 = a2;
  sub_227EE36A8(a2, v16, type metadata accessor for FileInfo);
  v18 = sub_227F2B304();
  v19 = sub_227F2B8D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v9;
    v21 = v8;
    v22 = v20;
    v34 = swift_slowAlloc();
    v35 = v3;
    v40 = v34;
    *v22 = 136315138;
    v23 = v14;
    sub_227EE36A8(&v16[*(v14 + 20)], v7, type metadata accessor for ContainerizableURL);
    (*(v39 + 32))(v13, v7, v21);
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v33 = v19;
    v24 = sub_227F2BC24();
    v26 = v25;
    (*(v39 + 8))(v13, v21);
    sub_227EE3730(v16, type metadata accessor for FileInfo);
    v27 = sub_227ECAC40(v24, v26, &v40);
    v14 = v23;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_227EB2000, v18, v33, "Updating manifest file %s", v22, 0xCu);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAAD240](v28, -1, -1);
    v29 = v22;
    v8 = v21;
    v9 = v39;
    MEMORY[0x22AAAD240](v29, -1, -1);
  }

  else
  {

    sub_227EE3730(v16, type metadata accessor for FileInfo);
  }

  v30 = [objc_opt_self() defaultManager];
  sub_227EE36A8(v38 + *(v14 + 20), v7, type metadata accessor for ContainerizableURL);
  v31 = v37;
  (*(v9 + 32))(v37, v7, v8);
  sub_227F13C50(v31);
  (*(v9 + 8))(v31, v8);
}

uint64_t sub_227EE1E9C(uint64_t *a1, void *a2, void *a3)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - v9;
  v10 = type metadata accessor for PersistenceState(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v33 - v14;
  v15 = sub_227F2B234();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v37 = a1[1];
  v38 = v19;
  v36 = *(a1 + 16);
  v20 = a1[3];
  v34 = a1[4];
  v35 = v20;
  v22 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v21 + 8))(v22, v21);
  v46 = v18;
  v23 = v39;
  sub_227EDB5A8(sub_227EE3AC0, v45, v8);
  v39 = v23;
  v24 = *(v16 + 48);
  v25 = v24(v8, 1, v15);
  v44 = v18;
  if (v25 == 1)
  {
    v26 = v40;
    (*(v16 + 16))(v40, v18, v15);
    v27 = v26;
    if (v24(v8, 1, v15) != 1)
    {
      sub_227EB8430(v8, &unk_27D80E3B0, &unk_227F2DB00);
    }
  }

  else
  {
    v27 = v40;
    (*(v16 + 32))(v40, v8, v15);
  }

  v28 = *(v16 + 56);
  v28(v27, 0, 1, v15);
  v47[0] = v38;
  v47[1] = v37;
  v48 = v36;
  v49 = v35;
  v50 = v34;
  v29 = v43;
  sub_227EE3D08(v47, v44, &v13[*(v10 + 20)]);
  sub_227EE36A8(v29 + *(v10 + 24), &v13[*(v10 + 24)], type metadata accessor for ResourceInfo);
  v28(v13, 1, 1, v15);
  sub_227EE3498(v27, v13);
  v30 = v41;
  v31 = v39;
  sub_227EDDAC8(v42, v13, sub_227EEC4DC, v41);
  if (v31)
  {
    sub_227EE3730(v13, type metadata accessor for PersistenceState);
  }

  else
  {
    sub_227EE3730(v29, type metadata accessor for PersistenceState);
    sub_227EE3730(v13, type metadata accessor for PersistenceState);
    sub_227EE3790(v30, v29, type metadata accessor for PersistenceState);
  }

  return (*(v16 + 8))(v44, v15);
}

uint64_t sub_227EE22DC(void *a1, void *a2)
{
  v29 = a2;
  v3 = sub_227F2B234();
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v27 = &v24 - v8;
  v10 = type metadata accessor for PersistenceState(0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v26 = *(v4 + 56);
  v26(v9, 1, 1, v3);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v17 + 8))(v18, v17);
  v19 = v28;
  v20 = sub_227EE4184(v6, &v14[*(v11 + 28)]);
  v21 = v24;
  (*(v25 + 8))(v6, v24, v20);
  sub_227EE36A8(v19 + *(v11 + 32), &v14[*(v11 + 32)], type metadata accessor for ResourceInfo);
  v26(v14, 1, 1, v21);
  sub_227EE3498(v27, v14);
  v22 = v30;
  sub_227EDDAC8(v29, v14, sub_227EEC4DC, v16);
  if (v22)
  {
    return sub_227EE3730(v14, type metadata accessor for PersistenceState);
  }

  sub_227EE3730(v19, type metadata accessor for PersistenceState);
  sub_227EE3730(v14, type metadata accessor for PersistenceState);
  return sub_227EE3790(v16, v19, type metadata accessor for PersistenceState);
}

void sub_227EE25E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v82 = a2;
  v80 = a1;
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for FileInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v81 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = sub_227F2B114();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v70 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v70 - v23;
  v25 = type metadata accessor for PersistenceState(0);
  sub_227EC2180(v80 + *(v25 + 24), v11, &qword_27D80E8F0, &unk_227F2F4B0);
  v26 = (*(v4 + 48))(v11, 1, v3);
  v76 = v13;
  v77 = v8;
  if (v26 == 1)
  {
    sub_227EB8430(v11, &qword_27D80E8F0, &unk_227F2F4B0);
  }

  else
  {
    v80 = v3;
    sub_227EE36A8(&v11[*(v3 + 20)], v8, type metadata accessor for ContainerizableURL);
    v27 = v13[4];
    v27(v22, v8, v12);
    sub_227EE3730(v11, type metadata accessor for FileInfo);
    v27(v24, v22, v12);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v28 = sub_227F2B334();
    __swift_project_value_buffer(v28, qword_2813CE088);
    v29 = v13[2];
    v30 = v74;
    v73 = v24;
    v29(v74, v24, v12);
    v31 = sub_227F2B304();
    v32 = sub_227F2B8D4();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v79;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v70 = v35;
      v72 = swift_slowAlloc();
      v83[0] = v72;
      *v35 = 136315138;
      v71 = v32;
      sub_227F2B064();
      sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_227F2BC24();
      v38 = v37;
      v39 = v13[1];
      v39(v34, v12);
      v39(v30, v12);
      v40 = sub_227ECAC40(v36, v38, v83);
      v41 = v39;

      v42 = v70;
      *(v70 + 1) = v40;
      v43 = v42;
      _os_log_impl(&dword_227EB2000, v31, v71, "Removing old updates folder %s", v42, 0xCu);
      v44 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AAAD240](v44, -1, -1);
      MEMORY[0x22AAAD240](v43, -1, -1);
    }

    else
    {

      v41 = v13[1];
      v41(v30, v12);
    }

    v45 = [objc_opt_self() defaultManager];
    v46 = v73;
    sub_227F2B064();
    v47 = sub_227F2B044();
    v41(v34, v12);
    v83[0] = 0;
    v48 = [v45 removeItemAtURL:v47 error:v83];

    if (!v48)
    {
      v69 = v83[0];
      sub_227F2AFC4();

      swift_willThrow();
      v41(v46, v12);
      return;
    }

    v49 = v83[0];
    v41(v46, v12);
    v3 = v80;
  }

  v51 = v81;
  v50 = v82;
  v52 = v77;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v53 = sub_227F2B334();
  __swift_project_value_buffer(v53, qword_2813CE088);
  sub_227EE36A8(v50, v51, type metadata accessor for FileInfo);
  v54 = sub_227F2B304();
  v55 = sub_227F2B8D4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80 = v3;
    v74 = v57;
    v83[0] = v57;
    *v56 = 136315138;
    sub_227EE36A8(v51 + *(v3 + 20), v52, type metadata accessor for ContainerizableURL);
    v58 = v76;
    v59 = v79;
    (v76[4])(v79, v52, v12);
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v60 = sub_227F2BC24();
    v62 = v61;
    (v58[1])(v59, v12);
    sub_227EE3730(v81, type metadata accessor for FileInfo);
    v63 = v52;
    v64 = sub_227ECAC40(v60, v62, v83);

    *(v56 + 4) = v64;
    v52 = v63;
    _os_log_impl(&dword_227EB2000, v54, v55, "Storing new updates file at %s", v56, 0xCu);
    v65 = v74;
    __swift_destroy_boxed_opaque_existential_0(v74);
    v3 = v80;
    MEMORY[0x22AAAD240](v65, -1, -1);
    v66 = v56;
    v50 = v82;
    MEMORY[0x22AAAD240](v66, -1, -1);
  }

  else
  {

    sub_227EE3730(v51, type metadata accessor for FileInfo);
    v58 = v76;
  }

  v67 = [objc_opt_self() defaultManager];
  sub_227EE36A8(v50 + *(v3 + 20), v52, type metadata accessor for ContainerizableURL);
  v68 = v75;
  (v58[4])(v75, v52, v12);
  sub_227F13C50(v68);
  (v58[1])(v68, v12);
}

uint64_t sub_227EE2F04(uint64_t *a1, void *a2, void *a3)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v33 - v9;
  v10 = type metadata accessor for PersistenceState(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v14;
  v15 = sub_227F2B234();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v36 = a1[1];
  v37 = v19;
  v35 = *(a1 + 16);
  v20 = a1[3];
  v33 = a1[4];
  v34 = v20;
  v22 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v21 + 8))(v22, v21);
  v44 = v18;
  v23 = v38;
  sub_227EDB5A8(sub_227EE37F8, v43, v8);
  v38 = v23;
  v24 = *(v16 + 48);
  if (v24(v8, 1, v15) == 1)
  {
    v25 = v39;
    (*(v16 + 16))(v39, v18, v15);
    v26 = v24(v8, 1, v15);
    v27 = v25;
    if (v26 != 1)
    {
      sub_227EB8430(v8, &unk_27D80E3B0, &unk_227F2DB00);
    }
  }

  else
  {
    v27 = v39;
    (*(v16 + 32))(v39, v8, v15);
  }

  v28 = *(v16 + 56);
  v28(v27, 0, 1, v15);
  v29 = v42;
  sub_227EE36A8(v42 + *(v10 + 20), &v13[*(v10 + 20)], type metadata accessor for ResourceInfo);
  v45[0] = v37;
  v45[1] = v36;
  v46 = v35;
  v47 = v34;
  v48 = v33;
  sub_227EE3D08(v45, v18, &v13[*(v10 + 24)]);
  v28(v13, 1, 1, v15);
  sub_227EE3498(v27, v13);
  v30 = v40;
  v31 = v38;
  sub_227EDDAC8(v41, v13, sub_227EEC4DC, v40);
  if (v31)
  {
    sub_227EE3730(v13, type metadata accessor for PersistenceState);
  }

  else
  {
    sub_227EE3730(v29, type metadata accessor for PersistenceState);
    sub_227EE3730(v13, type metadata accessor for PersistenceState);
    sub_227EE3790(v30, v29, type metadata accessor for PersistenceState);
  }

  return (*(v16 + 8))(v18, v15);
}