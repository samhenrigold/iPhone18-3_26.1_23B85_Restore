uint64_t sub_21CFA3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CF9D320(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21CFA2CB4(v18, a5 & 1);
      v13 = sub_21CF9D320(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21CFA410C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_21CFA3C74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_21CF9D320(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_21CFA2F74(v20, a4 & 1, a5, a6);
      v15 = sub_21CF9D320(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_21CFA4284(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_21CFA3E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF9D320(a2, a3);
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
      sub_21CFA3214(v16, a4 & 1);
      v11 = sub_21CF9D320(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CFA43E4();
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

uint64_t sub_21CFA3F90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF9D320(a2, a3);
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
      sub_21CFA34BC(v16, a4 & 1);
      v11 = sub_21CF9D320(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21D022B54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CFA4554();
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

void *sub_21CFA410C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45510, &qword_21D024200);
  v2 = *v0;
  v3 = sub_21D022A44();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_21CFA4284(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21D022A44();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_21CFA43E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F0, &qword_21D0241E0);
  v2 = *v0;
  v3 = sub_21D022A44();
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

void *sub_21CFA4554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F8, &qword_21D0241E8);
  v2 = *v0;
  v3 = sub_21D022A44();
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

uint64_t sub_21CFA46C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF83390;

  return sub_21CFA0930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CFA478C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CF95398;

  return sub_21CFA11F4(a1, v4, v5, v6);
}

uint64_t sub_21CFA484C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CFA4894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_21CF83390;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_21CFA4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(a11 + 16) + **(a11 + 16));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_21CF83390;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

PrivateMLClient::PrivateMLClientErrorCode_optional __swiftcall PrivateMLClientErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PrivateMLClientErrorCode.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_21CFA4BDC()
{
  v1 = *v0;
  sub_21D022C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x223D3A6E0](v2);
  return sub_21D022C24();
}

uint64_t sub_21CFA4C2C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x223D3A6E0](v1);
}

uint64_t sub_21CFA4C64()
{
  v1 = *v0;
  sub_21D022C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x223D3A6E0](v2);
  return sub_21D022C24();
}

void *sub_21CFA4CB0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_21CFA4CD0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t PrivateMLClientError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDED0];
  v3 = sub_21D022064();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_21CFA4D9C()
{
  result = qword_27CE455C0;
  if (!qword_27CE455C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE455C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLClientErrorCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateMLClientErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21CFA4F74(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21CFB493C(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CFB493C((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
  result = sub_21CF7F260(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5);
  *v1 = v3;
  return result;
}

uint64_t sub_21CFA509C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_21D022B24();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21CFA52A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000021D02D2F0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000021D02D310;
    }

    v5 = 0x800000021D02D2B0;
    if (a1 != 3)
    {
      v5 = 0x800000021D02D2D0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_21D022B24();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000021D02D2F0;
    }

    else
    {
      v10 = 0x800000021D02D310;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000021D02D2B0;
    }

    else
    {
      v10 = 0x800000021D02D2D0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21CFA5478(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_21D022B24();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

unint64_t PrivateMLRequest.Response.CompletionReason.description.getter()
{
  v1 = 0x526E776F6E6B6E75;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_21CFA56F8()
{
  v1 = 0x526E776F6E6B6E75;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t PrivateMLRequest.Response.makeAsyncEventsIterator(transparencyReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrivateMLRequest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455C8, &unk_21D0246A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-1] - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  sub_21D0227B4();
  v12 = type metadata accessor for PrivateMLRequest.Response(0);
  sub_21CFB519C(v2 + *(v12 + 20), v7, type metadata accessor for PrivateMLRequest);
  sub_21CF8F87C(a1, v18);
  v13 = type metadata accessor for PrivateMLRequest.Response.AsyncEventsIterator(0);
  v14 = v13[6];
  v15 = *(v9 + 56);
  v15(a2 + v14, 1, 1, v8);
  sub_21CF7F200(a2 + v14, &qword_27CE455D0, &qword_21D0246B0);
  (*(v9 + 16))(a2 + v14, v11, v8);
  v15(a2 + v14, 0, 1, v8);
  sub_21CFB519C(v7, a2 + v13[5], type metadata accessor for PrivateMLRequest);
  sub_21CF8F87C(v18, a2 + v13[7]);
  sub_21D022494();
  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_21CFB513C(v7, type metadata accessor for PrivateMLRequest);
  return (*(v9 + 8))(v11, v8);
}

uint64_t PrivateMLRequest.Response.AsyncEventsIterator.next()(uint64_t a1)
{
  v2[342] = v1;
  v2[341] = a1;
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  v2[343] = swift_task_alloc();
  v2[344] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v2[345] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v2[346] = swift_task_alloc();
  v2[347] = swift_task_alloc();
  v2[348] = type metadata accessor for PrivateMLClientAlertService(0);
  v2[349] = swift_task_alloc();
  v2[350] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v2[351] = swift_task_alloc();
  v2[352] = swift_task_alloc();
  v2[353] = swift_task_alloc();
  v2[354] = swift_task_alloc();
  v2[355] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v2[356] = swift_task_alloc();
  v2[357] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  v2[358] = v3;
  v2[359] = *(v3 - 8);
  v2[360] = swift_task_alloc();
  v2[361] = swift_task_alloc();
  v2[362] = swift_task_alloc();
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v2[363] = v4;
  v2[364] = *(v4 - 8);
  v2[365] = swift_task_alloc();
  v2[366] = swift_task_alloc();
  v2[367] = swift_task_alloc();
  v2[368] = swift_task_alloc();
  v2[369] = swift_task_alloc();
  v2[370] = swift_task_alloc();
  v2[371] = swift_task_alloc();
  v2[372] = swift_task_alloc();
  v2[373] = swift_task_alloc();
  v2[374] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v2[375] = swift_task_alloc();
  v2[376] = swift_task_alloc();
  v2[377] = swift_task_alloc();
  v2[378] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v2[379] = v5;
  v2[380] = *(v5 - 8);
  v2[381] = swift_task_alloc();
  v2[382] = swift_task_alloc();
  v2[383] = swift_task_alloc();
  v2[384] = swift_task_alloc();
  v2[385] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
  v2[386] = swift_task_alloc();
  v2[387] = swift_task_alloc();
  v2[388] = swift_task_alloc();
  v2[389] = swift_task_alloc();
  v2[390] = swift_task_alloc();
  v2[391] = swift_task_alloc();
  v2[392] = swift_task_alloc();
  v2[393] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v2[394] = swift_task_alloc();
  v2[395] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v2[396] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  v2[397] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45240, &unk_21D0246E0);
  v2[398] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v2[399] = v6;
  v2[400] = *(v6 - 8);
  v2[401] = swift_task_alloc();
  v2[402] = swift_task_alloc();
  v2[403] = swift_task_alloc();
  v2[404] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v2[405] = swift_task_alloc();
  v2[406] = swift_task_alloc();
  v2[407] = swift_task_alloc();
  v2[408] = swift_task_alloc();
  v2[409] = swift_task_alloc();
  v2[410] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v2[411] = swift_task_alloc();
  v2[412] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v2[413] = swift_task_alloc();
  sub_21D021D34();
  v2[414] = swift_task_alloc();
  v2[415] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0);
  v2[416] = swift_task_alloc();
  v7 = sub_21D0224A4();
  v2[417] = v7;
  v2[418] = *(v7 - 8);
  v2[419] = swift_task_alloc();
  v2[420] = swift_task_alloc();
  v2[421] = swift_task_alloc();
  v2[422] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  v2[424] = swift_task_alloc();
  v2[425] = swift_task_alloc();
  v2[426] = swift_task_alloc();
  v2[427] = swift_task_alloc();
  v2[428] = swift_task_alloc();
  v2[429] = swift_task_alloc();
  v2[430] = swift_task_alloc();
  v2[431] = swift_task_alloc();
  v2[432] = swift_task_alloc();
  v2[433] = swift_task_alloc();
  v2[434] = swift_task_alloc();
  v2[435] = swift_task_alloc();
  v2[436] = swift_task_alloc();
  v2[437] = swift_task_alloc();
  v2[438] = swift_task_alloc();
  v2[439] = swift_task_alloc();
  v2[440] = swift_task_alloc();
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  v2[443] = swift_task_alloc();
  v2[444] = swift_task_alloc();
  v2[445] = swift_task_alloc();
  v2[446] = swift_task_alloc();
  v2[447] = swift_task_alloc();
  v2[448] = swift_task_alloc();
  v2[449] = swift_task_alloc();
  v2[450] = swift_task_alloc();
  v2[451] = swift_task_alloc();
  v2[452] = swift_task_alloc();
  v2[453] = swift_task_alloc();
  v8 = sub_21D021A74();
  v2[454] = v8;
  v2[455] = *(v8 - 8);
  v2[456] = swift_task_alloc();
  v2[457] = swift_task_alloc();
  v2[458] = swift_task_alloc();
  v2[459] = swift_task_alloc();
  v2[460] = swift_task_alloc();
  v2[461] = swift_task_alloc();
  v2[462] = swift_task_alloc();
  v2[463] = swift_task_alloc();
  v2[464] = swift_task_alloc();
  v2[465] = swift_task_alloc();
  v2[466] = swift_task_alloc();
  v2[467] = swift_task_alloc();
  v2[468] = swift_task_alloc();
  v2[469] = swift_task_alloc();
  v2[470] = swift_task_alloc();
  v2[471] = swift_task_alloc();
  v2[472] = swift_task_alloc();
  v2[473] = swift_task_alloc();
  v2[474] = swift_task_alloc();
  v2[475] = swift_task_alloc();
  v2[476] = swift_task_alloc();
  v2[477] = swift_task_alloc();
  v2[478] = swift_task_alloc();
  v2[479] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CFA64D8, 0, 0);
}

uint64_t sub_21CFA64D8()
{
  v48 = v0;
  v1 = *(v0 + 3832);
  v2 = *(v0 + 3824);
  v3 = *(v0 + 3640);
  v4 = *(v0 + 3632);
  v5 = *(v0 + 3624);
  v6 = *(v0 + 3344);
  v7 = *(v0 + 3336);
  v8 = *(v0 + 2736);
  v9 = type metadata accessor for PrivateMLRequest.Response.AsyncEventsIterator(0);
  *(v0 + 3840) = v9;
  v46 = v9;
  v10 = *(v9 + 20);
  *(v0 + 2268) = v10;
  v11 = *(v3 + 16);
  *(v0 + 3848) = v11;
  *(v0 + 3856) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v8 + v10, v4);
  v12 = *(v6 + 16);
  *(v0 + 3864) = v12;
  *(v0 + 3872) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v8, v7);
  v11(v2, v1, v4);
  v13 = sub_21D022484();
  v14 = sub_21D0228D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 3824);
  v17 = *(v0 + 3640);
  v18 = *(v0 + 3632);
  v19 = *(v0 + 3624);
  v20 = *(v0 + 3344);
  v21 = *(v0 + 3336);
  if (v15)
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v22 = 136315138;
    sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = v21;
    v44 = v19;
    v23 = sub_21D022B04();
    v25 = v24;
    v42 = v14;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_21CF9703C(v23, v25, &v47);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21CF72000, v13, v42, "%s waiting for next response data", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D3ADE0](v45, -1, -1);
    MEMORY[0x223D3ADE0](v22, -1, -1);

    v28 = *(v20 + 8);
    v28(v44, v43);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    v28 = *(v20 + 8);
    v28(v19, v21);
  }

  *(v0 + 3888) = v26;
  *(v0 + 3880) = v28;
  v29 = *(v0 + 2736);
  v30 = *(v46 + 24);
  *(v0 + 2348) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455C8, &unk_21D0246A0);
  *(v0 + 3896) = v31;
  v32 = *(v31 - 8);
  *(v0 + 3904) = v32;
  if ((*(v32 + 48))(v29 + v30, 1, v31))
  {
    v26(*(v0 + 3832), *(v0 + 3632));
    v33 = *(v0 + 3904);
    v34 = *(v0 + 3896);
    v35 = *(v0 + 2348);
    v36 = *(v0 + 2736);
    v37 = *(v0 + 2728);
    sub_21CF7F200(v36 + v35, &qword_27CE455D0, &qword_21D0246B0);
    (*(v33 + 56))(v36 + v35, 1, 1, v34);
    v38 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v41 = swift_task_alloc();
    *(v0 + 3912) = v41;
    *v41 = v0;
    v41[1] = sub_21CFA6FD0;

    return MEMORY[0x2822005B0](v0 + 2712, v31);
  }
}

uint64_t sub_21CFA6FD0()
{
  *(*v1 + 3920) = v0;

  if (v0)
  {
    v2 = sub_21CFAF990;
  }

  else
  {
    v2 = sub_21CFA70E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CFA70E4()
{
  v1226 = v0;
  v1 = v0;
  v2 = *(v0 + 2720);
  if (v2 >> 60 == 15)
  {
    (*(v0 + 3888))(*(v0 + 3832), *(v0 + 3632));
    v3 = *(v0 + 3904);
    v4 = *(v1 + 3896);
    v5 = *(v1 + 2348);
    v6 = *(v1 + 2736);
    v7 = *(v1 + 2728);
    sub_21CF7F200(v6 + v5, &qword_27CE455D0, &qword_21D0246B0);
    (*(v3 + 56))(v6 + v5, 1, 1, v4);
    v8 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v7;
LABEL_3:
    v11 = 1;
LABEL_4:
    v9(v10, v11, 1, v8);
    goto LABEL_5;
  }

  v13 = *(v0 + 2712);
  v14 = *(v0 + 3848);
  v15 = *(v0 + 3832);
  v16 = *(v0 + 3816);
  v17 = *(v0 + 3632);
  (*(v0 + 3864))(*(v0 + 3616), *(v0 + 2736), *(v0 + 3336));
  v14(v16, v15, v17);
  sub_21CF9EDB8(v13, v2);
  sub_21CF8F3E0(v13, v2);
  v18 = sub_21D022484();
  v19 = sub_21D0228D4();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 3888);
  v1200 = v1;
  if (!v20)
  {
    v1189 = *(v1 + 3880);
    v30 = *(v1 + 3816);
    v31 = *(v1 + 3632);
    v32 = *(v1 + 3616);
    v33 = *(v1 + 3336);
    sub_21CF94FCC(v13, v2);
    v21(v30, v31);
    sub_21CF94FCC(v13, v2);

    v1189(v32, v33);
    goto LABEL_19;
  }

  v1088 = v13;
  v22 = *(v1 + 3816);
  v1089 = v2;
  v23 = *(v1 + 3632);
  v24 = swift_slowAlloc();
  v1188 = swift_slowAlloc();
  *&v1217 = v1188;
  *v24 = 136315394;
  sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v25 = sub_21D022B04();
  v27 = sub_21CF9703C(v25, v26, &v1217);

  *(v24 + 4) = v27;
  v21(v22, v23);
  *(v24 + 12) = 2048;
  v28 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      sub_21CF94FCC(v13, v2);
      v29 = v34 - v35;
      v1 = v1200;
      if (__OFSUB__(v34, v35))
      {
        goto LABEL_374;
      }

      goto LABEL_18;
    }

    sub_21CF94FCC(v13, v2);
    v29 = 0;
  }

  else
  {
    if (v28)
    {
      v34 = HIDWORD(v13);
      sub_21CF94FCC(v13, v2);
      LODWORD(v29) = HIDWORD(v13) - v13;
      v1 = v1200;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_375;
      }

      v29 = v29;
      goto LABEL_18;
    }

    sub_21CF94FCC(v13, v2);
    v29 = BYTE6(v2);
  }

  v1 = v1200;
LABEL_18:
  v36 = *(v1 + 3880);
  v37 = *(v1 + 3616);
  v38 = *(v1 + 3336);
  *(v24 + 14) = v29;
  sub_21CF94FCC(v13, v2);
  _os_log_impl(&dword_21CF72000, v18, v19, "%s received next response data %ld", v24, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v1188);
  MEMORY[0x223D3ADE0](v1188, -1, -1);
  MEMORY[0x223D3ADE0](v24, -1, -1);

  v36(v37, v38);
