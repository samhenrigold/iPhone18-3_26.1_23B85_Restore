void *sub_222B3B1A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_222B3B1C0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_222B3B218()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222B3B300@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_222B3B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_222B3B460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_222B3B5C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222C935EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_222B3B670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_222C935EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222B3B720()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222B3B758()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222B3B7A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222B3B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_222B3B8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222B3BA04(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_222B3BB34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_222B3BC64()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222B3BCAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_222B3BDDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_222B3BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

    return (v10 + 1);
  }
}

uint64_t sub_222B3BFDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3C190(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_222B3C2F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222B3C454()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222B3C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_222B3C5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222B3C6F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_222B3C820(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_222B3C954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222B3CA20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

__n128 sub_222B3CB24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_222B3CB30(void *a1)
{
  sub_222C947FC();

  return swift_getWitnessTable();
}

uint64_t sub_222B3CB88(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_222B3CC2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_222C9367C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222B3CCD0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222B3CD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

uint64_t sub_222B3CDD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
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

uint64_t sub_222B3CEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3CF80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3D03C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222B3D0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_222C9367C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_222B3D168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_222C9367C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222B3D20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_222B3D33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_222B3D46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222B3D4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_222B3D554()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222B3D58C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B8, &qword_222C9DBE0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[15];
  v7 = sub_222C932BC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_222B3D6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B3D734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B3D79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B3D80C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222B3D854()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_222B3D8FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_222B3D908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C938CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3D934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C9389C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3D960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C938BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3D98C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C938AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3D9B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C938DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3D9E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222C9388C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222B3DA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

uint64_t sub_222B3DAF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
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

uint64_t sub_222B3DBB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_222B3DC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3DCC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3DD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_222B3DEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222B3DFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

uint64_t sub_222B3E078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
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

uint64_t sub_222B3E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3E1F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

uint64_t sub_222B3E378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
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

uint64_t sub_222B3E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3E534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

    return (v10 + 1);
  }
}

uint64_t sub_222B3E6B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference26PlusContactSuggestionStore_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222B3E79C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222B3E7DC()
{
  v1 = sub_222C935EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222B3E864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222B3E934()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222B3E96C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222C935EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_222B3EA18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_222C935EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222B3EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
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

    return (v10 + 1);
  }
}

uint64_t sub_222B3EB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3EC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MediaPlayClassification(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_222C9367C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_222B3ED94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for MediaPlayClassification(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_222C9367C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_222B3EF54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222B3F014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222B3F04C()
{
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_222C93FAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_222B3F1B0()
{
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_222C93FAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_222B3F314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027A48, qword_222CA5E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222B3F3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3F464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3F51C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222B3F574()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222B3F5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222B3F68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222B3F744(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v11 = *(a1 + a3[5]);
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a1 + a3[5]);
    }

    v13 = v12 - 3;
    if (v11 >= 3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D00, &qword_222CA7170);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v16 = *(v15 - 8);
    v17 = a3[8];
LABEL_14:
    v9 = *(v16 + 48);
    v10 = a1 + v17;
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D08, &qword_222CA7178);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v16 = *(v18 - 8);
    v17 = a3[9];
    goto LABEL_14;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D10, &qword_222CA7180);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_222B3F928(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_222C9367C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5]) = a2 + 3;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D00, &qword_222CA7170);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D08, &qword_222CA7178);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D10, &qword_222CA7180);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_222B3FB0C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222B3FB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C932BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222B3FBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C932BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_222B3FC38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaSuggestion];
  *a2 = result;
  return result;
}

id sub_222B3FC88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sourceApp];
  *a2 = result;
  return result;
}

id sub_222B3FCD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storefront];
  *a2 = result;
  return result;
}

id sub_222B3FD30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appMediaReferences];
  *a2 = result;
  return result;
}

id sub_222B3FD88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUpdated];
  *a2 = v4;
  return result;
}

id sub_222B3FE18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 score];
  *a2 = v4;
  return result;
}

id sub_222B3FEA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_222B3FEE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributingGroundTruth];
  *a2 = result;
  return result;
}

id sub_222B3FF38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inferredMediaReference];
  *a2 = result;
  return result;
}

id sub_222B3FF88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tags];
  *a2 = result;
  return result;
}

id sub_222B3FFF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taggedItem];
  *a2 = result;
  return result;
}

id sub_222B400C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storefrontMediaReferences];
  *a2 = result;
  return result;
}

id sub_222B40128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plusMediaSuggestion];
  *a2 = result;
  return result;
}

id sub_222B401F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactSuggestion];
  *a2 = result;
  return result;
}

id sub_222B402D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 score];
  *a2 = v4;
  return result;
}

id sub_222B40358@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_222B403E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributingGroundTruth];
  *a2 = result;
  return result;
}

id sub_222B40430@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inferredContactReference];
  *a2 = result;
  return result;
}

id sub_222B40480@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tags];
  *a2 = result;
  return result;
}

id sub_222B404E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taggedItem];
  *a2 = result;
  return result;
}

id sub_222B40550@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plusContactSuggestion];
  *a2 = result;
  return result;
}

uint64_t sub_222B405A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222B40640()
{
  type metadata accessor for TimeBasedPlayMediaStitcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024930, &qword_222C96300);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D024638 = 91;
  unk_27D024640 = 0xE100000000000000;
  return result;
}

uint64_t TimeBasedPlayMediaStitcher.__allocating_init(maximumTimeDeltaBetweenTurns:)(double a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TimeBasedPlayMediaStitcher.init(maximumTimeDeltaBetweenTurns:)(double a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_222B4070C(uint64_t *a1, uint64_t *a2)
{
  v84 = a2;
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v86 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v77 - v7;
  MEMORY[0x28223BE20](v8);
  v82 = v77 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v77 - v11;
  MEMORY[0x28223BE20](v13);
  v83 = v77 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = v77 - v16;
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v19 = 0;
    v77[0] = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20 = v17 + v77[0];
    v87 = v3;
    v79 = v18;
    v80 = v4;
    v78 = v17 + v77[0];
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v21 = *(v4 + 72);
      sub_222B440DC(v20 + v21 * v19, v12, type metadata accessor for FeaturisedTurn);
      v22 = sub_222B41678(*&v12[*(v3 + 24)], MEMORY[0x277D5FB28]);
      if (v22)
      {
        break;
      }

LABEL_4:
      ++v19;
      sub_222B44144(v12, type metadata accessor for FeaturisedTurn);
      if (v19 == v18)
      {
        goto LABEL_32;
      }
    }

    v23 = v22;
    v85 = v21;
    v24 = (v22 + 40);
    v25 = -*(v22 + 16);
    v26 = -1;
    do
    {
      if (v25 + v26 == -1)
      {

        v3 = v87;
        v18 = v79;
        v4 = v80;
        v20 = v78;
        goto LABEL_4;
      }

      if (++v26 >= *(v23 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v27 = v24 + 2;
      v29 = *(v24 - 1);
      v28 = *v24;

      LOBYTE(v29) = sub_222B42DF0(0xD000000000000024, 0x8000000222CA8650, v29, v28);

      v24 = v27;
    }

    while ((v29 & 1) == 0);

    v30 = v83;
    sub_222B441A4(v12, v83, type metadata accessor for FeaturisedTurn);
    sub_222B441A4(v30, v88, type metadata accessor for FeaturisedTurn);
    v31 = v85;
    v32 = *v84;
    v33 = *(*v84 + 16);
    v35 = v86;
    v34 = v87;
    if (!v33)
    {
LABEL_31:
      sub_222B44144(v88, type metadata accessor for FeaturisedTurn);
      goto LABEL_32;
    }

    v36 = 0;
    v37 = (v32 + v77[0]);
    v84 = (v32 + v77[0]);
    while (1)
    {
      if (v36 >= *(v32 + 16))
      {
        goto LABEL_56;
      }

      sub_222B440DC(v37 + v36 * v31, v35, type metadata accessor for FeaturisedTurn);
      v38 = sub_222B41678(*(v35 + *(v34 + 24)), MEMORY[0x277D5FB28]);
      if (v38)
      {
        break;
      }

LABEL_14:
      ++v36;
      sub_222B44144(v35, type metadata accessor for FeaturisedTurn);
      if (v36 == v33)
      {
        goto LABEL_31;
      }
    }

    v39 = v38;
    v40 = (v38 + 40);
    v41 = -*(v38 + 16);
    v42 = -1;
    do
    {
      if (v41 + v42 == -1)
      {

        v35 = v86;
        v34 = v87;
        v37 = v84;
        v31 = v85;
        goto LABEL_14;
      }

      if (++v42 >= *(v39 + 16))
      {
        goto LABEL_54;
      }

      v43 = v40 + 2;
      v45 = *(v40 - 1);
      v44 = *v40;

      LOBYTE(v45) = sub_222B42DF0(0xD000000000000024, 0x8000000222CA8650, v45, v44);

      v40 = v43;
    }

    while ((v45 & 1) == 0);

    v46 = v81;
    sub_222B441A4(v86, v81, type metadata accessor for FeaturisedTurn);
    v47 = v82;
    sub_222B441A4(v46, v82, type metadata accessor for FeaturisedTurn);
    v48 = v87;
    v49 = sub_222B414C4(*(v88 + *(v87 + 24)), MEMORY[0x277D5FC88]);
    if (v50 & 1) != 0 || (v51 = *&v49, v52 = COERCE_DOUBLE(sub_222B414C4(*(v47 + *(v48 + 24)), MEMORY[0x277D5FC98])), (v53))
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v54 = sub_222C9431C();
      __swift_project_value_buffer(v54, qword_280FE2340);
      v55 = sub_222C942FC();
      v56 = sub_222C94A4C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v89 = v58;
        *v57 = 136315138;
        if (qword_27D024630 != -1)
        {
          swift_once();
        }

        *(v57 + 4) = sub_222B437C0(qword_27D024638, unk_27D024640, &v89);
        _os_log_impl(&dword_222B39000, v55, v56, "%s Failed to measure time between turns", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x223DCA8C0](v58, -1, -1);
        v59 = v57;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v66 = v52 - v51;
    v67 = *(v77[1] + 16);
    if (v52 - v51 > v67)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v68 = sub_222C9431C();
      __swift_project_value_buffer(v68, qword_280FE2340);

      v55 = sub_222C942FC();
      v69 = sub_222C94A3C();

      if (os_log_type_enabled(v55, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v89 = v71;
        *v70 = 136315650;
        if (qword_27D024630 != -1)
        {
          swift_once();
        }

        *(v70 + 4) = sub_222B437C0(qword_27D024638, unk_27D024640, &v89);
        *(v70 + 12) = 2048;
        *(v70 + 14) = v66;
        *(v70 + 22) = 2048;
        *(v70 + 24) = v67;
        _os_log_impl(&dword_222B39000, v55, v69, "%s Turns too far apart for sessions to be stitched (%fs, max: %fs)", v70, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x223DCA8C0](v71, -1, -1);
        v59 = v70;
LABEL_29:
        MEMORY[0x223DCA8C0](v59, -1, -1);
      }

LABEL_30:

      sub_222B44144(v47, type metadata accessor for FeaturisedTurn);
      sub_222B44144(v88, type metadata accessor for FeaturisedTurn);
      return 0;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v72 = sub_222C9431C();
    __swift_project_value_buffer(v72, qword_280FE2340);
    v73 = sub_222C942FC();
    v74 = sub_222C94A3C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89 = v76;
      *v75 = 136315138;
      if (qword_27D024630 != -1)
      {
        swift_once();
      }

      *(v75 + 4) = sub_222B437C0(qword_27D024638, unk_27D024640, &v89);
      _os_log_impl(&dword_222B39000, v73, v74, "%s Validation passed, stitching two relevant sessions together", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x223DCA8C0](v76, -1, -1);
      MEMORY[0x223DCA8C0](v75, -1, -1);
    }

    sub_222B44144(v47, type metadata accessor for FeaturisedTurn);
    sub_222B44144(v88, type metadata accessor for FeaturisedTurn);
    return 1;
  }

  else
  {
LABEL_32:
    if (qword_280FDFE78 != -1)
    {
LABEL_57:
      swift_once();
    }

    v60 = sub_222C9431C();
    __swift_project_value_buffer(v60, qword_280FE2340);
    v61 = sub_222C942FC();
    v62 = sub_222C94A4C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v89 = v64;
      *v63 = 136315138;
      if (qword_27D024630 != -1)
      {
        swift_once();
      }

      *(v63 + 4) = sub_222B437C0(qword_27D024638, unk_27D024640, &v89);
      _os_log_impl(&dword_222B39000, v61, v62, "%s No adjacent play media turns", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x223DCA8C0](v64, -1, -1);
      MEMORY[0x223DCA8C0](v63, -1, -1);
    }

    return 0;
  }
}

uint64_t (*sub_222B41174@<X0>(uint64_t (*result)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(uint64_t *)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 64);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v16 = *(v8 - 4);
      *&v17 = v11;
      *(&v17 + 1) = v12;
      v18 = v9;
      v19 = v10;

      v13 = v7(&v16);
      if (v4)
      {
      }

      v14 = v13;
      result = v19;
      if (v14)
      {
        break;
      }

      v8 += 5;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v15 = v18;
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 24) = v15;
    *(a3 + 32) = result;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_222B412BC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v23 = v12;
    v24 = a5;
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    while (1)
    {
      sub_222B440DC(v17, v15, a4);
      v19 = a1(v15);
      if (v5)
      {
        return sub_222B44144(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_222B44144(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a5 = v24;
        goto LABEL_10;
      }
    }

    a5 = v24;
    sub_222B441A4(v15, v24, a4);
    v20 = 0;
LABEL_10:
    v12 = v23;
  }

  else
  {
    v20 = 1;
  }

  return (*(v11 + 56))(a5, v20, 1, v12, v13);
}

uint64_t sub_222B414C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  return 0;
}

