void *sub_26D343C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEF8, &unk_26D3A29C0);
  v2 = *v0;
  v3 = sub_26D3A1398();
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

uint64_t sub_26D343DD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FAEC0, &qword_26D3A29B8);
  result = sub_26D3A13A8();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_26D3A1568();
      MEMORY[0x26D6BDD90](v16);
      result = sub_26D3A1588();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26D343FF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE58, &qword_26D3A2958);
  result = sub_26D3A13A8();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26D3A1568();

      sub_26D3A0FD8();
      result = sub_26D3A1588();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26D344230(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF08, &qword_26D3A29D0);
  result = sub_26D3A13A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_26D3A0F98();
      sub_26D3A1568();
      v18 = v17;
      sub_26D3A0FD8();
      v19 = sub_26D3A1588();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26D344484(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEF8, &unk_26D3A29C0);
  result = sub_26D3A13A8();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26D3A1558();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void *sub_26D344698(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26D344798(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 56) + 16 * v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      *(a2 + 8) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_26D3448FC(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = sub_26D33E5F4(v4, v1, &qword_2804FADB8, 0x277D75BC0);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_26D3A1488();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB0F8, &qword_26D3A2E18);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D344AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ComponentSize(0);
  v4 = v3;
  v5 = sub_26D33E2B0(&qword_2804FAEB8, type metadata accessor for ComponentSize, &unk_26D3A2600);
  result = MEMORY[0x26D6BD940](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_26D342474(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_26D344BA8(uint64_t a1)
{
  if ((a1 - 4) > 8)
  {
    return 6;
  }

  else
  {
    return byte_26D3A3160[a1 - 4];
  }
}

uint64_t sub_26D344BCC(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = sub_26D3A1488();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = sub_26D3A1488();
    result = sub_26D3A1488();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = sub_26D3A1488();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    sub_26D345E5C(0, &qword_2804FADB8, 0x277D75BC0);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_26D3A13D8();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_26D3A1498();
}

unint64_t sub_26D344D28(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_26D33F2EC(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_26D33FD14(v15, a2 & 1);
      result = sub_26D33F2EC(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v28 = result;
    sub_26D33F768();
    result = v28;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v29 = (v18[6] + 16 * result);
      *v29 = v8;
      v29[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v30 = v18[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v31;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v33 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_26D33EB6C(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v24 - *(v19 + 2) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v19 + 2);
        v14 = __OFADD__(v26, v20);
        v27 = v26 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v33) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26D3A1548();
  __break(1u);
  return result;
}

uint64_t sub_26D344F90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v9 = a4;
  v10 = a3;
  v12 = a1;
  v13 = sub_26D39C058(a3, a4, a1, a8);
  v181 = v15;
  v182 = v14;
  v180 = v16;
  v196 = v10;
  v198 = v9;
  v17 = sub_26D39C058(v10, v9, v12, v13);
  v20 = v18 + v19;
  v201 = v12;
  sub_26D39C90C(v12, v17);
  v22 = v21 + v20;
  if (v22 < a8)
  {
    v23 = a8;
  }

  else
  {
    v23 = v22;
  }

  v24 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_157:
    v25 = sub_26D3A1488();
  }

  else
  {
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v23 - v20;
  if (v25)
  {
    v26 = 0;
    v200 = MEMORY[0x277D84F90];
    while (2)
    {
      v27 = v26;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v28 = sub_26D33E5F4(v27, a2, &qword_2804FB390, 0x277D75BC8);
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_155;
          }

          v28 = *(a2 + 8 * v27 + 32);
        }

        v29 = v28;
        v26 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v30 = [v28 components];
        sub_26D345E5C(0, &qword_2804FADB8, 0x277D75BC0);
        v31 = sub_26D3A1058();

        v32 = v31 >> 62 ? sub_26D3A1488() : *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v32)
        {
          break;
        }

        ++v27;
        if (v26 == v25)
        {
          goto LABEL_27;
        }
      }

      v33 = [v29 identifier];
      v199 = sub_26D3A0F98();
      v35 = v34;

      v36 = sub_26D334DD0(v201, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_26D33E920(0, v200[2] + 1, 1, v200);
      }

      v38 = v200[2];
      v37 = v200[3];
      if (v38 >= v37 >> 1)
      {
        v200 = sub_26D33E920((v37 > 1), v38 + 1, 1, v200);
      }

      v200[2] = v38 + 1;
      v39 = &v200[3 * v38];
      v39[4] = v199;
      v39[5] = v35;
      v39[6] = v36;
      if (v26 != v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v200 = MEMORY[0x277D84F90];
  }

LABEL_27:
  if (v200[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE40, &qword_26D3A2940);
    v40 = sub_26D3A14D8();
  }

  else
  {
    v40 = MEMORY[0x277D84F98];
  }

  v202 = v40;
  sub_26D344D28(v200, 1, &v202);

  v41 = v202;
  v202 = MEMORY[0x277D84FA0];

  v42 = sub_26D335F88(a2);

  v43 = *(v42 + 2);
  v184 = v42 + 32;

  a2 = 0;
  v44 = 0;
  v188 = v42;
  v45 = v42 + 40;
  v46 = MEMORY[0x277D84F90];
  v187 = v43;
LABEL_31:
  if (a2 != v43)
  {
    v47 = &v45[16 * a2];
    do
    {
      if (a2 >= *(v188 + 2))
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (*(v41 + 16))
      {
        v49 = *(v47 - 1);
        v48 = *v47;

        v50 = sub_26D33F2EC(v49, v48);
        if (v51)
        {
          v52 = *(*(v41 + 56) + 8 * v50);

          v53 = *(v52 + 16);

          ++a2;
          v54 = __OFADD__(v44, v53);
          v44 += v53;
          v43 = v187;
          if (!v54)
          {
            goto LABEL_31;
          }

          __break(1u);
          break;
        }
      }

      ++a2;
      v47 += 2;
    }

    while (v187 != a2);
  }

  v56 = sub_26D39C698(v198 & 1, v201, v55);
  if (__OFSUB__(v44, 1))
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v23 = v56;
  v178 = (v44 - 1);
  v179 = v13;
  if (!v187)
  {
    v174 = v188;

    v13 = 0.0;
    goto LABEL_151;
  }

  v176 = v56;
  v177 = v20;
  v57 = 0;
  if (v201 == 4)
  {
    v58 = 2.0;
  }

  else
  {
    v58 = 4.0;
  }

  v59 = 12.0;
  if (v198)
  {
    v59 = 8.0;
  }

  v189 = v59;
  v60 = 6.0;
  if ((v198 & 1) == 0)
  {
    v60 = 8.0;
  }

  v185 = v60;
  v20 = 30.0;
  v13 = 0.0;
  v190 = v41;
  while (1)
  {
    if (v57 >= *(v188 + 2))
    {
      goto LABEL_156;
    }

    v186 = v57;
    if (*(v41 + 16) && (v61 = &v184[16 * v57], v62 = *v61, v63 = v61[1], , v64 = sub_26D33F2EC(v62, v63), v66 = v65, , (v66 & 1) != 0))
    {
      v67 = *(*(v41 + 56) + 8 * v64);
    }

    else
    {
      v67 = v46;
    }

    v193 = *(v67 + 16);
    if (v193)
    {
      break;
    }

LABEL_51:

    v57 = v186 + 1;
    if (v186 + 1 == v187)
    {
      goto LABEL_149;
    }
  }

  v68 = 0;
  v191 = v67;
  v192 = v67 + 32;
  do
  {
    v69 = *(v192 + 16 * v68 + 8);
    if (v69 >> 62)
    {
      v70 = sub_26D3A1488();
      if (!v70)
      {
        goto LABEL_137;
      }

LABEL_61:
      v194 = v68;

      sub_26D340B38(0, v70 & ~(v70 >> 63), 0);
      if (v70 < 0)
      {
        __break(1u);
        goto LABEL_153;
      }

      v71 = 0;
      v72 = v46;
      while (1)
      {
        v73 = (v69 & 0xC000000000000001) != 0 ? sub_26D33E5F4(v71, v69, &qword_2804FADB8, 0x277D75BC0) : *(v69 + 8 * v71 + 32);
        v74 = v73;
        v75 = [v73 componentKey];
        v76 = sub_26D3A0F98();
        v78 = v77;
        v79 = sub_26D3A0F98();
        v24 = v80;
        if (v76 == v79 && v78 == v80)
        {
          break;
        }

        v82 = sub_26D3A1518();

        if (v82)
        {
          goto LABEL_76;
        }

        if (v201 - 2 >= 3)
        {
          if (v201)
          {
            goto LABEL_98;
          }

          if (qword_2804FAD40 != -1)
          {
            swift_once();
          }

          if (byte_2804FFF98 != 1)
          {
LABEL_99:
            if (qword_2804FAD48 != -1)
            {
              swift_once();
            }

            if (byte_2804FFF99 == 1)
            {
              v108 = _UISolariumEnabled();

              if (v108)
              {
                v23 = 24.0;
              }

              else
              {
                v23 = 22.0;
              }
            }

            else
            {

              v23 = 45.0;
            }

            goto LABEL_130;
          }

          goto LABEL_97;
        }

        if ((a6 & 1) == 0)
        {
          v109 = sub_26D39C058(v196 & 1, v198 & 1, v201, v83);
          if (qword_2804FAD40 != -1)
          {
            v167 = v109;
            v168 = v110;
            swift_once();
            v110 = v168;
            v109 = v167;
          }

          v111 = a5 - (v109 + v110);
          if (byte_2804FFF98 == 1)
          {
            if (v201 == 3)
            {
              v112 = v111 + -50.0;
              goto LABEL_121;
            }

            v24 = &off_279D9B000;
            v126 = [objc_opt_self() mainScreen];
            [v126 _referenceBounds];
            v128 = v127;
            v130 = v129;
            v132 = v131;
            v134 = v133;

            v205.origin.x = v128;
            v205.origin.y = v130;
            v205.size.width = v132;
            v205.size.height = v134;
            v135 = CGRectGetHeight(v205) > 667.0;
            v136 = 50.0;
            if (!v135)
            {
              v136 = 45.0;
            }

            v112 = v111 - v136;
LABEL_127:
            v146 = [objc_opt_self() mainScreen];
            [v146 _referenceBounds];
            v148 = v147;
            v150 = v149;
            v152 = v151;
            v154 = v153;

            v206.origin.x = v148;
            v206.origin.y = v150;
            v206.size.width = v152;
            v206.size.height = v154;
            Height = CGRectGetHeight(v206);

            v125 = 8.0;
            if (Height > 667.0)
            {
              v125 = v189;
            }
          }

          else
          {
            v24 = v201 == 3;
            v114 = [objc_opt_self() mainScreen];
            [v114 _referenceBounds];
            v116 = v115;
            v118 = v117;
            v120 = v119;
            v122 = v121;

            v204.origin.x = v116;
            v204.origin.y = v118;
            v204.size.width = v120;
            v204.size.height = v122;
            v123 = CGRectGetHeight(v204) <= 667.0;
            v124 = 34.0;
            if (v123 | v198 & 1 | (v201 == 3))
            {
              v124 = 30.0;
            }

            v112 = v111 - v124;
            if (v201 != 3)
            {
              v24 = &off_279D9B000;
              goto LABEL_127;
            }

            if (byte_2804FFF98)
            {
LABEL_121:

              v125 = 16.0;
            }

            else
            {
              v157 = [objc_opt_self() mainScreen];
              [v157 _referenceBounds];
              v159 = v158;
              v161 = v160;
              v163 = v162;
              v165 = v164;

              v207.origin.x = v159;
              v207.origin.y = v161;
              v207.size.width = v163;
              v207.size.height = v165;
              v166 = CGRectGetHeight(v207);

              v125 = 6.0;
              if (v166 > 667.0)
              {
                v125 = v185;
              }
            }
          }

          v23 = (v112 - v58 * v125) / v58;
          goto LABEL_130;
        }

        if ((v198 & 1) == 0)
        {
          if (v201 == 3)
          {
            if (qword_2804FAD40 != -1)
            {
              swift_once();
            }

            v113 = byte_2804FFF98;

            if (v113)
            {
              v23 = 50.0;
            }

            else
            {
              v23 = 44.0;
            }

            goto LABEL_130;
          }

          v137 = [objc_opt_self() mainScreen];
          [v137 _referenceBounds];
          v139 = v138;
          v141 = v140;
          v143 = v142;
          v145 = v144;

          v93 = v139;
          v94 = v141;
          v95 = v143;
          v96 = v145;
          goto LABEL_82;
        }

        v23 = 34.0;
LABEL_130:
        a2 = *(v72 + 16);
        v156 = *(v72 + 24);
        if (a2 >= v156 >> 1)
        {
          sub_26D340B38((v156 > 1), a2 + 1, 1);
        }

        ++v71;
        *(v72 + 16) = a2 + 1;
        *(v72 + 8 * a2 + 32) = v23;
        if (v70 == v71)
        {

          v46 = MEMORY[0x277D84F90];
          v41 = v190;
          v67 = v191;
          v68 = v194;
          goto LABEL_138;
        }
      }

LABEL_76:
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98 != 1)
      {
        if (v201 - 2 < 3)
        {
          v98 = [objc_opt_self() mainScreen];
          [v98 _referenceBounds];
          v100 = v99;
          v102 = v101;
          v104 = v103;
          v106 = v105;

          v203.origin.x = v100;
          v203.origin.y = v102;
          v203.size.width = v104;
          v203.size.height = v106;
          v107 = CGRectGetHeight(v203);

          if ((v107 <= 667.0) | v198 & 1 | (v201 == 3))
          {
            v23 = 30.0;
          }

          else
          {
            v23 = 34.0;
          }

          goto LABEL_130;
        }

        if (!v201)
        {
          goto LABEL_99;
        }

LABEL_98:

        v23 = 44.0;
        goto LABEL_130;
      }

      if (v201 <= 1u)
      {
        if (v201)
        {
          goto LABEL_98;
        }
      }

      else if (v201 != 3)
      {
        v84 = [objc_opt_self() mainScreen];
        [v84 _referenceBounds];
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;

        v93 = v86;
        v94 = v88;
        v95 = v90;
        v96 = v92;
LABEL_82:
        v97 = CGRectGetHeight(*&v93);

        if (v97 > 667.0)
        {
          v23 = 50.0;
        }

        else
        {
          v23 = 45.0;
        }

        goto LABEL_130;
      }

LABEL_97:

      v23 = 50.0;
      goto LABEL_130;
    }

    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_61;
    }

LABEL_137:
    v72 = v46;
LABEL_138:
    ++v68;
    v169 = *(v72 + 16);
    if (v169)
    {
      v23 = *(v72 + 32);
      v170 = v169 - 1;
      if (v170)
      {
        v171 = (v72 + 40);
        do
        {
          v172 = *v171++;
          v173 = v172;
          if (v23 < v172)
          {
            v23 = v173;
          }

          --v170;
        }

        while (v170);
      }

      v13 = v13 + v23;
    }

    else
    {

      v13 = v13 + 0.0;
    }

    if (v68 == v193)
    {
      goto LABEL_51;
    }
  }

  while (v68 < *(v67 + 16));
  __break(1u);
LABEL_149:
  v174 = v188;

  v23 = v176;
  v20 = v177;
LABEL_151:

  *a7 = v41;
  *(a7 + 8) = v174;
  *(a7 + 16) = v179;
  *(a7 + 24) = v182;
  *(a7 + 32) = v181;
  *(a7 + 40) = v180;
  *(a7 + 48) = v198 & 1;
  *(a7 + 56) = round(v20);
  *(a7 + 64) = round(v181 + v179 + v23 * v178 + v13);
  return result;
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

uint64_t sub_26D345E5C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26D345EA4(unsigned __int8 a1, double a2)
{
  v4 = sub_26D337784(a1, 2, a2);
  if (v4 > a2)
  {
    return 1;
  }

  v6 = sub_26D337784(a1, 3, v4);
  if (v6 > a2)
  {
    return 2;
  }

  v7 = sub_26D337784(a1, 4, v6);
  if (v7 > a2)
  {
    return 3;
  }

  v8 = sub_26D337784(a1, 5, v7);
  if (v8 > a2)
  {
    return 4;
  }

  if (sub_26D337784(a1, 5, v8) > a2)
  {
    return 1;
  }

  return 5;
}

uint64_t sub_26D345F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26D346004();
  result = MEMORY[0x26D6BD940](v2, MEMORY[0x277D85048], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26D342868(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26D346004()
{
  result = qword_2804FAEF0;
  if (!qword_2804FAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAEF0);
  }

  return result;
}

uint64_t _s7ColumnsOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7ColumnsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26D3461F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_26D346240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TFComponentClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TFComponentClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_26D346318(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_26D346364(uint64_t a1, int a2)
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

uint64_t sub_26D3463AC(uint64_t result, int a2, int a3)
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

unint64_t sub_26D3463FC()
{
  result = qword_2804FAF20;
  if (!qword_2804FAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAF28, &qword_26D3A2AD0);
    sub_26D3464D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAF20);
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

unint64_t sub_26D3464D0()
{
  result = qword_2804FAF30;
  if (!qword_2804FAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAF38, &qword_26D3A2AD8);
    sub_26D34655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAF30);
  }

  return result;
}

unint64_t sub_26D34655C()
{
  result = qword_2804FAF40;
  if (!qword_2804FAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAF48, &qword_26D3A2AE0);
    sub_26D3465E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAF40);
  }

  return result;
}

