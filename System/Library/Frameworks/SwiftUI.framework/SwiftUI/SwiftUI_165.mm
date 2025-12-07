uint64_t getEnumTagSinglePayload for FocusedBinding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for FocusedBinding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 16) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata completion function for FocusedBinding.Content(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for FocusedBinding(void *__dst, unsigned __int16 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = (v7 + 16) & ~v7;
  v9 = v8 + *(v5 + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8 + *(v5 + 64);
  }

  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || (v10 + 1) > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
    goto LABEL_34;
  }

  v15 = *(a2 + v10);
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a2;
      }

      else if (v17 == 3)
      {
        v18 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v18 = *a2;
      }

LABEL_25:
      v19 = (v18 | (v16 << (8 * v10))) + 2;
      v15 = v18 + 2;
      if (v10 < 4)
      {
        v15 = v19;
      }

      goto LABEL_27;
    }

    if (v17)
    {
      v18 = *a2;
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v15 == 1)
  {
    v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v5 + 84) & 0x80000000) != 0)
    {
      v22 = a2;
      v23 = (*(v5 + 48))(v20 + 1, *(v5 + 84), v4);
      a2 = v22;
      if (v23)
      {
LABEL_32:
        memcpy(v3, a2, v9);
LABEL_37:
        *(v3 + v10) = 1;
        return v3;
      }
    }

    else
    {
      v21 = *v20;
      if (*v20 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      if (v21 != -1)
      {
        goto LABEL_32;
      }
    }

    *v3 = *a2;
    v24 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v20;
    v25 = *(v5 + 16);

    v25(v24 + 1, v20 + 1, v4);
    goto LABEL_37;
  }

  *__dst = *a2;
  *(__dst + v10) = 0;
LABEL_34:

  return v3;
}