uint64_t sub_222B41678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  return 0;
}

double sub_222B4183C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for PlayMediaFeature.PrimaryMediaItem(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    type metadata accessor for PlayMediaFeature.PrimaryMediaItem(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return result;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  result = 0.0;
  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_222B419B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for PlayMediaFeature.PrimaryMediaItemMetadata(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    type metadata accessor for PlayMediaFeature.PrimaryMediaItemMetadata(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      return sub_222B43FA4(v9);
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  result = sub_222B43FA4(v6);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 768;
  return result;
}

uint64_t sub_222B41B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v2, &v5);
      sub_222B43E3C(&v5, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_222B43F34(v7, &v5);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v7);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_222B43FA4(v7);
    v4 = &v5;
  }

  sub_222B43FA4(v4);
  return 0;
}

uint64_t sub_222B41D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  return 0;
}

uint64_t sub_222B4202C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v8, &v13);
      sub_222B43E3C(&v13, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v13);
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v13, v15);
  }

  else
  {
LABEL_5:
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_222B43F34(v15, &v13);
  if (!v14)
  {
    sub_222B43FA4(v15);
    v10 = &v13;
LABEL_12:
    sub_222B43FA4(v10);
    v9 = 1;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v15;
    goto LABEL_12;
  }

  sub_222C93EFC();

  sub_222B43FA4(v15);
  v9 = 0;
LABEL_13:
  v11 = a3(0);
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

double sub_222B42228@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for PlayMediaFeature.NowPlayingEvent(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    type metadata accessor for PlayMediaFeature.NowPlayingEvent(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return result;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_222B424A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  return 2;
}

double sub_222B42624@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for NowPlayingFeatures.MediaType(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    type metadata accessor for NowPlayingFeatures.MediaType(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return result;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  result = 0.0;
  *a2 = xmmword_222C95FF0;
  return result;
}

uint64_t sub_222B42890@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v8, &v11);
      sub_222B43E3C(&v11, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v11, v13);
  }

  else
  {
LABEL_5:
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  sub_222B43F34(v13, &v11);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      return sub_222B43FA4(v13);
    }

    v10 = v13;
  }

  else
  {
    sub_222B43FA4(v13);
    v10 = &v11;
  }

  result = sub_222B43FA4(v10);
  *a4 = a3;
  return result;
}

uint64_t sub_222B42A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v7);
      sub_222B43E3C(&v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_222B43F34(v9, &v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_222C93EFC();

      sub_222B43FA4(v9);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_222B43FA4(v9);
    v6 = &v7;
  }

  sub_222B43FA4(v6);
  return 0;
}