unint64_t sub_26D3465E8()
{
  result = qword_2804FAF50;
  if (!qword_2804FAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAF58, &qword_26D3A2AE8);
    sub_26D3466A0();
    sub_26D3484AC(&qword_2804FAF90, &qword_2804FAF98, qword_26D3A2B08, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAF50);
  }

  return result;
}

unint64_t sub_26D3466A0()
{
  result = qword_2804FAF60;
  if (!qword_2804FAF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAF68, &qword_26D3A2AF0);
    sub_26D3484AC(&qword_2804FAF70, &qword_2804FAF78, &qword_26D3A2AF8, MEMORY[0x277CE1198]);
    sub_26D3484AC(&qword_2804FAF80, &qword_2804FAF88, &qword_26D3A2B00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAF60);
  }

  return result;
}

unint64_t sub_26D3467F4()
{
  result = qword_2804FAFB0;
  if (!qword_2804FAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FAFB0);
  }

  return result;
}

uint64_t sub_26D34684C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t objectdestroyTm()
{

  sub_26D34684C(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_26D3468EC()
{
  result = qword_2804FB000;
  if (!qword_2804FB000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAFF0, &qword_26D3A2CE8);
    sub_26D346978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB000);
  }

  return result;
}

unint64_t sub_26D346978()
{
  result = qword_2804FB008;
  if (!qword_2804FB008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB010, &qword_26D3A2CF0);
    sub_26D3484AC(&qword_2804FB018, &qword_2804FB020, &qword_26D3A2CF8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB008);
  }

  return result;
}

unint64_t sub_26D346A30()
{
  result = qword_2804FB028;
  if (!qword_2804FB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB028);
  }

  return result;
}

uint64_t sub_26D346A84()
{

  sub_26D34684C(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 107, 7);
}

unint64_t sub_26D346AE4()
{
  result = qword_2804FB058;
  if (!qword_2804FB058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB060, &qword_26D3A2D38);
    sub_26D346B9C();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0, &qword_26D3A2D70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB058);
  }

  return result;
}

unint64_t sub_26D346B9C()
{
  result = qword_2804FB068;
  if (!qword_2804FB068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB070, &qword_26D3A2D40);
    sub_26D346C54();
    sub_26D3484AC(&qword_2804FB0B8, &unk_2804FB0C0, &qword_26D3A2D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB068);
  }

  return result;
}

unint64_t sub_26D346C54()
{
  result = qword_2804FB078;
  if (!qword_2804FB078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB080, &qword_26D3A2D48);
    sub_26D346D0C();
    sub_26D3484AC(&qword_2804FB0B8, &unk_2804FB0C0, &qword_26D3A2D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB078);
  }

  return result;
}

unint64_t sub_26D346D0C()
{
  result = qword_2804FB088;
  if (!qword_2804FB088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB090, &qword_26D3A2D50);
    sub_26D3484AC(&qword_2804FB098, &qword_2804FB0A0, &qword_26D3A2D58, MEMORY[0x277CE1148]);
    sub_26D3484AC(&qword_2804FB0A8, &qword_2804FB0B0, &qword_26D3A2D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB088);
  }

  return result;
}

double sub_26D346DF0(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_26D346E14()
{
  result = qword_2804FB0D8;
  if (!qword_2804FB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB0D8);
  }

  return result;
}

unint64_t sub_26D346E68()
{
  result = qword_2804FB0E0;
  if (!qword_2804FB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB0E0);
  }

  return result;
}

unint64_t sub_26D346EBC()
{
  result = qword_2804FB0E8;
  if (!qword_2804FB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB0E8);
  }

  return result;
}

unint64_t sub_26D346F10()
{
  result = qword_2804FB0F0;
  if (!qword_2804FB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB0F0);
  }

  return result;
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26D346FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D347020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D3470C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26D34713C()
{
  result = qword_2804FB110;
  if (!qword_2804FB110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FAFB8, &unk_26D3A2CA0);
    sub_26D3484AC(&qword_2804FAFD8, &qword_2804FAFC8, &qword_26D3A2CD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB110);
  }

  return result;
}

uint64_t sub_26D347238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26D3472A0()
{
  result = qword_2804FB180;
  if (!qword_2804FB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB180);
  }

  return result;
}

unint64_t sub_26D3472F4()
{
  result = qword_2804FB198;
  if (!qword_2804FB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB198);
  }

  return result;
}

unint64_t sub_26D347348()
{
  result = qword_2804FB1A0;
  if (!qword_2804FB1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB190, &qword_26D3A3038);
    sub_26D3472A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1A0);
  }

  return result;
}

unint64_t sub_26D3473D4()
{
  result = qword_2804FB1B0;
  if (!qword_2804FB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB178, &qword_26D3A3028);
    sub_26D347460();
    sub_26D347A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1B0);
  }

  return result;
}

unint64_t sub_26D347460()
{
  result = qword_2804FB1B8;
  if (!qword_2804FB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB170, &qword_26D3A3020);
    sub_26D3474EC();
    sub_26D3477E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1B8);
  }

  return result;
}

unint64_t sub_26D3474EC()
{
  result = qword_2804FB1C0;
  if (!qword_2804FB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB1C8, &qword_26D3A3048);
    sub_26D347578();
    sub_26D3476AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1C0);
  }

  return result;
}

unint64_t sub_26D347578()
{
  result = qword_2804FB1D0;
  if (!qword_2804FB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB1D8, &qword_26D3A3050);
    sub_26D347604();
    sub_26D347658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1D0);
  }

  return result;
}

unint64_t sub_26D347604()
{
  result = qword_2804FB1E0;
  if (!qword_2804FB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1E0);
  }

  return result;
}

unint64_t sub_26D347658()
{
  result = qword_2804FB1E8;
  if (!qword_2804FB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1E8);
  }

  return result;
}

unint64_t sub_26D3476AC()
{
  result = qword_2804FB1F0;
  if (!qword_2804FB1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB1F8, &qword_26D3A3058);
    sub_26D347738();
    sub_26D34778C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB1F0);
  }

  return result;
}

unint64_t sub_26D347738()
{
  result = qword_2804FB200;
  if (!qword_2804FB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB200);
  }

  return result;
}

unint64_t sub_26D34778C()
{
  result = qword_2804FB208;
  if (!qword_2804FB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB208);
  }

  return result;
}

unint64_t sub_26D3477E0()
{
  result = qword_2804FB210;
  if (!qword_2804FB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB150, &qword_26D3A3000);
    sub_26D34786C();
    sub_26D347928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB210);
  }

  return result;
}

unint64_t sub_26D34786C()
{
  result = qword_2804FB218;
  if (!qword_2804FB218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB148, &qword_26D3A2FF8);
    sub_26D34778C();
    sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB218);
  }

  return result;
}

unint64_t sub_26D347928()
{
  result = qword_2804FB228;
  if (!qword_2804FB228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB130, &qword_26D3A2FE0);
    sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
    sub_26D3479E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB228);
  }

  return result;
}

unint64_t sub_26D3479E4()
{
  result = qword_2804FB230;
  if (!qword_2804FB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB230);
  }

  return result;
}

unint64_t sub_26D347A38()
{
  result = qword_2804FB238;
  if (!qword_2804FB238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB240, &qword_26D3A3060);
    sub_26D347AC4();
    sub_26D347D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB238);
  }

  return result;
}

unint64_t sub_26D347AC4()
{
  result = qword_2804FB248;
  if (!qword_2804FB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB250, &qword_26D3A3068);
    sub_26D347B50();
    sub_26D347C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB248);
  }

  return result;
}

unint64_t sub_26D347B50()
{
  result = qword_2804FB258;
  if (!qword_2804FB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB260, &qword_26D3A3070);
    sub_26D347BDC();
    sub_26D347C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB258);
  }

  return result;
}

unint64_t sub_26D347BDC()
{
  result = qword_2804FB268;
  if (!qword_2804FB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB268);
  }

  return result;
}

unint64_t sub_26D347C30()
{
  result = qword_2804FB270;
  if (!qword_2804FB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB270);
  }

  return result;
}

unint64_t sub_26D347C84()
{
  result = qword_2804FB278;
  if (!qword_2804FB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB280, &qword_26D3A3078);
    sub_26D347C30();
    sub_26D347D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB278);
  }

  return result;
}

unint64_t sub_26D347D10()
{
  result = qword_2804FB288;
  if (!qword_2804FB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB288);
  }

  return result;
}

unint64_t sub_26D347D64()
{
  result = qword_2804FB290;
  if (!qword_2804FB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB298, &qword_26D3A3080);
    sub_26D347DF0();
    sub_26D347F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB290);
  }

  return result;
}

unint64_t sub_26D347DF0()
{
  result = qword_2804FB2A0;
  if (!qword_2804FB2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB2A8, &qword_26D3A3088);
    sub_26D347E7C();
    sub_26D347ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2A0);
  }

  return result;
}

unint64_t sub_26D347E7C()
{
  result = qword_2804FB2B0;
  if (!qword_2804FB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2B0);
  }

  return result;
}

unint64_t sub_26D347ED0()
{
  result = qword_2804FB2B8;
  if (!qword_2804FB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2B8);
  }

  return result;
}

