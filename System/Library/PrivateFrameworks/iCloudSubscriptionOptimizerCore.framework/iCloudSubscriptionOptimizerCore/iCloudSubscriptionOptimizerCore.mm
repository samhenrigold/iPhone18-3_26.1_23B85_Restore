uint64_t sub_275A437BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275A43828(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for FetchOffersContext.Action(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FetchOffersContext.Action(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_275A438E8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275A43904(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_275A43924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_275A439F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_275A43AAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275A43AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_275A43BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_275A43C70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_275A43DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_275AE52A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_275A43F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275A44014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_275A440F0@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t *sub_275A4410C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_275A44230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_275A442F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_275A443C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275A44480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275A44538(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275AE52A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_275A445E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE52A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275A4468C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275AE55A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275A44738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_275AE55A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275A447DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24B10, &qword_275AE8F20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_275A4491C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24B10, &qword_275AE8F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_275A44A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24B10, &qword_275AE8F20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 52);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_275A44B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24B10, &qword_275AE8F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_275A44CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_275A44D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_275A44E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 36);

  return v15(v16, a2, v14);
}

uint64_t sub_275A44FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_275AE52A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 36);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_275A4514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_275A45294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_275A453C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_275A454F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_275AE52A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24C30, &qword_275AE9508);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_275A45618(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275A45684(uint64_t a1, uint64_t a2)
{
  v4 = sub_275AE52A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_275A456F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_275AE52A4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_275A4581C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24CF8, &qword_275AE9AC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_275AE52A4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_275A45954()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275A45994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_275A45A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_275A45C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_275A45D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_275AE52A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_275A45EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_275A45FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_275AE52A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_275A46144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_275A4621C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

uint64_t sub_275A46384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275AE52A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_275A464C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_275AE52A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24DA0, &qword_275AEA460);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_275A46738()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_275A46770@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_275A46788@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t ISOPBSubscriptiondPetMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v378[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v378[0] & 0x7F) << v6;
      if ((v378[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 508) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v378[0] & 0x7F) << v14;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_638:
            v368 = 336;
            goto LABEL_763;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_638;
      case 2u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 508) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v378[0] & 0x7F) << v156;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v158;
        }

LABEL_642:
        v369 = 400;
        goto LABEL_758;
      case 3u:
        v81 = PBReaderReadString();
        v82 = 448;
        goto LABEL_388;
      case 4u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 508) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v378[0] & 0x7F) << v200;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v12 = v201++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_666;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v202;
        }

LABEL_666:
        v368 = 144;
        goto LABEL_763;
      case 5u:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 508) |= 0x400000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v378[0] & 0x7F) << v212;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v12 = v213++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_670;
          }
        }

        v135 = (v214 != 0) & ~[a2 hasError];
LABEL_670:
        v370 = 505;
        goto LABEL_737;
      case 6u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 508) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v378[0] & 0x7F) << v129;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_622;
          }
        }

        v135 = (v131 != 0) & ~[a2 hasError];
LABEL_622:
        v370 = 501;
        goto LABEL_737;
      case 7u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 508) |= 0x100000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v378[0] & 0x7F) << v162;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_644;
          }
        }

        v135 = (v164 != 0) & ~[a2 hasError];
LABEL_644:
        v370 = 503;
        goto LABEL_737;
      case 8u:
        *(a1 + 508) |= 0x200000000uLL;
        v378[0] = 0;
        v168 = [a2 position] + 8;
        if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 8, v169 <= objc_msgSend(a2, "length")))
        {
          v375 = [a2 data];
          [v375 getBytes:v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v372 = v378[0];
        v373 = 272;
        goto LABEL_775;
      case 9u:
        v236 = 0;
        v237 = 0;
        v238 = 0;
        *(a1 + 508) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v239 = [a2 position] + 1;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
          {
            v241 = [a2 data];
            [v241 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v238 |= (v378[0] & 0x7F) << v236;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v236 += 7;
          v12 = v237++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_686;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v238;
        }

LABEL_686:
        v368 = 104;
        goto LABEL_763;
      case 0xAu:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 508) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v378[0] & 0x7F) << v224;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v226;
        }

LABEL_678:
        v368 = 112;
        goto LABEL_763;
      case 0xBu:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 508) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v378[0] & 0x7F) << v96;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_604;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v98;
        }

LABEL_604:
        v368 = 80;
        goto LABEL_763;
      case 0xCu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 508) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v378[0] & 0x7F) << v136;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_626;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v138;
        }

LABEL_626:
        v368 = 40;
        goto LABEL_763;
      case 0xDu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 508) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v378[0] & 0x7F) << v111;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_612;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v113;
        }

LABEL_612:
        v368 = 304;
        goto LABEL_763;
      case 0xEu:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 508) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v378[0] & 0x7F) << v83;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_596;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v85;
        }

LABEL_596:
        v368 = 88;
        goto LABEL_763;
      case 0xFu:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 508) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v378[0] & 0x7F) << v176;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_652;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v178;
        }

LABEL_652:
        v368 = 344;
        goto LABEL_763;
      case 0x10u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 508) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v378[0] & 0x7F) << v182;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v12 = v183++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_656;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v184;
        }

LABEL_656:
        v368 = 368;
        goto LABEL_763;
      case 0x11u:
        *(a1 + 508) |= 0x100000000uLL;
        v378[0] = 0;
        v244 = [a2 position] + 8;
        if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 8, v245 <= objc_msgSend(a2, "length")))
        {
          v377 = [a2 data];
          [v377 getBytes:v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v372 = v378[0];
        v373 = 264;
        goto LABEL_775;
      case 0x12u:
        *(a1 + 508) |= 0x10000000uLL;
        v378[0] = 0;
        v242 = [a2 position] + 8;
        if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 8, v243 <= objc_msgSend(a2, "length")))
        {
          v376 = [a2 data];
          [v376 getBytes:v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v372 = v378[0];
        v373 = 232;
        goto LABEL_775;
      case 0x13u:
        v81 = PBReaderReadString();
        v82 = 456;
        goto LABEL_388;
      case 0x14u:
        v81 = PBReaderReadString();
        v82 = 464;
        goto LABEL_388;
      case 0x15u:
        v81 = PBReaderReadString();
        v82 = 472;
        goto LABEL_388;
      case 0x16u:
        v81 = PBReaderReadString();
        v82 = 408;
        goto LABEL_388;
      case 0x17u:
        v81 = PBReaderReadString();
        v82 = 416;
        goto LABEL_388;
      case 0x18u:
        v81 = PBReaderReadString();
        v82 = 424;
        goto LABEL_388;
      case 0x19u:
        *(a1 + 508) |= 0x1000000uLL;
        v378[0] = 0;
        v148 = [a2 position] + 8;
        if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 8, v149 <= objc_msgSend(a2, "length")))
        {
          v374 = [a2 data];
          [v374 getBytes:v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v372 = v378[0];
        v373 = 200;
        goto LABEL_775;
      case 0x1Au:
        v89 = objc_alloc_init(ISOPBSubscriptionLabelMessage);
        objc_storeStrong((a1 + 440), v89);
        v378[0] = 0;
        v378[1] = 0;
        if (PBReaderPlaceMark() && (ISOPBSubscriptionLabelMessageReadFrom(v89, a2) & 1) != 0)
        {
          PBReaderRecallMark();

LABEL_764:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x1Bu:
        v289 = 0;
        v290 = 0;
        v291 = 0;
        *(a1 + 508) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v292 = [a2 position] + 1;
          if (v292 >= [a2 position] && (v293 = objc_msgSend(a2, "position") + 1, v293 <= objc_msgSend(a2, "length")))
          {
            v294 = [a2 data];
            [v294 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v291 |= (v378[0] & 0x7F) << v289;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v289 += 7;
          v12 = v290++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_718;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v291;
        }

LABEL_718:
        v368 = 72;
        goto LABEL_763;
      case 0x1Cu:
        v283 = 0;
        v284 = 0;
        v285 = 0;
        *(a1 + 508) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v286 = [a2 position] + 1;
          if (v286 >= [a2 position] && (v287 = objc_msgSend(a2, "position") + 1, v287 <= objc_msgSend(a2, "length")))
          {
            v288 = [a2 data];
            [v288 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v285 |= (v378[0] & 0x7F) << v283;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v283 += 7;
          v12 = v284++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_714;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v285;
        }

LABEL_714:
        v368 = 376;
        goto LABEL_763;
      case 0x1Du:
        *(a1 + 508) |= 0x20000000uLL;
        v378[0] = 0;
        v102 = [a2 position] + 8;
        if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 8, v103 <= objc_msgSend(a2, "length")))
        {
          v371 = [a2 data];
          [v371 getBytes:v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v372 = v378[0];
        v373 = 240;
LABEL_775:
        *(a1 + v373) = v372;
        goto LABEL_764;
      case 0x1Eu:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 508) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v378[0] & 0x7F) << v117;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v12 = v118++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_616;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v119;
        }

LABEL_616:
        v369 = 492;
        goto LABEL_758;
      case 0x1Fu:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 508) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v378[0] & 0x7F) << v194;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v12 = v195++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_662;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v196;
        }