unint64_t sub_222B42C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_222B43E3C(v4, &v9);
      sub_222B43E3C(&v9, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v9);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_222B405A0(&v9, v11);
  }

  else
  {
LABEL_5:
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  sub_222B43F34(v11, &v9);
  if (!v10)
  {
    sub_222B43FA4(v11);
    v7 = &v9;
LABEL_12:
    sub_222B43FA4(v7);
    v6 = 0;
    v5 = 1;
    return v6 | (v5 << 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = v11;
    goto LABEL_12;
  }

  sub_222C93EFC();

  sub_222B43FA4(v11);
  v5 = 0;
  v6 = v9;
  return v6 | (v5 << 32);
}

uint64_t sub_222B42DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_222C9459C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_222C9459C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_222C951FC();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_222C9459C();
      v7 = v9;
    }

    while (v9);
  }

  sub_222C9459C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_222B42F4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_222B42FF8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_222B430A8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 40);
    do
    {
      v9 = v7;
      v10 = v8[4];
      v12 = *v8;
      v11 = v8[1];
      v15[0] = *(v8 - 1);
      v15[1] = v12;
      v15[2] = v11;
      v16 = *(v8 + 1);
      v17 = v10;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 6;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222B431F4()
{
  sub_222C952FC();
  sub_222C9532C();
  return sub_222C9534C();
}

uint64_t sub_222B43268(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9532C();
  return sub_222C9534C();
}

uint64_t sub_222B432BC(uint64_t a1)
{
  v2 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_222B43328(uint64_t a1)
{
  v2 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_222B43394(void *a1, uint64_t a2)
{
  v4 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_222B43448(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_222B434C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222C952FC();
  sub_222C9441C();
  return sub_222C9534C();
}

uint64_t sub_222B43524(uint64_t a1)
{
  v2 = sub_222B4434C(&qword_27D024970, type metadata accessor for CNError, &unk_222C965FC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_222B43590(uint64_t a1)
{
  v2 = sub_222B4434C(&qword_27D024970, type metadata accessor for CNError, &unk_222C965FC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_222B43600(uint64_t a1)
{
  v2 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_222B4366C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B4434C(&qword_27D0249A8, type metadata accessor for CNError, &unk_222C96640);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_222B436F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_222B43764(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_222B437C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_222B437C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_222B4388C(v11, 0, 0, 1, a1, a2);
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
    sub_222B4420C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_222B4388C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_222B43998(a5, a6);
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
    result = sub_222C94DCC();
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

void *sub_222B43998(uint64_t a1, unint64_t a2)
{
  v3 = sub_222B439E4(a1, a2);
  sub_222B43B14(&unk_283607088);
  return v3;
}

void *sub_222B439E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_222C40C90(v5, 0);
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

  result = sub_222C94DCC();
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
        v10 = sub_222C945AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_222C40C90(v10, 0);
        result = sub_222C94D0C();
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

uint64_t sub_222B43B14(uint64_t result)
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

  result = sub_222B43C00(result, v11, 1, v3);
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

char *sub_222B43C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024928, qword_222CA45D0);
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

_BYTE **sub_222B43CF4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_222B43D2C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_222B43E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_222B43F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B43FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_222B4400C(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5))(void *)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    LOBYTE(v7) = 0;
    return (v7 & 1);
  }

  else
  {
    v8 = result;
    if (a4 <= v6)
    {
      v9 = a5 >> 1;
    }

    else
    {
      v9 = a4;
    }

    v10 = v9 - a4;
    v11 = (a3 + 16 * a4 + 8);
    v12 = ~a4 + v6;
    while (v10)
    {
      v13 = *v11;
      v15[0] = *(v11 - 1);
      v15[1] = v13;

      v7 = v8(v15);

      if (!v5)
      {
        v14 = v12 != 0;
        --v10;
        v11 += 2;
        --v12;
        if (v14 & ~v7)
        {
          continue;
        }
      }

      return (v7 & 1);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222B440DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B44144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B441A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B4420C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222B4434C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222B444C8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_222B44560()
{
  result = qword_27D024998;
  if (!qword_27D024998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D024998);
  }

  return result;
}

uint64_t sub_222B44678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v55 = a3;
  v54 = a1;
  v56 = a7;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for QuickHangupClassification(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4[1];
  v51 = *a4;
  v18 = a4[3];
  v50 = a4[2];
  v49 = v18;
  v19 = a5[1];
  v58 = *a5;
  v20 = a5[2];
  v21 = a5[3];
  v57 = v20;
  sub_222B43E3C(a2, &v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
  if (swift_dynamicCast())
  {
    sub_222B452F0(v16, type metadata accessor for QuickHangupClassification);
    v22 = 0;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0Tm(&v61);
    v52 = v19;
    sub_222B44C24(v58, v19, v53, &qword_27D024B58, &qword_222C96818, &v61);
    v24 = *(&v61 + 1);
    v23 = v61;
    v25 = v62;
    v26 = v63;
    (*(v11 + 16))(v13, v54, v10);
    if (v17)
    {
      v54 = v11;
      v27 = v13;
      v28 = v10;
      v29 = v21;
      v30 = v22;
      v31 = v49;

      sub_222B450E8(v23, v24, v25, v26);
      v23 = v51;
      v25 = v50;
      v26 = v31;
      v22 = v30;
      v21 = v29;
      v10 = v28;
      v13 = v27;
      v11 = v54;
    }

    else
    {
      v17 = v24;
    }

    v32 = v56;
    (*(v11 + 32))(v56, v13, v10);
    v33 = type metadata accessor for PhoneCallGroundTruth(0);
    *(v32 + v33[5]) = v22;
    *(v32 + v33[6]) = v55;
    v34 = (v32 + v33[7]);
    *v34 = v23;
    v34[1] = v17;
    v34[2] = v25;
    v34[3] = v26;
    v35 = (v32 + v33[8]);
    v36 = v52;
    *v35 = v58;
    v35[1] = v36;
    v35[2] = v57;
    v35[3] = v21;
    (*(*(v33 - 1) + 56))(v32, 0, 1, v33);
  }

  if (swift_dynamicCast())
  {

    v22 = 1;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v61);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v38 = sub_222C9431C();
  __swift_project_value_buffer(v38, qword_280FE2340);
  sub_222B45038(a2, &v61);
  v39 = sub_222C942FC();
  v40 = sub_222C94A4C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315138;
    sub_222B45038(&v61, v59);
    v43 = sub_222C944EC();
    v45 = v44;
    sub_222B45094(&v61);
    v46 = sub_222B437C0(v43, v45, &v60);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_222B39000, v39, v40, "Failed to derive ground truth type from followup event for classification=%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x223DCA8C0](v42, -1, -1);
    MEMORY[0x223DCA8C0](v41, -1, -1);
  }

  else
  {

    sub_222B45094(&v61);
  }

  v47 = type metadata accessor for PhoneCallGroundTruth(0);
  return (*(*(v47 - 8) + 56))(v56, 1, 1, v47);
}

void sub_222B44C24(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, _OWORD *a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v43 = a2;
  v44 = a6;
  v8 = type metadata accessor for EntityPromptClassification(0) - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_19:
    v25 = (v15 + 40);
    v26 = *(v15 + 2) + 1;
    v27 = v43;
    while (1)
    {
      if (!--v26)
      {

        v29 = v44;
        *v44 = 0u;
        v29[1] = 0u;
        return;
      }

      v13 = *(v25 - 1);
      v11 = *v25;
      if (v13 == a1 && v11 == v27)
      {
        break;
      }

      v25 += 2;
      if (sub_222C951FC())
      {
        goto LABEL_29;
      }
    }

    v13 = a1;
LABEL_29:

    if (qword_280FDFE78 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_222B4528C(v13, v11);
    v16 = *(v11 + 4);

    sub_222B452F0(v11, type metadata accessor for EntityPromptClassification);
    v17 = *(v16 + 16);
    v18 = *(v15 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v15 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v15 = sub_222B49E84(isUniquelyReferenced_nonNull_native, v21, 1, v15);
      if (*(v16 + 16))
      {
LABEL_14:
        if ((*(v15 + 3) >> 1) - *(v15 + 2) < v17)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = *(v15 + 2);
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_36;
          }

          *(v15 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_34;
    }

LABEL_4:
    v13 += v14;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_30:
  v30 = sub_222C9431C();
  __swift_project_value_buffer(v30, qword_280FE2340);
  v31 = v42;

  v32 = sub_222C942FC();
  v33 = sub_222C94A4C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136315138;
    v47 = 0xE100000000000000;
    v48 = v35;
    v45 = *v31;
    v46 = 91;
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    v36 = sub_222C944EC();
    MEMORY[0x223DC9330](v36);

    MEMORY[0x223DC9330](8285, 0xE200000000000000);
    v37 = sub_222B437C0(v46, v47, &v48);

    *(v34 + 4) = v37;
    _os_log_impl(&dword_222B39000, v32, v33, "%s Found circular entity reference - adding to ground truth", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x223DCA8C0](v35, -1, -1);
    MEMORY[0x223DCA8C0](v34, -1, -1);
  }

  v38 = v44;
  *v44 = v13;
  v38[1] = v11;
  v38[2] = 0;
  v38[3] = 0;
}

void sub_222B450E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_222B4512C(uint64_t a1, uint64_t a2)
{
  result = sub_222B451F4(&qword_27D024B48, a2, type metadata accessor for PhoneCallInAppFollowupGroundTruthGenerator, &protocol conformance descriptor for PhoneCallInAppFollowupGroundTruthGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222B451F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B4528C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPromptClassification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B452F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B45350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B70, &qword_222C96868);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D024B60 = 91;
  *algn_27D024B68 = 0xE100000000000000;
  return result;
}

BOOL sub_222B453E4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v2 = sub_222B417F4(v1);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_222B4180C(v1);
  if (!v4)
  {

LABEL_6:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      if (qword_27D024648 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D024B60, *algn_27D024B68, &v15);
      _os_log_impl(&dword_222B39000, v11, v12, "%s Missing ASR turns when identifying wake word only turn", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v3 + 16);

  if (v6 < v7)
  {
    v8 = *(v5 + 16);

    return v8 == 0;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for NoOpTurnIdentifier(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NoOpTurnIdentifier(_WORD *result, int a2, int a3)
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

uint64_t sub_222B456AC()
{
  type metadata accessor for FirstPartyEventStreamProcessor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B78, &unk_222C968F0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD468 = 91;
  *algn_280FDD470 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B4576C(uint64_t a1)
{
  v2 = sub_222B45C74(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_222B457CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = sub_222B41824(v4);
  if (v7)
  {
    v8 = v7;
    v29 = v6;
    v9 = sub_222B42DF0(0x6C7070612E6D6F63, 0xE900000000000065, v6, v7);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);

    v11 = sub_222C942FC();
    v12 = sub_222C94A3C();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = v2;
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v13 = 136315906;
      if (qword_280FDD460 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_280FDD468, *algn_280FDD470, v32);
      *(v13 + 12) = 2080;
      if (v9)
      {
        v14 = 1953523019;
      }

      else
      {
        v14 = 0x6465766F6D6552;
      }

      v15 = v9;
      if (v9)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE700000000000000;
      }

      v17 = sub_222B437C0(v14, v16, v32);
      v9 = v15;

      *(v13 + 14) = v17;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_222B437C0(v30, v1, v32);
      *(v13 + 32) = 2080;
      v18 = sub_222B437C0(v29, v8, v32);

      *(v13 + 34) = v18;
      _os_log_impl(&dword_222B39000, v11, v12, "%s %s %s with bundleID '%s'", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();

    if (os_log_type_enabled(v20, v21))
    {
      v31 = v2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315394;
      if (qword_280FDD460 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_222B437C0(qword_280FDD468, *algn_280FDD470, &v33);
      *(v22 + 12) = 2080;
      v32[0] = v31;
      v32[1] = v1;
      v32[2] = v4;
      v32[3] = v3;
      v32[4] = v5;

      v24 = sub_222C944EC();
      v26 = sub_222B437C0(v24, v25, &v33);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_222B39000, v20, v21, "%s Removed event due to missing bundleID %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_222B45C74(uint64_t a1)
{
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v2 = sub_222C9431C();
  __swift_project_value_buffer(v2, qword_280FE2340);

  v3 = sub_222C942FC();
  v4 = sub_222C94A3C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315394;
    if (qword_280FDD460 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_280FDD468, *algn_280FDD470, &v23);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(a1 + 16);

    _os_log_impl(&dword_222B39000, v3, v4, "%s Processing %ld events", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x223DCA8C0](v6, -1, -1);
    MEMORY[0x223DCA8C0](v5, -1, -1);

    v7 = *(a1 + 16);
    if (v7)
    {
      goto LABEL_7;
    }

    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v8 = (a1 + 64);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = *(v8 - 1);
    v11 = *v8;
    v12 = *(v8 - 3);
    v13 = *(v8 - 2);
    v23 = *(v8 - 4);
    *&v24 = v12;
    *(&v24 + 1) = v13;
    v25 = v10;
    v26 = v11;

    if (sub_222B457CC(&v23))
    {
      v14 = v23;
      v22 = v24;
      v15 = v25;
      v16 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C374(0, *(v9 + 16) + 1, 1);
        v9 = v27;
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_222B4C374((v18 > 1), v19 + 1, 1);
        v9 = v27;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 40 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v22;
      *(v20 + 56) = v15;
      *(v20 + 64) = v16;
    }

    else
    {
    }

    v8 += 5;
    --v7;
  }

  while (v7);
  return v9;
}

uint64_t sub_222B45FE0()
{
  type metadata accessor for INPlayMediaIntentFeatureExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025010, &qword_222C96DC8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D024B80 = 91;
  *algn_27D024B88 = 0xE100000000000000;
  return result;
}

void *INPlayMediaIntentFeatureExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for AdamIdExtractor();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v0[5] = v1;
  v0[6] = &off_28360E4B8;
  v0[2] = v2;
  return v0;
}

void *INPlayMediaIntentFeatureExtractor.init()()
{
  v1 = type metadata accessor for AdamIdExtractor();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v0[5] = v1;
  v0[6] = &off_28360E4B8;
  v0[2] = v2;
  return v0;
}

void *INPlayMediaIntentFeatureExtractor.__allocating_init(adamIdExtractor:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for AdamIdExtractor();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v2[5] = v3;
  v2[6] = &off_28360E4B8;
  v2[2] = v4;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
  sub_222B405A0(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

void *INPlayMediaIntentFeatureExtractor.init(adamIdExtractor:)(__int128 *a1)
{
  v3 = type metadata accessor for AdamIdExtractor();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v1[5] = v3;
  v1[6] = &off_28360E4B8;
  v1[2] = v4;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
  sub_222B405A0(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_222B46264(uint64_t a1)
{
  *(v2 + 664) = v1;
  *(v2 + 656) = a1;
  return MEMORY[0x2822009F8](sub_222B46288, 0, 0);
}

uint64_t sub_222B46288()
{
  v23 = v0;
  sub_222B4F988(*(v0 + 656), &v20);
  v1 = v20;
  *(v0 + 672) = v20;
  v2 = v22;
  *(v0 + 680) = v21;
  *(v0 + 696) = v2;
  if (v1)
  {
    v3 = *(v0 + 656);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    v4 = swift_allocObject();
    *(v0 + 712) = v4;
    *(v4 + 16) = xmmword_222C96900;
    v5 = type metadata accessor for CommonFeature.EventType(0);
    swift_allocObject();
    *(v0 + 608) = 0xD000000000000011;
    *(v0 + 616) = 0x8000000222CA87C0;
    v6 = sub_222C93EEC();
    *(v4 + 56) = v5;
    *(v4 + 64) = sub_222B4FD34(&qword_27D026370, type metadata accessor for CommonFeature.EventType);
    *(v4 + 32) = v6;
    v7 = [v3 playbackQueueLocation];
    v8 = type metadata accessor for PlayMediaFeature.PlaybackQueueLocation(0);
    swift_allocObject();
    *(v0 + 632) = v7;
    v9 = sub_222C93EEC();
    *(v4 + 96) = v8;
    *(v4 + 104) = sub_222B4FD34(&qword_27D024B90, type metadata accessor for PlayMediaFeature.PlaybackQueueLocation);
    *(v4 + 72) = v9;
    v10 = swift_task_alloc();
    *(v0 + 720) = v10;
    *v10 = v0;
    v10[1] = sub_222B465FC;
    v11 = *(v0 + 656);

    return sub_222B477DC(v1, v11);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      if (qword_27D024658 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_222B437C0(qword_27D024B80, *algn_27D024B88, &v20);
      _os_log_impl(&dword_222B39000, v14, v15, "%s No media item found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    swift_unknownObjectRelease();
    v18 = *(v0 + 8);
    v19 = MEMORY[0x277D84F90];

    return v18(v19);
  }
}

uint64_t sub_222B465FC(uint64_t a1)
{
  *(*v1 + 728) = a1;

  return MEMORY[0x2822009F8](sub_222B466FC, 0, 0);
}

uint64_t sub_222B466FC()
{
  v4 = *(v1 + 680);
  v70 = *(v1 + 712);
  sub_222B490F4(*(v1 + 728), &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
  v5 = v70;
  *(v1 + 736) = v70;
  if (!v4)
  {

    goto LABEL_35;
  }

  v6 = *(v1 + 696);
  v7 = *(v1 + 704) >> 1;
  if (v6 == v7)
  {
    v2 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      v3 = 0;
      v9 = MEMORY[0x277D84F90] + 32;
      v0 = MEMORY[0x277D84F90];
      while (v3 < *(v2 + 16))
      {
        v10 = *v9;
        *(v1 + 120) = *(v9 + 16);
        *(v1 + 104) = v10;
        v11 = *(v9 + 32);
        v12 = *(v9 + 48);
        v13 = *(v9 + 64);
        *(v1 + 184) = *(v9 + 80);
        *(v1 + 168) = v13;
        *(v1 + 152) = v12;
        *(v1 + 136) = v11;
        sub_222B4FC6C(v1 + 104, v1 + 192, &qword_27D024B98, &qword_222C96930);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_222B4A12C(0, v0[2] + 1, 1, v0);
        }

        v6 = v0[2];
        v14 = v0[3];
        v5 = (v6 + 1);
        if (v6 >= v14 >> 1)
        {
          v0 = sub_222B4A12C((v14 > 1), v6 + 1, 1, v0);
        }

        ++v3;
        v0[2] = v5;
        v15 = &v0[11 * v6];
        v16 = *(v1 + 120);
        *(v15 + 2) = *(v1 + 104);
        *(v15 + 3) = v16;
        v17 = *(v1 + 136);
        v18 = *(v1 + 152);
        v19 = *(v1 + 168);
        *(v15 + 56) = *(v1 + 184);
        *(v15 + 5) = v18;
        *(v15 + 6) = v19;
        *(v15 + 4) = v17;
        v9 += 88;
        if (v8 == v3)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v0 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = MEMORY[0x277D84F90];

    v2 = v0[2];
    if (v2)
    {
      v27 = (v1 + 280);
      v69 = (v1 + 624);
      sub_222B4C3B4(0, v2, 0);
      v28 = v2 - 1;
      for (i = 4; ; i += 11)
      {
        v30 = *&v0[i + 2];
        *v27 = *&v0[i];
        *(v1 + 296) = v30;
        v31 = *&v0[i + 4];
        v32 = *&v0[i + 6];
        v33 = *&v0[i + 8];
        *(v1 + 360) = v0[i + 10];
        *(v1 + 328) = v32;
        *(v1 + 344) = v33;
        *(v1 + 312) = v31;
        sub_222B4FC6C(v1 + 280, v1 + 368, &qword_27D024B98, &qword_222C96930);
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_222B4C3B4((v34 > 1), v35 + 1, 1);
        }

        *(v26 + 16) = v35 + 1;
        v36 = (v26 + (v35 << 6));
        v37 = *v27;
        v38 = *(v1 + 296);
        v39 = *(v1 + 312);
        *(v36 + 73) = *(v1 + 321);
        v36[3] = v38;
        v36[4] = v39;
        v36[2] = v37;
        if (!v28)
        {
          break;
        }

        --v28;
      }

      v40 = *(v1 + 736);
      v3 = type metadata accessor for PlayMediaFeature.AlternateMediaItems(0);
      swift_allocObject();
      *(v1 + 640) = v26;
      v41 = sub_222C93EEC();
      *(v1 + 552) = v3;
      v6 = sub_222B4FD34(&qword_27D024BA0, type metadata accessor for PlayMediaFeature.AlternateMediaItems);
      *(v1 + 560) = v6;
      *(v1 + 528) = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 624) = v40;
      v5 = *(v1 + 736);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v66 = *(v1 + 672);

    swift_unknownObjectRelease();
    v5 = *(v1 + 736);
LABEL_35:
    v67 = *(v1 + 8);

    return v67(v5);
  }

  if (v6 >= v7)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    v5 = sub_222B4C148(0, v5[2] + 1, 1, v5, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
    *v69 = v5;
LABEL_25:
    v44 = v5[2];
    v43 = v5[3];
    if (v44 >= v43 >> 1)
    {
      v5 = sub_222B4C148((v43 > 1), v44 + 1, 1, v5, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
      *v69 = v5;
    }

    v45 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 528, v3);
    v46 = *(v3 - 8);
    v47 = swift_task_alloc();
    (*(v46 + 16))(v47, v45, v3);
    sub_222B4F8F0(v44, v47, v69, v3, v6);
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 528));

    v71 = MEMORY[0x277D84F90];
    sub_222B4C394(0, v2, 0);
    v48 = 0;
    v49 = *(v71 + 16);
    v50 = 24 * v49;
    do
    {
      v51 = *&v0[v48 + 12];
      v52 = v0[v48 + 14];
      v53 = *(v71 + 24);
      v54 = v49 + 1;
      if (v49 >= v53 >> 1)
      {
        v68 = *&v0[v48 + 12];
        sub_222B4C394((v53 > 1), v49 + 1, 1);
        v51 = v68;
      }

      *(v71 + 16) = v54;
      v55 = v71 + v50;
      *(v55 + 32) = v51;
      *(v55 + 48) = v52;
      v50 += 24;
      v48 += 11;
      v49 = v54;
      --v2;
    }

    while (v2);

    v56 = type metadata accessor for PlayMediaFeature.AlternateMediaItemsMetadata(0);
    swift_allocObject();
    *(v1 + 648) = v71;
    v57 = sub_222C93EEC();
    *(v1 + 592) = v56;
    v58 = sub_222B4FD34(&qword_27D024BA8, type metadata accessor for PlayMediaFeature.AlternateMediaItemsMetadata);
    *(v1 + 600) = v58;
    *(v1 + 568) = v57;
    *(v1 + 624) = v5;
    v60 = v5[2];
    v59 = v5[3];
    v61 = *(v1 + 672);
    if (v60 >= v59 >> 1)
    {
      v5 = sub_222B4C148((v59 > 1), v60 + 1, 1, v5, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);

      swift_unknownObjectRelease();
      *(v1 + 624) = v5;
      v56 = *(v1 + 592);
      v62 = *(v1 + 600);
    }

    else
    {
      v62 = v58;

      swift_unknownObjectRelease();
    }

    v63 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 568, v56);
    v64 = *(v56 - 8);
    v65 = swift_task_alloc();
    (*(v64 + 16))(v65, v63, v56);
    sub_222B4F8F0(v60, v65, v69, v56, v62);
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 568));

    goto LABEL_35;
  }

  v20 = *(v1 + 688);
  *(v1 + 752) = MEMORY[0x277D84F90];
  *(v1 + 744) = v6;
  swift_unknownObjectRetain();
  v21 = *(v20 + 8 * v6);
  *(v1 + 760) = v21;
  v22 = v21;
  v23 = swift_task_alloc();
  *(v1 + 768) = v23;
  *v23 = v1;
  v23[1] = sub_222B46EB0;
  v24 = *(v1 + 656);

  return sub_222B480D4(v1 + 16, v22, v24, 0);
}

uint64_t sub_222B46EB0()
{

  return MEMORY[0x2822009F8](sub_222B46FAC, 0, 0);
}

uint64_t sub_222B46FAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = v0 + 16;
  v4 = v0 + 456;
  v5 = *(v0 + 80);
  *(v0 + 488) = *(v0 + 64);
  *(v0 + 504) = v5;
  *(v0 + 520) = *(v0 + 96);
  v6 = *(v0 + 48);
  *(v0 + 456) = *(v0 + 32);
  *(v0 + 472) = v6;
  if (!v3)
  {

    v8 = *(v0 + 752);
    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 752);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_222B4A12C((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    v11 = &v8[11 * v10];
    v11[4] = v2;
    v11[5] = v3;
    *(v11 + 3) = *v4;
    v12 = *(v4 + 16);
    v13 = *(v4 + 32);
    v14 = *(v4 + 48);
    *(v11 + 56) = *(v4 + 64);
    *(v11 + 5) = v13;
    *(v11 + 6) = v14;
    *(v11 + 4) = v12;
LABEL_7:
    v15 = *(v0 + 744) + 1;
    if (v15 != *(v0 + 704) >> 1)
    {
      break;
    }

    v83 = v0;
    swift_unknownObjectRelease();
    v4 = v8[2];
    v2 = MEMORY[0x277D84F90];
    if (!v4)
    {
LABEL_20:

      v33 = v2[2];
      if (v33)
      {
        v34 = (v1 + 264);
        v82 = (v1 + 608);
        v84 = MEMORY[0x277D84F90];
        sub_222B4C3B4(0, v33, 0);
        v35 = v33 - 1;
        for (i = 4; ; i += 11)
        {
          v37 = *&v2[i + 2];
          *v34 = *&v2[i];
          *(v1 + 280) = v37;
          v38 = *&v2[i + 4];
          v39 = *&v2[i + 6];
          v40 = *&v2[i + 8];
          *(v1 + 344) = v2[i + 10];
          *(v1 + 312) = v39;
          *(v1 + 328) = v40;
          *(v1 + 296) = v38;
          sub_222B4FC6C(v1 + 264, v1 + 352, &qword_27D024B98, &qword_222C96930);
          v42 = *(v84 + 16);
          v41 = *(v84 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_222B4C3B4((v41 > 1), v42 + 1, 1);
          }

          *(v84 + 16) = v42 + 1;
          v43 = (v84 + (v42 << 6));
          v44 = *v34;
          v45 = *(v1 + 280);
          v46 = *(v1 + 296);
          *(v43 + 73) = *(v1 + 305);
          v43[3] = v45;
          v43[4] = v46;
          v43[2] = v44;
          if (!v35)
          {
            break;
          }

          --v35;
        }

        v47 = v83[92];
        v48 = type metadata accessor for PlayMediaFeature.AlternateMediaItems(0);
        swift_allocObject();
        v83[80] = v84;
        v49 = sub_222C93EEC();
        v83[69] = v48;
        v50 = sub_222B4FD34(&qword_27D024BA0, type metadata accessor for PlayMediaFeature.AlternateMediaItems);
        v83[70] = v50;
        v83[66] = v49;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v83[78] = v47;
        v52 = v83[92];
        if ((v51 & 1) == 0)
        {
          v52 = sub_222B4C148(0, v52[2] + 1, 1, v52, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
          *v82 = v52;
        }

        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          v81 = sub_222B4C148((v53 > 1), v54 + 1, 1, v52, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
          *v82 = v81;
        }

        else
        {
          v81 = v52;
        }

        v55 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 512, v48);
        v56 = *(v48 - 8);
        v57 = swift_task_alloc();
        (*(v56 + 16))(v57, v55, v48);
        sub_222B4F8F0(v54, v57, v82, v48, v50);
        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 512));

        v85 = MEMORY[0x277D84F90];
        sub_222B4C394(0, v33, 0);
        v58 = 0;
        v59 = *(v85 + 16);
        v60 = 24 * v59;
        do
        {
          v61 = *&v2[v58 + 12];
          v62 = v2[v58 + 14];
          v63 = *(v85 + 24);
          v64 = v59 + 1;
          if (v59 >= v63 >> 1)
          {
            v80 = *&v2[v58 + 12];
            sub_222B4C394((v63 > 1), v59 + 1, 1);
            v61 = v80;
          }

          *(v85 + 16) = v64;
          v65 = v85 + v60;
          *(v65 + 32) = v61;
          *(v65 + 48) = v62;
          v60 += 24;
          v58 += 11;
          v59 = v64;
          --v33;
        }

        while (v33);

        v66 = type metadata accessor for PlayMediaFeature.AlternateMediaItemsMetadata(0);
        swift_allocObject();
        v67 = v83;
        v83[81] = v85;
        v68 = sub_222C93EEC();
        v83[74] = v66;
        v69 = sub_222B4FD34(&qword_27D024BA8, type metadata accessor for PlayMediaFeature.AlternateMediaItemsMetadata);
        v83[75] = v69;
        v83[71] = v68;
        v70 = v81;
        v83[78] = v81;
        v72 = v81[2];
        v71 = v81[3];
        v73 = v83[84];
        if (v72 >= v71 >> 1)
        {
          v70 = sub_222B4C148((v71 > 1), v72 + 1, 1, v81, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);

          swift_unknownObjectRelease();
          v83[78] = v70;
          v66 = v83[74];
          v74 = v83[75];
        }

        else
        {
          v74 = v69;

          swift_unknownObjectRelease();
        }

        v75 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 552, v66);
        v76 = *(v66 - 8);
        v77 = swift_task_alloc();
        (*(v76 + 16))(v77, v75, v66);
        sub_222B4F8F0(v72, v77, v82, v66, v74);
        __swift_destroy_boxed_opaque_existential_0Tm((v1 + 552));
      }

      else
      {
        v67 = v83;
        v78 = v83[84];

        swift_unknownObjectRelease();
        v70 = v83[92];
      }

      v79 = v67[1];

      return v79(v70);
    }

    v16 = 0;
    v17 = v8 + 4;
    v3 = &qword_222C96930;
    while (v16 < v8[2])
    {
      v18 = *v17;
      *(v1 + 104) = *(v17 + 1);
      *(v1 + 88) = v18;
      v19 = *(v17 + 2);
      v20 = *(v17 + 3);
      v21 = *(v17 + 4);
      *(v1 + 168) = *(v17 + 40);
      *(v1 + 152) = v21;
      *(v1 + 136) = v20;
      *(v1 + 120) = v19;
      sub_222B4FC6C(v1 + 88, v1 + 176, &qword_27D024B98, &qword_222C96930);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_222B4A12C(0, v2[2] + 1, 1, v2);
      }

      v0 = v2[2];
      v22 = v2[3];
      if (v0 >= v22 >> 1)
      {
        v2 = sub_222B4A12C((v22 > 1), v0 + 1, 1, v2);
      }

      ++v16;
      v2[2] = v0 + 1;
      v23 = &v2[11 * v0];
      v24 = *(v1 + 104);
      *(v23 + 2) = *(v1 + 88);
      *(v23 + 3) = v24;
      v25 = *(v1 + 120);
      v26 = *(v1 + 136);
      v27 = *(v1 + 152);
      *(v23 + 56) = *(v1 + 168);
      *(v23 + 5) = v26;
      *(v23 + 6) = v27;
      *(v23 + 4) = v25;
      v17 += 11;
      if (v4 == v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_42:
    v8 = sub_222B4A12C(0, v8[2] + 1, 1, v8);
  }

  *(v0 + 752) = v8;
  *(v0 + 744) = v15;
  v28 = *(*(v0 + 688) + 8 * v15);
  *(v0 + 760) = v28;
  v29 = v28;
  v30 = swift_task_alloc();
  *(v0 + 768) = v30;
  *v30 = v0;
  v30[1] = sub_222B46EB0;
  v31 = *(v0 + 656);

  return sub_222B480D4(v1, v29, v31, 0);
}

uint64_t sub_222B477DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 800) = a1;
  v5 = swift_task_alloc();
  *(v2 + 808) = v5;
  *v5 = v2;
  v5[1] = sub_222B47890;

  return sub_222B480D4(v2 + 424, a1, a2, 1);
}

uint64_t sub_222B47890()
{

  return MEMORY[0x2822009F8](sub_222B4798C, 0, 0);
}

uint64_t sub_222B4798C()
{
  v67 = v0;
  v1 = (v0 + 248);
  v2 = *(v0 + 504);
  *(v0 + 416) = v2;
  v3 = *(v0 + 456);
  v4 = *(v0 + 472);
  *(v0 + 368) = v3;
  *(v0 + 384) = v4;
  v5 = *(v0 + 488);
  *(v0 + 400) = v5;
  v6 = *(v0 + 424);
  v7 = *(v0 + 440);
  *(v0 + 336) = v6;
  *(v0 + 352) = v7;
  *(v0 + 328) = v2;
  *(v0 + 296) = v4;
  *(v0 + 312) = v5;
  *(v0 + 248) = v6;
  *(v0 + 264) = v7;
  *(v0 + 280) = v3;
  if (!*(v0 + 256))
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  LOWORD(v10) = *(v0 + 328);
  v11 = [*(v0 + 800) privateMediaItemValueData];
  if (v11)
  {
    v63 = v0;
    v12 = v11;
    v13 = [v11 mediaSubItems];

    if (v13)
    {
      sub_222B505A8(0, &qword_27D024BE0, 0x277CD3DD0);
      v14 = sub_222C9471C();

      if (v14 >> 62)
      {
LABEL_28:
        v15 = sub_222C94C6C();
        v62 = v10;
        if (v15)
        {
LABEL_6:
          v16 = 0;
          v64 = MEMORY[0x277D84F90];
          v17 = &unk_2784BC000;
          do
          {
            v18 = v16;
            while (1)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x223DC9B30](v18, v14);
                v16 = v18 + 1;
                if (__OFADD__(v18, 1))
                {
                  goto LABEL_26;
                }
              }

              else
              {
                if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_27;
                }

                v19 = *(v14 + 8 * v18 + 32);
                v16 = v18 + 1;
                if (__OFADD__(v18, 1))
                {
LABEL_26:
                  __break(1u);
LABEL_27:
                  __break(1u);
                  goto LABEL_28;
                }
              }

              v10 = v19;
              v20 = [v10 v17[370]];
              if (v20)
              {
                break;
              }

              ++v18;
              if (v16 == v15)
              {
                goto LABEL_30;
              }
            }

            v21 = v9;
            v22 = v20;
            v23 = sub_222C9449C();
            v61 = v24;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_222B49E84(0, *(v64 + 2) + 1, 1, v64);
            }

            v26 = *(v64 + 2);
            v25 = *(v64 + 3);
            v10 = (v26 + 1);
            if (v26 >= v25 >> 1)
            {
              v64 = sub_222B49E84((v25 > 1), v26 + 1, 1, v64);
            }

            *(v64 + 2) = v10;
            v27 = &v64[16 * v26];
            *(v27 + 4) = v23;
            *(v27 + 5) = v61;
            v9 = v21;
            v17 = &unk_2784BC000;
          }

          while (v16 != v15);
          goto LABEL_30;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = v10;
        if (v15)
        {
          goto LABEL_6;
        }
      }

      v64 = MEMORY[0x277D84F90];
LABEL_30:

      v0 = v63;
      LOWORD(v10) = v62;
      v29 = v64;
      goto LABEL_31;
    }

    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

LABEL_31:
  v30 = type metadata accessor for PlayMediaFeature.PrimaryMediaItem(0);
  swift_allocObject();
  v31 = v1[1];
  *(v0 + 512) = *v1;
  *(v0 + 528) = v31;
  *(v0 + 544) = v1[2];
  *(v0 + 553) = *(v1 + 41);
  sub_222B4FC10(v1, v0 + 576);
  v32 = sub_222C93EEC();
  *(v0 + 72) = v30;
  v33 = sub_222B4FD34(&qword_27D024BB0, type metadata accessor for PlayMediaFeature.PrimaryMediaItem);
  *(v0 + 48) = v32;
  *(v0 + 80) = v33;
  v34 = type metadata accessor for PlayMediaFeature.PrimaryMediaItemMetadata(0);
  swift_allocObject();
  *(v0 + 760) = v9;
  *(v0 + 768) = v8;
  *(v0 + 776) = v10;
  v35 = sub_222C93EDC();
  v36 = v35;
  if (v35)
  {
    v35 = sub_222B4FD34(&qword_27D024BD8, type metadata accessor for PlayMediaFeature.PrimaryMediaItemMetadata);
  }

  else
  {
    v34 = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
  }

  *(v0 + 88) = v36;
  *(v0 + 112) = v34;
  *(v0 + 120) = v35;
  if (!*(v29 + 2))
  {

    v29 = 0;
  }

  v37 = type metadata accessor for PlayMediaFeature.PrimaryMediaItemSubItemIdentifiers(0);
  swift_allocObject();
  *(v0 + 784) = v29;
  v38 = sub_222C93EDC();
  v39 = v38;
  if (v38)
  {
    v38 = sub_222B4FD34(&qword_27D024BD0, type metadata accessor for PlayMediaFeature.PrimaryMediaItemSubItemIdentifiers);
  }

  else
  {
    v37 = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
  }

  v65 = (v0 + 640);
  v40 = v0 + 720;
  *(v0 + 128) = v39;
  *(v0 + 152) = v37;
  *(v0 + 160) = v38;
  v41 = *(v0 + 264);
  v42 = type metadata accessor for PlayMediaFeature.PrimaryMediaItemType(0);
  swift_allocObject();
  *(v0 + 792) = v41;
  v43 = sub_222C93EEC();
  *(v0 + 192) = v42;
  *(v0 + 200) = sub_222B4FD34(&qword_27D024BB8, type metadata accessor for PlayMediaFeature.PrimaryMediaItemType);
  *(v0 + 168) = v43;
  sub_222B4FCD4(v0 + 336, &qword_27D024BC0, &unk_222C96938);
  LOBYTE(v41) = *(v0 + 304);
  v44 = type metadata accessor for PlayMediaFeature.EventOrigin(0);
  swift_allocObject();
  *(v0 + 330) = v41;
  v45 = sub_222C93EEC();
  *(v0 + 232) = v44;
  v46 = sub_222B4FD34(&qword_27D024BC8, type metadata accessor for PlayMediaFeature.EventOrigin);
  v28 = MEMORY[0x277D84F90];
  *(v0 + 240) = v46;
  *(v0 + 208) = v45;
  v47 = 5;
  v48 = v0 + 48;
  do
  {
    sub_222B4FC6C(v48, v65, &qword_27D024860, &unk_222C962F0);
    *(v40 + 32) = *(v0 + 672);
    v49 = *(v0 + 656);
    *v40 = *v65;
    *(v40 + 16) = v49;
    if (*(v0 + 744))
    {
      sub_222B405A0(v40, v0 + 680);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_222B4C148(0, v28[2] + 1, 1, v28, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
        v66 = v28;
      }

      v52 = v28[2];
      v51 = v28[3];
      if (v52 >= v51 >> 1)
      {
        v53 = sub_222B4C148((v51 > 1), v52 + 1, 1, v28, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
        v66 = v53;
      }

      else
      {
        v53 = v28;
      }

      v54 = *(v0 + 704);
      v55 = *(v0 + 712);
      v56 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 680, v54);
      v57 = *(v54 - 8);
      v58 = swift_task_alloc();
      (*(v57 + 16))(v58, v56, v54);
      sub_222B4F8F0(v52, v58, &v66, v54, v55);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 680));

      v28 = v53;
      v40 = v0 + 720;
    }

    else
    {
      sub_222B4FCD4(v40, &qword_27D024860, &unk_222C962F0);
    }

    v48 += 40;
    --v47;
  }

  while (v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
LABEL_50:
  v59 = *(v0 + 8);

  return v59(v28);
}

uint64_t sub_222B480D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 66) = a4;
  *(v5 + 232) = a3;
  *(v5 + 240) = v4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  return MEMORY[0x2822009F8](sub_222B480FC, 0, 0);
}

uint64_t sub_222B480FC()
{
  v87 = v0;
  v1 = [*(v0 + 224) identifier];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_222C9449C();
  v6 = v5;

  *(v0 + 248) = v4;
  *(v0 + 256) = v6;
  v7 = [v2 title];
  if (!v7)
  {

LABEL_12:
    v28 = *(v0 + 216);
    *(v28 + 80) = 0;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *v28 = 0u;
LABEL_36:
    v72 = *(v0 + 8);

    return v72();
  }

  v8 = *(v0 + 240);
  v9 = v7;
  v10 = sub_222C9449C();
  v12 = v11;

  *(v0 + 264) = v10;
  *(v0 + 272) = v12;
  swift_beginAccess();
  sub_222B43E3C(v8 + 16, v0 + 72);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v13);
  v15 = *(v14 + 8);

  v16 = v15(v4, v6, v13, v14);
  v18 = v17;

  v19 = (v0 + 72);
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);

    v21 = sub_222C942FC();
    v22 = sub_222C94A3C();

    v78 = v16;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v80 = v24;
      *v23 = 136315650;
      if (qword_27D024658 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_222B437C0(qword_27D024B80, *algn_27D024B88, &v80);
      *(v23 + 12) = 2080;

      v25 = sub_222B437C0(v4, v6, &v80);

      *(v23 + 14) = v25;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_222B437C0(v16, v18, &v80);
      _os_log_impl(&dword_222B39000, v21, v22, "%s ID %s is SiriSyncId. Mapped AdamId will be used: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    v26 = 256;
    v27 = v18;
LABEL_25:
    v53 = [*(v0 + 224) privateMediaItemValueData];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 ampConfidenceLevel];
    }

    else
    {
      v55 = 0;
    }

    v56 = [*(v0 + 224) privateMediaItemValueData];
    v57 = 0;
    if (v56 && (v58 = v56, v59 = [v56 ampConfidenceScore], v58, v59))
    {
      [v59 doubleValue];
      v57 = v60;

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = *(v0 + 224);

    v63 = [v62 type];
    v64 = [v62 artist];
    if (v64)
    {
      v65 = v64;
      v66 = sub_222C9449C();
      v68 = v67;
    }

    else
    {

      v66 = 0;
      v68 = 0;
    }

    v70 = *(v0 + 264);
    v69 = *(v0 + 272);
    v71 = *(v0 + 216);
    *v71 = v78;
    *(v71 + 8) = v27;
    *(v71 + 16) = v63;
    *(v71 + 24) = v70;
    *(v71 + 32) = v69;
    *(v71 + 40) = v66;
    *(v71 + 48) = v68;
    *(v71 + 56) = v18 == 0;
    *(v71 + 64) = v55;
    *(v71 + 72) = v57;
    *(v71 + 80) = v26 | v61;
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  sub_222B43E3C(v8 + 16, v0 + 112);
  v29 = *(v0 + 136);
  v30 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v29);
  v31 = *(v30 + 16);

  v31(&v80, v4, v6, v29, v30);

  v27 = v81;
  if (v81)
  {
    v78 = v80;
    v32 = v82;
    v33 = v83;
    v34 = v84;
    v35 = v85;
    v77 = v86;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v36 = sub_222C9431C();
    __swift_project_value_buffer(v36, qword_280FE2340);

    sub_222B4FDCC(v32, v33, v34, v35);
    v37 = sub_222C942FC();
    v38 = sub_222C94A3C();
    v76 = v34;
    sub_222B4FE14(v78, v27, v32, v33, v34, v35);
    v75 = v38;
    v39 = v38;
    v40 = v37;
    if (os_log_type_enabled(v37, v39))
    {
      v73 = v33;
      v74 = v32;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v80 = v42;
      *v41 = 136315650;
      v18 = 0;
      if (qword_27D024658 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_222B437C0(qword_27D024B80, *algn_27D024B88, &v80);
      *(v41 + 12) = 2080;

      v43 = sub_222B437C0(v4, v6, &v80);

      *(v41 + 14) = v43;
      *(v41 + 22) = 2080;

      v44 = v78;
      v45 = sub_222B437C0(v78, v27, &v80);

      *(v41 + 24) = v45;
      _os_log_impl(&dword_222B39000, v40, v75, "%s ID %s is MPC Identifier. Extracted AdamId will be used: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);

      v33 = v73;
      v32 = v74;
      v46 = v76;
    }

    else
    {

      v18 = 0;
      v46 = v76;
      v44 = v78;
    }

    sub_222B4FE14(v44, v27, v32, v33, v46, v35);
    v26 = ((v77 & 0xFF00) == 256) << 8;
    goto LABEL_25;
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  sub_222B43E3C(v8 + 16, v0 + 152);
  v47 = *(v0 + 176);
  v48 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1((v0 + 152), v47);
  v79 = (*(v48 + 24) + **(v48 + 24));
  v49 = swift_task_alloc();
  *(v0 + 280) = v49;
  *v49 = v0;
  v49[1] = sub_222B48990;
  v50 = *(v0 + 66);
  v51 = *(v0 + 232);

  return v79(v0 + 16, v51, v50, v47, v48);
}

uint64_t sub_222B48990()
{

  return MEMORY[0x2822009F8](sub_222B48A8C, 0, 0);
}

uint64_t sub_222B48A8C()
{
  v53 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v8 = sub_222C9431C();
    __swift_project_value_buffer(v8, qword_280FE2340);

    sub_222B4FDCC(v3, v4, v5, v6);
    v9 = sub_222C942FC();
    v10 = sub_222C94A3C();
    sub_222B4FE14(v2, v1, v3, v4, v5, v6);
    if (os_log_type_enabled(v9, v10))
    {
      v47 = v5;
      v48 = v7;
      v49 = v4;
      v50 = v3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v52 = v12;
      *v11 = 136315650;
      if (qword_27D024658 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 248);
      v13 = *(v0 + 256);
      *(v11 + 4) = sub_222B437C0(qword_27D024B80, *algn_27D024B88, &v52);
      *(v11 + 12) = 2080;

      v15 = sub_222B437C0(v14, v13, &v52);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;

      v16 = sub_222B437C0(v2, v1, &v52);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_222B39000, v9, v10, "%s ID %s is MusicKit Identifier. Extracted AdamId will be used: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);

      v4 = v49;
      v3 = v50;
      v7 = v48;
      v5 = v47;
    }

    else
    {
    }

    sub_222B4FE14(v2, v1, v3, v4, v5, v6);
    v17 = ((v7 & 0xFF00) == 256) << 8;
    v18 = v1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
    v17 = 0;
    v2 = *(v0 + 248);
    v18 = *(v0 + 256);
  }

  v19 = [*(v0 + 224) privateMediaItemValueData];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 ampConfidenceLevel];
  }

  else
  {
    v21 = 0;
  }

  v22 = [*(v0 + 224) privateMediaItemValueData];
  v23 = 0;
  if (v22 && (v24 = v22, v25 = [v22 ampConfidenceScore], v24, v25))
  {
    [v25 doubleValue];
    v23 = v26;

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v0 + 224);

  v29 = [v28 type];
  v30 = [v28 artist];
  if (v30)
  {
    v51 = v0;
    v31 = v29;
    v32 = v27;
    v33 = v18;
    v34 = v1;
    v35 = v21;
    v36 = v17;
    v37 = v2;
    v38 = v30;
    v39 = sub_222C9449C();
    v41 = v40;

    v2 = v37;
    v17 = v36;
    v21 = v35;
    v1 = v34;
    v18 = v33;
    v27 = v32;
    v29 = v31;
    v0 = v51;
  }

  else
  {

    v39 = 0;
    v41 = 0;
  }

  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v44 = *(v0 + 216);
  *v44 = v2;
  *(v44 + 8) = v18;
  *(v44 + 16) = v29;
  *(v44 + 24) = v43;
  *(v44 + 32) = v42;
  *(v44 + 40) = v39;
  *(v44 + 48) = v41;
  *(v44 + 56) = v1 != 0;
  *(v44 + 64) = v21;
  *(v44 + 72) = v23;
  *(v44 + 80) = v17 | v27;
  v45 = *(v0 + 8);

  return v45();
}

uint64_t INPlayMediaIntentFeatureExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222B48F64(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_222B49E84(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_222B490F4(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result[2];
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v9 <= v7[3] >> 1)
  {
    if (v14[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v18 = v8 + v6;
  }

  else
  {
    v18 = v8;
  }

  result = sub_222B4C148(result, v18, 1, v7, a2, a3, a4, a5);
  v7 = result;
  if (!v14[2])
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v15 = v7[2];
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    v7[2] = v17;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B49224(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_222B4A35C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B4937C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_222B4BE20(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B49500(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_222B4A88C(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v11 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v11 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v5 + 32 * v11 + 32), (v10 + 32), 32 * v4);

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 16) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B49640(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_222B4A9F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B49738(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v4 + 3) >> 1, v8 < v6))
  {
    if (v5 <= v6)
    {
      v9 = v5 + v3;
    }

    else
    {
      v9 = v5;
    }

    v4 = sub_222B49E84(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    v8 = *(v4 + 3) >> 1;
  }

  v10 = v8 - *(v4 + 2);
  result = sub_222B95AD8();
  if (result < v3)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v12 + 64) >> 6;
      do
      {
        v20 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_42;
        }

        if (v20 >= v19)
        {
          goto LABEL_13;
        }

        v21 = *(v11 + 8 * v20);
        ++v2;
      }

      while (!v21);
      v17 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      v2 = v20;
      goto LABEL_24;
    }

    *(v4 + 2) = v16;
  }

  result = v36;
  if (v13 != v10)
  {
LABEL_13:
    result = sub_222B504E8(result);
    *v1 = v4;
    return result;
  }

LABEL_16:
  v10 = *(v4 + 2);
  v11 = v37;
  v12 = v38;
  v2 = v39;
  v35 = v37;
  if (!v40)
  {
    goto LABEL_19;
  }

  v17 = (v40 - 1) & v40;
  v18 = __clz(__rbit64(v40)) | (v39 << 6);
  v19 = (v38 + 64) >> 6;
LABEL_24:
  v34 = result;
  v22 = (*(result + 48) + 16 * v18);
  v24 = *v22;
  v23 = v22[1];

  v25 = v35;
LABEL_26:
  while (1)
  {
    v26 = *(v4 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v10 + 1)
    {
      break;
    }

    if (v10 < v27)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v4 + 2) = v10;
  }

  v33 = sub_222B49E84((v26 > 1), v10 + 1, 1, v4);
  v25 = v35;
  v4 = v33;
  v27 = *(v33 + 3) >> 1;
  if (v10 >= v27)
  {
    goto LABEL_25;
  }

LABEL_28:
  while (1)
  {
    v28 = &v4[16 * v10 + 32];
    *v28 = v24;
    *(v28 + 1) = v23;
    ++v10;
    if (!v17)
    {
      break;
    }

    result = v34;
LABEL_35:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v32 = (*(result + 48) + ((v2 << 10) | (16 * v31)));
    v24 = *v32;
    v23 = v32[1];

    v25 = v35;
    if (v10 == v27)
    {
      v10 = v27;
      *(v4 + 2) = v27;
      goto LABEL_26;
    }
  }

  v29 = v2;
  result = v34;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v4 + 2) = v10;
      goto LABEL_13;
    }

    v17 = *(v25 + 8 * v30);
    ++v29;
    if (v17)
    {
      v2 = v30;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_222B49A90(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_222B4B698(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4, a5);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222B49C98(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_222C94C6C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_222C94C6C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_222B4C290(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_222B49D90(uint64_t result)
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

  result = sub_222B4BCDC(result, v11, 1, v3);
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

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

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

char *sub_222B49E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
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

char *sub_222B49FB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D08, &qword_222C96AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4A12C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025008, &qword_222C96DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B98, &qword_222C96930);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4A35C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_222B4A47C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C20, &qword_222C969F8);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

void *sub_222B4A59C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD8, &qword_222C96AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CE0, &qword_222C96AB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4A758(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC0, &qword_222C96A98);
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

char *sub_222B4A88C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_222B4A9F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D30, &unk_222CA5430);
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

char *sub_222B4AB44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BF0, &qword_222C969C8);
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

void *sub_222B4ACF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_222B4AE24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F98, &qword_222C96D50);
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

void *sub_222B4AF18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F58, &qword_222C96D08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4B0C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E90, &qword_222C96C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E98, &qword_222C96C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4B1F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CA0, &qword_222C96A78);
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

