uint64_t type metadata completion function for PlatformItemContent(uint64_t a1)
{
  result = type metadata accessor for PlatformItemList.Item(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UIButton.Configuration();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for UIKitButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v9 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v9;
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  v10 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v10;
  *(a1 + 49) = *(a2 + 49);
  v11 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v11)
    {
      v13 = *(a2 + 64);
      *(a1 + 56) = v11;
      *(a1 + 64) = v13;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v11)
  {

    goto LABEL_14;
  }

  v12 = *(a2 + 64);
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;

LABEL_15:
  v14 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v14;
  return a1;
}

uint64_t assignWithTake for UIKitButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 56);
  v10 = *(a1 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  if (!v10)
  {
    if (v9)
    {
      v12 = *(a2 + 64);
      *(a1 + 56) = v9;
      *(a1 + 64) = v12;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_15;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v11 = *(a2 + 64);
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;

LABEL_15:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButtonConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 81 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = *(v11 + 16);
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
    }

    else
    {
      *(v10 + 8) = *(v11 + 8);
    }

    *(v10 + 24) = *(v11 + 24);
    *(v10 + 25) = *(v11 + 25);
    v14 = *(v11 + 28);
    *(v10 + 36) = *(v11 + 36);
    *(v10 + 28) = v14;
    *(v10 + 37) = *(v11 + 37);
    *(v10 + 38) = *(v11 + 38);
    v15 = *(v11 + 40);
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 40) = v15;
    *(v10 + 49) = *(v11 + 49);
    v16 = *(v11 + 56);
    if (v16)
    {
      v17 = *(v11 + 64);
      *(v10 + 56) = v16;
      *(v10 + 64) = v17;
    }

    else
    {
      *(v10 + 56) = *(v11 + 56);
    }

    v18 = *(v11 + 72);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 72) = v18;
  }

  return v3;
}

uint64_t assignWithCopy for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = *(v8 + 8);
  if (*(v7 + 8))
  {
    if (v9)
    {
      v10 = *(v8 + 16);
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;

      goto LABEL_8;
    }
  }

  else if (v9)
  {
    v11 = *(v8 + 16);
    *(v7 + 8) = v9;
    *(v7 + 16) = v11;

    goto LABEL_8;
  }

  *(v7 + 8) = *(v8 + 8);
LABEL_8:
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 25) = *(v8 + 25);
  v12 = *(v8 + 28);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 28) = v12;
  *(v7 + 37) = *(v8 + 37);
  *(v7 + 38) = *(v8 + 38);
  v13 = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 40) = v13;
  *(v7 + 49) = *(v8 + 49);
  v14 = *(v8 + 56);
  if (!*(v7 + 56))
  {
    if (v14)
    {
      v16 = *(v8 + 64);
      *(v7 + 56) = v14;
      *(v7 + 64) = v16;

      goto LABEL_15;
    }

LABEL_14:
    *(v7 + 56) = *(v8 + 56);
    goto LABEL_15;
  }

  if (!v14)
  {

    goto LABEL_14;
  }

  v15 = *(v8 + 64);
  *(v7 + 56) = v14;
  *(v7 + 64) = v15;

LABEL_15:
  v17 = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 72) = v17;
  return a1;
}

uint64_t initializeWithTake for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 48) = v11;
  *(v7 + 64) = v10;
  *(v7 + 32) = v12;
  return a1;
}

uint64_t assignWithTake for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = *(v8 + 8);
  if (*(v7 + 8))
  {
    if (v9)
    {
      v10 = *(v8 + 16);
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;

      goto LABEL_8;
    }
  }

  else if (v9)
  {
    v11 = *(v8 + 16);
    *(v7 + 8) = v9;
    *(v7 + 16) = v11;
    goto LABEL_8;
  }

  *(v7 + 8) = *(v8 + 8);
LABEL_8:
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 25) = *(v8 + 25);
  v12 = *(v8 + 28);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 28) = v12;
  *(v7 + 37) = *(v8 + 37);
  *(v7 + 38) = *(v8 + 38);
  v13 = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 40) = v13;
  *(v7 + 49) = *(v8 + 49);
  v14 = *(v8 + 56);
  if (!*(v7 + 56))
  {
    if (v14)
    {
      v16 = *(v8 + 64);
      *(v7 + 56) = v14;
      *(v7 + 64) = v16;
      goto LABEL_15;
    }

LABEL_14:
    *(v7 + 56) = *(v8 + 56);
    goto LABEL_15;
  }

  if (!v14)
  {

    goto LABEL_14;
  }

  v15 = *(v8 + 64);
  *(v7 + 56) = v14;
  *(v7 + 64) = v15;

LABEL_15:
  v17 = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 72) = v17;
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody_Nested(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 81;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

double storeEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody_Nested(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 81;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v19 + 72) = 0;
          result = 0.0;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 80) = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 8) = a2;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 81);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = *(v13 + 16);
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
    }

    else
    {
      *(v12 + 8) = *(v13 + 8);
    }

    *(v12 + 24) = *(v13 + 24);
    *(v12 + 25) = *(v13 + 25);
    v16 = *(v13 + 28);
    *(v12 + 36) = *(v13 + 36);
    *(v12 + 28) = v16;
    *(v12 + 37) = *(v13 + 37);
    *(v12 + 38) = *(v13 + 38);
    v17 = *(v13 + 40);
    *(v12 + 48) = *(v13 + 48);
    *(v12 + 40) = v17;
    *(v12 + 49) = *(v13 + 49);
    v18 = *(v13 + 56);
    if (v18)
    {
      v19 = *(v13 + 64);
      *(v12 + 56) = v18;
      *(v12 + 64) = v19;
    }

    else
    {
      *(v12 + 56) = *(v13 + 56);
    }

    v20 = *(v13 + 72);
    *(v12 + 80) = *(v13 + 80);
    *(v12 + 72) = v20;
    v21 = (v10 + 95) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v11 + 95) & 0xFFFFFFFFFFFFFFF8;
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    v23 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
  }

  return v3;
}

uint64_t assignWithCopy for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (*(v9 + 8))
  {
    if (v11)
    {
      v12 = *(v10 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v13;

    goto LABEL_8;
  }

  *(v9 + 8) = *(v10 + 8);
LABEL_8:
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v14 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v14;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v15 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = *(v10 + 56);
  if (!*(v9 + 56))
  {
    if (v16)
    {
      v18 = *(v10 + 64);
      *(v9 + 56) = v16;
      *(v9 + 64) = v18;

      goto LABEL_15;
    }

LABEL_14:
    *(v9 + 56) = *(v10 + 56);
    goto LABEL_15;
  }

  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = *(v10 + 64);
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;

LABEL_15:
  v19 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v19;
  v20 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);

  v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);

  return a1;
}

uint64_t initializeWithTake for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v13 = *(v10 + 48);
  v12 = *(v10 + 64);
  v14 = *(v10 + 32);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 48) = v13;
  *(v9 + 64) = v12;
  *(v9 + 32) = v14;
  v15 = ((v7 + 95) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v8 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (*(v9 + 8))
  {
    if (v11)
    {
      v12 = *(v10 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

  *(v9 + 8) = *(v10 + 8);
LABEL_8:
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v14 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v14;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v15 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = *(v10 + 56);
  if (!*(v9 + 56))
  {
    if (v16)
    {
      v18 = *(v10 + 64);
      *(v9 + 56) = v16;
      *(v9 + 64) = v18;
      goto LABEL_15;
    }

LABEL_14:
    *(v9 + 56) = *(v10 + 56);
    goto LABEL_15;
  }

  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = *(v10 + 64);
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;

LABEL_15:
  v19 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v19;
  v20 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);

  v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v20 + 72) = 0;
          result = 0.0;
          *(v20 + 56) = 0u;
          *(v20 + 40) = 0u;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *(v20 + 80) = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 8) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 95) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ButtonStyleContent(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    v12 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
  }

  return v3;
}

double destroy for ButtonStyleContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for ButtonStyleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  v9 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);

  return a1;
}

uint64_t assignWithCopy for ButtonStyleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *(v9 + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v9 + 16) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);

  v11 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);

  return a1;
}

uint64_t initializeWithTake for ButtonStyleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8) = *(v8 + 8);
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ButtonStyleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  *(v9 + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v9 + 16) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);

  v11 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonStyleContent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for ButtonStyleContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v18 + 8) = a2 - 0x7FFFFFFF;
      *(v18 + 16) = 0;
    }

    else
    {
      *(v18 + 16) = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

__n128 InsetListLabelStyle.StyleView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)))
  {
    KeyPath = swift_getKeyPath();
    v8 = 0;
    SidebarRow_iOS.init(configuration:listItemTint:)(&KeyPath, v9);
    v3 = 0;
    LOBYTE(KeyPath) = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v10[0];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v4;
  *(a1 + 90) = *(v10 + 10);
  v5 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v5;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  *(a1 + 106) = v3;
  return result;
}

uint64_t protocol witness for LabelStyle.makeBody(configuration:) in conformance InsetListLabelStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

__n128 SidebarRow_iOS.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 10) = *(v1 + 90);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  closure #2 in SidebarRow_iOS.body.getter(v9, v11);
  v6 = v11[5];
  *(a1 + 64) = v11[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v11[6];
  v7 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v7;
  result = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = result;
  return result;
}

__n128 closure #2 in SidebarRow_iOS.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.firstTextLineCenter.getter();
  v5 = specialized Environment.wrappedValue.getter(*(a1 + 80), *(a1 + 88) | (*(a1 + 89) << 8));
  if (v6 & 1) != 0 && (v5 = specialized Environment.wrappedValue.getter(*(a1 + 48), *(a1 + 56) | (*(a1 + 57) << 8)), (v7))
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v8 = 0x4028000000000000;
    }

    else
    {
      v8 = 0x4024000000000000;
    }
  }

  else
  {
    v8 = v5;
  }

  v30 = 0;
  closure #1 in SidebarRow_iOS.stack.getter(a1, &v15);
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v21 = v15;
  v22 = v16;
  v28 = v20;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[0] = v15;
  v27[1] = v16;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(&v21, &v14, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(v27, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>);
  *(v29 + 7) = v21;
  *(&v29[1] + 7) = v22;
  *(v29[5].n128_u64 + 7) = v26;
  *(&v29[4] + 7) = v25;
  *(&v29[3] + 7) = v24;
  *(&v29[2] + 7) = v23;
  v9 = v30;
  *a2 = v4;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  v10 = v29[0];
  *(a2 + 33) = v29[1];
  *(a2 + 17) = v10;
  result = v29[2];
  v12 = v29[3];
  v13 = v29[4];
  *(a2 + 96) = *(&v29[4] + 15);
  *(a2 + 81) = v13;
  *(a2 + 65) = v12;
  *(a2 + 49) = result;
  return result;
}

double protocol witness for ShapeStyle._apply(to:) in conformance SidebarIconStyle(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v4[0] = v2;
  v4[1] = v1;

  specialized SidebarIconStyle.resolve(in:)(v4);

  dispatch thunk of AnyShapeStyleBox.apply(to:)();

  return result;
}

uint64_t protocol witness for ShapeStyle.resolve(in:) in conformance SidebarIconStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SidebarIconStyle.resolve(in:)(a1);
  *a2 = result;
  return result;
}