uint64_t getEnumTag for FocusedBinding.Content(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 8;
  if (((*(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64) > 8)
  {
    v2 = ((*(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80)) + *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void destructiveInjectEnumTag for FocusedBinding.Content(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v5 = 8;
    if (v4 > 8)
    {
      v5 = ((*(*(*(a3 + 16) - 8) + 80) + 16) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
    }

    v6 = a2 - 2;
    if (v5 < 4)
    {
      a1[v5] = (v6 >> (8 * v5)) + 2;
      if (!v5)
      {
        return;
      }

      v6 &= ~(-1 << (8 * v5));
    }

    else
    {
      a1[v5] = 2;
    }

    if (v5 >= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v5;
    }

    bzero(a1, v5);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        *a1 = v6;
        a1[2] = BYTE2(v6);
      }

      else
      {
        *a1 = v6;
      }
    }

    else if (v7 == 1)
    {
      *a1 = v6;
    }

    else
    {
      *a1 = v6;
    }
  }

  else
  {
    if (v4 <= 8)
    {
      v4 = 8;
    }

    a1[v4] = a2;
  }
}

uint64_t assignWithTake for FocusedValues(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusedValues.Entry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  if (v7 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((((v7 + 24) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v12 = AssociatedTypeWitness;
    v13 = ~v7;
    *a1 = *a2;
    v14 = a2[2];
    a1[1] = a2[1];
    a1[2] = v14;
    v15 = a1 + v7;
    v16 = a2 + v7;
    v17 = (v15 + 24) & v13;
    v18 = (v16 + 24) & v13;
    v19 = *(v6 + 16);

    v19(v17, v18, v12);
    *(v17 + v8) = *(v18 + v8);
    *(((v17 + v8) & 0xFFFFFFFFFFFFFFF8) + 8) = *(((v18 + v8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  return a1;
}

uint64_t assignWithCopy for FocusedValues.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 24))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 40);
  v12 = v11 + v9;
  v13 = v11 + v10;
  *v12 = *v13;
  *((v12 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v13 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t initializeWithTake for FocusedValues.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 32))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 32);
  v12 = v11 + v9;
  v13 = v11 + v10;
  *v12 = *v13;
  *((v12 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v13 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for FocusedValues.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;
  (*(v7 + 40))(v10, v11, AssociatedTypeWitness);
  v12 = *(v8 + 24);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  *((v13 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusedValueModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  v11 = v9 - ((-9 - v7) | v7);
  if (v8 > 7 || v10 != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = ((a1 + v8 + 8) & ~v8);
    v16 = ((a2 + v8 + 8) & ~v8);
    v17 = *(v5 + 48);

    if (v17(v16, 1, v4))
    {
      memcpy(v15, v16, v9);
    }

    else
    {
      (*(v6 + 16))(v15, v16, v4);
      (*(v6 + 56))(v15, 0, 1, v4);
    }

    *(v15 + v9) = *(v16 + v9);
  }

  return v3;
}

void *initializeWithTake for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  *(v7 + v14) = *(v8 + v14);
  return a1;
}

void *assignWithTake for FocusedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *(v9 + v17) = *(v10 + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusedValueModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for FocusedValueModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(v22, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

unint64_t lazy protocol witness table accessor for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions()
{
  result = lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions;
  if (!lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValues.StorageOptions, &type metadata for FocusedValues.StorageOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions;
  if (!lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValues.StorageOptions, &type metadata for FocusedValues.StorageOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions;
  if (!lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValues.StorageOptions, &type metadata for FocusedValues.StorageOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions;
  if (!lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusedValues.StorageOptions, &type metadata for FocusedValues.StorageOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValues.StorageOptions and conformance FocusedValues.StorageOptions);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for FocusedValueBox(_DWORD *a1, int *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  if (v7 <= 7u && (v7 & 0x100000) == 0 && ((-17 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = *a2;
    v12 = a2 + 11;
    *a1 = v13;
    v14 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
    v15 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *(v12 & 0xFFFFFFFFFFFFFFF8);
    v16 = v15 + 1;
    v17 = *(v5 + 48);

    if (v17(v14, 1, v4))
    {
      memcpy(v16, v14, v8);
    }

    else
    {
      (*(v6 + 16))(v16, v14, v4);
      (*(v6 + 56))(v16, 0, 1, v4);
    }
  }

  else
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));
  }

  return v3;
}

_DWORD *assignWithCopy for FocusedValueBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);
  v13 = v12(v10 & ~v9, 1, v7);
  v14 = v12(v11 & ~v9, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
      (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
      return a1;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 24))(v10 & ~v9, v11 & ~v9, v7);
      return a1;
    }

    v18 = *(v8 + 8);
    v17 = v8 + 8;
    v18(v10 & ~v9, v7);
    v15 = *(v17 + 76);
    v16 = *(v17 + 56);
  }

  if (v15)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 + 1;
  }

  memcpy((v10 & ~v9), (v11 & ~v9), v19);
  return a1;
}

_DWORD *initializeWithTake for FocusedValueBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 8;
  v10 = v5 + v8 + 8;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithTake for FocusedValueBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);
  LODWORD(v5) = v12(v10 & ~v9, 1, v7);
  v13 = v12(v11 & ~v9, 1, v7);
  if (v5)
  {
    if (!v13)
    {
      (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
      (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
      return a1;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 40))(v10 & ~v9, v11 & ~v9, v7);
      return a1;
    }

    v17 = *(v8 + 8);
    v16 = v8 + 8;
    v17(v10 & ~v9, v7);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v10 & ~v9), (v11 & ~v9), v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusedValueBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for FocusedValueBox(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusedValueModifier.Transform(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v9 = (v7 + 24) & ~v7;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || ((v9 + v10) & 0xFFFFFFFFFFFFFFFCLL) != 0 && ((v9 + v10) & 0xFFFFFFFFFFFFFFFCLL) < 0xFFFFFFFFFFFFFFE8)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v16 = *a2;
    v15 = a2 + 7;
    *a1 = v16;
    v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
    v19 = (((v15 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21 + 2;
    *v20 = *v21;
    v23 = v20 + 2;
    v20[1] = v21[1];
    v24 = *(v5 + 48);

    if (v24(v22, 1, v4))
    {
      memcpy(v23, v22, v10);
    }

    else
    {
      (*(v6 + 16))(v23, v22, v4);
      (*(v6 + 56))(v23, 0, 1, v4);
    }

    *(v23 + v10) = *(v22 + v10);
    v25 = (v23 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (v22 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *(v26 + 4);
    *(v25 + 9) = *(v26 + 9);
    *(v25 + 4) = v27;
    *(v25 + 20) = *(v26 + 20);
  }

  return v3;
}

_DWORD *assignWithCopy for FocusedValueModifier.Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 7;
  *a1 = v6;
  v7 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 11;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 += 11;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = (v7 & 0xFFFFFFFFFFFFFFF8) + 11;

  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  v12 = v9 & 0xFFFFFFFFFFFFFFF8;
  *v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v11[1] = *((v9 & 0xFFFFFFFFFFFFFFF8) + 4);
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = ((v15 + 8 + (v10 & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  v17 = ((v15 + 8 + v12) & ~v15);
  v18 = *(v14 + 48);
  v19 = v18((v11 + v15 + 8) & ~v15, 1, v13);
  v20 = v18(v17, 1, v13);
  if (v19)
  {
    if (!v20)
    {
      (*(v14 + 16))(v16, v17, v13);
      (*(v14 + 56))(v16, 0, 1, v13);
      goto LABEL_12;
    }

    v21 = *(v14 + 84);
    v22 = *(v14 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v14 + 24))(v16, v17, v13);
      goto LABEL_12;
    }

    (*(v14 + 8))(v16, v13);
    v21 = *(v14 + 84);
    v22 = *(v14 + 64);
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  memcpy(v16, v17, v23);
LABEL_12:
  if (*(v14 + 84))
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = &v16[v24];
  v26 = &v17[v24];
  *v25 = *v26;
  v25 &= 0xFFFFFFFFFFFFFFFCLL;
  v26 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 12) = *(v26 + 12);
  *(v25 + 16) = *(v26 + 16);
  *(v25 + 20) = *(v26 + 20);
  return a1;
}

_DWORD *initializeWithTake for FocusedValueModifier.Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 11) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 11) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ((v9 + v13 + 8) & ~v13);
  v15 = ((v10 + v13 + 8) & ~v13);
  if ((*(v12 + 48))(v15, 1, v11))
  {
    v16 = *(v12 + 84);
    v17 = *(v12 + 64);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v12 + 32))(v14, v15, v11);
    v20 = *(v12 + 56);
    v19 = v12 + 56;
    v20(v14, 0, 1, v11);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = &v14[v21];
  v23 = &v15[v21];
  *v22 = *v23;
  v22 &= 0xFFFFFFFFFFFFFFFCLL;
  v23 &= 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 4);
  *(v22 + 9) = *(v23 + 9);
  *(v22 + 4) = v24;
  *(v22 + 20) = *(v23 + 20);
  return a1;
}

_DWORD *assignWithTake for FocusedValueModifier.Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 7;
  *a1 = v6;
  v7 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 11;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 11) & 0xFFFFFFFFFFFFFFF8);
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v9 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  v11[1] = *((v10 & 0xFFFFFFFFFFFFFFF8) + 4);
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = ((v11 + v14 + 8) & ~v14);
  v16 = ((v14 + 8 + (v10 & 0xFFFFFFFFFFFFFFF8)) & ~v14);
  v17 = *(v13 + 48);
  v18 = v17(v15, 1, v12);
  v19 = v17(v16, 1, v12);
  if (v18)
  {
    if (!v19)
    {
      (*(v13 + 32))(v15, v16, v12);
      (*(v13 + 56))(v15, 0, 1, v12);
      goto LABEL_12;
    }

    v20 = *(v13 + 84);
    v21 = *(v13 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v13 + 40))(v15, v16, v12);
      goto LABEL_12;
    }

    (*(v13 + 8))(v15, v12);
    v20 = *(v13 + 84);
    v21 = *(v13 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v15, v16, v22);
LABEL_12:
  if (*(v13 + 84))
  {
    v23 = *(v13 + 64);
  }

  else
  {
    v23 = *(v13 + 64) + 1;
  }

  v24 = &v15[v23];
  v25 = &v16[v23];
  *v24 = *v25;
  v24 &= 0xFFFFFFFFFFFFFFFCLL;
  v25 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v24 + 4) = *(v25 + 4);
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 12) = *(v25 + 12);
  *(v24 + 16) = *(v25 + 16);
  *(v24 + 20) = *(v25 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusedValueModifier.Transform(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 24;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFFC;
  if ((v10 & 0xFFFFFFFC) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((((v19 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for FocusedValueModifier.Transform(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(*(a4 + 24) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  v11 = ((((v9 + 24) & ~v9) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 24;
  if (((((v9 + 24) & ~v9) + v10) & 0xFFFFFFFC) == 0xFFFFFFE8)
  {
    v12 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v8)
  {
    if (((((v9 + 24) & ~v9) + v10) & 0xFFFFFFFC) == 0xFFFFFFE8)
    {
      v16 = a2 - v8;
    }

    else
    {
      v16 = 1;
    }

    if (((((v9 + 24) & ~v9) + v10) & 0xFFFFFFFC) != 0xFFFFFFE8)
    {
      v17 = ~v8 + a2;
      v18 = a1;
      bzero(a1, v11);
      a1 = v18;
      *v18 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v11) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v15)
  {
    goto LABEL_39;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  v19 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = ((((v19 + 11) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v5 + 56);
      v26 = a2 + 1;

      v25((((v19 + 11) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v26);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for FocusedValueScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for FocusedValueScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for FocusedValueScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for FocusedValueList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for FocusedValueList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t EnvironmentValues.areMultimodalBadgesEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.multimodalListLayout : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.multimodalListLayout : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.multimodalListLayout.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MultimodalListLayoutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<MultimodalListLayoutKey>, &type metadata for MultimodalListLayoutKey, &protocol witness table for MultimodalListLayoutKey);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

SwiftUI::NavigationBarHost_optional __swiftcall NavigationBarHost.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type [NavigationBarHost] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NavigationBarHost] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NavigationBarHost] and conformance [A])
  {
    type metadata accessor for [NavigationBarHost]();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [NavigationBarHost] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [NavigationBarHost]()
{
  if (!lazy cache variable for type metadata for [NavigationBarHost])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [NavigationBarHost]);
    }
  }
}

uint64_t type metadata completion function for UIKitButtonAdaptor(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitButtonAdaptor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((((v7 + ((v6 + 169) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = ~v6;
    *a1 = *a2;
    v12 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    outlined copy of Environment<Selector?>.Content(*v13, v15);
    *v12 = v14;
    *(v12 + 8) = v15;
    v17 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    v20 = *(v18 + 8);
    outlined copy of Environment<Color?>.Content(*v18);
    *v17 = v19;
    *(v17 + 8) = v20;
    v21 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
    v22 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Selector?>.Content(*v22, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    v25 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
    v26 = (a2 + 71) & 0xFFFFFFFFFFFFFFF8;
    v27 = *v26;
    v28 = *(v26 + 8);
    outlined copy of Environment<Selector?>.Content(*v26, v28);
    *v25 = v27;
    *(v25 + 8) = v28;
    v29 = (v3 + 87) & 0xFFFFFFFFFFFFFFF8;
    v30 = (a2 + 87) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    v32 = *(v30 + 8);
    outlined copy of Environment<Selector?>.Content(*v30, v32);
    *v29 = v31;
    *(v29 + 8) = v32;
    v33 = (v3 + 103) & 0xFFFFFFFFFFFFFFF8;
    v34 = (a2 + 103) & 0xFFFFFFFFFFFFFFF8;
    v35 = *v34;
    v36 = *(v34 + 8);
    outlined copy of Environment<Selector?>.Content(*v34, v36);
    *v33 = v35;
    *(v33 + 8) = v36;
    v37 = (v3 + 119) & 0xFFFFFFFFFFFFFFF8;
    v38 = (a2 + 119) & 0xFFFFFFFFFFFFFFF8;
    v39 = *v38;
    v40 = *(v38 + 8);
    outlined copy of Environment<Selector?>.Content(*v38, v40);
    *v37 = v39;
    *(v37 + 8) = v40;
    v41 = (v3 + 135) & 0xFFFFFFFFFFFFFFF8;
    v42 = (a2 + 135) & 0xFFFFFFFFFFFFFFF8;
    if (*v42 < 0xFFFFFFFFuLL)
    {
      *v41 = *v42;
    }

    else
    {
      v43 = *(v42 + 8);
      *v41 = *v42;
      *(v41 + 8) = v43;
    }

    *(v41 + 16) = *(v42 + 16);
    v44 = *(v42 + 20);
    *(v41 + 28) = *(v42 + 28);
    *(v41 + 20) = v44;
    *(v41 + 29) = *(v42 + 29);
    *(v41 + 30) = *(v42 + 30);
    v45 = (v41 + 34) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v42 + 34) & 0xFFFFFFFFFFFFFFF8;
    v47 = *v46;
    *(v45 + 8) = *(v46 + 8);
    *v45 = v47;
    v48 = (v45 + v6 + 9) & v11;
    v49 = (v46 + v6 + 9) & v11;
    (*(v5 + 16))(v48, v49, v4);
    v50 = ((v7 + v48) & 0xFFFFFFFFFFFFFFF8);
    v51 = ((v7 + v49) & 0xFFFFFFFFFFFFFFF8);
    *v50 = *v51;
    v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (*v53 < 0xFFFFFFFFuLL)
    {
      *v52 = *v53;
    }

    else
    {
      v54 = *(v53 + 8);
      *v52 = *v53;
      *(v52 + 8) = v54;
    }

    v55 = (v53 + 19) & 0xFFFFFFFFFFFFFFF8;
    v56 = *v55;
    v57 = (v52 + 19) & 0xFFFFFFFFFFFFFFF8;
    *(v57 + 8) = *(v55 + 8);
    *v57 = v56;
  }

  return v3;
}

double destroy for UIKitButtonAdaptor(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*((a1 + 23) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Color?>.Content(*((a1 + 39) & 0xFFFFFFFFFFFFFFF8));
  outlined consume of Environment<Selector?>.Content(*((a1 + 55) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((a1 + 71) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 71) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((a1 + 87) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((a1 + 103) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 103) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((a1 + 119) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 119) & 0xFFFFFFFFFFFFFFF8) + 8));
  v4 = ((a1 + 135) & 0xFFFFFFFFFFFFFFF8);
  if (*v4 >= 0xFFFFFFFFuLL)
  {
  }

  v5 = (v4 + 34) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(a2 + 16) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80) + 9) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  if (*((((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_OWORD *initializeWithCopy for UIKitButtonAdaptor(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 8);
  outlined copy of Environment<Selector?>.Content(*v7, v9);
  *v6 = v8;
  *(v6 + 8) = v9;
  v10 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  outlined copy of Environment<Color?>.Content(*v11);
  *v10 = v12;
  *(v10 + 8) = v13;
  v14 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v17);
  *v14 = v16;
  *(v14 + 8) = v17;
  v18 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  v19 = (a2 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  outlined copy of Environment<Selector?>.Content(*v19, v21);
  *v18 = v20;
  *(v18 + 8) = v21;
  v22 = (a1 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = (a2 + 87) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  v25 = *(v23 + 8);
  outlined copy of Environment<Selector?>.Content(*v23, v25);
  *v22 = v24;
  *(v22 + 8) = v25;
  v26 = (a1 + 103) & 0xFFFFFFFFFFFFFFF8;
  v27 = (a2 + 103) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  v29 = *(v27 + 8);
  outlined copy of Environment<Selector?>.Content(*v27, v29);
  *v26 = v28;
  *(v26 + 8) = v29;
  v30 = (a1 + 119) & 0xFFFFFFFFFFFFFFF8;
  v31 = (a2 + 119) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  v33 = *(v31 + 8);
  outlined copy of Environment<Selector?>.Content(*v31, v33);
  *v30 = v32;
  *(v30 + 8) = v33;
  v34 = (a1 + 135) & 0xFFFFFFFFFFFFFFF8;
  v35 = (a2 + 135) & 0xFFFFFFFFFFFFFFF8;
  if (*v35 < 0xFFFFFFFFuLL)
  {
    *v34 = *v35;
  }

  else
  {
    v36 = *(v35 + 8);
    *v34 = *v35;
    *(v34 + 8) = v36;
  }

  *(v34 + 16) = *(v35 + 16);
  v37 = *(v35 + 20);
  *(v34 + 28) = *(v35 + 28);
  *(v34 + 20) = v37;
  *(v34 + 29) = *(v35 + 29);
  *(v34 + 30) = *(v35 + 30);
  v38 = (v34 + 34) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 34) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  *(v38 + 8) = *(v39 + 8);
  *v38 = v40;
  v41 = *(*(a3 + 16) - 8);
  v42 = v41 + 16;
  v43 = *(v41 + 80);
  v44 = (v43 + 9 + v38) & ~v43;
  v45 = (v43 + 9 + v39) & ~v43;
  (*(v41 + 16))(v44, v45);
  v46 = *(v42 + 48) + 7;
  v47 = ((v46 + v44) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v46 + v45) & 0xFFFFFFFFFFFFFFF8);
  *v47 = *v48;
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v50 < 0xFFFFFFFFuLL)
  {
    *v49 = *v50;
  }

  else
  {
    v51 = *(v50 + 8);
    *v49 = *v50;
    *(v49 + 8) = v51;
  }

  v52 = (v50 + 19) & 0xFFFFFFFFFFFFFFF8;
  v53 = *v52;
  v54 = (v49 + 19) & 0xFFFFFFFFFFFFFFF8;
  *(v54 + 8) = *(v52 + 8);
  *v54 = v53;
  return a1;
}

_OWORD *assignWithCopy for UIKitButtonAdaptor(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2 + 135;
  *a1 = *a2;
  v7 = a1 + 135;
  v8 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  outlined copy of Environment<Selector?>.Content(*v9, v11);
  v12 = *v8;
  v13 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 8);
  outlined copy of Environment<Color?>.Content(*v15);
  v18 = *v14;
  *v14 = v16;
  *(v14 + 8) = v17;
  outlined consume of Environment<Color?>.Content(v18);
  v19 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v22);
  v23 = *v19;
  v24 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v22;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  v26 = (a2 + 71) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v28 = *(v26 + 8);
  outlined copy of Environment<Selector?>.Content(*v26, v28);
  v29 = *v25;
  v30 = *(v25 + 8);
  *v25 = v27;
  *(v25 + 8) = v28;
  outlined consume of Environment<Selector?>.Content(v29, v30);
  v31 = (a1 + 87) & 0xFFFFFFFFFFFFFFF8;
  v32 = (a2 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  outlined copy of Environment<Selector?>.Content(*v32, v34);
  v35 = *v31;
  v36 = *(v31 + 8);
  *v31 = v33;
  *(v31 + 8) = v34;
  outlined consume of Environment<Selector?>.Content(v35, v36);
  v37 = (a1 + 103) & 0xFFFFFFFFFFFFFFF8;
  v38 = (a2 + 103) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 8);
  outlined copy of Environment<Selector?>.Content(*v38, v40);
  v41 = *v37;
  v42 = *(v37 + 8);
  *v37 = v39;
  *(v37 + 8) = v40;
  outlined consume of Environment<Selector?>.Content(v41, v42);
  v43 = (a1 + 119) & 0xFFFFFFFFFFFFFFF8;
  v44 = (a2 + 119) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  LOBYTE(v39) = *(v44 + 8);
  outlined copy of Environment<Selector?>.Content(*v44, v39);
  v46 = *v43;
  v47 = *(v43 + 8);
  *v43 = v45;
  *(v43 + 8) = v39;
  outlined consume of Environment<Selector?>.Content(v46, v47);
  v48 = v7 & 0xFFFFFFFFFFFFFFF8;
  v49 = v6 & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v6 & 0xFFFFFFFFFFFFFFF8);
  if (*(v7 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
  {
    if (v50 >= 0xFFFFFFFF)
    {
      v52 = *(v49 + 8);
      *v48 = v50;
      *(v48 + 8) = v52;

      goto LABEL_8;
    }
  }

  else
  {
    if (v50 >= 0xFFFFFFFF)
    {
      v51 = *(v49 + 8);
      *v48 = v50;
      *(v48 + 8) = v51;

      goto LABEL_8;
    }
  }

  *v48 = *v49;
LABEL_8:
  *(v48 + 16) = *(v49 + 16);
  v53 = *(v49 + 20);
  *(v48 + 28) = *(v49 + 28);
  *(v48 + 20) = v53;
  *(v48 + 29) = *(v49 + 29);
  *(v48 + 30) = *(v49 + 30);
  v54 = (v48 + 34) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v49 + 34) & 0xFFFFFFFFFFFFFFF8;
  v56 = *v55;
  *(v54 + 8) = *(v55 + 8);
  *v54 = v56;
  v57 = *(*(a3 + 16) - 8);
  v58 = v57 + 24;
  v59 = *(v57 + 80);
  v60 = (v59 + 9 + v54) & ~v59;
  v61 = (v59 + 9 + v55) & ~v59;
  (*(v57 + 24))(v60, v61);
  v62 = *(v58 + 40) + 7;
  v63 = ((v62 + v60) & 0xFFFFFFFFFFFFFFF8);
  v64 = ((v62 + v61) & 0xFFFFFFFFFFFFFFF8);
  *v63 = *v64;
  v65 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
  v67 = *v66;
  if (*v65 < 0xFFFFFFFFuLL)
  {
    if (v67 >= 0xFFFFFFFF)
    {
      v69 = v66[1];
      *v65 = v67;
      v65[1] = v69;

      goto LABEL_15;
    }

LABEL_14:
    *v65 = *v66;
    goto LABEL_15;
  }

  if (v67 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v68 = v66[1];
  *v65 = v67;
  v65[1] = v68;

LABEL_15:
  v70 = (v66 + 19) & 0xFFFFFFFFFFFFFFF8;
  v71 = *v70;
  v72 = (v65 + 19) & 0xFFFFFFFFFFFFFFF8;
  *(v72 + 8) = *(v70 + 8);
  *v72 = v71;
  return a1;
}

_OWORD *initializeWithTake for UIKitButtonAdaptor(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v11 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  v14 = (a2 + 71) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  v16 = (a1 + 87) & 0xFFFFFFFFFFFFFFF8;
  v17 = (a2 + 87) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = (a1 + 103) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + 103) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = (a1 + 119) & 0xFFFFFFFFFFFFFFF8;
  v23 = (a2 + 119) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  v25 = (a1 + 135) & 0xFFFFFFFFFFFFFFF8;
  v26 = (a2 + 135) & 0xFFFFFFFFFFFFFFF8;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    *v25 = *v26;
  }

  else
  {
    v27 = *(v26 + 8);
    *v25 = *v26;
    *(v25 + 8) = v27;
  }

  *(v25 + 16) = *(v26 + 16);
  v28 = *(v26 + 20);
  *(v25 + 28) = *(v26 + 28);
  *(v25 + 20) = v28;
  *(v25 + 29) = *(v26 + 29);
  *(v25 + 30) = *(v26 + 30);
  v29 = (v25 + 34) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 34) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  *(v29 + 8) = *(v30 + 8);
  *v29 = v31;
  v32 = *(*(a3 + 16) - 8);
  v33 = v32 + 32;
  v34 = *(v32 + 80);
  v35 = (v34 + 9 + v29) & ~v34;
  v36 = (v34 + 9 + v30) & ~v34;
  (*(v32 + 32))(v35, v36);
  v37 = *(v33 + 32) + 7;
  v38 = ((v37 + v35) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + v36) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v41 < 0xFFFFFFFFuLL)
  {
    *v40 = *v41;
  }

  else
  {
    v42 = *(v41 + 8);
    *v40 = *v41;
    *(v40 + 8) = v42;
  }

  v43 = (v41 + 19) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  v45 = (v40 + 19) & 0xFFFFFFFFFFFFFFF8;
  *(v45 + 8) = *(v43 + 8);
  *v45 = v44;
  return a1;
}

_OWORD *assignWithTake for UIKitButtonAdaptor(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2 + 135;
  *a1 = *a2;
  v7 = a1 + 135;
  v8 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  v11 = *v8;
  v12 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = v9;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v14 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v16 = *v13;
  *v13 = v15;
  *(v13 + 8) = v14;
  outlined consume of Environment<Color?>.Content(v16);
  v17 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  *v17 = v19;
  *(v17 + 8) = v18;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  v23 = (a2 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v25 = *v22;
  v26 = *(v22 + 8);
  *v22 = v24;
  *(v22 + 8) = v23;
  outlined consume of Environment<Selector?>.Content(v25, v26);
  v27 = (a1 + 87) & 0xFFFFFFFFFFFFFFF8;
  v28 = (a2 + 87) & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v30 = *v27;
  v31 = *(v27 + 8);
  *v27 = v29;
  *(v27 + 8) = v28;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  v32 = (a1 + 103) & 0xFFFFFFFFFFFFFFF8;
  v33 = (a2 + 103) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = *v32;
  v36 = *(v32 + 8);
  *v32 = v34;
  *(v32 + 8) = v33;
  outlined consume of Environment<Selector?>.Content(v35, v36);
  v37 = (a1 + 119) & 0xFFFFFFFFFFFFFFF8;
  v38 = (a2 + 119) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = *v37;
  v41 = *(v37 + 8);
  *v37 = v39;
  *(v37 + 8) = v38;
  outlined consume of Environment<Selector?>.Content(v40, v41);
  v42 = v7 & 0xFFFFFFFFFFFFFFF8;
  v43 = v6 & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  if (*(v7 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
  {
    if (v44 >= 0xFFFFFFFF)
    {
      v46 = *(v43 + 8);
      *v42 = v44;
      *(v42 + 8) = v46;
      goto LABEL_8;
    }
  }

  else
  {
    if (v44 >= 0xFFFFFFFF)
    {
      v45 = *(v43 + 8);
      *v42 = v44;
      *(v42 + 8) = v45;

      goto LABEL_8;
    }
  }

  *v42 = *v43;
LABEL_8:
  *(v42 + 16) = *(v43 + 16);
  v47 = *(v43 + 20);
  *(v42 + 28) = *(v43 + 28);
  *(v42 + 20) = v47;
  *(v42 + 29) = *(v43 + 29);
  *(v42 + 30) = *(v43 + 30);
  v48 = (v42 + 34) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v43 + 34) & 0xFFFFFFFFFFFFFFF8;
  v50 = *v49;
  *(v48 + 8) = *(v49 + 8);
  *v48 = v50;
  v51 = *(*(a3 + 16) - 8);
  v52 = v51 + 40;
  v53 = *(v51 + 80);
  v54 = (v53 + 9 + v48) & ~v53;
  v55 = (v53 + 9 + v49) & ~v53;
  (*(v51 + 40))(v54, v55);
  v56 = *(v52 + 24) + 7;
  v57 = ((v56 + v54) & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v56 + v55) & 0xFFFFFFFFFFFFFFF8);
  *v57 = *v58;
  v59 = ((v57 + 15) & 0xFFFFFFFFFFFFFFF8);
  v60 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF8);
  v61 = *v60;
  if (*v59 < 0xFFFFFFFFuLL)
  {
    if (v61 >= 0xFFFFFFFF)
    {
      v63 = v60[1];
      *v59 = v61;
      v59[1] = v63;
      goto LABEL_15;
    }

LABEL_14:
    *v59 = *v60;
    goto LABEL_15;
  }

  if (v61 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v62 = v60[1];
  *v59 = v61;
  v59[1] = v62;

LABEL_15:
  v64 = (v60 + 19) & 0xFFFFFFFFFFFFFFF8;
  v65 = *v64;
  v66 = (v59 + 19) & 0xFFFFFFFFFFFFFFF8;
  *(v66 + 8) = *(v64 + 8);
  *v66 = v65;
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitButtonAdaptor(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 169) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 9;
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
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 119) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 - 87) & ~v6) + 7) & 0xF8) + 15) & 0xF8) + 19) & 0xF8) + 9));
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

void storeEnumTagSinglePayload for UIKitButtonAdaptor(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 169) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = (((((a1 + 119) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

uint64_t UIKitButtonAdaptor.init(configuration:options:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a1[3];
  *&v35[16] = a1[2];
  v36 = v11;
  v37 = a1[4];
  v38 = *(a1 + 80);
  v12 = a1[1];
  v34 = *a1;
  *v35 = v12;
  v13 = lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  *a6 = &type metadata for AnyButtonStyleType.Unknown;
  *(a6 + 8) = v13;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 40) = 0;
  *(a6 + 48) = swift_getKeyPath();
  *(a6 + 56) = 0;
  *(a6 + 64) = swift_getKeyPath();
  *(a6 + 72) = 0;
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 88) = 0;
  *(a6 + 96) = swift_getKeyPath();
  *(a6 + 104) = 0;
  *(a6 + 112) = swift_getKeyPath();
  *(a6 + 120) = 0;
  v15 = v35[8];
  if (v35[8] == 1 && (v35[20] & 1) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = v35[20] & ~v35[8];
    v17 = type metadata accessor for UIKitButtonAdaptor(0, a4, a5, v14);
    v18 = (a6 + v17[24]);
    v19 = a6 + v17[25];
    v21 = *(&v34 + 1);
    v20 = *v35;
    *(a6 + 128) = *(&v34 + 1);
    *(a6 + 136) = v20;
    *(a6 + 144) = v35[9];
    *(a6 + 148) = *&v35[12];
    *(a6 + 156) = v16 & 1;
    v22 = v35[21];
    *(a6 + 157) = *&v35[21];
    v23 = v36;
    *(a6 + 160) = *&v35[24];
    *(a6 + 168) = v23;
    v24 = v17[23];
    *(a6 + v24) = a2;
    v25 = *(&v36 + 1);
    v26 = v37;
    *v18 = *(&v36 + 1);
    v18[1] = v26;
    v27 = v38;
    *v19 = *(&v37 + 1);
    *(v19 + 8) = v27;
    outlined copy of AppIntentExecutor?(v21, v20);
    v28 = outlined copy of AppIntentExecutor?(v25, v26);
    a3(v28);
    result = outlined destroy of UIKitButtonConfiguration(&v34);
    if ((a2 & 0x80) != 0)
    {
      v30 = 0;
    }

    else
    {
      v30 = v15;
    }

    if (v30)
    {
      a2 |= 0x80uLL;
      *(a6 + v24) = a2;
    }

    if ((BYTE1(v36) & ((a2 & 0x100) == 0)) != 0)
    {
      v31 = a2 | 0x100;
    }

    else
    {
      v31 = a2;
    }

    v33 = (v31 & 1) == 0 && v22 == 1;
    if ((BYTE1(v36) & ((a2 & 0x100) == 0)) != 0 || v33)
    {
      *(a6 + v24) = v31 | v33;
    }
  }

  return result;
}

id UIKitButtonAdaptor.makeCoordinator()()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = objc_allocWithZone(type metadata accessor for UIKitButtonAdaptorCoordinator());
  outlined copy of AppIntentExecutor?(v1, v2);
  return UIKitButtonAdaptorCoordinator.init(action:)(v1, v2);
}

id UIKitButtonAdaptor.makeUIView(context:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UIPointerShape?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = *a1;
  v39 = a1[1];
  v40 = v9;
  v38 = *(a1 + 32);
  v10 = *(a1 + 5);
  v11 = UIKitButtonAdaptor.resolvedOptions.getter();
  v12 = v11;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = (*(v13 + 24))(v11, v14, v13);
  v16 = *(v2 + 2);
  v17 = *(v3 + 24);
  v18 = v15;
  specialized Environment.wrappedValue.getter(v16, v17, &aBlock);
  [v18 setPreferredMenuElementOrder_];
  if ((v12 & 8) != 0)
  {
    LODWORD(v19) = 1132068864;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];
    v20 = v10;
    if ((v12 & 0x20) != 0)
    {
      v21 = specialized Environment.wrappedValue.getter(*(v3 + 4), *(v3 + 40));
      if (!v21)
      {
        v21 = static Color.secondary.getter();
      }

      v22 = v21;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      v23 = UIColor.init(_:)(v22);
      [v18 setTintColor_];
    }

    v24 = *(v3 + *(a2 + 92));
    v25 = specialized Environment.wrappedValue.getter(*(v3 + 12), *(v3 + 104));
    v26 = *(v3 + 158);
    v48 = v10;
    v49 = v24;
    v50 = v25 & 1;
    v51 = v26;
    v52 = *v3;
    v53 = 0;
    aBlock = v40;
    v46 = v39;
    LOBYTE(v47) = v38;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonAdaptor<A>, a2);
    type metadata accessor for UIViewRepresentableContext(0, a2, WitnessTable, v28);
    UIViewRepresentableContext.environment.getter();
    v41 = v43;
    v42 = v44;
    EnvironmentValues.hasGlassEffect.getter();

    UIKitButtonAdaptorConstants.resolvedConfiguration(hasGlassEffect:)();
    v29 = type metadata accessor for UIButton.Configuration();
    (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
    UIButton.configuration.setter();
  }

  else
  {

    v20 = v10;
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    LODWORD(v30) = 1144750080;
    [v18 setContentHuggingPriority:0 forAxis:v30];
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    LODWORD(v31) = 1144750080;
    [v18 setContentHuggingPriority:1 forAxis:v31];
  }

  [v18 addTarget:v20 action:sel_primaryActionTriggered_ forControlEvents:0x2000];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v14;
  v33[3] = v13;
  v33[4] = v32;
  v47 = partial apply for closure #1 in UIKitButtonAdaptor.makeUIView(context:);
  v48 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v46 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  *(&v46 + 1) = &block_descriptor_77;
  v34 = _Block_copy(&aBlock);
  v35 = v18;

  [v35 setAccessibilityActivateBlock_];
  _Block_release(v34);

  return v35;
}

id closure #1 in UIKitButtonAdaptor.makeUIView(context:)(uint64_t a1)
{
  v1 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      v6 = [v4 _accessibilityShowContextMenuForElement_targetPointValue_];

      return v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id UIKitButtonAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v86 = a3;
  v78 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a3);
  v81 = v4;
  v76 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v82 = UIKitButtonAdaptor.resolvedOptions.getter();
  v90 = v3;
  v13 = *(v3 + 128);
  v12 = *(v3 + 136);
  v14 = &v11[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
  v15 = *&v11[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
  v16 = *&v11[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action + 8];
  *v14 = v13;
  v14[1] = v12;
  v17 = v11;
  v77 = v13;
  outlined copy of AppIntentExecutor?(v13, v12);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15, v16);
  v79 = v6;
  v98 = v6;
  v99 = v7;
  v87 = v9;
  v88 = v7;
  v100 = v9;
  v101 = v8;
  v18 = v86;
  v85 = v8;
  v83 = v10;
  v102 = v10;
  v89 = v17;
  v103 = v17;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonAdaptor<A>, v86);
  v21 = type metadata accessor for UIViewRepresentableContext(0, v18, WitnessTable, v20);
  UIViewRepresentableContext.environment.getter();
  if (v97)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey);
    PropertyList.subscript.getter();
  }

  v22 = v91;
  v23 = v92;
  v24 = v93;
  v25 = v94;
  v26 = v84;
  if (one-time initialization token for defaultAction != -1)
  {
    v73 = v91;
    swift_once();
    v22 = v73;
  }

  if (v23)
  {
    if (qword_1ED57A6B8)
    {
      v27 = qword_1ED57A6C0;
      v28 = byte_1ED57A6C8;
      if (v22 == static KeyboardShortcut.defaultAction && v23 == qword_1ED57A6B8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v24 == v27)
      {

        v29 = v25 == v28;
        v30 = v90;
        if (v29)
        {
          v31 = 1;
          goto LABEL_24;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v30 = v90;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!qword_1ED57A6B8)
    {

      v31 = 1;
      v30 = v90;
      goto LABEL_24;
    }
  }

  v30 = v90;

LABEL_19:
  (*(*(v18 + 24) + 16))(&v98, *(v18 + 16));
  v32 = 3;
  if (v98)
  {
    v32 = 0;
  }

  if (v98 == 1)
  {
    v31 = 2;
  }

  else
  {
    v31 = v32;
  }

LABEL_24:
  [v26 setRole_];
  v33 = *(v30 + 156);
  v34 = v89;
  v35 = &v89[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuAttribute];
  *v35 = *(v30 + 148);
  v35[8] = v33;
  v34[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuControlGroupSize] = specialized Environment.wrappedValue.getter(*(v30 + 48), *(v30 + 56));
  v36 = specialized Environment.wrappedValue.getter(*(v30 + 64), *(v30 + 72), &v98);
  *&v34[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_effectiveLabelStyle] = v98;
  (*((*MEMORY[0x1E69E7D40] & *v26) + 0x60))(v34, &protocol witness table for UIKitButtonAdaptorCoordinator, v36);
  v37 = v78;
  v38 = v76;
  (*(v78 + 16))(v76, v30, v18);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = *(v18 + 24);
  v81 = *(v18 + 16);
  *(v40 + 16) = v81;
  *(v40 + 24) = v41;
  v80 = v41;
  (*(v37 + 32))(v40 + v39, v38, v18);
  v42 = &v34[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
  v43 = *&v34[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged];
  v44 = *&v34[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_onMenuPresentationChanged + 8];
  *v42 = partial apply for closure #1 in UIKitButtonAdaptor.updateUIView(_:context:);
  v42[1] = v40;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v43, v44);
  LODWORD(v78) = v33;
  v45 = (v77 == 0) & ~v33;
  if (v45 != [v26 showsMenuAsPrimaryAction])
  {
    [v26 setShowsMenuAsPrimaryAction_];
  }

  v46 = *(v18 + 88);
  v47 = v79;
  v98 = v79;
  v99 = v88;
  v100 = v87;
  v101 = v85;
  v102 = v83;
  v48 = v89;
  v103 = v89;
  v49 = specialized PlatformViewRepresentableContext.transaction.getter();
  v50 = v80;
  v51 = *(v80 + 32);

  v77 = v21;
  v52 = v90;
  v76 = v46;
  v51(v26, v49, v82, v81, v50);

  [v26 setShowsMenuFromSource_];
  specialized Environment.wrappedValue.getter(*(v52 + 16), *(v52 + 24), &v98);
  [v26 setPreferredMenuElementOrder_];
  v98 = v47;
  v99 = v88;
  v100 = v87;
  v101 = v85;
  v102 = v83;
  v103 = v48;
  UIViewRepresentableContext.environment.getter();
  if (v92)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarButtonHoverShapeKey>, &type metadata for EnvironmentValues.ToolbarButtonHoverShapeKey, &protocol witness table for EnvironmentValues.ToolbarButtonHoverShapeKey);
    PropertyList.subscript.getter();
  }

  v53 = v95 | (v96 << 16);
  v54 = v84;
  v55 = v90;
  if ((v95 & 0xFF00) != 0x200)
  {
    v56 = swift_allocObject();
    v56[16] = v53;
    v56[17] = BYTE1(v53) & 1;
    v56[18] = BYTE2(v53) & 1;
  }

  UIButton.pointerStyleProvider.setter();
  v57 = specialized Environment.wrappedValue.getter(*(v55 + 80), *(v55 + 88), &v98);
  [v54 setSpringLoaded_];
  if ((v78 & 1) == 0)
  {
    if (v82)
    {
      v59 = (*(v80 + 56))(v54, v81);
      v60 = &v89[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
      *v60 = v59;
      v60[1] = v61;
    }

    else
    {
      v58 = &v89[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_menuTitle];
      *v58 = 0;
      *(v58 + 1) = 0;
    }

    v62 = [v54 menu];
    if (v62)
    {

      return [v54 setSelected_];
    }

    if ((UIKitButtonAdaptor.resolvedOptions.getter() & 0x80) != 0)
    {
      UIKitButtonAdaptorCoordinator.makeMenu()(v63);
      v66 = v67;
      [v54 setMenu_];
      if (!v66)
      {
LABEL_44:
        [v54 setChangesSelectionAsPrimaryAction_];
        [v54 addTarget:v89 action:sel_menuActionTriggered_ forControlEvents:0x4000];
        return [v54 setSelected_];
      }

      if ((*(v55 + 168) & 1) == 0)
      {
        Attribute = AGWeakAttributeGetAttribute();
        if (Attribute != *MEMORY[0x1E698D3F8])
        {
          MEMORY[0x1EEE9AC00](Attribute);
          v70 = v80;
          *(&v76 - 4) = v81;
          *(&v76 - 3) = v70;
          MEMORY[0x1EEE9AC00](v71);
          v74 = partial apply for closure #3 in UIKitButtonAdaptor.updateUIView(_:context:);
          v75._rawValue = v72;
          AGGraphMutateAttribute();

          goto LABEL_44;
        }
      }
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v104.value.super.isa = 0;
      v104.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x1E69E7CC0], v64, 0, v104, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x1E69E7CC0], v75);
      v66 = v65;
      [v54 setMenu_];
    }

    goto LABEL_44;
  }

  return [v54 setSelected_];
}