char *sub_222B4B304(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BF8, &unk_222C969D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_222B4B47C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_222B4B568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E50, &unk_222C96C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4B698(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_222B4B8D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E38, &qword_222C96BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4B9DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D20, &qword_222C96AF8);
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

void *sub_222B4BB44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_222B4BCDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D28, &unk_222C96B00);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_222B4BE20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_222B4BFFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D48, &qword_222C96B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4C148(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_222B4C290(uint64_t a1, char a2)
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

  sub_222C94C6C();
LABEL_9:
  result = sub_222C94D9C();
  *v2 = result;
  return result;
}

void *sub_222B4C330(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024DB0, &qword_222C96B90, type metadata accessor for EntityPromptClassification);
  *v3 = result;
  return result;
}

char *sub_222B4C374(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4CE98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4C394(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4CFB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4C3B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C3D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024DF0, &qword_222C96BC0, type metadata accessor for FeaturisedTurn);
  *v3 = result;
  return result;
}

char *sub_222B4C418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4C438(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C458(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D970(a1, a2, a3, *v3, &qword_27D024C60, &unk_222C9BC50, &qword_27D024C58, &unk_222C96A30);
  *v3 = result;
  return result;
}

void *sub_222B4C498(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024D78, &qword_222C96B58, type metadata accessor for TurnPairRestatementClassification);
  *v3 = result;
  return result;
}