void key path getter for EnvironmentValues.listItemTint : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.listItemTint : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);

  outlined copy of Transaction?(v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t assignWithCopy for SidebarRow_iOS(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 57);
  v14 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = *(a1 + 48);
  v16 = *(a1 + 57);
  *(a1 + 48) = v12;
  v17 = *(a1 + 56);
  *(a1 + 56) = v14;
  *(a1 + 57) = v13;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = *(a2 + 64);
  v19 = *(a2 + 73);
  v20 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v18, v20, v19);
  v21 = *(a1 + 64);
  v22 = *(a1 + 73);
  *(a1 + 64) = v18;
  v23 = *(a1 + 72);
  *(a1 + 72) = v20;
  *(a1 + 73) = v19;
  outlined consume of Environment<CGFloat?>.Content(v21, v23, v22);
  v24 = *(a2 + 80);
  v25 = *(a2 + 89);
  v26 = *(a2 + 88);
  outlined copy of Environment<CGFloat?>.Content(v24, v26, v25);
  v27 = *(a1 + 80);
  v28 = *(a1 + 89);
  *(a1 + 80) = v24;
  v29 = *(a1 + 88);
  *(a1 + 88) = v26;
  *(a1 + 89) = v25;
  outlined consume of Environment<CGFloat?>.Content(v27, v29, v28);
  v30 = *(a2 + 96);
  v31 = *(a2 + 105);
  v32 = *(a2 + 104);
  outlined copy of Environment<ListItemTint?>.Content(v30, v32, v31);
  v33 = *(a1 + 96);
  v34 = *(a1 + 105);
  *(a1 + 96) = v30;
  v35 = *(a1 + 104);
  *(a1 + 104) = v32;
  *(a1 + 105) = v31;
  outlined consume of Environment<ListItemTint?>.Content(v33, v35, v34);
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for SidebarRow_iOS(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 56);
  v12 = *(a2 + 57);
  v13 = *(a1 + 48);
  v14 = *(a1 + 57);
  *(a1 + 48) = a2[6];
  v15 = *(a1 + 56);
  *(a1 + 56) = v11;
  *(a1 + 57) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = *(a2 + 72);
  v17 = *(a2 + 73);
  v18 = *(a1 + 64);
  v19 = *(a1 + 73);
  *(a1 + 64) = a2[8];
  v20 = *(a1 + 72);
  *(a1 + 72) = v16;
  *(a1 + 73) = v17;
  outlined consume of Environment<CGFloat?>.Content(v18, v20, v19);
  v21 = *(a2 + 88);
  v22 = *(a2 + 89);
  v23 = *(a1 + 80);
  v24 = *(a1 + 89);
  *(a1 + 80) = a2[10];
  v25 = *(a1 + 88);
  *(a1 + 88) = v21;
  *(a1 + 89) = v22;
  outlined consume of Environment<CGFloat?>.Content(v23, v25, v24);
  v26 = *(a2 + 104);
  v27 = *(a2 + 105);
  v28 = *(a1 + 96);
  v29 = *(a1 + 105);
  *(a1 + 96) = a2[12];
  v30 = *(a1 + 104);
  *(a1 + 104) = v26;
  *(a1 + 105) = v27;
  outlined consume of Environment<ListItemTint?>.Content(v28, v30, v29);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarRow_iOS(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarRow_iOS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InsetListLabelStyle.StyleView and conformance InsetListLabelStyle.StyleView()
{
  result = lazy protocol witness table cache variable for type InsetListLabelStyle.StyleView and conformance InsetListLabelStyle.StyleView;
  if (!lazy protocol witness table cache variable for type InsetListLabelStyle.StyleView and conformance InsetListLabelStyle.StyleView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InsetListLabelStyle.StyleView, &unk_1EFF937E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InsetListLabelStyle.StyleView and conformance InsetListLabelStyle.StyleView);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>)
  {
    type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>);
    }
  }
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, type metadata accessor for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>);
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v7>, ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>>);
    }
  }
}

void type metadata accessor for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>(255);
    v5[0] = &type metadata for LabelStyleConfiguration.Title;
    v5[1] = v2;
    v5[2] = &protocol witness table for LabelStyleConfiguration.Title;
    v5[3] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon> and conformance <> StaticIf<A, B, C>();
    v3 = type metadata accessor for Label(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = &protocol witness table for LabelStyleConfiguration.Icon;
    v5[2] = &protocol witness table for LabelStyleConfiguration.Icon;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(255);
    lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>>, type metadata accessor for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>> and conformance Label<A, B>, type metadata accessor for Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, protocol conformance descriptor for Label<A, B>);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type SidebarRow_iOS and conformance SidebarRow_iOS();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<SidebarRow_iOS, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, protocol conformance descriptor for Label<A, B>);
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized SidebarIconStyle.resolve(in:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    if (v2)
    {
      type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();

      v3 = v6;
      if (!v6)
      {
        return AnyShapeStyle.init<A>(_:)();
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
      v3 = v6;
      if (!v6)
      {
        return AnyShapeStyle.init<A>(_:)();
      }
    }

    if (v3 != 1)
    {
      if (v7 & 1) == 0 || (EnvironmentValues.backgroundProminence.getter(), static BackgroundProminence.increased.getter(), (static BackgroundProminence.== infix(_:_:)()))
      {
        outlined consume of ListItemTint?(v3);
      }
    }

    return AnyShapeStyle.init<A>(_:)();
  }

  EnvironmentValues.backgroundProminence.getter();
  static BackgroundProminence.increased.getter();
  if (static BackgroundProminence.== infix(_:_:)())
  {
    return AnyShapeStyle.init<A>(_:)();
  }

  type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v1 == 1)
  {
    return AnyShapeStyle.init<A>(_:)();
  }

  static Color.secondary.getter();
  if (!v1)
  {
  }

  v5 = AnyShapeStyle.init<A>(_:)();
  outlined consume of ListItemTint?(v1);
  return v5;
}

uint64_t View.searchSelection(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchSelectionModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<TextSelection?>(a1, v8);
  MEMORY[0x18D00A570](v8, a2, v6, a3);
  return outlined destroy of SearchSelectionModifier(v8, type metadata accessor for SearchSelectionModifier);
}

uint64_t outlined init with copy of Binding<TextSelection?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchSelectionModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    a1[1] = a2[1];
    v7 = *(v4 + 32);
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = type metadata accessor for TextSelection(0);
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(v9, 1, v10))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v8, v9, *(*(v13 - 8) + 64));
    }

    else
    {
      v14 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v15 - 8) + 16))(v8, v9, v15);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v8, v9, *(*(v14 - 8) + 64));
      }

      v8[*(v10 + 20)] = v9[*(v10 + 20)];
      (*(v11 + 56))(v8, 0, 1, v10);
    }
  }

  return a1;
}

void type metadata accessor for RangeSet<String.Index>()
{
  if (!lazy cache variable for type metadata for RangeSet<String.Index>)
  {
    v0 = type metadata accessor for RangeSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<String.Index>);
    }
  }
}

uint64_t destroy for SearchSelectionModifier(char *a1)
{

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for TextSelection(0);
  result = (*(*(v4 - 8) + 48))(&a1[v3], 1, v4);
  if (!result)
  {
    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      v7 = *(*(v6 - 8) + 8);

      return v7(&a1[v3], v6);
    }
  }

  return result;
}

uint64_t *initializeWithCopy for SearchSelectionModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(v8, 1, v9))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v14 - 8) + 16))(v7, v8, v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v13 - 8) + 64));
    }

    v7[*(v9 + 20)] = v8[*(v9 + 20)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  return a1;
}

uint64_t *assignWithCopy for SearchSelectionModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for TextSelection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      v13 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v14 - 8) + 16))(v6, v7, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v6, v7, *(*(v13 - 8) + 64));
      }

      v6[*(v8 + 20)] = v7[*(v8 + 20)];
      (*(v9 + 56))(v6, 0, 1, v8);
      return a1;
    }

LABEL_7:
    type metadata accessor for TextSelection?(0);
    memcpy(v6, v7, *(*(v15 - 8) + 64));
    return a1;
  }

  if (v12)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection.Indices);
    v16 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v17 - 8) + 16))(v6, v7, v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v16 - 8) + 64));
    }
  }

  v6[*(v8 + 20)] = v7[*(v8 + 20)];
  return a1;
}

uint64_t outlined destroy of SearchSelectionModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for SearchSelectionModifier(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v13 - 8) + 32))(v7, v8, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    v7[*(v9 + 20)] = v8[*(v9 + 20)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  return a1;
}

uint64_t *assignWithTake for SearchSelectionModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for TextSelection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      v13 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v14 - 8) + 32))(v6, v7, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v6, v7, *(*(v13 - 8) + 64));
      }

      v6[*(v8 + 20)] = v7[*(v8 + 20)];
      (*(v9 + 56))(v6, 0, 1, v8);
      return a1;
    }

LABEL_7:
    type metadata accessor for TextSelection?(0);
    memcpy(v6, v7, *(*(v15 - 8) + 64));
    return a1;
  }

  if (v12)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection.Indices);
    v16 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v17 - 8) + 32))(v6, v7, v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v16 - 8) + 64));
    }
  }

  v6[*(v8 + 20)] = v7[*(v8 + 20)];
  return a1;
}

void type metadata completion function for SearchSelectionModifier(uint64_t a1)
{
  type metadata accessor for Binding<TextSelection?>(319, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchSelectionModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchSelectionModifier.TransformModifier@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  Value = AGGraphGetValue();

  return outlined init with copy of SearchBoundProperty<TextSelection?>(Value, a1);
}

uint64_t protocol witness for SearchEnvironmentTransform.update(properties:) in conformance SearchSelectionModifier.Transform(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  v3 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 24);
  outlined destroy of SearchSelectionModifier(v2 + v3, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  outlined init with copy of SearchBoundProperty<TextSelection?>(v1, v2 + v3);
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = *(*(v4 - 8) + 56);

  return v5(v2 + v3, 0, 1, v4);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SearchSelectionModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchSelectionModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static SearchSelectionModifier._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance SearchSelectionModifier(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t specialized static SearchSelectionModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2)
{
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  AGGraphCreateOffsetAttribute2();
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>.Metadata, type metadata accessor for SearchBoundProperty.Metadata);
  v3 = swift_allocObject();
  v4 = *(*v3 + 96);
  type metadata accessor for TextSelection?(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + *(*v3 + 104)) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  type metadata accessor for SearchBoundProperty<TextSelection?>.MakeProperty(0);
  lazy protocol witness table accessor for type TextSelection and conformance TextSelection(&lazy protocol witness table cache variable for type SearchBoundProperty<TextSelection?>.MakeProperty and conformance SearchBoundProperty<A>.MakeProperty, type metadata accessor for SearchBoundProperty<TextSelection?>.MakeProperty, protocol conformance descriptor for SearchBoundProperty<A>.MakeProperty);
  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>(0);
  lazy protocol witness table accessor for type SearchSelectionModifier.TransformModifier and conformance SearchSelectionModifier.TransformModifier();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  return _s7SwiftUI34SearchEnvironmentTransformModifierV11_makeInputs8modifier6inputsyAA11_GraphValueVyACyxGG_AA01_kH0VztFZAA0c9SelectionF0V0E0V_Tt1B5(v6, a2);
}

unint64_t lazy protocol witness table accessor for type TextSelection? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TextSelection? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TextSelection? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TextSelection?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TextSelection and conformance TextSelection(&lazy protocol witness table cache variable for type TextSelection and conformance TextSelection, type metadata accessor for TextSelection, protocol conformance descriptor for TextSelection);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type TextSelection? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TextSelection?(255);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TextSelection? and conformance <A> A?();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TextSelection and conformance TextSelection(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>)
  {
    v2 = type metadata accessor for SearchSelectionModifier.Transform(255);
    v4 = type metadata accessor for SearchEnvironmentTransformModifier(a1, v2, &protocol witness table for SearchSelectionModifier.Transform, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchSelectionModifier.TransformModifier and conformance SearchSelectionModifier.TransformModifier()
{
  result = lazy protocol witness table cache variable for type SearchSelectionModifier.TransformModifier and conformance SearchSelectionModifier.TransformModifier;
  if (!lazy protocol witness table cache variable for type SearchSelectionModifier.TransformModifier and conformance SearchSelectionModifier.TransformModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchSelectionModifier.TransformModifier, &type metadata for SearchSelectionModifier.TransformModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSelectionModifier.TransformModifier and conformance SearchSelectionModifier.TransformModifier);
  }

  return result;
}

void type metadata accessor for SearchBoundProperty<TextSelection?>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>?)
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(255, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>?);
    }
  }
}

uint64_t outlined init with copy of SearchBoundProperty<TextSelection?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchSelectionModifier.Transform(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = (v7 + ((v6 + 16) & ~v6));
  }

  else
  {
    a1[1] = a2[1];
    type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    __dst = a1 + v9;
    v10 = a2 + v9;
    v11 = type metadata accessor for TextSelection(0);
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(v10, 1, v11))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v15 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v16 - 8) + 16))(__dst, v10, v16);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v10, *(*(v15 - 8) + 64));
      }

      __dst[*(v11 + 20)] = v10[*(v11 + 20)];
      (*(v12 + 56))(__dst, 0, 1, v11);
    }

    *(a1 + *(v5 + 36)) = *(a2 + *(v5 + 36));
    *(a1 + *(v5 + 40)) = *(a2 + *(v5 + 40));
  }

  return a1;
}