uint64_t closure #1 in UIKitButtonAdaptor.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UIKitButtonAdaptor(0, a3, a4, a4);
  result = (*(a4 + 64))(a1, a3, a4);
  v10 = (a2 + *(v8 + 96));
  if (*v10)
  {
    return (*v10)(a1 & 1);
  }

  return result;
}

uint64_t closure #2 in UIKitButtonAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  type metadata accessor for UIPointerShape?(0, &lazy cache variable for type metadata for UIPointerShape?, MEMORY[0x1E69DBEE0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v40 = type metadata accessor for UIPointerEffect();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UIPointerShape();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v41 = a4;
  v21 = ToolbarButtonHoverShape.adjustedRect(in:)(a4 & 0x1FF, v17, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v28 = static Solarium.isEnabled(for:)();
  v29 = 8.0;
  if (v28)
  {
    v42.origin.x = v21;
    v42.origin.y = v23;
    v42.size.width = v25;
    v42.size.height = v27;
    v29 = CGRectGetHeight(v42) * 0.5;
  }

  *v16 = v21;
  *(v16 + 1) = v23;
  *(v16 + 2) = v25;
  *(v16 + 3) = v27;
  *(v16 + 4) = v29;
  (*(v13 + 104))(v16, *MEMORY[0x1E69DBED0], v12);
  v30 = UIPointerEffect.preview.getter();
  v31 = [v30 view];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v33 = UIPointerEffect.preview.getter();
  v34 = [v33 target];

  v35 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v31 parameters:v32 target:v34];
  v36 = *(v9 + 104);
  v37 = MEMORY[0x1E69DBF98];
  *v11 = v35;
  if ((v41 & 0x10100) != 0)
  {
    v37 = MEMORY[0x1E69DBF70];
  }

  v36(v11, *v37, v40);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
  (*(v13 + 16))(v8, v16, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v38 = UIPointerStyle.init(effect:shape:)();
  (*(v13 + 8))(v16, v12);
  return v38;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitButtonAdaptor<A>@<X0>(void *a1@<X8>)
{
  result = UIKitButtonAdaptor.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t specialized UIKitButtonAdaptor.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v13) = a2 & 1;
  _ProposedSize.init(_:)();
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  return (*(*(a6 + 24) + 40))(&v9, a5, *(a6 + 16));
}

uint64_t partial apply for closure #1 in UIKitButtonAdaptor.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for UIKitButtonAdaptor(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in UIKitButtonAdaptor.updateUIView(_:context:)(a1, v9, v6, v7);
}

uint64_t partial apply for closure #2 in UIKitButtonAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (v3[18])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return closure #2 in UIKitButtonAdaptor.updateUIView(_:context:)(a1, a2, a3, v5 | v3[16] | v4);
}

