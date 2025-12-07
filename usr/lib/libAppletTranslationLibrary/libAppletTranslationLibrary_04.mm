void *sub_22EF948BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22EF94930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E750, &qword_22EFBD268);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_22EFB68DC();
      if (v19)
      {
        MEMORY[0x2318FB660](0);
        sub_22EFB64CC();
      }

      else
      {
        MEMORY[0x2318FB660](1);
      }

      result = sub_22EFB691C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EF94BAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E740, &qword_22EFBD258);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      result = MEMORY[0x2318FB640](*(v5 + 40), v17, 1);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EF94DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C0, &qword_22EFBD1D8);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22EFB68DC();
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EF9503C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E758, &qword_22EFBD270);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22EFB68DC();
      sub_22EFB61EC();
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v23);
      result = sub_22EFB691C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22EF952E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v31 = *(v18 + 16);
      v32 = *v18;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      sub_22EFB68DC();
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v31);
      result = sub_22EFB691C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *v14 = v32;
      *(v14 + 16) = v31;
      *(v14 + 32) = v19;
      *(v14 + 40) = v20;
      *(v14 + 48) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_22EF9557C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_22EF9560C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22EF9560C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v291 = *MEMORY[0x277D85DE8];
  v276 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_161;
  }

  v236 = 0;
  v5 = 0;
  v202 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v201 = (v6 + 63) >> 6;
  v9 = a3;
  v252 = a3 + 56;
  while (2)
  {
    while (2)
    {
      v4 = v9;
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v234 = (v8 - 1) & v8;
      }

      else
      {
        v11 = v5;
        do
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_320;
          }

          if (v5 >= v201)
          {
            goto LABEL_318;
          }

          v12 = *(v202 + 8 * v5);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v234 = (v12 - 1) & v12;
      }

      v224 = v5;
      v13 = (*(a4 + 48) + 56 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      v19 = v13[4];
      v18 = v13[5];
      v20 = v13[6];
      sub_22EFB68DC();
      sub_22EF70B68(v14, v15);
      v226 = v19;
      v228 = v17;
      sub_22EF70B68(v17, v19);
      v230 = v20;
      v232 = v18;
      sub_22EF70B68(v18, v20);
      v279 = v15;
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v16);
      v21 = sub_22EFB691C();
      v4 = v9;
      v22 = -1 << *(v9 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      v25 = v252;
      v26 = 1 << v23;
      if (((1 << v23) & *(v252 + 8 * (v23 >> 6))) == 0)
      {
LABEL_6:
        v9 = v4;
        sub_22EF708C8(v14, v279);
        sub_22EF708C8(v228, v226);
        sub_22EF708C8(v232, v230);
        a4 = v276;
        v8 = v234;
        v5 = v224;
        continue;
      }

      break;
    }

    v27 = ~v22;
    v28 = v15 >> 62;
    if (v14)
    {
      v29 = 0;
    }

    else
    {
      v29 = v15 == 0xC000000000000000;
    }

    v30 = !v29;
    v218 = HIDWORD(v14);
    v31 = __OFSUB__(HIDWORD(v14), v14);
    v246 = v31;
    v242 = v16;
    v244 = HIDWORD(v14) - v14;
    v32 = BYTE6(v15);
    v222 = v14;
    v214 = (v14 >> 32) - v14;
    v216 = v14 >> 32;
    v248 = v14;
    v239 = ~v22;
    v273 = v15 >> 62;
    v237 = v30;
    while (1)
    {
      v34 = (*(v4 + 48) + 56 * v23);
      v35 = *v34;
      v36 = v34[1];
      v33 = v34[2];
      v37 = v34[3];
      v39 = v34[4];
      v38 = v34[5];
      v40 = v34[6];
      v41 = v36 >> 62;
      if (v36 >> 62 == 3)
      {
        if (v35)
        {
          v42 = 0;
        }

        else
        {
          v42 = v36 == 0xC000000000000000;
        }

        v44 = !v42 || v28 < 3;
        if (((v44 | v30) & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_50:
        v45 = 0;
        if (v28 <= 1)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }

      if (v41 <= 1)
      {
        break;
      }

      if (v41 != 2)
      {
        goto LABEL_50;
      }

      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      v48 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (v48)
      {
        goto LABEL_328;
      }

      if (v28 <= 1)
      {
        goto LABEL_47;
      }

LABEL_51:
      if (v28 == 2)
      {
        v51 = *(v14 + 16);
        v50 = *(v14 + 24);
        v48 = __OFSUB__(v50, v51);
        v49 = v50 - v51;
        if (v48)
        {
          goto LABEL_324;
        }

        goto LABEL_53;
      }

      if (!v45)
      {
        goto LABEL_26;
      }

LABEL_27:
      v23 = (v23 + 1) & v27;
      v24 = v23 >> 6;
      v26 = 1 << v23;
      if ((*(v25 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (!v41)
    {
      v45 = BYTE6(v36);
      if (v28 <= 1)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    LODWORD(v45) = HIDWORD(v35) - v35;
    if (__OFSUB__(HIDWORD(v35), v35))
    {
      goto LABEL_327;
    }

    v45 = v45;
    if (v28 > 1)
    {
      goto LABEL_51;
    }

LABEL_47:
    v49 = v32;
    if (v28)
    {
      v49 = v244;
      if (v246)
      {
        goto LABEL_323;
      }
    }

LABEL_53:
    if (v45 != v49)
    {
      goto LABEL_27;
    }

    if (v45 < 1)
    {
      goto LABEL_26;
    }

    v277 = v33;
    if (v41 > 1)
    {
      if (v41 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (v28 == 2)
        {
          v205 = *(v14 + 16);
          v199 = *(v14 + 24);
          v254 = v35;
          v81 = v38;
          sub_22EF70B68(v35, v36);
          v257 = v37;
          v264 = v39;
          sub_22EF70B68(v37, v39);
          v267 = v81;
          v270 = v40;
          sub_22EF70B68(v81, v40);
          v82 = sub_22EFB603C();
          if (v82)
          {
            v83 = sub_22EFB605C();
            v84 = v205;
            if (__OFSUB__(v205, v83))
            {
              goto LABEL_358;
            }

            v82 += v205 - v83;
          }

          else
          {
            v84 = v205;
          }

          v95 = v199 - v84;
          if (__OFSUB__(v199, v84))
          {
            goto LABEL_347;
          }

          v96 = sub_22EFB604C();
          if (!v82)
          {
            goto LABEL_383;
          }

          goto LABEL_152;
        }

        if (v28 == 1)
        {
          if (v216 < v222)
          {
            goto LABEL_343;
          }

          v254 = v35;
          v68 = v38;
          sub_22EF70B68(v35, v36);
          v257 = v37;
          v264 = v39;
          sub_22EF70B68(v37, v39);
          v267 = v68;
          v270 = v40;
          sub_22EF70B68(v68, v40);
          v69 = sub_22EFB603C();
          if (!v69)
          {
            goto LABEL_366;
          }

          v70 = v69;
          v71 = sub_22EFB605C();
          if (__OFSUB__(v222, v71))
          {
            goto LABEL_349;
          }

          v56 = (v222 - v71 + v70);
          v57 = sub_22EFB604C();
          if (!v56)
          {
            goto LABEL_367;
          }

LABEL_83:
          if (v57 >= v214)
          {
            v72 = v214;
          }

          else
          {
            v72 = v57;
          }

          v73 = memcmp(__s1, v56, v72);
          sub_22EF708C8(v254, v36);
          sub_22EF708C8(v257, v264);
          sub_22EF708C8(v267, v270);
          v14 = v248;
          v4 = a3;
          goto LABEL_156;
        }

        v74 = v4;
        __s2 = v14;
        v282 = BYTE2(v14);
        v283 = BYTE3(v14);
        v284 = v218;
        v285 = BYTE5(v14);
        v286 = BYTE6(v14);
        v287 = HIBYTE(v14);
        v288 = v279;
        v289 = WORD2(v279);
        v73 = memcmp(__s1, &__s2, v32);
LABEL_144:
        v4 = v74;
        goto LABEL_156;
      }

      v204 = *(v35 + 16);
      v255 = v35;
      v58 = v38;
      sub_22EF70B68(v35, v36);
      v258 = v37;
      v265 = v39;
      sub_22EF70B68(v37, v39);
      v268 = v58;
      v271 = v40;
      sub_22EF70B68(v58, v40);
      v59 = sub_22EFB603C();
      if (v59)
      {
        v60 = v59;
        v61 = sub_22EFB605C();
        if (__OFSUB__(v204, v61))
        {
          goto LABEL_333;
        }

        v62 = (v204 - v61 + v60);
      }

      else
      {
        v62 = 0;
      }

      sub_22EFB604C();
      v74 = a3;
      v14 = v248;
      if (v273 == 2)
      {
        v88 = *(v248 + 16);
        v207 = *(v248 + 24);
        v75 = sub_22EFB603C();
        if (v75)
        {
          v89 = sub_22EFB605C();
          if (__OFSUB__(v88, v89))
          {
            goto LABEL_360;
          }

          v75 += v88 - v89;
        }

        if (__OFSUB__(v207, v88))
        {
          goto LABEL_350;
        }

        v90 = sub_22EFB604C();
        if (v90 >= v207 - v88)
        {
          v78 = v207 - v88;
        }

        else
        {
          v78 = v90;
        }

        if (!v62)
        {
          goto LABEL_391;
        }

        v14 = v248;
        if (!v75)
        {
          goto LABEL_388;
        }

        goto LABEL_140;
      }

      if (v273 == 1)
      {
        if (v216 < v222)
        {
          goto LABEL_345;
        }

        v75 = sub_22EFB603C();
        if (v75)
        {
          v76 = sub_22EFB605C();
          if (__OFSUB__(v222, v76))
          {
            goto LABEL_361;
          }

          v75 += v222 - v76;
        }

        v14 = v248;
        v77 = sub_22EFB604C();
        v78 = v214;
        if (v77 < v214)
        {
          v78 = v77;
        }

        if (!v62)
        {
          goto LABEL_381;
        }

        if (!v75)
        {
          goto LABEL_380;
        }

LABEL_140:
        if (v62 == v75)
        {
          sub_22EF708C8(v255, v36);
          sub_22EF708C8(v258, v265);
          sub_22EF708C8(v268, v271);
          v32 = BYTE6(v279);
          v25 = v252;
          v27 = v239;
          v16 = v242;
          v28 = v273;
          v4 = a3;
          v30 = v237;
          v33 = v277;
LABEL_26:
          if (v33 == v16)
          {
            goto LABEL_158;
          }

          goto LABEL_27;
        }

        v73 = memcmp(v62, v75, v78);
        sub_22EF708C8(v255, v36);
        sub_22EF708C8(v258, v265);
        sub_22EF708C8(v268, v271);
        v4 = a3;
        goto LABEL_156;
      }

      v91 = BYTE6(v279);
      *__s1 = v248;
      __s1[4] = v218;
      *&__s1[5] = *(&v248 + 5);
      __s1[7] = HIBYTE(v248);
      *&__s1[8] = v279;
      *&__s1[12] = WORD2(v279);
      if (!v62)
      {
        goto LABEL_370;
      }

LABEL_143:
      v73 = memcmp(v62, __s1, v91);
      sub_22EF708C8(v255, v36);
      sub_22EF708C8(v258, v265);
      sub_22EF708C8(v268, v271);
      goto LABEL_144;
    }

    if (v41)
    {
      v63 = v35;
      if (v35 > v35 >> 32)
      {
        goto LABEL_330;
      }

      v255 = v35;
      v64 = v38;
      sub_22EF70B68(v35, v36);
      v258 = v37;
      v265 = v39;
      sub_22EF70B68(v37, v39);
      v268 = v64;
      v271 = v40;
      sub_22EF70B68(v64, v40);
      v65 = sub_22EFB603C();
      if (v65)
      {
        v66 = v65;
        v67 = sub_22EFB605C();
        if (__OFSUB__(v63, v67))
        {
          goto LABEL_334;
        }

        v62 = (v63 - v67 + v66);
      }

      else
      {
        v62 = 0;
      }

      sub_22EFB604C();
      v74 = a3;
      v14 = v248;
      if (v273 == 2)
      {
        v92 = *(v248 + 16);
        v208 = *(v248 + 24);
        v75 = sub_22EFB603C();
        if (v75)
        {
          v93 = sub_22EFB605C();
          if (__OFSUB__(v92, v93))
          {
            goto LABEL_362;
          }

          v75 += v92 - v93;
        }

        if (__OFSUB__(v208, v92))
        {
          goto LABEL_352;
        }

        v94 = sub_22EFB604C();
        if (v94 >= v208 - v92)
        {
          v78 = v208 - v92;
        }

        else
        {
          v78 = v94;
        }

        if (!v62)
        {
          goto LABEL_389;
        }

        v14 = v248;
        if (!v75)
        {
          goto LABEL_392;
        }

        goto LABEL_140;
      }

      if (v273 == 1)
      {
        if (v216 < v222)
        {
          goto LABEL_351;
        }

        v75 = sub_22EFB603C();
        if (v75)
        {
          v79 = sub_22EFB605C();
          if (__OFSUB__(v222, v79))
          {
            goto LABEL_363;
          }

          v75 += v222 - v79;
        }

        v14 = v248;
        v80 = sub_22EFB604C();
        v78 = v214;
        if (v80 < v214)
        {
          v78 = v80;
        }

        if (!v62)
        {
          goto LABEL_387;
        }

        if (!v75)
        {
          goto LABEL_390;
        }

        goto LABEL_140;
      }

      v91 = BYTE6(v279);
      *__s1 = v248;
      __s1[4] = v218;
      *&__s1[5] = *(&v248 + 5);
      __s1[7] = HIBYTE(v248);
      *&__s1[8] = v279;
      *&__s1[12] = WORD2(v279);
      if (!v62)
      {
        goto LABEL_386;
      }

      goto LABEL_143;
    }

    *__s1 = v35;
    *&__s1[8] = v36;
    __s1[10] = BYTE2(v36);
    __s1[11] = BYTE3(v36);
    __s1[12] = BYTE4(v36);
    __s1[13] = BYTE5(v36);
    if (v28)
    {
      v270 = v40;
      v264 = v39;
      v267 = v38;
      v254 = v35;
      v257 = v37;
      if (v28 == 1)
      {
        if (v216 < v222)
        {
          goto LABEL_344;
        }

        v52 = v38;
        sub_22EF70B68(v35, v36);
        sub_22EF70B68(v37, v39);
        sub_22EF70B68(v52, v40);
        v53 = sub_22EFB603C();
        if (!v53)
        {
          goto LABEL_369;
        }

        v54 = v53;
        v55 = sub_22EFB605C();
        if (__OFSUB__(v222, v55))
        {
          goto LABEL_348;
        }

        v56 = (v222 - v55 + v54);
        v57 = sub_22EFB604C();
        if (!v56)
        {
          goto LABEL_382;
        }

        goto LABEL_83;
      }

      v206 = *(v14 + 16);
      v200 = *(v14 + 24);
      v85 = v38;
      sub_22EF70B68(v35, v36);
      sub_22EF70B68(v37, v39);
      sub_22EF70B68(v85, v40);
      v82 = sub_22EFB603C();
      if (v82)
      {
        v86 = sub_22EFB605C();
        v87 = v206;
        if (__OFSUB__(v206, v86))
        {
          goto LABEL_357;
        }

        v82 += v206 - v86;
      }

      else
      {
        v87 = v206;
      }

      v95 = v200 - v87;
      if (__OFSUB__(v200, v87))
      {
        goto LABEL_346;
      }

      v96 = sub_22EFB604C();
      if (!v82)
      {
        goto LABEL_384;
      }

LABEL_152:
      if (v96 >= v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = v96;
      }

      v73 = memcmp(__s1, v82, v97);
      sub_22EF708C8(v254, v36);
      sub_22EF708C8(v257, v264);
      sub_22EF708C8(v267, v270);
      v4 = a3;
      v14 = v248;
    }

    else
    {
      __s2 = v14;
      v282 = BYTE2(v14);
      v283 = BYTE3(v14);
      v284 = v218;
      v285 = BYTE5(v14);
      v286 = BYTE6(v14);
      v287 = HIBYTE(v14);
      v288 = v279;
      v289 = WORD2(v279);
      v73 = memcmp(__s1, &__s2, v32);
    }

LABEL_156:
    v32 = BYTE6(v279);
    v25 = v252;
    v27 = v239;
    v16 = v242;
    v28 = v273;
    v30 = v237;
    if (v73 || v277 != v242)
    {
      goto LABEL_27;
    }

LABEL_158:
    v9 = v4;
    sub_22EF708C8(v14, v279);
    sub_22EF708C8(v228, v226);
    sub_22EF708C8(v232, v230);
    a1[v24] |= v26;
    v8 = v234;
    v48 = __OFADD__(v236++, 1);
    a4 = v276;
    v5 = v224;
    if (!v48)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_161:
  v236 = 0;
  v98 = 0;
  v203 = v4 + 56;
  v99 = 1 << *(v4 + 32);
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  else
  {
    v100 = -1;
  }

  v101 = v100 & *(v4 + 56);
  v102 = (v99 + 63) >> 6;
  v103 = a4;
  v269 = a4 + 56;
  v217 = v102;
  while (2)
  {
    while (2)
    {
      if (v101)
      {
        v104 = __clz(__rbit64(v101));
        v238 = (v101 - 1) & v101;
        goto LABEL_173;
      }

      v105 = v98;
      while (2)
      {
        v98 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
        }

        if (v98 >= v102)
        {
          goto LABEL_318;
        }

        v106 = *(v203 + 8 * v98);
        ++v105;
        if (!v106)
        {
          continue;
        }

        break;
      }

      v104 = __clz(__rbit64(v106));
      v238 = (v106 - 1) & v106;
LABEL_173:
      v219 = v104 | (v98 << 6);
      v107 = (*(v4 + 48) + 56 * v219);
      v108 = *v107;
      v109 = v107[1];
      v111 = v107[2];
      v110 = v107[3];
      v113 = v107[4];
      v112 = v107[5];
      v114 = v107[6];
      sub_22EFB68DC();
      sub_22EF70B68(v108, v109);
      v229 = v113;
      v231 = v110;
      sub_22EF70B68(v110, v113);
      v233 = v114;
      v235 = v112;
      sub_22EF70B68(v112, v114);
      sub_22EFB61EC();
      v272 = v111;
      MEMORY[0x2318FB660](v111);
      v115 = sub_22EFB691C();
      v116 = v103;
      v117 = -1 << *(v103 + 32);
      v118 = v115 & ~v117;
      v119 = v269;
      v280 = v109;
      if (((*(v269 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
      {
LABEL_165:
        v103 = v116;
        sub_22EF708C8(v108, v280);
        sub_22EF708C8(v231, v229);
        sub_22EF708C8(v235, v233);
        v4 = a3;
        v102 = v217;
        v101 = v238;
        continue;
      }

      break;
    }

    v120 = ~v117;
    v121 = v109 >> 62;
    if (v108)
    {
      v122 = 0;
    }

    else
    {
      v122 = v109 == 0xC000000000000000;
    }

    v123 = !v122;
    v223 = HIDWORD(v108);
    v124 = __OFSUB__(HIDWORD(v108), v108);
    v253 = v124;
    __n = HIDWORD(v108) - v108;
    v125 = BYTE6(v109);
    v225 = v108 >> 32;
    v227 = v108;
    v215 = (v108 >> 32) - v108;
    v245 = v108;
    v126 = v111;
    v243 = ~v117;
    v247 = v123;
    v256 = BYTE6(v109);
    v274 = v109 >> 62;
LABEL_187:
    v128 = (*(v116 + 48) + 56 * v118);
    v129 = *v128;
    v130 = v128[1];
    v127 = v128[2];
    v131 = v128[3];
    v133 = v128[4];
    v132 = v128[5];
    v134 = v128[6];
    v135 = v130 >> 62;
    if (v130 >> 62 != 3)
    {
      if (v135 > 1)
      {
        if (v135 != 2)
        {
          goto LABEL_209;
        }

        v141 = *(v129 + 16);
        v140 = *(v129 + 24);
        v48 = __OFSUB__(v140, v141);
        v139 = v140 - v141;
        if (v48)
        {
          goto LABEL_326;
        }

        if (v121 <= 1)
        {
          goto LABEL_206;
        }
      }

      else if (v135)
      {
        LODWORD(v139) = HIDWORD(v129) - v129;
        if (__OFSUB__(HIDWORD(v129), v129))
        {
          goto LABEL_325;
        }

        v139 = v139;
        if (v121 <= 1)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v139 = BYTE6(v130);
        if (v121 <= 1)
        {
          goto LABEL_206;
        }
      }

LABEL_210:
      if (v121 == 2)
      {
        v144 = *(v108 + 16);
        v143 = *(v108 + 24);
        v48 = __OFSUB__(v143, v144);
        v142 = v143 - v144;
        if (v48)
        {
          goto LABEL_321;
        }

        goto LABEL_212;
      }

      if (v139)
      {
        goto LABEL_186;
      }

      goto LABEL_185;
    }

    if (v129)
    {
      v136 = 0;
    }

    else
    {
      v136 = v130 == 0xC000000000000000;
    }

    v138 = !v136 || v121 < 3;
    if (((v138 | v123) & 1) == 0)
    {
      goto LABEL_185;
    }

LABEL_209:
    v139 = 0;
    if (v121 > 1)
    {
      goto LABEL_210;
    }

LABEL_206:
    v142 = v125;
    if (v121)
    {
      v142 = __n;
      if (v253)
      {
        goto LABEL_322;
      }
    }

LABEL_212:
    if (v139 != v142)
    {
      goto LABEL_186;
    }

    if (v139 < 1)
    {
LABEL_185:
      if (v127 == v126)
      {
        goto LABEL_315;
      }

      goto LABEL_186;
    }

    v278 = v127;
    if (v135 <= 1)
    {
      if (!v135)
      {
        *__s1 = v129;
        *&__s1[8] = v130;
        __s1[10] = BYTE2(v130);
        __s1[11] = BYTE3(v130);
        __s1[12] = BYTE4(v130);
        __s1[13] = BYTE5(v130);
        if (!v121)
        {
          __s2 = v108;
          v282 = BYTE2(v108);
          v283 = BYTE3(v108);
          v284 = v223;
          v285 = BYTE5(v108);
          v286 = BYTE6(v108);
          v287 = HIBYTE(v108);
          v288 = v280;
          v289 = WORD2(v280);
          v173 = v119;
          v174 = v116;
          v175 = v127;
          v176 = memcmp(__s1, &__s2, v125);
          v119 = v173;
          v147 = v175;
          v123 = v247;
          v116 = v174;
          v126 = v272;
          if (v176)
          {
            goto LABEL_303;
          }

          goto LABEL_314;
        }

        if (v121 == 1)
        {
          if (v225 < v227)
          {
            goto LABEL_336;
          }

          v259 = v134;
          sub_22EF70B68(v129, v130);
          sub_22EF70B68(v131, v133);
          sub_22EF70B68(v132, v259);
          v145 = sub_22EFA0FD8(v227, v225, v280 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          if (v221)
          {
            goto LABEL_393;
          }

          v146 = v145;
          sub_22EF708C8(v129, v130);
          sub_22EF708C8(v131, v133);
          sub_22EF708C8(v132, v259);
          v126 = v272;
          v116 = v276;
          v147 = v278;
          v120 = v243;
          v123 = v247;
          v119 = v269;
          if ((v146 & 1) == 0)
          {
LABEL_303:
            v125 = v256;
            v121 = v274;
            goto LABEL_186;
          }

LABEL_314:
          v125 = v256;
          v121 = v274;
          if (v147 == v126)
          {
LABEL_315:
            v103 = v116;
            sub_22EF708C8(v108, v280);
            sub_22EF708C8(v231, v229);
            sub_22EF708C8(v235, v233);
            *(a1 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v219;
            v101 = v238;
            v48 = __OFADD__(v236++, 1);
            v4 = a3;
            v102 = v217;
            if (!v48)
            {
              continue;
            }

            __break(1u);
LABEL_318:

            sub_22EF97104(a1, a2, v236, v4);
            return;
          }

LABEL_186:
          v118 = (v118 + 1) & v120;
          if (((*(v119 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
          {
            goto LABEL_165;
          }

          goto LABEL_187;
        }

        v250 = *(v108 + 16);
        v263 = *(v108 + 24);
        v181 = v131;
        v182 = v134;
        sub_22EF70B68(v129, v130);
        sub_22EF70B68(v181, v133);
        sub_22EF70B68(v132, v182);
        v183 = sub_22EFA0FD8(v250, v263, v280 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        if (v221)
        {
          goto LABEL_393;
        }

        v184 = v183;
        sub_22EF708C8(v129, v130);
        sub_22EF708C8(v181, v133);
        sub_22EF708C8(v132, v182);
LABEL_300:
        v119 = v269;
        v126 = v272;
        v116 = v276;
        v120 = v243;
LABEL_313:
        v123 = v247;
        v147 = v278;
        if (!v184)
        {
          goto LABEL_303;
        }

        goto LABEL_314;
      }

      if (v129 > v129 >> 32)
      {
        goto LABEL_329;
      }

      v153 = v134;
      sub_22EF70B68(v129, v130);
      v240 = v131;
      v249 = v133;
      sub_22EF70B68(v131, v133);
      v260 = v153;
      v266 = v132;
      sub_22EF70B68(v132, v153);
      v154 = sub_22EFB603C();
      if (v154)
      {
        v155 = v154;
        v156 = sub_22EFB605C();
        if (__OFSUB__(v129, v156))
        {
          goto LABEL_332;
        }

        v152 = (v129 - v156 + v155);
      }

      else
      {
        v152 = 0;
      }

      sub_22EFB604C();
      v165 = v276;
      v166 = v269;
      v108 = v245;
      if (v274 != 2)
      {
        if (v274 == 1)
        {
          if (v225 < v227)
          {
            goto LABEL_341;
          }

          v167 = sub_22EFB603C();
          if (v167)
          {
            v171 = sub_22EFB605C();
            if (__OFSUB__(v227, v171))
            {
              goto LABEL_359;
            }

            v167 += v227 - v171;
          }

          v108 = v245;
          v172 = sub_22EFB604C();
          v170 = v215;
          if (v172 < v215)
          {
            v170 = v172;
          }

          if (!v152)
          {
            goto LABEL_377;
          }

          if (!v167)
          {
            goto LABEL_376;
          }

          goto LABEL_298;
        }

        v190 = v256;
        *__s1 = v245;
        __s1[4] = v223;
        *&__s1[5] = *(&v245 + 5);
        __s1[7] = HIBYTE(v245);
        *&__s1[8] = v280;
        *&__s1[12] = WORD2(v280);
        if (!v152)
        {
          goto LABEL_385;
        }

LABEL_302:
        v195 = memcmp(v152, __s1, v190);
        sub_22EF708C8(v129, v130);
        sub_22EF708C8(v240, v249);
        sub_22EF708C8(v266, v260);
        v126 = v272;
        v116 = v165;
        v120 = v243;
        v123 = v247;
        v147 = v278;
        v119 = v166;
        if (v195)
        {
          goto LABEL_303;
        }

        goto LABEL_314;
      }

      v191 = *(v245 + 16);
      v212 = *(v245 + 24);
      v167 = sub_22EFB603C();
      if (v167)
      {
        v192 = sub_22EFB605C();
        if (__OFSUB__(v191, v192))
        {
          goto LABEL_356;
        }

        v167 += v191 - v192;
      }

      if (__OFSUB__(v212, v191))
      {
        goto LABEL_342;
      }

      v193 = sub_22EFB604C();
      if (v193 >= v212 - v191)
      {
        v170 = v212 - v191;
      }

      else
      {
        v170 = v193;
      }

      if (!v152)
      {
        goto LABEL_372;
      }

      v108 = v245;
      if (!v167)
      {
        goto LABEL_371;
      }

      goto LABEL_298;
    }

    break;
  }

  if (v135 == 2)
  {
    v209 = *(v129 + 16);
    v148 = v134;
    sub_22EF70B68(v129, v130);
    v240 = v131;
    v249 = v133;
    sub_22EF70B68(v131, v133);
    v260 = v148;
    v266 = v132;
    sub_22EF70B68(v132, v148);
    v149 = sub_22EFB603C();
    if (v149)
    {
      v150 = v149;
      v151 = sub_22EFB605C();
      if (__OFSUB__(v209, v151))
      {
        goto LABEL_331;
      }

      v152 = (v209 - v151 + v150);
    }

    else
    {
      v152 = 0;
    }

    sub_22EFB604C();
    v165 = v276;
    v166 = v269;
    v108 = v245;
    if (v274 != 2)
    {
      if (v274 == 1)
      {
        if (v225 < v227)
        {
          goto LABEL_338;
        }

        v167 = sub_22EFB603C();
        if (v167)
        {
          v168 = sub_22EFB605C();
          if (__OFSUB__(v227, v168))
          {
            goto LABEL_355;
          }

          v167 += v227 - v168;
        }

        v108 = v245;
        v169 = sub_22EFB604C();
        v170 = v215;
        if (v169 < v215)
        {
          v170 = v169;
        }

        if (!v152)
        {
          goto LABEL_374;
        }

        if (!v167)
        {
          goto LABEL_373;
        }

        goto LABEL_298;
      }

      v190 = v256;
      *__s1 = v245;
      __s1[4] = v223;
      *&__s1[5] = *(&v245 + 5);
      __s1[7] = HIBYTE(v245);
      *&__s1[8] = v280;
      *&__s1[12] = WORD2(v280);
      if (!v152)
      {
        goto LABEL_368;
      }

      goto LABEL_302;
    }

    v187 = *(v245 + 16);
    v211 = *(v245 + 24);
    v167 = sub_22EFB603C();
    if (v167)
    {
      v188 = sub_22EFB605C();
      if (__OFSUB__(v187, v188))
      {
        goto LABEL_354;
      }

      v167 += v187 - v188;
    }

    if (__OFSUB__(v211, v187))
    {
      goto LABEL_340;
    }

    v189 = sub_22EFB604C();
    if (v189 >= v211 - v187)
    {
      v170 = v211 - v187;
    }

    else
    {
      v170 = v189;
    }

    if (!v152)
    {
      goto LABEL_379;
    }

    v108 = v245;
    if (!v167)
    {
      goto LABEL_378;
    }

LABEL_298:
    if (v152 != v167)
    {
      v194 = memcmp(v152, v167, v170);
      sub_22EF708C8(v129, v130);
      sub_22EF708C8(v240, v249);
      sub_22EF708C8(v266, v260);
      v184 = v194 == 0;
      goto LABEL_300;
    }

    sub_22EF708C8(v129, v130);
    sub_22EF708C8(v240, v249);
    sub_22EF708C8(v266, v260);
    v119 = v269;
    v126 = v272;
    v121 = v274;
    v116 = v276;
    v127 = v278;
    v120 = v243;
    v123 = v247;
    v125 = v256;
    goto LABEL_185;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (v121 == 2)
  {
    v241 = *(v108 + 16);
    v210 = *(v108 + 24);
    v177 = v134;
    sub_22EF70B68(v129, v130);
    sub_22EF70B68(v131, v133);
    v262 = v177;
    sub_22EF70B68(v132, v177);
    v178 = sub_22EFB603C();
    if (v178)
    {
      v179 = sub_22EFB605C();
      v180 = v241;
      if (__OFSUB__(v241, v179))
      {
        goto LABEL_353;
      }

      v178 += v241 - v179;
    }

    else
    {
      v180 = v241;
    }

    v196 = v210 - v180;
    if (__OFSUB__(v210, v180))
    {
      goto LABEL_337;
    }

    v197 = sub_22EFB604C();
    if (!v178)
    {
      goto LABEL_375;
    }

    if (v197 >= v196)
    {
      v198 = v196;
    }

    else
    {
      v198 = v197;
    }

    v164 = memcmp(__s1, v178, v198);
    sub_22EF708C8(v129, v130);
    sub_22EF708C8(v131, v133);
    sub_22EF708C8(v132, v262);
    v116 = v276;
    v119 = v269;
    v108 = v245;
LABEL_311:
    v120 = v243;
LABEL_312:
    v184 = v164 == 0;
    v126 = v272;
    goto LABEL_313;
  }

  if (v121 != 1)
  {
    v185 = v119;
    v186 = v116;
    __s2 = v108;
    v282 = BYTE2(v108);
    v283 = BYTE3(v108);
    v284 = v223;
    v285 = BYTE5(v108);
    v286 = BYTE6(v108);
    v287 = HIBYTE(v108);
    v288 = v280;
    v289 = WORD2(v280);
    v164 = memcmp(__s1, &__s2, v125);
    v116 = v186;
    v119 = v185;
    goto LABEL_312;
  }

  if (v225 < v227)
  {
    goto LABEL_335;
  }

  v157 = v134;
  sub_22EF70B68(v129, v130);
  sub_22EF70B68(v131, v133);
  v261 = v157;
  sub_22EF70B68(v132, v157);
  v158 = sub_22EFB603C();
  if (v158)
  {
    v159 = v158;
    v160 = sub_22EFB605C();
    if (__OFSUB__(v227, v160))
    {
      goto LABEL_339;
    }

    v161 = (v227 - v160 + v159);
    v162 = sub_22EFB604C();
    if (!v161)
    {
      goto LABEL_365;
    }

    if (v162 >= v215)
    {
      v163 = v215;
    }

    else
    {
      v163 = v162;
    }

    v164 = memcmp(__s1, v161, v163);
    sub_22EF708C8(v129, v130);
    sub_22EF708C8(v131, v133);
    sub_22EF708C8(v132, v261);
    v119 = v269;
    v108 = v245;
    v116 = v276;
    goto LABEL_311;
  }

  sub_22EFB604C();
LABEL_365:
  __break(1u);
LABEL_366:
  sub_22EFB604C();
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  sub_22EFB604C();
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:

  __break(1u);
}

uint64_t sub_22EF97104(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  result = sub_22EFB66BC();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v36 = v8;
  v37 = v4;
  while (v10)
  {
    v13 = v9;
    v14 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
    v39 = v5;
LABEL_17:
    v17 = (*(v4 + 48) + 56 * (v14 | (v11 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = v17[6];
    v25 = v13;
    sub_22EFB68DC();
    sub_22EF70B68(v18, v19);
    v40 = v20;
    sub_22EF70B68(v20, v23);
    sub_22EF70B68(v22, v24);
    sub_22EFB61EC();
    MEMORY[0x2318FB660](v21);
    result = sub_22EFB691C();
    v9 = v25;
    v26 = -1 << *(v25 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v25 + 48) + 56 * v29);
    *v34 = v18;
    v34[1] = v19;
    v34[2] = v21;
    v34[3] = v40;
    v34[4] = v23;
    v34[5] = v22;
    v34[6] = v24;
    ++*(v25 + 16);
    v5 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v10 = v38;
    v8 = v36;
    if (v39 == 1)
    {
      goto LABEL_6;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_6;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v13 = v9;
      v14 = __clz(__rbit64(v16));
      v38 = (v16 - 1) & v16;
      v39 = v5;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22EF973B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22EF94370(*(a1 + 16), 0);
  v4 = sub_22EFAA300(&v7, v3 + 2, v1, a1);
  v5 = v7;

  sub_22EFA0FD0(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22EF9746C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EFB682C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EFB656C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EF97C80(v7, v8, a1, v4);
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
    return sub_22EF9777C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EF97564(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EFB682C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v5 = result;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ExpressMode.PassConfig(0, v4);
        v7 = sub_22EFB656C();
        *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      v9[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v6;
      sub_22EF98394(v9, v10, a1, v5);
      *(v8 + 16) = 0;
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
    return sub_22EF97890(0, v2, 1, a1);
  }

  return result;
}

void sub_22EF97668(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22EFB682C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
        v6 = sub_22EFB656C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22EF9927C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22EF97AA8(0, v2, 1, a1);
  }
}

uint64_t sub_22EF9777C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_4:
    v18 = a3;
    v8 = *(v5 + 16 * a3);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = v8;
      sub_22EF70B68(v8, *(&v8 + 1));
      sub_22EF70B68(v9, v10);
      v12 = sub_22EF71F2C(v11, *(&v11 + 1), v9, v10);
      sub_22EF708C8(v9, v10);
      result = sub_22EF708C8(v11, *(&v11 + 1));
      if (v4)
      {
        break;
      }

      if (v12)
      {
        if (!v5)
        {
          __break(1u);
          return result;
        }

        v13 = *v6;
        v8 = *(v6 + 16);
        *v6 = v8;
        *(v6 + 16) = v13;
        v6 -= 16;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v6 = v17 + 16;
      v7 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_22EF97890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v23 = v5;
      v7 = *v4;
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);

      sub_22EF83154(v9, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      v10 = sub_22EFB646C();
      v12 = v11;

      sub_22EF83154(*(v7 + 32), *(v7 + 40));
      v13 = sub_22EFB646C();
      v15 = v14;

      if (v10 == v13 && v12 == v15)
      {

LABEL_5:
        a3 = v21 + 1;
        v4 = v20 + 1;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_22EFB684C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v17 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v17;
      --v4;
      v5 = v23 + 1;
      if (v23 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22EF97AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    v28 = *a4;
    while (2)
    {
      v26 = v6;
      v27 = a3;
      v8 = *(v5 + 8 * a3);
      v25 = v7;
      v9 = v7;
      while (1)
      {
        v31 = v9;
        v10 = *v6;
        v11 = sub_22EFB648C();
        v13 = v12;
        v14 = v8;
        v15 = v10;
        sub_22EF82E7C(v11, v13, &v30);
        if (v4)
        {

          return;
        }

        v16 = v30;
        v17 = sub_22EFB648C();
        sub_22EF82E7C(v17, v18, &v29);

        v19 = v29;
        v20 = sub_22EF71F2C(v16, *(&v16 + 1), v29, *(&v29 + 1));
        sub_22EF708C8(v16, *(&v16 + 1));
        sub_22EF708C8(v19, *(&v19 + 1));

        if ((v20 & 1) == 0)
        {
          break;
        }

        v5 = v28;
        v21 = v31;
        if (!v28)
        {
          __break(1u);
          return;
        }

        v22 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v22;
        v6 -= 8;
        v23 = __CFADD__(v21, 1);
        v9 = v21 + 1;
        if (v23)
        {
          goto LABEL_11;
        }
      }

      v5 = v28;
LABEL_11:
      a3 = v27 + 1;
      v6 = v26 + 8;
      v7 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22EF97C80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v10 = *v105;
    if (*v105)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v28 = v11;
    }

    else
    {
      v109 = v7;
      v103 = v9;
      v12 = *v6;
      v13 = (*v6 + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*v6 + 16 * v10);
      v17 = v5;
      v19 = *v16;
      v18 = v16[1];
      sub_22EF70B68(v14, v15);
      sub_22EF70B68(v19, v18);
      v107 = sub_22EF71F2C(v14, v15, v19, v18);
      if (v17)
      {
        sub_22EF708C8(v19, v18);
        sub_22EF708C8(v14, v15);
      }

      sub_22EF708C8(v19, v18);
      result = sub_22EF708C8(v14, v15);
      v20 = v10 + 2;
      v101 = v10;
      v21 = 16 * v10;
      v22 = (v12 + 16 * v10 + 24);
      while (v109 != v20)
      {
        v23 = v22[1];
        v24 = v22[2];
        v25 = *(v22 - 1);
        v26 = *v22;
        sub_22EF70B68(v23, v24);
        sub_22EF70B68(v25, v26);
        v27 = sub_22EF71F2C(v23, v24, v25, v26);
        sub_22EF708C8(v25, v26);
        result = sub_22EF708C8(v23, v24);
        ++v20;
        v22 += 2;
        if ((v107 ^ v27))
        {
          v28 = (v20 - 1);
          goto LABEL_12;
        }
      }

      v28 = v109;
LABEL_12:
      v5 = 0;
      v6 = a3;
      v10 = v101;
      if (v107)
      {
        v9 = v103;
        if (v28 < v101)
        {
          goto LABEL_125;
        }

        if (v101 < v28)
        {
          v29 = 16 * v28 - 16;
          v30 = v28;
          v31 = v101;
          do
          {
            if (v31 != --v30)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v33 = *(v32 + v21);
              *(v32 + v21) = *(v32 + v29);
              *(v32 + v29) = v33;
            }

            v31 = (v31 + 1);
            v29 -= 16;
            v21 += 16;
          }

          while (v31 < v30);
        }
      }

      else
      {
        v9 = v103;
      }
    }

    v34 = v6[1];
    if (v28 >= v34)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v28, v10))
    {
      goto LABEL_121;
    }

    if (v28 - v10 >= a4)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v10 + a4 >= v34)
    {
      v35 = v6[1];
    }

    else
    {
      v35 = v10 + a4;
    }

    if (v35 < v10)
    {
      goto LABEL_124;
    }

    if (v28 == v35)
    {
LABEL_30:
      v35 = v28;
      if (v28 < v10)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v102 = v10;
      v104 = v9;
      v108 = v5;
      v82 = *v6;
      v83 = *v6 + 16 * v28 - 16;
      v84 = v10 - v28;
      do
      {
        v111 = v28;
        v85 = *(v82 + 16 * v28);
        v98 = v84;
        v99 = v83;
        do
        {
          v86 = *v83;
          v87 = *(v83 + 8);
          v88 = v85;
          sub_22EF70B68(v85, *(&v85 + 1));
          sub_22EF70B68(v86, v87);
          v89 = sub_22EF71F2C(v88, *(&v88 + 1), v86, v87);
          if (v108)
          {
            sub_22EF708C8(v86, v87);
            sub_22EF708C8(v88, *(&v88 + 1));
          }

          v90 = v89;
          sub_22EF708C8(v86, v87);
          result = sub_22EF708C8(v88, *(&v88 + 1));
          if ((v90 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_127;
          }

          v91 = *v83;
          v85 = *(v83 + 16);
          *v83 = v85;
          *(v83 + 16) = v91;
          v83 -= 16;
        }

        while (!__CFADD__(v84++, 1));
        v28 = v111 + 1;
        v83 = v99 + 16;
        v84 = v98 - 1;
      }

      while ((v111 + 1) != v35);
      v6 = a3;
      v5 = 0;
      v10 = v102;
      v9 = v104;
      if (v35 < v102)
      {
        goto LABEL_120;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EF7DDCC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_22EF7DDCC((v36 > 1), v37 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v35;
    v40 = *v105;
    if (!*v105)
    {
      goto LABEL_130;
    }

    v110 = v35;
    if (v37)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v110;
    if (v110 >= v7)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v41 = v38 - 1;
    if (v38 >= 4)
    {
      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_107;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_108;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_110;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_113;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v38 == 3)
    {
      v42 = *(v9 + 4);
      v43 = *(v9 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_50:
      if (v45)
      {
        goto LABEL_109;
      }

      v58 = &v9[16 * v38];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      v63 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v64 = &v9[16 * v41 + 32];
      v66 = *v64;
      v65 = *(v64 + 1);
      v52 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v52)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v62, v67))
      {
        goto LABEL_116;
      }

      if (v62 + v67 >= v44)
      {
        if (v44 < v67)
        {
          v41 = v38 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v68 = &v9[16 * v38];
    v70 = *v68;
    v69 = *(v68 + 1);
    v52 = __OFSUB__(v69, v70);
    v62 = v69 - v70;
    v63 = v52;
LABEL_64:
    if (v63)
    {
      goto LABEL_111;
    }

    v71 = &v9[16 * v41];
    v73 = *(v71 + 4);
    v72 = *(v71 + 5);
    v52 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v52)
    {
      goto LABEL_114;
    }

    if (v74 < v62)
    {
      goto LABEL_3;
    }

LABEL_71:
    v79 = v41 - 1;
    if (v41 - 1 >= v38)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_126;
    }

    v80 = *&v9[16 * v79 + 32];
    v10 = *&v9[16 * v41 + 40];
    sub_22EF99B6C((*v6 + 16 * v80), (*v6 + 16 * *&v9[16 * v41 + 32]), (*v6 + 16 * v10), v40);
    if (v5)
    {
    }

    if (v10 < v80)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22EF9AAB4(v9);
    }

    if (v79 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v81 = &v9[16 * v79];
    *(v81 + 4) = v80;
    *(v81 + 5) = v10;
    result = sub_22EF9AA28(v41);
    v38 = *(v9 + 2);
    if (v38 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_22EF9AAB4(v9);
  v9 = result;
LABEL_93:
  v93 = *(v9 + 2);
  if (v93 < 2)
  {
  }

  while (1)
  {
    v94 = *v6;
    if (!*v6)
    {
      break;
    }

    v6 = (v93 - 1);
    v95 = *&v9[16 * v93];
    v96 = *&v9[16 * v93 + 24];
    sub_22EF99B6C((v94 + 16 * v95), (v94 + 16 * *&v9[16 * v93 + 16]), (v94 + 16 * v96), v10);
    if (v5)
    {
    }

    if (v96 < v95)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22EF9AAB4(v9);
    }

    if (v93 - 2 >= *(v9 + 2))
    {
      goto LABEL_118;
    }

    v97 = &v9[16 * v93];
    *v97 = v95;
    *(v97 + 1) = v96;
    result = sub_22EF9AA28(v93 - 1);
    v93 = *(v9 + 2);
    v6 = a3;
    if (v93 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

unint64_t sub_22EF98394(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v139 = result;
  v167 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = MEMORY[0x277D84F90];
  if (v7 < 1)
  {
LABEL_174:
    v10 = *v139;
    if (*v139)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_176;
    }

    __break(1u);
    return result;
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    v143 = v8;
    v150 = v9;
    if (v9 + 1 < v7)
    {
      v11 = *v6;
      v159 = *(*v6 + 8 * (v9 + 1));
      v165 = *(v11 + 8 * v9);

      v155 = sub_22EF8B9E0(&v159, &v165);
      if (v5)
      {
      }

      v12 = v9 + 2;
      v153 = 8 * v9;
      v154 = v7;
      v13 = v11 + 8 * v9 + 16;
      while (v7 != v12)
      {
        v15 = *(v13 - 8);
        v17 = *(*v13 + 32);
        v16 = *(*v13 + 40);

        v159 = sub_22EF83154(v17, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
        v18 = sub_22EFB646C();
        v20 = v19;

        v159 = sub_22EF83154(*(v15 + 32), *(v15 + 40));
        v21 = sub_22EFB646C();
        v23 = v22;

        if (v18 == v21 && v20 == v23)
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22EFB684C();
        }

        ++v12;
        v13 += 8;
        v7 = v154;
        if ((v155 ^ v14))
        {
          v7 = v12 - 1;
          break;
        }
      }

      v6 = a3;
      v5 = 0;
      v8 = v143;
      v24 = v153;
      if (v155)
      {
        v25 = v150;
        if (v7 < v150)
        {
          goto LABEL_230;
        }

        if (v150 < v7)
        {
          v26 = 8 * v7 - 8;
          v27 = v7;
          do
          {
            if (v25 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_237;
              }

              v28 = *(v29 + v24);
              *(v29 + v24) = *(v29 + v26);
              *(v29 + v26) = v28;
            }

            ++v25;
            v26 -= 8;
            v24 += 8;
          }

          while (v25 < v27);
        }
      }

      v10 = v7;
    }

    v30 = *(v6 + 8);
    if (v10 >= v30)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v10, v150))
    {
      goto LABEL_226;
    }

    if (v10 - v150 >= a4)
    {
LABEL_34:
      if (v10 < v150)
      {
        goto LABEL_221;
      }

      goto LABEL_35;
    }

    v31 = v150 + a4;
    if (__OFADD__(v150, a4))
    {
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
    }

    if (v31 >= v30)
    {
      v31 = *(v6 + 8);
    }

    if (v31 < v150)
    {
      goto LABEL_229;
    }

    if (v10 != v31)
    {
      break;
    }

    if (v10 < v150)
    {
      goto LABEL_221;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EF7DDCC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_22EF7DDCC((v32 > 1), v33 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = (v8 + 16 * v33);
    *(v35 + 4) = v150;
    *(v35 + 5) = v10;
    v9 = v10;
    v10 = *v139;
    if (!*v139)
    {
      goto LABEL_239;
    }

    if (v33)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_54:
          if (v40)
          {
            goto LABEL_208;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_211;
          }

          v59 = (v8 + 32 + 16 * v36);
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_214;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_215;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v34 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_68:
        if (v58)
        {
          goto LABEL_210;
        }

        v66 = (v8 + 16 * v36);
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_213;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_75:
        v74 = v36 - 1;
        if (v36 - 1 >= v34)
        {
          goto LABEL_203;
        }

        if (!*v6)
        {
          goto LABEL_235;
        }

        v75 = *(v8 + 32 + 16 * v74);
        v76 = *(v8 + 32 + 16 * v36 + 8);
        sub_22EF99F80((*v6 + 8 * v75), (*v6 + 8 * *(v8 + 32 + 16 * v36)), *v6 + 8 * v76, v10);
        if (v5)
        {
        }

        if (v76 < v75)
        {
          goto LABEL_204;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EF9AAB4(v8);
        }

        if (v74 >= *(v8 + 16))
        {
          goto LABEL_205;
        }

        v77 = (v8 + 16 * v74);
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        v166 = v8;
        result = sub_22EF9AA28(v36);
        v8 = v166;
        v34 = *(v166 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = v8 + 32 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_206;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_207;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_209;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_212;
      }

      if (v52 >= v44)
      {
        v70 = (v8 + 32 + 16 * v36);
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_218;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v9 >= v7)
    {
      goto LABEL_174;
    }
  }

  v78 = *v6;
  v140 = *v6;
  v137 = v31;
  do
  {
    v141 = v10;
    v79 = *(v78 + 8 * v10);
    v80 = v10;
    while (2)
    {
      v10 = v80 - 1;
      v6 = *(v78 + 8 * (v80 - 1));
      v81 = *(v79 + 32);
      v8 = *(v79 + 40);
      v82 = v8 >> 62;
      v156 = v5;
      v144 = v80 - 1;
      v145 = v80;
      v149 = v6;
      if ((v8 >> 62) > 1)
      {
        if (v82 != 2)
        {
          goto LABEL_98;
        }

        v85 = *(v81 + 16);
        v84 = *(v81 + 24);
        v83 = v84 - v85;
        if (__OFSUB__(v84, v85))
        {
          goto LABEL_223;
        }

        if (!v83)
        {
          goto LABEL_98;
        }
      }

      else if (v82)
      {
        v87 = HIDWORD(v81) - v81;
        if (__OFSUB__(HIDWORD(v81), v81))
        {
          goto LABEL_222;
        }

        v83 = v87;
        if (!v87)
        {
LABEL_98:

          v88 = MEMORY[0x277D84F90];
          v5 = MEMORY[0x277D84F90];
          goto LABEL_124;
        }
      }

      else
      {
        v83 = BYTE6(v8);
        if (!BYTE6(v8))
        {
          goto LABEL_98;
        }
      }

      v165 = MEMORY[0x277D84F90];

      sub_22EF9AAC8(0, v83 & ~(v83 >> 63), 0);
      if (v82)
      {
        if (v82 == 2)
        {
          v86 = *(v81 + 16);
        }

        else
        {
          v86 = v81;
        }
      }

      else
      {
        v86 = 0;
      }

      v157 = v86;
      if (v83 < 0)
      {
        goto LABEL_219;
      }

      v6 = 0;
      v5 = v165;
      v151 = &v159 + v86;
      do
      {
        if (v6 >= v83)
        {
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        v89 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_188;
        }

        v90 = v157 + v6;
        if (v82 == 2)
        {
          if (v90 < *(v81 + 16))
          {
            goto LABEL_191;
          }

          if (v90 >= *(v81 + 24))
          {
            goto LABEL_194;
          }

          v94 = sub_22EFB603C();
          if (!v94)
          {
            goto LABEL_232;
          }

          v10 = v94;
          v95 = sub_22EFB605C();
          v93 = v90 - v95;
          if (__OFSUB__(v90, v95))
          {
            goto LABEL_196;
          }

          goto LABEL_117;
        }

        if (v82 == 1)
        {
          if (v90 < v81 || v90 >= v81 >> 32)
          {
            goto LABEL_193;
          }

          v91 = sub_22EFB603C();
          if (!v91)
          {
            goto LABEL_231;
          }

          v10 = v91;
          v92 = sub_22EFB605C();
          v93 = v90 - v92;
          if (__OFSUB__(v90, v92))
          {
            goto LABEL_195;
          }

LABEL_117:
          v96 = *(v10 + v93);
          LODWORD(v82) = v8 >> 62;
          goto LABEL_120;
        }

        if (v90 >= BYTE6(v8))
        {
          goto LABEL_192;
        }

        v159 = v81;
        v160 = v8;
        v161 = BYTE2(v8);
        v162 = BYTE3(v8);
        v163 = BYTE4(v8);
        v164 = BYTE5(v8);
        v96 = v151[v6];
LABEL_120:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_22EFBB8C0;
        *(v97 + 56) = MEMORY[0x277D84B78];
        *(v97 + 64) = MEMORY[0x277D84BC0];
        *(v97 + 32) = v96;
        v98 = sub_22EFB649C();
        v165 = v5;
        v101 = *(v5 + 16);
        v100 = *(v5 + 24);
        v10 = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          v148 = v98;
          v103 = v99;
          sub_22EF9AAC8((v100 > 1), v101 + 1, 1);
          LODWORD(v82) = v8 >> 62;
          v99 = v103;
          v98 = v148;
          v5 = v165;
        }

        *(v5 + 16) = v10;
        v102 = v5 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v99;
        ++v6;
      }

      while (v89 != v83);
      v88 = MEMORY[0x277D84F90];
      v6 = v149;
LABEL_124:
      v159 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      v10 = sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      v146 = sub_22EFB646C();
      v147 = v104;

      v105 = *(v6 + 32);
      v6 = *(v6 + 40);
      v8 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        if (v8 == 2)
        {
          v107 = *(v105 + 16);
          v106 = *(v105 + 24);
          v10 = v106 - v107;
          if (__OFSUB__(v106, v107))
          {
            goto LABEL_224;
          }

          if (v10)
          {
            goto LABEL_131;
          }

          goto LABEL_127;
        }

        v5 = v88;
      }

      else
      {
        if (!v8)
        {
          v10 = BYTE6(v6);
          if (!BYTE6(v6))
          {
            goto LABEL_127;
          }

LABEL_131:
          v165 = v88;
          sub_22EF9AAC8(0, v10 & ~(v10 >> 63), 0);
          if (v8)
          {
            if (v8 == 2)
            {
              v108 = *(v105 + 16);
            }

            else
            {
              v108 = v105;
            }
          }

          else
          {
            v108 = 0;
          }

          v158 = v108;
          if ((v10 & 0x8000000000000000) == 0)
          {
            v115 = 0;
            v5 = v165;
            v152 = &v159 + v108;
            while (1)
            {
              if (v115 >= v10)
              {
                goto LABEL_189;
              }

              v116 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_190;
              }

              v117 = v158 + v115;
              if (v8 == 2)
              {
                if (v117 < *(v105 + 16))
                {
                  goto LABEL_198;
                }

                if (v117 >= *(v105 + 24))
                {
                  goto LABEL_200;
                }

                v121 = sub_22EFB603C();
                if (!v121)
                {
                  goto LABEL_234;
                }

                v8 = v121;
                v122 = sub_22EFB605C();
                v120 = v117 - v122;
                if (__OFSUB__(v117, v122))
                {
                  goto LABEL_202;
                }
              }

              else
              {
                if (v8 != 1)
                {
                  if (v117 >= BYTE6(v6))
                  {
                    goto LABEL_197;
                  }

                  v159 = v105;
                  v160 = v6;
                  v161 = BYTE2(v6);
                  v162 = BYTE3(v6);
                  v163 = BYTE4(v6);
                  v164 = BYTE5(v6);
                  v123 = v152[v115];
                  goto LABEL_165;
                }

                if (v117 < v105 || v117 >= v105 >> 32)
                {
                  goto LABEL_199;
                }

                v118 = sub_22EFB603C();
                if (!v118)
                {
                  goto LABEL_233;
                }

                v8 = v118;
                v119 = sub_22EFB605C();
                v120 = v117 - v119;
                if (__OFSUB__(v117, v119))
                {
                  goto LABEL_201;
                }
              }

              v123 = *(v8 + v120);
LABEL_165:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_22EFBB8C0;
              *(v124 + 56) = MEMORY[0x277D84B78];
              *(v124 + 64) = MEMORY[0x277D84BC0];
              *(v124 + 32) = v123;
              v125 = sub_22EFB649C();
              v165 = v5;
              v128 = *(v5 + 16);
              v127 = *(v5 + 24);
              if (v128 >= v127 >> 1)
              {
                v136 = v125;
                v130 = v126;
                sub_22EF9AAC8((v127 > 1), v128 + 1, 1);
                v126 = v130;
                v125 = v136;
                v5 = v165;
              }

              *(v5 + 16) = v128 + 1;
              v129 = v5 + 16 * v128;
              *(v129 + 32) = v125;
              *(v129 + 40) = v126;
              ++v115;
              v8 = v6 >> 62;
              if (v116 == v10)
              {
                goto LABEL_138;
              }
            }
          }

LABEL_220:
          __break(1u);
          goto LABEL_221;
        }

        v109 = HIDWORD(v105) - v105;
        if (__OFSUB__(HIDWORD(v105), v105))
        {
          goto LABEL_225;
        }

        v10 = v109;
        if (v109)
        {
          goto LABEL_131;
        }

LABEL_127:
        v5 = v88;
      }

LABEL_138:
      v159 = v5;
      v110 = sub_22EFB646C();
      v112 = v111;

      if (v146 != v110 || v147 != v112)
      {
        v113 = sub_22EFB684C();

        v6 = a3;
        v5 = v156;
        if ((v113 & 1) == 0)
        {
          goto LABEL_170;
        }

        v8 = v143;
        v78 = v140;
        if (!v140)
        {
          goto LABEL_238;
        }

        v79 = *(v140 + 8 * v145);
        *(v140 + 8 * v145) = *(v140 + 8 * v144);
        *(v140 + 8 * v144) = v79;
        v80 = v144;
        v114 = v150;
        if (v144 == v150)
        {
          goto LABEL_171;
        }

        continue;
      }

      break;
    }

    v6 = a3;
    v5 = v156;
LABEL_170:
    v8 = v143;
    v114 = v150;
    v78 = v140;
LABEL_171:
    v10 = v141 + 1;
  }

  while (v141 + 1 != v137);
  v10 = v137;
  if (v137 >= v114)
  {
    goto LABEL_35;
  }

LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  v8 = sub_22EF9AAB4(v8);
LABEL_176:
  v166 = v8;
  v131 = *(v8 + 16);
  if (v131 >= 2)
  {
    while (*v6)
    {
      v132 = v8;
      v8 = v131 - 1;
      v133 = *&v132[16 * v131];
      v134 = *&v132[16 * v131 + 24];
      sub_22EF99F80((*v6 + 8 * v133), (*v6 + 8 * *&v132[16 * v131 + 16]), *v6 + 8 * v134, v10);
      if (v5)
      {
      }

      if (v134 < v133)
      {
        goto LABEL_216;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_22EF9AAB4(v132);
      }

      if (v131 - 2 >= *(v132 + 2))
      {
        goto LABEL_217;
      }

      v135 = &v132[16 * v131];
      *v135 = v133;
      *(v135 + 1) = v134;
      v166 = v132;
      sub_22EF9AA28(v8);
      v8 = v166;
      v131 = *(v166 + 2);
      if (v131 <= 1)
      {
      }
    }

    goto LABEL_236;
  }
}

void sub_22EF9927C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_131;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v119 = v6;
      v10 = v9;
      v11 = *a3;
      *&v125 = *(*a3 + 8 * v7);
      *&v124 = *(v11 + 8 * v10);
      v12 = v124;
      v13 = v125;
      v14 = v12;
      v117 = sub_22EF8DCD8(&v125);
      if (v5)
      {

        return;
      }

      v15 = (v10 + 2);
      v111 = v10;
      v114 = 8 * v10;
      v16 = (v11 + 8 * v10 + 16);
      v120 = v8;
      while (1)
      {
        v7 = v119;
        if (v119 == v15)
        {
          break;
        }

        v18 = *(v16 - 1);
        v17 = *v16;
        v19 = sub_22EFB648C();
        v21 = v20;
        v22 = v17;
        v23 = v18;
        sub_22EF82E7C(v19, v21, &v125);

        v24 = *(&v125 + 1);
        v25 = v125;
        v26 = sub_22EFB648C();
        sub_22EF82E7C(v26, v27, &v124);

        v28 = v124;
        v29 = sub_22EF71F2C(v25, v24, v124, *(&v124 + 1));
        sub_22EF708C8(v25, v24);
        sub_22EF708C8(v28, *(&v28 + 1));

        v30 = v117 ^ v29;
        v15 = (v15 + 1);
        ++v16;
        v5 = 0;
        v8 = v120;
        if (v30)
        {
          v7 = (v15 - 1);
          break;
        }
      }

      v9 = v111;
      v31 = v114;
      if (v117)
      {
        if (v7 < v111)
        {
          goto LABEL_125;
        }

        if (v111 < v7)
        {
          v32 = 8 * v7 - 8;
          v33 = v7;
          v34 = v111;
          do
          {
            v33 = (v33 - 1);
            if (v34 != v33)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v36 = *(v35 + v31);
              *(v35 + v31) = *(v35 + v32);
              *(v35 + v32) = v36;
            }

            v34 = (v34 + 1);
            v32 -= 8;
            v31 += 8;
          }

          while (v34 < v33);
        }
      }
    }

    v37 = a3[1];
    if (v7 >= v37)
    {
LABEL_25:
      if (v7 < v9)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    if (__OFSUB__(v7, v9))
    {
      __break(1u);
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      return;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_25;
    }

    v38 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_123;
    }

    if (v38 >= v37)
    {
      v38 = a3[1];
    }

    if (v38 < v9)
    {
      goto LABEL_124;
    }

    if (v7 == v38)
    {
      goto LABEL_25;
    }

    v121 = v8;
    v122 = v5;
    v86 = *a3;
    v87 = *a3 + 8 * v7 - 8;
    v112 = v9;
    v88 = v9 - v7;
    v108 = v38;
    v115 = *a3;
    do
    {
      v89 = *(v86 + 8 * v7);
      v109 = v88;
      v110 = v87;
      v118 = v7;
      while (1)
      {
        v90 = *v87;
        v91 = sub_22EFB648C();
        v93 = v92;
        v94 = v89;
        v95 = v90;
        sub_22EF82E7C(v91, v93, &v125);
        if (v122)
        {

          goto LABEL_102;
        }

        v96 = v125;
        v97 = sub_22EFB648C();
        sub_22EF82E7C(v97, v98, &v124);

        v99 = v124;
        v122 = 0;
        v100 = sub_22EF71F2C(v96, *(&v96 + 1), v124, *(&v124 + 1));
        sub_22EF708C8(v96, *(&v96 + 1));
        sub_22EF708C8(v99, *(&v99 + 1));

        if ((v100 & 1) == 0)
        {
          break;
        }

        v8 = v121;
        v101 = v118;
        v86 = v115;
        if (!v115)
        {
          goto LABEL_128;
        }

        v102 = *v87;
        v89 = *(v87 + 8);
        *v87 = v89;
        *(v87 + 8) = v102;
        v87 -= 8;
        if (__CFADD__(v88++, 1))
        {
          goto LABEL_85;
        }
      }

      v8 = v121;
      v101 = v118;
      v86 = v115;
LABEL_85:
      v7 = (v101 + 1);
      v87 = v110 + 8;
      v88 = v109 - 1;
    }

    while (v7 != v108);
    v7 = v108;
    v5 = 0;
    v9 = v112;
    if (v108 < v112)
    {
      goto LABEL_120;
    }

LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22EF7DDCC(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    v42 = v5;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_22EF7DDCC((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v43 = &v8[16 * v40];
    *(v43 + 4) = v9;
    *(v43 + 5) = v7;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v40)
    {
      break;
    }

LABEL_74:
    v6 = a3[1];
    v5 = v42;
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v44 = v41 - 1;
    if (v41 >= 4)
    {
      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v41 == 3)
    {
      v45 = *(v8 + 4);
      v46 = *(v8 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_45:
      if (v48)
      {
        goto LABEL_111;
      }

      v61 = &v8[16 * v41];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_114;
      }

      v67 = &v8[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_118;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v41 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v71 = &v8[16 * v41];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_59:
    if (v66)
    {
      goto LABEL_113;
    }

    v74 = &v8[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_116;
    }

    if (v77 < v65)
    {
      goto LABEL_74;
    }

LABEL_66:
    v82 = v44 - 1;
    if (v44 - 1 >= v41)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_126;
    }

    v83 = *&v8[16 * v82 + 32];
    v84 = *&v8[16 * v44 + 40];
    sub_22EF9A490((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v44 + 32]), (*a3 + 8 * v84), v5);
    if (v42)
    {
      goto LABEL_102;
    }

    if (v84 < v83)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22EF9AAB4(v8);
    }

    if (v82 >= *(v8 + 2))
    {
      goto LABEL_106;
    }

    v85 = &v8[16 * v82];
    *(v85 + 4) = v83;
    *(v85 + 5) = v84;
    v126 = v8;
    sub_22EF9AA28(v44);
    v8 = v126;
    v41 = *(v126 + 2);
    if (v41 <= 1)
    {
      goto LABEL_74;
    }
  }

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
  v8 = sub_22EF9AAB4(v8);
LABEL_91:
  v126 = v8;
  v104 = *(v8 + 2);
  if (v104 >= 2)
  {
    while (*a3)
    {
      v105 = *&v8[16 * v104];
      v106 = *&v8[16 * v104 + 24];
      sub_22EF9A490((*a3 + 8 * v105), (*a3 + 8 * *&v8[16 * v104 + 16]), (*a3 + 8 * v106), v7);
      if (v5)
      {
        goto LABEL_102;
      }

      if (v106 < v105)
      {
        goto LABEL_107;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22EF9AAB4(v8);
      }

      if (v104 - 2 >= *(v8 + 2))
      {
        goto LABEL_108;
      }

      v107 = &v8[16 * v104];
      *v107 = v105;
      *(v107 + 1) = v106;
      v126 = v8;
      sub_22EF9AA28(v104 - 1);
      v8 = v126;
      v104 = *(v126 + 2);
      if (v104 <= 1)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_127;
  }

LABEL_102:
}

uint64_t sub_22EF99B6C(char *__src, char *a2, char *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != a2 || &a2[16 * v12] <= a4)
    {
      memmove(a4, a2, 16 * v12);
    }

    v14 = &v4[2 * v12];
    if (v10 < 16 || v6 <= __src)
    {
      v26 = v6;
      goto LABEL_53;
    }

    v49 = v4;
    while (1)
    {
      v48 = v5;
      v27 = 0;
      v28 = v14;
      v50 = v14;
      __dsta = v6;
      v46 = (v6 - 2);
      while (1)
      {
        v29 = &v28[v27];
        v30 = &v28[v27 - 2];
        v31 = *v30;
        v32 = v28[v27 - 1];
        v34 = *(__dsta - 2);
        v33 = *(__dsta - 1);
        sub_22EF70B68(*v30, v32);
        sub_22EF70B68(v34, v33);
        v35 = sub_22EF71F2C(v31, v32, v34, v33);
        sub_22EF708C8(v34, v33);
        if (v53)
        {
          sub_22EF708C8(v31, v32);
          v39 = v49;
          v40 = v50 - v49 + v27 * 8;
          v41 = v40 + 15;
          if (v40 >= 0)
          {
            v41 = v50 - v49 + v27 * 8;
          }

          v42 = v41 >> 4;
          v26 = __dsta;
          if (__dsta < v49 || __dsta >= (v49 + (v41 & 0xFFFFFFFFFFFFFFF0)))
          {
            v38 = 16 * v42;
          }

          else
          {
            if (__dsta == v49)
            {
              return 1;
            }

            v38 = 16 * v42;
          }

          goto LABEL_59;
        }

        sub_22EF708C8(v31, v32);
        if (v35)
        {
          break;
        }

        v4 = v49;
        v28 = v50;
        if (&v48[v27 * 8] != v29)
        {
          *&v48[v27 * 8 - 16] = *v30;
        }

        v27 -= 2;
        v14 = &v50[v27];
        if (&v50[v27] <= v49)
        {
          v26 = __dsta;
LABEL_53:
          v43 = v14 - v4;
          v44 = v14 - v4 + 15;
          if (v43 >= 0)
          {
            v44 = v43;
          }

          if (v26 >= v4 && v26 < (v4 + (v44 & 0xFFFFFFFFFFFFFFF0)) && v26 == v4)
          {
            return 1;
          }

          v38 = 16 * (v44 >> 4);
          v39 = v4;
LABEL_59:
          memmove(v26, v39, v38);
          return 1;
        }
      }

      v4 = v49;
      v5 = &v48[v27 * 8 - 16];
      v26 = v46;
      if (&v48[v27 * 8] != __dsta)
      {
        *v5 = *v46;
      }

      v14 = &v50[v27];
      if (&v50[v27] > v49)
      {
        v6 = v46;
        if (v46 > __src)
        {
          continue;
        }
      }

      v14 = &v50[v27];
      goto LABEL_53;
    }
  }

  v13 = __src;
  if (a4 != __src || &__src[16 * v9] <= a4)
  {
    memmove(a4, __src, 16 * v9);
  }

  v14 = &v4[2 * v9];
  if (v7 < 16)
  {
    v26 = v13;
    goto LABEL_53;
  }

  v15 = v53;
  if (v6 >= v5)
  {
LABEL_20:
    v26 = v13;
    goto LABEL_53;
  }

  __dst = &v4[2 * v9];
  while (1)
  {
    v16 = v5;
    v17 = v6;
    v18 = *v6;
    v19 = v6[1];
    v20 = v4;
    v21 = *v4;
    v22 = v4[1];
    sub_22EF70B68(v18, v19);
    sub_22EF70B68(v21, v22);
    v23 = sub_22EF71F2C(v18, v19, v21, v22);
    if (v15)
    {
      break;
    }

    v24 = v23;
    sub_22EF708C8(v21, v22);
    sub_22EF708C8(v18, v19);
    if ((v24 & 1) == 0)
    {
      v25 = v20;
      v4 = v20 + 2;
      v6 = v17;
      v5 = v16;
      if (v13 == v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v13 = *v25;
      goto LABEL_18;
    }

    v25 = v17;
    v6 = v17 + 2;
    v5 = v16;
    v4 = v20;
    if (v13 != v17)
    {
      goto LABEL_17;
    }

LABEL_18:
    v13 += 16;
    v14 = __dst;
    v15 = 0;
    if (v4 >= __dst || v6 >= v5)
    {
      goto LABEL_20;
    }
  }

  sub_22EF708C8(v21, v22);
  sub_22EF708C8(v18, v19);
  v36 = __dst - v20 + 15;
  if (__dst - v20 >= 0)
  {
    v36 = __dst - v20;
  }

  v37 = v36 >> 4;
  if (v13 < v20 || v13 >= v20 + (v36 & 0xFFFFFFFFFFFFFFF0))
  {
    v38 = 16 * v37;
    v26 = v13;
    v39 = v20;
    goto LABEL_59;
  }

  if (v13 != v20)
  {
    v38 = 16 * v37;
    v26 = v13;
    v39 = v20;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_22EF99F80(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if ((a3 - __src) >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    v8 = __src;
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v57 = &v6[8 * v14];
    if (v12 >= 8 && v8 > __dst)
    {
      v56 = v6;
LABEL_29:
      v51 = v8;
      v32 = v8 - 8;
      v33 = (v7 - 8);
      v34 = v57;
      v48 = v8 - 8;
      do
      {
        v54 = v33;
        v35 = *(v34 - 1);
        v49 = v34 - 8;
        v36 = *v32;
        v38 = *(v35 + 32);
        v37 = *(v35 + 40);

        sub_22EF83154(v38, v37);
        v39 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
        v40 = sub_22EFB646C();
        v42 = v41;

        v58 = v39;
        sub_22EF83154(*(v36 + 32), *(v36 + 40));
        v43 = sub_22EFB646C();
        v45 = v44;

        if (v40 == v43 && v42 == v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_22EFB684C();
        }

        if (v46)
        {
          v7 = v54;
          v6 = v56;
          v5 = v58;
          if (v54 + 1 != v51)
          {
            *v54 = *v48;
          }

          if (v57 <= v56 || (v8 = v48, v48 <= __dst))
          {
            v8 = v48;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        v6 = v56;
        v5 = v58;
        v34 = v49;
        if (v54 + 1 != v57)
        {
          *v54 = *v49;
        }

        v33 = v54 - 1;
        v57 = v49;
        v32 = v48;
      }

      while (v49 > v56);
      v57 = v49;
      v8 = v51;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v57 = &v6[8 * v11];
    if (v9 >= 8 && __src < v7)
    {
      v16 = __src;
      while (1)
      {
        v50 = v16;
        v52 = v8;
        v55 = v6;
        v17 = *v6;
        v19 = *(*v16 + 32);
        v18 = *(*v16 + 40);

        v20 = v19;
        v21 = v5;
        sub_22EF83154(v20, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
        v22 = sub_22EFB646C();
        v24 = v23;

        sub_22EF83154(*(v17 + 32), *(v17 + 40));
        v25 = sub_22EFB646C();
        v27 = v26;

        if (v22 == v25 && v24 == v27)
        {
          break;
        }

        v28 = sub_22EFB684C();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

        v29 = v52;
        v30 = v50;
        v16 = v50 + 8;
        v31 = v52 == v50;
LABEL_18:
        v5 = v21;
        if (!v31)
        {
          *v29 = *v30;
        }

        v8 = v29 + 8;
        if (v6 >= v57 || v16 >= v7)
        {
          goto LABEL_44;
        }
      }

LABEL_17:
      v30 = v6;
      v6 += 8;
      v16 = v50;
      v29 = v52;
      v31 = v52 == v55;
      goto LABEL_18;
    }
  }

LABEL_44:
  if (v8 != v6 || v8 >= &v6[(v57 - v6 + (v57 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v57 - v6) / 8));
  }

  return 1;
}

uint64_t sub_22EF9A490(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v66 = &v5[v14];
    if (v12 >= 8 && v7 > v8)
    {
      v31 = -v5;
      v63 = v5;
      v59 = v8;
      v55 = -v5;
      while (1)
      {
        v32 = v7 - 1;
        v33 = v66;
        v34 = v66 + v31;
        v35 = v6 - 1;
        v56 = v7 - 1;
        v57 = v7;
        while (1)
        {
          v58 = v34;
          v61 = v35;
          v36 = *--v33;
          v37 = *v32;
          v38 = sub_22EFB648C();
          v40 = v39;
          v41 = v36;
          v42 = v37;
          sub_22EF82E7C(v38, v40, &v65);
          if (v4)
          {

            v49 = v63;
            if (v7 >= v63 && v7 < (v63 + ((v58 + (v58 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)) && v7 == v63)
            {
              return 1;
            }

            v51 = 8 * (v58 / 8);
            v52 = v7;
            goto LABEL_57;
          }

          v43 = v65;
          v44 = sub_22EFB648C();
          sub_22EF82E7C(v44, v45, &v64);
          v46 = v42;

          v47 = v64;
          v48 = sub_22EF71F2C(v43, *(&v43 + 1), v64, *(&v64 + 1));
          sub_22EF708C8(v43, *(&v43 + 1));
          sub_22EF708C8(v47, *(&v47 + 1));

          if (v48)
          {
            break;
          }

          v32 = v56;
          v7 = v57;
          if (v61 + 1 != v66)
          {
            *v61 = *v33;
          }

          v34 = v58 - 8;
          v35 = v61 - 1;
          v66 = v33;
          if (v33 <= v63)
          {
            v66 = v33;
            v5 = v63;
            goto LABEL_51;
          }
        }

        v6 = v61;
        if (v61 + 1 != v57)
        {
          *v61 = *v56;
        }

        v5 = v63;
        if (v66 > v63)
        {
          v7 = v56;
          v31 = v55;
          if (v56 > v59)
          {
            continue;
          }
        }

        v7 = v56;
        break;
      }
    }

LABEL_51:
    v53 = v66 - v5 + 7;
    if (v66 - v5 >= 0)
    {
      v53 = v66 - v5;
    }

    if (v7 >= v5 && v7 < (v5 + (v53 & 0xFFFFFFFFFFFFFFF8)) && v7 == v5)
    {
      return 1;
    }

    v51 = 8 * (v53 >> 3);
    v52 = v7;
    v49 = v5;
LABEL_57:
    memmove(v52, v49, v51);
    return 1;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v66 = &v5[v11];
  if (v9 < 8 || v7 >= v6)
  {
LABEL_20:
    v7 = v8;
    goto LABEL_51;
  }

  v60 = v6;
  while (1)
  {
    v15 = *v7;
    v62 = v5;
    v16 = *v5;
    v17 = sub_22EFB648C();
    v19 = v18;
    v20 = v15;
    v21 = v16;
    sub_22EF82E7C(v17, v19, &v65);
    if (v4)
    {
      break;
    }

    v22 = v65;
    v23 = sub_22EFB648C();
    sub_22EF82E7C(v23, v24, &v64);
    v25 = v21;

    v26 = v64;
    v27 = sub_22EF71F2C(v22, *(&v22 + 1), v64, *(&v64 + 1));
    sub_22EF708C8(v22, *(&v22 + 1));
    sub_22EF708C8(v26, *(&v26 + 1));

    if ((v27 & 1) == 0)
    {
      v29 = v62;
      v5 = v62 + 1;
      v30 = v60;
      if (v8 == v62)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v8 = *v29;
      goto LABEL_18;
    }

    v28 = v7;
    v29 = v7++;
    v5 = v62;
    v30 = v60;
    if (v8 != v28)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v8;
    if (v5 >= v66 || v7 >= v30)
    {
      goto LABEL_20;
    }
  }

  v49 = v5;
  v50 = v66 - v5 + 7;
  if (v66 - v5 >= 0)
  {
    v50 = v66 - v5;
  }

  if (v8 < v5 || v8 >= (v5 + (v50 & 0xFFFFFFFFFFFFFFF8)) || v8 != v5)
  {
    v51 = 8 * (v50 >> 3);
    v52 = v8;
    goto LABEL_57;
  }

  return 1;
}

uint64_t sub_22EF9AA28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EF9AAB4(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_22EF9AAC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9ABC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AAE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9ADFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9AF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9B06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AB48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9B1A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9AB68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9B2A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EF9AB88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9B3B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9ABA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EF9B4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EF9ABC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E450, &qword_22EFBBCC0);
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

char *sub_22EF9ACD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E628, &qword_22EFBCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9ADFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E748, &qword_22EFBD260);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

void *sub_22EF9AF1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7A8, &qword_22EFBD2C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7B0, &unk_22EFBD2D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EF9B06C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6B0, &qword_22EFBD1B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6B8, &unk_22EFBD1C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9B1A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E600, &qword_22EFBD1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22EF9B2A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
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

void *sub_22EF9B3B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E798, &qword_22EFBD2B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7A0, &qword_22EFBD2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EF9B4E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_22EF9B5D8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EF7DFDC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22EF9B6DC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EF7E200(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22EF9B7D0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_22EF7E464(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_22EFAAC08(&v68, &v3[56 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v19 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_48;
        }

        if (v19 >= ((v55 + 64) >> 6))
        {
          v29 = 0;
          v30 = 0;
          v25 = 0;
          v33 = 0;
          v31 = 0;
          v32 = 0;
LABEL_45:
          v22 = 0xF000000000000000;
          goto LABEL_46;
        }

        v18 = *(v12 + 8 * v19);
        ++v16;
        if (v18)
        {
          v58 = v13;
          goto LABEL_24;
        }
      }
    }

    *(v3 + 2) = v16;
  }

  if (result != v11)
  {
    v17 = v68;
LABEL_14:
    result = sub_22EFA0FD0(v17);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v13 = *(v3 + 2);
  v12 = v69;
  v57 = v68;
  v16 = v71;
  v54 = v69;
  v55 = v70;
  v18 = v72;
  if (!v72)
  {
    goto LABEL_20;
  }

  v58 = *(v3 + 2);
  v19 = v71;
LABEL_24:
  v20 = (v18 - 1) & v18;
  v21 = (*(v57 + 48) + 56 * (__clz(__rbit64(v18)) | (v19 << 6)));
  v22 = v21[1];
  v23 = v21[3];
  v66 = v21[2];
  v25 = v21[4];
  v24 = v21[5];
  v26 = v21[6];
  v63 = *v21;
  sub_22EF70B68(*v21, v22);
  v27 = v23;
  v28 = v23;
  v29 = v26;
  v30 = v24;
  sub_22EF70B68(v28, v25);
  sub_22EF70B68(v24, v29);
  if (v22 >> 60 == 15)
  {
    v31 = v66;
    v32 = v63;
    v33 = v27;
LABEL_46:
    sub_22EFA7FAC(v32, v22, v31, v33, v25, v30, v29);
    v17 = v57;
    goto LABEL_14;
  }

  v65 = v19;
  v34 = v58;
  v31 = v66;
  v32 = v63;
  v33 = v27;
  while (1)
  {
    v35 = v29;
    v36 = *(v3 + 3);
    v56 = v36 >> 1;
    v37 = v33;
    v38 = v31;
    if ((v36 >> 1) < v34 + 1)
    {
      v51 = v3;
      v52 = v34;
      v53 = sub_22EF7E464((v36 > 1), v34 + 1, 1, v51);
      v34 = v52;
      v3 = v53;
      v56 = *(v53 + 3) >> 1;
    }

    v60 = v37;
    v61 = v35;
    v62 = v30;
    v64 = v25;
    v67 = v38;
    if (v34 < v56)
    {
      break;
    }

LABEL_27:
    *(v3 + 2) = v34;
    v31 = v67;
    v33 = v60;
    v29 = v61;
    v30 = v62;
    v25 = v64;
    if (v22 >> 60 == 15)
    {
      goto LABEL_46;
    }
  }

  while (1)
  {
    v39 = v34;
    sub_22EF70B68(v32, v22);
    sub_22EF70B68(v60, v64);
    sub_22EF70B68(v62, v61);
    result = sub_22EFA7FAC(v32, v22, v67, v60, v64, v62, v61);
    v40 = &v3[56 * v39 + 32];
    *v40 = v32;
    v40[1] = v22;
    v40[2] = v67;
    v40[3] = v60;
    v40[4] = v64;
    v40[5] = v62;
    v40[6] = v61;
    v41 = v39 + 1;
    if (!v20)
    {
      break;
    }

    v59 = v41;
    v42 = v65;
LABEL_38:
    v44 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v45 = (*(v57 + 48) + 56 * (v44 | (v42 << 6)));
    v22 = v45[1];
    v46 = v45[3];
    v67 = v45[2];
    v48 = v45[4];
    v47 = v45[5];
    v49 = v45[6];
    v32 = *v45;
    sub_22EF70B68(*v45, v22);
    v60 = v46;
    v64 = v48;
    sub_22EF70B68(v46, v48);
    v61 = v49;
    v62 = v47;
    sub_22EF70B68(v47, v49);
    v34 = v59;
    if (v22 >> 60 == 15 || v59 >= v56)
    {
      goto LABEL_27;
    }
  }

  v43 = v65;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= ((v55 + 64) >> 6))
    {
      v29 = 0;
      v30 = 0;
      v25 = 0;
      v33 = 0;
      v31 = 0;
      v32 = 0;
      *(v3 + 2) = v41;
      goto LABEL_45;
    }

    v20 = *(v54 + 8 * v42);
    ++v43;
    if (v20)
    {
      v59 = v41;
      v65 = v42;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_22EF9BC48(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22EFB67CC();
LABEL_9:
  result = sub_22EFB671C();
  *v2 = result;
  return result;
}

uint64_t sub_22EF9BCE8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2318FB640](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22EF9D11C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22EF9BDD0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_22EFB68DC();
  sub_22EFB61EC();
  v7 = sub_22EFB691C();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_22EF70B68(a2, a3);
    sub_22EF9D240(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_22EF70B68(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_22EF70B68(v18, v17);
      v32 = sub_22EFB603C();
      if (v32)
      {
        v34 = sub_22EFB605C();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_22EF70B68(v18, v17);
    v32 = sub_22EFB603C();
    if (v32)
    {
      v33 = sub_22EFB605C();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_22EFB604C();
    a3 = v44;
    sub_22EF92D44(v32, a2, v44, v50);
    sub_22EF708C8(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_22EF70B68(v18, v17);
LABEL_60:
  sub_22EF92D44(v50, a2, a3, &v49);
  sub_22EF708C8(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_22EF708C8(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_22EF70B68(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_22EF9C258(uint64_t a1, uint64_t *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  sub_22EFB68DC();
  v6 = *a2;
  v5 = a2[1];
  sub_22EFB61EC();
  v7 = a2[2];
  v8 = a2[3];
  sub_22EFB61EC();
  v75 = a2;
  v88 = *(a2 + 32);
  MEMORY[0x2318FB660]();
  v9 = sub_22EFB691C();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v5 == 0xC000000000000000;
    }

    v15 = !v14;
    v90 = v15;
    v16 = v5 >> 62;
    v17 = __OFSUB__(HIDWORD(v6), v6);
    v84 = v17;
    v83 = HIDWORD(v6) - v6;
    v80 = v4;
    v81 = v5;
    v89 = BYTE6(v5);
    v18 = v13;
    if (v7)
    {
      v19 = 0;
    }

    else
    {
      v19 = v8 == 0xC000000000000000;
    }

    v20 = !v19;
    v86 = v20;
    v91 = v8 >> 62;
    v21 = __OFSUB__(HIDWORD(v7), v7);
    v78 = v21;
    v77 = v8;
    v85 = BYTE6(v8);
    v79 = v6;
    v82 = v4 + 56;
    v87 = v18;
    v92 = v16;
    while (1)
    {
      v22 = *(v4 + 48) + 40 * v12;
      v24 = *v22;
      v23 = *(v22 + 8);
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = v23 >> 62;
      if (v23 >> 62 == 3)
      {
        break;
      }

      if (v28 > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_46;
        }

        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        v37 = __OFSUB__(v35, v36);
        v34 = v35 - v36;
        if (v37)
        {
          goto LABEL_130;
        }

        if (v16 <= 1)
        {
          goto LABEL_43;
        }
      }

      else if (v28)
      {
        LODWORD(v34) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_129;
        }

        v34 = v34;
        if (v16 <= 1)
        {
LABEL_43:
          v38 = v89;
          if (v16)
          {
            v38 = v83;
            if (v84)
            {
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v34 = BYTE6(v23);
        if (v16 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_47:
      if (v16 != 2)
      {
        if (v34)
        {
          goto LABEL_23;
        }

LABEL_55:
        v93 = v27;
        v32 = v24;
        v33 = v23;
LABEL_56:
        sub_22EF70B68(v32, v33);
        sub_22EF70B68(v26, v25);
        goto LABEL_57;
      }

      v40 = *(v6 + 16);
      v39 = *(v6 + 24);
      v37 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v37)
      {
        goto LABEL_128;
      }

LABEL_49:
      if (v34 != v38)
      {
        goto LABEL_23;
      }

      if (v34 < 1)
      {
        goto LABEL_55;
      }

      v93 = v27;
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v55 = *(v24 + 16);
          v54 = *(v24 + 24);
          sub_22EF70B68(v24, v23);
          sub_22EF70B68(v26, v25);
          v56 = sub_22EFB603C();
          if (v56)
          {
            v57 = sub_22EFB605C();
            if (__OFSUB__(v55, v57))
            {
              goto LABEL_137;
            }

            v56 += v55 - v57;
          }

          if (__OFSUB__(v54, v55))
          {
            goto LABEL_136;
          }

LABEL_112:
          sub_22EFB604C();
          v63 = v56;
          v6 = v79;
          sub_22EF92D44(v63, v79, v81, v95);
          v4 = v80;
          v10 = v82;
          v18 = v87;
          if ((v95[0] & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_57;
        }

        *&v95[6] = 0;
        *v95 = 0;
        sub_22EF70B68(v24, v23);
        sub_22EF70B68(v26, v25);
      }

      else
      {
        if (v28)
        {
          if (v24 >> 32 < v24)
          {
            goto LABEL_135;
          }

          sub_22EF70B68(v24, v23);
          sub_22EF70B68(v26, v25);
          v56 = sub_22EFB603C();
          if (v56)
          {
            v62 = sub_22EFB605C();
            if (__OFSUB__(v24, v62))
            {
              goto LABEL_138;
            }

            v56 += v24 - v62;
          }

          goto LABEL_112;
        }

        *v95 = v24;
        *&v95[8] = v23;
        v95[10] = BYTE2(v23);
        v95[11] = BYTE3(v23);
        v95[12] = BYTE4(v23);
        v95[13] = BYTE5(v23);
        sub_22EF70B68(v24, v23);
        sub_22EF70B68(v26, v25);
        v10 = v82;
      }

      sub_22EF92D44(v95, v6, v81, &v94);
      v18 = v87;
      if ((v94 & 1) == 0)
      {
LABEL_22:
        sub_22EF708C8(v24, v23);
        sub_22EF708C8(v26, v25);
        v16 = v92;
        goto LABEL_23;
      }

LABEL_57:
      v41 = v25 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v42 = 0;
        }

        else
        {
          v42 = v25 == 0xC000000000000000;
        }

        v43 = v91;
        v45 = !v42 || v91 < 3;
        if (((v45 | v86) & 1) == 0)
        {
          sub_22EF708C8(v24, v23);
          v46 = 0;
          v47 = 0xC000000000000000;
          goto LABEL_91;
        }

LABEL_79:
        v48 = 0;
        if (v43 <= 1)
        {
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      v43 = v91;
      if (v41 > 1)
      {
        if (v41 != 2)
        {
          goto LABEL_79;
        }

        v50 = *(v26 + 16);
        v49 = *(v26 + 24);
        v37 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v37)
        {
          goto LABEL_134;
        }

        if (v91 <= 1)
        {
          goto LABEL_76;
        }
      }

      else if (v41)
      {
        LODWORD(v48) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_133;
        }

        v48 = v48;
        if (v91 <= 1)
        {
LABEL_76:
          v51 = v85;
          if (v43)
          {
            v51 = HIDWORD(v7) - v7;
            if (v78)
            {
              goto LABEL_132;
            }
          }

          goto LABEL_82;
        }
      }

      else
      {
        v48 = BYTE6(v25);
        if (v91 <= 1)
        {
          goto LABEL_76;
        }
      }

LABEL_80:
      if (v43 != 2)
      {
        if (v48)
        {
          goto LABEL_22;
        }

LABEL_90:
        sub_22EF708C8(v24, v23);
        v46 = v26;
        v47 = v25;
LABEL_91:
        sub_22EF708C8(v46, v47);
        v16 = v92;
        if (v88 == v93)
        {
          goto LABEL_126;
        }

        goto LABEL_23;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      v37 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (v37)
      {
        goto LABEL_131;
      }

LABEL_82:
      if (v48 != v51)
      {
        goto LABEL_22;
      }

      if (v48 < 1)
      {
        goto LABEL_90;
      }

      if (v41 > 1)
      {
        if (v41 != 2)
        {
          *&v95[6] = 0;
          *v95 = 0;
          goto LABEL_123;
        }

        v58 = *(v26 + 16);
        v59 = *(v26 + 24);
        v60 = sub_22EFB603C();
        if (v60)
        {
          v61 = sub_22EFB605C();
          if (__OFSUB__(v58, v61))
          {
            goto LABEL_141;
          }

          v60 += v58 - v61;
        }

        if (__OFSUB__(v59, v58))
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (!v41)
        {
          *v95 = v26;
          *&v95[8] = v25;
          v95[10] = BYTE2(v25);
          v95[11] = BYTE3(v25);
          v95[12] = BYTE4(v25);
          v95[13] = BYTE5(v25);
LABEL_123:
          sub_22EF92D44(v95, v7, v77, &v94);
          sub_22EF708C8(v24, v23);
          sub_22EF708C8(v26, v25);
          v65 = v94;
          goto LABEL_124;
        }

        if (v26 >> 32 < v26)
        {
          goto LABEL_139;
        }

        v60 = sub_22EFB603C();
        if (v60)
        {
          v64 = sub_22EFB605C();
          if (__OFSUB__(v26, v64))
          {
            goto LABEL_142;
          }

          v60 += v26 - v64;
        }
      }

      sub_22EFB604C();
      sub_22EF92D44(v60, v7, v77, v95);
      sub_22EF708C8(v24, v23);
      sub_22EF708C8(v26, v25);
      v65 = v95[0];
      v6 = v79;
      v4 = v80;
      v10 = v82;
LABEL_124:
      v18 = v87;
      v16 = v92;
      if (v65 && ((v88 ^ v93) & 1) == 0)
      {
LABEL_126:
        sub_22EFA8050(v75);
        v66 = *(v4 + 48) + 40 * v12;
        v67 = *v66;
        v68 = *(v66 + 8);
        v69 = *(v66 + 16);
        v70 = *(v66 + 24);
        LOBYTE(v66) = *(v66 + 32);
        *a1 = v67;
        *(a1 + 8) = v68;
        *(a1 + 16) = v69;
        *(a1 + 24) = v70;
        *(a1 + 32) = v66;
        sub_22EF70B68(v67, v68);
        sub_22EF70B68(v69, v70);
        return 0;
      }

LABEL_23:
      v12 = (v12 + 1) & v18;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    if (v24)
    {
      v29 = 0;
    }

    else
    {
      v29 = v23 == 0xC000000000000000;
    }

    v31 = !v29 || v16 < 3;
    if (((v31 | v90) & 1) == 0)
    {
      v93 = v27;
      v32 = 0;
      v33 = 0xC000000000000000;
      goto LABEL_56;
    }

LABEL_46:
    v34 = 0;
    if (v16 <= 1)
    {
      goto LABEL_43;
    }

    goto LABEL_47;
  }

LABEL_127:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v74;
  sub_22EFA8018(v75, v95);
  sub_22EF9D6B8(v75, v12, isUniquelyReferenced_nonNull_native);
  *v74 = v94;
  v73 = *(v75 + 1);
  *a1 = *v75;
  *(a1 + 16) = v73;
  *(a1 + 32) = *(v75 + 32);
  return 1;
}

uint64_t sub_22EF9CB1C(uint64_t a1, uint64_t *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  sub_22EFB68DC();
  v5 = *a2;
  v6 = a2[1];
  sub_22EFB61EC();
  v72 = a2[2];
  MEMORY[0x2318FB660]();
  v7 = sub_22EFB691C();
  v8 = v4 + 56;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  v61 = a2;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v60;
    sub_22EF70CC4(v61, v76);
    sub_22EF9DFAC(v61, v10, isUniquelyReferenced_nonNull_native);
    *v60 = v75;
    v49 = *(v61 + 1);
    *a1 = *v61;
    *(a1 + 16) = v49;
    *(a1 + 32) = *(v61 + 2);
    *(a1 + 48) = v61[6];
    return 1;
  }

  v11 = ~v9;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6 == 0xC000000000000000;
  }

  v13 = !v12;
  v14 = v6 >> 62;
  v15 = __OFSUB__(HIDWORD(v5), v5);
  v69 = v15;
  v67 = v6;
  v68 = HIDWORD(v5) - v5;
  v16 = BYTE6(v6);
  v74 = v5;
  v17 = 0;
  v18 = v72;
  v65 = ~v9;
  v66 = v4 + 56;
  v64 = v13;
  v63 = BYTE6(v6);
  v59 = v4;
  while (1)
  {
    v19 = (*(v4 + 48) + 56 * v10);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = v19[4];
    v25 = v19[5];
    v26 = v19[6];
    v27 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v28 = 0;
      }

      else
      {
        v28 = v20 == 0xC000000000000000;
      }

      v30 = !v28 || v14 < 3;
      if (((v30 | v13) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_37:
      v31 = 0;
      if (v14 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v27 <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      goto LABEL_37;
    }

    v33 = *(v21 + 16);
    v32 = *(v21 + 24);
    v34 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v34)
    {
      goto LABEL_66;
    }

    if (v14 <= 1)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (v14 == 2)
    {
      v37 = *(v74 + 16);
      v36 = *(v74 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_65;
      }

      goto LABEL_40;
    }

    if (!v31)
    {
      goto LABEL_13;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  if (!v27)
  {
    v31 = BYTE6(v20);
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  LODWORD(v31) = HIDWORD(v21) - v21;
  if (__OFSUB__(HIDWORD(v21), v21))
  {
    goto LABEL_67;
  }

  v31 = v31;
  if (v14 > 1)
  {
    goto LABEL_38;
  }

LABEL_34:
  v35 = v16;
  if (v14)
  {
    v35 = v68;
    if (v69)
    {
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
    }
  }

LABEL_40:
  if (v31 != v35)
  {
    goto LABEL_14;
  }

  if (v31 >= 1)
  {
    v73 = v26;
    if (v27 > 1)
    {
      v70 = v25;
      if (v27 == 2)
      {
        v71 = v17;
        v41 = *(v21 + 16);
        v58 = *(v21 + 24);
        sub_22EF70B68(v21, v20);
        sub_22EF70B68(v23, v24);
        sub_22EF70B68(v25, v73);
        v42 = sub_22EFB603C();
        if (v42)
        {
          v43 = sub_22EFB605C();
          if (__OFSUB__(v41, v43))
          {
            goto LABEL_70;
          }

          v42 += v41 - v43;
        }

        if (__OFSUB__(v58, v41))
        {
          goto LABEL_69;
        }

        goto LABEL_58;
      }

      *&v76[6] = 0;
      *v76 = 0;
      sub_22EF70B68(v21, v20);
      sub_22EF70B68(v23, v24);
      sub_22EF70B68(v25, v73);
      sub_22EF92D44(v76, v74, v67, &v75);
      sub_22EF708C8(v21, v20);
      sub_22EF708C8(v23, v24);
      v39 = v25;
      v40 = v73;
LABEL_60:
      sub_22EF708C8(v39, v40);
      v47 = v75;
    }

    else
    {
      v71 = v17;
      if (!v27)
      {
        *v76 = v21;
        *&v76[8] = v20;
        v76[10] = BYTE2(v20);
        v76[11] = BYTE3(v20);
        v76[12] = BYTE4(v20);
        v76[13] = BYTE5(v20);
        v38 = v26;
        sub_22EF70B68(v21, v20);
        sub_22EF70B68(v23, v24);
        sub_22EF70B68(v25, v38);
        v17 = v71;
        sub_22EF92D44(v76, v74, v67, &v75);
        sub_22EF708C8(v21, v20);
        sub_22EF708C8(v23, v24);
        v39 = v25;
        v40 = v73;
        goto LABEL_60;
      }

      if (v21 >> 32 < v21)
      {
        goto LABEL_68;
      }

      v44 = v25;
      v45 = v26;
      sub_22EF70B68(v21, v20);
      sub_22EF70B68(v23, v24);
      v70 = v44;
      sub_22EF70B68(v44, v45);
      v42 = sub_22EFB603C();
      if (v42)
      {
        v46 = sub_22EFB605C();
        if (__OFSUB__(v21, v46))
        {
          goto LABEL_71;
        }

        v42 += v21 - v46;
      }

LABEL_58:
      sub_22EFB604C();
      v17 = v71;
      sub_22EF92D44(v42, v74, v67, v76);
      sub_22EF708C8(v21, v20);
      sub_22EF708C8(v23, v24);
      sub_22EF708C8(v70, v73);
      v47 = v76[0];
      v4 = v59;
    }

    v18 = v72;
    v11 = v65;
    v8 = v66;
    v13 = v64;
    v16 = v63;
    if (!v47)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  if (v22 != v18)
  {
    goto LABEL_14;
  }

  sub_22EF70CFC(v61);
  v51 = *(v4 + 48) + 56 * v10;
  v52 = *v51;
  v53 = *(v51 + 24);
  v54 = *(v51 + 32);
  v55 = *(v51 + 40);
  v56 = *(v51 + 48);
  *a1 = *v51;
  v57 = *(v51 + 8);
  *(a1 + 8) = v57;
  *(a1 + 24) = v53;
  *(a1 + 32) = v54;
  *(a1 + 40) = v55;
  *(a1 + 48) = v56;
  sub_22EF70B68(v52, v57);
  sub_22EF70B68(v53, v54);
  sub_22EF70B68(v55, v56);
  return 0;
}

uint64_t sub_22EF9D11C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22EF94BAC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22EF9E6EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22EF9EF0C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2318FB640](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22EFB686C();
  __break(1u);
  return result;
}

uint64_t sub_22EF9D240(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22EF94DDC(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_22EF9E82C();
        goto LABEL_68;
      }

      sub_22EF9F100(v8 + 1);
    }

    v10 = *v4;
    sub_22EFB68DC();
    sub_22EFB61EC();
    result = sub_22EFB691C();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_22EF70B68(v20, v19);
              v34 = sub_22EFB603C();
              if (v34)
              {
                v35 = sub_22EFB605C();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_22EF70B68(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_22EF70B68(v20, v19);
              v34 = sub_22EFB603C();
              if (v34)
              {
                v36 = sub_22EFB605C();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              sub_22EFB604C();
              v7 = v41;
              a2 = v42;
              sub_22EF92D44(v34, v41, v42, v50);
              result = sub_22EF708C8(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_22EF70B68(v20, v19);
            v13 = v46;
          }

          sub_22EF92D44(v50, v7, a2, &v49);
          result = sub_22EF708C8(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = sub_22EFB686C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
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
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

uint64_t sub_22EF9D6B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v96 = *MEMORY[0x277D85DE8];
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22EF9503C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_22EF9E988();
        goto LABEL_134;
      }

      sub_22EF9F33C(v7 + 1);
    }

    v9 = *v3;
    sub_22EFB68DC();
    v10 = *v6;
    v11 = *(v6 + 8);
    sub_22EFB61EC();
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    sub_22EFB61EC();
    v85 = *(v6 + 32);
    MEMORY[0x2318FB660]();
    result = sub_22EFB691C();
    v14 = -1 << *(v9 + 32);
    a2 = result & ~v14;
    v93 = v9 + 56;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = v9;
      v92 = ~v14;
      if (v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == 0xC000000000000000;
      }

      v17 = !v16;
      v89 = v17;
      v18 = v10;
      v19 = v11 >> 62;
      v87 = v18;
      v20 = HIDWORD(v18) - v18;
      v21 = __OFSUB__(HIDWORD(v18), v18);
      v82 = v21;
      v80 = v12;
      v81 = v20;
      v88 = BYTE6(v11);
      if (v12)
      {
        v22 = 0;
      }

      else
      {
        v22 = v13 == 0xC000000000000000;
      }

      v23 = !v22;
      v84 = v23;
      v90 = v13 >> 62;
      v24 = __OFSUB__(HIDWORD(v12), v12);
      v76 = v24;
      v74 = v13;
      v75 = HIDWORD(v12) - v12;
      v83 = BYTE6(v13);
      v77 = v4;
      v78 = v6;
      v79 = v9;
      v25 = v11;
      v86 = v11;
      while (1)
      {
        v26 = *(v15 + 48) + 40 * a2;
        v28 = *v26;
        v27 = *(v26 + 8);
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        v31 = *(v26 + 32);
        v32 = v27 >> 62;
        if (v27 >> 62 == 3)
        {
          break;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_53;
          }

          v40 = *(v28 + 16);
          v39 = *(v28 + 24);
          v41 = __OFSUB__(v39, v40);
          v38 = v39 - v40;
          if (v41)
          {
            goto LABEL_139;
          }

          if (v19 <= 1)
          {
            goto LABEL_50;
          }
        }

        else if (v32)
        {
          LODWORD(v38) = HIDWORD(v28) - v28;
          if (__OFSUB__(HIDWORD(v28), v28))
          {
            goto LABEL_138;
          }

          v38 = v38;
          if (v19 <= 1)
          {
LABEL_50:
            v42 = v88;
            if (v19)
            {
              v42 = v81;
              if (v82)
              {
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
              }
            }

            goto LABEL_56;
          }
        }

        else
        {
          v38 = BYTE6(v27);
          if (v19 <= 1)
          {
            goto LABEL_50;
          }
        }

LABEL_54:
        if (v19 != 2)
        {
          if (v38)
          {
            goto LABEL_30;
          }

LABEL_62:
          v91 = v31;
          v36 = v28;
          v37 = v27;
LABEL_63:
          sub_22EF70B68(v36, v37);
          sub_22EF70B68(v30, v29);
          goto LABEL_64;
        }

        v44 = *(v87 + 16);
        v43 = *(v87 + 24);
        v41 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (v41)
        {
          goto LABEL_136;
        }

LABEL_56:
        if (v38 != v42)
        {
          goto LABEL_30;
        }

        if (v38 < 1)
        {
          goto LABEL_62;
        }

        v91 = v31;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            v58 = *(v28 + 16);
            v59 = *(v28 + 24);
            sub_22EF70B68(v28, v27);
            sub_22EF70B68(v30, v29);
            v60 = sub_22EFB603C();
            if (v60)
            {
              v61 = sub_22EFB605C();
              if (__OFSUB__(v58, v61))
              {
                goto LABEL_146;
              }

              v60 += v58 - v61;
            }

            if (__OFSUB__(v59, v58))
            {
              goto LABEL_145;
            }

LABEL_119:
            sub_22EFB604C();
            sub_22EF92D44(v60, v87, v86, v95);
            v25 = v86;
            v4 = v77;
            v6 = v78;
            v15 = v79;
            if ((v95[0] & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_64;
          }

          *&v95[6] = 0;
          *v95 = 0;
          sub_22EF70B68(v28, v27);
          sub_22EF70B68(v30, v29);
        }

        else
        {
          if (v32)
          {
            if (v28 >> 32 < v28)
            {
              goto LABEL_144;
            }

            sub_22EF70B68(v28, v27);
            sub_22EF70B68(v30, v29);
            v60 = sub_22EFB603C();
            if (v60)
            {
              v66 = sub_22EFB605C();
              if (__OFSUB__(v28, v66))
              {
                goto LABEL_147;
              }

              v60 += v28 - v66;
            }

            goto LABEL_119;
          }

          *v95 = v28;
          *&v95[8] = v27;
          v95[10] = BYTE2(v27);
          v95[11] = BYTE3(v27);
          v95[12] = BYTE4(v27);
          v95[13] = BYTE5(v27);
          sub_22EF70B68(v28, v27);
          sub_22EF70B68(v30, v29);
          v15 = v79;
        }

        sub_22EF92D44(v95, v87, v25, v94);
        v25 = v86;
        if (!v94[0])
        {
LABEL_29:
          sub_22EF708C8(v28, v27);
          result = sub_22EF708C8(v30, v29);
          goto LABEL_30;
        }

LABEL_64:
        v45 = v29 >> 62;
        if (v29 >> 62 == 3)
        {
          if (v30)
          {
            v46 = 0;
          }

          else
          {
            v46 = v29 == 0xC000000000000000;
          }

          v47 = v90;
          v49 = !v46 || v90 < 3;
          if (((v49 | v84) & 1) == 0)
          {
            sub_22EF708C8(v28, v27);
            v50 = 0;
            v51 = 0xC000000000000000;
            goto LABEL_98;
          }

LABEL_86:
          v52 = 0;
          if (v47 <= 1)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }

        v47 = v90;
        if (v45 > 1)
        {
          if (v45 != 2)
          {
            goto LABEL_86;
          }

          v54 = *(v30 + 16);
          v53 = *(v30 + 24);
          v41 = __OFSUB__(v53, v54);
          v52 = v53 - v54;
          if (v41)
          {
            goto LABEL_143;
          }

          if (v90 <= 1)
          {
            goto LABEL_83;
          }
        }

        else if (v45)
        {
          LODWORD(v52) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_142;
          }

          v52 = v52;
          if (v90 <= 1)
          {
LABEL_83:
            v55 = v83;
            if (v47)
            {
              v55 = v75;
              if (v76)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_89;
          }
        }

        else
        {
          v52 = BYTE6(v29);
          if (v90 <= 1)
          {
            goto LABEL_83;
          }
        }

LABEL_87:
        if (v47 != 2)
        {
          if (v52)
          {
            goto LABEL_29;
          }

LABEL_97:
          sub_22EF708C8(v28, v27);
          v50 = v30;
          v51 = v29;
LABEL_98:
          result = sub_22EF708C8(v50, v51);
          if (v85 == v91)
          {
            goto LABEL_133;
          }

          goto LABEL_30;
        }

        v57 = *(v80 + 16);
        v56 = *(v80 + 24);
        v41 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (v41)
        {
          goto LABEL_141;
        }

LABEL_89:
        if (v52 != v55)
        {
          goto LABEL_29;
        }

        if (v52 < 1)
        {
          goto LABEL_97;
        }

        if (v45 > 1)
        {
          if (v45 != 2)
          {
            *&v95[6] = 0;
            *v95 = 0;
            goto LABEL_130;
          }

          v62 = *(v30 + 16);
          v63 = *(v30 + 24);
          v64 = sub_22EFB603C();
          if (v64)
          {
            v65 = sub_22EFB605C();
            if (__OFSUB__(v62, v65))
            {
              goto LABEL_150;
            }

            v64 += v62 - v65;
          }

          if (__OFSUB__(v63, v62))
          {
            goto LABEL_149;
          }
        }

        else
        {
          if (!v45)
          {
            *v95 = v30;
            *&v95[8] = v29;
            v95[10] = BYTE2(v29);
            v95[11] = BYTE3(v29);
            v95[12] = BYTE4(v29);
            v95[13] = BYTE5(v29);
LABEL_130:
            sub_22EF92D44(v95, v80, v74, v94);
            sub_22EF708C8(v28, v27);
            result = sub_22EF708C8(v30, v29);
            v68 = v94[0];
            goto LABEL_131;
          }

          if (v30 >> 32 < v30)
          {
            goto LABEL_148;
          }

          v64 = sub_22EFB603C();
          if (v64)
          {
            v67 = sub_22EFB605C();
            if (__OFSUB__(v30, v67))
            {
              goto LABEL_151;
            }

            v64 += v30 - v67;
          }
        }

        sub_22EFB604C();
        sub_22EF92D44(v64, v80, v74, v95);
        sub_22EF708C8(v28, v27);
        result = sub_22EF708C8(v30, v29);
        v68 = v95[0];
        v4 = v77;
        v6 = v78;
        v15 = v79;
LABEL_131:
        v25 = v86;
        if (v68 && ((v85 ^ v91) & 1) == 0)
        {
LABEL_133:
          result = sub_22EFB686C();
          __break(1u);
          goto LABEL_134;
        }

LABEL_30:
        a2 = (a2 + 1) & v92;
        if (((*(v93 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_134;
        }
      }

      if (v28)
      {
        v33 = 0;
      }

      else
      {
        v33 = v27 == 0xC000000000000000;
      }

      v35 = !v33 || v19 < 3;
      if (((v35 | v89) & 1) == 0)
      {
        v91 = v31;
        v36 = 0;
        v37 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_53:
      v38 = 0;
      if (v19 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

LABEL_134:
  v69 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v70 = *(v69 + 48) + 40 * a2;
  v71 = *(v6 + 16);
  *v70 = *v6;
  *(v70 + 16) = v71;
  *(v70 + 32) = *(v6 + 32);
  v72 = *(v69 + 16);
  v41 = __OFADD__(v72, 1);
  v73 = v72 + 1;
  if (v41)
  {
    goto LABEL_137;
  }

  *(v69 + 16) = v73;
  return result;
}

uint64_t sub_22EF9DFAC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v64 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_73;
  }

  if (a3)
  {
    sub_22EF952E4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22EF9EB0C();
      goto LABEL_73;
    }

    sub_22EF9F5DC(v6 + 1);
  }

  v8 = *v3;
  sub_22EFB68DC();
  v9 = *v5;
  v10 = v5[1];
  sub_22EFB61EC();
  v62 = v5[2];
  MEMORY[0x2318FB660]();
  result = sub_22EFB691C();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_73:
    v48 = *v63;
    *(*v63 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v49 = *(v48 + 48) + 56 * a2;
    v50 = *(v64 + 16);
    *v49 = *v64;
    *(v49 + 16) = v50;
    *(v49 + 32) = *(v64 + 32);
    *(v49 + 48) = *(v64 + 48);
    v51 = *(v48 + 16);
    v36 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v36)
    {
      *(v48 + 16) = v52;
      return result;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  v13 = v8;
  v14 = ~v12;
  if (v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10 == 0xC000000000000000;
  }

  v16 = !v15;
  v17 = v10 >> 62;
  v18 = __OFSUB__(HIDWORD(v9), v9);
  v61 = v18;
  v59 = v10;
  v60 = HIDWORD(v9) - v9;
  v19 = BYTE6(v10);
  result = 56;
  v54 = v8;
  v55 = BYTE6(v10);
  v65 = v9;
  v20 = v62;
  v57 = ~v12;
  v58 = v8 + 56;
  v56 = v16;
  while (1)
  {
    v21 = (*(v13 + 48) + 56 * a2);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
    v27 = v21[4];
    v26 = v21[5];
    v28 = v21[6];
    v29 = v23 >> 62;
    if (v23 >> 62 == 3)
    {
      if (v22)
      {
        v30 = 0;
      }

      else
      {
        v30 = v23 == 0xC000000000000000;
      }

      v32 = !v30 || v17 < 3;
      if (((v32 | v16) & 1) == 0)
      {
LABEL_19:
        if (v25 == v20)
        {
          break;
        }

        goto LABEL_20;
      }

LABEL_43:
      v33 = 0;
      if (v17 <= 1)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_43;
      }

      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      v36 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v36)
      {
        goto LABEL_79;
      }

      if (v17 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v29)
    {
      LODWORD(v33) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_78;
      }

      v33 = v33;
      if (v17 <= 1)
      {
LABEL_40:
        v37 = v19;
        if (v17)
        {
          v37 = v60;
          if (v61)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v33 = BYTE6(v23);
      if (v17 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v17 != 2)
    {
      if (!v33)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v39 = *(v9 + 16);
    v38 = *(v9 + 24);
    v36 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (v36)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_46:
    if (v33 != v37)
    {
      goto LABEL_20;
    }

    if (v33 < 1)
    {
      goto LABEL_19;
    }

    v67 = v26;
    if (v29 > 1)
    {
      v66 = v28;
      if (v29 != 2)
      {
        *&v69[6] = 0;
        *v69 = 0;
        sub_22EF70B68(v22, v23);
        sub_22EF70B68(v24, v27);
        sub_22EF70B68(v67, v28);
        goto LABEL_68;
      }

      v41 = *(v22 + 16);
      v53 = *(v22 + 24);
      sub_22EF70B68(v22, v23);
      sub_22EF70B68(v24, v27);
      sub_22EF70B68(v67, v28);
      v42 = sub_22EFB603C();
      if (v42)
      {
        v43 = sub_22EFB605C();
        if (__OFSUB__(v41, v43))
        {
          goto LABEL_82;
        }

        v42 += v41 - v43;
      }

      if (__OFSUB__(v53, v41))
      {
        goto LABEL_81;
      }

LABEL_66:
      sub_22EFB604C();
      sub_22EF92D44(v42, v65, v59, v69);
      sub_22EF708C8(v22, v23);
      sub_22EF708C8(v24, v27);
      sub_22EF708C8(v67, v66);
      v47 = v69[0];
      v13 = v54;
      goto LABEL_69;
    }

    if (v29)
    {
      if (v22 >> 32 < v22)
      {
        goto LABEL_80;
      }

      v44 = v28;
      v45 = v26;
      sub_22EF70B68(v22, v23);
      sub_22EF70B68(v24, v27);
      v66 = v44;
      sub_22EF70B68(v45, v44);
      v42 = sub_22EFB603C();
      if (v42)
      {
        v46 = sub_22EFB605C();
        if (__OFSUB__(v22, v46))
        {
          goto LABEL_83;
        }

        v42 += v22 - v46;
      }

      goto LABEL_66;
    }

    *v69 = v22;
    *&v69[8] = v23;
    v69[10] = BYTE2(v23);
    v69[11] = BYTE3(v23);
    v69[12] = BYTE4(v23);
    v69[13] = BYTE5(v23);
    v40 = v26;
    sub_22EF70B68(v22, v23);
    sub_22EF70B68(v24, v27);
    sub_22EF70B68(v40, v28);
    v13 = v54;
LABEL_68:
    sub_22EF92D44(v69, v9, v59, &v68);
    sub_22EF708C8(v22, v23);
    sub_22EF708C8(v24, v27);
    sub_22EF708C8(v67, v28);
    v47 = v68;
LABEL_69:
    v20 = v62;
    v14 = v57;
    v11 = v58;
    v16 = v56;
    v19 = v55;
    result = 56;
    if (!v47)
    {
      v9 = v65;
      goto LABEL_20;
    }

    v9 = v65;
    if (v25 == v62)
    {
      break;
    }

LABEL_20:
    a2 = (a2 + 1) & v14;
    if (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  result = sub_22EFB686C();
  __break(1u);
  return result;
}

void sub_22EF9E594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E750, &qword_22EFBD268);
  v2 = *v0;
  v3 = sub_22EFB669C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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
}

void *sub_22EF9E6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E740, &qword_22EFBD258);
  v2 = *v0;
  v3 = sub_22EFB669C();
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