double destroy for SearchSelectionModifier.Transform(char *a1)
{

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for TextSelection(0);
  if (!(*(*(v4 - 8) + 48))(&a1[v3], 1, v4))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v5 - 8) + 8))(&a1[v3], v5);
    }
  }

  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);

  return result;
}

uint64_t *initializeWithCopy for SearchSelectionModifier.Transform(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(v8, 1, v9))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v14 - 8) + 16))(v7, v8, v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v13 - 8) + 64));
    }

    v7[*(v9 + 20)] = v8[*(v9 + 20)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  *(a1 + *(v15 + 36)) = *(a2 + *(v15 + 36));
  *(a1 + *(v15 + 40)) = *(a2 + *(v15 + 40));

  return a1;
}

uint64_t *assignWithCopy for SearchSelectionModifier.Transform(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for TextSelection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      v13 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v14 - 8) + 16))(v6, v7, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v6, v7, *(*(v13 - 8) + 64));
      }

      v6[*(v8 + 20)] = v7[*(v8 + 20)];
      (*(v9 + 56))(v6, 0, 1, v8);
      goto LABEL_15;
    }

LABEL_7:
    type metadata accessor for TextSelection?(0);
    memcpy(v6, v7, *(*(v15 - 8) + 64));
    goto LABEL_15;
  }

  if (v12)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection.Indices);
    v16 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v17 - 8) + 16))(v6, v7, v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v16 - 8) + 64));
    }
  }

  v6[*(v8 + 20)] = v7[*(v8 + 20)];
LABEL_15:
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v19 = v18;
  *(a1 + *(v18 + 36)) = *(a2 + *(v18 + 36));

  *(a1 + *(v19 + 40)) = *(a2 + *(v19 + 40));
  return a1;
}

void *initializeWithTake for SearchSelectionModifier.Transform(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for TextSelection?(0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v13 - 8) + 32))(v7, v8, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    v7[*(v9 + 20)] = v8[*(v9 + 20)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  *(a1 + *(v14 + 36)) = *(a2 + *(v14 + 36));
  *(a1 + *(v14 + 40)) = *(a2 + *(v14 + 40));
  return a1;
}

uint64_t *assignWithTake for SearchSelectionModifier.Transform(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<TextSelection?>(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for TextSelection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v6, 1, v8);
  v12 = v10(v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      v13 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<String.Index>();
        (*(*(v14 - 8) + 32))(v6, v7, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v6, v7, *(*(v13 - 8) + 64));
      }

      v6[*(v8 + 20)] = v7[*(v8 + 20)];
      (*(v9 + 56))(v6, 0, 1, v8);
      goto LABEL_15;
    }

LABEL_7:
    type metadata accessor for TextSelection?(0);
    memcpy(v6, v7, *(*(v15 - 8) + 64));
    goto LABEL_15;
  }

  if (v12)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    outlined destroy of SearchSelectionModifier(v6, type metadata accessor for TextSelection.Indices);
    v16 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<String.Index>();
      (*(*(v17 - 8) + 32))(v6, v7, v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v16 - 8) + 64));
    }
  }

  v6[*(v8 + 20)] = v7[*(v8 + 20)];
LABEL_15:
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(0, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  v19 = v18;
  *(a1 + *(v18 + 36)) = *(a2 + *(v18 + 36));

  *(a1 + *(v19 + 40)) = *(a2 + *(v19 + 40));
  return a1;
}

void type metadata completion function for SearchSelectionModifier.Transform(uint64_t a1)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>.Metadata(319, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>, type metadata accessor for SearchBoundProperty);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void specialized UIDevice.screenSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];

  v1 = [objc_opt_self() currentDevice];
  [v1 orientation];
}

uint64_t EnvironmentValues.isInExpandedSplitView.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.isInExpandedSplitView : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isInExpandedSplitView : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.isInExpandedSplitView.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t ColumnNavigationView.BodyContent.body.getter@<X0>(_OWORD *a2@<X8>)
{
  v4 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v4 < 0 || result < v4)
  {
    goto LABEL_16;
  }

  switch(v4)
  {
    case 2:
      _VariadicView_Children.subscript.getter();
      v18[24] = 2;
      _VariadicView_Children.subscript.getter();
      v24[24] = 1;
      v18[25] = 1;
      __src[10] = v22;
      __src[11] = v23;
      __src[12] = *v24;
      *(&__src[12] + 9) = *&v24[9];
      __src[6] = *&v18[16];
      __src[7] = v19;
      __src[8] = v20;
      __src[9] = v21;
      __src[2] = v15;
      __src[3] = v16;
      __src[4] = v17;
      __src[5] = *v18;
      __src[0] = v13;
      __src[1] = v14;
      result = memcpy(a2, __src, 0x171uLL);
      *(a2 + 369) = 0;
      *(a2 + 370) = 1;
      return result;
    case 1:
      result = _VariadicView_Children.subscript.getter();
      *&v12[24] = 258;
      a2[4] = v11;
      a2[5] = *v12;
      *(a2 + 90) = *&v12[10];
      *a2 = v7;
      a2[1] = v8;
      a2[2] = v9;
      a2[3] = v10;
      *(a2 + 106) = 1;
      *(a2 + 370) = 0;
      return result;
    case 0:
      LOBYTE(__src[0]) = 1;
      *a2 = 1;
      *(a2 + 106) = 0;
      *(a2 + 370) = 0;
      return result;
  }

  _VariadicView_Children.subscript.getter();
  BYTE8(__src[6]) = 1;
  _VariadicView_Children.subscript.getter();
  v18[24] = 2;
  __src[14] = static VerticalAlignment.center.getter();
  LOBYTE(__src[15]) = 0;
  result = _VariadicView_Children.endIndex.getter();
  if (result < 2)
  {
    goto LABEL_17;
  }

  v6 = result;
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < v6)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  outlined init with copy of _VariadicView_Children(v2 + 8, &v25);
  type metadata accessor for Slice<_VariadicView_Children>(0);
  lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  ForEach<>.init(_:content:)();
  LOBYTE(__src[23]) = 1;
  memset(&__src[7], 0, 105);
  outlined destroy of ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?(&__src[7]);
  __src[11] = v17;
  __src[12] = *v18;
  *(&__src[12] + 9) = *&v18[9];
  __src[7] = v13;
  __src[8] = v14;
  __src[9] = v15;
  __src[10] = v16;
  result = memcpy(a2, __src, 0x171uLL);
  *(a2 + 369) = 1;
  *(a2 + 370) = 1;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance ColumnNavigationView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ColumnNavigationView and conformance ColumnNavigationView();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance ColumnNavigationView@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  result = outlined init with copy of _VariadicView_Children(a1, (a2 + 8));
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static _VariadicView_Root._viewListOptions.getter in conformance ColumnNavigationView()
{
  type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    return 512;
  }

  else
  {
    return 0;
  }
}

double (*EnvironmentValues.isInExpandedSplitView.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.isInExpandedSplitView.modify;
}

double EnvironmentValues.isInExpandedSplitView.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.prefersExpandedSidebars(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>();
    v5[2] = lazy protocol witness table accessor for type _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    type metadata accessor for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>(255, &lazy cache variable for type metadata for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, &type metadata for ColumnNavigationView, &protocol witness table for ColumnNavigationView);
    type metadata accessor for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>(255, &lazy cache variable for type metadata for _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>, &type metadata for DoubleColumnNavigationView, &protocol witness table for DoubleColumnNavigationView);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _VariadicView.Tree();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>(255, &lazy cache variable for type metadata for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>, &type metadata for ColumnNavigationView, &protocol witness table for ColumnNavigationView);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ColumnNavigationView and conformance ColumnNavigationView();
    v5[1] = &protocol witness table for _NavigationViewStyleConfiguration.Content;
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ColumnNavigationView and conformance ColumnNavigationView()
{
  result = lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView;
  if (!lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ColumnNavigationView, &type metadata for ColumnNavigationView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView;
  if (!lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ColumnNavigationView, &type metadata for ColumnNavigationView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnNavigationView and conformance ColumnNavigationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<ColumnNavigationView, _NavigationViewStyleConfiguration.Content>(255, &lazy cache variable for type metadata for _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content>, &type metadata for DoubleColumnNavigationView, &protocol witness table for DoubleColumnNavigationView);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView();
    v5[1] = &protocol witness table for _NavigationViewStyleConfiguration.Content;
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<DoubleColumnNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView()
{
  result = lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView;
  if (!lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoubleColumnNavigationView, &type metadata for DoubleColumnNavigationView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView;
  if (!lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoubleColumnNavigationView, &type metadata for DoubleColumnNavigationView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>> and conformance HStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ColumnNavigationView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ColumnNavigationView and conformance ColumnNavigationView();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for ColumnNavigationView.BodyContent(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
}

uint64_t initializeWithCopy for ColumnNavigationView.BodyContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = v5;

  return a1;
}

uint64_t assignWithCopy for ColumnNavigationView.BodyContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  v4 = *(a2 + 48);
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;
  v6 = v4;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ColumnNavigationView.BodyContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  v5 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColumnNavigationView.BodyContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ColumnNavigationView.BodyContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ColumnNavigationView.BodyContent and conformance ColumnNavigationView.BodyContent()
{
  result = lazy protocol witness table cache variable for type ColumnNavigationView.BodyContent and conformance ColumnNavigationView.BodyContent;
  if (!lazy protocol witness table cache variable for type ColumnNavigationView.BodyContent and conformance ColumnNavigationView.BodyContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ColumnNavigationView.BodyContent, &type metadata for ColumnNavigationView.BodyContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnNavigationView.BodyContent and conformance ColumnNavigationView.BodyContent);
  }

  return result;
}

void type metadata accessor for Slice<_VariadicView_Children>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Slice<_VariadicView_Children>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v1 = type metadata accessor for Slice();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Slice<_VariadicView_Children>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<_VariadicView_Children> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<_VariadicView_Children> and conformance <> Slice<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Slice<_VariadicView_Children>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    result = swift_getWitnessTable(MEMORY[0x1E69E74F0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<_VariadicView_Children> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FFC0], MEMORY[0x1E697FFB8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>?);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, MEMORY[0x1E697FFB8], &type metadata for NavigationSearchColumnModifier, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _Variad()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Ele(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicVi, type metadata accessor for _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, type metadata accessor for _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>> and conformance <> _ConditionalContent<A, B>, type metadata accessor for _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>);
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>> and conformance <> _ConditionalContent<A, B>, type metadata accessor for _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>>);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _);
  }

  return result;
}

void type metadata accessor for MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    v7[0] = v3;
    v7[1] = MEMORY[0x1E69E73E0];
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = MEMORY[0x1E6982070];
    v7[5] = v4;
    v5 = type metadata accessor for MulticolumnSplitView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>);
    }
  }
}

void type metadata accessor for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>(255);
    v3 = v2;
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    v5 = v4;
    v6 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
    v7 = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    v10[0] = v3;
    v10[1] = MEMORY[0x1E69E73E0];
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = MEMORY[0x1E6982070];
    v10[5] = v7;
    v8 = type metadata accessor for MulticolumnSplitView(a1, v10);
    if (!v9)
    {
      atomic_store(v8, &lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, MEMORY[0x1E697FFB8], &type metadata for NavigationSearchColumnModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier();
    v6[0] = MEMORY[0x1E697FFB0];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier()
{
  result = lazy protocol witness table cache variable for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier;
  if (!lazy protocol witness table cache variable for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSearchColumnModifier, &type metadata for NavigationSearchColumnModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>>, _ConditionalContent<MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Ele(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for _ConditionalContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
    v7[0] = v3;
    v7[1] = MEMORY[0x1E69E73E0];
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = MEMORY[0x1E6982070];
    v7[5] = v4;
    v5 = type metadata accessor for MulticolumnSplitView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>>);
    }
  }
}

void type metadata accessor for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>(255);
    v3 = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>(255);
    v7[0] = v3;
    v7[1] = v3;
    v7[2] = v4;
    v8 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
    v9 = v8;
    v10 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>, lazy protocol witness table accessor for type ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
    v5 = type metadata accessor for MulticolumnSplitView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, ModifiedContent<ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>, NavigationColumnModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>)
  {
    type metadata accessor for ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>(255);
    lazy protocol witness table accessor for type ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element> and conformance <> ForEach<A, B, C>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>);
    }
  }
}