void type metadata accessor for UIPointerShape?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(a1, v74);
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v74, &v80, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  v3 = v74[0];
  v4 = LOBYTE(v74[1]);
  v5 = v74[2];
  v6 = LOBYTE(v74[3]);
  v59 = a2;

  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v74, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  v90 = v3;
  v91 = v4;
  v92 = v5;
  v93 = v6;
  v57 = v79;
  v58 = v78;
  v94 = v78;
  v95 = v79;
  v103 = v84;
  v7 = v85;
  v49 = v86;
  v8 = v86 == 0;
  v55 = v87;
  v48 = v87 == 2 && v8;
  if (v87 != 2)
  {
    v8 = 0;
  }

  v46 = v8;
  v47 = MEMORY[0x1E69E7CC0];
  v53 = v85;
  while (1)
  {
    if (v4)
    {
      if (!v7)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v3 == v103)
      {
        v9 = v7;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (v81)
        {
          goto LABEL_91;
        }

        v10 = v82;
        v11 = v83;
        goto LABEL_26;
      }
    }

    if (v6)
    {
      if (v6 != 1)
      {
        if (v48)
        {
          goto LABEL_77;
        }

        goto LABEL_21;
      }

      if (v55 == 1)
      {
LABEL_18:
        if (v5 == v49)
        {
          goto LABEL_77;
        }
      }
    }

    else if (!v55)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v81)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_40;
    }

    if (v4)
    {
      goto LABEL_40;
    }

    v11 = v83;
    v10 = v82;
LABEL_26:
    if (v3 < v80)
    {
      goto LABEL_78;
    }

    if (v80 >= v3)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          if (v11 == 1 && v5 < v10)
          {
            goto LABEL_88;
          }
        }

        else if (v10 || v11 != 2)
        {
          goto LABEL_86;
        }
      }

      else if (v11)
      {
        if (v11 != 2)
        {
          goto LABEL_94;
        }
      }

      else if (v5 < v10)
      {
        goto LABEL_89;
      }
    }

LABEL_40:
    if (v7)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_90;
    }

    if (v3 >= v103)
    {
      if (v103 < v3)
      {
        goto LABEL_83;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          if (v55 != 1)
          {
            goto LABEL_92;
          }

          if (v5 >= v49)
          {
            goto LABEL_85;
          }
        }

        else if (v46)
        {
          goto LABEL_84;
        }
      }

      else if (v55)
      {
        if (v55 != 1)
        {
          goto LABEL_93;
        }
      }

      else if (v5 >= v49)
      {
        goto LABEL_87;
      }
    }

LABEL_57:
    v12 = outlined init with copy of NavigationState.Base(v88, v74);
    if (v77)
    {
      if (v77 == 1)
      {
        v44 = v76;
        v43 = v75;
        outlined consume of ResolvedNavigationDestinations?(v74[45], v74[46], v74[47], v74[48], v74[49], v74[50], v74[51], v74[52]);
        memcpy(v66, v74, sizeof(v66));
        if (v3)
        {
          goto LABEL_95;
        }

        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, v4 & 1, v5, v6, v66, 0, &v67);
        outlined destroy of NavigationColumnState(v66);
      }

      else
      {
        v21 = v74[0];
        v101[2] = *&v74[5];
        v101[3] = *&v74[7];
        v102 = v74[9];
        v101[0] = *&v74[1];
        v101[1] = *&v74[3];
        if (v3 < 0)
        {
          goto LABEL_80;
        }

        if (*(v74[0] + 16) < v3)
        {
          goto LABEL_81;
        }

        v22 = v6;
        v23 = v5;
        *v66 = v74[0];
        MEMORY[0x1EEE9AC00](v12);
        v44 = v66;
        v45 = v101;
        v24 = v56;
        v25 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v43, 0, v3);
        v56 = v24;
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_82;
        }

        v26 = v25;
        outlined init with copy of NavigationColumnState(v21 + 360 * v3 + 32, v66);

        v27 = v23;
        v6 = v22;
        v28 = v26;
        v5 = v27;
        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(v3, 0, v27, v22, v66, v28, &v67);
        outlined destroy of PPTTestCase?(v101, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
        outlined destroy of NavigationColumnState(v66);
        v7 = v53;
      }
    }

    else
    {
      v54 = v5;
      v13 = v74[0];
      v14 = LOBYTE(v74[1]);
      v15 = v74[2];
      v16 = static HorizontalAlignment.center.getter();
      if (!*(v89 + 16))
      {
        goto LABEL_79;
      }

      v17 = v16;
      outlined init with copy of _VariadicView_Children(v89 + 32, &v65);
      v63[0] = v17;
      v63[1] = 0;
      v64 = 1;
      v96[0] = 0;
      v96[1] = v13;
      v97 = v14;
      v98 = v15;
      v99 = 0;
      v100 = v14 == 3;
      v50 = v88[57];
      if (v14 >= 3)
      {
        v18 = 3;
      }

      else
      {
        v18 = v14;
      }

      v51 = v18;
      v52 = v4;
      outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v63, v66, type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
      *&v66[88] = 0;
      *&v66[96] = v13;
      *&v66[104] = v14;
      *&v66[112] = v15;
      *&v66[120] = 0;
      v66[128] = v14 == 3;
      LOBYTE(v4) = v52;
      v7 = v53;
      v66[129] = 1;
      v19 = swift_allocObject();
      *(v19 + 16) = 1;
      *&v66[136] = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
      *&v66[144] = v19;
      v50(&v60, v96);
      v66[152] = v60;
      *&v66[160] = v61;
      *&v66[176] = v62;
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(0);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>();
      v20 = AnyView.init<A>(_:)();
      outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v63, type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v73 = 2;
      v67 = v20;
      LOBYTE(v68) = v51;
      *(&v68 + 1) = 0;
      v5 = v54;
    }

    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v3, v4 & 1, v5, v6);
    v90 = v29;
    v91 = v30 & 1;
    v92 = v31;
    v93 = v32;
    if (!v67)
    {
LABEL_77:
      outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(&v80, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator, MEMORY[0x1E69E6C88]);

      return v47;
    }

    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v74[0] = v67;
    *&v74[5] = v70;
    *&v74[7] = v71;
    *&v74[9] = v72;
    LOBYTE(v74[11]) = v73;
    *&v74[1] = v68;
    *&v74[3] = v69;
    v58(v66, v74);
    outlined destroy of NavigationState.StackContent.PositionedView(v74);
    LOBYTE(v74[0]) = v66[0];
    v74[1] = *&v66[8];
    v33 = NavigationHostingControllerCache_UIKit.ejectDeferred(at:)(v74);
    if (v33)
    {
      v54 = v5;
      v35 = v33;
      v36 = v34;
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      *(v37 + 24) = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
      }

      v39 = v47[2];
      v38 = v47[3];
      if (v39 >= v38 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v47);
      }

      v40 = v47;
      v47[2] = v39 + 1;
      v41 = &v40[2 * v39];
      v41[4] = partial apply for thunk for @callee_guaranteed () -> ();
      v41[5] = v37;
      v5 = v54;
    }
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_57;
  }

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
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:

  __break(1u);
LABEL_93:

  __break(1u);
LABEL_94:

  __break(1u);
LABEL_95:

  LODWORD(v45) = 0;
  v44 = 894;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()()
{
  v1 = v0;
  outlined init with copy of NavigationState.Base(v0, &v88);
  if (v90 != 2)
  {
    outlined destroy of NavigationState.Base(&v88);
    return;
  }

  v2 = v88;
  v96[2] = v89[2];
  v96[3] = v89[3];
  v97 = v89[4];
  v96[0] = v89[0];
  v96[1] = v89[1];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0E5StateV12StackContentV14PositionedViewVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 16);

  v5 = 0;
  v49 = v4 != 0;
  v50 = v49 - v4;
  v6 = 360 * v49 + 32;
  v52 = 96;
  v7 = 3;
  v44 = v2;
  v45 = v4;
  v43 = v0;
  while (1)
  {
    if (v50 + v7 == 3)
    {

      outlined destroy of PPTTestCase?(v96, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
      swift_unknownObjectRelease();
      return;
    }

    if (v49 + v7 - 3 >= v4)
    {
      break;
    }

    outlined init with copy of NavigationColumnState(v2 + v6, v89);
    memcpy(__dst, v89, 0x163uLL);
    if ((v7 - 2) >= *(v2 + 16))
    {
      goto LABEL_80;
    }

    v51 = v7 - 1;
    outlined init with copy of NavigationColumnState(v2 + v5 + 392, &v71);
    if (BYTE8(v72) > 2u)
    {
      if (BYTE8(v72) != 3 && BYTE8(v72) != 4)
      {
        v48 = v3;
        goto LABEL_29;
      }
    }

    else if (BYTE8(v72))
    {
      if (BYTE8(v72) != 1)
      {
        v48 = v3;
        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v71, v7 - 2, v2);
        v13 = v12;
        outlined destroy of NavigationColumnState(&v71);
        if (v13)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v71, v7 - 2, v2);
      if ((v8 & 1) == 0)
      {
        v48 = v3;
        if (v51 >= v4)
        {
          goto LABEL_29;
        }

        if (v51 >= *(v2 + 16))
        {
          goto LABEL_83;
        }

        outlined init with copy of NavigationColumnState(v2 + v5 + 752, &v63);
        if (v66 > 2u)
        {
          if (v66 - 3 < 2)
          {
LABEL_45:
            outlined destroy of NavigationColumnState(&v63);
            outlined destroy of NavigationColumnState(&v71);
LABEL_46:
            outlined destroy of NavigationColumnState(__dst);
            v3 = v48;
            v4 = v45;
            goto LABEL_5;
          }
        }

        else
        {
          if (!v66)
          {
            goto LABEL_45;
          }

          if (v66 != 1)
          {
            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v63, v51, v2);
            v10 = v35 ^ 1;
            goto LABEL_49;
          }

          specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v63, v51, v2);
          if (v9)
          {
            goto LABEL_45;
          }

          if (v7 < v4)
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_84;
            }

            outlined init with copy of NavigationColumnState(v2 + v5 + 1112, &v58);
            v10 = 0;
            if (BYTE8(v59) > 2u)
            {
              if (BYTE8(v59) - 3 < 2)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (!BYTE8(v59))
              {
                goto LABEL_54;
              }

              if (BYTE8(v59) != 1)
              {
                specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v58, v7, v2);
                v10 = v36 ^ 1;
                goto LABEL_54;
              }

              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v58, v7, v2);
              if (v11)
              {
                v10 = 0;
                goto LABEL_54;
              }

              if ((v7 + 1) < *(v2 + 16))
              {
                outlined init with copy of NavigationColumnState(v2 + v5 + 1472, &v55);
                v10 = 0;
                if (v57 > 2u)
                {
                  if (v57 - 3 < 2)
                  {
                    goto LABEL_64;
                  }
                }

                else
                {
                  if (!v57)
                  {
                    goto LABEL_64;
                  }

                  v37 = v7 + 1;
                  if (v57 != 1)
                  {
                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v55, v37, v2);
                    v10 = v39 ^ 1;
                    goto LABEL_64;
                  }

                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, &v55, v37, v2);
                  if (v38)
                  {
                    v10 = 0;
                    goto LABEL_64;
                  }

                  v40 = *(v2 + 16);
                  v47 = v7 + 2;
                  if (v7 + 2 < v40)
                  {
                    outlined init with copy of NavigationColumnState(v2 + v5 + 1832, v53);
                    v10 = 0;
                    if (v54 > 2u)
                    {
                      if (v54 - 3 < 2)
                      {
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                      if (!v54)
                      {
                        goto LABEL_74;
                      }

                      if (v54 != 1)
                      {
                        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, v53, v47, v44);
                        v10 = v42 ^ 1;
                        goto LABEL_74;
                      }

                      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v96, v53, v47, v44);
                      if (v41)
                      {
                        v10 = 0;
                        goto LABEL_74;
                      }

                      if (v7 + 3 < v40)
                      {
                        v10 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v7 + 3, v44, v96);
LABEL_74:
                        outlined destroy of NavigationColumnState(v53);
                        v2 = v44;
LABEL_64:
                        outlined destroy of NavigationColumnState(&v55);
LABEL_54:
                        outlined destroy of NavigationColumnState(&v58);
LABEL_49:
                        outlined destroy of NavigationColumnState(&v63);
                        outlined destroy of NavigationColumnState(&v71);
                        if ((v10 & 1) == 0)
                        {
                          goto LABEL_46;
                        }

LABEL_31:
                        v14 = LOBYTE(__dst[3]);
                        v15 = __dst[2];
                        v16 = __dst[4];
                        v17 = static HorizontalAlignment.center.getter();
                        v18 = v1[59];
                        if ((v7 - 2) >= *(v18 + 16))
                        {
                          goto LABEL_82;
                        }

                        v19 = v17;
                        outlined init with copy of _VariadicView_Children(v18 + v52, &v59 + 8);
                        v58 = v19;
                        LOBYTE(v59) = 1;
                        v91[0] = 0;
                        v91[1] = v15;
                        v92 = v14;
                        v93 = v16;
                        v94 = 0;
                        v95 = v14 == 3;
                        v20 = v1[57];
                        if (v14 >= 3)
                        {
                          v21 = 3;
                        }

                        else
                        {
                          v21 = v14;
                        }

                        v46 = v21;
                        outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v58, &v71, type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
                        *&v75[24] = 0;
                        v76 = v15;
                        v77 = v14;
                        v78 = v16;
                        v79 = 0;
                        v80 = v14 == 3;
                        v81 = 1;
                        v22 = swift_allocObject();
                        *(v22 + 16) = 1;
                        v82 = partial apply for closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:);
                        v83 = v22;
                        v20(&v55, v91);
                        v84 = v55;
                        v85 = v56;
                        v86 = v57;
                        type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(0);
                        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>();
                        v23 = AnyView.init<A>(_:)();
                        outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v58, type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
                        v69 = 0u;
                        v68 = 0u;
                        v67 = 0u;
                        v66 = 0u;
                        v70 = 2;
                        v63 = v23;
                        v64 = v46;
                        v65 = 0;
                        outlined init with copy of NavigationState.StackContent?(&v63, &v71, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
                        if (v71)
                        {
                          v60 = v73;
                          v61 = v74;
                          v62[0] = *v75;
                          *(v62 + 9) = *&v75[9];
                          v58 = v71;
                          v59 = v72;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v55 = v48;
                          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v58, v14, isUniquelyReferenced_nonNull_native);
                          v3 = v55;
                          v1 = v43;
                          v2 = v44;
                          v4 = v45;
                        }

                        else
                        {
                          outlined destroy of PPTTestCase?(&v71, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
                          v25 = v14;
                          v3 = v48;
                          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
                          v1 = v43;
                          v2 = v44;
                          if (v27)
                          {
                            v28 = v26;
                            v29 = swift_isUniquelyReferenced_nonNull_native();
                            v55 = v48;
                            if ((v29 & 1) == 0)
                            {
                              specialized _NativeDictionary.copy()();
                              v3 = v55;
                            }

                            v30 = (*(v3 + 56) + 96 * v28);
                            v31 = v30[1];
                            v58 = *v30;
                            v59 = v31;
                            v33 = v30[3];
                            v32 = v30[4];
                            v34 = v30[2];
                            *(v62 + 9) = *(v30 + 73);
                            v61 = v33;
                            v62[0] = v32;
                            v60 = v34;
                            specialized _NativeDictionary._delete(at:)(v28, v3);
                          }

                          else
                          {
                            v61 = 0u;
                            memset(v62, 0, 25);
                            v59 = 0u;
                            v60 = 0u;
                            v58 = 0u;
                          }

                          v4 = v45;
                          outlined destroy of PPTTestCase?(&v58, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
                        }

                        outlined destroy of PPTTestCase?(&v63, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
                        goto LABEL_4;
                      }
                    }

                    v10 = 1;
                    goto LABEL_74;
                  }
                }

                v10 = 1;
                goto LABEL_64;
              }
            }

            v10 = 1;
            goto LABEL_54;
          }
        }

        outlined destroy of NavigationColumnState(&v63);