void *sub_222B4C4DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024FD0, &qword_222C96D80, &qword_27D024FD8, &qword_222C96D88);
  *v3 = result;
  return result;
}

char *sub_222B4C51C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C53C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024EB0, &unk_222C96C60, type metadata accessor for MediaPlayClassification);
  *v3 = result;
  return result;
}

void *sub_222B4C580(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E2F8(a1, a2, a3, *v3, &qword_27D024FE8, &qword_222C96DA0, &qword_27D024FF0, &qword_222C96DA8);
  *v3 = result;
  return result;
}

void *sub_222B4C5C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D970(a1, a2, a3, *v3, &qword_27D026360, &unk_222C9DA10, &qword_27D024858, &qword_222C98950);
  *v3 = result;
  return result;
}

char *sub_222B4C600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D72C(a1, a2, a3, *v3, &qword_27D024FE0, &unk_222C96D90);
  *v3 = result;
  return result;
}

void *sub_222B4C630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024EF0, &qword_222C96CA0, type metadata accessor for PlusMediaSuggestion);
  *v3 = result;
  return result;
}

char *sub_222B4C674(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D518(a1, a2, a3, *v3, &qword_27D024EC0, &qword_222C96C70);
  *v3 = result;
  return result;
}

void *sub_222B4C6A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024EC8, &qword_222C96C78, type metadata accessor for ThinMediaGroundTruth);
  *v3 = result;
  return result;
}