unint64_t sub_26D347F24()
{
  result = qword_2804FB2C0;
  if (!qword_2804FB2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB2C8, &qword_26D3A3090);
    sub_26D3472F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2C0);
  }

  return result;
}

unint64_t sub_26D347FA8()
{
  result = qword_2804FB2D0;
  if (!qword_2804FB2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB1A8, &qword_26D3A3040);
    sub_26D3472F4();
    sub_26D347348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2D0);
  }

  return result;
}

uint64_t sub_26D3480E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TFTextAlignmentControl(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D348148(uint64_t a1)
{
  v2 = type metadata accessor for TFTextAlignmentControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D3481A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26D348368()
{
  result = qword_2804FB2E0;
  if (!qword_2804FB2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB120, &qword_26D3A2FD0);
    sub_26D348420();
    sub_26D3484AC(&qword_2804FB2F0, &qword_2804FB2F8, &qword_26D3A3100, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2E0);
  }

  return result;
}

unint64_t sub_26D348420()
{
  result = qword_2804FB2E8;
  if (!qword_2804FB2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB118, &qword_26D3A2F50);
    sub_26D3473D4();
    sub_26D347FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB2E8);
  }

  return result;
}

uint64_t sub_26D3484AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26D3484F4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_26D348500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26D34855C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26D34856C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26D348640()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + qword_2804FB408 + 16);
  if ((*(v0 + v1) & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    *(v0 + v1) = 1;
    v3.receiver = v0;
    v3.super_class = ObjectType;
    objc_msgSendSuper2(&v3, sel_layoutSubviews);
    *(v0 + v1) = 0;
  }
}

void sub_26D3486D8(void *a1)
{
  v1 = a1;
  sub_26D348640();
}

uint64_t sub_26D348720(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_26D34C0EC(a1);
  (*(*(*(v2 + qword_2804FB408) - 8) + 8))(a1);
  return v5;
}

id sub_26D3487A0(void *a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_2804FB408 + 16)) = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_26D34887C()
{
  v1 = OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView;
  v2 = *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView);
LABEL_5:
    v9 = v2;
    return v3;
  }

  v4 = v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D34C534(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    sub_26D3A01B8();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB538, &qword_26D3A35D8));
    v6[*((*MEMORY[0x277D85000] & *v6) + qword_2804FB408 + 16)] = 0;
    v7 = sub_26D3A01C8();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

char *sub_26D3489CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView] = 0;
  swift_weakAssign();
  v25.receiver = v1;
  v25.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = sub_26D34887C();
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView;
  v7 = *&v3[OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView];
  v8 = v3;
  [v8 addSubview_];
  [*&v3[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D3A3170;
  v11 = [*&v3[v6] topAnchor];
  v12 = [v8 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [*&v3[v6] leadingAnchor];
  v15 = [v8 leadingAnchor];

  v16 = [v14 constraintEqualToAnchor_];
  *(v10 + 40) = v16;
  v17 = [*&v3[v6] trailingAnchor];
  v18 = [v8 trailingAnchor];

  v19 = [v17 constraintEqualToAnchor_];
  *(v10 + 48) = v19;
  v20 = [*&v3[v6] bottomAnchor];
  v21 = [v8 bottomAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v10 + 56) = v22;
  sub_26D345E5C(0, &unk_2804FB528, 0x277CCAAD0);
  v23 = sub_26D3A1038();

  [v9 activateConstraints_];

  return v8;
}

id sub_26D348EBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26D348F40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TFTextFormattingContentViewController_viewState;
  type metadata accessor for TextFormattingState(0);
  swift_allocObject();
  *&v0[v2] = sub_26D34EA6C();
  v3 = OBJC_IVAR____TFTextFormattingContentViewController_configuration;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75BD0]) init];
  v23.receiver = v1;
  v23.super_class = type metadata accessor for _TFTextFormattingContentViewController();
  v4 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  v5 = OBJC_IVAR____TFTextFormattingContentViewController_viewState;
  v6 = *&v4[OBJC_IVAR____TFTextFormattingContentViewController_viewState];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v8 = sub_26D34BB1C;
  v8[1] = v7;
  v9 = v4;

  v10 = *&v4[v5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_contentSizeDidUpdate);
  *v12 = sub_26D34BB24;
  v12[1] = v11;

  v13 = *&v4[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = (v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickFont);
  *v15 = sub_26D34BB2C;
  v15[1] = v14;

  v16 = *&v4[v5];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = (v16 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickColor);
  *v18 = sub_26D34BB34;
  v18[1] = v17;

  v19 = *&v4[v5];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = (v19 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_showTypographySettings);
  *v21 = sub_26D34BB3C;
  v21[1] = v20;

  return v9;
}

void sub_26D3491B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_26D3A12E8();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v9 = v7, v10 = sub_26D34C1E0(a2, v8), v12 = v11, v9, v12 >> 60 != 15))
    {
      v13 = sub_26D39FE58();
      sub_26D34BA6C(v10, v12);
    }

    else
    {
      v13 = 0;
    }

    [v5 _textFormattingDidChangeValue_textAttributesData_];
  }
}

void sub_26D3492AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_26D349CA8();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      [v5 invalidateIntrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_26D34935C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(MEMORY[0x277D75538]) init];
    [v3 setIncludeFaces_];
    [v3 setDisplayUsingSystemFont_];
    [v3 set:objc_msgSend(*&v2[OBJC_IVAR____TFTextFormattingContentViewController_configuration] includeDefaultFont:sel__includeDefaultFont)];
    sub_26D34CA00();
    sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
    v4 = sub_26D3A1038();

    [v2 _presentFontPickerWithConfiguration_selectedFonts_];
  }
}

void sub_26D349484(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TFTextFormattingContentViewController_viewState);
    v3 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect);
    v4 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect + 8);
    v5 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect + 16);
    v6 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect + 24);
    v7 = Strong;
    v8 = sub_26D34CB9C();
    [v7 _presentColorPicker_selectedColor_];
  }
}

void sub_26D349538(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_26D34CD84();
    [v2 _presentTypographySettingsForFont_];
  }
}

void sub_26D34968C()
{
  v1 = v0;
  objc_allocWithZone(type metadata accessor for _TFTextFormattingContentView());

  v3 = sub_26D3489CC(v2);
  [v1 setView_];

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_26D3497E4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for _TFTextFormattingContentViewController();
  objc_msgSendSuper2(&v29, sel_viewWillLayoutSubviews);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v3 = result;
  [result bounds];
  v5 = v4;

  if (v5 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    v6 = v25;
    if (v25 != v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v5;

      sub_26D39FF78();
      sub_26D34CEAC();
    }
  }

  v7 = [v1 parentViewController];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  result = [v7 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  [result safeAreaInsets];
  v11 = v10;

  v12 = v11 > 0.0;
LABEL_9:
  v13 = *&v1[OBJC_IVAR____TFTextFormattingContentViewController_viewState];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v26) = v12;

  sub_26D39FF78();
  if (![*&v1[OBJC_IVAR____TFTextFormattingContentViewController_configuration] _isTextAnimationsConfiguration] || (*(v13 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation) & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    if (v28)
    {
      return result;
    }

    goto LABEL_27;
  }

  v14 = [v1 parentViewController];
  if (v14)
  {
    v15 = v14;
    result = [v14 view];
    if (!result)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    v16 = result;
    [result safeAreaInsets];
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = result;
  v20 = [result window];

  if (v20 && (v21 = [v20 windowScene], v20, v21))
  {
    v22 = [v21 _interfaceOrientation];
  }

  else
  {
    v22 = 1;
  }

  if (UIInterfaceOrientationIsLandscape(v22))
  {
    v23 = 172.0;
  }

  else
  {
    [objc_opt_self() sizeForInterfaceOrientation_];
    v23 = v24 - v18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  if ((v28 & 1) != 0 || v27 != v23)
  {
LABEL_27:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF78();
    return sub_26D34CEAC();
  }

  return result;
}

id sub_26D349CA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v14[2] = v11;
  v14[3] = v12;
  v15 = v13;
  v14[0] = v9;
  v14[1] = v10;
  sub_26D33F528(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v2 = v9;
  if (v9 <= 1u)
  {
    if (v9)
    {
      v3 = 12;
    }

    else
    {
      v3 = 6;
    }
  }

  else if (v9 == 2)
  {
    v3 = 4;
  }

  else if (v9 == 4)
  {
    v3 = 8;
  }

  else
  {
    v3 = 5;
    v2 = 3;
  }

  v4 = sub_26D39DF3C(v3, v2, v1);
  v5 = ceil(v15);
  result = [v0 preferredContentSize];
  if (v8 != v4 || v7 != v5)
  {
    return [v0 setPreferredContentSize_];
  }

  return result;
}

id _TFTextFormattingContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26D3A0F68();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _TFTextFormattingContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _TFTextFormattingContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _TFTextFormattingContentViewController._setConfiguration(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TFTextFormattingContentViewController_configuration);
  *(v1 + OBJC_IVAR____TFTextFormattingContentViewController_configuration) = a1;
  v3 = a1;

  v4 = *(v1 + OBJC_IVAR____TFTextFormattingContentViewController_viewState);
  v5 = [v3 groups];
  sub_26D345E5C(0, &qword_2804FB390, 0x277D75BC8);
  sub_26D3A1058();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34CEAC();
  sub_26D34D290();
  v6 = sub_26D3A1328();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34E320();
  sub_26D3A1318();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34E85C(v6);

  [v3 _useLandscapeLayout];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34D470();
  v7 = [v3 _includeDefaultFont];
  *(v4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_includeDefaultFont) = v7;
  v8 = [v3 _isUsingReducedMetrics];
  *(v4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics) = v8;
  v9 = [v3 _hasPopoverPresentation];
  *(v4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation) = v9;
  sub_26D34D470();
  sub_26D34CEAC();
  v10 = [v3 _hasParentViewController];
  *(v4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) = v10;
  sub_26D34CEAC();
  v11 = [v3 _isTextAnimationsConfiguration];
  *(v4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI) = v11;
  sub_26D34D470();
  [v3 _isTextViewConfiguration];
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D39FF78();
}

uint64_t _TFTextFormattingContentViewController._setFormattingDescriptor(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = sub_26D3A1298();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D3A1268();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D34B8E4(v6, v4);

  sub_26D39FF78();
  sub_26D34D594();
  sub_26D34B954(v6);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _TFTextFormattingContentViewController._setDisabledComponents(_:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D39FF78();
}

void _TFTextFormattingContentViewController._textFormattingDidChangeValue(_:textAttributesData:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = [v3 parentViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      if (a3 >> 60 == 15)
      {
        v9 = 0;
      }

      else
      {
        v10 = v8;
        v9 = sub_26D39FE58();
        v8 = v10;
      }

      [v8 _textFormattingDidChangeValue_textAttributesData_];
    }
  }
}

Swift::Void __swiftcall _TFTextFormattingContentViewController._textFormattingDidFinish()()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      [v3 _textFormattingDidFinish];
    }
  }
}

Swift::Void __swiftcall _TFTextFormattingContentViewController._presentColorPicker(_:selectedColor:)(__C::CGRect _, UIColor selectedColor)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  v8 = [v2 parentViewController];
  if (v8)
  {
    v9 = v8;
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      [v10 _presentColorPicker_selectedColor_];
    }
  }
}

Swift::Void __swiftcall _TFTextFormattingContentViewController._presentFontPicker(with:selectedFonts:)(UIFontPickerViewControllerConfiguration with, Swift::OpaquePointer selectedFonts)
{
  v4 = [v2 parentViewController];
  if (v4)
  {
    v5 = v4;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
      v8 = sub_26D3A1038();
      [v7 _presentFontPickerWithConfiguration_selectedFonts_];
    }
  }
}

Swift::Void __swiftcall _TFTextFormattingContentViewController._presentTypographySettings(for:)(UIFont a1)
{
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      [v5 _presentTypographySettingsForFont_];
    }
  }
}

uint64_t sub_26D34AEF8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34CEAC();
  return sub_26D34D290();
}

uint64_t sub_26D34AF90(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34D470();
}

uint64_t sub_26D34B008()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();
}

uint64_t sub_26D34B084(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_26D34B8E4(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D34B8E4(v8, v6);

  sub_26D39FF78();
  sub_26D34D594();
  return sub_26D34B954(v8);
}

uint64_t sub_26D34B1A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34E320();
}

uint64_t sub_26D34B238(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF68();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  sub_26D34E85C(v3);
}

uint64_t sub_26D34B350@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  *a4 = v6;
  return result;
}

uint64_t sub_26D34B3CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D39FF78();
}

double sub_26D34B448@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26D34B4C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34CEAC();
}

uint64_t sub_26D34B548@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26D34B5D0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34CEAC();
}

uint64_t sub_26D34B66C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  *a4 = v6;
  return result;
}

uint64_t sub_26D34B724(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D39FF78();
}

uint64_t sub_26D34B8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D34B954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D34BA6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D34BA80(a1, a2);
  }

  return a1;
}