LABEL_29:
        outlined destroy of NavigationColumnState(&v71);
        goto LABEL_31;
      }
    }

    outlined destroy of NavigationColumnState(&v71);
LABEL_4:
    outlined destroy of NavigationColumnState(__dst);
LABEL_5:
    ++v7;
    v52 += 64;
    v5 += 360;
    v6 += 360;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v12 = a5;
  if (a5 < 0)
  {
    v15 = 0;
    v17 = a9 == 2 && a8 == 0;
    while (1)
    {
      if (a2)
      {
        if ((a7 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((a7 & 1) != 0 || a1 != a6)
      {
        goto LABEL_30;
      }

      if (!a4)
      {
        break;
      }

      if (a4 != 1)
      {
        if (v17)
        {
          return;
        }

        goto LABEL_30;
      }

      if (a9 == 1)
      {
        goto LABEL_41;
      }

LABEL_30:
      --v15;
      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(a1, a2 & 1, a3, a4);
      if (v15 <= v12)
      {
        return;
      }
    }

    if (a9)
    {
      goto LABEL_30;
    }

LABEL_41:
    if (a3 == a8)
    {
      return;
    }

    goto LABEL_30;
  }

  if (a5)
  {
    v14 = a9 == 2 && a8 == 0;
    while (1)
    {
      if (a2)
      {
        if ((a7 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((a7 & 1) != 0 || a1 != a6)
      {
        goto LABEL_10;
      }

      if (!a4)
      {
        break;
      }

      if (a4 != 1)
      {
        if (v14)
        {
          return;
        }

        goto LABEL_10;
      }

      if (a9 == 1)
      {
        goto LABEL_21;
      }

LABEL_10:
      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(a1, a2 & 1, a3, a4);
      if (!--v12)
      {
        return;
      }
    }

    if (a9)
    {
      goto LABEL_10;
    }

LABEL_21:
    if (a3 == a8)
    {
      return;
    }

    goto LABEL_10;
  }
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*(a5 + 8))
  {
    if (a2)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if ((a2 & 1) == 0)
  {
    if (*a5 > result)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (*a5 >= result)
    {
      v5 = *(a5 + 16);
      v6 = *(a5 + 24);
      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_15;
        }

        if (v6 != 1 || v5 <= a3)
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      if (!v6)
      {
LABEL_18:
        if (v5 > a3)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        goto LABEL_19;
      }

      if (v6 == 2)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (!v5 && v6 == 2)
      {
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_19:
  if (*(a5 + 40))
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (a2)
  {
    goto LABEL_42;
  }

  v7 = *(a5 + 32);
  if (v7 > result)
  {
    return result;
  }

  if (v7 < result)
  {
    goto LABEL_39;
  }

  v8 = *(a5 + 48);
  v9 = *(a5 + 56);
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_33;
    }

    if (v9 != 1)
    {
LABEL_43:
      __break(1u);
      return result;
    }

    if (v8 > a3)
    {
      return result;
    }

    __break(1u);
  }

  if (!v9)
  {
    goto LABEL_36;
  }

  if (v9 == 1)
  {
    return result;
  }

  __break(1u);
LABEL_33:
  if (!v8 && v9 == 2)
  {
    __break(1u);
LABEL_36:
    if (v8 > a3)
    {
      return result;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t NavigationStackHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized NavigationStackHostingController.init(rootView:)(a1);
  (*(*(*(v2 + 125) - 8) + 8))(a1);
  return v5;
}

double specialized Collection.subscript.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v13)
  {
    v14 = a2 ^ 1;
    goto LABEL_3;
  }

  if ((a2 & 1) != 0 || v10 > a1)
  {
    goto LABEL_18;
  }

  if (v10 < a1)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      v14 = v12 != 2 || v11 != 0;
LABEL_3:
      if (v14 & 1) != 0 || (a2)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (v12 != 1)
    {
      goto LABEL_9;
    }

LABEL_25:
    v14 = v11 > a3;
    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  if (v12 == 1)
  {
LABEL_18:
    result = 0.0;
    *(a5 + 73) = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    return result;
  }

LABEL_9:

  specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(a1, a2 & 1, a3, a4);
  return result;
}

{
  v6 = *(v5 + 8);
  if ((v6 & 1) != 0 || (a2 & 1) != 0 || *v5 > a1)
  {
    goto LABEL_34;
  }

  v7 = v5[2];
  v8 = *(v5 + 24);
  if (*v5 < a1)
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    if (*(v5 + 24))
    {
      if (v8 == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (a4 != 1)
  {
    if (v7 || v8 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_5;
  }

  if (v8 == 1)
  {
LABEL_20:
    if (v7 > a3)
    {
      goto LABEL_34;
    }
  }

LABEL_5:
  v9 = v5[4];
  v10 = *(v5 + 40);
  v11 = v5[6];
  v12 = *(v5 + 56);
  if ((v10 & 1) != 0 || v9 > a1)
  {
    goto LABEL_33;
  }

  if (v9 >= a1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (v12 == 1 && v11 > a3)
        {
          LOBYTE(v12) = 1;
LABEL_33:
          v17 = *v5;
          v18 = v6;
          v19 = v7;
          v20 = v8;
          v21 = v9;
          v22 = v10;
          v23 = v11;
          v24 = v12;
          specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, 0, a3, a4, &v17);
          specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(a1, 0, a3, a4);
          return result;
        }
      }

      else if (v11 || v12 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (*(v5 + 56))
    {
      if (v12 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (v11 > a3)
    {
      LOBYTE(v12) = 0;
      goto LABEL_33;
    }
  }

LABEL_34:
  result = 0.0;
  *(a5 + 73) = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  return result;
}

void specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(uint64_t a1)
{
  outlined init with copy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(a1, &v29);
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v29, &v38, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  v1 = v29;
  v2 = v30;
  v3 = *(&v30 + 1);
  v4 = v31;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v29, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  v46 = v1;
  v47 = v2;
  v48 = v3;
  v49 = v4;
  v20 = v36;
  v50 = v36;
  v51 = v37;
  v5 = v42;
  v6 = v43;
  v18 = v44;
  v7 = v44 == 0;
  v19 = v45;
  if (v45 != 2)
  {
    v7 = 0;
  }

  v16 = v7;
  v17 = v45 == 2 && v44 == 0;
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (!v6)
  {
    goto LABEL_68;
  }

LABEL_12:
  if (!v4)
  {
    if (v19)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (v19 != 1)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (v3 == v18)
    {
      goto LABEL_59;
    }

    goto LABEL_20;
  }

  if (v17)
  {
LABEL_59:
    outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(&v38, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator, MEMORY[0x1E69E6C88]);
    return;
  }

LABEL_20:
  if (v39)
  {
    if (v2)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

  if ((v2 & 1) == 0)
  {
    v10 = v41;
    v9 = v40;
    goto LABEL_25;
  }

LABEL_39:
  while ((v6 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_68;
    }

    if (v1 >= v5)
    {
      if (v5 < v1)
      {
        goto LABEL_61;
      }

      if (v4)
      {
        if (v4 == 1)
        {
          if (v19 != 1)
          {
            goto LABEL_70;
          }

          if (v3 >= v18)
          {
            goto LABEL_63;
          }
        }

        else if (v16)
        {
          goto LABEL_62;
        }
      }

      else if (v19)
      {
        if (v19 != 1)
        {
          goto LABEL_71;
        }
      }

      else if (v3 >= v18)
      {
        goto LABEL_65;
      }
    }

LABEL_56:
    specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v1, v2 & 1, v3, v4);
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v1, v2 & 1, v3, v4);
    v46 = v11;
    v47 = v12 & 1;
    v48 = v13;
    v49 = v14;
    if (!v29)
    {
      goto LABEL_59;
    }

    v1 = v11;
    v2 = v12;
    v3 = v13;
    v4 = v14;
    v22 = v29;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    v20(v21, &v22);
    outlined destroy of NavigationState.StackContent.PositionedView(&v22);
    LOBYTE(v29) = v21[0];
    *&v30 = v21[1];
    v15 = &v29;
    NavigationHostingControllerCache_UIKit.eject(at:)(*&v15);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (v1 == v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (v39)
    {
      goto LABEL_69;
    }

    v9 = v40;
    v10 = v41;
LABEL_25:
    if (v1 < v38)
    {
      goto LABEL_60;
    }

    if (v38 >= v1)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          if (v10 == 1 && v3 < v9)
          {
            goto LABEL_66;
          }
        }

        else if (v9 || v10 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v10)
      {
        if (v10 != 2)
        {
          goto LABEL_72;
        }
      }

      else if (v3 < v9)
      {
        goto LABEL_67;
      }
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_56;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
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
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t closure #1 in static NavigationStackCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for NavigationStackCore(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t NavigationStackCore.MultimodalNavigationStackChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v11 = *Value;
  v12 = *(Value + 8);
  v13 = *(Value + 16);
  NavigationStackCore.NavigationStackRepresentableChild.ensuredAuthority.getter(v20);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v15 = *WeakValue;
  }

  else
  {
    v15 = -1;
  }

  v21 = v11;
  v22 = v12;
  v23 = v13;
  outlined init with take of NavigationAuthority(v20, v24);
  v24[3] = v15;
  v16 = AGGraphGetValue();
  (*(v7 + 16))(v9, v16, a3);
  type metadata accessor for NavigationStackCore.MultimodalNavigationStackRoot(0, a3, a4, v17);
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance NavigationStackCore<A>.NavigationStackRepresentableChild@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  a2(255, *(a1 + 16), *(a1 + 24));
  v5 = type metadata accessor for _VariadicView.Tree();
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance NavigationStackCore<A>.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.NavigationStackRepresentableRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t NavigationStackCore.MultimodalNavigationStackRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, a2);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  outlined init with copy of NavigationAuthority((v2 + 3), a2 + 88);
  *(a2 + 64) = v4;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 112) = v2[6];
  result = swift_getKeyPath();
  *(a2 + 120) = result;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = 0;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance NavigationStackCore<A>.MultimodalNavigationStackRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.MultimodalNavigationStackRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

void closure #1 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.setRootView(_:transaction:)(v2, 0);
}

uint64_t specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v6 = v4;
  v10 = specialized BidirectionalCollection._distance(from:to:)(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56));
  v11 = [a1 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 == v13)
  {
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(a2, v26, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  }

  else
  {
    bzero(v26, 0x220uLL);
  }

  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(v26, &v17, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  if (v21)
  {
    v22 = v17;
    LOBYTE(v23) = v18;
    v24 = v19;
    v25 = v20;
    v14 = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v17, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  }

  else
  {
    v14 = outlined destroy of UINavigationPresentationAdaptor?(&v17, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v25 = -1;
  }

  MEMORY[0x1EEE9AC00](v14);
  v16[2] = v6;
  v16[3] = v26;
  v16[4] = &v22;
  v16[5] = a3;
  _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(a4, v16);
  return outlined destroy of UINavigationPresentationAdaptor?(v26, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
}

{
  v6 = v4;
  v10 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v13)
  {
    v14 = 0;
LABEL_7:
    v17 = [a1 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v10, v16 & 1, v11, v12);
      ++v15;
      if ((v16 & 1) != 0 && v12 >= 2u)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  v19 = __CocoaSet.count.getter();
LABEL_9:

  if (v14 == v19)
  {
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(a2, v31, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(v31, v26, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  if (v26[57])
  {
    v27 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    LOBYTE(v28) = v20 & 1;
    v29 = v21;
    v30 = v22;
    v23 = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v26, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  else
  {
    v23 = outlined destroy of UINavigationPresentationAdaptor?(v26, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v30 = -1;
  }

  MEMORY[0x1EEE9AC00](v23);
  v25[2] = v6;
  v25[3] = v31;
  v25[4] = &v27;
  v25[5] = a3;
  _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(a4, v25);
  return outlined destroy of UINavigationPresentationAdaptor?(v31, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
}

void specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of NavigationState.Base(a1, v11);
  v5 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x70));
  swift_beginAccess();
  v6 = v5[2];
  if (v6)
  {
    v8 = *v5;
    v7 = v5[1];
    outlined init with copy of NavigationState.Base(v11, v10);
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v10[57] = implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply;
    v10[58] = v9;
    v10[59] = v6;
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v10, __src, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined copy of NavigationStrategy_Phone?(v8, v7, v6);
    outlined copy of NavigationStrategy_Phone?(v8, v7, v6);

    specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();

    outlined consume of NavigationStrategy_Phone?(v8, v7, v6);
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v10, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined destroy of NavigationState.StackContent.Views(v11);
    memcpy(a3, __src, 0x1E0uLL);
    a3[60] = closure #1 in previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:);
    a3[61] = 0;
  }

  else
  {
    __break(1u);
  }
}

void specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  outlined init with copy of NavigationState.Base(a1, v15);
  v8 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x70));
  swift_beginAccess();
  v9 = v8[2];
  if (v9)
  {
    v12 = v8;
    v10 = *v8;
    v11 = v12[1];
    outlined init with copy of NavigationState.Base(v15, v14);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v11;
    v13[4] = v9;
    v14[57] = a4;
    v14[58] = v13;
    v14[59] = v9;
    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v14, __src, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined copy of NavigationStrategy_Phone?(v10, v11, v9);

    specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();

    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v14, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    outlined destroy of NavigationState.StackContent.Views(v15);
    memcpy(a5, __src, 0x1E0uLL);
    a5[60] = closure #1 in previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:);
    a5[61] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

void *specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t (*a1)(void), uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  result = a1();
  if (a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      outlined init with copy of NavigationAuthority(result + *((*MEMORY[0x1E69E7D40] & *result) + 0x68), v29);

      v13 = 4;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      v20 = 22;
      v21 = a5;
      v22 = a6;
      v28 = 0;
      v23 = a7;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      NavigationAuthority.enqueueRequest(_:)(&v13);
      outlined destroy of NavigationRequest(&v13);
      return outlined destroy of NavigationAuthority(v29);
    }
  }

  return result;
}

void specialized Collection.dropLast(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if ((v8 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v5, v11 & 1, v6, v7);
      ++v10;
      if ((v11 & 1) != 0 && v7 >= 2u)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
LABEL_8:
  v12 = __OFSUB__(v9, a1);
  v13 = v9 - a1;
  if (v12)
  {
    goto LABEL_19;
  }

  v14 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v29 = a2;
  if (v13 >= 1)
  {
    while ((v15 & 1) == 0 || v17 <= 1u)
    {
      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v14, v15 & 1, v16, v17);
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v16 = 0;
    v14 = 0;
    v15 = 1;
    LOBYTE(v17) = 2;
  }

LABEL_15:
  v18 = v16;
  v19 = v14;
  v20 = v17;
  v21 = v15;
  v22 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27 & 1;
  if (_sSLsE2leoiySbx_xtFZ7SwiftUI15NavigationStateV12StackContentV5ViewsV0H8SequenceV5IndexVy___AB22_VariadicView_ChildrenVAB08ModifiedG0VyAB0D24SearchAdjustmentModifierVAPyAPyAB0d6ColumnQ0VAB09InjectKeyQ0VGAB0d16BackgroundReaderQ033_7632008E3567AB610EB09B57688D0EDELLVGG_G_Tt1g5(v22, v27 & 1, v23, v25, v19, v21 & 1, v18, v20))
  {
    v30 = v22;
    v31 = v28;
    v32 = v24;
    v33 = v26;
    v34 = v19;
    v35 = v21 & 1;
    v36 = v18;
    v37 = v20;
    specialized Collection<>.subscript.getter(&v30, v29);
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v2, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    return;
  }

LABEL_20:
  __break(1u);
}

void closure #1 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.setRootView(_:transaction:)(v4, a3);
}

void specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x70));
  swift_beginAccess();
  v13 = v12[2];
  if (v13)
  {
    v16 = v12;
    v14 = *v12;
    v15 = v16[1];
    v17 = *a2;
    outlined copy of NavigationStrategy_Phone?(v14, v15, v13);
    specialized NavigationStrategy.viewControllerCommon(for:entering:canPop:isRoot:)(v17, 1, v14, v15, v13, a4, a5, a6, a7);
    outlined consume of NavigationStrategy_Phone?(v14, v15, v13);
  }

  else
  {
    __break(1u);
  }
}

void specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(unint64_t a1, UINavigationController *a2, void *a3, uint64_t a4, uint64_t a5, UIViewController *a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = a1;
  v12 = a6;
  v41 = a7;
  v42 = a5;
  v43 = __CocoaSet.count.getter();
  a5 = v42;
  a7 = v41;
  a6 = v12;
  v44 = v43;
  a1 = v11;
  if (!v44)
  {
    goto LABEL_36;
  }

LABEL_3:
  v45 = a7;
  v48 = a5;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v18 = MEMORY[0x18D00E9C0](0, a1, a3, a4, a5, a6, a7);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(a1 + 32);
LABEL_6:
  v13 = v18;
  v12 = [(UINavigationController *)a2 topViewController];
  v19 = [(UINavigationController *)a2 transitionCoordinator];
  if (!v19)
  {
    goto LABEL_21;
  }

  if ([v19 isCancelled] && -[UINavigationController lastOperation](a2, sel_lastOperation) == 1)
  {
    v11 = &selRef_titleTextAttributes;
    v20 = [(UINavigationController *)a2 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v21 >> 62))
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_39:
    v22 = __CocoaSet.count.getter();
LABEL_11:

    if (v22 >= 2)
    {
      v23 = [a2 v11[393]];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v23 = a2;
        v25 = __CocoaSet.count.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = __OFSUB__(v25, 2);
      v27 = v25 - 2;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        v28 = [a2 v11[393]];
        v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v23 & 0xC000000000000001) == 0)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v27 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v29 = *(v23 + 8 * v27 + 32);
LABEL_19:
            v30 = v29;

            swift_unknownObjectRelease();
            v12 = v30;
LABEL_22:
            v31 = v12;
            specialized UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(v31, 0);
            v47 = v31;

            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_45;
        }
      }

      v29 = MEMORY[0x18D00E9C0](v27, v23);
      goto LABEL_19;
    }
  }

  swift_unknownObjectRelease();
LABEL_21:
  if (v12)
  {
    goto LABEL_22;
  }

  v47 = 0;
LABEL_24:
  v32 = *(a4 + 8);
  v33 = MEMORY[0x1E69E7D40];
  v34 = *MEMORY[0x1E69E7D40];
  if (v32 <= 2)
  {
    v35 = &v13[*((*v13 & v34) + 0x3F8)];
    swift_beginAccess();
LABEL_30:
    v35[1] = v32;
    goto LABEL_31;
  }

  v32 = *(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x60) + 8);
  v35 = &v13[*((*v13 & v34) + 0x3F8)];
  swift_beginAccess();
  if (v32 <= 5 && ((1 << v32) & 0x27) != 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v46 = a8;
  v37 = a3 + *((*v33 & *a3) + 0x70);
  swift_beginAccess();
  if (!*(v37 + 2))
  {
LABEL_45:
    __break(1u);
    return;
  }

  v38 = *(v37 + 1);

  specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v39, v38, a2, 0);

  v40 = 0;
  *(a3 + *((*v33 & *a3) + 0x88)) = v13;
  if (v48)
  {
    outlined init with copy of NavigationState.StackContent(v45, v49);
    v40 = NavigationState.StackContent.shouldAnimate(from:)(v49);
    outlined destroy of PPTTestCase?(v49, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  [(UINavigationController *)a2 _swiftui_pushViewController:v13 animated:v40];
  specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(v13);
  specialized NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)(v40, a2, v46, a9, a10, a11);
}

void specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v33 = a7;
  v34 = a8;
  v29 = a6;
  v30 = a1;
  v31 = a3;
  v32 = a5;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(a2, v42, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v42, v44, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v9 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v10 & 1;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v42, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v45 = v9;
  v46 = v16;
  v47 = v13;
  v48 = v15;
  v49 = 0;
  if ((v11 & 1) != 0 && v15 > 1u)
  {
LABEL_10:
    v50 = 1;
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v44, type metadata accessor for Zip2Sequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, PartialRangeFrom<Int>>.Iterator);
  }

  else
  {
    v17 = 0;
    v18 = 3;
    while (1)
    {
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v9, v11 & 1, v13, v15);
      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v9, v11 & 1, v13, v15);
      v46 = v20 & 1;
      v45 = v19;
      v47 = v21;
      v48 = v22;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v9 = v19;
      v11 = v20;
      v13 = v21;
      v15 = v22;
      v49 = v17 + 1;
      *(v43 + 9) = *(v41 + 9);
      v42[3] = v40;
      v43[0] = v41[0];
      v42[1] = v38;
      v42[2] = v39;
      v42[0] = v37;
      *(v41 + 9) = *(v43 + 9);
      v35[0] = BYTE8(v37);
      v36 = v38;
      MEMORY[0x1EEE9AC00](v19);
      v28[8] = &v37;
      v28[9] = v31;
      v28[10] = a4;
      MEMORY[0x1EEE9AC00](v23);
      v28[2] = a4;
      v28[3] = v24;
      v28[4] = v32;
      v28[5] = v17;
      NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v35, 0, v33, v25, v34, v28);
      v26 = BYTE8(v37);
      if (!v18 && BYTE8(v37) == 2)
      {
        v27 = v29;
        *v29 = v17;
        *(v27 + 8) = 0;
      }

      outlined destroy of NavigationState.StackContent.PositionedView(&v37);
      ++v17;
      v18 = v26;
      if (v11)
      {
        v18 = v26;
        if (v15 > 1u)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  v9 = *(a1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.setRootView(_:transaction:)(v8, a3);

  v10 = *(a2 + 8);
  v11 = *MEMORY[0x1E69E7D40];
  if (v10 <= 2)
  {
    v12 = a1 + *((*a1 & v11) + 0x3F8);
    swift_beginAccess();
LABEL_7:
    v12[1] = v10;
    return;
  }

  v10 = *(a4 + *((*MEMORY[0x1E69E7D40] & *a4) + 0x60) + 8);
  v12 = a1 + *((*a1 & v11) + 0x3F8);
  swift_beginAccess();
  if (v10 <= 5 && ((1 << v10) & 0x27) != 0)
  {
    goto LABEL_7;
  }
}

void specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x70));
  swift_beginAccess();
  v15 = v14[2];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v18 = v14;
  v16 = *v14;
  v17 = v18[1];
  v19 = *a2;

  v20 = specialized NavigationStrategy.viewControllerCommon(for:entering:canPop:isRoot:)(v19, a4 > 0, v16, v17, v15, a5, a6, a7, a8);
  outlined consume of NavigationStrategy_Phone?(v16, v17, v15);
  v21 = *(a2 + 8);
  v22 = *MEMORY[0x1E69E7D40];
  if (v21 <= 2)
  {
    v23 = &v20[*((*v20 & v22) + 0x3F8)];
    swift_beginAccess();
LABEL_8:
    v23[1] = v21;
    return;
  }

  v21 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x60) + 8);
  v23 = &v20[*((*v20 & v22) + 0x3F8)];
  swift_beginAccess();
  if (v21 <= 5 && ((1 << v21) & 0x27) != 0)
  {
    goto LABEL_8;
  }
}

void specialized closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = MEMORY[0x1E69E7D40];
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x80)) = 0;
    *(Strong + *((*v3 & *Strong) + 0x88)) = 0;
  }
}

void closure #1 in NavigationStackCoordinator.navigationController(_:willShow:animated:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90)) = 0;
    v5 = (Strong + *((*v4 & *Strong) + 0xA0));
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];

      v6(v8);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
      v9 = *v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9, v10);
  }
}

void closure #2 in NavigationStackCoordinator.navigationController(_:willShow:animated:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([a1 isCancelled])
    {
      v7 = [a3 viewControllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      NavigationStackCoordinator.previousContent.getter(v34);
      v10 = NavigationState.Base.count.getter();
      outlined destroy of NavigationState.StackContent(v34);
      v11 = MEMORY[0x1E69E7D40];
      *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x90)) = 0;
      *(v6 + *((*v11 & *v6) + 0x78)) = 1;
      outlined init with copy of NavigationAuthority(v6 + *((*v11 & *v6) + 0x68), v33);
      v12 = v10 - v9;
      if (__OFSUB__(v10, v9))
      {
        __break(1u);
      }

      else
      {
        NavigationStackCoordinator.previousContent.getter(v34);
        NavigationState.StackContent.topKey.getter();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        outlined destroy of NavigationState.StackContent(v34);
        static Transaction.current.getter();
        static Transaction.current.getter();
        v19 = Transaction.disablesAnimations.getter();

        if (v19)
        {
          v20 = 1;
        }

        else
        {
          v20 = Transaction.disablesAnimations.getter();
        }

        static Transaction.current.getter();
        v21 = Transaction.animation.getter();

        if (!v21)
        {
          v21 = Transaction.animation.getter();
        }

        v22 = v12;
        v23 = 0;
        v24 = 9;
        v25 = v14;
        v26 = v16;
        v27 = v18;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v20 & 1;
        v32 = v21;
        NavigationAuthority.enqueueRequest(_:)(&v22);

        outlined destroy of NavigationRequest(&v22);
        outlined destroy of NavigationAuthority(v33);
      }
    }

    else
    {
    }
  }
}

void closure #3 in NavigationStackCoordinator.navigationController(_:willShow:animated:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([a1 isCancelled])
    {
    }

    else
    {
      v7 = [a3 viewControllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      NavigationStackCoordinator.previousContent.getter(v34);
      v10 = NavigationState.Base.count.getter();
      outlined destroy of NavigationState.StackContent(v34);
      v11 = MEMORY[0x1E69E7D40];
      *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x90)) = 0;
      *(v6 + *((*v11 & *v6) + 0x78)) = 1;
      outlined init with copy of NavigationAuthority(v6 + *((*v11 & *v6) + 0x68), v33);
      v12 = v10 - v9;
      if (__OFSUB__(v10, v9))
      {
        __break(1u);
      }

      else
      {
        NavigationStackCoordinator.previousContent.getter(v34);
        NavigationState.StackContent.topKey.getter();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        outlined destroy of NavigationState.StackContent(v34);
        static Transaction.current.getter();
        static Transaction.current.getter();
        v19 = Transaction.disablesAnimations.getter();

        if (v19)
        {
          v20 = 1;
        }

        else
        {
          v20 = Transaction.disablesAnimations.getter();
        }

        static Transaction.current.getter();
        v21 = Transaction.animation.getter();

        if (!v21)
        {
          v21 = Transaction.animation.getter();
        }

        v22 = v12;
        v23 = 0;
        v24 = 9;
        v25 = v14;
        v26 = v16;
        v27 = v18;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v20 & 1;
        v32 = v21;
        NavigationAuthority.enqueueRequest(_:)(&v22);

        outlined destroy of NavigationRequest(&v22);
        outlined destroy of NavigationAuthority(v33);
      }
    }
  }
}

uint64_t @objc NavigationStackCoordinator.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  outlined destroy of NavigationAuthority(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  v3 = *((*v2 & *a1) + 0x70);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = &a1[*((*v2 & *a1) + 0xA0)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v5, v5[1]);
  return outlined destroy of PPTTestCase?(&a1[*((*v2 & *a1) + 0xB0)], &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
}

void *NavigationStackHostingController.HostingView.__allocating_init(rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized NavigationStackHostingController.HostingView.__allocating_init(rootView:)(a1, a2, a3, a4);
  (*(*(*(v4 + 1792) - 8) + 8))(a1);
  return v6;
}

id NavigationStackHostingController.HostingView.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NavigationStackHostingController.HostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x700), *((*MEMORY[0x1E69E7D40] & *v4) + 0x708), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id NavigationStackHostingController.HostingView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationStackHostingController.HostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x700), *((*MEMORY[0x1E69E7D40] & *v4) + 0x708), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t NavigationStackHostingController.__ivar_destroyer()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x400);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(&v0[v1], v2);
}

uint64_t @objc NavigationStackHostingController.__ivar_destroyer(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x400);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t one-time initialization function for deselectionIsAtEndOfAnimatedTransitions()
{
  result = closure #1 in variable initialization expression of deselectionIsAtEndOfAnimatedTransitions();
  deselectionIsAtEndOfAnimatedTransitions = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of deselectionIsAtEndOfAnimatedTransitions()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000015 && 0x800000018CD584D0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

uint64_t specialized NavigationStackHostingController.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x3F8)];
  *v7 = 1542;
  v7[2] = 0;
  v8 = *((v6 & v4) + 0x3E8);
  (*(*(v8 - 8) + 56))(&v2[*((*v5 & *v2) + 0x400)], 1, 1, v8);
  v10 = type metadata accessor for NavigationStackHostingController.HostingView(0, v8, *((v6 & v4) + 0x3F0), v9);
  v13 = specialized NavigationStackHostingController.HostingView.__allocating_init(rootView:)(a1, v10, v11, v12);

  return UIHostingController.init(_hostingView:)(v13);
}

uint64_t specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(a2, v24, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  if (!v25)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v24, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
LABEL_7:
    specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(a1);
    goto LABEL_8;
  }

  v9 = *(a3 + 24);
  if (v9 == 255)
  {
    __break(1u);
    goto LABEL_14;
  }

  specialized Collection.subscript.getter(*a3, *(a3 + 8) & 1, *(a3 + 16), v9, v26);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v24, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v10 = *v26;
  if (!*v26)
  {
    outlined destroy of PPTTestCase?(v26, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
    goto LABEL_7;
  }

  outlined destroy of NavigationState.StackContent.PositionedView(v26);
  specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(a1);
  v11 = *&a1[direct field offset for UIHostingController.host];

  v12 = v11;
  specialized _UIHostingView.setRootView(_:transaction:)(v10, a4);

LABEL_8:
  result = outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(a2, v24, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  if (!v25)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v24, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>?, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    v17 = 0;
    v23 = 0;
    v19 = 0;
    v21 = -1;
    goto LABEL_12;
  }

  v13 = *(a3 + 24);
  if (v13 != 255)
  {
    v14 = *(a3 + 16);
    v15 = *a3;
    v26[0] = *(a3 + 8) & 1;
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v15, v26[0], v14, v13);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v24, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
LABEL_12:
    *a3 = v17;
    *(a3 + 8) = v23;
    *(a3 + 16) = v19;
    *(a3 + 24) = v21;
    return 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

{
  result = outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(a2, v24, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  if (!v25)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v24, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
LABEL_7:
    specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(a1);
    goto LABEL_8;
  }

  v9 = *(a3 + 24);
  if (v9 == 255)
  {
    __break(1u);
    goto LABEL_14;
  }

  specialized Collection.subscript.getter(*a3, *(a3 + 8) & 1, *(a3 + 16), v9, v26);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v24, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  v10 = *v26;
  if (!*v26)
  {
    outlined destroy of PPTTestCase?(v26, &lazy cache variable for type metadata for NavigationState.StackContent.PositionedView?, &type metadata for NavigationState.StackContent.PositionedView);
    goto LABEL_7;
  }

  outlined destroy of NavigationState.StackContent.PositionedView(v26);
  specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(a1);
  v11 = *&a1[direct field offset for UIHostingController.host];

  v12 = v11;
  specialized _UIHostingView.setRootView(_:transaction:)(v10, a4);

LABEL_8:
  result = outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(a2, v24, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
  if (!v25)
  {
    outlined destroy of UINavigationPresentationAdaptor?(v24, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    v17 = 0;
    v23 = 0;
    v19 = 0;
    v21 = -1;
    goto LABEL_12;
  }

  v13 = *(a3 + 24);
  if (v13 != 255)
  {
    v14 = *(a3 + 16);
    v15 = *a3;
    v26[0] = *(a3 + 8) & 1;
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v15, v26[0], v14, v13);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v24, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
LABEL_12:
    *a3 = v17;
    *(a3 + 8) = v23;
    *(a3 + 16) = v19;
    *(a3 + 24) = v21;
    return 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

void specialized NavigationStackHostingController.init(coder:)()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8)];
  *v4 = 1542;
  v4[2] = 0;
  (*(*(*((v3 & v1) + 0x3E8) - 8) + 56))(&v0[*((*v2 & *v0) + 0x400)], 1, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t objectdestroy_14Tm_1()
{

  return swift_deallocObject();
}

double destroy for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1)
{
  swift_weakDestroy();

  return result;
}

uint64_t initializeWithCopy for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyInit();
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t initializeWithTake for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeInit();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for NavigationStackCore.MultimodalNavigationStackRoot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t assignWithTake for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 56));
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for NavigationStackCore<A>.NavigationStackRepresentableRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.NavigationStackRepresentableRoot);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NavigationStackCore<A>.MultimodalNavigationStackRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackCore<A>.MultimodalNavigationStackRoot);
  *(a1 + 8) = result;
  return result;
}