void *sub_222B4C6E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024EE8, &qword_222C96C98, type metadata accessor for PlusContactSuggestion);
  *v3 = result;
  return result;
}

char *sub_222B4C72C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D518(a1, a2, a3, *v3, &qword_27D024E58, &qword_222CA0F30);
  *v3 = result;
  return result;
}

void *sub_222B4C75C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024F70, &qword_222C96D28, type metadata accessor for ThinContactGroundTruth);
  *v3 = result;
  return result;
}

char *sub_222B4C7A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4C7C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E77C(a1, a2, a3, *v3, &qword_27D024D30, &unk_222CA5430, &type metadata for MediaReference);
  *v3 = result;
  return result;
}

char *sub_222B4C7F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D72C(a1, a2, a3, *v3, &qword_27D024BF0, &qword_222C969C8);
  *v3 = result;
  return result;
}

void *sub_222B4C828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E2F8(a1, a2, a3, *v3, &qword_27D024FA0, &qword_222C96D58, &qword_27D024FA8, &qword_222C96D60);
  *v3 = result;
  return result;
}

void *sub_222B4C888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4D970(a1, a2, a3, *v3, &qword_27D024E30, &qword_222C96BF0, &qword_27D024E28, &unk_222C995F0);
  *v3 = result;
  return result;
}