void type metadata accessor for ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255);
    lazy protocol witness table accessor for type Slice<_VariadicView_Children> and conformance <> Slice<A>();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element> and conformance <> ForEach<A, B, C>)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>(255);
    v4[0] = MEMORY[0x1E697FFB0];
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>> and conformance HStack<A>, type metadata accessor for HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, MEMORY[0x1E69817F8]);
    v5[1] = lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ForEach<Slice<_VariadicView_Children>, AnyHashable, _VariadicView_Children.Element>>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<MulticolumnSplitView<_UnaryViewAdaptor<EmptyView>, Never, _UnaryViewAdaptor<EmptyView>>, MulticolumnSplitView<ModifiedContent<ModifiedContent<_VariadicView_Children.Element, NavigationSearchColumnModifier>, NavigationColumnModifier>, Never, _UnaryViewAdaptor<EmptyView>>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    v5[0] = &protocol witness table for MulticolumnSplitView<A, B, C>;
    v5[1] = &protocol witness table for MulticolumnSplitView<A, B, C>;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t implicit closure #4 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v10 = type metadata accessor for ContextMenuModifierCore.AttachMenuPlatformItemList(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifierCore<A>.AttachMenuPlatformItemList, v10);
  type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, partial apply for closure #1 in Attribute.init<A>(_:), v9, v10, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7;
}

uint64_t (*ContextMenuModifierCore.AttachMenuPlatformItemList.value.getter(unint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v5;
  *(v7 + 36) = v6;
  return partial apply for closure #1 in ContextMenuModifierCore.AttachMenuPlatformItemList.value.getter;
}

uint64_t closure #1 in ContextMenuModifierCore.AttachMenuPlatformItemList.value.getter(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for PlatformItemList.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v42 = a1;
  v19 = *a1;
  PlatformItemList.mergedContentItem.getter(*a1, &v37 - v17);
  v20 = *AGGraphGetValue();

  *(v18 + 117) = v20;
  if ((a2 & 0x100000000) == 0)
  {

    v23 = v41;
    v22 = v42;
LABEL_14:
    outlined init with copy of PlatformItemList.Item(v18, v23);
    type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18CD63400;
    outlined init with take of PlatformItemList.Item(v23, v36 + v35);
    *v22 = v36;
    return outlined destroy of PlatformItemList.Item(v18);
  }

  v24 = *(v19 + 16);
  if (!v24)
  {
LABEL_8:
    v26 = 1;
LABEL_10:
    v27 = (v18 + 408);
    (*(v11 + 56))(v9, v26, 1, v10);

    outlined init with take of PlatformItemList.Item?(v9, v6);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      outlined destroy of PlatformItemList.Item.SelectionBehavior?(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for [ViewResponder]);
      v28 = 0;
      v40 = xmmword_18CD633F0;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
    }

    else
    {
      v48 = v6[472];
      v29 = *(v6 + 456);
      v46 = *(v6 + 440);
      v47 = v29;
      v30 = *(v6 + 424);
      v44 = *(v6 + 408);
      v45 = v30;
      outlined init with copy of PlatformItemList.Item.SelectionBehavior?(&v44, v43);
      outlined destroy of PlatformItemList.Item(v6);
      v39 = v45;
      v40 = v44;
      v37 = v47;
      v38 = v46;
      v28 = v48;
    }

    v23 = v41;
    v22 = v42;
    v31 = *(v18 + 456);
    v46 = *(v18 + 440);
    v47 = v31;
    v48 = v18[472];
    v32 = *(v18 + 424);
    v44 = *v27;
    v45 = v32;
    outlined destroy of PlatformItemList.Item.SelectionBehavior?(&v44, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], type metadata accessor for _EnvironmentKeyWritingModifier<Bool>);
    v33 = v39;
    *v27 = v40;
    *(v18 + 424) = v33;
    v34 = v37;
    *(v18 + 440) = v38;
    *(v18 + 456) = v34;
    v18[472] = v28;
    goto LABEL_14;
  }

  v25 = 0;
  while (v25 < *(v19 + 16))
  {
    outlined init with copy of PlatformItemList.Item(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v15);
    if (*(v15 + 52) != 1)
    {
      outlined init with take of PlatformItemList.Item(v15, v9);
      v26 = 0;
      goto LABEL_10;
    }

    ++v25;
    result = outlined destroy of PlatformItemList.Item(v15);
    if (v24 == v25)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContextMenuModifierCore<A>.AttachMenuPlatformItemList@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ContextMenuModifierCore.AttachMenuPlatformItemList.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuModifierCore<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContextMenuModifierCore<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasContextMenuInteractionKey(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t ContextMenuResponderFilter.updateValue()()
{
  v1 = v0;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  AGGraphGetValue();
  if (((v4 | v7) & 1) != 0 || (type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {
    v8 = *(v1 + 32);
    *(v8 + 224) = MEMORY[0x18D00B390]();
    *(v8 + 232) = v9;
    *(v8 + 240) = v5;
    *(v8 + 248) = v6;
  }

  v10 = *(v1 + 32);
  *(v10 + 304) = *AGGraphGetValue();

  *(v10 + 256) = AGCreateWeakAttribute();
  *(v10 + 264) = *AGGraphGetValue();
  type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v11)
  {

    dispatch thunk of MultiViewResponder.children.setter();
  }

  v12 = AGGraphGetValue();
  v13 = v6 - v12[1];
  *(v10 + 280) = v5 - *v12;
  *(v10 + 288) = v13;
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18CD69590;
    *(v15 + 32) = v10;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t ContextMenuResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

void closure #1 in ContextMenuResponderBase.items.getter(uint64_t *a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
  }

  *a2 = WeakValue;
}

uint64_t ContextMenuResponderBase.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

void *initializeBufferWithCopyOfBuffer for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-34 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = a2 + 27;
    outlined copy of Environment<Selector?>.Content(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
    v15 = (v3 + 27) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v14 & 0xFFFFFFFFFFFFFFF8);
    v17 = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
    outlined copy of Environment<Selector?>.Content(v16, v17);
    *v15 = v16;
    *(v15 + 8) = v17;
    (*(v5 + 16))((v15 + v6 + 9) & ~v6, ((v14 & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

_DWORD *initializeWithTake for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (a1 + 27) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 27) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 32))((*(v10 + 80) + 9 + v7) & ~*(v10 + 80), (*(v10 + 80) + 9 + v8) & ~*(v10 + 80));
  return a1;
}

_DWORD *assignWithTake for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2 + 27;
  *a1 = *a2;
  v6 = a1 + 27;
  v7 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v8;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  v5 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v5 + 8);
  v13 = *v6;
  v14 = *(v6 + 8);
  *v6 = *v5;
  *(v6 + 8) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 40))((*(v15 + 80) + 9 + v6) & ~*(v15 + 80), (*(v15 + 80) + 9 + v5) & ~*(v15 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 33) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((((a1 + 27) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ContextMenuModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 33) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v20 = *(v6 + 56);
    v21 = (((a1 + 27) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v20(v21);
  }

  else
  {
    v19 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      *(v19 + 8) = 0;
      *v19 = a2 - 255;
    }

    else
    {
      *(v19 + 8) = -a2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActiveContextMenu()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ActiveContextMenu()
{
  v1 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActiveContextMenu(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ActiveContextMenu and conformance ActiveContextMenu()
{
  result = lazy protocol witness table cache variable for type ActiveContextMenu and conformance ActiveContextMenu;
  if (!lazy protocol witness table cache variable for type ActiveContextMenu and conformance ActiveContextMenu)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActiveContextMenu, &type metadata for ActiveContextMenu, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActiveContextMenu and conformance ActiveContextMenu);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ActiveContextMenuKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1EAB09AF4;
  *a1 = static ActiveContextMenuKey.defaultValue;
  *(a1 + 4) = v1;
  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>);
    }
  }
}

void EnvironmentValues.activeContextMenu.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    v5[1] = &protocol witness table for PortalGroupRendererEffect;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>);
  }

  return result;
}

void type metadata accessor for _SemanticFeature<Semantics_v5>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ContextMenuModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xFC;
  if (v6 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 19) & ~v6 & 0x1FC));
  }

  else
  {
    (*(v4 + 16))(a1);
    v11 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    *v11 = *v12;
    *(v11 + 4) = *(v12 + 4);
  }

  return v3;
}

uint64_t assignWithCopy for ContextMenuModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  return a1;
}

uint64_t initializeWithTake for ContextMenuModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  return a1;
}

uint64_t assignWithTake for ContextMenuModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuModifierCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 4);
    if (v17 >= 3)
    {
      return v17 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for ContextMenuModifierCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        *((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 4) = a2 + 2;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 5);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t assignWithCopy for ContextMenuResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for ContextMenuResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextMenuResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of PlatformItemList.Item?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PlatformItemList.Item.SelectionBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(0, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _TestApp.runBenchmarks(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0, a2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _TestApp.RootView.init()();
  v9[0] = v9[1];
  v6 = v10;
  v7 = v11;
  static _TestApp.rootViewIdentifier.getter();
  *v5 = v9[0];
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;

  specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(v5, partial apply for closure #1 in _TestApp.runBenchmarks(_:), v8);
}

void type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>)
  {
    type metadata accessor for <<opaque return type of static _TestApp.rootViewIdentifier>>.0(255, a2);
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    swift_getOpaqueTypeConformance2();
    v2 = type metadata accessor for TestIDView();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of static _TestApp.rootViewIdentifier>>.0(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    }
  }
}

uint64_t closure #1 in _TestApp.runBenchmarks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in _TestApp.runBenchmarks(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  type metadata accessor for [DispatchWorkItemFlags](0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v14, v11, v17);
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v20);
}

void _TestApp.performBenchmarks(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  static _TestApp.host.setter();
  ObjectType = swift_getObjectType();
  static _TestApp.defaultEnvironment.getter();
  v17 = v12;
  (*(a3 + 64))(&v17, ObjectType, a3);
  v7 = CFRunLoopGetCurrent();
  v8 = *MEMORY[0x1E695E8D0];
  if (*MEMORY[0x1E695E8D0])
  {
    v9 = v7;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v15 = partial apply for closure #1 in _TestApp.performBenchmarks(_:with:);
    v16 = v10;
    *&v12 = MEMORY[0x1E69E9820];
    *(&v12 + 1) = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed () -> ();
    v14 = &block_descriptor_9;
    v11 = _Block_copy(&v12);
    swift_unknownObjectRetain();

    CFRunLoopPerformBlock(v9, v8, v11);
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in _TestApp.performBenchmarks(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of _Benchmark(v7, v26);
      v11 = v27;
      v10 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(*(v10 + 8) + 8))(v11);
      v12 = v27;
      v13 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v14 = (*(v13 + 16))(a2, *(a3 + 8), v12, v13);
      outlined init with copy of _Benchmark(v26, v24);
      *(&v25 + 1) = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
      }

      v4[2] = v16 + 1;
      v17 = &v4[6 * v16];
      v18 = v24[0];
      v19 = v25;
      v17[3] = v24[1];
      v17[4] = v19;
      v17[2] = v18;
      if (enableProfiler.getter())
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          if (a2)
          {
            __swift_project_boxed_opaque_existential_1(v26, v27);
            swift_getDynamicType();
            swift_unknownObjectRetain();
            v20 = _typeName(_:qualified:)();
            v22 = v21;
            swift_getObjectType();
            v23.value._countAndFlagsBits = v20;
            v23.value._object = v22;
            ViewRendererHost.archiveJSON(name:)(v23);

            ViewRendererHost.resetProfile()();
            swift_unknownObjectRelease();
          }
        }
      }

      v9 = v27;
      v8 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(*(v8 + 8) + 16))(v9);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v7 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  log(_:)(v4);
  exit(0);
}

void _TestApp.runPerformanceTests(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0, a2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TestingAppDelegate.performanceTests = a1;

  _TestApp.RootView.init()();
  v8[0] = v8[1];
  v6 = v9;
  v7 = v10;
  static _TestApp.rootViewIdentifier.getter();
  *v5 = v8[0];
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(v5, closure #1 in _TestApp.runPerformanceTests(_:), 0);
}

uint64_t closure #1 in _TestApp.runPerformanceTests(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  return static _TestApp.host.setter();
}