LABEL_662:
        v368 = 64;
        goto LABEL_763;
      case 0x20u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 508) |= 8uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v378[0] & 0x7F) << v123;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v12 = v124++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_620;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v125;
        }

LABEL_620:
        v368 = 32;
        goto LABEL_763;
      case 0x21u:
        v313 = 0;
        v314 = 0;
        v315 = 0;
        *(a1 + 508) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v316 = [a2 position] + 1;
          if (v316 >= [a2 position] && (v317 = objc_msgSend(a2, "position") + 1, v317 <= objc_msgSend(a2, "length")))
          {
            v318 = [a2 data];
            [v318 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v315 |= (v378[0] & 0x7F) << v313;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v313 += 7;
          v12 = v314++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_732;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v315;
        }

LABEL_732:
        v368 = 56;
        goto LABEL_763;
      case 0x22u:
        v81 = PBReaderReadString();
        v82 = 480;
        goto LABEL_388;
      case 0x23u:
        v81 = PBReaderReadString();
        v82 = 392;
LABEL_388:
        v258 = *(a1 + v82);
        *(a1 + v82) = v81;

        goto LABEL_764;
      case 0x24u:
        v307 = 0;
        v308 = 0;
        v309 = 0;
        *(a1 + 508) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v310 = [a2 position] + 1;
          if (v310 >= [a2 position] && (v311 = objc_msgSend(a2, "position") + 1, v311 <= objc_msgSend(a2, "length")))
          {
            v312 = [a2 data];
            [v312 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v309 |= (v378[0] & 0x7F) << v307;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v307 += 7;
          v12 = v308++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_728;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v309;
        }

LABEL_728:
        v369 = 384;
        goto LABEL_758;
      case 0x25u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 508) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v378[0] & 0x7F) << v69;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_588;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v71;
        }

LABEL_588:
        v368 = 280;
        goto LABEL_763;
      case 0x26u:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 508) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v378[0] & 0x7F) << v218;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_674;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v220;
        }

LABEL_674:
        v368 = 288;
        goto LABEL_763;
      case 0x27u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 508) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v378[0] & 0x7F) << v63;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_584;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v65;
        }

LABEL_584:
        v368 = 296;
        goto LABEL_763;
      case 0x28u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 508) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v378[0] & 0x7F) << v57;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_580;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v59;
        }

LABEL_580:
        v368 = 224;
        goto LABEL_763;
      case 0x29u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 508) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v378[0] & 0x7F) << v104;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_608;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v106;
        }

LABEL_608:
        v369 = 432;
        goto LABEL_758;
      case 0x2Au:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 508) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v378[0] & 0x7F) << v150;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_634;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v152;
        }

LABEL_634:
        v368 = 184;
        goto LABEL_763;
      case 0x2Bu:
        v252 = 0;
        v253 = 0;
        v254 = 0;
        *(a1 + 508) |= 4uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v254 |= (v378[0] & 0x7F) << v252;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v252 += 7;
          v12 = v253++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_694;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v254;
        }

LABEL_694:
        v368 = 24;
        goto LABEL_763;
      case 0x2Cu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 508) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v378[0] & 0x7F) << v27;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_560;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_560:
        v368 = 48;
        goto LABEL_763;
      case 0x2Du:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 508) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v378[0] & 0x7F) << v75;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_592;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v77;
        }

LABEL_592:
        v368 = 328;
        goto LABEL_763;
      case 0x2Eu:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 508) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v378[0] & 0x7F) << v170;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_648;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v172;
        }

LABEL_648:
        v368 = 96;
        goto LABEL_763;
      case 0x2Fu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 508) |= 0x800000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v378[0] & 0x7F) << v206;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v12 = v207++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_668;
          }
        }

        v135 = (v208 != 0) & ~[a2 hasError];
LABEL_668:
        v370 = 506;
        goto LABEL_737;
      case 0x30u:
        v319 = 0;
        v320 = 0;
        v321 = 0;
        *(a1 + 508) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v322 = [a2 position] + 1;
          if (v322 >= [a2 position] && (v323 = objc_msgSend(a2, "position") + 1, v323 <= objc_msgSend(a2, "length")))
          {
            v324 = [a2 data];
            [v324 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v321 |= (v378[0] & 0x7F) << v319;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v319 += 7;
          v12 = v320++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_734;
          }
        }

        v135 = (v321 != 0) & ~[a2 hasError];
LABEL_734:
        v370 = 502;
        goto LABEL_737;
      case 0x31u:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 508) |= 0x200000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (v378[0] & 0x7F) << v188;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v12 = v189++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_658;
          }
        }

        v135 = (v190 != 0) & ~[a2 hasError];
LABEL_658:
        v370 = 504;
        goto LABEL_737;
      case 0x32u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 508) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v378[0] & 0x7F) << v51;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_576;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v53;
        }

LABEL_576:
        v368 = 208;
        goto LABEL_763;
      case 0x33u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 508) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v378[0] & 0x7F) << v33;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_564;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_564:
        v368 = 216;
        goto LABEL_763;
      case 0x34u:
        v343 = 0;
        v344 = 0;
        v345 = 0;
        *(a1 + 508) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v346 = [a2 position] + 1;
          if (v346 >= [a2 position] && (v347 = objc_msgSend(a2, "position") + 1, v347 <= objc_msgSend(a2, "length")))
          {
            v348 = [a2 data];
            [v348 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v345 |= (v378[0] & 0x7F) << v343;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v343 += 7;
          v12 = v344++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_749;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v345;
        }

LABEL_749:
        v368 = 152;
        goto LABEL_763;
      case 0x35u:
        v301 = 0;
        v302 = 0;
        v303 = 0;
        *(a1 + 508) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v304 = [a2 position] + 1;
          if (v304 >= [a2 position] && (v305 = objc_msgSend(a2, "position") + 1, v305 <= objc_msgSend(a2, "length")))
          {
            v306 = [a2 data];
            [v306 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v303 |= (v378[0] & 0x7F) << v301;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v301 += 7;
          v12 = v302++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_724;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v303;
        }

LABEL_724:
        v368 = 168;
        goto LABEL_763;
      case 0x36u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 508) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v378[0] & 0x7F) << v45;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_572;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v47;
        }

LABEL_572:
        v368 = 160;
        goto LABEL_763;
      case 0x37u:
        v230 = 0;
        v231 = 0;
        v232 = 0;
        *(a1 + 508) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v233 = [a2 position] + 1;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
          {
            v235 = [a2 data];
            [v235 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v232 |= (v378[0] & 0x7F) << v230;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v230 += 7;
          v12 = v231++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_682;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v232;
        }

LABEL_682:
        v368 = 136;
        goto LABEL_763;
      case 0x38u:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(a1 + 508) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v249 = [a2 position] + 1;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
          {
            v251 = [a2 data];
            [v251 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v248 |= (v378[0] & 0x7F) << v246;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v248;
        }

LABEL_690:
        v368 = 120;
        goto LABEL_763;
      case 0x39u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 508) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v378[0] & 0x7F) << v39;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v12 = v40++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_568;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v41;
        }

LABEL_568:
        v368 = 128;
        goto LABEL_763;
      case 0x3Au:
        v277 = 0;
        v278 = 0;
        v279 = 0;
        *(a1 + 508) |= 2uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v280 = [a2 position] + 1;
          if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 1, v281 <= objc_msgSend(a2, "length")))
          {
            v282 = [a2 data];
            [v282 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v279 |= (v378[0] & 0x7F) << v277;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v277 += 7;
          v12 = v278++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_710;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v279;
        }

LABEL_710:
        v368 = 16;
        goto LABEL_763;
      case 0x3Bu:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        *(a1 + 508) |= 1uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v378[0] & 0x7F) << v259;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_698;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v261;
        }