uint64_t assignWithTake for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  v5 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  swift_weakTakeAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  if (*(a1 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 128));
  }

  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  v7 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v7;
  *(a1 + 176) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t storeEnumTagSinglePayload for NavigationStackRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationStack and conformance MultimodalNavigationStack()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationStack and conformance MultimodalNavigationStack;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationStack and conformance MultimodalNavigationStack)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationStack, &type metadata for MultimodalNavigationStack, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationStack and conformance MultimodalNavigationStack);
  }

  return result;
}

uint64_t outlined init with copy of Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UINavigationPresentationAdaptor?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(uint64_t a1)
{
  partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(a1, partial apply for specialized closure #1 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), partial apply for specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:));
}

{
  partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(a1, partial apply for specialized closure #1 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), partial apply for specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:));
}

{
  partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(a1, partial apply for specialized closure #1 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), partial apply for specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:));
}

uint64_t outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  type metadata accessor for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(255);
    _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(&lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>);
    v1 = type metadata accessor for Slice();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    }
  }
}

void type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(255);
    _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(&lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>);
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
    }
  }
}

void partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t a1)
{
  partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, partial apply for closure #1 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), partial apply for specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
}

{
  partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, closure #1 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)partial apply, partial apply for specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
}

{
  partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, closure #1 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)partial apply, partial apply for specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
}

void partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(unint64_t a1)
{
  partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, &unk_1F0002320, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_121);
}

{
  partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, &unk_1F00027A8, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_216);
}

{
  partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(a1, &unk_1F00029D8, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_267);
}

uint64_t outlined init with copy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(0, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>(255);
    v7 = v6;
    v8 = _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(&lazy protocol witness table cache variable for type Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>> and conformance Slice<A>, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, MEMORY[0x1E69E74E8]);
    v9 = a3(a1, v7, &type metadata for NavigationContentAbstractPosition, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _sSo22UINavigationControllerCSgMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void partial apply for specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)()
{
  specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), &unk_1F00025A0, &unk_1F00025F0, partial apply for closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:), partial apply for specialized closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:));
}

{
  specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), &unk_1F0002938, &unk_1F0002960, closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:)partial apply, closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)specialized partial apply);
}

{
  specialized closure #2 in closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), &unk_1F0002758, &unk_1F0002780, closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:)partial apply, closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)specialized partial apply);
}

void specialized closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)(char a1, char a2, uint64_t a3)
{
  if (a1 & 1) == 0 && (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong navigationController];

      if (v5)
      {
        static Transaction.current.getter();
        v6 = Transaction.disablesAnimations.getter();

        v7 = [v5 popViewControllerAnimated_];
      }
    }
  }
}

void partial apply for specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)()
{
  specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), &unk_1F00025A0, &unk_1F00025F0, partial apply for closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:), partial apply for specialized closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:));
}

{
  specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), &unk_1F0002938, &unk_1F0002960, closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:)partial apply, closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)specialized partial apply);
}

{
  specialized closure #2 in closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), &unk_1F0002758, &unk_1F0002780, closure #1 in UIHostingController.initialDataDrivenPresentationMode(canPop:)partial apply, closure #2 in UIHostingController.initialDataDrivenPresentationMode(canPop:)specialized partial apply);
}

void type metadata accessor for Zip2Sequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, PartialRangeFrom<Int>>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Zip2Sequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, PartialRangeFrom<Int>>.Iterator)
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(255);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(255, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E6D08]);
    _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(&lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>);
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
    v1 = type metadata accessor for Zip2Sequence.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Zip2Sequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, PartialRangeFrom<Int>>.Iterator);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(char **a1)
{
  return specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(*a1, v1[3], v1[4], v1[5]) & 1;
}

{
  return specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(*a1, v1[3], v1[4], v1[5]) & 1;
}

void partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = *(v4 + 16);
  v11[0] = *(v4 + 8);
  v12 = v8;
  v10[2] = v4;
  v10[3] = v5;
  v9[2] = v6;
  v9[3] = v4;
  v9[4] = v7;
  NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v11, 1, a2, v10, a3, v9);
}

uint64_t objectdestroy_86Tm()
{

  return swift_deallocObject();
}

uint64_t *partial apply for specialized implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (*result)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(result + 16);
  v6 = result[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v2;
  return result;
}

void *closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)(void *result, char a2)
{
  if (a2)
  {
    v2 = result;

    *v2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t assignWithTake for PositionedNavigationDestinationProcessor(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      swift_weakTakeInit();
      *v3 = *v5;
      return a1;
    }

    *a1 = *a2;
    v6 = *(a2 + 16);
  }

  else
  {
    if (v4 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      return a1;
    }

    outlined destroy of NavigationAuthority(a1);
    *a1 = *a2;
    v6 = *(a2 + 16);
  }

  *(a1 + 16) = v6;
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ReadDestinationsModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable("Q<\tbD;\b", a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t closure #2 in implicit closure #1 in static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)(unint64_t *a1)
{

  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC010PositionedE11DestinationO7StorageV13SeededRequest33_EA42A490FE48784768DCEF705CD04CF4LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t specialized implicit closure #5 in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(uint64_t a1)
{
  v1 = 91;
  v18 = 91;
  v19 = 0xE100000000000000;
  v2 = *(a1 + 16);
  if (!v2)
  {
    v8 = 0xE100000000000000;
    goto LABEL_12;
  }

  v3 = a1 + 32;
  do
  {
    outlined init with copy of NavigationRequest(v3, v11);
    _StringGuts.grow(_:)(43);

    v7 = NavigationRequest.Action.description.getter();
    MEMORY[0x18D00C9B0](v7);

    MEMORY[0x18D00C9B0](0x203A79656B5B205DLL, 0xE800000000000000);
    if (!(v16 >> 62))
    {
      v4 = NavigationState.StackContent.Key.debugDescription.getter(v12, v13);
LABEL_4:
      v6 = v5;
      goto LABEL_5;
    }

    if (v16 >> 62 == 1)
    {
      v20 = v12;
      v21 = v13;
      v22 = v14;
      v23 = v15;
      v24 = v16 & 1;
      v25 = v17;
      v4 = NavigationState.ListKey.description.getter();
      goto LABEL_4;
    }

    v6 = 0xE500000000000000;
    v4 = 0x74696C7073;
LABEL_5:
    MEMORY[0x18D00C9B0](v4, v6);

    MEMORY[0x18D00C9B0](93, 0xE100000000000000);
    MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD584F0);

    MEMORY[0x18D00C9B0](2314, 0xE200000000000000);

    outlined destroy of NavigationRequest(v11);
    v3 += 168;
    --v2;
  }

  while (v2);
  v1 = v18;
  v8 = v19;
LABEL_12:
  v11[0] = 93;
  v11[1] = 0xE100000000000000;
  v18 = v1;
  v19 = v8;
  v18 = String.init<A>(_:)();
  v19 = v9;
  String.append<A>(contentsOf:)();
  return v18;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PositionedNavigationDestinationProcessor<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PositionedNavigationDestinationProcessor<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t assignWithCopy for ReadDestinationsModifier.RequestsTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for ReadDestinationsModifier.RequestsTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for PositionedNavigationDestinationProcessor.PollingRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for PositionedNavigationDestinationProcessor.PollingRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v9 = a2[5];
        *(a1 + 40) = v9;
        *(a1 + 48) = a2[6];
        v10 = **(v9 - 8);

        v10(a1 + 16, a2 + 2, v9);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = a2[3];
        *(a1 + 24) = v12;
        *(a1 + 32) = a2[4];
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = a2[3];
        *(a1 + 24) = v16;
        *(a1 + 32) = a2[4];
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = a2[4];

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = a2[5];
          (**(v15 - 8))(a1 + 8, a2 + 1, v15);
        }

        else
        {
          v35 = *(a2 + 1);
          v36 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v37 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = a2[4];

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = a2[5];
          (**(v6 - 8))(a1 + 8, a2 + 1, v6);
        }

        else
        {
          v26 = *(a2 + 1);
          v27 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v28 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = a2[4];

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = a2[5];
          (**(v11 - 8))(a1 + 8, a2 + 1, v11);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = a2[3];
        *(a1 + 24) = v7;
        *(a1 + 32) = a2[4];
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v5 = a2[5];

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = a2[6];
          (**(v5 - 8))(a1 + 16, a2 + 2, v5);
        }

        else
        {
          v22 = *(a2 + 1);
          v23 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v24 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = a2[4];
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = a2[2];
        if (v33)
        {
          v34 = a2[3];
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = *(a2 + 3);
        v20 = *(a2 + 4);
        v21 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  v38 = *(a2 + 13);
  v39 = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v39;
  *(a1 + 104) = v38;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];

  *(a1 + 168) = *(a2 + 42);
  return a1;
}

__n128 __swift_memcpy172_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t getEnumTagSinglePayload for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 168) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 172) = 1;
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
      result = 0.0;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UINavigationBarAppearance and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NSObject(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C0], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BarAppearanceBridge.toolbarInputContentDidChange<A>(_:hostingController:)(uint64_t a1, void *a2)
{
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a2, v4);
  BarAppearanceBridge.toolbarInputContentDidChange(_:updateContext:)(a1, v4);
  swift_unknownObjectWeakAssign();
  return outlined destroy of BarAppearanceBridge.UpdateContext(v4);
}