uint64_t objectdestroy_2Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *assignWithCopy for _SceneInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  return a1;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for _SceneInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SceneInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t storeEnumTagSinglePayload for _SceneInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ResolvedContentUnavailableView(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedContentUnavailableView(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[3];
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64);
  v13 = a3[4];
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = ((v12 + v15 + ((v8 + v10 + ((v7 + 16) & ~v7)) & ~v10)) & ~v15) + *(v14 + 64);
  v18 = v10 | v7 | v15;
  if (v18 > 7 || ((*(v9 + 80) | *(v6 + 80) | *(v14 + 80)) & 0x100000) != 0 || v17 > 0x18)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = v21 + ((v18 & 0xF8 ^ 0x1F8) & (v18 + 16));
  }

  else
  {
    v28 = v4;
    v29 = v5;
    v30 = ~v10;
    v31 = v13;
    v32 = ~v15;
    v22 = *a2;
    v23 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content();
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 12) = *(a2 + 3);
    (*(v6 + 16))((a1 + v7 + 16) & ~v7, (a2 + v7 + 16) & ~v7, v28);
    v25 = (((a1 + v7 + 16) & ~v7) + v11) & v30;
    v26 = (((a2 + v7 + 16) & ~v7) + v11) & v30;
    (*(v9 + 16))(v25, v26, v29);
    (*(v14 + 16))((v25 + v16) & v32, (v26 + v16) & v32, v31);
  }

  return a1;
}

uint64_t destroy for ResolvedContentUnavailableView(uint64_t a1, void *a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = *(a2[2] - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(a2[3] - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = *(a2[4] - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v9 + 56) + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t initializeWithCopy for ResolvedContentUnavailableView(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 12) = *(a2 + 3);
  v8 = *(a3[2] - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 16 + a1) & ~v10;
  v12 = (a2 + v10 + 16) & ~v10;
  (*(v8 + 16))(v11, v12);
  v13 = *(v9 + 48);
  v14 = *(a3[3] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(a3[4] - 8);
  (*(v20 + 16))((*(v15 + 48) + *(v20 + 80) + v18) & ~*(v20 + 80), (*(v15 + 48) + *(v20 + 80) + v19) & ~*(v20 + 80));
  return a1;
}

uint64_t assignWithCopy for ResolvedContentUnavailableView(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  *(a1 + 12) = *(a2 + 3);
  v10 = *(a3[2] - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (a2 + v12 + 16) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40);
  v16 = *(a3[3] - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 24))(v20, v21);
  v22 = *(a3[4] - 8);
  (*(v22 + 24))((*(v17 + 40) + *(v22 + 80) + v20) & ~*(v22 + 80), (*(v17 + 40) + *(v22 + 80) + v21) & ~*(v22 + 80));
  return a1;
}

_OWORD *initializeWithTake for ResolvedContentUnavailableView(_OWORD *a1, _OWORD *a2, void *a3)
{
  *a1 = *a2;
  v5 = *(a3[2] - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = *(a3[3] - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 32))(v15, v16);
  v17 = *(a3[4] - 8);
  (*(v17 + 32))((*(v12 + 32) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v12 + 32) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

uint64_t assignWithTake for ResolvedContentUnavailableView(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  *(a1 + 12) = *(a2 + 3);
  v10 = *(a3[2] - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (a2 + v12 + 16) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24);
  v16 = *(a3[3] - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 40))(v20, v21);
  v22 = *(a3[4] - 8);
  (*(v22 + 40))((*(v17 + 24) + *(v22 + 80) + v20) & ~*(v22 + 80), (*(v17 + 24) + *(v22 + 80) + v21) & ~*(v22 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedContentUnavailableView(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v5 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v15;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v20 = ((v18 + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v16 > 0xFE)
      {
        v29 = (a1 + v12 + 16) & ~v12;
        if (v6 == v17)
        {
          v30 = *(v5 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v13 + v14) & ~v14;
          if (v9 == v17)
          {
            v32 = *(v8 + 48);
            v33 = *(v8 + 84);
            v34 = a3[3];
          }

          else
          {
            v32 = *(v11 + 48);
            v31 = (v18 + v31) & ~v15;
            v33 = *(v11 + 84);
            v34 = a3[4];
          }

          return v32(v31, v33, v34);
        }
      }

      else
      {
        v28 = *(a1 + 8);
        if (v28 > 1)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v18 + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for ResolvedContentUnavailableView(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  if (v7 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v10 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v13 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v13;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(*(v8 - 8) + 64) + v18;
  v23 = ((v22 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17)) & ~v18) + v19;
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v29 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&a1[v23] = v28;
              }

              else
              {
                *&a1[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      a1[v23] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v26)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v20 <= 0xFE)
  {
    if (a2 > 0xFE)
    {
      *a1 = a2 - 255;
      *(a1 + 1) = 0;
    }

    else
    {
      a1[8] = -a2;
    }

    return;
  }

  v32 = &a1[v15 + 16] & ~v15;
  if (v7 == v21)
  {
    v33 = *(v6 + 56);

LABEL_63:
    v33(v32);
    return;
  }

  v34 = (v32 + v16 + v17) & ~v17;
  if (v11 != v21)
  {
    v33 = *(v14 + 56);
    v32 = (v22 + v34) & ~v18;

    goto LABEL_63;
  }

  v35 = *(v10 + 56);

  v35(v34);
}

uint64_t ResolvedContentUnavailableView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = MEMORY[0x1E69801E0];
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
  v40 = v4;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  v42 = a1 + 5;
  v41 = a1[2];
  type metadata accessor for ModifiedContent();
  v5 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v6 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  v38 = a1;
  v39 = a1[3];
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], v3);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  v37 = a1[4];
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  v8 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v7);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v6);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  swift_getWitnessTable(v8, v9);
  v10 = type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v5, MEMORY[0x1E697E5E0]);
  v11 = type metadata accessor for ModifiedContent();
  v12 = MEMORY[0x1E697EC00];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v14 = type metadata accessor for ModifiedContent();
  v15 = MEMORY[0x1E69E6530];
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v16 = type metadata accessor for ModifiedContent();
  v59[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v10);
  v59[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v17 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v59);
  v19 = MEMORY[0x1E697EBF8];
  v58[0] = WitnessTable;
  v58[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, v12, MEMORY[0x1E697EBF8]);
  v57[0] = swift_getWitnessTable(v17, v13, v58);
  v57[1] = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v19);
  v56[0] = swift_getWitnessTable(v17, v14, v57);
  v56[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, v15);
  v20 = swift_getWitnessTable(v17, v16, v56);
  type metadata accessor for ScrollView(255, v16, v20, v21);
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollBounceBehavior>, &type metadata for TransformScrollBounceBehavior, &protocol witness table for TransformScrollBounceBehavior, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for TupleView();
  v23 = swift_getWitnessTable(v8, v22);
  type metadata accessor for ViewThatFits(255, v22, v23, v24);
  v25 = type metadata accessor for StaticIf();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v37 - v30;
  *&v32 = v37;
  *(&v32 + 1) = *v42;
  *&v33 = v41;
  *(&v33 + 1) = v39;
  v50 = v33;
  v51 = v32;
  v34 = v38[7];
  v52 = v38[6];
  v53 = v34;
  v54 = v43;
  v45 = v33;
  v46 = v32;
  v47 = v52;
  v48 = v34;
  v49 = v43;
  StaticIf<>.init<A>(idiom:then:else:)();
  v55[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v55[1] = v20;
  v55[2] = &protocol witness table for ViewThatFits<A>;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v25, v55);
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v26 + 8);
  v35(v28, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v35)(v31, v25);
}

uint64_t ResolvedContentUnavailableView.resolvedBody(iconHidden:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = a1;
  v47 = *(a2 + 16);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  v4 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v5 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  v43 = *(a2 + 24);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  v36 = *(a2 + 32);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v7 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v6);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v5);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for TupleView();
  swift_getWitnessTable(v7, v8);
  v9 = type metadata accessor for VStack();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v4, MEMORY[0x1E697E5E0]);
  v35 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v39 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v35 - v18;
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v42 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v35 - v22;
  v51 = v47;
  v52 = v43;
  v53 = v36;
  v54 = *(a2 + 40);
  v55 = *(a2 + 56);
  v56 = v49;
  v57 = v48;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  ResolvedContentUnavailableView.marginModifier.getter(v66);
  LOBYTE(v61[0]) = v66[0];
  *(v61 + 8) = *&v66[8];
  *(&v61[1] + 8) = *&v66[24];
  BYTE8(v61[2]) = v66[40];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981870], v9);
  MEMORY[0x18D00A570](v61, v9, v35, WitnessTable);
  (*(v38 + 8))(v11, v9);
  ResolvedContentUnavailableView.macFrameModifier.getter(v66);
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61[0] = *v66;
  v61[1] = *&v66[16];
  v61[2] = *&v66[32];
  v62 = v67;
  v24 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v60[0] = WitnessTable;
  v60[1] = v24;
  v25 = MEMORY[0x1E697E858];
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v60);
  v27 = v37;
  MEMORY[0x18D00A570](v61, v13, v39, v26);
  (*(v41 + 8))(v15, v13);
  ResolvedContentUnavailableView.macFrameModifier.getter(v66);
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61[0] = *v66;
  v61[1] = *&v66[16];
  v61[2] = *&v66[32];
  v62 = v67;
  v28 = MEMORY[0x1E697EBF8];
  v29 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00], MEMORY[0x1E697EBF8]);
  v59[0] = v26;
  v59[1] = v29;
  v30 = swift_getWitnessTable(v25, v17, v59);
  v31 = v40;
  MEMORY[0x18D00A570](v61, v17, v42, v30);
  (*(v44 + 8))(v27, v17);
  v32 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v28);
  v58[0] = v30;
  v58[1] = v32;
  v33 = v45;
  swift_getWitnessTable(v25, v45, v58);
  View.lineLimit(_:)();
  return (*(v46 + 8))(v31, v33);
}

uint64_t closure #2 in ResolvedContentUnavailableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a6;
  v42 = a7;
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v38 = a2;
  v39 = a1;
  v43 = a8;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v9 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for TupleView();
  v11 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v10);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v9);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  swift_getWitnessTable(v11, v12);
  v13 = type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v8, MEMORY[0x1E697E5E0]);
  v14 = type metadata accessor for ModifiedContent();
  v15 = MEMORY[0x1E697EC00];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v17 = type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v18 = type metadata accessor for ModifiedContent();
  v55[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v13);
  v55[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v19 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v55);
  v21 = MEMORY[0x1E697EBF8];
  v54[0] = WitnessTable;
  v54[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, v15, MEMORY[0x1E697EBF8]);
  v53[0] = swift_getWitnessTable(v19, v16, v54);
  v53[1] = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v21);
  v52[0] = swift_getWitnessTable(v19, v17, v53);
  v52[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v22 = swift_getWitnessTable(v19, v18, v52);
  type metadata accessor for ScrollView(255, v18, v22, v23);
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollBounceBehavior>, &type metadata for TransformScrollBounceBehavior, &protocol witness table for TransformScrollBounceBehavior, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable(v11, v24);
  v27 = type metadata accessor for ViewThatFits(0, v24, v25, v26);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v36 - v32;
  v45 = v38;
  v46 = v37;
  v47 = v36;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v39;
  ViewThatFits.init(in:content:)(2, partial apply for closure #1 in closure #2 in ResolvedContentUnavailableView.body.getter, v44, v24, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  v34 = *(v28 + 8);
  v34(v30, v27);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v34)(v33, v27);
}