LABEL_698:
        v368 = 8;
        goto LABEL_763;
      case 0x3Cu:
        v361 = 0;
        v362 = 0;
        v363 = 0;
        *(a1 + 508) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v364 = [a2 position] + 1;
          if (v364 >= [a2 position] && (v365 = objc_msgSend(a2, "position") + 1, v365 <= objc_msgSend(a2, "length")))
          {
            v366 = [a2 data];
            [v366 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v363 |= (v378[0] & 0x7F) << v361;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v361 += 7;
          v12 = v362++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_762;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v363;
        }

LABEL_762:
        v368 = 320;
        goto LABEL_763;
      case 0x3Du:
        v331 = 0;
        v332 = 0;
        v333 = 0;
        *(a1 + 508) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v334 = [a2 position] + 1;
          if (v334 >= [a2 position] && (v335 = objc_msgSend(a2, "position") + 1, v335 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v333 |= (v378[0] & 0x7F) << v331;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v331 += 7;
          v12 = v332++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_741;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v333;
        }

LABEL_741:
        v368 = 312;
        goto LABEL_763;
      case 0x3Eu:
        v349 = 0;
        v350 = 0;
        v351 = 0;
        *(a1 + 508) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v352 = [a2 position] + 1;
          if (v352 >= [a2 position] && (v353 = objc_msgSend(a2, "position") + 1, v353 <= objc_msgSend(a2, "length")))
          {
            v354 = [a2 data];
            [v354 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v351 |= (v378[0] & 0x7F) << v349;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v349 += 7;
          v12 = v350++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_753;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v351;
        }

LABEL_753:
        v368 = 360;
        goto LABEL_763;
      case 0x3Fu:
        v265 = 0;
        v266 = 0;
        v267 = 0;
        *(a1 + 508) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v268 = [a2 position] + 1;
          if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 1, v269 <= objc_msgSend(a2, "length")))
          {
            v270 = [a2 data];
            [v270 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v267 |= (v378[0] & 0x7F) << v265;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v265 += 7;
          v12 = v266++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_702;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v267;
        }

LABEL_702:
        v368 = 352;
        goto LABEL_763;
      case 0x40u:
        v271 = 0;
        v272 = 0;
        v273 = 0;
        *(a1 + 508) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v274 = [a2 position] + 1;
          if (v274 >= [a2 position] && (v275 = objc_msgSend(a2, "position") + 1, v275 <= objc_msgSend(a2, "length")))
          {
            v276 = [a2 data];
            [v276 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v273 |= (v378[0] & 0x7F) << v271;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v271 += 7;
          v12 = v272++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v273;
        }

LABEL_706:
        v368 = 256;
        goto LABEL_763;
      case 0x41u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 508) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v378[0] & 0x7F) << v90;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_600;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v92;
        }

LABEL_600:
        v368 = 248;
        goto LABEL_763;
      case 0x42u:
        v295 = 0;
        v296 = 0;
        v297 = 0;
        *(a1 + 508) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v298 = [a2 position] + 1;
          if (v298 >= [a2 position] && (v299 = objc_msgSend(a2, "position") + 1, v299 <= objc_msgSend(a2, "length")))
          {
            v300 = [a2 data];
            [v300 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v297 |= (v378[0] & 0x7F) << v295;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v295 += 7;
          v12 = v296++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_720;
          }
        }

        v135 = (v297 != 0) & ~[a2 hasError];
LABEL_720:
        v370 = 500;
        goto LABEL_737;
      case 0x43u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 508) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v378[0] & 0x7F) << v21;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_556;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_556:
        v368 = 176;
        goto LABEL_763;
      case 0x44u:
        v325 = 0;
        v326 = 0;
        v327 = 0;
        *(a1 + 508) |= 0x1000000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v328 = [a2 position] + 1;
          if (v328 >= [a2 position] && (v329 = objc_msgSend(a2, "position") + 1, v329 <= objc_msgSend(a2, "length")))
          {
            v330 = [a2 data];
            [v330 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v327 |= (v378[0] & 0x7F) << v325;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v325 += 7;
          v12 = v326++ >= 9;
          if (v12)
          {
            LOBYTE(v135) = 0;
            goto LABEL_736;
          }
        }

        v135 = (v327 != 0) & ~[a2 hasError];
LABEL_736:
        v370 = 507;
LABEL_737:
        *(a1 + v370) = v135;
        goto LABEL_764;
      case 0x45u:
        v337 = 0;
        v338 = 0;
        v339 = 0;
        *(a1 + 508) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v340 = [a2 position] + 1;
          if (v340 >= [a2 position] && (v341 = objc_msgSend(a2, "position") + 1, v341 <= objc_msgSend(a2, "length")))
          {
            v342 = [a2 data];
            [v342 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v339 |= (v378[0] & 0x7F) << v337;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v337 += 7;
          v12 = v338++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_745;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v339;
        }

LABEL_745:
        v368 = 192;
LABEL_763:
        *(a1 + v368) = v20;
        goto LABEL_764;
      case 0x46u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 508) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v378[0] & 0x7F) << v142;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v144;
        }

LABEL_630:
        v369 = 496;
        goto LABEL_758;
      case 0x64u:
        v355 = 0;
        v356 = 0;
        v357 = 0;
        *(a1 + 508) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v378[0]) = 0;
          v358 = [a2 position] + 1;
          if (v358 >= [a2 position] && (v359 = objc_msgSend(a2, "position") + 1, v359 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v357 |= (v378[0] & 0x7F) << v355;
          if ((v378[0] & 0x80) == 0)
          {
            break;
          }

          v355 += 7;
          v12 = v356++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_757;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v357;
        }

LABEL_757:
        v369 = 488;
LABEL_758:
        *(a1 + v369) = v110;
        goto LABEL_764;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_764;
    }
  }
}

uint64_t ISOPBSubscriptionLabelMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Swift::Int64 __swiftcall Double.toMillis()()
{
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_275A52A60(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_275A53028@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_275A53240(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A56C9C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t LitmusInfo.groupID.getter()
{
  v1 = (v0 + *(type metadata accessor for LitmusInfo(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t LitmusInfo.groupID.setter(int a1)
{
  result = type metadata accessor for LitmusInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*LitmusInfo.groupID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for LitmusInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_275A56DA0;
}

Swift::Void __swiftcall LitmusInfo.clearGroupID()()
{
  v1 = v0 + *(type metadata accessor for LitmusInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t LitmusInfo.experimentID.getter()
{
  v1 = (v0 + *(type metadata accessor for LitmusInfo(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t LitmusInfo.experimentID.setter(int a1)
{
  result = type metadata accessor for LitmusInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*LitmusInfo.experimentID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for LitmusInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_275A53558;
}

uint64_t sub_275A53558(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall LitmusInfo.clearExperimentID()()
{
  v1 = v0 + *(type metadata accessor for LitmusInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t LitmusInfo.bucketID.getter()
{
  v1 = (v0 + *(type metadata accessor for LitmusInfo(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t LitmusInfo.bucketID.setter(int a1)
{
  result = type metadata accessor for LitmusInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*LitmusInfo.bucketID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for LitmusInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_275A56DA0;
}

Swift::Void __swiftcall LitmusInfo.clearBucketID()()
{
  v1 = v0 + *(type metadata accessor for LitmusInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t LitmusInfo.experimentState.getter()
{
  v1 = (v0 + *(type metadata accessor for LitmusInfo(0) + 32));
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t LitmusInfo.experimentState.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for LitmusInfo(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*LitmusInfo.experimentState.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for LitmusInfo(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_275A53808;
}

uint64_t sub_275A53808(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall LitmusInfo.clearExperimentState()()
{
  v1 = v0 + *(type metadata accessor for LitmusInfo(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t sub_275A53920@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_275A53970@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_275A539AC(uint64_t a1, uint64_t a2)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A53A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A56C48();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A53A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

int *LitmusInfo.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for LitmusInfo(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 256;
  return result;
}

uint64_t sub_275A53BA0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_275A53C54@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t QuotaServerState.previousState.getter()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t QuotaServerState.previousState.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for QuotaServerState(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*QuotaServerState.previousState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for QuotaServerState(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A53DEC;
}

Swift::Void __swiftcall QuotaServerState.clearPreviousState()()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t QuotaServerState.deprecatedNotificationInfoDictInJson.getter()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t QuotaServerState.deprecatedNotificationInfoDictInJson.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for QuotaServerState(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*QuotaServerState.deprecatedNotificationInfoDictInJson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for QuotaServerState(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

Swift::Void __swiftcall QuotaServerState.clearDeprecatedNotificationInfoDictInJson()()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t QuotaServerState.notificationID.getter()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t QuotaServerState.notificationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for QuotaServerState(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*QuotaServerState.notificationID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for QuotaServerState(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

Swift::Void __swiftcall QuotaServerState.clearNotificationID()()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t QuotaServerState.offerID.getter()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t QuotaServerState.offerID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for QuotaServerState(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*QuotaServerState.offerID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for QuotaServerState(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

void sub_275A5430C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall QuotaServerState.clearOfferID()()
{
  v1 = (v0 + *(type metadata accessor for QuotaServerState(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore10LitmusInfoV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275AE52A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s31iCloudSubscriptionOptimizerCore10LitmusInfoV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_275AE52A4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *QuotaServerState.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for QuotaServerState(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_275A54548()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static NewOfferAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NewOfferAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DISPLAY_OFFER_NOW";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DELAY_OFFER";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_OFFER_NOW_AFTER_DELAY_ELAPSED";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DISPLAY_OFFER_NOW_AFTER_NEW_OFFER_CALL";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DO_NOT_DISPLAY_OFFER";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DELAY_OFFER_AGAIN";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A548E0()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static LitmusInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static LitmusInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "groupId";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experimentId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bucketId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "experimentState";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t LitmusInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_275A54C60(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for LitmusInfo(0);
      sub_275AE53A4();
    }
  }
}

uint64_t sub_275A54C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LitmusInfo(0);
  sub_275A56C48();
  return sub_275AE5374();
}

uint64_t sub_275A54D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LitmusInfo(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return sub_275AE54D4();
  }

  return result;
}

uint64_t sub_275A54DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LitmusInfo(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_275AE54D4();
  }

  return result;
}

uint64_t sub_275A54E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LitmusInfo(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_275AE54D4();
  }

  return result;
}

uint64_t sub_275A54EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LitmusInfo(0);
  if ((*(a1 + *(result + 32) + 9) & 1) == 0)
  {
    sub_275A56C48();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A54F94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 256;
  return result;
}

uint64_t sub_275A55068(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A56484(&qword_280A24620, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A55108(uint64_t a1, uint64_t a2)
{
  sub_275A56484(&qword_280A245F0, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);

  return sub_275AE5474();
}

uint64_t sub_275A55188()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static LitmusInfo.ExperimentState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static LitmusInfo.ExperimentState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TESTING";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WARMUP";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ACTIVE";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A55464()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static QuotaServerState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static QuotaServerState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7230;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "previousState";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DEPRECATED_notificationInfoDictInJson";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "notificationId";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offerId";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A556D8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_275AE5574();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_275A55750@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_275AE5574();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t QuotaServerState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275AE5344();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for QuotaServerState(0);
          sub_275AE53E4();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A5593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    a6(v7, a1, a2, a3);
    a7(v7, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A55A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for QuotaServerState(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A55A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for QuotaServerState(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A55AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for QuotaServerState(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A55B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for QuotaServerState(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A55C30(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275A56484(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A55CB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_275A55D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A56484(&qword_280A24618, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A55DF4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_275AE5574();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_275A55E90(uint64_t a1)
{
  sub_275A56484(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);

  return sub_275AE5464();
}

uint64_t sub_275A55EFC(uint64_t a1, uint64_t a2)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A55F54(uint64_t a1, uint64_t a2)
{
  sub_275A56484(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);

  return sub_275AE5474();
}

uint64_t sub_275A55FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A56090(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

uint64_t _s31iCloudSubscriptionOptimizerCore16QuotaServerStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_275AE5AC4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_275AE5AC4();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_275AE5AC4();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_275AE5AC4() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    sub_275AE52A4();
    sub_275A56484(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  return 0;
}

uint64_t _s31iCloudSubscriptionOptimizerCore10LitmusInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 9);
  v23 = a2 + v20;
  v24 = *(a2 + v20 + 9);
  if ((v22 & 1) == 0)
  {
    if (v24)
    {
      return 0;
    }

    v26 = *v21;
    v27 = *v23;
    if (*(v23 + 8))
    {
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          if (v26 != 2)
          {
            return 0;
          }
        }

        else if (v26 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (!v27)
        {
          if (!v26)
          {
            goto LABEL_21;
          }

          return 0;
        }

        if (v26 != 1)
        {
          return 0;
        }
      }
    }

    else if (v26 != v27)
    {
      return 0;
    }

LABEL_21:
    sub_275AE52A4();
    sub_275A56484(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_275AE5664() & 1;
  }

  if (v24)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_275A56484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_275A564D0()
{
  result = qword_280A24598;
  if (!qword_280A24598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24598);
  }

  return result;
}

unint64_t sub_275A56528()
{
  result = qword_280A245A0;
  if (!qword_280A245A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A245A0);
  }

  return result;
}

unint64_t sub_275A56580()
{
  result = qword_280A245A8;
  if (!qword_280A245A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A245A8);
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

unint64_t sub_275A56650()
{
  result = qword_280A245C0;
  if (!qword_280A245C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A245C0);
  }

  return result;
}

unint64_t sub_275A566A8()
{
  result = qword_280A245C8;
  if (!qword_280A245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A245C8);
  }

  return result;
}

unint64_t sub_275A56700()
{
  result = qword_280A245D0;
  if (!qword_280A245D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A245D0);
  }

  return result;
}

uint64_t sub_275A56784(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_275A56A68(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF50, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, qword_281411A78, &type metadata for LitmusInfo.ExperimentState);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275A56B64(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275A56BFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_275AE5944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_275A56C48()
{
  result = qword_280A24628;
  if (!qword_280A24628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24628);
  }

  return result;
}

unint64_t sub_275A56C9C()
{
  result = qword_280A24630;
  if (!qword_280A24630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24630);
  }

  return result;
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

Swift::Void __swiftcall CoreAnalyticsEventSink.send(_:)(iCloudSubscriptionOptimizerCore::MetricEventData a1)
{
  rawValue = a1.payload._rawValue;

  v2 = sub_275AE5674();
  v3 = swift_allocObject();
  *(v3 + 16) = rawValue;
  v5[4] = sub_275A56EF8;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_275A56F00;
  v5[3] = &block_descriptor;
  v4 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v4);
}

id sub_275A56F00(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_275A570CC();
    v4 = sub_275AE5634();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_275A56FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_275AE5674();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_275A5711C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275A56F00;
  v7[3] = &block_descriptor_8;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

unint64_t sub_275A570CC()
{
  result = qword_281411F58[0];
  if (!qword_281411F58[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281411F58);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275A57140(uint64_t a1, int a2)
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

uint64_t sub_275A57188(uint64_t result, int a2, int a3)
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

uint64_t CliActivityState.message.getter()
{
  v1 = (v0 + *(type metadata accessor for CliActivityState(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CliActivityState.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CliActivityState(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CliActivityState.message.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CliActivityState(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A53DEC;
}

Swift::Void __swiftcall CliActivityState.clearMessage()()
{
  v1 = (v0 + *(type metadata accessor for CliActivityState(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t CliActivityState.delaySecs.getter()
{
  v1 = (v0 + *(type metadata accessor for CliActivityState(0) + 24));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CliActivityState.delaySecs.setter(uint64_t a1)
{
  result = type metadata accessor for CliActivityState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CliActivityState.delaySecs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CliActivityState(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall CliActivityState.clearDelaySecs()()
{
  v1 = v0 + *(type metadata accessor for CliActivityState(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CliActivityState.runTsMillis.setter(uint64_t a1)
{
  result = type metadata accessor for CliActivityState(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CliActivityState.runTsMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CliActivityState(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

uint64_t sub_275A57784(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall CliActivityState.clearRunTsMillis()()
{
  v1 = v0 + *(type metadata accessor for CliActivityState(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CliActivityState.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for CliActivityState(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

double NotificationState.mlServerScore.getter()
{
  v1 = v0 + *(type metadata accessor for NotificationState(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t NotificationState.mlServerScore.setter(double a1)
{
  result = type metadata accessor for NotificationState(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NotificationState.mlServerScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NotificationState(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NotificationState.clearMlServerScore()()
{
  v1 = v0 + *(type metadata accessor for NotificationState(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NotificationState.litmusInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for NotificationState(0);
  sub_275A5F510(v1 + *(v6 + 24), v5, &qword_280A24650, &qword_275AEAC50);
  v7 = type metadata accessor for LitmusInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A58430(v5, a1, type metadata accessor for LitmusInfo);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 256;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24650, &qword_275AEAC50);
  }

  return result;
}

uint64_t NotificationState.litmusInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationState(0) + 24);
  sub_275A5FE04(v1 + v3, &qword_280A24650, &qword_275AEAC50);
  sub_275A58430(a1, v1 + v3, type metadata accessor for LitmusInfo);
  v4 = type metadata accessor for LitmusInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NotificationState.litmusInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LitmusInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NotificationState(0) + 24);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24650, &qword_275AEAC50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 256;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24650, &qword_275AEAC50);
    }
  }

  else
  {
    sub_275A58430(v8, v14, type metadata accessor for LitmusInfo);
  }

  return sub_275A57E7C;
}

BOOL NotificationState.hasLitmusInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for NotificationState(0);
  sub_275A5F510(v0 + *(v4 + 24), v3, &qword_280A24650, &qword_275AEAC50);
  v5 = type metadata accessor for LitmusInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_275A5FE04(v3, &qword_280A24650, &qword_275AEAC50);
  return v6;
}

Swift::Void __swiftcall NotificationState.clearLitmusInfo()()
{
  v1 = *(type metadata accessor for NotificationState(0) + 24);
  sub_275A5FE04(v0 + v1, &qword_280A24650, &qword_275AEAC50);
  v2 = type metadata accessor for LitmusInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_275A5803C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t NotificationState.pushTimestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for NotificationState(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NotificationState.pushTimestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NotificationState(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NotificationState.clearPushTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for NotificationState(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NotificationState.maxDelayTimestampMillis.getter()
{
  v1 = (v0 + *(type metadata accessor for NotificationState(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NotificationState.maxDelayTimestampMillis.setter(uint64_t a1)
{
  result = type metadata accessor for NotificationState(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NotificationState.maxDelayTimestampMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NotificationState(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NotificationState.clearMaxDelayTimestampMillis()()
{
  v1 = v0 + *(type metadata accessor for NotificationState(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NotificationState.quotaServerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for NotificationState(0);
  sub_275A5F510(v1 + *(v6 + 36), v5, &qword_280A24658, &unk_275AE7960);
  v7 = type metadata accessor for QuotaServerState(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_275A58430(v5, a1, type metadata accessor for QuotaServerState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24658, &unk_275AE7960);
  }

  return result;
}

uint64_t sub_275A58430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NotificationState.quotaServerState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationState(0) + 36);
  sub_275A5FE04(v1 + v3, &qword_280A24658, &unk_275AE7960);
  sub_275A58430(a1, v1 + v3, type metadata accessor for QuotaServerState);
  v4 = type metadata accessor for QuotaServerState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NotificationState.quotaServerState.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for QuotaServerState(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for NotificationState(0) + 36);
  *(v5 + 12) = v15;
  sub_275A5F510(v1 + v15, v8, &qword_280A24658, &unk_275AE7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24658, &unk_275AE7960);
    }
  }

  else
  {
    sub_275A58430(v8, v14, type metadata accessor for QuotaServerState);
  }

  return sub_275A5878C;
}

void sub_275A587B4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_275A588EC(v11, v10, a5);
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A58430(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_275A58954(v11, a5);
  }

  else
  {
    sub_275A5FE04(v14 + v9, a3, a4);
    sub_275A58430(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_275A588EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A58954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL NotificationState.hasQuotaServerState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for NotificationState(0);
  sub_275A5F510(v0 + *(v4 + 36), v3, &qword_280A24658, &unk_275AE7960);
  v5 = type metadata accessor for QuotaServerState(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_275A5FE04(v3, &qword_280A24658, &unk_275AE7960);
  return v6;
}

Swift::Void __swiftcall NotificationState.clearQuotaServerState()()
{
  v1 = *(type metadata accessor for NotificationState(0) + 36);
  sub_275A5FE04(v0 + v1, &qword_280A24658, &unk_275AE7960);
  v2 = type metadata accessor for QuotaServerState(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NotificationState.iCloudAltDsidhash.getter()
{
  v1 = (v0 + *(type metadata accessor for NotificationState(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NotificationState.iCloudAltDsidhash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NotificationState(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NotificationState.iCloudAltDsidhash.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NotificationState(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_275A56DD8;
}

Swift::Void __swiftcall NotificationState.clearICloudAltDsidhash()()
{
  v1 = (v0 + *(type metadata accessor for NotificationState(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t NotificationState.delayCount.getter()
{
  v1 = (v0 + *(type metadata accessor for NotificationState(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t NotificationState.delayCount.setter(uint64_t a1)
{
  result = type metadata accessor for NotificationState(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NotificationState.delayCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NotificationState(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A5FE74;
}

Swift::Void __swiftcall NotificationState.clearDelayCount()()
{
  v1 = v0 + *(type metadata accessor for NotificationState(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NotificationState.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for NotificationState(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for LitmusInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v2[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v2[9];
  v9 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v11 = (a1 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v2[11];
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t DaemonState.lastPetDataCollectionMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for DaemonState(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t DaemonState.lastPetDataCollectionMillis.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A5F030(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*DaemonState.lastPetDataCollectionMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A59138;
}

void sub_275A59138(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A5F030(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL DaemonState.hasLastPetDataCollectionMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for DaemonState(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall DaemonState.clearLastPetDataCollectionMillis()()
{
  v1 = v0;
  v2 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v5 = sub_275A5F030(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

uint64_t DaemonState.notificationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for DaemonState(0) + 20));
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  swift_beginAccess();
  sub_275A5F510(v6 + v7, v5, &qword_280A24660, &qword_275AEAC60);
  v8 = type metadata accessor for NotificationState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_275A58430(v5, a1, type metadata accessor for NotificationState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for LitmusInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v8[9];
  v16 = type metadata accessor for QuotaServerState(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = (a1 + v8[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a1 + v8[11];
  *v18 = 0;
  *(v18 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24660, &qword_275AEAC60);
  }

  return result;
}

uint64_t DaemonState.notificationState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A5F030(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_275A58430(a1, v6, type metadata accessor for NotificationState);
  v11 = type metadata accessor for NotificationState(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  swift_beginAccess();
  sub_275A5F578(v6, v9 + v12, &qword_280A24660, &qword_275AEAC60);
  return swift_endAccess();
}

void (*DaemonState.notificationState.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for NotificationState(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for DaemonState(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  swift_beginAccess();
  sub_275A5F510(v16 + v17, v8, &qword_280A24660, &qword_275AEAC60);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for LitmusInfo(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v14 + v9[7];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[8];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v9[9];
    v25 = type metadata accessor for QuotaServerState(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    v26 = (v14 + v9[10]);
    *v26 = 0;
    v26[1] = 0;
    v27 = v14 + v9[11];
    *v27 = 0;
    *(v27 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24660, &qword_275AEAC60);
    }
  }

  else
  {
    sub_275A58430(v8, v14, type metadata accessor for NotificationState);
  }

  return sub_275A599F8;
}

void (*DaemonState.lastMobileAssetCatalogDownloadMillis.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A59B58;
}

uint64_t sub_275A59B88(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for DaemonState(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275A59BF8(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v9 = sub_275A5F030(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = v8 + *a2;
  result = swift_beginAccess();
  *v10 = a1;
  *(v10 + 8) = 0;
  return result;
}

void (*DaemonState.lastMobileAssetRefreshAssetMillis.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A59D64;
}

void sub_275A59D70(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A5F030(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = v9 + *a3;
  swift_beginAccess();
  *v13 = v5;
  *(v13 + 8) = 0;

  free(v4);
}

BOOL sub_275A59E60(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for DaemonState(0) + 20)) + *a1;
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_275A59ECC(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v7 = sub_275A5F030(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + *a1;
  result = swift_beginAccess();
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t DaemonState.cliActivityState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for DaemonState(0) + 20));
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  sub_275A5F510(v6 + v7, v5, &qword_280A24668, &qword_275AE7970);
  v8 = type metadata accessor for CliActivityState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_275A58430(v5, a1, type metadata accessor for CliActivityState);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_275A5FE04(v5, &qword_280A24668, &qword_275AE7970);
  }

  return result;
}

uint64_t DaemonState.cliActivityState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v10 = sub_275A5F030(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_275A58430(a1, v6, type metadata accessor for CliActivityState);
  v11 = type metadata accessor for CliActivityState(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  sub_275A5F578(v6, v9 + v12, &qword_280A24668, &qword_275AE7970);
  return swift_endAccess();
}

void (*DaemonState.cliActivityState.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CliActivityState(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for DaemonState(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  sub_275A5F510(v16 + v17, v8, &qword_280A24668, &qword_275AE7970);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24668, &qword_275AE7970);
    }
  }

  else
  {
    sub_275A58430(v8, v14, type metadata accessor for CliActivityState);
  }

  return sub_275A5A51C;
}

void sub_275A5A54C(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_275A588EC(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for DaemonState._StorageClass(0);
      swift_allocObject();
      v15 = sub_275A5F030(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_275A58430(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    sub_275A5F578(v21, v12 + v22, a5, a6);
    swift_endAccess();
    sub_275A58954(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for DaemonState._StorageClass(0);
      swift_allocObject();
      v28 = sub_275A5F030(v25);

      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    sub_275A58430(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    sub_275A5F578(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

BOOL sub_275A5A7A0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for DaemonState(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_275A5F510(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_275A5FE04(v11, a1, a2);
  return v15;
}

uint64_t sub_275A5A8E8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v16 = sub_275A5F030(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_275A5F578(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

void (*DaemonState.lastPflDataCollectionMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A5AB14;
}

void (*DaemonState.lastShadowEvaluationMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A5AC08;
}

void (*DaemonState.lastIndXpcCallMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A5ACFC;
}

void (*DaemonState.lastMobileAssetDownloadActivityRunMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for DaemonState(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A5ADF0;
}

uint64_t DaemonState.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for DaemonState(0) + 20);
  if (qword_281411A18 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_281411A20;
}

uint64_t sub_275A5AEE0()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static CliActivityState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CliActivityState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delaySecs";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "runTsMillis";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t CliActivityState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_275AE5344();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      type metadata accessor for CliActivityState(0);
      sub_275AE53B4();
    }

    else if (result == 1)
    {
      type metadata accessor for CliActivityState(0);
      sub_275AE53E4();
    }
  }

  return result;
}

uint64_t CliActivityState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A5B2B8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A5B330(v3, a1, a2, a3);
    sub_275A5C010(v3, a1, a2, a3, type metadata accessor for CliActivityState, 3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A5B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CliActivityState(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A5B330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CliActivityState(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A5B3F4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_275A5B494(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A5F5E0(&qword_280A246D8, type metadata accessor for CliActivityState, &protocol conformance descriptor for CliActivityState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A5B534(uint64_t a1)
{
  sub_275A5F5E0(&qword_280A24690, type metadata accessor for CliActivityState, &protocol conformance descriptor for CliActivityState);

  return sub_275AE5464();
}

uint64_t sub_275A5B5A0(uint64_t a1, uint64_t a2)
{
  sub_275A5F5E0(&qword_280A24690, type metadata accessor for CliActivityState, &protocol conformance descriptor for CliActivityState);

  return sub_275AE5474();
}

uint64_t sub_275A5B648()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static NotificationState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NotificationState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_275AE7220;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "mlServerScore";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_275AE5544();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "litmusInfo";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "pushTimestampMillis";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "maxDelayTimestampMillis";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "quotaServerState";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "iCloudAltDSIDHash";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "delayCount";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_275AE5554();
}

uint64_t NotificationState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_275AE5344();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 2:
          type metadata accessor for NotificationState(0);
          sub_275AE53D4();
          break;
        case 3:
          sub_275A5BB20(a1, v5, a2, a3);
          break;
        case 4:
          goto LABEL_2;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        type metadata accessor for NotificationState(0);
        sub_275AE53E4();
      }

      else if (result == 8)
      {
LABEL_2:
        type metadata accessor for NotificationState(0);
        v4 = 0;
        sub_275AE53B4();
      }
    }

    else
    {
      if (result == 5)
      {
        goto LABEL_2;
      }

      sub_275A5BBD4(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_275A5BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NotificationState(0);
  type metadata accessor for LitmusInfo(0);
  sub_275A5F5E0(&qword_280A245F0, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);
  return sub_275AE5404();
}

uint64_t sub_275A5BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NotificationState(0);
  type metadata accessor for QuotaServerState(0);
  sub_275A5F5E0(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  return sub_275AE5404();
}

uint64_t NotificationState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_275A5BD88(v3, a1, a2, a3);
  if (!v4)
  {
    sub_275A5BE00(v3, a1, a2, a3);
    sub_275A5C010(v3, a1, a2, a3, type metadata accessor for NotificationState, 4);
    sub_275A5C094(v3, a1, a2, a3);
    sub_275A5C10C(v3, a1, a2, a3);
    sub_275A5C31C(v3, a1, a2, a3);
    sub_275A5C394(v3, a1, a2, a3);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A5BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NotificationState(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A5BE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LitmusInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NotificationState(0);
  sub_275A5F510(a1 + *(v12 + 24), v7, &qword_280A24650, &qword_275AEAC50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24650, &qword_275AEAC50);
  }

  sub_275A58430(v7, v11, type metadata accessor for LitmusInfo);
  sub_275A5F5E0(&qword_280A245F0, type metadata accessor for LitmusInfo, &protocol conformance descriptor for LitmusInfo);
  sub_275AE5534();
  return sub_275A58954(v11, type metadata accessor for LitmusInfo);
}

uint64_t sub_275A5C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A5C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NotificationState(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A5C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for QuotaServerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NotificationState(0);
  sub_275A5F510(a1 + *(v12 + 36), v7, &qword_280A24658, &unk_275AE7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24658, &unk_275AE7960);
  }

  sub_275A58430(v7, v11, type metadata accessor for QuotaServerState);
  sub_275A5F5E0(&qword_280A24608, type metadata accessor for QuotaServerState, &protocol conformance descriptor for QuotaServerState);
  sub_275AE5534();
  return sub_275A58954(v11, type metadata accessor for QuotaServerState);
}

uint64_t sub_275A5C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NotificationState(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A5C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NotificationState(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A5C458@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for LitmusInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = type metadata accessor for QuotaServerState(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[11];
  v14 = (a2 + a1[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  return result;
}

uint64_t sub_275A5C5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A5F5E0(&qword_280A246D0, type metadata accessor for NotificationState, &protocol conformance descriptor for NotificationState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A5C640(uint64_t a1)
{
  sub_275A5F5E0(&qword_280A246A8, type metadata accessor for NotificationState, &protocol conformance descriptor for NotificationState);

  return sub_275AE5464();
}

uint64_t sub_275A5C6AC(uint64_t a1, uint64_t a2)
{
  sub_275A5F5E0(&qword_280A246A8, type metadata accessor for NotificationState, &protocol conformance descriptor for NotificationState);

  return sub_275AE5474();
}

uint64_t sub_275A5C758()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static DaemonState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DaemonState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_275AE7900;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "lastPetDataCollectionMillis";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notificationState";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastMobileAssetCatalogDownloadMillis";
  *(v11 + 1) = 36;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lastMobileAssetRefreshAssetMillis";
  *(v13 + 1) = 33;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cliActivityState";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lastPflDataCollectionMillis";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lastShadowEvaluationMillis";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lastIndXpcCallMillis";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "lastMobileAssetDownloadActivityRunMillis";
  *(v22 + 8) = 40;
  *(v22 + 16) = 2;
  v8();
  return sub_275AE5554();
}

uint64_t sub_275A5CB24()
{
  type metadata accessor for DaemonState._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  v2 = type metadata accessor for NotificationState(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  v6 = type metadata accessor for CliActivityState(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v8 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  *v11 = 0;
  *(v11 + 8) = 1;
  qword_281411A20 = v0;
  return result;
}

uint64_t sub_275A5CC7C()
{
  sub_275A5FE04(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState, &qword_280A24660, &qword_275AEAC60);
  sub_275A5FE04(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState, &qword_280A24668, &qword_275AE7970);

  return swift_deallocClassInstance();
}

uint64_t DaemonState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DaemonState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for DaemonState._StorageClass(0);
    swift_allocObject();
    v12 = sub_275A5F030(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_275A5CDC4(v10, a1, a2, a3);
}

uint64_t sub_275A5CDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275AE5344();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_275A5CFAC(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_275A5D030(a2, a1, a3, a4);
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
          goto LABEL_5;
        }

        sub_275A5D10C(a2, a1, a3, a4);
      }

      else
      {
        switch(result)
        {
          case 7:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
            goto LABEL_5;
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
            goto LABEL_5;
          case 9:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
LABEL_5:
            sub_275A5D1E8(v11, v12, v13, v14, v15);
            break;
        }
      }

      result = sub_275AE5344();
    }
  }

  return result;
}

uint64_t sub_275A5CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A5D030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for NotificationState(0);
  sub_275A5F5E0(&qword_280A246A8, type metadata accessor for NotificationState, &protocol conformance descriptor for NotificationState);
  sub_275AE5404();
  return swift_endAccess();
}

uint64_t sub_275A5D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for CliActivityState(0);
  sub_275A5F5E0(&qword_280A24690, type metadata accessor for CliActivityState, &protocol conformance descriptor for CliActivityState);
  sub_275AE5404();
  return swift_endAccess();
}

uint64_t sub_275A5D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t DaemonState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DaemonState(0);
  result = sub_275A5D2DC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A5D2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275A5D41C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_275A5D4A0(a1, a2, a3, a4);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis, 3);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis, 4);
    sub_275A5D6BC(a1, a2, a3, a4);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis, 6);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis, 7);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis, 8);
    return sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis, 9);
  }

  return result;
}

uint64_t sub_275A5D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A5D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NotificationState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  swift_beginAccess();
  sub_275A5F510(a1 + v12, v7, &qword_280A24660, &qword_275AEAC60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24660, &qword_275AEAC60);
  }

  sub_275A58430(v7, v11, type metadata accessor for NotificationState);
  sub_275A5F5E0(&qword_280A246A8, type metadata accessor for NotificationState, &protocol conformance descriptor for NotificationState);
  sub_275AE5534();
  return sub_275A58954(v11, type metadata accessor for NotificationState);
}

uint64_t sub_275A5D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CliActivityState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  sub_275A5F510(a1 + v12, v7, &qword_280A24668, &qword_275AE7970);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_275A5FE04(v7, &qword_280A24668, &qword_275AE7970);
  }

  sub_275A58430(v7, v11, type metadata accessor for CliActivityState);
  sub_275A5F5E0(&qword_280A24690, type metadata accessor for CliActivityState, &protocol conformance descriptor for CliActivityState);
  sub_275AE5534();
  return sub_275A58954(v11, type metadata accessor for CliActivityState);
}

uint64_t sub_275A5D8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return sub_275AE54E4();
  }

  return result;
}

BOOL sub_275A5D96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CliActivityState(0);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E0, &qword_275AE7E00);
  MEMORY[0x28223BE20](v79);
  v7 = &v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v76 - v11;
  v87 = type metadata accessor for NotificationState(0);
  v12 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246E8, &qword_275AE7E08);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v86 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v88 = a1;
  v23 = *(a1 + 24);
  swift_beginAccess();
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 16))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v77 = v7;
  v83 = a2;
  v25 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  v26 = v88;
  swift_beginAccess();
  sub_275A5F510(v26 + v25, v21, &qword_280A24660, &qword_275AEAC60);
  v27 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  v28 = v83;
  swift_beginAccess();
  v29 = *(v14 + 48);
  sub_275A5F510(v21, v16, &qword_280A24660, &qword_275AEAC60);
  sub_275A5F510(v28 + v27, &v16[v29], &qword_280A24660, &qword_275AEAC60);
  v30 = *(v12 + 48);
  v31 = v87;
  if (v30(v16, 1, v87) == 1)
  {

    sub_275A5FE04(v21, &qword_280A24660, &qword_275AEAC60);
    v32 = v30(&v16[v29], 1, v31);
    v33 = v26;
    if (v32 == 1)
    {
      sub_275A5FE04(v16, &qword_280A24660, &qword_275AEAC60);
      goto LABEL_17;
    }

LABEL_12:
    v35 = &qword_280A246E8;
    v36 = &qword_275AE7E08;
    v37 = v16;
LABEL_13:
    sub_275A5FE04(v37, v35, v36);
    goto LABEL_14;
  }

  v34 = v86;
  sub_275A5F510(v16, v86, &qword_280A24660, &qword_275AEAC60);
  if (v30(&v16[v29], 1, v31) == 1)
  {

    sub_275A5FE04(v21, &qword_280A24660, &qword_275AEAC60);
    sub_275A58954(v34, type metadata accessor for NotificationState);
    goto LABEL_12;
  }

  v39 = v82;
  sub_275A58430(&v16[v29], v82, type metadata accessor for NotificationState);
  v33 = v88;

  v40 = _s31iCloudSubscriptionOptimizerCore17NotificationStateV2eeoiySbAC_ACtFZ_0(v34, v39);
  sub_275A58954(v39, type metadata accessor for NotificationState);
  sub_275A5FE04(v21, &qword_280A24660, &qword_275AEAC60);
  sub_275A58954(v34, type metadata accessor for NotificationState);
  v28 = v83;
  sub_275A5FE04(v16, &qword_280A24660, &qword_275AEAC60);
  if ((v40 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v41 = v33 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
  swift_beginAccess();
  if (v41)
  {
    v45 = v84;
    v44 = v85;
    if ((*(v43 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v45 = v84;
    v44 = v85;
    if ((*(v43 + 8) & 1) != 0 || v42 != *v43)
    {
      goto LABEL_14;
    }
  }

  v46 = v33 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  v48 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
  swift_beginAccess();
  if (v46)
  {
    if ((*(v48 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v48 + 8) & 1) != 0 || v47 != *v48)
  {
    goto LABEL_14;
  }

  v49 = v33;
  v50 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  sub_275A5F510(v49 + v50, v45, &qword_280A24668, &qword_275AE7970);
  v51 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  v52 = *(v79 + 48);
  v53 = v77;
  sub_275A5F510(v45, v77, &qword_280A24668, &qword_275AE7970);
  sub_275A5F510(v28 + v51, v53 + v52, &qword_280A24668, &qword_275AE7970);
  v54 = v81;
  v55 = *(v80 + 48);
  if (v55(v53, 1, v81) == 1)
  {
    sub_275A5FE04(v45, &qword_280A24668, &qword_275AE7970);
    v56 = v55(v53 + v52, 1, v54);
    v57 = v88;
    if (v56 == 1)
    {
      sub_275A5FE04(v53, &qword_280A24668, &qword_275AE7970);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  sub_275A5F510(v53, v44, &qword_280A24668, &qword_275AE7970);
  if (v55(v53 + v52, 1, v54) == 1)
  {
    sub_275A5FE04(v45, &qword_280A24668, &qword_275AE7970);
    sub_275A58954(v44, type metadata accessor for CliActivityState);
LABEL_32:
    v35 = &qword_280A246E0;
    v36 = &qword_275AE7E00;
    v37 = v53;
    goto LABEL_13;
  }

  v58 = v78;
  sub_275A58430(v53 + v52, v78, type metadata accessor for CliActivityState);
  v59 = _s31iCloudSubscriptionOptimizerCore16CliActivityStateV2eeoiySbAC_ACtFZ_0(v44, v58);
  sub_275A58954(v58, type metadata accessor for CliActivityState);
  sub_275A5FE04(v45, &qword_280A24668, &qword_275AE7970);
  sub_275A58954(v44, type metadata accessor for CliActivityState);
  v28 = v83;
  sub_275A5FE04(v53, &qword_280A24668, &qword_275AE7970);
  v57 = v88;
  if ((v59 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_34:
  v60 = v57 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
  swift_beginAccess();
  v61 = *v60;
  LOBYTE(v60) = *(v60 + 8);
  v62 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
  swift_beginAccess();
  if (v60)
  {
    if ((*(v62 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v62 + 8) & 1) != 0 || v61 != *v62)
  {
    goto LABEL_14;
  }

  v63 = v57 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  swift_beginAccess();
  v64 = *v63;
  LOBYTE(v63) = *(v63 + 8);
  v65 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  swift_beginAccess();
  if (v63)
  {
    if ((*(v65 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((*(v65 + 8) & 1) != 0 || v64 != *v65)
  {
    goto LABEL_14;
  }

  v66 = v57 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  swift_beginAccess();
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 8);
  v68 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  swift_beginAccess();
  if (v66)
  {
    if (*(v68 + 8))
    {
      goto LABEL_49;
    }

LABEL_14:

    return 0;
  }

  if ((*(v68 + 8) & 1) != 0 || v67 != *v68)
  {
    goto LABEL_14;
  }

LABEL_49:
  v69 = v57 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  swift_beginAccess();
  v70 = *v69;
  v71 = *(v69 + 8);

  v72 = v28 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 8);

  if (v71)
  {
    return v74 != 0;
  }

  if (v70 == v73)
  {
    v75 = v74;
  }

  else
  {
    v75 = 1;
  }

  return (v75 & 1) == 0;
}

uint64_t sub_275A5E3FC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_275AE5B54();
  a1(0);
  sub_275A5F5E0(a2, a3, a4);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A5E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  if (qword_281411A18 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_281411A20;
}

uint64_t sub_275A5E54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A5F5E0(&qword_280A246C8, type metadata accessor for DaemonState, &protocol conformance descriptor for DaemonState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A5E5EC(uint64_t a1)
{
  sub_275A5F5E0(&qword_280A246B8, type metadata accessor for DaemonState, &protocol conformance descriptor for DaemonState);

  return sub_275AE5464();
}

uint64_t sub_275A5E658(uint64_t a1, uint64_t a2)
{
  sub_275A5F5E0(&qword_280A246B8, type metadata accessor for DaemonState, &protocol conformance descriptor for DaemonState);

  return sub_275AE5474();
}

uint64_t _s31iCloudSubscriptionOptimizerCore16CliActivityStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CliActivityState(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_275AE5AC4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275A5F5E0(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore17NotificationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotaServerState(0);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24658, &unk_275AE7960);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v70 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F0, qword_275AE7E10);
  MEMORY[0x28223BE20](v74);
  v10 = &v70 - v9;
  v11 = type metadata accessor for LitmusInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24650, &qword_275AEAC50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A246F8, &qword_275AEEB30);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = type metadata accessor for NotificationState(0);
  v22 = *(v21 + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_14;
    }
  }

  v70 = v6;
  v71 = v10;
  v27 = *(v21 + 24);
  v28 = *(v18 + 48);
  v72 = a1;
  v73 = v21;
  sub_275A5F510(a1 + v27, v20, &qword_280A24650, &qword_275AEAC50);
  v29 = a2 + v27;
  v30 = a2;
  sub_275A5F510(v29, &v20[v28], &qword_280A24650, &qword_275AEAC50);
  v31 = *(v12 + 48);
  if (v31(v20, 1, v11) == 1)
  {
    if (v31(&v20[v28], 1, v11) == 1)
    {
      sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
      goto LABEL_17;
    }

LABEL_12:
    v32 = &qword_280A246F8;
    v33 = &qword_275AEEB30;
    v34 = v20;
LABEL_13:
    sub_275A5FE04(v34, v32, v33);
    goto LABEL_14;
  }

  sub_275A5F510(v20, v17, &qword_280A24650, &qword_275AEAC50);
  if (v31(&v20[v28], 1, v11) == 1)
  {
    sub_275A58954(v17, type metadata accessor for LitmusInfo);
    goto LABEL_12;
  }

  sub_275A58430(&v20[v28], v14, type metadata accessor for LitmusInfo);
  v37 = static LitmusInfo.== infix(_:_:)();
  sub_275A58954(v14, type metadata accessor for LitmusInfo);
  sub_275A58954(v17, type metadata accessor for LitmusInfo);
  sub_275A5FE04(v20, &qword_280A24650, &qword_275AEAC50);
  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v38 = v72;
  v39 = v73[7];
  v40 = (v72 + v39);
  v41 = *(v72 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    v44 = v77;
    if (!v43)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    v44 = v77;
    if (v43)
    {
      goto LABEL_14;
    }
  }

  v45 = v73[8];
  v46 = (v72 + v45);
  v47 = *(v72 + v45 + 8);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 8);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      goto LABEL_14;
    }
  }

  v50 = v73[9];
  v51 = *(v74 + 48);
  v52 = v71;
  sub_275A5F510(v72 + v50, v71, &qword_280A24658, &unk_275AE7960);
  sub_275A5F510(v30 + v50, v52 + v51, &qword_280A24658, &unk_275AE7960);
  v53 = v76;
  v54 = *(v75 + 48);
  if (v54(v52, 1, v76) != 1)
  {
    sub_275A5F510(v52, v44, &qword_280A24658, &unk_275AE7960);
    if (v54(v52 + v51, 1, v53) != 1)
    {
      v55 = v52 + v51;
      v56 = v70;
      sub_275A58430(v55, v70, type metadata accessor for QuotaServerState);
      v57 = _s31iCloudSubscriptionOptimizerCore16QuotaServerStateV2eeoiySbAC_ACtFZ_0(v44, v56);
      sub_275A58954(v56, type metadata accessor for QuotaServerState);
      sub_275A58954(v44, type metadata accessor for QuotaServerState);
      sub_275A5FE04(v52, &qword_280A24658, &unk_275AE7960);
      if ((v57 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }

    sub_275A58954(v44, type metadata accessor for QuotaServerState);
    goto LABEL_34;
  }

  if (v54(v52 + v51, 1, v53) != 1)
  {
LABEL_34:
    v32 = &qword_280A246F0;
    v33 = qword_275AE7E10;
    v34 = v52;
    goto LABEL_13;
  }

  sub_275A5FE04(v52, &qword_280A24658, &unk_275AE7960);
LABEL_36:
  v58 = v73;
  v59 = v73[10];
  v60 = (v38 + v59);
  v61 = *(v38 + v59 + 8);
  v62 = (v30 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_14;
    }

    if (*v60 != *v62 || v61 != v63)
    {
      v64 = sub_275AE5AC4();
      v58 = v73;
      if ((v64 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v63)
  {
    goto LABEL_14;
  }

  v65 = v58[11];
  v66 = (v38 + v65);
  v67 = *(v38 + v65 + 8);
  v68 = (v30 + v65);
  v69 = *(v30 + v65 + 8);
  if ((v67 & 1) == 0)
  {
    if (*v66 != *v68)
    {
      LOBYTE(v69) = 1;
    }

    if (v69)
    {
      goto LABEL_14;
    }

LABEL_49:
    sub_275AE52A4();
    sub_275A5F5E0(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v35 = sub_275AE5664();
    return v35 & 1;
  }

  if (v69)
  {
    goto LABEL_49;
  }

LABEL_14:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore11DaemonStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DaemonState(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_275A5D96C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275A5F5E0(&qword_280A24638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A5F030(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24668, &qword_275AE7970);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24660, &qword_275AEAC60);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v39 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  v8 = type metadata accessor for NotificationState(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  v41 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  v12 = type metadata accessor for CliActivityState(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  v42 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  v43 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  v45 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis;
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_beginAccess();
  v17 = *(a1 + 16);
  LOBYTE(v11) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v17;
  *(v1 + 24) = v11;
  v18 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__notificationState;
  swift_beginAccess();
  v19 = v40;
  sub_275A5F510(a1 + v18, v40, &qword_280A24660, &qword_275AEAC60);
  swift_beginAccess();
  sub_275A5F578(v19, v1 + v7, &qword_280A24660, &qword_275AEAC60);
  swift_endAccess();
  v20 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetCatalogDownloadMillis);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  swift_beginAccess();
  *v9 = v21;
  *(v9 + 8) = v20;
  v22 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetRefreshAssetMillis);
  swift_beginAccess();
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  swift_beginAccess();
  *v10 = v23;
  *(v10 + 8) = v22;
  v24 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__cliActivityState;
  swift_beginAccess();
  v25 = v44;
  sub_275A5F510(a1 + v24, v44, &qword_280A24668, &qword_275AE7970);
  v26 = v41;
  swift_beginAccess();
  sub_275A5F578(v25, v1 + v26, &qword_280A24668, &qword_275AE7970);
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastPflDataCollectionMillis);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v13 = v28;
  *(v13 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastShadowEvaluationMillis);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = v42;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  v32 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastIndXpcCallMillis);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v43;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore11DaemonStateP33_2A0DC0A89865E30885B8740471623FFF13_StorageClass__lastMobileAssetDownloadActivityRunMillis);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v45;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  return v1;
}

uint64_t sub_275A5F510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_275A5F578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_275A5F5E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_275A5F9B0(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_275A5FA94(uint64_t a1)
{
  sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF68, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_275A5FBE4(319, &qword_281412450, type metadata accessor for LitmusInfo);
      if (v3 <= 0x3F)
      {
        sub_275A56BFC(319, &qword_28140FF48, MEMORY[0x277D84A28]);
        if (v4 <= 0x3F)
        {
          sub_275A5FBE4(319, &qword_281412150, type metadata accessor for QuotaServerState);
          if (v5 <= 0x3F)
          {
            sub_275A56BFC(319, &qword_28140FF88, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_275A5FBE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_275AE5944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275A5FC60(uint64_t a1)
{
  result = sub_275AE52A4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DaemonState._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_275A5FCEC(uint64_t a1)
{
  sub_275A5FBE4(319, &qword_2814120E0, type metadata accessor for NotificationState);
  if (v1 <= 0x3F)
  {
    sub_275A5FBE4(319, &qword_2814121C0, type metadata accessor for CliActivityState);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_275A5FE04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OS_dispatch_group.wait(timeDelta:)(uint64_t a1)
{
  v2 = sub_275AE55B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_275AE5624();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_275AE5604();
  *v5 = a1 / 1000;
  (*(v3 + 104))(v5, *MEMORY[0x277D85188], v2);
  sub_275AE5614();
  LOBYTE(a1) = sub_275AE58B4();
  v13 = *(v7 + 8);
  v13(v10, v6);
  (*(v3 + 8))(v5, v2);
  v13(v12, v6);
  return a1 & 1;
}

uint64_t static HexCodec.toHex(_:)(unint64_t a1, unint64_t a2)
{
  sub_275A6012C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24700, &unk_275AE7E40);
  sub_275A604A8();
  sub_275AE5654();

  v2 = sub_275AE56F4();

  return v2;
}

uint64_t sub_275A6012C(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_275A850AC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_275AE50A4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_275AE50D4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_275AE50A4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_275AE50D4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24710, &unk_275AE7E60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_275AE7E30;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_275AE56B4();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_275A850AC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}