uint64_t sub_26D34BA80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D34BAE4()
{
  MEMORY[0x26D6BE5A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26D34BB44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26D34BC10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26D348500(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26D34BC10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26D34BD1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26D3A13F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26D34BD1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26D34BD68(a1, a2);
  sub_26D34BE98(&unk_287EB60F8);
  return v3;
}

void *sub_26D34BD68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26D34BF84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26D3A13F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26D3A0FF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26D34BF84(v10, 0);
        result = sub_26D3A13B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26D34BE98(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D34BFF8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D34BF84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FB518, &unk_26D3A35C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26D34BFF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FB518, &unk_26D3A35C8);
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

uint64_t sub_26D34C0EC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  *(v1 + *(v3 + 16)) = 0;
  (*(v4 + 16))(&v6 - v2);
  return sub_26D3A01C8();
}

uint64_t sub_26D34C1E0(uint64_t result, double a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (qword_2804FAD30 != -1)
    {
      swift_once();
    }

    v2 = sub_26D39FED8();
    __swift_project_value_buffer(v2, qword_2804FFF68);

    v3 = sub_26D39FEB8();
    v4 = sub_26D3A1148();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18[0] = v6;
      *v5 = 136315138;
      if (qword_2804FAD28 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF60 == 1)
      {
        type metadata accessor for Key(0);
        sub_26D34C534(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
        v7 = sub_26D3A0F48();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0xE000000000000000;
      }

      v10 = sub_26D34BB44(v7, v9, v18);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_26D333000, v3, v4, "Will attempt to update text attributes %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x26D6BE4E0](v6, -1, -1);
      MEMORY[0x26D6BE4E0](v5, -1, -1);
    }

    v11 = objc_opt_self();
    type metadata accessor for Key(0);
    sub_26D34C534(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
    v12 = sub_26D3A0F18();
    v18[0] = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v18];

    v14 = v18[0];
    if (v13)
    {
      v15 = sub_26D39FE68();

      return v15;
    }

    else
    {
      v16 = v14;
      v17 = sub_26D39FDF8();

      swift_willThrow();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D34C534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D34C5B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  return v1;
}

__n128 sub_26D34C624@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_26D34C6C4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 56);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 48);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 56 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 64 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26D34C7D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1668508004;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616D69636564;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6568707968;
    }

    else
    {
      v4 = 1668508004;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616D69636564;
  if (a2 != 2)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6568707968;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D3A1518();
  }

  return v11 & 1;
}

double sub_26D34C914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  return v1;
}

uint64_t sub_26D34C988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  return v1;
}

uint64_t sub_26D34CA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v8 = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v3 = sub_26D3A1298();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = sub_26D3A1278();
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    v4 = sub_26D358020(v5, &v8, sub_26D33E7C4, &selRef_fontName);
  }

  return v4;
}

id sub_26D34CB9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v3 = sub_26D3A1298();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v6 = sub_26D3A11D8();
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    if (v6 >> 62)
    {
      result = sub_26D3A1488();
      if (result)
      {
LABEL_8:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = sub_26D33E7EC(0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        return v8;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_3;
  }

  sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
LABEL_3:
  v4 = [objc_opt_self() labelColor];

  return v4;
}

unint64_t sub_26D34CD84()
{
  result = sub_26D34CA00();
  if (result >> 62)
  {
    v3 = result;
    v4 = sub_26D3A1488();
    result = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = objc_opt_self();
    [v5 systemFontSize];
    v6 = [v5 systemFontOfSize_];

    return v6;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = sub_26D33E7C4(0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D34CE74()
{
  result = sub_26D3A0F68();
  qword_2804FB540 = result;
  return result;
}

uint64_t sub_26D34CEAC()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v2 = *(*&v21[0] + 16);

  v20 = MEMORY[0x277D84FA0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v3 = *&v21[0];
  *&v21[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_26D33E5E0(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      *&v17[0] = v7;
      sub_26D3541F8(v17, &v20, v2 != 0, &v19);

      if (v19)
      {
        MEMORY[0x26D6BD840]();
        if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26D3A1068();
        }

        sub_26D3A1088();
        v6 = *&v21[0];
      }

      ++v5;
      if (v1 == v4)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v4 = sub_26D3A1488();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v9 = LOBYTE(v21[0]);
  if (*(i + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(i + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
  }

  v11 = *(i + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v12 = *v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  sub_26D344F90(v9, v6, v10 & 1, v11, *v21, SBYTE8(v21[0]), v21, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v17[2] = v21[2];
  v17[3] = v21[3];
  v18 = v22;
  v17[0] = v21[0];
  v17[1] = v21[1];

  sub_26D39FF78();
  v13 = *(i + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_contentSizeDidUpdate);

  v13(v14);
}

uint64_t sub_26D34D290()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB728, &qword_26D3A3A98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_26D3581C4(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v12[1] = v5;

  sub_26D39FF78();
  v6 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_renderTask;
  if (*(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_renderTask))
  {

    sub_26D3A10F8();
  }

  v7 = sub_26D3A10E8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_26D3A10C8();

  v8 = sub_26D3A10B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  *(v1 + v6) = sub_26D353EF8(0, 0, v4, &unk_26D3A3AF0, v9);
}

uint64_t sub_26D34D470()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34CEAC();
}

void sub_26D34D594()
{
  if ((*(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_initialUpdateOfRecentFontsCompleted) & 1) == 0)
  {
    v73 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_initialUpdateOfRecentFontsCompleted;
    v74 = v0;
    v19 = sub_26D34CA00();
    v3 = v19;
    v76 = MEMORY[0x277D84F90];
    if (v19 >> 62)
    {
      goto LABEL_57;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

  v73 = sub_26D34CD84();
  if ([v73 isSystemFont] && *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_includeDefaultFont) != 1)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v1 = v76;
  v74 = v0;
  if (v76 >> 62)
  {
    v2 = sub_26D3A1488();
    if (v2)
    {
LABEL_6:
      v3 = 0;
      v4 = &off_279D9B000;
      while (1)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v5 = sub_26D33E7D8(v3, v1);
        }

        else
        {
          if (v3 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 v4[293]];
        if (v8)
        {
          v9 = v8;
          v10 = sub_26D3A0F98();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = v4;
        v14 = [v73 v4[293]];
        v15 = sub_26D3A0F98();
        v17 = v16;

        if (v12)
        {
          v1 = v76;
          if (v10 == v15 && v12 == v17)
          {

            return;
          }

          v18 = sub_26D3A1518();

          if (v18)
          {

            return;
          }
        }

        else
        {

          v1 = v76;
        }

        ++v3;
        v4 = v13;
        if (v7 == v2)
        {
          goto LABEL_66;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v20 = sub_26D3A1488();
LABEL_24:
        v21 = MEMORY[0x277D84F90];
        if (!v20)
        {
          break;
        }

        v22 = 0;
        v23 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_includeDefaultFont;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v24 = sub_26D33E7C4(v22, v3);
          }

          else
          {
            if (v22 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v24 = *(v3 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if ((*(v74 + v23) & 1) != 0 || ([v24 isSystemFont] & 1) == 0)
          {
            sub_26D3A1408();
            sub_26D3A1438();
            sub_26D3A1448();
            sub_26D3A1418();
          }

          else
          {
          }

          ++v22;
          if (v26 == v20)
          {
            v27 = v76;
            v21 = MEMORY[0x277D84F90];
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
      }

      v27 = MEMORY[0x277D84F90];
LABEL_38:

      if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
      {
        v28 = *(v27 + 16);
        if (v28)
        {
          v76 = v21;
          sub_26D3A1428();
          goto LABEL_42;
        }

        goto LABEL_62;
      }

      if (!sub_26D3A1488())
      {
LABEL_62:

        return;
      }

      v33 = sub_26D3A1488();
      if (v33)
      {
        v28 = v33;
        v76 = v21;
        sub_26D3A1428();
        if ((v28 & 0x8000000000000000) == 0)
        {
LABEL_42:
          v29 = 0;
          do
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = sub_26D33E7C4(v29, v27);
            }

            else
            {
              v30 = *(v27 + 8 * v29 + 32);
            }

            v31 = v30;
            ++v29;
            v32 = [v30 fontDescriptor];
            [objc_allocWithZone(MEMORY[0x277D75FA0]) initWithFontDescriptor_];

            sub_26D3A1408();
            sub_26D3A1438();
            sub_26D3A1448();
            sub_26D3A1418();
          }

          while (v28 != v29);

          v21 = v76;
          goto LABEL_48;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_118:

LABEL_48:
      v76 = MEMORY[0x277D84FA0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26D39FF68();

      sub_26D35755C(v75, sub_26D357BB0);
      sub_26D358020(v21, &v76, sub_26D33E7D8, &selRef_familyName);

      swift_getKeyPath();
      swift_getKeyPath();

      sub_26D39FF78();
      *(v73 + v74) = 1;

      return;
    }
  }

  else
  {
    v2 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_6;
    }
  }

LABEL_66:

  v34 = [v73 fontDescriptor];
  v72 = [objc_allocWithZone(MEMORY[0x277D75FA0]) initWithFontDescriptor_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  if (v76 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D3A1488())
  {
    v36 = 0;
    while (1)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v37 = sub_26D33E7D8(v36, v76);
      }

      else
      {
        if (v36 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v37 = *(v76 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v40 = [v37 familyName];
      v41 = sub_26D3A0F98();
      v43 = v42;

      v44 = [v72 familyName];
      v45 = sub_26D3A0F98();
      v47 = v46;

      if (v41 == v45 && v43 == v47)
      {

LABEL_82:

        swift_getKeyPath();
        swift_getKeyPath();
        sub_26D39FF68();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_26D3A2290;
        *(v50 + 32) = v38;
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_26D3A2290;
        *(v51 + 32) = v72;
        v71 = v38;
        v52 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618, &unk_26D3A3650);
        sub_26D3484AC(&qword_2804FB6F0, &qword_2804FB618, &unk_26D3A3650, MEMORY[0x277D83990]);
        sub_26D3484AC(&qword_2804FB6F8, &qword_2804FB618, &unk_26D3A3650, MEMORY[0x277D83988]);
        sub_26D3583A0();
        sub_26D3A1138();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_26D39FF78();

        goto LABEL_114;
      }

      v49 = sub_26D3A1518();

      if (v49)
      {
        goto LABEL_82;
      }

      ++v36;
      if (v39 == i)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_86:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26D3A2290;
  v21 = v72;
  *(v53 + 32) = v72;
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v72;
  sub_26D39FF68();

  v55 = v76;
  v76 = v53;
  sub_26D35755C(v55, sub_26D357BB0);
  v56 = v53 >> 62;
  if (!(v53 >> 62))
  {
    v57 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 >= 7)
    {
      v58 = 7;
    }

    else
    {
      v58 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v57 >= v58)
    {
      goto LABEL_91;
    }

LABEL_128:
    __break(1u);
    return;
  }

  v69 = sub_26D3A1488();
  if (sub_26D3A1488() < 0)
  {
    __break(1u);
    goto LABEL_118;
  }

  if (v69 >= 7)
  {
    v70 = 7;
  }

  else
  {
    v70 = v69;
  }

  if (v69 >= 0)
  {
    v58 = v70;
  }

  else
  {
    v58 = 7;
  }

  if (sub_26D3A1488() < v58)
  {
    goto LABEL_128;
  }

LABEL_91:
  if ((v53 & 0xC000000000000001) != 0 && v58)
  {
    sub_26D345E5C(0, &qword_2804FAEE0, 0x277D75FA0);

    sub_26D3A13D8();
    if (v58 != 1)
    {
      sub_26D3A13D8();
      if (v58 != 2)
      {
        sub_26D3A13D8();
        if (v58 != 3)
        {
          sub_26D3A13D8();
          if (v58 != 4)
          {
            sub_26D3A13D8();
            if (v58 != 5)
            {
              sub_26D3A13D8();
              if (v58 != 6)
              {
                sub_26D3A13D8();
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (v56)
  {
    v59 = sub_26D3A1498();
    v60 = v62;
    v56 = v63;
    v61 = v64;

    if (v61)
    {
      goto LABEL_106;
    }

LABEL_105:
    sub_26D340968(v59, v60, v56, v61);
    v66 = v65;
    goto LABEL_112;
  }

  v59 = v53 & 0xFFFFFFFFFFFFFF8;
  v60 = (v53 & 0xFFFFFFFFFFFFFF8) + 32;
  v61 = (2 * v58) | 1;
  if ((v61 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_106:
  sub_26D3A1528();
  swift_unknownObjectRetain_n();
  v67 = swift_dynamicCastClass();
  if (!v67)
  {
    swift_unknownObjectRelease();
    v67 = MEMORY[0x277D84F90];
  }

  v68 = *(v67 + 16);

  if (__OFSUB__(v61 >> 1, v56))
  {
    __break(1u);
    goto LABEL_120;
  }

  if (v68 != (v61 >> 1) - v56)
  {
LABEL_120:
    swift_unknownObjectRelease_n();
    goto LABEL_105;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v66)
  {
    goto LABEL_113;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_112:
  swift_unknownObjectRelease();
LABEL_113:
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v66;

  sub_26D39FF78();

LABEL_114:
}

uint64_t sub_26D34E2A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();
}

uint64_t sub_26D34E320()
{
  v1 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB710, &qword_26D3A5510);
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v35 - v3;
  v44 = sub_26D39FDE8();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D3A12D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v10 = v46[2];
  if (v10)
  {
    v35 = v46;
    v36 = v1;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = v46 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v40 = (v4 + 8);
    v41 = v12;
    v39 = (v2 + 8);
    v14 = MEMORY[0x277D84F90];
    v15 = *(v11 + 56);
    v37 = (v11 - 8);
    v38 = v15;
    v16 = v6;
    v17 = v11;
    do
    {
      v18 = v17;
      v41(v9, v13, v16);
      v19 = v42;
      sub_26D3A12A8();
      swift_getKeyPath();
      sub_26D39FDB8();
      sub_26D358458(&qword_2804FB718, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
      v20 = v43;
      sub_26D39FDD8();

      (*v40)(v19, v44);
      swift_getKeyPath();
      sub_26D3584BC();
      v21 = v16;
      v22 = v45;
      sub_26D39FE18();

      (*v39)(v20, v22);
      v23 = v46;
      if (v46)
      {
        [v46 pointSize];
        v25 = v24;

        (*v37)(v9, v21);
        v16 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_26D33EC78(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v28 = sub_26D33EC78((v26 > 1), v27 + 1, 1, v14);
          v17 = v18;
          v14 = v28;
        }

        else
        {
          v17 = v18;
        }

        *(v14 + 2) = v27 + 1;
        *&v14[8 * v27 + 32] = v25;
      }

      else
      {
        (*v37)(v9, v21);
        v16 = v21;
        v17 = v18;
      }

      v13 += v38;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v29 = sub_26D345F90(v14);

  if (*(v29 + 16))
  {
    v30 = sub_26D34C6C4(v29);
    v32 = v31;
  }

  else
  {

    v30 = 0;
    v32 = 1;
  }

  v34 = v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_largestFontSizeInFormattingStyles;
  *v34 = v30;
  *(v34 + 8) = v32 & 1;
  return result;
}

uint64_t sub_26D34E810@<X0>(uint64_t *a1@<X8>)
{
  sub_26D39FDC8();
  result = sub_26D39FDB8();
  *a1 = result;
  return result;
}

uint64_t sub_26D34E85C(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  LOBYTE(a1) = sub_26D33CAA8(v6, a1);

  if ((a1 & 1) == 0)
  {
    if (qword_2804FABD0 != -1)
    {
      swift_once();
    }

    v5 = qword_2804FFC70;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    sub_26D35755C(v6, sub_26D357D64);
    *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles) = v5;

    return sub_26D34D290();
  }

  return result;
}

id sub_26D34E9E4()
{
  v1 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState____lazy_storage___configForRecents;
  v2 = *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState____lazy_storage___configForRecents);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState____lazy_storage___configForRecents);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75538]) init];
    [v4 setIncludeFaces_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_26D34EA6C()
{
  v1 = v0;
  v2 = sub_26D3A1188();
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x28223BE20](v2);
  v107 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6E0, &qword_26D3A3820);
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x28223BE20](v4);
  v104 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6D8, &qword_26D3A3818);
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x28223BE20](v6);
  v101 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6D0, &qword_26D3A3810);
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8);
  v98 = &v74 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6C8, &qword_26D3A3808);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v74 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6C0, &qword_26D3A3800);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v74 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6B8, &qword_26D3A37F8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v74 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6B0, &qword_26D3A37F0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v74 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6A8, &qword_26D3A37E8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v74 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6A0, &qword_26D3A37E0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v74 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v16 = MEMORY[0x28223BE20](v79);
  v78 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB698, &qword_26D3A37D8);
  v20 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v22 = &v74 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB690, &qword_26D3A37D0);
  v23 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB688, &qword_26D3A37C8);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v74 - v28;
  v30 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__groups;
  v110 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB600, &qword_26D3A3648);
  sub_26D39FF48();
  (*(v27 + 32))(v1 + v30, v29, v26);
  v31 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__useLandscapeLayout;
  LOBYTE(v110) = 0;
  sub_26D39FF48();
  v32 = *(v23 + 32);
  v76 = v23 + 32;
  v77 = v32;
  v33 = v74;
  v32(v1 + v31, v25, v74);
  v34 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__recentFonts;
  v35 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618, &unk_26D3A3650);
  sub_26D39FF48();
  (*(v20 + 32))(v1 + v34, v22, v75);
  v36 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__formattingDescriptor;
  v37 = sub_26D3A1298();
  (*(*(v37 - 8) + 56))(v19, 1, 1, v37);
  sub_26D34856C(v19, v78, &qword_2804FB398, &qword_26D3A33C0);
  v38 = v80;
  sub_26D39FF48();
  sub_26D3481A4(v19, &qword_2804FB398, &qword_26D3A33C0);
  (*(v81 + 32))(v1 + v36, v38, v82);
  v39 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__formattingStyles;
  v110 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB630, &qword_26D3A3660);
  v40 = v83;
  sub_26D39FF48();
  (*(v84 + 32))(v1 + v39, v40, v85);
  v41 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__emphasisStyles;
  v110 = v35;
  v42 = *&v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB640, &qword_26D3A3668);
  v43 = v86;
  sub_26D39FF48();
  (*(v87 + 32))(v1 + v41, v43, v88);
  v44 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__isFormattingUITextView;
  LOBYTE(v110) = 0;
  sub_26D39FF48();
  v45 = v77;
  v77(v1 + v44, v25, v33);
  v46 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__disabledComponents;
  v47 = MEMORY[0x277D84FA0];
  v110 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB650, &qword_26D3A3670);
  v48 = v89;
  sub_26D39FF48();
  (*(v90 + 32))(v1 + v46, v48, v91);
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInRemotePresentation) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_includeDefaultFont) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_initialUpdateOfRecentFontsCompleted) = 0;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_cancellables) = v47;
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState____lazy_storage___configForRecents) = 0;
  v49 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__layout;
  sub_26D344F90(0, v42, 0, 0, 0.0, 1, &v110, 0.0);
  v50 = v92;
  sub_26D39FF48();
  (*(v93 + 32))(v1 + v49, v50, v94);
  v51 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__uiConfig;
  LOBYTE(v110) = 0;
  v52 = v95;
  sub_26D39FF48();
  v53 = (*(v96 + 32))(v1 + v51, v52, v97);
  v54 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__availableWidth;
  v110 = sub_26D39DF3C(6, 0, v53);
  v55 = v98;
  sub_26D39FF48();
  (*(v99 + 32))(v1 + v54, v55, v100);
  v56 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__idealHeight;
  v110 = 0.0;
  v111 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0, &qword_26D3A4FE0);
  v57 = v101;
  sub_26D39FF48();
  (*(v102 + 32))(v1 + v56, v57, v103);
  v58 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__hasParentBottomSafeAreaInset;
  LOBYTE(v110) = 0;
  sub_26D39FF48();
  v45(v1 + v58, v25, v33);
  v59 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect);
  *v59 = 0u;
  v59[1] = 0u;
  v60 = v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_largestFontSizeInFormattingStyles;
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles;
  if (qword_2804FABD0 != -1)
  {
    swift_once();
  }

  *(v1 + v61) = qword_2804FFC70;
  v62 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v62 = nullsub_1;
  v62[1] = 0;
  v63 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_close);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_contentSizeDidUpdate);
  *v64 = nullsub_1;
  v64[1] = 0;
  v65 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickFont);
  *v65 = nullsub_1;
  v65[1] = 0;
  v66 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickColor);
  *v66 = nullsub_1;
  v66[1] = 0;
  v67 = (v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_showTypographySettings);
  *v67 = nullsub_1;
  v67[1] = 0;
  v68 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__highlightPreviewImages;

  v110 = COERCE_DOUBLE(sub_26D3581C4(MEMORY[0x277D84F90]));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB680, &qword_26D3A36F8);
  v69 = v104;
  sub_26D39FF48();
  (*(v105 + 32))(v1 + v68, v69, v106);
  *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_renderTask) = 0;
  v70 = [objc_opt_self() defaultCenter];
  if (qword_2804FAB70 != -1)
  {
    swift_once();
  }

  v71 = v107;
  sub_26D3A1198();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_26D358458(&qword_2804FB6E8, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v72 = v109;
  sub_26D39FF98();

  (*(v108 + 8))(v71, v72);
  swift_beginAccess();
  sub_26D39FF18();
  swift_endAccess();

  sub_26D34FA44();
  return v1;
}