void *sub_222B4C8C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4DAB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C8E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4DBFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4DD44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4C928(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4DE78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C948(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E8A0(a1, a2, a3, *v3, &qword_27D024F48, &qword_222C96CF8, &qword_27D024F50, &qword_222C96D00);
  *v3 = result;
  return result;
}

char *sub_222B4C988(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4DF84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4C9A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024F30, &qword_222C96CE0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_222B4C9EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024DD8, &qword_222C96BA8, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  *v3 = result;
  return result;
}

void *sub_222B4CA30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E2F8(a1, a2, a3, *v3, &qword_27D024F08, &qword_222C96CB8, &qword_27D024F10, &qword_222C96CC0);
  *v3 = result;
  return result;
}

void *sub_222B4CA70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E2F8(a1, a2, a3, *v3, &qword_27D024F18, &qword_222C96CC8, &qword_27D024F20, &unk_222C96CD0);
  *v3 = result;
  return result;
}

void *sub_222B4CAB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E0A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CAD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4CAF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024CB8, &qword_222C96A90, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
  *v3 = result;
  return result;
}

void *sub_222B4CB34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024CA8, &unk_222C96A80, &qword_27D024CB0, &unk_222CA5330);
  *v3 = result;
  return result;
}

void *sub_222B4CB74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E2F8(a1, a2, a3, *v3, &qword_27D024D90, &qword_222C96B70, &qword_27D024D98, &qword_222C96B78);
  *v3 = result;
  return result;
}