uint64_t closure #1 in BarAppearanceBridge.uiPreferredStatusBarStyle.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  static Semantics.v5.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    result = UIAccessibilityIsInvertColorsEnabled();
    v5 = 3;
    if (v3)
    {
      v5 = 1;
    }

    v6 = 3;
    if (!v3)
    {
      v6 = 1;
    }

    if (result)
    {
      v5 = v6;
    }
  }

  else
  {
    v5 = 3;
    if (!v3)
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t BarAppearanceBridge.updateTabBarConfiguration()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined init with copy of BarAppearanceBridge.UpdateContext?(v0 + v1, &v23, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
  if (!v23)
  {
    outlined destroy of BarAppearanceBridge.UpdateContext?(&v23, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    return 0;
  }

  v2 = v23;
  outlined destroy of BarAppearanceBridge.UpdateContext(&v23);
  v3 = [v2 tabBarController];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v6 = *(v0 + v5);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD79540;
  if (!*(v6 + 16))
  {
LABEL_18:

    outlined destroy of ToolbarPlacement.Role(v21);
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
  if ((v8 & 1) == 0)
  {

    goto LABEL_18;
  }

  v9 = (*(v6 + 56) + 80 * v7);
  v23 = *v9;
  v11 = v9[2];
  v10 = v9[3];
  v12 = *(v9 + 57);
  v24 = v9[1];
  v25 = v11;
  *&v26[9] = v12;
  *v26 = v10;
  outlined init with copy of ToolbarAppearanceConfiguration(&v23, v19);
  outlined destroy of ToolbarPlacement.Role(v21);

  v19[2] = v25;
  v20[0] = *v26;
  *(v20 + 9) = *&v26[9];
  v19[0] = v23;
  v19[1] = v24;
  BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:)(v19, v4);
  if (BYTE1(v23) == 2)
  {
    v13 = 7;
  }

  else
  {
    v13 = 3;
  }

  if (*&v26[16])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (*&v26[16])
  {
    v15 = 0.3;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v14;
  *(v16 + 32) = v15;
  v17 = v4;
  onNextMainRunLoop(do:)();

  outlined destroy of ToolbarAppearanceConfiguration(&v23);
  return 1;
}

void closure #1 in BarAppearanceBridge.containedInExpandedSplitViewColumn(columns:)(uint64_t a2@<X1>, char *a3@<X8>)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v5 = swift_dynamicCastClass();
  if (v5 && (v6 = *(a2 + 16)) != 0)
  {
    v7 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x3F8);
    v8 = (a2 + 32);
    swift_beginAccess();
    v9 = v7[1];
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      if (v9 != 6 && v9 == v10)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    v12 = 1;
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  *a3 = v12;
}

uint64_t closure #1 in closure #1 in BarAppearanceBridge.updateBackAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for BarAppearanceBridge.UpdateContext?(0, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v5);
  LOBYTE(v5) = 0;
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

void *BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:)(__int128 *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v17[1] = a1[1];
  v6 = a1[3];
  v17[2] = a1[2];
  v18[0] = v6;
  *(v18 + 9) = *(a1 + 57);
  v17[0] = v5;
  type metadata accessor for UIKitTabBarController();
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    v9 = a2;
    outlined init with copy of ToolbarAppearanceConfiguration(v17, v15);
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    memset(v15, 0, sizeof(v15));
    v16 = xmmword_18CD79540;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v15, isUniquelyReferenced_nonNull_native);
    outlined destroy of ToolbarPlacement.Role(v15);
    v12 = v9;
    PlatformBarUpdater.callAsFunction(configurations:context:)(v10, 0, v8);

    v13 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
    swift_beginAccess();
    outlined init with copy of BarAppearanceBridge.UpdateContext?(v3 + v13, v14, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    if (v14[0])
    {
      outlined init with take of BarAppearanceBridge.UpdateContext(v14, v15);
      closure #1 in BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:)(v15, v3);

      return outlined destroy of BarAppearanceBridge.UpdateContext(v15);
    }

    else
    {
      outlined destroy of BarAppearanceBridge.UpdateContext?(v14, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:)(id *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v5 = *(a2 + v4);
  memset(v128, 0, sizeof(v128));
  v129 = xmmword_18CD79540;
  if (!*(v5 + 16))
  {
    return outlined destroy of ToolbarPlacement.Role(v128);
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v128);
  if ((v7 & 1) == 0)
  {

    return outlined destroy of ToolbarPlacement.Role(v128);
  }

  v8 = (*(v5 + 56) + 80 * v6);
  v126 = *v8;
  v10 = v8[2];
  v9 = v8[3];
  v11 = *(v8 + 57);
  *v127 = v8[1];
  *&v127[16] = v10;
  *&v127[41] = v11;
  *&v127[32] = v9;
  outlined init with copy of ToolbarAppearanceConfiguration(&v126, &v119);
  outlined destroy of ToolbarPlacement.Role(v128);

  v12 = [*a1 tabBarItem];
  if (!v12)
  {
    return outlined destroy of ToolbarAppearanceConfiguration(&v126);
  }

  v13 = v12;
  v14 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment + 8);
  v104 = *MEMORY[0x1E69DB650];
  v98 = *(a2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);

  v97 = v14;

  v15 = 0;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CA0];
  v96 = v13;
  do
  {
    v18 = v15;
    v19 = *(&outlined read-only object #0 of closure #1 in BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:) + v16 + 32);
    v20 = &selRef_scrollEdgeAppearance;
    if (!*(&outlined read-only object #0 of closure #1 in BarAppearanceBridge.updateTabBarAppearance(_:tabBarController:) + v16 + 32))
    {
      v20 = &selRef_standardAppearance;
    }

    v21 = [v13 *v20];
    if (!v21 || (v22 = v21, swift_getObjectType(), v23 = [swift_getObjCClassFromMetadata() _isFromSwiftUI], v22, v23))
    {
      v24 = v127[41];
      v25 = v127[8];
      if (!*v127)
      {
        v26 = v127[41] == 2 && *(&v126 + 1) == 0;
        v27 = v26 && v127[8] == 0;
        if (v27 && v127[40] == 1 && v127[24] == 1)
        {
          if (v19)
          {
            [v13 setScrollEdgeAppearance_];
          }

          else
          {
            [v13 setStandardAppearance_];
          }

          goto LABEL_7;
        }
      }

      v118 = *v127;
      v115 = *&v127[9];
      v116 = *&v127[25];
      v117 = v126;
      v114[0] = *&v127[42];
      *(v114 + 7) = *&v127[49];
      v103 = v19;
      if (v19 && !v127[8])
      {
        v45 = objc_opt_self();
        outlined init with copy of ToolbarAppearanceConfiguration(&v126, &v119);
        v46 = [v45 currentDevice];
        v47 = [v46 userInterfaceIdiom];

        if (v47 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), (static Solarium.isEnabled(for:)() & 1) == 0))
        {
          v24 = 2;
        }

        v25 = 3;
      }

      else
      {
        outlined init with copy of ToolbarAppearanceConfiguration(&v126, &v119);
      }

      type metadata accessor for UIKitTabBarAppearance();
      v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v29 = v28;
      v119 = v117;
      v122 = v115;
      v120 = v118;
      v121 = v25;
      v123 = v116;
      v105 = v24;
      v124 = v24;
      v125[0] = v114[0];
      *(v125 + 7) = *(v114 + 7);
      v30 = *(&v117 + 1);
      v99 = v18;
      v102 = v25;
      if (v25 == 1)
      {
        outlined init with copy of ToolbarAppearanceConfiguration(&v119, &v108);
        [v29 configureWithDefaultBackground];
        v33 = v120;
        if (!v120)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v25 == 3)
        {
          [v28 configureWithTransparentBackground];
          if (!v30)
          {
            goto LABEL_31;
          }

LABEL_54:
          *&v106[0] = v30;
          *&v108 = v98;
          *(&v108 + 1) = v97;
          v51 = v29;
          v52 = ShapeStyle.fallbackColor(in:level:)();
          v32 = v105;
          if (v105 == 2)
          {
            v100 = 1;
            if (!v52)
            {
LABEL_79:
              v89 = [objc_opt_self() currentDevice];
              v90 = [v89 userInterfaceIdiom];

              if (v90 != 6)
              {
                static _GraphInputs.defaultInterfaceIdiom.getter();
                if (static Solarium.isEnabled(for:)())
                {
                  v91 = 1;
                  if (v32)
                  {
                    v91 = 2;
                  }

                  if (v100)
                  {
                    v92 = 0;
                  }

                  else
                  {
                    v92 = v91;
                  }

                  [v29 _setOverrideUserInterfaceStyle_];
                }
              }

              if (v103)
              {
                [v13 setScrollEdgeAppearance_];
              }

              else
              {
                [v13 setStandardAppearance_];
              }

              v108 = v117;
              v109 = v118;
              v110[0] = v102;
              *&v110[1] = v115;
              v111 = v116;
              v112 = v32;
              v113[0] = v114[0];
              *(v113 + 7) = *(v114 + 7);
              outlined destroy of ToolbarAppearanceConfiguration(&v108);
              v17 = MEMORY[0x1E69E7CA0];
              goto LABEL_7;
            }

LABEL_61:
            v53 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

            v55 = UIColor.init(_:)(v54);
            v56 = [v29 stackedLayoutAppearance];
            v57 = [v56 selected];

            *v110 = v53;
            *&v108 = v55;
            v58 = v55;
            v59 = [v57 titleTextAttributes];
            type metadata accessor for NSAttributedStringKey(0);
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
            v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v107 = v60;
            if (*v110)
            {
              outlined init with take of Any(&v108, v106);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v104, isUniquelyReferenced_nonNull_native);
              v107 = v60;
            }

            else
            {
              outlined destroy of BarAppearanceBridge.UpdateContext?(&v108, &lazy cache variable for type metadata for Any?, v17 + 8);
              specialized Dictionary._Variant.removeValue(forKey:)(v106);
              outlined destroy of BarAppearanceBridge.UpdateContext?(v106, &lazy cache variable for type metadata for Any?, v17 + 8);
            }

            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v57 setTitleTextAttributes_];

            [v57 setIconColor_];
            v63 = [v29 inlineLayoutAppearance];
            v64 = [v63 selected];

            *v110 = v53;
            *&v108 = v58;
            v65 = v58;
            v66 = [v64 titleTextAttributes];
            v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v107 = v67;
            if (*v110)
            {
              outlined init with take of Any(&v108, v106);
              v68 = swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v104, v68);
              v107 = v67;
            }

            else
            {
              outlined destroy of BarAppearanceBridge.UpdateContext?(&v108, &lazy cache variable for type metadata for Any?, v17 + 8);
              specialized Dictionary._Variant.removeValue(forKey:)(v106);
              outlined destroy of BarAppearanceBridge.UpdateContext?(v106, &lazy cache variable for type metadata for Any?, v17 + 8);
            }

            v69 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v64 setTitleTextAttributes_];

            [v64 setIconColor_];
            if ((v100 & 1) == 0)
            {
              if (v32)
              {
                v70 = 2;
              }

              else
              {
                v70 = 1;
              }

              v71 = [objc_opt_self() secondaryLabelColor];
              v72 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
              v73 = [v71 resolvedColorWithTraitCollection_];

              v74 = [v29 stackedLayoutAppearance];
              v75 = [v74 normal];

              *v110 = v53;
              *&v108 = v73;
              v76 = v73;
              v77 = v17;
              v78 = [v75 titleTextAttributes];
              v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v107 = v79;
              if (*v110)
              {
                outlined init with take of Any(&v108, v106);
                v80 = swift_isUniquelyReferenced_nonNull_native();
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v104, v80);
                v107 = v79;
              }

              else
              {
                outlined destroy of BarAppearanceBridge.UpdateContext?(&v108, &lazy cache variable for type metadata for Any?, v77 + 8);
                specialized Dictionary._Variant.removeValue(forKey:)(v106);
                outlined destroy of BarAppearanceBridge.UpdateContext?(v106, &lazy cache variable for type metadata for Any?, v77 + 8);
              }

              v81 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v75 setTitleTextAttributes_];

              [v75 setIconColor_];
              v82 = [v29 inlineLayoutAppearance];
              v83 = [v82 normal];

              *v110 = v53;
              *&v108 = v76;
              v84 = v76;
              v85 = [v83 titleTextAttributes];
              v86 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v107 = v86;
              if (*v110)
              {
                outlined init with take of Any(&v108, v106);
                v87 = swift_isUniquelyReferenced_nonNull_native();
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v106, v104, v87);
                v107 = v86;
              }

              else
              {
                outlined destroy of BarAppearanceBridge.UpdateContext?(&v108, &lazy cache variable for type metadata for Any?, v77 + 8);
                specialized Dictionary._Variant.removeValue(forKey:)(v106);
                outlined destroy of BarAppearanceBridge.UpdateContext?(v106, &lazy cache variable for type metadata for Any?, v77 + 8);
              }

              v88 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v83 setTitleTextAttributes_];

              [v83 setIconColor_];
              v65 = v83;
              v32 = v105;
            }

            v13 = v96;
            v18 = v99;
            goto LABEL_79;
          }

LABEL_57:
          if (v32)
          {
            static Color.white.getter();
          }

          else
          {
            static Color.black.getter();
          }

          v100 = 0;
          goto LABEL_61;
        }

        outlined init with copy of ToolbarAppearanceConfiguration(&v119, &v108);
        v33 = v120;
        if (!v120)
        {
          goto LABEL_53;
        }
      }

      v107 = v33;
      *&v106[0] = v98;
      *(&v106[0] + 1) = v97;

      ShapeStyle.resolveBackgroundMaterial(in:level:)();
      v34 = BYTE8(v108);
      if (BYTE8(v108) == 0xFF)
      {
LABEL_50:
        *&v106[0] = v33;
        *&v108 = v98;
        *(&v108 + 1) = v97;
        if (ShapeStyle.fallbackColor(in:level:)())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

          v50 = UIColor.init(_:)(v49);
          [v29 setBackgroundColor_];

          v17 = MEMORY[0x1E69E7CA0];
        }

LABEL_53:
        outlined destroy of ToolbarAppearanceConfiguration(&v119);
        if (v30)
        {
          goto LABEL_54;
        }

        goto LABEL_31;
      }

      v35 = v108;
      if (BYTE8(v108) > 1u)
      {
        if (BYTE8(v108) != 2)
        {
          if (v108 <= 2)
          {
            v94 = 7;
            if (v108 != 1)
            {
              v94 = 4;
            }

            if (v108)
            {
              v93 = v94;
            }

            else
            {
              v93 = 6;
            }
          }

          else
          {
            if (v108 > 5)
            {
              if (v108 == 6)
              {
                v48 = 6;
              }

              else
              {
                v48 = 7;
              }

              goto LABEL_48;
            }

            if ((v108 - 3) >= 2)
            {
              v93 = 10;
            }

            else
            {
              v93 = 9;
            }
          }

          v44 = [objc_opt_self() effectWithStyle_];
LABEL_102:
          [v29 setBackgroundEffect_];

          outlined consume of Material?(v35, v34);

          outlined destroy of ToolbarAppearanceConfiguration(&v119);
          v18 = v99;
          if (v30)
          {
            goto LABEL_54;
          }

LABEL_31:
          v31 = v29;
          v32 = v105;
          if (v105 == 2)
          {
            v100 = 1;
            goto LABEL_79;
          }

          goto LABEL_57;
        }
      }

      else if (!BYTE8(v108))
      {
        v36 = *(v108 + 16);
        v37 = *(v108 + 24);
        v38 = *(v108 + 32);
        v39 = *(v108 + 40);
        v101 = *(v108 + 48);
        v40 = objc_opt_self();
        v41 = outlined copy of Material.ID(v35, 0);
        v42 = MEMORY[0x18D00C850](v36, v37, v41);
        v43 = MEMORY[0x18D00C850](v38, v39);
        v44 = [v40 _effectForLightMaterial_darkMaterial_bundle_];

        if (v44)
        {

          outlined consume of Material?(v35, v34);
          v13 = v96;
          v17 = MEMORY[0x1E69E7CA0];
          goto LABEL_102;
        }

        outlined consume of Material?(v35, v34);
        outlined consume of Material?(v35, v34);
        v13 = v96;
        v17 = MEMORY[0x1E69E7CA0];
        goto LABEL_49;
      }

      v48 = v108;
LABEL_48:
      outlined consume of Material?(v48, BYTE8(v108));
LABEL_49:
      v18 = v99;
      goto LABEL_50;
    }

LABEL_7:
    v15 = 1;
    v16 = 1u;
  }

  while ((v18 & 1) == 0);

  return outlined destroy of ToolbarAppearanceConfiguration(&v126);
}

id @objc UIKitNavigationBarAppearance.init(idiom:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), SEL *a5)
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  return objc_msgSendSuper2(&v8, *a5, a3);
}

id UIKitNavigationBarAppearance.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void key path getter for BarEnvironmentViewModel.visibility : BarEnvironmentViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for BarEnvironmentViewModel.visibility : BarEnvironmentViewModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized UISplitViewController.mayHaveNavigationBarContent(given:isCollapsed:)(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (![swift_getObjCClassFromMetadata() _isFromSwiftUI] || (v4 = objc_msgSend(v1, sel_navigationItem), v5 = UINavigationItem.hasContent.getter(), v4, (a1 & 1) == 0) && ((v6 = objc_msgSend(v2, sel_displayModeButtonVisibility), v7 = objc_msgSend(v2, sel_presentsWithGesture), v6 == 2) || !v6 && v7))
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (Bool, Bool, Bool, Bool)(__n128 a1)
{
  if (!lazy cache variable for type metadata for (Bool, Bool, Bool, Bool))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Bool, Bool, Bool, Bool));
    }
  }
}

uint64_t outlined init with take of ToolbarContentDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static Feature.isEnabled.getter in conformance EnablePageBuilder(uint64_t a1)
{
  lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance EnablePageBuilder(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnablePageBuilder@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t (*AnyFileDocument.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  (*(a3 + 32))(a2, a3);
  return partial apply for closure #1 in AnyFileDocument.init<A>(_:);
}

uint64_t closure #1 in AnyFileDocument.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(a4 + 48))(a1, a3, a4, v11);
  if (!v4)
  {
    a2 = (*(a4 + 56))(v13, a1, a3, a4);
    (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return a2;
}

uint64_t (*specialized AnyFileDocument.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  (*(a3 + 16))(a2, a3);
  return partial apply for closure #1 in AnyFileDocument.init<A>(_:);
}

uint64_t destroy for AnyFileDocument()
{
}

void *initializeBufferWithCopyOfBuffer for AnyFileDocument(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AnyFileDocument(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for AnyFileDocument(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double protocol witness for Rule.value.getter in conformance AccessibilityOpacityAttachment@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityOpacityAttachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityOpacityAttachment and conformance AccessibilityOpacityAttachment();
  *(a1 + 8) = result;
  return result;
}

void *protocol witness for AccessibilityViewModifier.initialAttachment(for:) in conformance AccessibilityOpacityModifier()
{
  if (*v2 >= 0.001)
  {

    return AccessibilityAttachment.init()();
  }

  else
  {
    AccessibilityProperties.init()();
    v5 = 8;
    v6 = 0;
    static AccessibilityAttachment.properties(_:)();
    return outlined destroy of AccessibilityProperties(v4);
  }
}

double View._gaugeTintOverride(primaryColor:secondaryColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.gaugeTintOverride.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeTintOverrideKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeTintOverrideKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.gaugeTintOverride : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeTintOverrideKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeTintOverrideKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.gaugeTintOverride : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>();

  outlined copy of (Color, Color)?(v3, v4);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeTintOverrideKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>, MEMORY[0x1E697FE40]);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<GaugeTintOverrideKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeTintOverrideKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeTintOverrideKey>);
    }
  }
}

double specialized AnimatedValueTrack<A>.VectorPath.arcLength.getter(uint64_t a1)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-v6];
  v30 = type metadata accessor for Quadrature.Integrator();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Quadrature();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0.0;
  }

  v29 = *MEMORY[0x1E69E5A40];
  v16 = (v8 + 104);
  v17 = (v12 + 8);
  v18 = (a1 + 64);
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v23 = *(v18 - 4);
    v22 = *(v18 - 3);
    if (*(v18 + 57))
    {
      if (*(v18 + 57) == 1)
      {
        *v32 = v21;
        *&v32[1] = v20;
        *&v32[2] = v23;
        *&v32[3] = v22;
        v24 = *v18;
        v33 = *(v18 - 1);
        v34 = v24;
        *v10 = 8;
        (*v16)(v10, v29, v30);
        v25 = Quadrature.init(integrator:absoluteTolerance:relativeTolerance:)();
        MEMORY[0x1EEE9AC00](v25);
        *&v28[-16] = v32;
        Quadrature.integrate(over:integrand:)();
        outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v7, v4);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = sqrt((v23 - v21) * (v23 - v21) + (v22 - v20) * (v22 - v20));
          outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v7);
          (*v17)(v14, v11);
          outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v4);
        }

        else
        {
          outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v7);
          (*v17)(v14, v11);
          v26 = *v4;
        }

        v19 = v19 + v26;
      }

      else
      {
        v22 = v20;
        v23 = v21;
      }
    }

    v18 += 12;
    v20 = v22;
    v21 = v23;
    --v15;
  }

  while (v15);
  return v19;
}