void sub_26D34FA44()
{
  v0 = sub_26D34E9E4();
  v1 = _UIFontPickerLoadRecentsMatchingConfigurationForSuite();

  if (v1)
  {
    sub_26D345E5C(0, &qword_2804FAEE0, 0x277D75FA0);
    sub_26D3A1048();
  }
}

uint64_t sub_26D34FB24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  return v3;
}

char *sub_26D34FB90()
{
  v16 = MEMORY[0x277D84FA0];
  v0 = sub_26D34CA00();
  v1 = sub_26D358020(v0, &v16, sub_26D33E7C4, &selRef_familyName);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
LABEL_14:

    return v5;
  }

  v2 = sub_26D3A1488();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_26D340BA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_26D33E7C4(v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 familyName];
      v9 = sub_26D3A0F98();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26D340BA8((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_26D34FD44(void *a1)
{
  v3 = sub_26D3A12F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v6 = a1;
  (*(v4 + 104))(v6, *MEMORY[0x277D74F40], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
  *(inited + 40) = a1;
  v10 = a1;

  v11 = v9;
  v12 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
  v7(v6, v12);

  (*(v4 + 8))(v6, v3);
  if (([v10 isSystemFont] & 1) == 0)
  {
    v13 = [v10 fontDescriptor];
    v14 = [objc_allocWithZone(MEMORY[0x277D75FA0]) initWithFontDescriptor_];

    v15 = v14;
    _UIFontPickerPersistToRecentsForSuite();
  }
}

uint64_t sub_26D34FF8C()
{
  v0 = sub_26D34CD84();
  v1 = [v0 fontDescriptor];
  v2 = [v1 symbolicTraits];

  return (v2 >> 1) & 1;
}

uint64_t sub_26D34FFEC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D34CD84();
  v9 = [v8 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = sub_26D34CD84();
  if (((((v10 & 2) == 0) ^ a1) & 1) == 0)
  {
    v12 = sub_26D39EC68(2u);

    v11 = v12;
  }

  v13 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v7 = a1 & 1;
  (*(v5 + 104))(v7, *MEMORY[0x277D74F38], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
  *(inited + 40) = v11;

  v16 = v15;
  v17 = v11;
  v18 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
  v13(v7, v18);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26D350258()
{
  v0 = sub_26D34CD84();
  v1 = [v0 fontDescriptor];
  v2 = [v1 symbolicTraits];

  return v2 & 1;
}

uint64_t sub_26D3502B8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D34CD84();
  v9 = [v8 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = sub_26D34CD84();
  if (((((v10 & 1) == 0) ^ a1) & 1) == 0)
  {
    v12 = sub_26D39EC68(1u);

    v11 = v12;
  }

  v13 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v7 = a1 & 1;
  (*(v5 + 104))(v7, *MEMORY[0x277D74F48], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_26D345E5C(0, &qword_2804FAED0, 0x277D74300);
  *(inited + 40) = v11;

  v16 = v15;
  v17 = v11;
  v18 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
  v13(v7, v18);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26D350524(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v5 = sub_26D3A1298();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
  }

  else
  {
    v6 = a1();
    sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
    if ((v6 & 1) == 0)
    {
      v8 = 0;
      return v8 & 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v7 = sub_26D34862C();

  v8 = v7 ^ 1;
  return v8 & 1;
}

uint64_t sub_26D35072C(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v5 = sub_26D3A1298();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = a1();
  }

  sub_26D3481A4(v4, &qword_2804FB398, &qword_26D3A33C0);
  return v6 & 1;
}

uint64_t sub_26D350878(char a1, unsigned int *a2, void **a3)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v10 = a1;
  (*(v8 + 104))(v10, *a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v13 = *a3;
  *(inited + 32) = *a3;
  if (a1)
  {

    v14 = v13;
    v15 = MEMORY[0x277D83B88];
    v16 = 1;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CBEB68]);

    v18 = v13;
    v16 = [v17 init];
    v15 = sub_26D345E5C(0, &qword_2804FB760, 0x277CBEB68);
  }

  *(inited + 64) = v15;
  *(inited + 40) = v16;
  v19 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
  v11(v10, v19);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26D350A80()
{
  sub_26D34CB9C();

  return sub_26D3A0C18();
}

uint64_t sub_26D350AB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v11 = sub_26D3A1298();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v15 = sub_26D3A1208();
    sub_26D3481A4(v10, &qword_2804FB398, &qword_26D3A33C0);
    if (!v15)
    {
      goto LABEL_3;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {

      goto LABEL_3;
    }

    v17 = v16;
    (*(v5 + 16))(v7, a1, v4);
    if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D74EE0])
    {
      (*(v5 + 8))(v7, v4);
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D3A35F0;
      v30 = *MEMORY[0x277D74118];
      *(inited + 32) = *MEMORY[0x277D74118];
      *(inited + 64) = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
      *(inited + 40) = v17;
      v31 = v30;
      v12 = sub_26D358BAC(inited);
      swift_setDeallocating();
      sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
      goto LABEL_4;
    }

    (*(v5 + 96))(v7, v4);
    v18 = *v7;
    v19 = sub_26D3A0F98();
    v21 = v20;
    if (v19 == sub_26D3A0F98() && v21 == v22)
    {
    }

    else
    {
      v24 = sub_26D3A1518();

      if ((v24 & 1) == 0)
      {
        v25 = sub_26D3A0F98();
        v27 = v26;
        if (v25 == sub_26D3A0F98() && v27 == v28)
        {

LABEL_23:
          [v17 setAlignment_];
          goto LABEL_20;
        }

        v32 = sub_26D3A1518();

        if (v32)
        {
          goto LABEL_23;
        }

        v33 = sub_26D3A0F98();
        v35 = v34;
        if (v33 == sub_26D3A0F98() && v35 == v36)
        {

LABEL_28:
          [v17 setAlignment_];
          goto LABEL_20;
        }

        v37 = sub_26D3A1518();

        if (v37)
        {
          goto LABEL_28;
        }

        v38 = sub_26D3A0F98();
        v40 = v39;
        if (v38 == sub_26D3A0F98() && v40 == v41)
        {
        }

        else
        {
          v42 = sub_26D3A1518();

          if ((v42 & 1) == 0)
          {
            [v17 setAlignment_];
            goto LABEL_20;
          }
        }

        [v17 setAlignment_];
LABEL_20:

        goto LABEL_21;
      }
    }

    [v17 setAlignment_];
    goto LABEL_20;
  }

  sub_26D3481A4(v10, &qword_2804FB398, &qword_26D3A33C0);
LABEL_3:
  v12 = 0;
LABEL_4:
  v13 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

  v13(a1, v12);
}

uint64_t sub_26D351048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v3 = sub_26D3A1298();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    v4 = 0;
  }

  else
  {
    sub_26D3A11F8();
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    v4 = sub_26D34862C();
  }

  return v4 & 1;
}

char *sub_26D3511C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v3 = sub_26D3A1298();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = sub_26D3A1288();
    sub_26D3481A4(v2, &qword_2804FB398, &qword_26D3A33C0);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 56);
    v9 = ((v6 + 63) >> 6);

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = sub_26D358ECC(*(*(v5 + 48) + ((v10 << 9) | (8 * v12))));
        if (v13 != 4)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_8;
        }
      }

      v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_26D33ED7C(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v17 = *(v11 + 3);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        v24 = v9;
        v19 = v16 + 1;
        v20 = v11;
        v21 = v16;
        v22 = sub_26D33ED7C((v17 > 1), v16 + 1, 1, v20);
        v16 = v21;
        v18 = v19;
        v9 = v24;
        v11 = v22;
      }

      *(v11 + 2) = v18;
      v11[v16 + 32] = v15;
    }

    while (v8);