LABEL_19:
  v39 = *(v1 + 3920);
  *&v1219 = 0;
  v1217 = 0u;
  v1218 = 0u;
  sub_21CF8F3E0(v13, v2);
  sub_21D021D24();
  sub_21CFB5744(qword_28121B828, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse, &unk_21D02CA18);
  sub_21D021EB4();
  if (v39)
  {
    (*(v1 + 3888))(*(v1 + 3832), *(v1 + 3632));
    sub_21CF94FCC(v13, v2);
LABEL_31:

    v12 = *(v1 + 8);
    goto LABEL_32;
  }

  v40 = *(v1 + 3304);
  sub_21CF7F198(*(v1 + 3328), v40, &qword_27CE455F8, &qword_21D0246F0);
  v41 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v1089 = v2;
  v1088 = v13;
  if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
  {
    v42 = *(v1 + 3848);
    v43 = *(v1 + 3832);
    v44 = *(v1 + 3648);
    v45 = *(v1 + 3632);
    (*(v1 + 3864))(*(v1 + 3352), *(v1 + 2736), *(v1 + 3336));
    v42(v44, v43, v45);
    v46 = sub_21D022484();
    v47 = sub_21D0228C4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 3888);
    v50 = *(v1 + 3880);
    v51 = *(v1 + 3648);
    v52 = v1;
    v53 = *(v1 + 3632);
    v54 = *(v52 + 3352);
    v55 = *(v52 + 3336);
    if (v48)
    {
      v1170 = *(v52 + 3336);
      v56 = swift_slowAlloc();
      v1152 = v50;
      v57 = swift_slowAlloc();
      *&v1217 = v57;
      *v56 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v58 = sub_21D022B04();
      v1131 = v54;
      v60 = sub_21CF9703C(v58, v59, &v1217);

      *(v56 + 4) = v60;
      v49(v51, v53);
      _os_log_impl(&dword_21CF72000, v46, v47, "%s received nil response type", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x223D3ADE0](v57, -1, -1);
      MEMORY[0x223D3ADE0](v56, -1, -1);

      v1152(v1131, v1170);
    }

    else
    {
      v49(v51, v53);

      v50(v54, v55);
    }

    v1 = v1200;
    v86 = *(v1200 + 3904);
    v87 = *(v1200 + 3896);
    v88 = *(v1200 + 2348);
    v89 = *(v1200 + 3888);
    v90 = *(v1200 + 3832);
    v91 = *(v1200 + 3632);
    v92 = *(v1200 + 3328);
    v93 = *(v1200 + 2736);
    sub_21CF7F200(v93 + v88, &qword_27CE455D0, &qword_21D0246B0);
    (*(v86 + 56))(v93 + v88, 1, 1, v87);
    sub_21CF9ED64();
    swift_allocError();
    *v94 = 0u;
    *(v94 + 16) = 0u;
    *(v94 + 32) = 0u;
    *(v94 + 48) = -96;
    swift_willThrow();
    sub_21CF94FCC(v13, v1089);
    sub_21CFB513C(v92, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v89(v90, v91);
    goto LABEL_31;
  }

  v61 = *(v1 + 3304);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v139 = *(v1 + 3864);
      v1174 = *(v1 + 3848);
      v140 = *(v1 + 3832);
      v141 = *(v1 + 3808);
      v142 = *(v1 + 3632);
      v143 = *(v1 + 3608);
      v144 = *(v1 + 3336);
      v145 = *(v1 + 3296);
      v1154 = *(v1 + 3288);
      v146 = *(v1 + 2736);
      sub_21CFB537C(v61, v145, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v139(v143, v146, v144);
      v1174(v141, v140, v142);
      sub_21CFB519C(v145, v1154, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v147 = sub_21D022484();
      v1175 = sub_21D0228B4();
      v148 = os_log_type_enabled(v147, v1175);
      v149 = *(v1 + 3888);
      v150 = *(v1 + 3880);
      v151 = *(v1 + 3808);
      v152 = *(v1 + 3632);
      v153 = *(v1 + 3608);
      v154 = *(v1 + 3336);
      v155 = *(v1 + 3288);
      if (v148)
      {
        v1155 = *(v1 + 3336);
        v156 = swift_slowAlloc();
        v1135 = swift_slowAlloc();
        *&v1217 = v1135;
        *v156 = 136315394;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v157 = sub_21D022B04();
        v1111 = v153;
        v159 = sub_21CF9703C(v157, v158, &v1217);

        *(v156 + 4) = v159;
        v149(v151, v152);
        *(v156 + 12) = 2080;
        sub_21CFB5744(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse, &unk_21D02C9A0);
        v160 = sub_21D021EE4();
        v162 = sub_21CF9703C(v160, v161, &v1217);

        *(v156 + 14) = v162;
        sub_21CFB513C(v155, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
        _os_log_impl(&dword_21CF72000, v147, v1175, "%s received inference environment response %s", v156, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v1135, -1, -1);
        MEMORY[0x223D3ADE0](v156, -1, -1);

        v150(v1111, v1155);
      }

      else
      {
        v149(v151, v152);
        sub_21CFB513C(v155, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);

        v150(v153, v154);
      }

      v202 = *(v1 + 3296);
      v203 = *(v1 + 3280);
      v204 = *(v1 + 3272);
      v205 = *(v1 + 3200);
      v206 = *(v1 + 3192);
      sub_21CFB5218((v1 + 16));
      v1201 = *(v1 + 16);
      v1202 = *(v1 + 32);
      v207 = *(v1 + 72);
      v1137 = *(v1 + 64);
      v1177 = *(v1 + 80);
      v1123 = *(v1 + 88);
      v208 = *(v1 + 112);
      v1203 = *(v1 + 48);
      v1204 = *(v1 + 96);
      v209 = *(v1 + 128);
      v210 = *(v1 + 144);
      v1205 = v208;
      v1206 = v209;
      v1207 = v210;
      v211 = *(v203 + 20);
      sub_21CF7F198(v202 + v211, v204, &qword_27CE455F0, &unk_21D026C00);
      v212 = *(v205 + 48);
      LODWORD(v206) = v212(v204, 1, v206);
      sub_21CF7F200(v204, &qword_27CE455F0, &unk_21D026C00);
      v1156 = v207;
      if (v206 == 1)
      {
        v213 = *(v1 + 3848);
        v214 = *(v1 + 3832);
        v215 = *(v1 + 3760);
        v216 = *(v1 + 3632);
        (*(v1 + 3864))(*(v1 + 3552), *(v1 + 2736), *(v1 + 3336));
        v213(v215, v214, v216);
        v217 = sub_21D022484();
        v218 = sub_21D0228A4();
        v219 = os_log_type_enabled(v217, v218);
        v220 = *(v1 + 3888);
        v1112 = *(v1 + 3880);
        v221 = *(v1 + 3832);
        v222 = *(v1 + 3760);
        v223 = *(v1 + 3632);
        log = *(v1 + 3552);
        v1090 = *(v1 + 3336);
        v1190 = *(v1 + 3328);
        v1106 = *(v1 + 3296);
        if (v219)
        {
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          *&v1217 = v225;
          *v224 = 136315138;
          sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v226 = sub_21D022B04();
          v228 = sub_21CF9703C(v226, v227, &v1217);

          *(v224 + 4) = v228;
          v220(v222, v223);
          _os_log_impl(&dword_21CF72000, v217, v218, "%s has no environment response", v224, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v225);
          MEMORY[0x223D3ADE0](v225, -1, -1);
          v229 = v224;
          v1 = v1200;
          MEMORY[0x223D3ADE0](v229, -1, -1);
        }

        else
        {

          v220(v222, v223);
        }

        sub_21CF94FCC(v1088, v1089);
        v1112(log, v1090);
        sub_21CFB513C(v1106, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
        sub_21CFB513C(v1190, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v220(v221, v223);
        v1082 = 0;
        v1107 = 0;
        loga = 0;
        v1083 = 0;
        v1091 = 0;
      }

      else
      {
        v230 = *(v1 + 3264);
        v231 = *(v1 + 3192);
        sub_21CF7F198(v202 + v211, v230, &qword_27CE455F0, &unk_21D026C00);
        v232 = v212(v230, 1, v231);
        v233 = *(v1 + 3264);
        v234 = *(v1 + 3232);
        v1113 = v211;
        v1191 = v202;
        if (v232 == 1)
        {
          v235 = *(v1 + 3192);
          sub_21D021CE4();
          v236 = v235[5];
          v237 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v238 = *(*(v237 - 8) + 56);
          v238(v234 + v236, 1, 1, v237);
          v238(v234 + v235[6], 1, 1, v237);
          v238(v234 + v235[7], 1, 1, v237);
          v238(v234 + v235[8], 1, 1, v237);
          v239 = (v234 + v235[9]);
          *v239 = 0;
          v239[1] = 0;
          v240 = v235[10];
          v241 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
          (*(*(v241 - 8) + 56))(v234 + v240, 1, 1, v241);
          if (v212(v233, 1, v235) != 1)
          {
            sub_21CF7F200(*(v1 + 3264), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(v233, v234, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        }

        v331 = *(v1 + 3232);
        v332 = *(v1 + 2736) + *(v1 + 2268);
        sub_21D0224D4();
        swift_allocObject();
        sub_21D0224C4();
        v333 = swift_task_alloc();
        *(v333 + 16) = v332;
        *(v333 + 24) = v331;
        sub_21D0224B4();
        v1085 = v212;
        v334 = v1113;
        v335 = *(v1 + 3256);
        v336 = *(v1 + 3232);
        v337 = *(v1 + 3192);
        v338 = *(v1 + 3184);

        v339 = sub_21D022134();
        (*(*(v339 - 8) + 56))(v338, 0, 1, v339);
        sub_21CF7F200(v338, &qword_27CE45240, &unk_21D0246E0);
        sub_21CFB513C(v336, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        sub_21CF7F198(v1191 + v1113, v335, &qword_27CE455F0, &unk_21D026C00);
        v340 = v1085;
        v341 = v1085(v335, 1, v337);
        v342 = *(v1 + 3256);
        v343 = *(v1 + 3224);
        if (v341 == 1)
        {
          v344 = *(v1 + 3192);
          sub_21D021CE4();
          v345 = v344[5];
          v346 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v347 = *(*(v346 - 8) + 56);
          v347(v343 + v345, 1, 1, v346);
          v347(v343 + v344[6], 1, 1, v346);
          v347(v343 + v344[7], 1, 1, v346);
          v347(v343 + v344[8], 1, 1, v346);
          v348 = (v343 + v344[9]);
          *v348 = 0;
          v348[1] = 0;
          v349 = v344[10];
          v350 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
          v351 = v343 + v349;
          v334 = v1113;
          (*(*(v350 - 8) + 56))(v351, 1, 1, v350);
          if (v1085(v342, 1, v344) != 1)
          {
            sub_21CF7F200(*(v1 + 3256), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(*(v1 + 3256), *(v1 + 3224), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        }

        v352 = *(v1 + 3224);
        v353 = *(v1 + 3192);
        v354 = *(v1 + 3176);
        sub_21CF7F198(v352 + *(v353 + 40), v354, &qword_27CE45200, &qword_21D023518);
        v355 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
        v1071 = *(v355 - 8);
        v1076 = v355;
        v356 = (*(v1071 + 48))(v354, 1);
        sub_21CF7F200(v354, &qword_27CE45200, &qword_21D023518);
        sub_21CFB513C(v352, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        if (v356 == 1)
        {
          v1060 = v353;
          v357 = *(v1 + 3848);
          v358 = *(v1 + 3832);
          v359 = *(v1 + 3784);
          v360 = *(v1 + 3632);
          (*(v1 + 3864))(*(v1 + 3576), *(v1 + 2736), *(v1 + 3336));
          v357(v359, v358, v360);
          v361 = sub_21D022484();
          v362 = sub_21D0228B4();
          v363 = os_log_type_enabled(v361, v362);
          v364 = *(v1 + 3888);
          v365 = *(v1 + 3880);
          v366 = *(v1 + 3784);
          v367 = *(v1 + 3632);
          v1108 = *(v1 + 3576);
          logb = *(v1 + 3336);
          if (v363)
          {
            v368 = swift_slowAlloc();
            v369 = swift_slowAlloc();
            *&v1217 = v369;
            *v368 = 136315138;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v370 = sub_21D022B04();
            v1084 = v365;
            v372 = sub_21CF9703C(v370, v371, &v1217);
            v1 = v1200;

            *(v368 + 4) = v372;
            v364(v366, v367);
            _os_log_impl(&dword_21CF72000, v361, v362, "%s has no rendered prompt", v368, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v369);
            MEMORY[0x223D3ADE0](v369, -1, -1);
            v373 = v368;
            v340 = v1085;
            MEMORY[0x223D3ADE0](v373, -1, -1);

            v1084(v1108, logb);
          }

          else
          {
            v364(v366, v367);

            v365(v1108, logb);
          }

          v1082 = 0;
          v452 = 0;
          v453 = 0;
          v1083 = 0;
          v454 = 0;
        }

        else
        {
          v374 = *(v1 + 3248);
          v375 = *(v1 + 3192);
          sub_21CF7F198(v1191 + v334, v374, &qword_27CE455F0, &unk_21D026C00);
          v376 = v1085(v374, 1, v375);
          v377 = *(v1 + 3248);
          v378 = *(v1 + 3216);
          if (v376 == 1)
          {
            v379 = *(v1 + 3192);
            sub_21D021CE4();
            v380 = v379[5];
            v381 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
            v382 = *(*(v381 - 8) + 56);
            v382(v378 + v380, 1, 1, v381);
            v382(v378 + v379[6], 1, 1, v381);
            v382(v378 + v379[7], 1, 1, v381);
            v382(v378 + v379[8], 1, 1, v381);
            v340 = v1085;
            v383 = (v378 + v379[9]);
            *v383 = 0;
            v383[1] = 0;
            (*(v1071 + 56))(v378 + *(v353 + 40), 1, 1, v1076);
            if (v1085(v377, 1, v379) != 1)
            {
              sub_21CF7F200(*(v1 + 3248), &qword_27CE455F0, &unk_21D026C00);
            }
          }

          else
          {
            sub_21CFB537C(*(v1 + 3248), *(v1 + 3216), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          }

          v467 = *(v1 + 3216);
          *&v1217 = 0;
          *(&v1217 + 1) = 0xE000000000000000;
          *&v1218 = MEMORY[0x277D84F90];
          *(&v1218 + 1) = MEMORY[0x277D84F90];
          LOBYTE(v1219) = 2;
          sub_21CF7CDB8(&v1217, v467);
          v1060 = v353;
          v758 = v1217;
          v759 = v1218;
          v760 = v1219;
          sub_21CFB513C(*(v1 + 3216), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          v1217 = v758;
          v1218 = v759;
          LOBYTE(v1219) = v760;

          v762 = ServerPromptInfo.asJSONString()();
          if (v761)
          {
            v763 = *(v1 + 3888);
            v764 = *(v1 + 3832);
            v765 = *(v1 + 3632);
            v766 = *(v1 + 3328);
            v767 = *(v1 + 3296);

            sub_21CF94FCC(v1088, v1089);

            sub_21CFB513C(v767, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v766, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v763(v764, v765);
            *(v1 + 160) = v1201;
            *(v1 + 176) = v1202;
            v768 = v1204;
            *(v1 + 192) = v1203;
            *(v1 + 208) = v1137;
            *(v1 + 216) = v1156;
            *(v1 + 224) = v1177;
            *(v1 + 232) = v1123;
            v769 = v1205;
            *(v1 + 240) = v768;
            *(v1 + 256) = v769;
            v770 = v1207;
            *(v1 + 272) = v1206;
            *(v1 + 288) = v770;
            sub_21CF7F200(v1 + 160, &qword_27CE45610, &unk_21D024710);
            goto LABEL_31;
          }

          v1095 = v760;
          v1082 = v758;
          v1083 = *(&v759 + 1);

          if (qword_28121E108[0] != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v806 = *(v1 + 3864);
          v1058 = *(v1 + 3848);
          v807 = *(v1 + 3832);
          v808 = *(v1 + 3632);
          v809 = *(v1 + 3336);
          v810 = *(v1 + 2736);
          if (byte_28121B6B0 == 1)
          {
            v811 = *(v1 + 3800);
            v812 = *(v1 + 3600);
            v1063 = sub_21CF93D10(800, v762._countAndFlagsBits, v762._object);
            v806(v812, v810, v809);
            v1058(v811, v807, v808);
            v813 = sub_21D022484();
            v1059 = sub_21D0228B4();
            v814 = os_log_type_enabled(v813, v1059);
            v815 = *(v1 + 3888);
            v816 = *(v1 + 3880);
            v817 = *(v1 + 3800);
            v818 = *(v1 + 3632);
            v819 = *(v1 + 3600);
            v820 = *(v1 + 3336);
            if (v814)
            {
              v1055 = *(v1 + 3600);
              v821 = swift_slowAlloc();
              v822 = swift_slowAlloc();
              *&v1217 = v822;
              *v821 = 136315138;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v823 = sub_21D022B04();
              v1051 = v816;
              v825 = sub_21CF9703C(v823, v824, &v1217);

              *(v821 + 4) = v825;

              v815(v817, v818);
              _os_log_impl(&dword_21CF72000, v813, v1059, "%s server prompt info promptInfo=", v821, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v822);
              MEMORY[0x223D3ADE0](v822, -1, -1);
              MEMORY[0x223D3ADE0](v821, -1, -1);

              v1051(v1055, v820);
            }

            else
            {

              v815(v817, v818);

              v816(v819, v820);
            }

            v340 = v1085;
            v918 = *(v1063 + 16);
            v1 = v1200;
            if (v918)
            {
              v919 = (v1063 + 40);
              v920 = 1;
              do
              {
                (*(v1 + 3864))(*(v1 + 3592), *(v1 + 2736), *(v1 + 3336));

                v921 = sub_21D022484();
                v922 = sub_21D0228B4();
                v923 = os_log_type_enabled(v921, v922);
                v1070 = *(v1 + 3880);
                v1068 = *(v1 + 3592);
                v924 = *(v1 + 3336);
                if (v923)
                {
                  v925 = swift_slowAlloc();
                  v926 = swift_slowAlloc();
                  *&v1217 = v926;
                  *v925 = 134218498;
                  *(v925 + 4) = v920;
                  *(v925 + 12) = 2048;
                  *(v925 + 14) = *(v1063 + 16);

                  *(v925 + 22) = 2082;
                  v928 = *(v919 - 1);
                  v927 = *v919;

                  v929 = sub_21CF9703C(v928, v927, &v1217);
                  v1 = v1200;

                  *(v925 + 24) = v929;
                  _os_log_impl(&dword_21CF72000, v921, v922, "Section %ld/%ld:%{public}s", v925, 0x20u);
                  __swift_destroy_boxed_opaque_existential_0(v926);
                  MEMORY[0x223D3ADE0](v926, -1, -1);
                  v930 = v925;
                  v340 = v1085;
                  MEMORY[0x223D3ADE0](v930, -1, -1);
                }

                else
                {
                }

                v1070(v1068, v924);
                v919 += 2;
                ++v920;
                --v918;
              }

              while (v918);
            }

            v452 = *(&v758 + 1);
            v453 = v759;
            v454 = v1095;
          }

          else
          {
            v888 = *(v1 + 3792);
            v806(*(v1 + 3584), *(v1 + 2736), *(v1 + 3336));
            v1058(v888, v807, v808);
            swift_bridgeObjectRetain_n();
            v889 = sub_21D022484();
            v890 = sub_21D0228B4();
            v891 = os_log_type_enabled(v889, v890);
            v1056 = *(v1 + 3888);
            v892 = *(v1 + 3880);
            v893 = *(v1 + 3792);
            v894 = *(v1 + 3632);
            v895 = *(v1 + 3584);
            v1067 = *(v1 + 3336);
            if (v891)
            {
              v1053 = *(v1 + 3584);
              v896 = swift_slowAlloc();
              v897 = swift_slowAlloc();
              *&v1217 = v897;
              *v896 = 136315395;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v898 = sub_21D022B04();
              v900 = sub_21CF9703C(v898, v899, &v1217);

              *(v896 + 4) = v900;
              v1 = v1200;
              v1056(v893, v894);
              *(v896 + 12) = 2081;

              v901 = sub_21CF9703C(v762._countAndFlagsBits, v762._object, &v1217);

              *(v896 + 14) = v901;
              swift_bridgeObjectRelease_n();
              _os_log_impl(&dword_21CF72000, v889, v890, "%s server prompt info promptInfo=%{private}s", v896, 0x16u);
              swift_arrayDestroy();
              v902 = v897;
              v340 = v1085;
              MEMORY[0x223D3ADE0](v902, -1, -1);
              MEMORY[0x223D3ADE0](v896, -1, -1);

              v892(v1053, v1067);
            }

            else
            {

              v1056(v893, v894);
              swift_bridgeObjectRelease_n();

              v892(v895, v1067);
            }

            v452 = *(&v758 + 1);
            v453 = v759;
            v454 = v1095;
          }
        }

        v455 = *(v1 + 3240);
        v456 = *(v1 + 3192);
        sub_21CF7F198(v1191 + v1113, v455, &qword_27CE455F0, &unk_21D026C00);
        v457 = v340(v455, 1, v456);
        v458 = *(v1 + 3240);
        v459 = *(v1 + 3208);
        v1107 = v452;
        loga = v453;
        v1091 = v454;
        if (v457 == 1)
        {
          v460 = *(v1 + 3192);
          sub_21D021CE4();
          v461 = v460[5];
          v462 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
          v463 = *(*(v462 - 8) + 56);
          v463(v459 + v461, 1, 1, v462);
          v463(v459 + v460[6], 1, 1, v462);
          v463(v459 + v460[7], 1, 1, v462);
          v463(v459 + v460[8], 1, 1, v462);
          v464 = (v459 + v460[9]);
          *v464 = 0;
          v464[1] = 0;
          (*(v1071 + 56))(v459 + *(v1060 + 40), 1, 1, v1076);
          v465 = v1156;
          if (v340(v458, 1, v460) != 1)
          {
            sub_21CF7F200(*(v1 + 3240), &qword_27CE455F0, &unk_21D026C00);
          }
        }

        else
        {
          sub_21CFB537C(v458, v459, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
          v465 = v1156;
        }

        v466 = *(v1 + 3208);
        v1208 = 0u;
        v1209 = 0u;
        v1210 = 0u;
        v1211 = 0u;
        v1212 = 0u;
        v1213 = 0u;
        v1214 = 0u;
        v1215 = 0u;
        v1216 = 0u;
        sub_21CF7AF4C(&v1208, v466);
        sub_21CFB513C(*(v1 + 3208), type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
        v741 = v1215;
        *(v1 + 1264) = v1214;
        *(v1 + 1280) = v741;
        *(v1 + 1296) = v1216;
        v742 = v1211;
        *(v1 + 1200) = v1210;
        *(v1 + 1216) = v742;
        v743 = v1213;
        *(v1 + 1232) = v1212;
        *(v1 + 1248) = v743;
        v744 = v1209;
        *(v1 + 1168) = v1208;
        *(v1 + 1184) = v744;
        nullsub_1();
        *(v1 + 1312) = v1201;
        *(v1 + 1328) = v1202;
        v745 = v1204;
        *(v1 + 1344) = v1203;
        v746 = v1205;
        *(v1 + 1392) = v745;
        *(v1 + 1408) = v746;
        v747 = v1207;
        *(v1 + 1424) = v1206;
        *(v1 + 1360) = v1137;
        *(v1 + 1368) = v465;
        *(v1 + 1376) = v1177;
        *(v1 + 1384) = v1123;
        *(v1 + 1440) = v747;
        sub_21CF7F200(v1 + 1312, &qword_27CE45610, &unk_21D024710);
        v1201 = *(v1 + 1168);
        v1202 = *(v1 + 1184);
        v748 = *(v1 + 1264);
        v1203 = *(v1 + 1200);
        v1204 = *(v1 + 1248);
        v749 = *(v1 + 1280);
        v750 = *(v1 + 1296);
        v1205 = v748;
        v1206 = v749;
        v1207 = v750;
        v751 = *(v1 + 1200);
        *(v1 + 1472) = v1202;
        *(v1 + 1488) = v751;
        v752 = *(v1 + 1216);
        v753 = *(v1 + 1224);
        v754 = *(v1 + 1232);
        v755 = *(v1 + 1240);
        *(v1 + 1456) = v1201;
        *(v1 + 1584) = *(v1 + 1296);
        *(v1 + 1568) = *(v1 + 1280);
        *(v1 + 1552) = *(v1 + 1264);
        *(v1 + 1536) = *(v1 + 1248);
        *(v1 + 1504) = v752;
        *(v1 + 1512) = v753;
        *(v1 + 1520) = v754;
        *(v1 + 1528) = v755;
        v756 = sub_21CFB52AC(v1 + 1456);
        v1123 = v755;
        v1177 = v754;
        v1137 = v752;
        if (v756 == 1)
        {
          object = 0xE200000000000000;
          countAndFlagsBits = 32123;
        }

        else
        {
          v785 = v1205;
          *(v1 + 1104) = v1204;
          v786 = v1204;
          v787 = v1205;
          *(v1 + 1120) = v785;
          v788 = v1207;
          *(v1 + 1136) = v1206;
          v789 = v1206;
          v790 = v1207;
          *(v1 + 1152) = v788;
          *(v1 + 1024) = v1201;
          *(v1 + 1040) = v1202;
          v1217 = v1201;
          v1218 = v1202;
          *(v1 + 1056) = v1203;
          v1219 = v1203;
          v1222 = v786;
          v1223 = v787;
          v1224 = v789;
          v1225 = v790;
          *&v1220 = v752;
          *(&v1220 + 1) = v753;
          *&v1221 = v754;
          *(&v1221 + 1) = v755;
          *(v1 + 1072) = v752;
          *(v1 + 1080) = v753;
          *(v1 + 1088) = v754;
          *(v1 + 1096) = v755;
          sub_21CFB52D0(v1 + 1024, v1 + 880);
          v791 = ServerEnvironmentInfo.asJSONString()();
          if (v792)
          {
            v793 = *(v1 + 3888);
            v794 = *(v1 + 3832);
            v795 = v755;
            v796 = *(v1 + 3632);
            v797 = *(v1 + 3328);
            v798 = *(v1 + 3296);
            sub_21CFB532C(v1082, v1107, loga, v1083);
            sub_21CF94FCC(v1088, v1089);
            v799 = v1224;
            *(v1 + 688) = v1223;
            *(v1 + 704) = v799;
            *(v1 + 720) = v1225;
            v800 = v1220;
            *(v1 + 624) = v1219;
            *(v1 + 640) = v800;
            v801 = v1222;
            *(v1 + 656) = v1221;
            *(v1 + 672) = v801;
            v802 = v1218;
            *(v1 + 592) = v1217;
            *(v1 + 608) = v802;
            sub_21CFB5258(v1 + 592);
            sub_21CFB513C(v798, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v797, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v793(v794, v796);
            *(v1 + 736) = v1201;
            *(v1 + 752) = v1202;
            v803 = v1204;
            *(v1 + 768) = v1203;
            *(v1 + 784) = v1137;
            *(v1 + 792) = v753;
            *(v1 + 800) = v754;
            *(v1 + 808) = v795;
            v804 = v1205;
            *(v1 + 816) = v803;
            *(v1 + 832) = v804;
            v805 = v1207;
            *(v1 + 848) = v1206;
            *(v1 + 864) = v805;
            sub_21CF7F200(v1 + 736, &qword_27CE45610, &unk_21D024710);
            goto LABEL_31;
          }

          object = v791._object;
          countAndFlagsBits = v791._countAndFlagsBits;
          v835 = v1224;
          *(v1 + 544) = v1223;
          *(v1 + 560) = v835;
          *(v1 + 576) = v1225;
          v836 = v1220;
          *(v1 + 480) = v1219;
          *(v1 + 496) = v836;
          v837 = v1222;
          *(v1 + 512) = v1221;
          *(v1 + 528) = v837;
          v838 = v1218;
          *(v1 + 448) = v1217;
          *(v1 + 464) = v838;
          sub_21CFB5258(v1 + 448);
        }

        v839 = *(v1 + 3848);
        v840 = *(v1 + 3832);
        v841 = *(v1 + 3776);
        v842 = *(v1 + 3632);
        (*(v1 + 3864))(*(v1 + 3568), *(v1 + 2736), *(v1 + 3336));
        v839(v841, v840, v842);
        swift_bridgeObjectRetain_n();
        v843 = sub_21D022484();
        v844 = sub_21D0228A4();
        v845 = os_log_type_enabled(v843, v844);
        v846 = *(v1 + 3888);
        v847 = *(v1 + 3880);
        v848 = *(v1 + 3776);
        v849 = *(v1 + 3632);
        v850 = *(v1 + 3568);
        v1119 = *(v1 + 3336);
        v1156 = v753;
        if (v845)
        {
          v851 = swift_slowAlloc();
          v1073 = swift_slowAlloc();
          *&v1217 = v1073;
          *v851 = 136315394;
          sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v852 = sub_21D022B04();
          v1065 = v847;
          v854 = sub_21CF9703C(v852, v853, &v1217);

          *(v851 + 4) = v854;
          v846(v848, v849);
          *(v851 + 12) = 2080;

          v855 = sub_21CF9703C(countAndFlagsBits, object, &v1217);

          *(v851 + 14) = v855;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_21CF72000, v843, v844, "%s environment %s", v851, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D3ADE0](v1073, -1, -1);
          v856 = v851;
          v753 = v1156;
          MEMORY[0x223D3ADE0](v856, -1, -1);

          v1065(v850, v1119);
        }

        else
        {
          v846(v848, v849);
          swift_bridgeObjectRelease_n();

          v847(v850, v1119);
        }

        v1 = v1200;
        *(v1200 + 304) = v1201;
        *(v1200 + 320) = v1202;
        v857 = v1204;
        *(v1200 + 336) = v1203;
        v858 = v1205;
        *(v1200 + 384) = v857;
        *(v1200 + 400) = v858;
        v859 = v1207;
        *(v1200 + 416) = v1206;
        *(v1200 + 432) = v859;
        *(v1200 + 352) = v1137;
        *(v1200 + 360) = v753;
        *(v1200 + 368) = v1177;
        *(v1200 + 376) = v1123;
        v860 = sub_21CFB52AC(v1200 + 304);
        v861 = *(v1200 + 3832);
        v862 = *(v1200 + 3632);
        if (v860 == 1 || !v753)
        {
          v873 = *(v1200 + 3848);
          v874 = *(v1200 + 3768);
          (*(v1200 + 3864))(*(v1200 + 3560), *(v1200 + 2736), *(v1200 + 3336));
          v873(v874, v861, v862);
          v875 = sub_21D022484();
          v876 = sub_21D0228A4();
          v877 = os_log_type_enabled(v875, v876);
          v878 = *(v1200 + 3888);
          v1121 = *(v1200 + 3880);
          v879 = *(v1200 + 3832);
          v880 = *(v1200 + 3768);
          v881 = *(v1200 + 3632);
          v1080 = *(v1200 + 3560);
          v1075 = *(v1200 + 3336);
          v882 = *(v1200 + 3328);
          v1087 = *(v1200 + 3296);
          if (v877)
          {
            v1066 = *(v1200 + 3328);
            v883 = swift_slowAlloc();
            v1064 = v879;
            v884 = swift_slowAlloc();
            *&v1217 = v884;
            *v883 = 136315138;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v885 = sub_21D022B04();
            v887 = sub_21CF9703C(v885, v886, &v1217);

            *(v883 + 4) = v887;

            v878(v880, v881);
            _os_log_impl(&dword_21CF72000, v875, v876, "%s provided no adapter asset information", v883, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v884);
            MEMORY[0x223D3ADE0](v884, -1, -1);
            MEMORY[0x223D3ADE0](v883, -1, -1);

            sub_21CF94FCC(v1088, v1089);
            v1121(v1080, v1075);
            sub_21CFB513C(v1087, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v1066, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v878(v1064, v881);
          }

          else
          {

            v878(v880, v881);

            sub_21CF94FCC(v1088, v1089);
            v1121(v1080, v1075);
            sub_21CFB513C(v1087, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
            sub_21CFB513C(v882, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v878(v879, v881);
          }
        }

        else
        {
          v1120 = *(v1200 + 3888);
          v863 = *(v1200 + 3840);
          v1079 = *(v1200 + 3328);
          v1074 = *(v1200 + 3296);
          v864 = *(v1200 + 3832);
          v865 = v753;
          v866 = *(v1200 + 2736);

          sub_21CF8F87C(v866 + *(v863 + 28), v1200 + 2272);
          v867 = *(v1200 + 2296);
          v868 = *(v1200 + 2304);
          __swift_project_boxed_opaque_existential_1((v1200 + 2272), v867);
          if (v1123)
          {
            v869 = v1177;
          }

          else
          {
            v869 = 0;
          }

          if (v1123)
          {
            v870 = v1123;
          }

          else
          {
            v870 = 0xE000000000000000;
          }

          v871 = *(v868 + 24);

          v872 = v869;
          v1 = v1200;
          v871(v1137, v865, v872, v870, v867, v868);

          sub_21CF94FCC(v1088, v1089);
          sub_21CFB513C(v1074, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
          sub_21CFB513C(v1079, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v1120(v864, v862);
          __swift_destroy_boxed_opaque_existential_0((v1200 + 2272));
        }
      }

      v313 = *(v1 + 2268);
      v314 = *(v1 + 2736);
      v315 = *(v1 + 2728);
      v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45608, &qword_21D024708);
      v317 = (v315 + *(v316 + 48));
      v318 = v315 + *(v316 + 64);
      sub_21CFB519C(v314 + v313, v315, type metadata accessor for PrivateMLRequest);
      *(v1 + 1888) = v1201;
      *(v1 + 1904) = v1202;
      v319 = v1204;
      *(v1 + 1920) = v1203;
      *(v1 + 1936) = v1137;
      *(v1 + 1944) = v1156;
      *(v1 + 1952) = v1177;
      *(v1 + 1960) = v1123;
      v320 = v1207;
      *(v1 + 2000) = v1206;
      *(v1 + 1984) = v1205;
      *(v1 + 1968) = v319;
      *(v1 + 2016) = v320;
      v321 = *(v1 + 2000);
      v322 = *(v1 + 2016);
      v323 = *(v1 + 1984);
      v317[5] = *(v1 + 1968);
      v317[6] = v323;
      v317[7] = v321;
      v317[8] = v322;
      v324 = *(v1 + 1920);
      v326 = *(v1 + 1936);
      v325 = *(v1 + 1952);
      v317[1] = *(v1 + 1904);
      v317[2] = v324;
      v317[3] = v326;
      v317[4] = v325;
      *v317 = *(v1 + 1888);
      *v318 = v1082;
      *(v318 + 8) = v1107;
      *(v318 + 16) = loga;
      *(v318 + 24) = v1083;
      *(v318 + 32) = v1091;
      v327 = type metadata accessor for PrivateMLRequest.Response.Event(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v327 - 8) + 56))(v315, 0, 1, v327);
      *(v1 + 2032) = v1201;
      *(v1 + 2048) = v1202;
      v328 = v1204;
      *(v1 + 2064) = v1203;
      v329 = v1205;
      *(v1 + 2112) = v328;
      *(v1 + 2128) = v329;
      v330 = v1207;
      *(v1 + 2144) = v1206;
      *(v1 + 2080) = v1137;
      *(v1 + 2088) = v1156;
      *(v1 + 2096) = v1177;
      *(v1 + 2104) = v1123;
      *(v1 + 2160) = v330;
      sub_21CF7F198(v1 + 1888, v1 + 1744, &qword_27CE45610, &unk_21D024710);
      sub_21CF7F200(v1 + 2032, &qword_27CE45610, &unk_21D024710);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v96 = *(v1 + 3848);
      v97 = *(v1 + 3832);
      v98 = *(v1 + 3664);
      v99 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3368), *(v1 + 2736), *(v1 + 3336));
      v96(v98, v97, v99);
      v100 = sub_21D022484();
      v101 = sub_21D0228D4();
      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v1 + 3888);
      v104 = *(v1 + 3880);
      v105 = *(v1 + 3664);
      v106 = v1;
      v107 = *(v1 + 3632);
      v108 = *(v106 + 3368);
      v109 = *(v106 + 3336);
      if (v102)
      {
        v1172 = *(v106 + 3336);
        v110 = swift_slowAlloc();
        v1153 = v104;
        v111 = swift_slowAlloc();
        *&v1217 = v111;
        *v110 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v112 = sub_21D022B04();
        v1133 = v108;
        v114 = sub_21CF9703C(v112, v113, &v1217);

        *(v110 + 4) = v114;
        v103(v105, v107);
        _os_log_impl(&dword_21CF72000, v100, v101, "%s received inference complete response", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x223D3ADE0](v111, -1, -1);
        MEMORY[0x223D3ADE0](v110, -1, -1);

        v1153(v1133, v1172);
      }

      else
      {
        v103(v105, v107);

        v104(v108, v109);
      }

      v1 = v1200;
      v272 = *(v1200 + 3888);
      v273 = *(v1200 + 3832);
      v274 = *(v1200 + 3632);
      v275 = *(v1200 + 3328);
      v276 = *(v1200 + 3304);
      v277 = *(v1200 + 2728);
      sub_21CF94FCC(v13, v1089);
      sub_21CFB513C(v275, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v272(v273, v274);
      *v277 = 0;
      v277[1] = 0xE000000000000000;
      v278 = type metadata accessor for PrivateMLRequest.Response.Event(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v278 - 8) + 56))(v277, 0, 1, v278);
      sub_21CFB513C(v276, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      goto LABEL_5;
    }

    v175 = *(v1200 + 3864);
    v176 = *(v1200 + 3848);
    v177 = *(v1200 + 3832);
    v178 = *(v1200 + 3656);
    v179 = *(v1200 + 3632);
    v180 = *(v1200 + 3360);
    v181 = *(v1200 + 3336);
    v182 = *(v1200 + 2736);
    sub_21CFB537C(v61, *(v1200 + 2744), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    v175(v180, v182, v181);
    v1 = v1200;
    v176(v178, v177, v179);
    v183 = sub_21D022484();
    v184 = sub_21D0228D4();
    v185 = os_log_type_enabled(v183, v184);
    v186 = *(v1200 + 3888);
    v187 = *(v1200 + 3880);
    v188 = *(v1200 + 3656);
    v189 = *(v1200 + 3632);
    v190 = *(v1200 + 3360);
    v191 = *(v1200 + 3336);
    if (v185)
    {
      v1176 = *(v1200 + 3360);
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v1217 = v193;
      *v192 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v194 = sub_21D022B04();
      v1136 = v187;
      v196 = sub_21CF9703C(v194, v195, &v1217);

      *(v192 + 4) = v196;
      v186(v188, v189);
      _os_log_impl(&dword_21CF72000, v183, v184, "%s received next media response", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v193);
      v197 = v193;
      v1 = v1200;
      MEMORY[0x223D3ADE0](v197, -1, -1);
      MEMORY[0x223D3ADE0](v192, -1, -1);

      v1136(v1176, v191);
    }

    else
    {
      v186(v188, v189);

      v187(v190, v191);
    }

    sub_21CF9E7C4(&v1217);
    v279 = *(v1 + 3888);
    v280 = *(v1 + 3832);
    v281 = *(v1 + 3632);
    v282 = *(v1 + 3328);
    v283 = *(v1 + 2744);
    v289 = *(v1 + 2728);
    sub_21CF94FCC(v1088, v1089);
    sub_21CFB513C(v283, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    sub_21CFB513C(v282, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v279(v280, v281);
    v290 = v1219;
    v291 = BYTE4(v1219);
    *v289 = v1217;
    *(v289 + 16) = v1218;
    *(v289 + 36) = v291;
    *(v289 + 32) = v290;
    v292 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v292 - 8) + 56);
    v10 = v289;
LABEL_82:
    v11 = 0;
    v8 = v292;
    goto LABEL_4;
  }

  if (!EnumCaseMultiPayload)
  {
    v115 = *(v1200 + 3864);
    v116 = *(v1200 + 3848);
    v117 = *(v1200 + 3832);
    v118 = *(v1200 + 3752);
    v119 = *(v1200 + 3632);
    v120 = *(v1200 + 3544);
    v121 = *(v1200 + 3336);
    v122 = *(v1200 + 2736);
    sub_21CFB537C(v61, *(v1200 + 3168), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    v115(v120, v122, v121);
    v123 = v1200;
    v116(v118, v117, v119);
    v124 = sub_21D022484();
    v125 = sub_21D0228D4();
    v126 = os_log_type_enabled(v124, v125);
    v127 = *(v1200 + 3888);
    v128 = *(v1200 + 3880);
    v129 = *(v1200 + 3752);
    v130 = *(v1200 + 3632);
    v131 = *(v1200 + 3544);
    v132 = *(v1200 + 3336);
    if (v126)
    {
      v1173 = *(v1200 + 3544);
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&v1217 = v134;
      *v133 = 136315138;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v135 = sub_21D022B04();
      v1134 = v128;
      v137 = sub_21CF9703C(v135, v136, &v1217);

      *(v133 + 4) = v137;
      v127(v129, v130);
      _os_log_impl(&dword_21CF72000, v124, v125, "%s received next token response", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      v138 = v134;
      v123 = v1200;
      MEMORY[0x223D3ADE0](v138, -1, -1);
      MEMORY[0x223D3ADE0](v133, -1, -1);

      v1134(v1173, v132);
    }

    else
    {
      v127(v129, v130);

      v128(v131, v132);
    }

    v198 = v123[396];
    v199 = (v198 + *(v123[395] + 20));
    if (v199[1])
    {
      v200 = *v199;
      v201 = v199[1];
    }

    else
    {
      v200 = 0;
      v201 = 0xE000000000000000;
    }

    v284 = v123[486];
    v285 = v123[479];
    v286 = *(v1200 + 3632);
    v287 = *(v1200 + 3328);
    v288 = *(v1200 + 2728);

    sub_21CF94FCC(v1088, v1089);
    sub_21CFB513C(v198, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21CFB513C(v287, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v1 = v1200;
    v284(v285, v286);
    *v288 = v200;
    v288[1] = v201;
    v292 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    v9 = *(*(v292 - 8) + 56);
    v10 = v288;
    goto LABEL_82;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v163 = *(v1 + 2840);
    v164 = *(v1 + 2800);
    sub_21CFB537C(v61, v163, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    v165 = *(v164 + 24);
    v166 = v163 + v165;
    v167 = *(v163 + v165);
    v168 = *(v163 + v165 + 9);
    if (v168)
    {
      v169 = 0;
    }

    else
    {
      v169 = *(v163 + v165);
    }

    if (v168 & 1) != 0 || (*(v166 + 8))
    {
      if (v169)
      {
        if (v169 != 1)
        {
          goto LABEL_107;
        }

        goto LABEL_66;
      }
    }

    else if (v169)
    {
      if (v167 != 1)
      {
        if (v169 != 2)
        {
          v170 = *(v1 + 3888);
          v171 = *(v1 + 3832);
          v172 = *(v1 + 3632);
          v173 = *(v1 + 3328);
          v174 = *(v1 + 2840);
          sub_21CF94FCC(v13, v2);
          sub_21CFB513C(v174, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v173, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v170(v171, v172);
LABEL_279:
          v784 = *(v1 + 2728);
          v8 = type metadata accessor for PrivateMLRequest.Response.Event(0);
          v9 = *(*(v8 - 8) + 56);
          v10 = v784;
          goto LABEL_3;
        }

LABEL_107:
        v407 = *(*(v1 + 2840) + *(*(v1 + 2800) + 40));
        v1160 = v407;
        if (v407 == 2)
        {
LABEL_330:
          v934 = *(v1 + 3848);
          v935 = *(v1 + 3832);
          v936 = *(v1 + 3680);
          v937 = *(v1 + 3632);
          v938 = *(v1 + 2840);
          v939 = *(v1 + 2816);
          (*(v1 + 3864))(*(v1 + 3400), *(v1 + 2736), *(v1 + 3336));
          v934(v936, v935, v937);
          sub_21CFB519C(v938, v939, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v940 = sub_21D022484();
          v1150 = sub_21D0228C4();
          v941 = os_log_type_enabled(v940, v1150);
          v942 = *(v1 + 3888);
          v943 = *(v1 + 3880);
          v944 = *(v1 + 3680);
          v945 = *(v1 + 3632);
          v946 = *(v1 + 3400);
          v1199 = *(v1 + 3336);
          v947 = *(v1 + 2816);
          if (v941)
          {
            v1096 = *(v1 + 2808);
            v1128 = *(v1 + 3400);
            v948 = swift_slowAlloc();
            v1122 = swift_slowAlloc();
            *&v1217 = v1122;
            *v948 = 136315394;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v949 = sub_21D022B04();
            v951 = sub_21CF9703C(v949, v950, &v1217);

            *(v948 + 4) = v951;
            v942(v944, v945);
            *(v948 + 12) = 2080;
            sub_21CFB519C(v947, v1096, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            v952 = sub_21D0225D4();
            v954 = sub_21CF9703C(v952, v953, &v1217);

            *(v948 + 14) = v954;
            sub_21CFB513C(v947, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            _os_log_impl(&dword_21CF72000, v940, v1150, "%s received status response error: %s", v948, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v1122, -1, -1);
            MEMORY[0x223D3ADE0](v948, -1, -1);

            v943(v1128, v1199);
          }

          else
          {
            v942(v944, v945);
            sub_21CFB513C(v947, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);

            v943(v946, v1199);
          }

          v955 = *(v1 + 2776);
          sub_21CF7F198(*(v1 + 2840), v955, &qword_27CE455D8, &qword_21D0246C0);
          v956 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
          v957 = (*(*(v956 - 8) + 48))(v955, 1, v956);
          v958 = *(v1 + 3864);
          if (v957 != 1)
          {
            v1185 = *(v1 + 3848);
            v976 = *(v1 + 3832);
            v977 = *(v1 + 3672);
            v978 = *(v1 + 3632);
            v979 = *(v1 + 3392);
            v980 = *(v1 + 3336);
            v981 = *(v1 + 2776);
            v982 = *(v1 + 2768);
            v983 = *(v1 + 2760);
            v984 = *(v1200 + 2736);
            sub_21CF7F198(v981, v982, &qword_27CE455D8, &qword_21D0246C0);
            sub_21CFB537C(v982, v983, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
            v985 = v984;
            v986 = v1200;
            v958(v979, v985, v980);
            v1185(v977, v976, v978);
            v987 = sub_21D022484();
            v988 = sub_21D0228C4();
            v989 = os_log_type_enabled(v987, v988);
            v990 = *(v1200 + 3888);
            v991 = *(v1200 + 3880);
            v992 = *(v1200 + 3672);
            v993 = *(v1200 + 3632);
            v994 = *(v1200 + 3392);
            v995 = *(v1200 + 3336);
            if (v989)
            {
              v1186 = *(v1200 + 3392);
              v996 = swift_slowAlloc();
              v997 = swift_slowAlloc();
              *&v1217 = v997;
              *v996 = 136380675;
              sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v998 = sub_21D022B04();
              v1129 = v991;
              v1000 = sub_21CF9703C(v998, v999, &v1217);

              *(v996 + 4) = v1000;
              v990(v992, v993);
              _os_log_impl(&dword_21CF72000, v987, v988, "%{private}s token limit reached", v996, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v997);
              v1001 = v997;
              v986 = v1200;
              MEMORY[0x223D3ADE0](v1001, -1, -1);
              MEMORY[0x223D3ADE0](v996, -1, -1);

              v1129(v1186, v995);
            }

            else
            {
              v990(v992, v993);

              v991(v994, v995);
            }

            if (v1160 == 2 || (v1160 & 1) == 0)
            {
              goto LABEL_356;
            }

            if (qword_28121B6B8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_28121B6C0 == 1)
            {
              (*(v986 + 3864))(*(v986 + 3384), *(v986 + 2736), *(v986 + 3336));
              v1002 = sub_21D022484();
              v1003 = sub_21D0228A4();
              if (os_log_type_enabled(v1002, v1003))
              {
                v1004 = swift_slowAlloc();
                *v1004 = 0;
                _os_log_impl(&dword_21CF72000, v1002, v1003, "Request feedback for token limit reached", v1004, 2u);
                MEMORY[0x223D3ADE0](v1004, -1, -1);
              }

              v1187 = *(v986 + 3888);
              v1005 = *(v986 + 3880);
              v1168 = *(v986 + 3832);
              v1151 = *(v986 + 3632);
              v1006 = *(v1200 + 3384);
              v1007 = *(v1200 + 3336);
              v1008 = *(v1200 + 3328);
              v1009 = *(v1200 + 2840);
              v1130 = *(v1200 + 2776);
              v1010 = *(v1200 + 2760);
              v1011 = *(v1200 + 2752);

              v1012 = v1006;
              v1 = v1200;
              v1005(v1012, v1007);
              v1013 = (v1010 + *(v1011 + 28));
              v1014 = (v1010 + *(v1011 + 32));
              v1015 = *v1014;
              v1016 = *(v1014 + 4);
              if (*(v1013 + 4))
              {
                v1017 = 0;
              }

              else
              {
                v1017 = *v1013;
              }

              if (v1016)
              {
                v1018 = 0;
              }

              else
              {
                v1018 = v1015;
              }

              sub_21CF9ED64();
              swift_allocError();
              *v1019 = 1;
              *(v1019 + 8) = v1017;
              *(v1019 + 16) = v1018;
              *(v1019 + 24) = 0;
              *(v1019 + 32) = 0;
              *(v1019 + 40) = 0;
              *(v1019 + 48) = 0x80;
              swift_willThrow();
              sub_21CF94FCC(v1088, v1089);
              sub_21CFB513C(v1010, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
              sub_21CFB513C(v1009, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
              sub_21CFB513C(v1008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
              v1187(v1168, v1151);
              sub_21CF7F200(v1130, &qword_27CE455D8, &qword_21D0246C0);
            }

            else
            {
LABEL_356:
              v1020 = *(v986 + 3888);
              v1021 = *(v986 + 3832);
              v1022 = *(v1200 + 3632);
              v1023 = *(v1200 + 3328);
              v1024 = *(v1200 + 2840);
              v1025 = *(v1200 + 2776);
              v1026 = *(v1200 + 2760);
              v1027 = *(v1200 + 2752);
              v1028 = (v1026 + *(v1027 + 28));
              v1029 = (v1026 + *(v1027 + 32));
              v1030 = *v1029;
              v1031 = *(v1029 + 4);
              if (*(v1028 + 4))
              {
                v1032 = 0;
              }

              else
              {
                v1032 = *v1028;
              }

              if (v1031)
              {
                v1033 = 0;
              }

              else
              {
                v1033 = v1030;
              }

              sub_21CF9ED64();
              swift_allocError();
              *v1034 = v1032;
              *(v1034 + 8) = v1033;
              *(v1034 + 16) = 0u;
              *(v1034 + 32) = 0u;
              *(v1034 + 48) = 64;
              swift_willThrow();
              sub_21CF94FCC(v1088, v1089);
              sub_21CFB513C(v1026, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
              sub_21CFB513C(v1024, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
              sub_21CFB513C(v1023, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
              v1 = v1200;
              v1020(v1021, v1022);
              sub_21CF7F200(v1025, &qword_27CE455D8, &qword_21D0246C0);
            }

            goto LABEL_31;
          }

          v958(*(v1 + 3376), *(v1 + 2736), *(v1 + 3336));
          v959 = sub_21D022484();
          v960 = sub_21D0228D4();
          if (os_log_type_enabled(v959, v960))
          {
            v961 = swift_slowAlloc();
            *v961 = 0;
            _os_log_impl(&dword_21CF72000, v959, v960, "statusResponse does not have statusDetails", v961, 2u);
            MEMORY[0x223D3ADE0](v961, -1, -1);
          }

          v962 = *(v1 + 3880);
          v963 = *(v1 + 3376);
          v964 = *(v1 + 3336);
          v965 = *(v1 + 2840);
          v966 = *(v1 + 2800);
          v967 = *(v1 + 2776);

          v962(v963, v964);
          sub_21CF7F200(v967, &qword_27CE455D8, &qword_21D0246C0);
          v968 = *(v966 + 28);
          v969 = (v965 + *(v966 + 32));
          v970 = v969[1];
          v971 = (v965 + v968);
          v972 = *(v965 + v968 + 8);
          if (!v970)
          {
            if (v972)
            {
              v1035 = *v971;
              v1036 = *(v965 + v968 + 8);
            }

            else
            {
              v1035 = 0;
              v1036 = 0xE000000000000000;
            }

            v1043 = *(v1 + 3888);
            v1044 = *(v1 + 3832);
            v1045 = *(v1200 + 3632);
            v1046 = *(v1200 + 3328);
            v1047 = *(v1200 + 2840);
            sub_21CF9ED64();
            swift_allocError();
            *v1048 = v1035;
            *(v1048 + 8) = v1036;
            *(v1048 + 16) = 0u;
            *(v1048 + 32) = 0u;
            *(v1048 + 48) = 0;
            swift_willThrow();

            sub_21CF94FCC(v1088, v1089);
            sub_21CFB513C(v1047, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
            sub_21CFB513C(v1046, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
            v1 = v1200;
            v1043(v1044, v1045);
            goto LABEL_31;
          }

          v973 = *v969;
          if (v972)
          {
            v974 = *v971;
            v975 = *(v965 + v968 + 8);
          }

          else
          {
            v974 = 0;
            v975 = 0xE000000000000000;
          }

          v1184 = *(v1 + 3888);
          v1169 = *(v1 + 3832);
          v1037 = *(v1200 + 3632);
          v1038 = *(v1200 + 3328);
          v1039 = *(v1200 + 2840);
          v1040 = (v1039 + *(*(v1200 + 2800) + 36));
          if (*(v1040 + 4))
          {
            v1041 = 0;
          }

          else
          {
            v1041 = *v1040;
          }

          sub_21CF9ED64();
          swift_allocError();
          *v1042 = v974;
          *(v1042 + 8) = v975;
          *(v1042 + 16) = v973;
          *(v1042 + 24) = v970;
          *(v1042 + 32) = v1041;
          *(v1042 + 40) = 0;
          *(v1042 + 48) = 32;
          swift_willThrow();

          sub_21CF94FCC(v1088, v1089);
          sub_21CFB513C(v1039, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v1038, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v1 = v1200;
          v916 = v1169;
          v917 = v1037;
          goto LABEL_370;
        }

        v408 = *(v1 + 3864);
        v409 = *(v1 + 3336);
        v410 = *(v1 + 2736);
        if ((v407 & 1) == 0)
        {
          v408(*(v1 + 3408), v410, v409);
          v774 = sub_21D022484();
          v775 = sub_21D0228A4();
          v776 = os_log_type_enabled(v774, v775);
          v777 = *(v1 + 3880);
          v778 = *(v1 + 3408);
          v779 = *(v1 + 3336);
          if (v776)
          {
            v780 = swift_slowAlloc();
            *v780 = 0;
            _os_log_impl(&dword_21CF72000, v774, v775, "statusResponse trigger radar off.", v780, 2u);
            MEMORY[0x223D3ADE0](v780, -1, -1);
          }

          v777(v778, v779);
          goto LABEL_330;
        }

        v408(*(v1 + 3424), v410, v409);
        v411 = sub_21D022484();
        v412 = sub_21D0228A4();
        if (os_log_type_enabled(v411, v412))
        {
          v413 = swift_slowAlloc();
          *v413 = 0;
          _os_log_impl(&dword_21CF72000, v411, v412, "statusResponse trigger radar on.", v413, 2u);
          MEMORY[0x223D3ADE0](v413, -1, -1);
        }

        v414 = *(v1 + 3880);
        v415 = *(v1 + 3424);
        v416 = *(v1 + 3336);

        v414(v415, v416);
        if (qword_28121E108[0] != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_28121B6B0 != 1)
        {
          (*(v1 + 3864))(*(v1 + 3416), *(v1 + 2736), *(v1 + 3336));
          v826 = sub_21D022484();
          v827 = sub_21D0228A4();
          if (os_log_type_enabled(v826, v827))
          {
            v828 = swift_slowAlloc();
            *v828 = 0;
            _os_log_impl(&dword_21CF72000, v826, v827, "Request feedback for error", v828, 2u);
            MEMORY[0x223D3ADE0](v828, -1, -1);
          }

          v829 = *(v1 + 3880);
          v830 = *(v1 + 3416);
          v831 = *(v1 + 3336);
          v832 = *(v1 + 2840);
          v833 = *(v1 + 2800);

          v829(v830, v831);
          v834 = (v832 + *(v833 + 32));
          if (v834[1])
          {
            v1198 = *v834;
            v1127 = v834[1];
          }

          else
          {
            v1198 = 0;
            v1127 = 0xE000000000000000;
          }

          v903 = *(v1200 + 2840);
          v904 = *(v1200 + 2800);
          v905 = (v903 + *(v904 + 28));
          v906 = v2;
          if (v905[1])
          {
            v907 = *v905;
            v908 = v905[1];
          }

          else
          {
            v907 = 0;
            v908 = 0xE000000000000000;
          }

          v1 = v1200;
          v1184 = *(v1200 + 3888);
          v1167 = *(v1200 + 3832);
          v1149 = *(v1200 + 3632);
          v909 = *(v1200 + 3328);
          v910 = (v903 + *(v904 + 36));
          v911 = *v910;
          v912 = *(v910 + 4);
          if (v912)
          {
            v913 = 0;
          }

          else
          {
            v913 = v911;
          }

          v914 = v912 | 0x60;
          sub_21CF9ED64();
          swift_allocError();
          *v915 = 1;
          *(v915 + 8) = v1198;
          *(v915 + 16) = v1127;
          *(v915 + 24) = v907;
          *(v915 + 32) = v908;
          *(v915 + 40) = v913;
          *(v915 + 48) = v914;
          swift_willThrow();

          sub_21CF94FCC(v1088, v906);
          sub_21CFB513C(v903, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          sub_21CFB513C(v909, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
          v916 = v1167;
          v917 = v1149;
LABEL_370:
          v1184(v916, v917);
          goto LABEL_31;
        }

        v417 = *(v1 + 2840);
        v418 = *(v1 + 2800);
        *(*(v1 + 2792) + *(*(v1 + 2784) + 20)) = 1547038;
        sub_21D022494();
        *&v1217 = 0;
        *(&v1217 + 1) = 0xE000000000000000;
        sub_21D0229A4();
        MEMORY[0x223D3A110](0x6F44737574617473, 0xED00003A6E69616DLL);
        v419 = (v417 + v418[8]);
        v420 = v419[1];
        if (v420)
        {
          v421 = *v419;
        }

        else
        {
          v421 = 0;
        }

        if (v420)
        {
          v422 = v419[1];
        }

        else
        {
          v422 = 0xE000000000000000;
        }

        MEMORY[0x223D3A110](v421, v422);

        MEMORY[0x223D3A110](0x4D73757461747320, 0xEF3A656761737365);
        v423 = (v417 + v418[7]);
        v424 = v423[1];
        if (v424)
        {
          v425 = *v423;
        }

        else
        {
          v425 = 0;
        }

        if (v424)
        {
          v426 = v423[1];
        }

        else
        {
          v426 = 0xE000000000000000;
        }

        MEMORY[0x223D3A110](v425, v426);

        MEMORY[0x223D3A110](0x4373757461747320, 0xEC0000003A65646FLL);
        v427 = (v417 + v418[9]);
        if (*(v427 + 4))
        {
          v428 = 0;
        }

        else
        {
          v428 = *v427;
        }

        *(v1 + 2220) = v428;
        v429 = sub_21D022B04();
        MEMORY[0x223D3A110](v429);

        MEMORY[0x223D3A110](0, 0xE000000000000000);
        v430 = v1217;
        if (qword_27CE45180 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v431 = *&qword_27CE467A0;
        *(v1 + 2176) = xmmword_27CE46790;
        *(v1 + 2192) = v431;
        *(v1 + 2201) = *(&qword_27CE467A8 + 1);
        sub_21CF7F198(v1 + 2176, v1 + 2224, &qword_27CE45600, &qword_21D0246F8);
        v432 = sub_21D014BC8();
        v434 = v433;
        sub_21CF7F200(v1 + 2176, &qword_27CE45600, &qword_21D0246F8);
        if (v434)
        {
          v435 = HIBYTE(v434) & 0xF;
          if ((v434 & 0x2000000000000000) == 0)
          {
            v435 = v432 & 0xFFFFFFFFFFFFLL;
          }

          if (v435)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
            v436 = swift_allocObject();
            *(v436 + 16) = xmmword_21D0238C0;
            *(v436 + 32) = v432;
            *(v436 + 40) = v434;
LABEL_329:
            v931 = *(v1 + 2792);
            v932 = sub_21D021A54();
            sub_21D00F99C(v430, *(&v430 + 1), v932, v933, v436);

            sub_21CFB513C(v931, type metadata accessor for PrivateMLClientAlertService);
            goto LABEL_330;
          }
        }

        v436 = MEMORY[0x277D84F90];
        goto LABEL_329;
      }

LABEL_66:
      v242 = *(v1 + 3848);
      v243 = *(v1 + 3832);
      v244 = *(v1 + 3688);
      v245 = *(v1 + 3632);
      v246 = *(v1 + 2840);
      v247 = *(v1 + 2824);
      (*(v1 + 3864))(*(v1 + 3432), *(v1 + 2736), *(v1 + 3336));
      v242(v244, v243, v245);
      sub_21CFB519C(v246, v247, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v248 = sub_21D022484();
      v249 = sub_21D0228D4();
      v250 = os_log_type_enabled(v248, v249);
      v1192 = *(v1 + 3888);
      if (v250)
      {
        v251 = *(v1 + 3688);
        v252 = *(v1 + 3632);
        v1157 = *(v1 + 2824);
        v1138 = *(v1 + 2800);
        v253 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        *&v1217 = v254;
        *v253 = 136315394;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v255 = sub_21D022B04();
        v257 = sub_21CF9703C(v255, v256, &v1217);

        *(v253 + 4) = v257;
        v1192(v251, v252);
        *(v253 + 12) = 2080;
        v258 = (v1157 + *(v1138 + 28));
        if (v258[1])
        {
          v259 = *v258;
          v260 = v258[1];
        }

        else
        {
          v259 = 0;
          v260 = 0xE000000000000000;
        }

        v1 = v1200;
        v1197 = *(v1200 + 3888);
        v1118 = *(v1200 + 3880);
        v1166 = *(v1200 + 3832);
        v1148 = *(v1200 + 3632);
        logh = *(v1200 + 3432);
        v781 = *(v1200 + 3336);
        v1126 = *(v1200 + 3328);
        v1110 = *(v1200 + 2840);
        v782 = *(v1200 + 2824);

        v783 = sub_21CF9703C(v259, v260, &v1217);

        *(v253 + 14) = v783;
        sub_21CFB513C(v782, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        _os_log_impl(&dword_21CF72000, v248, v249, "%s received status response ok. %s", v253, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v254, -1, -1);
        MEMORY[0x223D3ADE0](v253, -1, -1);

        sub_21CF94FCC(v1088, v1089);
        v1118(logh, v781);
        sub_21CFB513C(v1110, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        sub_21CFB513C(v1126, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v1197(v1166, v1148);
      }

      else
      {
        v444 = *(v1 + 3880);
        v1180 = *(v1 + 3832);
        v445 = *(v1 + 3688);
        v446 = *(v1 + 3632);
        v447 = *(v1 + 3432);
        v448 = *(v1 + 3336);
        v1162 = *(v1 + 3328);
        v449 = *(v1200 + 2840);
        v450 = *(v1200 + 2824);

        sub_21CFB513C(v450, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        v1192(v445, v446);
        sub_21CF94FCC(v1088, v1089);
        v444(v447, v448);
        v451 = v449;
        v1 = v1200;
        sub_21CFB513C(v451, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
        sub_21CFB513C(v1162, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
        v1192(v1180, v446);
      }

      goto LABEL_279;
    }

    v293 = *(v1 + 3848);
    v294 = *(v1 + 3832);
    v295 = *(v1 + 3696);
    v296 = *(v1 + 3632);
    v297 = *(v1 + 2840);
    v298 = *(v1 + 2832);
    (*(v1 + 3864))(*(v1 + 3440), *(v1 + 2736), *(v1 + 3336));
    v293(v295, v294, v296);
    sub_21CFB519C(v297, v298, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    v299 = sub_21D022484();
    v300 = sub_21D0228D4();
    v301 = os_log_type_enabled(v299, v300);
    v302 = *(v1 + 3888);
    if (v301)
    {
      v303 = *(v1 + 3696);
      v304 = *(v1 + 3632);
      v1178 = *(v1 + 2832);
      v1158 = *(v1 + 2800);
      v305 = swift_slowAlloc();
      v306 = swift_slowAlloc();
      *&v1217 = v306;
      *v305 = 136315394;
      sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v307 = sub_21D022B04();
      v309 = sub_21CF9703C(v307, v308, &v1217);

      *(v305 + 4) = v309;
      v302(v303, v304);
      *(v305 + 12) = 2080;
      v310 = (v1178 + *(v1158 + 28));
      if (v310[1])
      {
        v311 = *v310;
        v312 = v310[1];
      }

      else
      {
        v311 = 0;
        v312 = 0xE000000000000000;
      }

      v1 = v1200;
      v1183 = *(v1200 + 3888);
      v1117 = *(v1200 + 3880);
      v1165 = *(v1200 + 3832);
      v1147 = *(v1200 + 3632);
      logg = *(v1200 + 3440);
      v771 = *(v1200 + 3336);
      v1125 = *(v1200 + 3328);
      v1109 = *(v1200 + 2840);
      v772 = *(v1200 + 2832);

      v773 = sub_21CF9703C(v311, v312, &v1217);

      *(v305 + 14) = v773;
      sub_21CFB513C(v772, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      _os_log_impl(&dword_21CF72000, v299, v300, "%s received status response not set. %s", v305, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v306, -1, -1);
      MEMORY[0x223D3ADE0](v305, -1, -1);

      sub_21CF94FCC(v1088, v1089);
      v1117(logg, v771);
      sub_21CFB513C(v1109, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21CFB513C(v1125, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v1183(v1165, v1147);
    }

    else
    {
      v1161 = *(v1 + 3880);
      v1194 = *(v1 + 3832);
      v437 = *(v1 + 3696);
      v438 = *(v1 + 3632);
      v439 = *(v1 + 3440);
      v440 = *(v1 + 3336);
      v1179 = *(v1 + 3328);
      v441 = *(v1200 + 2840);
      v442 = *(v1200 + 2832);

      sub_21CFB513C(v442, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v302(v437, v438);
      sub_21CF94FCC(v1088, v1089);
      v1161(v439, v440);
      v443 = v441;
      v1 = v1200;
      sub_21CFB513C(v443, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21CFB513C(v1179, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
      v302(v1194, v438);
    }

    goto LABEL_279;
  }

  v63 = *(v1200 + 3864);
  v64 = *(v1200 + 3848);
  v65 = *(v1200 + 3832);
  v66 = *(v1200 + 3744);
  v67 = *(v1200 + 3632);
  v68 = *(v1200 + 3536);
  v69 = *(v1200 + 3336);
  v70 = *(v1200 + 2736);
  sub_21CFB537C(v61, *(v1200 + 3152), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  v63(v68, v70, v69);
  v1 = v1200;
  v64(v66, v65, v67);
  v71 = sub_21D022484();
  v72 = sub_21D0228D4();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v1200 + 3888);
  v75 = *(v1200 + 3880);
  v76 = *(v1200 + 3744);
  v77 = *(v1200 + 3632);
  v78 = *(v1200 + 3536);
  v79 = *(v1200 + 3336);
  if (v73)
  {
    v1171 = *(v1200 + 3536);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v1217 = v81;
    *v80 = 136315138;
    sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v82 = sub_21D022B04();
    v1132 = v75;
    v84 = sub_21CF9703C(v82, v83, &v1217);

    *(v80 + 4) = v84;
    v74(v76, v77);
    _os_log_impl(&dword_21CF72000, v71, v72, "%s received final response", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v85 = v81;
    v1 = v1200;
    MEMORY[0x223D3ADE0](v85, -1, -1);
    MEMORY[0x223D3ADE0](v80, -1, -1);

    v1132(v1171, v79);
  }

  else
  {
    v74(v76, v77);

    v75(v78, v79);
  }

  v261 = *(v1 + 3136);
  v262 = *(v1 + 3040);
  v263 = *(v1 + 3032);
  v1062 = *(v1 + 3152);
  v1061 = *(*(v1 + 3144) + 28);
  sub_21CF7F198(v1062 + v1061, v261, &qword_27CE455E8, &unk_21D0246D0);
  v1081 = *(v262 + 48);
  LODWORD(v263) = v1081(v261, 1, v263);
  sub_21CF7F200(v261, &qword_27CE455E8, &unk_21D0246D0);
  v13 = v1089;
  if (v263 != 1)
  {
    v264 = *(v1 + 3128);
    v265 = *(v1 + 3032);
    sub_21CF7F198(v1062 + v1061, v264, &qword_27CE455E8, &unk_21D0246D0);
    if (v1081(v264, 1, v265) == 1)
    {
      v266 = *(v1 + 3080);
      v267 = *(v1 + 3032);
      sub_21D021CE4();
      v268 = *(v267 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v269 = *(v1 + 3128);
      v270 = *(v1 + 3032);
      *(v266 + v268) = qword_28121BFC0;
      v271 = v1081(v269, 1, v270);

      if (v271 != 1)
      {
        sub_21CF7F200(*(v1 + 3128), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3128), *(v1 + 3080), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v384 = *(v1 + 3080);
    sub_21CF7DAF0(*(v1 + 2736) + *(v1 + 2268), *(v1 + 2736));
    sub_21CFB513C(v384, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
  }

  v34 = (v1 + 2432);
  if (qword_28121B2A8 != -1)
  {
    goto LABEL_378;
  }

  while (1)
  {
    swift_beginAccess();
    v385 = unk_28121B2C0;
    *v34 = xmmword_28121B2B0;
    v34[1] = v385;
    *(v34 + 32) = byte_28121B2D0;
    sub_21CF7F198(v34, v1 + 2352, &qword_27CE45288, &qword_21D023970);
    v386 = sub_21D01561C();
    sub_21CF7F200(v34, &qword_27CE45288, &qword_21D023970);
    if ((v386 & 1) == 0)
    {
      break;
    }

    v387 = *(v1 + 3120);
    v388 = *(v1 + 3032);
    sub_21CF7F198(v1062 + v1061, v387, &qword_27CE455E8, &unk_21D0246D0);
    LODWORD(v388) = v1081(v387, 1, v388);
    sub_21CF7F200(v387, &qword_27CE455E8, &unk_21D0246D0);
    if (v388 == 1)
    {
      v389 = *(v1 + 3848);
      v390 = *(v1 + 3832);
      v391 = *(v1 + 3736);
      v392 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3528), *(v1 + 2736), *(v1 + 3336));
      v389(v391, v390, v392);
      v393 = sub_21D022484();
      v394 = sub_21D0228C4();
      v395 = os_log_type_enabled(v393, v394);
      v396 = *(v1 + 3888);
      v397 = *(v1 + 3880);
      v398 = *(v1 + 3736);
      v399 = *(v1 + 3632);
      v400 = *(v1 + 3528);
      v1193 = *(v1 + 3336);
      if (v395)
      {
        v1159 = *(v1 + 3528);
        v401 = swift_slowAlloc();
        v402 = swift_slowAlloc();
        *&v1217 = v402;
        *v401 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v403 = sub_21D022B04();
        v1139 = v397;
        v405 = sub_21CF9703C(v403, v404, &v1217);
        v13 = v1089;

        *(v401 + 4) = v405;
        v396(v398, v399);
        _os_log_impl(&dword_21CF72000, v393, v394, "%s contains no debug information", v401, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v402);
        v406 = v402;
        v1 = v1200;
        MEMORY[0x223D3ADE0](v406, -1, -1);
        MEMORY[0x223D3ADE0](v401, -1, -1);

        v1139(v1159, v1193);
      }

      else
      {
        v396(v398, v399);

        v397(v400, v1193);
      }
    }

    v468 = *(v1 + 3112);
    v469 = *(v1 + 3032);
    sub_21CF7F198(v1062 + v1061, v468, &qword_27CE455E8, &unk_21D0246D0);
    if (v1081(v468, 1, v469) == 1)
    {
      v470 = *(v1 + 3072);
      v471 = *(v1 + 3032);
      sub_21D021CE4();
      v472 = *(v471 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v473 = *(v1 + 3112);
      v474 = *(v1 + 3032);
      *(v470 + v472) = qword_28121BFC0;
      v475 = v1081(v473, 1, v474);

      if (v475 != 1)
      {
        sub_21CF7F200(*(v1 + 3112), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3112), *(v1 + 3072), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v476 = *(v1 + 3072);
    v477 = *(v1 + 3024);
    v478 = *(v1 + 2912);
    v479 = *(v1 + 2904);
    v1077 = *(v1 + 3032);
    v480 = *(v476 + *(v1077 + 20));
    v481 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v480 + v481, v477, &qword_27CE45248, &unk_21D023560);
    v1057 = *(v478 + 48);
    LODWORD(v479) = v1057(v477, 1, v479);
    sub_21CF7F200(v477, &qword_27CE45248, &unk_21D023560);
    sub_21CFB513C(v476, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    if (v479 == 1)
    {
      v482 = *(v1 + 3848);
      v483 = *(v1 + 3832);
      v484 = *(v1 + 3728);
      v485 = *(v1 + 3632);
      (*(v1 + 3864))(*(v1 + 3520), *(v1 + 2736), *(v1 + 3336));
      v482(v484, v483, v485);
      v486 = sub_21D022484();
      v487 = sub_21D0228C4();
      v488 = os_log_type_enabled(v486, v487);
      v489 = *(v1 + 3888);
      v490 = *(v1 + 3880);
      v491 = *(v1 + 3728);
      v492 = *(v1 + 3632);
      v493 = *(v1 + 3520);
      v1195 = *(v1 + 3336);
      if (v488)
      {
        v1163 = *(v1 + 3520);
        v494 = swift_slowAlloc();
        v495 = swift_slowAlloc();
        *&v1217 = v495;
        *v494 = 136315138;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v496 = sub_21D022B04();
        v1140 = v490;
        v498 = sub_21CF9703C(v496, v497, &v1217);
        v13 = v1089;

        *(v494 + 4) = v498;
        v489(v491, v492);
        _os_log_impl(&dword_21CF72000, v486, v487, "%s contains no performance metrics", v494, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v495);
        v499 = v495;
        v1 = v1200;
        MEMORY[0x223D3ADE0](v499, -1, -1);
        MEMORY[0x223D3ADE0](v494, -1, -1);

        v1140(v1163, v1195);
      }

      else
      {
        v489(v491, v492);

        v490(v493, v1195);
      }
    }

    if (qword_27CE451D0 != -1)
    {
      swift_once();
    }

    v500 = *(v1 + 3104);
    v501 = *(v1 + 3032);
    swift_beginAccess();
    v502 = unk_27CE46948;
    *(v1 + 2392) = xmmword_27CE46938;
    *(v1 + 2408) = v502;
    *(v1 + 2424) = byte_27CE46958;
    sub_21CF7F198(v1 + 2392, v1 + 2312, &qword_27CE45260, &unk_21D0244F0);
    v503 = sub_21D0146E4();
    sub_21CF7F200(v1 + 2392, &qword_27CE45260, &unk_21D0244F0);
    *&v1204 = MEMORY[0x277D84F90];
    sub_21CF7F198(v1062 + v1061, v500, &qword_27CE455E8, &unk_21D0246D0);
    if (v1081(v500, 1, v501) == 1)
    {
      v504 = *(v1 + 3064);
      sub_21D021CE4();
      v505 = *(v1077 + 20);
      if (qword_28121BFB8 != -1)
      {
        swift_once();
      }

      v506 = *(v1 + 3104);
      v507 = *(v1 + 3032);
      *(v504 + v505) = qword_28121BFC0;
      v508 = v1081(v506, 1, v507);

      if (v508 != 1)
      {
        sub_21CF7F200(*(v1 + 3104), &qword_27CE455E8, &unk_21D0246D0);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3104), *(v1 + 3064), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    }

    v509 = *(v1 + 3016);
    v510 = *(v1 + 2904);
    v511 = *(*(v1 + 3064) + *(v1077 + 20));
    v512 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v511 + v512, v509, &qword_27CE45248, &unk_21D023560);
    v513 = v1057(v509, 1, v510);
    v514 = *(v1 + 3016);
    v515 = *(v1 + 2992);
    if (v513 == 1)
    {
      v516 = *(v1 + 2904);
      *v515 = MEMORY[0x277D84F90];
      sub_21D021CE4();
      v517 = (v515 + *(v516 + 24));
      *v517 = 0;
      v517[1] = 0;
      v518 = v515 + *(v516 + 28);
      *v518 = 0;
      v518[8] = 1;
      if (v1057(v514, 1, v516) != 1)
      {
        sub_21CF7F200(*(v1 + 3016), &qword_27CE45248, &unk_21D023560);
      }
    }

    else
    {
      sub_21CFB537C(*(v1 + 3016), *(v1 + 2992), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    }

    v519 = *(v1 + 2992);
    v520 = *(v1 + 2896);
    v521 = *(v1 + 2864);
    sub_21CFB513C(*(v1 + 3064), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
    v1086 = v521;
    v522 = *(v521 + 48);
    sub_21CFB537C(v519, v520, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    *(v520 + v522) = 0;
    v34 = &v1204;
    sub_21CFA4F74(v520);
    v1124 = v1204;
    if (!*(v1204 + 16))
    {
LABEL_248:

      break;
    }

    v1050 = *(v1 + 2912);
    v1181 = *(v1 + 2904);
    v1049 = v503;
    v1052 = *(v1 + 2872);
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1124 = sub_21CFB5204(v1124);
      }

      v523 = v1124[2];
      if (!v523)
      {
        break;
      }

      v524 = *(v1 + 3864);
      v1072 = *(v1 + 3848);
      v525 = *(v1 + 3832);
      v526 = *(v1 + 3720);
      v527 = *(v1 + 3632);
      v528 = *(v1 + 3512);
      v529 = *(v1 + 3336);
      v530 = *(v1 + 2984);
      v1069 = *(v1 + 2976);
      logf = *(v1 + 2968);
      v531 = *(v1 + 2888);
      v532 = *(v1200 + 2736);
      v533 = v523 - 1;
      v1141 = (*(v1052 + 80) + 32) & ~*(v1052 + 80);
      v1114 = *(v1052 + 72);
      v1124[2] = v533;
      sub_21CF7F260(v1124 + v1141 + v1114 * v533, v531);
      v1054 = *(v531 + *(v1086 + 48));
      sub_21CFB537C(v531, v530, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      v534 = v532;
      v1 = v1200;
      v524(v528, v534, v529);
      v1072(v526, v525, v527);
      sub_21CFB519C(v530, v1069, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB519C(v530, logf, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      v535 = sub_21D022484();
      v536 = sub_21D0228D4();
      v537 = os_log_type_enabled(v535, v536);
      v538 = *(v1200 + 3888);
      if (v537)
      {
        v539 = *(v1200 + 3720);
        v540 = *(v1200 + 3632);
        v541 = *(v1200 + 2976);
        v542 = swift_slowAlloc();
        v543 = swift_slowAlloc();
        *&v1217 = v543;
        *v542 = 136446722;
        sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v544 = sub_21D022B04();
        v546 = sub_21CF9703C(v544, v545, &v1217);

        *(v542 + 4) = v546;
        v538(v539, v540);
        *(v542 + 12) = 2080;
        v547 = (v541 + *(v1181 + 24));
        if (v547[1])
        {
          v548 = *v547;
          v549 = v547[1];
        }

        else
        {
          v548 = 0;
          v549 = 0xE000000000000000;
        }

        v1 = v1200;
        logc = *(v1200 + 3880);
        v1092 = *(v1200 + 3512);
        v557 = *(v1200 + 3336);
        v558 = *(v1200 + 2976);
        v559 = *(v1200 + 2968);

        v560 = sub_21CF9703C(v548, v549, &v1217);

        *(v542 + 14) = v560;
        sub_21CFB513C(v558, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        *(v542 + 22) = 2048;
        v556 = v1181;
        v561 = v559 + *(v1181 + 28);
        if (*(v561 + 8))
        {
          v562 = 0;
        }

        else
        {
          v562 = *v561;
        }

        sub_21CFB513C(v559, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        *(v542 + 24) = v562;
        _os_log_impl(&dword_21CF72000, v535, v536, "%{public}s performance metrics: %s -  %llu", v542, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v543, -1, -1);
        MEMORY[0x223D3ADE0](v542, -1, -1);

        (logc)(v1092, v557);
      }

      else
      {
        v550 = *(v1200 + 3880);
        v551 = *(v1200 + 3720);
        v552 = *(v1200 + 3632);
        v553 = *(v1200 + 3512);
        v554 = *(v1200 + 3336);
        v555 = *(v1200 + 2976);
        sub_21CFB513C(*(v1200 + 2968), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        v538(v551, v552);
        sub_21CFB513C(v555, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

        v550(v553, v554);
        v556 = v1181;
      }

      v563 = (*(v1 + 2984) + *(v556 + 24));
      v34 = v563[1];
      v13 = v1089;
      if (v34 && 0x800000021D02D410 == v34 && *v563 == 0xD00000000000001FLL)
      {
      }

      else
      {
        v564 = sub_21D022B24();

        if ((v564 & 1) == 0)
        {
          if (v1054 <= v1049)
          {
            v579 = **(v1 + 2984);
            v580 = *(v579 + 16);
            if (v580)
            {
              v34 = (v579 + ((*(v1050 + 80) + 32) & ~*(v1050 + 80)));
              v581 = *(v1050 + 72);
              do
              {
                v582 = *(v1 + 2880);
                v583 = *(v1086 + 48);
                sub_21CFB519C(v34, v582, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
                *(v582 + v583) = v1054 + 1;
                v585 = v1124[2];
                v584 = v1124[3];
                if (v585 >= v584 >> 1)
                {
                  v1124 = sub_21CFB493C((v584 > 1), v585 + 1, 1, v1124);
                }

                v586 = *(v1 + 2880);
                v1124[2] = v585 + 1;
                sub_21CF7F260(v586, v1124 + v1141 + v585 * v1114);
                v34 = (v34 + v581);
                --v580;
              }

              while (v580);
            }
          }

          goto LABEL_173;
        }
      }

      (*(v1 + 3864))(*(v1 + 3504), *(v1 + 2736), *(v1 + 3336));
      v565 = sub_21D022484();
      v566 = sub_21D0228D4();
      if (os_log_type_enabled(v565, v566))
      {
        v567 = swift_slowAlloc();
        *v567 = 0;
        _os_log_impl(&dword_21CF72000, v565, v566, "Performance metrics for first 10 responses: ", v567, 2u);
        MEMORY[0x223D3ADE0](v567, -1, -1);
      }

      v568 = *(v1 + 3880);
      v569 = *(v1 + 3504);
      v570 = *(v1 + 3336);
      v571 = *(v1 + 3096);
      v572 = *(v1 + 3032);

      v568(v569, v570);
      sub_21CF7F198(v1062 + v1061, v571, &qword_27CE455E8, &unk_21D0246D0);
      if (v1081(v571, 1, v572) == 1)
      {
        v573 = *(v1 + 3056);
        sub_21D021CE4();
        v574 = *(v1077 + 20);
        v575 = v1057;
        if (qword_28121BFB8 != -1)
        {
          swift_once();
        }

        v576 = *(v1 + 3096);
        v577 = *(v1 + 3032);
        *(v573 + v574) = qword_28121BFC0;
        v578 = v1081(v576, 1, v577);

        if (v578 != 1)
        {
          sub_21CF7F200(*(v1 + 3096), &qword_27CE455E8, &unk_21D0246D0);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3096), *(v1 + 3056), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        v575 = v1057;
      }

      v587 = *(v1 + 3008);
      v588 = *(v1 + 2904);
      v589 = *(*(v1 + 3056) + *(v1077 + 20));
      v590 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
      swift_beginAccess();
      sub_21CF7F198(v589 + v590, v587, &qword_27CE45248, &unk_21D023560);
      v591 = v575(v587, 1, v588);
      v592 = *(v1 + 3008);
      v593 = *(v1 + 2960);
      if (v591 == 1)
      {
        v594 = *(v1 + 2904);
        *v593 = MEMORY[0x277D84F90];
        sub_21D021CE4();
        v595 = (v593 + *(v1181 + 24));
        *v595 = 0;
        v595[1] = 0;
        v596 = v593 + *(v1181 + 28);
        *v596 = 0;
        v596[8] = 1;
        if (v575(v592, 1, v594) != 1)
        {
          sub_21CF7F200(*(v1 + 3008), &qword_27CE45248, &unk_21D023560);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3008), *(v1 + 2960), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      }

      v34 = *(v1 + 2960);
      sub_21CFB513C(*(v1 + 3056), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v597 = *v34;

      sub_21CFB513C(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB00C8(10, v597);
      v601 = (v600 >> 1) - v599;
      if (v600 >> 1 != v599)
      {
        if ((v600 >> 1) <= v599)
        {
          goto LABEL_376;
        }

        v1115 = *(v1050 + 72);
        v620 = v598 + v599 * v1115;
        do
        {
          v626 = *(v1200 + 3848);
          v627 = *(v1200 + 3832);
          v628 = *(v1200 + 3712);
          v629 = *(v1200 + 3632);
          v630 = *(v1200 + 2952);
          v631 = *(v1200 + 2944);
          (*(v1 + 3864))(*(v1200 + 3496), *(v1200 + 2736), *(v1200 + 3336));
          v626(v628, v627, v629);
          sub_21CFB519C(v620, v630, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          sub_21CFB519C(v620, v631, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          v632 = sub_21D022484();
          v633 = sub_21D0228D4();
          v634 = os_log_type_enabled(v632, v633);
          v1142 = *(v1200 + 3888);
          if (v634)
          {
            logd = v632;
            v635 = *(v1200 + 3712);
            v636 = *(v1200 + 3632);
            v637 = *(v1200 + 2952);
            v13 = swift_slowAlloc();
            v638 = swift_slowAlloc();
            *&v1217 = v638;
            *v13 = 136315650;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v639 = sub_21D022B04();
            v641 = sub_21CF9703C(v639, v640, &v1217);

            *(v13 + 4) = v641;
            v1142(v635, v636);
            *(v13 + 12) = 2080;
            v642 = (v637 + *(v1181 + 24));
            if (v642[1])
            {
              v643 = *v642;
              v644 = v642[1];
            }

            else
            {
              v643 = 0;
              v644 = 0xE000000000000000;
            }

            v645 = *(v1200 + 3880);
            v1143 = *(v1200 + 3496);
            v1093 = *(v1200 + 3336);
            v646 = *(v1200 + 2952);
            v647 = *(v1200 + 2944);

            v648 = sub_21CF9703C(v643, v644, &v1217);

            *(v13 + 14) = v648;
            sub_21CFB513C(v646, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v13 + 22) = 2048;
            v649 = v647 + *(v1181 + 28);
            if (*(v649 + 8))
            {
              v650 = 0;
            }

            else
            {
              v650 = *v649;
            }

            sub_21CFB513C(v647, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v13 + 24) = v650;
            _os_log_impl(&dword_21CF72000, logd, v633, "%s performance metrics: %s - %llu", v13, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v638, -1, -1);
            MEMORY[0x223D3ADE0](v13, -1, -1);

            v645(v1143, v1093);
          }

          else
          {
            v13 = *(v1200 + 3880);
            v621 = *(v1200 + 3712);
            v622 = *(v1200 + 3632);
            v623 = *(v1200 + 3496);
            v624 = *(v1200 + 3336);
            v625 = *(v1200 + 2952);
            sub_21CFB513C(*(v1200 + 2944), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

            sub_21CFB513C(v625, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            v1142(v621, v622);
            (v13)(v623, v624);
          }

          v620 += v1115;
          --v601;
          v1 = v1200;
        }

        while (v601);
      }

      v602 = *(v1 + 3864);
      v603 = *(v1 + 3488);
      v604 = *(v1 + 3336);
      v605 = *(v1 + 2736);
      swift_unknownObjectRelease();
      v602(v603, v605, v604);
      v606 = sub_21D022484();
      v607 = sub_21D0228D4();
      if (os_log_type_enabled(v606, v607))
      {
        v608 = swift_slowAlloc();
        *v608 = 0;
        _os_log_impl(&dword_21CF72000, v606, v607, "Performance metrics for last 10 responses: ", v608, 2u);
        MEMORY[0x223D3ADE0](v608, -1, -1);
      }

      v609 = *(v1 + 3880);
      v610 = *(v1 + 3488);
      v611 = *(v1 + 3336);
      v612 = *(v1 + 3088);
      v613 = *(v1 + 3032);

      v609(v610, v611);
      sub_21CF7F198(v1062 + v1061, v612, &qword_27CE455E8, &unk_21D0246D0);
      if (v1081(v612, 1, v613) == 1)
      {
        v614 = *(v1 + 3048);
        sub_21D021CE4();
        v615 = *(v1077 + 20);
        v616 = v1057;
        if (qword_28121BFB8 != -1)
        {
          swift_once();
        }

        v617 = *(v1 + 3088);
        v618 = *(v1 + 3032);
        *(v614 + v615) = qword_28121BFC0;
        v619 = v1081(v617, 1, v618);

        if (v619 != 1)
        {
          sub_21CF7F200(*(v1 + 3088), &qword_27CE455E8, &unk_21D0246D0);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3088), *(v1 + 3048), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        v616 = v1057;
      }

      v651 = *(v1 + 3000);
      v652 = *(v1 + 2904);
      v653 = *(*(v1 + 3048) + *(v1077 + 20));
      v654 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
      swift_beginAccess();
      sub_21CF7F198(v653 + v654, v651, &qword_27CE45248, &unk_21D023560);
      v655 = v616(v651, 1, v652);
      v656 = *(v1 + 3000);
      v657 = *(v1 + 2936);
      if (v655 == 1)
      {
        v658 = *(v1 + 2904);
        *v657 = MEMORY[0x277D84F90];
        sub_21D021CE4();
        v659 = (v657 + *(v1181 + 24));
        *v659 = 0;
        v659[1] = 0;
        v660 = v657 + *(v1181 + 28);
        *v660 = 0;
        v660[8] = 1;
        if (v616(v656, 1, v658) != 1)
        {
          sub_21CF7F200(*(v1 + 3000), &qword_27CE45248, &unk_21D023560);
        }
      }

      else
      {
        sub_21CFB537C(*(v1 + 3000), *(v1 + 2936), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      }

      v34 = *(v1 + 2936);
      sub_21CFB513C(*(v1 + 3048), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v661 = *v34;

      sub_21CFB513C(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      sub_21CFB015C(10, v661);
      v665 = (v664 >> 1) - v663;
      if (v664 >> 1 != v663)
      {
        if ((v664 >> 1) <= v663)
        {
          goto LABEL_377;
        }

        v1116 = *(v1050 + 72);
        v666 = v662 + v663 * v1116;
        do
        {
          v672 = *(v1200 + 3848);
          v673 = *(v1200 + 3832);
          v674 = *(v1200 + 3704);
          v675 = *(v1200 + 3632);
          v676 = *(v1200 + 2928);
          v677 = *(v1200 + 2920);
          (*(v1 + 3864))(*(v1200 + 3480), *(v1200 + 2736), *(v1200 + 3336));
          v672(v674, v673, v675);
          sub_21CFB519C(v666, v676, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          sub_21CFB519C(v666, v677, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
          v678 = sub_21D022484();
          v679 = sub_21D0228D4();
          v680 = os_log_type_enabled(v678, v679);
          v1144 = *(v1200 + 3888);
          if (v680)
          {
            loge = v678;
            v681 = *(v1200 + 3704);
            v682 = *(v1200 + 3632);
            v683 = *(v1200 + 2928);
            v684 = swift_slowAlloc();
            v685 = swift_slowAlloc();
            *&v1217 = v685;
            *v684 = 136315650;
            sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v686 = sub_21D022B04();
            v688 = sub_21CF9703C(v686, v687, &v1217);

            *(v684 + 4) = v688;
            v1144(v681, v682);
            *(v684 + 12) = 2080;
            v689 = (v683 + *(v1181 + 24));
            if (v689[1])
            {
              v690 = *v689;
              v691 = v689[1];
            }

            else
            {
              v690 = 0;
              v691 = 0xE000000000000000;
            }

            v692 = *(v1200 + 3880);
            v1145 = *(v1200 + 3480);
            v1094 = *(v1200 + 3336);
            v693 = *(v1200 + 2928);
            v694 = *(v1200 + 2920);

            v695 = sub_21CF9703C(v690, v691, &v1217);

            *(v684 + 14) = v695;
            sub_21CFB513C(v693, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v684 + 22) = 2048;
            v696 = v694 + *(v1181 + 28);
            if (*(v696 + 8))
            {
              v697 = 0;
            }

            else
            {
              v697 = *v696;
            }

            sub_21CFB513C(v694, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            *(v684 + 24) = v697;
            v34 = loge;
            _os_log_impl(&dword_21CF72000, loge, v679, "%s performance metrics: %s - %llu", v684, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3ADE0](v685, -1, -1);
            MEMORY[0x223D3ADE0](v684, -1, -1);

            v692(v1145, v1094);
          }

          else
          {
            v667 = *(v1200 + 3880);
            v34 = *(v1200 + 3704);
            v668 = *(v1200 + 3632);
            v669 = *(v1200 + 3480);
            v670 = *(v1200 + 3336);
            v671 = *(v1200 + 2928);
            sub_21CFB513C(*(v1200 + 2920), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);

            sub_21CFB513C(v671, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            v1144(v34, v668);
            v667(v669, v670);
          }

          v666 += v1116;
          --v665;
          v1 = v1200;
        }

        while (v665);
      }

      swift_unknownObjectRelease();
      v13 = v1089;
LABEL_173:
      sub_21CFB513C(*(v1 + 2984), type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      if (!v1124[2])
      {
        goto LABEL_248;
      }
    }

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
    swift_once();
  }

  v698 = *(v1 + 3904);
  v699 = *(v1 + 3896);
  v700 = *(v1 + 2348);
  v701 = *(v1 + 3152);
  v702 = *(v1 + 2856);
  v703 = *(v1 + 2736);
  sub_21CF7F200(v703 + v700, &qword_27CE455D0, &qword_21D0246B0);
  (*(v698 + 56))(v703 + v700, 1, 1, v699);
  sub_21CF7F198(v701, v702, &qword_27CE455E0, &qword_21D0246C8);
  v704 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  if ((*(*(v704 - 8) + 48))(v702, 1, v704) == 1)
  {
    goto LABEL_250;
  }

  sub_21CF7F198(*(v1 + 2856), *(v1 + 2848), &qword_27CE455E0, &qword_21D0246C8);
  v712 = swift_getEnumCaseMultiPayload();
  if (v712 > 1)
  {
    if (v712 != 2)
    {
      sub_21CFB513C(*(v1 + 2848), type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_250:
      (*(v1 + 3864))(*(v1 + 3448), *(v1 + 2736), *(v1 + 3336));
      v705 = sub_21D022484();
      v706 = sub_21D0228D4();
      v707 = os_log_type_enabled(v705, v706);
      v708 = *(v1 + 3880);
      v709 = *(v1 + 3448);
      v710 = *(v1 + 3336);
      if (v707)
      {
        v711 = swift_slowAlloc();
        *v711 = 0;
        _os_log_impl(&dword_21CF72000, v705, v706, "Final response. Completion reason is unknown", v711, 2u);
        MEMORY[0x223D3ADE0](v711, -1, -1);
      }

      v708(v709, v710);
      goto LABEL_266;
    }

    (*(v1 + 3864))(*(v1 + 3464), *(v1 + 2736), *(v1 + 3336));
    v725 = sub_21D022484();
    v726 = sub_21D0228D4();
    if (os_log_type_enabled(v725, v726))
    {
      v727 = swift_slowAlloc();
      *v727 = 0;
      _os_log_impl(&dword_21CF72000, v725, v726, "Final response with completion reason encounteredStopSequence", v727, 2u);
      MEMORY[0x223D3ADE0](v727, -1, -1);
    }

    v728 = *(v1 + 3880);
    v729 = *(v1 + 3464);
LABEL_265:
    v732 = *(v1 + 3336);
    v733 = *(v1 + 2848);

    v728(v729, v732);
    sub_21CFB513C(v733, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_266:
    v734 = *(v1 + 3888);
    v735 = *(v1 + 3832);
    v736 = *(v1 + 3632);
    v737 = *(v1 + 3328);
    v738 = *(v1 + 3152);
    v739 = *(v1 + 2728);
    sub_21CF7F200(*(v1 + 2856), &qword_27CE455E0, &qword_21D0246C8);
    sub_21CF94FCC(v1088, v13);
    sub_21CFB513C(v738, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    sub_21CFB513C(v737, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
    v734(v735, v736);
    *v739 = 0;
    v739[1] = 0xE000000000000000;
    v740 = type metadata accessor for PrivateMLRequest.Response.Event(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v740 - 8) + 56))(v739, 0, 1, v740);
    goto LABEL_5;
  }

  if (v712)
  {
    (*(v1 + 3864))(*(v1 + 3456), *(v1 + 2736), *(v1 + 3336));
    v725 = sub_21D022484();
    v730 = sub_21D0228D4();
    if (os_log_type_enabled(v725, v730))
    {
      v731 = swift_slowAlloc();
      *v731 = 0;
      _os_log_impl(&dword_21CF72000, v725, v730, "Final response with completion reason encounteredStopToken", v731, 2u);
      MEMORY[0x223D3ADE0](v731, -1, -1);
    }

    v728 = *(v1 + 3880);
    v729 = *(v1 + 3456);
    goto LABEL_265;
  }

  (*(v1 + 3864))(*(v1 + 3472), *(v1 + 2736), *(v1 + 3336));
  v713 = sub_21D022484();
  v714 = sub_21D0228D4();
  if (os_log_type_enabled(v713, v714))
  {
    v715 = swift_slowAlloc();
    *v715 = 0;
    _os_log_impl(&dword_21CF72000, v713, v714, "Final response with completion reason outputTokenLimitReached", v715, 2u);
    MEMORY[0x223D3ADE0](v715, -1, -1);
  }

  v1164 = *(v1 + 3888);
  v716 = *(v1 + 3880);
  v1146 = *(v1 + 3832);
  v717 = *(v1 + 3632);
  v718 = *(v1 + 3472);
  v719 = *(v1200 + 3336);
  v720 = *(v1200 + 3328);
  v721 = *(v1200 + 3152);
  v1196 = *(v1200 + 2856);
  v1182 = *(v1200 + 2848);
  v722 = *(v1200 + 2728);

  sub_21CF94FCC(v1088, v1089);
  v723 = v719;
  v1 = v1200;
  v716(v718, v723);
  sub_21CFB513C(v721, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  sub_21CFB513C(v720, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse);
  v1164(v1146, v717);
  *v722 = 0;
  v724 = type metadata accessor for PrivateMLRequest.Response.Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v724 - 8) + 56))(v722, 0, 1, v724);
  sub_21CFB513C(v1182, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21CF7F200(v1196, &qword_27CE455E0, &qword_21D0246C8);
LABEL_5:

  v12 = *(v1 + 8);
LABEL_32:

  return v12();
}

uint64_t sub_21CFAF990()
{
  (*(v0 + 3888))(*(v0 + 3832), *(v0 + 3632));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CFB00C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
    return a2;
  }

  return result;
}

uint64_t sub_21CFB015C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
    return a2;
  }

  return result;
}

uint64_t sub_21CFB01E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CF83390;

  return PrivateMLRequest.Response.AsyncEventsIterator.next()(a1);
}

uint64_t sub_21CFB027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_21CFB031C;

  return PrivateMLRequest.Response.AsyncEventsIterator.next()(a1);
}

uint64_t sub_21CFB031C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_21D022734();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_21CFB048C, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_21CFB048C()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientPrompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientPrompt.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.clientDelimieters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.promptTemplateVariableBindings.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.locale.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PrivateMLRequest.PromptDebugInfo.init(clientPrompt:clientDelimieters:promptTemplateID:promptTemplateVariableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_21CF9D5E8(MEMORY[0x277D84F90]);

  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateMLRequest.PromptDebugInfo.asJSONString()()
{
  v1 = v0;
  v2 = sub_21D0225C4();
  MEMORY[0x28223BE20](v2 - 8);
  v19[1] = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21D021834();
  MEMORY[0x28223BE20](v4);
  v5 = *v0;
  v21 = v0[1];
  v22 = v5;
  v6 = *(v0 + 4);
  sub_21D021874();
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21D0238C0;
  sub_21D021814();
  *&v23 = v7;
  sub_21CFB5744(&qword_28121E0A8, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  v20 = *(v1 + 40);
  sub_21D022964();
  sub_21D021844();
  v23 = v22;
  v24 = v21;
  v25 = v6;
  v26 = v20;
  sub_21CFB5448();
  v8 = v27;
  v9 = sub_21D021854();
  if (v8)
  {
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_21D0225B4();
    v15 = sub_21D0225A4();
    v17 = v16;
    sub_21CF8F460(v13, v14);

    if (v17)
    {
      v11 = v15;
    }

    else
    {
      v11 = 32123;
    }

    if (v17)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0xE200000000000000;
    }
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_21CFB0A68()
{
  v1 = *v0;
  v2 = 0x7250746E65696C63;
  v3 = 0xD00000000000001ELL;
  if (v1 != 3)
  {
    v3 = 0x656C61636F6CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21CFB0B0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CFB6CD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CFB0B4C(uint64_t a1)
{
  v2 = sub_21CFB549C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFB0B88(uint64_t a1)
{
  v2 = sub_21CFB549C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateMLRequest.PromptDebugInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45628, &qword_21D024728);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v17 = v1[3];
  v18 = v7;
  v8 = v1[4];
  v15 = v1[5];
  v16 = v8;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFB549C();
  sub_21D022C44();
  LOBYTE(v21) = 0;
  v9 = v19;
  sub_21D022AC4();
  if (!v9)
  {
    v10 = v14;
    v11 = v15;
    v21 = v18;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45630, &unk_21D024730);
    sub_21CFB555C(&qword_28121B410, MEMORY[0x277D837D8], MEMORY[0x277D84CC8], MEMORY[0x277D83508]);
    sub_21D022AF4();
    LOBYTE(v21) = 2;
    sub_21D022AC4();
    v21 = v11;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45338, &qword_21D0238B0);
    sub_21CFB54F0(&qword_28121B428, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_21D022AF4();
    v21 = v10;
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    sub_21CFB55CC(&qword_28121B3D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_21D022AF4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PrivateMLRequest.PromptDebugInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45640, &qword_21D024748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v25 = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFB549C();
  sub_21D022C34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    v9 = sub_21D022A84();
    v12 = v11;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45630, &unk_21D024730);
    v26 = 1;
    sub_21CFB555C(&qword_27CE45648, MEMORY[0x277D83808], MEMORY[0x277D84CF0], MEMORY[0x277D83528]);
    sub_21D022AB4();
    v23 = v13;
    v24 = v27;
    LOBYTE(v27) = 2;
    v14 = sub_21D022A84();
    v16 = v15;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45338, &qword_21D0238B0);
    v26 = 3;
    sub_21CFB54F0(&qword_27CE45650, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_21D022AB4();

    v25 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    v26 = 4;
    sub_21CFB55CC(&qword_27CE45658, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_21D022AB4();
    (*(v6 + 8))(v8, v5);
    v17 = v27;
    v18 = v24;
    *a2 = v23;
    a2[1] = v12;
    v19 = v22;
    a2[2] = v18;
    a2[3] = v19;
    v20 = v25;
    a2[4] = v16;
    a2[5] = v20;
    a2[6] = v17;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t PrivateMLRequest.RichVariable.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PrivateMLRequest.RichVariable.Component.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!(v3 >> 6))
  {
    sub_21D0229A4();

    v13 = 0x6E656E6F706D6F43;
    MEMORY[0x223D3A110](v1, v2);
    MEMORY[0x223D3A110](0xD000000000000011, 0x800000021D02DC10);
    if (v3)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

LABEL_26:
    v10 = v7;
    goto LABEL_27;
  }

  if (v3 >> 6 != 1)
  {
    v13 = 0;
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000001FLL, 0x800000021D02DBA0);
    [v1 width];
    v8 = sub_21D022B04();
    MEMORY[0x223D3A110](v8);

    MEMORY[0x223D3A110](0x746867696568202CLL, 0xE90000000000003ALL);
    [v1 height];
    v9 = sub_21D022B04();
    MEMORY[0x223D3A110](v9);

    MEMORY[0x223D3A110](0xD000000000000011, 0x800000021D02DBC0);
    [v1 allocationSize];
    v6 = sub_21D022B04();
LABEL_27:
    MEMORY[0x223D3A110](v6, v10);

    return v13;
  }

  v13 = 0;
  sub_21D0229A4();
  result = MEMORY[0x223D3A110](0xD000000000000021, 0x800000021D02DBE0);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || !__OFSUB__(v1[3], v1[2]))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_18;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_18:
    v11 = sub_21D022B04();
    MEMORY[0x223D3A110](v11);

    MEMORY[0x223D3A110](0x466567616D692020, 0xEE003A74616D726FLL);
    v12 = 1734701162;
    if ((v3 & 0x3F) != 1)
    {
      v12 = 1718183272;
    }

    if ((v3 & 0x3F) != 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = 6778480;
    }

    if ((v3 & 0x3F) != 0)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t PrivateMLRequest.ImageFormat.description.getter()
{
  v1 = 1734701162;
  if (*v0 != 1)
  {
    v1 = 1718183272;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778480;
  }
}

uint64_t sub_21CFB1764()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFB17AC()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFB17F0()
{
  v1 = 1734701162;
  if (*v0 != 1)
  {
    v1 = 1718183272;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778480;
  }
}

uint64_t PrivateMLRequest.AudioFormat.hashValue.getter()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t PrivateMLRequest.SamplingStrategy.description.getter()
{
  if (!*(v0 + 8))
  {
    v3[0] = 0;
    v3[1] = 0xE000000000000000;
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000001CLL, 0x800000021D02DC30);
    sub_21D022854();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_21D0229A4();

    strcpy(v3, "topK (count: ");
    HIWORD(v3[1]) = -4864;
    v1 = sub_21D022B04();
    MEMORY[0x223D3A110](v1);

LABEL_5:
    MEMORY[0x223D3A110](41, 0xE100000000000000);
    return v3[0];
  }

  return 0x78616D677261;
}

uint64_t PrivateMLRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21D021A74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrivateMLRequest.id.setter(uint64_t a1)
{
  v3 = sub_21D021A74();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PrivateMLRequest.featureIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 20));

  return v1;
}

uint64_t PrivateMLRequest.featureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 24));

  return v1;
}

uint64_t PrivateMLRequest.modelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 28));

  return v1;
}

uint64_t PrivateMLRequest.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelAdaptorName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 32));

  return v1;
}

uint64_t PrivateMLRequest.modelAdaptorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.modelAdaptorVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 36));

  return v1;
}

uint64_t PrivateMLRequest.modelAdaptorVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.draftModelName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 40));

  return v1;
}

uint64_t PrivateMLRequest.draftModelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.draftSteps.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PrivateMLRequest.inferenceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 48));

  return v1;
}

uint64_t PrivateMLRequest.inferenceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.numberOfCompletions.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t PrivateMLRequest.topP.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t PrivateMLRequest.temperature.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t PrivateMLRequest.samplingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PrivateMLRequest.samplingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PrivateMLRequest(0);
  v5 = v1 + *(result + 64);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PrivateMLRequest.maxTokens.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t PrivateMLRequest.logProbs.setter(int a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t PrivateMLRequest.lengthPenalty.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t PrivateMLRequest.frequencyPenalty.setter(float a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t PrivateMLRequest.randomSeed.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t PrivateMLRequest.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 88);
  v4 = sub_21D021A74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateMLRequest.sessionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 88);
  v4 = sub_21D021A74();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateMLRequest.timeoutSecs.setter(double a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t PrivateMLRequest.stopSequences.getter()
{
  type metadata accessor for PrivateMLRequest(0);
}

uint64_t PrivateMLRequest.stopSequences.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 96);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.metaData.getter()
{
  v1 = v0 + *(type metadata accessor for PrivateMLRequest(0) + 100);
  v2 = *v1;
  sub_21CF9EDB8(*v1, *(v1 + 8));
  return v2;
}

uint64_t PrivateMLRequest.metaData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PrivateMLRequest(0) + 100);
  result = sub_21CF94FCC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t PrivateMLRequest.taskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 104);
  v4 = sub_21D022774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateMLRequest.taskPriority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 104);
  v4 = sub_21D022774();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateMLRequest.tokenizerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 108));

  return v1;
}

uint64_t PrivateMLRequest.tokenizerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.inputTokenSize.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t PrivateMLRequest.promptTemplateID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 116));

  return v1;
}

uint64_t PrivateMLRequest.promptTemplateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 116));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.promptTemplateVariableBindings.getter()
{
  type metadata accessor for PrivateMLRequest(0);
}

uint64_t PrivateMLRequest.promptTemplateVariableBindings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 120);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.locale.getter()
{
  type metadata accessor for PrivateMLRequest(0);
}

uint64_t PrivateMLRequest.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 124);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.richVariableBinding.getter()
{
  type metadata accessor for PrivateMLRequest(0);
}

uint64_t PrivateMLRequest.richVariableBinding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLRequest(0) + 128);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLRequest.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 132));

  return v1;
}

uint64_t PrivateMLRequest.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 132));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.originalBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLRequest(0) + 136));

  return v1;
}

uint64_t PrivateMLRequest.originalBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLRequest(0) + 136));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLRequest.tmlConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrivateMLRequest(0) + 140);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_21CFB5638(v4, v5, v6);
}

uint64_t PrivateMLRequest.tmlConstraints.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for PrivateMLRequest(0) + 140);
  result = sub_21CF9F674(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t PrivateMLRequest.realUserIdentifier.setter(uint64_t a1)
{
  result = type metadata accessor for PrivateMLRequest(0);
  v4 = v1 + *(result + 144);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void PrivateMLRequest.promptDebugInfo.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PrivateMLRequest(0) + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_21CFB5664(v4, v5, v6, v7, v8, v9, v10);
}

__n128 PrivateMLRequest.promptDebugInfo.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for PrivateMLRequest(0) + 148));
  sub_21CFB56D4(*v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  result = v7;
  *(v4 + 2) = v7;
  v4[6] = v3;
  return result;
}

uint64_t PrivateMLRequest.init(id:modelName:featureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a2;
  v48 = a3;
  v10 = sub_21D0224A4();
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateMLRequest(0);
  v15 = (a6 + v14[7]);
  *v15 = 49;
  v15[1] = 0xE100000000000000;
  v16 = (a6 + v14[8]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (a6 + v14[9]);
  *v17 = 49;
  v17[1] = 0xE100000000000000;
  v18 = (a6 + v14[10]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(a6 + v14[11]) = 0;
  v19 = (a6 + v14[12]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(a6 + v14[13]) = 1;
  *(a6 + v14[14]) = 0;
  *(a6 + v14[15]) = 1065353216;
  v20 = a6 + v14[16];
  *v20 = 0;
  *(v20 + 8) = 2;
  v21 = a6 + v14[17];
  *v21 = 0;
  *(v21 + 4) = 1;
  *(a6 + v14[18]) = 0;
  *(a6 + v14[19]) = 0;
  *(a6 + v14[20]) = 0;
  *(a6 + v14[21]) = 0;
  sub_21D021A64();
  *(a6 + v14[23]) = 0;
  *(a6 + v14[24]) = MEMORY[0x277D84FA0];
  *(a6 + v14[25]) = xmmword_21D024230;
  sub_21D022754();
  v22 = (a6 + v14[27]);
  *v22 = 0xD000000000000032;
  v22[1] = 0x800000021D02DA90;
  *(a6 + v14[28]) = 0;
  v23 = (a6 + v14[29]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = v14[30];
  v25 = MEMORY[0x277D84F90];
  *(a6 + v24) = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  *(a6 + v14[31]) = v25;
  v26 = v14[32];
  *(a6 + v26) = sub_21CF9DB64(v25);
  v27 = (a6 + v14[33]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a6 + v14[34]);
  *v28 = 0;
  v28[1] = 0;
  v29 = a6 + v14[35];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = -1;
  v30 = a6 + v14[36];
  *v30 = 0;
  *(v30 + 4) = 1;
  v31 = a6 + v14[37];
  v32 = sub_21D021A74();
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v49 = a1;
  v34(a6, a1, v32);
  v35 = (a6 + v14[6]);
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;
  if (!a4 && a5 == 0xE000000000000000 || (sub_21D022B24() & 1) != 0)
  {
    v37 = v45;
    v48 = a4;
    v38 = a5;
    sub_21D022494();
    v39 = sub_21D022484();
    v40 = sub_21D0228C4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21CF72000, v39, v40, "feature identifier is not provided", v41, 2u);
      MEMORY[0x223D3ADE0](v41, -1, -1);
    }

    (*(v33 + 8))(v49, v32);
    result = (*(v46 + 8))(v13, v37);
    a5 = v38;
    a4 = v48;
  }

  else
  {
    result = (*(v33 + 8))(v49, v32);
  }

  v43 = (a6 + v14[5]);
  *v43 = a4;
  v43[1] = a5;
  return result;
}

unint64_t PrivateMLRequest.PrivateMLRequestError.message.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v3 <= 1)
    {

      return v1;
    }

    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000003BLL, 0x800000021D02DD50);
    v8 = sub_21D022B04();
    MEMORY[0x223D3A110](v8);

    MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02DCD0);
LABEL_15:
    v9 = sub_21D022B04();
    MEMORY[0x223D3A110](v9);

    return 0;
  }

  v4 = v0[3];
  if (v3 == 3)
  {
    v1 = v0[3];

    return v1;
  }

  if (v3 == 4)
  {
    sub_21D0229A4();
    MEMORY[0x223D3A110](0xD00000000000002ELL, 0x800000021D02DC70);
    if (v1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x223D3A110](v5, v6);

    MEMORY[0x223D3A110](0xD000000000000025, 0x800000021D02DCA0);
    v7 = sub_21D022B04();
    MEMORY[0x223D3A110](v7);

    MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02DCD0);
    goto LABEL_15;
  }

  v11 = v0[2] | v0[1];
  v12 = v0[4] | v0[5];
  if (v2 == 160 && !(v11 | v1 | v4 | v12))
  {
    return 0xD000000000000013;
  }

  if (v2 == 160 && v1 == 1 && !(v11 | v4 | v12))
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000010;
}

uint64_t sub_21CFB3BD0(uint64_t a1)
{
  v2 = sub_21CFB5914();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CFB3C0C(uint64_t a1)
{
  v2 = sub_21CFB5914();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s15PrivateMLClient0A9MLRequestV0aC5ErrorO4codeSivg_0()
{
  v1 = v0[4];
  v2 = *(v0 + 48);
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      if (v2)
      {
        return 6;
      }

      else
      {
        return v0[5];
      }
    }

    else if (v3 == 4)
    {
      return 7;
    }

    else
    {
      v5 = *v0;
      v6 = v0[3];
      v7 = v0[5] | v1;
      v8 = v0[2] | v0[1];
      if (v2 != 160 || v7 | v5 | v6 | v8)
      {
        if (v7 | v6 | v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = v5 == 1;
        }

        if (v9 && v2 == 160)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      v1 = 2;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_21CFB3D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = v3 >> 5;
  v5 = MEMORY[0x277CEDEF0];
  if (v3 >> 5 > 2)
  {
    if (v4 != 3)
    {
      v5 = MEMORY[0x277CEDED0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CEDEB8];
    if (v4 != 1)
    {
      v6 = MEMORY[0x277CEDED0];
    }

    if (v4)
    {
      v5 = v6;
    }
  }

  v7 = *v5;
  v8 = sub_21D022064();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

uint64_t PrivateMLRequest.PrivateMLRequestError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = v3 >> 5;
  v5 = MEMORY[0x277CEDEF0];
  if (v3 >> 5 > 2)
  {
    if (v4 != 3)
    {
      v5 = MEMORY[0x277CEDED0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CEDEB8];
    if (v4 != 1)
    {
      v6 = MEMORY[0x277CEDED0];
    }

    if (v4)
    {
      v5 = v6;
    }
  }

  v7 = *v5;
  v8 = sub_21D022064();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

unint64_t sub_21CFB3F64()
{
  v1 = *(v0 + 48) >> 5;
  if (v1 == 3)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
LABEL_5:
    MEMORY[0x223D3A110](v3, v2);
    return 0xD000000000000016;
  }

  return 0xD000000000000015;
}

unint64_t PrivateMLRequest.PrivateMLRequestError.domain.getter()
{
  v1 = *(v0 + 48) >> 5;
  if (v1 == 3)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
LABEL_5:
    MEMORY[0x223D3A110](v3, v2);
    return 0xD000000000000016;
  }

  return 0xD000000000000015;
}

uint64_t sub_21CFB40BC()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2 != 4)
  {
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

uint64_t PrivateMLRequest.PrivateMLRequestError.requestFeedback.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 == 3)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2 != 4)
  {
    LOBYTE(v1) = v3;
  }

  return v1 & 1;
}

uint64_t sub_21CFB4104(uint64_t a1)
{
  v2 = sub_21CFB58BC();

  return MEMORY[0x2821401D0](a1, v2);
}

void sub_21CFB4140()
{
  sub_21CFB58BC();

  JUMPOUT(0x223D39B70);
}

void sub_21CFB417C()
{
  sub_21CFB58BC();

  JUMPOUT(0x223D39B90);
}

uint64_t PrivateMLRequest.description.getter()
{
  v1 = v0;
  sub_21D0229A4();
  MEMORY[0x223D3A110](540697705, 0xE400000000000000);
  sub_21D021A74();
  sub_21CFB5744(&qword_28121E098, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_21D022B04();
  MEMORY[0x223D3A110](v2);

  MEMORY[0x223D3A110](0x614E6C65646F6D20, 0xEC000000203A656DLL);
  v3 = type metadata accessor for PrivateMLRequest(0);
  MEMORY[0x223D3A110](*(v1 + v3[6]), *(v1 + v3[6] + 8));
  MEMORY[0x223D3A110](0x65566C65646F6D20, 0xEF203A6E6F697372);
  MEMORY[0x223D3A110](*(v1 + v3[7]), *(v1 + v3[7] + 8));
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DDB0);
  MEMORY[0x223D3A110](*(v1 + v3[8]), *(v1 + v3[8] + 8));
  MEMORY[0x223D3A110](0xD000000000000016, 0x800000021D02DDD0);
  MEMORY[0x223D3A110](*(v1 + v3[9]), *(v1 + v3[9] + 8));
  MEMORY[0x223D3A110](32, 0xE100000000000000);
  MEMORY[0x223D3A110](*(v1 + v3[10]), *(v1 + v3[10] + 8));
  MEMORY[0x223D3A110](0x7453746661726420, 0xED0000203A737065);
  v4 = sub_21D022B04();
  MEMORY[0x223D3A110](v4);

  MEMORY[0x223D3A110](0x6E657265666E6920, 0xEE00203A44496563);
  MEMORY[0x223D3A110](*(v1 + v3[12]), *(v1 + v3[12] + 8));
  MEMORY[0x223D3A110](0xD000000000000016, 0x800000021D02DDF0);
  v5 = sub_21D022B04();
  MEMORY[0x223D3A110](v5);

  MEMORY[0x223D3A110](0x203A50706F7420, 0xE700000000000000);
  sub_21D022864();
  MEMORY[0x223D3A110](0x617265706D657420, 0xEE00203A65727574);
  sub_21D022864();
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DE10);
  v6 = PrivateMLRequest.SamplingStrategy.description.getter();
  MEMORY[0x223D3A110](v6);

  MEMORY[0x223D3A110](0x656B6F5478616D20, 0xEC000000203A736ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
  v7 = sub_21D0225D4();
  MEMORY[0x223D3A110](v7);

  MEMORY[0x223D3A110](0x626F7250676F6C20, 0xEB00000000203A73);
  v8 = sub_21D022B04();
  MEMORY[0x223D3A110](v8);

  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE30);
  sub_21D022864();
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DE50);
  sub_21D022864();
  MEMORY[0x223D3A110](0x536D6F646E617220, 0xED0000203A646565);
  v9 = sub_21D022B04();
  MEMORY[0x223D3A110](v9);

  MEMORY[0x223D3A110](0x6E6F697373657320, 0xEC000000203A4449);
  v10 = sub_21D022B04();
  MEMORY[0x223D3A110](v10);

  MEMORY[0x223D3A110](0x74756F656D697420, 0xEE00203A73636553);
  sub_21D022854();
  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE70);
  v11 = sub_21D022874();
  MEMORY[0x223D3A110](v11);

  MEMORY[0x223D3A110](0x6972506B73617420, 0xEF203A797469726FLL);
  sub_21D022774();
  sub_21CFB5744(qword_28121B438, MEMORY[0x277D85720], MEMORY[0x277D85730]);
  v12 = sub_21D022B04();
  MEMORY[0x223D3A110](v12);

  MEMORY[0x223D3A110](0xD000000000000010, 0x800000021D02DE90);
  MEMORY[0x223D3A110](*(v1 + v3[27]), *(v1 + v3[27] + 8));
  MEMORY[0x223D3A110](0xD000000000000013, 0x800000021D02DEB0);
  MEMORY[0x223D3A110](*(v1 + v3[29]), *(v1 + v3[29] + 8));
  MEMORY[0x223D3A110](0xD000000000000021, 0x800000021D02DED0);
  v13 = sub_21D022534();
  MEMORY[0x223D3A110](v13);

  return 0;
}

void *sub_21CFB493C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456C8, &qword_21D0252A8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570) - 8);
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

void *sub_21CFB4B2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456B8, &unk_21D025290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45460, &unk_21D023D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CFB4D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
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

char *sub_21CFB4E0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456C0, &qword_21D0252A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CFB4F40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21CFB513C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CFB519C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21CFB5218(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_21D023DD0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t sub_21CFB52AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_21CFB532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_21CFB537C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CFB53E4()
{
  result = qword_28121B400;
  if (!qword_28121B400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45620, &qword_21D024720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B400);
  }

  return result;
}

unint64_t sub_21CFB5448()
{
  result = qword_28121DC08;
  if (!qword_28121DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC08);
  }

  return result;
}

unint64_t sub_21CFB549C()
{
  result = qword_28121DC18;
  if (!qword_28121DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC18);
  }

  return result;
}

uint64_t sub_21CFB54F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45338, &qword_21D0238B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB555C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45630, &unk_21D024730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB55CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CFB5638(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21CFB564C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21CFB564C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_21CFB5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

void sub_21CFB56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

uint64_t sub_21CFB5744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CFB5790()
{
  result = qword_27CE45668;
  if (!qword_27CE45668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45668);
  }

  return result;
}

unint64_t sub_21CFB57E8()
{
  result = qword_27CE45670;
  if (!qword_27CE45670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45670);
  }

  return result;
}

unint64_t sub_21CFB5840()
{
  result = qword_27CE45678;
  if (!qword_27CE45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45678);
  }

  return result;
}

unint64_t sub_21CFB5894(uint64_t a1)
{
  result = sub_21CFB58BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21CFB58BC()
{
  result = qword_27CE45680;
  if (!qword_27CE45680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45680);
  }

  return result;
}

unint64_t sub_21CFB5914()
{
  result = qword_27CE45688;
  if (!qword_27CE45688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45688);
  }

  return result;
}

unint64_t sub_21CFB596C()
{
  result = qword_27CE45690;
  if (!qword_27CE45690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45690);
  }

  return result;
}

unint64_t sub_21CFB59C4()
{
  result = qword_27CE45698;
  if (!qword_27CE45698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45698);
  }

  return result;
}

void sub_21CFB5A40(uint64_t a1)
{
  sub_21D021A74();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D837D0];
    sub_21CFB5DD0(319, &qword_28121B0F0, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_21CFB5D20();
      if (v4 <= 0x3F)
      {
        sub_21CFB5DD0(319, &qword_28121E0A0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          sub_21D022774();
          if (v6 <= 0x3F)
          {
            sub_21CFB5D78(319, &qword_28121B430, v2);
            if (v7 <= 0x3F)
            {
              sub_21CFB5DD0(319, &qword_28121B3D8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v8 <= 0x3F)
              {
                sub_21CFB5D78(319, &qword_28121B418, &type metadata for PrivateMLRequest.RichVariable);
                if (v9 <= 0x3F)
                {
                  sub_21CFB5DD0(319, &qword_28121B408, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                  if (v10 <= 0x3F)
                  {
                    sub_21CFB5DD0(319, qword_28121D878, &type metadata for PrivateMLClientModelOptions.TMLConstraints, MEMORY[0x277D83D88]);
                    if (v11 <= 0x3F)
                    {
                      sub_21CFB5DD0(319, &qword_28121DC00, &type metadata for PrivateMLRequest.PromptDebugInfo, MEMORY[0x277D83D88]);
                      if (v12 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_21CFB5D20()
{
  if (!qword_28121B3A0)
  {
    v0 = sub_21D022884();
    if (!v1)
    {
      atomic_store(v0, &qword_28121B3A0);
    }
  }
}

void sub_21CFB5D78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21D022544();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21CFB5DD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CFB5E48(uint64_t a1)
{
  sub_21CFB5ECC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrivateMLRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CFB5ECC(uint64_t a1)
{
  if (!qword_27CE45388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45268, &qword_21D023D50);
    v1 = sub_21D022844();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE45388);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.Response.CompletionReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.Response.CompletionReason(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21CFB60E0(uint64_t a1)
{
  sub_21CFB6168(319);
  if (v1 <= 0x3F)
  {
    sub_21CFB620C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CFB6168(uint64_t a1)
{
  if (!qword_28121DBF8)
  {
    type metadata accessor for PrivateMLRequest(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45610, &unk_21D024710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE456A0, &qword_21D024D30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28121DBF8);
    }
  }
}

ValueMetadata *sub_21CFB620C()
{
  result = qword_28121DBF0;
  if (!qword_28121DBF0)
  {
    result = &type metadata for PrivateMLRequest.Response.CompletionReason;
    atomic_store(&type metadata for PrivateMLRequest.Response.CompletionReason, &qword_28121DBF0);
  }

  return result;
}

void sub_21CFB6264(uint64_t a1)
{
  sub_21D0224A4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrivateMLRequest(319);
    if (v2 <= 0x3F)
    {
      sub_21CFB6318(319);
      if (v3 <= 0x3F)
      {
        sub_21CFB637C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CFB6318(uint64_t a1)
{
  if (!qword_27CE456A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE455C8, &unk_21D0246A0);
    v1 = sub_21D022924();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE456A8);
    }
  }
}

unint64_t sub_21CFB637C()
{
  result = qword_28121D820;
  if (!qword_28121D820)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28121D820);
  }

  return result;
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

uint64_t sub_21CFB63FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CFB6444(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21CFB64A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21CFB64E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CFB6540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB6590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.MediaMetadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.MediaMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CFB6814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 37))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 36) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 36) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB6868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 36) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_21CFB68CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x7F;
  return result;
}

uint64_t sub_21CFB68E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = a1 + 32;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 39);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

uint64_t get_enum_tag_for_layout_string_15PrivateMLClient0A9MLRequestV0aC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21CFB6964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 49))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 48) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21CFB69B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_21CFB6A34(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 48) = *(result + 48) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -96;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLRequest.PromptDebugInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateMLRequest.PromptDebugInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CFB6BD4()
{
  result = qword_27CE456B0;
  if (!qword_27CE456B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE456B0);
  }

  return result;
}

unint64_t sub_21CFB6C2C()
{
  result = qword_28121DC20[0];
  if (!qword_28121DC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28121DC20);
  }

  return result;
}

unint64_t sub_21CFB6C84()
{
  result = qword_28121DC10;
  if (!qword_28121DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121DC10);
  }

  return result;
}

uint64_t sub_21CFB6CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250746E65696C63 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021D02DF20 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021D02DF40 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021D02DF60 == a2 || (sub_21D022B24() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21D022B24();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21CFB6ED8()
{
  v0 = sub_21D0224A4();
  __swift_allocate_value_buffer(v0, qword_27CE456F8);
  __swift_project_value_buffer(v0, qword_27CE456F8);
  return sub_21D022494();
}

uint64_t sub_21CFB6F58(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = qword_28121E0B8;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v71 = xmmword_28121B1B0;
  v72[0] = *&qword_28121B1C0;
  *(v72 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v71, &v69, &qword_27CE45600, &qword_21D0246F8);
  v7 = sub_21D014BC8();
  v9 = v8;
  sub_21CF7F200(&v71, &qword_27CE45600, &qword_21D0246F8);
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69 = a3;
      sub_21CFA3AC4(v7, v9, 0x6C65646F6DLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      a3 = v69;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v12 = sub_21D0224A4();
      __swift_project_value_buffer(v12, qword_27CE456F8);

      v13 = sub_21D022484();
      v14 = sub_21D0228D4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v69 = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_21CF9703C(a1, a2, &v69);
        *(v15 + 12) = 2080;
        v17 = sub_21CF9703C(v7, v9, &v69);

        *(v15 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v13, v14, "%s Overriding workload parameters.model=[%s]", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v16, -1, -1);
        MEMORY[0x223D3ADE0](v15, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v69 = xmmword_28121B120;
  v70[0] = *&qword_28121B130;
  *(v70 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v69, &v67, &qword_27CE45600, &qword_21D0246F8);
  v18 = sub_21D014BC8();
  v20 = v19;
  sub_21CF7F200(&v69, &qword_27CE45600, &qword_21D0246F8);
  if (v20)
  {
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v67 = a3;
      sub_21CFA3AC4(v18, v20, 0x72657470616461, 0xE700000000000000, v22);
      a3 = v67;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v23 = sub_21D0224A4();
      __swift_project_value_buffer(v23, qword_27CE456F8);

      v24 = sub_21D022484();
      v25 = sub_21D0228D4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v67 = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_21CF9703C(a1, a2, &v67);
        *(v26 + 12) = 2080;
        v28 = sub_21CF9703C(v18, v20, &v67);

        *(v26 + 14) = v28;
        _os_log_impl(&dword_21CF72000, v24, v25, "%s Overriding workload parameters.adapter=[%s]", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v27, -1, -1);
        MEMORY[0x223D3ADE0](v26, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v67 = xmmword_28121B150;
  v68[0] = *&qword_28121B160;
  *(v68 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v67, &v63, &qword_27CE45600, &qword_21D0246F8);
  v29 = sub_21D014BC8();
  v31 = v30;
  sub_21CF7F200(&v67, &qword_27CE45600, &qword_21D0246F8);
  if (v31)
  {
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = a3;
      sub_21CFA3AC4(v29, v31, 0x636E657265666E69, 0xEC00000064692D65, v33);
      a3 = v63;
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v34 = sub_21D0224A4();
      __swift_project_value_buffer(v34, qword_27CE456F8);

      v35 = sub_21D022484();
      v36 = sub_21D0228D4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v63 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_21CF9703C(a1, a2, &v63);
        *(v37 + 12) = 2080;
        v39 = sub_21CF9703C(v29, v31, &v63);

        *(v37 + 14) = v39;
        _os_log_impl(&dword_21CF72000, v35, v36, "%s Overriding workload parameters.inference-id=[%s]", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v38, -1, -1);
        MEMORY[0x223D3ADE0](v37, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v65[0] = xmmword_28121B2E0;
  v65[1] = *&qword_28121B2F0;
  v66 = byte_28121B300;
  sub_21CF7F198(v65, &v63, &qword_27CE452D0, &unk_21D023690);
  v40 = sub_21D015100();
  sub_21CF7F200(v65, &qword_27CE452D0, &unk_21D023690);
  if (v40)
  {
    if (*(v40 + 16))
    {

      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_21D0224A4();
      __swift_project_value_buffer(v41, qword_27CE456F8);

      v42 = sub_21D022484();
      v43 = sub_21D0228D4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v63 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_21CF9703C(a1, a2, &v63);
        _os_log_impl(&dword_21CF72000, v42, v43, "%s Overriding workload parameters with user default supplied ones", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x223D3ADE0](v45, -1, -1);
        MEMORY[0x223D3ADE0](v44, -1, -1);
      }

      a3 = v40;
    }

    else
    {
    }
  }

  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v63 = xmmword_28121B1E8;
  v64[0] = *&qword_28121B1F8;
  *(v64 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v63, v62, &qword_27CE45600, &qword_21D0246F8);
  v46 = sub_21D014BC8();
  v48 = v47;
  sub_21CF7F200(&v63, &qword_27CE45600, &qword_21D0246F8);
  if (v48)
  {
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      swift_bridgeObjectRetain_n();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = a3;
      sub_21CFA3AC4(v46, v48, 0x6C65646F6DLL, 0xE500000000000000, v50);
      v51 = v62[0];
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v51;
      sub_21CFA3AC4(v46, v48, 0x72657470616461, 0xE700000000000000, v52);
      v53 = v62[0];
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v53;
      sub_21CFA3AC4(v46, v48, 0x636E657265666E69, 0xEC00000064692D65, v54);
      a3 = v62[0];
      if (qword_27CE44ED0 != -1)
      {
        swift_once();
      }

      v55 = sub_21D0224A4();
      __swift_project_value_buffer(v55, qword_27CE456F8);

      v56 = sub_21D022484();
      v57 = sub_21D0228D4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62[0] = v59;
        *v58 = 136315906;
        *(v58 + 4) = sub_21CF9703C(a1, a2, v62);
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_21CF9703C(v46, v48, v62);
        *(v58 + 22) = 2080;
        *(v58 + 24) = sub_21CF9703C(v46, v48, v62);
        *(v58 + 32) = 2080;
        v60 = sub_21CF9703C(v46, v48, v62);

        *(v58 + 34) = v60;
        _os_log_impl(&dword_21CF72000, v56, v57, "%s Overriding workload parameters.model=[%s] adapter=[%s] inference-id=[%s]", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v59, -1, -1);
        MEMORY[0x223D3ADE0](v58, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return a3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_21CFB7C70(unsigned __int8 a1)
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7D84(uint64_t a1, unsigned __int8 a2)
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7E8C(uint64_t a1, unsigned __int8 a2)
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB7F9C(uint64_t a1, unsigned __int8 a2)
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFB80AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45710, &qword_21D0253C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21D021914();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D021904();
  sub_21D0218F4();
  MEMORY[0x223D393B0](7824750, 0xE300000000000000);
  sub_21CFB82FC();
  sub_21D0218C4();
  sub_21D0218D4();
  v9 = sub_21D0219D4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_21CF7F200(v4, &qword_27CE45710, &qword_21D0253C0);
    sub_21CFBD36C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_21CFB82FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45720, &qword_21D0253C8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_21D021894();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_21CF7F200(v24, &qword_27CE45720, &qword_21D0253C8);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_21D021884();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_21CFB4F18(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_21CFB4F18((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_21CFBAF30();
    sub_21CFBCBCC(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_21CFBC5C4(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_21CF7F200(v22, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_21CFB4F18(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_21CFB4F18((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_21CFBC7B8(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_21CF7F200(v19, &qword_27CE45720, &qword_21D0253C8);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_21CFB4F18(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_21CFB4F18((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_21D021884();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_21CFB4F18(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_21CFB4F18((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21CF7F200(v140, &qword_27CE45720, &qword_21D0253C8);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_21CF7F200(v146, &qword_27CE45720, &qword_21D0253C8);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_21D021884();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_21CFB4F18(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_21CFB4F18((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_21CFBD214(v163);
  if (v164)
  {
    v165 = v303;
    sub_21D021884();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_21CFB4F18(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_21CFB4F18((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_21CFBC910(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_21CF7F200(v172, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_21CFB4F18(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_21CFB4F18((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_21CFBD000(v178);
  if (v179)
  {
    v180 = v304;
    sub_21D021884();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_21CFB4F18(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_21CFB4F18((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_21CFBD000(v186);
  if (v187)
  {
    v188 = v305;
    sub_21D021884();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_21CFB4F18(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_21CFB4F18((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_21CFBCED0(v194);
  if (v195)
  {
    v196 = v306;
    sub_21D021884();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_21CFB4F18(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_21CFB4F18((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_21D021884();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_21CF7F200(v202, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_21CFB4F18(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_21CFB4F18((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_21CFBCED0(v209);
  if (v210)
  {
    v211 = v307;
    sub_21D021884();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_21CFB4F18(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_21CFB4F18((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_21CFBCCF8(v219);
  if (v220)
  {
    v221 = v308;
    sub_21D021884();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_21CFB4F18(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_21CFB4F18((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_21CFBCED0(v229);
  if (v230)
  {
    v231 = v309;
    sub_21D021884();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_21CFB4F18(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_21CFB4F18((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_21CFBBA48(v239);
  if (v240)
  {
    v241 = v310;
    sub_21D021884();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_21CFB4F18(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_21CFB4F18((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_21D021884();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_21CF7F200(v249, &qword_27CE45720, &qword_21D0253C8);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_21CFB4F18(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_21CFB4F18((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_21CFBC198(v258);
  if (v259)
  {
    v260 = v311;
    sub_21D021884();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_21CFB4F18(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_21CFB4F18((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_21CFBCED0(v268);
  if (v269)
  {
    v270 = v312;
    sub_21D021884();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_21CFB4F18(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_21CFB4F18((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_21D021884();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_21CF7F200(v278, &qword_27CE45720, &qword_21D0253C8);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_21CFB4F18(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_21CFB4F18((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_21D021884();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_21CF7F200(v287, &qword_27CE45720, &qword_21D0253C8);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_21CFB4F18(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_21CFB4F18((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}