uint64_t closure #1 in closure #2 in ResolvedContentUnavailableView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a7;
  v78 = a6;
  v72 = a5;
  v69 = a4;
  v70 = a3;
  v71 = a2;
  v74 = a1;
  v75 = a8;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v9 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for TupleView();
  v11 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v10);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v9);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  swift_getWitnessTable(v11, v12);
  v13 = type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v8, MEMORY[0x1E697E5E0]);
  v14 = type metadata accessor for ModifiedContent();
  v15 = MEMORY[0x1E697EC00];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v17 = type metadata accessor for ModifiedContent();
  v18 = MEMORY[0x1E69E6530];
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v19 = type metadata accessor for ModifiedContent();
  v100[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v13);
  v100[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v100);
  v22 = MEMORY[0x1E697EBF8];
  v99[0] = WitnessTable;
  v99[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, v15, MEMORY[0x1E697EBF8]);
  v98[0] = swift_getWitnessTable(v20, v16, v99);
  v98[1] = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v22);
  v68 = v20;
  v23 = swift_getWitnessTable(v20, v17, v98);
  v24 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, v18);
  v97[0] = v23;
  v97[1] = v24;
  v25 = v19;
  v76 = swift_getWitnessTable(v20, v19, v97);
  v58 = type metadata accessor for ScrollView(0, v19, v76, v26);
  v67 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v57 - v27;
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollBounceBehavior>, &type metadata for TransformScrollBounceBehavior, &protocol witness table for TransformScrollBounceBehavior, type metadata accessor for TransformScrollStorageModifier);
  v65 = type metadata accessor for ModifiedContent();
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v64 = &v57 - v30;
  v77 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v59 = &v57 - v35;
  v36 = v71;
  v37 = v70;
  v91 = v71;
  v92 = v70;
  v38 = v69;
  v39 = v72;
  v93 = v69;
  v94 = v72;
  v40 = v73;
  v95 = v78;
  v96 = v73;
  v41 = type metadata accessor for ResolvedContentUnavailableView(0, &v91);
  v42 = v74;
  ResolvedContentUnavailableView.resolvedBody(iconHidden:)(0, v41, v33);
  v43 = v76;
  static ViewBuilder.buildExpression<A>(_:)();
  v61 = *(v77 + 8);
  v62 = v77 + 8;
  v57 = v25;
  v61(v33, v25);
  v80 = v36;
  v81 = v37;
  v82 = v38;
  v83 = v39;
  v84 = v78;
  v85 = v40;
  v86 = v42;
  v44 = v63;
  ScrollView.init(_:content:)(2, partial apply for closure #1 in closure #1 in closure #2 in ResolvedContentUnavailableView.body.getter, v79, v25, v43, v63);
  LOBYTE(v91) = 2;
  v45 = v58;
  v46 = swift_getWitnessTable(protocol conformance descriptor for ScrollView<A>, v58);
  v47 = v60;
  View.scrollBounceBehavior(_:axes:)(&v91, 2, v45, v46);
  (*(v67 + 8))(v44, v45);
  v90[0] = v46;
  v90[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  v48 = v65;
  v49 = swift_getWitnessTable(v68, v65, v90);
  v50 = v64;
  static ViewBuilder.buildExpression<A>(_:)();
  v51 = v66;
  v52 = *(v66 + 8);
  v52(v47, v48);
  v53 = v59;
  v54 = v57;
  (*(v77 + 16))(v33, v59, v57);
  v91 = v33;
  (*(v51 + 16))(v47, v50, v48);
  v92 = v47;
  v89[0] = v54;
  v89[1] = v48;
  v87 = v76;
  v88 = v49;
  static ViewBuilder.buildBlock<each A>(_:)(&v91, 2uLL, v89);
  v52(v50, v48);
  v55 = v61;
  v61(v53, v54);
  v52(v47, v48);
  return v55(v33, v54);
}

uint64_t closure #1 in ResolvedContentUnavailableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v46 = a8;
  v43 = a6;
  v44 = a7;
  v42 = a5;
  v39 = a4;
  v40 = a3;
  v41 = a2;
  v45 = a1;
  v47 = a9;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  type metadata accessor for ModifiedContent();
  v9 = MEMORY[0x1E697E108];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  v10 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for TupleView();
  v12 = MEMORY[0x1E6981F48];
  swift_getWitnessTable(MEMORY[0x1E6981F48], v11);
  type metadata accessor for VStack();
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v10);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for TupleView();
  swift_getWitnessTable(v12, v13);
  v14 = type metadata accessor for VStack();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, v9, MEMORY[0x1E697E5E0]);
  v15 = type metadata accessor for ModifiedContent();
  v16 = MEMORY[0x1E697EC00];
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, MEMORY[0x1E697EC00]);
  v17 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>();
  v18 = type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v52[0] = v41;
  v52[1] = v40;
  v52[2] = v39;
  v52[3] = v42;
  v52[4] = v43;
  v52[5] = v44;
  v26 = type metadata accessor for ResolvedContentUnavailableView(0, v52);
  ResolvedContentUnavailableView.resolvedBody(iconHidden:)(v46, v26, v22);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981870], v14);
  v28 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>();
  v51[0] = WitnessTable;
  v51[1] = v28;
  v29 = MEMORY[0x1E697E858];
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v51);
  v31 = MEMORY[0x1E697EBF8];
  v32 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier>, v16, MEMORY[0x1E697EBF8]);
  v50[0] = v30;
  v50[1] = v32;
  v33 = swift_getWitnessTable(v29, v17, v50);
  v34 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate, v31);
  v49[0] = v33;
  v49[1] = v34;
  v35 = swift_getWitnessTable(v29, v18, v49);
  v36 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
  v48[0] = v35;
  v48[1] = v36;
  swift_getWitnessTable(v29, v19, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  v37 = *(v20 + 8);
  v37(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v37)(v25, v19);
}

uint64_t closure #1 in ResolvedContentUnavailableView.resolvedBody(iconHidden:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v91 = a4;
  v92 = a8;
  v93 = a1;
  v94 = a7;
  v90 = a6;
  LODWORD(v77) = a2;
  v87 = a9;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  type metadata accessor for ModifiedContent();
  v11 = MEMORY[0x1E6980A08];
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v12 = a5;
  v74 = a5;
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  swift_getTupleTypeMetadata2();
  v83 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v83);
  v80 = type metadata accessor for VStack();
  v86 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v64 - v13;
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], v11);
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v84 = v14;
  v85 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v64 - v18;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
  v19 = a3;
  v20 = type metadata accessor for ModifiedContent();
  v71 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
  v66 = v23;
  v24 = type metadata accessor for ModifiedContent();
  v72 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v64 = &v64 - v25;
  v26 = type metadata accessor for ModifiedContent();
  v73 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v64 - v27;
  v69 = type metadata accessor for ModifiedContent();
  v76 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v64 - v28;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8]);
  v70 = v29;
  v75 = type metadata accessor for ModifiedContent();
  v89 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v88 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v64 - v32;
  v68 = v19;
  v33 = v90;
  KeyPath = v19;
  v113 = v91;
  v114 = v12;
  v115 = v90;
  v116 = v94;
  v117 = v92;
  type metadata accessor for ResolvedContentUnavailableView(0, &KeyPath);
  KeyPath = swift_getKeyPath();
  LOBYTE(v113) = 0;
  HIDWORD(v113) = 1;
  LOBYTE(v114) = v77;
  lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle();
  v34 = v22;
  View.labelStyle<A>(_:)(&KeyPath, v19, &unk_1EFF93F98, v33);
  outlined consume of Environment<Bool>.Content(KeyPath, v113);
  v35 = lazy protocol witness table accessor for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>();
  v111[0] = v33;
  v111[1] = v35;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v111);
  v38 = v64;
  MEMORY[0x18D00A570](v37, v20, v66, v37);
  (*(v71 + 8))(v34, v20);
  static Font.title2.getter();
  v39 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v110[0] = v37;
  v110[1] = v39;
  v40 = swift_getWitnessTable(v36, v24, v110);
  v41 = v65;
  View.font(_:)();

  (*(v72 + 8))(v38, v24);
  v42 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  v109[0] = v40;
  v109[1] = v42;
  v43 = swift_getWitnessTable(v36, v26, v109);
  v44 = v67;
  View.multilineTextAlignment(_:)();
  (*(v73 + 8))(v41, v26);
  LOWORD(KeyPath) = 256;
  v45 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0]);
  v108[0] = v43;
  v108[1] = v45;
  v46 = v69;
  v47 = swift_getWitnessTable(v36, v69, v108);
  v48 = v88;
  MEMORY[0x18D00A570](&KeyPath, v46, v70, v47);
  (*(v76 + 8))(v44, v46);
  v49 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>, MEMORY[0x1E697EBE8], MEMORY[0x1E697EBE0]);
  v107[0] = v47;
  v107[1] = v49;
  v50 = v75;
  v73 = swift_getWitnessTable(v36, v75, v107);
  v51 = v48;
  static ViewBuilder.buildExpression<A>(_:)();
  v76 = *(v89 + 8);
  v77 = v89 + 8;
  (v76)(v48, v50);
  v96 = v68;
  v97 = v91;
  v98 = v74;
  v99 = v90;
  v100 = v94;
  v101 = v92;
  v102 = v93;
  static HorizontalAlignment.center.getter();
  v52 = v79;
  VStack.init(alignment:spacing:content:)();
  LOBYTE(KeyPath) = 1;
  v53 = v80;
  v54 = swift_getWitnessTable(MEMORY[0x1E6981870], v80);
  v55 = v78;
  View.controlSize(_:)();
  (*(v86 + 8))(v52, v53);
  v56 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38]);
  v106[0] = v54;
  v106[1] = v56;
  v57 = v84;
  v58 = swift_getWitnessTable(v36, v84, v106);
  v59 = v81;
  static ViewBuilder.buildExpression<A>(_:)();
  v60 = v85;
  v61 = *(v85 + 8);
  v61(v55, v57);
  (*(v89 + 16))(v51, v95, v50);
  KeyPath = v51;
  (*(v60 + 16))(v55, v59, v57);
  v113 = v55;
  v105[0] = v50;
  v105[1] = v57;
  v103 = v73;
  v104 = v58;
  static ViewBuilder.buildBlock<each A>(_:)(&KeyPath, 2uLL, v105);
  v61(v59, v57);
  v62 = v76;
  (v76)(v95, v50);
  v61(v55, v57);
  return v62(v88, v50);
}

uint64_t closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedBody(iconHidden:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a7;
  v51 = a6;
  v50 = a5;
  v49 = a2;
  v62 = a1;
  v58 = a8;
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v53 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v55 = type metadata accessor for _VariadicView.Tree();
  v56 = type metadata accessor for StaticIf();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v47 - v12;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  v13 = type metadata accessor for ModifiedContent();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v16 = type metadata accessor for ModifiedContent();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  type metadata accessor for Font?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
  v19 = type metadata accessor for ModifiedContent();
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v47 - v23;
  v72 = v49;
  v73 = a3;
  v74 = a4;
  v75 = v50;
  v24 = v51;
  v76 = v51;
  v77 = v59;
  v50 = type metadata accessor for ResolvedContentUnavailableView(0, &v72);
  static Font.subheadline.getter();
  View.font(_:)();

  static Color.secondary.getter();
  v25 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
  v71[0] = v24;
  v71[1] = v25;
  v26 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v71);
  View.defaultForegroundColor(_:)();

  (*(v48 + 8))(v15, v13);
  v28 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v70[0] = WitnessTable;
  v70[1] = v28;
  v29 = swift_getWitnessTable(v26, v16, v70);
  View.multilineTextAlignment(_:)();
  (*(v47 + 8))(v18, v16);
  v30 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0]);
  v69[0] = v29;
  v69[1] = v30;
  v31 = v19;
  v49 = swift_getWitnessTable(v26, v19, v69);
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v61 + 8);
  v48 = v61 + 8;
  v51 = v32;
  v32(v21, v19);
  v33 = v52;
  ResolvedContentUnavailableView.resolvedActions.getter(v50, v52);
  v34 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v35 = lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v36 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate, &protocol witness table for ButtonStyleModifier<A>);
  v68[0] = v59;
  v68[1] = v36;
  v37 = swift_getWitnessTable(v26, v53, v68);
  v67[0] = v35;
  v67[1] = v37;
  v38 = swift_getWitnessTable(MEMORY[0x1E697E308], v55, v67);
  v66[0] = v34;
  v66[1] = v38;
  v66[2] = v38;
  v39 = v56;
  v40 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v56, v66);
  v41 = v54;
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = v57;
  v43 = *(v57 + 8);
  v43(v33, v39);
  v44 = v60;
  (*(v61 + 16))(v21, v60, v31);
  v72 = v21;
  (*(v42 + 16))(v33, v41, v39);
  v73 = v33;
  v65[0] = v31;
  v65[1] = v39;
  v63 = v49;
  v64 = v40;
  static ViewBuilder.buildBlock<each A>(_:)(&v72, 2uLL, v65);
  v43(v41, v39);
  v45 = v51;
  v51(v44, v31);
  v43(v33, v39);
  return v45(v21, v31);
}