LABEL_8:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= v9)
      {

        v25 = v11;

        sub_26D356CFC(&v25);

        return v25;
      }

      v8 = *(v5 + 56 + 8 * v14);
      ++v10;
      if (v8)
      {
        v10 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_26D351498(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v34 - v5;
  if (!*(v4 + 16))
  {

    LOBYTE(v7) = 4;
    goto LABEL_8;
  }

  v7 = *(v4 + 32);

  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = MEMORY[0x277D741C0];
    }

    else
    {
      v8 = MEMORY[0x277D741B8];
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D742B8]) initWithMarkerFormat:*v8 options:0];
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_8:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    goto LABEL_8;
  }

  v9 = sub_26D3A0F68();
  v10 = [objc_allocWithZone(MEMORY[0x277D742B8]) initWithMarkerFormat:v9 options:0];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26D3A2290;
  *(v11 + 32) = v10;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v12 = sub_26D3A1298();
  if ((*(*(v12 - 8) + 48))(v6, 1, v12))
  {
    sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
    goto LABEL_14;
  }

  v15 = sub_26D3A1208();
  sub_26D3481A4(v6, &qword_2804FB398, &qword_26D3A33C0);
  if (!v15)
  {
LABEL_14:
    if (v11 >> 62)
    {
      if (sub_26D3A1488())
      {
        goto LABEL_16;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v13 = [objc_opt_self() defaultParagraphStyle];
      [v13 mutableCopy];

      sub_26D3A1378();
      swift_unknownObjectRelease();
      v14 = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
      if (!swift_dynamicCast())
      {

        return sub_26D351A4C(0, v7, v2);
      }

      v15 = v34[27];
      sub_26D345E5C(0, &qword_2804FB798, 0x277D742B8);
      v16 = sub_26D3A1038();

      [v15 setTextLists_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D3A35F0;
      v18 = *MEMORY[0x277D74118];
      *(inited + 32) = *MEMORY[0x277D74118];
      v19 = inited + 32;
      *(inited + 64) = v14;
      *(inited + 40) = v15;
      v20 = v18;
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_26D3A35F0;
    v30 = *MEMORY[0x277D74118];
    *(v29 + 32) = *MEMORY[0x277D74118];
    *(v29 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7A0, &unk_26D3A3E00);
    v31 = swift_allocObject();
    *(v29 + 40) = v31;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    v32 = v30;
    v33 = sub_26D358BAC(v29);
    swift_setDeallocating();
    sub_26D3481A4(v29 + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
    sub_26D351A4C(v33, v7, v2);
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;
  sub_26D345E5C(0, &qword_2804FB798, 0x277D742B8);
  v23 = sub_26D3A1038();

  [v22 setTextLists_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v24 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  v19 = inited + 32;
  *(inited + 64) = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
  *(inited + 40) = v22;
  v25 = v24;
LABEL_21:
  v26 = v15;
  v27 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(v19, &qword_2804FC9E0, &unk_26D3A3DE0);
  sub_26D351A4C(v27, v7, v2);
}

uint64_t sub_26D351A4C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = sub_26D3A12F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2;
  if (a2 > 2u)
  {
    v11 = *(a3 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    *v9 = 0;
    (*(v7 + 104))(v9, *MEMORY[0x277D74F58], v6);
  }

  else
  {
    if (a2)
    {
      v11 = *(a3 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      if (v10 == 1)
      {
        v12 = MEMORY[0x277D771F0];
      }

      else
      {
        v12 = MEMORY[0x277D771E0];
      }
    }

    else
    {
      v11 = *(a3 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      v12 = MEMORY[0x277D771E8];
    }

    v13 = *v12;
    *v9 = *v12;
    (*(v7 + 104))(v9, *MEMORY[0x277D74F58], v6);

    v14 = v13;
  }

  v11(v9, a1);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26D351C28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v6 = sub_26D3A1298();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6))
  {
    sub_26D3481A4(v5, &qword_2804FB398, &qword_26D3A33C0);
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    if (v7(v3, 1, v6))
    {
      sub_26D3481A4(v3, &qword_2804FB398, &qword_26D3A33C0);
      return 0;
    }

    v15 = sub_26D3A11C8();
    v17 = v16;
    sub_26D3481A4(v3, &qword_2804FB398, &qword_26D3A33C0);
    if (v17)
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }

  v9 = sub_26D3A1208();
  sub_26D3481A4(v5, &qword_2804FB398, &qword_26D3A33C0);
  if (!v9)
  {
    goto LABEL_3;
  }

  [v9 minimumLineHeight];
  v11 = v10;
  [v9 maximumLineHeight];
  if (v11 != v12)
  {

    return 0;
  }

  [v9 minimumLineHeight];
  v14 = v13;

  return v14;
}

uint64_t sub_26D351EAC(uint64_t a1, char a2)
{
  v5 = sub_26D3A12F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31[-v11];
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    v13 = sub_26D3A1298();
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      v23 = sub_26D3A1208();
      sub_26D3481A4(v12, &qword_2804FB398, &qword_26D3A33C0);
      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          [v24 setMinimumLineHeight_];
          [v25 setMaximumLineHeight_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D3A35F0;
          v26 = *MEMORY[0x277D74118];
          *(inited + 32) = *MEMORY[0x277D74118];
          v19 = inited + 32;
          *(inited + 64) = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
          *(inited + 40) = v25;
          v27 = v26;
          v21 = v23;
          goto LABEL_10;
        }
      }
    }

    v14 = [objc_opt_self() defaultParagraphStyle];
    [v14 mutableCopy];

    sub_26D3A1378();
    swift_unknownObjectRelease();
    v15 = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
    if (!swift_dynamicCast())
    {
      v22 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      *v8 = a1;
      (*(v6 + 104))(v8, *MEMORY[0x277D74F28], v5);

      v22(v8, 0);
LABEL_11:

      return (*(v6 + 8))(v8, v5);
    }

    v16 = v32;
    [v32 setMinimumLineHeight_];
    [v16 setMaximumLineHeight_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26D3A35F0;
    v18 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v19 = inited + 32;
    *(inited + 64) = v15;
    *(inited + 40) = v16;
    v20 = v18;
    v21 = v16;
LABEL_10:
    v28 = v21;
    v29 = sub_26D358BAC(inited);
    swift_setDeallocating();
    sub_26D3481A4(v19, &qword_2804FC9E0, &unk_26D3A3DE0);
    v30 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    *v8 = a1;
    (*(v6 + 104))(v8, *MEMORY[0x277D74F28], v5);

    v30(v8, v29);

    goto LABEL_11;
  }

  return result;
}

double sub_26D352360()
{
  v1 = v0;
  v2 = sub_26D3A1298();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v12 = *(v3 + 48);
  if (v12(v11, 1, v2))
  {
    sub_26D3481A4(v11, &qword_2804FB398, &qword_26D3A33C0);
    goto LABEL_3;
  }

  v15 = sub_26D3A1228();
  v17 = v16;
  sub_26D3481A4(v11, &qword_2804FB398, &qword_26D3A33C0);
  if (!v17)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    if (v12(v9, 1, v2) == 1)
    {
      sub_26D3481A4(v9, &qword_2804FB398, &qword_26D3A33C0);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      v14 = *(sub_26D3A11B8() + 16);

      if (v14)
      {
        sub_26D3A11B8();
        sub_26D359118();
      }

      (*(v3 + 8))(v5, v2);
    }

    return result;
  }

  v18 = *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles);
  if (v18 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26D3A1488())
  {

    if (!i)
    {
      break;
    }

    v20 = 0;
    v31 = v18 & 0xFFFFFFFFFFFFFF8;
    v32 = v18 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v21 = sub_26D33E800(v20, v18);
      }

      else
      {
        if (v20 >= *(v31 + 16))
        {
          goto LABEL_31;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 styleKey];
      v25 = sub_26D3A0F98();
      v27 = v26;

      if (v25 == v15 && v17 == v27)
      {

LABEL_29:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
        v30 = swift_allocObject();
        *&result = 1;
        *(v30 + 16) = xmmword_26D3A2290;
        *(v30 + 32) = v22;
        return result;
      }

      v29 = sub_26D3A1518();

      if (v29)
      {

        goto LABEL_29;
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_26:

  return result;
}

void sub_26D3527C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    v6 = sub_26D3A1488();
    v9 = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_26D33E800(0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
LABEL_9:
  if (qword_2804FAB98 != -1)
  {
    swift_once();
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_11:
  v12 = qword_2804FFC38;
  sub_26D345E5C(0, &qword_2804FAEE8, 0x277D76368);
  v13 = v12;
  v14 = sub_26D3A1358();

  if (v9 && (v14 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  sub_26D352360();
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_28:

    if (!v9)
    {
      v24 = 0;
LABEL_32:
      sub_26D359560(v24);
      if (v9)
      {
        goto LABEL_33;
      }

LABEL_24:

      v21 = 0;
LABEL_37:
      sub_26D345E5C(0, &qword_2804FAEE8, 0x277D76368);
      sub_26D352BB0(v21, v8);

      v26 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

      v26(v8, 0);

      (*(v5 + 8))(v8, v4);
      return;
    }

LABEL_29:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = sub_26D33E800(0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_41:
        v25 = sub_26D33E800(0, a1);
LABEL_36:
        v21 = v25;

        goto LABEL_37;
      }

      v24 = *(a1 + 32);
    }

    goto LABEL_32;
  }

LABEL_27:
  v22 = v6;
  v23 = sub_26D3A1488();
  v6 = v22;
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_18:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v6 + 32); ; i = sub_26D33E800(0, v6))
    {
      v16 = i;

      v17 = v16;
      v18 = [v17 styleKey];
      if (!v18)
      {
        sub_26D3A0F98();
        v18 = sub_26D3A0F68();
      }

      v19 = [objc_opt_self() standardUserDefaults];
      v20 = sub_26D3A0F68();
      [v19 setObject:v18 forKey:v20];

      if (!v9)
      {
        break;
      }

LABEL_33:
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_41;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(a1 + 32);
        goto LABEL_36;
      }

      __break(1u);
LABEL_43:
      ;
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_26D352BB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
LABEL_10:
    v14 = MEMORY[0x277D74ED0];
    goto LABEL_15;
  }

  v3 = a1;
  v4 = [v3 styleKey];
  sub_26D3A0F98();

  v5 = sub_26D3A1008();

  v6 = [v3 styleKey];
  v7 = sub_26D3A0F98();
  v9 = v8;

  if ((v5 & 1) == 0)
  {

    *a2 = v7;
    a2[1] = v9;
    goto LABEL_10;
  }

  if (qword_2804FABA0 != -1)
  {
    swift_once();
  }

  v10 = [qword_2804FFC40 styleKey];
  v11 = sub_26D3A0F98();
  v13 = v12;

  if (v11 == v7 && v13 == v9)
  {

LABEL_12:

    v16 = MEMORY[0x277D77130];
    goto LABEL_13;
  }

  v15 = sub_26D3A1518();

  if (v15)
  {
    goto LABEL_12;
  }

  if (qword_2804FABA8 != -1)
  {
    swift_once();
  }

  v22 = [qword_2804FFC48 styleKey];
  v23 = sub_26D3A0F98();
  v25 = v24;

  if (v23 == v7 && v25 == v9)
  {

LABEL_24:

    v16 = MEMORY[0x277D77158];
    goto LABEL_13;
  }

  v26 = sub_26D3A1518();

  if (v26)
  {
    goto LABEL_24;
  }

  if (qword_2804FABB0 != -1)
  {
    swift_once();
  }

  v27 = [qword_2804FFC50 styleKey];
  v28 = sub_26D3A0F98();
  v30 = v29;

  if (v28 == v7 && v30 == v9)
  {

LABEL_31:

    v16 = MEMORY[0x277D77150];
    goto LABEL_13;
  }

  v31 = sub_26D3A1518();

  if (v31)
  {
    goto LABEL_31;
  }

  if (qword_2804FABB8 != -1)
  {
    swift_once();
  }

  v32 = [qword_2804FFC58 styleKey];
  v33 = sub_26D3A0F98();
  v35 = v34;

  if (v33 == v7 && v35 == v9)
  {

LABEL_38:

    v16 = MEMORY[0x277D77140];
    goto LABEL_13;
  }

  v36 = sub_26D3A1518();

  if (v36)
  {
    goto LABEL_38;
  }

  if (qword_2804FABC0 != -1)
  {
    swift_once();
  }

  v37 = [qword_2804FFC60 styleKey];
  v38 = sub_26D3A0F98();
  v40 = v39;

  if (v38 == v7 && v40 == v9)
  {

LABEL_45:

    v16 = MEMORY[0x277D77138];
    goto LABEL_13;
  }

  v41 = sub_26D3A1518();

  if (v41)
  {
    goto LABEL_45;
  }

  if (qword_2804FABC8 != -1)
  {
    swift_once();
  }

  v42 = [qword_2804FFC68 styleKey];
  v43 = sub_26D3A0F98();
  v45 = v44;

  if (v43 == v7 && v45 == v9)
  {
  }

  else
  {
    v46 = sub_26D3A1518();

    if ((v46 & 1) == 0)
    {

      *a2 = 0;
      goto LABEL_14;
    }
  }

  v16 = MEMORY[0x277D77120];
LABEL_13:
  v17 = *v16;

  *a2 = v17;
LABEL_14:
  v14 = MEMORY[0x277D74F60];
LABEL_15:
  v18 = *v14;
  v19 = sub_26D3A12F8();
  v20 = *(*(v19 - 8) + 104);

  return v20(a2, v18, v19);
}

void sub_26D353158()
{
  sub_26D352360();
  if (v0 >> 62)
  {
    v2 = v0;
    v3 = sub_26D3A1488();
    v0 = v2;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_26D353218();
    return;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    sub_26D33E800(0, v0);
    goto LABEL_6;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v0 + 32);
LABEL_6:

    return;
  }

  __break(1u);
}