char *sub_222B4CBB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CBD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E54C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CBF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E66C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4CC14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024DE0, &unk_222C96BB0, &qword_27D024DE8, &qword_222CA55A0);
  *v3 = result;
  return result;
}

void *sub_222B4CC54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024E60, &qword_222C96C20, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  *v3 = result;
  return result;
}

char *sub_222B4CC98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E77C(a1, a2, a3, *v3, &qword_27D024E48, &qword_222C96C08, &type metadata for MediaEntityFieldComparison);
  *v3 = result;
  return result;
}

void *sub_222B4CCD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E8A0(a1, a2, a3, *v3, &qword_27D024D50, &qword_222C96B28, &qword_27D024D58, &qword_222C96B30);
  *v3 = result;
  return result;
}

void *sub_222B4CD10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024D60, &qword_222C96B38, &unk_27D026290, &qword_222C96B40);
  *v3 = result;
  return result;
}

void *sub_222B4CD50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024D68, &qword_222C96B48, type metadata accessor for ContactSuggestionProvidedClassification);
  *v3 = result;
  return result;
}

void *sub_222B4CD94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4E9D4(a1, a2, a3, *v3, &qword_27D024C50, &qword_222C96A28, type metadata accessor for SessionGroundTruths);
  *v3 = result;
  return result;
}

char *sub_222B4CDD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222B4CDF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4ECB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_222B4CE18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024C28, &qword_222C96A00, &qword_27D024C30, &qword_222C96A08);
  *v3 = result;
  return result;
}

void *sub_222B4CE58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222B4EDD4(a1, a2, a3, *v3, &qword_27D024C38, &unk_222C96A10, &qword_27D024C40, &unk_222CA5FA0);
  *v3 = result;
  return result;
}

char *sub_222B4CE98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_222B4CFB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FF8, &qword_222C96DB0);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}