uint64_t ResolvedContentUnavailableView.resolvedActions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v28 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v27 = v4;
  v5 = type metadata accessor for _VariadicView.Tree();
  v6 = type metadata accessor for StaticIf();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = *(v4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(a1 + 56);
  MEMORY[0x18D00A570](v13);
  v38 = *(a1 + 48);
  v39 = v16;
  v40 = v15;
  *&v17 = v3;
  *(&v17 + 1) = *v28;
  v36 = *(a1 + 16);
  v37 = v17;
  *&v18 = v38;
  *(&v18 + 1) = v16;
  v32 = v36;
  v33 = v17;
  v34 = v18;
  v35 = v15;
  v19 = lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v20 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate, &protocol witness table for ButtonStyleModifier<A>);
  v43[0] = v16;
  v43[1] = v20;
  v21 = v27;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v43);
  v42[0] = v19;
  v42[1] = WitnessTable;
  v25 = swift_getWitnessTable(MEMORY[0x1E697E308], v5, v42);
  StaticIf<>.init<A>(idiom:then:else:)();
  v41[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v41[1] = v25;
  v41[2] = v25;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v6, v41);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v30 + 8);
  v23(v8, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  v23(v11, v6);
  return (*(v29 + 8))(v15, v21);
}

__n128 ResolvedContentUnavailableView.marginModifier.getter@<Q0>(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), &v10);
  v3 = xmmword_18CD69C50;
  v4 = xmmword_18CD69C50;
  if (v10 >= 7u)
  {
    EdgeInsets.init(_all:)();
    *(&v4 + 1) = v5;
    *(&v3 + 1) = v6;
  }

  v8 = v4;
  v9 = v3;
  *a1 = static Edge.Set.all.getter();
  result = v9;
  *(a1 + 24) = v8;
  *(a1 + 8) = v9;
  *(a1 + 40) = 0;
  return result;
}

__n128 ResolvedContentUnavailableView.macFrameModifier.getter@<Q0>(_OWORD *a5@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  a5[4] = v11;
  a5[5] = v12;
  a5[6] = v13;
  *a5 = v7;
  a5[1] = v8;
  result = v10;
  a5[2] = v9;
  a5[3] = v10;
  return result;
}

uint64_t (*implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = a1[16];
  v15 = *(a1 + 5);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  *(v16 + 80) = v14;
  *(v16 + 84) = v15;
  outlined copy of Environment<Bool>.Content();
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable(MEMORY[0x1E697DDC8], v16);
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in ResolvedContentUnavailableView.resolvedActions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t (*a10)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a11)
{
  v32 = a8;
  v34 = a1;
  v37 = a9;
  v36 = a11;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v35 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v17 = type metadata accessor for _VariadicView.Tree();
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v30 - v21;
  KeyPath = swift_getKeyPath();
  v48[0] = v32;
  v49 = KeyPath;
  v50 = 0;
  v51 = 1;
  v23 = a10(v48, a2, a3, a4, a5, a6, a7);
  outlined consume of Environment<Bool>.Content(v49, v50);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = v34;
  v23(v36, v38);

  v24 = lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v25 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate, &protocol witness table for ButtonStyleModifier<A>);
  v47[0] = a7;
  v47[1] = v25;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v35, v47);
  v46[0] = v24;
  v46[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E308], v17, v46);
  v27 = v31;
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v33 + 8);
  v28(v19, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v27, v17);
}

uint64_t (*implicit closure #1 in closure #2 in ResolvedContentUnavailableView.resolvedActions.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = a1[16];
  v15 = *(a1 + 5);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  *(v16 + 80) = v14;
  *(v16 + 84) = v15;
  outlined copy of Environment<Bool>.Content();
  return partial apply for implicit closure #2 in implicit closure #1 in closure #2 in ResolvedContentUnavailableView.resolvedActions.getter;
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  v14 = lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout();
  v17[0] = a10;
  v17[1] = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate, &protocol witness table for ButtonStyleModifier<A>);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v17);
  return Layout.callAsFunction<A>(_:)(a1, a2, &unk_1EFF93EF8, v13, v14, WitnessTable, a6);
}

uint64_t closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v13 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate, &protocol witness table for ButtonStyleModifier<A>);
  v15[0] = a8;
  v15[1] = v13;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t ResolvedContentUnavailableView.init(label:description:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 12) = 1;
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a10;
  v19 = type metadata accessor for ResolvedContentUnavailableView(0, v21);
  (*(*(a4 - 8) + 32))(a9 + v19[17], a1, a4);
  (*(*(a5 - 8) + 32))(a9 + v19[18], a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + v19[19], a3, a6);
}

unint64_t lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle()
{
  result = lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle;
  if (!lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentUnavailableLabelStyle, &unk_1EFF93F98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout()
{
  result = lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout;
  if (!lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsLayout, &unk_1EFF93EF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout;
  if (!lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsLayout, &unk_1EFF93EF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout);
  }

  return result;
}

void type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for ButtonStyleModifier<FlexibleBorderedButtonStyle>, lazy protocol witness table accessor for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle, &unk_1EFF93E60, type metadata accessor for ButtonStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle)
  {
    result = swift_getWitnessTable("mN!cܻ\n", &unk_1EFF93E60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>, MEMORY[0x1E697E108], MEMORY[0x1E697E5E0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = MEMORY[0x1E697E100];
    v5[2] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate()
{
  result = lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate;
  if (!lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CUVFlexibleFramePredicate, &unk_1EFF93E40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate);
  }

  return result;
}

double closure #1 in ContentUnavailableLabelStyle.makeBody(configuration:)@<D0>(unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = HIDWORD(a2);
    LOBYTE(v11) = 2;
    MEMORY[0x18D009A90](0, 0xE000000000000000, &v11, 48.0);
    View.symbolFont(_:)();

    v6 = *(&v11 + 1);
    v5 = v11;
  }

  static Font.Weight.bold.getter();
  View.fontWeight(_:)();
  v8 = v12;
  v9 = v11;
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v9;
  *(a4 + 40) = v8;
  outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v5, v6);
  return outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v5, v6);
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance ContentUnavailableLabelStyle@<Q0>(__n128 *a1@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 12);
  v7 = static HorizontalAlignment.center.getter();
  v20 = 0;
  LOBYTE(v15) = v4;
  closure #1 in ContentUnavailableLabelStyle.makeBody(configuration:)(v4 | (v6 << 32), v5, &v15);
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v19;
  outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v15, v16);
  v14 = v18;

  outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v8, v9);

  v12 = v20;
  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = 0x402E000000000000;
  a1[1].n128_u8[0] = v12;
  a1[1].n128_u64[1] = v8;
  a1[2].n128_u64[0] = v9;
  a1[2].n128_u32[2] = v10;
  result = v14;
  a1[3] = v14;
  a1[4].n128_u64[0] = v11;
  return result;
}

__n128 WidgetLabelModifier.body(content:)@<Q0>(__n128 *a1@<X8>)
{
  static Font.headline.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u64[0] = v5;
  return result;
}

__n128 closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:)@<Q0>(_OWORD *a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  *a2 = v4;
  a2[1] = v5;
  result = v7;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

double protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance FlexibleBorderedButtonStyle@<D0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  type metadata accessor for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>(0);
  v11 = v10;
  v12 = &a2[*(v10 + 36)];
  *v12 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v12[1] = v9;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  *&result = closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:)(&a2[*(v11 + 40)]).n128_u64[0];
  return result;
}

uint64_t ActionsLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v7 = *(a5 + 1);
  v8 = *(a5 + 16);
  v9 = *(a5 + 17);
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 20);
  LOBYTE(v30) = *v5;
  v10 = v30;
  v31 = v11;
  v32 = v12;
  v34 = v13;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  ActionsLayout.maxSize(subviews:proposal:)(&v26, a1);
  LOBYTE(v30) = v10;
  v31 = v11;
  v32 = v12;
  v34 = v13;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v14 = ActionsLayout.spacing(subviews:)(&v26);
  v15 = *(v14 + 16);
  if (!v15)
  {

    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (v15 <= 3)
  {
    v16 = 0;
    v17 = 0.0;
LABEL_12:
    v22 = v15 - v16;
    v23 = (v14 + 8 * v16 + 32);
    do
    {
      v24 = *v23++;
      v17 = v17 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_14;
  }

  v16 = v15 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v14 + 48);
  v17 = 0.0;
  v21 = v15 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = v17 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v15 != v16)
  {
    goto LABEL_12;
  }