id sub_26D353218()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_26D3A0F68();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_26D3A0F98();
    v6 = v5;

    v7 = *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles);
    v20 = v0;
    if (v7 >> 62)
    {
      v8 = sub_26D3A1488();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_26D33E800(v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 styleKey];
        v14 = sub_26D3A0F98();
        v16 = v15;

        if (v14 == v4 && v16 == v6)
        {

          goto LABEL_26;
        }

        v18 = sub_26D3A1518();

        if (v18)
        {

          goto LABEL_26;
        }

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_26D3A1488();
      if (!result)
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_18:

    v0 = v20;
  }

  v7 = *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles);
  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 0;
  }

LABEL_21:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v11 = sub_26D33E800(0, v7);
LABEL_26:

    return v11;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v7 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D3534B0(char a1)
{
  v2 = v1;
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398, &qword_26D3A33C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v14 = sub_26D3A1298();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) || (v20 = sub_26D3A1208()) == 0)
  {
    sub_26D3481A4(v13, &qword_2804FB398, &qword_26D3A33C0);
  }

  else
  {
    v21 = v20;
    sub_26D3481A4(v13, &qword_2804FB398, &qword_26D3A33C0);
    [v21 mutableCopy];

    sub_26D3A1378();
    swift_unknownObjectRelease();
    sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
    if (swift_dynamicCast())
    {
      v17 = v37;
      if (v37)
      {
        v16 = v37;
        goto LABEL_13;
      }
    }
  }

  v15 = [objc_opt_self() defaultParagraphStyle];
  [v15 mutableCopy];

  sub_26D3A1378();
  swift_unknownObjectRelease();
  sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
  if (swift_dynamicCast())
  {
    v16 = v37;
    if (v37)
    {
      v17 = 0;
LABEL_13:
      v36 = v17;
      [v16 firstLineHeadIndent];
      if (a1)
      {
        v23 = 28.0;
      }

      else
      {
        v23 = -28.0;
      }

      v24 = v23 + v22;
      if (a1)
      {
        v25 = MEMORY[0x277D74F20];
      }

      else
      {
        v25 = MEMORY[0x277D74F18];
      }

      if (v24 <= 0.0)
      {
        v24 = 0.0;
      }

      [v16 setFirstLineHeadIndent_];
      [v16 headIndent];
      v27 = v23 + v26;
      if (v27 <= 0.0)
      {
        v27 = 0.0;
      }

      [v16 setHeadIndent_];
      v28 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      (*(v5 + 104))(v10, *v25, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758, &qword_26D3A3DD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D3A35F0;
      v30 = *MEMORY[0x277D74118];
      *(inited + 32) = *MEMORY[0x277D74118];
      *(inited + 64) = sub_26D345E5C(0, &qword_2804FB790, 0x277D74240);
      *(inited + 40) = v16;

      v31 = v30;
      v32 = v16;
      v33 = sub_26D358BAC(inited);
      swift_setDeallocating();
      sub_26D3481A4(inited + 32, &qword_2804FC9E0, &unk_26D3A3DE0);
      v28(v10, v33);

      return (*(v5 + 8))(v10, v4);
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  v19 = MEMORY[0x277D74F18];
  if (a1)
  {
    v19 = MEMORY[0x277D74F20];
  }

  (*(v5 + 104))(v8, *v19, v4);

  v18(v8, 0);

  v10 = v8;
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26D3539CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  return v3;
}

uint64_t sub_26D353A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB730, &qword_26D3A3B10);
  v4[18] = swift_task_alloc();
  sub_26D3A10C8();
  v4[19] = sub_26D3A10B8();
  v6 = sub_26D3A10A8();

  return MEMORY[0x2822009F8](sub_26D353B08, v6, v5);
}

uint64_t sub_26D353B08()
{
  v1 = *(v0 + 136);

  v2 = *(v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_allHighlightStyles);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D3A1488())
  {
    v33 = v2 & 0xC000000000000001;
    v31 = v2 & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v32 = v2;
    while (1)
    {
      if (v33)
      {
        v4 = sub_26D33E800(v3, v2);
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v4 = *(v2 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v37 = v3 + 1;
      v6 = *(v0 + 144);
      v7 = sub_26D3A0CA8();
      v8 = [v5 color];
      v9 = sub_26D3A0C18();
      KeyPath = swift_getKeyPath();
      v11 = sub_26D3A0908();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = sub_26D3A0918();
      sub_26D3481A4(v6, &qword_2804FB730, &qword_26D3A3B10);
      v13 = swift_getKeyPath();
      v14 = sub_26D3A0888();
      sub_26D39FFD8();
      *(v0 + 16) = v7;
      *(v0 + 24) = KeyPath;
      *(v0 + 32) = v9;
      *(v0 + 40) = v13;
      *(v0 + 48) = v12;
      *(v0 + 56) = v14;
      *(v0 + 64) = v15;
      *(v0 + 72) = v16;
      *(v0 + 80) = v17;
      *(v0 + 88) = v18;
      *(v0 + 96) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB738, &qword_26D3A3B78);
      swift_allocObject();
      MEMORY[0x26D6BC980](v0 + 16);
      v19 = sub_26D3A0158();
      if (v19)
      {
        v20 = v19;
        if (sub_26D3A1108())
        {

          goto LABEL_16;
        }

        v36 = v5;
        v21 = [v5 styleKey];
        v35 = sub_26D3A0F98();
        v23 = v22;

        swift_getKeyPath();
        swift_getKeyPath();
        v24 = v20;
        v25 = sub_26D39FF58();
        v27 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v27;
        *v27 = 0x8000000000000000;
        sub_26D357890(v24, v35, v23, isUniquelyReferenced_nonNull_native);
        v2 = v32;

        *v27 = v38;
        v25(v0 + 104, 0);

        if (v37 == i)
        {
LABEL_14:

          goto LABEL_16;
        }
      }

      else
      {

        if (v37 == i)
        {
          goto LABEL_14;
        }
      }

      ++v3;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_26D353EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB728, &qword_26D3A3A98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26D34856C(a3, v25 - v10, &qword_2804FB728, &qword_26D3A3A98);
  v12 = sub_26D3A10E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26D3481A4(v11, &qword_2804FB728, &qword_26D3A3A98);
  }

  else
  {
    sub_26D3A10D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26D3A10A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26D3A0FC8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26D3481A4(a3, &qword_2804FB728, &qword_26D3A3A98);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26D3481A4(a3, &qword_2804FB728, &qword_26D3A3A98);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_26D3541F8(id *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v8 = [*a1 components];
  v9 = sub_26D345E5C(0, &qword_2804FADB8, 0x277D75BC0);
  v10 = sub_26D3A1058();

  v40 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26D3A1488())
  {
    v32 = v9;
    v33 = a4;
    v34 = v5;
    v11 = 0;
    a4 = (v10 & 0xC000000000000001);
    v37 = v10 & 0xFFFFFFFFFFFFFF8;
    v36 = a2;
    v5 = &off_279D9B000;
    while (1)
    {
      if (a4)
      {
        v12 = sub_26D33E5CC(v11, v10);
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v12 = *(v10 + 8 * v11 + 32);
      }

      v9 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 v5[234]];
      v15 = sub_26D3A1308();

      if (!v15)
      {
        v15 = [v9 v5[234]];
      }

      swift_beginAccess();
      v16 = v15;
      v17 = sub_26D3426BC(&v39, v16);
      swift_endAccess();

      if (v17)
      {
        v18 = v10;
        v19 = a4;
        v20 = [v9 componentKey];
        v21 = sub_26D3A0F98();
        v23 = v22;
        if (v21 == sub_26D3A0F98() && v23 == v24)
        {

          goto LABEL_17;
        }

        v25 = sub_26D3A1518();

        if (v25)
        {
LABEL_17:
          if ((a3 & 1) == 0)
          {

            a4 = v19;
LABEL_22:
            v10 = v18;
            a2 = v36;
            goto LABEL_5;
          }
        }

        v26 = [v9 componentKey];
        v27 = sub_26D3545B4(v26);

        a4 = v19;
        if ((v27 & 1) != 0 || (objc_opt_self(), swift_dynamicCastObjCClass()))
        {
          sub_26D3A1408();
          sub_26D3A1438();
          sub_26D3A1448();
          sub_26D3A1418();
        }

        else
        {
        }

        goto LABEL_22;
      }

LABEL_5:
      v5 = &off_279D9B000;
      ++v11;
      if (v13 == i)
      {
        v28 = v40;
        a4 = v33;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_30:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    if (sub_26D3A1488())
    {
      goto LABEL_33;
    }

LABEL_35:

    v31 = 0;
    goto LABEL_36;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_35;
  }

LABEL_33:
  v29 = objc_allocWithZone(MEMORY[0x277D75BC8]);
  v30 = sub_26D3A1038();

  v31 = [v29 initWithComponents_];

LABEL_36:
  *a4 = v31;
}

uint64_t sub_26D3545B4(void *a1)
{
  v2 = sub_26D3A1308();
  if (!v2)
  {
    v2 = a1;
  }

  v3 = v2;
  v4 = sub_26D3A0F98();
  v6 = v5;
  if (v4 == sub_26D3A0F98() && v6 == v7)
  {
    goto LABEL_16;
  }

  v9 = sub_26D3A1518();

  if (v9)
  {
LABEL_8:

    return 1;
  }

  v10 = sub_26D3A0F98();
  v12 = v11;
  if (v10 == sub_26D3A0F98() && v12 == v13)
  {
    goto LABEL_16;
  }

  v15 = sub_26D3A1518();

  if (v15)
  {
    goto LABEL_8;
  }

  v16 = sub_26D3A0F98();
  v18 = v17;
  if (v16 == sub_26D3A0F98() && v18 == v19)
  {
    goto LABEL_16;
  }

  v21 = sub_26D3A1518();

  if (v21)
  {
    goto LABEL_8;
  }

  v22 = sub_26D3A0F98();
  v24 = v23;
  if (v22 == sub_26D3A0F98() && v24 == v25)
  {
    goto LABEL_16;
  }

  v26 = sub_26D3A1518();

  if (v26)
  {
    goto LABEL_8;
  }

  v27 = sub_26D3A0F98();
  v29 = v28;
  if (v27 == sub_26D3A0F98() && v29 == v30)
  {
    goto LABEL_16;
  }

  v31 = sub_26D3A1518();

  if (v31)
  {
    goto LABEL_8;
  }

  v32 = sub_26D3A0F98();
  v34 = v33;
  if (v32 == sub_26D3A0F98() && v34 == v35)
  {
    goto LABEL_16;
  }

  v36 = sub_26D3A1518();

  if (v36)
  {
    goto LABEL_8;
  }

  v37 = sub_26D3A0F98();
  v39 = v38;
  if (v37 == sub_26D3A0F98() && v39 == v40)
  {
    goto LABEL_16;
  }

  v41 = sub_26D3A1518();

  if (v41)
  {
    goto LABEL_8;
  }

  v42 = sub_26D3A0F98();
  v44 = v43;
  if (v42 == sub_26D3A0F98() && v44 == v45)
  {
    goto LABEL_16;
  }

  v46 = sub_26D3A1518();

  if (v46)
  {
    goto LABEL_8;
  }

  v47 = sub_26D3A0F98();
  v49 = v48;
  if (v47 == sub_26D3A0F98() && v49 == v50)
  {
    goto LABEL_16;
  }

  v51 = sub_26D3A1518();

  if (v51)
  {
    goto LABEL_8;
  }

  v52 = sub_26D3A0F98();
  v54 = v53;
  if (v52 == sub_26D3A0F98() && v54 == v55)
  {
    goto LABEL_16;
  }

  v56 = sub_26D3A1518();

  if (v56)
  {
    goto LABEL_8;
  }

  v57 = sub_26D3A0F98();
  v59 = v58;
  if (v57 == sub_26D3A0F98() && v59 == v60)
  {
    goto LABEL_16;
  }

  v61 = sub_26D3A1518();

  if (v61)
  {
    goto LABEL_8;
  }

  v62 = sub_26D3A0F98();
  v64 = v63;
  if (v62 == sub_26D3A0F98() && v64 == v65)
  {
    goto LABEL_16;
  }

  v66 = sub_26D3A1518();

  if (v66)
  {
    goto LABEL_8;
  }

  v67 = sub_26D3A0F98();
  v69 = v68;
  if (v67 == sub_26D3A0F98() && v69 == v70)
  {
    goto LABEL_16;
  }

  v71 = sub_26D3A1518();

  if (v71)
  {
    goto LABEL_8;
  }

  v72 = sub_26D3A0F98();
  v74 = v73;
  if (v72 == sub_26D3A0F98() && v74 == v75)
  {
    goto LABEL_16;
  }

  v76 = sub_26D3A1518();

  if (v76)
  {
    goto LABEL_8;
  }

  v77 = sub_26D3A0F98();
  v79 = v78;
  if (v77 == sub_26D3A0F98() && v79 == v80)
  {
    goto LABEL_16;
  }

  v81 = sub_26D3A1518();

  if (v81)
  {
    goto LABEL_8;
  }

  v82 = sub_26D3A0F98();
  v84 = v83;
  if (v82 == sub_26D3A0F98() && v84 == v85)
  {
    goto LABEL_16;
  }

  v86 = sub_26D3A1518();

  if (v86)
  {
    goto LABEL_8;
  }

  v87 = sub_26D3A0F98();
  v89 = v88;
  if (v87 == sub_26D3A0F98() && v89 == v90)
  {
LABEL_16:

    return 1;
  }

  v91 = sub_26D3A1518();

  return v91 & 1;
}

uint64_t sub_26D354CB0()
{
  v1 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__groups;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB688, &qword_26D3A37C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__useLandscapeLayout;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB690, &qword_26D3A37D0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__recentFonts;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB698, &qword_26D3A37D8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__formattingDescriptor;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6A0, &qword_26D3A37E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__formattingStyles;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6A8, &qword_26D3A37E8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__emphasisStyles;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6B0, &qword_26D3A37F0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v5(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__isFormattingUITextView, v4);
  v14 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__disabledComponents;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6B8, &qword_26D3A37F8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  v16 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__layout;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6C0, &qword_26D3A3800);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__uiConfig;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6C8, &qword_26D3A3808);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__availableWidth;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6D0, &qword_26D3A3810);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__idealHeight;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6D8, &qword_26D3A3818);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v5(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__hasParentBottomSafeAreaInset, v4);

  sub_26D3557B4(*(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_close), *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_close + 8));

  v24 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState__highlightPreviewImages;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB6E0, &qword_26D3A3820);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);

  return v0;
}

uint64_t sub_26D355164()
{
  sub_26D354CB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TextFormattingState(uint64_t a1)
{
  result = qword_2804FB5E8;
  if (!qword_2804FB5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D355210(uint64_t a1)
{
  sub_26D3556F4(319, &qword_2804FB5F8, &qword_2804FB600, &qword_26D3A3648);
  if (v1 <= 0x3F)
  {
    sub_26D3556A8(319, &qword_2804FB608, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_26D3556F4(319, &qword_2804FB610, &qword_2804FB618, &unk_26D3A3650);
      if (v3 <= 0x3F)
      {
        sub_26D3556F4(319, &qword_2804FB620, &qword_2804FB398, &qword_26D3A33C0);
        if (v4 <= 0x3F)
        {
          sub_26D3556F4(319, &qword_2804FB628, &qword_2804FB630, &qword_26D3A3660);
          if (v5 <= 0x3F)
          {
            sub_26D3556F4(319, &qword_2804FB638, &qword_2804FB640, &qword_26D3A3668);
            if (v6 <= 0x3F)
            {
              sub_26D3556F4(319, &qword_2804FB648, &qword_2804FB650, &qword_26D3A3670);
              if (v7 <= 0x3F)
              {
                sub_26D3556A8(319, &qword_2804FB658, &type metadata for TextFormattingLayout);
                if (v8 <= 0x3F)
                {
                  sub_26D3556A8(319, &qword_2804FB660, &type metadata for TFUIConfig);
                  if (v9 <= 0x3F)
                  {
                    sub_26D3556A8(319, &qword_2804FB668, MEMORY[0x277D85048]);
                    if (v10 <= 0x3F)
                    {
                      sub_26D3556F4(319, &qword_2804FB670, &qword_2804FC4F0, &qword_26D3A4FE0);
                      if (v11 <= 0x3F)
                      {
                        sub_26D3556F4(319, &qword_2804FB678, &qword_2804FB680, &qword_26D3A36F8);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26D3556A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26D39FF88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26D3556F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26D39FF88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D355754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D39FF38();
  *a1 = result;
  return result;
}

uint64_t sub_26D3557B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26D3557C4()
{
  v3 = sub_26D33C3F4(1uLL, &unk_287EB6148);
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  v6 = v2;
  v7 = v1;
  v8 = v0;
  sub_26D3A1528();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 != (v6 >> 1) - v7)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
    v2 = v6;
    v1 = v7;
    v0 = v8;
LABEL_2:
    sub_26D340A78(v3, v0, v1, v2);
    v5 = v4;
LABEL_9:
    result = swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v5 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  qword_2804FFC20 = v5;
  return result;
}

uint64_t sub_26D3558D4()
{
  sub_26D3A1568();
  sub_26D3A0FD8();

  return sub_26D3A1588();
}

uint64_t sub_26D355988(uint64_t a1)
{
  sub_26D3A0FD8();
}

uint64_t sub_26D355A28(uint64_t a1)
{
  sub_26D3A1568();
  sub_26D3A0FD8();

  return sub_26D3A1588();
}

unint64_t sub_26D355AD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D359648(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D355B08(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1668508004;
  v4 = 0xE700000000000000;
  v5 = 0x6C616D69636564;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6568707968;
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

void sub_26D355BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB788, &qword_26D3A3DF8);
  v0 = swift_allocObject();
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = 0;
  v3 = v1 - 32;
  if (v1 < 32)
  {
    v3 = v1 - 25;
  }

  *(v0 + 16) = 5;
  *(v0 + 24) = 2 * (v3 >> 3);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 32) = xmmword_26D3A3600;
  *(v0 + 48) = xmmword_26D3A3610;
  *(v0 + 64) = 4;
  v28 = v4;
  while (v2 < *(v0 + 16))
  {
    v5 = *(v0 + 8 * v2 + 32);
    v27 = MEMORY[0x277D84F90];
    sub_26D340B38(0, 6, 0);
    v6 = v27;
    v7 = exp2(v5);
    if (v7 == INFINITY)
    {
      goto LABEL_29;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v8 = v7;
    v9 = 8 * v7;
    v10 = 7 * v7;
    if ((v7 * 7) >> 64 != v10 >> 63)
    {
      goto LABEL_32;
    }

    v12 = *(v27 + 16);
    v11 = *(v27 + 24);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      sub_26D340B38((v11 > 1), v12 + 1, 1);
      v6 = v27;
    }

    *(v6 + 16) = v13;
    *(v6 + 8 * v12 + 32) = v10;
    if ((v8 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_33;
    }

    v14 = *(v6 + 24);
    v15 = v12 + 2;
    if (v13 >= v14 >> 1)
    {
      sub_26D340B38((v14 > 1), v15, 1);
      v6 = v27;
    }

    *(v6 + 16) = v15;
    *(v6 + 8 * v13 + 32) = v9;
    if ((v8 * 9) >> 64 != (9 * v8) >> 63)
    {
      goto LABEL_34;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_26D340B38((v16 > 1), v17 + 1, 1);
    }

    v19 = v27;
    *(v27 + 16) = v18;
    *(v27 + 8 * v17 + 32) = (9 * v8);
    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
    {
      goto LABEL_35;
    }

    v20 = *(v27 + 24);
    v21 = v17 + 2;
    if (v18 >= v20 >> 1)
    {
      sub_26D340B38((v20 > 1), v21, 1);
      v19 = v27;
    }

    *(v19 + 16) = v21;
    *(v19 + 8 * v18 + 32) = (10 * v8);
    if ((v8 * 11) >> 64 != (11 * v8) >> 63)
    {
      goto LABEL_36;
    }

    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_26D340B38((v22 > 1), v23 + 1, 1);
      v19 = v27;
    }

    *(v19 + 16) = v24;
    *(v19 + 8 * v23 + 32) = (11 * v8);
    if ((v8 * 12) >> 64 != (12 * v8) >> 63)
    {
      goto LABEL_37;
    }

    v25 = *(v19 + 24);
    v26 = v23 + 2;
    if (v24 >= v25 >> 1)
    {
      sub_26D340B38((v25 > 1), v26, 1);
    }

    ++v2;
    *(v27 + 16) = v26;
    *(v27 + 8 * v24 + 32) = (12 * v8);
    sub_26D357654(v27);
    if (v2 == 5)
    {

      qword_2804FFC28 = v28;
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
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
LABEL_37:
  __break(1u);
}

uint64_t sub_26D355F68(double a1)
{
  if (qword_2804FAB80 != -1)
  {
    swift_once();
  }

  qword_2804FFC30 = qword_2804FFC28;
}

id sub_26D355FCC()
{
  v0 = sub_26D39FE98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  sub_26D39FE88();
  v5 = sub_26D39FE78();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  result = [v4 setMaximumFractionDigits_];
  qword_2804FB548 = v4;
  return result;
}

void sub_26D3560FC(double a1)
{
  if (qword_2804FACC0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 secondaryLabelColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC38 = v6;
}

void sub_26D356214(double a1)
{
  if (qword_2804FACC0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPurpleColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC40 = v6;
}

void sub_26D35632C(double a1)
{
  if (qword_2804FACC0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPurpleColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC48 = v6;
}

void sub_26D356444(double a1)
{
  if (qword_2804FACC8 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPinkColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC50 = v6;
}

void sub_26D35655C(double a1)
{
  if (qword_2804FACD0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemOrangeColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC58 = v6;
}

void sub_26D356674(double a1)
{
  if (qword_2804FACD8 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemMintColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC60 = v6;
}

void sub_26D35678C(double a1)
{
  if (qword_2804FACE0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemBlueColor];
  v3 = objc_allocWithZone(MEMORY[0x277D76368]);
  v4 = sub_26D3A0F68();
  v5 = sub_26D3A0F68();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_2804FFC68 = v6;
}

id sub_26D3568A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26D3A3620;
  if (qword_2804FABA8 != -1)
  {
    swift_once();
  }

  v1 = qword_2804FFC48;
  *(v0 + 32) = qword_2804FFC48;
  v2 = qword_2804FABB0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_2804FFC50;
  *(v0 + 40) = qword_2804FFC50;
  v5 = qword_2804FABB8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_2804FFC58;
  *(v0 + 48) = qword_2804FFC58;
  v8 = qword_2804FABC0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2804FFC60;
  *(v0 + 56) = qword_2804FFC60;
  v11 = qword_2804FABC8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_2804FFC68;
  *(v0 + 64) = qword_2804FFC68;
  qword_2804FFC70 = v0;

  return v13;
}

uint64_t sub_26D356A94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26D39FF78();
}

uint64_t sub_26D356B0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26D356C04;

  return v6(a1);
}

uint64_t sub_26D356C04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D356CFC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26D3448E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26D3A1508();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26D3A1078();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26D356E34(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26D356E34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_26D342460(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_26D357370((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26D33EA68(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_26D33EA68((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_26D357370((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26D342460(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_26D3423D4(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}