LABEL_14:

  if (v10)
  {
LABEL_15:
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    v25 = LayoutSubviews.endIndex.getter();
    result = LayoutSubviews.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      result = LayoutSubviews.endIndex.getter();
      if ((v25 & 0x8000000000000000) == 0 && result >= v25)
      {
        return result;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

LABEL_5:
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v18 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v18 < 0 || result < v18)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t ActionsLayout.maxSize(subviews:proposal:)(int *a1, uint64_t a2)
{
  v2 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v2 < 0 || result < v2)
  {
    goto LABEL_20;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = 0;
    v4 = v19;
    while (1)
    {
      LayoutSubviews.subscript.getter();
      static ProposedViewSize.unspecified.getter();
      LayoutSubview.sizeThatFits(_:)();
      v7 = v6;
      v9 = v8;
      LayoutSubview.sizeThatFits(_:)();
      if (v10 < v7)
      {
        v7 = v10;
      }

      if (v9 <= v11)
      {
        v9 = v11;
      }

      v13 = v19[1].u64[0];
      v12 = v19[1].u64[1];
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v19[1].i64[0] = v13 + 1;
      v14 = &v19[v13];
      *v14[2].i64 = v7;
      *&v14[2].i64[1] = v9;
      result = LayoutSubviews.endIndex.getter();
      if (v5 >= result)
      {
        break;
      }

      if (v2 == ++v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v15 = v4[1].i64[0];
  if (v15)
  {
    v16 = v4 + 2;
    v17 = 0uLL;
    do
    {
      v18 = *v16++;
      v17 = vbslq_s8(vcgeq_f64(v18, v17), v18, v17);
      --v15;
    }

    while (v15);
  }
}

uint64_t ActionsLayout.spacing(subviews:)(uint64_t a1)
{
  result = LayoutSubviews.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
      return v3;
    }

    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
    v4 = 0;
    v3 = v9;
    while (1)
    {
      v5 = LayoutSubviews.endIndex.getter();
      result = LayoutSubviews.endIndex.getter();
      if (result < 0)
      {
        break;
      }

      result = LayoutSubviews.endIndex.getter();
      if (v5 < 0 || result < v5)
      {
        goto LABEL_15;
      }

      if (v4 >= v5 - 1)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 15.0;
      }

      v8 = *(v9 + 16);
      v7 = *(v9 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      ++v4;
      *(v9 + 16) = v8 + 1;
      *(v9 + 8 * v8 + 32) = v6;
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t ActionsLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v14 = *a9;
  v15 = *(a9 + 1);
  v16 = *(a9 + 16);
  v17 = *(a9 + 17);
  v19 = *(v9 + 8);
  v20 = *(v9 + 16);
  v21 = *(v9 + 20);
  LOBYTE(v48) = *v9;
  v18 = v48;
  v49 = v19;
  v50 = v20;
  v52 = v21;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  ActionsLayout.maxSize(subviews:proposal:)(&v44, a1);
  v23 = v22;
  v25 = v24;
  LOBYTE(v48) = v18;
  v49 = v19;
  v50 = v20;
  v52 = v21;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v26 = ActionsLayout.spacing(subviews:)(&v44);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  if (v18 == 1)
  {
    MinY = CGRectGetMinY(*&v27);
    v48 = v14;
    v49 = v15;
    v50 = v16;
    v51 = v17;
    result = LayoutSubviews.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v33 = result;
      if (!result)
      {
        goto LABEL_13;
      }

      if (result <= *(v26 + 16))
      {
        v42 = v16;
        v34 = v14;
        v35 = 0;
        v36 = v25 * 0.5 + MinY;
        do
        {
          v48 = v34;
          v49 = v15;
          v50 = v42;
          v51 = v17;
          LayoutSubviews.subscript.getter();
          v54.origin.x = a2;
          v54.origin.y = a3;
          v54.size.width = a4;
          v54.size.height = a5;
          CGRectGetMidX(v54);
          static UnitPoint.center.getter();
          LayoutSubview.place(at:anchor:proposal:)();
          v36 = v36 + v25 + *(v26 + 8 * v35++ + 32);
        }

        while (v33 != v35);
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  MinX = CGRectGetMinX(*&v27);
  v48 = v14;
  v49 = v15;
  v50 = v16;
  v51 = v17;
  result = LayoutSubviews.endIndex.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v38 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  if (result > *(v26 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v43 = v16;
  v39 = v14;
  v40 = 0;
  v41 = v23 * 0.5 + MinX;
  do
  {
    v48 = v39;
    v49 = v15;
    v50 = v43;
    v51 = v17;
    LayoutSubviews.subscript.getter();
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    CGRectGetMidY(v55);
    static UnitPoint.center.getter();
    LayoutSubview.place(at:anchor:proposal:)();
    v41 = v41 + v23 + *(v26 + 8 * v40++ + 32);
  }

  while (v38 != v40);
LABEL_13:
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance WidgetLabelModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *))
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return (a7)(&v13, v11, a3, a4, a5, a6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CUVFlexibleFramePredicate(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v12[2] = a1[2];
  v9 = v7;
  v10 = v6;
  v11 = a1[2];
  outlined init with copy of _GraphInputs(v12, v13);
  LOBYTE(a4) = a4(&v9);
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  outlined destroy of _GraphInputs(v13);
  return a4 & 1;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>, &unk_1EFF93F20, MEMORY[0x1E697E108]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier()
{
  result = lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier;
  if (!lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetLabelModifier, &unk_1EFF93F20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Font?(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, a2, a3);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v9[1] = a4;
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate()
{
  result = lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate;
  if (!lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CUVFlexibleButtonPredicate, &unk_1EFF93E80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t initializeBufferWithCopyOfBuffer for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithCopy for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content();
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActionsLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionsLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentUnavailableLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for ContentUnavailableLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ContentUnavailableLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentUnavailableLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentUnavailableLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentUnavailableViewSpecs(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 3);
  return a1;
}

uint64_t assignWithCopy for ContentUnavailableViewSpecs(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 12) = *(a2 + 3);
  return a1;
}

uint64_t assignWithTake for ContentUnavailableViewSpecs(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 12) = *(a2 + 3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentUnavailableViewSpecs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentUnavailableViewSpecs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActionsLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout();
  *(a1 + 8) = result;
  return result;
}

double outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void type metadata accessor for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>, &type metadata for PrimitiveButtonStyleConfiguration.Label, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for Button(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>, &type metadata for PrimitiveButtonStyleConfiguration.Label, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v4[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized static CUVFlexibleFramePredicate.evaluate(inputs:)(__int128 *a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)())
  {
    v1 = 1;
  }

  else
  {
    _GraphInputs.interfaceIdiom.getter();
    v1 = AnyInterfaceIdiom.accepts<A>(_:)();
  }

  return v1 & 1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetLabelModifier>, lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier, &unk_1EFF93F20, MEMORY[0x1E697FDE8]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetLabelModifier>, lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier, &unk_1EFF93F20, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized static CUVFlexibleButtonPredicate.evaluate(inputs:)(void *a1)
{
  lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  if (v5 == &type metadata for BorderedButtonStyle)
  {
    v1 = 1;
  }

  else
  {
    lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
    v1 = v5 == &type metadata for BorderedProminentButtonStyle;
  }

  lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
  _GraphInputs.interfaceIdiom.getter();
  v2 = AnyInterfaceIdiom.accepts<A>(_:)();
  v3 = v5 == &type metadata for DefaultButtonStyle || v1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>(255);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>))
  {
    _sSay7SwiftUI15AnyFontModifierCGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255);
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<HierarchicalShapeStyle>, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>(255);
    type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA019EnabledTechnologiesD033_E3F97FE8C846010147E7A62076265464LLV_Tt1B5(int a1, unsigned int a2)
{
  v3 = (a2 & 0x10000) == 0 && a1 == a2;
  if ((a1 & 0x10000) != 0)
  {
    return HIWORD(a2) & 1;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA18TextInputDictationV0D033_358223D01E778F87FED5B25B5CFE864DLLV_Tt1B5(unsigned int a1, int a2)
{
  v2 = ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000) >> 16);
  if (((a2 & 0xFFFFFF ^ a1) >> 8))
  {
    v2 = 0;
  }

  if ((a1 ^ a2))
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 == 2;
  }

  else
  {
    return v2;
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV026FileDialogDefaultDirectoryD033_32C407AD02CC1B67BCA8437EDE8ACBC6LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (URL?, URL?)(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  outlined init with copy of URL?(a1, v13);
  outlined init with copy of URL?(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = v16(&v13[v15], 1, v4);
    if (v17 == 1)
    {
      v18 = type metadata accessor for URL?;
    }

    else
    {
      v18 = type metadata accessor for (URL?, URL?);
    }

    if (v17 == 1)
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    outlined init with copy of URL?(v13, v10);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      v19 = 0;
      v20 = type metadata accessor for (URL?, URL?);
    }

    else
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type URL and conformance URL();
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      v20 = type metadata accessor for URL?;
    }

    v18 = v20;
  }

  outlined destroy of (URL?, URL?)(v13, v18);
  return v19 & 1;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV024FileDialogBrowserOptionsD033_32C407AD02CC1B67BCA8437EDE8ACBC6LLV_Tt1B5(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = (a1 == a3) & ~a4;
  if (a2)
  {
    v4 = a4;
  }

  return v4 & 1;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA29TableColumnCustomizationIDKey33_AD0B7B82D3360F70EB1ED1A484B203ACLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v19 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v11 == 255)
  {
    if (v7 == 255)
    {
      return 1;
    }

LABEL_14:
    outlined init with copy of AnyAccessibilityValue?(a2, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
    outlined consume of TableColumnCustomizationID?(v9, v8, v10, v19, v11);
    outlined consume of TableColumnCustomizationID?(v4, v3, v6, v5, v7);
    return 0;
  }

  if (v7 == 255)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
    outlined copy of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    goto LABEL_14;
  }

  if ((v11 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      if (v9 == v4 && v8 == v3)
      {
        outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
        outlined consume of TableColumnCustomizationID.Base(v4, v3, v10, v19, 0);
        return 1;
      }

      v15 = a1;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of AnyAccessibilityValue?(v15, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
      outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, 0);
      return (v16 & 1) != 0;
    }

LABEL_16:
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v9 != v4 || v8 != v3)
  {
    v12 = a1;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a1 = v12;
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v10 == v6 && v19 == v5)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v6, v5, 1);
    return 1;
  }

  v17 = a1;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined init with copy of AnyAccessibilityValue?(v17, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?, &type metadata for TableColumnCustomizationID);
  outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, 1);
  result = 1;
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D17_barConfiguration33_2144E363A5C573328950F48844B228C4LLV_Tt1g5(uint64_t a1, char a2, uint64_t a3, char a4)
{
  result = (a1 | a3) == 0;
  if (a1 && a3)
  {

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20ContentScrollViewBoxV_Tt1g5(v9, a3) & 1) == 0)
    {

      return 0;
    }

    if (a2 == 4)
    {

      if (a4 != 4)
      {
        return 0;
      }
    }

    else
    {

      if (a4 == 4 || a2 != a4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018ToolbarItemMetricsD0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) & *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0 && (*(a2 + 32) & 1) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16)))));
  }

  return v2 & 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance AssistiveAccessKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static AssistiveAccessKey.defaultValue;
  return result;
}

uint64_t EnvironmentValues.accessibilityAssistiveAccessEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.accessibilityAssistiveAccessEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.accessibilityAssistiveAccessEnabled : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>, &type metadata for AssistiveAccessKey, &protocol witness table for AssistiveAccessKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues.accessibilityEnabledTechnologies.getter(_WORD *a1@<X8>)
{
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
    PropertyList.subscript.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *a1 = v5;
    return;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);

  PropertyList.Tracker.value<A>(_:for:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  EnvironmentValues.accessibilitySettingsDefinition.getter();
  if (v4 == 1 || (type metadata accessor for PlatformAccessibilitySettingsDefinition(), !static PlatformAccessibilitySettingsDefinition.for (system:)()))
  {
    *a1 = 0;
  }

  else
  {
    v3 = PlatformAccessibilitySettingsDefinition.enabledTechnologies.getter();
    AccessibilityTechnologies.init(list:)(v3, a1);
  }
}

double key path setter for EnvironmentValues.accessibilityEnabledTechnologies : EnvironmentValues(__int16 *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.accessibilityEnabledTechnologies.setter(__int16 *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.accessibilityEnabledTechnologies.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  EnvironmentValues.accessibilityEnabledTechnologies.getter((a1 + 28));
  return EnvironmentValues.accessibilityEnabledTechnologies.modify;
}

double EnvironmentValues.accessibilityEnabledTechnologies.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 24) = *(a1 + 28);
  *(a1 + 26) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

BOOL EnvironmentValues.isEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v6 = *v1;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v5);
  v3 = 1 << (v2 & 0xF);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  return (v3 & (v5 ^ 0xFFFF)) == 0;
}

double EnvironmentValues.setIsEnabled(_:for:)(char a1, unsigned __int8 *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  v6 = *v2;
  v7 = v2[1];

  v14 = v6;
  v15 = v7;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v13);
  if (v5 <= 0xF)
  {
    v8 = 1 << (v5 & 0xF);
  }

  else
  {
    v8 = 0;
  }

  v9 = (v8 & (v13 ^ 0xFFFF)) == 0;

  if (v9 == v4)
  {
    return result;
  }

  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v13);
  if (v5 < 0x11)
  {
    if (v5 == 16)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1 << (v5 & 0xF);
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if ((a1 & 1) == 0)
    {
LABEL_7:
      v12 = v13 & ~v11;
LABEL_14:
      v13 = v12;
      goto LABEL_15;
    }
  }

  v12 = v13;
  if ((v11 & ~v13) != 0)
  {
    v12 = v13 | v11;
    goto LABEL_14;
  }

LABEL_15:
  LOWORD(v14) = v12;
  BYTE2(v14) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>, &unk_1EFF94088, &protocol witness table for EnabledTechnologiesKey);

  PropertyList.subscript.setter();
  if (v7)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t EnvironmentValues.accessibilityFullKeyboardAccessEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 2) & 1;
}

uint64_t EnvironmentValues.accessibilityVoiceControlEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 3) & 1;
}

uint64_t EnvironmentValues.accessibilityHoverTextEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 4) & 1;
}

uint64_t outlined consume of TableColumnCustomizationID?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of TableColumnCustomizationID.Base(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined destroy of (URL?, URL?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v3 = type metadata accessor for URL();
    result = swift_getWitnessTable(MEMORY[0x1E6968FC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a2 = result & 1;
  return result;
}

void key path getter for EnvironmentValues.isToggleOn : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isToggleOn : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.automaticButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v31 = a6;
  v32 = a2;
  v30 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WrappedButtonStyle(255, v11, v13, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v14);
  v17 = type metadata accessor for ButtonStyleModifier(0, v14, WitnessTable, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v17, v19);
  v22 = type metadata accessor for AutomaticStyleOverrideModifier();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v29 - v25;
  (*(v8 + 16))(v10, v30, a3, v24);
  ButtonStyleModifier.init<A>(style:)(v10, a3, a5, v27, v21);
  (*(v18 + 32))(v26, v21, v17);
  MEMORY[0x18D00A570](v26, v32, v22, v33);
  return (*(v23 + 8))(v26, v22);
}

uint64_t View.automaticButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v25 = a5;
  v26 = a2;
  v24 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ButtonStyleModifier(0, v9, v11, v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v12, v14);
  v17 = type metadata accessor for AutomaticStyleOverrideModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(v6 + 16))(v8, v24, a3, v19);
  FormatInputToString.init(format:)(v8, a3, v16);
  (*(v13 + 32))(v21, v16, v12);
  MEMORY[0x18D00A570](v21, v26, v17, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a2 = result;
  return result;
}

void key path getter for EnvironmentValues.toolbarItemPlacement : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.displayMenuAsPalette : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.displayMenuAsPalette : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void key path getter for EnvironmentValues.menuActionDismissBehavior : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.menuActionDismissBehavior : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double key path getter for EnvironmentValues.triggerSubmission : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.triggerSubmission : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);

  outlined copy of AppIntentExecutor?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void key path getter for EnvironmentValues.paletteSelectionEffect : EnvironmentValues(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.paletteSelectionEffect : EnvironmentValues(__int16 *a1, void *a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitiv(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContex)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle>, lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle, &type metadata for PlatformFallbackButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContex);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primi()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationCo( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButton,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationCo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}